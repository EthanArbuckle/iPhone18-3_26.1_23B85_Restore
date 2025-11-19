uint64_t _ZN2IR16FFTSubFilterDataIDF16_E9overwriteERKS1_DF16_(unsigned int *a1, uint64_t a2, __n128 a3)
{
  if (*a2 == *a1)
  {
    v5 = *(a2 + 8);
    v6 = a1[1];
    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      v8 = a3.n128_u16[0];
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(*(a2 + 40) + v10 - 8);
        v12 = *(*(a1 + 5) + v10 - 8);
        v13 = *a1;
        v20 = v8;
        vDSP_vsmul_fp16(v11, 1, &v20, v12, 1, v13);
        v14 = *(*(a2 + 40) + v10);
        v15 = *(*(a1 + 5) + v10);
        v16 = *a1;
        v21 = v8;
        vDSP_vsmul_fp16(v14, 1, &v21, v15, 1, v16);
        *(*(a1 + 8) + v9) = *(*(a2 + 64) + v9);
        v10 += 16;
        v9 += 4;
      }

      while (4 * v7 != v9);
      v6 = a1[1];
    }

    if (v7 < v6)
    {
      v17 = 16 * v7;
      v18 = v7;
      do
      {
        bzero(*(*(a1 + 5) + v17), 4 * *a1);
        ++v18;
        v17 += 16;
      }

      while (v18 < a1[1]);
    }

    result = 0;
  }

  else
  {
    bzero(*(a1 + 2), *(a1 + 3) - *(a1 + 2));
    LODWORD(v7) = 0;
    result = 4294967246;
  }

  a1[2] = v7;
  return result;
}

uint64_t _ZN2IR16FFTSubFilterDataIDF16_E5scaleEDF16_(unsigned int *a1, __n128 a2)
{
  if (a1[1])
  {
    v2 = a2.n128_u16[0];
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 5) + v4);
      v7 = *a1;
      v11 = v2;
      vDSP_vsmul_fp16(v6, 1, &v11, v6, 1, v7);
      v8 = *(*(a1 + 5) + v4 + 8);
      v9 = *a1;
      v12 = v2;
      vDSP_vsmul_fp16(v8, 1, &v12, v8, 1, v9);
      ++v5;
      v4 += 16;
    }

    while (v5 < a1[1]);
  }

  return 0;
}

void *std::vector<IR::SplitComplex<float>>::__assign_with_size[abi:ne200100]<IR::SplitComplex<float>*,IR::SplitComplex<float>*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<DSPSplitComplex>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void std::default_delete<MultiRadixRealFFT>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x29C25FC20);
  }
}

void *_ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE18__assign_with_sizeB8ne200100IPDF16_S5_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 1)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v8 <= a4)
      {
        v10 = a4;
      }

      else
      {
        v10 = v8;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<short>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 1)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

BOOL ChannelLayoutTagIsSupportedHOA(int a1)
{
  if (a1 == 7012356)
  {
    return 1;
  }

  if ((a1 & 0xFFFE0000 | 0x10000) != 0xBF0000 || a1 - 65026 < 0xFFFF01FF)
  {
    return 0;
  }

  v2 = sqrt(a1);
  return vabdd_f64(v2, round(v2)) <= 0.000000999999997;
}

BOOL ChannelLayoutTagIsHOAWithAnyNumberOfChannels(int a1)
{
  v1 = (a1 & 0xFFFF0000) == 12517376;
  if ((a1 & 0xFFFF0000) == 0xBE0000)
  {
    v1 = 1;
  }

  return (a1 & 0xFFFF0000) == 0x6B0000 || v1;
}

uint64_t GetAudioChannelLayoutTagAmbisonicOrder(int a1)
{
  if (a1 == 7012356)
  {
    return 1;
  }

  if ((a1 & 0xFFFE0000 | 0x10000) != 0xBF0000)
  {
    return 0;
  }

  v2 = llroundf(sqrtf(a1));
  v3 = v2 * v2 == a1;
  v4 = v2 != 0;
  v5 = v2 - 1;
  v6 = v4;
  if ((v6 & v3) != 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void GetStringFromAudioChannelLayoutTag(int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = a1 & 0xFFFF0000;
  if ((a1 & 0xFFFF0000) == 0x930000)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "DiscreteInOrder");
    v14 = std::string::append(&v21, " ", 1uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v2);
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
  }

  else if (v4 == 12517376)
  {
    v11 = llroundf(sqrtf(a1));
    if (v11)
    {
      v12 = v11 * v11 == a1;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      goto LABEL_19;
    }

    std::string::basic_string[abi:ne200100]<0>(&v21, "HOA_ACN_N3D");
    v16 = std::string::append(&v21, " ", 1uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v11 - 1);
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
  }

  else
  {
    if (v4 != 12451840)
    {
      if (a1 <= 10027011)
      {
        if (a1 > 8126469)
        {
          if (a1 <= 9043972)
          {
            if (a1 > 8585218)
            {
              if (a1 <= 8781827)
              {
                switch(a1)
                {
                  case 8585219:
                    v13 = "ITU_2_1";
                    goto LABEL_20;
                  case 8650756:
                    v13 = "ITU_2_2";
                    goto LABEL_20;
                  case 8716291:
                    v13 = "DVD_4";
                    goto LABEL_20;
                }
              }

              else if (a1 > 8912899)
              {
                if (a1 == 8912900)
                {
                  v13 = "DVD_10";
                  goto LABEL_20;
                }

                if (a1 == 8978437)
                {
                  v13 = "DVD_11";
                  goto LABEL_20;
                }
              }

              else
              {
                if (a1 == 8781828)
                {
                  v13 = "DVD_5";
                  goto LABEL_20;
                }

                if (a1 == 8847365)
                {
                  v13 = "DVD_6";
                  goto LABEL_20;
                }
              }
            }

            else if (a1 <= 8323079)
            {
              switch(a1)
              {
                case 8126470:
                  v13 = "MPEG_5_1_D";
                  goto LABEL_20;
                case 8192007:
                  v13 = "MPEG_6_1_A";
                  goto LABEL_20;
                case 8257544:
                  v13 = "MPEG_7_1_A";
                  goto LABEL_20;
              }
            }

            else if (a1 > 8454151)
            {
              if (a1 == 8454152)
              {
                v13 = "Emagic_Default_7_1";
                goto LABEL_20;
              }

              if (a1 == 8519688)
              {
                v13 = "SMPTE_DTV";
                goto LABEL_20;
              }
            }

            else
            {
              if (a1 == 8323080)
              {
                v13 = "MPEG_7_1_B";
                goto LABEL_20;
              }

              if (a1 == 8388616)
              {
                v13 = "MPEG_7_1_C";
                goto LABEL_20;
              }
            }
          }

          else if (a1 <= 9502735)
          {
            if (a1 <= 9240581)
            {
              switch(a1)
              {
                case 9043973:
                  v13 = "DVD_18";
                  goto LABEL_20;
                case 9109510:
                  v13 = "AudioUnit_6_0";
                  goto LABEL_20;
                case 9175047:
                  v13 = "AudioUnit_7_0";
                  goto LABEL_20;
              }
            }

            else if (a1 > 9371654)
            {
              if (a1 == 9371655)
              {
                v13 = "AAC_7_0";
                goto LABEL_20;
              }

              if (a1 == 9437192)
              {
                v13 = "AAC_Octagonal";
                goto LABEL_20;
              }
            }

            else
            {
              if (a1 == 9240582)
              {
                v13 = "AAC_6_0";
                goto LABEL_20;
              }

              if (a1 == 9306119)
              {
                v13 = "AAC_6_1";
                goto LABEL_20;
              }
            }
          }

          else if (a1 > 9764865)
          {
            if (a1 > 9895939)
            {
              if (a1 == 9895940)
              {
                v13 = "AC3_3_1";
                goto LABEL_20;
              }

              if (a1 == 9961476)
              {
                v13 = "AC3_3_0_1";
                goto LABEL_20;
              }
            }

            else
            {
              if (a1 == 9764866)
              {
                v13 = "AC3_1_0_1";
                goto LABEL_20;
              }

              if (a1 == 9830403)
              {
                v13 = "AC3_3_0";
                goto LABEL_20;
              }
            }
          }

          else if (a1 >= 9633792)
          {
            if (a1 == 9633792)
            {
              v13 = "DiscreteInOrder";
              goto LABEL_20;
            }

            if (a1 == 9699335)
            {
              v13 = "AudioUnit_7_0_Front";
              goto LABEL_20;
            }
          }

          else
          {
            if (a1 == 9502736)
            {
              v13 = "TMH_10_2_std";
              goto LABEL_20;
            }

            if (a1 == 9568277)
            {
              v13 = "TMH_10_2_full";
              goto LABEL_20;
            }
          }
        }

        else if (a1 <= 7143428)
        {
          if (a1 > 6684673)
          {
            if (a1 <= 6881281)
            {
              switch(a1)
              {
                case 6684674:
                  v13 = "StereoHeadphones";
                  goto LABEL_20;
                case 6750210:
                  v13 = "MatrixStereo";
                  goto LABEL_20;
                case 6815746:
                  v13 = "MidSide";
                  goto LABEL_20;
              }
            }

            else if (a1 > 7012355)
            {
              if (a1 == 7012356)
              {
                v13 = "Ambisonic_B_Format";
                goto LABEL_20;
              }

              if (a1 == 7077892)
              {
                v13 = "Quadraphonic";
                goto LABEL_20;
              }
            }

            else
            {
              if (a1 == 6881282)
              {
                v13 = "XY";
                goto LABEL_20;
              }

              if (a1 == 6946818)
              {
                v13 = "Binaural";
                goto LABEL_20;
              }
            }
          }

          else if (a1 < 0)
          {
            if (a1 == -268435456)
            {
              v13 = "BeginReserved";
              goto LABEL_20;
            }

            if (a1 == -65537)
            {
              v13 = "EndReserved";
              goto LABEL_20;
            }
          }

          else if (a1 > 6553600)
          {
            if (a1 == 6553601)
            {
              v13 = "Mono";
              goto LABEL_20;
            }

            if (a1 == 6619138)
            {
              v13 = "Stereo";
              goto LABEL_20;
            }
          }

          else
          {
            if (!a1)
            {
              v13 = "UseChannelDescriptions";
              goto LABEL_20;
            }

            if (a1 == 0x10000)
            {
              v13 = "UseChannelBitmap";
              goto LABEL_20;
            }
          }
        }

        else if (a1 <= 7602179)
        {
          if (a1 <= 7340039)
          {
            switch(a1)
            {
              case 7143429:
                v13 = "Pentagonal";
                goto LABEL_20;
              case 7208966:
                v13 = "Hexagonal";
                goto LABEL_20;
              case 7274504:
                v13 = "Octagonal";
                goto LABEL_20;
            }
          }

          else if (a1 > 7471106)
          {
            if (a1 == 7471107)
            {
              v13 = "MPEG_3_0_B";
              goto LABEL_20;
            }

            if (a1 == 7536644)
            {
              v13 = "MPEG_4_0_A";
              goto LABEL_20;
            }
          }

          else
          {
            if (a1 == 7340040)
            {
              v13 = "Cube";
              goto LABEL_20;
            }

            if (a1 == 7405571)
            {
              v13 = "MPEG_3_0_A";
              goto LABEL_20;
            }
          }
        }

        else if (a1 > 7864324)
        {
          if (a1 > 7995397)
          {
            if (a1 == 7995398)
            {
              v13 = "MPEG_5_1_B";
              goto LABEL_20;
            }

            if (a1 == 8060934)
            {
              v13 = "MPEG_5_1_C";
              goto LABEL_20;
            }
          }

          else
          {
            if (a1 == 7864325)
            {
              v13 = "MPEG_5_0_D";
              goto LABEL_20;
            }

            if (a1 == 7929862)
            {
              v13 = "MPEG_5_1_A";
              goto LABEL_20;
            }
          }
        }

        else if (a1 > 7733252)
        {
          if (a1 == 7733253)
          {
            v13 = "MPEG_5_0_B";
            goto LABEL_20;
          }

          if (a1 == 7798789)
          {
            v13 = "MPEG_5_0_C";
            goto LABEL_20;
          }
        }

        else
        {
          if (a1 == 7602180)
          {
            v13 = "MPEG_4_0_B";
            goto LABEL_20;
          }

          if (a1 == 7667717)
          {
            v13 = "MPEG_5_0_A";
            goto LABEL_20;
          }
        }
      }

      else if (a1 <= 11927558)
      {
        if (a1 <= 10944519)
        {
          if (a1 > 10485767)
          {
            if (a1 <= 10682375)
            {
              switch(a1)
              {
                case 10485768:
                  v13 = "EAC3_7_1_A";
                  goto LABEL_20;
                case 10551304:
                  v13 = "EAC3_7_1_B";
                  goto LABEL_20;
                case 10616840:
                  v13 = "EAC3_7_1_C";
                  goto LABEL_20;
              }
            }

            else if (a1 > 10813447)
            {
              if (a1 == 10813448)
              {
                v13 = "EAC3_7_1_F";
                goto LABEL_20;
              }

              if (a1 == 10878984)
              {
                v13 = "EAC3_7_1_G";
                goto LABEL_20;
              }
            }

            else
            {
              if (a1 == 10682376)
              {
                v13 = "EAC3_7_1_D";
                goto LABEL_20;
              }

              if (a1 == 10747912)
              {
                v13 = "EAC3_7_1_E";
                goto LABEL_20;
              }
            }
          }

          else if (a1 <= 10223622)
          {
            switch(a1)
            {
              case 10027012:
                v13 = "AC3_2_1_1";
                goto LABEL_20;
              case 10092549:
                v13 = "AC3_3_1_1";
                goto LABEL_20;
              case 10158086:
                v13 = "EAC_6_0_A";
                goto LABEL_20;
            }
          }

          else if (a1 > 10354694)
          {
            if (a1 == 10354695)
            {
              v13 = "EAC3_6_1_B";
              goto LABEL_20;
            }

            if (a1 == 10420231)
            {
              v13 = "EAC3_6_1_C";
              goto LABEL_20;
            }
          }

          else
          {
            if (a1 == 10223623)
            {
              v13 = "EAC_7_0_A";
              goto LABEL_20;
            }

            if (a1 == 10289159)
            {
              v13 = "EAC3_6_1_A";
              goto LABEL_20;
            }
          }
        }

        else if (a1 <= 11403270)
        {
          if (a1 <= 11141125)
          {
            switch(a1)
            {
              case 10944520:
                v13 = "EAC3_7_1_H";
                goto LABEL_20;
              case 11010052:
                v13 = "DTS_3_1";
                goto LABEL_20;
              case 11075589:
                v13 = "DTS_4_1";
                goto LABEL_20;
            }
          }

          else if (a1 > 11272197)
          {
            if (a1 == 11272198)
            {
              v13 = "DTS_6_0_C";
              goto LABEL_20;
            }

            if (a1 == 11337735)
            {
              v13 = "DTS_6_1_A";
              goto LABEL_20;
            }
          }

          else
          {
            if (a1 == 11141126)
            {
              v13 = "DTS_6_0_A";
              goto LABEL_20;
            }

            if (a1 == 11206662)
            {
              v13 = "DTS_6_0_B";
              goto LABEL_20;
            }
          }
        }

        else if (a1 > 11665415)
        {
          if (a1 > 11796488)
          {
            if (a1 == 11796489)
            {
              v13 = "DTS_8_1_A";
              goto LABEL_20;
            }

            if (a1 == 11862025)
            {
              v13 = "DTS_8_1_B";
              goto LABEL_20;
            }
          }

          else
          {
            if (a1 == 11665416)
            {
              v13 = "DTS_8_0_A";
              goto LABEL_20;
            }

            if (a1 == 11730952)
            {
              v13 = "DTS_8_0_B";
              goto LABEL_20;
            }
          }
        }

        else if (a1 > 11534342)
        {
          if (a1 == 11534343)
          {
            v13 = "DTS_7_0";
            goto LABEL_20;
          }

          if (a1 == 11599880)
          {
            v13 = "DTS_7_1";
            goto LABEL_20;
          }
        }

        else
        {
          if (a1 == 11403271)
          {
            v13 = "DTS_6_1_B";
            goto LABEL_20;
          }

          if (a1 == 11468807)
          {
            v13 = "DTS_6_1_C";
            goto LABEL_20;
          }
        }
      }

      else if (a1 > 12910595)
      {
        if (a1 <= 13369367)
        {
          if (a1 <= 13107206)
          {
            switch(a1)
            {
              case 12910596:
                v13 = "Logic_4_0_C";
                goto LABEL_20;
              case 12976134:
                v13 = "Logic_6_0_B";
                goto LABEL_20;
              case 13041671:
                v13 = "Logic_6_1_B";
                goto LABEL_20;
            }
          }

          else if (a1 > 13238283)
          {
            if (a1 == 13238284)
            {
              v13 = "Logic_Atmos_7_1_4_B";
              goto LABEL_20;
            }

            if (a1 == 13303822)
            {
              v13 = "Logic_Atmos_7_1_6";
              goto LABEL_20;
            }
          }

          else
          {
            if (a1 == 13107207)
            {
              v13 = "Logic_6_1_D";
              goto LABEL_20;
            }

            if (a1 == 13172744)
            {
              v13 = "Logic_7_1_B";
              goto LABEL_20;
            }
          }
        }

        else if (a1 > 13631499)
        {
          if (a1 > 13762571)
          {
            if (a1 == 13762572)
            {
              v13 = "CICP_19";
              goto LABEL_20;
            }

            if (a1 == 13828110)
            {
              v13 = "CICP_20";
              goto LABEL_20;
            }
          }

          else
          {
            if (a1 == 13631500)
            {
              v13 = "CICP_17";
              goto LABEL_20;
            }

            if (a1 == 13697038)
            {
              v13 = "CICP_18";
              goto LABEL_20;
            }
          }
        }

        else if (a1 > 13500427)
        {
          if (a1 == 13500428)
          {
            v13 = "CICP_15";
            goto LABEL_20;
          }

          if (a1 == 13565962)
          {
            v13 = "CICP_16";
            goto LABEL_20;
          }
        }

        else
        {
          if (a1 == 13369368)
          {
            v13 = "CICP_13";
            goto LABEL_20;
          }

          if (a1 == 13434888)
          {
            v13 = "CICP_14";
            goto LABEL_20;
          }
        }
      }

      else if (a1 <= 12386311)
      {
        if (a1 <= 12124163)
        {
          switch(a1)
          {
            case 11927559:
              v13 = "DTS_6_1_D";
              goto LABEL_20;
            case 11993096:
              v13 = "AAC_7_1_B";
              goto LABEL_20;
            case 12058632:
              v13 = "AAC_7_1_C";
              goto LABEL_20;
          }
        }

        else if (a1 > 12255237)
        {
          if (a1 == 12255238)
          {
            v13 = "WAVE_5_1_B";
            goto LABEL_20;
          }

          if (a1 == 12320775)
          {
            v13 = "WAVE_6_1";
            goto LABEL_20;
          }
        }

        else
        {
          if (a1 == 12124164)
          {
            v13 = "WAVE_4_0_B";
            goto LABEL_20;
          }

          if (a1 == 12189701)
          {
            v13 = "WAVE_5_0_B";
            goto LABEL_20;
          }
        }
      }

      else if (a1 > 12648463)
      {
        if (a1 > 12779529)
        {
          if (a1 == 12779530)
          {
            v13 = "Atmos_5_1_4";
            goto LABEL_20;
          }

          if (a1 == 12845066)
          {
            v13 = "Atmos_7_1_2";
            goto LABEL_20;
          }
        }

        else
        {
          if (a1 == 12648464)
          {
            v13 = "Atmos_9_1_6";
            goto LABEL_20;
          }

          if (a1 == 12713992)
          {
            v13 = "Atmos_5_1_2";
            goto LABEL_20;
          }
        }
      }

      else if (a1 >= 12517376)
      {
        if (a1 == 12517376)
        {
          v13 = "HOA_ACN_N3D";
          goto LABEL_20;
        }

        if (a1 == 12582924)
        {
          v13 = "Atmos_7_1_4";
          goto LABEL_20;
        }
      }

      else
      {
        if (a1 == 12386312)
        {
          v13 = "WAVE_7_1";
          goto LABEL_20;
        }

        if (a1 == 12451840)
        {
          v13 = "HOA_ACN_SN3D";
          goto LABEL_20;
        }
      }

LABEL_19:
      v13 = "Unknown";
LABEL_20:

      std::string::basic_string[abi:ne200100]<0>(a2, v13);
      return;
    }

    v5 = llroundf(sqrtf(a1));
    if (v5)
    {
      v6 = v5 * v5 == a1;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      goto LABEL_19;
    }

    std::string::basic_string[abi:ne200100]<0>(&v21, "HOA_ACN_SN3D");
    v7 = std::string::append(&v21, " ", 1uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v5 - 1);
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
  }

  v18 = std::string::append(&v22, p_p, size);
  v19 = *&v18->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v18->__r_.__value_.__l + 2);
  *a2 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_296BE26DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
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

void sub_296BE29BC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C25FBA0](v1);
  _Unwind_Resume(a1);
}

