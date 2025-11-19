uint64_t CAVDHevcDecoder::VAGetParams(CAVDHevcDecoder *this, int a2, unsigned int *a3)
{
  result = 0;
  v31 = *MEMORY[0x277D85DE8];
  if (a2 <= 6)
  {
    if (a2 > 2)
    {
      switch(a2)
      {
        case 3:
          v22 = *(this + 2052);
          if ((v22 & 0x80000000) == 0)
          {
            result = 0;
            v23 = *(this + 1021) + 23176 * v22;
            *(a3 + 88) = *(v23 + 3616);
            *(a3 + 2) = *(v23 + 3620);
            *(a3 + 89) = *(v23 + 22312);
            *(a3 + 32) = *(v23 + 3600);
            *(a3 + 33) = *(v23 + 3636);
            *(a3 + 34) = *(v23 + 3640);
            *a3 = *(v23 + 3608);
            a3[6] = *(v23 + 22872);
            *(a3 + 30) = *(v23 + 3604);
            return result;
          }

          return 0;
        case 4:
          result = 0;
          v6 = *(this + 931) + 1;
          goto LABEL_78;
        case 6:
          *a3 = (*(**(this + 262) + 184))(*(this + 262), *(this + 2078));
          *(a3 + 1) = (*(**(this + 262) + 192))(*(this + 262), *(this + 2078));
          a3[4] = (*(**(this + 262) + 200))(*(this + 262), *(this + 2078));
          a3[5] = (*(**(this + 262) + 208))(*(this + 262), *(this + 2078));
          v8 = (*(**(this + 262) + 224))(*(this + 262));
          result = 0;
          a3[6] = v8;
          a3[7] = 3;
          break;
      }
    }

    else
    {
      switch(a2)
      {
        case 0:
          v12 = (*(this + 1021) + 23176 * *(this + 2052));
          v13 = v12[16];
          v14 = v12[903] * v12[902];
          if (v13 >= 0x9D)
          {
            v15 = 35651584;
          }

          else
          {
            v15 = 8912896;
          }

          if (v13 >= 0x7C)
          {
            v16 = v15;
          }

          else
          {
            v16 = 2228224;
          }

          if (v13 >= 0x5E)
          {
            v17 = v16;
          }

          else
          {
            v17 = 983040;
          }

          if (v13 >= 0x5B)
          {
            v18 = v17;
          }

          else
          {
            v18 = 552960;
          }

          if (v13 >= 0x40)
          {
            v19 = v18;
          }

          else
          {
            v19 = 245760;
          }

          if (v13 >= 0x3D)
          {
            v20 = v19;
          }

          else
          {
            v20 = 122880;
          }

          if (v13 >= 0x1F)
          {
            v21 = v20;
          }

          else
          {
            v21 = 36864;
          }

          if (v14 <= v21 >> 2)
          {
            result = 0;
            v6 = 16;
          }

          else if (v14 <= v21 >> 1)
          {
            result = 0;
            v6 = 12;
          }

          else
          {
            result = 0;
            if (v14 <= (3 * v21) >> 2)
            {
              v6 = 8;
            }

            else
            {
              v6 = 6;
            }
          }

          goto LABEL_78;
        case 1:
          v24 = *(*this + 392);

          return v24(this, a3);
        case 2:
          *a3 = (*(**(this + 262) + 168))(*(this + 262));
          v7 = (*(**(this + 262) + 176))(*(this + 262));
          result = 0;
          a3[2] = v7;
          break;
      }
    }
  }

  else
  {
    if (a2 <= 21)
    {
      if (a2 != 7)
      {
        if (a2 == 8)
        {
          result = 0;
          v6 = *(this + 12);
        }

        else
        {
          if (a2 != 9)
          {
            return result;
          }

          result = 0;
          v6 = *(this + 4);
        }

        goto LABEL_78;
      }

      if (a3)
      {
        result = 0;
        v6 = *(this + 690);
        goto LABEL_78;
      }

      return 0;
    }

    if (a2 <= 60)
    {
      if (a2 != 22)
      {
        if (a2 != 60)
        {
          return result;
        }

        result = 0;
        v6 = *(this + 674);
        goto LABEL_78;
      }

      if (a3)
      {
        result = 0;
        v6 = *(this + 722);
LABEL_78:
        *a3 = v6;
        return result;
      }

      return 0;
    }

    if (a2 == 61)
    {
      v11 = *(this + 674);
      if (v11 > 0x100)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v29 = 67109120;
          v30 = 256;
          v10 = MEMORY[0x277D86220];
          goto LABEL_30;
        }

        return 308;
      }

      if (!v11)
      {
        return 0;
      }

      v25 = 0;
      v26 = (*(this + 1023) + 2356);
      do
      {
        result = 0;
        a3[v25++] = *v26;
        v26 += 590;
      }

      while (v25 < *(this + 674));
    }

    else
    {
      if (a2 != 62)
      {
        return result;
      }

      v9 = *(this + 674);
      if (v9 > 0x100)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v29 = 67109120;
          v30 = 256;
          v10 = MEMORY[0x277D86220];
LABEL_30:
          _os_log_impl(&dword_277606000, v10, OS_LOG_TYPE_DEFAULT, "AppleAVD: encrypted slices size > MAX_SLICES:%d", &v29, 8u);
          return 308;
        }

        return 308;
      }

      if (!v9)
      {
        return 0;
      }

      v27 = 0;
      v28 = *(this + 1023);
      do
      {
        result = 0;
        a3[v27++] = *(v28 + 16) - (*(v28 + 2080) >> 3);
        v28 += 2360;
      }

      while (v27 < *(this + 674));
    }
  }

  return result;
}

uint64_t AppleAVDCommandBuilder::decodeFrameFigHelper_CreateAndSubmitDecodeCMD(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v25 = 4;
  bzero(&inputStruct, 0xB58uLL);
  outputStruct = 0;
  (*(**(a1 + 8) + 96))(*(a1 + 8), 2, &v27);
  (*(**(a1 + 8) + 96))(*(a1 + 8), 3, v46);
  (*(**(a1 + 8) + 96))(*(a1 + 8), 5, v69);
  *(*(a1 + 6288) + 24) |= v69[0];
  inputStruct = v27;
  v34 = v28;
  v8 = *(a1 + 5456);
  v9 = *(a1 + 5440);
  v35 = *(a1 + 5424);
  v36 = v9;
  v10 = *(a1 + 5520);
  v11 = *(a1 + 5504);
  v39 = *(a1 + 5488);
  v40 = v11;
  v12 = *(a1 + 5472);
  v37 = v8;
  v38 = v12;
  v13 = *(a1 + 5584);
  v14 = *(a1 + 5552);
  v44 = *(a1 + 5568);
  v45 = v13;
  v15 = *(a1 + 5536);
  v41 = v10;
  v42 = v15;
  v43 = v14;
  v16 = *(a2 + 8);
  v46[27] = *(a2 + 12);
  v47 = a3;
  v48 = a4;
  v50 = *(a2 + 2120);
  v17 = *(a1 + 5892);
  v51 = *(a2 + 2128);
  v49 = v17;
  v52 = *(a2 + 2324);
  v66 = *(a2 + 2176);
  v65 = *(a2 + 2184);
  v58 = v16;
  v57 = *(a2 + 28);
  v18 = *(a2 + 2112);
  if (v18)
  {
    v54[0] = *(a2 + 2112);
    v19 = 4 * v18;
    memcpy(v59, (a2 + 64), 4 * v18);
    memcpy(v60, (a2 + 1088), v19);
  }

  else if ((*(a1 + 5408) - 1) <= 1 && (*(a1 + 6240) | 2) == 3)
  {
    (*(**(a1 + 8) + 96))(*(a1 + 8), 60, v54);
    (*(**(a1 + 8) + 96))(*(a1 + 8), 61, v59);
    (*(**(a1 + 8) + 96))(*(a1 + 8), 62, v60);
  }

  v20 = *(a2 + 44);
  v60[256] = *(a2 + 40);
  v61 = *(a2 + 48);
  v53 = v20;
  v54[1] = (*(**(a1 + 8) + 80))(*(a1 + 8), *(a2 + 20), 0);
  if (*(a2 + 2124))
  {
    v21 = 1;
  }

  else
  {
    v54[2] = (*(**(a1 + 8) + 80))(*(a1 + 8), *(a2 + 16), 1);
    v21 = *(a2 + 2124);
  }

  v55 = v21;
  v56 = *(a2 + 2344);
  PatchList = CAVDDecoder::getPatchList(*(a1 + 8));
  NumPatchRequests = CAVDDecoder::getNumPatchRequests(*(a1 + 8));
  *v63 = *(a1 + 6256);
  *&v63[12] = *(a1 + 6268);
  *(a1 + 6280) = 0;
  *(a1 + 6272) = 0;
  *(a1 + 6264) = 0;
  *(a1 + 6256) = 0;
  v67 = (*(**(a1 + 8) + 200))(*(a1 + 8));
  v46[26] = (*(**(a1 + 8) + 80))(*(a1 + 8));
  if (*(*(a1 + 8) + 2356) == 1 && !v47)
  {
    v47 = AppleAVDCommandBuilder::populateOnDemandDVAInfo(a1, &v68, *(a2 + 12));
    if (v47)
    {
      v48 = 315;
    }
  }

  v22 = IOConnectCallStructMethod(**a1, 2u, &inputStruct, 0xB58uLL, &outputStruct, &v25);
  if (v22)
  {
    v23 = v22;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "decodeFrameFigHelper_CreateAndSubmitDecodeCMD";
      v31 = 1024;
      v32 = v23;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): AppleAVDSubmitDecodeCMD failed: %d \n", buf, 0x12u);
    }
  }

  return outputStruct;
}

uint64_t CAHDec::addToPatcherList(uint64_t a1, void *a2, int a3, int a4, uint64_t a5, int a6, int a7, char a8)
{
  v64 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = *(a1 + 72);
  if (!v16)
  {
    v31 = CAVDDecoder::allocAVDMem(*(a1 + 56), (a1 + 80), 12288, 6, 1, 0);
    if (v31)
    {
      v25 = v31;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v25;
      }

      goto LABEL_25;
    }

    v16 = *(a1 + 80);
    *(a1 + 72) = v16;
    *(a1 + 68) = 256;
  }

  v18 = *(a1 + 64);
  v17 = *(a1 + 68);
  if (v18)
  {
    goto LABEL_4;
  }

  if (v17 == 256)
  {
    v18 = 0;
    goto LABEL_14;
  }

  v33 = CAVDDecoder::deallocAVDMem(*(a1 + 56), (a1 + 80));
  if (v33)
  {
    v25 = v33;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v25;
    }

    v34 = *(a1 + 72);
    v35 = *(a1 + 64);
    v36 = *(a1 + 68);
    *__src = 136315906;
    *&__src[4] = "addToPatcherList";
    *&__src[12] = 2048;
    *&__src[14] = v34;
    *&__src[22] = 1024;
    *&__src[24] = v35;
    *&__src[28] = 1024;
    *&__src[30] = v36;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: %s(): Error deallocating patch requests list, m_fwPatchRequests=%p, m_fwPatchRequestWriteIndex=%u, m_maxFwPatchRequests=%u";
LABEL_26:
    v41 = __src;
    goto LABEL_27;
  }

  v42 = CAVDDecoder::allocAVDMem(*(a1 + 56), (a1 + 80), 12288, 6, 1, 0);
  if (v42)
  {
    v25 = v42;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v25;
    }

LABEL_25:
    v43 = *(a1 + 72);
    v44 = *(a1 + 64);
    v45 = *(a1 + 68);
    *__src = 136315906;
    *&__src[4] = "addToPatcherList";
    *&__src[12] = 2048;
    *&__src[14] = v43;
    *&__src[22] = 1024;
    *&__src[24] = v44;
    *&__src[28] = 1024;
    *&__src[30] = v45;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: %s(): Error allocating patch requests list, m_fwPatchRequests=%p, m_fwPatchRequestWriteIndex=%u, m_maxFwPatchRequests=%u";
    goto LABEL_26;
  }

  v16 = *(a1 + 80);
  *(a1 + 72) = v16;
  v17 = 256;
  *(a1 + 68) = 256;
  v18 = *(a1 + 64);
LABEL_4:
  if (v18 < v17)
  {
LABEL_14:
    v25 = 0;
    v32 = v16 + 48 * v18;
    *v32 = *a2;
    *(v32 + 16) = a2[19];
    *(v32 + 24) = a3;
    *(v32 + 28) = a4;
    *(v32 + 8) = a5;
    *(v32 + 32) = a6;
    *(v32 + 36) = a7;
    *(v32 + 40) = a8;
    *(a1 + 64) = v18 + 1;
    return v25;
  }

  v19 = *(a1 + 224);
  v61 = *(a1 + 208);
  v62 = v19;
  v63 = *(a1 + 240);
  v20 = *(a1 + 160);
  v57 = *(a1 + 144);
  v58 = v20;
  v21 = *(a1 + 192);
  v59 = *(a1 + 176);
  v60 = v21;
  v22 = *(a1 + 96);
  *__src = *(a1 + 80);
  *&__src[16] = v22;
  v23 = *(a1 + 128);
  *&__src[32] = *(a1 + 112);
  v56 = v23;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  v24 = CAVDDecoder::allocAVDMem(*(a1 + 56), (a1 + 80), 48 * (v17 + 256), 6, 1, 0);
  if (v24)
  {
    v25 = v24;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 72);
      v27 = *(a1 + 64);
      v28 = *(a1 + 68);
      v47 = 136315906;
      v48 = "addToPatcherList";
      v49 = 2048;
      v50 = v26;
      v51 = 1024;
      v52 = v27;
      v53 = 1024;
      v54 = v28;
      v29 = MEMORY[0x277D86220];
      v30 = "AppleAVD: %s(): Error allocating patch requests list, m_fwPatchRequests=%p, m_fwPatchRequestWriteIndex=%u, m_maxFwPatchRequests=%u";
LABEL_22:
      v41 = &v47;
LABEL_27:
      _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, v30, v41, 0x22u);
      return v25;
    }

    return v25;
  }

  memcpy(*(a1 + 80), *__src, 48 * *(a1 + 68));
  v37 = CAVDDecoder::deallocAVDMem(*(a1 + 56), __src);
  if (!v37)
  {
    v16 = *(a1 + 80);
    *(a1 + 72) = v16;
    v18 = *(a1 + 64);
    *(a1 + 68) += 256;
    goto LABEL_14;
  }

  v25 = v37;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v38 = *(a1 + 72);
    v39 = *(a1 + 64);
    v40 = *(a1 + 68);
    v47 = 136315906;
    v48 = "addToPatcherList";
    v49 = 2048;
    v50 = v38;
    v51 = 1024;
    v52 = v39;
    v53 = 1024;
    v54 = v40;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: %s(): Error deallocating patch requests list, m_fwPatchRequests=%p, m_fwPatchRequestWriteIndex=%u, m_maxFwPatchRequests=%u";
    goto LABEL_22;
  }

  return v25;
}

int8x8_t CAVDDecoder::getDecoderAnalyticsInfo(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1 + 2701;
  if ((*(a1 + 2956) & 1) == 0)
  {
    (*(*a1 + 96))(a1, 3, v10);
    *a2 = v10[16];
    *(a1 + 2956) = 1;
  }

  *(a2 + 4) = *(a1 + 2696);
  v5 = *(v4 + 7);
  *(a2 + 16) = v5;
  *(a2 + 8) |= *(a1 + 2700);
  v5.i32[0] = *v4;
  v6 = vmovl_u8(v5).u64[0];
  v7 = vrev32_s16(v6);
  v7.i32[0] = v6.i32[0];
  v6.i32[0] = *(a2 + 9);
  v8 = vorr_s8(*&vmovl_u8(v6), v7);
  result = vuzp1_s8(v8, v8);
  *(a2 + 9) = result.i32[0];
  return result;
}

uint64_t CPBManager::CPBManager(uint64_t a1, _DWORD *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *(a1 + 112) = 0;
  *(a1 + 212) = 0;
  *(a1 + 192) = a2;
  v4 = 60000000000;
  if (!a2[962])
  {
    v4 = 10000000000;
  }

  *(a1 + 248) = v4;
  *(a1 + 256) = 0;
  v5 = MGGetBoolAnswer();
  *(a1 + 244) = v5;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 216) = 0;
  *(a1 + 218) = 0;
  *(a1 + 220) = 0;
  *(a1 + 236) = 0;
  *(a1 + 228) = 0;
  v6 = (*MEMORY[0x277D85F70] + (a2[3] * a2[2]) / a2[244]) & ~*MEMORY[0x277D85F70];
  *(a1 + 208) = v6;
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 248) / 0xF4240uLL;
    v9 = 136315906;
    v10 = "CPBManager";
    v11 = 2080;
    v12 = "internal";
    v13 = 1024;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: INFO: %s(): %s - CPBManager created! cacheSize: %d - timeLimit: %llums\n", &v9, 0x26u);
  }

  return a1;
}

uint64_t CPBManager::initCache(CPBManager *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pthread_mutex_init(this, 0);
  if (v2)
  {
    v3 = v2;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v9 = 136315138;
    v10 = "initCache";
    v4 = MEMORY[0x277D86220];
    v5 = "AppleAVD: %s(): Error initializing mutex";
LABEL_7:
    _os_log_impl(&dword_277606000, v4, OS_LOG_TYPE_DEFAULT, v5, &v9, 0xCu);
    goto LABEL_8;
  }

  v6 = pthread_cond_init((this + 64), 0);
  if (v6)
  {
    v3 = v6;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v9 = 136315138;
    v10 = "initCache";
    v4 = MEMORY[0x277D86220];
    v5 = "AppleAVD: %s(): Error initializing m_bf_cond condition variable";
    goto LABEL_7;
  }

  v8 = malloc_type_malloc(24 * *(*(this + 24) + 980), 0x101004054D47846uLL);
  *(this + 25) = v8;
  if (v8)
  {
    bzero(v8, 24 * *(*(this + 24) + 980));
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "initCache";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Error allocating CPBManager cache", &v9, 0xCu);
  }

  v3 = 0xFFFFFFFFLL;
LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "initCache";
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", &v9, 0x12u);
  }

  return v3;
}

uint64_t CAHDecCatnipHevc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 6316);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 7);
  *(this + 11808) = a2;
  return this;
}

uint64_t HEVC_RBSP::parseVPS(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v110 = *MEMORY[0x277D85DE8];
  v7 = a2[1095];
  v8 = *(a1 + 104);
  *(a1 + 164) += 4;
  HEVC_RBSP::flush_bits(a1, 4);
  v9 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  v10 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  v11 = *(a1 + 104);
  *(a1 + 164) += 6;
  v12 = v11 >> 58;
  HEVC_RBSP::flush_bits(a1, 6);
  if (a4)
  {
    v13 = a2[3];
    if (v13 != v12)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_68;
      }

      *buf = 136315650;
      v105 = "parseVPS";
      v106 = 1024;
      v107 = v12;
      v108 = 1024;
      v109 = v13;
      v60 = MEMORY[0x277D86220];
      v61 = "AppleAVD: %s: ERROR: layers do not match! %d, %d\n";
      goto LABEL_67;
    }
  }

  v103 = v7;
  HEVCReleaseVPS(a2);
  bzero(a2, 0x1168uLL);
  *a2 = v8 >> 60;
  *(a2 + 8) = v9 < 0;
  *(a2 + 9) = v10 < 0;
  a2[3] = v12;
  v14 = *(a1 + 104);
  *(a1 + 164) += 3;
  v15 = v14 >> 61;
  HEVC_RBSP::flush_bits(a1, 3);
  a2[4] = v15;
  v16 = *(a1 + 104);
  ++*(a1 + 164);
  v17 = v16 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 20) = v17;
  LODWORD(v17) = *(a1 + 110);
  *(a1 + 164) += 16;
  HEVC_RBSP::flush_bits(a1, 16);
  a2[6] = v17;
  HEVC_RBSP::parseProfileTierLevel(a1, (a2 + 7), 1, a2[4]);
  v18 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 3604) = v18 < 0;
  if (v18 < 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2[4];
  }

  v101 = a2 + 1024;
  v20 = a2 + 902;
  v21 = a2 + 966;
  v22 = a2 + 1030;
  do
  {
    v23 = *(a1 + 104);
    if ((v23 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v30 = 0;
    }

    else
    {
      v24 = HIDWORD(v23);
      v25 = -32;
      do
      {
        LODWORD(v24) = 2 * v24;
        v26 = v25 + 1;
        if ((v24 & 0x80000000) != 0)
        {
          break;
        }

        v27 = v25 + 32;
        ++v25;
      }

      while (v27 < 0x1E);
      *(a1 + 164) += v26 + 33;
      HEVC_RBSP::flush_bits(a1, v26 + 33);
      v28 = *(a1 + 108);
      *(a1 + 164) += v26 + 32;
      v29 = v28 >> -v26;
      HEVC_RBSP::flush_bits(a1, v26 + 32);
      v30 = v29 + ~(-2 << (v26 + 31));
    }

    v20[v19] = v30;
    v31 = *(a1 + 104);
    if ((v31 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v38 = 0;
    }

    else
    {
      v32 = HIDWORD(v31);
      v33 = -32;
      do
      {
        LODWORD(v32) = 2 * v32;
        v34 = v33 + 1;
        if ((v32 & 0x80000000) != 0)
        {
          break;
        }

        v35 = v33 + 32;
        ++v33;
      }

      while (v35 < 0x1E);
      *(a1 + 164) += v34 + 33;
      HEVC_RBSP::flush_bits(a1, v34 + 33);
      v36 = *(a1 + 108);
      *(a1 + 164) += v34 + 32;
      v37 = v36 >> -v34;
      HEVC_RBSP::flush_bits(a1, v34 + 32);
      v38 = v37 + ~(-2 << (v34 + 31));
    }

    v21[v19] = v38;
    v39 = *(a1 + 104);
    if ((v39 & 0x8000000000000000) != 0)
    {
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      v46 = 0;
    }

    else
    {
      v40 = HIDWORD(v39);
      v41 = -32;
      do
      {
        LODWORD(v40) = 2 * v40;
        v42 = v41 + 1;
        if ((v40 & 0x80000000) != 0)
        {
          break;
        }

        v43 = v41 + 32;
        ++v41;
      }

      while (v43 < 0x1E);
      *(a1 + 164) += v42 + 33;
      HEVC_RBSP::flush_bits(a1, v42 + 33);
      v44 = *(a1 + 108);
      *(a1 + 164) += v42 + 32;
      v45 = v44 >> -v42;
      HEVC_RBSP::flush_bits(a1, v42 + 32);
      v46 = v45 + ~(-2 << (v42 + 31));
    }

    v22[v19++] = v46;
    v47 = a2[4];
  }

  while (v19 <= v47);
  if (!*(a2 + 3604) && v47)
  {
    v48 = a2[4];
    v49 = a2 + 902;
    do
    {
      *v49 = v20[v47];
      v49[64] = v21[v47];
      v49[128] = v22[v47];
      ++v49;
      --v48;
    }

    while (v48);
  }

  v50 = *(a1 + 104);
  *(a1 + 164) += 6;
  v51 = v50 >> 58;
  HEVC_RBSP::flush_bits(a1, 6);
  a2[1094] = v51;
  v52 = *(a1 + 104);
  if ((v52 & 0x8000000000000000) == 0)
  {
    v53 = HIDWORD(v52);
    v54 = -32;
    do
    {
      LODWORD(v53) = 2 * v53;
      v55 = v54 + 1;
      if ((v53 & 0x80000000) != 0)
      {
        break;
      }

      v56 = v54 + 32;
      ++v54;
    }

    while (v56 < 0x1E);
    *(a1 + 164) += v55 + 33;
    HEVC_RBSP::flush_bits(a1, v55 + 33);
    v57 = *(a1 + 108);
    *(a1 + 164) += v55 + 32;
    v58 = v57 >> -v55;
    HEVC_RBSP::flush_bits(a1, v55 + 32);
    v59 = v58 + ~(-2 << (v55 + 31));
    a2[1095] = v59;
    if (!a4 || v103 == v59)
    {
      if (v59 > 0x3FF)
      {
        goto LABEL_68;
      }

      goto LABEL_42;
    }

    goto LABEL_40;
  }

  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  v59 = 0;
  a2[1095] = 0;
  if (a4 && v103)
  {
LABEL_40:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_68;
    }

    *buf = 136315650;
    v105 = "parseVPS";
    v106 = 1024;
    v107 = v103;
    v108 = 1024;
    v109 = v59;
    v60 = MEMORY[0x277D86220];
    v61 = "AppleAVD: %s: ERROR: layer sets do not match! %d, %d\n";
LABEL_67:
    _os_log_impl(&dword_277606000, v60, OS_LOG_TYPE_DEFAULT, v61, buf, 0x18u);
    goto LABEL_68;
  }

LABEL_42:
  v62 = malloc_type_calloc(8uLL, v59 + 1, 0x10040436913F5uLL);
  *(a2 + 548) = v62;
  if (v62)
  {
    v63 = 0;
    v64 = a2[1095];
    if ((v64 + 1) > 1)
    {
      v65 = v64 + 1;
    }

    else
    {
      v65 = 1;
    }

    v66 = 8 * v65;
    do
    {
      *(*(a2 + 548) + v63) = 0;
      v63 += 8;
    }

    while (v66 != v63);
    v67 = 0;
    do
    {
      *(*(a2 + 548) + 8 * v67) = malloc_type_malloc((a2[1094] + 1), 0x100004077774924uLL);
      v68 = *(*(a2 + 548) + 8 * v67);
      if (!v68)
      {
        goto LABEL_68;
      }

      bzero(v68, a2[1094] + 1);
      ++v67;
      v69 = a2[1095];
    }

    while (v67 <= v69);
    if (v69)
    {
      v70 = 1;
      do
      {
        v71 = 0;
        v72 = v70;
        do
        {
          v73 = *(a1 + 104);
          ++*(a1 + 164);
          v74 = v73 >> 63;
          HEVC_RBSP::flush_bits(a1, 1);
          *(*(*(a2 + 548) + 8 * v72) + v71++) = v74;
        }

        while (v71 <= a2[1094]);
        v70 = v72 + 1;
      }

      while ((v72 + 1) <= a2[1095]);
    }

    v75 = *(a1 + 104);
    ++*(a1 + 164);
    HEVC_RBSP::flush_bits(a1, 1);
    v76 = a2 + 1024;
    *(a2 + 4392) = v75 < 0;
    if (v75 < 0)
    {
      v81 = *(a1 + 108);
      *(a1 + 164) += 32;
      HEVC_RBSP::flush_bits(a1, 32);
      a2[1099] = v81;
      v82 = *(a1 + 108);
      *(a1 + 164) += 32;
      HEVC_RBSP::flush_bits(a1, 32);
      a2[1100] = v82;
      v83 = *(a1 + 104);
      ++*(a1 + 164);
      HEVC_RBSP::flush_bits(a1, 1);
      *(a2 + 4404) = v83 < 0;
      if (v83 < 0)
      {
        a2[1102] = HEVC_RBSP::ue_v(a1);
      }

      v84 = HEVC_RBSP::ue_v(a1);
      a2[1103] = v84;
      if (v84 > 0x400)
      {
        goto LABEL_68;
      }

      v85 = malloc_type_malloc(2 * v84, 0x1000040BDFB0063uLL);
      *(a2 + 552) = v85;
      if (!v85)
      {
        goto LABEL_68;
      }

      v86 = malloc_type_malloc(a2[1103], 0x100004077774924uLL);
      *(a2 + 553) = v86;
      if (!v86)
      {
        goto LABEL_68;
      }

      v87 = malloc_type_calloc(0x1A8uLL, a2[1103], 0x1020040949C21A2uLL);
      *(a2 + 554) = v87;
      if (!v87)
      {
        goto LABEL_68;
      }

      v76 = a2 + 1024;
      if (a2[1103])
      {
        **(a2 + 553) = 1;
        if (a2[1103])
        {
          v88 = 0;
          do
          {
            v89 = *(a1 + 104);
            if ((v89 & 0x8000000000000000) != 0)
            {
              ++*(a1 + 164);
              HEVC_RBSP::flush_bits(a1, 1);
              LOWORD(v96) = 0;
            }

            else
            {
              v90 = HIDWORD(v89);
              v91 = -32;
              do
              {
                LODWORD(v90) = 2 * v90;
                v92 = v91 + 1;
                if ((v90 & 0x80000000) != 0)
                {
                  break;
                }

                v93 = v91 + 32;
                ++v91;
              }

              while (v93 < 0x1E);
              *(a1 + 164) += v92 + 33;
              HEVC_RBSP::flush_bits(a1, v92 + 33);
              v94 = *(a1 + 108);
              *(a1 + 164) += v92 + 32;
              v95 = v94 >> -v92;
              HEVC_RBSP::flush_bits(a1, v92 + 32);
              v96 = v95 + ~(-2 << (v92 + 31));
            }

            *(*(a2 + 552) + 2 * v88) = v96;
            if (v88)
            {
              v97 = *(a1 + 104);
              ++*(a1 + 164);
              v98 = v97 >> 63;
              HEVC_RBSP::flush_bits(a1, 1);
              *(*(a2 + 553) + v88) = v98;
            }

            if ((HEVC_RBSP::parseHRD(a1, *(a2 + 554) + 424 * v88, *(*(a2 + 553) + v88), a2[4]) & 1) == 0)
            {
              goto LABEL_68;
            }

            ++v88;
            v76 = a2 + 1024;
          }

          while (v88 < a2[1103]);
        }
      }
    }

    v77 = *(a1 + 104);
    ++*(a1 + 164);
    HEVC_RBSP::flush_bits(a1, 1);
    *(v76 + 344) = v77 < 0;
    if (a3)
    {
      if ((v77 & 0x8000000000000000) == 0 && a2[3])
      {
        goto LABEL_68;
      }

      v78 = malloc_type_calloc(0xF70uLL, 1uLL, 0x10B00403C17740EuLL);
      *(a2 + 556) = v78;
      if (!v78)
      {
        goto LABEL_68;
      }

      bzero(v78, 0xF70uLL);
      if (*(a2 + 4440))
      {
        while ((*(a1 + 112) & 7) != 0)
        {
          v79 = *(a1 + 104);
          ++*(a1 + 164);
          HEVC_RBSP::flush_bits(a1, 1);
          if ((v79 & 0x8000000000000000) == 0)
          {
            goto LABEL_68;
          }
        }

        if (HEVC_RBSP::parseVPSextension(a1, a2))
        {
          goto LABEL_68;
        }

        for (; HEVC_RBSP::more_rbsp_data(a1); *(v101 + 345) = v100)
        {
          v99 = *(a1 + 104);
          ++*(a1 + 164);
          v100 = v99 >> 63;
          HEVC_RBSP::flush_bits(a1, 1);
        }
      }
    }

    HEVC_RBSP::byte_alignment(a1);
    return 1;
  }

LABEL_68:
  HEVCReleaseVPS(a2);
  result = 0;
  *a2 = -1;
  return result;
}