void GetChannelLayoutSphericalCoordinates(const AudioChannelLayout *a1@<X0>, void *a2@<X8>, int16x4_t a3@<D0>)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  __p = 0;
  v40 = 0;
  v41 = 0;
  if (a1->mChannelLayoutTag == 0x10000)
  {
    v25 = vcnt_s8(a1->mChannelBitmap);
    v25.i16[0] = vaddlv_u8(v25);
    mChannelLayoutTag = v25.i32[0];
LABEL_29:
    LOBYTE(inSpecifier) = 0;
    std::vector<char>::vector[abi:ne200100](&outPropertyData, 32);
    begin = outPropertyData.__begin_;
    *outPropertyData.__begin_ = 0;
    *(begin + 2) = 0;
    if (mChannelLayoutTag <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = mChannelLayoutTag;
    }

    v29 = (20 * v28 + 12);
    LOBYTE(inSpecifier) = 0;
    end = outPropertyData.__end_;
    if (v29 <= outPropertyData.__end_ - begin)
    {
      if (v29 < outPropertyData.__end_ - begin)
      {
        end = begin + v29;
        outPropertyData.__end_ = &begin[v29];
      }
    }

    else
    {
      std::vector<char>::__append(&outPropertyData, v29 - (outPropertyData.__end_ - begin), &inSpecifier);
      begin = outPropertyData.__begin_;
      end = outPropertyData.__end_;
    }

    *(begin + 2) = mChannelLayoutTag;
    inSpecifier = end - begin;
    if (a1->mChannelLayoutTag == 0x10000)
    {
      v31 = 1668116578;
    }

    else
    {
      v31 = 1668116588;
    }

    AudioFormatGetProperty(v31, 4u, &a1->mChannelLayoutTag + (a1->mChannelLayoutTag == 0x10000), &inSpecifier, begin);
    v32 = outPropertyData.__begin_;
    v33 = *(outPropertyData.__begin_ + 2);
    if (v33 > (outPropertyData.__end_ - outPropertyData.__begin_ - 12) / 0x14uLL)
    {
LABEL_43:
      __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
    }

    v34 = -1;
    v35 = 20;
    while (++v34 < v33)
    {
      std::vector<float>::push_back[abi:ne200100](&v45, &v32[v35]);
      std::vector<float>::push_back[abi:ne200100](&v42, &outPropertyData.__begin_[v35 + 4]);
      std::vector<float>::push_back[abi:ne200100](&__p, &outPropertyData.__begin_[v35 + 8]);
      v35 += 20;
      v32 = outPropertyData.__begin_;
      v33 = *(outPropertyData.__begin_ + 2);
      if (v33 > (outPropertyData.__end_ - outPropertyData.__begin_ - 12) / 0x14uLL)
      {
        goto LABEL_43;
      }
    }

    outPropertyData.__end_ = v32;
    operator delete(v32);
    goto LABEL_45;
  }

  if (a1->mChannelLayoutTag)
  {
    mChannelLayoutTag = a1->mChannelLayoutTag;
    goto LABEL_29;
  }

  mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
  LODWORD(outPropertyData.__begin_) = 0;
  std::vector<float>::resize(&v45, mNumberChannelDescriptions, &outPropertyData, a3);
  v6 = a1->mNumberChannelDescriptions;
  LODWORD(outPropertyData.__begin_) = 0;
  std::vector<float>::resize(&v42, v6, &outPropertyData, v7);
  v8 = a1->mNumberChannelDescriptions;
  LODWORD(outPropertyData.__begin_) = 0;
  std::vector<float>::resize(&__p, v8, &outPropertyData, v9);
  v10 = a1->mNumberChannelDescriptions;
  if (v10)
  {
    v11 = 0;
    v12 = &a1->mChannelDescriptions[0].mCoordinates[2];
    do
    {
      if ((*(v12 - 3) & 3) != 1)
      {
        if ((*(v12 - 3) & 3) != 2)
        {
          v22 = *(v12 - 4);
          ioPropertyDataSize = 20;
          inSpecifier = v22;
          if (!AudioFormatGetProperty(0x6473636Cu, 4u, &inSpecifier, &ioPropertyDataSize, &outPropertyData))
          {
            *(v45 + v11) = outPropertyData.__end_;
            *(v42 + v11) = HIDWORD(outPropertyData.__end_);
            *(__p + v11) = outPropertyData.__end_cap_.__value_;
          }

          v10 = a1->mNumberChannelDescriptions;
          goto LABEL_22;
        }

        *(v45 + v11) = *(v12 - 2);
        *(v42 + v11) = *(v12 - 1);
        v13 = *v12;
        v14 = __p;
        goto LABEL_21;
      }

      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
      v17 = *v12;
      v18 = fabsf(v15);
      v19 = fabsf(v16);
      v20 = fmaxf(v18, fmaxf(v19, fabsf(*v12)));
      if (v20 <= 1.8447e19)
      {
        v23 = 1.0;
        if (v20 >= 5.421e-20)
        {
          goto LABEL_16;
        }

        v21 = 1769996288;
      }

      else
      {
        v21 = 360710144;
      }

      v23 = *&v21;
LABEL_16:
      v24 = __p;
      *(__p + v11) = sqrtf((((v16 * v23) * (v16 * v23)) + ((v15 * v23) * (v15 * v23))) + ((v17 * v23) * (v17 * v23))) / v23;
      if (v18 < 0.000001 && v19 < 0.000001)
      {
        *(v45 + v11) = 0;
        if (v17 <= 0.0)
        {
          if (v17 < 0.0)
          {
            *(v42 + v11) = -1028390912;
          }

          else
          {
            *(v42 + v11) = 0;
          }
        }

        else
        {
          *(v42 + v11) = 1119092736;
        }

        goto LABEL_22;
      }

      *(v45 + v11) = atan2f(v15, v16) * 57.296;
      v13 = asinf(v17 / v24[v11]) * 57.296;
      v14 = v42;
LABEL_21:
      v14[v11] = v13;
LABEL_22:
      ++v11;
      v12 += 5;
    }

    while (v11 < v10);
  }

LABEL_45:
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_EEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_S6_EJEJEJRS6_S9_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(a2, &v45, &v42, &__p);
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

void sub_296BE2E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void GetChannelLayoutSphericalCoordinates(AudioChannelLayoutTag a1@<W0>, void *a2@<X8>)
{
  v7 = 0;
  std::vector<char>::vector[abi:ne200100](__p, 32);
  v4 = __p[0];
  *(__p[0] + 1) = 0;
  v4->mNumberChannelDescriptions = 0;
  v4->mChannelLayoutTag = a1;
  GetChannelLayoutSphericalCoordinates(v4, a2, v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_296BE2EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GetChannelLayoutChannelLabels(AudioChannelLayoutTag a1@<W0>, AudioChannelLabel **a2@<X8>)
{
  v6 = 0;
  std::vector<char>::vector[abi:ne200100](__p, 32);
  v4 = __p[0];
  *(__p[0] + 1) = 0;
  v4->mNumberChannelDescriptions = 0;
  v4->mChannelLayoutTag = a1;
  GetChannelLayoutChannelLabels(v4, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_296BE2F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GetChannelLayoutChannelLabels(const AudioChannelLayout *a1@<X0>, AudioChannelLabel **a2@<X8>)
{
  if (a1->mChannelLayoutTag == 0x10000)
  {
    v5 = vcnt_s8(a1->mChannelBitmap);
    v5.i16[0] = vaddlv_u8(v5);
    mChannelLayoutTag = v5.i32[0];
  }

  else if (a1->mChannelLayoutTag)
  {
    mChannelLayoutTag = a1->mChannelLayoutTag;
  }

  else
  {
    mChannelLayoutTag = a1->mNumberChannelDescriptions;
  }

  v6 = mChannelLayoutTag;
  LODWORD(v20.__begin_) = -1;
  std::vector<unsigned int>::vector[abi:ne200100](a2, mChannelLayoutTag);
  if (a1->mChannelLayoutTag)
  {
    __x[0] = 0;
    std::vector<char>::vector[abi:ne200100](&v20, 32);
    begin = v20.__begin_;
    *v20.__begin_ = 0;
    *(begin + 2) = 0;
    if (mChannelLayoutTag <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = mChannelLayoutTag;
    }

    v9 = (20 * v8 + 12);
    __x[0] = 0;
    end = v20.__end_;
    if (v9 <= (v20.__end_ - begin))
    {
      if (v9 < (v20.__end_ - begin))
      {
        end = begin + v9;
        v20.__end_ = &v9[begin];
      }
    }

    else
    {
      std::vector<char>::__append(&v20, &v9[-(v20.__end_ - begin)], __x);
      begin = v20.__begin_;
      end = v20.__end_;
    }

    *(begin + 2) = mChannelLayoutTag;
    *__x = end - begin;
    if (a1->mChannelLayoutTag == 0x10000)
    {
      v14 = 1668116578;
    }

    else
    {
      v14 = 1668116588;
    }

    AudioFormatGetProperty(v14, 4u, &a1->mChannelLayoutTag + (a1->mChannelLayoutTag == 0x10000), __x, begin);
    v15 = v20.__begin_;
    if (mChannelLayoutTag)
    {
      v16 = v20.__begin_ + 12;
      v17 = *a2;
      do
      {
        v18 = *v16;
        v16 += 20;
        *v17++ = v18;
        --v6;
      }

      while (v6);
    }

    else if (!v20.__begin_)
    {
      return;
    }

    v20.__end_ = v15;
    operator delete(v15);
  }

  else if (mChannelLayoutTag)
  {
    mChannelDescriptions = a1->mChannelDescriptions;
    v12 = *a2;
    do
    {
      mChannelLabel = mChannelDescriptions->mChannelLabel;
      ++mChannelDescriptions;
      *v12++ = mChannelLabel;
      --v6;
    }

    while (v6);
  }
}

void sub_296BE3104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
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

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIfNS_9allocatorIfEEEES6_S6_EEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_S6_EJEJEJRS6_S9_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void sub_296BE3484(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C25FB50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_296BE354C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

id getPersonalizedIRDataLog(void)
{
  if (getPersonalizedIRDataLog(void)::onceToken != -1)
  {
    getPersonalizedIRDataLog();
  }

  v1 = getPersonalizedIRDataLog(void)::gLog;

  return v1;
}

uint64_t ___Z24getPersonalizedIRDataLogv_block_invoke()
{
  getPersonalizedIRDataLog(void)::gLog = os_log_create("com.apple.coreaudio", "PersonalizedIRData");

  return MEMORY[0x2A1C71028]();
}

void IR::PersonalizedIRData::Implementation::Implementation(uint64_t a1, __int128 *a2, char a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 48) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v4;
  }

  *(a1 + 80) = 0;
  *(a1 + 84) = -1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  IR::DataCache::create();
}

void sub_296BE37C8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::~__value_func[abi:ne200100](v1 + 24);
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void IR::PersonalizedIRData::Implementation::~Implementation(id *this)
{
  v2 = *this;
  std::mutex::lock((*this + 80));
  v2[200] = 1;
  std::mutex::unlock((v2 + 80));

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::~__value_func[abi:ne200100]((this + 3));
  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t IR::PersonalizedIRData::Implementation::UnregisterObservers(IR::PersonalizedIRData::Implementation *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = getPersonalizedIRDataLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 56);
    if (*(this + 79) < 0)
    {
      v3 = *v3;
    }

    *v5 = 136315394;
    *&v5[4] = v3;
    v6 = 2080;
    v7 = "UnregisterObservers";
    _os_log_impl(&dword_296B9D000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Unregistering observers.", v5, 0x16u);
  }

  if (*(this + 16) == 1)
  {
    IR::PersonalizedIRData::Implementation::UnregisterPersonalizedHRTFAllowedListener(this);
  }

  else
  {
    IR::PersonalizedIRData::Implementation::UnregisterBTCServicesAndMAObservers(this);
  }

  *v5 = &unk_2A1DECD78;
  v8 = v5;
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::swap[abi:ne200100](v5, this + 3);
  return std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::~__value_func[abi:ne200100](v5);
}

uint64_t IR::DataCache::clearCFDataCache(IR::DataCache *this)
{
  v12 = *MEMORY[0x29EDCA608];
  std::recursive_mutex::lock((this + 16));
  v2 = getPersonalizedIRDataLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 144);
    if (*(this + 167) < 0)
    {
      v3 = *v3;
    }

    v8 = 136315394;
    v9 = v3;
    v10 = 2080;
    v11 = "clearCFDataCache";
    _os_log_impl(&dword_296B9D000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Clearing personalized HRTF cache.", &v8, 0x16u);
  }

  v4 = 0;
  v5 = this + 184;
  do
  {
    v6 = *&v5[v4];
    *&v5[v4] = 0;
    if (v6)
    {
      CFRelease(v6);
    }

    v4 += 8;
  }

  while (v4 != 16);
  *(this + 43) = 1;
  *(this + 168) = 0;
  *(this + 22) = 0;
  std::recursive_mutex::unlock((this + 16));
  return 0;
}

void sub_296BE3B3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void IR::PersonalizedIRData::Implementation::RegisterObservers(uint64_t a1, uint64_t a2, int a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v6 = getPersonalizedIRDataLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315394;
    v24 = v7;
    v25 = 2080;
    v26 = "RegisterObservers";
    _os_log_impl(&dword_296B9D000, v6, OS_LOG_TYPE_DEFAULT, "[%s|%s] Registering observers.", buf, 0x16u);
  }

  std::function<void ()(IR::PersonalizedIRData::DataStatus)>::operator=((a1 + 24), a2);
  if (*(a1 + 16))
  {
    inObjectID = 0;
    if (AudioDSPCoreUtility::GetDeviceOrPortID(&inObjectID, v8) || !inObjectID)
    {
      v17 = getPersonalizedIRDataLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        IR::PersonalizedIRData::Implementation::RegisterObservers();
      }

      IR::PersonalizedIRData::Implementation::UnregisterPersonalizedHRTFAllowedListener(a1);
    }

    else if (inObjectID != *(a1 + 96))
    {
      IR::PersonalizedIRData::Implementation::UnregisterPersonalizedHRTFAllowedListener(a1);
      *&inAddress.mSelector = *"afrhbolg";
      inAddress.mElement = 0;
      v9 = AudioObjectAddPropertyListener(inObjectID, &inAddress, IR::PersonalizedIRData::HALListenerCallbackFunction, a1);
      v10 = getPersonalizedIRDataLog();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v12 = *v12;
          }

          *buf = 136315906;
          v24 = v12;
          v25 = 2080;
          v26 = "RegisterObservers";
          v27 = 1024;
          v28 = inObjectID;
          v29 = 1024;
          v30 = v9;
          _os_log_error_impl(&dword_296B9D000, v11, OS_LOG_TYPE_ERROR, "[%s|%s] Failed to register personalizedHRTFAllowed listener for device ID: %u. Error: %d", buf, 0x22u);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        IR::PersonalizedIRData::Implementation::RegisterObservers();
      }
    }

    *(a1 + 96) = inObjectID;
    IR::PersonalizedIRData::Implementation::CheckSupport(a1, 1);
  }

  else
  {
    if (*(a1 + 84) == -1)
    {
      v13 = *(a1 + 88);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 3221225472;
      handler[2] = ___ZN2IR18PersonalizedIRData14Implementation17RegisterObserversERKNSt3__18functionIFvNS0_10DataStatusEEEEb_block_invoke;
      handler[3] = &__block_descriptor_40_e8_v12__0i8l;
      handler[4] = a1;
      v14 = notify_register_dispatch("BTCloudServicesSoundProfileChangedNotification", (a1 + 84), v13, handler);
      v15 = getPersonalizedIRDataLog();
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          IR::PersonalizedIRData::Implementation::RegisterObservers();
        }

        *(a1 + 84) = -1;
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          IR::PersonalizedIRData::Implementation::RegisterObservers();
        }
      }
    }

    if (*(a1 + 81) == 1)
    {
      atomic_store(1u, (a1 + 80));
    }

    else
    {
      *(a1 + 80) = 257;
    }
  }

  if (a3 && *(a1 + 48))
  {
    v18 = getPersonalizedIRDataLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v19 = *v19;
      }

      *buf = 136315394;
      v24 = v19;
      v25 = 2080;
      v26 = "RegisterObservers";
      _os_log_impl(&dword_296B9D000, v18, OS_LOG_TYPE_DEFAULT, "[%s|%s] Executing callback with valid data = true", buf, 0x16u);
    }

    std::function<void ()(IR::PersonalizedIRData::DataStatus)>::operator()(a1 + 24, 0);
  }
}

void *std::function<void ()(IR::PersonalizedIRData::DataStatus)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t ___ZN2IR18PersonalizedIRData14Implementation17RegisterObserversERKNSt3__18functionIFvNS0_10DataStatusEEEEb_block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(result + 32);
  if (*(v1 + 48))
  {
    v2 = getPersonalizedIRDataLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (v1 + 56);
      if (*(v1 + 79) < 0)
      {
        v3 = *v3;
      }

      v4 = 136315394;
      v5 = v3;
      v6 = 2080;
      v7 = "RegisterObservers_block_invoke";
      _os_log_impl(&dword_296B9D000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] SoundProfile data has changed.", &v4, 0x16u);
    }

    return std::function<void ()(IR::PersonalizedIRData::DataStatus)>::operator()(v1 + 24, 0);
  }

  return result;
}

uint64_t std::function<void ()(IR::PersonalizedIRData::DataStatus)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void IR::PersonalizedIRData::Implementation::UnregisterPersonalizedHRTFAllowedListener(IR::PersonalizedIRData::Implementation *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = (this + 96);
  v2 = *(this + 24);
  if (v2)
  {
    v9.mElement = 0;
    *&v9.mSelector = *"afrhbolg";
    v4 = AudioObjectRemovePropertyListener(v2, &v9, IR::PersonalizedIRData::HALListenerCallbackFunction, this);
    v5 = getPersonalizedIRDataLog();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = (this + 56);
        if (*(this + 79) < 0)
        {
          v7 = *v7;
        }

        v8 = *v3;
        *buf = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "UnregisterPersonalizedHRTFAllowedListener";
        v14 = 1024;
        v15 = v8;
        v16 = 1024;
        v17 = v4;
        _os_log_impl(&dword_296B9D000, v6, OS_LOG_TYPE_DEFAULT, "[%s|%s] Failed to unregister personalizedHRTFAllowed listener. Device ID: %u. Error: %d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      IR::PersonalizedIRData::Implementation::UnregisterPersonalizedHRTFAllowedListener();
    }

    *v3 = 0;
  }
}

uint64_t IR::PersonalizedIRData::HALListenerCallbackFunction(IR::PersonalizedIRData *this, unsigned int a2, unsigned int a3, AudioObjectPropertyAddress *a4, void *a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = getPersonalizedIRDataLog();
  v7 = v6;
  if (a4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      p_mElement = &a4[4].mElement;
      if (SHIBYTE(a4[6].mScope) < 0)
      {
        p_mElement = *p_mElement;
      }

      v10 = 136315394;
      v11 = p_mElement;
      v12 = 2080;
      v13 = "HALListenerCallbackFunction";
      _os_log_impl(&dword_296B9D000, v7, OS_LOG_TYPE_DEFAULT, "[%s|%s] Personalized HRIR configuration has changed, reloading HRIR.", &v10, 0x16u);
    }

    IR::PersonalizedIRData::Implementation::CheckSupport(a4, 1);
    std::function<void ()(IR::PersonalizedIRData::DataStatus)>::operator()(&a4[2], 0);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      IR::PersonalizedIRData::HALListenerCallbackFunction();
    }
  }

  return 0;
}

uint64_t IR::PersonalizedIRData::Implementation::CheckSupport(IR::PersonalizedIRData::Implementation *this, unsigned int *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a2 && *(this + 81) == 1)
  {
    *(this + 81) = 0;
  }

  if (*(this + 16) != 1)
  {
    if (*(this + 81) == 1)
    {
      atomic_store(1u, this + 80);
    }

    else
    {
      *(this + 40) = 257;
    }

    goto LABEL_31;
  }

  inObjectID = 0;
  DeviceOrPortID = AudioDSPCoreUtility::GetDeviceOrPortID(&inObjectID, a2);
  if (DeviceOrPortID || !inObjectID)
  {
    v9 = getPersonalizedIRDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (this + 56);
      if (*(this + 79) < 0)
      {
        v10 = *v10;
      }

      *buf = 136315650;
      v21 = v10;
      v22 = 2080;
      v23 = "CheckSupport";
      v24 = 1024;
      v25 = DeviceOrPortID;
      _os_log_impl(&dword_296B9D000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Unknown device ID, Error: %d", buf, 0x1Cu);
    }

    if (*(this + 81) != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
    ioDataSize = 4;
    *&inAddress.mSelector = *"afrhbolg";
    inAddress.mElement = 0;
    if (AudioObjectHasProperty(inObjectID, &inAddress))
    {
      LOBYTE(v4) = *(this + 81);
      if ((v4 & 1) == 0)
      {
        outData = 0;
        PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
        if (!PropertyData)
        {
          v15 = outData != 0;
          if (*(this + 81) == 1)
          {
            atomic_store(v15, this + 80);
          }

          else
          {
            *(this + 80) = v15;
            *(this + 81) = 1;
          }

          goto LABEL_31;
        }

        v6 = PropertyData;
        v7 = getPersonalizedIRDataLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = (this + 56);
          if (*(this + 79) < 0)
          {
            v8 = *v8;
          }

          *buf = 136315906;
          v21 = v8;
          v22 = 2080;
          v23 = "CheckSupport";
          v24 = 1024;
          v25 = inObjectID;
          v26 = 1024;
          v27 = v6;
          _os_log_impl(&dword_296B9D000, v7, OS_LOG_TYPE_DEFAULT, "[%s|%s] Could not read soundProfileAllowed property. Device ID %u. Error: %d", buf, 0x22u);
        }

        LOBYTE(v4) = *(this + 81);
      }

      goto LABEL_30;
    }

    v11 = getPersonalizedIRDataLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (this + 56);
      if (*(this + 79) < 0)
      {
        v12 = *v12;
      }

      *buf = 136315650;
      v21 = v12;
      v22 = 2080;
      v23 = "CheckSupport";
      v24 = 1024;
      v25 = inObjectID;
      _os_log_impl(&dword_296B9D000, v11, OS_LOG_TYPE_DEFAULT, "[%s|%s] Unsupported device. Device ID %u.", buf, 0x1Cu);
    }

    v4 = *(this + 81);
    if (v4 != 1)
    {
LABEL_30:
      if (v4)
      {
LABEL_31:
        v13 = atomic_load(this + 80);
        return v13 & 1;
      }

LABEL_32:
      v13 = 0;
      return v13 & 1;
    }
  }

  v13 = 0;
  *(this + 81) = 0;
  return v13 & 1;
}

void IR::PersonalizedIRData::Implementation::UnregisterBTCServicesAndMAObservers(IR::PersonalizedIRData::Implementation *this)
{
  v2 = *(this + 21);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(this + 21) = -1;
    v3 = getPersonalizedIRDataLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      IR::PersonalizedIRData::Implementation::UnregisterBTCServicesAndMAObservers();
    }
  }
}

void IR::PersonalizedIRData::Implementation::GetCFData(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v23[10] = *MEMORY[0x29EDCA608];
  IR::DataCache::getFromCFDataCache(*a1, a2, &v15);
  v8 = v15;
  v9 = getPersonalizedIRDataLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 || (a3 & 1) != 0)
  {
    if (v10)
    {
      v13 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315906;
      if (v15)
      {
        v14 = "found";
      }

      else
      {
        v14 = "unavailable";
      }

      *&buf[4] = v13;
      v17 = 2080;
      v18 = "GetCFData";
      v19 = 1024;
      v20 = a2;
      v21 = 2080;
      v22 = v14;
      _os_log_impl(&dword_296B9D000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Personalized HRIR type %u is %s in CFData cache.", buf, 0x26u);
    }

    buf[0] = 0;
    std::pair<BOOL,applesauce::CF::DataRef>::pair[abi:ne200100]<BOOL,applesauce::CF::DataRef&,0>(a4, buf, &v15);
  }

  else
  {
    if (v10)
    {
      v11 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315650;
      *&buf[4] = v11;
      v17 = 2080;
      v18 = "GetCFData";
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&dword_296B9D000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Could not find Personalized HRTF type %u in local cache, trying to fetch.", buf, 0x1Cu);
    }

    if ((*(a1 + 16) & 1) == 0)
    {
      operator new();
    }

    v12 = *a1;
    v23[0] = &unk_2A1DECE40;
    v23[3] = v23;
    IR::DataCache::DownloadAndCacheCFData(v12, v23, 0);
    std::__function::__value_func<void ()(IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](v23);
    IR::DataCache::getFromCFDataCache(*a1, a2, buf);
    *a4 = 0;
    *(a4 + 8) = *buf;
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

void sub_296BE4CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13, std::mutex *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, char a26)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a24);
  operator delete(v27);
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  applesauce::CF::DataRef::~DataRef(&a13);
  _Unwind_Resume(a1);
}

void IR::DataCache::getFromCFDataCache(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  std::recursive_mutex::lock((a1 + 16));
  if (a2 == 2)
  {
    v6 = *(a1 + 192);
    if (v6)
    {
      CFRetain(*(a1 + 192));
    }
  }

  else if (a2 == 1)
  {
    v6 = *(a1 + 184);
    if (v6)
    {
      CFRetain(*(a1 + 184));
    }
  }

  else
  {
    v7 = getPersonalizedIRDataLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        v8 = *v8;
      }

      v9 = 136315650;
      v10 = v8;
      v11 = 2080;
      v12 = "getFromCFDataCache";
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_296B9D000, v7, OS_LOG_TYPE_DEFAULT, "[%s|%s] Returning null dictionary for personalized HRTF type %u.", &v9, 0x1Cu);
    }

    v6 = 0;
  }

  *a3 = v6;
  std::recursive_mutex::unlock((a1 + 16));
}

void sub_296BE4EC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void IR::DataCache::DownloadAndCacheCFData(uint64_t a1, uint64_t a2, int a3)
{
  v57 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    if (*(a1 + 201) == 1)
    {
      v6 = *a1;
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = getPersonalizedIRDataLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = (a1 + 144);
        if (*(a1 + 167) < 0)
        {
          v8 = *v8;
        }

        *buf = 136315394;
        *&buf[4] = v8;
        v54 = 2080;
        *v55 = "DownloadAndCacheCFData";
        _os_log_impl(&dword_296B9D000, v7, OS_LOG_TYPE_DEFAULT, "[%s|%s] Searching for enrolled SoundProfile.", buf, 0x16u);
      }

      v9 = mach_absolute_time();
      v10 = objc_alloc_init(MEMORY[0x29EDC6CA0]);
      v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v12 = dispatch_queue_create("com.apple.coreaudio.pHRTF", v11);
      [v10 setDispatchQueue:v12];

      v43[0] = MEMORY[0x29EDCA5F8];
      v43[1] = 3321888768;
      v43[2] = ___ZN2IR9DataCache22DownloadAndCacheCFDataENSt3__18functionIFvNS_18PersonalizedIRData12DataValidityEEEEb_block_invoke;
      v43[3] = &__block_descriptor_96_ea8_40c38_ZTSNSt3__18weak_ptrIN2IR9DataCacheEEE64c66_ZTSKNSt3__18functionIFvN2IR18PersonalizedIRData12DataValidityEEEE_e47_v24__0__SpatialAudioProfileRecord_8__NSError_16l;
      v43[4] = a1;
      v43[5] = v6;
      v44 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v45 = v9;
      std::__function::__value_func<void ()(IR::PersonalizedIRData::DataValidity)>::__value_func[abi:ne200100](v46, a2);
      [v10 fetchSpatialAudioProfileRecordWithCompletion:v43];
      std::__function::__value_func<void ()(IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](v46);
      if (v44)
      {
        std::__shared_weak_count::__release_weak(v44);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    return;
  }

  inAddress = *"ibipbolg";
  inAddress_8 = 0;
  *buf = &kBTHALPluginBundleID;
  *&buf[8] = 8;
  *&v55[2] = &inAddress_8 + 4;
  LODWORD(v56) = 4;
  ioDataSize = 32;
  if (!AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &ioDataSize, buf))
  {
    v39.mElement = 0;
    outData = 0;
    *&v39.mSelector = *"frhcbolg";
    v37 = 8;
    PropertyData = AudioObjectGetPropertyData(HIDWORD(inAddress_8), &v39, 0, 0, &v37, &outData);
    cf = outData;
    if (outData)
    {
      v16 = CFGetTypeID(outData);
      if (v16 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](exception, "Could not construct");
      }
    }

    if (PropertyData || v37 != 8)
    {
      v21 = getPersonalizedIRDataLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 136315650;
        v48 = "GetEnrolledSoundProfileFromBTHAL";
        v49 = 1024;
        v50 = PropertyData;
        v51 = 1024;
        v52 = v37;
        _os_log_impl(&dword_296B9D000, v21, OS_LOG_TYPE_DEFAULT, "%s: Could not pull SoundProfile. Error: %d. Property size: %u", v47, 0x18u);
      }
    }

    else
    {
      if (cf)
      {
        applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,char const(&)[32]>(cf, "kBTAudioMsgPropertySoundProfile", &theData);
        if (v35)
        {
          if (!theData)
          {
            v29 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C25F8D0](v29, "Could not construct");
          }

          Length = CFDataGetLength(theData);
          v18 = getPersonalizedIRDataLog();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (Length)
          {
            if (v19)
            {
              *v47 = 136315394;
              v48 = "GetEnrolledSoundProfileFromBTHAL";
              v49 = 1024;
              v50 = Length;
              _os_log_impl(&dword_296B9D000, v18, OS_LOG_TYPE_DEFAULT, "%s: Successfully pulled SoundProfile pack. Data size: %u", v47, 0x12u);
            }

            v20 = mach_absolute_time();
            if ((v35 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v31 = 1;
            v32 = v20;
            std::__tuple_leaf<2ul,applesauce::CF::DataRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::DataRef&,0>(&v33, &theData);
            if (v35 == 1 && theData)
            {
              CFRelease(theData);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_54;
          }

          if (!v19)
          {
            goto LABEL_47;
          }

          *v47 = 136315138;
          v48 = "GetEnrolledSoundProfileFromBTHAL";
          v23 = "%s: Invalid SoundProfile pack: size = 0.";
        }

        else
        {
          v18 = getPersonalizedIRDataLog();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_47;
          }

          *v47 = 136315138;
          v48 = "GetEnrolledSoundProfileFromBTHAL";
          v23 = "%s: Invalid SoundProfile pack.";
        }

        _os_log_impl(&dword_296B9D000, v18, OS_LOG_TYPE_DEFAULT, v23, v47, 0xCu);
LABEL_47:

        if (v35 == 1 && theData)
        {
          CFRelease(theData);
        }

        v14 = 1;
        goto LABEL_51;
      }

      v22 = getPersonalizedIRDataLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        IR::DataCache::DownloadAndCacheCFData();
      }
    }

    v14 = 0;
LABEL_51:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_53;
  }

  v13 = getPersonalizedIRDataLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    IR::DataCache::DownloadAndCacheCFData();
  }

  v14 = 0;
LABEL_53:
  v31 = v14;
  v32 = mach_absolute_time();
  v33 = 0;
LABEL_54:
  std::recursive_mutex::lock((a1 + 16));
  *(a1 + 168) = v31;
  *(a1 + 176) = v32;
  *(a1 + 172) = 1;
  std::recursive_mutex::unlock((a1 + 16));
  v24 = v33;
  if (v33)
  {
    CFRetain(v33);
    v30 = v24;
    IR::DataCache::parseSoundProfileAndAddToCache(a1, &v30);
    if (v30)
    {
      CFRelease(v30);
    }
  }

  if (*(a2 + 24))
  {
    v25 = getPersonalizedIRDataLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = (a1 + 144);
      if (*(a1 + 167) < 0)
      {
        v26 = *v26;
      }

      v27 = "Invalid";
      if (!*(a1 + 172))
      {
        v27 = "Valid";
      }

      *buf = 136315650;
      *&buf[4] = v26;
      v54 = 2080;
      *v55 = "DownloadAndCacheCFData";
      *&v55[8] = 2080;
      v56 = v27;
      _os_log_impl(&dword_296B9D000, v25, OS_LOG_TYPE_DEFAULT, "[%s|%s] Executing callback with DataValidity = %s.", buf, 0x20u);
    }

    std::function<void ()(IR::PersonalizedIRData::DataValidity)>::operator()(a2, *(a1 + 172));
  }

  if (v33)
  {
    CFRelease(v33);
  }
}

void sub_296BE55C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void IR::PersonalizedIRData::PersonalizedIRData(IR::PersonalizedIRData *this)
{
  IR::PersonalizedIRData::PersonalizedIRData(this);
}

{
  IR::PersonalizedIRData::PersonalizedIRData(this);
}

void IR::PersonalizedIRData::PersonalizedIRData(void *a1)
{
  *a1 = 0;
  v1 = [MEMORY[0x29EDB9F48] mainBundle];
  v2 = [v1 bundleIdentifier];

  [v2 isEqualToString:@"com.apple.audiomxd"];
  operator new();
}

void sub_296BE5798(_Unwind_Exception *a1)
{
  MEMORY[0x29C25FC20](v3, 0x10B2C40A1C44AFCLL);

  std::unique_ptr<IR::PersonalizedIRData::Implementation>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void IR::PersonalizedIRData::PersonalizedIRData(IR::PersonalizedIRData *this, const void *a2)
{
  caulk::make_string("%p", &__p, a2);
  IR::PersonalizedIRData::PersonalizedIRData(this);
}

{
  caulk::make_string("%p", &__p, a2);
  IR::PersonalizedIRData::PersonalizedIRData(this);
}

void sub_296BE5878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_296BE58F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::PersonalizedIRData::CleanUp(IR::PersonalizedIRData::Implementation **this)
{
  v1 = *this;
  IR::PersonalizedIRData::Implementation::UnregisterObservers(*this);
  v2 = *v1;

  return IR::DataCache::clearCFDataCache(v2);
}

uint64_t IR::PersonalizedIRData::RebuildCFDataCache(IR::DataCache ***a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  IR::DataCache::clearCFDataCache(**a1);
  v4 = **a1;
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataValidity)>::__value_func[abi:ne200100](v6, a2);
  IR::DataCache::DownloadAndCacheCFData(v4, v6, ((*a1)[2] & 1) == 0);
  return std::__function::__value_func<void ()(IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](v6);
}

void sub_296BE5A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t IR::PersonalizedIRData::GetStatus(IR::PersonalizedIRData *this)
{
  v1 = **this;
  std::recursive_mutex::lock((v1 + 16));
  v2 = *(v1 + 168);
  std::recursive_mutex::unlock((v1 + 16));
  return v2;
}

uint64_t IR::PersonalizedIRData::GetDataSource(IR::PersonalizedIRData *this)
{
  if (*(*this + 16))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t IR::DataCache::DataCache(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  MEMORY[0x29C25FA70](a1 + 16);
  *(a1 + 80) = 850045863;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 144), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 160) = *(a2 + 2);
    *(a1 + 144) = v4;
  }

  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 256;
  return a1;
}

void sub_296BE5B74(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  std::recursive_mutex::~recursive_mutex((v1 + 16));
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_296BE5C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<IR::DataCache>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::shared_ptr<IR::DataCache>::__enable_weak_this[abi:ne200100]<IR::DataCache,IR::DataCache,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void std::__shared_ptr_pointer<IR::DataCache *,std::shared_ptr<IR::DataCache>::__shared_ptr_default_delete<IR::DataCache,IR::DataCache>,std::allocator<IR::DataCache>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25FC20);
}

void std::default_delete<IR::DataCache>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 192;
    while (1)
    {
      v4 = *(a2 + v3);
      if (v4)
      {
        CFRelease(v4);
      }

      v3 -= 8;
      if (v3 == 176)
      {
        if (*(a2 + 167) < 0)
        {
          operator delete(*(a2 + 144));
        }

        std::mutex::~mutex((a2 + 80));
        std::recursive_mutex::~recursive_mutex((a2 + 16));
        v5 = *(a2 + 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        JUMPOUT(0x29C25FC20);
      }
    }
  }
}

void ___ZN2IR9DataCache22DownloadAndCacheCFDataENSt3__18functionIFvNS_18PersonalizedIRData12DataValidityEEEEb_block_invoke(void *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  v7 = a1[6];
  if (v7)
  {
    v8 = a1[4];
    v9 = std::__shared_weak_count::lock(v7);
    if (v9 && a1[5])
    {
      v10 = std::mutex::try_lock((v8 + 80));
      if (v10 && *(v8 + 200) != 1)
      {
        v13 = mach_absolute_time();
        std::recursive_mutex::lock((v8 + 16));
        *(v8 + 168) = 1;
        *(v8 + 176) = v13;
        *(v8 + 172) = 1;
        std::recursive_mutex::unlock((v8 + 16));
        if (!v5 || v6)
        {
          v22 = getPersonalizedIRDataLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v25 = (v8 + 144);
            if (*(v8 + 167) < 0)
            {
              v25 = *v25;
            }

            *buf = 136315650;
            *&buf[4] = v25;
            v34 = 2080;
            v35 = "DownloadAndCacheCFData_block_invoke";
            v36 = 2112;
            v37 = *&v6;
            _os_log_impl(&dword_296B9D000, v22, OS_LOG_TYPE_DEFAULT, "[%s|%s] Could not pull SoundProfile. Error: %@", buf, 0x20u);
          }
        }

        else
        {
          v14 = [v5 profileData];
          v15 = [v14 length];
          if (v15)
          {
            v16 = a1[7];
            v17 = getPersonalizedIRDataLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = (v13 - v16) * 0.0000000416666667;
              v19 = v18 * 1000.0;
              v20 = (v8 + 144);
              if (*(v8 + 167) < 0)
              {
                v20 = *v20;
              }

              *buf = 136315906;
              *&buf[4] = v20;
              v34 = 2080;
              v35 = "DownloadAndCacheCFData_block_invoke";
              v36 = 2048;
              v37 = v19;
              v38 = 1024;
              v39 = v15;
              _os_log_impl(&dword_296B9D000, v17, OS_LOG_TYPE_DEFAULT, "[%s|%s] Successfully pulled SoundProfile pack in %.1fms. Size: %u", buf, 0x26u);
            }

            v21 = v14;
            v22 = v21;
            if (v21)
            {
              CFRetain(v21);
              *buf = v22;
              v23 = CFGetTypeID(v22);
              if (v23 != CFDataGetTypeID())
              {
                exception = __cxa_allocate_exception(0x10uLL);
                MEMORY[0x29C25F8D0](exception, "Could not construct");
              }
            }

            else
            {
              *buf = 0;
            }

            v28 = *buf;
            if (*buf)
            {
              CFRetain(*buf);
            }

            cf = v28;
            IR::DataCache::parseSoundProfileAndAddToCache(v8, &cf);
            if (cf)
            {
              CFRelease(cf);
            }

            if (*buf)
            {
              CFRelease(*buf);
            }
          }

          else
          {
            v26 = getPersonalizedIRDataLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = (v8 + 144);
              if (*(v8 + 167) < 0)
              {
                v27 = *v27;
              }

              *buf = 136315650;
              *&buf[4] = v27;
              v34 = 2080;
              v35 = "DownloadAndCacheCFData_block_invoke";
              v36 = 1024;
              LODWORD(v37) = 0;
              _os_log_impl(&dword_296B9D000, v26, OS_LOG_TYPE_DEFAULT, "[%s|%s] Invalid SoundProfile pack. Length: %u", buf, 0x1Cu);
            }

            v22 = v14;
          }
        }

        if (a1[11])
        {
          v29 = getPersonalizedIRDataLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = (v8 + 144);
            if (*(v8 + 167) < 0)
            {
              v30 = *v30;
            }

            v31 = "Invalid";
            if (!*(v8 + 172))
            {
              v31 = "Valid";
            }

            *buf = 136315650;
            *&buf[4] = v30;
            v34 = 2080;
            v35 = "DownloadAndCacheCFData_block_invoke";
            v36 = 2080;
            v37 = *&v31;
            _os_log_impl(&dword_296B9D000, v29, OS_LOG_TYPE_DEFAULT, "[%s|%s] Executing callback with DataValidity = %s.", buf, 0x20u);
          }

          std::function<void ()(IR::PersonalizedIRData::DataValidity)>::operator()((a1 + 8), *(v8 + 172));
        }
      }

      else
      {
        v11 = getPersonalizedIRDataLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "DownloadAndCacheCFData_block_invoke";
          _os_log_impl(&dword_296B9D000, v11, OS_LOG_TYPE_DEFAULT, "%s: Aborting because DataCache is being destroyed.", buf, 0xCu);
        }

        if (!v10)
        {
          goto LABEL_50;
        }
      }

      std::mutex::unlock((v8 + 80));
LABEL_50:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      goto LABEL_51;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = getPersonalizedIRDataLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "DownloadAndCacheCFData_block_invoke";
    _os_log_impl(&dword_296B9D000, v12, OS_LOG_TYPE_DEFAULT, "%s: Failed to save personalized HRIR type. The caller no longer exists.", buf, 0xCu);
  }

  if (v9)
  {
    goto LABEL_50;
  }

LABEL_51:
}

void sub_296BE62BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12)
{
  __cxa_free_exception(v18);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a12);

  std::mutex::unlock((v15 + 80));
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);

  _Unwind_Resume(a1);
}

uint64_t IR::DataCache::parseSoundProfileAndAddToCache(uint64_t a1, CFDataRef *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  applesauce::CF::make_DictionaryRef(a2, &v21);
  v3 = 0;
  v4 = 0;
  v20 = 0x200000001;
  v5 = (a1 + 144);
  do
  {
    if (!v21)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }

    v6 = *(&v20 + v4);
    if (v6 == 1)
    {
      v7 = "HRIR_ITDMod";
    }

    else
    {
      v7 = "HRIR_DFEQ";
    }

    *buf = v7;
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,char const*>(v21, buf, &cf);
    if (v19 == 1)
    {
      std::recursive_mutex::lock((a1 + 16));
      if ((v19 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v8 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v17 = v8;
      IR::DataCache::addToCFDataCachePrivate(a1, v6, &v17);
      if (v17)
      {
        CFRelease(v17);
      }

      v9 = getPersonalizedIRDataLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1 + 144;
        if (*(a1 + 167) < 0)
        {
          v10 = *v5;
        }

        if ((v19 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (!cf)
        {
          v16 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25F8D0](v16, "Could not construct");
        }

        Length = CFDataGetLength(cf);
        *buf = 136315906;
        *&buf[4] = v10;
        v23 = 2080;
        v24 = "parseSoundProfileAndAddToCache";
        v25 = 1024;
        v26 = v6;
        v27 = 1024;
        v28 = Length;
        _os_log_impl(&dword_296B9D000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Personalized HRIR type %u was found and stored in local CF cache. Length: %u.", buf, 0x22u);
      }

      std::recursive_mutex::unlock((a1 + 16));
    }

    else
    {
      v12 = getPersonalizedIRDataLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = a1 + 144;
        if (*(a1 + 167) < 0)
        {
          v13 = *v5;
        }

        *buf = 136315650;
        *&buf[4] = v13;
        v23 = 2080;
        v24 = "parseSoundProfileAndAddToCache";
        v25 = 1024;
        v26 = v6;
        _os_log_error_impl(&dword_296B9D000, v12, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid SoundProfile pack, could not find personalized HRIR type %u.", buf, 0x1Cu);
      }

      v3 = 0xFFFFFFFFLL;
    }

    if (v19 == 1 && cf)
    {
      CFRelease(cf);
    }

    v4 += 4;
  }

  while (v4 != 8);
  if (v21)
  {
    CFRelease(v21);
  }

  if (!v3)
  {
    std::recursive_mutex::lock((a1 + 16));
    *(a1 + 172) = 0;
    std::recursive_mutex::unlock((a1 + 16));
    return 0;
  }

  return v3;
}

void sub_296BE6694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(IR::PersonalizedIRData::DataValidity)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t __copy_helper_block_ea8_40c38_ZTSNSt3__18weak_ptrIN2IR9DataCacheEEE64c66_ZTSKNSt3__18functionIFvN2IR18PersonalizedIRData12DataValidityEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(IR::PersonalizedIRData::DataValidity)>::__value_func[abi:ne200100](a1 + 64, a2 + 64);
}

void sub_296BE6810(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c38_ZTSNSt3__18weak_ptrIN2IR9DataCacheEEE64c66_ZTSKNSt3__18functionIFvN2IR18PersonalizedIRData12DataValidityEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](a1 + 64);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void IR::DataCache::addToCFDataCachePrivate(uint64_t a1, int a2, const void **a3)
{
  if (a2 == 2)
  {
    v4 = *(a1 + 192);
    v6 = *a3;
    *(a1 + 192) = *a3;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (a2 == 1)
  {
    v4 = *(a1 + 184);
    v5 = *a3;
    *(a1 + 184) = *a3;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v4)
    {
LABEL_6:
      CFRelease(v4);
    }
  }

  else
  {
    v7 = getPersonalizedIRDataLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      IR::DataCache::addToCFDataCachePrivate();
    }
  }
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,char const*>(const __CFDictionary *a1@<X0>, const char **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<char const*>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDataGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

const UInt8 *applesauce::CF::details::at_key<char const*>(const __CFDictionary *a1, const char **a2)
{
  Value = *a2;
  v4 = strlen(*a2);
  if (!Value)
  {
    v5 = 0;
    cf = 0;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_4:
  Value = CFDictionaryGetValue(a1, v5);
  v5 = cf;
  if (cf)
  {
LABEL_8:
    CFRelease(v5);
  }

LABEL_9:
  if (!a1)
  {
    return 0;
  }

  return Value;
}

void sub_296BE6A84(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BE6A30);
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DataRef,char const(&)[32]>(const __CFDictionary *a1@<X0>, const UInt8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = applesauce::CF::details::at_key<char const(&)[32]>(a1, a2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDataGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a3 = 0;
    goto LABEL_6;
  }

  *a3 = v5;
  v7 = 1;
LABEL_6:
  a3[8] = v7;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[32]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_296BE6C18(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296BE6BC4);
}

void *std::__tuple_leaf<2ul,applesauce::CF::DataRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::DataRef&,0>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  return a1;
}

uint64_t std::tuple<BOOL,unsigned int,applesauce::CF::DataRef>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    qword_2A13966F8 = dlsym(v1, "CAReportingClientCreateReporterID");
    qword_2A1396700 = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    qword_2A1396708 = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    qword_2A1396710 = dlsym(v1, "CAReportingClientStartReporter");
    qword_2A1396718 = dlsym(v1, "CAReportingClientStopReporter");
    qword_2A1396720 = dlsym(v1, "CAReportingClientSetAudioServiceType");
    qword_2A1396728 = dlsym(v1, "CAReportingClientGetAudioServiceType");
    qword_2A1396730 = dlsym(v1, "CAReportingClientSetConfiguration");
    qword_2A1396738 = dlsym(v1, "CAReportingClientCopyConfiguration");
    qword_2A1396740 = dlsym(v1, "CAReportingClientSendMessage");
    off_2A1396748 = dlsym(v1, "CAReportingClientSendSingleMessage");
    qword_2A1396750 = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    qword_2A1396758 = result;
  }

  return result;
}

uint64_t std::pair<BOOL,applesauce::CF::DataRef>::pair[abi:ne200100]<BOOL,applesauce::CF::DataRef&,0>(uint64_t a1, _BYTE *a2, CFTypeRef *a3)
{
  *a1 = *a2;
  v4 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  *(a1 + 8) = v4;
  return a1;
}

id *std::unique_ptr<IR::PersonalizedIRData::Implementation>::reset[abi:ne200100](id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IR::PersonalizedIRData::Implementation::~Implementation(result);

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(IR::PersonalizedIRData::DataValidity)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_296BE72B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::SyncUtils,std::allocator<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::SyncUtils>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1DECDC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25FC20);
}

void std::__shared_ptr_emplace<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::SyncUtils,std::allocator<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::SyncUtils>>::__on_zero_shared(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 88));

  std::mutex::~mutex((a1 + 24));
}