uint64_t HEVC_RBSP::parseProfileTierLevel(HEVC_RBSP *this, uint64_t a2, int a3, unsigned int a4)
{
  if (a3)
  {
    v7 = *(this + 13);
    *(this + 41) += 2;
    v8 = v7 >> 62;
    HEVC_RBSP::flush_bits(this, 2);
    *a2 = v8;
    v9 = *(this + 13);
    ++*(this + 41);
    v10 = v9 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(a2 + 4) = v10;
    v11 = *(this + 13);
    *(this + 41) += 5;
    v12 = v11 >> 59;
    HEVC_RBSP::flush_bits(this, 5);
    v13 = 0;
    *(a2 + 8) = v12;
    do
    {
      v14 = *(this + 13);
      ++*(this + 41);
      v15 = v14 >> 63;
      HEVC_RBSP::flush_bits(this, 1);
      *(a2 + 12 + v13++) = v15;
    }

    while (v13 != 32);
    v16 = *(this + 13);
    ++*(this + 41);
    v17 = v16 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(a2 + 44) = v17;
    v18 = *(this + 13);
    ++*(this + 41);
    v19 = v18 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(a2 + 45) = v19;
    v20 = *(this + 13);
    ++*(this + 41);
    v21 = v20 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(a2 + 46) = v21;
    v22 = *(this + 13);
    ++*(this + 41);
    v23 = v22 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(a2 + 47) = v23;
    LODWORD(v23) = *(this + 27);
    *(this + 41) += 32;
    HEVC_RBSP::flush_bits(this, 32);
    *(a2 + 48) = v23;
    v24 = *(this + 13);
    *(this + 41) += 12;
    v25 = v24 >> 52;
    HEVC_RBSP::flush_bits(this, 12);
    *(a2 + 48) = v25;
  }

  v26 = *(this + 111);
  *(this + 41) += 8;
  result = HEVC_RBSP::flush_bits(this, 8);
  *(a2 + 52) = v26;
  if (a4)
  {
    v28 = a2 + 56;
    v29 = a2 + 120;
    v30 = a4;
    v31 = a4;
    v32 = (a2 + 120);
    do
    {
      v33 = *(this + 13);
      ++*(this + 41);
      v34 = v33 >> 63;
      HEVC_RBSP::flush_bits(this, 1);
      *(v32 - 64) = v34;
      v35 = *(this + 13);
      ++*(this + 41);
      v36 = v35 >> 63;
      result = HEVC_RBSP::flush_bits(this, 1);
      *v32++ = v36;
      --v31;
    }

    while (v31);
    if (a4 <= 7)
    {
      v37 = a4 - 8;
      do
      {
        *(this + 41) += 2;
        result = HEVC_RBSP::flush_bits(this, 2);
      }

      while (!__CFADD__(v37++, 1));
    }

    v39 = 0;
    v68 = a2 + 440;
    v69 = a2 + 184;
    v40 = a2 + 760;
    v66 = a2 + 2808;
    v67 = a2 + 504;
    v64 = a2 + 2936;
    v65 = a2 + 2872;
    v63 = a2 + 3000;
    v41 = a2 + 3064;
    v42 = a2 + 3320;
    do
    {
      if (*(v28 + v39))
      {
        v43 = *(this + 13);
        *(this + 41) += 2;
        v44 = v43 >> 62;
        HEVC_RBSP::flush_bits(this, 2);
        *(v69 + 4 * v39) = v44;
        v45 = *(this + 13);
        ++*(this + 41);
        v46 = v45 >> 63;
        HEVC_RBSP::flush_bits(this, 1);
        *(v68 + v39) = v46;
        v47 = *(this + 13);
        *(this + 41) += 5;
        v48 = v47 >> 59;
        HEVC_RBSP::flush_bits(this, 5);
        v49 = 0;
        *(v67 + 4 * v39) = v48;
        do
        {
          v50 = *(this + 13);
          ++*(this + 41);
          v51 = v50 >> 63;
          HEVC_RBSP::flush_bits(this, 1);
          *(v40 + v49++) = v51;
        }

        while (v49 != 32);
        v52 = *(this + 13);
        ++*(this + 41);
        v53 = v52 >> 63;
        HEVC_RBSP::flush_bits(this, 1);
        *(v66 + v39) = v53;
        v54 = *(this + 13);
        ++*(this + 41);
        v55 = v54 >> 63;
        HEVC_RBSP::flush_bits(this, 1);
        *(v65 + v39) = v55;
        v56 = *(this + 13);
        ++*(this + 41);
        v57 = v56 >> 63;
        HEVC_RBSP::flush_bits(this, 1);
        *(v64 + v39) = v57;
        v58 = *(this + 13);
        ++*(this + 41);
        v59 = v58 >> 63;
        HEVC_RBSP::flush_bits(this, 1);
        *(v63 + v39) = v59;
        LODWORD(v59) = *(this + 27);
        *(this + 41) += 32;
        HEVC_RBSP::flush_bits(this, 32);
        *(v41 + 4 * v39) = v59;
        v60 = *(this + 13);
        *(this + 41) += 12;
        v61 = v60 >> 52;
        result = HEVC_RBSP::flush_bits(this, 12);
        *(v41 + 4 * v39) = v61;
      }

      if (*(v29 + v39))
      {
        v62 = *(this + 111);
        *(this + 41) += 8;
        result = HEVC_RBSP::flush_bits(this, 8);
        *(v42 + 4 * v39) = v62;
      }

      ++v39;
      v40 += 32;
    }

    while (v39 != v30);
  }

  return result;
}

void HEVCReleaseSPS(uint64_t a1)
{
  if (a1 && *(a1 + 3588) != -1 && *(a1 + 22286) && *(a1 + 22360) && *(a1 + 22380))
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 22792);
      if (v3 && *(a1 + 22385))
      {
        HEVCReleaseSubLayerHRD((v3 + 48 * v2), *(a1 + 22386));
      }

      v4 = *(a1 + 22784);
      if (v4)
      {
        if (*(a1 + 22384))
        {
          HEVCReleaseSubLayerHRD((v4 + 48 * v2), *(a1 + 22386));
        }
      }

      ++v2;
    }

    while (v2 <= *(a1 + 4));
    free(*(a1 + 22784));
    *(a1 + 22784) = 0;
    free(*(a1 + 22792));
    *(a1 + 22792) = 0;
  }
}

void HEVC_RBSP::setDefaultScalingListData(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  *(a2 + 6196) = 1;
  *(a2 + 6192) = 0;
  v18 = a2 + 6144;
  do
  {
    v4 = 0;
    v5 = 16 << (2 * v3);
    if (v5 >= 0x40)
    {
      v5 = 64;
    }

    v6 = 32;
    if (!v3)
    {
      v6 = 8;
    }

    v7 = *(a1 + v6);
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    if (v3 == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 6;
    }

    do
    {
      if (v3)
      {
        if (v3 == 1 || (*(v18 + 24 * (v3 - 2) + 4 * v4) = 16, v3 != 3))
        {
          v10 = v4 < 3;
        }

        else
        {
          v10 = v4 == 0;
        }

        v11 = !v10;
        v12 = &defaultInterScalingList8x8;
        if (!v11)
        {
          v12 = &defaultIntraScalingList8x8;
        }

        v13 = v8;
        v14 = v7;
        do
        {
          v16 = *v12++;
          v15 = v16;
          v17 = *v14++;
          *(a2 + 1536 * v3 + (v4 << 8) + 4 * v17) = v15;
          --v13;
        }

        while (v13);
      }

      else
      {
        memset_pattern16((a2 + (v4 << 8)), &unk_27775DC60, (4 * v8));
      }

      ++v4;
    }

    while (v4 != v9);
    ++v3;
  }

  while (v3 != 4);
}

void CAVDHevcDecoder::patchSps(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 10650))
  {
    *(a2 + 10652) = 0x700000007;
    *(a2 + 10664) = 2;
  }
}

uint64_t HEVC_RBSP::parsePPS(int8x8_t *this, uint64_t a2, uint64_t a3)
{
  v143 = *MEMORY[0x277D85DE8];
  v6 = this[13];
  if ((*&v6 & 0x8000000000000000) != 0)
  {
    ++this[20].i32[1];
    HEVC_RBSP::flush_bits(this, 1);
    v13 = 0;
  }

  else
  {
    v7 = HIDWORD(*&v6);
    v8 = -32;
    do
    {
      LODWORD(v7) = 2 * v7;
      v9 = v8 + 1;
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      v10 = v8 + 32;
      ++v8;
    }

    while (v10 < 0x1E);
    this[20].i32[1] += v9 + 33;
    HEVC_RBSP::flush_bits(this, v9 + 33);
    v11 = this[13].u32[1];
    this[20].i32[1] += v9 + 32;
    v12 = v11 >> -v9;
    HEVC_RBSP::flush_bits(this, v9 + 32);
    v13 = v12 + ~(-2 << (v9 + 31));
    if (v13 >= 0x40)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v132 = 136315394;
        *v133 = "int32_t HEVC_RBSP::parsePPS(hevc_picture_parameter_set_t *, hevc_sequence_parameter_set_t *)";
        *&v133[8] = 1024;
        v134 = v13;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s out of range PPS id %d", &v132, 0x12u);
      }

      return 0xFFFFFFFFLL;
    }
  }

  v14 = (a2 + 9856 * v13);
  HEVCReleasePPS(v14);
  bzero(v14, 0x2680uLL);
  *v14 = v13;
  v15 = this[13];
  if ((*&v15 & 0x8000000000000000) != 0)
  {
    ++this[20].i32[1];
    HEVC_RBSP::flush_bits(this, 1);
    v22 = 0;
    goto LABEL_17;
  }

  v16 = HIDWORD(*&v15);
  v17 = -32;
  do
  {
    LODWORD(v16) = 2 * v16;
    v18 = v17 + 1;
    if ((v16 & 0x80000000) != 0)
    {
      break;
    }

    v19 = v17 + 32;
    ++v17;
  }

  while (v19 < 0x1E);
  this[20].i32[1] += v18 + 33;
  HEVC_RBSP::flush_bits(this, v18 + 33);
  v20 = this[13].u32[1];
  this[20].i32[1] += v18 + 32;
  v21 = v20 >> -v18;
  HEVC_RBSP::flush_bits(this, v18 + 32);
  v22 = v21 + ~(-2 << (v18 + 31));
  if (v22 < 0x10)
  {
LABEL_17:
    v14[1] = v22;
    v27 = this[13];
    ++this[20].i32[1];
    v28 = *&v27 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 8) = v28;
    v29 = this[13];
    ++this[20].i32[1];
    v30 = *&v29 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 9) = v30;
    v31 = this[13];
    this[20].i32[1] += 3;
    v32 = *&v31 >> 61;
    HEVC_RBSP::flush_bits(this, 3);
    v14[3] = v32;
    v33 = this[13];
    ++this[20].i32[1];
    v34 = *&v33 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 16) = v34;
    v35 = this[13];
    ++this[20].i32[1];
    v36 = *&v35 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 17) = v36;
    v37 = this[13];
    if ((*&v37 & 0x8000000000000000) != 0)
    {
      ++this[20].i32[1];
      HEVC_RBSP::flush_bits(this, 1);
      v14[5] = 0;
    }

    else
    {
      v38 = HIDWORD(*&v37);
      v39 = -32;
      do
      {
        LODWORD(v38) = 2 * v38;
        v40 = v39 + 1;
        if ((v38 & 0x80000000) != 0)
        {
          break;
        }

        v41 = v39 + 32;
        ++v39;
      }

      while (v41 < 0x1E);
      this[20].i32[1] += v40 + 33;
      HEVC_RBSP::flush_bits(this, v40 + 33);
      v42 = this[13].u32[1];
      this[20].i32[1] += v40 + 32;
      v43 = v42 >> -v40;
      HEVC_RBSP::flush_bits(this, v40 + 32);
      v44 = v43 + ~(-2 << (v40 + 31));
      v14[5] = v44;
      if (v44 >= 0xF)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_106;
        }

        v132 = 67109120;
        *v133 = v44;
        v24 = MEMORY[0x277D86220];
        v25 = "AppleAVD: pps->num_ref_idx_l0_default_active_minus1 > HEVC_MAX_REF_INDEX_FOR_RPL, is %d";
LABEL_32:
        v26 = 8;
        goto LABEL_105;
      }
    }

    v45 = this[13];
    if ((*&v45 & 0x8000000000000000) != 0)
    {
      ++this[20].i32[1];
      HEVC_RBSP::flush_bits(this, 1);
      v14[6] = 0;
    }

    else
    {
      v46 = HIDWORD(*&v45);
      v47 = -32;
      do
      {
        LODWORD(v46) = 2 * v46;
        v48 = v47 + 1;
        if ((v46 & 0x80000000) != 0)
        {
          break;
        }

        v49 = v47 + 32;
        ++v47;
      }

      while (v49 < 0x1E);
      this[20].i32[1] += v48 + 33;
      HEVC_RBSP::flush_bits(this, v48 + 33);
      v50 = this[13].u32[1];
      this[20].i32[1] += v48 + 32;
      v51 = v50 >> -v48;
      HEVC_RBSP::flush_bits(this, v48 + 32);
      v52 = v51 + ~(-2 << (v48 + 31));
      v14[6] = v52;
      if (v52 >= 0xF)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_106;
        }

        v132 = 67109120;
        *v133 = v52;
        v24 = MEMORY[0x277D86220];
        v25 = "AppleAVD: pps->num_ref_idx_l1_default_active_minus1 > HEVC_MAX_REF_INDEX_FOR_RPL, is %d";
        goto LABEL_32;
      }
    }

    v53 = (a3 + 23176 * v22);
    v54 = this[13];
    if ((*&v54 & 0x8000000000000000) != 0)
    {
      ++this[20].i32[1];
      HEVC_RBSP::flush_bits(this, 1);
      v61 = 0;
    }

    else
    {
      v55 = HIDWORD(*&v54);
      v56 = -32;
      do
      {
        LODWORD(v55) = 2 * v55;
        v57 = v56 + 1;
        if ((v55 & 0x80000000) != 0)
        {
          break;
        }

        v58 = v56 + 32;
        ++v56;
      }

      while (v58 < 0x1E);
      this[20].i32[1] += v57 + 33;
      HEVC_RBSP::flush_bits(this, v57 + 33);
      v59 = this[13].u32[1];
      this[20].i32[1] += v57 + 32;
      v60 = v59 >> -v57;
      HEVC_RBSP::flush_bits(this, v57 + 32);
      v61 = v60 + ~(-2 << (v57 + 31));
    }

    v62 = (-((v61 & 1) == 0) ^ ((v61 + 1) >> 1)) + ((v61 & 1) == 0);
    v14[7] = v62;
    v63 = -6 * v53[909] - 26;
    if (v62 < v63 || v62 >= 26)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_106;
      }

      v132 = 136316418;
      *v133 = "parsePPS";
      *&v133[8] = 1024;
      v134 = 3225;
      v135 = 2080;
      v136 = "pps->init_qp_minus26";
      v137 = 1024;
      v138 = v62;
      v139 = 1024;
      v140 = v63;
      v141 = 1024;
      v142 = 25;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
LABEL_104:
      v26 = 46;
      goto LABEL_105;
    }

    v65 = this[13];
    ++this[20].i32[1];
    v66 = *&v65 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 32) = v66;
    v67 = this[13];
    ++this[20].i32[1];
    v68 = *&v67 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 33) = v68;
    v69 = this[13];
    ++this[20].i32[1];
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 34) = v69 < 0;
    if (v69 < 0)
    {
      v14[9] = HEVC_RBSP::ue_v(this);
    }

    v70 = this[13];
    if ((*&v70 & 0x8000000000000000) != 0)
    {
      ++this[20].i32[1];
      HEVC_RBSP::flush_bits(this, 1);
      v77 = 0;
    }

    else
    {
      v71 = HIDWORD(*&v70);
      v72 = -32;
      do
      {
        LODWORD(v71) = 2 * v71;
        v73 = v72 + 1;
        if ((v71 & 0x80000000) != 0)
        {
          break;
        }

        v74 = v72 + 32;
        ++v72;
      }

      while (v74 < 0x1E);
      this[20].i32[1] += v73 + 33;
      HEVC_RBSP::flush_bits(this, v73 + 33);
      v75 = this[13].u32[1];
      this[20].i32[1] += v73 + 32;
      v76 = v75 >> -v73;
      HEVC_RBSP::flush_bits(this, v73 + 32);
      v77 = v76 + ~(-2 << (v73 + 31));
    }

    v78 = (-((v77 & 1) == 0) ^ ((v77 + 1) >> 1)) + ((v77 & 1) == 0);
    v14[10] = v78;
    if (v78 - 13 <= 0xFFFFFFE6)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_106;
      }

      v132 = 136316418;
      *v133 = "parsePPS";
      *&v133[8] = 1024;
      v134 = 3236;
      v135 = 2080;
      v136 = "pps->pps_cb_qp_offset";
      v137 = 1024;
      v138 = v78;
      v139 = 1024;
      v140 = -12;
      v141 = 1024;
      v142 = 12;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_104;
    }

    v79 = HEVC_RBSP::se_v(this);
    v14[11] = v79;
    if (v79 - 13 <= 0xFFFFFFE6)
    {
      v80 = v79;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_106;
      }

      v132 = 136316418;
      *v133 = "parsePPS";
      *&v133[8] = 1024;
      v134 = 3238;
      v135 = 2080;
      v136 = "pps->pps_cr_qp_offset";
      v137 = 1024;
      v138 = v80;
      v139 = 1024;
      v140 = -12;
      v141 = 1024;
      v142 = 12;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_104;
    }

    v81 = this[13];
    ++this[20].i32[1];
    v82 = *&v81 >> 63;
    LOBYTE(v83) = 1;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 48) = v82;
    v84 = this[13];
    ++this[20].i32[1];
    v85 = *&v84 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 49) = v85;
    v86 = this[13];
    ++this[20].i32[1];
    v87 = *&v86 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 50) = v87;
    v88 = this[13];
    ++this[20].i32[1];
    v89 = *&v88 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 51) = v89;
    v90 = this[13];
    ++this[20].i32[1];
    v91 = *&v90 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 52) = v91;
    v92 = this[13];
    ++this[20].i32[1];
    v93 = *&v92 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 53) = v93;
    if (*(v14 + 52))
    {
      v14[14] = HEVC_RBSP::ue_v(this);
      v94 = HEVC_RBSP::ue_v(this);
      v14[15] = v94;
      v95 = v14[14];
      v96 = v53[5720] - 1;
      if (v95 > v96)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_106;
        }

        v132 = 136316418;
        *v133 = "parsePPS";
        *&v133[8] = 1024;
        v134 = 3249;
        v135 = 2080;
        v136 = "pps->num_tile_columns_minus1";
        v137 = 1024;
        v138 = v95;
        v139 = 1024;
        v140 = 0;
        v141 = 1024;
        v142 = v96;
        v24 = MEMORY[0x277D86220];
        v25 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_104;
      }

      v97 = v94;
      v98 = v53[5722] - 1;
      if (v94 > v98)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_106;
        }

        v132 = 136316418;
        *v133 = "parsePPS";
        *&v133[8] = 1024;
        v134 = 3250;
        v135 = 2080;
        v136 = "pps->num_tile_rows_minus1";
        v137 = 1024;
        v138 = v97;
        v139 = 1024;
        v140 = 0;
        v141 = 1024;
        v142 = v98;
        v24 = MEMORY[0x277D86220];
        v25 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_104;
      }

      if (v95 > 0x13 || v94 >= 0x16)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v132 = 67109376;
          *v133 = v95;
          *&v133[4] = 1024;
          *&v133[6] = v97;
          v24 = MEMORY[0x277D86220];
          v25 = "AppleAVD: value out of range: num_tile_columns_minus1 %d num_tile_rows_minus1 %d";
          v26 = 14;
          goto LABEL_105;
        }

        goto LABEL_106;
      }

      v99 = this[13];
      ++this[20].i32[1];
      HEVC_RBSP::flush_bits(this, 1);
      *(v14 + 64) = v99 < 0;
      v100 = a3 + 23176 * v14[1];
      if ((v99 & 0x8000000000000000) == 0)
      {
        if (v14[14])
        {
          v101 = 0;
          do
          {
            v14[v101++ + 17] = HEVC_RBSP::ue_v(this);
          }

          while (v101 < v14[14]);
        }

        if (v14[15])
        {
          v102 = 0;
          do
          {
            v14[v102++ + 37] = HEVC_RBSP::ue_v(this);
          }

          while (v102 < v14[15]);
        }
      }

      calcTilePositions(v14, v100);
      v103 = this[13];
      ++this[20].i32[1];
      v83 = *&v103 >> 63;
      HEVC_RBSP::flush_bits(this, 1);
    }

    *(v14 + 236) = v83;
    v104 = this[13];
    ++this[20].i32[1];
    v105 = *&v104 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 237) = v105;
    v106 = this[13];
    ++this[20].i32[1];
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 238) = v106 < 0;
    *(v14 + 239) = 0;
    v14[61] = 0;
    v14[62] = 0;
    if (v106 < 0)
    {
      v113 = this[13];
      ++this[20].i32[1];
      v114 = *&v113 >> 63;
      HEVC_RBSP::flush_bits(this, 1);
      *(v14 + 239) = v114;
      v115 = this[13];
      ++this[20].i32[1];
      HEVC_RBSP::flush_bits(this, 1);
      *(v14 + 240) = v115 < 0;
      if ((v115 & 0x8000000000000000) == 0)
      {
        v116 = HEVC_RBSP::se_v(this);
        v14[61] = v116;
        if (v116 - 7 <= 0xFFFFFFF2)
        {
          v117 = v116;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_106;
          }

          v132 = 136316418;
          *v133 = "parsePPS";
          *&v133[8] = 1024;
          v134 = 3297;
          v135 = 2080;
          v136 = "pps->pps_beta_offset_div2";
          v137 = 1024;
          v138 = v117;
          v139 = 1024;
          v140 = -6;
          v141 = 1024;
          v142 = 6;
          v24 = MEMORY[0x277D86220];
          v25 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_104;
        }

        v129 = HEVC_RBSP::se_v(this);
        v14[62] = v129;
        if (v129 - 7 <= 0xFFFFFFF2)
        {
          v130 = v129;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_106;
          }

          v132 = 136316418;
          *v133 = "parsePPS";
          *&v133[8] = 1024;
          v134 = 3300;
          v135 = 2080;
          v136 = "pps->pps_tc_offset_div2";
          v137 = 1024;
          v138 = v130;
          v139 = 1024;
          v140 = -6;
          v141 = 1024;
          v142 = 6;
          v24 = MEMORY[0x277D86220];
          v25 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_104;
        }
      }
    }

    v107 = this[13];
    ++this[20].i32[1];
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 252) = v107 < 0;
    if (v107 < 0 && !HEVC_RBSP::parseScalingListData(this, (v14 + 64)))
    {
      return 0xFFFFFFFFLL;
    }

    v108 = this[13];
    ++this[20].i32[1];
    v109 = *&v108 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 6456) = v109;
    v110 = HEVC_RBSP::ue_v(this);
    v14[1615] = v110;
    v111 = v53[5716] - 2;
    if (v110 > v111)
    {
      v112 = v110;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_106;
      }

      v132 = 136316418;
      *v133 = "parsePPS";
      *&v133[8] = 1024;
      v134 = 3315;
      v135 = 2080;
      v136 = "pps->log2_parallel_merge_level_minus2";
      v137 = 1024;
      v138 = v112;
      v139 = 1024;
      v140 = 0;
      v141 = 1024;
      v142 = v111;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_104;
    }

    v118 = this[13];
    ++this[20].i32[1];
    v119 = *&v118 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 6464) = v119;
    v120 = this[13];
    ++this[20].i32[1];
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 6465) = v120 < 0;
    if ((v120 & 0x8000000000000000) == 0)
    {
LABEL_90:
      HEVC_RBSP::byte_alignment(this);
      return v13;
    }

    v121 = this[13];
    ++this[20].i32[1];
    v122 = *&v121 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 6466) = v122;
    v123 = this[13];
    ++this[20].i32[1];
    v124 = *&v123 >> 63;
    HEVC_RBSP::flush_bits(this, 1);
    *(v14 + 6467) = v124;
    v125 = this[13];
    this[20].i32[1] += 6;
    v126 = *&v125 >> 58;
    HEVC_RBSP::flush_bits(this, 6);
    *(v14 + 6468) = v126;
    if (*(v14 + 6466) && (HEVC_RBSP::parsePpsRangeExtension(this, v14, (v14 + 1618)) & 1) == 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_106;
      }

      LOWORD(v132) = 0;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: parsePpsRangeExtension error";
    }

    else
    {
      if (!*(v14 + 6467) || (HEVC_RBSP::parsePpsMultiLayerExtension(this, (v14 + 1636)) & 1) != 0)
      {
        if (*(v14 + 6468) && HEVC_RBSP::more_rbsp_data(this))
        {
          do
          {
            v127 = this[13];
            ++this[20].i32[1];
            v128 = *&v127 >> 63;
            HEVC_RBSP::flush_bits(this, 1);
            *(v14 + 9672) = v128;
          }

          while (HEVC_RBSP::more_rbsp_data(this));
        }

        goto LABEL_90;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_106;
      }

      LOWORD(v132) = 0;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: parsePpsMultiLayerExtension error";
    }

    v26 = 2;
    goto LABEL_105;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v23 = v14[1];
    v132 = 136315394;
    *v133 = "int32_t HEVC_RBSP::parsePPS(hevc_picture_parameter_set_t *, hevc_sequence_parameter_set_t *)";
    *&v133[8] = 1024;
    v134 = v23;
    v24 = MEMORY[0x277D86220];
    v25 = "AppleAVD: %s out of range SPS id %d";
    v26 = 18;
LABEL_105:
    _os_log_impl(&dword_277606000, v24, OS_LOG_TYPE_DEFAULT, v25, &v132, v26);
    goto LABEL_106;
  }

  if (a2)
  {
LABEL_106:
    HEVCReleasePPS(v14);
    v13 = 0xFFFFFFFFLL;
    *v14 = -1;
    return v13;
  }

  return 0xFFFFFFFFLL;
}

void HEVCReleasePPS(uint64_t a1)
{
  if (a1 && *a1 != -1 && *(a1 + 6465))
  {
    if (*(a1 + 6467))
    {
      free(*(a1 + 6560));
      *(a1 + 6560) = 0;
      free(*(a1 + 6568));
      *(a1 + 6568) = 0;
      free(*(a1 + 7600));
      *(a1 + 7600) = 0;
      free(*(a1 + 8632));
      *(a1 + 8632) = 0;
    }
  }
}

void HEVC_RBSP::calcScanOrder(HEVC_RBSP *this, unsigned int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ((v6 & 0x80000000) != 0)
    {
      v8 = 0;
    }

    else
    {
      v7 = 0;
      v8 = v6 + 1;
      v9 = a2 * v6;
      do
      {
        if (v6 < a2 && v7 < a2)
        {
          a3[v5++] = v9;
        }

        --v6;
        ++v7;
        v9 += 1 - a2;
      }

      while (v6 != -1);
    }

    v6 = v8;
  }

  while (v5 < a2 * a2);
  if (a2)
  {
    v10 = 0;
    v11 = 0;
    for (i = 0; i != a2; ++i)
    {
      v13 = v10;
      v14 = a2;
      do
      {
        a4[v11++] = v13++;
        --v14;
      }

      while (v14);
      v10 += a2;
    }

    v15 = 0;
    for (j = 0; j != a2; ++j)
    {
      v17 = 0;
      v18 = j;
      do
      {
        a5[v15++] = v18;
        ++v17;
        v18 += a2;
      }

      while (a2 != v17);
    }
  }
}

CAHDec *CAVDHevcDecoder::allocateHwDecoder(CAVDHevcDecoder *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(this + 588);
  if (v1 > 399)
  {
    if (v1 > 423)
    {
      if (v1 > 439)
      {
        switch(v1)
        {
          case 440:

            return createThymeHevcDecoder(this);
          case 448:

            return createKopsiaHevcDecoder(this);
          case 456:

            return createBorageHevcDecoder(this);
        }
      }

      else
      {
        if ((v1 - 432) < 2)
        {

          return createHibiscusHevcDecoder(this);
        }

        if (v1 == 424)
        {

          return createTansyHevcDecoder(this);
        }
      }
    }

    else if (v1 > 407)
    {
      if ((v1 - 416) < 2)
      {

        return createDaisyHevcDecoder(this);
      }

      if (v1 == 408)
      {

        return createCatnipHevcDecoder(this);
      }
    }

    else if ((v1 - 400) < 3 || v1 == 404)
    {

      return createIxoraHevcDecoder(this);
    }

LABEL_86:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "allocateHwDecoder";
      v5 = 1024;
      v6 = v1;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Invalid AVD device type %d!\n", &v3, 0x12u);
    }

    return 0;
  }

  if (v1 > 300)
  {
    if (v1 > 323)
    {
      switch(v1)
      {
        case 324:

          return createClaryHevcDecoder(this);
        case 328:

          return createCactusHevcDecoder(this);
        case 332:

          return createNarcissusHevcDecoder(this);
      }
    }

    else
    {
      switch(v1)
      {
        case 301:

          return createLilyDHevcDecoder(this);
        case 308:

          return createDahliaHevcDecoder(this);
        case 316:

          return createRadishHevcDecoder(this);
      }
    }

    goto LABEL_86;
  }

  if (v1 > 20)
  {
    switch(v1)
    {
      case 21:

        return createSalviaHevcDecoder(this);
      case 26:

        return createViolaHevcDecoder(this);
      case 28:

        return createLotusHevcDecoder(this);
    }

    goto LABEL_86;
  }

  if ((v1 - 12) >= 2)
  {
    if (v1 == 14 || v1 == 16)
    {

      return createCloverHevcDecoder(this);
    }

    goto LABEL_86;
  }

  return createRoseHevcDecoder(this);
}