void *std::__function::__func<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0,std::allocator<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0>,void ()(IR::PersonalizedIRData::DataValidity)>::~__func(void *a1)
{
  *a1 = &unk_2A1DECDF8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0,std::allocator<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0>,void ()(IR::PersonalizedIRData::DataValidity)>::~__func(void *a1)
{
  *a1 = &unk_2A1DECDF8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C25FC20);
}

void *std::__function::__func<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0,std::allocator<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0>,void ()(IR::PersonalizedIRData::DataValidity)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1DECDF8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0,std::allocator<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0>,void ()(IR::PersonalizedIRData::DataValidity)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0,std::allocator<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0>,void ()(IR::PersonalizedIRData::DataValidity)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0,std::allocator<IR::PersonalizedIRData::Implementation::GetCFData(PersonalizedHRIRType,BOOL,unsigned int)::$_0>,void ()(IR::PersonalizedIRData::DataValidity)>::operator()(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  std::mutex::lock(v3);
  v4 = *(a1 + 8);
  if (*(v4 + 112) == 1)
  {
    v5 = getPersonalizedIRDataLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (v2 + 56);
      if (*(v2 + 79) < 0)
      {
        v6 = *v6;
      }

      v8 = 136315394;
      v9 = v6;
      v10 = 2080;
      v11 = "operator()";
      _os_log_impl(&dword_296B9D000, v5, OS_LOG_TYPE_DEFAULT, "[%s|%s] Already timed out.", &v8, 0x16u);
    }

    std::mutex::unlock(v3);
  }

  else
  {
    *(v4 + 113) = 1;
    std::mutex::unlock(v3);
    v7 = (*(a1 + 8) + 64);

    std::condition_variable::notify_all(v7);
  }
}

void OUTLINED_FUNCTION_4_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

uint64_t IR::FFTFilter<float>::Implementation::initialize(uint64_t a1, int a2, int a3, unsigned int a4, int a5, unsigned int a6, int a7, int a8, char a9, char a10)
{
  if (*(a1 + 45) == 1)
  {
    (*(*a1 + 32))(a1);
  }

  if (!a2)
  {
    (*(*a1 + 40))(a1);
    return 4294967246;
  }

  if (a10)
  {
    v18 = a4;
  }

  else
  {
    v18 = 1;
  }

  *(a1 + 24) = a4;
  *(a1 + 28) = v18;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 32) = a7;
  *(a1 + 46) = a8;
  if (a8)
  {
    *(a1 + 32) = a3;
  }

  std::vector<std::vector<float>>::resize((a1 + 336), v18);
  v19 = *(a1 + 12);
  if (!v19)
  {
    v20 = *(a1 + 8);
LABEL_21:
    *(a1 + 16) = 0;
    *(a1 + 20) = v20;
    *(a1 + 12) = 0;
    if (*(a1 + 28))
    {
      v26 = 0;
      v27 = 0;
      do
      {
        std::vector<float>::resize((*(a1 + 336) + v26), a6 - 1 + *(a1 + 8));
        ++v27;
        v26 += 24;
      }

      while (v27 < *(a1 + 28));
    }

    std::vector<float>::resize((a1 + 384), a6);
    goto LABEL_46;
  }

  if (a5)
  {
    v20 = *(a1 + 8);
    if (v20 <= v19)
    {
      goto LABEL_21;
    }
  }

  v21 = MultiRadixRealFFT::Size((a1 + 168));
  v22 = *(a1 + 12);
  if (v21 != 2 * v22)
  {
    result = MultiRadixRealFFT::Initialize((a1 + 168), 2 * v22);
    if (result)
    {
      return result;
    }
  }

  if (a5)
  {
    *(a1 + 20) = *(a1 + 12);
    if (*(a1 + 28))
    {
      v24 = 0;
      v25 = 0;
      do
      {
        std::vector<float>::resize((*(a1 + 336) + v24), (2 * *(a1 + 12) - 1));
        ++v25;
        v24 += 24;
      }

      while (v25 < *(a1 + 28));
    }
  }

  else
  {
    *(a1 + 20) = 0;
  }

  std::vector<float>::resize((a1 + 384), *(a1 + 12));
  v28 = *(a1 + 12);
  v29 = *(a1 + 8) - *(a1 + 20);
  if (v29 / v28 * v28 >= v29)
  {
    v30 = v29 / v28;
  }

  else
  {
    v30 = v29 / v28 + 1;
  }

  *(a1 + 16) = v30;
  std::vector<std::vector<float>>::resize((a1 + 312), *(a1 + 28));
  if (*(a1 + 28))
  {
    v31 = 0;
    v32 = 0;
    do
    {
      std::vector<float>::resize((*(a1 + 312) + v31), *(a1 + 12));
      ++v32;
      v31 += 24;
    }

    while (v32 < *(a1 + 28));
  }

  std::vector<std::vector<float>>::resize((a1 + 360), *(a1 + 24));
  if (*(a1 + 24))
  {
    v33 = 0;
    v34 = 0;
    do
    {
      std::vector<float>::resize((*(a1 + 360) + v33), *(a1 + 12));
      ++v34;
      v33 += 24;
    }

    while (v34 < *(a1 + 24));
  }

  std::vector<float>::resize((a1 + 184), (2 * *(a1 + 16) * *(a1 + 12) * *(a1 + 28)));
  std::vector<std::vector<DSPSplitComplex>>::resize((a1 + 208), *(a1 + 28));
  if (*(a1 + 28))
  {
    v35 = 0;
    v36 = 0;
    v37 = *(a1 + 208);
    do
    {
      std::vector<DSPSplitComplex>::resize((v37 + 24 * v35), *(a1 + 16));
      v37 = *(a1 + 208);
      v38 = v37 + 24 * v35;
      v39 = *v38;
      v40 = *(v38 + 8);
      if (v39 != v40)
      {
        v41 = *(a1 + 184);
        v42 = *(a1 + 12);
        do
        {
          *v39 = v41 + 4 * v36;
          v39[1] = v41 + 4 * (v42 + v36);
          v39 += 2;
          v36 += 2 * v42;
        }

        while (v39 != v40);
      }

      ++v35;
    }

    while (v35 < *(a1 + 28));
  }

  v43 = *(a1 + 12);
  v44 = 2 * v43;
  v45 = 6 * v43;
  if (*(a1 + 46))
  {
    v46 = v45;
  }

  else
  {
    v46 = v44;
  }

  std::vector<float>::resize((a1 + 240), v46);
  v47 = *(a1 + 240);
  v48 = *(a1 + 12);
  *(a1 + 264) = v47;
  *(a1 + 272) = v47 + 4 * v48;
  if (*(a1 + 46))
  {
    *(a1 + 280) = v47 + 4 * (2 * v48);
    *(a1 + 288) = v47 + 4 * (3 * v48);
    *(a1 + 296) = v47 + 4 * (4 * v48);
    *(a1 + 304) = v47 + 4 * (5 * v48);
  }

LABEL_46:
  *(a1 + 47) = a9;
  v49 = a1 + 48;
  if (a9)
  {
    for (i = 0; i != 3; ++i)
    {
      v51 = (v49 + 32 * i);
      caulk::pooled_semaphore_mutex::_lock((v51 + 3));
      std::vector<IR::FFTFilterKernel<float>>::resize(v51, a4);
      if (a4)
      {
        IR::FFTFilterKernel<float>::initialize();
      }

      caulk::pooled_semaphore_mutex::_unlock((v51 + 3));
    }
  }

  else
  {
    caulk::pooled_semaphore_mutex::_lock((a1 + 72));
    std::vector<IR::FFTFilterKernel<float>>::resize((a1 + 48), a4);
    if (a4)
    {
      IR::FFTFilterKernel<float>::initialize();
    }

    caulk::pooled_semaphore_mutex::_unlock((a1 + 72));
  }

  *(a1 + 152) = v49;
  *(a1 + 160) = v49;
  if (*(a1 + 47))
  {
    v52 = a1 + 80;
  }

  else
  {
    v52 = a1 + 48;
  }

  *(a1 + 144) = v52;
  v54 = 0;
  std::vector<float *>::assign((a1 + 408), 0, &v54);
  v53 = *(a1 + 28);
  v54 = 0;
  std::vector<float *>::assign((a1 + 432), v53, &v54);
  (*(*a1 + 40))(a1);
  result = 0;
  *(a1 + 45) = 1;
  return result;
}

void *std::vector<float *>::assign(void *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<float *>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_296C19AB0)));
      if (v17.i8[0])
      {
        *(v16 - 1) = v13;
      }

      if (v17.i8[4])
      {
        *v16 = v13;
      }

      v12 += 2;
      v16 += 2;
    }

    while (v14 != v12);
  }

  v18 = a2 - v10;
  if (a2 <= v10)
  {
    a1[1] = *a1 + 8 * a2;
  }

  else
  {
    v19 = 0;
    v20 = a1[1];
    v21 = v20 + 8 * v18;
    v22 = *a3;
    v23 = (8 * a2 - (v9 - result) - 8) >> 3;
    v24 = vdupq_n_s64(v23);
    v25 = (v20 + 8);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v19), xmmword_296C19AB0)));
      if (v26.i8[0])
      {
        *(v25 - 1) = v22;
      }

      if (v26.i8[4])
      {
        *v25 = v22;
      }

      v19 += 2;
      v25 += 2;
    }

    while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v19);
    a1[1] = v21;
  }

  return result;
}

uint64_t IR::FFTFilter<float>::Implementation::initializeAndSetFilterKernels(uint64_t a1, void *a2)
{
  if (a2[1] != *a2)
  {
    IR::FFTFilterKernel<float>::getMaxFilterLength();
  }

  return 4294956418;
}

uint64_t IR::FFTFilter<float>::Implementation::setFilterKernels(uint64_t a1, void *a2)
{
  if (*(a1 + 45) != 1)
  {
    return 4294956429;
  }

  v4 = (a1 + 48);
  v5 = 3;
  v6 = (a1 + 48);
  do
  {
    if (v6 == a2)
    {
      v9 = 0;
      goto LABEL_19;
    }

    v6 += 4;
    --v5;
  }

  while (v5);
  if ((caulk::pooled_semaphore_mutex::try_lock((*(a1 + 144) + 24)) & 1) != 0 || *(a1 + 47) != 1)
  {
LABEL_11:
    v6 = *(a1 + 144);
  }

  else
  {
    v7 = 3;
    while ((caulk::pooled_semaphore_mutex::try_lock((v4 + 3)) & 1) == 0)
    {
      v4 += 4;
      if (!--v7)
      {
        caulk::pooled_semaphore_mutex::_lock((*(a1 + 144) + 24));
        goto LABEL_11;
      }
    }

    v6 = v4;
  }

  v8 = v6[1];
  if (a2[1] - *a2 == v8 - *v6)
  {
    IR::FFTFilterKernel<float>::getNumActiveFFTSubFilters();
  }

  if (v8 != *v6)
  {
    IR::FFTFilterKernel<float>::reset();
  }

  v9 = 4294956418;
LABEL_19:
  *(a1 + 160) = v6;
  caulk::pooled_semaphore_mutex::_unlock((v6 + 3));
  return v9;
}

void IR::FFTFilter<float>::Implementation::uninitialize(uint64_t a1)
{
  v2 = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = a1 + 48;
  *(a1 + 44) = 1;
  do
  {
    v4 = (v3 + 32 * v2);
    if (v4[1] != *v4)
    {
      IR::FFTFilterKernel<float>::~FFTFilterKernel();
    }

    v4[1] = *v4;
    caulk::pooled_semaphore_mutex::try_lock((v4 + 3));
    caulk::pooled_semaphore_mutex::_unlock((v4 + 3));
    ++v2;
  }

  while (v2 != 3);
  *(a1 + 192) = *(a1 + 184);
  std::vector<std::vector<float>>::clear[abi:ne200100]((a1 + 208));
  *(a1 + 232) = 0;
  *(a1 + 248) = *(a1 + 240);
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  std::vector<std::vector<float>>::clear[abi:ne200100]((a1 + 312));
  std::vector<std::vector<float>>::clear[abi:ne200100]((a1 + 336));
  std::vector<std::vector<float>>::clear[abi:ne200100]((a1 + 360));
  *(a1 + 392) = *(a1 + 384);
  *(a1 + 416) = *(a1 + 408);
}

uint64_t IR::FFTFilter<float>::Implementation::reset(uint64_t a1)
{
  vDSP_vclr(*(a1 + 184), 1, (*(a1 + 192) - *(a1 + 184)) >> 2);
  vDSP_vclr(*(a1 + 240), 1, (*(a1 + 248) - *(a1 + 240)) >> 2);
  *(a1 + 232) = 0;
  if (*(a1 + 28))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 312);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 320) - v4) >> 3) > v3)
      {
        vDSP_vclr(*(v4 + v2), 1, (*(v4 + v2 + 8) - *(v4 + v2)) >> 2);
      }

      vDSP_vclr(*(*(a1 + 336) + v2), 1, (*(*(a1 + 336) + v2 + 8) - *(*(a1 + 336) + v2)) >> 2);
      ++v3;
      v2 += 24;
    }

    while (v3 < *(a1 + 28));
  }

  v5 = *(a1 + 360);
  v6 = *(a1 + 368);
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = *(v5 + 8);
    v5 += 24;
    vDSP_vclr(v7, 1, (v8 - v7) >> 2);
  }

  v9 = (a1 + 72);
  v10 = 3;
  do
  {
    caulk::pooled_semaphore_mutex::try_lock(v9);
    result = caulk::pooled_semaphore_mutex::_unlock(v9);
    v9 = (v9 + 32);
    --v10;
  }

  while (v10);
  *(a1 + 152) = *(a1 + 160);
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  return result;
}

uint64_t IR::FFTFilter<float>::Implementation::getScratchKernels(uint64_t a1)
{
  if (*(a1 + 45) != 1)
  {
    return 0;
  }

  if ((caulk::pooled_semaphore_mutex::try_lock((*(a1 + 144) + 24)) & 1) != 0 || *(a1 + 47) != 1)
  {
    return *(a1 + 144);
  }

  v2 = a1 + 48;
  v3 = 3;
  while ((caulk::pooled_semaphore_mutex::try_lock((v2 + 24)) & 1) == 0)
  {
    v2 += 32;
    if (!--v3)
    {
      caulk::pooled_semaphore_mutex::_lock((*(a1 + 144) + 24));
      return *(a1 + 144);
    }
  }

  return v2;
}

uint64_t IR::FFTFilter<float>::Implementation::setFilterCoeffs(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 45) != 1)
  {
    return 4294956429;
  }

  if ((caulk::pooled_semaphore_mutex::try_lock((*(a1 + 144) + 24)) & 1) != 0 || *(a1 + 47) != 1)
  {
LABEL_8:
    v5 = *(a1 + 144);
  }

  else
  {
    v5 = (a1 + 48);
    v6 = 3;
    while ((caulk::pooled_semaphore_mutex::try_lock((v5 + 3)) & 1) == 0)
    {
      v5 += 4;
      if (!--v6)
      {
        caulk::pooled_semaphore_mutex::_lock((*(a1 + 144) + 24));
        goto LABEL_8;
      }
    }
  }

  if (a3 && 0xCCCCCCCCCCCCCCCDLL * ((v5[1] - *v5) >> 3))
  {
    IR::FFTFilterKernel<float>::storeCoeffs();
  }

  v7 = 0;
  *(a1 + 160) = v5;
  caulk::pooled_semaphore_mutex::_unlock((v5 + 3));
  return v7;
}

uint64_t IR::FFTFilter<float>::Implementation::process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v7[0] = a2;
  return (*(*a1 + 56))(a1, v7, a3, a4, 1, a5, a6);
}

uint64_t IR::FFTFilter<float>::Implementation::processMultipleInputs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (*(a1 + 45) != 1)
  {
    return 4294956429;
  }

  v80 = v13;
  v81 = v12;
  v82 = v11;
  v83 = v10;
  v84 = v9;
  v85 = v8;
  v86 = v6;
  v87 = v7;
  v14 = a4;
  if (!a4)
  {
    return 0;
  }

  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  if (v16 >= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v16;
  }

  if (v17 >= a6)
  {
    v19 = a6;
  }

  else
  {
    v19 = v17;
  }

  if (v18)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20 || v16 == v17 && v18 < v19)
  {
    return 4294967246;
  }

  if (!*(a1 + 8))
  {
    return 4294956429;
  }

  if (*(a1 + 44) == 1)
  {
    if (caulk::pooled_semaphore_mutex::try_lock((*(a1 + 160) + 24)))
    {
      *(a1 + 152) = *(a1 + 160);
    }

    *(a1 + 44) = 0;
  }

  if (*(a1 + 16))
  {
    v24 = 0;
    do
    {
      *(*(a1 + 432) + 8 * v24) = *(a2 + 8 * v24);
      ++v24;
    }

    while (v18 != v24);
    v25 = 0;
    do
    {
      *(*(a1 + 408) + 8 * v25) = *(a3 + 8 * v25);
      ++v25;
    }

    while (v19 != v25);
    v26 = *(a1 + 36);
    while (1)
    {
      v27 = *(a1 + 12);
      v28 = v27 >= v26;
      v29 = v27 - v26;
      if (v29 == 0 || !v28)
      {
        break;
      }

      v30 = 0;
      v31 = 0;
      if (v29 >= v14)
      {
        v32 = v14;
      }

      else
      {
        v32 = v29;
      }

      do
      {
        memcpy((*(*(a1 + 312) + v30) + 4 * *(a1 + 36)), *(*(a1 + 432) + 8 * v31++), 4 * v32);
        v30 += 24;
      }

      while (v18 != v31);
      if (*(a1 + 20))
      {
        (*(*a1 + 104))(a1, *(a1 + 432), *(a1 + 408), v32, v18, v19);
        v33 = 0;
        v34 = 0;
        do
        {
          MEMORY[0x29C2603D0](*(*(a1 + 408) + 8 * v34), 1, *(*(a1 + 360) + v33) + 4 * *(a1 + 36), 1, *(*(a1 + 408) + 8 * v34), 1, v32);
          ++v34;
          v33 += 24;
        }

        while (v19 != v34);
      }

      else
      {
        v39 = 0;
        v40 = 0;
        do
        {
          memcpy(*(*(a1 + 408) + 8 * v40++), (*(*(a1 + 360) + v39) + 4 * *(a1 + 36)), 4 * v32);
          v39 += 24;
        }

        while (v19 != v40);
      }

      v41 = 0;
      LODWORD(v14) = v14 - v32;
      do
      {
        *(*(a1 + 432) + 8 * v41++) += 4 * v32;
      }

      while (v18 != v41);
      v42 = 0;
      do
      {
        *(*(a1 + 408) + 8 * v42++) += 4 * v32;
      }

      while (v19 != v42);
      v26 = *(a1 + 36) + v32;
LABEL_87:
      result = 0;
      *(a1 + 36) = v26;
      if (!v14)
      {
        return result;
      }
    }

    if (*(a1 + 47) == 1)
    {
      v35 = *(a1 + 160);
      if (v35 != *(a1 + 152) && !*(a1 + 40) && caulk::pooled_semaphore_mutex::try_lock((v35 + 24)))
      {
        v36 = *(a1 + 152);
        v37 = *(a1 + 160);
        if (v37 == v36)
        {
          v43 = (v35 + 24);
        }

        else
        {
          *(a1 + 144) = v36;
          *(a1 + 152) = v37;
          v38 = *(a1 + 32);
          if (v38)
          {
            *(a1 + 40) = v38 - 1;
            goto LABEL_55;
          }

          v43 = (v36 + 24);
        }

        caulk::pooled_semaphore_mutex::_unlock(v43);
      }
    }

LABEL_55:
    v44 = 0;
    v45 = 0;
    do
    {
      (*(*a1 + 72))(a1, v45++, *(*(a1 + 312) + v44));
      v44 += 24;
    }

    while (v18 != v45);
    v46 = *(a1 + 40);
    if (v46)
    {
      v47 = *(a1 + 12);
      if (v47 >= v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = v47;
      }

      if (*(a1 + 46) == 1)
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        do
        {
          if (v18 == 1)
          {
            v52 = 0;
          }

          else
          {
            v52 = v51;
          }

          (*(*a1 + 80))(a1, v52, **(a1 + 144) + v50);
          (*(*a1 + 112))(a1, a1 + 264, a1 + 280, *(a1 + 12), -0.5);
          (*(*a1 + 80))(a1, v52, **(a1 + 152) + v50);
          (*(*a1 + 112))(a1, a1 + 264, a1 + 296, *(a1 + 12), 0.5);
          vDSP_zvadd((a1 + 280), 1, (a1 + 296), 1, (a1 + 264), 1, *(a1 + 12));
          (*(*a1 + 88))(a1, *(*(a1 + 360) + v49));
          ++v51;
          v50 += 40;
          v49 += 24;
        }

        while (v19 != v51);
      }

      else
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = *(a1 + 32);
        v61 = -1.0 / v60;
        v62 = v46 / v60;
        v63 = -(-1.0 / v60);
        do
        {
          if (v18 == 1)
          {
            v64 = 0;
          }

          else
          {
            v64 = v59;
          }

          (*(*a1 + 80))(a1, v64, **(a1 + 144) + v58);
          (*(*a1 + 88))(a1, *(a1 + 384));
          (*(*a1 + 80))(a1, v64, **(a1 + 152) + v58);
          (*(*a1 + 88))(a1, *(*(a1 + 360) + v57));
          v65 = *(*(a1 + 360) + v57);
          __Step = v63;
          __Start = 1.0 - v62;
          vDSP_vrampmul(v65, 1, &__Start, &__Step, v65, 1, v48);
          v66 = *(a1 + 384);
          v67 = *(*(a1 + 360) + v57);
          __Step = v61;
          __Start = v62;
          vDSP_vrampmuladd(v66, 1, &__Start, &__Step, v67, 1, v48);
          ++v59;
          v58 += 40;
          v57 += 24;
        }

        while (v19 != v59);
      }

      if (!*(a1 + 20))
      {
        v68 = *(a1 + 40) - v48;
        *(a1 + 40) = v68;
        if (!v68)
        {
          caulk::pooled_semaphore_mutex::_unlock((*(a1 + 144) + 24));
        }
      }
    }

    else
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      do
      {
        if (v18 == 1)
        {
          v56 = 0;
        }

        else
        {
          v56 = v55;
        }

        (*(*a1 + 80))(a1, v56, **(a1 + 152) + v54);
        (*(*a1 + 88))(a1, *(*(a1 + 360) + v53));
        ++v55;
        v54 += 40;
        v53 += 24;
      }

      while (v19 != v55);
    }

    v69 = *(a1 + 232);
    if (!v69)
    {
      v69 = *(a1 + 16);
    }

    v70 = 0;
    v71 = 0;
    v72 = (v69 - 1);
    do
    {
      (*(*a1 + 96))(a1, v71++, v72, *(*(a1 + 312) + v70));
      v70 += 24;
    }

    while (v18 != v71);
    v26 = 0;
    *(a1 + 232) = v72;
    goto LABEL_87;
  }

  if (*(a1 + 47) == 1)
  {
    v73 = *(a1 + 160);
    if (v73 != *(a1 + 152) && !*(a1 + 40) && caulk::pooled_semaphore_mutex::try_lock((v73 + 24)))
    {
      v74 = *(a1 + 152);
      v75 = *(a1 + 160);
      if (v75 == v74)
      {
        v77 = (v73 + 24);
      }

      else
      {
        *(a1 + 144) = v74;
        *(a1 + 152) = v75;
        v76 = *(a1 + 32);
        if (v76)
        {
          *(a1 + 40) = v76 - 1;
          goto LABEL_100;
        }

        v77 = (v74 + 24);
      }

      caulk::pooled_semaphore_mutex::_unlock(v77);
    }
  }