void HEVCReleaseVPS(uint64_t a1)
{
  if (a1 && *a1 != -1)
  {
    if (*(a1 + 4392))
    {
      v2 = *(a1 + 4432);
      if (v2)
      {
        if (*(a1 + 4412))
        {
          v3 = 0;
          do
          {
            v4 = 0;
            do
            {
              v5 = *(a1 + 4432);
              v6 = v5 + 424 * v3;
              v7 = *(v6 + 408);
              if (v7 && *(v6 + 1))
              {
                HEVCReleaseSubLayerHRD((v7 + 48 * v4), *(v6 + 2));
                v5 = *(a1 + 4432);
              }

              v8 = v5 + 424 * v3;
              v9 = *(v8 + 400);
              if (v9 && *v8)
              {
                HEVCReleaseSubLayerHRD((v9 + 48 * v4), *(v8 + 2));
              }

              ++v4;
            }

            while (v4 <= *(a1 + 16));
            free(*(*(a1 + 4432) + 424 * v3 + 400));
            v10 = *(a1 + 4432) + 424 * v3;
            *(v10 + 400) = 0;
            free(*(v10 + 408));
            v2 = *(a1 + 4432);
            v2[53 * v3++ + 51] = 0;
          }

          while (v3 < *(a1 + 4412));
        }

        free(v2);
        *(a1 + 4432) = 0;
      }

      free(*(a1 + 4424));
      *(a1 + 4424) = 0;
      free(*(a1 + 4416));
      *(a1 + 4416) = 0;
    }

    if (*(a1 + 4384))
    {
      v11 = 0;
      do
      {
        free(*(*(a1 + 4384) + 8 * v11));
        *(*(a1 + 4384) + 8 * v11++) = 0;
      }

      while (v11 <= *(a1 + 4380));
      free(*(a1 + 4384));
      *(a1 + 4384) = 0;
    }

    v12 = *(a1 + 4448);
    if (v12)
    {
      v13 = *(v12 + 3848);
      if (v13)
      {
        if (*(a1 + 4380) + 1 + *(v12 + 3838))
        {
          v14 = 0;
          do
          {
            free(*(*(v12 + 3848) + 8 * v14));
            *(*(v12 + 3848) + 8 * v14++) = 0;
          }

          while (*(a1 + 4380) + *(v12 + 3838) + 1 > v14);
          v13 = *(v12 + 3848);
        }

        free(v13);
        *(v12 + 3848) = 0;
      }

      free(*(v12 + 3856));
      v15 = 0;
      *(v12 + 3856) = 0;
      do
      {
        free(*(v12 + v15));
        *(v12 + v15) = 0;
        v15 += 8;
      }

      while (v15 != 512);
      releaseTargetLayerIdLists(a1);
      free(*(v12 + 736));
      *(v12 + 736) = 0;
      releaseVpsDpb(a1, *(v12 + 3866), *(a1 + 4376) + 1);
      free(*(v12 + 512));
      *(v12 + 512) = 0;
      if (*(v12 + 520))
      {
        v16 = 0;
        do
        {
          free(*(*(v12 + 520) + 8 * v16));
          *(*(v12 + 520) + 8 * v16) = 0;
        }

        while (v16++ < *(a1 + 12));
        free(*(v12 + 520));
        *(v12 + 520) = 0;
      }

      free(*(v12 + 528));
      *(v12 + 528) = 0;
      v18 = *(v12 + 536);
      if (v18)
      {
        if (*(v12 + 3866))
        {
          v19 = 0;
          do
          {
            free(*(*(v12 + 536) + 8 * v19));
            *(*(v12 + 536) + 8 * v19++) = 0;
          }

          while (v19 < *(v12 + 3866));
          v18 = *(v12 + 536);
        }

        free(v18);
        *(v12 + 536) = 0;
      }

      v20 = *(v12 + 3840);
      if (v20)
      {
        if (*(v12 + 3838))
        {
          v21 = 0;
          do
          {
            free(*(*(v12 + 3840) + 8 * v21));
            *(*(v12 + 3840) + 8 * v21++) = 0;
          }

          while (v21 < *(v12 + 3838));
          v20 = *(v12 + 3840);
        }

        free(v20);
        *(v12 + 3840) = 0;
      }

      free(*(v12 + 720));
      *(v12 + 720) = 0;
      v22 = *(a1 + 4448);
    }

    else
    {
      v22 = 0;
    }

    free(v22);
    *(a1 + 4448) = 0;
  }
}

uint64_t createPixelFormatList(uint64_t result, int a2, int a3, int a4, int *a5, int *a6, int a7, int a8, char a9, int a10, char a11, char a12)
{
  if (a9)
  {
    v12 = a10;
    if (a10)
    {
LABEL_3:
      *a5 = v12;
LABEL_4:
      v13 = 1;
      goto LABEL_146;
    }

    v17 = a7 & a11;
    if (result)
    {
      if (a2 < 2)
      {
        *a5 = 2016436536;
        v28 = v17 ^ 1;
        if (a8 < 20)
        {
          v28 = 1;
        }

        if (v28)
        {
          goto LABEL_4;
        }

        v19 = 645410872;
      }

      else
      {
        if (a2 != 2)
        {
          if (a2 == 3)
          {
            *a5 = 2016698680;
            v18 = v17 ^ 1;
            if (a8 < 20)
            {
              v18 = 1;
            }

            if (v18)
            {
              goto LABEL_4;
            }

            v19 = 645411896;
            goto LABEL_144;
          }

LABEL_71:
          v13 = 0;
          goto LABEL_146;
        }

        *a5 = 2016567608;
        v37 = v17 ^ 1;
        if (a8 < 20)
        {
          v37 = 1;
        }

        if (v37)
        {
          goto LABEL_4;
        }

        v19 = 645411384;
      }
    }

    else if (a2 < 2)
    {
      *a5 = 1982882104;
      v36 = v17 ^ 1;
      if (a8 < 20)
      {
        v36 = 1;
      }

      if (v36)
      {
        goto LABEL_4;
      }

      v19 = 645279800;
    }

    else if (a2 == 2)
    {
      *a5 = 1983013176;
      v41 = v17 ^ 1;
      if (a8 < 20)
      {
        v41 = 1;
      }

      if (v41)
      {
        goto LABEL_4;
      }

      v19 = 645280312;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_71;
      }

      *a5 = 1983144248;
      v25 = v17 ^ 1;
      if (a8 < 20)
      {
        v25 = 1;
      }

      if (v25)
      {
        goto LABEL_4;
      }

      v19 = 645280824;
    }

LABEL_144:
    a5[1] = v19;
    goto LABEL_145;
  }

  if (a12)
  {
    v13 = 0;
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (!a7)
        {
          goto LABEL_71;
        }

        if (a8 < 20)
        {
          v12 = 1530422834;
          v26 = a3 == 0;
          v27 = 1530426930;
        }

        else
        {
          v12 = 641230386;
          v26 = a3 == 0;
          v27 = 641234482;
        }

LABEL_124:
        if (v26)
        {
          v12 = v27;
        }

        goto LABEL_3;
      }

      if (a2 != 3)
      {
        goto LABEL_146;
      }

      if (!a7)
      {
        goto LABEL_71;
      }

      if (a8 < 20)
      {
        v12 = 1530422836;
        v20 = 1530426930;
      }

      else
      {
        v12 = 641230388;
        v20 = 641234482;
      }

      v27 = v20 + 2;
LABEL_123:
      v26 = a3 == 0;
      goto LABEL_124;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_146;
      }

      if (!a7)
      {
        goto LABEL_71;
      }

      if (a8 < 20)
      {
        v12 = 1530422832;
      }

      else
      {
        v12 = 641230384;
      }

      v27 = v12 | 0x1000;
      goto LABEL_123;
    }

    goto LABEL_65;
  }

  v13 = 0;
  if (result)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a3)
        {
          v32 = 1885745714;
        }

        else
        {
          v32 = 1882468914;
        }

        a5[a4 == 0] = v32;
        if (a3)
        {
          v33 = 2019963442;
        }

        else
        {
          v33 = 2016686642;
        }

        a5[a4 != 0] = v33;
        if (!a7)
        {
          goto LABEL_145;
        }

        if (a8 < 20)
        {
          v16 = 1534617138;
          v34 = a3 == 0;
          v35 = 1534621234;
        }

        else
        {
          v16 = 645424690;
          v34 = a3 == 0;
          v35 = 645428786;
        }

        goto LABEL_133;
      }

      if (a2 != 3)
      {
        goto LABEL_146;
      }

      if (a3)
      {
        v22 = 1885746228;
      }

      else
      {
        v22 = 1882469428;
      }

      a5[a4 == 0] = v22;
      if (a3)
      {
        v23 = 2019963956;
      }

      else
      {
        v23 = 2016687156;
      }

      a5[a4 != 0] = v23;
      if (a7)
      {
        if (a8 < 20)
        {
          v16 = 1534617140;
          v24 = 1534621234;
        }

        else
        {
          v16 = 645424692;
          v24 = 645428786;
        }

        v35 = v24 + 2;
        goto LABEL_132;
      }
    }

    else
    {
      if (!a2)
      {
        if (result >= 3)
        {
          v31 = 1278226742;
        }

        else
        {
          v31 = 1278226736;
        }

        *a5 = v31;
        v13 = 1;
        if (a8 >= 20 && a7)
        {
          if (result >= 3)
          {
            v19 = 642527542;
          }

          else
          {
            v19 = 642527536;
          }

          goto LABEL_144;
        }

        goto LABEL_146;
      }

      if (a2 != 1)
      {
        goto LABEL_146;
      }

      if (a3)
      {
        v14 = 1885745712;
      }

      else
      {
        v14 = 1882468912;
      }

      a5[a4 == 0] = v14;
      if (a3)
      {
        v15 = 2019963440;
      }

      else
      {
        v15 = 2016686640;
      }

      a5[a4 != 0] = v15;
      if (a7)
      {
        if (a8 < 20)
        {
          v16 = 1534617136;
        }

        else
        {
          v16 = 645424688;
        }

        v35 = v16 | 0x1000;
LABEL_132:
        v34 = a3 == 0;
LABEL_133:
        if (v34)
        {
          v16 = v35;
        }

        a5[2] = v16;
        v13 = 3;
        goto LABEL_146;
      }
    }

LABEL_145:
    v13 = 2;
    goto LABEL_146;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a3)
      {
        v38 = 875704934;
      }

      else
      {
        v38 = 875704950;
      }

      *a5 = v38;
      if (!a7)
      {
        goto LABEL_4;
      }

      if (a8 < 20)
      {
        v19 = 1530422834;
        v39 = a3 == 0;
        v40 = 1530426930;
      }

      else
      {
        v19 = 641230386;
        v39 = a3 == 0;
        v40 = 641234482;
      }

      goto LABEL_142;
    }

    if (a2 != 3)
    {
      goto LABEL_146;
    }

    if (a3)
    {
      v29 = 875836518;
    }

    else
    {
      v29 = 875836534;
    }

    *a5 = v29;
    if (!a7)
    {
      goto LABEL_4;
    }

    if (a8 < 20)
    {
      v19 = 1530422836;
      v30 = 1530426930;
    }

    else
    {
      v19 = 641230388;
      v30 = 641234482;
    }

    v40 = v30 + 2;
LABEL_141:
    v39 = a3 == 0;
LABEL_142:
    if (v39)
    {
      v19 = v40;
    }

    goto LABEL_144;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_146;
    }

    if (a3)
    {
      v21 = 875704422;
    }

    else
    {
      v21 = 875704438;
    }

    *a5 = v21;
    if (!a7)
    {
      goto LABEL_4;
    }

    if (a8 < 20)
    {
      v19 = 1530422832;
    }

    else
    {
      v19 = 641230384;
    }

    v40 = v19 | 0x1000;
    goto LABEL_141;
  }

LABEL_65:
  *a5 = 1278226488;
  v13 = 1;
  if (a8 >= 20 && a7)
  {
    v19 = 642527288;
    goto LABEL_144;
  }

LABEL_146:
  *a6 = v13;
  return result;
}

uint64_t CreateUncompressedPixelBufferAttributesDictionary(int a1, int a2, int a3, int a4, int a5, char *a6, int a7, unint64_t a8, __CFDictionary **a9)
{
  v49 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v18 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (v18)
    {
      v44 = a5;
      v19 = a4;
      v20 = a3;
      v21 = a2;
      v22 = a1;
      if (a7 < 1)
      {
LABEL_7:
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E30], v18);
        CFRelease(v18);
        v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v18)
        {
          v26 = MEMORY[0x277CBED28];
          v27 = v22;
          v28 = v21;
          if (a8)
          {
            v29 = *MEMORY[0x277CD2B70];
            if (HIDWORD(a8) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v46 = "CreateUncompressedPixelBufferAttributesDictionary";
              v47 = 1024;
              v48 = 1273;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            }

            setIntValue(v18, v29, a8);
            CFDictionaryAddValue(v18, *MEMORY[0x277CD29F8], *v26);
          }

          CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v18);
          addNumberToDictionary(Mutable, *MEMORY[0x277CC4D60], 64);
          addNumberToDictionary(Mutable, *MEMORY[0x277CC4EC8], v21);
          addNumberToDictionary(Mutable, *MEMORY[0x277CC4DD8], v20);
          addNumberToDictionary(Mutable, *MEMORY[0x277CC4E38], 256);
          if (v27 < 20)
          {
            v37 = v19 + 15;
            if (v19 < -15)
            {
              v37 = v19 + 30;
            }

            v31 = (v37 & 0xFFFFFFF0) + 16;
            v38 = v44 + 7;
            if (v44 < -7)
            {
              v38 = v44 + 14;
            }

            v33 = (v38 & 0xFFFFFFF8) + 8;
            v39 = v44 / 2 + 14;
            if (v44 / 2 >= -7)
            {
              v39 = v44 / 2 + 7;
            }

            v35 = ((2 * v39) & 0xFFFFFFF0) + 16;
          }

          else
          {
            v30 = v19 + 31;
            if (v19 < -31)
            {
              v30 = v19 + 62;
            }

            v31 = v30 & 0xFFFFFFE0;
            v32 = v44 + 31;
            if (v44 < -31)
            {
              v32 = v44 + 62;
            }

            v33 = v32 & 0xFFFFFFE0;
            v34 = v44 / 2 + 30;
            if (v44 / 2 >= -15)
            {
              v34 = v44 / 2 + 15;
            }

            v35 = (2 * v34) & 0xFFFFFFE0;
          }

          if (v33 <= v35)
          {
            v33 = v35;
          }

          v40 = __OFSUB__(v33, v20);
          v41 = v33 - v20;
          if ((v41 < 0) ^ v40 | (v41 == 0))
          {
            v42 = 0;
          }

          else
          {
            v42 = v41;
          }

          if (v31 > v28)
          {
            addNumberToDictionary(Mutable, *MEMORY[0x277CC4DB8], v31 - v28);
          }

          if (v42)
          {
            addNumberToDictionary(Mutable, *MEMORY[0x277CC4DA0], v42);
          }

          if (v27 >= 26)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E60], *v26);
          }

          v36 = 0;
          *a9 = Mutable;
LABEL_47:
          CFRelease(v18);
          return v36;
        }
      }

      else
      {
        v23 = a7;
        while (1)
        {
          v24 = CFNumberCreate(0, kCFNumberSInt32Type, a6);
          if (!v24)
          {
            break;
          }

          v25 = v24;
          CFArrayAppendValue(v18, v24);
          CFRelease(v25);
          a6 += 4;
          if (!--v23)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  else
  {
    v18 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v46 = "CreateUncompressedPixelBufferAttributesDictionary";
    v47 = 1024;
    v48 = -12904;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v36 = 4294954392;
  if (v18)
  {
    goto LABEL_47;
  }

  return v36;
}

uint64_t CAVDDecoder::calcLumaChromaTileOffset(CAVDDecoder *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, unsigned int *a7, unsigned int *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4 * a3;
  v9 = (v8 & 0xFFFFFFFF00000000) != 0;
  v10 = a2 + v8;
  v11 = __CFADD__(a2, v8);
  *a7 = v10;
  v12 = 1;
  if (v9 || v11)
  {
    goto LABEL_29;
  }

  if (a6 == 3)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v14 = a5 * a3;
      v15 = (v14 & 0xFFFFFFFF00000000) != 0;
      v16 = v14 + 2 * a2;
      v17 = __CFADD__(v14, 2 * a2);
      *a8 = v16;
      v12 = 6;
      if (v15 || v17)
      {
        goto LABEL_29;
      }

      return 1;
    }

    v12 = 5;
  }

  else
  {
    if (a6 != 1)
    {
      v18 = a5 * a3;
      v19 = (v18 & 0xFFFFFFFF00000000) != 0;
      v20 = a2 + v18;
      v21 = __CFADD__(a2, v18);
      *a8 = v20;
      v12 = 7;
      if (v19 || v21)
      {
        goto LABEL_29;
      }

      return 1;
    }

    v13 = a5 * a3;
    if ((v13 & 0xFFFFFFFF00000000) != 0)
    {
      v12 = 2;
      goto LABEL_29;
    }

    v22 = v13 + 1;
    if (v22 << 31 >> 31 != v22)
    {
      v12 = 3;
      goto LABEL_29;
    }

    *a8 = a2 + (v22 >> 1);
    if (!__CFADD__(a2, v22 >> 1))
    {
      return 1;
    }

    v12 = 4;
  }

LABEL_29:
  v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v23)
  {
    v25 = 136315394;
    v26 = "calcLumaChromaTileOffset";
    v27 = 1024;
    v28 = v12;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failKind = %d", &v25, 0x12u);
    return 0;
  }

  return result;
}

uint64_t CAHDecTansyHevc::copyScalingList(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a2 + 4);
  v6 = *a2 & 0xFEFFFFFF | ((*(a5 + 6196) & 1) << 24);
  *a2 = v6;
  v7 = v6 & 0xFFFFFFC0 | *(a5 + 6192) & 0x3F;
  *a2 = v7;
  v8 = v7 & 0xFFFFF03F | ((*(a5 + 6193) & 0x3F) << 6);
  *a2 = v8;
  v9 = *(a5 + 6194);
  v10 = v8 & 0xFFFC0FFF | ((v9 & 0x3F) << 12);
  *a2 = v10;
  v11 = *(a5 + 6195) & 0x3F;
  v12 = v10 & 0xFF03FFFF | (v11 << 18);
  *a2 = v12;
  v13 = v5 & 0xFF00FFFF | ((((v9 << 31 >> 31) & (*(a5 + 6144) << 16)) >> 16) << 16);
  *(a2 + 4) = v13;
  v14 = v13 & 0xFFFF00FF | ((((*(a5 + 6148) << 8) & ((v9 << 14) >> 15)) >> 8) << 8);
  *(a2 + 4) = v14;
  *(a2 + 4) = v14 & 0xFFFFFF00 | *(a5 + 6152) & (v9 << 29 >> 31);
  v15 = *(a2 + 8) & 0xFF00FFFF | ((((*(a5 + 6156) << 16) & (v9 << 28 >> 31)) >> 16) << 16);
  *(a2 + 8) = v15;
  v16 = v15 & 0xFFFF00FF | ((((*(a5 + 6160) << 8) & ((v9 << 11) >> 15)) >> 8) << 8);
  *(a2 + 8) = v16;
  v17 = *(a5 + 6164);
  if ((v9 & 0x20) == 0)
  {
    v17 = 0;
  }

  *(a2 + 8) = v16 & 0xFFFFFF00 | v17;
  if (a4 == 3)
  {
    v18 = v12 | ((v9 & 0x3F) << 18) & 0xD80000;
    *a2 = v18;
    v19 = *(a2 + 16);
    v20 = *(a2 + 12) & 0xFF00FFFF | ((((v11 << 31 >> 31) & (*(a5 + 6168) << 16)) >> 16) << 16);
    *(a2 + 12) = v20;
    v21 = v20 & 0xFFFF00FF | ((((*(a5 + 6148) << 8) & ((v18 >> 4) >> 15)) >> 8) << 8);
    *(a2 + 12) = v21;
    *(a2 + 12) = v21 & 0xFFFFFF00 | *(a5 + 6152) & ((v18 << 11) >> 31);
    v22 = v19 & 0xFF00FFFF | ((((*(a5 + 6172) << 16) & (v11 << 28 >> 31)) >> 16) << 16);
    *(a2 + 16) = v22;
    v23 = v22 & 0xFFFF00FF | ((((*(a5 + 6160) << 8) & ((v18 >> 7) >> 15)) >> 8) << 8);
    *(a2 + 16) = v23;
    v24 = v23 & 0xFFFFFF00 | *(a5 + 6164) & ((v18 << 8) >> 31);
  }

  else
  {
    *(a2 + 12) = (v11 << 31 >> 31) & (*(a5 + 6168) << 16) & 0xFF0000 | (*(a2 + 15) << 24);
    v24 = (*(a5 + 6172) << 16) & (v11 << 28 >> 31) & 0xFF0000 | (*(a2 + 19) << 24);
  }

  *(a2 + 16) = v24;
  v25 = 0;
  v26 = a5 + 32;
  v27 = a3;
  do
  {
    v28 = 0;
    v29 = v26;
    do
    {
      v30 = *(v27 + 4 * v28) & 0xFFFFFF | (*(v29 - 32) << 24);
      *(v27 + 4 * v28) = v30;
      v31 = v30 & 0xFF00FFFF | (*(v29 - 16) << 16);
      *(v27 + 4 * v28) = v31;
      v32 = v31 & 0xFFFF00FF | (*v29 << 8);
      *(v27 + 4 * v28) = v32;
      *(v27 + 4 * v28++) = v32 & 0xFFFFFF00 | *(v29 + 16);
      v29 += 4;
    }

    while (v28 != 4);
    ++v25;
    v27 += 16;
    v26 += 256;
  }

  while (v25 != 6);
  v33 = 0;
  v34 = a3 + 96;
  v35 = a5 + 1600;
  do
  {
    v36 = 0;
    v37 = a5 + 1536 + (v33 << 8);
    v38 = v35;
    do
    {
      v39 = (v38 + 96 * (v36 >> 3));
      v40 = *(v34 + 4 * v36) & 0xFFFFFF | (*(v39 - 16) << 24);
      *(v34 + 4 * v36) = v40;
      v41 = ((v36 & 0xC) + 24 * (v36 >> 3)) & 0xFFFFFFFC | v36 & 3;
      v42 = v40 & 0xFF00FFFF | (*(v37 + 4 * (v41 + 8)) << 16);
      *(v34 + 4 * v36) = v42;
      v43 = v42 & 0xFFFF00FF | (*v39 << 8);
      *(v34 + 4 * v36) = v43;
      *(v34 + 4 * v36++) = v43 & 0xFFFFFF00 | *(v37 + 4 * (v41 + 24));
      v38 += 4;
    }

    while (v36 != 16);
    ++v33;
    v34 += 64;
    v35 += 256;
  }

  while (v33 != 6);
  v44 = 0;
  v45 = a3 + 480;
  v46 = a5 + 3136;
  do
  {
    v47 = 0;
    v48 = a5 + 3072 + (v44 << 8);
    v49 = v46;
    do
    {
      v50 = (v49 + 96 * (v47 >> 3));
      v51 = *(v45 + 4 * v47) & 0xFFFFFF | (*(v50 - 16) << 24);
      *(v45 + 4 * v47) = v51;
      v52 = ((v47 & 0xC) + 24 * (v47 >> 3)) & 0xFFFFFFFC | v47 & 3;
      v53 = v51 & 0xFF00FFFF | (*(v48 + 4 * (v52 + 8)) << 16);
      *(v45 + 4 * v47) = v53;
      v54 = v53 & 0xFFFF00FF | (*v50 << 8);
      *(v45 + 4 * v47) = v54;
      *(v45 + 4 * v47++) = v54 & 0xFFFFFF00 | *(v48 + 4 * (v52 + 24));
      v49 += 4;
    }

    while (v47 != 16);
    ++v44;
    v45 += 64;
    v46 += 256;
  }

  while (v44 != 6);
  v55 = 0;
  v56 = a5 + 4608;
  v57 = a5 + 4672;
  v58 = 1;
  do
  {
    v59 = 0;
    v60 = a3 + 864 + (v55 << 6);
    v61 = v58;
    v62 = v57 + (v55 << 8);
    v63 = v56 + (v55 << 8);
    do
    {
      v64 = (v62 + 96 * (v59 >> 3));
      v65 = *(v60 + 4 * v59) & 0xFFFFFF | (*(v64 - 16) << 24);
      *(v60 + 4 * v59) = v65;
      v66 = ((v59 & 0xC) + 24 * (v59 >> 3)) & 0xFFFFFFFC | v59 & 3;
      v67 = v65 & 0xFF00FFFF | (*(v63 + 4 * (v66 + 8)) << 16);
      *(v60 + 4 * v59) = v67;
      v68 = v67 & 0xFFFF00FF | (*v64 << 8);
      *(v60 + 4 * v59) = v68;
      result = v68 & 0xFFFFFF00 | *(v63 + 4 * (v66 + 24));
      *(v60 + 4 * v59++) = result;
      v62 += 4;
    }

    while (v59 != 16);
    v58 = 0;
    v55 = 1;
  }

  while ((v61 & 1) != 0);
  return result;
}

void HEVC_RLM::removeEntry(HEVC_RLM *this, unsigned int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 < 0x10)
  {
    v4 = this + 176 * a2;
    if (*(v4 + 8))
    {
      *(v4 + 8) = 0;
      v5 = *(this + 1);
      if (v5)
      {
        (*(*v5 + 48))(v5, *(v4 + 20), 0);
        (*(**(this + 1) + 48))(*(this + 1), *(v4 + 21), 1);
      }
    }

    v4[16] = 0;
    *(v4 + 7) = 0;
    *(v4 + 9) = 0;
    v6 = *(this + 708);
    v7 = v6 - 1;
    *(this + 708) = v6 - 1;
    if (v6 <= 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "removeEntry";
        v10 = 1024;
        v11 = v7;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: WARNING _numActivePictures=%d is not valid, now clamped to 0\n", &v8, 0x12u);
      }

      *(this + 708) = 0;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "removeEntry";
    v10 = 1024;
    v11 = a2;
    v12 = 1024;
    v13 = 16;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): WARNING, index=%d is invalid, maximum allowable is %d\n", &v8, 0x18u);
  }
}

uint64_t CAVDHevcDecoder::VAReleaseOutputSurface(AppleAVDCommandBuilder **this, int a2, unsigned int a3)
{
  if (a3 != 1 || *(this + 661))
  {
    AppleAVDCommandBuilder::setReleaseCVPixelBufferIndex(this[292], a2, a3);
  }

  return 0;
}

uint64_t HEVC_RLM::decodePicOrderCnt(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 == 1 && (*(a2 + 4) & 0xFFFFFFF8) == 0x10)
  {
    v5 = 0;
    a1[1648] = 0;
    v6 = *(a4 + 32);
  }

  else
  {
    v6 = *(a4 + 32);
    v7 = a1[1649];
    if (v6 < v7 && (v8 = *(a3 + 22912), v7 - v6 >= v8 >> 1))
    {
      v5 = a1[1650] + v8;
    }

    else
    {
      v9 = v6 >= v7;
      v10 = v6 - v7;
      if (v10 != 0 && v9 && (v11 = *(a3 + 22912), v10 > v11 >> 1))
      {
        v5 = a1[1650] - v11;
      }

      else
      {
        v5 = a1[1650];
      }
    }

    a1[1648] = v5;
  }

  return v6 + v5;
}