LABEL_100:
  (*(*a1 + 104))(a1, a2, a3, v14, v18, v19);
  return 0;
}

uint64_t IR::FFTFilter<float>::Implementation::forwardTransform(uint64_t a1, unsigned int a2, DSPComplex *__C)
{
  v4 = (*(*(a1 + 208) + 24 * a2) + 16 * *(a1 + 232));
  v5 = *(a1 + 12) >> 1;
  v6 = &v4->imagp[v5];
  v8.realp = &v4->realp[v5];
  v8.imagp = v6;
  vDSP_ctoz(__C, 2, &v8, 1, v5);
  return MultiRadixRealFFT::RealInPlaceTransform((a1 + 168), v4, 1, 1.0);
}

void IR::FFTFilter<float>::Implementation::inverseTransform(uint64_t a1, DSPComplex *a2)
{
  MultiRadixRealFFT::RealInPlaceTransform((a1 + 168), (a1 + 264), -1, 1.0);
  v4 = *(a1 + 12) >> 1;
  v5 = (*(a1 + 272) + 4 * v4);
  v6.realp = (*(a1 + 264) + 4 * v4);
  v6.imagp = v5;
  vDSP_ztoc(&v6, 1, a2, 2, v4);
}

_DWORD *IR::FFTFilter<float>::Implementation::firFilterTimeDomain(_DWORD *result, const void **a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v7 = result[6];
  v6 = result[7];
  if (v6 >= a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = v6;
  }

  if (v7 >= a6)
  {
    v9 = a6;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && (v6 != v7 || v8 >= v9))
  {
    LODWORD(v12) = a4;
    v15 = result;
    v16 = 0;
    v17 = a4;
    v18 = 4 * a4;
    do
    {
      v19 = *a2++;
      memcpy((*(*(v15 + 42) + v16) + 4 * v15[5] - 4), v19, v18);
      v16 += 24;
    }

    while (24 * v8 != v16);
    v20 = 0;
    v21 = 24;
    do
    {
      v22 = (**(v15 + 19) + v21);
      v23 = v15[5];
      if (*v22 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = *v22;
      }

      if (v8 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20;
      }

      vDSP_conv((*(*(v15 + 42) + 24 * v25) + 4 * (v23 - v24)), 1, (*(v22 - 3) + 4 * v24 - 4), -1, *(a3 + 8 * v20++), 1, v17, v24);
      v21 += 40;
    }

    while (v9 != v20);
    v26 = v15[10];
    if (v26)
    {
      v27 = 0;
      v28 = v15[8];
      v29 = -1.0 / v28;
      v30 = v26 / v28;
      v31 = -(-1.0 / v28);
      if (v26 >= v12)
      {
        v12 = v12;
      }

      else
      {
        v12 = v26;
      }

      v32 = 24;
      do
      {
        v33 = (**(v15 + 18) + v32);
        v34 = v15[5];
        if (*v33 >= v34)
        {
          v35 = v34;
        }

        else
        {
          v35 = *v33;
        }

        if (v8 == 1)
        {
          v36 = 0;
        }

        else
        {
          v36 = v27;
        }

        vDSP_conv((*(*(v15 + 42) + 24 * v36) + 4 * (v34 - v35)), 1, (*(v33 - 3) + 4 * v35 - 4), -1, *(v15 + 48), 1, v12, v35);
        v37 = *(a3 + 8 * v27);
        __Step = v31;
        __Start = 1.0 - v30;
        vDSP_vrampmul(v37, 1, &__Start, &__Step, v37, 1, v12);
        v38 = *(v15 + 48);
        v39 = *(a3 + 8 * v27);
        __Step = v29;
        __Start = v30;
        vDSP_vrampmuladd(v38, 1, &__Start, &__Step, v39, 1, v12);
        ++v27;
        v32 += 40;
      }

      while (v9 != v27);
      v40 = v15[10] - v12;
      v15[10] = v40;
      if (!v40)
      {
        caulk::pooled_semaphore_mutex::_unlock((*(v15 + 18) + 24));
      }
    }

    v41 = 0;
    do
    {
      result = memmove(*(*(v15 + 42) + v41), (*(*(v15 + 42) + v41) + 4 * v17), 4 * (v15[5] - 1));
      v41 += 24;
      --v8;
    }

    while (v8);
  }

  return result;
}

float IR::FFTFilter<float>::Implementation::threePointConv(float a1, uint64_t a2, float **a3, float **a4, int a5)
{
  v9 = a1 * 0.5;
  v10 = *a3;
  v11 = *a4;
  v12 = (a5 - 1);
  v22 = a1 * 0.5;
  v21 = 1056964608;
  MEMORY[0x29C260520](v10, 1, &v22, v10 + 1, 1, &v21, v11 + 1, 1, v12);
  v13 = *a3 + 1;
  v14 = *a4;
  *v14 = (v9 * *v13) + (**a3 * 0.5);
  v22 = v9;
  MEMORY[0x29C260500](v13, 1, &v22, v14, 1, v14, 1, v12);
  v15 = a3[1];
  (*a4)[v12] = (*a4)[v12] + (v9 * *v15);
  v16 = a4[1];
  v17 = (a5 - 2);
  v22 = v9;
  v21 = 1056964608;
  MEMORY[0x29C260520](v15 + 1, 1, &v22, v15 + 2, 1, &v21, v16 + 2, 1, v17);
  v18 = a3[1];
  v19 = a4[1];
  v19[1] = v18[1] * 0.5;
  v22 = v9;
  MEMORY[0x29C260500](v18 + 2, 1, &v22, v19 + 1, 1, v19 + 1, 1, v17);
  result = ((*a3)[v12] * a1) + (*a3[1] * 0.5);
  *a4[1] = result;
  return result;
}

void *IR::FFTFilter<float>::FFTFilter(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2A1DECE88;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2A1DECE88;
  result[1] = v2;
  return result;
}

void IR::FFTFilter<float>::FFTFilter()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

void sub_296BE9794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v13 + 48);
  std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (v12)
  {
    v15 = (v13 + 16);
    v16 = -v12;
    do
    {
      a10 = v15;
      std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
      v15 -= 4;
      v16 += 32;
    }

    while (v16);
  }

  MEMORY[0x29C25FC20](v10, v11);
  _Unwind_Resume(a1);
}

void sub_296BE992C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v13 + 48);
  std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (v12)
  {
    v15 = (v13 + 16);
    v16 = -v12;
    do
    {
      a10 = v15;
      std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
      v15 -= 4;
      v16 += 32;
    }

    while (v16);
  }

  MEMORY[0x29C25FC20](v10, v11);
  _Unwind_Resume(a1);
}

void *IR::FFTFilter<float>::~FFTFilter(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1DECE88;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

{
  v2 = a1[1];
  *a1 = &unk_2A1DECE88;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void IR::FFTFilter<float>::~FFTFilter(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1DECE88;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x29C25FC20);
}

uint64_t IR::FFTFilter<float>::initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 8);
  if (!v7)
  {
    return 4294956429;
  }

  v9 = 1;
  return (*(*v7 + 16))(v7, a2, a3, a4, a5, a6, a7, 0, v9);
}

uint64_t IR::FFTFilter<float>::initialize(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 16))(v1);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t IR::FFTFilter<float>::initializeAndSetFilterKernels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    return (*(*v4 + 24))(v4, a2, a3, a4, 0, 1, 0);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t IR::FFTFilter<float>::initializeAndSetFilterKernels(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 24))();
  }

  else
  {
    return 4294956429;
  }
}

uint64_t IR::FFTFilter<float>::uninitialize(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t IR::FFTFilter<float>::reset(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t IR::FFTFilter<float>::getScratchKernels(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return IR::FFTFilter<float>::Implementation::getScratchKernels(result);
  }

  return result;
}

uint64_t IR::FFTFilter<float>::setFilterKernels(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return IR::FFTFilter<float>::Implementation::setFilterKernels(v2, a2);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t IR::FFTFilter<float>::setFilterCoeffs(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    return IR::FFTFilter<float>::Implementation::setFilterCoeffs(v3, a2, a3);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t IR::FFTFilter<float>::getNumActiveSubFilters(uint64_t a1)
{
  if (*(a1 + 8))
  {
    IR::FFTFilterKernel<float>::getNumActiveFFTSubFilters();
  }

  return 0;
}

uint64_t IR::FFTFilter<float>::process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    return (*(*v5 + 48))(v5, a2, a3, a4, a5, 0);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t IR::FFTFilter<float>::process(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 48))();
  }

  else
  {
    return 4294956429;
  }
}

uint64_t IR::FFTFilter<float>::processMultipleInputs(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 56))();
  }

  else
  {
    return 4294956429;
  }
}

uint64_t IR::FFTFilter<float>::getFIRFilterLength(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 20);
  }

  else
  {
    return 0;
  }
}

uint64_t IR::FFTFilter<float>::getPartitionLength(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 12);
  }

  else
  {
    return 0;
  }
}

uint64_t IR::FFTFilter<float>::getConfigParams@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t _ZN2IR9FFTFilterIDF16_E14ImplementationD2Ev(uint64_t a1)
{
  *a1 = &unk_2A1DECEB0;
  v2 = *(a1 + 480);
  if (v2)
  {
    *(a1 + 488) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 456);
  if (v3)
  {
    *(a1 + 464) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 432);
  if (v4)
  {
    *(a1 + 440) = v4;
    operator delete(v4);
  }

  v12 = (a1 + 408);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 384);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 360);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v5 = *(a1 + 288);
  if (v5)
  {
    *(a1 + 296) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 264);
  if (v6)
  {
    *(a1 + 272) = v6;
    operator delete(v6);
  }

  v12 = (a1 + 232);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(a1 + 208);
  if (v7)
  {
    *(a1 + 216) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 184);
  if (v8)
  {
    *(a1 + 192) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 176);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  for (i = 112; i != 16; i -= 32)
  {
    v12 = (a1 + i);
    _ZNSt3__16vectorIN2IR15FFTFilterKernelIDF16_EENS_9allocatorIS3_EEE16__destroy_vectorclB8ne200100Ev(&v12);
  }

  return a1;
}

void _ZN2IR9FFTFilterIDF16_E14ImplementationD0Ev(uint64_t a1)
{
  _ZN2IR9FFTFilterIDF16_E14ImplementationD2Ev(a1);

  JUMPOUT(0x29C25FC20);
}

uint64_t _ZN2IR9FFTFilterIDF16_E14Implementation10initializeEjjjbjjbbb(uint64_t a1, int a2, int a3, unsigned int a4, int a5, unsigned int a6, int a7, int a8, char a9, char a10)
{
  if (*(a1 + 45) == 1)
  {
    (*(*a1 + 32))(a1);
  }

  if (!a2)
  {
    (*(*a1 + 40))(a1);
    return 4294967246;
  }

  if (a10)
  {
    v18 = a4;
  }

  else
  {
    v18 = 1;
  }

  *(a1 + 24) = a4;
  *(a1 + 28) = v18;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 32) = a7;
  *(a1 + 46) = a8;
  if (a8)
  {
    *(a1 + 32) = a3;
  }

  std::vector<std::vector<float>>::resize((a1 + 384), v18);
  v19 = *(a1 + 12);
  if (!v19)
  {
    v20 = *(a1 + 8);
LABEL_21:
    *(a1 + 16) = 0;
    *(a1 + 20) = v20;
    *(a1 + 12) = 0;
    if (*(a1 + 28))
    {
      v26 = 0;
      v27 = 0;
      do
      {
        std::vector<short>::resize((*(a1 + 384) + v26), a6 - 1 + *(a1 + 8));
        ++v27;
        v26 += 24;
      }

      while (v27 < *(a1 + 28));
    }

    std::vector<short>::resize((a1 + 432), a6);
    goto LABEL_46;
  }

  if (a5)
  {
    v20 = *(a1 + 8);
    if (v20 <= v19)
    {
      goto LABEL_21;
    }
  }

  v21 = MultiRadixRealFFT::Size((a1 + 168));
  v22 = *(a1 + 12);
  if (v21 != 2 * v22)
  {
    result = MultiRadixRealFFT::Initialize((a1 + 168), 2 * v22);
    if (result)
    {
      return result;
    }
  }

  if (a5)
  {
    *(a1 + 20) = *(a1 + 12);
    if (*(a1 + 28))
    {
      v24 = 0;
      v25 = 0;
      do
      {
        std::vector<short>::resize((*(a1 + 384) + v24), (2 * *(a1 + 12) - 1));
        ++v25;
        v24 += 24;
      }

      while (v25 < *(a1 + 28));
    }
  }

  else
  {
    *(a1 + 20) = 0;
  }

  std::vector<short>::resize((a1 + 432), *(a1 + 12));
  v28 = *(a1 + 12);
  v29 = *(a1 + 8) - *(a1 + 20);
  if (v29 / v28 * v28 >= v29)
  {
    v30 = v29 / v28;
  }

  else
  {
    v30 = v29 / v28 + 1;
  }

  *(a1 + 16) = v30;
  std::vector<std::vector<float>>::resize((a1 + 360), *(a1 + 28));
  if (*(a1 + 28))
  {
    v31 = 0;
    v32 = 0;
    do
    {
      std::vector<short>::resize((*(a1 + 360) + v31), *(a1 + 12));
      ++v32;
      v31 += 24;
    }

    while (v32 < *(a1 + 28));
  }

  std::vector<std::vector<float>>::resize((a1 + 408), *(a1 + 24));
  if (*(a1 + 24))
  {
    v33 = 0;
    v34 = 0;
    do
    {
      std::vector<short>::resize((*(a1 + 408) + v33), *(a1 + 12));
      ++v34;
      v33 += 24;
    }

    while (v34 < *(a1 + 24));
  }

  std::vector<short>::resize((a1 + 184), (2 * *(a1 + 16) * *(a1 + 12) * *(a1 + 28)));
  std::vector<float>::resize((a1 + 208), (2 * *(a1 + 12)));
  std::vector<std::vector<DSPSplitComplex>>::resize((a1 + 232), *(a1 + 28));
  if (*(a1 + 28))
  {
    v35 = 0;
    v36 = 0;
    v37 = *(a1 + 232);
    do
    {
      std::vector<DSPSplitComplex>::resize((v37 + 24 * v35), *(a1 + 16));
      v37 = *(a1 + 232);
      v38 = v37 + 24 * v35;
      v39 = *v38;
      v40 = *(v38 + 8);
      if (v39 != v40)
      {
        v41 = *(a1 + 184);
        v42 = *(a1 + 12);
        do
        {
          *v39 = v41 + 2 * v36;
          v39[1] = v41 + 2 * (v42 + v36);
          v39 += 2;
          v36 += 2 * v42;
        }

        while (v39 != v40);
      }

      ++v35;
    }

    while (v35 < *(a1 + 28));
  }

  v43 = *(a1 + 12);
  if (*(a1 + 46))
  {
    std::vector<short>::resize((a1 + 264), (6 * v43));
    v44 = 3 * *(a1 + 12);
  }

  else
  {
    std::vector<short>::resize((a1 + 264), (2 * v43));
    v44 = *(a1 + 12);
  }

  std::vector<float>::resize((a1 + 288), (2 * v44));
  v45 = *(a1 + 264);
  v46 = *(a1 + 12);
  *(a1 + 312) = v45;
  *(a1 + 320) = v45 + 2 * v46;
  if (*(a1 + 46) == 1)
  {
    *(a1 + 328) = v45 + 2 * (2 * v46);
    *(a1 + 336) = v45 + 2 * (3 * v46);
    *(a1 + 344) = v45 + 2 * (4 * v46);
    *(a1 + 352) = v45 + 2 * (5 * v46);
  }

LABEL_46:
  *(a1 + 47) = a9;
  v47 = a1 + 48;
  if (a9)
  {
    for (i = 0; i != 3; ++i)
    {
      v49 = (v47 + 32 * i);
      caulk::pooled_semaphore_mutex::_lock((v49 + 3));
      _ZNSt3__16vectorIN2IR15FFTFilterKernelIDF16_EENS_9allocatorIS3_EEE6resizeEm(v49, a4);
      if (a4)
      {
        j___ZN2IR15FFTFilterKernelIDF16_E10initializeEjjb();
      }

      caulk::pooled_semaphore_mutex::_unlock((v49 + 3));
    }
  }

  else
  {
    caulk::pooled_semaphore_mutex::_lock((a1 + 72));
    _ZNSt3__16vectorIN2IR15FFTFilterKernelIDF16_EENS_9allocatorIS3_EEE6resizeEm((a1 + 48), a4);
    if (a4)
    {
      j___ZN2IR15FFTFilterKernelIDF16_E10initializeEjjb();
    }

    caulk::pooled_semaphore_mutex::_unlock((a1 + 72));
  }

  *(a1 + 152) = v47;
  *(a1 + 160) = v47;
  if (*(a1 + 47))
  {
    v50 = a1 + 80;
  }

  else
  {
    v50 = a1 + 48;
  }

  *(a1 + 144) = v50;
  v52 = 0;
  std::vector<float *>::assign((a1 + 456), 0, &v52);
  v51 = *(a1 + 28);
  v52 = 0;
  std::vector<float *>::assign((a1 + 480), v51, &v52);
  (*(*a1 + 40))(a1);
  result = 0;
  *(a1 + 45) = 1;
  return result;
}

void *_ZNSt3__16vectorIN2IR15FFTFilterKernelIDF16_EENS_9allocatorIS3_EEE6resizeEm(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return _ZNSt3__16vectorIN2IR15FFTFilterKernelIDF16_EENS_9allocatorIS3_EEE8__appendEm(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    if (result != v7)
    {
      j___ZN2IR15FFTFilterKernelIDF16_ED2Ev();
    }

    a1[1] = v7;
  }

  return result;
}

uint64_t _ZN2IR9FFTFilterIDF16_E14Implementation29initializeAndSetFilterKernelsEPKNSt3__16vectorINS_15FFTFilterKernelIDF16_EENS3_9allocatorIS6_EEEEjjbbb(uint64_t a1, void *a2)
{
  if (a2[1] != *a2)
  {
    j___ZNK2IR15FFTFilterKernelIDF16_E18getMaxFilterLengthEv();
  }

  return 4294956418;
}

uint64_t _ZN2IR9FFTFilterIDF16_E14Implementation16setFilterKernelsEPKNSt3__16vectorINS_15FFTFilterKernelIDF16_EENS3_9allocatorIS6_EEEE(uint64_t a1, void *a2)
{
  if (*(a1 + 45) != 1)
  {
    return 4294956429;
  }

  v4 = (a1 + 48);
  v5 = 3;
  v6 = (a1 + 48);
  do
  {
    if (v6 == a2)
    {
      v9 = 0;
      goto LABEL_19;
    }

    v6 += 4;
    --v5;
  }

  while (v5);
  if ((caulk::pooled_semaphore_mutex::try_lock((*(a1 + 144) + 24)) & 1) != 0 || *(a1 + 47) != 1)
  {
LABEL_11:
    v6 = *(a1 + 144);
  }

  else
  {
    v7 = 3;
    while ((caulk::pooled_semaphore_mutex::try_lock((v4 + 3)) & 1) == 0)
    {
      v4 += 4;
      if (!--v7)
      {
        caulk::pooled_semaphore_mutex::_lock((*(a1 + 144) + 24));
        goto LABEL_11;
      }
    }

    v6 = v4;
  }

  v8 = v6[1];
  if (a2[1] - *a2 == v8 - *v6)
  {
    j___ZNK2IR15FFTFilterKernelIDF16_E25getNumActiveFFTSubFiltersEv();
  }

  if (v8 != *v6)
  {
    j___ZN2IR15FFTFilterKernelIDF16_E5resetEv();
  }

  v9 = 4294956418;
LABEL_19:
  *(a1 + 160) = v6;
  caulk::pooled_semaphore_mutex::_unlock((v6 + 3));
  return v9;
}

void _ZN2IR9FFTFilterIDF16_E14Implementation12uninitializeEv(uint64_t a1)
{
  v2 = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = a1 + 48;
  *(a1 + 44) = 1;
  do
  {
    v4 = (v3 + 32 * v2);
    if (v4[1] != *v4)
    {
      j___ZN2IR15FFTFilterKernelIDF16_ED2Ev();
    }

    v4[1] = *v4;
    caulk::pooled_semaphore_mutex::try_lock((v4 + 3));
    caulk::pooled_semaphore_mutex::_unlock((v4 + 3));
    ++v2;
  }

  while (v2 != 3);
  *(a1 + 192) = *(a1 + 184);
  std::vector<std::vector<float>>::clear[abi:ne200100]((a1 + 232));
  *(a1 + 256) = 0;
  *(a1 + 272) = *(a1 + 264);
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  std::vector<std::vector<float>>::clear[abi:ne200100]((a1 + 360));
  std::vector<std::vector<float>>::clear[abi:ne200100]((a1 + 384));
  std::vector<std::vector<float>>::clear[abi:ne200100]((a1 + 408));
  *(a1 + 440) = *(a1 + 432);
  *(a1 + 464) = *(a1 + 456);
}

uint64_t _ZN2IR9FFTFilterIDF16_E14Implementation5resetEv(uint64_t a1)
{
  vDSP_vclr_fp16(*(a1 + 184), 1, (*(a1 + 192) - *(a1 + 184)) >> 1);
  vDSP_vclr_fp16(*(a1 + 264), 1, (*(a1 + 272) - *(a1 + 264)) >> 1);
  vDSP_vclr(*(a1 + 208), 1, (*(a1 + 216) - *(a1 + 208)) >> 2);
  vDSP_vclr(*(a1 + 288), 1, (*(a1 + 296) - *(a1 + 288)) >> 2);
  *(a1 + 256) = 0;
  if (*(a1 + 28))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 360);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 368) - v4) >> 3) > v3)
      {
        vDSP_vclr_fp16(*(v4 + v2), 1, (*(v4 + v2 + 8) - *(v4 + v2)) >> 1);
      }

      vDSP_vclr_fp16(*(*(a1 + 384) + v2), 1, (*(*(a1 + 384) + v2 + 8) - *(*(a1 + 384) + v2)) >> 1);
      ++v3;
      v2 += 24;
    }

    while (v3 < *(a1 + 28));
  }

  v5 = *(a1 + 408);
  v6 = *(a1 + 416);
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = *(v5 + 8);
    v5 += 24;
    vDSP_vclr_fp16(v7, 1, (v8 - v7) >> 1);
  }

  v9 = (a1 + 72);
  v10 = 3;
  do
  {
    caulk::pooled_semaphore_mutex::try_lock(v9);
    result = caulk::pooled_semaphore_mutex::_unlock(v9);
    v9 = (v9 + 32);
    --v10;
  }

  while (v10);
  *(a1 + 152) = *(a1 + 160);
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  return result;
}

uint64_t _ZN2IR9FFTFilterIDF16_E14Implementation15setFilterCoeffsEPKPKDF16_jj(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 45) != 1)
  {
    return 4294956429;
  }

  if ((caulk::pooled_semaphore_mutex::try_lock((*(a1 + 144) + 24)) & 1) != 0 || *(a1 + 47) != 1)
  {
LABEL_8:
    v5 = *(a1 + 144);
  }

  else
  {
    v5 = (a1 + 48);
    v6 = 3;
    while ((caulk::pooled_semaphore_mutex::try_lock((v5 + 3)) & 1) == 0)
    {
      v5 += 4;
      if (!--v6)
      {
        caulk::pooled_semaphore_mutex::_lock((*(a1 + 144) + 24));
        goto LABEL_8;
      }
    }
  }

  if (a3 && 0xCCCCCCCCCCCCCCCDLL * ((v5[1] - *v5) >> 3))
  {
    j___ZN2IR15FFTFilterKernelIDF16_E11storeCoeffsEPKDF16_jP17MultiRadixRealFFT();
  }

  v7 = 0;
  *(a1 + 160) = v5;
  caulk::pooled_semaphore_mutex::_unlock((v5 + 3));
  return v7;
}

uint64_t _ZN2IR9FFTFilterIDF16_E14Implementation7processEPKDF16_PKPDF16_jjPNS_21ComplexDataCircBufferE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v7[0] = a2;
  return (*(*a1 + 56))(a1, v7, a3, a4, 1, a5, a6);
}

uint64_t _ZN2IR9FFTFilterIDF16_E14Implementation21processMultipleInputsEPKPDF16_S5_jjjPNS_21ComplexDataCircBufferE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (*(a1 + 45) != 1)
  {
    return 4294956429;
  }

  v86 = v13;
  v87 = v12;
  v88 = v11;
  v89 = v10;
  v90 = v9;
  v91 = v8;
  v92 = v6;
  v93 = v7;
  v14 = a4;
  if (!a4)
  {
    return 0;
  }

  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  if (v16 >= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v16;
  }

  if (v17 >= a6)
  {
    v19 = a6;
  }

  else
  {
    v19 = v17;
  }

  if (v18)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20 || v16 == v17 && v18 < v19)
  {
    return 4294967246;
  }

  if (!*(a1 + 8))
  {
    return 4294956429;
  }

  if (*(a1 + 44) == 1)
  {
    if (caulk::pooled_semaphore_mutex::try_lock((*(a1 + 160) + 24)))
    {
      *(a1 + 152) = *(a1 + 160);
    }

    *(a1 + 44) = 0;
  }

  if (*(a1 + 16))
  {
    v24 = 0;
    do
    {
      *(*(a1 + 480) + 8 * v24) = *(a2 + 8 * v24);
      ++v24;
    }

    while (v18 != v24);
    v25 = 0;
    do
    {
      *(*(a1 + 456) + 8 * v25) = *(a3 + 8 * v25);
      ++v25;
    }

    while (v19 != v25);
    v26 = *(a1 + 36);
    LOWORD(v27) = COERCE_UNSIGNED_INT(-1.0);
    while (1)
    {
      v28 = *(a1 + 12);
      v29 = v28 >= v26;
      v30 = v28 - v26;
      if (v30 == 0 || !v29)
      {
        break;
      }

      v31 = 0;
      v32 = 0;
      if (v30 >= v14)
      {
        v33 = v14;
      }

      else
      {
        v33 = v30;
      }

      do
      {
        memcpy((*(*(a1 + 360) + v31) + 2 * *(a1 + 36)), *(*(a1 + 480) + 8 * v32++), 2 * v33);
        v31 += 24;
      }

      while (v18 != v32);
      if (*(a1 + 20))
      {
        (*(*a1 + 104))(a1, *(a1 + 480), *(a1 + 456), v33, v18, v19);
        v34 = 0;
        v35 = 0;
        do
        {
          vDSP_vadd_fp16(*(*(a1 + 456) + 8 * v35), 1, (*(*(a1 + 408) + v34) + 2 * *(a1 + 36)), 1, *(*(a1 + 456) + 8 * v35), 1, v33);
          ++v35;
          v34 += 24;
        }

        while (v19 != v35);
      }

      else
      {
        v40 = 0;
        v41 = 0;
        do
        {
          memcpy(*(*(a1 + 456) + 8 * v41++), (*(*(a1 + 408) + v40) + 2 * *(a1 + 36)), 2 * v33);
          v40 += 24;
        }

        while (v19 != v41);
      }

      v42 = 0;
      LODWORD(v14) = v14 - v33;
      do
      {
        *(*(a1 + 480) + 8 * v42++) += 2 * v33;
      }

      while (v18 != v42);
      v43 = 0;
      do
      {
        *(*(a1 + 456) + 8 * v43++) += 2 * v33;
      }

      while (v19 != v43);
      v26 = *(a1 + 36) + v33;
LABEL_87:
      result = 0;
      *(a1 + 36) = v26;
      if (!v14)
      {
        return result;
      }
    }

    if (*(a1 + 47) == 1)
    {
      v36 = *(a1 + 160);
      if (v36 != *(a1 + 152) && !*(a1 + 40) && caulk::pooled_semaphore_mutex::try_lock((v36 + 24)))
      {
        v37 = *(a1 + 152);
        v38 = *(a1 + 160);
        if (v38 == v37)
        {
          v44 = (v36 + 24);
        }

        else
        {
          *(a1 + 144) = v37;
          *(a1 + 152) = v38;
          v39 = *(a1 + 32);
          if (v39)
          {
            *(a1 + 40) = v39 - 1;
            goto LABEL_55;
          }

          v44 = (v37 + 24);
        }

        caulk::pooled_semaphore_mutex::_unlock(v44);
      }
    }

LABEL_55:
    v45 = 0;
    v46 = 0;
    do
    {
      (*(*a1 + 72))(a1, v46++, *(*(a1 + 360) + v45));
      v45 += 24;
    }

    while (v18 != v46);
    v47 = *(a1 + 40);
    if (v47)
    {
      v48 = *(a1 + 12);
      if (v48 >= v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = v48;
      }

      if (*(a1 + 46) == 1)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        do
        {
          if (v18 == 1)
          {
            v53 = 0;
          }

          else
          {
            v53 = v52;
          }

          (*(*a1 + 80))(a1, v53, **(a1 + 144) + v51);
          LOWORD(v54) = COERCE_UNSIGNED_INT(-0.5);
          (*(*a1 + 112))(a1, a1 + 312, a1 + 328, *(a1 + 12), v54);
          (*(*a1 + 80))(a1, v53, **(a1 + 152) + v51);
          LOWORD(v55) = COERCE_UNSIGNED_INT(0.5);
          (*(*a1 + 112))(a1, a1 + 312, a1 + 344, *(a1 + 12), v55);
          v56 = vDSP_zvadd_fp16((a1 + 328), 1, (a1 + 344), 1, (a1 + 312), 1, *(a1 + 12));
          (*(*a1 + 88))(a1, *(*(a1 + 408) + v50), v56);
          ++v52;
          v51 += 40;
          v50 += 24;
        }

        while (v19 != v52);
      }

      else
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = *(a1 + 32);
        v65 = v27 / v64;
        v66 = v47 / v64;
        v67 = -(v27 / v64);
        do
        {
          if (v18 == 1)
          {
            v68 = 0;
          }

          else
          {
            v68 = v63;
          }

          (*(*a1 + 80))(a1, v68, **(a1 + 144) + v62);
          (*(*a1 + 88))(a1, *(a1 + 432));
          (*(*a1 + 80))(a1, v68, **(a1 + 152) + v62);
          (*(*a1 + 88))(a1, *(*(a1 + 408) + v61));
          v69 = *(*(a1 + 408) + v61);
          v83 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) - v66;
          v82 = v67;
          vDSP_vrampmul_fp16(v69, 1, &v83, &v82, v69, 1, v49);
          v70 = *(a1 + 432);
          v71 = *(*(a1 + 408) + v61);
          v85 = v66;
          v84 = v65;
          vDSP_vrampmuladd_fp16(v70, 1, &v85, &v84, v71, 1, v49);
          ++v63;
          v62 += 40;
          v61 += 24;
        }

        while (v19 != v63);
      }

      if (!*(a1 + 20))
      {
        v72 = *(a1 + 40) - v49;
        *(a1 + 40) = v72;
        if (!v72)
        {
          caulk::pooled_semaphore_mutex::_unlock((*(a1 + 144) + 24));
        }
      }
    }

    else
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
      do
      {
        if (v18 == 1)
        {
          v60 = 0;
        }

        else
        {
          v60 = v59;
        }

        (*(*a1 + 80))(a1, v60, **(a1 + 152) + v58);
        (*(*a1 + 88))(a1, *(*(a1 + 408) + v57));
        ++v59;
        v58 += 40;
        v57 += 24;
      }

      while (v19 != v59);
    }

    v73 = *(a1 + 256);
    if (!v73)
    {
      v73 = *(a1 + 16);
    }

    v74 = 0;
    v75 = 0;
    v76 = (v73 - 1);
    do
    {
      (*(*a1 + 96))(a1, v75++, v76, *(*(a1 + 360) + v74));
      v74 += 24;
    }

    while (v18 != v75);
    v26 = 0;
    *(a1 + 256) = v76;
    goto LABEL_87;
  }

  if (*(a1 + 47) == 1)
  {
    v77 = *(a1 + 160);
    if (v77 != *(a1 + 152) && !*(a1 + 40) && caulk::pooled_semaphore_mutex::try_lock((v77 + 24)))
    {
      v78 = *(a1 + 152);
      v79 = *(a1 + 160);
      if (v79 == v78)
      {
        v81 = (v77 + 24);
      }

      else
      {
        *(a1 + 144) = v78;
        *(a1 + 152) = v79;
        v80 = *(a1 + 32);
        if (v80)
        {
          *(a1 + 40) = v80 - 1;
          goto LABEL_100;
        }

        v81 = (v78 + 24);
      }

      caulk::pooled_semaphore_mutex::_unlock(v81);
    }
  }

LABEL_100:
  (*(*a1 + 104))(a1, a2, a3, v14, v18, v19);
  return 0;
}

__n128 _ZNK2IR9FFTFilterIDF16_E14Implementation15getConfigParamsEv@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 8);
  result = *(a1 + 20);
  *(a2 + 12) = result;
  return result;
}

double _ZN2IR9FFTFilterIDF16_E14Implementation16forwardTransformEjPKDF16_(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = (*(*(a1 + 232) + 24 * a2) + 16 * *(a1 + 256));
  v5 = *(a1 + 12) >> 1;
  v6 = v4[1] + 2 * v5;
  v12[0] = *v4 + 2 * v5;
  v12[1] = v6;
  vDSP_ctoz_fp16(a3, 2, v12, 1, v5);
  v7 = *(a1 + 208);
  v8 = *(a1 + 12);
  v9 = (v7 + 4 * v8);
  v11.realp = v7;
  v11.imagp = v9;
  vDSP_vhpsp(*v4, 1, v7, 1, v8);
  vDSP_vhpsp(v4[1], 1, v9, 1, *(a1 + 12));
  MultiRadixRealFFT::RealInPlaceTransform((a1 + 168), &v11, 1, 1.0);
  vDSP_vsphp(v11.realp, 1, *v4, 1, *(a1 + 12));
  return vDSP_vsphp(v11.imagp, 1, v4[1], 1, *(a1 + 12));
}

unint64_t *_ZN2IR9FFTFilterIDF16_E14Implementation16inverseTransformEPDF16_(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 288);
  v5 = *(a1 + 12);
  v6 = (v4 + 4 * v5);
  v10.realp = v4;
  v10.imagp = v6;
  vDSP_vhpsp(*(a1 + 312), 1, v4, 1, v5);
  vDSP_vhpsp(*(a1 + 320), 1, v6, 1, *(a1 + 12));
  MultiRadixRealFFT::RealInPlaceTransform((a1 + 168), &v10, -1, 1.0);
  vDSP_vsphp(v10.realp, 1, *(a1 + 312), 1, *(a1 + 12));
  vDSP_vsphp(v10.imagp, 1, *(a1 + 320), 1, *(a1 + 12));
  v7 = *(a1 + 12) >> 1;
  v8 = (*(a1 + 320) + 2 * v7);
  v10.realp = (*(a1 + 312) + 2 * v7);
  v10.imagp = v8;
  return vDSP_ztoc_fp16(&v10, 1, a2, 2, v7);
}

_DWORD *_ZN2IR9FFTFilterIDF16_E14Implementation19firFilterTimeDomainEPKPDF16_S5_jjj(_DWORD *result, const void **a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v7 = result[6];
  v6 = result[7];
  if (v6 >= a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = v6;
  }

  if (v7 >= a6)
  {
    v9 = a6;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && (v6 != v7 || v8 >= v9))
  {
    LODWORD(v12) = a4;
    v15 = result;
    v16 = 0;
    v17 = a4;
    v18 = 2 * a4;
    do
    {
      v19 = *a2++;
      memcpy((*(*(v15 + 48) + v16) + 2 * v15[5] - 2), v19, v18);
      v16 += 24;
    }

    while (24 * v8 != v16);
    v20 = 0;
    v21 = 24;
    do
    {
      v22 = (**(v15 + 19) + v21);
      v23 = v15[5];
      if (*v22 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = *v22;
      }

      if (v8 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = v20;
      }

      vDSP_conv_fp16((*(*(v15 + 48) + 24 * v25) + 2 * (v23 - v24)), 1, (*(v22 - 3) + 2 * v24 - 2), -1, *(a3 + 8 * v20++), 1, v17, v24);
      v21 += 40;
    }

    while (v9 != v20);
    v26 = v15[10];
    if (v26)
    {
      v27 = 0;
      v28 = v15[8];
      v29 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)) / v28;
      v30 = v26 / v28;
      if (v26 >= v12)
      {
        v12 = v12;
      }

      else
      {
        v12 = v26;
      }

      v31 = 24;
      do
      {
        v32 = (**(v15 + 18) + v31);
        v33 = v15[5];
        if (*v32 >= v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = *v32;
        }

        if (v8 == 1)
        {
          v35 = 0;
        }

        else
        {
          v35 = v27;
        }

        vDSP_conv_fp16((*(*(v15 + 48) + 24 * v35) + 2 * (v33 - v34)), 1, (*(v32 - 3) + 2 * v34 - 2), -1, *(v15 + 54), 1, v12, v34);
        v36 = *(a3 + 8 * v27);
        v42 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) - v30;
        v41 = -v29;
        vDSP_vrampmul_fp16(v36, 1, &v42, &v41, v36, 1, v12);
        v37 = *(v15 + 54);
        v38 = *(a3 + 8 * v27);
        v44 = v30;
        v43 = v29;
        vDSP_vrampmuladd_fp16(v37, 1, &v44, &v43, v38, 1, v12);
        ++v27;
        v31 += 40;
      }

      while (v9 != v27);
      v39 = v15[10] - v12;
      v15[10] = v39;
      if (!v39)
      {
        caulk::pooled_semaphore_mutex::_unlock((*(v15 + 18) + 24));
      }
    }

    v40 = 0;
    do
    {
      result = memmove(*(*(v15 + 48) + v40), (*(*(v15 + 48) + v40) + 2 * v17), 2 * (v15[5] - 1));
      v40 += 24;
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 _ZN2IR9FFTFilterIDF16_E14Implementation14threePointConvER19DSPFP16SplitComplexS4_jDF16_@<H0>(__n128 a1@<Q0>, uint64_t a2@<X0>, __int16 **a3@<X1>, float16x8_t **a4@<X2>, int a5@<W3>)
{
  v5 = *a1.n128_u16;
  v9 = *a3;
  v10 = *a4;
  *&v11 = *a1.n128_u16 * COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(0.5));
  v12 = (a5 - 1);
  v36 = *&v11;
  v35 = COERCE_UNSIGNED_INT(0.5);
  vDSP_vsmsma_fp16(v9, 1, &v36, (v9 + 1), 1, &v35, v10->u64 + 2, 1, v12);
  _H0 = **a3;
  __asm { FCVT            S0, H0 }

  v19 = (*a3 + 1);
  _H1 = *&v11 * *v19->i16;
  __asm { FCVT            S1, H1 }

  _S0 = _S1 + (_S0 * 0.5);
  __asm { FCVT            H0, S0 }

  v23 = *a4;
  v23->i16[0] = LOWORD(_S0);
  v37 = v11;
  vDSP_vsma_fp16(v19, 1, &v37, v23, 1, v23, 1, v12);
  v24 = a3[1];
  v25 = a4[1];
  *&(*a4)->i16[v12] = *&(*a4)->i16[v12] + (*&v11 * *v24);
  v26 = (a5 - 2);
  v39 = v11;
  v38 = COERCE_UNSIGNED_INT(0.5);
  vDSP_vsmsma_fp16((v24 + 1), 1, &v39, (v24 + 2), 1, &v38, v25->u64 + 4, 1, v26);
  v27 = a3[1];
  v28 = a4[1];
  *&v28->i16[1] = *(v27 + 1) * COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(0.5));
  v40 = *&v11;
  vDSP_vsma_fp16((v27 + 2), 1, &v40, &v28->i16[1], 1, v28->u64 + 2, 1, v26);
  _H0 = *a3[1];
  __asm { FCVT            S0, H0 }

  _H1 = *&(*a3)[v12] * v5;
  __asm { FCVT            S1, H1 }

  _S0 = _S1 + (_S0 * 0.5);
  __asm { FCVT            H0, S0 }

  a4[1]->i16[0] = result;
  return result;
}

void *_ZN2IR9FFTFilterIDF16_EC2ENSt3__110unique_ptrINS1_14ImplementationENS2_14default_deleteIS4_EEEE(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2A1DECF38;
  result[1] = v2;
  return result;
}

void *_ZN2IR9FFTFilterIDF16_EC1ENSt3__110unique_ptrINS1_14ImplementationENS2_14default_deleteIS4_EEEE(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2A1DECF38;
  result[1] = v2;
  return result;
}

void sub_296BEBE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v13 + 48);
  _ZNSt3__16vectorIN2IR15FFTFilterKernelIDF16_EENS_9allocatorIS3_EEE16__destroy_vectorclB8ne200100Ev(&a10);
  if (v12)
  {
    v15 = (v13 + 16);
    v16 = -v12;
    do
    {
      a10 = v15;
      _ZNSt3__16vectorIN2IR15FFTFilterKernelIDF16_EENS_9allocatorIS3_EEE16__destroy_vectorclB8ne200100Ev(&a10);
      v15 -= 4;
      v16 += 32;
    }

    while (v16);
  }

  MEMORY[0x29C25FC20](v10, v11);
  _Unwind_Resume(a1);
}

void sub_296BEC010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v13 + 48);
  _ZNSt3__16vectorIN2IR15FFTFilterKernelIDF16_EENS_9allocatorIS3_EEE16__destroy_vectorclB8ne200100Ev(&a10);
  if (v12)
  {
    v15 = (v13 + 16);
    v16 = -v12;
    do
    {
      a10 = v15;
      _ZNSt3__16vectorIN2IR15FFTFilterKernelIDF16_EENS_9allocatorIS3_EEE16__destroy_vectorclB8ne200100Ev(&a10);
      v15 -= 4;
      v16 += 32;
    }

    while (v16);
  }

  MEMORY[0x29C25FC20](v10, v11);
  _Unwind_Resume(a1);
}

void *_ZN2IR9FFTFilterIDF16_ED2Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1DECF38;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *_ZN2IR9FFTFilterIDF16_ED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1DECF38;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void _ZN2IR9FFTFilterIDF16_ED0Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1DECF38;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x29C25FC20);
}

uint64_t _ZN2IR9FFTFilterIDF16_E10initializeEjjjbjj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 8);
  if (!v7)
  {
    return 4294956429;
  }

  v9 = 1;
  return (*(*v7 + 16))(v7, a2, a3, a4, a5, a6, a7, 0, v9);
}

uint64_t _ZN2IR9FFTFilterIDF16_E10initializeEjjjbjjbbb(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 16))(v1);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t _ZN2IR9FFTFilterIDF16_E29initializeAndSetFilterKernelsEPKNSt3__16vectorINS_15FFTFilterKernelIDF16_EENS2_9allocatorIS5_EEEEjj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    return (*(*v4 + 24))(v4, a2, a3, a4, 0, 1, 0);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t _ZN2IR9FFTFilterIDF16_E29initializeAndSetFilterKernelsEPKNSt3__16vectorINS_15FFTFilterKernelIDF16_EENS2_9allocatorIS5_EEEEjjbbb(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 24))();
  }

  else
  {
    return 4294956429;
  }
}

uint64_t _ZN2IR9FFTFilterIDF16_E12uninitializeEv(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t _ZN2IR9FFTFilterIDF16_E5resetEv(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t _ZN2IR9FFTFilterIDF16_E17getScratchKernelsEv(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return IR::FFTFilter<float>::Implementation::getScratchKernels(result);
  }

  return result;
}

uint64_t _ZN2IR9FFTFilterIDF16_E16setFilterKernelsEPKNSt3__16vectorINS_15FFTFilterKernelIDF16_EENS2_9allocatorIS5_EEEE(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return _ZN2IR9FFTFilterIDF16_E14Implementation16setFilterKernelsEPKNSt3__16vectorINS_15FFTFilterKernelIDF16_EENS3_9allocatorIS6_EEEE(v2, a2);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t _ZN2IR9FFTFilterIDF16_E15setFilterCoeffsEPKPKDF16_jj(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    return _ZN2IR9FFTFilterIDF16_E14Implementation15setFilterCoeffsEPKPKDF16_jj(v3, a2, a3);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t _ZNK2IR9FFTFilterIDF16_E22getNumActiveSubFiltersEv(uint64_t a1)
{
  if (*(a1 + 8))
  {
    j___ZNK2IR15FFTFilterKernelIDF16_E25getNumActiveFFTSubFiltersEv();
  }

  return 0;
}

uint64_t _ZN2IR9FFTFilterIDF16_E7processEPKDF16_PKPDF16_jj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    return (*(*v5 + 48))(v5, a2, a3, a4, a5, 0);
  }

  else
  {
    return 4294956429;
  }
}

uint64_t _ZN2IR9FFTFilterIDF16_E7processEPKDF16_PKPDF16_jjPNS_21ComplexDataCircBufferE(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 48))();
  }

  else
  {
    return 4294956429;
  }
}

uint64_t _ZN2IR9FFTFilterIDF16_E21processMultipleInputsEPKPDF16_S4_jjjPNS_21ComplexDataCircBufferE(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 56))();
  }

  else
  {
    return 4294956429;
  }
}

uint64_t _ZN2IR9FFTFilterIDF16_E18getFIRFilterLengthEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 20);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN2IR9FFTFilterIDF16_E18getPartitionLengthEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 12);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNK2IR9FFTFilterIDF16_E15getConfigParamsEv@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