void HEVC_RLM::decodeReferencePictureSet(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v127 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 12);
  v107 = a2;
  v6 = *(a2 + 4);
  if ((v6 & 0xFFFFFFF8) == 0x10 && *(a2 + 1) == 1 && a4[5] == 2)
  {
    for (i = 36; i != 2852; i += 176)
    {
      *(a1 + i) = 0;
    }
  }

  else
  {
    for (j = 36; j != 2852; j += 176)
    {
      if ((*(a1 + j) - 1) <= 1)
      {
        *(a1 + j) = 3;
      }
    }

    *(a1 + 2872) = 0;
    *(a1 + 2864) = 0;
    *(a1 + 2848) = 0u;
    memset(v126, 0, sizeof(v126));
    memset(v125, 0, sizeof(v125));
    memset(v124, 0, sizeof(v124));
    memset(v123, 0, sizeof(v123));
    memset(v122, 0, sizeof(v122));
    memset(v121, 0, sizeof(v121));
    memset(v120, 0, sizeof(v120));
    if ((v6 - 19) >= 2)
    {
      v9 = a4[83];
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        v12 = (a4 + 86);
        v13 = a4 + 94;
        do
        {
          v15 = *v12++;
          v14 = v15;
          v16 = *v13++;
          v17 = v16 + v5;
          v18 = v14 == 0;
          if (v14)
          {
            v19 = v10;
          }

          else
          {
            v19 = v11;
          }

          if (v18)
          {
            a2 = v124;
          }

          else
          {
            a2 = v126;
          }

          if (v18)
          {
            ++v11;
          }

          else
          {
            ++v10;
          }

          *(a2 + 4 * v19) = v17;
          --v9;
        }

        while (v9);
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      *(a1 + 2848) = v10;
      v20 = a4[84];
      if (v20)
      {
        v21 = 0;
        v22 = (a4 + 90);
        v23 = a4 + 110;
        do
        {
          v25 = *v22++;
          v24 = v25;
          v26 = *v23++;
          v27 = v26 + v5;
          v28 = v24 == 0;
          if (v24)
          {
            v29 = v21;
          }

          else
          {
            v29 = v11;
          }

          if (v28)
          {
            a2 = v124;
          }

          else
          {
            a2 = v125;
          }

          if (v28)
          {
            ++v11;
          }

          else
          {
            ++v21;
          }

          *(a2 + 4 * v29) = v27;
          --v20;
        }

        while (v20);
      }

      else
      {
        v21 = 0;
      }

      *(a1 + 2852) = v21;
      *(a1 + 2856) = v11;
      v30 = a4[126];
      v31 = a4[127];
      v32 = (v31 + v30);
      if (v31 + v30)
      {
        v33 = 0;
        v34 = 0;
        v35 = a4 + 476;
        a2 = v121;
        v36 = a4;
        v37 = a4 + 476;
        do
        {
          v39 = *v37++;
          v38 = v39;
          v40 = *(v36 + 576);
          if (*(v36 + 576))
          {
            v38 = v38 + v5 - (((*(a3 + 22912) - 1) & v5) + *(a3 + 22912) * v35[20]);
          }

          if (*(v36 + 1968))
          {
            *(v123 + v33) = v38;
            v41 = v121 + 4 * v33++;
          }

          else
          {
            *(v122 + v34) = v38;
            v41 = v120 + 4 * v34++;
          }

          v36 = (v36 + 1);
          *v41 = v40;
          v35 = v37;
          --v32;
        }

        while (v32);
        *(a1 + 2860) = v33;
        *(a1 + 2864) = v34;
        if (v33)
        {
          v42 = 0;
          v43 = a1 + 2880;
          a2 = 2;
          do
          {
            v44 = *(v123 + v42);
            if (*(v121 + v42))
            {
              v45 = (a1 + 36);
              v46 = 16;
              while (*(v45 - 20) != 1 || *(v45 - 2) != v44 || *v45 != 3)
              {
                v45 += 44;
                if (!--v46)
                {
                  goto LABEL_62;
                }
              }

              *v45 = 2;
              *(v43 + 8 * v42) = v45 - 5;
            }

            else
            {
              v47 = (a1 + 36);
              v48 = 16;
              while (*(v47 - 20) != 1 || (*(v47 - 2) & (*(a3 + 22912) - 1)) != v44 || *v47 != 3)
              {
                v47 += 44;
                if (!--v48)
                {
LABEL_62:
                  *(v43 + 8 * v42) = 0;
                  goto LABEL_63;
                }
              }

              *v47 = 2;
              *(v43 + 8 * v42) = v47 - 5;
            }

LABEL_63:
            ++v42;
          }

          while (v42 != v33);
        }

        if (v34)
        {
          v49 = 0;
          v50 = a1 + 3008;
          do
          {
            a2 = *(v122 + v49);
            if (*(v120 + v49))
            {
              v51 = (a1 + 36);
              v52 = 16;
              while (*(v51 - 20) != 1 || *(v51 - 2) != a2 || *v51 != 3)
              {
                v51 += 44;
                if (!--v52)
                {
                  goto LABEL_81;
                }
              }

              *v51 = 2;
              *(v50 + 8 * v49) = v51 - 5;
            }

            else
            {
              v53 = (a1 + 36);
              v54 = 16;
              while (*(v53 - 20) != 1 || (*(v53 - 2) & (*(a3 + 22912) - 1)) != a2 || *v53 != 3)
              {
                v53 += 44;
                if (!--v54)
                {
LABEL_81:
                  *(v50 + 8 * v49) = 0;
                  goto LABEL_82;
                }
              }

              *v53 = 2;
              *(v50 + 8 * v49) = v53 - 5;
            }

LABEL_82:
            ++v49;
          }

          while (v49 != v34);
        }
      }

      else
      {
        *(a1 + 2860) = 0;
      }

      if (v10)
      {
        v55 = 0;
        v56 = a1 + 3136;
        do
        {
          v57 = (a1 + 36);
          v58 = 16;
          while (1)
          {
            a2 = *(v57 - 20);
            if (a2 == 1)
            {
              a2 = *(v57 - 2);
              if (a2 == *(v126 + v55))
              {
                a2 = *v57;
                if (a2 == 3)
                {
                  break;
                }
              }
            }

            v57 += 44;
            if (!--v58)
            {
              *(v56 + 8 * v55) = 0;
              goto LABEL_96;
            }
          }

          *v57 = 1;
          *(v56 + 8 * v55) = v57 - 5;
LABEL_96:
          ++v55;
        }

        while (v55 != v10);
      }

      if (v21)
      {
        v59 = 0;
        v60 = a1 + 3264;
        do
        {
          v61 = (a1 + 36);
          v62 = 16;
          while (*(v61 - 20) != 1 || *(v61 - 2) != *(v125 + v59) || *v61 != 3)
          {
            v61 += 44;
            if (!--v62)
            {
              *(v60 + 8 * v59) = 0;
              goto LABEL_106;
            }
          }

          *v61 = 1;
          *(v60 + 8 * v59) = v61 - 5;
LABEL_106:
          ++v59;
        }

        while (v59 != v21);
      }

      if (v11)
      {
        v63 = 0;
        v64 = a1 + 3392;
        do
        {
          v65 = (a1 + 36);
          v66 = 16;
          while (*(v65 - 20) != 1 || *(v65 - 2) != *(v124 + v63) || *v65 != 3)
          {
            v65 += 44;
            if (!--v66)
            {
              *(v64 + 8 * v63) = 0;
              goto LABEL_116;
            }
          }

          *v65 = 1;
          *(v64 + 8 * v63) = v65 - 5;
LABEL_116:
          ++v63;
        }

        while (v63 != v11);
      }
    }

    v67 = *(a1 + 8);
    if (v67[8992])
    {
      v69 = (*(*v67 + 264))(v67, a2);
      v70 = (*(**(a1 + 8) + 272))();
      v71 = *(v107 + 28);
      active = HEVC_RBSP::calcNumActiveRefLayerPics(v70, v69, v71, *(v107 + 36), a4);
      v111 = v71;
      v73 = HEVC_RBSP::calcViewId(v70, v69, v71);
      v112 = v69;
      v113 = HEVC_RBSP::calcViewId(v70, v69, 0);
      if (active >= 1)
      {
        v74 = a4;
        v75 = 0;
        v76 = 0;
        v77 = 0;
        v110 = *(v107 + 12);
        v78 = a1 + 3776;
        v109 = active;
        do
        {
          v79 = v74;
          v80 = HEVC_RBSP::calcRefPiclayerId(v70, v112, v75, v111, v74);
          v81 = HEVC_RBSP::calcViewId(v70, v112, v80);
          v82 = v73 <= v113 && v73 <= v81 || v73 >= v113 && v73 >= v81;
          v84 = (*(**(a1 + 8) + 280))(*(a1 + 8), v110, v80);
          if (v84)
          {
            v85 = *v84;
            v86 = v84[2];
            *(v78 + 16) = v84[1];
            *(v78 + 32) = v86;
            *v78 = v85;
            v87 = v84[3];
            v88 = v84[4];
            v89 = v84[6];
            *(v78 + 80) = v84[5];
            *(v78 + 96) = v89;
            *(v78 + 48) = v87;
            *(v78 + 64) = v88;
            v90 = v84[7];
            v91 = v84[8];
            v92 = v84[10];
            *(v78 + 144) = v84[9];
            *(v78 + 160) = v92;
            *(v78 + 112) = v90;
            *(v78 + 128) = v91;
            if (v82)
            {
              v93 = v77++;
              v94 = 3520;
            }

            else
            {
              v93 = v76++;
              v94 = 3648;
            }

            *(a1 + v94 + 8 * v93) = v78;
            *(v78 + 20) = 2;
          }

          else if (v82)
          {
            *(a1 + 3520 + 8 * v77++) = 0;
          }

          else
          {
            *(a1 + 3648 + 8 * v76++) = 0;
          }

          v74 = v79;
          *(a1 + 2868) = v77;
          *(a1 + 2872) = v76;
          ++v75;
          v78 += 176;
        }

        while (v109 != v75);
      }
    }

    v95 = *(v107 + 4);
    if ((v95 - 16) < 3 || v95 == 21 && *(v107 + 1) == 1)
    {
      v96 = *(a1 + 2856);
      if (v96)
      {
        v97 = 0;
        v98 = MEMORY[0x277D86220];
        do
        {
          v99 = *(a1 + 3392 + 8 * v97);
          if (v99)
          {
            *(v99 + 12) = *(v124 + v97);
            *(v99 + 2) = 0;
            *(v99 + 20) = 1;
            *(v99 + 48) = 0;
          }

          else if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v115 = "decodeReferencePictureSet";
            v116 = 1024;
            v117 = v96;
            v118 = 1024;
            v119 = v97;
            _os_log_impl(&dword_277606000, v98, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s - missing st reference StFoll %d stIdx %d", buf, 0x18u);
            v96 = *(a1 + 2856);
          }

          ++v97;
        }

        while (v97 < v96);
      }

      v100 = *(a1 + 2864);
      if (v100)
      {
        v101 = 0;
        v102 = MEMORY[0x277D86220];
        do
        {
          v103 = *(a1 + 3008 + 8 * v101);
          if (v103)
          {
            v104 = *(v122 + v101);
            *(v103 + 12) = v104;
            v105 = (*(a3 + 22912) - 1) & v104;
            *(v103 + 2) = 0;
            *(v103 + 16) = v105;
            *(v103 + 20) = 2;
            *(v103 + 48) = 0;
          }

          else if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v115 = "decodeReferencePictureSet";
            v116 = 1024;
            v117 = v100;
            v118 = 1024;
            v119 = v101;
            _os_log_impl(&dword_277606000, v102, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s - missing lt reference LtFoll %d stIdx %d", buf, 0x18u);
            v100 = *(a1 + 2864);
          }

          ++v101;
        }

        while (v101 < v100);
      }
    }

    for (k = 36; k != 2852; k += 176)
    {
      if (*(a1 + k) == 3)
      {
        *(a1 + k) = 0;
      }
    }
  }
}

uint64_t CAVDHevcDecoder::isRandomAccessSkipPicture(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 4);
  v5 = *(a2 + 12);
  if (v4 - 19 < 2)
  {
    goto LABEL_3;
  }

  v6 = a1[2055];
  if (v6 == 0x7FFFFFFF || a1[2236])
  {
    if (v4 <= 0x15 && ((1 << v4) & 0x270000) != 0)
    {
LABEL_11:
      v6 = *(a2 + 12);
      goto LABEL_12;
    }
  }

  else
  {
    if (v4 == 21 && a1[2237] || v4 - 16 < 3)
    {
      goto LABEL_11;
    }

    if (v4 == 21 && v6 != v5)
    {
LABEL_3:
      v6 = 0x80000000;
LABEL_12:
      a1[2055] = v6;
      return (v4 & 0xFFFFFFFE) == 8 && v5 < v6;
    }
  }

  if (a3 == 2)
  {
    v10 = *(a2 + 12);
    if (a4 == 1)
    {
      goto LABEL_29;
    }
  }

  if (a3 != 2 && a4 == 1)
  {
    v10 = 0x7FFFFFFF;
LABEL_29:
    a1[2055] = v10;
    v6 = v10;
  }

  if (v4 - 16 >= 6 && v6 == 0x7FFFFFFF)
  {
    return 1;
  }

  return (v4 & 0xFFFFFFFE) == 8 && v5 < v6;
}

void AppleAVDCommandBuilder::setReleaseCVPixelBufferIndex(AppleAVDCommandBuilder *this, int a2, unsigned int a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(this + a3 + 4);
  if (v3 > 31)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "setReleaseCVPixelBufferIndex";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR!!!", &v4, 0xCu);
    }
  }

  else
  {
    *(this + 32 * a3 + v3 + 6) = a2;
    ++*(this + a3 + 4);
  }
}

uint64_t HEVC_RLM::isBumpingNeeded(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 4);
  v4 = (a1 + 18);
  v5 = 16;
  do
  {
    if (*(v4 - 2) == 1 && *v4 == 1)
    {
      ++v2;
    }

    v4 += 176;
    --v5;
  }

  while (v5);
  v6 = a2 + 4 * v3;
  if (v2 > *(v6 + 3908))
  {
    return 1;
  }

  if (*(v6 + 4164))
  {
    v8 = (a1 + 40);
    v9 = 16;
    while (*(v8 - 24) != 1 || *(v8 - 22) != 1 || *v8 < *(a2 + 22916 + 4 * v3))
    {
      v8 += 44;
      if (!--v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t CAVDHevcDecoder::createRefPicList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a3 + 44) <= 1u)
  {
    v5 = *(a1 + 3016);
    v6 = a3 + 2088;
    v7 = a3 + 2216;
    v8 = (*(*a1 + 184))(a1);
    result = HEVC_RLM::getReferencePictureList(v5, a3 + 24, (a3 + 2088), (a3 + 2216), v8);
    if (result)
    {
      return result;
    }

    v10 = *(a3 + 44);
    if (v10 <= 1)
    {
      v11 = 0;
      v12 = *(a3 + 620);
      v13 = a1 + 8408;
      while (2)
      {
        v14 = 0;
        v15 = *(v6 + 8 * v11);
        do
        {
          if (v15 == *(v13 + v14))
          {
            goto LABEL_11;
          }

          v14 += 8;
        }

        while (v14 != 64);
        v16 = *(a1 + 8608);
        if (v16 <= 7)
        {
          if (*(v15 + 48))
          {
            *(v13 + 8 * v16) = v15;
            *(a1 + 8608) = v16 + 1;
LABEL_11:
            if (++v11 <= v12)
            {
              continue;
            }

            if (!v10)
            {
              v17 = 0;
              v18 = *(a3 + 624);
              while (2)
              {
                v19 = 0;
                v20 = *(v7 + 8 * v17);
                do
                {
                  if (v20 == *(v13 + v19))
                  {
                    goto LABEL_20;
                  }

                  v19 += 8;
                }

                while (v19 != 64);
                v21 = *(a1 + 8608);
                if (v21 > 7)
                {
                  return 0xFFFFFFFFLL;
                }

                if (*(v20 + 48))
                {
                  *(v13 + 8 * v21) = v20;
                  *(a1 + 8608) = v21 + 1;
LABEL_20:
                  if (++v17 <= v18)
                  {
                    continue;
                  }

                  goto LABEL_21;
                }

                break;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              v27 = 136315394;
              v28 = "createRefPicList";
              v29 = 1024;
              v30 = v17;
              v24 = MEMORY[0x277D86220];
              v25 = "AppleAVD: %s(): bad ref list1[%d]";
              goto LABEL_29;
            }

LABEL_21:
            *(a3 + 2344) = 0;
            if (!*(a3 + 616))
            {
              return 0;
            }

            v22 = *(a3 + 764);
            if (*(a3 + 762))
            {
              if (v22 <= *(a3 + 620))
              {
                v23 = 2088;
LABEL_34:
                v26 = *(a3 + v23 + 8 * v22);
                goto LABEL_35;
              }
            }

            else if (v22 <= *(a3 + 624))
            {
              v23 = 2216;
              goto LABEL_34;
            }

            v26 = 0;
LABEL_35:
            if (*(a1 + 8152) && *(a1 + 3724))
            {
              if (!v26 || *(v26 + 41) != 1)
              {
                return 0;
              }
            }

            else if (!v26 || (*(v26 + 4) - 24) > 0xFFFFFFF7)
            {
              return 0;
            }

            result = 0;
            *(a3 + 2344) = v26;
            return result;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v27 = 136315394;
            v28 = "createRefPicList";
            v29 = 1024;
            v30 = v11;
            v24 = MEMORY[0x277D86220];
            v25 = "AppleAVD: %s(): bad ref list0[%d]";
LABEL_29:
            _os_log_impl(&dword_277606000, v24, OS_LOG_TYPE_DEFAULT, v25, &v27, 0x12u);
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  result = 0;
  *(a3 + 2344) = 0;
  return result;
}

uint64_t HEVC_RLM::getReferencePictureList(unsigned int *a1, uint64_t a2, _OWORD *a3, _OWORD *a4, int a5)
{
  v119 = *MEMORY[0x277D85DE8];
  v5 = a1[712];
  v6 = a1[713];
  v7 = a1[715];
  v8 = a1[717];
  v9 = a1[718];
  if (!(v6 + v5 + v7 + v8 + v9))
  {
    return 201;
  }

  v11 = a1;
  v12 = *(a2 + 596);
  v103 = (v12 + 1);
  v102 = v12;
  v100 = *(a2 + 1900);
  if (v103 > v100)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = *(a2 + 1900);
  }

  memset(v118, 0, sizeof(v118));
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  if (v13 >= 0x10)
  {
    v14 = 16;
  }

  else
  {
    v14 = v13;
  }

  if (v13)
  {
    v15 = 0;
    v16 = v14 - 1;
    do
    {
      if (v5)
      {
        if (v14 <= v15 + 1)
        {
          v17 = v15 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v11;
        v19 = v17 + ~v15;
        v20 = v5 - 1;
        if (v19 < v5 - 1)
        {
          v20 = v19;
        }

        memcpy(v118 + 8 * v15, v18 + 784, 8 * v20 + 8);
        v21 = v5 - 1;
        if (v19 < v5 - 1)
        {
          v21 = v19;
        }

        v22 = v15 + 1 + v21;
        v23 = 1;
        do
        {
          if (v23 >= v5)
          {
            break;
          }

          ++v15;
          ++v23;
        }

        while (v14 > v15);
        v15 = v22;
        v11 = a1;
      }

      if (v8 && v15 < v14)
      {
        v24 = v16 - v15;
        v25 = v8 - 1;
        if (v24 < v8 - 1)
        {
          v25 = v16 - v15;
        }

        memcpy(v118 + 8 * v15, v11 + 880, 8 * v25 + 8);
        v26 = v8 - 1;
        if (v24 < v8 - 1)
        {
          v26 = v16 - v15;
        }

        v27 = v15 + v26 + 1;
        v28 = 1;
        do
        {
          if (v28 >= v8)
          {
            break;
          }

          ++v15;
          ++v28;
        }

        while (v14 > v15);
        v15 = v27;
      }

      if (v6 && v15 < v14)
      {
        v29 = v16 - v15;
        v30 = v6 - 1;
        if (v29 < v6 - 1)
        {
          v30 = v16 - v15;
        }

        memcpy(v118 + 8 * v15, v11 + 816, 8 * v30 + 8);
        v31 = v6 - 1;
        if (v29 < v6 - 1)
        {
          v31 = v16 - v15;
        }

        v32 = v15 + v31 + 1;
        v33 = 1;
        do
        {
          if (v33 >= v6)
          {
            break;
          }

          ++v15;
          ++v33;
        }

        while (v14 > v15);
        v15 = v32;
      }

      if (v7 && v15 < v14)
      {
        v34 = v16 - v15;
        v35 = v7 - 1;
        if (v34 < v7 - 1)
        {
          v35 = v16 - v15;
        }

        memcpy(v118 + 8 * v15, v11 + 720, 8 * v35 + 8);
        v36 = v7 - 1;
        if (v34 < v7 - 1)
        {
          v36 = v16 - v15;
        }

        v37 = v15 + v36 + 1;
        v38 = 1;
        do
        {
          if (v38 >= v7)
          {
            break;
          }

          ++v15;
          ++v38;
        }

        while (v14 > v15);
        v15 = v37;
      }

      if (v9 && v15 < v14)
      {
        v39 = v16 - v15;
        v40 = v9 - 1;
        if (v39 < v9 - 1)
        {
          v40 = v16 - v15;
        }

        memcpy(v118 + 8 * v15, v11 + 912, 8 * v40 + 8);
        v41 = v9 - 1;
        if (v39 < v9 - 1)
        {
          v41 = v16 - v15;
        }

        v42 = v15 + v41 + 1;
        v43 = 1;
        do
        {
          if (v43 >= v9)
          {
            break;
          }

          ++v15;
          ++v43;
        }

        while (v14 > v15);
        v15 = v42;
      }
    }

    while (v15 < v14);
  }

  if ((v102 & 0x80000000) == 0)
  {
    v44 = 0;
    v46 = a2;
    v45 = a3;
    v47 = *(a2 + 604);
    v48 = a4;
    v49 = a5;
    v50 = v103;
    while (1)
    {
      v51 = v47 ? *(a2 + 608 + 4 * v44) : v44;
      v52 = *(v118 + v51);
      *(a3 + v44) = v52;
      if (!v52)
      {
        break;
      }

      if (v103 == ++v44)
      {
        v53 = v103;
        goto LABEL_73;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_171;
    }

    *v110 = 136315138;
    *&v110[4] = "getReferencePictureList";
    v55 = MEMORY[0x277D86220];
    v56 = "AppleAVD: %s(): RefPicList0 Missing Reference detected !";
    v57 = v110;
    goto LABEL_170;
  }

  v53 = 0;
  v45 = a3;
  v48 = a4;
  v50 = v103;
  v46 = a2;
LABEL_73:
  if (*(v46 + 20))
  {
    v54 = 0;
    if (!v53)
    {
      goto LABEL_157;
    }
  }

  else
  {
    v98 = v53;
    v58 = *(v46 + 600);
    v97 = (v58 + 1);
    v99 = v58;
    if (v97 > v100)
    {
      v59 = v58 + 1;
    }

    else
    {
      v59 = v100;
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    *v110 = 0u;
    v111 = 0u;
    *v48 = 0u;
    v48[1] = 0u;
    v48[2] = 0u;
    v48[3] = 0u;
    v48[4] = 0u;
    v48[5] = 0u;
    v48[6] = 0u;
    v48[7] = 0u;
    if (v59 >= 0x10)
    {
      v60 = 16;
    }

    else
    {
      v60 = v59;
    }

    if (v59)
    {
      v61 = 0;
      v62 = v60 - 1;
      do
      {
        if (v6)
        {
          if (v60 <= v61 + 1)
          {
            v63 = v61 + 1;
          }

          else
          {
            v63 = v60;
          }

          v64 = v63 + ~v61;
          v65 = v6 - 1;
          if (v64 < v6 - 1)
          {
            v65 = v64;
          }

          memcpy(&v110[8 * v61], v11 + 816, 8 * v65 + 8);
          v66 = v6 - 1;
          if (v64 < v6 - 1)
          {
            v66 = v64;
          }

          v67 = v61 + 1 + v66;
          v68 = 1;
          do
          {
            if (v68 >= v6)
            {
              break;
            }

            ++v61;
            ++v68;
          }

          while (v60 > v61);
          v61 = v67;
          v11 = a1;
        }

        if (v9 && v61 < v60)
        {
          v69 = v62 - v61;
          v70 = v9 - 1;
          if (v69 < v9 - 1)
          {
            v70 = v62 - v61;
          }

          memcpy(&v110[8 * v61], v11 + 912, 8 * v70 + 8);
          v71 = v9 - 1;
          if (v69 < v9 - 1)
          {
            v71 = v62 - v61;
          }

          v72 = v61 + v71 + 1;
          v73 = 1;
          do
          {
            if (v73 >= v9)
            {
              break;
            }

            ++v61;
            ++v73;
          }

          while (v60 > v61);
          v61 = v72;
        }

        if (v5 && v61 < v60)
        {
          v74 = v62 - v61;
          v75 = v5 - 1;
          if (v74 < v5 - 1)
          {
            v75 = v62 - v61;
          }

          memcpy(&v110[8 * v61], v11 + 784, 8 * v75 + 8);
          v76 = v5 - 1;
          if (v74 < v5 - 1)
          {
            v76 = v62 - v61;
          }

          v77 = v61 + v76 + 1;
          v78 = 1;
          do
          {
            if (v78 >= v5)
            {
              break;
            }

            ++v61;
            ++v78;
          }

          while (v60 > v61);
          v61 = v77;
        }

        if (v7 && v61 < v60)
        {
          v79 = v62 - v61;
          v80 = v7 - 1;
          if (v79 < v7 - 1)
          {
            v80 = v62 - v61;
          }

          memcpy(&v110[8 * v61], v11 + 720, 8 * v80 + 8);
          v81 = v7 - 1;
          if (v79 < v7 - 1)
          {
            v81 = v62 - v61;
          }

          v82 = v61 + v81 + 1;
          v83 = 1;
          do
          {
            if (v83 >= v7)
            {
              break;
            }

            ++v61;
            ++v83;
          }

          while (v60 > v61);
          v61 = v82;
        }

        if (v8 && v61 < v60)
        {
          v84 = v62 - v61;
          v85 = v8 - 1;
          if (v84 < v8 - 1)
          {
            v85 = v62 - v61;
          }

          memcpy(&v110[8 * v61], v11 + 880, 8 * v85 + 8);
          v86 = v8 - 1;
          if (v84 < v8 - 1)
          {
            v86 = v62 - v61;
          }

          v87 = v61 + v86 + 1;
          v88 = 1;
          do
          {
            if (v88 >= v8)
            {
              break;
            }

            ++v61;
            ++v88;
          }

          while (v60 > v61);
          v61 = v87;
        }
      }

      while (v61 < v60);
    }

    if ((v99 & 0x80000000) == 0)
    {
      v89 = 0;
      v46 = a2;
      v45 = a3;
      v90 = *(a2 + 605);
      v48 = a4;
      v49 = a5;
      v54 = v97;
      while (1)
      {
        v91 = v90 ? *(a2 + 672 + 4 * v89) : v89;
        v92 = *&v110[8 * v91];
        *(a4 + v89) = v92;
        if (!v92)
        {
          break;
        }

        if (v97 == ++v89)
        {
          goto LABEL_148;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_171;
      }

      *buf = 136315138;
      v109 = "getReferencePictureList";
      v55 = MEMORY[0x277D86220];
      v56 = "AppleAVD: %s(): RefPicList1 Missing Reference detected !";
      v57 = buf;
LABEL_170:
      _os_log_impl(&dword_277606000, v55, OS_LOG_TYPE_DEFAULT, v56, v57, 0xCu);
LABEL_171:
      if (v49)
      {
        return 410;
      }

      else
      {
        return 201;
      }
    }

    v54 = 0;
    v45 = a3;
    v48 = a4;
    v46 = a2;
LABEL_148:
    v50 = v103;
    v53 = v98;
    if (!v98)
    {
      goto LABEL_157;
    }
  }

  if (!v54)
  {
    v93 = *(v46 + 600);
    if ((v93 & 0x80000000) == 0)
    {
      v94 = 0;
      v95 = v93 + 1;
      do
      {
        if (v94 >= v53)
        {
          *(v48 + v94) = *(v48 + v94 - 1);
        }

        else
        {
          *(v48 + v94) = *(v45 + v94);
        }

        ++v94;
      }

      while (v95 != v94);
    }

    return 0;
  }

LABEL_157:
  if (v54 && !v53)
  {
    if ((v102 & 0x80000000) == 0)
    {
      v96 = 0;
      do
      {
        if (v96 >= v54)
        {
          *(v45 + v96) = *(v45 + v96 - 1);
        }

        else
        {
          *(v45 + v96) = *(v48 + v96);
        }

        ++v96;
      }

      while (v50 != v96);
    }

    return 0;
  }

  if (v54 | v53)
  {
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v110 = 136315138;
    *&v110[4] = "getReferencePictureList";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): l0_count + l1_count ==0 !", v110, 0xCu);
  }

  return 1;
}

uint64_t CAVDHevcDecoder::createDPB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 456))(a1, a4);
  v6 = HEVC_RLM::addNewReferencePicture(*(a1 + 3016), a3);
  if (v6 > 0xF)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v6;
  *(**(a1 + 8288) + 4 * v6) = *(a1 + 8228);
  *(**(a1 + 8296) + 4 * v6) = *(a1 + 8244);
  *(a1 + 8312) = v6;
  result = (*(*a1 + 184))(a1);
  if (result)
  {
    result = 0;
    *(**(a1 + 8304) + 4 * v8) = *(a1 + 8260);
  }

  return result;
}

uint64_t CAVDHevcDecoder::getSlicesTypeInFrame(CAVDHevcDecoder *this, int a2)
{
  v2 = *(this + 1023);
  v3 = *(v2 + 44);
  *(this + 745) = v3;
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = (v2 + 44);
    do
    {
      v3 &= *v5;
      v5 += 590;
      --v4;
    }

    while (v4);
    *(this + 745) = v3;
  }

  *(this + 3577) = v3 != 2;
  return 0;
}

uint64_t HEVC_RLM::addNewReferencePicture(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 2))
  {
    v4 = (a1 + 40);
    v5 = 16;
    do
    {
      if (*(v4 - 24) == 1 && *(v4 - 22) && *(v4 - 3) > *(a2 + 12))
      {
        ++*v4;
      }

      v4 += 44;
      --v5;
    }

    while (v5);
  }

  v6 = HEVC_RLM::addNewEntry(a1, a2);
  v7 = *(a2 + 4);
  if (*(a2 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = (v7 - 6) >= 4;
  }

  if (v8 && (v7 & 0xFFFFFFF1) != 0)
  {
    *(a1 + 6596) = *(a2 + 16);
    *(a1 + 6600) = *(a1 + 6592);
  }

  if ((v7 & 0xFFFFFFF8) == 0x10)
  {
    *(a1 + 2840) = v6;
  }

  if (v6)
  {
    return *(v6 + 44);
  }

  else
  {
    return 16;
  }
}

uint64_t HEVC_RLM::addNewEntry(uint64_t a1, _OWORD *a2)
{
  v2 = 0;
  v3 = 0;
  v19 = *MEMORY[0x277D85DE8];
  do
  {
    v4 = a1 + v2;
    if (!*(a1 + v2 + 16))
    {
      v5 = v4 + 16;
      v7 = a2[1];
      v6 = a2[2];
      *(v4 + 16) = *a2;
      *(v4 + 32) = v7;
      *(v4 + 48) = v6;
      v8 = a2[3];
      v9 = a2[4];
      v10 = a2[6];
      *(v4 + 96) = a2[5];
      *(v4 + 112) = v10;
      *(v4 + 64) = v8;
      *(v4 + 80) = v9;
      v11 = a2[7];
      v12 = a2[8];
      v13 = a2[10];
      *(v4 + 160) = a2[9];
      *(v4 + 176) = v13;
      *(v4 + 128) = v11;
      *(v4 + 144) = v12;
      *(v4 + 36) = 1;
      *(v4 + 16) = 1;
      *(v4 + 60) = v3;
      ++*(a1 + 2832);
      return v5;
    }

    ++v3;
    v2 += 176;
  }

  while (v2 != 2816);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "addNewEntry";
    v17 = 1024;
    v18 = 196;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v15, 0x12u);
  }

  return 0;
}

BOOL CAVDHevcDecoder::isWPPCompliant(CAVDHevcDecoder *this, unsigned int a2, unsigned int a3)
{
  if (a3 < 2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = (*(this + 1023) + 2396);
  v8 = a3 - 1;
  v9 = 2;
  do
  {
    v10 = v6;
    v11 = *v7 / a2;
    v6 = *v7 % a2;
    if (v10 && v11 != v5 && (v11 != v5 + 1 || v6 != 0))
    {
      break;
    }

    v7 += 590;
    v4 = v9++ >= a3;
    v5 = v11;
    --v8;
  }

  while (v8);
  return v4;
}

BOOL HEVC_RLM::bumpingProcess(HEVC_RLM *a1, _OWORD *a2)
{
  v2 = 0;
  v3 = a1 + 16;
  v4 = -1;
  v5 = 0x7FFFFFFF;
  v6 = a1 + 16;
  do
  {
    if (*v6 == 1 && v6[2] && *(v6 + 3) < v5)
    {
      v4 = v2;
      v5 = *(v6 + 3);
    }

    ++v2;
    v6 += 176;
  }

  while (v2 != 16);
  if (v4 != -1)
  {
    if (a2)
    {
      v7 = &v3[176 * v4];
      v8 = *v7;
      v9 = *(v7 + 2);
      a2[1] = *(v7 + 1);
      a2[2] = v9;
      *a2 = v8;
      v10 = *(v7 + 3);
      v11 = *(v7 + 4);
      v12 = *(v7 + 6);
      a2[5] = *(v7 + 5);
      a2[6] = v12;
      a2[3] = v10;
      a2[4] = v11;
      v13 = *(v7 + 7);
      v14 = *(v7 + 8);
      v15 = *(v7 + 10);
      a2[9] = *(v7 + 9);
      a2[10] = v15;
      a2[7] = v13;
      a2[8] = v14;
    }

    v16 = &v3[176 * v4];
    v16[2] = 0;
    if (!*(v16 + 5))
    {
      HEVC_RLM::removeEntry(a1, v4);
    }
  }

  return v4 != -1;
}

uint64_t CAVDHevcDecoder::insertFrame(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8324);
  v5 = *(a1 + 8336);
  if (v4 - *(a1 + 8320) >= v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "insertFrame";
    v24 = 1024;
    v25 = 3309;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v22, 0x12u);
  }

  v6 = *(a1 + 8328);
  if (v6)
  {
    v7 = *(a2 + 28);
    v8 = v6 + ((v4 % v5) << 7);
    *v8 = 1;
    *(v8 + 4) = v7;
    v9 = *(a1 + 2644);
    v10 = v9 == 0;
    v11 = v9 != 0;
    v12 = 8288;
    if (!v10)
    {
      v12 = 8296;
    }

    v13 = 48;
    if (!v10)
    {
      v13 = 56;
    }

    *(v8 + 8) = v11;
    v14 = *(*(a1 + v12) + 8 * v7);
    v15 = *(a2 + v13);
    *(v8 + 12) = *(v14 + 4 * *(a2 + 44));
    *(v8 + 16) = v15;
    v16 = *(a2 + 168);
    v17 = *(a2 + 152);
    v18 = *(a2 + 136);
    *(v8 + 72) = *(a2 + 120);
    *(v8 + 88) = v18;
    *(v8 + 104) = v17;
    *(v8 + 120) = v16;
    v19 = *(a2 + 72);
    v20 = *(a2 + 88);
    *(v8 + 56) = *(a2 + 104);
    *(v8 + 40) = v20;
    *(v8 + 24) = v19;
    ++*(a1 + 8324);
  }

  return 0;
}

uint64_t CAHDecCatnipHevc::populatePictureRegisters(CAHDecCatnipHevc *this)
{
  v509 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v8 = *(v2 + 2964);
  v488 = *(v2 + 2948);
  v489 = *(v2 + 2960);
  v484 = *(v2 + 2952);
  v485 = *(v2 + 2924);
  v479 = *(v2 + 2088);
  v480 = *(v2 + 8280);
  v482 = *(v2 + 3548);
  v483 = *(v2 + 8994);
  v494 = *(v2 + 2644);
  v487 = *(v2 + 8312);
  v486 = *(v2 + 8);
  v9 = *(v2 + 8424);
  v508[0] = *(v2 + 8408);
  v508[1] = v9;
  v10 = *(v2 + 8456);
  v508[2] = *(v2 + 8440);
  v508[3] = v10;
  v481 = *(v2 + 8608);
  v11 = (*(*v2 + 184))(v2);
  v12 = *(this + 32);
  v493 = v11 && (v12[689] || v12[4] == 1);
  v13 = *(this + 33);
  v14 = v5 + 23176 * v3;
  v15 = *(v14 + 4424) + *(v14 + 4420);
  memset(v507, 0, sizeof(v507));
  memset(v506, 0, sizeof(v506));
  (*(*v12 + 344))();
  v16 = 0;
  v17 = *(this + 32);
  v18 = (v17 + 8616);
  do
  {
    v510 = vld2q_f64(v18);
    v18 += 4;
    v507[v16] = v510.val[0];
    v506[v16++] = v510.val[1];
  }

  while (v16 != 4);
  v19 = v6 + 9856 * v4;
  if (*(v19 + 52))
  {
    v20 = 0;
    v21 = *(v19 + 56) + 1;
    v22 = *(this + 33);
    *(v22 + 684) = v21;
    do
    {
      *(v22 + 688 + 2 * v20) = *(v19 + 9676 + 4 * v20);
      v23 = v20++ >= v21;
    }

    while (!v23);
    v24 = 0;
    v25 = *(v19 + 60) + 1;
    *(v22 + 686) = v25;
    do
    {
      *(v22 + 730 + 2 * v24) = *(v19 + 9760 + 4 * v24);
      v23 = v24++ >= v25;
    }

    while (!v23);
    v26 = v21 * v25;
  }

  else
  {
    v27 = *(this + 33);
    *(v27 + 684) = 65537;
    *(v27 + 688) = 0;
    *(v27 + 690) = *(v14 + 22880);
    *(v27 + 730) = 0;
    *(v27 + 732) = *(v14 + 22888);
    v26 = 1;
  }

  v491 = v26;
  v28 = v17[2675];
  v29 = v17[2674];
  if (v28 | v29)
  {
    v30 = v15;
    v31 = *(v14 + 3636);
    if (v31 <= *(v14 + 3640))
    {
      v31 = *(v14 + 3640);
    }

    v32 = (v31 + 9) & 0xFFFFFFFE;
    if (v32 == 8)
    {
      v41 = 1;
      v40 = 8;
      if (!v17[2675])
      {
        goto LABEL_52;
      }
    }

    else
    {
      v33 = v17[2672];
      if (v33)
      {
        v34 = 12;
      }

      else
      {
        v34 = 11;
      }

      if (v33)
      {
        v35 = 5;
      }

      else
      {
        v35 = 4;
      }

      v36 = v33 == 0;
      if (v33)
      {
        v37 = 10;
      }

      else
      {
        v37 = 9;
      }

      if (v36)
      {
        v38 = 2;
      }

      else
      {
        v38 = 3;
      }

      if (v32 == 10)
      {
        v39 = v38;
      }

      else
      {
        v37 = 27;
        v39 = 27;
      }

      if (v32 == 12)
      {
        v40 = v34;
      }

      else
      {
        v40 = v37;
      }

      if (v32 == 12)
      {
        v41 = v35;
      }

      else
      {
        v41 = v39;
      }

      if (!v28)
      {
LABEL_52:
        LOBYTE(v15) = v30;
        if (v29 && (v29 == 3 && v41 - 9 < 2 || v41 <= 0x1A && ((1 << v41) & 0x4C00000) != 0 && v29 <= 2))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "populatePictureRegisters";
            *&buf[12] = 1024;
            *&buf[14] = v41;
            *&buf[18] = 1024;
            *&buf[20] = v29;
            v42 = MEMORY[0x277D86220];
            v43 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
            goto LABEL_250;
          }

          return 0xFFFFFFFFLL;
        }

        goto LABEL_60;
      }
    }

    if (*(v14 + 3600) && (v28 == 2 && v40 == 8 || v28 == 3 && (v40 - 9) <= 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v40;
        *&buf[18] = 1024;
        *&buf[20] = v28;
        v42 = MEMORY[0x277D86220];
        v43 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
LABEL_250:
        v234 = buf;
        v235 = 24;
LABEL_251:
        _os_log_impl(&dword_277606000, v42, OS_LOG_TYPE_DEFAULT, v43, v234, v235);
      }

      return 0xFFFFFFFFLL;
    }

    goto LABEL_52;
  }

LABEL_60:
  *(v13 + 88) = 766509056;
  v44 = (*(**(this + 32) + 232))(*(this + 32));
  if (v44)
  {
    v45 = (*(*(this + 32) + 2980) == 2) << 13;
  }

  else
  {
    v45 = 0;
  }

  v46 = v7 >> 28;
  v47 = ((v494 != 0) << 12) | ((v494 == 1) << 10) | v45 | *(v13 + 88) & 0xFFFFC15F;
  v48 = v47 & 0xFFFFF500 | 0x2A0;
  v49 = v47 | 0x2B0;
  if (v493)
  {
    v48 = v49;
  }

  *(v13 + 88) = v29 & 3 | (4 * (v28 & 3)) | v48 & 0xFFFFFFF0 | 0x40;
  v50 = *(this + 32);
  v51 = v29 & 3 | (4 * (v28 & 3)) | v48 & 0xFFF7FFF0 | 0x40 | ((v50[2652] & 1) << 19);
  *(v13 + 88) = v51;
  v52 = v51 & 0xFFFBFFFF | ((v50[2653] & 1) << 18);
  *(v13 + 88) = v52;
  v53 = v52 & 0xFFFDFFFF | ((v50[2654] & 1) << 17);
  *(v13 + 88) = v53;
  if ((v7 & 1) != 0 && *(v19 + 53) && *(v14 + 22888) > v46 + 1 || (v7 & 2) != 0 && !*(v19 + 53) && *(v19 + 52) && v491 > v46 + 1)
  {
    goto LABEL_78;
  }

  if ((v7 & 0x20) == 0 || (v54 = *(v19 + 53), *(v19 + 53)))
  {
    v54 = 0;
    goto LABEL_79;
  }

  if (!*(v19 + 52) && v489 > v46 + 1)
  {
LABEL_78:
    v54 = (v8 == 0) << 27;
  }