void _ZNSt3__16vectorIN2IR15FFTFilterKernelIDF16_EENS_9allocatorIS3_EEE16__destroy_vectorclB8ne200100Ev(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      j___ZN2IR15FFTFilterKernelIDF16_ED2Ev();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void *_ZNSt3__16vectorIN2IR15FFTFilterKernelIDF16_EENS_9allocatorIS3_EEE8__appendEm(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 3) < a2)
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 3) + a2;
    if (v4 <= 0x666666666666666)
    {
      v5 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *result) >> 3);
      if (2 * v5 > v4)
      {
        v4 = 2 * v5;
      }

      if (v5 >= 0x333333333333333)
      {
        v6 = 0x666666666666666;
      }

      else
      {
        v6 = v4;
      }

      if (v6)
      {
        std::allocator<IR::FFTFilterKernel<float>>::allocate_at_least[abi:ne200100](result, v6);
      }

      j___ZN2IR15FFTFilterKernelIDF16_EC1Ev();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    j___ZN2IR15FFTFilterKernelIDF16_EC1Ev();
  }

  result[1] = v3;
  return result;
}

void sub_296BEC694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__114__split_bufferIN2IR15FFTFilterKernelIDF16_EERNS_9allocatorIS3_EEED2Ev(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIN2IR15FFTFilterKernelIDF16_EEEEPS4_EEvRT_T0_S9_S9_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    j___ZN2IR15FFTFilterKernelIDF16_EC2ERKS1_();
  }
}

void sub_296BEC740(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    j___ZN2IR15FFTFilterKernelIDF16_ED2Ev();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__114__split_bufferIN2IR15FFTFilterKernelIDF16_EERNS_9allocatorIS3_EEED2Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 40;
    j___ZN2IR15FFTFilterKernelIDF16_ED2Ev();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t IR::FFTFilterKernel<float>::FFTFilterKernel(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void IR::FFTFilterKernel<float>::FFTFilterKernel(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  IR::FFTFilterKernel<float>::initialize();
}

{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  IR::FFTFilterKernel<float>::operator=();
}

void sub_296BEC820(_Unwind_Exception *a1)
{
  std::unique_ptr<IR::FFTSubFilterData<float>>::reset[abi:ne200100](v2, 0);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void IR::FFTFilterKernel<float>::initialize(std::vector<int> *a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a3 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  if (a4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = a2;
  }

  std::vector<float>::resize(a1, v9);
  end = a1[1].__end_;
  p_end = &a1[1].__end_;
  v10 = end;
  if (end)
  {
    v13 = *v10;
  }

  else
  {
    v13 = 0;
  }

  if (v13 != a3)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    if (v10)
    {
      LODWORD(v10) = v10[1];
    }

    if (v10 != vcvtps_u32_f32((a2 - v8) / a3))
    {
LABEL_18:
      if (a2 > v9)
      {
        operator new();
      }

      std::unique_ptr<IR::FFTSubFilterData<float>>::reset[abi:ne200100](p_end, 0);
    }
  }
}

uint64_t IR::FFTFilterKernel<float>::~FFTFilterKernel(uint64_t a1)
{
  std::unique_ptr<IR::FFTSubFilterData<float>>::reset[abi:ne200100]((a1 + 32), 0);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_296BECA10(_Unwind_Exception *a1)
{
  std::unique_ptr<IR::FFTSubFilterData<float>>::reset[abi:ne200100](v2, 0);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t IR::FFTFilterKernel<float>::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(a1 + 24) = *(a2 + 24);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        operator new();
      }

      IR::FFTSubFilterData<float>::operator=(v5, v4);
    }

    else
    {
      std::unique_ptr<IR::FFTSubFilterData<float>>::reset[abi:ne200100]((a1 + 32), 0);
    }
  }

  return a1;
}

__n128 IR::FFTFilterKernel<float>::FFTFilterKernel(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  *(a1 + 24) = a2[1].n128_u32[2];
  v3 = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = 0;
  *(a1 + 32) = v3;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  *(a1 + 24) = a2[1].n128_u32[2];
  v3 = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = 0;
  *(a1 + 32) = v3;
  return result;
}

void *std::unique_ptr<IR::FFTSubFilterData<float>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v2[9] = v3;
      operator delete(v3);
    }

    v4 = v2[5];
    if (v4)
    {
      v2[6] = v4;
      operator delete(v4);
    }

    v5 = v2[2];
    if (v5)
    {
      v2[3] = v5;
      operator delete(v5);
    }

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

uint64_t IR::FFTFilterKernel<float>::operator=(uint64_t a1, __n128 *a2)
{
  std::vector<float>::__move_assign(a1, a2);
  *(a1 + 24) = a2[1].n128_u32[2];
  v4 = a2[2].n128_i64[0];
  a2[2].n128_u64[0] = 0;
  std::unique_ptr<IR::FFTSubFilterData<float>>::reset[abi:ne200100]((a1 + 32), v4);
  return a1;
}

uint64_t IR::FFTFilterKernel<float>::calculateFIRFilterLength(uint64_t result, unsigned int a2, int a3)
{
  if (a2 >= result)
  {
    v3 = result;
  }

  else
  {
    v3 = a2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    return v3;
  }

  else
  {
    return result;
  }
}

uint64_t IR::FFTFilterKernel<float>::getPartitionLength(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t IR::FFTFilterKernel<float>::getNumFFTSubFilters(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 4);
  }

  else
  {
    return 0;
  }
}

void IR::FFTFilterKernel<float>::storeCoeffs()
{
  IR::FFTFilterKernel<float>::storeCoeffs();
}

{
  IR::FFTFilterKernel<float>::storeCoeffs();
}

{
    ;
  }
}

{
    ;
  }
}

unsigned int *IR::FFTFilterKernel<float>::storeCoeffs(uint64_t *a1, uint64_t a2, unsigned int a3, MultiRadixRealFFT *a4, uint64_t a5, unsigned int a6, float a7)
{
  if (!a3)
  {
    IR::FFTFilterKernel<float>::reset();
  }

  v14 = (a1[1] - *a1) >> 2;
  if (v14 >= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = v14;
  }

  v22 = a7;
  MEMORY[0x29C260530](a2, 1, &v22);
  v16 = *a1;
  v17 = (a1[1] - *a1) >> 2;
  v18 = v15 + 1;
  v19 = 4 * v15;
  while (v19)
  {
    v20 = *(*a1 - 4 + v19);
    --v18;
    v19 -= 4;
    if (v20 != 0.0)
    {
      goto LABEL_8;
    }
  }

  v18 = 0;
LABEL_8:
  *(a1 + 6) = v18;
  if (v15 == v17)
  {
    result = a1[4];
    if (!result)
    {
      return result;
    }

    if (v14 < a3)
    {
      return IR::FFTSubFilterData<float>::setFilter(result, a2 + 4 * v15, a3 - v15, a4, a5, a6, a7);
    }
  }

  else
  {
    bzero((v16 + 4 * v15), 4 * (v17 - v15));
    result = a1[4];
    if (!result)
    {
      return result;
    }
  }

  IR::FFTSubFilterData<float>::reset(result);
  return 0;
}

void IR::FFTFilterKernel<float>::reset(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8) - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 32);
  if (v4)
  {

    IR::FFTSubFilterData<float>::reset(v4);
  }
}

uint64_t IR::FFTFilterKernel<float>::calculateFIRActiveTaps(uint64_t result, unsigned int a2)
{
  v2 = result;
  LODWORD(result) = a2 + 1;
  v3 = v2 - 4;
  for (i = 4 * a2; i; i -= 4)
  {
    v5 = *(v3 + i);
    result = (result - 1);
    if (v5 != 0.0)
    {
      return result;
    }
  }

  return 0;
}

void IR::FFTFilterKernel<float>::initializeAndStoreCoeffs()
{
  IR::FFTFilterKernel<float>::initialize();
}

{
  IR::FFTFilterKernel<float>::initialize();
}

{
  IR::FFTFilterKernel<float>::initialize();
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t IR::FFTFilterKernel<float>::accumulate(uint64_t *a1, uint64_t *a2, float a3)
{
  v6 = *a1;
  v7 = (a1[1] - *a1) >> 2;
  v8 = *(a2 + 6);
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = *a2;
    v14 = a3;
    MEMORY[0x29C260500](v10, 1, &v14, v6, 1, v6, 1, v9);
  }

  result = a1[4];
  if (result)
  {
    v12 = a2[4];
    if (v12)
    {
      result = IR::FFTSubFilterData<float>::accumulate(result, v12, a3);
    }
  }

  v13 = *(a1 + 6);
  if (v13 <= v9)
  {
    v13 = v9;
  }

  *(a1 + 6) = v13;
  return result;
}

unsigned int *IR::FFTFilterKernel<float>::overwrite(uint64_t a1, uint64_t a2, float a3)
{
  if ((*(a2 + 8) - *a2) >> 2 >= ((*(a1 + 8) - *a1) >> 2))
  {
    LODWORD(v6) = (*(a1 + 8) - *a1) >> 2;
  }

  else
  {
    v6 = (*(a2 + 8) - *a2) >> 2;
  }

  if (v6)
  {
    MEMORY[0x29C260530]();
  }

  result = *(a1 + 32);
  if (result)
  {
    v8 = *(a2 + 32);
    if (v8)
    {
      result = IR::FFTSubFilterData<float>::overwrite(result, v8, a3);
    }
  }

  *(a1 + 24) = *(a2 + 24);
  return result;
}

unsigned int *IR::FFTFilterKernel<float>::scale(uint64_t *a1, float a2)
{
  v4 = *a1;
  v6 = a1[1] - v4;
  if (v6)
  {
    v8 = a2;
    MEMORY[0x29C260530](v4, 1, &v8, v4, 1, v6 >> 2);
  }

  result = a1[4];
  if (result)
  {
    return IR::FFTSubFilterData<float>::scale(result, a2);
  }

  return result;
}

uint64_t IR::FFTFilterKernel<float>::getMaxFilterLength(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    LODWORD(v1) = v1[1] * *v1;
  }

  return v1 + ((a1[1] - *a1) >> 2);
}

uint64_t IR::FFTFilterKernel<float>::getActiveFilterLength(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    LODWORD(v1) = v1[2] * *v1;
  }

  return v1 + ((a1[1] - *a1) >> 2);
}

uint64_t IR::FFTFilterKernel<float>::getLatency(void *a1)
{
  if (a1[1] == *a1 && (v2 = a1[4]) != 0)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t IR::FFTFilterKernel<float>::getFFTSubFilters(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 40) == *(v1 + 48))
  {
    return 0;
  }

  return *(v1 + 40);
}

uint64_t IR::FFTFilterKernel<float>::getComplexMultiplicationLengths(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 64) == *(v1 + 72))
  {
    return 0;
  }

  return *(v1 + 64);
}

uint64_t IR::FFTFilterKernel<float>::getNumActiveFFTSubFilters(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN2IR15FFTFilterKernelIDF16_EC2Ev(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t _ZN2IR15FFTFilterKernelIDF16_EC1Ev(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void _ZN2IR15FFTFilterKernelIDF16_EC2Ejjb(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  j___ZN2IR15FFTFilterKernelIDF16_E10initializeEjjb();
}

void sub_296BED308(_Unwind_Exception *a1)
{
  _ZNSt3__110unique_ptrIN2IR16FFTSubFilterDataIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_(v2, 0);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void _ZN2IR15FFTFilterKernelIDF16_E10initializeEjjb(void *a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a3 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  if (a4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = a2;
  }

  std::vector<short>::resize(a1, v9);
  v12 = a1[4];
  v11 = a1 + 4;
  v10 = v12;
  if (v12)
  {
    v13 = *v10;
  }

  else
  {
    v13 = 0;
  }

  if (v13 != a3)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    if (v10)
    {
      LODWORD(v10) = v10[1];
    }

    if (v10 != vcvtps_u32_f32((a2 - v8) / a3))
    {
LABEL_18:
      if (a2 > v9)
      {
        operator new();
      }

      _ZNSt3__110unique_ptrIN2IR16FFTSubFilterDataIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_(v11, 0);
    }
  }
}

uint64_t _ZN2IR15FFTFilterKernelIDF16_ED2Ev(uint64_t a1)
{
  _ZNSt3__110unique_ptrIN2IR16FFTSubFilterDataIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_((a1 + 32), 0);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZN2IR15FFTFilterKernelIDF16_EC2ERKS1_(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  j___ZN2IR15FFTFilterKernelIDF16_EaSERKS1_();
}

void sub_296BED4F8(_Unwind_Exception *a1)
{
  _ZNSt3__110unique_ptrIN2IR16FFTSubFilterDataIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_(v2, 0);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZN2IR15FFTFilterKernelIDF16_EaSERKS1_(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE18__assign_with_sizeB8ne200100IPDF16_S5_EEvT_T0_l(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    *(a1 + 24) = *(a2 + 24);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        operator new();
      }

      _ZN2IR16FFTSubFilterDataIDF16_EaSERKS1_(v5, v4);
    }

    else
    {
      _ZNSt3__110unique_ptrIN2IR16FFTSubFilterDataIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_((a1 + 32), 0);
    }
  }

  return a1;
}

__n128 _ZN2IR15FFTFilterKernelIDF16_EC2EOS1_(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  *(a1 + 24) = a2[1].n128_u32[2];
  v3 = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = 0;
  *(a1 + 32) = v3;
  return result;
}

__n128 _ZN2IR15FFTFilterKernelIDF16_EC1EOS1_(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  *(a1 + 24) = a2[1].n128_u32[2];
  v3 = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = 0;
  *(a1 + 32) = v3;
  return result;
}

void *_ZNSt3__110unique_ptrIN2IR16FFTSubFilterDataIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[11];
    if (v3)
    {
      v2[12] = v3;
      operator delete(v3);
    }

    v4 = v2[8];
    if (v4)
    {
      v2[9] = v4;
      operator delete(v4);
    }

    v5 = v2[5];
    if (v5)
    {
      v2[6] = v5;
      operator delete(v5);
    }

    v6 = v2[2];
    if (v6)
    {
      v2[3] = v6;
      operator delete(v6);
    }

    JUMPOUT(0x29C25FC20);
  }

  return result;
}

uint64_t _ZN2IR15FFTFilterKernelIDF16_EaSEOS1_(uint64_t a1, __n128 *a2)
{
  std::vector<float>::__move_assign(a1, a2);
  *(a1 + 24) = a2[1].n128_u32[2];
  v4 = a2[2].n128_i64[0];
  a2[2].n128_u64[0] = 0;
  _ZNSt3__110unique_ptrIN2IR16FFTSubFilterDataIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_((a1 + 32), v4);
  return a1;
}

uint64_t _ZN2IR15FFTFilterKernelIDF16_E24calculateFIRFilterLengthEjjb(uint64_t result, unsigned int a2, int a3)
{
  if (a2 >= result)
  {
    v3 = result;
  }

  else
  {
    v3 = a2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    return v3;
  }

  else
  {
    return result;
  }
}

uint64_t _ZNK2IR15FFTFilterKernelIDF16_E18getPartitionLengthEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNK2IR15FFTFilterKernelIDF16_E19getNumFFTSubFiltersEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 4);
  }

  else
  {
    return 0;
  }
}

unsigned int *_ZN2IR15FFTFilterKernelIDF16_E11storeCoeffsEPKDF16_jP17MultiRadixRealFFTNS_31FFTFilterOptimizationParametersEDF16_(uint64_t a1, float16x8_t *a2, unsigned int a3, MultiRadixRealFFT *a4, uint64_t a5, unsigned int a6, float a7)
{
  if (!a3)
  {
    j___ZN2IR15FFTFilterKernelIDF16_E5resetEv();
  }

  v14 = *a1;
  v15 = (*(a1 + 8) - *a1) >> 1;
  if (v15 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = v15;
  }

  v28 = LOWORD(a7);
  vDSP_vsmul_fp16(a2, 1, &v28, v14, 1, v16);
  v18 = *a1;
  v19 = (*(a1 + 8) - *a1) >> 1;
  v20 = v16 + 1;
  v21 = 2 * v16;
  while (v21)
  {
    --v20;
    v21 -= 2;
    __asm { FCMP            H0, #0 }

    if (!_ZF && !_VF)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
LABEL_9:
  *(a1 + 24) = v20;
  if (v16 == v19)
  {
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }

    if (v15 < a3)
    {
      v17.n128_f32[0] = a7;
      return _ZN2IR16FFTSubFilterDataIDF16_E9setFilterEPKDF16_jDF16_P17MultiRadixRealFFTNS_31FFTFilterOptimizationParametersE(result, a2->i64 + 2 * v16, a3 - v16, a4, a5, a6, v17);
    }
  }

  else
  {
    bzero((v18 + 2 * v16), 2 * (v19 - v16));
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }
  }

  IR::FFTSubFilterData<float>::reset(result);
  return 0;
}

void _ZN2IR15FFTFilterKernelIDF16_E5resetEv(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8) - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 32);
  if (v4)
  {

    IR::FFTSubFilterData<float>::reset(v4);
  }
}

uint64_t _ZN2IR15FFTFilterKernelIDF16_E22calculateFIRActiveTapsEPKDF16_j(uint64_t a1, unsigned int a2)
{
  LODWORD(result) = a2 + 1;
  v3 = 2 * a2;
  while (v3)
  {
    result = (result - 1);
    v3 -= 2;
    __asm { FCMP            H0, #0 }

    if (!_ZF && !_VF)
    {
      return result;
    }
  }

  return 0;
}

uint64_t _ZN2IR15FFTFilterKernelIDF16_E10accumulateERKS1_DF16_(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_u32[0];
  v6 = *a1;
  v7 = (*(a1 + 8) - *a1) >> 1;
  v8 = *(a2 + 24);
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = *a2;
    v14 = a3.n128_u16[0];
    vDSP_vsma_fp16(v10, 1, &v14, v6, 1, v6, 1, v9);
  }

  result = *(a1 + 32);
  if (result)
  {
    v12 = *(a2 + 32);
    if (v12)
    {
      a3.n128_u32[0] = v3;
      result = _ZN2IR16FFTSubFilterDataIDF16_E10accumulateERKS1_DF16_(result, v12, a3);
    }
  }

  v13 = *(a1 + 24);
  if (v13 <= v9)
  {
    v13 = v9;
  }

  *(a1 + 24) = v13;
  return result;
}

unsigned int *_ZN2IR15FFTFilterKernelIDF16_E9overwriteERKS1_DF16_(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_u32[0];
  v6 = *a1;
  v7 = (*(a1 + 8) - *a1) >> 1;
  v8 = *a2;
  if ((*(a2 + 8) - *a2) >> 1 >= v7)
  {
    LODWORD(v9) = v7;
  }

  else
  {
    v9 = (*(a2 + 8) - *a2) >> 1;
  }

  if (v9)
  {
    v12 = a3.n128_u16[0];
    vDSP_vsmul_fp16(v8, 1, &v12, v6, 1, v9);
  }

  result = *(a1 + 32);
  if (result)
  {
    v11 = *(a2 + 32);
    if (v11)
    {
      a3.n128_u32[0] = v3;
      result = _ZN2IR16FFTSubFilterDataIDF16_E9overwriteERKS1_DF16_(result, v11, a3);
    }
  }

  *(a1 + 24) = *(a2 + 24);
  return result;
}

unsigned int *_ZN2IR15FFTFilterKernelIDF16_E5scaleEDF16_(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u32[0];
  v4 = *a1;
  v6 = *(a1 + 8) - v4;
  if (v6)
  {
    v8 = a2.n128_u16[0];
    vDSP_vsmul_fp16(v4, 1, &v8, v4, 1, v6 >> 1);
  }

  result = *(a1 + 32);
  if (result)
  {
    a2.n128_u32[0] = v2;
    return _ZN2IR16FFTSubFilterDataIDF16_E5scaleEDF16_(result, a2);
  }

  return result;
}

uint64_t _ZNK2IR15FFTFilterKernelIDF16_E18getMaxFilterLengthEv(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    LODWORD(v1) = v1[1] * *v1;
  }

  return v1 + ((a1[1] - *a1) >> 1);
}

uint64_t _ZNK2IR15FFTFilterKernelIDF16_E21getActiveFilterLengthEv(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    LODWORD(v1) = v1[2] * *v1;
  }

  return v1 + ((a1[1] - *a1) >> 1);
}

uint64_t _ZNK2IR15FFTFilterKernelIDF16_E10getLatencyEv(void *a1)
{
  if (a1[1] == *a1 && (v2 = a1[4]) != 0)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNK2IR15FFTFilterKernelIDF16_E16getFFTSubFiltersEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 40) == *(v1 + 48))
  {
    return 0;
  }

  return *(v1 + 40);
}

uint64_t _ZNK2IR15FFTFilterKernelIDF16_E31getComplexMultiplicationLengthsEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 64) == *(v1 + 72))
  {
    return 0;
  }

  return *(v1 + 64);
}

uint64_t _ZNK2IR15FFTFilterKernelIDF16_E25getNumActiveFFTSubFiltersEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

void vDSP_vclr_fp16(_WORD *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    if (a3)
    {
      bzero(a1, 2 * a3);
    }
  }

  else
  {
    for (; a3; --a3)
    {
      *a1 = 0;
      a1 += a2;
    }
  }
}

short float *vDSP_maxv_fp16(short float *result, uint64_t a2, short float *a3, uint64_t a4)
{
  if (a4)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        v4 = result + 1;
        v5 = *result;
        v6 = 2 * a4 - 2;
        v7 = result + 1;
        do
        {
          v8 = *v7++;
          v9 = v5 < v8;
          v5 = fmaxl(v5, v8);
          if (v9)
          {
            result = v4;
          }

          v4 = v7;
          v6 -= 2;
        }

        while (v6);
      }

      *a3 = *result;
    }

    else
    {
      LOWORD(v10) = 0x8000;
      do
      {
        v10 = fmaxl(*result, v10);
        result += a2;
        --a4;
      }

      while (a4);
      *a3 = v10;
    }
  }

  else
  {
    *a3 = 0x8000;
  }

  return result;
}