LABEL_79:
  *(v13 + 92) = v54;
  *(v13 + 96) = 0;
  v55 = *(v14 + 3608) - 1;
  *(v13 + 96) = v55;
  v56 = *(v14 + 3612);
  *(v13 + 100) = 0;
  *(v13 + 104) = 0;
  *(v13 + 96) = (v55 | (v56 << 16)) - 0x10000;
  if (*(v19 + 6466))
  {
    v57 = 32 * (*(v19 + 6477) & 1);
    *(v13 + 104) = v57;
    if (*(v19 + 6477))
    {
      v58 = *(v19 + 6484) & 7;
    }

    else
    {
      v58 = 0;
    }

    v60 = v58 | v57;
    *(v13 + 104) = v58 | v57;
    if (v57)
    {
      v61 = (v19 + 6512);
      v62 = (v13 + 112);
      v63 = -1;
      do
      {
        v64 = *v62 & 0xFFFFFFE0 | *v61 & 0x1F;
        *v62 = v64;
        *v62++ = v64 & 0xFFFFFC1F | (32 * (*(v61 - 6) & 0x1F));
        ++v63;
        ++v61;
      }

      while (v63 < v58);
    }

    LOBYTE(v65) = *(v19 + 6477);
    if (v65)
    {
      v65 = *(v19 + 6480);
    }

    v66 = (8 * ((v15 - v65) & 3)) | v60;
    *(v13 + 104) = v66;
    v67 = v66 & 0xFFFFFFBF | ((*(v19 + 6476) & 1) << 6);
    *(v13 + 104) = v67;
    v59 = v67 & 0xFFFFFE7F | ((*(v19 + 6472) & 3) << 7);
  }

  else
  {
    v59 = 8 * (v15 & 3);
  }

  *(v13 + 104) = v59;
  LOBYTE(v68) = *(v19 + 34);
  if (v68)
  {
    v68 = *(v19 + 36);
  }

  v69 = v59 & 0xFFFE7FFF | (((v15 - v68) & 3) << 15);
  *(v13 + 104) = v69;
  v70 = v69 & 0xFFFFF1FF | ((*(v19 + 6460) & 7) << 9);
  *(v13 + 104) = v70;
  v71 = v70 & 0xFFFFEFFF | ((*(v19 + 53) & 1) << 12);
  *(v13 + 104) = v71;
  v72 = v71 & 0xFFFFDFFF | ((*(v19 + 52) & 1) << 13);
  *(v13 + 104) = v72;
  v73 = v72 & 0xFFFFBFFF | ((*(v19 + 51) & 1) << 14);
  *(v13 + 104) = v73;
  v74 = v73 & 0xFFFDFFFF | ((*(v19 + 34) & 1) << 17);
  *(v13 + 104) = v74;
  v75 = v74 & 0xFFFBFFFF | ((*(v19 + 33) & 1) << 18);
  *(v13 + 104) = v75;
  v76 = v75 & 0xFFF7FFFF | ((*(v19 + 32) & 1) << 19);
  *(v13 + 104) = v76;
  v77 = v76 & 0xFFEFFFFF | ((*(v19 + 16) & 1) << 20);
  *(v13 + 104) = v77;
  if ((v48 & 0x2000) != 0)
  {
    v78 = 0;
  }

  else
  {
    v78 = (*(v14 + 22284) != 0) << 21;
  }

  *(v13 + 104) = v78 | v77 & 0xFFDFFFFF;
  v79 = *(v13 + 108) & 0xFFFFFFE0 | *(v19 + 44) & 0x1F;
  *(v13 + 108) = v79;
  *(v13 + 108) = v79 & 0xFFFFFC1F | (32 * (*(v19 + 40) & 0x1F));
  if (*(v19 + 252))
  {
    CAHDecTansyHevc::copyScalingList(v44, v13 + 136, *(this + 33) + 1784, *(v14 + 3600), v19 + 256);
    v53 = *(v13 + 88);
  }

  if ((~v53 & 0xC0000) != 0)
  {
    v84 = 0;
    v86 = 0;
    *(v13 + 156) = 0;
    *(v13 + 160) = 0;
  }

  else
  {
    v80 = *(this + 32);
    v81 = v80[664];
    if (!v81 || !v80[665])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v233 = v80[665];
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v81;
        *&buf[18] = 1024;
        *&buf[20] = v233;
        v42 = MEMORY[0x277D86220];
        v43 = "AppleAVD: %s(): invalid stat crop width/height %d/%d";
        goto LABEL_250;
      }

      return 0xFFFFFFFFLL;
    }

    v82 = v80[666];
    *(v13 + 156) = v82;
    v83 = v80[667];
    v84 = v83 << 16;
    *(v13 + 156) = v82 | (v83 << 16);
    v85 = v80[666] + v80[664] - 1;
    *(v13 + 160) = *(v80 + 1332) + *(v80 + 1328) - 1;
    v86 = ((v80[665] + v80[667]) << 16) - 0x10000;
    *(v13 + 160) = v86 & 0xFFFF0000 | v85;
  }

  if (v8)
  {
    v87 = 7340080;
  }

  else
  {
    v87 = 3145776;
  }

  *(v13 + 164) = v87;
  if (!*(*(this + 32) + 2892))
  {
    v88 = *(v14 + 3608) - 1;
    *(v13 + 160) = v86 | v88;
    v89 = (*(v14 + 3612) << 16) - 0x10000;
    *(v13 + 160) = v89 & 0xFFFF0000 | v88;
    if (*(v14 + 3616))
    {
      if ((v53 & 0x800) != 0)
      {
        v90 = *(v14 + 3620) * *(v14 + 22852);
        *(v13 + 156) = v84 | v90;
        *(v13 + 156) = v90 | ((*(v14 + 22856) * *(v14 + 3628)) << 16);
        v91 = *(v14 + 3608) + ~(*(v14 + 3624) * *(v14 + 22852));
        *(v13 + 160) = v91 | v89;
        *(v13 + 160) = v91 | ((*(v14 + 3612) + ~(*(v14 + 3632) * *(v14 + 22856))) << 16);
      }
    }
  }

  v92 = 0;
  v93 = this + 6160;
  do
  {
    *(*(this + 33) + v92 + 168) = 0;
    v94 = *(this + 33) + v92;
    v95 = *(v94 + 168);
    *(v94 + 168) = 0;
    *(*(this + 33) + v92 + 168) ^= 0xFFFFFF00;
    v96 = *(this + 33) + v92;
    v97 = *(v96 + 168);
    *(v96 + 168) = v95;
    if (*v93 || *(v93 + 38) || *(v93 + 39))
    {
      result = CAHDec::addToPatcherList(this, v93, v92 + 168, 0, 0xFFFFFFFFLL, 8, v97, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v92 + 196) = 0;
    *(*(this + 33) + v92 + 196) = *(*(this + 33) + v92 + 196) & 0x800001FF | (((*(this + 2952) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v92 + 460) = 0;
    v99 = *(this + 33) + v92;
    v100 = *(v99 + 460);
    *(v99 + 460) = 0;
    *(*(this + 33) + v92 + 460) ^= 0x3FFu;
    v101 = *(this + 33) + v92;
    v102 = *(v101 + 460);
    *(v101 + 460) = v100;
    if (*v93 || *(v93 + 38) || *(v93 + 39))
    {
      result = CAHDec::addToPatcherList(this, v93, v92 + 460, 0, 0x3FFFFFFFFFFLL, 32, v102, 4);
      if (result)
      {
        return result;
      }
    }

    v92 += 4;
    v93 += 176;
  }

  while (v92 != 28);
  *(*(this + 33) + 224) = 0;
  *(*(this + 33) + 488) = 0;
  if ((*(v13 + 90) & 8) == 0)
  {
    goto LABEL_516;
  }

  v103 = *(this + 33);
  v104 = *(*(this + 32) + 2680);
  v504 = 0u;
  v505 = 0u;
  v502 = 0u;
  v503 = 0u;
  v500 = 0u;
  v501 = 0u;
  v498 = 0u;
  v499 = 0u;
  v497 = 0u;
  memset(buf, 0, sizeof(buf));
  v105 = (*(v103 + 16) & 0xF) << 9;
  *buf = v104;
  v106 = *(v103 + 224);
  *(v103 + 224) = 0;
  *(*(this + 33) + 224) ^= 0xFFFFFF00;
  v107 = *(this + 33);
  v108 = *(v107 + 224);
  *(v107 + 224) = v106;
  if (v104)
  {
    result = CAHDec::addToPatcherList(this, buf, 224, v105, 0xFFFFFFFFLL, 8, v108, 4);
    if (result)
    {
      return result;
    }

    if (*buf)
    {
      v109 = 0;
    }

    else
    {
      v109 = DWORD2(v504) == 0;
    }

    LODWORD(v104) = !v109 || HIDWORD(v504) != 0;
  }

  v111 = *(this + 33);
  v112 = *(v111 + 488);
  *(v111 + 488) = 0;
  *(*(this + 33) + 488) ^= 0x3FFu;
  v113 = *(this + 33);
  v114 = *(v113 + 488);
  *(v113 + 488) = v112;
  if (!v104 || (result = CAHDec::addToPatcherList(this, buf, 488, v105, 0x3FFFFFFFFFFLL, 32, v114, 4), !result))
  {
LABEL_516:
    if ((*(*(this + 33) + 228) = 0, v115 = *(this + 33), v116 = *(v115 + 228), *(v115 + 228) = 0, *(*(this + 33) + 228) ^= 0xFFFFFF00, v117 = *(this + 33), v118 = *(v117 + 228), *(v117 + 228) = v116, !*(this + 1298)) && !*(this + 2634) && !*(this + 2635) || (result = CAHDec::addToPatcherList(this, this + 1298, 228, 0, 0xFFFFFFFFLL, 8, v118, 4), !result))
    {
      if ((*(*(this + 33) + 492) = 0, v119 = *(this + 33), v120 = *(v119 + 492), *(v119 + 492) = 0, *(*(this + 33) + 492) ^= 0x3FFu, v121 = *(this + 33), v122 = *(v121 + 492), *(v121 + 492) = v120, !*(this + 1298)) && !*(this + 2634) && !*(this + 2635) || (result = CAHDec::addToPatcherList(this, this + 1298, 492, 0, 0x3FFFFFFFFFFLL, 32, v122, 4), !result))
      {
        if ((*(*(this + 33) + 232) = 0, v123 = *(this + 33), v124 = *(v123 + 232), *(v123 + 232) = 0, *(*(this + 33) + 232) ^= 0xFFFFFF00, v125 = *(this + 33), v126 = *(v125 + 232), *(v125 + 232) = v124, !*(this + 1320)) && !*(this + 2678) && !*(this + 2679) || (result = CAHDec::addToPatcherList(this, this + 1320, 232, 0, 0xFFFFFFFFLL, 8, v126, 4), !result))
        {
          if ((*(*(this + 33) + 496) = 0, v127 = *(this + 33), v128 = *(v127 + 496), *(v127 + 496) = 0, *(*(this + 33) + 496) ^= 0x3FFu, v129 = *(this + 33), v130 = *(v129 + 496), *(v129 + 496) = v128, !*(this + 1320)) && !*(this + 2678) && !*(this + 2679) || (result = CAHDec::addToPatcherList(this, this + 1320, 496, 0, 0x3FFFFFFFFFFLL, 32, v130, 4), !result))
          {
            if ((*(*(this + 33) + 236) = 0, v131 = *(this + 33), v132 = *(v131 + 236), *(v131 + 236) = 0, *(*(this + 33) + 236) ^= 0xFFFFFF00, v133 = *(this + 33), v134 = *(v133 + 236), *(v133 + 236) = v132, !*(this + 1342)) && !*(this + 2722) && !*(this + 2723) || (result = CAHDec::addToPatcherList(this, this + 1342, 236, 0, 0xFFFFFFFFLL, 8, v134, 4), !result))
            {
              if ((*(*(this + 33) + 500) = 0, v135 = *(this + 33), v136 = *(v135 + 500), *(v135 + 500) = 0, *(*(this + 33) + 500) ^= 0x3FFu, v137 = *(this + 33), v138 = *(v137 + 500), *(v137 + 500) = v136, !*(this + 1342)) && !*(this + 2722) && !*(this + 2723) || (result = CAHDec::addToPatcherList(this, this + 1342, 500, 0, 0x3FFFFFFFFFFLL, 32, v138, 4), !result))
              {
                if ((*(*(this + 33) + 240) = 0, v139 = *(this + 33), v140 = *(v139 + 240), *(v139 + 240) = 0, *(*(this + 33) + 240) ^= 0xFFFFFF00, v141 = *(this + 33), v142 = *(v141 + 240), *(v141 + 240) = v140, !*(this + 1364)) && !*(this + 2766) && !*(this + 2767) || (result = CAHDec::addToPatcherList(this, this + 1364, 240, 0, 0xFFFFFFFFLL, 8, v142, 4), !result))
                {
                  if ((*(*(this + 33) + 504) = 0, v143 = *(this + 33), v144 = *(v143 + 504), *(v143 + 504) = 0, *(*(this + 33) + 504) ^= 0x3FFu, v145 = *(this + 33), v146 = *(v145 + 504), *(v145 + 504) = v144, !*(this + 1364)) && !*(this + 2766) && !*(this + 2767) || (result = CAHDec::addToPatcherList(this, this + 1364, 504, 0, 0x3FFFFFFFFFFLL, 32, v146, 4), !result))
                  {
                    if ((v490 = v14, v492 = v13, *(*(this + 33) + 244) = 0, v147 = *(this + 33), v148 = *(v147 + 244), *(v147 + 244) = 0, *(*(this + 33) + 244) ^= 0xFFFFFF00, v149 = *(this + 33), v150 = *(v149 + 244), *(v149 + 244) = v148, !*(this + 1386)) && !*(this + 2810) && !*(this + 2811) || (result = CAHDec::addToPatcherList(this, this + 1386, 244, 0, 0xFFFFFFFFLL, 8, v150, 4), !result))
                    {
                      if ((*(*(this + 33) + 508) = 0, v151 = *(this + 33), v152 = *(v151 + 508), *(v151 + 508) = 0, *(*(this + 33) + 508) ^= 0x3FFu, v153 = *(this + 33), v154 = *(v153 + 508), *(v153 + 508) = v152, !*(this + 1386)) && !*(this + 2810) && !*(this + 2811) || (result = CAHDec::addToPatcherList(this, this + 1386, 508, 0, 0x3FFFFFFFFFFLL, 32, v154, 4), !result))
                      {
                        if ((*(*(this + 33) + 248) = 0, *(*(this + 33) + 512) = 0, v155 = *(this + 33), v156 = *(v155 + 248), *(v155 + 248) = 0, *(*(this + 33) + 248) ^= 0xFFFFFF00, v157 = *(this + 33), v158 = *(v157 + 248), *(v157 + 248) = v156, !*(this + 1408)) && !*(this + 2854) && !*(this + 2855) || (result = CAHDec::addToPatcherList(this, this + 1408, 248, 0, 0xFFFFFFFFLL, 8, v158, 4), !result))
                        {
                          if ((v159 = *(this + 33), v160 = *(v159 + 512), *(v159 + 512) = 0, *(*(this + 33) + 512) ^= 0x3FFu, v161 = *(this + 33), v162 = *(v161 + 512), *(v161 + 512) = v160, !*(this + 1408)) && !*(this + 2854) && !*(this + 2855) || (result = CAHDec::addToPatcherList(this, this + 1408, 512, 0, 0x3FFFFFFFFFFLL, 32, v162, 4), !result))
                          {
                            if ((*(*(this + 33) + 252) = 0, v163 = *(this + 33), v164 = *(v163 + 252), *(v163 + 252) = 0, *(*(this + 33) + 252) ^= 0xFFFFFF00, v165 = *(this + 33), v166 = *(v165 + 252), *(v165 + 252) = v164, !*(this + 924)) && !*(this + 1886) && !*(this + 1887) || (result = CAHDec::addToPatcherList(this, this + 924, 252, 0, 0xFFFFFFFFLL, 8, v166, 4), !result))
                            {
                              if ((*(*(this + 33) + 516) = 0, v167 = *(this + 33), v168 = *(v167 + 516), *(v167 + 516) = 0, *(*(this + 33) + 516) ^= 0x3FFu, v169 = *(this + 33), v170 = *(v169 + 516), *(v169 + 516) = v168, !*(this + 924)) && !*(this + 1886) && !*(this + 1887) || (result = CAHDec::addToPatcherList(this, this + 924, 516, 0, 0x3FFFFFFFFFFLL, 32, v170, 4), !result))
                              {
                                if ((*(*(this + 33) + 256) = 0, v171 = *(this + 33), v172 = *(v171 + 256), *(v171 + 256) = 0, *(*(this + 33) + 256) ^= 0xFFFFFF00, v173 = *(this + 33), v174 = *(v173 + 256), *(v173 + 256) = v172, v175 = (this + 176 * v487 + 7568), !*v175) && !*(this + 44 * v487 + 1930) && !*(this + 44 * v487 + 1931) || (result = CAHDec::addToPatcherList(this, this + 22 * v487 + 946, 256, 0, 0xFFFFFFFFLL, 8, v174, 4), !result))
                                {
                                  if ((*(*(this + 33) + 520) = 0, v176 = *(this + 33), v177 = *(v176 + 520), *(v176 + 520) = 0, *(*(this + 33) + 520) ^= 0x3FFu, v178 = *(this + 33), v179 = *(v178 + 520), *(v178 + 520) = v177, !*v175) && !*(this + 44 * v487 + 1930) && !*(this + 44 * v487 + 1931) || (result = CAHDec::addToPatcherList(this, this + 22 * v487 + 946, 520, 0, 0x3FFFFFFFFFFLL, 32, v179, 4), !result))
                                  {
                                    if ((*(*(this + 33) + 260) = 0, v180 = *(this + 33), v181 = *(v180 + 260), *(v180 + 260) = 0, *(*(this + 33) + 260) ^= 0xFFFFFF00, v182 = *(this + 33), v183 = *(v182 + 260), *(v182 + 260) = v181, !*(this + 1430)) && !*(this + 2898) && !*(this + 2899) || (result = CAHDec::addToPatcherList(this, this + 1430, 260, 0, 0xFFFFFFFFLL, 8, v183, 4), !result))
                                    {
                                      if ((*(*(this + 33) + 524) = 0, v184 = *(this + 33), v185 = *(v184 + 524), *(v184 + 524) = 0, *(*(this + 33) + 524) ^= 0x3FFu, v186 = *(this + 33), v187 = *(v186 + 524), *(v186 + 524) = v185, !*(this + 1430)) && !*(this + 2898) && !*(this + 2899) || (result = CAHDec::addToPatcherList(this, this + 1430, 524, 0, 0x3FFFFFFFFFFLL, 32, v187, 4), !result))
                                      {
                                        if ((*(*(this + 33) + 264) = 0, v188 = *(this + 33), v189 = *(v188 + 264), *(v188 + 264) = 0, *(*(this + 33) + 264) ^= 0xFFFFFF00, v190 = *(this + 33), v191 = *(v190 + 264), *(v190 + 264) = v189, !*(this + 1452)) && !*(this + 2942) && !*(this + 2943) || (result = CAHDec::addToPatcherList(this, this + 1452, 264, 0, 0xFFFFFFFFLL, 8, v191, 4), !result))
                                        {
                                          if ((*(*(this + 33) + 528) = 0, v192 = *(this + 33), v193 = *(v192 + 528), *(v192 + 528) = 0, *(*(this + 33) + 528) ^= 0x3FFu, v194 = *(this + 33), v195 = *(v194 + 528), *(v194 + 528) = v193, !*(this + 1452)) && !*(this + 2942) && !*(this + 2943) || (result = CAHDec::addToPatcherList(this, this + 1452, 528, 0, 0x3FFFFFFFFFFLL, 32, v195, 4), !result))
                                          {
                                            *(*(this + 33) + 268) = 0;
                                            *(*(this + 33) + 532) = 0;
                                            *(*(this + 33) + 272) = 0;
                                            *(*(this + 33) + 536) = 0;
                                            *(*(this + 33) + 276) = 0;
                                            *(*(this + 33) + 540) = 0;
                                            *(*(this + 33) + 280) = 0;
                                            *(*(this + 33) + 544) = 0;
                                            v196 = *(this + 33);
                                            if (*(*(this + 32) + 2648) == 1)
                                            {
                                              v197 = *(v196 + 272);
                                              *(v196 + 272) = 0;
                                              *(*(this + 33) + 272) ^= 0xFFFFFF80;
                                              v198 = *(this + 33);
                                              v199 = *(v198 + 272);
                                              *(v198 + 272) = v197;
                                              v201 = (v479 + 8);
                                              v200 = *(v479 + 8);
                                              if (v483)
                                              {
                                                if (v200 || *(v479 + 160) || *(v479 + 164))
                                                {
                                                  result = CAHDec::addToPatcherList(this, (v479 + 8), 272, *(v479 + 68), 0xFFFFFFFFLL, 7, v199, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v202 = *(this + 33);
                                                v203 = *(v202 + 536);
                                                *(v202 + 536) = 0;
                                                *(*(this + 33) + 536) ^= 0x3FFu;
                                                v204 = *(this + 33);
                                                v205 = *(v204 + 536);
                                                *(v204 + 536) = v203;
                                                if (*v201 || *(v479 + 160) || *(v479 + 164))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v201, 536, *(v479 + 68), 0x3FFFFFFFFFFLL, 32, v205, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v206 = *(this + 33);
                                                v207 = *(v206 + 268);
                                                *(v206 + 268) = 0;
                                                *(*(this + 33) + 268) ^= 0xFFFFFF80;
                                                v208 = *(this + 33);
                                                v209 = *(v208 + 268);
                                                *(v208 + 268) = v207;
                                                if (*v201 || *(v479 + 160) || *(v479 + 164))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v201, 268, *(v479 + 80), 0xFFFFFFFFLL, 7, v209, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v210 = *(this + 33);
                                                v211 = *(v210 + 532);
                                                *(v210 + 532) = 0;
                                                *(*(this + 33) + 532) ^= 0x3FFu;
                                                v212 = *(this + 33);
                                                v213 = *(v212 + 532);
                                                *(v212 + 532) = v211;
                                                if (*v201 || *(v479 + 160) || *(v479 + 164))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v201, 532, *(v479 + 80), 0x3FFFFFFFFFFLL, 32, v213, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                if (!v485)
                                                {
                                                  goto LABEL_320;
                                                }

                                                v214 = *(this + 33);
                                                v215 = *(v214 + 280);
                                                *(v214 + 280) = 0;
                                                *(*(this + 33) + 280) ^= 0xFFFFFF80;
                                                v216 = *(this + 33);
                                                v217 = *(v216 + 280);
                                                *(v216 + 280) = v215;
                                                if (*v480 || *(v480 + 152) || *(v480 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v480, 280, *(v480 + 56), 0xFFFFFFFFLL, 7, v217, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v218 = *(this + 33);
                                                v219 = *(v218 + 544);
                                                *(v218 + 544) = 0;
                                                *(*(this + 33) + 544) ^= 0x3FFu;
                                                v220 = *(this + 33);
                                                v221 = *(v220 + 544);
                                                *(v220 + 544) = v219;
                                                if (*v480 || *(v480 + 152) || *(v480 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v480, 544, *(v480 + 56), 0x3FFFFFFFFFFLL, 32, v221, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v222 = *(this + 33);
                                                v223 = *(v222 + 276);
                                                *(v222 + 276) = 0;
                                                *(*(this + 33) + 276) ^= 0xFFFFFF80;
                                                v224 = *(this + 33);
                                                v225 = *(v224 + 276);
                                                *(v224 + 276) = v223;
                                                if (*v480 || *(v480 + 152) || *(v480 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v480, 276, *(v480 + 68), 0xFFFFFFFFLL, 7, v225, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v226 = *(this + 33);
                                                v227 = *(v226 + 540);
                                                *(v226 + 540) = 0;
                                                *(*(this + 33) + 540) ^= 0x3FFu;
                                                v228 = *(this + 33);
                                                v229 = *(v228 + 540);
                                                *(v228 + 540) = v227;
                                                if (!*v480 && !*(v480 + 152) && !*(v480 + 156))
                                                {
                                                  goto LABEL_320;
                                                }

                                                v230 = v480;
                                                v231 = *(v480 + 68);
                                                v232 = this;
                                              }

                                              else
                                              {
                                                if (v200 || *(v479 + 160) || *(v479 + 164))
                                                {
                                                  result = CAHDec::addToPatcherList(this, (v479 + 8), 272, *(v479 + 60), 0xFFFFFFFFLL, 7, v199, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v270 = *(this + 33);
                                                v271 = *(v270 + 280);
                                                *(v270 + 280) = 0;
                                                *(*(this + 33) + 280) ^= 0xFFFFFF80;
                                                v272 = *(this + 33);
                                                v273 = *(v272 + 280);
                                                *(v272 + 280) = v271;
                                                if (*v201 || *(v479 + 160) || *(v479 + 164))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v201, 280, *(v479 + 64), 0xFFFFFFFFLL, 7, v273, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v274 = *(this + 33);
                                                v275 = *(v274 + 268);
                                                *(v274 + 268) = 0;
                                                *(*(this + 33) + 268) ^= 0xFFFFFF80;
                                                v276 = *(this + 33);
                                                v277 = *(v276 + 268);
                                                *(v276 + 268) = v275;
                                                if (*v201 || *(v479 + 160) || *(v479 + 164))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v201, 268, *(v479 + 72), 0xFFFFFFFFLL, 7, v277, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v278 = *(this + 33);
                                                v279 = *(v278 + 276);
                                                *(v278 + 276) = 0;
                                                *(*(this + 33) + 276) ^= 0xFFFFFF80;
                                                v280 = *(this + 33);
                                                v281 = *(v280 + 276);
                                                *(v280 + 276) = v279;
                                                if (*v201 || *(v479 + 160) || *(v479 + 164))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v201, 276, *(v479 + 76), 0xFFFFFFFFLL, 7, v281, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v282 = *(this + 33);
                                                v283 = *(v282 + 536);
                                                *(v282 + 536) = 0;
                                                *(*(this + 33) + 536) ^= 0x3FFu;
                                                v284 = *(this + 33);
                                                v285 = *(v284 + 536);
                                                *(v284 + 536) = v283;
                                                if (*v201 || *(v479 + 160) || *(v479 + 164))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v201, 536, *(v479 + 60), 0x3FFFFFFFFFFLL, 32, v285, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v286 = *(this + 33);
                                                v287 = *(v286 + 544);
                                                *(v286 + 544) = 0;
                                                *(*(this + 33) + 544) ^= 0x3FFu;
                                                v288 = *(this + 33);
                                                v289 = *(v288 + 544);
                                                *(v288 + 544) = v287;
                                                if (*v201 || *(v479 + 160) || *(v479 + 164))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v201, 544, *(v479 + 64), 0x3FFFFFFFFFFLL, 32, v289, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v290 = *(this + 33);
                                                v291 = *(v290 + 532);
                                                *(v290 + 532) = 0;
                                                *(*(this + 33) + 532) ^= 0x3FFu;
                                                v292 = *(this + 33);
                                                v293 = *(v292 + 532);
                                                *(v292 + 532) = v291;
                                                if (*v201 || *(v479 + 160) || *(v479 + 164))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v201, 532, *(v479 + 72), 0x3FFFFFFFFFFLL, 32, v293, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v294 = *(this + 33);
                                                v295 = *(v294 + 540);
                                                *(v294 + 540) = 0;
                                                *(*(this + 33) + 540) ^= 0x3FFu;
                                                v296 = *(this + 33);
                                                v229 = *(v296 + 540);
                                                *(v296 + 540) = v295;
                                                if (!*v201 && !*(v479 + 160) && !*(v479 + 164))
                                                {
                                                  goto LABEL_320;
                                                }

                                                v231 = *(v479 + 76);
                                                v232 = this;
                                                v230 = (v479 + 8);
                                              }

                                              v269 = 540;
                                            }

                                            else
                                            {
                                              v236 = *(v196 + 268);
                                              *(v196 + 268) = 0;
                                              *(*(this + 33) + 268) ^= 0xFFFFFF80;
                                              v237 = *(this + 33);
                                              v238 = *(v237 + 268);
                                              *(v237 + 268) = v236;
                                              v239 = (this + 176 * v487 + 528);
                                              if (*v239 || *(this + 44 * v487 + 170) || *(this + 44 * v487 + 171))
                                              {
                                                result = CAHDec::addToPatcherList(this, this + 22 * v487 + 66, 268, 0, 0xFFFFFFFFLL, 7, v238, 4);
                                                if (result)
                                                {
                                                  return result;
                                                }
                                              }

                                              v240 = *(this + 33);
                                              v241 = *(v240 + 532);
                                              *(v240 + 532) = 0;
                                              *(*(this + 33) + 532) ^= 0x3FFu;
                                              v242 = *(this + 33);
                                              v243 = *(v242 + 532);
                                              *(v242 + 532) = v241;
                                              if (*v239 || *(this + 44 * v487 + 170) || *(this + 44 * v487 + 171))
                                              {
                                                result = CAHDec::addToPatcherList(this, this + 22 * v487 + 66, 532, 0, 0x3FFFFFFFFFFLL, 32, v243, 4);
                                                if (result)
                                                {
                                                  return result;
                                                }
                                              }

                                              v244 = *(this + 33);
                                              v245 = *(v244 + 272);
                                              *(v244 + 272) = 0;
                                              *(*(this + 33) + 272) ^= 0xFFFFFF80;
                                              v246 = *(this + 33);
                                              v247 = *(v246 + 272);
                                              *(v246 + 272) = v245;
                                              v248 = (v479 + 8);
                                              if (*(v479 + 8) || *(v479 + 160) || *(v479 + 164))
                                              {
                                                result = CAHDec::addToPatcherList(this, (v479 + 8), 272, *(v479 + 60), 0xFFFFFFFFLL, 7, v247, 4);
                                                if (result)
                                                {
                                                  return result;
                                                }
                                              }

                                              v249 = *(this + 33);
                                              v250 = *(v249 + 536);
                                              *(v249 + 536) = 0;
                                              *(*(this + 33) + 536) ^= 0x3FFu;
                                              v251 = *(this + 33);
                                              v252 = *(v251 + 536);
                                              *(v251 + 536) = v250;
                                              if (*v248 || *(v479 + 160) || *(v479 + 164))
                                              {
                                                result = CAHDec::addToPatcherList(this, v248, 536, *(v479 + 60), 0x3FFFFFFFFFFLL, 32, v252, 4);
                                                if (result)
                                                {
                                                  return result;
                                                }
                                              }

                                              v253 = *(this + 33);
                                              v254 = *(v253 + 276);
                                              *(v253 + 276) = 0;
                                              *(*(this + 33) + 276) ^= 0xFFFFFF80;
                                              v255 = *(this + 33);
                                              v256 = *(v255 + 276);
                                              *(v255 + 276) = v254;
                                              v257 = (this + 176 * v487 + 3344);
                                              if (*v257 || *(this + 44 * v487 + 874) || *(this + 44 * v487 + 875))
                                              {
                                                result = CAHDec::addToPatcherList(this, this + 22 * v487 + 418, 276, 0, 0xFFFFFFFFLL, 7, v256, 4);
                                                if (result)
                                                {
                                                  return result;
                                                }
                                              }

                                              v258 = *(this + 33);
                                              v259 = *(v258 + 540);
                                              *(v258 + 540) = 0;
                                              *(*(this + 33) + 540) ^= 0x3FFu;
                                              v260 = *(this + 33);
                                              v261 = *(v260 + 540);
                                              *(v260 + 540) = v259;
                                              if (*v257 || *(this + 44 * v487 + 874) || *(this + 44 * v487 + 875))
                                              {
                                                result = CAHDec::addToPatcherList(this, this + 22 * v487 + 418, 540, 0, 0x3FFFFFFFFFFLL, 32, v261, 4);
                                                if (result)
                                                {
                                                  return result;
                                                }
                                              }

                                              v262 = *(this + 33);
                                              v263 = *(v262 + 280);
                                              *(v262 + 280) = 0;
                                              *(*(this + 33) + 280) ^= 0xFFFFFF80;
                                              v264 = *(this + 33);
                                              v265 = *(v264 + 280);
                                              *(v264 + 280) = v263;
                                              if (*v248 || *(v479 + 160) || *(v479 + 164))
                                              {
                                                result = CAHDec::addToPatcherList(this, v248, 280, *(v479 + 64), 0xFFFFFFFFLL, 7, v265, 4);
                                                if (result)
                                                {
                                                  return result;
                                                }
                                              }

                                              v266 = *(this + 33);
                                              v267 = *(v266 + 544);
                                              *(v266 + 544) = 0;
                                              *(*(this + 33) + 544) ^= 0x3FFu;
                                              v268 = *(this + 33);
                                              v229 = *(v268 + 544);
                                              *(v268 + 544) = v267;
                                              if (!*v248 && !*(v479 + 160) && !*(v479 + 164))
                                              {
                                                goto LABEL_320;
                                              }

                                              v231 = *(v479 + 64);
                                              v232 = this;
                                              v230 = (v479 + 8);
                                              v269 = 544;
                                            }

                                            result = CAHDec::addToPatcherList(v232, v230, v269, v231, 0x3FFFFFFFFFFLL, 32, v229, 4);
                                            if (result)
                                            {
                                              return result;
                                            }

LABEL_320:
                                            v297 = this + 4 * v487;
                                            if (!(*(v492 + 88) & 0x2000 | v481))
                                            {
                                              *(v492 + 88) |= 0x2000u;
                                              *(v297 + 116) = 1;
                                              *(*(this + 33) + 284) = 0;
                                              goto LABEL_440;
                                            }

                                            *(v297 + 116) = 0;
                                            *(*(this + 33) + 284) = 0;
                                            if (!v481)
                                            {
LABEL_440:
                                              *(*(this + 33) + 444) = 0;
                                              *(*(this + 33) + 448) = 0;
                                              *(*(this + 33) + 452) = 0;
                                              *(*(this + 33) + 456) = 0;
                                              if (!v494)
                                              {
                                                goto LABEL_499;
                                              }

                                              v420 = *(this + 32);
                                              if (v488 && v484 == 2)
                                              {
                                                v421 = *(*(v420 + 8248) + 60);
                                                v422 = *(this + 33);
                                                v423 = *(v422 + 444);
                                                *(v422 + 444) = 0;
                                                *(*(this + 33) + 444) ^= 0xFFFFFFC0;
                                                v424 = *(this + 33);
                                                v425 = *(v424 + 444);
                                                *(v424 + 444) = v423;
                                                v426 = *(*(this + 32) + 8248);
                                                if (*v426 || *(v426 + 152) || *(v426 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v426, 444, v421, 0xFFFFFFFFLL, 6, v425, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v427 = *(this + 33);
                                                v428 = *(v427 + 676);
                                                *(v427 + 676) = 0;
                                                *(*(this + 33) + 676) ^= 0x3FFu;
                                                v429 = *(this + 33);
                                                v430 = *(v429 + 676);
                                                *(v429 + 676) = v428;
                                                v431 = *(*(this + 32) + 8248);
                                                if (*v431 || *(v431 + 152) || *(v431 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v431, 676, v421, 0x3FFFFFFFFFFLL, 32, v430, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                if (v485)
                                                {
                                                  v432 = *(v480 + 56);
                                                  v433 = *(this + 33);
                                                  v434 = *(v433 + 448);
                                                  *(v433 + 448) = 0;
                                                  *(*(this + 33) + 448) ^= 0xFFFFFFC0;
                                                  v435 = *(this + 33);
                                                  v436 = *(v435 + 448);
                                                  *(v435 + 448) = v434;
                                                  if (*v480 || *(v480 + 152) || *(v480 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v480, 448, v432, 0xFFFFFFFFLL, 6, v436, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v437 = *(this + 33);
                                                  v438 = *(v437 + 680);
                                                  *(v437 + 680) = 0;
                                                  *(*(this + 33) + 680) ^= 0x3FFu;
                                                  v439 = *(this + 33);
                                                  v440 = *(v439 + 680);
                                                  *(v439 + 680) = v438;
                                                  if (*v480 || *(v480 + 152) || *(v480 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v480, 680, v432, 0x3FFFFFFFFFFLL, 32, v440, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }
                                                }

                                                if (v486)
                                                {
                                                  *(*(this + 33) + 452) = *(*(this + 33) + 452) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF) << 6);
                                                  if (v485)
                                                  {
                                                    v441 = v480;
LABEL_463:
                                                    v442 = (v441 + 80);
LABEL_498:
                                                    *(*(this + 33) + 456) = *(*(this + 33) + 456) & 0xFFF8003F | (((*v442 >> 6) & 0x1FFF) << 6);
                                                  }

LABEL_499:
                                                  v471 = *(this + 32);
                                                  if (*(v471 + 2360) != 1)
                                                  {
                                                    return 0;
                                                  }

                                                  v472 = *(this + 33);
                                                  *(v472 + 780) = *(v472 + 780) & 0xFFFFFFFE | *(v471 + 2508) & 1;
                                                  if (*(v471 + 2508))
                                                  {
                                                    *(v472 + 2780) = 0x10000000;
                                                    *(v472 + 2784) = *(v471 + 2368);
                                                    *(v472 + 2792) = 0;
                                                    *(v472 + 2788) = 0;
                                                    *(v472 + 2800) = *(v471 + 2372);
                                                    v473 = *(v471 + 2388);
                                                    *(v472 + 2832) = *(v471 + 2404);
                                                    *(v472 + 2816) = v473;
                                                  }

                                                  *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFFD | (2 * (*(v471 + 2512) & 1));
                                                  if (*(v471 + 2512))
                                                  {
                                                    *(v472 + 2848) = 0;
                                                    v474 = *(v471 + 2424);
                                                    *(v472 + 2848) = (*(v471 + 2424) & 1) << 22;
                                                    v475 = ((*(v471 + 2420) & 1) << 23) | ((v474 & 1) << 22) | 0x20000000;
                                                    *(v472 + 2848) = v475;
                                                    if (!*(v471 + 2364))
                                                    {
                                                      ++v475;
                                                    }

                                                    *(v472 + 2848) = v475;
                                                    v476 = *(v471 + 2428);
                                                    v477 = *(v471 + 2460);
                                                    *(v472 + 2868) = *(v471 + 2444);
                                                    *(v472 + 2884) = v477;
                                                    *(v472 + 2852) = v476;
                                                  }

                                                  *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFFB | (4 * (*(v471 + 2516) & 1));
                                                  *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFF7 | (8 * (*(v471 + 2520) & 1));
                                                  *(*(this + 33) + 780) = *(*(this + 33) + 780) & 0xFFFFFFEF | (16 * (*(v471 + 2524) & 1));
                                                  *(v472 + 2904) = 0;
                                                  v478 = *(v471 + 2476) == 2 ? 805306368 : 813694976;
                                                  *(v472 + 2904) = v478;
                                                  memcpy((v472 + 2908), (v471 + 2480), 4 * *(v471 + 2476));
                                                  if (!*(v471 + 2516))
                                                  {
                                                    return 0;
                                                  }

                                                  result = 0;
                                                  *(v471 + 2516) = 0;
                                                  return result;
                                                }

                                                if (CAHDecClaryHevc::getSWRStride(this, *(v492 + 160) - *(v492 + 156) + 1, v490[909], v490[910], v490[5713]))
                                                {
                                                  return 0xFFFFFFFFLL;
                                                }

                                                *(*(this + 33) + 452) = *(*(this + 33) + 452) & 0xFFFC003F | (((*(this + 2956) >> 6) & 0xFFF) << 6);
                                                if (!v485)
                                                {
                                                  goto LABEL_499;
                                                }

LABEL_497:
                                                v442 = (this + 11828);
                                                goto LABEL_498;
                                              }

                                              v443 = *(v420 + 2892);
                                              if (*(v420 + 2892))
                                              {
                                                v444 = *(v420 + 2904);
                                                v443 = *(v420 + 2908);
                                              }

                                              else
                                              {
                                                v444 = 0;
                                              }

                                              v445 = *(v420 + 8248);
                                              v446 = *(v445 + 52);
                                              v447 = v446 + v444;
                                              if (__CFADD__(v446, v444))
                                              {
                                                v448 = 1;
                                              }

                                              else
                                              {
                                                v449 = *(v445 + 56);
                                                v450 = v449 + v443;
                                                if (!__CFADD__(v449, v443))
                                                {
                                                  v451 = *(this + 33);
                                                  v452 = *(v451 + 444);
                                                  *(v451 + 444) = 0;
                                                  *(*(this + 33) + 444) ^= 0xFFFFFFC0;
                                                  v453 = *(this + 33);
                                                  v454 = *(v453 + 444);
                                                  *(v453 + 444) = v452;
                                                  v455 = *(*(this + 32) + 8248);
                                                  if (*v455 || *(v455 + 152) || *(v455 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v455, 444, v447, 0xFFFFFFFFLL, 6, v454, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v456 = *(this + 33);
                                                  v457 = *(v456 + 676);
                                                  *(v456 + 676) = 0;
                                                  *(*(this + 33) + 676) ^= 0x3FFu;
                                                  v458 = *(this + 33);
                                                  v459 = *(v458 + 676);
                                                  *(v458 + 676) = v457;
                                                  v460 = *(*(this + 32) + 8248);
                                                  if (*v460 || *(v460 + 152) || *(v460 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v460, 676, v447, 0x3FFFFFFFFFFLL, 32, v459, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v461 = *(this + 33);
                                                  v462 = *(v461 + 448);
                                                  *(v461 + 448) = 0;
                                                  *(*(this + 33) + 448) ^= 0xFFFFFFC0;
                                                  v463 = *(this + 33);
                                                  v464 = *(v463 + 448);
                                                  *(v463 + 448) = v462;
                                                  v465 = *(*(this + 32) + 8248);
                                                  if (*v465 || *(v465 + 152) || *(v465 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v465, 448, v450, 0xFFFFFFFFLL, 6, v464, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v466 = *(this + 33);
                                                  v467 = *(v466 + 680);
                                                  *(v466 + 680) = 0;
                                                  *(*(this + 33) + 680) ^= 0x3FFu;
                                                  v468 = *(this + 33);
                                                  v469 = *(v468 + 680);
                                                  *(v468 + 680) = v467;
                                                  v470 = *(*(this + 32) + 8248);
                                                  if (*v470 || *(v470 + 152) || *(v470 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v470, 680, v450, 0x3FFFFFFFFFFLL, 32, v469, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  if (v486)
                                                  {
                                                    *(*(this + 33) + 452) = *(*(this + 33) + 452) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF) << 6);
                                                    v441 = *(*(this + 32) + 8248);
                                                    goto LABEL_463;
                                                  }

                                                  if (CAHDecClaryHevc::getSWRStride(this, *(v492 + 160) - *(v492 + 156) + 1, v490[909], v490[910], v490[5713]))
                                                  {
                                                    return 0xFFFFFFFFLL;
                                                  }

                                                  *(*(this + 33) + 452) = *(*(this + 33) + 452) & 0xFFFC003F | (((*(this + 2956) >> 6) & 0xFFF) << 6);
                                                  goto LABEL_497;
                                                }

                                                v448 = 2;
                                              }

                                              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                              {
                                                return 0xFFFFFFFFLL;
                                              }

                                              *buf = 136315394;
                                              *&buf[4] = "populatePictureRegisters";
                                              *&buf[12] = 1024;
                                              *&buf[14] = v448;
                                              v42 = MEMORY[0x277D86220];
                                              v43 = "AppleAVD: %s(): failKind = %d";
                                              v234 = buf;
                                              v235 = 18;
                                              goto LABEL_251;
                                            }

                                            v298 = 0;
                                            if (v493)
                                            {
                                              v299 = 0x2000000;
                                            }

                                            else
                                            {
                                              v299 = 0;
                                            }

                                            v300 = v508;
                                            v301 = v507;
                                            v302 = v506;
                                            while (1)
                                            {
                                              v303 = *v300;
                                              if (!*v300 || !*(v303 + 48))
                                              {
                                                return 0xFFFFFFFFLL;
                                              }

                                              v304 = *(v303 + 44);
                                              if ((*(**(this + 32) + 184))(*(this + 32)))
                                              {
                                                v305 = *(this + 32);
                                                if (v305[689])
                                                {
                                                  *buf = 0;
                                                  if (((*(*v305 + 312))(v305, v304, buf) & 1) == 0)
                                                  {
                                                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      return 0xFFFFFFFFLL;
                                                    }

                                                    v495 = 0;
                                                    v42 = MEMORY[0x277D86220];
                                                    v43 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                                                    v234 = &v495;
                                                    v235 = 2;
                                                    goto LABEL_251;
                                                  }

                                                  *(v303 + 48) = *buf + 8;
                                                }
                                              }

                                              *(*(this + 33) + v298 + 284) = 0;
                                              *(*(this + 33) + v298 + 284) = *(*(this + 33) + v298 + 284) & 0xFFFFFFF | ((v481 << 28) - 0x10000000);
                                              *(*(this + 33) + v298 + 284) &= 0xF3FFFFFF;
                                              *(*(this + 33) + v298 + 284) = *(*(this + 33) + v298 + 284) & 0xFDFFFFFF | v299;
                                              *(*(this + 33) + v298 + 284) |= 0x1000000u;
                                              v306 = v482 - *(v303 + 12);
                                              v307 = v306 & 0x1FFFF;
                                              if (v306 < -32768)
                                              {
                                                v307 = 98304;
                                              }

                                              if (v306 <= 0x8000)
                                              {
                                                v308 = v307;
                                              }

                                              else
                                              {
                                                v308 = 0x8000;
                                              }

                                              *(*(this + 33) + v298 + 284) = *(*(this + 33) + v298 + 284) & 0xFFFE0000 | v308;
                                              *(*(this + 33) + v298 + 284) = *(*(this + 33) + v298 + 284) & 0xFFFDFFFF | ((*(v303 + 20) == 2) << 17);
                                              *(*(this + 33) + v298 + 316) = 0;
                                              *(*(this + 33) + v298 + 548) = 0;
                                              *(*(this + 33) + v298 + 348) = 0;
                                              *(*(this + 33) + v298 + 580) = 0;
                                              *(*(this + 33) + v298 + 380) = 0;
                                              *(*(this + 33) + v298 + 612) = 0;
                                              *(*(this + 33) + v298 + 412) = 0;
                                              *(*(this + 33) + v298 + 644) = 0;
                                              v309 = *(this + 33);
                                              if (*(*(this + 32) + 2648) == 1)
                                              {
                                                v310 = v298 + 348;
                                                v311 = v309 + v298;
                                                v312 = *(v311 + 348);
                                                *(v311 + 348) = 0;
                                                *(*(this + 33) + v298 + 348) ^= 0xFFFFFF80;
                                                v313 = *(this + 33) + v298;
                                                v314 = *(v313 + 348);
                                                *(v313 + 348) = v312;
                                                v315 = *(v303 + 48);
                                                v316 = *v315;
                                                if (v483)
                                                {
                                                  if (v316 || *(v315 + 38) || *(v315 + 39))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v315, v310, *(v315 + 15), 0xFFFFFFFFLL, 7, v314, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v317 = *(this + 33) + v298;
                                                  v318 = *(v317 + 580);
                                                  *(v317 + 580) = 0;
                                                  *(*(this + 33) + v298 + 580) ^= 0x3FFu;
                                                  v319 = *(this + 33) + v298;
                                                  v320 = *(v319 + 580);
                                                  *(v319 + 580) = v318;
                                                  v321 = *(v303 + 48);
                                                  if (*v321 || *(v321 + 152) || *(v321 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v321, v298 + 580, *(v321 + 60), 0x3FFFFFFFFFFLL, 32, v320, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v322 = *(this + 33) + v298;
                                                  v323 = *(v322 + 316);
                                                  *(v322 + 316) = 0;
                                                  *(*(this + 33) + v298 + 316) ^= 0xFFFFFF80;
                                                  v324 = *(this + 33) + v298;
                                                  v325 = *(v324 + 316);
                                                  *(v324 + 316) = v323;
                                                  v326 = *(v303 + 48);
                                                  if (*v326 || *(v326 + 152) || *(v326 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v326, v298 + 316, *(v326 + 72), 0xFFFFFFFFLL, 7, v325, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v327 = *(this + 33) + v298;
                                                  v328 = *(v327 + 548);
                                                  *(v327 + 548) = 0;
                                                  *(*(this + 33) + v298 + 548) ^= 0x3FFu;
                                                  v329 = *(this + 33) + v298;
                                                  v330 = *(v329 + 548);
                                                  *(v329 + 548) = v328;
                                                  v331 = *(v303 + 48);
                                                  if (*v331 || *(v331 + 152) || *(v331 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v331, v298 + 548, *(v331 + 72), 0x3FFFFFFFFFFLL, 32, v330, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  if (v485)
                                                  {
                                                    v332 = *(this + 33) + v298;
                                                    v333 = *(v332 + 412);
                                                    *(v332 + 412) = 0;
                                                    *(*(this + 33) + v298 + 412) ^= 0xFFFFFF80;
                                                    v334 = *(this + 33) + v298;
                                                    v335 = *(v334 + 412);
                                                    *(v334 + 412) = v333;
                                                    if (*v480 || *(v480 + 152) || *(v480 + 156))
                                                    {
                                                      result = CAHDec::addToPatcherList(this, v480, v298 + 412, *(v480 + 56), 0xFFFFFFFFLL, 7, v335, 4);
                                                      if (result)
                                                      {
                                                        return result;
                                                      }
                                                    }

                                                    v336 = *(this + 33) + v298;
                                                    v337 = *(v336 + 644);
                                                    *(v336 + 644) = 0;
                                                    *(*(this + 33) + v298 + 644) ^= 0x3FFu;
                                                    v338 = *(this + 33) + v298;
                                                    v339 = *(v338 + 644);
                                                    *(v338 + 644) = v337;
                                                    if (*v480 || *(v480 + 152) || *(v480 + 156))
                                                    {
                                                      result = CAHDec::addToPatcherList(this, v480, v298 + 644, *(v480 + 56), 0x3FFFFFFFFFFLL, 32, v339, 4);
                                                      if (result)
                                                      {
                                                        return result;
                                                      }
                                                    }

                                                    v340 = *(this + 33) + v298;
                                                    v341 = *(v340 + 380);
                                                    *(v340 + 380) = 0;
                                                    *(*(this + 33) + v298 + 380) ^= 0xFFFFFF80;
                                                    v342 = *(this + 33) + v298;
                                                    v343 = *(v342 + 380);
                                                    *(v342 + 380) = v341;
                                                    if (*v480 || *(v480 + 152) || *(v480 + 156))
                                                    {
                                                      result = CAHDec::addToPatcherList(this, v480, v298 + 380, *(v480 + 68), 0xFFFFFFFFLL, 7, v343, 4);
                                                      if (result)
                                                      {
                                                        return result;
                                                      }
                                                    }

                                                    v344 = *(this + 33) + v298;
                                                    v345 = *(v344 + 612);
                                                    *(v344 + 612) = 0;
                                                    *(*(this + 33) + v298 + 612) ^= 0x3FFu;
                                                    v346 = *(this + 33) + v298;
                                                    v347 = *(v346 + 612);
                                                    *(v346 + 612) = v345;
                                                    if (*v480 || *(v480 + 152) || *(v480 + 156))
                                                    {
                                                      v348 = v298 + 612;
                                                      v349 = v480;
LABEL_437:
                                                      v386 = *(v349 + 68);
LABEL_438:
                                                      result = CAHDec::addToPatcherList(this, v349, v348, v386, 0x3FFFFFFFFFFLL, 32, v347, 4);
                                                      if (result)
                                                      {
                                                        return result;
                                                      }
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  if (v316 || *(v315 + 38) || *(v315 + 39))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v315, v310, *(v315 + 13), 0xFFFFFFFFLL, 7, v314, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v387 = *(this + 33) + v298;
                                                  v388 = *(v387 + 412);
                                                  *(v387 + 412) = 0;
                                                  *(*(this + 33) + v298 + 412) ^= 0xFFFFFF80;
                                                  v389 = *(this + 33) + v298;
                                                  v390 = *(v389 + 412);
                                                  *(v389 + 412) = v388;
                                                  v391 = *(v303 + 48);
                                                  if (*v391 || *(v391 + 152) || *(v391 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v391, v298 + 412, *(v391 + 56), 0xFFFFFFFFLL, 7, v390, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v392 = *(this + 33) + v298;
                                                  v393 = *(v392 + 316);
                                                  *(v392 + 316) = 0;
                                                  *(*(this + 33) + v298 + 316) ^= 0xFFFFFF80;
                                                  v394 = *(this + 33) + v298;
                                                  v395 = *(v394 + 316);
                                                  *(v394 + 316) = v393;
                                                  v396 = *(v303 + 48);
                                                  if (*v396 || *(v396 + 152) || *(v396 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v396, v298 + 316, *(v396 + 64), 0xFFFFFFFFLL, 7, v395, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v397 = *(this + 33) + v298;
                                                  v398 = *(v397 + 380);
                                                  *(v397 + 380) = 0;
                                                  *(*(this + 33) + v298 + 380) ^= 0xFFFFFF80;
                                                  v399 = *(this + 33) + v298;
                                                  v400 = *(v399 + 380);
                                                  *(v399 + 380) = v398;
                                                  v401 = *(v303 + 48);
                                                  if (*v401 || *(v401 + 152) || *(v401 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v401, v298 + 380, *(v401 + 68), 0xFFFFFFFFLL, 7, v400, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v402 = *(this + 33) + v298;
                                                  v403 = *(v402 + 580);
                                                  *(v402 + 580) = 0;
                                                  *(*(this + 33) + v298 + 580) ^= 0x3FFu;
                                                  v404 = *(this + 33) + v298;
                                                  v405 = *(v404 + 580);
                                                  *(v404 + 580) = v403;
                                                  v406 = *(v303 + 48);
                                                  if (*v406 || *(v406 + 152) || *(v406 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v406, v298 + 580, *(v406 + 52), 0x3FFFFFFFFFFLL, 32, v405, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v407 = *(this + 33) + v298;
                                                  v408 = *(v407 + 644);
                                                  *(v407 + 644) = 0;
                                                  *(*(this + 33) + v298 + 644) ^= 0x3FFu;
                                                  v409 = *(this + 33) + v298;
                                                  v410 = *(v409 + 644);
                                                  *(v409 + 644) = v408;
                                                  v411 = *(v303 + 48);
                                                  if (*v411 || *(v411 + 152) || *(v411 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v411, v298 + 644, *(v411 + 56), 0x3FFFFFFFFFFLL, 32, v410, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v412 = *(this + 33) + v298;
                                                  v413 = *(v412 + 548);
                                                  *(v412 + 548) = 0;
                                                  *(*(this + 33) + v298 + 548) ^= 0x3FFu;
                                                  v414 = *(this + 33) + v298;
                                                  v415 = *(v414 + 548);
                                                  *(v414 + 548) = v413;
                                                  v416 = *(v303 + 48);
                                                  if (*v416 || *(v416 + 152) || *(v416 + 156))
                                                  {
                                                    result = CAHDec::addToPatcherList(this, v416, v298 + 548, *(v416 + 64), 0x3FFFFFFFFFFLL, 32, v415, 4);
                                                    if (result)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  v417 = *(this + 33) + v298;
                                                  v418 = *(v417 + 612);
                                                  *(v417 + 612) = 0;
                                                  *(*(this + 33) + v298 + 612) ^= 0x3FFu;
                                                  v419 = *(this + 33) + v298;
                                                  v347 = *(v419 + 612);
                                                  *(v419 + 612) = v418;
                                                  v349 = *(v303 + 48);
                                                  if (*v349 || *(v349 + 152) || *(v349 + 156))
                                                  {
                                                    v348 = v298 + 612;
                                                    goto LABEL_437;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v350 = v309 + v298;
                                                v351 = *(v350 + 316);
                                                *(v350 + 316) = 0;
                                                *(*(this + 33) + v298 + 316) ^= 0xFFFFFF80;
                                                v352 = *(this + 33) + v298;
                                                v353 = *(v352 + 316);
                                                *(v352 + 316) = v351;
                                                v354 = *v301;
                                                if (**v301 || *(v354 + 152) || *(v354 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, *v301, v298 + 316, 0, 0xFFFFFFFFLL, 7, v353, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v355 = *(this + 33) + v298;
                                                v356 = *(v355 + 548);
                                                *(v355 + 548) = 0;
                                                *(*(this + 33) + v298 + 548) ^= 0x3FFu;
                                                v357 = *(this + 33) + v298;
                                                v358 = *(v357 + 548);
                                                *(v357 + 548) = v356;
                                                if (*v354 || *(v354 + 152) || *(v354 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v354, v298 + 548, 0, 0x3FFFFFFFFFFLL, 32, v358, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v359 = *(this + 33) + v298;
                                                v360 = *(v359 + 348);
                                                *(v359 + 348) = 0;
                                                *(*(this + 33) + v298 + 348) ^= 0xFFFFFF80;
                                                v361 = *(this + 33) + v298;
                                                v362 = *(v361 + 348);
                                                *(v361 + 348) = v360;
                                                v363 = *(v303 + 48);
                                                if (*v363 || *(v363 + 152) || *(v363 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v363, v298 + 348, *(v363 + 52), 0xFFFFFFFFLL, 7, v362, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v364 = *(this + 33) + v298;
                                                v365 = *(v364 + 580);
                                                *(v364 + 580) = 0;
                                                *(*(this + 33) + v298 + 580) ^= 0x3FFu;
                                                v366 = *(this + 33) + v298;
                                                v367 = *(v366 + 580);
                                                *(v366 + 580) = v365;
                                                v368 = *(v303 + 48);
                                                if (*v368 || *(v368 + 152) || *(v368 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v368, v298 + 580, *(v368 + 52), 0x3FFFFFFFFFFLL, 32, v367, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v369 = *(this + 33) + v298;
                                                v370 = *(v369 + 380);
                                                *(v369 + 380) = 0;
                                                *(*(this + 33) + v298 + 380) ^= 0xFFFFFF80;
                                                v371 = *(this + 33) + v298;
                                                v372 = *(v371 + 380);
                                                *(v371 + 380) = v370;
                                                v373 = *v302;
                                                if (**v302 || *(v373 + 152) || *(v373 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, *v302, v298 + 380, 0, 0xFFFFFFFFLL, 7, v372, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v374 = *(this + 33) + v298;
                                                v375 = *(v374 + 612);
                                                *(v374 + 612) = 0;
                                                *(*(this + 33) + v298 + 612) ^= 0x3FFu;
                                                v376 = *(this + 33) + v298;
                                                v377 = *(v376 + 612);
                                                *(v376 + 612) = v375;
                                                if (*v373 || *(v373 + 152) || *(v373 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v373, v298 + 612, 0, 0x3FFFFFFFFFFLL, 32, v377, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v378 = *(this + 33) + v298;
                                                v379 = *(v378 + 412);
                                                *(v378 + 412) = 0;
                                                *(*(this + 33) + v298 + 412) ^= 0xFFFFFF80;
                                                v380 = *(this + 33) + v298;
                                                v381 = *(v380 + 412);
                                                *(v380 + 412) = v379;
                                                v382 = *(v303 + 48);
                                                if (*v382 || *(v382 + 152) || *(v382 + 156))
                                                {
                                                  result = CAHDec::addToPatcherList(this, v382, v298 + 412, *(v382 + 56), 0xFFFFFFFFLL, 7, v381, 4);
                                                  if (result)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                v383 = *(this + 33) + v298;
                                                v384 = *(v383 + 644);
                                                *(v383 + 644) = 0;
                                                *(*(this + 33) + v298 + 644) ^= 0x3FFu;
                                                v385 = *(this + 33) + v298;
                                                v347 = *(v385 + 644);
                                                *(v385 + 644) = v384;
                                                v349 = *(v303 + 48);
                                                if (*v349 || *(v349 + 152) || *(v349 + 156))
                                                {
                                                  v348 = v298 + 644;
                                                  v386 = *(v349 + 56);
                                                  goto LABEL_438;
                                                }
                                              }

                                              v298 += 4;
                                              ++v300;
                                              ++v301;
                                              ++v302;
                                              if (4 * v481 == v298)
                                              {
                                                goto LABEL_440;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleAVDCommandBuilder::setDisplaySurf(uint64_t this, int a2)
{
  v2 = *(this + 280);
  if (v2 <= 31)
  {
    *(this + 4 * v2 + 284) = a2;
    ++*(this + 280);
  }

  return this;
}

uint64_t CAHDecCatnipHevc::populateSequenceRegisters(CAHDecCatnipHevc *this)
{
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 8168) + 23176 * *(*(this + 32) + 8208);
  v1[13] = 0;
  v3 = (*(v2 + 3608) >> 3) - 1;
  v1[13] = v3 & 0x1FFF;
  v1[13] = ((*(v2 + 3612) << 13) + 536805376) & 0x1FFF0000 | v3 & 0x1FFF;
  v1[14] = 0;
  v4 = *(v2 + 10648) & 1;
  v1[14] = v4;
  v5 = v4 & 0xFFFFFFF1 | (2 * (*(v2 + 4440) & 7));
  v1[14] = v5;
  v6 = v5 & 0xFFFFFF8F | (16 * (*(v2 + 4436) & 7));
  v1[14] = v6;
  v7 = v6 & 0xFFFFFE7F | (((*(v2 + 4428) + *(v2 + 4432)) & 3) << 7);
  v1[14] = v7;
  v8 = v7 & 0xFFFFF9FF | ((*(v2 + 4428) & 3) << 9);
  v1[14] = v8;
  v9 = v8 & 0xFFFFE7FF | (((*(v2 + 4424) + *(v2 + 4420)) & 3) << 11);
  v1[14] = v9;
  v10 = v9 & 0xFFFF9FFF | ((*(v2 + 4420) & 3) << 13);
  v1[14] = v10;
  v11 = v10 & 0xFFF87FFF | ((*(v2 + 3640) & 0xF) << 15);
  v1[14] = v11;
  v12 = v11 & 0xFF87FFFF | ((*(v2 + 3636) & 0xF) << 19);
  v1[14] = v12;
  v13 = v12 & 0xFF7FFFFF | ((*(v2 + 3604) & 1) << 23);
  v1[14] = v13;
  v1[14] = v13 & 0xFCFFFFFF | ((*(v2 + 3600) & 3) << 24);
  v1[15] = 0;
  if (*(v2 + 10650))
  {
    v1[15] = 4096;
    v14 = (*(v2 + 10664) + *(v2 + 10660)) & 3 | 0x1000;
    v1[15] = v14;
    v15 = v14 & 0xFFFFFFF3 | (4 * (*(v2 + 10660) & 3));
    v1[15] = v15;
    v16 = v15 & 0xFFFFFF0F | (16 * (*(v2 + 10656) & 0xF));
    v1[15] = v16;
    v1[15] = v16 & 0xFFFFF0FF | ((*(v2 + 10652) & 0xF) << 8);
  }

  v1[16] = 0;
  if (*(v2 + 22833))
  {
    v17 = *(v2 + 22844) & 1;
    v1[16] = v17;
    v18 = v17 & 0xFFFFFFFD | (2 * (*(v2 + 22843) & 1));
    v1[16] = v18;
    v19 = v18 & 0xFFFFFFFB | (4 * (*(v2 + 22842) & 1));
    v1[16] = v19;
    v20 = v19 | (8 * (*(v2 + 22841) == 0));
    v1[16] = v20;
    v21 = v20 & 0xFFFFFFEF | (16 * (*(v2 + 22840) & 1));
    v1[16] = v21;
    v22 = v21 & 0xFFFFFFDF | (32 * (*(v2 + 22839) & 1));
    v1[16] = v22;
    v23 = v22 & 0xFFFFFFBF | ((*(v2 + 22838) & 1) << 6);
    v1[16] = v23;
    v24 = v23 | ((*(v2 + 22837) & 1) << 7);
    v1[16] = v24;
    v25 = v24 | ((*(v2 + 22836) & 1) << 8);
  }

  else
  {
    v25 = 8;
  }

  v1[16] = v25;
  v1[16] = v25 & 0xFFFFFDFF | ((*(v2 + 22285) & 1) << 9);
  if (*(v2 + 4444))
  {
    CAHDecTansyHevc::copyScalingList(this, (v1 + 17), *(this + 33) + 788, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAVDHevcDecoder::getRefTileHdrsInfo(uint64_t this)
{
  if (*(this + 8608))
  {
    v1 = this;
    v2 = 0;
    v3 = this + 8408;
    v4 = this + 8616;
    do
    {
      this = (*(**(v1 + 2096) + 264))(*(v1 + 2096), *(*(v3 + 8 * v2++) + 44), v4);
      v4 += 16;
    }

    while (v2 < *(v1 + 8608));
  }

  return this;
}

uint64_t CAHDecCatnipHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

BOOL CAVDHevcDecoder::IsIrap(CAVDHevcDecoder *this)
{
  v1 = (**(this + 1023) & 0xFFFFFFF8) == 16;
  *(this + 3008) = v1;
  return v1;
}

uint64_t CAVDHevcDecoder::DecodePicture(CAVDHevcDecoder *this, uint64_t a2, uint64_t a3)
{
  if ((*(**(this + 262) + 24))(*(this + 262), a3, a2))
  {
    return 1;
  }

  (*(**(this + 262) + 40))(*(this + 262));
  (*(**(this + 262) + 56))(*(this + 262));
  if ((*(**(this + 262) + 64))(*(this + 262)) || (*(**(this + 262) + 32))(*(this + 262), a2))
  {
    return 4;
  }

  (*(**(this + 262) + 96))(*(this + 262), a2);
  (*(**(this + 262) + 48))(*(this + 262), *(this + 882));
  return 0;
}

uint64_t CAVDHevcDecoder::getDispFrameParams(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8168) + 23176 * *(a1 + 8208);
  if (HEVC_RLM::isBumpingNeeded(*(a1 + 3016), v4))
  {
    v5 = 0;
    do
    {
      if (!HEVC_RLM::bumpingProcess(*(a1 + 3016), v8) || v5 > 0xF)
      {
        break;
      }

      ++v5;
      (*(*a1 + 368))(a1, v8);
    }

    while ((HEVC_RLM::isBumpingNeeded(*(a1 + 3016), v4) & 1) != 0);
  }

  return (*(*a1 + 376))(a1, a2);
}

uint64_t CAVDHevcDecoder::removeFrame(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 8320);
  if (v2 >= *(a1 + 8324))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8328);
  if (v3)
  {
    v4 = (v3 + ((v2 % *(a1 + 8336)) << 7));
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[3];
    a2[2] = v4[2];
    a2[3] = v7;
    *a2 = v5;
    a2[1] = v6;
    v8 = v4[4];
    v9 = v4[5];
    v10 = v4[7];
    a2[6] = v4[6];
    a2[7] = v10;
    a2[4] = v8;
    a2[5] = v9;
    v2 = *(a1 + 8320);
  }

  v11 = 0;
  *(a1 + 8320) = v2 + 1;
  return v11;
}

uint64_t CAHDecCatnipHevc::initPicture(CAHDecCatnipHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 420332;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x669ECuLL);
    v7 = *(this + *(this + 13) + 34);
    *(v7 + 16) = a2;
    *(v7 + 24) = 257;
    *(v7 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 2955) = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "initPicture";
      v11 = 1024;
      v12 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v9, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecCatnipHevc::populateAvdWork(CAHDecCatnipHevc *this, unsigned int a2)
{
  v128[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v4 = *(this + 33);
  v5 = *(v3 + 8208);
  v6 = *(v3 + 8168);
  v98 = *(v3 + 8184);
  v7 = *(v3 + 8924);
  v8 = *(v3 + 2960);
  v9 = *(v3 + 2964);
  v10 = *(v3 + 8176) + 9856 * *(v3 + 8212);
  v128[0] = 0;
  v128[1] = 0;
  v127 = 0;
  v11 = v7 >> 28;
  v99 = v6 + 23176 * v5;
  if (v7)
  {
    if (*(v10 + 53))
    {
      v13 = *(v99 + 22888) > v11 + 1;
    }

    else
    {
      v13 = 0;
    }

    v12 = v13 && v9 == 0;
  }

  else
  {
    v12 = 0;
  }

  v108 = *(v4 + 686) * *(v4 + 684);
  if ((v7 & 2) != 0 && *(v10 + 52))
  {
    if (*(v10 + 53) | v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = v108 > v11 + 1;
    }

    v16 = v15;
    v118 = v16;
  }

  else
  {
    v118 = 0;
  }

  v101 = *(v99 + 22888);
  if ((v7 & 0x20) != 0 && !*(v10 + 53))
  {
    if (*(v10 + 52) | v9)
    {
      v71 = 0;
    }

    else
    {
      v71 = v8 > v11 + 1;
    }

    v72 = v71;
    v110 = v72;
  }

  else
  {
    v110 = 0;
  }

  v17 = 0;
  v121 = *(v99 + 22880);
  v18 = v11 + 2;
  v113 = v12;
  v19 = v12 | v118;
  if (!(((v7 & 4) == 0) | (v12 | v118) & 1) && (v110 & 1) == 0)
  {
    v17 = *(*(this + *(this + 13) + 34) + 16) & (v11 + 1);
  }

  v111 = v10;
  v123 = 0;
  v124 = 0;
  memset_pattern16(__b, &unk_27775BC00, 8uLL);
  v20 = v4 + 223724;
  v91 = v19 | v110;
  if ((v19 | v110))
  {
    v21 = v18;
  }

  else
  {
    v21 = 1;
  }

  v22 = v17 + v21;
  v107 = v21;
  v23 = 48 * (0x1000 / v21);
  v95 = v17;
  v24 = v17;
  v25 = v17;
  do
  {
    v128[v25] = v20 + (v25 - v17) * v23;
    ++v25;
  }

  while (v25 < v22);
  v93 = v23;
  v94 = v22;
  v116 = 0;
  v26 = 0;
  v112 = 0;
  v122 = 0;
  v27 = 0;
  v117 = 0;
  v114 = 0;
  v104 = 0;
  v100 = 0;
  v28 = v128[v24];
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v20) >> 4);
  LOBYTE(v30) = v113;
  if (v113)
  {
    v31 = 12;
  }

  else
  {
    v31 = 4;
  }

  v103 = v31;
  v92 = v24;
  v97 = &__b[v24];
  v32 = 0;
  v106 = v4 + 3272;
  v33 = v95;
  v105 = v20;
  do
  {
    v34 = v98 + 2360 * v32;
    if (!((*(v111 + 52) != 0) | v30 & 1))
    {
      v37 = 1;
LABEL_43:
      v38 = 0;
      v102 = 0;
      v109 = 368 * v32;
      v115 = v37;
      v119 = v32;
      v120 = v98 + 2360 * v32;
      while (1)
      {
        if (!(v38 | v32))
        {
          *(v28 + 4) = 0;
          *(v28 + 6) = v33;
          *(v28 + 8) = 0;
          *(v28 + 12) = 0;
          v112 = *(v106 + v109);
          if (!(*(**(this + 32) + 440))())
          {
            return 0xFFFFFFFFLL;
          }

          v42 = *(v34 + 36);
          *(v28 + 32) = v42;
          *(v28 + 36) = v42;
          HIDWORD(v122) = 0;
          *(v28 + 44) = (*(*this + 80))(this, v26, v121);
          v43 = 271;
          v32 = v119;
          goto LABEL_146;
        }

        if (!v38)
        {
          break;
        }

        v30 = *(*(v34 + 1904) + 4 * v38 - 4) + 1;
        if (*(v111 + 52))
        {
          if (*(v111 + 53))
          {
            v39 = *(v99 + 22880);
            v40 = (v39 + v122) / v39;
            v30 += v102;
            if (v40 >= *(*(this + 33) + 2 * (HIDWORD(v104) + 1) + 730))
            {
              LODWORD(v122) = (*(*this + 72))(this, (v26 + 1), v121);
              v102 = 0;
              v27 = v103;
            }

            else
            {
              LODWORD(v122) = v100 + v40 * v39;
              if (!v113)
              {
                v102 = v30;
                LOBYTE(v30) = 0;
                v32 = v119;
                goto LABEL_147;
              }

              v102 = 0;
              v41 = __b[v33];
              __b[v33] = 0;
              if (v41)
              {
                v27 = 72;
              }

              else
              {
                v27 = 8;
              }
            }
          }

          else
          {
            LODWORD(v122) = (*(*this + 72))(this, (v26 + 1), v121);
            v27 = 4;
          }
        }

        else if (v113)
        {
          LODWORD(v122) = (*(v99 + 22880) + v122) / *(v99 + 22880) * *(v99 + 22880);
          v27 = 8;
        }

        v52 = 48 * v29;
        v53 = v124;
        if (*v124 || *(v124 + 152) || *(v124 + 156))
        {
          v54 = v123;
          if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136315394;
            *(buf + 4) = "populateAvdWork";
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 1889;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v54 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223746, HIDWORD(v122) + v54, 0x3FFFFFFFFFFLL, 32, -1, 2);
          if (result)
          {
            return result;
          }

          v53 = v124;
          if (*v124)
          {
            goto LABEL_92;
          }
        }

        if (*(v53 + 152) || *(v53 + 156))
        {
LABEL_92:
          v55 = v123;
          if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136315394;
            *(buf + 4) = "populateAvdWork";
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 1890;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v55 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223748, HIDWORD(v122) + v55, 0xFFFFFFFFLL, 0, -1, 4);
          if (result)
          {
            return result;
          }
        }

        *(v28 + 28) = v30;
        HIDWORD(v122) += v30;
        v51 = v107;
        v20 = v105;
        v30 = v113;
LABEL_97:
        v56 = v26 + 1;
        if (v26 + 1 < v108)
        {
          v57 = (*(*this + 72))(this, (v26 + 1), v121);
          v58 = v103;
          if (v122 != v57)
          {
            v58 = 0;
          }

          v27 |= v58;
        }

        *(v28 + 16) = v27;
        if (v116 == a2 - 1)
        {
          *(v28 + 18) |= 2u;
        }

        if (v26 == v108 - 1)
        {
          *(v28 + 18) |= 4u;
        }

        v59 = v118;
        if (v26 != v108 - 2)
        {
          v59 = 0;
        }

        if (v59 == 1)
        {
          *(v28 + 18) |= 4u;
        }

        if (v30 && ((v60 = *(v28 + 10), v101 > 1) ? (v61 = v101 - 2 == v60) : (v61 = 0), !v61 ? (v62 = 0) : (v62 = 1), v101 - 1 == v60 || v62))
        {
          *(v28 + 18) |= 8u;
          if ((v27 & 4) != 0)
          {
LABEL_121:
            v63 = v117;
            if (*(v111 + 52) && *(v111 + 53))
            {
              v64 = *(this + 33);
              v65 = *(v64 + 684);
              LODWORD(v104) = (v33 - *(v64 + 730 + 2 * (v56 / v65)) + *(v64 + 730 + 2 * (v56 / v65 + 1))) % v51;
              HIDWORD(v104) = v56 / v65;
              v100 = *(v64 + 2 * (v56 % v65) + 688);
              memset_pattern16(v97, &unk_27775BC00, 4 * (v107 - 1) + 4);
            }

            v26 = (v26 + 1);
            goto LABEL_125;
          }
        }

        else if ((v27 & 4) != 0)
        {
          goto LABEL_121;
        }

        v63 = v117;
LABEL_125:
        if ((v27 & 0x44) != 0 && v63 <= (*(*this + 88))(this, v26))
        {
          v27 |= 0x20u;
        }

        if (!v38)
        {
          v66 = v114;
          if (!*(v120 + 32))
          {
            v66 = v122;
          }

          v114 = v66;
          if (!*(v120 + 32))
          {
            v63 = v26;
          }
        }

        if ((v27 & 0x44) != 0)
        {
          v67 = *(*(this + 33) + 684);
          if (v63 / v67 + 1 == v26 / v67)
          {
            v27 |= 0x10u;
          }
        }

        ++*(&v128[-1] + v33);
        v128[v33] += 48;
        v68 = v122 / v121;
        if (v30)
        {
          v33 = (v104 + v68 - HIDWORD(v104)) % v51;
        }

        if (v118)
        {
          v33 = v26 % v51;
        }

        v69 = v110 ^ 1;
        if (v38)
        {
          v69 = 1;
        }

        v117 = v63;
        if ((v69 & 1) == 0 && !*(v120 + 32))
        {
          v33 = (v33 + 1) % v51;
        }

        v28 = v128[v33];
        v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v20) >> 4);
        *(v28 + 4) = *(&v128[-1] + v33);
        *(v28 + 6) = v33;
        *(v28 + 8) = v119;
        *(v28 + 10) = v68;
        *(v28 + 12) = v26;
        *(v28 + 32) = v122;
        *(v28 + 36) = v114;
        v70 = (*(*this + 80))(this, v26, v121);
        v32 = v119;
        *(v28 + 44) = v70;
        v43 = v27;
        v116 = v119;
        v34 = v120;
LABEL_146:
        *(v28 + 14) = v43;
LABEL_147:
        if (v115 == ++v38)
        {
          goto LABEL_40;
        }
      }

      v44 = 48 * v29;
      v45 = v124;
      if (*v124 || *(v124 + 152) || *(v124 + 156))
      {
        v46 = v123;
        v47 = HIDWORD(v122);
        if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "populateAvdWork";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = 1813;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v46 = v123;
        }

        result = CAHDec::addToPatcherList(this, v45, v44 + 223746, HIDWORD(v122) + v46, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }

        v45 = v124;
        if (*v124)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v47 = HIDWORD(v122);
      }

      if (!*(v45 + 152) && !*(v45 + 156))
      {
LABEL_69:
        *(v28 + 28) = v112 - v47;
        v50 = *(v106 + v109);
        if (!(*(**(this + 32) + 440))(*(this + 32), v119, &v124, &v123))
        {
          return 0xFFFFFFFFLL;
        }

        v112 = v50;
        if (*(v120 + 32))
        {
          v27 = 2;
        }

        else
        {
          v27 = 258;
        }

        v30 = v113;
        LODWORD(v122) = *(v120 + 36);
        if (v113)
        {
          v51 = v107;
          v20 = v105;
          if (*(v120 + 36) % v121 == v100)
          {
            HIDWORD(v122) = 0;
            if (__b[v33])
            {
              v27 |= 0x48u;
              __b[v33] = 0;
            }

            else
            {
              v27 |= 8u;
            }
          }

          else
          {
            HIDWORD(v122) = 0;
          }
        }

        else
        {
          HIDWORD(v122) = 0;
          v51 = v107;
          v20 = v105;
        }

        goto LABEL_97;
      }

LABEL_65:
      v49 = v123;
      if ((v123 + v47) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 1814;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v49 = v123;
      }

      result = CAHDec::addToPatcherList(this, v45, v44 + 223748, v47 + v49, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }

      goto LABEL_69;
    }

    v35 = *(v34 + 1896);
    v36 = __CFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      goto LABEL_43;
    }

LABEL_40:
    ++v32;
  }

  while (v32 != a2);
  v73 = v124;
  v74 = 48 * v29;
  if (!*v124 && !*(v124 + 152) && !*(v124 + 156))
  {
    v76 = HIDWORD(v122);
    v77 = v107;
LABEL_172:
    if (*(v73 + 152) || *(v73 + 156))
    {
LABEL_174:
      v78 = v74 + 223746;
      v79 = v123;
      if ((v123 + v76) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 1985;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v79 = v123;
      }

      result = CAHDec::addToPatcherList(this, v73, v78 + 2, v76 + v79, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }
    }

    *(v28 + 28) = v112 - v76;
    *(v28 + 16) = 917519;
    ++*(&v128[-1] + v33);
    v80 = v92;
    if (v110)
    {
      v81 = 0;
      buf[0] = 0;
      buf[1] = 0;
      do
      {
        buf[v81] = v20 + v81 * v93;
        ++v81;
      }

      while (v77 != v81);
      v82 = buf[0];
      v83 = *(buf[0] + 8) + 1;
      if (v83 >= a2)
      {
        v84 = 0;
        v87 = buf;
      }

      else
      {
        v84 = 0;
        v85 = 0;
        v86 = v91 & 1;
        v87 = buf;
        do
        {
          if (*(v82 + 4) + 1 == *(&v128[-1] + v84))
          {
            v84 = v86;
            *(v82 + 40) = *(buf[v86] + 36);
          }

          else if (v83 == *(v82 + 56))
          {
            *v87 = v82 + 48;
            v84 = v85;
            v86 = v85;
          }

          else
          {
            v84 = v86;
            *(v82 + 40) = *(buf[v86] + 36);
            *v87 = v82 + 48;
          }

          v85 = v86;
          v86 = (v86 + 1) % v77;
          v87 = &buf[v84];
          v82 = *v87;
          v83 = *(*v87 + 8) + 1;
        }

        while (v83 < a2);
      }

      v88 = *(&v128[-1] + v84);
      if (*(v82 + 4) + 1 != v88)
      {
        do
        {
          v89 = *(v82 + 52);
          v82 += 48;
        }

        while (v89 + 1 != v88);
        *v87 = v82;
      }

      *(v82 + 40) = *(v82 + 44) + 1;
    }

    v90 = *(this + 33) + 36;
    do
    {
      result = 0;
      *(v90 + 2 * v80 - 8) = *(&v128[-1] + v80);
      *(v90 + 4 * v80) = (v80 - v95) * v93 + 223724;
      ++v80;
    }

    while (v80 < v94);
    return result;
  }

  v75 = v123;
  v76 = HIDWORD(v122);
  v77 = v107;
  if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "populateAvdWork";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = 1984;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v75 = v123;
  }

  result = CAHDec::addToPatcherList(this, v73, v74 + 223746, HIDWORD(v122) + v75, 0x3FFFFFFFFFFLL, 32, -1, 2);
  if (!result)
  {
    v73 = v124;
    if (!*v124)
    {
      goto LABEL_172;
    }

    goto LABEL_174;
  }

  return result;
}

uint64_t CAHDecCatnipHevc::populateSlices(CAHDecCatnipHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2924;
    v5 = a2;
    do
    {
      CAHDecCatnipHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 368;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAVDHevcDecoder::VAGetIOSurfaceIDForBufferIndex(CAVDHevcDecoder *this, unsigned int a2, int a3)
{
  if (a2 <= 0x80)
  {
    v3 = 1056;
    if (a3 == 1)
    {
      v3 = 24;
    }

    v4 = *(this + 8 * a2 + v3);
    if (v4)
    {
      return *(v4 + 160);
    }
  }

  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v6)
  {
    *v7 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: CAVDHevcDecoder::VAGetIOSurfaceIDForBufferIndex couldn't resolve index\n", v7, 2u);
    return 0;
  }

  return result;
}

BOOL CAVDHevcDecoder::GetSDataMemInfo(CAVDDecoder *a1, unsigned int a2, void *a3, uint64_t *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 293) + 6036);
  v5 = *(a1 + v4 + 3);
  if (v5)
  {
    v9 = *(a1 + 1023) + 2360 * a2;
    *a4 = *(v9 + 8) - *(v5 + 8) + (*(v9 + 2080) >> 3);
    *a3 = v5 + 8;
    if (CAVDDecoder::isSIODecryption(a1))
    {
      v10 = *a4;
      if (HIDWORD(*a4) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "GetSDataMemInfo";
        v14 = 1024;
        v15 = 3679;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", &v12, 0x12u);
        v10 = *a4;
      }

      *(*(a1 + 1023) + 2360 * a2 + 2356) = v10;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "GetSDataMemInfo";
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ppRenderSurfaceList[%d] == NULL", &v12, 0x12u);
  }

  return v5 != 0;
}

__n128 AppleAVDCommandBuilder::setDecodeBufferSections(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 12);
  *(a1 + 6256) = *a2;
  *(a1 + 6268) = result;
  return result;
}

uint64_t CAVDHevcDecoder::getSliceRefIDmap(uint64_t result, int a2, int a3)
{
  v3 = (*(result + 8184) + 2360 * a3);
  v4 = v3[11];
  if (a2)
  {
    if (!v4)
    {
      v5 = 0;
      do
      {
        for (i = 0; i != 8; ++i)
        {
          if (*&v3[2 * v5 + 554] == *(result + 8408 + 8 * i))
          {
            break;
          }
        }

        *(result + 8344 + 4 * v5++) = i;
      }

      while (v5 <= v3[156]);
    }
  }

  else if (v4 <= 1)
  {
    v7 = 0;
    do
    {
      for (j = 0; j != 8; ++j)
      {
        if (*&v3[2 * v7 + 522] == *(result + 8408 + 8 * j))
        {
          break;
        }
      }

      *(result + 8344 + 4 * v7++) = j;
    }

    while (v7 <= v3[155]);
  }

  return result;
}

uint64_t CAHDecCatnipHevc::updateCommonRegisters(CAHDecCatnipHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecCatnipHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v102 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 256);
  v7 = *(v6 + 8184) + 2360 * a3;
  v8 = *(v6 + 8168) + 23176 * *(v6 + 8208);
  v9 = *(v6 + 8176) + 9856 * *(v6 + 8212);
  *(a1 + 460) = 6 * *(v8 + 3636);
  v10 = *(v8 + 22880);
  *(a2 + 352) = 0x1000000;
  v11 = (((*(v7 + 36) / v10) & 0xFFF) << 12) | 0x1000000;
  *(a2 + 352) = v11;
  *(a2 + 352) = v11 & 0xFFFFF000 | (*(v7 + 36) % v10) & 0xFFF;
  *(a2 + 4) = 0;
  v12 = *(v9 + 6477);
  if (*(v9 + 6477))
  {
    v12 = *(v7 + 1880) & 1;
  }

  *(a2 + 4) = v12;
  if (*(v7 + 44) == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = (10 - 2 * *(v7 + 1864)) & 0xE;
  }

  v14 = v13 | v12;
  *(a2 + 4) = v14;
  if (*(v7 + 44))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v7 + 616);
    if (*(v7 + 616))
    {
      v15 = 16 * (*(v7 + 762) == 0);
    }
  }

  v16 = v15 | v14;
  *(a2 + 4) = v16;
  if (*(v7 + 44) == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v9 + 17);
    if (*(v9 + 17))
    {
      v17 = 32 * (*(v7 + 761) & 1);
    }
  }

  v18 = v17 | v16;
  *(a2 + 4) = v18;
  if (*(v7 + 44))
  {
    v19 = 0;
  }

  else
  {
    v19 = (*(v7 + 760) == 0) << 6;
  }

  v20 = v19 | v18;
  *(a2 + 4) = v20;
  if (*(v7 + 624) == -1)
  {
    v21 = 0;
  }

  else
  {
    v21 = (*(v7 + 624) & 0xF) << 7;
  }

  v22 = v21 | v20;
  *(a2 + 4) = v22;
  if (*(v7 + 620) == -1)
  {
    v23 = 0;
  }

  else
  {
    v23 = (*(v7 + 620) & 0xF) << 11;
  }

  v24 = v23 | v22;
  *(a2 + 4) = v24;
  if (*(v7 + 44) == 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v8 + 22284);
    if (*(v8 + 22284))
    {
      v25 = (*(v7 + 616) & 1) << 15;
    }
  }

  v26 = v25 | v24;
  *(a2 + 4) = v26;
  *(a2 + 4) = v26 & 0xFFFCFFFF | ((*(v7 + 44) & 3) << 16);
  *(a2 + 336) = 0;
  if (*(v7 + 44) <= 1u)
  {
    if (*(v7 + 2344))
    {
      if (!*(a1 + 11820))
      {
        (*(**(a1 + 256) + 352))(*(a1 + 256), a3);
        v27 = *(a1 + 256);
        if (!*(v27 + 8920))
        {
          *(a1 + 11820) = 1;
          *(a2 + 4) |= 0x40000u;
          v95 = 368 * a3;
          if (*(v27 + 8744) || *(v27 + 8896) || *(v27 + 8900))
          {
            result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3260, 0, 0xFFFFFFFFLL, 8, -256, 4);
            if (result)
            {
              return result;
            }

            if (*(v27 + 8744))
            {
              goto LABEL_136;
            }
          }

          if (*(v27 + 8896) || *(v27 + 8900))
          {
LABEL_136:
            result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3288, 0, 0x3FFFFFFFFFFLL, 32, 1023, 4);
            if (result)
            {
              return result;
            }
          }
        }
      }
    }
  }

  *(a2 + 4) = *(a2 + 4) & 0x77FFFF | 0x2D000000;
  (*(**(a1 + 256) + 360))(*(a1 + 256), 0, a3);
  v28 = *(v7 + 44);
  if (v28 <= 1)
  {
    v29 = v6 + 8344;
    if ((*(v7 + 620) & 0x80000000) != 0)
    {
      v31 = 0;
      if (v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = a2 + 8;
      do
      {
        v33 = v31;
        *(v32 + 4 * v31) = v30 & 0xF0 | 0x2DC00000;
        *(v32 + 4 * v31) = v30 & 0xF0 | 0x2DC00000 | *(v29 + 4 * v31) & 0xF;
        ++v31;
        v30 += 16;
      }

      while (v33 < *(v7 + 620));
      if (*(v7 + 44))
      {
        goto LABEL_41;
      }
    }

    (*(**(a1 + 256) + 360))(*(a1 + 256), 1, a3);
    if ((*(v7 + 624) & 0x80000000) == 0)
    {
      v34 = 0;
      v35 = 0;
      v36 = a2 + 4 * v31 + 8;
      do
      {
        *(v36 + 4 * v35) = v34 & 0xF0 | 0x2DC00100;
        *(v36 + 4 * v35) = v34 & 0xF0 | 0x2DC00100 | *(v29 + 4 * v35) & 0xF;
        v34 += 16;
        v37 = v35++ < *(v7 + 624);
      }

      while (v37);
    }
  }

LABEL_41:
  *(a2 + 128) = 0x2DD0000000000000;
  v38 = *(v7 + 44);
  if (v38 == 1)
  {
    v39 = *(v9 + 49);
    if (!v39)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (v38)
    {
      goto LABEL_62;
    }

    v39 = *(v9 + 50);
    if (!v39)
    {
      goto LABEL_62;
    }
  }

  v40 = 0;
  v41 = 0;
  *(a2 + 132) = ((v39 & 1) << 6) | 0x2DD00000;
  v42 = *(v7 + 768);
  v43 = ((v39 & 1) << 6) | 0x2DD00000 | (8 * (*(v7 + 768) & 7));
  *(a2 + 132) = v43;
  v44 = (*(v7 + 772) + *(v7 + 768)) & 7;
  v45 = a2 + 136;
  *(a2 + 132) = v43 & 0xFFFFFFF8 | v44;
  v46 = 1 << (v42 & 7);
  v47 = a2 + 232;
  v48 = 1 << v44;
  do
  {
    if (*(v7 + 776 + v41))
    {
      v49 = ((v41 & 0xF) << 9) | 0x2DE04000;
      *(v45 + 4 * v40) = v49;
      *(v45 + 4 * v40) = (*(v7 + 808 + 4 * v41) + v46) & 0x1FF | v49;
      *(v47 + 4 * v40) = 770703360;
      *(v47 + 4 * v40++) = *(v7 + 872 + 4 * v41) | 0x2DF00000;
    }

    if (*(v7 + 792 + v41))
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = (((v41 & 0xF) << 9) | (v50 << 14)) + 769687552;
        *(v45 + 4 * v40) = v53;
        *(v45 + 4 * v40) = (*(v7 + 936 + 8 * v41 + 4 * v50) + v48) & 0x1FF | v53;
        *(v47 + 4 * v40) = 770703360;
        *(v47 + 4 * v40++) = *(v7 + 1608 + 8 * v41 + 4 * v50) | 0x2DF00000;
        v50 = 1;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
    }

    ++v41;
  }

  while (v41 <= *(v7 + 620));
  if (!*(v7 + 44))
  {
    v54 = 0;
    do
    {
      if (*(v7 + 1192 + v54))
      {
        v55 = ((v54 & 0xF) << 9) + 769679360;
        *(v45 + 4 * v40) = v55;
        *(v45 + 4 * v40) = (*(v7 + 1224 + 4 * v54) + v46) & 0x1FF | v55;
        *(v47 + 4 * v40) = 770703360;
        *(v47 + 4 * v40++) = *(v7 + 1288 + 4 * v54) | 0x2DF00000;
      }

      if (*(v7 + 1208 + v54))
      {
        v56 = 0;
        v57 = 1;
        do
        {
          v58 = v57;
          v59 = (((v54 & 0xF) << 9) | (v56 << 14)) + 769695744;
          *(v45 + 4 * v40) = v59;
          *(v45 + 4 * v40) = (*(v7 + 1352 + 8 * v54 + 4 * v56) + v48) & 0x1FF | v59;
          *(v47 + 4 * v40) = 770703360;
          *(v47 + 4 * v40++) = *(v7 + 1736 + 8 * v54 + 4 * v56) | 0x2DF00000;
          v56 = 1;
          v57 = 0;
        }

        while ((v58 & 1) != 0);
      }

      ++v54;
    }

    while (v54 <= *(v7 + 624));
  }

  *(a2 + 128) = v40;
LABEL_62:
  LOBYTE(v60) = *(v9 + 48);
  if (v60)
  {
    v60 = *(v7 + 1876);
  }

  v61 = *(a2 + 328) & 0xFFFFFFE0 | (v60 + *(v9 + 44)) & 0x1F;
  *(a2 + 328) = v61;
  LOBYTE(v62) = *(v9 + 48);
  if (v62)
  {
    v62 = *(v7 + 1872);
  }

  v63 = v61 & 0xFFFFFC1F | (32 * ((v62 + *(v9 + 40)) & 0x1F));
  *(a2 + 328) = v63;
  v64 = *(v9 + 28) + *(v7 + 1868) + 26;
  *(a2 + 328) = v63 & 0xE03FF | ((v64 & 0x7F) << 10) | 0x2D900000;
  *(*(a1 + 256) + 2760) = *(a1 + 460) + (v64 << 25 >> 25);
  *(a2 + 332) = 0;
  v65 = *(v9 + 6540) & 7;
  *(a2 + 332) = v65;
  v66 = v65 & 0xFFFFFFC7 | (8 * (*(v9 + 6536) & 7));
  *(a2 + 332) = v66;
  v67 = *(v8 + 10649);
  if (*(v8 + 10649))
  {
    v67 = (*(v7 + 618) & 1) << 6;
  }

  v68 = v67 | v66;
  *(a2 + 332) = v68;
  v69 = *(v8 + 10649);
  if (*(v8 + 10649))
  {
    v69 = (*(v7 + 617) & 1) << 7;
  }

  v70 = v69 | v68;
  *(a2 + 332) = v69 | v68;
  if (*(v7 + 1881))
  {
    v71 = (v7 + 1888);
  }

  else
  {
    v71 = (v9 + 248);
  }

  v72 = v70 & 0xFFFFF0FF | ((*v71 & 0xF) << 8);
  *(a2 + 332) = v72;
  if (*(v7 + 1881))
  {
    v73 = (v7 + 1884);
  }

  else
  {
    v73 = (v9 + 244);
  }

  v74 = v72 & 0xFFFF0FFF | ((*v73 & 0xF) << 12);
  *(a2 + 332) = v74;
  if (*(v9 + 239) && *(v7 + 1881))
  {
    v75 = (v7 + 1882);
  }

  else
  {
    v75 = (v9 + 240);
  }

  v76 = *v75 == 0;
  v77 = v74 | (v76 << 16);
  *(a2 + 332) = v77;
  v37 = v69 > 0x7F;
  v78 = (v70 >> 6) & 1;
  if (v37)
  {
    LOBYTE(v78) = 1;
  }

  if ((v78 | v76))
  {
    v79 = (v7 + 1892);
  }

  else
  {
    v79 = (v9 + 237);
  }

  v80 = v77 & 0xFFFDFFFF | ((*v79 & 1) << 17);
  *(a2 + 332) = v80;
  if (*(v9 + 52))
  {
    v81 = (*(v9 + 236) & 1) << 18;
  }

  else
  {
    v81 = 0x40000;
  }

  v82 = v81 | v80;
  *(a2 + 332) = v82;
  v83 = *(v8 + 10650);
  if (*(v8 + 10650))
  {
    v83 = (*(v8 + 10668) == 0) << 19;
  }

  *(a2 + 332) = v82 | v83 | 0x2DA00000;
  v84 = *(a1 + 256);
  v85 = v84[626];
  if (v84[590] != 1)
  {
    v96 = 0;
    v97 = 0;
    if ((*(*v84 + 440))(v84, a3, &v97, &v96))
    {
      v86 = 368 * a3;
      *(a2 + 340) = 0;
      v87 = v97;
      if (!*v97 && !*(v97 + 152) && !*(v97 + 156))
      {
        goto LABEL_116;
      }

      v92 = v96;
      if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v99 = "populateSliceRegisters";
        v100 = 1024;
        v101 = 1636;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v92 = v96;
      }

      result = CAHDec::addToPatcherList(a1, v87, v86 + 3264, v92, 0x3FFFFFFFFFFLL, 32, 1023, 4);
      if (result)
      {
        return result;
      }

      v87 = v97;
      if (!*v97)
      {
LABEL_116:
        if (!*(v87 + 152) && !*(v87 + 156))
        {
          goto LABEL_122;
        }
      }

      v90 = v96;
      if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v99 = "populateSliceRegisters";
        v100 = 1024;
        v101 = 1637;
        v91 = MEMORY[0x277D86220];
        goto LABEL_120;
      }

LABEL_121:
      result = CAHDec::addToPatcherList(a1, v87, v86 + 3268, v90, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }

      goto LABEL_122;
    }

    return 0xFFFFFFFFLL;
  }

  v96 = 0;
  v97 = 0;
  if (!(*(*v84 + 440))(v84, a3, &v97, &v96))
  {
    return 0xFFFFFFFFLL;
  }

  v86 = 368 * a3;
  *(a2 + 340) = 0;
  v87 = v97;
  if (!*v97 && !*(v97 + 152) && !*(v97 + 156))
  {
    goto LABEL_101;
  }

  v88 = v96;
  if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v99 = "populateSliceRegisters";
    v100 = 1024;
    v101 = 1617;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v88 = v96;
  }

  result = CAHDec::addToPatcherList(a1, v87, v86 + 3264, v88, 0x3FFFFFFFFFFLL, 32, 1023, 4);
  if (!result)
  {
    v87 = v97;
    if (*v97)
    {
      goto LABEL_103;
    }

LABEL_101:
    if (*(v87 + 152) || *(v87 + 156))
    {
LABEL_103:
      v90 = v96;
      if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v99 = "populateSliceRegisters";
        v100 = 1024;
        v101 = 1618;
        v91 = MEMORY[0x277D86220];
LABEL_120:
        _os_log_impl(&dword_277606000, v91, OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v90 = v96;
        goto LABEL_121;
      }

      goto LABEL_121;
    }

LABEL_122:
    v93 = *(v7 + 16) - (*(v7 + 2080) >> 3);
    *(a2 + 348) = v93;
    if (v84[590] == 1)
    {
      *(a2 + 356) = 0;
      if (v93 >= *(v7 + 2352))
      {
        v93 = *(v7 + 2352);
      }

      result = 0;
      if (v84[605])
      {
        v94 = v93 | v85 & 0x10000;
      }

      else
      {
        v94 = v85 | (v93 << 22);
      }

      *(a2 + 360) = v94;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CAHDecClaryHevc::getSWRStride(CAHDecClaryHevc *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 32) + 2644);
  *(this + 1478) = 0;
  if (!v5)
  {
    return v5;
  }

  if (a3 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v7 = (v6 + 1) & 0xFFFFFFFE;
  if (v5 == 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = (v7 + 7) & 0xFFFFFFF8;
  }

  if (v8 <= 3)
  {
    if (v8)
    {
      if (v8 == 2)
      {
        v5 = 0;
        *(this + 2956) = (((2 * ((2863311531u * (a2 + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
        v9 = (2 * ((2863311531u * (2 * a2 / a5 + 5)) >> 32)) & 0xFFFFFFF8;
LABEL_21:
        *(this + 2957) = (v9 + 63) & 0xFFFFFFC0;
        return v5;
      }

      goto LABEL_15;
    }

    v5 = 0;
    *(this + 2956) = (a2 + 63) & 0xFFFFFFC0;
    v10 = 2 * a2;
LABEL_19:
    v9 = v10 / a5;
    goto LABEL_21;
  }

  if (v8 == 4)
  {
    v5 = 0;
    *(this + 2956) = (((2 * ((3435973837u * (a2 + 4)) >> 32)) & 0xFFFFFFF8) + 63) & 0xFFFFFFC0;
    v9 = (2 * ((3435973837u * (2 * a2 / a5 + 9)) >> 32)) & 0xFFFFFFF0;
    goto LABEL_21;
  }

  if (v8 == 8)
  {
    v5 = 0;
    *(this + 2956) = (2 * a2 + 63) & 0xFFFFFFC0;
    v10 = 4 * a2;
    goto LABEL_19;
  }

LABEL_15:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "getSWRStride";
    v14 = 1024;
    v15 = v8 + 8;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): bad swr bit depth %d\n", &v12, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

CAHDec *createRoseHevcDecoder(void *a1)
{
  v2 = operator new(0x4DB8uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_288667628;
    *(v3 + 32) = a1;
    *(v3 + 114) = 268608;
    *(v3 + 2) = 11168;
    *(v3 + 1) = xmmword_27775BA80;
    *(v3 + 8) = 2;
    *(v3 + 7) = a1;
    bzero(v3 + 464, 0x4410uLL);
  }

  return v3;
}

void CAHDecRoseHevc::~CAHDecRoseHevc(CAHDecRoseHevc *this)
{
  *this = &unk_288667628;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecRoseHevc::~CAHDecRoseHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecRoseHevc::init(CAHDecRoseHevc *this)
{
  v11 = *MEMORY[0x277D85DE8];
  result = CAVDDecoder::allocAVDMem(*(this + 32), (this + 280), *(this + 114), 6, 1, 0);
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "init";
      v7 = 1024;
      v8 = 0;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to allocate m_decodeBufferMemInfo[%d]! Got %d\n", &v5, 0x18u);
    }

    return 301;
  }

  else
  {
    v4 = *(this + 35);
    *(this + 13) = 0;
    *(this + 33) = v4;
    *(this + 34) = v4;
  }

  return result;
}

uint64_t CAHDecRoseHevc::initPicture(CAHDecRoseHevc *this, int a2, __int16 a3, char a4)
{
  v15 = *MEMORY[0x277D85DE8];
  *(this + 114) = 268608;
  *(this + 13) = 0;
  v5 = *(this + 34);
  *(this + 33) = v5;
  if (v5)
  {
    bzero(v5, 0x41940uLL);
    v9 = *(this + *(this + 13) + 34);
    *(v9 + 16) = a2;
    *(v9 + 24) = a4;
    *(v9 + 25) = a4;
    *(v9 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 4481) = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "initPicture";
      v13 = 1024;
      v14 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v11, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecRoseHevc::populateSlices(CAHDecRoseHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = (*(this + *(this + 13) + 34) + 11168);
    v5 = a2;
    do
    {
      CAHDecRoseHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 39;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecRoseHevc::populateSliceRegisters(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v102 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 256);
  v7 = *(v6 + 8184) + 2360 * a3;
  v8 = *(v6 + 8168) + 23176 * *(v6 + 8208);
  v9 = *(v6 + 8176) + 9856 * *(v6 + 8212);
  *(a1 + 460) = 6 * *(v8 + 3636);
  v10 = *(v8 + 22880);
  a2[5] = *(v7 + 32);
  v11 = a2[4] & 0xFF000FFF | (((*(v7 + 36) / v10) & 0xFFF) << 12);
  a2[4] = v11;
  a2[4] = v11 & 0xFFFFF000 | (*(v7 + 36) % v10) & 0xFFF;
  v12 = *(v9 + 6477);
  if (*(v9 + 6477))
  {
    v12 = *(v7 + 1880) & 1;
  }

  v13 = a2[1] & 0xFFFFFFFE | v12;
  a2[1] = v13;
  if (*(v7 + 44) == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = (10 - 2 * *(v7 + 1864)) & 0xE;
  }

  v15 = v14 | v13 & 0xFFFFFFF1;
  a2[1] = v15;
  if (*(v7 + 44))
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v7 + 616);
    if (*(v7 + 616))
    {
      v16 = 16 * (*(v7 + 762) == 0);
    }
  }

  v17 = v16 | v15 & 0xFFFFFFEF;
  a2[1] = v17;
  if (*(v7 + 44) == 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v9 + 17);
    if (*(v9 + 17))
    {
      v18 = 32 * (*(v7 + 761) & 1);
    }
  }

  v19 = v18 | v17 & 0xFFFFFFDF;
  a2[1] = v19;
  if (*(v7 + 44))
  {
    v20 = 0;
  }

  else
  {
    v20 = (*(v7 + 760) == 0) << 6;
  }

  v21 = v20 | v19 & 0xFFFFFFBF;
  a2[1] = v21;
  if (*(v7 + 624) == -1)
  {
    v22 = 0;
  }

  else
  {
    v22 = (*(v7 + 624) & 0xF) << 7;
  }

  v23 = v22 | v21 & 0xFFFFF87F;
  a2[1] = v23;
  if (*(v7 + 620) == -1)
  {
    v24 = 0;
  }

  else
  {
    v24 = (*(v7 + 620) & 0xF) << 11;
  }

  v25 = v23 & 0xFFFF87FF | v24;
  a2[1] = v25;
  if (*(v7 + 44) == 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v8 + 22284);
    if (*(v8 + 22284))
    {
      v26 = (*(v7 + 616) & 1) << 15;
    }
  }

  v27 = v26 | v25 & 0xFFFF7FFF;
  a2[1] = v27;
  v28 = v27 & 0xFFFCFFFF | ((*(v7 + 44) & 3) << 16);
  a2[1] = v28;
  v29 = v28 & 0xFFFBFFFF | ((*(a1 + 17924) & 1) << 18);
  a2[1] = v29;
  if (*(v7 + 44) <= 1u)
  {
    if (*(v7 + 2344))
    {
      if (!*(a1 + 17924))
      {
        (*(**(a1 + 256) + 352))(*(a1 + 256), a3);
        v54 = *(a1 + 256);
        *(a1 + 17924) = 1;
        v29 = a2[1] | 0x40000;
        a2[1] = v29;
        if (*(v54 + 8744) || *(v54 + 8896) || *(v54 + 8900))
        {
          v55 = CAHDec::addToPatcherList(a1, (v54 + 8744), 156 * a3 + 11320, 0, 0xFFFFFFFFLL, 0, -1, 4);
          if (v55)
          {
            v56 = v55;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v97 = "populateSliceRegisters";
              v98 = 2080;
              v99 = "SliceRegisters";
              v100 = 2080;
              v101 = "MvColoRAddr";
              v57 = MEMORY[0x277D86220];
LABEL_107:
              _os_log_impl(&dword_277606000, v57, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to add %s %s buffer to patch list\n", buf, 0x20u);
              return v56;
            }

            return v56;
          }

          v29 = a2[1];
        }
      }
    }
  }

  a2[1] = v29 & 0xFFF7FFFF;
  (*(**(a1 + 256) + 360))(*(a1 + 256), 0, a3);
  if (*(v7 + 44) > 1u)
  {
    goto LABEL_70;
  }

  v30 = 0;
  v31 = 0;
  do
  {
    v31 *= 16;
    if (v30 + 7 <= *(v7 + 620))
    {
      v31 |= *(v6 + 8372 + 4 * v30);
    }

    --v30;
  }

  while (v30 != -8);
  v32 = 0;
  a2[34] = v31;
  v33 = 2101;
  do
  {
    v34 = v33 - 2086;
    v32 *= 16;
    if (v33 - 2086 <= *(v7 + 620))
    {
      v32 |= *(v6 + 4 * v33);
    }

    --v33;
  }

  while (v34 > 8);
  a2[35] = v32;
  v35 = *(v7 + 44);
  if (!v35)
  {
    (*(**(a1 + 256) + 360))(*(a1 + 256), 1, a3);
    v36 = 0;
    v37 = 0;
    do
    {
      v37 *= 16;
      if (v36 + 7 <= *(v7 + 624))
      {
        v37 |= *(v6 + 8372 + 4 * v36);
      }

      --v36;
    }

    while (v36 != -8);
    v38 = 0;
    a2[36] = v37;
    v39 = 2101;
    do
    {
      v40 = v39 - 2086;
      v38 *= 16;
      if (v39 - 2086 <= *(v7 + 624))
      {
        v38 |= *(v6 + 4 * v39);
      }

      --v39;
    }

    while (v40 > 8);
    a2[37] = v38;
    v35 = *(v7 + 44);
    if (!v35)
    {
      if (*(v9 + 50))
      {
        goto LABEL_51;
      }

LABEL_70:
      v58 = 0;
      a2[8] = 0;
      a2[33] = 0;
      goto LABEL_71;
    }
  }

  if (v35 != 1 || !*(v9 + 49))
  {
    goto LABEL_70;
  }

LABEL_51:
  v41 = 0;
  v42 = 0;
  v43 = a2[8] & 0xFFFFFFF8 | (*(v7 + 772) + *(v7 + 768)) & 7;
  a2[8] = v43;
  v44 = v43 & 0xC7 | (8 * (*(v7 + 768) & 7));
  v45 = a2 + 9;
  a2[8] = v44;
  do
  {
    if (*(v7 + 776 + v42))
    {
      v46 = *(v7 + 872 + 4 * v42);
      LOWORD(v45[v41]) = v46;
      v45[v41++] = ((((1 << ((v44 >> 3) & 7)) + *(v7 + 808 + 4 * v42)) & 0x1FF) << 16) & 0xE1FF0000 | ((v42 & 0xF) << 25) | v46 | 0x40000000;
      v44 = (2 * v44) & 0xFFFFFE00 | v44 | 0x100;
      a2[8] = v44;
    }

    if (*(v7 + 792 + v42))
    {
      v47 = 0;
      v48 = 1;
      v49 = v7 + 1608 + 8 * v42;
      do
      {
        v50 = *(v49 + 4 * v47);
        LOWORD(v45[v41]) = *(v49 + 4 * v47);
        v51 = (((1 << (v44 & 7)) + *(v7 + 936 + 8 * v42 + 4 * v47)) & 0x1FF) << 16;
        v52 = v48 & 1;
        if (v48)
        {
          v53 = 0x80000000;
        }

        else
        {
          v53 = -1073741824;
        }

        v45[v41++] = v53 | ((v42 & 0xF) << 25) | v50 | v51;
        v44 = (2 * v44) & 0xFFFFFE00 | v44 | 0x100;
        a2[8] = v44;
        v47 = 1;
        v48 = 0;
      }

      while (v52);
    }

    ++v42;
  }

  while (v42 <= *(v7 + 620));
  if (!*(v7 + 44))
  {
    v87 = 0;
    do
    {
      if (*(v7 + 1192 + v87))
      {
        v88 = *(v7 + 1288 + 4 * v87);
        LOWORD(v45[v41]) = v88;
        v45[v41++] = ((((1 << ((v44 >> 3) & 7)) + *(v7 + 1224 + 4 * v87)) & 0x1FF) << 16) & 0xE1FF0000 | ((v87 & 0xF) << 25) | v88 | 0x60000000;
        v44 = (2 * v44) & 0xFFFFFE00 | v44 | 0x100;
        a2[8] = v44;
      }

      if (*(v7 + 1208 + v87))
      {
        v89 = 0;
        v90 = 1;
        v91 = v7 + 1736 + 8 * v87;
        do
        {
          v92 = *(v91 + 4 * v89);
          LOWORD(v45[v41]) = *(v91 + 4 * v89);
          v93 = (((1 << (v44 & 7)) + *(v7 + 1352 + 8 * v87 + 4 * v89)) & 0x1FF) << 16;
          v94 = v90 & 1;
          if (v90)
          {
            v95 = 0x80000000;
          }

          else
          {
            v95 = -1073741824;
          }

          v45[v41++] = ((v87 & 0xF) << 25) | v95 | v92 | v93 | 0x20000000;
          v44 = (2 * v44) & 0xFFFFFE00 | v44 | 0x100;
          a2[8] = v44;
          v89 = 1;
          v90 = 0;
        }

        while (v94);
      }

      ++v87;
    }

    while (v87 <= *(v7 + 624));
  }

  a2[33] = v41;
  v58 = v44 & 0xFFFFFFBF;
LABEL_71:
  v59 = v58 | ((*(v9 + 50) & 1) << 6);
  a2[8] = v59;
  a2[8] = v59 & 0xFFFFFF7F | ((*(v9 + 49) & 1) << 7);
  LOBYTE(v60) = *(v9 + 48);
  if (v60)
  {
    v60 = *(v7 + 1876);
  }

  v61 = a2[2] & 0xFFFFFFE0 | (v60 + *(v9 + 44)) & 0x1F;
  a2[2] = v61;
  LOBYTE(v62) = *(v9 + 48);
  if (v62)
  {
    v62 = *(v7 + 1872);
  }

  v63 = v61 & 0xFFFFFC1F | (32 * ((v62 + *(v9 + 40)) & 0x1F));
  a2[2] = v63;
  v64 = *(v9 + 28) + *(v7 + 1868) + 26;
  a2[2] = v63 & 0xFFFE03FF | ((v64 & 0x7F) << 10);
  *(*(a1 + 256) + 2760) = *(a1 + 460) + (v64 << 25 >> 25);
  v65 = a2[3] & 0xFFFFFFF8 | *(v9 + 6540) & 7;
  a2[3] = v65;
  v66 = v65 & 0xFFFFFFC7 | (8 * (*(v9 + 6536) & 7));
  a2[3] = v66;
  v67 = *(v8 + 10649);
  if (*(v8 + 10649))
  {
    v67 = (*(v7 + 618) & 1) << 6;
  }

  v68 = v67 | v66 & 0xFFFFFFBF;
  a2[3] = v68;
  v69 = *(v8 + 10649);
  if (*(v8 + 10649))
  {
    v69 = (*(v7 + 617) & 1) << 7;
  }

  v70 = v69 | v68 & 0xFFFFFF7F;
  a2[3] = v70;
  if (*(v7 + 1881))
  {
    v71 = (v7 + 1888);
  }

  else
  {
    v71 = (v9 + 248);
  }

  v72 = v70 & 0xFFFFF0FF | ((*v71 & 0xF) << 8);
  a2[3] = v72;
  if (*(v7 + 1881))
  {
    v73 = (v7 + 1884);
  }

  else
  {
    v73 = (v9 + 244);
  }

  v74 = v72 & 0xFFFF0FFF | ((*v73 & 0xF) << 12);
  a2[3] = v74;
  if (*(v9 + 239) && *(v7 + 1881))
  {
    v75 = (v7 + 1882);
  }

  else
  {
    v75 = (v9 + 240);
  }

  v76 = *v75 == 0;
  v77 = v74 & 0xFFFEFFFF | (v76 << 16);
  a2[3] = v77;
  v78 = v69 > 0x7F;
  v79 = (v70 >> 6) & 1;
  if (v78)
  {
    LOBYTE(v79) = 1;
  }

  if ((v79 | v76))
  {
    v80 = (v7 + 1892);
  }

  else
  {
    v80 = (v9 + 237);
  }

  v81 = v77 & 0xFFFDFFFF | ((*v80 & 1) << 17);
  a2[3] = v81;
  if (*(v9 + 52))
  {
    v82 = (*(v9 + 236) & 1) << 18;
  }

  else
  {
    v82 = 0x40000;
  }

  v83 = v82 | v81 & 0xFFFBFFFF;
  a2[3] = v83;
  v84 = *(v8 + 10650);
  if (*(v8 + 10650))
  {
    v84 = (*(v8 + 10668) == 0) << 19;
  }

  a2[3] = v84 | v83 & 0xFFF7FFFF;
  if ((*(**(a1 + 256) + 440))())
  {
    if (!MEMORY[0] && !MEMORY[0x98] && !MEMORY[0x9C] || (v85 = CAHDec::addToPatcherList(a1, 0, 156 * a3 + 11192, 0, 0xFFFFFFFFLL, 0, -1, 4), !v85))
    {
      v56 = 0;
      a2[7] = *(v7 + 16) - (*(v7 + 2080) >> 3);
      return v56;
    }

    v56 = v85;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v97 = "populateSliceRegisters";
      v98 = 2080;
      v99 = "SliceRegisters";
      v100 = 2080;
      v101 = "SDataAddr";
      v57 = MEMORY[0x277D86220];
      goto LABEL_107;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v97 = "populateSliceRegisters";
      v98 = 1024;
      LODWORD(v99) = a3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to get slice data memInfo struct (slice %d)\n", buf, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return v56;
}