double vDSP_vadd_fp16(float16x8_t *a1, uint64_t a2, float16x8_t *a3, uint64_t a4, float16x8_t *a5, uint64_t a6, unint64_t a7)
{
  if (a2 != 1 || a4 != 1 || a6 != 1)
  {
    if (!a7)
    {
      return *v16.i64;
    }

    if (a7 < 4)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v17 = 0;
    if (a6 != 1)
    {
      goto LABEL_13;
    }

    if (a2 != 1)
    {
      goto LABEL_13;
    }

    if (a4 != 1)
    {
      goto LABEL_13;
    }

    v17 = 0;
    if ((a5 - a1) < 0x20 || (a5 - a3) < 0x20)
    {
      goto LABEL_13;
    }

    if (a7 >= 0x10)
    {
      v17 = a7 & 0xFFFFFFFFFFFFFFF0;
      v34 = a1 + 1;
      v35 = a3 + 1;
      v36 = a5 + 1;
      v37 = a7 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v16 = vaddq_f16(v35[-1], v34[-1]);
        v38 = vaddq_f16(*v35, *v34);
        v36[-1] = v16;
        *v36 = v38;
        v34 += 2;
        v35 += 2;
        v36 += 2;
        v37 -= 16;
      }

      while (v37);
      if (v17 == a7)
      {
        return *v16.i64;
      }

      if ((a7 & 0xC) == 0)
      {
LABEL_13:
        v18 = a7 - v17;
        v19 = &a5->i16[v17 * a6];
        v20 = &a3->i16[v17 * a4];
        v21 = &a1->i16[v17 * a2];
        do
        {
          *v16.i16 = *v20 + *v21;
          *v19 = v16.i16[0];
          v19 += a6;
          v20 += a4;
          v21 += a2;
          --v18;
        }

        while (v18);
        return *v16.i64;
      }
    }

    else
    {
      v17 = 0;
    }

    v39 = v17;
    v17 = a7 & 0xFFFFFFFFFFFFFFFCLL;
    v40 = (a1 + 2 * v39);
    v41 = (a3 + 2 * v39);
    v42 = (a5->i64 + 2 * v39);
    v43 = v39 - (a7 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v44 = *v40++;
      v45 = v44;
      v46 = *v41++;
      *v16.i8 = vadd_f16(v46, v45);
      *v42++ = v16.i64[0];
      v43 += 4;
    }

    while (v43);
    if (v17 == a7)
    {
      return *v16.i64;
    }

    goto LABEL_13;
  }

  if (!a7)
  {
    return *v16.i64;
  }

  if (a7 < 0x20)
  {
    v7 = 0;
LABEL_7:
    v8 = a7 - v7;
    v9 = v7;
    v10 = &a5->i16[v7];
    v11 = &a3->i16[v9];
    v12 = &a1->i16[v9];
    do
    {
      v13 = *v12++;
      v14 = v13;
      v15 = *v11++;
      *v16.i16 = v15 + v14;
      *v10++ = v16.i16[0];
      --v8;
    }

    while (v8);
    return *v16.i64;
  }

  v7 = 0;
  if ((a5 - a1) < 0x40)
  {
    goto LABEL_7;
  }

  if ((a5 - a3) < 0x40)
  {
    goto LABEL_7;
  }

  v7 = a7 & 0xFFFFFFFFFFFFFFE0;
  v22 = a1 + 2;
  v23 = a3 + 2;
  v24 = a5 + 2;
  v25 = a7 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v26 = v22[-2];
    v27 = v22[-1];
    v28 = *v22;
    v29 = v22[1];
    v22 += 4;
    v30 = v23[-2];
    v31 = v23[-1];
    v32 = *v23;
    v33 = v23[1];
    v23 += 4;
    v16 = vaddq_f16(v30, v26);
    v24[-2] = v16;
    v24[-1] = vaddq_f16(v31, v27);
    *v24 = vaddq_f16(v32, v28);
    v24[1] = vaddq_f16(v33, v29);
    v24 += 4;
    v25 -= 32;
  }

  while (v25);
  if (v7 != a7)
  {
    goto LABEL_7;
  }

  return *v16.i64;
}

float16x8_t *vDSP_vsmul_fp16(float16x8_t *result, uint64_t a2, const __int16 *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 != 1 || a5 != 1)
  {
    if (!a6)
    {
      return result;
    }

    if (a6 < 4)
    {
      v12 = 0;
      goto LABEL_12;
    }

    v12 = 0;
    if (a5 != 1 || a2 != 1)
    {
      goto LABEL_12;
    }

    v12 = 0;
    v16 = a4 + 2 * a6;
    v17 = (a3 + 1) > a4 && v16 > a3;
    v18 = v17;
    v19 = v16 > result && result + 2 * a6 > a4;
    if (v19 || v18)
    {
      goto LABEL_12;
    }

    if (a6 >= 0x10)
    {
      v12 = a6 & 0xFFFFFFFFFFFFFFF0;
      v32 = vld1q_dup_s16(a3);
      v33 = result + 1;
      v34 = (a4 + 16);
      v35 = a6 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v36 = vmulq_f16(v32, *v33);
        v34[-1] = vmulq_f16(v32, v33[-1]);
        *v34 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 16;
      }

      while (v35);
      if (v12 == a6)
      {
        return result;
      }

      if ((a6 & 0xC) == 0)
      {
LABEL_12:
        v13 = a6 - v12;
        v14 = (a4 + 2 * v12 * a5);
        v15 = &result->i16[v12 * a2];
        do
        {
          *v14 = *a3 * *v15;
          v14 += a5;
          v15 += a2;
          --v13;
        }

        while (v13);
        return result;
      }
    }

    else
    {
      v12 = 0;
    }

    v37 = v12;
    v12 = a6 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = vld1_dup_s16(a3);
    v39 = (result + 2 * v37);
    v40 = (a4 + 2 * v37);
    v41 = v37 - (a6 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v42 = *v39++;
      *v40++ = vmul_f16(v38, v42);
      v41 += 4;
    }

    while (v41);
    if (v12 == a6)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!a6)
  {
    return result;
  }

  if (a6 < 0x20)
  {
    v6 = 0;
LABEL_6:
    v7 = a6 - v6;
    v8 = v6;
    v9 = (a4 + 2 * v6);
    v10 = &result->i16[v8];
    do
    {
      v11 = *v10++;
      *v9++ = *a3 * v11;
      --v7;
    }

    while (v7);
    return result;
  }

  v6 = 0;
  v20 = a4 + 2 * a6;
  v22 = (a3 + 1) > a4 && v20 > a3;
  if (v20 > result && result + 2 * a6 > a4)
  {
    goto LABEL_6;
  }

  if (v22)
  {
    goto LABEL_6;
  }

  v6 = a6 & 0xFFFFFFFFFFFFFFE0;
  v24 = vld1q_dup_s16(a3);
  v25 = result + 2;
  v26 = (a4 + 32);
  v27 = a6 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v29 = v25[-2];
    v28 = v25[-1];
    v31 = *v25;
    v30 = v25[1];
    v25 += 4;
    v26[-2] = vmulq_f16(v24, v29);
    v26[-1] = vmulq_f16(v24, v28);
    *v26 = vmulq_f16(v24, v31);
    v26[1] = vmulq_f16(v24, v30);
    v26 += 4;
    v27 -= 32;
  }

  while (v27);
  if (v6 != a6)
  {
    goto LABEL_6;
  }

  return result;
}

float16x8_t *vDSP_vsma_fp16(float16x8_t *result, uint64_t a2, const __int16 *a3, float16x8_t *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2 != 1 || a5 != 1 || a7 != 1)
  {
    if (!a8)
    {
      return result;
    }

    if (a8 < 4)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v17 = 0;
    if (a7 != 1 || a2 != 1 || a5 != 1)
    {
      goto LABEL_13;
    }

    v17 = 0;
    v22 = a6 + 2 * a8;
    v23 = (a3 + 1) > a6 && v22 > a3;
    v24 = v23;
    v25 = a4 + 2 * a8 > a6 && v22 > a4;
    v26 = v25;
    v27 = v22 > result && result + 2 * a8 > a6;
    if (v27 || v24 || v26)
    {
      goto LABEL_13;
    }

    if (a8 >= 0x10)
    {
      v17 = a8 & 0xFFFFFFFFFFFFFFF0;
      v47 = vld1q_dup_s16(a3);
      v48 = result + 1;
      v49 = a4 + 1;
      v50 = (a6 + 16);
      v51 = a8 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v52 = vmlaq_f16(*v49, v47, *v48);
        v50[-1] = vmlaq_f16(v49[-1], v47, v48[-1]);
        *v50 = v52;
        v48 += 2;
        v49 += 2;
        v50 += 2;
        v51 -= 16;
      }

      while (v51);
      if (v17 == a8)
      {
        return result;
      }

      if ((a8 & 0xC) == 0)
      {
LABEL_13:
        v18 = a8 - v17;
        v19 = (a6 + 2 * v17 * a7);
        v20 = &a4->i16[v17 * a5];
        v21 = &result->i16[v17 * a2];
        do
        {
          *v19 = *v20 + (*a3 * *v21);
          v19 += a7;
          v20 += a5;
          v21 += a2;
          --v18;
        }

        while (v18);
        return result;
      }
    }

    else
    {
      v17 = 0;
    }

    v53 = v17;
    v17 = a8 & 0xFFFFFFFFFFFFFFFCLL;
    v54 = vld1_dup_s16(a3);
    v55 = (result + 2 * v53);
    v56 = (a4 + 2 * v53);
    v57 = (a6 + 2 * v53);
    v58 = v53 - (a8 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v59 = *v55++;
      v60 = v59;
      v61 = *v56++;
      *v57++ = vmla_f16(v61, v54, v60);
      v58 += 4;
    }

    while (v58);
    if (v17 == a8)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (!a8)
  {
    return result;
  }

  if (a8 < 0x20)
  {
    v8 = 0;
LABEL_7:
    v9 = a8 - v8;
    v10 = v8;
    v11 = (a6 + 2 * v8);
    v12 = &a4->i16[v10];
    v13 = &result->i16[v10];
    do
    {
      v14 = *v13++;
      v15 = v14;
      v16 = *v12++;
      *v11++ = v16 + (*a3 * v15);
      --v9;
    }

    while (v9);
    return result;
  }

  v8 = 0;
  v28 = a6 + 2 * a8;
  v30 = (a3 + 1) > a6 && v28 > a3;
  v32 = a4 + 2 * a8 > a6 && v28 > a4;
  if (v28 > result && result + 2 * a8 > a6)
  {
    goto LABEL_7;
  }

  if (v30)
  {
    goto LABEL_7;
  }

  if (v32)
  {
    goto LABEL_7;
  }

  v8 = a8 & 0xFFFFFFFFFFFFFFE0;
  v34 = vld1q_dup_s16(a3);
  v35 = result + 2;
  v36 = a4 + 2;
  v37 = (a6 + 32);
  v38 = a8 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v39 = v35[-2];
    v40 = v35[-1];
    v41 = *v35;
    v42 = v35[1];
    v35 += 4;
    v44 = v36[-2];
    v43 = v36[-1];
    v46 = *v36;
    v45 = v36[1];
    v36 += 4;
    v37[-2] = vmlaq_f16(v44, v34, v39);
    v37[-1] = vmlaq_f16(v43, v34, v40);
    *v37 = vmlaq_f16(v46, v34, v41);
    v37[1] = vmlaq_f16(v45, v34, v42);
    v37 += 4;
    v38 -= 32;
  }

  while (v38);
  if (v8 != a8)
  {
    goto LABEL_7;
  }

  return result;
}

float16x8_t *vDSP_vsmsma_fp16(float16x8_t *result, uint64_t a2, const __int16 *a3, float16x8_t *a4, uint64_t a5, const __int16 *a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  if (a2 != 1 || a5 != 1 || a8 != 1)
  {
    if (!a9)
    {
      return result;
    }

    if (a9 < 4)
    {
      v18 = 0;
      goto LABEL_13;
    }

    v18 = 0;
    if (a8 != 1 || a2 != 1 || a5 != 1)
    {
      goto LABEL_13;
    }

    v18 = 0;
    v23 = a7 + 2 * a9;
    v24 = (a3 + 1) > a7 && v23 > a3;
    v25 = v24;
    v26 = a4 + 2 * a9 > a7 && v23 > a4;
    v27 = v26;
    v28 = (a6 + 1) > a7 && v23 > a6;
    v29 = v28;
    v30 = v23 > result && result + 2 * a9 > a7;
    if (v30 || v25 || v27 || v29)
    {
      goto LABEL_13;
    }

    if (a9 >= 0x10)
    {
      v18 = a9 & 0xFFFFFFFFFFFFFFF0;
      v49 = vld1q_dup_s16(a3);
      v50 = vld1q_dup_s16(a6);
      v51 = result + 1;
      v52 = a4 + 1;
      v53 = (a7 + 16);
      v54 = a9 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v55 = vmlaq_f16(vmulq_f16(v49, *v51), v50, *v52);
        v53[-1] = vmlaq_f16(vmulq_f16(v49, v51[-1]), v50, v52[-1]);
        *v53 = v55;
        v51 += 2;
        v52 += 2;
        v53 += 2;
        v54 -= 16;
      }

      while (v54);
      if (v18 == a9)
      {
        return result;
      }

      if ((a9 & 0xC) == 0)
      {
LABEL_13:
        v19 = a9 - v18;
        v20 = (a7 + 2 * v18 * a8);
        v21 = &a4->i16[v18 * a5];
        v22 = &result->i16[v18 * a2];
        do
        {
          *v20 = (*a3 * *v22) + (*a6 * *v21);
          v20 += a8;
          v21 += a5;
          v22 += a2;
          --v19;
        }

        while (v19);
        return result;
      }
    }

    else
    {
      v18 = 0;
    }

    v56 = v18;
    v18 = a9 & 0xFFFFFFFFFFFFFFFCLL;
    v57 = vld1_dup_s16(a3);
    v58 = vld1_dup_s16(a6);
    v59 = (result + 2 * v56);
    v60 = (a4 + 2 * v56);
    v61 = (a7 + 2 * v56);
    v62 = v56 - (a9 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v63 = *v59++;
      v64 = vmul_f16(v57, v63);
      v65 = *v60++;
      *v61++ = vmla_f16(v64, v58, v65);
      v62 += 4;
    }

    while (v62);
    if (v18 == a9)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (!a9)
  {
    return result;
  }

  if (a9 < 0x10)
  {
    v9 = 0;
LABEL_7:
    v10 = a9 - v9;
    v11 = v9;
    v12 = (a7 + 2 * v9);
    v13 = &a4->i16[v11];
    v14 = &result->i16[v11];
    do
    {
      v15 = *v14++;
      v16 = v15;
      v17 = *v13++;
      *v12++ = (*a3 * v16) + (*a6 * v17);
      --v10;
    }

    while (v10);
    return result;
  }

  v9 = 0;
  v31 = a7 + 2 * a9;
  v33 = (a3 + 1) > a7 && v31 > a3;
  v35 = a4 + 2 * a9 > a7 && v31 > a4;
  v37 = (a6 + 1) > a7 && v31 > a6;
  if (v31 > result && result + 2 * a9 > a7)
  {
    goto LABEL_7;
  }

  if (v33)
  {
    goto LABEL_7;
  }

  if (v35)
  {
    goto LABEL_7;
  }

  if (v37)
  {
    goto LABEL_7;
  }

  v9 = a9 & 0xFFFFFFFFFFFFFFF0;
  v39 = vld1q_dup_s16(a3);
  v40 = vld1q_dup_s16(a6);
  v41 = a9 & 0xFFFFFFFFFFFFFFF0;
  v42 = a7;
  v43 = a4;
  v44 = result;
  do
  {
    v45 = *v44;
    v46 = v44[1];
    v44 += 2;
    v47 = *v43;
    v48 = v43[1];
    v43 += 2;
    *v42 = vmlaq_f16(vmulq_f16(v39, v45), v40, v47);
    v42[1] = vmlaq_f16(vmulq_f16(v39, v46), v40, v48);
    v42 += 2;
    v41 -= 16;
  }

  while (v41);
  if (v9 != a9)
  {
    goto LABEL_7;
  }

  return result;
}

void vDSP_conv_fp16(short float *a1, uint64_t a2, short float *a3, uint64_t a4, short float *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2 == 1 && a4 == 1 && a6 == 1)
  {
    if (!a7)
    {
      return;
    }

    if (a8)
    {
      if (a8 >= 0x20)
      {
        v26 = 0;
        v27 = a1 + 16;
        v28 = (2 * a8) & 0xFFFFFFFFFFFFFFC0;
        v29 = (a3 + v28);
        v30 = (a1 + v28);
        do
        {
          v31 = 0uLL;
          v32 = a8 & 0xFFFFFFFFFFFFFFE0;
          v33 = (a3 + 16);
          v34 = v27;
          v35 = 0uLL;
          v36 = 0uLL;
          v37 = 0uLL;
          do
          {
            v39 = v34[-2];
            v38 = v34[-1];
            v41 = *v34;
            v40 = v34[1];
            v34 += 4;
            v43 = v33[-2];
            v42 = v33[-1];
            v45 = *v33;
            v44 = v33[1];
            v33 += 4;
            v35 = vmlaq_f16(v35, v42, v38);
            v31 = vmlaq_f16(v31, v43, v39);
            v37 = vmlaq_f16(v37, v44, v40);
            v36 = vmlaq_f16(v36, v45, v41);
            v32 -= 32;
          }

          while (v32);
          v46 = vaddq_f16(vaddq_f16(v36, v31), vaddq_f16(v37, v35));
          v47 = vaddv_f16(*&vpaddq_f16(vpaddq_f16(v46, v46), v46));
          if (a8 != (a8 & 0xFFFFFFFFFFFFFFE0))
          {
            v48 = v30;
            v49 = v29;
            v50 = a8 - (a8 & 0xFFFFFFFFFFFFFFE0);
            do
            {
              v51 = *v48++;
              v52 = v51;
              v53 = *v49++;
              v47 = v47 + (v53 * v52);
              --v50;
            }

            while (v50);
          }

          a5[v26++] = v47;
          ++v27;
          ++v30;
        }

        while (v26 != a7);
      }

      else
      {
        for (i = 0; i != a7; ++i)
        {
          LOWORD(v10) = 0;
          v11 = a1;
          v12 = a3;
          v13 = a8;
          do
          {
            v14 = *v11++;
            v15 = v14;
            v16 = *v12++;
            v10 = v10 + (v16 * v15);
            --v13;
          }

          while (v13);
          a5[i] = v10;
          ++a1;
        }
      }

      return;
    }

    goto LABEL_31;
  }

  if (a2 == 1 && a4 == -1 && a6 == 1)
  {
    if (!a7)
    {
      return;
    }

    if (a8)
    {
      if (a8 >= 0x20)
      {
        v76 = 0;
        v77 = a1 + 16;
        v78 = (2 * a8) & 0xFFFFFFFFFFFFFFC0;
        v79 = (a3 - v78);
        v80 = (a1 + v78);
        do
        {
          v81 = 0uLL;
          v82 = a8 & 0xFFFFFFFFFFFFFFE0;
          v83 = (a3 - 15);
          v84 = v77;
          v85 = 0uLL;
          v86 = 0uLL;
          v87 = 0uLL;
          do
          {
            v89 = v84[-2];
            v88 = v84[-1];
            v91 = *v84;
            v90 = v84[1];
            v84 += 4;
            v92 = vrev64q_s16(*v83);
            v93 = vrev64q_s16(v83[1]);
            v94 = vrev64q_s16(v83[-2]);
            v95 = vrev64q_s16(v83[-1]);
            v85 = vmlaq_f16(v85, vextq_s8(v92, v92, 8uLL), v88);
            v81 = vmlaq_f16(v81, vextq_s8(v93, v93, 8uLL), v89);
            v87 = vmlaq_f16(v87, vextq_s8(v94, v94, 8uLL), v90);
            v86 = vmlaq_f16(v86, vextq_s8(v95, v95, 8uLL), v91);
            v83 -= 4;
            v82 -= 32;
          }

          while (v82);
          v96 = vaddq_f16(vaddq_f16(v86, v81), vaddq_f16(v87, v85));
          v97 = vaddv_f16(*&vpaddq_f16(vpaddq_f16(v96, v96), v96));
          if (a8 != (a8 & 0xFFFFFFFFFFFFFFE0))
          {
            v98 = v80;
            v99 = v79;
            v100 = a8 - (a8 & 0xFFFFFFFFFFFFFFE0);
            do
            {
              v101 = *v98++;
              v102 = v101;
              v103 = *v99--;
              v97 = v97 + (v103 * v102);
              --v100;
            }

            while (v100);
          }

          a5[v76++] = v97;
          ++v77;
          ++v80;
        }

        while (v76 != a7);
      }

      else
      {
        for (j = 0; j != a7; ++j)
        {
          LOWORD(v18) = 0;
          v19 = a1;
          v20 = a3;
          v21 = a8;
          do
          {
            v22 = *v19++;
            v23 = v22;
            v24 = *v20--;
            v18 = v18 + (v24 * v23);
            --v21;
          }

          while (v21);
          a5[j] = v18;
          ++a1;
        }
      }

      return;
    }

LABEL_31:

    bzero(a5, 2 * a7);
    return;
  }

  if (!a7)
  {
    return;
  }

  if (!a8)
  {
    goto LABEL_31;
  }

  if (a8 > 3)
  {
    if (a2 != 1 || a4 != 1)
    {
      v104 = 0;
      v105 = 2 * a2;
      do
      {
        LOWORD(v106) = 0;
        v107 = a1;
        v108 = a3;
        v109 = a8;
        do
        {
          v106 = v106 + (*v108 * *v107);
          v108 += a4;
          v107 = (v107 + v105);
          --v109;
        }

        while (v109);
        a5[v104++] = v106;
        a1 = (a1 + v105);
      }

      while (v104 != a7);
      return;
    }

    v54 = 0;
    v55 = (a1 + 8);
    v56 = a1;
    while (a8 >= 0x10)
    {
      v59 = 0uLL;
      v60 = a8 & 0xFFFFFFFFFFFFFFF0;
      v61 = (a3 + 8);
      v62 = v55;
      v63 = 0uLL;
      do
      {
        v59 = vmlaq_f16(v59, v61[-1], v62[-1]);
        v63 = vmlaq_f16(v63, *v61, *v62);
        v62 += 2;
        v61 += 2;
        v60 -= 16;
      }

      while (v60);
      v64 = vaddq_f16(v63, v59);
      v58 = vaddv_f16(*&vpaddq_f16(vpaddq_f16(v64, v64), v64));
      if ((a8 & 0xFFFFFFFFFFFFFFF0) == a8)
      {
        goto LABEL_45;
      }

      v57 = a8 & 0xFFFFFFFFFFFFFFF0;
      v65 = a8 & 0xFFFFFFFFFFFFFFF0;
      if ((a8 & 0xC) != 0)
      {
        goto LABEL_52;
      }

LABEL_55:
      v73 = a8 - v65;
      v74 = &a3[v65];
      v75 = &a1[v65 + v54];
      do
      {
        v58 = v58 + (*v74++ * *v75++);
        --v73;
      }

      while (v73);
LABEL_45:
      a5[v54++] = v58;
      v55 = (v55 + 2);
      ++v56;
      if (v54 == a7)
      {
        return;
      }
    }

    v57 = 0;
    LOWORD(v58) = 0;
LABEL_52:
    v66 = LOWORD(v58);
    v67 = &v56[v57];
    v68 = &a3[v57];
    v69 = v57 - (a8 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v70 = *v67++;
      v71 = v70;
      v72 = *v68++;
      v66 = vmla_f16(v66, v72, v71);
      v69 += 4;
    }

    while (v69);
    v58 = vaddv_f16(vpadd_f16(v66, v66));
    v65 = a8 & 0xFFFFFFFFFFFFFFFCLL;
    if ((a8 & 0xFFFFFFFFFFFFFFFCLL) == a8)
    {
      goto LABEL_45;
    }

    goto LABEL_55;
  }

  do
  {
    v25 = *a3 * *a1;
    if (a8 != 1)
    {
      v25 = v25 + (a3[a4] * a1[a2]);
      if (a8 != 2)
      {
        v25 = v25 + (a3[2 * a4] * a1[2 * a2]);
      }
    }

    *a5++ = v25;
    a1 += a2;
    --a7;
  }

  while (a7);
}