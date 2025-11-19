uint64_t CAVDAvcDecoder::activatePS(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 6);
  *(a1 + 3504) = v2;
  if (v2 > 0xFF || (v3 = (*(a1 + 3192) + 604 * v2), *v3 >= 0x100u))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v9 = 136315394;
    v10 = "int CAVDAvcDecoder::activatePS(sAvcSliceHeader *)";
    v11 = 1024;
    v12 = v2;
    v4 = MEMORY[0x277D86220];
    v5 = "AppleAVD: %s bad PPS index %d";
LABEL_5:
    _os_log_impl(&dword_277606000, v4, OS_LOG_TYPE_DEFAULT, v5, &v9, 0x12u);
    return 0xFFFFFFFFLL;
  }

  v7 = *(v3 + 2);
  *(a1 + 3500) = v7;
  if (v7 > 0x1F || (v8 = (*(a1 + 3184) + 2224 * v7), v8[3] >= 0x20u))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v9 = 136315394;
    v10 = "int CAVDAvcDecoder::activatePS(sAvcSliceHeader *)";
    v11 = 1024;
    v12 = v7;
    v4 = MEMORY[0x277D86220];
    v5 = "AppleAVD: %s bad SPS index %d";
    goto LABEL_5;
  }

  result = 0;
  if (!v8[4])
  {
    v8[7] = 0;
  }

  return result;
}

uint64_t CAVDAvcDecoder::initPicture(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  inited = AVC_RLM::initPicture(*(a1 + 2992), a2, a3, a4, a5);
  if (inited)
  {
    v9 = *(a1 + 3528);
    *(a5 + 40) = v9;
    v10 = *(a1 + 3524);
    *(a5 + 56) = v10;
    if (*(a1 + 2644))
    {
      v9 = *(a1 + 3544);
      v10 = *(a1 + 3540);
    }

    *(a5 + 48) = v9;
    *(a5 + 60) = v10;
    if ((*(*a1 + 184))(a1) && *(a1 + 3560))
    {
      *(a5 + 64) = *(a1 + 3556);
    }

    *(a5 + 104) = *(a3 + 4);
    *(a5 + 102) = *(a3 + 5);
    *(a5 + 72) = 16 * *(a3 + 1558) + 16;
    *(a5 + 76) = 16 * *(a3 + 1560) + 16;
    *(a5 + 103) = *(a3 + 1565) != 0;
    *(a5 + 80) = vmovl_u16(*(a3 + 1566));
    *(a5 + 105) = *(a3 + 6);
    while ((AVC_RLM::getOutputFrame(*(a1 + 2992), &v13) & 0x80000000) == 0)
    {
      CAVDAvcDecoder::insertFrame(a1, &v13);
    }

    *&v11 = -1;
    *(&v11 + 1) = -1;
    *(a1 + 6724) = v11;
    *(a1 + 6740) = v11;
    *(a1 + 6692) = v11;
    *(a1 + 6708) = v11;
    *(a1 + 6660) = v11;
    *(a1 + 6676) = v11;
    *(a1 + 6952) = 0;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "initPicture";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s: initPicture failed\n", &v13, 0xCu);
  }

  return inited;
}

uint64_t CAVDAvcDecoder::insertFrame(_DWORD *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a1[895];
  if (v4 - a1[894] >= 0x18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "insertFrame";
    v18 = 1024;
    v19 = 2720;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v16, 0x12u);
  }

  v5 = &a1[32 * (v4 % 0x18)];
  v5[896] = 1;
  v6 = 56;
  if (a1[661])
  {
    v6 = 60;
  }

  v7 = 40;
  if (a1[661])
  {
    v7 = 48;
  }

  v8 = *(a2 + v7);
  v9 = *(a2 + v6);
  v5[898] = a1[661] != 0;
  v5[899] = v9;
  *(v5 + 450) = v8;
  v10 = *(a2 + 104);
  v11 = *(a2 + 88);
  *(v5 + 902) = *(a2 + 72);
  *(v5 + 906) = v11;
  *(v5 + 910) = v10;
  v12 = *(a2 + 136);
  v13 = *(a2 + 152);
  v14 = *(a2 + 168);
  *(v5 + 914) = *(a2 + 120);
  *(v5 + 463) = v14;
  *(v5 + 922) = v13;
  *(v5 + 918) = v12;
  ++a1[895];
  return 0;
}

uint64_t CAVDAvcDecoder::DecodePicture(CAVDAvcDecoder *this, uint64_t a2, uint64_t a3)
{
  if ((*(**(this + 262) + 24))(*(this + 262), a3, a2))
  {
    return 1;
  }

  (*(**(this + 262) + 40))(*(this + 262));
  (*(**(this + 262) + 56))(*(this + 262));
  if ((*(**(this + 262) + 64))(*(this + 262)))
  {
    return 4;
  }

  (*(**(this + 262) + 32))(*(this + 262), a2);
  (*(**(this + 262) + 96))(*(this + 262), a2);
  (*(**(this + 262) + 48))(*(this + 262), *(this + 750));
  return 0;
}

uint64_t CAVDAvcDecoder::VAReleaseOutputSurface(AppleAVDCommandBuilder **this, int a2, unsigned int a3)
{
  if (a3 != 1 || *(this + 661))
  {
    AppleAVDCommandBuilder::setReleaseCVPixelBufferIndex(this[292], a2, a3);
  }

  return 0;
}

BOOL CAVDAvcDecoder::VAIsSurfaceListIndexMapped(CAVDAvcDecoder *this, int a2, int a3)
{
  if (a2 > 128)
  {
    return 0;
  }

  v3 = 1056;
  if (a3 == 1)
  {
    v3 = 24;
  }

  return *(this + 8 * a2 + v3) != 0;
}

uint64_t CAVDAvcDecoder::VAGetIOSurfaceIDForBufferIndex(CAVDAvcDecoder *this, unsigned int a2, int a3)
{
  if (a2 > 0x80)
  {
    return 0;
  }

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

  else
  {
    return 0;
  }
}

uint64_t CAVDAvcDecoder::VAGetParams(CAVDAvcDecoder *this, int a2, unsigned int *a3)
{
  result = 0;
  v35 = *MEMORY[0x277D85DE8];
  if (a2 > 6)
  {
    if (a2 <= 21)
    {
      if (a2 != 7)
      {
        if (a2 == 8)
        {
          result = 0;
          v6 = *(this + 12);
          goto LABEL_46;
        }

        if (a2 == 9)
        {
          result = 0;
          v6 = *(this + 4);
          goto LABEL_46;
        }

        return result;
      }

      if (a3)
      {
        result = 0;
        v6 = *(this + 690);
        goto LABEL_46;
      }

      return 0;
    }

    if (a2 <= 60)
    {
      if (a2 != 22)
      {
        if (a2 == 60)
        {
          result = 0;
          v6 = *(this + 674);
          goto LABEL_46;
        }

        return result;
      }

      if (a3)
      {
        result = 0;
        v6 = *(this + 722);
        goto LABEL_46;
      }

      return 0;
    }

    if (a2 == 61)
    {
      v15 = *(this + 674);
      if (v15 <= 0x100)
      {
        if (v15)
        {
          v25 = 0;
          v26 = (*(this + 400) + 1844);
          do
          {
            result = 0;
            a3[v25++] = *v26;
            v26 += 462;
          }

          while (v25 < *(this + 674));
          return result;
        }

        return 0;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v29 = 67109120;
        LODWORD(v30) = 256;
        v10 = MEMORY[0x277D86220];
        goto LABEL_38;
      }
    }

    else
    {
      if (a2 != 62)
      {
        return result;
      }

      v9 = *(this + 674);
      if (v9 <= 0x100)
      {
        if (v9)
        {
          v27 = 0;
          v28 = *(this + 400);
          do
          {
            result = 0;
            a3[v27++] = *(v28 + 16) - (*(v28 + 1436) >> 3);
            v28 += 1848;
          }

          while (v27 < *(this + 674));
          return result;
        }

        return 0;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v29 = 67109120;
        LODWORD(v30) = 256;
        v10 = MEMORY[0x277D86220];
LABEL_38:
        _os_log_impl(&dword_277606000, v10, OS_LOG_TYPE_DEFAULT, "AppleAVD: encrypted slices size > MAX_SLICES:%d", &v29, 8u);
      }
    }

    return 308;
  }

  if (a2 > 2)
  {
    if (a2 > 4)
    {
      if (a2 != 5)
      {
        *a3 = (*(**(this + 262) + 184))(*(this + 262), *(this + 1841));
        *(a3 + 1) = (*(**(this + 262) + 192))(*(this + 262), *(this + 1841));
        a3[4] = (*(**(this + 262) + 200))(*(this + 262), *(this + 1841));
        a3[5] = (*(**(this + 262) + 208))(*(this + 262), *(this + 1841));
        v8 = (*(**(this + 262) + 224))(*(this + 262));
        result = 0;
        a3[6] = v8;
        a3[7] = 3;
        return result;
      }

      v13 = *(this + 875);
      if ((v13 & 0x80000000) != 0 || (v14 = *(this + 876), (v14 & 0x80000000) != 0))
      {
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v24 = *(this + 876);
        v29 = 136315650;
        v30 = "virtual int CAVDAvcDecoder::VAGetParams(uint32_t, uint32_t *)";
        v31 = 1024;
        v32 = v13;
        v33 = 1024;
        v34 = v24;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): kVAGetApplyFoxtrot with m_active_sps %d m_active_pps %d", &v29, 0x18u);
      }

      else if (*(*(this + 398) + 2224 * v13 + 8) && *(*(this + 399) + 604 * v14 + 95))
      {
        result = 0;
        *a3 = 1;
        return result;
      }
    }

    else
    {
      if (a2 != 3)
      {
        result = 0;
        v6 = 1;
LABEL_46:
        *a3 = v6;
        return result;
      }

      v11 = *(this + 875);
      if ((v11 & 0x80000000) == 0)
      {
        result = 0;
        v12 = *(this + 398) + 2224 * v11;
        *(a3 + 88) = *(v12 + 1565);
        *(a3 + 2) = vmovl_u16(*(v12 + 1566));
        *(a3 + 89) = (*(v12 + 1582) & 0x40) != 0;
        *(a3 + 32) = *(v12 + 4);
        *(a3 + 33) = *(v12 + 6);
        *a3 = 16 * *(v12 + 1558) + 16;
        a3[1] = 16 * *(v12 + 1560) + 16;
        return result;
      }
    }

    return 0;
  }

  switch(a2)
  {
    case 0:
      v6 = CAVDAvcDecoder::DpbMaxSize(0, *(this + 398) + 2224 * *(this + 875));
      result = 0;
      goto LABEL_46;
    case 1:
      v16 = *(this + 894);
      if (v16 >= *(this + 895))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        result = 0;
        v17 = (this + 128 * (v16 % 0x18));
        v18 = v17[224];
        v19 = v17[225];
        v20 = v17[227];
        *(a3 + 2) = v17[226];
        *(a3 + 3) = v20;
        *a3 = v18;
        *(a3 + 1) = v19;
        v21 = v17[228];
        v22 = v17[229];
        v23 = v17[231];
        *(a3 + 6) = v17[230];
        *(a3 + 7) = v23;
        *(a3 + 4) = v21;
        *(a3 + 5) = v22;
        ++*(this + 894);
      }

      break;
    case 2:
      *a3 = (*(**(this + 262) + 168))(*(this + 262));
      v7 = (*(**(this + 262) + 176))(*(this + 262));
      result = 0;
      a3[2] = v7;
      break;
  }

  return result;
}

uint64_t CAVDAvcDecoder::VASetParams(CAVDAvcDecoder *this, int a2, unsigned int *a3)
{
  result = 0;
  switch(a2)
  {
    case 11:
      result = 0;
      *(this + 2724) = *a3;
      return result;
    case 12:
      result = 0;
      *(this + 686) = *a3;
      *(this + 687) = a3[1];
      return result;
    case 15:
      result = 0;
      *(this + 343) = *(a3 + 1);
      *(this + 688) = *a3;
      return result;
    case 16:
      result = 0;
      *(this + 341) = a3;
      return result;
    case 17:
      result = 0;
      *(this + 684) = *a3;
      return result;
    case 18:
      if (*(this + 2724))
      {
        goto LABEL_24;
      }

      result = 0;
      *(this + 2725) = *a3;
      return result;
    case 20:
      result = 0;
      *(this + 2892) = *a3;
      *(this + 362) = *(a3 + 1);
      return result;
    case 21:
    case 58:
      return result;
    case 22:
      if (!a3)
      {
        goto LABEL_24;
      }

      result = 0;
      *(this + 722) = *a3;
      return result;
    case 23:
      result = 0;
      *(this + 673) = *a3;
      return result;
    case 24:
      result = 0;
      v18 = *a3;
      *(this + 12) = v18;
      goto LABEL_35;
    case 25:
      result = 0;
      v18 = *a3;
LABEL_35:
      *(this + 4) = v18;
      return result;
    case 26:
      if (a3[5] <= *(*(this + 260) + 56))
      {
        v9 = **(this + 292);
        v10 = *(v9 + 3648);
        IOSurfaceLock(*(v9 + 3640), 0, 0);
        memcpy(v10, *(a3 + 1), a3[5]);
        IOSurfaceUnlock(*(**(this + 292) + 3640), 0, 0);
      }

      goto LABEL_24;
    case 27:
      result = 0;
      *(this + 7372) = *a3;
      return result;
    case 28:
      result = 0;
      *(this + 696) = *a3;
      *(this + 346) = *(a3 + 1);
      v21 = *(a3 + 18);
      v22 = *(a3 + 26);
      v23 = *(a3 + 14);
      *(this + 2856) = *(a3 + 22);
      *(this + 2872) = v22;
      *(this + 2824) = v23;
      *(this + 2840) = v21;
      v24 = *(a3 + 10);
      *(this + 2792) = *(a3 + 6);
      *(this + 2808) = v24;
      return result;
    case 29:
      result = 0;
      *(this + 1842) = *a3;
      return result;
    case 30:
      result = 0;
      *(this + 10) = *a3;
      return result;
    case 31:
      result = 0;
      *(this + 1845) = *a3;
      return result;
    case 33:
      *(this + 672) = *a3;
      isADSDecryption = CAVDDecoder::isADSDecryption(this);
      result = 0;
      *(this + 590) = isADSDecryption;
      return result;
    case 34:
      result = 0;
      v25 = *a3;
      v26 = *(a3 + 1);
      v27 = *(a3 + 2);
      *(this + 2412) = *(a3 + 6);
      *(this + 2380) = v26;
      *(this + 2396) = v27;
      *(this + 2364) = v25;
      *(this + 627) = 1;
      return result;
    case 35:
      result = 0;
      v6 = *a3;
      v7 = *(a3 + 1);
      v8 = *(a3 + 2);
      *(this + 2468) = *(a3 + 6);
      *(this + 2436) = v7;
      *(this + 2452) = v8;
      *(this + 2420) = v6;
      *(this + 628) = 1;
      return result;
    case 36:
      result = 0;
      v17 = *a3;
      *(this + 2488) = *(a3 + 3);
      *(this + 2476) = v17;
      *(this + 629) = 1;
      *(this + 315) = *(this + 312);
      return result;
    case 37:
      result = 0;
      *(this + 629) = 1;
      return result;
    case 38:
      result = 0;
      *(this + 626) = *a3;
      return result;
    case 39:
      result = 0;
      *(this + 736) = *a3;
      return result;
    case 40:
      result = 0;
      *(this + 366) = a3;
      return result;
    case 41:
      result = 0;
      *(this + 367) = a3;
      return result;
    case 42:
      v11 = *(this + 3694);
      if (*(this + 3694))
      {
        v12 = (*(this + 400) + 1840);
        result = 0;
        do
        {
          *v12 = *a3;
          v12 += 924;
          --v11;
        }

        while (v11);
      }

      else
      {
LABEL_24:
        result = 0;
      }

      break;
    case 43:
      result = 0;
      v13 = *a3;
      *(this + 159) = *(a3 + 1);
      *(this + 158) = v13;
      v14 = *(a3 + 2);
      v15 = *(a3 + 3);
      v16 = *(a3 + 4);
      *(this + 652) = a3[20];
      *(this + 658) = 1;
      *(this + 162) = v16;
      *(this + 161) = v15;
      *(this + 160) = v14;
      break;
    case 44:
      result = 0;
      v20 = *a3;
      *(this + 657) = a3[4];
      *(this + 2612) = v20;
      *(this + 659) = 1;
      break;
    case 45:
      result = 0;
      *(this + 2948) = *a3;
      *(this + 738) = a3[1];
      break;
    case 47:
      result = 0;
      *(this + 663) = *a3;
      break;
    case 48:
      result = 0;
      *(this + 166) = *a3;
      break;
    case 49:
      result = 0;
      *(this + 2674) = *a3;
      break;
    case 50:
      result = 0;
      *(this + 2675) = *a3;
      break;
    case 51:
      result = 0;
      *(this + 335) = a3;
      break;
    case 55:
      result = 0;
      *(this + 1846) = *a3;
      break;
    case 56:
      result = 0;
      *(this + 7390) = *a3;
      break;
    case 59:
      result = 0;
      *(this + 689) = *a3;
      break;
    default:
      result = 308;
      break;
  }

  return result;
}

BOOL CAVDAvcDecoder::decodeGetRenderTarget(uint64_t a1, unsigned int a2, void *a3, int a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 > 0x80)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "decodeGetRenderTarget";
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s bad index %u", &v9, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    v6 = a1 + 24;
    if (a4 != 1)
    {
      v6 = a1 + 1056;
    }

    v7 = *(v6 + 8 * a2);
  }

  *a3 = v7;
  return v7 != 0;
}

uint64_t CAVDAvcDecoder::decodeGetRenderTargetRef(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, void *a5)
{
  v54 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  if (a3 > 0x80)
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 1056 + 8 * a3);
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    *&buf[4] = "decodeGetRenderTargetRef";
    v12 = MEMORY[0x277D86220];
    v13 = "AppleAVD: %s(): AVC pOrigRef is NULL!";
LABEL_13:
    v14 = 12;
LABEL_14:
    _os_log_impl(&dword_277606000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
    goto LABEL_15;
  }

  v9 = *(a1 + 2744);
  if (*(v7 + 204) == v9 && *(v7 + 208) == *(a1 + 2748))
  {
    *a5 = v7;
LABEL_10:
    v11 = 1;
    goto LABEL_16;
  }

  if (a4 > 0x80)
  {
    goto LABEL_10;
  }

  v10 = *(a1 + 1056 + 8 * a4);
  *a5 = v10;
  if (!v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    *&buf[4] = "decodeGetRenderTargetRef";
    v12 = MEMORY[0x277D86220];
    v13 = "AppleAVD: %s(): AVC pScaledRef is NULL!";
    goto LABEL_13;
  }

  if (*(v10 + 204) == v9 && *(v10 + 208) == *(a1 + 2748))
  {
    goto LABEL_10;
  }

  v39 = (*(**(a1 + 2096) + 184))(*(a1 + 2096), a2);
  v16 = (*(**(a1 + 2096) + 192))(*(a1 + 2096), a2);
  v17 = (*(**(a1 + 2096) + 200))(*(a1 + 2096), a2);
  v18 = (*(**(a1 + 2096) + 208))(*(a1 + 2096), a2);
  v19 = (*(**(a1 + 2096) + 216))(*(a1 + 2096));
  v20 = (*(**(a1 + 2096) + 224))(*(a1 + 2096));
  if (!*(a1 + 2768) || !*(a1 + 2816) || !*(a1 + 2840) || (v21 = v20, (v22 = *(a1 + 2792)) == 0) || !*(a1 + 2864))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v12 = MEMORY[0x277D86220];
    v13 = "AppleAVD: CAVDAvcDecoder::DecodeGetRenderTargetRef rvra scaler buffers are not allocated!";
LABEL_32:
    v14 = 2;
    goto LABEL_14;
  }

  v23 = *(a1 + 3184) + 2224 * *(a1 + 3500);
  v37 = *(v23 + 1558);
  v38 = *(v23 + 1560);
  bzero(v22, *(a1 + 2808));
  bzero(*(a1 + 2816), *(a1 + 2832));
  bzero(*(a1 + 2840), *(a1 + 2856));
  bzero(*(a1 + 2864), *(a1 + 2880));
  v24 = *(a1 + 2072);
  if (*(a1 + 2352) <= 19)
  {
    v25 = *(a1 + 2064);
  }

  else if (!v24 || (v25 = *(a1 + 2064)) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v12 = MEMORY[0x277D86220];
    v13 = "AppleAVD: CAVDAvcDecoder::DecodeGetRenderTargetRef rvra scaler backup buffers are not allocated!";
    goto LABEL_32;
  }

  v26 = *(a1 + 2344);
  v27 = *(v7 + 204);
  v28 = *(v7 + 208);
  v29 = *(a1 + 2744);
  v30 = *(a1 + 2748);
  v31 = *(a1 + 2752);
  v32 = *(a1 + 2768);
  v33 = *(a1 + 2784);
  v40 = xmmword_27775DA40;
  v41 = v19;
  v42 = v21;
  v43 = v39;
  v44 = v16;
  v45 = v17;
  v46 = v18;
  v47 = 1;
  v34 = *(a1 + 2840);
  v50 = *(a1 + 2824);
  v51 = v34;
  v35 = *(a1 + 2872);
  v52 = *(a1 + 2856);
  v53 = v35;
  v36 = *(a1 + 2808);
  *buf = *(a1 + 2792);
  v49 = v36;
  if (!AppleAVDCommandBuilder::scaleOutputFrame(v26, v7 + 8, v10 + 8, v27, v28, v29, v30, v31, v32, v33, 16 * v37 + 16, 16 * v38 + 16, &v40, buf, v24 + 8, v25 + 8))
  {
    *(v10 + 204) = *(a1 + 2744);
    goto LABEL_10;
  }

LABEL_15:
  v11 = 0;
LABEL_16:
  if (*a5)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

BOOL CAVDAvcDecoder::GetSDataMemInfo(CAVDDecoder *a1, unsigned int a2, void *a3, uint64_t *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 293) + 6036);
  v5 = *(a1 + v4 + 3);
  if (v5)
  {
    v9 = *(a1 + 400) + 1848 * a2;
    *a4 = *(v9 + 8) - *(v5 + 8) + (*(v9 + 1436) >> 3);
    *a3 = v5 + 8;
    if (CAVDDecoder::isSIODecryption(a1))
    {
      v10 = *a4;
      if (HIDWORD(*a4) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "GetSDataMemInfo";
        v14 = 1024;
        v15 = 2957;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", &v12, 0x12u);
        v10 = *a4;
      }

      *(*(a1 + 400) + 1848 * a2 + 1844) = v10;
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

__n128 CAVDAvcDecoder::populateSnapshotStruct(CAVDAvcDecoder *this, unsigned int a2, int a3)
{
  v3 = *(this + 1738);
  if (v3)
  {
    v4 = (this + 6760);
    v5 = this + 6972;
    v6 = *(this + 1738);
    do
    {
      v7 = *v4++;
      *(v5 - 12) = *(v7 + 40);
      *(v5 - 1) = *(v7 + 56);
      *v5 = *(v7 + 28);
      v5 += 16;
      --v6;
    }

    while (v6);
  }

  *(this + 1836) = v3;
  v8 = *(this + 261);
  v9 = *(v8 + 16);
  *(this + 2104) = *v8;
  *(this + 2120) = v9;
  v10 = *(v8 + 32);
  v11 = *(v8 + 48);
  v12 = *(v8 + 80);
  *(this + 2168) = *(v8 + 64);
  *(this + 2184) = v12;
  *(this + 2136) = v10;
  *(this + 2152) = v11;
  v13 = *(v8 + 96);
  v14 = *(v8 + 112);
  v15 = *(v8 + 144);
  *(this + 2232) = *(v8 + 128);
  *(this + 2248) = v15;
  *(this + 2200) = v13;
  *(this + 2216) = v14;
  result = *(v8 + 160);
  v17 = *(v8 + 176);
  v18 = *(v8 + 208);
  *(this + 2296) = *(v8 + 192);
  *(this + 2312) = v18;
  *(this + 2264) = result;
  *(this + 2280) = v17;
  *(this + 582) = a3;
  return result;
}

uint64_t CAVDAvcDecoder::getRefBufIndex(CAVDAvcDecoder *this, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1836);
  if (v3 <= a2)
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      v6 = 136315650;
      v7 = "getRefBufIndex";
      v8 = 1024;
      v9 = a2;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR! RefIndex %d > ref_pics %d", &v6, 0x18u);
      return 0;
    }
  }

  else if (*(this + 16 * a2 + 6972) == 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(this + 4 * a2 + 1742);
  }

  return result;
}

void AVC_RLM::AVC_RLM(AVC_RLM *this, CAVDAvcDecoder *a2)
{
  *this = &unk_288665448;
  v4 = this + 5236;
  bzero(this + 8, 0xBBCuLL);
  *(v4 + 2) = 0;
  *v4 = 0u;
  bzero(this + 5264, 0x160CuLL);
  *(this + 682) = 0u;
  *(this + 1366) = a2;
}

uint64_t AVC_RLM::initPicture(int32x2_t *a1, _BYTE *a2, void *__src, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = memcpy(&a1[376] + 4, __src, 0x8B0uLL);
  a1[376].i32[0] = AVC_RLM::getDpbSize(v10, __src);
  if (!*(__src + 1557) || (v11 = a1[656].i32[1], v12 = *(a4 + 12), v11 == v12) || ((v11 + 1) & ((16 << a1[440].i8[6]) - 1)) == v12 || (*a2 & 0xF8) == 0x28 || (AVC_RLM::fillFrameNumGap(a1, a4) & 1) != 0)
  {
    *(a5 + 144) = 0u;
    *(a5 + 160) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    *(a5 + 3) = (*a2 & 0xF8) == 40;
    v13 = AVC_RLM::decodePicOrderCnt(a1, a2, __src, a4);
    v14 = *(a4 + 12);
    *(a5 + 8) = v14;
    *(a5 + 12) = v13;
    *a5 = (*a2 & 6) != 0;
    v15 = *(a4 + 807) == 0;
    *(a5 + 1) = *(a4 + 807) != 0;
    v16 = *(a5 + 24);
    if (v15)
    {
      v16 = 0;
    }

    *(a5 + 16) = v14;
    *(a5 + 20) = v16;
    a1[655].i32[1] = 0;
    return 1;
  }

  else
  {
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v18)
    {
      v19 = 136315138;
      v20 = "initPicture";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s: fill frame num gap failed!\n", &v19, 0xCu);
      return 0;
    }
  }

  return result;
}

uint64_t AVC_RLM::getDpbSize(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 2);
  if (v2 > 0x27)
  {
    if (v2 == 80)
    {
      v8 = 10485760;
    }

    else
    {
      v8 = 0;
    }

    if ((v2 - 51) >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 184320;
    }

    if ((v2 - 60) >= 3)
    {
      v4 = v9;
    }

    else
    {
      v4 = 696320;
    }

    if (v2 == 50)
    {
      v10 = 110400;
    }

    else
    {
      v10 = 0;
    }

    if (v2 == 42)
    {
      v11 = 34816;
    }

    else
    {
      v11 = v10;
    }

    if ((v2 - 40) >= 2)
    {
      v6 = v11;
    }

    else
    {
      v6 = 0x8000;
    }

    v7 = v2 <= 50;
    goto LABEL_35;
  }

  if (*(a2 + 2) <= 0x14u)
  {
    if ((v2 - 12) < 2 || v2 == 20)
    {
      v4 = 2376;
    }

    else
    {
      v4 = 0;
    }

    if (v2 == 11)
    {
      v5 = 900;
    }

    else
    {
      v5 = 0;
    }

    if (v2 == 10)
    {
      v6 = 396;
    }

    else
    {
      v6 = v5;
    }

    v7 = v2 <= 11;
LABEL_35:
    if (v7)
    {
      v12 = v6;
    }

    else
    {
      v12 = v4;
    }

    goto LABEL_38;
  }

  if (*(a2 + 2) <= 0x1Du)
  {
    if (v2 == 21)
    {
      v12 = 4752;
      goto LABEL_38;
    }

    if (v2 != 22)
    {
      v12 = 0;
      goto LABEL_38;
    }

LABEL_60:
    v12 = 8100;
    goto LABEL_38;
  }

  if (v2 == 30)
  {
    goto LABEL_60;
  }

  if (v2 == 32)
  {
    v17 = 20480;
  }

  else
  {
    v17 = 0;
  }

  if (v2 == 31)
  {
    v12 = 18000;
  }

  else
  {
    v12 = v17;
  }

LABEL_38:
  v13 = v12 / ((*(a2 + 1558) + 1 + (*(a2 + 1558) + 1) * *(a2 + 1560)) << (*(a2 + 1562) == 0));
  v14 = *(a2 + 2209);
  if (v13 > v14)
  {
    v14 = v13;
  }

  if (*(a2 + 2202))
  {
    v15 = *(a2 + 1574) == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v13 = v14;
  }

  if (v13 <= *(a2 + 1556))
  {
    v13 = *(a2 + 1556);
  }

  if (v13 >= 0x10)
  {
    v13 = 16;
  }

  return v13 + 1;
}

uint64_t AVC_RLM::fillFrameNumGap(int32x2_t *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1[656].i32[1];
  v4 = (16 << a1[440].i8[6]) - 1;
  v5 = *(a2 + 12);
  v6 = *(a2 + 32);
  *(a2 + 32) = 0;
  v16[0] = 10;
  v7 = (v3 + 1) & v4;
  if (v7 == v5)
  {
LABEL_13:
    *(a2 + 12) = v5;
    *(a2 + 32) = v6;
    return 1;
  }

  else
  {
    v9 = a1 + 1;
    while (1)
    {
      if (a1[440].i8[7])
      {
        *(a2 + 12) = v7;
        v10 = AVC_RLM::decodePicOrderCnt(a1, v16, &a1[376] + 4, a2);
      }

      else
      {
        v10 = 0;
      }

      v11 = v7 <= *(a2 + 12) ? 0 : -16 << a1[440].i8[6];
      if (!AVC_RLM::slidingWindowProcess(a1, 1))
      {
        break;
      }

      AVC_RLM::truncateDpb(a1, a1[376].u32[0]);
      v12 = a1[375].u32[1];
      if (v12 <= 0x10)
      {
        v13 = &v9[22 * v12];
        v13->i32[0] = 1;
        v13->i8[4] = 1;
        *(&v13->i16[2] + 1) = 0;
        v13->i8[7] = 0;
        v13[1].i32[0] = v7;
        v13[1].i32[1] = v10;
        v13[2] = (v11 + v7);
        v13[3].i32[0] = 0;
        v13[3].i32[1] = 1;
        *v13[4].i8 = 0u;
        *v13[6].i8 = 0u;
        *v13[8].i8 = 0u;
        *v13[10].i8 = 0u;
        *v13[12].i8 = 0u;
        *v13[14].i8 = 0u;
        *v13[16].i8 = 0u;
        *v13[18].i8 = 0u;
        *v13[20].i8 = 0u;
        a1[375] = vadd_s32(a1[375], 0x100000001);
      }

      v7 = (v7 + 1) & v4;
      if (v7 == v5)
      {
        goto LABEL_13;
      }
    }

    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v15)
    {
      *buf = 136315138;
      v18 = "fillFrameNumGap";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s: sliding window process failed!\n", buf, 0xCu);
      return 0;
    }
  }

  return result;
}

unint64_t AVC_RLM::decodePicOrderCnt(uint64_t a1, _BYTE *a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(a3 + 515);
  if (*(a3 + 515))
  {
    v5 = 16 << *(a3 + 514);
    if (v4 == 2)
    {
      if (*(a1 + 5244) == 5)
      {
        *(a1 + 5248) = 0;
      }

      if ((*a2 & 0xF8) == 0x28)
      {
        v11 = 0;
        v12 = 0;
      }

      else
      {
        v16 = a4[3];
        if (*(a1 + 5252) <= v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = v5;
        }

        v11 = *(a1 + 5248) + v17;
        v12 = (__PAIR64__(2 * (v16 + v11), *a2 & 6) - 1) >> 32;
      }

      *(a1 + 5248) = v11;
    }

    else if (v4 == 1)
    {
      v6 = *(a3 + 528);
      if (*(a3 + 528))
      {
        v7 = 0;
        v8 = (a3 + 532);
        v9 = *(a3 + 528);
        do
        {
          v10 = *v8++;
          v7 += v10;
          --v9;
        }

        while (v9);
      }

      else
      {
        v7 = 0;
      }

      if (*(a1 + 5244) == 5)
      {
        *(a1 + 5248) = 0;
      }

      if ((*a2 & 0xF8) == 0x28)
      {
        v22 = 0;
        v23 = a4[3];
      }

      else
      {
        v23 = a4[3];
        if (*(a1 + 5252) <= v23)
        {
          v5 = 0;
        }

        v22 = *(a1 + 5248) + v5;
      }

      v24 = v23 + v22;
      if (!v6)
      {
        v24 = 0;
      }

      *(a1 + 5256) = v24;
      if ((*a2 & 6) == 0 && v24)
      {
        *(a1 + 5256) = --v24;
      }

      if (v24)
      {
        v25 = v24 - 1;
        v26 = v25 / v6;
        v27 = v25 % v6;
        v28 = v26 * v7;
        v29 = (a3 + 532);
        v30 = -1;
        do
        {
          v31 = *v29++;
          v28 += v31;
          ++v30;
        }

        while (v30 < v27);
      }

      else
      {
        v28 = 0;
      }

      if ((*a2 & 6) != 0)
      {
        v32 = 0;
      }

      else
      {
        v32 = *(a3 + 520);
      }

      LODWORD(v12) = a4[8] + v28 + v32;
      v33 = a4[9] + *(a3 + 524) + v12;
      if (v12 >= v33)
      {
        v12 = v33;
      }

      else
      {
        v12 = v12;
      }

      *(a1 + 5248) = v22;
    }

    else
    {
      return 0;
    }

    return v12;
  }

  v13 = 16 << *(a3 + 516);
  if ((*a2 & 0xF8) == 0x28)
  {
    v14 = 0;
    *(a1 + 5236) = 0;
    v15 = a4[6];
  }

  else
  {
    v14 = *(a1 + 5240);
    v15 = a4[6];
    if (v14 > v15 && v14 - v15 >= v13 >> 1)
    {
      v20 = *(a1 + 5236) + v13;
      goto LABEL_27;
    }
  }

  v18 = v15 >= v14;
  v19 = v15 - v14;
  if (v19 != 0 && v18 && v19 > v13 >> 1)
  {
    v20 = *(a1 + 5236) - v13;
  }

  else
  {
    v20 = *(a1 + 5236);
  }

LABEL_27:
  LODWORD(v12) = v20 + v15;
  v21 = v20 + v15 + a4[7];
  if ((v20 + v15) >= v21)
  {
    v12 = v21;
  }

  else
  {
    v12 = v12;
  }

  if ((*a2 & 6) != 0)
  {
    *(a1 + 5236) = v20;
    *(a1 + 5240) = v15;
  }

  return v12;
}

BOOL AVC_RLM::initRefPicList(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  v147 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a2, 0x588uLL);
  v8 = *(a2 + 12);
  v9 = (a1 + 16);
  v10 = 17;
  do
  {
    if (*(v9 - 7))
    {
      v11 = *v9;
    }

    else
    {
      v12 = -16 << *(a1 + 3526);
      if (*v9 <= v8)
      {
        v12 = 0;
      }

      v11 = v12 + *v9;
    }

    if (*(v9 - 7))
    {
      v13 = v9[4];
    }

    else
    {
      v13 = 0;
    }

    v9[2] = v11;
    v9[3] = v13;
    v9 += 44;
    --v10;
  }

  while (v10);
  v14 = __dst + 1416;
  bzero(__dst + 1416, 0xBB0uLL);
  bzero(__dst + 7224, 0xBB0uLL);
  *(__dst + 1629) = 0;
  if (!*(a2 + 4))
  {
    v29 = *(a1 + 3004);
    if (v29)
    {
      v30 = 0;
      v31 = 0;
      v32 = a1 + 9;
      do
      {
        if (*(v32 - 1) == 1 && (*v32 & 1) == 0 && v31 <= 0xF)
        {
          v33 = &v14[176 * v31++];
          v34 = *(v32 - 1);
          v35 = *(v32 + 31);
          *(v33 + 1) = *(v32 + 15);
          *(v33 + 2) = v35;
          *v33 = v34;
          v36 = *(v32 + 47);
          v37 = *(v32 + 63);
          v38 = *(v32 + 95);
          *(v33 + 5) = *(v32 + 79);
          *(v33 + 6) = v38;
          *(v33 + 3) = v36;
          *(v33 + 4) = v37;
          v39 = *(v32 + 111);
          v40 = *(v32 + 127);
          v41 = *(v32 + 159);
          *(v33 + 9) = *(v32 + 143);
          *(v33 + 10) = v41;
          *(v33 + 7) = v39;
          *(v33 + 8) = v40;
          v29 = *(a1 + 3004);
        }

        ++v30;
        v32 += 176;
      }

      while (v30 < v29);
    }

    else
    {
      v31 = 0;
    }

    qSort((__dst + 1416), v31, 0xB0u, comparePicNumDescending);
    v119 = *(a1 + 3004);
    v120 = v31;
    if (v119)
    {
      v121 = 0;
      v122 = a1 + 9;
      v120 = v31;
      do
      {
        if (*(v122 - 1) == 1 && *v122 == 1 && v120 <= 0xF)
        {
          v124 = &v14[176 * v120++];
          v125 = *(v122 - 1);
          v126 = *(v122 + 31);
          *(v124 + 1) = *(v122 + 15);
          *(v124 + 2) = v126;
          *v124 = v125;
          v127 = *(v122 + 47);
          v128 = *(v122 + 63);
          v129 = *(v122 + 95);
          *(v124 + 5) = *(v122 + 79);
          *(v124 + 6) = v129;
          *(v124 + 3) = v127;
          *(v124 + 4) = v128;
          v130 = *(v122 + 111);
          v131 = *(v122 + 127);
          v132 = *(v122 + 159);
          *(v124 + 9) = *(v122 + 143);
          *(v124 + 10) = v132;
          *(v124 + 7) = v130;
          *(v124 + 8) = v131;
          v119 = *(a1 + 3004);
        }

        ++v121;
        v122 += 176;
      }

      while (v121 < v119);
    }

    qSort(&v14[176 * v31], (v120 - v31), 0xB0u, compareLongTermPicNumAscending);
    v133 = *(a2 + 43);
    if (v133 + 1 < v120)
    {
      v134 = v133 + 1;
    }

    else
    {
      v134 = v120;
    }

    *(__dst + 3258) = v134;
    result = 1;
    if (*(a2 + 45) == 1)
    {
      return result;
    }

    if (v134 > *(a2 + 43))
    {
      return result;
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    *&buf[4] = "initRefPicList";
    v117 = MEMORY[0x277D86220];
    v118 = "AppleAVD: ERROR: %s: refList0 size <= num_ref_idx_l0_active_minus1!\n";
LABEL_133:
    _os_log_impl(&dword_277606000, v117, OS_LOG_TYPE_DEFAULT, v118, buf, 0xCu);
    return 0;
  }

  if (*(a2 + 4) != 1)
  {
    return 1;
  }

  v15 = *(a1 + 3004);
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = a1 + 20;
    do
    {
      if (*(v18 - 12) == 1 && (*(v18 - 11) & 1) == 0)
      {
        v19 = *v18 >= *(a4 + 12) || v17 > 0xF;
        if (!v19 && (!*(v18 + 16) || *(a1 + 3527)))
        {
          v20 = &v14[176 * v17++];
          v21 = *(v18 - 12);
          v22 = *(v18 + 20);
          *(v20 + 1) = *(v18 + 4);
          *(v20 + 2) = v22;
          *v20 = v21;
          v23 = *(v18 + 36);
          v24 = *(v18 + 52);
          v25 = *(v18 + 84);
          *(v20 + 5) = *(v18 + 68);
          *(v20 + 6) = v25;
          *(v20 + 3) = v23;
          *(v20 + 4) = v24;
          v26 = *(v18 + 100);
          v27 = *(v18 + 116);
          v28 = *(v18 + 148);
          *(v20 + 9) = *(v18 + 132);
          *(v20 + 10) = v28;
          *(v20 + 7) = v26;
          *(v20 + 8) = v27;
          v15 = *(a1 + 3004);
        }
      }

      ++v16;
      v18 += 176;
    }

    while (v16 < v15);
  }

  else
  {
    v17 = 0;
  }

  __dsta = __dst + 7224;
  qSort((__dst + 1416), v17, 0xB0u, comparePOCDescending);
  v42 = *(a1 + 3004);
  v43 = v17;
  if (v42)
  {
    v44 = 0;
    v45 = a1 + 20;
    v43 = v17;
    do
    {
      if (*(v45 - 12) == 1 && (*(v45 - 11) & 1) == 0)
      {
        v46 = *v45 <= *(a4 + 12) || v43 > 0xF;
        if (!v46 && (!*(v45 + 16) || *(a1 + 3527)))
        {
          v47 = &v14[176 * v43++];
          v48 = *(v45 - 12);
          v49 = *(v45 + 20);
          *(v47 + 1) = *(v45 + 4);
          *(v47 + 2) = v49;
          *v47 = v48;
          v50 = *(v45 + 36);
          v51 = *(v45 + 52);
          v52 = *(v45 + 84);
          *(v47 + 5) = *(v45 + 68);
          *(v47 + 6) = v52;
          *(v47 + 3) = v50;
          *(v47 + 4) = v51;
          v53 = *(v45 + 100);
          v54 = *(v45 + 116);
          v55 = *(v45 + 148);
          *(v47 + 9) = *(v45 + 132);
          *(v47 + 10) = v55;
          *(v47 + 7) = v53;
          *(v47 + 8) = v54;
          v42 = *(a1 + 3004);
        }
      }

      ++v44;
      v45 += 176;
    }

    while (v44 < v42);
  }

  v56 = v43 - v17;
  qSort(&v14[176 * v17], (v43 - v17), 0xB0u, comparePOCAscending);
  v57 = *(a1 + 3004);
  v58 = v43;
  if (v57)
  {
    v59 = 0;
    v60 = a1 + 9;
    v58 = v43;
    do
    {
      if (*(v60 - 1) == 1 && *v60 == 1 && v58 <= 0xF)
      {
        v62 = &v14[176 * v58++];
        v63 = *(v60 - 1);
        v64 = *(v60 + 31);
        *(v62 + 1) = *(v60 + 15);
        *(v62 + 2) = v64;
        *v62 = v63;
        v65 = *(v60 + 47);
        v66 = *(v60 + 63);
        v67 = *(v60 + 95);
        *(v62 + 5) = *(v60 + 79);
        *(v62 + 6) = v67;
        *(v62 + 3) = v65;
        *(v62 + 4) = v66;
        v68 = *(v60 + 111);
        v69 = *(v60 + 127);
        v70 = *(v60 + 159);
        *(v62 + 9) = *(v60 + 143);
        *(v62 + 10) = v70;
        *(v62 + 7) = v68;
        *(v62 + 8) = v69;
        v57 = *(a1 + 3004);
      }

      ++v59;
      v60 += 176;
    }

    while (v59 < v57);
  }

  qSort(&v14[176 * v43], (v58 - v43), 0xB0u, compareLongTermPicNumAscending);
  v71 = __dst + 7224;
  memcpy(__dsta, &v14[176 * v17], 176 * v56);
  memcpy(&__dsta[11 * v56], __dst + 1416, 176 * v17);
  memcpy(&__dsta[11 * v43], &v14[176 * v43], 176 * (v58 - v43));
  *(__dst + 3258) = v58;
  *(__dst + 3259) = v58;
  if (v58)
  {
    v72 = *(a2 + 12);
    v73 = v58;
    v74 = __dst + 1440;
    v75 = v58;
    do
    {
      if (*(v74 - 23))
      {
        v76 = *(v74 - 4);
      }

      else
      {
        v77 = -16 << *(a1 + 3526);
        v78 = *(v74 - 4);
        if (v78 <= v72)
        {
          v77 = 0;
        }

        v76 = v77 + v78;
      }

      if (*(v74 - 23))
      {
        v79 = *v74;
      }

      else
      {
        v79 = 0;
      }

      *(v74 - 2) = v76;
      *(v74 - 1) = v79;
      v74 += 44;
      --v75;
    }

    while (v75);
    v80 = *(a2 + 12);
    v81 = __dst + 7248;
    v82 = v58;
    do
    {
      if (*(v81 - 23))
      {
        v83 = *(v81 - 4);
      }

      else
      {
        v84 = -16 << *(a1 + 3526);
        v85 = *(v81 - 4);
        if (v85 <= v80)
        {
          v84 = 0;
        }

        v83 = v84 + v85;
      }

      if (*(v81 - 23))
      {
        v86 = *v81;
      }

      else
      {
        v86 = 0;
      }

      *(v81 - 2) = v83;
      *(v81 - 1) = v86;
      v81 += 44;
      --v82;
    }

    while (v82);
    if (v58 != 1)
    {
      while (!memcmp(v14, v71, 0xB0uLL))
      {
        v14 += 176;
        v71 += 176;
        if (!--v73)
        {
          v87 = *(__dst + 7544);
          v144 = *(__dst + 7528);
          v145 = v87;
          v146 = *(__dst + 7560);
          v88 = *(__dst + 7480);
          v140 = *(__dst + 7464);
          v141 = v88;
          v89 = *(__dst + 7512);
          v142 = *(__dst + 7496);
          v143 = v89;
          v90 = *(__dst + 7416);
          *buf = *(__dst + 7400);
          v137 = v90;
          v91 = *(__dst + 7448);
          v138 = *(__dst + 7432);
          v139 = v91;
          v92 = *(__dst + 7368);
          *(__dst + 7528) = *(__dst + 7352);
          *(__dst + 7544) = v92;
          *(__dst + 7560) = *(__dst + 7384);
          v93 = *(__dst + 7304);
          *(__dst + 7464) = *(__dst + 7288);
          *(__dst + 7480) = v93;
          v94 = *(__dst + 7336);
          *(__dst + 7496) = *(__dst + 7320);
          *(__dst + 7512) = v94;
          v95 = *(__dst + 7240);
          *(__dst + 7400) = *__dsta;
          *(__dst + 7416) = v95;
          v96 = *(__dst + 7272);
          *(__dst + 7432) = *(__dst + 7256);
          *(__dst + 7448) = v96;
          v97 = v145;
          *(__dst + 7352) = v144;
          *(__dst + 7368) = v97;
          *(__dst + 7384) = v146;
          v98 = v141;
          *(__dst + 7288) = v140;
          *(__dst + 7304) = v98;
          v99 = v143;
          *(__dst + 7320) = v142;
          *(__dst + 7336) = v99;
          v100 = v137;
          *__dsta = *buf;
          *(__dst + 7240) = v100;
          v101 = v139;
          *(__dst + 7256) = v138;
          *(__dst + 7272) = v101;
          break;
        }
      }
    }
  }

  v102 = *(a2 + 43);
  if (v102 + 1 < v58)
  {
    v103 = v102 + 1;
  }

  else
  {
    v103 = v58;
  }

  *(__dst + 3258) = v103;
  v104 = *(a2 + 44);
  if (v104 + 1 < v58)
  {
    v105 = v104 + 1;
  }

  else
  {
    v105 = v58;
  }

  *(__dst + 3259) = v105;
  if (v103 < 2)
  {
LABEL_94:
    if (v105 >= 2)
    {
      v110 = *(__dst + 1809);
      v111 = __dst + 7428;
      v112 = v105 - 1;
      while (1)
      {
        v113 = v110;
        v110 = *(v111 - 4);
        if (v113 == v110 && !*(v111 - 44) && !*v111 && !*(a1 + 3527))
        {
          break;
        }

        v111 += 44;
        if (!--v112)
        {
          goto LABEL_101;
        }
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 136315138;
        *&buf[4] = "initRefPicList";
        v117 = MEMORY[0x277D86220];
        v118 = "AppleAVD: ERROR: %s: B slice - reflist 1 has ref pics with non-unique POC\n";
        goto LABEL_133;
      }

      return result;
    }

LABEL_101:
    if (*(a2 + 45) != 1 && v103 <= v102)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136315138;
      *&buf[4] = "initRefPicList";
      v117 = MEMORY[0x277D86220];
      v118 = "AppleAVD: ERROR: %s: refList0 size <= num_ref_idx_l0_active_minus1!\n";
      goto LABEL_133;
    }

    if (*(a2 + 46) != 1 && v105 <= v104)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136315138;
      *&buf[4] = "initRefPicList";
      v117 = MEMORY[0x277D86220];
      v118 = "AppleAVD: ERROR: %s: refList1 size <= num_ref_idx_l1_active_minus1!\n";
      goto LABEL_133;
    }

    return 1;
  }

  v106 = *(__dst + 357);
  v107 = __dst + 1620;
  v108 = v103 - 1;
  while (1)
  {
    v109 = v106;
    v106 = *(v107 - 4);
    if (v109 == v106 && !*(v107 - 44) && !*v107 && !*(a1 + 3527))
    {
      break;
    }

    v107 += 44;
    if (!--v108)
    {
      goto LABEL_94;
    }
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 136315138;
    *&buf[4] = "initRefPicList";
    v117 = MEMORY[0x277D86220];
    v118 = "AppleAVD: ERROR: %s: B slice - reflist 0 has ref pics with non-unique POC\n";
    goto LABEL_133;
  }

  return result;
}

uint64_t comparePicNumDescending(_DWORD *a1, _DWORD *a2)
{
  v2 = a2[4];
  v3 = a1[4];
  v4 = v2 <= v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t compareLongTermPicNumAscending(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  v4 = v2 <= v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t comparePOCDescending(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  v4 = v3 <= v2;
  if (v3 >= v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t comparePOCAscending(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  v4 = v2 <= v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void AVC_RLM::reorderRefPicList(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v108 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 16 << *(a1 + 3526);
    v94 = a4;
    v9 = a2 + 5808 * a4 + 1416;
    v10 = a2 + 17 * a4 + 47;
    v11 = a2 + 68 * a4;
    v97 = v11 + 84;
    v96 = v11 + 220;
    v12 = 43;
    if (a4)
    {
      v12 = 44;
    }

    v93 = *(a2 + v12) + 1;
    v13 = *(a3 + 8);
    v14 = MEMORY[0x277D86220];
    while (1)
    {
      v15 = *(v10 + v6);
      if (v15 > 2)
      {
LABEL_61:
        *(a2 + 4 * v94 + 13032) = v93;
        return;
      }

      if (v15 == 2)
      {
        v17 = *(v96 + 4 * v6);
        v18 = (v7 + 16);
        if (v7 == -16)
        {
          goto LABEL_46;
        }

        v19 = 0;
        v20 = 0;
        v21 = v9;
        while (*v21 != 1 || *(v21 + 1) != 1 || *(v21 + 20) != v17)
        {
          ++v20;
          v21 += 176;
          ++v19;
          if (v18 == v20)
          {
            goto LABEL_46;
          }
        }

        if ((v20 & 0x80000000) != 0)
        {
LABEL_46:
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = "reorderRefPicList";
            *&buf[12] = 1024;
            *&buf[14] = v17;
            *&buf[18] = 1024;
            *&buf[20] = a4;
            *&buf[24] = 1024;
            *&buf[26] = v6;
            v48 = v14;
            v49 = "AppleAVD: %s() Cannot find LongTermPicNumLX %d in refList[%d][%d] and beyond";
            goto LABEL_48;
          }
        }

        else
        {
          v31 = v20 & 0x7FFFFFFF;
          if (v6 < v31)
          {
            v50 = (v9 + 176 * v31);
            v51 = v50[9];
            v105 = v50[8];
            v106 = v51;
            v107 = v50[10];
            v52 = v50[5];
            v101 = v50[4];
            v102 = v52;
            v53 = v50[7];
            v103 = v50[6];
            v104 = v53;
            v54 = v50[1];
            *buf = *v50;
            *&buf[16] = v54;
            v56 = v50[2];
            v55 = v50[3];
            v57 = v19;
            v58 = (v9 + 176 * v19);
            v59 = v57 - 1;
            v99 = v56;
            v100 = v55;
            do
            {
              v60 = *(v58 - 2);
              v58[8] = *(v58 - 3);
              v58[9] = v60;
              v58[10] = *(v58 - 1);
              v61 = *(v58 - 6);
              v58[4] = *(v58 - 7);
              v58[5] = v61;
              v62 = *(v58 - 4);
              v58[6] = *(v58 - 5);
              v58[7] = v62;
              v63 = *(v58 - 10);
              *v58 = *(v58 - 11);
              v58[1] = v63;
              v64 = *(v58 - 8);
              v58[2] = *(v58 - 9);
              v58[3] = v64;
              v58 -= 11;
              v47 = v6 >= v59--;
            }

            while (!v47);
            goto LABEL_45;
          }

          if (v6 > v31)
          {
            if (v6 < v18)
            {
              v77 = (v9 + 176 * v18);
              do
              {
                --v18;
                v78 = *(v77 - 2);
                v77[8] = *(v77 - 3);
                v77[9] = v78;
                v77[10] = *(v77 - 1);
                v79 = *(v77 - 6);
                v77[4] = *(v77 - 7);
                v77[5] = v79;
                v80 = *(v77 - 4);
                v77[6] = *(v77 - 5);
                v77[7] = v80;
                v81 = *(v77 - 10);
                *v77 = *(v77 - 11);
                v77[1] = v81;
                v82 = *(v77 - 8);
                v77[2] = *(v77 - 9);
                v77[3] = v82;
                v77 -= 11;
              }

              while (v18 > v6);
            }

            goto LABEL_60;
          }
        }
      }

      else
      {
        if (*(v10 + v6))
        {
          v23 = v13 + *(v97 + 4 * v6) + 1;
          if (v23 >= v8)
          {
            v24 = v8;
          }

          else
          {
            v24 = 0;
          }

          v13 = v23 - v24;
        }

        else
        {
          v16 = v13 + ~*(v97 + 4 * v6);
          v13 = (v8 & (v16 >> 31)) + v16;
        }

        if (v13 <= *(a3 + 8))
        {
          v25 = 0;
        }

        else
        {
          v25 = v8;
        }

        v26 = v13 - v25;
        v27 = (v7 + 16);
        if (v7 == -16)
        {
          goto LABEL_38;
        }

        v28 = 0;
        v29 = 0;
        v30 = v9;
        while (*v30 != 1 || (*(v30 + 1) & 1) != 0 || *(v30 + 16) != v26)
        {
          ++v29;
          v30 += 176;
          ++v28;
          if (v27 == v29)
          {
            goto LABEL_38;
          }
        }

        if ((v29 & 0x80000000) != 0)
        {
LABEL_38:
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = "reorderRefPicList";
            *&buf[12] = 1024;
            *&buf[14] = v26;
            *&buf[18] = 1024;
            *&buf[20] = a4;
            *&buf[24] = 1024;
            *&buf[26] = v6;
            v48 = v14;
            v49 = "AppleAVD: %s() Cannot find picNumLX %d for refList[%d][%d]";
LABEL_48:
            _os_log_impl(&dword_277606000, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 0x1Eu);
          }
        }

        else
        {
          v31 = v29 & 0x7FFFFFFF;
          if (v6 < v31)
          {
            v32 = (v9 + 176 * v31);
            v33 = v32[9];
            v105 = v32[8];
            v106 = v33;
            v107 = v32[10];
            v34 = v32[5];
            v101 = v32[4];
            v102 = v34;
            v35 = v32[7];
            v103 = v32[6];
            v104 = v35;
            v36 = v32[1];
            *buf = *v32;
            *&buf[16] = v36;
            v38 = v32[2];
            v37 = v32[3];
            v39 = v28;
            v40 = (v9 + 176 * v28);
            v41 = v39 - 1;
            v99 = v38;
            v100 = v37;
            do
            {
              v42 = *(v40 - 2);
              v40[8] = *(v40 - 3);
              v40[9] = v42;
              v40[10] = *(v40 - 1);
              v43 = *(v40 - 6);
              v40[4] = *(v40 - 7);
              v40[5] = v43;
              v44 = *(v40 - 4);
              v40[6] = *(v40 - 5);
              v40[7] = v44;
              v45 = *(v40 - 10);
              *v40 = *(v40 - 11);
              v40[1] = v45;
              v46 = *(v40 - 8);
              v40[2] = *(v40 - 9);
              v40[3] = v46;
              v40 -= 11;
              v47 = v6 >= v41--;
            }

            while (!v47);
LABEL_45:
            v65 = v106;
            v66 = (v9 + 176 * v6);
            v66[8] = v105;
            v66[9] = v65;
            v66[10] = v107;
            v67 = v102;
            v66[4] = v101;
            v66[5] = v67;
            v68 = v104;
            v66[6] = v103;
            v66[7] = v68;
            v69 = *&buf[16];
            *v66 = *buf;
            v66[1] = v69;
            v70 = v100;
            v66[2] = v99;
            v66[3] = v70;
            goto LABEL_49;
          }

          if (v6 > v31)
          {
            if (v6 < v27)
            {
              v71 = (v9 + 176 * v27);
              do
              {
                --v27;
                v72 = *(v71 - 2);
                v71[8] = *(v71 - 3);
                v71[9] = v72;
                v71[10] = *(v71 - 1);
                v73 = *(v71 - 6);
                v71[4] = *(v71 - 7);
                v71[5] = v73;
                v74 = *(v71 - 4);
                v71[6] = *(v71 - 5);
                v71[7] = v74;
                v75 = *(v71 - 10);
                *v71 = *(v71 - 11);
                v71[1] = v75;
                v76 = *(v71 - 8);
                v71[2] = *(v71 - 9);
                v71[3] = v76;
                v71 -= 11;
              }

              while (v27 > v6);
            }

LABEL_60:
            v83 = (v9 + 176 * v31);
            v84 = (v9 + 176 * v6);
            v85 = *v83;
            v86 = v83[2];
            v84[1] = v83[1];
            v84[2] = v86;
            *v84 = v85;
            v87 = v83[3];
            v88 = v83[4];
            v89 = v83[6];
            v84[5] = v83[5];
            v84[6] = v89;
            v84[3] = v87;
            v84[4] = v88;
            v90 = v83[7];
            v91 = v83[8];
            v92 = v83[10];
            v84[9] = v83[9];
            v84[10] = v92;
            v84[7] = v90;
            v84[8] = v91;
            ++v7;
          }
        }
      }

LABEL_49:
      if (++v6 == 17)
      {
        goto LABEL_61;
      }
    }
  }
}

void AVC_RLM::ref_pic_list_modification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 45))
  {
    AVC_RLM::reorderRefPicList(a1, a2, a3, 0);
  }

  if (*(a2 + 46))
  {

    AVC_RLM::reorderRefPicList(a1, a2, a3, 1u);
  }
}

BOOL AVC_RLM::slidingWindowProcess(AVC_RLM *this, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(this + 4568);
  v3 = *(this + 752);
  if (v3 < v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "slidingWindowProcess";
      v12 = 1024;
      v13 = v2;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s: max_num_ref_frames %d > dpbSize %d\n", &v10, 0x18u);
    }
  }

  else
  {
    if (v2 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(this + 4568);
    }

    v5 = v4 - a2;
    v6 = *(this + 750);
    if (v6 > v5)
    {
      v7 = *(this + 751);
      if (v7)
      {
        for (i = this + 8; *i != 1 || (i[1] & 1) != 0; i += 176)
        {
          if (!--v7)
          {
            return v3 >= v2;
          }
        }

        *i = 0;
        *(this + 750) = v6 - 1;
      }
    }
  }

  return v3 >= v2;
}

double AVC_RLM::truncateDpb(AVC_RLM *this, unsigned int a2)
{
  v3 = a2;
  if (*(*(this + 1366) + 10))
  {
    v4 = *(this + 751);
    if (v4 >= a2)
    {
      *&v5 = AVC_RLM::removeUnusedRefFrame(this);
      v4 = *(this + 751);
    }

    if (v4 >= v3)
    {
      while (v4)
      {
        v6 = 0;
        v7 = -1;
        v8 = 0x7FFFFFFF;
        v9 = (this + 20);
        do
        {
          if ((*(v9 - 2) & 1) == 0 && *v9 < v8)
          {
            v7 = v6;
            v8 = *v9;
          }

          ++v6;
          v9 += 44;
        }

        while (v4 != v6);
        if ((v7 & 0x80000000) != 0)
        {
          if (v3 > 1)
          {
            return *&v5;
          }

          do
          {
            AVC_RLM::removeReferenceFrame(this, v4 - 1);
            LODWORD(v4) = *(this + 751);
          }

          while (v4);
          goto LABEL_24;
        }

        v10 = this + 176 * v7 + 8;
        v11 = *v10;
        v5 = *(v10 + 1);
        v12 = (this + 176 * *(this + 2726) + 5264);
        v13 = *(v10 + 2);
        v14 = *(v10 + 3);
        v15 = *(v10 + 5);
        v12[4] = *(v10 + 4);
        v12[5] = v15;
        v12[2] = v13;
        v12[3] = v14;
        v16 = *(v10 + 6);
        v17 = *(v10 + 7);
        v18 = *(v10 + 8);
        v19 = *(v10 + 10);
        v12[9] = *(v10 + 9);
        v12[10] = v19;
        v12[7] = v17;
        v12[8] = v18;
        v12[6] = v16;
        *v12 = v11;
        v12[1] = v5;
        *(this + 2726) = (*(this + 2726) + 1) & 0x1F;
        ++*(this + 2724);
        v10[4] = 1;
        if ((*v10 & 1) == 0)
        {
          *&v5 = AVC_RLM::removeReferenceFrame(this, v7);
          v4 = *(this + 751);
        }

        if (v4 < v3)
        {
          return *&v5;
        }
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (a2 <= 1uLL)
    {
      while (1)
      {
        v20 = *(this + 751);
        if (!v20)
        {
          break;
        }

        AVC_RLM::removeReferenceFrame(this, v20 - 1);
      }

LABEL_24:
      *&v5 = 0;
      *(this + 375) = 0;
      return *&v5;
    }

    AVC_RLM::removeFramesUnusedAsReference(this);
  }

  return *&v5;
}

BOOL AVC_RLM::dec_ref_pic_marking(AVC_RLM *this, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a3;
  v4 = a2;
  v78 = *MEMORY[0x277D85DE8];
  if (a3[3] == 1)
  {
    v6 = *(this + 751);
    *(this + 1313) = *(a2 + 12);
    goto LABEL_92;
  }

  if (*(a2 + 808))
  {
    v7 = 0;
    v8 = 0;
    v9 = a2 + 809;
    v10 = a2 + 1124;
    v11 = a2 + 1264;
    v69 = a2 + 844;
    v12 = a2 + 984;
    v13 = this + 32;
    v14 = MEMORY[0x277D86220];
    v66 = this + 24;
    v64 = a2 + 809;
    v65 = a2 + 1124;
    do
    {
      v15 = *(v9 + v7);
      if (v15 > 3)
      {
        switch(v15)
        {
          case 6u:
            v3[1] = 1;
            v37 = *(v10 + 4 * v7);
            *(v3 + 5) = v37;
            *(v3 + 6) = v37;
            v38 = *(this + 751);
            if (v38)
            {
              v39 = v13;
              do
              {
                if (*(v39 - 24) == 1 && *(v39 - 23) == 1 && *v39 == *(v10 + 4 * v7))
                {
                  *(v39 - 12) = 0;
                  *v39 = 0;
                  --*(this + 750);
                }

                v39 += 44;
                --v38;
              }

              while (v38);
            }

            break;
          case 5u:
            *(this + 750) = 0;
            v40 = *(this + 751);
            if (v40)
            {
              v41 = v13;
              do
              {
                *(v41 - 12) = 0;
                *v41 = 0;
                v41 += 44;
                --v40;
              }

              while (v40);
            }

            *(this + 1311) = 5;
            break;
          case 4u:
            v22 = *(this + 751);
            v23 = v13;
            if (v22)
            {
              do
              {
                if (*(v23 - 24) == 1 && *(v23 - 23) == 1 && *v23 >= *(v11 + 4 * v7))
                {
                  *(v23 - 12) = 0;
                  *v23 = 0;
                  --*(this + 750);
                }

                v23 += 44;
                --v22;
              }

              while (v22);
            }

            break;
        }
      }

      else if (*(v9 + v7) <= 1u)
      {
        if (v15 != 1)
        {
          break;
        }

        v24 = v11;
        v25 = v12;
        v26 = v8;
        v27 = *(v3 + 4);
        v28 = *(v69 + 4 * v7);
        v29 = *(this + 751);
        if (v29)
        {
          v30 = *(this + 751);
          v31 = v66;
          while (*(v31 - 16) != 1 || (*(v31 - 15) & 1) != 0 || *v31 != v27 + ~v28)
          {
            v31 += 44;
            if (!--v30)
            {
              goto LABEL_36;
            }
          }

          *(v31 - 16) = 0;
          --*(this + 750);
          v8 = v26;
          v12 = v25;
          v11 = v24;
          v3 = a3;
          v9 = v64;
          v10 = v65;
          v14 = MEMORY[0x277D86220];
        }

        else
        {
LABEL_36:
          v32 = (v29 >= *(this + 752) + 2) | v26;
          v14 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v71 = "dec_ref_pic_marking";
            v72 = 1024;
            v73 = v27 + ~v28;
            v74 = 1024;
            v75 = v27;
            v76 = 1024;
            v77 = v28;
            _os_log_impl(&dword_277606000, v14, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s MMC 1: Cannot find picNumX %d CurrPicNum %d difference_of_pic_nums_minus1 %d", buf, 0x1Eu);
          }

          v8 = v32;
          v12 = v25;
          v11 = v24;
          v3 = a3;
          v9 = v64;
          v10 = v65;
        }
      }

      else if (v15 == 2)
      {
        v33 = *(this + 751);
        v34 = v33;
        v35 = v13;
        if (v33)
        {
          while (*(v35 - 24) != 1 || *(v35 - 23) != 1 || *(v35 - 1) != *(v12 + 4 * v7))
          {
            v35 += 44;
            if (!--v34)
            {
              goto LABEL_44;
            }
          }

          *(v35 - 12) = 0;
          *v35 = 0;
          --*(this + 750);
        }

        else
        {
LABEL_44:
          v8 = (v33 >= *(this + 752) + 2) | v8;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v36 = *(v12 + 4 * v7);
            *buf = 136315394;
            v71 = "dec_ref_pic_marking";
            v72 = 1024;
            v73 = v36;
            _os_log_impl(&dword_277606000, v14, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s MMC 2: Cannot find LongTermPicNum %d", buf, 0x12u);
          }
        }
      }

      else if (v15 == 3)
      {
        v67 = v8;
        v16 = *(v3 + 4);
        v17 = v16 + ~*(v69 + 4 * v7);
        v18 = *(this + 751);
        if (!v18)
        {
          goto LABEL_15;
        }

        v19 = 0;
        v20 = v66;
        while (*(v20 - 16) != 1 || (*(v20 - 15) & 1) != 0 || *v20 != v17)
        {
          ++v19;
          v20 += 44;
          if (v18 == v19)
          {
            goto LABEL_15;
          }
        }

        v42 = v13;
        do
        {
          if (*(v42 - 24) == 1 && *(v42 - 23) == 1 && *v42 == *(v10 + 4 * v7))
          {
            *(v42 - 12) = 0;
            *v42 = 0;
            --*(this + 750);
          }

          v42 += 44;
          --v18;
        }

        while (v18);
        *(v20 - 15) = 1;
        v43 = *(v10 + 4 * v7);
        v20[1] = v43;
        v20[2] = v43;
        if ((v19 & 0x80000000) != 0)
        {
LABEL_15:
          v14 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(v69 + 4 * v7);
            *buf = 136315906;
            v71 = "dec_ref_pic_marking";
            v72 = 1024;
            v73 = v17;
            v74 = 1024;
            v75 = v16;
            v76 = 1024;
            v77 = v21;
            _os_log_impl(&dword_277606000, v14, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s MMC 3: Cannot find picNumX %d CurrPicNum %d difference_of_pic_nums_minus1 %d", buf, 0x1Eu);
          }

          v3 = a3;
        }

        else
        {
          v3 = a3;
          v14 = MEMORY[0x277D86220];
        }

        v8 = v67;
      }

      ++v7;
    }

    while (v7 != 35);
    v44 = *(v9 + v7);
    if (*(v9 + v7) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v71 = "dec_ref_pic_marking";
      v72 = 1024;
      v73 = v7;
      v74 = 1024;
      v75 = v44;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s Error: 0 is not the last operation. memory_management_control_operation[%d] = %d", buf, 0x18u);
    }

    v4 = a2;
    if (v8)
    {
      goto LABEL_78;
    }
  }

  else if (!AVC_RLM::slidingWindowProcess(this, *a3))
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    v71 = "dec_ref_pic_marking";
    v62 = MEMORY[0x277D86220];
LABEL_101:
    _os_log_impl(&dword_277606000, v62, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s: sliding window process failed!\n", buf, 0xCu);
    return 0;
  }

  if (*(this + 750) < 0x10u)
  {
    goto LABEL_88;
  }

LABEL_78:
  v45 = *(this + 751);
  if (v45)
  {
    v46 = 0;
    v47 = (this + 24);
    v48 = 0xFFFFFFFFLL;
    while (*(v47 - 16) != 1 || (*(v47 - 15) & 1) != 0 || *v47 != *(v3 + 4))
    {
      v46 += 0x100000000;
      --v48;
      v47 += 44;
      if (!--v45)
      {
        goto LABEL_84;
      }
    }

    if (v48)
    {
      *(this + 176 * SHIDWORD(v46) + 8) = 0;
      --*(this + 750);
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v51 = MEMORY[0x277D86220];
      v52 = "AppleAVD: RefPicture pool full, found duplicate ref picture slot, mark duplicate ref as unused \n";
      goto LABEL_87;
    }
  }

LABEL_84:
  v49 = AVC_RLM::slidingWindowProcess(this, *v3);
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v49)
  {
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    v71 = "dec_ref_pic_marking";
    v62 = MEMORY[0x277D86220];
    goto LABEL_101;
  }

  if (result)
  {
    *buf = 0;
    v51 = MEMORY[0x277D86220];
    v52 = "AppleAVD: RefPicture pool full, mark oldest ref picture as unused \n";
LABEL_87:
    _os_log_impl(&dword_277606000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 2u);
  }

LABEL_88:
  if (*(this + 1311) == 5)
  {
    *(this + 1309) = 0;
    *(this + 1310) = *(v3 + 3);
    *(v3 + 1) = 0;
    *(this + 1313) = 0;
    AVC_RLM::truncateDpb(this, 1u);
  }

  else
  {
    AVC_RLM::truncateDpb(this, *(this + 752));
    *(this + 1313) = *(v4 + 12);
  }

  v6 = *(this + 751);
LABEL_92:
  if (v6 <= 0x10)
  {
    v53 = this + 176 * v6;
    v54 = *v3;
    v55 = *(v3 + 1);
    *(v53 + 40) = *(v3 + 2);
    *(v53 + 24) = v55;
    *(v53 + 8) = v54;
    v56 = *(v3 + 3);
    v57 = *(v3 + 4);
    v58 = *(v3 + 5);
    *(v53 + 104) = *(v3 + 6);
    *(v53 + 88) = v58;
    *(v53 + 72) = v57;
    *(v53 + 56) = v56;
    v59 = *(v3 + 7);
    v60 = *(v3 + 8);
    v61 = *(v3 + 9);
    *(v53 + 168) = *(v3 + 10);
    *(v53 + 152) = v61;
    *(v53 + 136) = v60;
    *(v53 + 120) = v59;
    ++*(this + 751);
    if (*v3 == 1)
    {
      ++*(this + 750);
    }
  }

  return 1;
}

_DWORD *AVC_RLM::invalidateDpb(_DWORD *this)
{
  this[750] = 0;
  v1 = this[751];
  if (v1)
  {
    v2 = this + 8;
    do
    {
      *(v2 - 12) = 0;
      *v2 = 0;
      v2 += 44;
      --v1;
    }

    while (v1);
  }

  return this;
}

uint64_t AVC_RLM::getOutputFrame(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 10896))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = (a1 + 176 * (*(a1 + 10900) & 0x1F));
  v4 = v3[329];
  v5 = v3[331];
  *(a2 + 16) = v3[330];
  *(a2 + 32) = v5;
  *a2 = v4;
  v6 = v3[332];
  v7 = v3[333];
  v8 = v3[335];
  *(a2 + 80) = v3[334];
  *(a2 + 96) = v8;
  *(a2 + 48) = v6;
  *(a2 + 64) = v7;
  v9 = v3[336];
  v10 = v3[337];
  v11 = v3[339];
  *(a2 + 144) = v3[338];
  *(a2 + 160) = v11;
  *(a2 + 112) = v9;
  *(a2 + 128) = v10;
  if (*(a2 + 48))
  {
    v12 = *(a1 + 10928);
    if (v12)
    {
      (*(*v12 + 48))(v12, *(a2 + 60), 1);
    }
  }

  result = 0;
  *(a1 + 10900) = (*(a1 + 10900) + 1) & 0x1F;
  --*(a1 + 10896);
  return result;
}

double AVC_RLM::removeReferenceFrame(AVC_RLM *this, unsigned int a2)
{
  v4 = this + 8;
  v5 = this + 176 * a2 + 8;
  if (*v5 == 1)
  {
    --*(this + 750);
  }

  if (!*(v5 + 7))
  {
    v6 = *(this + 1366);
    if (v6)
    {
      (*(*v6 + 48))(v6, *(v5 + 14), 0);
    }
  }

  LODWORD(v7) = *(this + 751) - 1;
  if (v7 > a2)
  {
    v8 = a2;
    v9 = (this + 176 * a2 + 184);
    do
    {
      ++v8;
      v10 = v9[5];
      *(v9 - 7) = v9[4];
      *(v9 - 6) = v10;
      v11 = v9[10];
      *(v9 - 2) = v9[9];
      *(v9 - 1) = v11;
      v12 = v9[8];
      *(v9 - 4) = v9[7];
      *(v9 - 3) = v12;
      *(v9 - 5) = v9[6];
      v13 = v9[1];
      *(v9 - 11) = *v9;
      *(v9 - 10) = v13;
      v14 = v9[3];
      *(v9 - 9) = v9[2];
      *(v9 - 8) = v14;
      v7 = (*(this + 751) - 1);
      v9 += 11;
    }

    while (v8 < v7);
  }

  v15 = &v4[176 * v7];
  result = 0.0;
  *(v15 + 9) = 0u;
  *(v15 + 10) = 0u;
  *(v15 + 7) = 0u;
  *(v15 + 8) = 0u;
  *(v15 + 5) = 0u;
  *(v15 + 6) = 0u;
  *(v15 + 3) = 0u;
  *(v15 + 4) = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  --*(this + 751);
  return result;
}

void AVC_RLM::removeFramesUnusedAsReference(AVC_RLM *this)
{
  v1 = *(this + 751);
  if (v1)
  {
    v3 = 0;
    v4 = 36;
    v5 = *(this + 751);
    do
    {
      if (!*(this + v4))
      {
        ++v3;
      }

      v4 += 176;
      --v5;
    }

    while (v5);
    v6 = 0;
    v7 = (this + 36);
    do
    {
      if ((*(v7 - 7) & 1) == 0)
      {
        v8 = *v7;
        if (v3 >= 2)
        {
          if (v8)
          {
            v9 = 0;
          }

          else
          {
            v9 = -1;
          }

          goto LABEL_14;
        }

        if (v8)
        {
          v9 = 0;
LABEL_14:
          AVC_RLM::removeReferenceFrame(this, v6);
          v3 += v9;
          v1 = *(this + 751);
        }
      }

      ++v6;
      v7 += 44;
    }

    while (v6 < v1);
  }
}

double AVC_RLM::removeUnusedRefFrame(AVC_RLM *this)
{
  v1 = *(this + 751);
  if (v1)
  {
    v2 = 0;
    for (i = this + 12; (*(i - 4) & 1) != 0 || *i != 1; i += 176)
    {
      if (v1 == ++v2)
      {
        return result;
      }
    }

    return AVC_RLM::removeReferenceFrame(this, v2);
  }

  return result;
}

double AVC_RLM::removeCurrentFrameFromDPB(AVC_RLM *this)
{
  v1 = *(this + 751);
  if (v1 <= 0x10)
  {
    v2 = this + 176 * v1 - 176;
    v4 = v2[8];
    v3 = v2 + 8;
    if (v4 == 1)
    {
      --*(this + 750);
    }

    result = 0.0;
    v3[9] = 0u;
    v3[10] = 0u;
    v3[7] = 0u;
    v3[8] = 0u;
    v3[5] = 0u;
    v3[6] = 0u;
    v3[3] = 0u;
    v3[4] = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    *v3 = 0u;
    --*(this + 751);
  }

  return result;
}

uint64_t AVC_RLM::getDPB(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 3004);
  if (result)
  {
    v4 = (result + 1) & 0x1FFFFFFFELL;
    v5 = vdupq_n_s64(result - 1);
    v6 = (a2 + 8);
    v7 = xmmword_27775BCD0;
    v8 = a1 + 184;
    v9 = vdupq_n_s64(2uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (v10.i8[0])
      {
        *(v6 - 1) = v8 - 176;
      }

      if (v10.i8[4])
      {
        *v6 = v8;
      }

      v7 = vaddq_s64(v7, v9);
      v6 += 2;
      v8 += 352;
      v4 -= 2;
    }

    while (v4);
  }

  return result;
}

uint64_t AVC_RLM::getDPBRef(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 3004);
  if (v2)
  {
    v3 = 0;
    v4 = (a1 + 8);
    do
    {
      if (*v4 == 1)
      {
        *(a2 + 8 * v3++) = v4;
      }

      v4 += 176;
      --v2;
    }

    while (v2);
  }

  return *(a1 + 3000);
}

uint64_t AVC_RLM::createDPBIndex(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v10[3] = *MEMORY[0x277D85DE8];
  memset(v10, 0, 24);
  v3 = *(a1 + 3004);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v4 += 44;
      *(v10 + v5) = 1;
      --v3;
    }

    while (v3);
  }

  v6 = *a3;
  v7 = 24;
  while (1)
  {
    v8 = v6 % 0x18;
    v6 = v6 % 0x18 + 1;
    if ((*(v10 + v8) & 1) == 0)
    {
      break;
    }

    if (!--v7)
    {
      *a3 = v6;
      return 0xFFFFFFFFLL;
    }
  }

  *a3 = v6;
  if (a2)
  {
    result = 0;
    *(a2 + 32) = v8;
    return result;
  }

  return 0xFFFFFFFFLL;
}

void AppleAVDCommandBuilder::~AppleAVDCommandBuilder(AppleAVDCommandBuilder *this)
{
  if (*(this + 5893) == 1)
  {
    AppleAVDCommandBuilder::freeRVRAMemory(this);
  }

  *(this + 5893) = 0;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

void AppleAVDCommandBuilder::freeRVRAMemory(AppleAVDCommandBuilder *this)
{
  v2 = *(this + 738);
  if (v2)
  {
    free(v2);
    *(this + 738) = 0;
  }

  v3 = *(this + 749);
  if (v3)
  {
    free(v3);
    *(this + 749) = 0;
    *(this + 750) = 0;
  }

  v4 = this + 5920;
  v5 = *(this + 746);
  if (v5)
  {
    free(v5);
    *(this + 746) = 0;
    *(this + 747) = 0;
  }

  v6 = *(this + 743);
  if (v6)
  {
    v7 = (this + 5944);
    free(v6);
    *v7 = 0;
    v7[1] = 0;
  }

  if (*v4)
  {
    free(*v4);
    *v4 = 0;
    *(v4 + 1) = 0;
  }
}

uint64_t AppleAVDCommandBuilder::updateDecryptionState(uint64_t a1, int a2, int a3)
{
  *(a1 + 6240) = a2;
  *(a1 + 5880) = a3;
  return (*(**(a1 + 8) + 104))(*(a1 + 8), 33, a1 + 6240);
}

uint64_t AppleAVDCommandBuilder::updateDecryptionParams(AppleAVDCommandBuilder *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  result = *(this + 1);
  if (result)
  {
    (*(*result + 104))(result, 34, *(this + 779));
    (*(**(this + 1) + 104))(*(this + 1), 36, *(this + 779) + 216);
    (*(**(this + 1) + 104))(*(this + 1), 38, *(this + 779) + 244);
    (*(**(this + 1) + 104))(*(this + 1), 42, *(this + 779) + 248);
    if (a2 < 0 && *(this + 5412) == 1)
    {
      *(this + 6244) = 1;
    }

    if (*(this + 1402) < 0x1A8u)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "updateDecryptionParams";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): set KEY(H13)\n", &v9, 0xCu);
      }

      v8 = *(**(this + 1) + 104);
      return v8();
    }

    if (a2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "updateDecryptionParams";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): set LK/KEYB\n", &v9, 0xCu);
      }

      (*(**(this + 1) + 104))(*(this + 1), 43, *(this + 779) + 112);
      goto LABEL_17;
    }

    v5 = *(this + 779);
    v6 = *(v5 + 60);
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v6 == 9)
    {
      if (v7)
      {
        v9 = 136315138;
        v10 = "updateDecryptionParams";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): key_func=9, set LK/KEYB\n", &v9, 0xCu);
        v5 = *(this + 779);
      }

      (*(**(this + 1) + 104))(*(this + 1), 43, v5 + 112);
LABEL_17:
      v8 = *(**(this + 1) + 104);
      return v8();
    }

    if (v7)
    {
      v9 = 136315138;
      v10 = "updateDecryptionParams";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): set KEY(H13)\n", &v9, 0xCu);
      v5 = *(this + 779);
    }

    return (*(**(this + 1) + 104))(*(this + 1), 35, v5 + 56);
  }

  return result;
}

void AppleAVDCommandBuilder::destroyDecoder(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315138;
    v29 = "destroyDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Error: NULL decoder", &v28, 0xCu);
  }

  v6 = 0;
  v7 = a1 + 16;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = *(v7 + 4 * v6);
    if (v10 >= 1)
    {
      v11 = (a1 + 24 + (v6 << 7));
      v12 = *(v7 + 4 * v6);
      v13 = &a3[32 * v6 + 3];
      do
      {
        v14 = *v11++;
        *v13++ = v14;
        --v12;
      }

      while (v12);
    }

    v8 = 0;
    a3[v6 + 1] = v10;
    v6 = 1;
  }

  while ((v9 & 1) != 0);
  LODWORD(v15) = *(a1 + 280);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = a3 + 100;
    do
    {
      v18 = *(a1 + 284 + 4 * v16);
      a3[v16 + 67] = v18;
      v19 = a1 + 416 + 104 * v18;
      v20 = *(v19 + 48);
      v21 = *(v19 + 64);
      v22 = *(v19 + 80);
      *(v17 + 12) = *(v19 + 96);
      *(v17 + 4) = v21;
      *(v17 + 5) = v22;
      *(v17 + 3) = v20;
      v23 = *v19;
      v24 = *(v19 + 32);
      *(v17 + 1) = *(v19 + 16);
      *(v17 + 2) = v24;
      *v17 = v23;
      v17 += 52;
      ++v16;
      v15 = *(a1 + 280);
    }

    while (v16 < v15);
  }

  *a3 = v15;
  *(a1 + 16) = 0;
  *(a1 + 280) = 0;
  v25 = *(a1 + 5608);
  if ((v25 == 28 || v25 > 0x12E) && (*(a1 + 6040) & 8) != 0)
  {
    v26 = CAVDDecoder::deallocAVDMem(*(a1 + 8), (a1 + 6048));
    if (v26)
    {
      v27 = v26;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v28 = 136315394;
        v29 = "destroyDecoder";
        v30 = 1024;
        v31 = v27;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Failed to destroy histogram stat buffer! status: 0x%x", &v28, 0x12u);
      }
    }
  }
}

uint64_t AppleAVDCommandBuilder::allocRVRAMemory(AppleAVDCommandBuilder *this, unsigned int a2, unsigned int a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v34 = 136315138;
    v35 = "allocRVRAMemory";
    v24 = MEMORY[0x277D86220];
    v25 = "AppleAVD: Invalid resolution in %s";
    v26 = 12;
LABEL_29:
    _os_log_impl(&dword_277606000, v24, OS_LOG_TYPE_DEFAULT, v25, &v34, v26);
    goto LABEL_30;
  }

  v3 = (((a3 >> 1) + 7) & 0xFFFFFFF8) + 8;
  if (v3 < 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v34 = 136315394;
    v35 = "allocRVRAMemory";
    v36 = 1024;
    v37 = 1615;
    v24 = MEMORY[0x277D86220];
    v25 = "AppleAVD: rvrascalerbuffsize alloc overflow in %s %d";
    goto LABEL_28;
  }

  if (((a3 + 7) & 0xFFFFFFF8) + 8 <= 2 * v3)
  {
    v5 = 2 * v3;
  }

  else
  {
    v5 = ((a3 + 7) & 0xFFFFFFF8) + 8;
  }

  v6 = ((((a2 + 15) & 0xFFFFFFF0) + 79) & 0xFFFFFFC0) * v5;
  if ((v6 & 0xFFFFFFFF00000000) != 0 || (v6 & 0x80000000) != 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v34 = 136315394;
    v35 = "allocRVRAMemory";
    v36 = 1024;
    v37 = 1625;
    v24 = MEMORY[0x277D86220];
    v25 = "AppleAVD: rvrascalerbuffsize alloc overflow in %s %d";
LABEL_28:
    v26 = 18;
    goto LABEL_29;
  }

  v8 = (2 * v6);
  *(this + 1474) = v8;
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  *(this + 738) = v9;
  if (v9)
  {
    v10 = (this + 5944);
    v11 = a2 + 16;
    *(this + 370) = 0u;
    v12 = 2 * v11;
    *(this + 5944) = 0u;
    *(this + 373) = 0u;
    *(this + 5992) = 0u;
    *(this + 1484) = 2 * v11;
    if (v11 != v11 << 31 >> 31 || (v11 & 0x80000000) != 0 || ((v13 = __CFADD__(v12, 16), v14 = (v12 + 16), !v13) ? (v15 = 0) : (v15 = 1), (v16 = v14 + 48, *(this + 1484) = v16, (v15 & 1) != 0) || v16 != v16 << 31 >> 31))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v34 = 136315394;
        v35 = "allocRVRAMemory";
        v36 = 1024;
        v37 = 1655;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: rvrascalerbuffsize alloc overflow in %s %d", &v34, 0x12u);
      }
    }

    else
    {
      v17 = (this + 5920);
      v18 = malloc_type_malloc(v16 & 0xFFFFFFFE, 0x1000040BDFB0063uLL);
      *(this + 740) = v18;
      if (v18)
      {
        *(this + 741) = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
        v19 = a2 + 32;
        *(this + 1490) = v19;
        v20 = malloc_type_malloc(v19, 0x100004077774924uLL);
        *(this + 743) = v20;
        if (v20)
        {
          v21 = a2 + 16;
          *(this + 744) = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
          v22 = (a2 + 16) & 0xFFFFFFFC;
          v23 = v22 + 16;
          *(this + 1496) = v23;
          if (v22 < 0xFFFFFFF0)
          {
            v28 = (this + 5968);
            v29 = malloc_type_malloc(v23, 0x100004052888210uLL);
            *(this + 746) = v29;
            if (v29)
            {
              *(this + 747) = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
              v30 = 4 * v21;
              *(this + 1502) = 4 * v21;
              if (v21 >> 30 || (v31 = v30 + 16, *(this + 1502) = v31, v30 >= 0xFFFFFFF0))
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v34 = 136315394;
                  v35 = "allocRVRAMemory";
                  v36 = 1024;
                  v37 = 1712;
                  _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: rvrascalerbuffsize alloc overflow in %s %d", &v34, 0x12u);
                }
              }

              else
              {
                v32 = malloc_type_malloc(v31, 0x100004052888210uLL);
                *(this + 749) = v32;
                if (v32)
                {
                  v33 = v32;
                  result = 0;
                  *(this + 750) = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
                  return result;
                }
              }

              free(*v28);
              *v28 = 0;
              *(this + 747) = 0;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v34 = 136315394;
            v35 = "allocRVRAMemory";
            v36 = 1024;
            v37 = 1693;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: rvrascalerbuffsize alloc overflow in %s %d", &v34, 0x12u);
          }

          free(*v10);
          *v10 = 0;
          *(this + 744) = 0;
        }

        free(*v17);
        *v17 = 0;
        *(this + 741) = 0;
      }
    }

    free(*(this + 738));
    *(this + 738) = 0;
  }

LABEL_30:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v34 = 136315138;
    v35 = "allocRVRAMemory";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed \n", &v34, 0xCu);
  }

  return 304;
}

uint64_t AppleAVDCommandBuilder::retrieveSampleBufferForSIODecrypt(void **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*this + 184);
  if (!v2)
  {
    v6 = 3758097084;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v6;
    }

    v11 = 136315138;
    v12 = "retrieveSampleBufferForSIODecrypt";
    v7 = MEMORY[0x277D86220];
    v8 = "AppleAVD: ERROR: %s(): NULL sampleBuffer from the context!\n";
LABEL_10:
    v9 = 12;
    goto LABEL_11;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(v2);
  if (!DataBuffer)
  {
    v6 = 3758097084;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v6;
    }

    v11 = 136315138;
    v12 = "retrieveSampleBufferForSIODecrypt";
    v7 = MEMORY[0x277D86220];
    v8 = "AppleAVD: ERROR: %s(): Failed to retrieve data buffer from sampleBuffer\n";
    goto LABEL_10;
  }

  v4 = DataBuffer;
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  v6 = CMBlockBufferCopyDataBytes(v4, 0, DataLength, this[706]);
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "retrieveSampleBufferForSIODecrypt";
    v13 = 1024;
    v14 = v6;
    v7 = MEMORY[0x277D86220];
    v8 = "AppleAVD: ERROR: %s(): FigBlockBufferCopyDataBytes failed with %d\n";
    v9 = 18;
LABEL_11:
    _os_log_impl(&dword_277606000, v7, OS_LOG_TYPE_DEFAULT, v8, &v11, v9);
  }

  return v6;
}

void AppleAVDCommandBuilder::setReleaseCurrentBuffersToResponseBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 3440);
  if (v3 != -1)
  {
    AppleAVDCommandBuilder::setReleaseBufferIndexToResponseBuffer(a1, a2, v3, 1u);
  }

  v4 = *(a2 + 3444);
  if (v4 != -1)
  {

    AppleAVDCommandBuilder::setReleaseBufferIndexToResponseBuffer(a1, a2, v4, 0);
  }
}

uint64_t AppleAVDCommandBuilder::populateOnDemandDVAInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = (*(**(a1 + 8) + 168))(*(a1 + 8), a3);
  *(a2 + 384) = v6;
  if (v6)
  {
    v7 = 0;
    v8 = v6;
    v9 = (a2 + 8);
    v10 = MEMORY[0x277D86220];
    do
    {
      v11 = (*(**(a1 + 8) + 160))(*(a1 + 8), v7, a3);
      if (v11 == -1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v23 = "populateOnDemandDVAInfo";
          v24 = 1024;
          v25 = v7;
          _os_log_impl(&dword_277606000, v10, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Invalid refBufIndex! index: %d", buf, 0x12u);
        }
      }

      else
      {
        v12 = v11;
        v13 = (*(**(a1 + 8) + 136))(*(a1 + 8), v11);
        if (!v13)
        {
          v17 = 3758097084;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v23 = "populateOnDemandDVAInfo";
            v24 = 1024;
            v25 = v12;
            v26 = 1024;
            v27 = v7;
            v18 = MEMORY[0x277D86220];
            v19 = "AppleAVD: %s(): ERROR! Couldn't get memInfo (NULL)! refBufIndex: %d - i: %d";
            v20 = 24;
            goto LABEL_18;
          }

          return v17;
        }

        *(v9 - 2) = *(v13 + 152);
        *v9 = *v13;
      }

      ++v7;
      v9 += 2;
    }

    while (v8 != v7);
  }

  DecFrameRefBufIdx = CAVDDecoder::getDecFrameRefBufIdx(*(a1 + 8));
  if (DecFrameRefBufIdx == -1)
  {
    v17 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "populateOnDemandDVAInfo";
      v18 = MEMORY[0x277D86220];
      v19 = "AppleAVD: %s(): Invalid currBufIndex!";
      v20 = 12;
      goto LABEL_18;
    }
  }

  else
  {
    v15 = DecFrameRefBufIdx;
    v16 = (*(**(a1 + 8) + 136))(*(a1 + 8), DecFrameRefBufIdx);
    if (v16)
    {
      v17 = 0;
      *(a2 + 392) = *(v16 + 152);
      *(a2 + 400) = *v16;
    }

    else
    {
      v17 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "populateOnDemandDVAInfo";
        v24 = 1024;
        v25 = v15;
        v18 = MEMORY[0x277D86220];
        v19 = "AppleAVD: %s(): ERROR! Couldn't get memInfo (NULL)! currBufIndex: %d";
        v20 = 18;
LABEL_18:
        _os_log_impl(&dword_277606000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
      }
    }
  }

  return v17;
}

void AppleAVDCommandBuilder::setReleaseBufferIndexToResponseBuffer(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 2 + a4);
  if (v4 > 0x1F)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "setReleaseBufferIndexToResponseBuffer";
      v7 = 1024;
      v8 = v4;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR! Exceeded buffers to release (%d)", &v5, 0x12u);
    }
  }

  else
  {
    *(a2 + 32 * a4 + v4 + 4) = a3;
    *(a2 + 2 + a4) = v4 + 1;
  }
}

uint64_t AppleAVDCommandBuilder::getWidthAndHeight(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  *a2 = *(this + 5616);
  *a3 = *(this + 5620);
  return this;
}

uint64_t AppleAVDCommandBuilder::checkRVRAScalingRatio(AppleAVDCommandBuilder *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2 <= a4)
  {
    v9 = a4 / a2;
  }

  else
  {
    v9 = a2 / a4;
  }

  if (a3 <= a5)
  {
    v10 = a5 / a3;
  }

  else
  {
    v10 = a3 / a5;
  }

  if (v9 <= 0x10 && v10 < 0x11)
  {
    return 0;
  }

  v11 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109888;
    v13[1] = a2;
    v14 = 1024;
    v15 = a3;
    v16 = 1024;
    v17 = a4;
    v18 = 1024;
    v19 = a5;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: Rejecting RVRA scaling ratios beyond 16x! inWidth:%d inHeight:%d outWidth:%d outHeight:%d", v13, 0x1Au);
  }

  return v11;
}

uint64_t AppleAVDCommandBuilder::scaleOutputFrame(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, uint64_t a9, unsigned int a10, int a11, int a12, uint64_t a13, _OWORD *a14, uint64_t a15, uint64_t a16)
{
  v93 = *MEMORY[0x277D85DE8];
  v22 = *(a2 + 152);
  v23 = IOSurfaceLookup(*(a3 + 152));
  if (!v23)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: pIOSurfaceDst lookup failed!\n", buf, 2u);
    }

    goto LABEL_20;
  }

  v24 = v23;
  if (*(a1 + 5608) >= 0x14u)
  {
    WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
    if (IOSurfaceGetCompressedTileWidthOfPlane() * WidthInCompressedTilesOfPlane >= a6)
    {
      HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
      CompressedTileHeightOfPlane = IOSurfaceGetCompressedTileHeightOfPlane();
      if (a5 >= 0x40 && a4 >= 0x40 && a7 >= 0x40 && a6 >= 0x40 && CompressedTileHeightOfPlane * HeightInCompressedTilesOfPlane >= a7)
      {
        v77 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        goto LABEL_38;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110912;
      *&buf[4] = a4;
      *&buf[8] = 1024;
      *&buf[10] = a5;
      *&buf[14] = 1024;
      *&buf[16] = a6;
      *&buf[20] = 1024;
      *&buf[22] = a7;
      *&buf[26] = 2048;
      *&buf[28] = IOSurfaceGetWidthInCompressedTilesOfPlane();
      *&buf[36] = 2048;
      *&buf[38] = IOSurfaceGetCompressedTileWidthOfPlane();
      *&buf[46] = 2048;
      *v81 = IOSurfaceGetHeightInCompressedTilesOfPlane();
      *&v81[8] = 2048;
      *&v81[10] = IOSurfaceGetCompressedTileHeightOfPlane();
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: Unsupported scaling dimensions! inWidth:%d inHeight:%d outWidth:%d outHeight:%d IOSurfaceGetWidthInCompressedTilesOfPlane:%zu IOSurfaceGetCompressedTileWidthOfPlane:%zu IOSurfaceGetHeightInCompressedTilesOfPlane:%zu IOSurfaceGetCompressedTileHeightOfPlane:%zu\n";
LABEL_11:
      _os_log_impl(&dword_277606000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x42u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  *&v78[0] = 0;
  v89 = 0;
  v87 = 0;
  v83 = 0;
  IOSurfaceGetExtendedPixelsOfPlane();
  if (IOSurfaceGetWidthOfPlane(v24, 0) < ((a6 + 15) & 0xFFFFFFF0) + 16 || (2 * ((((a7 >> 1) + 7) & 0xFFFFFFF8) + 8) <= ((a7 + 7) & 0xFFFFFFF8) + 8 ? (v37 = ((a7 + 7) & 0xFFFFFFF8) + 8) : (v37 = 2 * ((((a7 >> 1) + 7) & 0xFFFFFFF8) + 8)), (HeightOfPlane = IOSurfaceGetHeightOfPlane(v24, 0), a5 < 0x40) || a4 < 0x40 || a7 < 0x40 || a6 < 0x40 || v37 > v83 + HeightOfPlane))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110912;
      *&buf[4] = a4;
      *&buf[8] = 1024;
      *&buf[10] = a5;
      *&buf[14] = 1024;
      *&buf[16] = a6;
      *&buf[20] = 1024;
      *&buf[22] = a7;
      *&buf[26] = 2048;
      *&buf[28] = IOSurfaceGetWidthOfPlane(v24, 0);
      *&buf[36] = 2048;
      *&buf[38] = v89;
      *&buf[46] = 2048;
      *v81 = IOSurfaceGetHeightOfPlane(v24, 0);
      *&v81[8] = 2048;
      *&v81[10] = v83;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: Unsupported scaling dimensions! inWidth:%d inHeight:%d outWidth:%d outHeight:%d IOSurfaceGetWidthOfPlane:%zu extendedRight:%zu IOSurfaceGetHeightOfPlane:%zu extendedBottom:%zu\n";
      goto LABEL_11;
    }

LABEL_12:
    v28 = 0;
    LOBYTE(v29) = 0;
    LOBYTE(v30) = 0;
    v31 = 0;
LABEL_13:
    v32 = 1;
    goto LABEL_14;
  }

  v73 = a5;
  v39 = a4;
  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v24, 0);
  v72 = a7;
  v41 = IOSurfaceGetBaseAddressOfPlane(v24, 1uLL);
  SizeOfPlane = IOSurfaceGetSizeOfPlane();
  v43 = IOSurfaceGetSizeOfPlane();
  v77 = v43 + SizeOfPlane;
  v76 = BaseAddressOfPlane;
  v44 = BaseAddressOfPlane;
  a4 = v39;
  a5 = v73;
  v74 = SizeOfPlane;
  memset(v44, 128, SizeOfPlane);
  v75 = v41;
  v45 = v41;
  a7 = v72;
  memset(v45, 128, v43);
  v91[0] = SizeOfPlane;
  v91[1] = v43;
LABEL_38:
  v46 = IOSurfaceLock(v24, 0, 0);
  if (v46)
  {
    v47 = v46;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v47;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: pIOSurfaceDst lockSurface failed with error:%d\n", buf, 8u);
    }

    v28 = 0;
    LOBYTE(v29) = 0;
    LOBYTE(v30) = 0;
    v31 = 1;
    goto LABEL_13;
  }

  if (a8 == 3)
  {
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v83 = 0;
    v84 = 0;
    v48 = IOSurfaceLookup(v22);
    if (!v48)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: pIOSurfaceSrc lookup failed!\n", buf, 2u);
      }

      LOBYTE(v30) = 0;
      v31 = 0;
      v32 = 1;
      goto LABEL_85;
    }

    v49 = v48;
    v50 = IOSurfaceLock(v48, 1u, 0);
    if (v50)
    {
      v51 = v50;
      v52 = -536870212;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v51;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: pIOSurfaceSrc lockSurface failed with error:%d\n", buf, 8u);
      }

      LOBYTE(v30) = 0;
      v53 = 1;
LABEL_84:
      CFRelease(v49);
      v31 = v53 != 0;
      v32 = v52 != 0;
LABEL_85:
      v29 = IOSurfaceUnlock(v24, 0, 0);
      if (v29 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v29;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD::scaleOutputFrame unlockSurface Dest returned error %d\n", buf, 8u);
      }

      v28 = 0;
      LOBYTE(v29) = v29 != 0;
      goto LABEL_14;
    }

    v54 = AppleAVDCommandBuilder::checkRVRAScalingRatio(v50, a4, a5, a6, a7);
    if (v54)
    {
      v53 = v54;
      v52 = -536870212;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 67109120;
      *&buf[4] = v53;
      v55 = MEMORY[0x277D86220];
      v56 = "AppleAVD: checkRVRAScalingRatio returned error:%d\n";
      goto LABEL_61;
    }

    if (*(a1 + 5608) < 0x14u)
    {
      if (v77 <= a10)
      {
        v89 = IOSurfaceGetBaseAddressOfPlane(v49, 0);
        v90 = IOSurfaceGetBaseAddressOfPlane(v49, 1uLL);
        v87 = v76;
        v88 = v75;
        v86[0] = IOSurfaceGetBytesPerRowOfPlane(v49, 0);
        v86[1] = IOSurfaceGetBytesPerRowOfPlane(v49, 1uLL);
        v85[0] = IOSurfaceGetBytesPerRowOfPlane(v24, 0);
        v85[1] = IOSurfaceGetBytesPerRowOfPlane(v24, 1uLL);
        v83 = a9;
        v84 = a9 + v74;
        v92[0] = IOSurfaceGetSizeOfPlane();
        v92[1] = IOSurfaceGetSizeOfPlane();
        v67 = *(a13 + 16);
        v78[0] = *a13;
        v78[1] = v67;
        v78[2] = *(a13 + 32);
        v79 = *(a13 + 48);
        v68 = a14[3];
        *&buf[32] = a14[2];
        *v81 = v68;
        v69 = a14[5];
        *&v81[16] = a14[4];
        v82 = v69;
        v70 = a14[1];
        *buf = *a14;
        *&buf[16] = v70;
        v53 = RVRAScaler(&v87, v85, a6, a7, &v89, v86, a4, a5, a11, a12, &v83, v78, buf, v92, v91);
        v52 = 0;
        goto LABEL_77;
      }

      v52 = -536870212;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v77;
        *&buf[8] = 1024;
        *&buf[10] = a10;
        v64 = MEMORY[0x277D86220];
        v65 = "AppleAVD: rvra temp buff size isn't big enough! yuvsize:%u rvraTempBuffSize:%u\n";
        v66 = 14;
LABEL_74:
        _os_log_impl(&dword_277606000, v64, OS_LOG_TYPE_DEFAULT, v65, buf, v66);
      }
    }

    else
    {
      if (a15 && a16)
      {
        v57 = *(a16 + 152);
        v58 = IOSurfaceLookup(*(a15 + 152));
        IOSurfaceLock(v58, 0, 0);
        v59 = IOSurfaceLookup(v57);
        v52 = IOSurfaceLock(v59, 0, 0);
        v60 = *(a13 + 48);
        v61 = a14[3];
        *&buf[32] = a14[2];
        *v81 = v61;
        v62 = a14[5];
        *&v81[16] = a14[4];
        v82 = v62;
        v63 = a14[1];
        *buf = *a14;
        *&buf[16] = v63;
        LODWORD(v71) = v60;
        v53 = BilinearScaleInterchangeBuffer(v24, v49, a4, a5, a6, a7, a11, a12, v71, buf, v58, v59);
        IOSurfaceUnlock(v58, 0, 0);
        if (v58)
        {
          CFRelease(v58);
        }

        IOSurfaceUnlock(v59, 0, 0);
        if (v59)
        {
          CFRelease(v59);
        }

LABEL_77:
        if (v53 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v53;
          v55 = MEMORY[0x277D86220];
          v56 = "AppleAVD: AppleAVD::RVRAScaler returned error:%d \n";
LABEL_61:
          _os_log_impl(&dword_277606000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 8u);
        }

LABEL_80:
        v30 = IOSurfaceUnlock(v49, 1u, 0);
        if (v30)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v30;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD::scaleOutputFrame unlockSurface Src returned error %d\n", buf, 8u);
          }

          LOBYTE(v30) = 1;
        }

        goto LABEL_84;
      }

      v52 = -536870212;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v64 = MEMORY[0x277D86220];
        v65 = "AppleAVD: linear_orig or linear_scaled is NULL\n";
        v66 = 2;
        goto LABEL_74;
      }
    }

    v53 = 0;
    goto LABEL_80;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD::scaleOutputFrame unsupported vra type", buf, 2u);
  }

  v29 = IOSurfaceUnlock(v24, 0, 0);
  if (v29)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v29;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD::scaleOutputFrame unlockSurface returned error %d\n", buf, 8u);
    }

    LOBYTE(v29) = 0;
    LOBYTE(v30) = 0;
    v31 = 0;
    v32 = 0;
    v28 = 1;
  }

  else
  {
    v28 = 0;
    LOBYTE(v30) = 0;
    v31 = 0;
    v32 = 0;
  }

LABEL_14:
  CFRelease(v24);
  if ((v28 & 1) == 0 && (v29 & 1) == 0 && (v30 & 1) == 0 && !v31 && !v32)
  {
    return 0;
  }

LABEL_20:
  v33 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "scaleOutputFrame";
    *&buf[12] = 1024;
    *&buf[14] = -536870212;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

  return v33;
}

void CAHDec::~CAHDec(CAHDec *this)
{
  v3 = *MEMORY[0x277D85DE8];
  *this = &unk_288665468;
  if (*(this + 10) && CAVDDecoder::deallocAVDMem(*(this + 7), this + 10) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "~CAHDec";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Error deallocating patch requests list", &v1, 0xCu);
  }
}

void sub_2776FA07C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HEVC_RLM::~HEVC_RLM(HEVC_RLM *this)
{
  v2 = 0;
  *this = &unk_2886653E8;
  v3 = 16;
  do
  {
    if (*(this + v3) == 1)
    {
      HEVC_RLM::removeEntry(this, v2);
    }

    ++v2;
    v3 += 176;
  }

  while (v2 != 16);
  *(this + 824) = 0;
  *(this + 1650) = 0;
}

{
  HEVC_RLM::~HEVC_RLM(this);

  JUMPOUT(0x277CAEC20);
}

void HEVC_RLM::releaseAllPictures(HEVC_RLM *this)
{
  v2 = 0;
  v3 = 16;
  do
  {
    if (*(this + v3) == 1)
    {
      HEVC_RLM::removeEntry(this, v2);
    }

    ++v2;
    v3 += 176;
  }

  while (v2 != 16);
}

_DWORD *HEVC_RLM::findShortTermReferencePictureByPicOrderCntVal(HEVC_RLM *this, int a2)
{
  v2 = (this + 36);
  v3 = 16;
  while (*(v2 - 20) != 1 || *(v2 - 2) != a2 || *v2 != 1)
  {
    v2 += 44;
    if (!--v3)
    {
      return 0;
    }
  }

  return v2 - 5;
}

void HEVC_RLM::removeCurrentFrameFromDPB(HEVC_RLM *this, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 < 0x10)
  {
    v4 = this + 176 * a2;
    if (*(v4 + 8))
    {
      *(v4 + 8) = 0;
    }

    v4[16] = 0;
    *(v4 + 7) = 0;
    *(v4 + 9) = 0;
    v5 = *(this + 708);
    v6 = v5 - 1;
    *(this + 708) = v5 - 1;
    if (v5 <= 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315394;
        v8 = "removeCurrentFrameFromDPB";
        v9 = 1024;
        v10 = v6;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: WARNING _numActivePictures=%d is not valid, now clamped to 0\n", &v7, 0x12u);
      }

      *(this + 708) = 0;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "removeCurrentFrameFromDPB";
    v9 = 1024;
    v10 = a2;
    v11 = 1024;
    v12 = 16;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): WARNING, index=%d is invalid, maximum allowable is %d\n", &v7, 0x18u);
  }
}

uint64_t HEVC_RLM::markAllRefPicturesasUnused(uint64_t this)
{
  v1 = (this + 36);
  v2 = 16;
  do
  {
    if (*(v1 - 20) == 1)
    {
      *v1 = 0;
    }

    v1 += 44;
    --v2;
  }

  while (v2);
  return this;
}

uint64_t HEVC_RLM::decrementPOCvalues(uint64_t this, int a2)
{
  v2 = *(this + 2832);
  if (v2 >= 1)
  {
    v3 = (this + 28);
    do
    {
      *v3 -= a2;
      v3 += 44;
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t HEVC_RLM::getNumberOfPicturesNeededForOutput(HEVC_RLM *this)
{
  result = 0;
  v3 = this + 18;
  v4 = 16;
  do
  {
    if (*(v3 - 2) == 1)
    {
      if (*v3 == 1)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }
    }

    v3 += 176;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t CAVDDecoder::deallocAVDMem(uint64_t a1, uint64_t *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CAF070](*MEMORY[0x277D85F48], *a2, *(a2 + 11));
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      v7 = *(a2 + 11);
      *buf = 136315906;
      *&buf[4] = "deallocAVDMem";
      *&buf[12] = 1024;
      *&buf[14] = v5;
      *&buf[18] = 2048;
      *&buf[20] = v6;
      *&buf[28] = 1024;
      *&buf[30] = v7;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): WARNING! vm_deallocate failed! status: 0x%x Check for leaks! addr = 0x%llx - roundedUpSize: 0x%x", buf, 0x22u);
    }
  }

  v8 = *(a1 + 2344);
  v15 = 4;
  v9 = *(a2 + 5);
  v19 = *(a2 + 4);
  v20 = v9;
  v10 = *(a2 + 10);
  v24 = *(a2 + 9);
  v25 = v10;
  v11 = *(a2 + 8);
  v22 = *(a2 + 7);
  v23 = v11;
  v21 = *(a2 + 6);
  v12 = *(a2 + 1);
  *buf = *a2;
  *&buf[16] = v12;
  v13 = *(a2 + 3);
  *&buf[32] = *(a2 + 2);
  v18 = v13;
  v26 = 1;
  return IOConnectCallStructMethod(**v8, 4u, buf, 0xB8uLL, outputStruct, &v15);
}

uint64_t CAVDDecoder::unmapAVDMemory(uint64_t a1, mach_port_t **a2, _OWORD *a3, char a4)
{
  v10 = 4;
  v4 = a3[5];
  inputStruct[4] = a3[4];
  inputStruct[5] = v4;
  v5 = a3[10];
  inputStruct[9] = a3[9];
  inputStruct[10] = v5;
  v6 = a3[8];
  inputStruct[7] = a3[7];
  inputStruct[8] = v6;
  inputStruct[6] = a3[6];
  v7 = a3[1];
  inputStruct[0] = *a3;
  inputStruct[1] = v7;
  v8 = a3[3];
  inputStruct[2] = a3[2];
  inputStruct[3] = v8;
  v13 = a4;
  return IOConnectCallStructMethod(**a2, 4u, inputStruct, 0xB8uLL, outputStruct, &v10);
}

uint64_t CAVDDecoder::calculateClearBytes(CAVDDecoder *this, unsigned int a2, int a3, int a4, unsigned int a5, unsigned int *a6, unsigned int *a7)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(this + 10) == 1)
  {
    return *(this + 1252);
  }

  if (a5)
  {
    if (a6)
    {
      if (a7)
      {
        v8 = a5;
        v9 = -1;
        do
        {
          if (*a6++)
          {
            if (*a7 < a3 + a2 && *a7 >= a2)
            {
              v9 = *a7 - (a2 + ((a4 + 7) >> 3));
            }
          }

          ++a7;
          --v8;
        }

        while (v8);
        goto LABEL_16;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "calculateClearBytes";
        v13 = MEMORY[0x277D86220];
        v14 = "AppleAVD: ERROR: %s(): protectedRegionOffsets is NULL\n";
        goto LABEL_26;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "calculateClearBytes";
      v13 = MEMORY[0x277D86220];
      v14 = "AppleAVD: ERROR: %s(): protectedRegionSizes is NULL\n";
LABEL_26:
      _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, v14, &v15, 0xCu);
    }

    return 0xFFFFFFFFLL;
  }

  v9 = -1;
LABEL_16:
  if (v9 == -1 && a5 == 0)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t CAVDDecoder::getSurfaceMemInfo(CAVDDecoder *this, unsigned int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2 != -1)
  {
    v3 = *(this + a2 + 132);
    if (v3)
    {
      return v3 + 8;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "getSurfaceMemInfo";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR! SurfaceRefList NULL!! refBufIndex: %d", &v5, 0x12u);
  }

  return 0;
}

uint64_t CAVDDecoder::getDisplaySurfaceMemInfo(CAVDDecoder *this, unsigned int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(this + a2 + 3);
  if (v2)
  {
    return v2 + 8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "getDisplaySurfaceMemInfo";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR! RenderSurfaceRefList NULL!! dispBufIndex: %d", &v5, 0x12u);
  }

  return 0;
}

void CAVDDecoder::iterateSurfaceRefCount(CAVDDecoder *this, unsigned int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(this + a2 + 132);
  if (v2)
  {
    ++*(v2 + 216);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "iterateSurfaceRefCount";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR! SurfaceRefList NULL!! refBufIndex: %d", &v4, 0x12u);
  }
}

void CAVDDecoder::decrementSurfaceRefCount(CAVDDecoder *this, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(this + a2 + 132);
  if (!v2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = 136315394;
    v9 = "decrementSurfaceRefCount";
    v10 = 1024;
    v11 = a2;
    v5 = MEMORY[0x277D86220];
    v6 = "AppleAVD: %s(): ERROR! SurfaceRefList NULL!! refBufIndex: %d";
    v7 = 18;
    goto LABEL_8;
  }

  v3 = *(v2 + 216);
  if (v3)
  {
    *(v2 + 216) = v3 - 1;
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "decrementSurfaceRefCount";
    v5 = MEMORY[0x277D86220];
    v6 = "AppleAVD: %s(): ERROR refCount is already 0!!";
    v7 = 12;
LABEL_8:
    _os_log_impl(&dword_277606000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, v7);
  }
}

uint64_t CAVDHevcDecoder::deallocateMembersPerLayer(CAVDHevcDecoder *this, int a2)
{
  LODWORD(v2) = a2;
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2283);
  if (v4 != a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "deallocateMembersPerLayer";
      v14 = 1024;
      v15 = v4;
      v16 = 1024;
      v17 = v2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): mismatch - m_numLayers %d, numLayers %d", &v12, 0x18u);
      LODWORD(v2) = *(this + 2283);
    }

    else
    {
      LODWORD(v2) = v4;
    }
  }

  if (v2 >= 1)
  {
    v5 = (this + 3016);
    v6 = v2;
    v2 = v2;
    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
        *v5 = 0;
      }

      ++v5;
      --v2;
    }

    while (v2);
    v7 = 8 * v6;
    do
    {
      v8 = *(this + 1036);
      if (v8)
      {
        free(*(v8 + v2));
        *(*(this + 1036) + v2) = 0;
      }

      v9 = *(this + 1037);
      if (v9)
      {
        free(*(v9 + v2));
        *(*(this + 1037) + v2) = 0;
      }

      v10 = *(this + 1038);
      if (v10)
      {
        free(*(v10 + v2));
        *(*(this + 1038) + v2) = 0;
      }

      v2 += 8;
    }

    while (v7 != v2);
  }

  free(*(this + 1036));
  *(this + 1036) = 0;
  free(*(this + 1037));
  *(this + 1037) = 0;
  free(*(this + 1038));
  *(this + 1038) = 0;
  return 0;
}

void CAVDHevcDecoder::~CAVDHevcDecoder(CAVDHevcDecoder *this)
{
  *this = &unk_288665968;
  for (i = 24; i != 1056; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      CAVDDecoder::unmapAVDMemory(this, *(this + 293), (v3 + 8), 1);
      free(v3);
    }

    *(this + i) = 0;
  }

  do
  {
    v4 = *(this + i);
    if (v4)
    {
      CAVDDecoder::unmapAVDMemory(this, *(this + 293), (v4 + 8), *(v4 + 169));
      free(v4);
    }

    *(this + i) = 0;
    i += 8;
  }

  while (i != 2088);
  HEVCReleaseVPS(this + 3712);
  if (*(this + 1021))
  {
    v5 = 0;
    v6 = 16;
    do
    {
      HEVCReleaseSPS(*(this + 1021) + v5);
      v5 += 23176;
      --v6;
    }

    while (v6);
  }

  if (*(this + 1022))
  {
    for (j = 0; j != 630784; j += 9856)
    {
      HEVCReleasePPS(*(this + 1022) + j);
    }
  }

  if (*(this + 1023))
  {
    v8 = 24;
    v9 = 600;
    do
    {
      HevcReleaseSliceHeader(*(this + 1023) + v8);
      v8 += 2360;
      --v9;
    }

    while (v9);
  }

  v10 = *(this + 375);
  if (v10)
  {
    (*(*v10 + 8))(v10);
    *(this + 375) = 0;
  }

  free(*(this + 1021));
  *(this + 1021) = 0;
  free(*(this + 1022));
  *(this + 1022) = 0;
  free(*(this + 1023));
  *(this + 1023) = 0;
  free(*(this + 1024));
  *(this + 1024) = 0;
  free(*(this + 1025));
  *(this + 1025) = 0;
  free(*(this + 1116));
  *(this + 1116) = 0;
  free(*(this + 1117));
  *(this + 1117) = 0;
  free(*(this + 1122));
  *(this + 1122) = 0;
  free(*(this + 1123));
  *(this + 1123) = 0;
  free(*(this + 1041));
  *(this + 1041) = 0;
  v11 = *(this + 262);
  if (v11)
  {
    (*(*v11 + 144))(v11);
    (*(**(this + 262) + 160))(*(this + 262), 0);
    v12 = *(this + 262);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    *(this + 262) = 0;
  }

  (*(*this + 296))(this, *(this + 2283));
  *(this + 2283) = 0;

  CAVDDecoder::~CAVDDecoder(this);
}

{
  CAVDHevcDecoder::~CAVDHevcDecoder(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAVDHevcDecoder::setHevcVideoParsingMode(uint64_t this)
{
  if (*(this + 9128))
  {
    v1 = this;
    this = CAVDDecoder::isADSDecryption(this);
    *(v1 + 8924) = 0;
  }

  return this;
}

uint64_t CAVDHevcDecoder::VAStopDecode(HEVC_RLM **this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(this + 2716))
  {
    LOBYTE(v8[0]) = 0;
    if (HEVC_RLM::bumpingProcess(this[377], v8))
    {
      v2 = 1;
      do
      {
        if (LOBYTE(v8[0]) != 1)
        {
          break;
        }

        if (BYTE2(v8[0]))
        {
          (*(*this + 46))(this, v8);
        }

        LOBYTE(v8[0]) = 0;
      }

      while (HEVC_RLM::bumpingProcess(this[377], v8) && v2++ < 0x10);
    }

    while (!(*(*this + 49))(this, v8))
    {
      (*(*this + 11))(this, HIDWORD(v8[0]));
    }

    v4 = this[377];
    if (v4)
    {
      HEVC_RLM::releaseAllPictures(v4);
    }

    v5 = this[262];
    if (v5)
    {
      (*(*v5 + 144))(v5);
      (*(*this[262] + 160))(this[262], 0);
      v6 = this[262];
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      this[262] = 0;
    }

    (*(*this + 37))(this, 1);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v8[0]) = 136315138;
      *(v8 + 4) = "VAStopDecode";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: bailing out of %s because start didn't complete", v8, 0xCu);
    }

    return 305;
  }
}

void CAVDHevcDecoder::attachQPs(CAVDHevcDecoder *this, __CVBuffer *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, (*(this + 1022) + 9856 * *(this + 2053) + 28));
  CVBufferSetAttachment(a2, @"InitQpMinus26", v5, kCVAttachmentMode_ShouldPropagate);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = malloc_type_malloc(8 * *(this + 674), 0x6004044C4A2DFuLL);
  if (v6)
  {
    v7 = v6;
    if (*(this + 674))
    {
      v8 = 0;
      v9 = 1868;
      do
      {
        v7[v8++] = CFNumberCreate(0, kCFNumberSInt32Type, (*(this + 1023) + v9));
        v10 = *(this + 674);
        v9 += 2360;
      }

      while (v8 < v10);
    }

    else
    {
      v10 = 0;
    }

    v11 = CFArrayCreate(v4, v7, v10, MEMORY[0x277CBF128]);
    v12 = *(this + 674);
    if (v12)
    {
      for (i = 0; i < v12; ++i)
      {
        v14 = v7[i];
        if (v14)
        {
          CFRelease(v14);
          v7[i] = 0;
          v12 = *(this + 674);
        }
      }
    }

    free(v7);
    CVBufferSetAttachment(a2, @"SliceQPData", v11, kCVAttachmentMode_ShouldPropagate);
    if (v11)
    {

      CFRelease(v11);
    }
  }
}

uint64_t CAVDHevcDecoder::setPixelBuffer(uint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  if (a2)
  {
    v7 = a3;
    v10 = 0;
    result = (*(*result + 112))(result, a3, &v10);
    if (result)
    {
      *a2 = a4;
      *(a2 + 4) = v7;
      v9 = v10;
      *(a2 + 8) = v10 + 8;
      *a5 = v9;
    }

    else
    {
      *(a2 + 8) = 0;
    }
  }

  return result;
}

uint64_t CAVDHevcDecoder::decodeGetRenderTargetRef(uint64_t a1, uint64_t a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v4 = *(a1 + 2968);
  v5 = *(*(*(a1 + 8288) + 8 * v4) + 4 * a2);
  if (v5 > 0x80)
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 1056 + 8 * v5);
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    *&buf[4] = "decodeGetRenderTargetRef";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: %s(): HEVC pOrigRef is NULL!";
LABEL_13:
    v15 = 12;
LABEL_14:
    _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
    goto LABEL_15;
  }

  v9 = *(a1 + 2744);
  if (*(v7 + 204) == v9 && *(v7 + 208) == *(a1 + 2748))
  {
    *a3 = v7;
LABEL_10:
    v12 = 1;
    goto LABEL_16;
  }

  v10 = *(*(*(a1 + 8304) + 8 * v4) + 4 * a2);
  if (v10 > 0x80)
  {
    goto LABEL_10;
  }

  v11 = *(a1 + 1056 + 8 * v10);
  *a3 = v11;
  if (!v11)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    *&buf[4] = "decodeGetRenderTargetRef";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: %s(): HEVC pScaledRef is NULL!";
    goto LABEL_13;
  }

  if (*(v11 + 204) == v9 && *(v11 + 208) == *(a1 + 2748))
  {
    goto LABEL_10;
  }

  v40 = (*(**(a1 + 2096) + 184))(*(a1 + 2096), a2);
  v17 = (*(**(a1 + 2096) + 192))(*(a1 + 2096), a2);
  v18 = (*(**(a1 + 2096) + 200))(*(a1 + 2096), a2);
  v19 = (*(**(a1 + 2096) + 208))(*(a1 + 2096), a2);
  v20 = (*(**(a1 + 2096) + 216))(*(a1 + 2096));
  v21 = (*(**(a1 + 2096) + 224))(*(a1 + 2096));
  if (!*(a1 + 2768) || !*(a1 + 2816) || !*(a1 + 2840) || (v22 = v21, (v23 = *(a1 + 2792)) == 0) || !*(a1 + 2864))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: CAVDHevcDecoder::DecodeGetRenderTargetRef rvra scaler buffers are not allocated!";
LABEL_32:
    v15 = 2;
    goto LABEL_14;
  }

  v24 = *(a1 + 8168) + 23176 * *(a1 + 8208);
  v38 = *(v24 + 3612);
  v39 = *(v24 + 3608);
  bzero(v23, *(a1 + 2808));
  bzero(*(a1 + 2816), *(a1 + 2832));
  bzero(*(a1 + 2840), *(a1 + 2856));
  bzero(*(a1 + 2864), *(a1 + 2880));
  v25 = *(a1 + 2072);
  if (*(a1 + 2352) <= 19)
  {
    v26 = *(a1 + 2064);
  }

  else if (!v25 || (v26 = *(a1 + 2064)) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: CAVDHevcDecoder::DecodeGetRenderTargetRef rvra scaler backup buffers are not allocated!";
    goto LABEL_32;
  }

  v27 = *(a1 + 2344);
  v28 = *(v7 + 204);
  v29 = *(v7 + 208);
  v30 = *(a1 + 2744);
  v31 = *(a1 + 2748);
  v32 = *(a1 + 2752);
  v33 = *(a1 + 2768);
  v34 = *(a1 + 2784);
  v41 = xmmword_27775DA40;
  v42 = v20;
  v43 = v22;
  v44 = v40;
  v45 = v17;
  v46 = v18;
  v47 = v19;
  v48 = 2;
  v35 = *(a1 + 2840);
  v51 = *(a1 + 2824);
  v52 = v35;
  v36 = *(a1 + 2872);
  v53 = *(a1 + 2856);
  v54 = v36;
  v37 = *(a1 + 2808);
  *buf = *(a1 + 2792);
  v50 = v37;
  if (!AppleAVDCommandBuilder::scaleOutputFrame(v27, v7 + 8, v11 + 8, v28, v29, v30, v31, v32, v33, v34, v39, v38, &v41, buf, v25 + 8, v26 + 8))
  {
    *(v11 + 204) = *(a1 + 2744);
    goto LABEL_10;
  }

LABEL_15:
  v12 = 0;
LABEL_16:
  if (*a3)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t CAVDHevcDecoder::getFrameParams(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8232))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = *(a1 + 3538);
  *(a2 + 8) = *(a1 + 8224);
  return result;
}

uint64_t CAVDHevcDecoder::CopyBitsBufferData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 8184) + 2360 * a3;
  v4 = *(v3 + 8);
  v5 = v4 - *(*(a1 + 8 * *(*(a1 + 2344) + 6036) + 24) + 8);
  v6 = *(v3 + 2080);
  v7 = v6 >> 3;
  v8 = *(a2 + 16);
  v9 = (*(v3 + 16) - (*(v3 + 2080) >> 3));
  if (v9)
  {
    v10 = (v4 + (v6 >> 3));
    v11 = (*(a2 + 8) + v5 + (v6 >> 3));
    do
    {
      v12 = *v10++;
      *v11++ = v12;
      --v9;
    }

    while (v9);
  }

  return (v7 + v8 + v5);
}

__n128 CAVDHevcDecoder::populateSnapshotStruct(CAVDHevcDecoder *this, unsigned int a2, int a3)
{
  v3 = *(this + 2152);
  if (v3)
  {
    v4 = (this + 8408);
    v5 = (this + 8484);
    v6 = *(this + 2152);
    do
    {
      v7 = *v4++;
      *(v5 - 3) = *(v7 + 48);
      v8 = *(v7 + 28);
      *(v5 - 1) = *(v7 + 64);
      *v5 = v8;
      v5 += 4;
      --v6;
    }

    while (v6);
  }

  *(this + 2150) = v3;
  v9 = *(this + 261);
  v10 = *(v9 + 16);
  *(this + 2104) = *v9;
  *(this + 2120) = v10;
  v11 = *(v9 + 32);
  v12 = *(v9 + 48);
  v13 = *(v9 + 80);
  *(this + 2168) = *(v9 + 64);
  *(this + 2184) = v13;
  *(this + 2136) = v11;
  *(this + 2152) = v12;
  v14 = *(v9 + 96);
  v15 = *(v9 + 112);
  v16 = *(v9 + 144);
  *(this + 2232) = *(v9 + 128);
  *(this + 2248) = v16;
  *(this + 2200) = v14;
  *(this + 2216) = v15;
  result = *(v9 + 160);
  v18 = *(v9 + 176);
  v19 = *(v9 + 208);
  *(this + 2296) = *(v9 + 192);
  *(this + 2312) = v19;
  *(this + 2264) = result;
  *(this + 2280) = v18;
  *(this + 582) = a3;
  return result;
}

CAHDec *createSalviaHevcDecoder(void *a1)
{
  v2 = operator new(0x2E38uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_2886655A8;
    *(v3 + 32) = a1;
    *(v3 + 114) = 393964;
    *(v3 + 2) = 2540;
    *(v3 + 1) = xmmword_27775BDB0;
    *(v3 + 8) = 2;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x2C00uLL);
  }

  return v3;
}

void CAHDecSalviaHevc::~CAHDecSalviaHevc(CAHDecSalviaHevc *this)
{
  *this = &unk_2886655A8;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecSalviaHevc::~CAHDecSalviaHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecSalviaHevc::init(CAHDecSalviaHevc *this)
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

uint64_t CAHDecSalviaHevc::initPicture(CAHDecSalviaHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 393964;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x602ECuLL);
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

uint64_t CAHDecSalviaHevc::populateSlices(CAHDecSalviaHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 2540;
    v5 = a2;
    do
    {
      CAHDecSalviaHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 352;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecSalviaHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 256);
  v7 = *(v6 + 8184) + 2360 * a3;
  v8 = *(v6 + 8168) + 23176 * *(v6 + 8208);
  v9 = *(v6 + 8176) + 9856 * *(v6 + 8212);
  *(a1 + 460) = 6 * *(v8 + 3636);
  v10 = *(v8 + 22880);
  *(a2 + 348) = 0x1000000;
  v11 = (((*(v7 + 36) / v10) & 0xFFF) << 12) | 0x1000000;
  *(a2 + 348) = v11;
  *(a2 + 348) = v11 & 0xFFFFF000 | (*(v7 + 36) % v10) & 0xFFF;
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
  if (*(v7 + 44) > 1u || !*(v7 + 2344) || *(a1 + 11820) || ((*(**(a1 + 256) + 352))(*(a1 + 256), a3), v27 = *(a1 + 256), *(v27 + 8920)) || (*(a1 + 11820) = 1, *(a2 + 4) |= 0x40000u, !*(v27 + 8744)) && !*(v27 + 8896) && !*(v27 + 8900) || (result = CAHDec::addToPatcherList(a1, (v27 + 8744), 352 * a3 + 2876, 0, 0xFFFFFFFFLL, 8, 0xFFFFFF, 4), !result))
  {
    *(a2 + 4) = *(a2 + 4) & 0x77FFFF | 0x2D000000;
    (*(**(a1 + 256) + 360))(*(a1 + 256), 0, a3);
    v28 = *(v7 + 44);
    if (v28 > 1)
    {
      goto LABEL_41;
    }

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

LABEL_41:
    *(a2 + 128) = 0x2DD0000000000000;
    v38 = *(v7 + 44);
    if (v38 == 1)
    {
      v39 = *(v9 + 49);
      if (!v39)
      {
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
        if (!(*(**(a1 + 256) + 440))())
        {
          return 0xFFFFFFFFLL;
        }

        if (!MEMORY[0] && !MEMORY[0x98] && !MEMORY[0x9C] || (result = CAHDec::addToPatcherList(a1, 0, 352 * a3 + 2880, 0, 0xFFFFFFFFLL, 0, -1, 4), !result))
        {
          result = 0;
          *(a2 + 344) = *(v7 + 16) - (*(v7 + 2080) >> 3);
        }

        return result;
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
    goto LABEL_62;
  }

  return result;
}

uint64_t CAHDecSalviaHevc::updateCommonRegisters(CAHDecSalviaHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecSalviaHevc::populateSequenceRegisters(CAHDecSalviaHevc *this)
{
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 8168) + 23176 * *(*(this + 32) + 8208);
  v1[10] = 0;
  v3 = (*(v2 + 3608) >> 3) - 1;
  v1[10] = v3 & 0x1FFF;
  v1[10] = ((*(v2 + 3612) << 13) + 536805376) & 0x1FFF0000 | v3 & 0x1FFF;
  v1[11] = 0;
  v4 = *(v2 + 10648) & 1;
  v1[11] = v4;
  v5 = v4 & 0xFFFFFFF1 | (2 * (*(v2 + 4440) & 7));
  v1[11] = v5;
  v6 = v5 & 0xFFFFFF8F | (16 * (*(v2 + 4436) & 7));
  v1[11] = v6;
  v7 = v6 & 0xFFFFFE7F | (((*(v2 + 4428) + *(v2 + 4432)) & 3) << 7);
  v1[11] = v7;
  v8 = v7 & 0xFFFFF9FF | ((*(v2 + 4428) & 3) << 9);
  v1[11] = v8;
  v9 = v8 & 0xFFFFE7FF | (((*(v2 + 4424) + *(v2 + 4420)) & 3) << 11);
  v1[11] = v9;
  v10 = v9 & 0xFFFF9FFF | ((*(v2 + 4420) & 3) << 13);
  v1[11] = v10;
  v11 = v10 & 0xFFF87FFF | ((*(v2 + 3640) & 0xF) << 15);
  v1[11] = v11;
  v12 = v11 & 0xFF87FFFF | ((*(v2 + 3636) & 0xF) << 19);
  v1[11] = v12;
  v13 = v12 & 0xFF7FFFFF | ((*(v2 + 3604) & 1) << 23);
  v1[11] = v13;
  v1[11] = v13 & 0xFCFFFFFF | ((*(v2 + 3600) & 3) << 24);
  v1[12] = 0;
  if (*(v2 + 10650))
  {
    v1[12] = 4096;
    v14 = (*(v2 + 10664) + *(v2 + 10660)) & 3 | 0x1000;
    v1[12] = v14;
    v15 = v14 & 0xFFFFFFF3 | (4 * (*(v2 + 10660) & 3));
    v1[12] = v15;
    v16 = v15 & 0xFFFFFF0F | (16 * (*(v2 + 10656) & 0xF));
    v1[12] = v16;
    v1[12] = v16 & 0xFFFFF0FF | ((*(v2 + 10652) & 0xF) << 8);
  }

  v1[13] = 0;
  if (*(v2 + 22833))
  {
    v17 = *(v2 + 22844) & 1;
    v1[13] = v17;
    v18 = v17 & 0xFFFFFFFD | (2 * (*(v2 + 22843) & 1));
    v1[13] = v18;
    v19 = v18 & 0xFFFFFFFB | (4 * (*(v2 + 22842) & 1));
    v1[13] = v19;
    v20 = v19 | (8 * (*(v2 + 22841) == 0));
    v1[13] = v20;
    v21 = v20 & 0xFFFFFFEF | (16 * (*(v2 + 22840) & 1));
    v1[13] = v21;
    v22 = v21 & 0xFFFFFFDF | (32 * (*(v2 + 22839) & 1));
    v1[13] = v22;
    v23 = v22 & 0xFFFFFFBF | ((*(v2 + 22838) & 1) << 6);
    v1[13] = v23;
    v24 = v23 | ((*(v2 + 22837) & 1) << 7);
    v1[13] = v24;
    v25 = v24 | ((*(v2 + 22836) & 1) << 8);
  }

  else
  {
    v25 = 8;
  }

  v1[13] = v25;
  v1[13] = v25 & 0xFFFFFDFF | ((*(v2 + 22285) & 1) << 9);
  if (*(v2 + 4444))
  {
    CAHDecTansyHevc::copyScalingList(this, (v1 + 14), *(this + 33) + 552, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAHDecSalviaHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

__n128 CAHDecSalviaHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v4 = a1 + 176 * a2;
  v5 = *(v4 + 7568);
  v6 = *(v4 + 7600);
  *(a3 + 16) = *(v4 + 7584);
  *(a3 + 32) = v6;
  *a3 = v5;
  v7 = *(v4 + 7616);
  v8 = *(v4 + 7632);
  v9 = *(v4 + 7664);
  *(a3 + 80) = *(v4 + 7648);
  *(a3 + 96) = v9;
  *(a3 + 48) = v7;
  *(a3 + 64) = v8;
  result = *(v4 + 7680);
  v11 = *(v4 + 7696);
  v12 = *(v4 + 7728);
  *(a3 + 144) = *(v4 + 7712);
  *(a3 + 160) = v12;
  *(a3 + 112) = result;
  *(a3 + 128) = v11;
  *a4 = *(a1 + 4 * a2 + 464);
  return result;
}

uint64_t CAHDecSalviaHevc::populatePictureRegisters(CAHDecSalviaHevc *this)
{
  v303 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v8 = *(v2 + 2960);
  v9 = *(v2 + 2964);
  v284 = *(v2 + 2952);
  v285 = *(v2 + 2948);
  v289 = *(v2 + 8280);
  v290 = *(v2 + 8994);
  v286 = *(v2 + 2924);
  v287 = *(v2 + 3548);
  v295 = *(v2 + 2644);
  v291 = *(v2 + 2088);
  v292 = *(v2 + 8312);
  v283 = *(v2 + 8);
  v10 = *(v2 + 8424);
  v302[0] = *(v2 + 8408);
  v302[1] = v10;
  v11 = *(v2 + 8456);
  v302[2] = *(v2 + 8440);
  v302[3] = v11;
  v288 = *(v2 + 8608);
  v12 = (*(*v2 + 184))(v2);
  v13 = *(this + 32);
  v293 = v12 && (v13[689] || v13[4] == 1);
  v14 = *(this + 33);
  v15 = v5 + 23176 * v3;
  v16 = *(v15 + 4420);
  v17 = *(v15 + 4424);
  memset(v301, 0, sizeof(v301));
  memset(v300, 0, sizeof(v300));
  (*(*v13 + 344))();
  v18 = 0;
  v19 = (*(this + 32) + 8616);
  do
  {
    v304 = vld2q_f64(v19);
    v19 += 4;
    v301[v18] = v304.val[0];
    v300[v18++] = v304.val[1];
  }

  while (v18 != 4);
  v20 = v6 + 9856 * v4;
  *(v14 + 76) = 766509056;
  v21 = (*(**(this + 32) + 232))(*(this + 32));
  if (v21)
  {
    v22 = (*(*(this + 32) + 2980) == 2) << 13;
  }

  else
  {
    v22 = 0;
  }

  v23 = ((v295 != 0) << 12) | ((v295 == 1) << 10) | v22 | *(v14 + 76) & 0xFFFFC15F;
  v24 = v23 & 0xFFFFF50F | 0x2A0;
  v25 = v23 | 0x2B0;
  if (!v293)
  {
    v25 = v24;
  }

  *(v14 + 76) = v25 | 0x40u;
  if ((v7 & 1) != 0 && *(v20 + 53) && *(v15 + 22888) > 1u || (v7 & 2) != 0 && !*(v20 + 53) && *(v20 + 52))
  {
LABEL_25:
    v26 = (v9 == 0) << 27;
    goto LABEL_26;
  }

  if ((v7 & 0x20) != 0 && !*(v20 + 53))
  {
    v26 = 0;
    if (*(v20 + 52) || v8 < 2)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v26 = 0;
LABEL_26:
  v27 = v17 + v16;
  *(v14 + 80) = v26;
  *(v14 + 84) = 0;
  v28 = *(v15 + 3608) - 1;
  *(v14 + 84) = v28;
  v29 = *(v15 + 3612);
  *(v14 + 88) = 0;
  *(v14 + 84) = (v28 | (v29 << 16)) - 0x10000;
  if (*(v20 + 6466))
  {
    v30 = 32 * (*(v20 + 6477) & 1);
    *(v14 + 92) = v30;
    if (*(v20 + 6477))
    {
      v31 = *(v20 + 6484) & 7;
    }

    else
    {
      v31 = 0;
    }

    v33 = v31 | v30;
    *(v14 + 92) = v31 | v30;
    if (v30)
    {
      v34 = (v20 + 6512);
      v35 = (v14 + 100);
      v36 = -1;
      do
      {
        v37 = *v35 & 0xFFFFFFE0 | *v34 & 0x1F;
        *v35 = v37;
        *v35++ = v37 & 0xFFFFFC1F | (32 * (*(v34 - 6) & 0x1F));
        ++v36;
        ++v34;
      }

      while (v36 < v31);
    }

    LOBYTE(v38) = *(v20 + 6477);
    if (v38)
    {
      v38 = *(v20 + 6480);
    }

    v39 = (8 * ((v27 - v38) & 3)) | v33;
    *(v14 + 92) = v39;
    v40 = v39 & 0xFFFFFFBF | ((*(v20 + 6476) & 1) << 6);
    *(v14 + 92) = v40;
    v32 = v40 & 0xFFFFFE7F | ((*(v20 + 6472) & 3) << 7);
  }

  else
  {
    v32 = 8 * (v27 & 3);
  }

  *(v14 + 92) = v32;
  LOBYTE(v41) = *(v20 + 34);
  if (v41)
  {
    v41 = *(v20 + 36);
  }

  v42 = v32 & 0xFFFE7FFF | (((v27 - v41) & 3) << 15);
  *(v14 + 92) = v42;
  v43 = v42 & 0xFFFFF1FF | ((*(v20 + 6460) & 7) << 9);
  *(v14 + 92) = v43;
  v44 = v43 & 0xFFFFEFFF | ((*(v20 + 53) & 1) << 12);
  *(v14 + 92) = v44;
  v45 = v44 & 0xFFFFDFFF | ((*(v20 + 52) & 1) << 13);
  *(v14 + 92) = v45;
  v46 = v45 & 0xFFFFBFFF | ((*(v20 + 51) & 1) << 14);
  *(v14 + 92) = v46;
  v47 = v46 & 0xFFFDFFFF | ((*(v20 + 34) & 1) << 17);
  *(v14 + 92) = v47;
  v48 = v47 & 0xFFFBFFFF | ((*(v20 + 33) & 1) << 18);
  *(v14 + 92) = v48;
  v49 = v48 & 0xFFF7FFFF | ((*(v20 + 32) & 1) << 19);
  *(v14 + 92) = v49;
  v50 = v49 & 0xFFEFFFFF | ((*(v20 + 16) & 1) << 20);
  *(v14 + 92) = v50;
  if ((v25 & 0x2000) != 0)
  {
    v51 = 0;
  }

  else
  {
    v51 = (*(v15 + 22284) != 0) << 21;
  }

  *(v14 + 92) = v51 | v50 & 0xFFDFFFFF;
  v52 = *(v14 + 96) & 0xFFFFFFE0 | *(v20 + 44) & 0x1F;
  *(v14 + 96) = v52;
  *(v14 + 96) = v52 & 0xFFFFFC1F | (32 * (*(v20 + 40) & 0x1F));
  if (*(v20 + 252))
  {
    CAHDecTansyHevc::copyScalingList(v21, v14 + 124, *(this + 33) + 1548, *(v15 + 3600), v20 + 256);
  }

  *(v14 + 144) = 0;
  if (v9)
  {
    v53 = 7340032;
  }

  else
  {
    v53 = 3145728;
  }

  *(v14 + 152) = v53;
  if (!*(*(this + 32) + 2892))
  {
    v102 = *(v15 + 3608) - 1;
    *(v14 + 148) = v102;
    v103 = (*(v15 + 3612) << 16) - 0x10000;
    *(v14 + 148) = v103 & 0xFFFF0000 | v102;
    if (*(v15 + 3616))
    {
      if ((*(v14 + 77) & 8) != 0)
      {
        v104 = *(v15 + 3620) * *(v15 + 22852);
        *(v14 + 144) = v104;
        *(v14 + 144) = v104 | ((*(v15 + 22856) * *(v15 + 3628)) << 16);
        v105 = *(v15 + 3608) + ~(*(v15 + 3624) * *(v15 + 22852));
        *(v14 + 148) = v105 | v103;
        *(v14 + 148) = v105 | ((*(v15 + 3612) + ~(*(v15 + 3632) * *(v15 + 22856))) << 16);
      }
    }
  }

  v54 = this + 6160;
  for (i = 156; i != 184; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v56 = *(this + 33);
    v57 = *(v56 + i);
    *(v56 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFu;
    v58 = *(this + 33);
    v59 = *(v58 + i);
    *(v58 + i) = v57;
    if (*v54 || *(v54 + 38) || *(v54 + 39))
    {
      result = CAHDec::addToPatcherList(this, v54, i, 0, 0xFFFFFFFFLL, 8, v59, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 28) = 0;
    *(*(this + 33) + i + 28) = *(*(this + 33) + i + 28) & 0x800001FF | (((*(this + 2952) >> 9) & 0x3FFFFF) << 9);
    v54 += 176;
  }

  *(*(this + 33) + 212) = 0;
  *(*(this + 33) + 216) = 0;
  *(*(this + 33) + 220) = 0;
  v61 = *(this + 33);
  v62 = *(v61 + 220);
  *(v61 + 220) = 0;
  *(*(this + 33) + 220) ^= 0xFFFFFFu;
  v63 = *(this + 33);
  v64 = *(v63 + 220);
  *(v63 + 220) = v62;
  if (!*(this + 1298) && !*(this + 2634) && !*(this + 2635) || (result = CAHDec::addToPatcherList(this, this + 1298, 220, 0, 0xFFFFFFFFLL, 8, v64, 4), !result))
  {
    if ((*(*(this + 33) + 224) = 0, v65 = *(this + 33), v66 = *(v65 + 224), *(v65 + 224) = 0, *(*(this + 33) + 224) ^= 0xFFFFFFu, v67 = *(this + 33), v68 = *(v67 + 224), *(v67 + 224) = v66, !*(this + 1320)) && !*(this + 2678) && !*(this + 2679) || (result = CAHDec::addToPatcherList(this, this + 1320, 224, 0, 0xFFFFFFFFLL, 8, v68, 4), !result))
    {
      if ((*(*(this + 33) + 228) = 0, v69 = *(this + 33), v70 = *(v69 + 228), *(v69 + 228) = 0, *(*(this + 33) + 228) ^= 0xFFFFFFu, v71 = *(this + 33), v72 = *(v71 + 228), *(v71 + 228) = v70, !*(this + 1342)) && !*(this + 2722) && !*(this + 2723) || (result = CAHDec::addToPatcherList(this, this + 1342, 228, 0, 0xFFFFFFFFLL, 8, v72, 4), !result))
      {
        if ((*(*(this + 33) + 232) = 0, v73 = *(this + 33), v74 = *(v73 + 232), *(v73 + 232) = 0, *(*(this + 33) + 232) ^= 0xFFFFFFu, v75 = *(this + 33), v76 = *(v75 + 232), *(v75 + 232) = v74, !*(this + 1364)) && !*(this + 2766) && !*(this + 2767) || (result = CAHDec::addToPatcherList(this, this + 1364, 232, 0, 0xFFFFFFFFLL, 8, v76, 4), !result))
        {
          if ((*(*(this + 33) + 236) = 0, v77 = *(this + 33), v78 = *(v77 + 236), *(v77 + 236) = 0, *(*(this + 33) + 236) ^= 0xFFFFFFu, v79 = *(this + 33), v80 = *(v79 + 236), *(v79 + 236) = v78, !*(this + 1386)) && !*(this + 2810) && !*(this + 2811) || (result = CAHDec::addToPatcherList(this, this + 1386, 236, 0, 0xFFFFFFFFLL, 8, v80, 4), !result))
          {
            if ((*(*(this + 33) + 240) = 0, v81 = *(this + 33), v82 = *(v81 + 240), *(v81 + 240) = 0, *(*(this + 33) + 240) ^= 0xFFFFFFu, v83 = *(this + 33), v84 = *(v83 + 240), *(v83 + 240) = v82, !*(this + 1408)) && !*(this + 2854) && !*(this + 2855) || (result = CAHDec::addToPatcherList(this, this + 1408, 240, 0, 0xFFFFFFFFLL, 8, v84, 4), !result))
            {
              if ((*(*(this + 33) + 244) = 0, v85 = *(this + 33), v86 = *(v85 + 244), *(v85 + 244) = 0, *(*(this + 33) + 244) ^= 0xFFFFFFu, v87 = *(this + 33), v88 = *(v87 + 244), *(v87 + 244) = v86, !*(this + 924)) && !*(this + 1886) && !*(this + 1887) || (result = CAHDec::addToPatcherList(this, this + 924, 244, 0, 0xFFFFFFFFLL, 8, v88, 4), !result))
              {
                if ((*(*(this + 33) + 248) = 0, v89 = *(this + 33), v90 = *(v89 + 248), *(v89 + 248) = 0, *(*(this + 33) + 248) ^= 0xFFFFFFu, v91 = *(this + 33), v92 = *(v91 + 248), *(v91 + 248) = v90, v93 = (this + 176 * v292 + 7568), !*v93) && !*(this + 44 * v292 + 1930) && !*(this + 44 * v292 + 1931) || (result = CAHDec::addToPatcherList(this, v93, 248, 0, 0xFFFFFFFFLL, 8, v92, 4), !result))
                {
                  if ((*(*(this + 33) + 252) = 0, v94 = *(this + 33), v95 = *(v94 + 252), *(v94 + 252) = 0, *(*(this + 33) + 252) ^= 0xFFFFFFu, v96 = *(this + 33), v97 = *(v96 + 252), *(v96 + 252) = v95, !*(this + 1430)) && !*(this + 2898) && !*(this + 2899) || (result = CAHDec::addToPatcherList(this, this + 1430, 252, 0, 0xFFFFFFFFLL, 8, v97, 4), !result))
                  {
                    if ((*(*(this + 33) + 256) = 0, v98 = *(this + 33), v99 = *(v98 + 256), *(v98 + 256) = 0, *(*(this + 33) + 256) ^= 0xFFFFFFu, v100 = *(this + 33), v101 = *(v100 + 256), *(v100 + 256) = v99, !*(this + 1452)) && !*(this + 2942) && !*(this + 2943) || (result = CAHDec::addToPatcherList(this, this + 1452, 256, 0, 0xFFFFFFFFLL, 8, v101, 4), !result))
                    {
                      *(*(this + 33) + 260) = 0;
                      *(*(this + 33) + 264) = 0;
                      *(*(this + 33) + 268) = 0;
                      *(*(this + 33) + 272) = 0;
                      v106 = *(this + 33);
                      if (*(*(this + 32) + 2648) == 1)
                      {
                        v107 = *(v106 + 264);
                        *(v106 + 264) = 0;
                        *(*(this + 33) + 264) ^= 0x1FFFFFFu;
                        v108 = *(this + 33);
                        v109 = *(v108 + 264);
                        *(v108 + 264) = v107;
                        v111 = (v291 + 8);
                        v110 = *(v291 + 8);
                        if (v290)
                        {
                          if (v110 || *(v291 + 160) || *(v291 + 164))
                          {
                            result = CAHDec::addToPatcherList(this, (v291 + 8), 264, *(v291 + 68), 0xFFFFFFFFLL, 7, v109, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v112 = *(this + 33);
                          v113 = *(v112 + 260);
                          *(v112 + 260) = 0;
                          *(*(this + 33) + 260) ^= 0x1FFFFFFu;
                          v114 = *(this + 33);
                          v115 = *(v114 + 260);
                          *(v114 + 260) = v113;
                          if (*v111 || *(v291 + 160) || *(v291 + 164))
                          {
                            result = CAHDec::addToPatcherList(this, v111, 260, *(v291 + 80), 0xFFFFFFFFLL, 7, v115, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          if (!v286)
                          {
                            goto LABEL_151;
                          }

                          v116 = *(this + 33);
                          v117 = *(v116 + 272);
                          *(v116 + 272) = 0;
                          *(*(this + 33) + 272) ^= 0x1FFFFFFu;
                          v118 = *(this + 33);
                          v119 = *(v118 + 272);
                          *(v118 + 272) = v117;
                          if (*v289 || *(v289 + 152) || *(v289 + 156))
                          {
                            result = CAHDec::addToPatcherList(this, v289, 272, *(v289 + 56), 0xFFFFFFFFLL, 7, v119, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v120 = *(this + 33);
                          v121 = *(v120 + 268);
                          *(v120 + 268) = 0;
                          *(*(this + 33) + 268) ^= 0x1FFFFFFu;
                          v122 = *(this + 33);
                          v123 = *(v122 + 268);
                          *(v122 + 268) = v121;
                          if (!*v289 && !*(v289 + 152) && !*(v289 + 156))
                          {
                            goto LABEL_151;
                          }

                          v124 = v289;
                          v125 = *(v289 + 68);
                          v126 = this;
                        }

                        else
                        {
                          if (v110 || *(v291 + 160) || *(v291 + 164))
                          {
                            result = CAHDec::addToPatcherList(this, (v291 + 8), 264, *(v291 + 60), 0xFFFFFFFFLL, 7, v109, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v144 = *(this + 33);
                          v145 = *(v144 + 272);
                          *(v144 + 272) = 0;
                          *(*(this + 33) + 272) ^= 0x1FFFFFFu;
                          v146 = *(this + 33);
                          v147 = *(v146 + 272);
                          *(v146 + 272) = v145;
                          if (*v111 || *(v291 + 160) || *(v291 + 164))
                          {
                            result = CAHDec::addToPatcherList(this, v111, 272, *(v291 + 64), 0xFFFFFFFFLL, 7, v147, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v148 = *(this + 33);
                          v149 = *(v148 + 260);
                          *(v148 + 260) = 0;
                          *(*(this + 33) + 260) ^= 0x1FFFFFFu;
                          v150 = *(this + 33);
                          v151 = *(v150 + 260);
                          *(v150 + 260) = v149;
                          if (*v111 || *(v291 + 160) || *(v291 + 164))
                          {
                            result = CAHDec::addToPatcherList(this, v111, 260, *(v291 + 72), 0xFFFFFFFFLL, 7, v151, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v152 = *(this + 33);
                          v153 = *(v152 + 268);
                          *(v152 + 268) = 0;
                          *(*(this + 33) + 268) ^= 0x1FFFFFFu;
                          v154 = *(this + 33);
                          v123 = *(v154 + 268);
                          *(v154 + 268) = v153;
                          if (!*v111 && !*(v291 + 160) && !*(v291 + 164))
                          {
                            goto LABEL_151;
                          }

                          v125 = *(v291 + 76);
                          v126 = this;
                          v124 = (v291 + 8);
                        }

                        v143 = 268;
                      }

                      else
                      {
                        v127 = *(v106 + 260);
                        *(v106 + 260) = 0;
                        *(*(this + 33) + 260) ^= 0x1FFFFFFu;
                        v128 = *(this + 33);
                        v129 = *(v128 + 260);
                        *(v128 + 260) = v127;
                        v130 = (this + 176 * v292 + 528);
                        if (*v130 || *(this + 44 * v292 + 170) || *(this + 44 * v292 + 171))
                        {
                          result = CAHDec::addToPatcherList(this, v130, 260, 0, 0xFFFFFFFFLL, 7, v129, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v131 = *(this + 33);
                        v132 = *(v131 + 264);
                        *(v131 + 264) = 0;
                        *(*(this + 33) + 264) ^= 0x1FFFFFFu;
                        v133 = *(this + 33);
                        v134 = *(v133 + 264);
                        *(v133 + 264) = v132;
                        if (*(v291 + 8) || *(v291 + 160) || *(v291 + 164))
                        {
                          result = CAHDec::addToPatcherList(this, (v291 + 8), 264, *(v291 + 60), 0xFFFFFFFFLL, 7, v134, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v135 = *(this + 33);
                        v136 = *(v135 + 268);
                        *(v135 + 268) = 0;
                        *(*(this + 33) + 268) ^= 0x1FFFFFFu;
                        v137 = *(this + 33);
                        v138 = *(v137 + 268);
                        *(v137 + 268) = v136;
                        v139 = (this + 176 * v292 + 3344);
                        if (*v139 || *(this + 44 * v292 + 874) || *(this + 44 * v292 + 875))
                        {
                          result = CAHDec::addToPatcherList(this, v139, 268, 0, 0xFFFFFFFFLL, 7, v138, 4);
                          if (result)
                          {
                            return result;
                          }
                        }

                        v140 = *(this + 33);
                        v141 = *(v140 + 272);
                        *(v140 + 272) = 0;
                        *(*(this + 33) + 272) ^= 0x1FFFFFFu;
                        v142 = *(this + 33);
                        v123 = *(v142 + 272);
                        *(v142 + 272) = v141;
                        if (!*(v291 + 8) && !*(v291 + 160) && !*(v291 + 164))
                        {
                          goto LABEL_151;
                        }

                        v125 = *(v291 + 64);
                        v126 = this;
                        v124 = (v291 + 8);
                        v143 = 272;
                      }

                      result = CAHDec::addToPatcherList(v126, v124, v143, v125, 0xFFFFFFFFLL, 7, v123, 4);
                      if (result)
                      {
                        return result;
                      }

LABEL_151:
                      if (!(*(v14 + 76) & 0x2000 | v288))
                      {
                        *(v14 + 76) |= 0x2000u;
                        *(this + v292 + 116) = 1;
                        *(*(this + 33) + 276) = 0;
                        goto LABEL_223;
                      }

                      *(this + v292 + 116) = 0;
                      *(*(this + 33) + 276) = 0;
                      if (!v288)
                      {
LABEL_223:
                        *(*(this + 33) + 436) = 0;
                        *(*(this + 33) + 440) = 0;
                        *(*(this + 33) + 444) = 0;
                        *(*(this + 33) + 448) = 0;
                        if (!v295)
                        {
                          goto LABEL_284;
                        }

                        v220 = *(this + 32);
                        if (v285 && v284 == 2)
                        {
                          v221 = *(*(v220 + 8248) + 60);
                          v222 = *(this + 33);
                          v223 = *(v222 + 436);
                          *(v222 + 436) = 0;
                          *(*(this + 33) + 436) ^= 0xFFFFFFu;
                          v224 = *(this + 33);
                          v225 = *(v224 + 436);
                          *(v224 + 436) = v223;
                          v226 = *(*(this + 32) + 8248);
                          if (*v226 || *(v226 + 152) || *(v226 + 156))
                          {
                            result = CAHDec::addToPatcherList(this, v226, 436, v221, 0xFFFFFFFFLL, 8, v225, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v227 = *(this + 33);
                          v228 = *(v227 + 444);
                          *(v227 + 444) = 0;
                          *(*(this + 33) + 444) ^= 0xC0000000;
                          v229 = *(this + 33);
                          v230 = *(v229 + 444);
                          *(v229 + 444) = v228;
                          v231 = *(*(this + 32) + 8248);
                          if (*v231 || *(v231 + 152) || *(v231 + 156))
                          {
                            result = CAHDec::addToPatcherList(this, v231, 444, v221, 192, 6, v230, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          if (v286)
                          {
                            v232 = *(v289 + 56);
                            v233 = *(this + 33);
                            v234 = *(v233 + 440);
                            *(v233 + 440) = 0;
                            *(*(this + 33) + 440) ^= 0xFFFFFFu;
                            v235 = *(this + 33);
                            v236 = *(v235 + 440);
                            *(v235 + 440) = v234;
                            if (*v289 || *(v289 + 152) || *(v289 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v289, 440, v232, 0xFFFFFFFFLL, 8, v236, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v237 = *(this + 33);
                            v238 = *(v237 + 448);
                            *(v237 + 448) = 0;
                            *(*(this + 33) + 448) ^= 0xC0000000;
                            v239 = *(this + 33);
                            v240 = *(v239 + 448);
                            *(v239 + 448) = v238;
                            if (*v289 || *(v289 + 152) || *(v289 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v289, 448, v232, 192, 6, v240, 4);
                              if (result)
                              {
                                return result;
                              }
                            }
                          }

                          if (v283)
                          {
                            *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF));
                            if (!v286)
                            {
                              goto LABEL_284;
                            }

                            v241 = v289;
                            goto LABEL_246;
                          }

                          if (!CAHDecClaryHevc::getSWRStride(this, *(v14 + 148) - *(v14 + 144) + 1, *(v15 + 3636), *(v15 + 3640), *(v15 + 22852)))
                          {
                            *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(this + 2956) >> 6) & 0xFFF));
                            if (!v286)
                            {
                              goto LABEL_284;
                            }

                            goto LABEL_282;
                          }

                          return 0xFFFFFFFFLL;
                        }

                        v243 = *(v220 + 2892);
                        if (*(v220 + 2892))
                        {
                          v244 = *(v220 + 2904);
                          v243 = *(v220 + 2908);
                        }

                        else
                        {
                          v244 = 0;
                        }

                        v245 = *(v220 + 8248);
                        v246 = *(v245 + 52);
                        v247 = v246 + v244;
                        if (__CFADD__(v246, v244))
                        {
                          v248 = 1;
                        }

                        else
                        {
                          v249 = *(v245 + 56);
                          v250 = v249 + v243;
                          if (!__CFADD__(v249, v243))
                          {
                            v255 = *(this + 33);
                            v256 = *(v255 + 436);
                            *(v255 + 436) = 0;
                            *(*(this + 33) + 436) ^= 0xFFFFFFu;
                            v257 = *(this + 33);
                            v258 = *(v257 + 436);
                            *(v257 + 436) = v256;
                            v259 = *(*(this + 32) + 8248);
                            if (*v259 || *(v259 + 152) || *(v259 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v259, 436, v247, 0xFFFFFFFFLL, 8, v258, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v260 = *(this + 33);
                            v261 = *(v260 + 440);
                            *(v260 + 440) = 0;
                            *(*(this + 33) + 440) ^= 0xFFFFFFu;
                            v262 = *(this + 33);
                            v263 = *(v262 + 440);
                            *(v262 + 440) = v261;
                            v264 = *(*(this + 32) + 8248);
                            if (*v264 || *(v264 + 152) || *(v264 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v264, 440, v250, 0xFFFFFFFFLL, 8, v263, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v265 = *(this + 33);
                            v266 = *(v265 + 444);
                            *(v265 + 444) = 0;
                            *(*(this + 33) + 444) ^= 0xC0000000;
                            v267 = *(this + 33);
                            v268 = *(v267 + 444);
                            *(v267 + 444) = v266;
                            v269 = *(*(this + 32) + 8248);
                            if (*v269 || *(v269 + 152) || *(v269 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v269, 444, v247, 192, 6, v268, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v270 = *(this + 33);
                            v271 = *(v270 + 448);
                            *(v270 + 448) = 0;
                            *(*(this + 33) + 448) ^= 0xC0000000;
                            v272 = *(this + 33);
                            v273 = *(v272 + 448);
                            *(v272 + 448) = v271;
                            v274 = *(*(this + 32) + 8248);
                            if (*v274 || *(v274 + 152) || *(v274 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v274, 448, v250, 192, 6, v273, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            if (v283)
                            {
                              *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF));
                              v241 = *(*(this + 32) + 8248);
LABEL_246:
                              v242 = (v241 + 80);
LABEL_283:
                              *(*(this + 33) + 448) = *(*(this + 33) + 448) & 0xFFFF8003 | (4 * ((*v242 >> 6) & 0x1FFF));
LABEL_284:
                              if (*(v20 + 52))
                              {
                                v275 = 0;
                                v276 = *(v20 + 56) + 1;
                                v277 = *(this + 33);
                                *(v277 + 452) = v276;
                                do
                                {
                                  *(v277 + 456 + 2 * v275) = *(v20 + 9676 + 4 * v275);
                                  v278 = v275++ >= v276;
                                }

                                while (!v278);
                                v279 = 0;
                                v280 = *(v20 + 60) + 1;
                                *(v277 + 454) = v280;
                                v281 = v277 + 498;
                                do
                                {
                                  result = 0;
                                  *(v281 + 2 * v279) = *(v20 + 9760 + 4 * v279);
                                  v278 = v279++ >= v280;
                                }

                                while (!v278);
                              }

                              else
                              {
                                result = 0;
                                v282 = *(this + 33);
                                *(v282 + 452) = 65537;
                                *(v282 + 456) = 0;
                                *(v282 + 458) = *(v15 + 22880);
                                *(v282 + 498) = 0;
                                *(v282 + 500) = *(v15 + 22888);
                              }

                              return result;
                            }

                            if (!CAHDecClaryHevc::getSWRStride(this, *(v14 + 148) - *(v14 + 144) + 1, *(v15 + 3636), *(v15 + 3640), *(v15 + 22852)))
                            {
                              *(*(this + 33) + 444) = *(*(this + 33) + 444) & 0xFFFFC003 | (4 * ((*(this + 2956) >> 6) & 0xFFF));
LABEL_282:
                              v242 = (this + 11828);
                              goto LABEL_283;
                            }

                            return 0xFFFFFFFFLL;
                          }

                          v248 = 2;
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315394;
                          *&buf[4] = "populatePictureRegisters";
                          v298 = 1024;
                          v299 = v248;
                          v251 = MEMORY[0x277D86220];
                          v252 = "AppleAVD: %s(): failKind = %d";
                          v253 = buf;
                          v254 = 18;
LABEL_258:
                          _os_log_impl(&dword_277606000, v251, OS_LOG_TYPE_DEFAULT, v252, v253, v254);
                        }

                        return 0xFFFFFFFFLL;
                      }

                      v155 = 0;
                      if (v293)
                      {
                        v156 = 0x2000000;
                      }

                      else
                      {
                        v156 = 0;
                      }

                      v157 = v302;
                      v158 = v301;
                      v294 = v300;
                      while (1)
                      {
                        v159 = *v157;
                        if (!*v157 || !*(v159 + 48))
                        {
                          return 0xFFFFFFFFLL;
                        }

                        v160 = *(v159 + 44);
                        if ((*(**(this + 32) + 184))(*(this + 32)))
                        {
                          v161 = *(this + 32);
                          if (v161[689])
                          {
                            *buf = 0;
                            if (((*(*v161 + 312))(v161, v160, buf) & 1) == 0)
                            {
                              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                              {
                                return 0xFFFFFFFFLL;
                              }

                              v296 = 0;
                              v251 = MEMORY[0x277D86220];
                              v252 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                              v253 = &v296;
                              v254 = 2;
                              goto LABEL_258;
                            }

                            *(v159 + 48) = *buf + 8;
                          }
                        }

                        *(*(this + 33) + v155 + 276) = 0;
                        *(*(this + 33) + v155 + 276) = *(*(this + 33) + v155 + 276) & 0xFFFFFFF | ((v288 << 28) - 0x10000000);
                        *(*(this + 33) + v155 + 276) &= 0xF3FFFFFF;
                        *(*(this + 33) + v155 + 276) = *(*(this + 33) + v155 + 276) & 0xFDFFFFFF | v156;
                        *(*(this + 33) + v155 + 276) |= 0x1000000u;
                        v162 = v287 - *(v159 + 12);
                        v163 = v162 & 0x1FFFF;
                        if (v162 < -32768)
                        {
                          v163 = 98304;
                        }

                        if (v162 <= 0x8000)
                        {
                          v164 = v163;
                        }

                        else
                        {
                          v164 = 0x8000;
                        }

                        *(*(this + 33) + v155 + 276) = *(*(this + 33) + v155 + 276) & 0xFFFE0000 | v164;
                        *(*(this + 33) + v155 + 276) = *(*(this + 33) + v155 + 276) & 0xFFFDFFFF | ((*(v159 + 20) == 2) << 17);
                        *(*(this + 33) + v155 + 308) = 0;
                        *(*(this + 33) + v155 + 340) = 0;
                        *(*(this + 33) + v155 + 372) = 0;
                        *(*(this + 33) + v155 + 404) = 0;
                        v165 = *(this + 33);
                        if (*(*(this + 32) + 2648) == 1)
                        {
                          v166 = v155 + 340;
                          v167 = v165 + v155;
                          v168 = *(v167 + 340);
                          *(v167 + 340) = 0;
                          *(*(this + 33) + v155 + 340) ^= 0x1FFFFFFu;
                          v169 = *(this + 33) + v155;
                          v170 = *(v169 + 340);
                          *(v169 + 340) = v168;
                          v171 = *(v159 + 48);
                          v172 = *v171;
                          if (v290)
                          {
                            if (v172 || *(v171 + 38) || *(v171 + 39))
                            {
                              result = CAHDec::addToPatcherList(this, v171, v166, *(v171 + 15), 0xFFFFFFFFLL, 7, v170, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v173 = *(this + 33) + v155;
                            v174 = *(v173 + 308);
                            *(v173 + 308) = 0;
                            *(*(this + 33) + v155 + 308) ^= 0x1FFFFFFu;
                            v175 = *(this + 33) + v155;
                            v176 = *(v175 + 308);
                            *(v175 + 308) = v174;
                            v177 = *(v159 + 48);
                            if (*v177 || *(v177 + 152) || *(v177 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v177, v155 + 308, *(v177 + 72), 0xFFFFFFFFLL, 7, v176, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            if (v286)
                            {
                              v178 = *(this + 33) + v155;
                              v179 = *(v178 + 404);
                              *(v178 + 404) = 0;
                              *(*(this + 33) + v155 + 404) ^= 0x1FFFFFFu;
                              v180 = *(this + 33) + v155;
                              v181 = *(v180 + 404);
                              *(v180 + 404) = v179;
                              if (*v289 || *(v289 + 152) || *(v289 + 156))
                              {
                                result = CAHDec::addToPatcherList(this, v289, v155 + 404, *(v289 + 56), 0xFFFFFFFFLL, 7, v181, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }

                              v182 = *(this + 33) + v155;
                              v183 = *(v182 + 372);
                              *(v182 + 372) = 0;
                              *(*(this + 33) + v155 + 372) ^= 0x1FFFFFFu;
                              v184 = *(this + 33) + v155;
                              v185 = *(v184 + 372);
                              *(v184 + 372) = v183;
                              if (*v289 || *(v289 + 152) || *(v289 + 156))
                              {
                                v186 = v155 + 372;
                                v187 = v289;
LABEL_220:
                                v206 = *(v187 + 68);
LABEL_221:
                                result = CAHDec::addToPatcherList(this, v187, v186, v206, 0xFFFFFFFFLL, 7, v185, 4);
                                if (result)
                                {
                                  return result;
                                }
                              }
                            }
                          }

                          else
                          {
                            if (v172 || *(v171 + 38) || *(v171 + 39))
                            {
                              result = CAHDec::addToPatcherList(this, v171, v166, *(v171 + 13), 0xFFFFFFFFLL, 7, v170, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v207 = *(this + 33) + v155;
                            v208 = *(v207 + 404);
                            *(v207 + 404) = 0;
                            *(*(this + 33) + v155 + 404) ^= 0x1FFFFFFu;
                            v209 = *(this + 33) + v155;
                            v210 = *(v209 + 404);
                            *(v209 + 404) = v208;
                            v211 = *(v159 + 48);
                            if (*v211 || *(v211 + 152) || *(v211 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v211, v155 + 404, *(v211 + 56), 0xFFFFFFFFLL, 7, v210, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v212 = *(this + 33) + v155;
                            v213 = *(v212 + 308);
                            *(v212 + 308) = 0;
                            *(*(this + 33) + v155 + 308) ^= 0x1FFFFFFu;
                            v214 = *(this + 33) + v155;
                            v215 = *(v214 + 308);
                            *(v214 + 308) = v213;
                            v216 = *(v159 + 48);
                            if (*v216 || *(v216 + 152) || *(v216 + 156))
                            {
                              result = CAHDec::addToPatcherList(this, v216, v155 + 308, *(v216 + 64), 0xFFFFFFFFLL, 7, v215, 4);
                              if (result)
                              {
                                return result;
                              }
                            }

                            v217 = *(this + 33) + v155;
                            v218 = *(v217 + 372);
                            *(v217 + 372) = 0;
                            *(*(this + 33) + v155 + 372) ^= 0x1FFFFFFu;
                            v219 = *(this + 33) + v155;
                            v185 = *(v219 + 372);
                            *(v219 + 372) = v218;
                            v187 = *(v159 + 48);
                            if (*v187 || *(v187 + 152) || *(v187 + 156))
                            {
                              v186 = v155 + 372;
                              goto LABEL_220;
                            }
                          }
                        }

                        else
                        {
                          v188 = v165 + v155;
                          v189 = *(v188 + 308);
                          *(v188 + 308) = 0;
                          *(*(this + 33) + v155 + 308) ^= 0x1FFFFFFu;
                          v190 = *(this + 33) + v155;
                          v191 = *(v190 + 308);
                          *(v190 + 308) = v189;
                          v192 = *v158;
                          if (**v158 || *(v192 + 38) || *(v192 + 39))
                          {
                            result = CAHDec::addToPatcherList(this, v192, v155 + 308, 0, 0xFFFFFFFFLL, 7, v191, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v193 = *(this + 33) + v155;
                          v194 = *(v193 + 340);
                          *(v193 + 340) = 0;
                          *(*(this + 33) + v155 + 340) ^= 0x1FFFFFFu;
                          v195 = *(this + 33) + v155;
                          v196 = *(v195 + 340);
                          *(v195 + 340) = v194;
                          v197 = *(v159 + 48);
                          if (*v197 || *(v197 + 152) || *(v197 + 156))
                          {
                            result = CAHDec::addToPatcherList(this, v197, v155 + 340, *(v197 + 52), 0xFFFFFFFFLL, 7, v196, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v198 = *(this + 33) + v155;
                          v199 = *(v198 + 372);
                          *(v198 + 372) = 0;
                          *(*(this + 33) + v155 + 372) ^= 0x1FFFFFFu;
                          v200 = *(this + 33) + v155;
                          v201 = *(v200 + 372);
                          *(v200 + 372) = v199;
                          v202 = *v294;
                          if (**v294 || *(v202 + 38) || *(v202 + 39))
                          {
                            result = CAHDec::addToPatcherList(this, v202, v155 + 372, 0, 0xFFFFFFFFLL, 7, v201, 4);
                            if (result)
                            {
                              return result;
                            }
                          }

                          v203 = *(this + 33) + v155;
                          v204 = *(v203 + 404);
                          *(v203 + 404) = 0;
                          *(*(this + 33) + v155 + 404) ^= 0x1FFFFFFu;
                          v205 = *(this + 33) + v155;
                          v185 = *(v205 + 404);
                          *(v205 + 404) = v204;
                          v187 = *(v159 + 48);
                          if (*v187 || *(v187 + 152) || *(v187 + 156))
                          {
                            v186 = v155 + 404;
                            v206 = *(v187 + 56);
                            goto LABEL_221;
                          }
                        }

                        v155 += 4;
                        ++v157;
                        ++v158;
                        ++v294;
                        if (4 * v288 == v155)
                        {
                          goto LABEL_223;
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

uint64_t CAHDecSalviaHevc::getTileIdxAbove(CAHDecSalviaHevc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 452);
  if (a2 % v2)
  {
    v3 = v2 > a2;
  }

  else
  {
    v3 = 1;
  }

  v4 = a2 % v2 + (a2 / v2 - 1) * v2;
  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4;
  }
}

uint64_t CAHDecSalviaHevc::populateAvdWork(CAHDecSalviaHevc *this, unsigned int a2)
{
  v2 = this;
  v118[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v4 = *(this + 33);
  v5 = *(v3 + 8208);
  v6 = *(v3 + 8212);
  v7 = *(v3 + 8168);
  v8 = *(v3 + 8176);
  v84 = *(v3 + 8184);
  v9 = *(v3 + 8924);
  v10 = *(v3 + 2960);
  v11 = *(v3 + 2964);
  v12 = v8 + 9856 * v6;
  v98 = v4 + 213740;
  v118[0] = v4 + 213740;
  v118[1] = v4 + 303852;
  v117 = 0;
  v86 = v7 + 23176 * v5;
  v82 = v4;
  if (v9)
  {
    if (*(v12 + 53))
    {
      v14 = *(v86 + 22888) > 1u;
    }

    else
    {
      v14 = 0;
    }

    v13 = v14 && v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  v96 = *(v4 + 454) * *(v4 + 452);
  if ((v9 & 2) != 0 && *(v12 + 52))
  {
    if (*(v12 + 53) | v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = v96 > 1;
    }

    v17 = v16;
    v110 = v17;
  }

  else
  {
    v110 = 0;
  }

  v81 = v4 + 303852;
  if ((v9 & 0x20) != 0 && !*(v12 + 53))
  {
    v18 = *(v86 + 22888);
    if (*(v12 + 52) | v11)
    {
      v67 = 0;
    }

    else
    {
      v67 = v10 > 1;
    }

    v68 = v67;
    v94 = v68;
  }

  else
  {
    v18 = *(v86 + 22888);
    v94 = 0;
  }

  v19 = 0;
  v20 = *(v86 + 22880);
  v100 = v12;
  if (((v9 & 4) == 0) | (v13 | v110) & 1)
  {
    v21 = v4 + 213740;
  }

  else
  {
    v21 = v4 + 213740;
    if ((v94 & 1) == 0)
    {
      v19 = *(*(this + *(this + 13) + 34) + 16) & 1;
      v21 = v118[v19];
    }
  }

  v22 = 0;
  v108 = 0;
  v23 = 0;
  v103 = 0;
  v24 = 0;
  v113 = 0;
  v25 = 0;
  v109 = 0;
  v104 = 0;
  v85 = 0;
  v90 = 0;
  v99 = 0;
  v107 = 0x2E8BA2E8BA2E8BA3 * ((v21 - v98) >> 2);
  v114 = 0;
  v115 = 0;
  if (v13)
  {
    v26 = 12;
  }

  else
  {
    v26 = 4;
  }

  v92 = v26;
  v93 = a2 - 1;
  v88 = v18 - 1;
  v89 = v18;
  v87 = v18 - 2;
  v95 = v4 + 2884;
  v101 = v20;
  do
  {
    v27 = v84 + 2360 * v22;
    if (!((*(v100 + 52) != 0) | v13 & 1))
    {
      v30 = 1;
LABEL_39:
      v31 = 0;
      v91 = 0;
      v97 = 352 * v22;
      v105 = v30;
      v106 = v84 + 2360 * v22;
      v102 = v22;
      while (1)
      {
        if (!(v31 | v22))
        {
          v36 = v2;
          v37 = v27;
          v38 = v13;
          *(v21 + 4) = 0;
          v39 = v19;
          *(v21 + 6) = v19;
          *(v21 + 8) = 0;
          *(v21 + 12) = 0;
          v103 = *(v95 + v97);
          if (!(*(**(v36 + 32) + 440))())
          {
            return 0xFFFFFFFFLL;
          }

          v40 = *(v37 + 36);
          *(v21 + 28) = v40;
          *(v21 + 32) = v40;
          v41 = (*(*v36 + 80))(v36, v23, v20);
          v24 = 0;
          *(v21 + 40) = v41;
          v42 = 271;
          v19 = v39;
          v13 = v38;
          v27 = v37;
          goto LABEL_132;
        }

        v111 = v19;
        v32 = v13;
        if (v31)
        {
          v33 = *(*(v27 + 1904) + 4 * v31 - 4) + 1;
          if (*(v100 + 52))
          {
            if (*(v100 + 53))
            {
              v34 = *(v86 + 22880);
              v35 = (v34 + v113) / v34;
              v33 += v91;
              if (v35 >= *(*(v2 + 33) + 2 * (HIDWORD(v85) + 1) + 498))
              {
                v113 = (*(*v2 + 72))(v2, (v23 + 1), v101);
                v91 = 0;
                v25 = v92;
              }

              else
              {
                v113 = v90 + v35 * v34;
                if (!v32)
                {
                  v91 = v33;
                  v13 = v32;
                  v20 = v101;
                  goto LABEL_133;
                }

                v91 = 0;
                if (v35 == v85 + 1)
                {
                  v25 = 72;
                }

                else
                {
                  v25 = 8;
                }
              }
            }

            else
            {
              v113 = (*(*v2 + 72))(v2, (v23 + 1), v101);
              v25 = 4;
            }
          }

          else if (v32)
          {
            v113 = (*(v86 + 22880) + v113) / *(v86 + 22880) * *(v86 + 22880);
            v25 = 8;
          }

          v49 = v115;
          if (*v115 || *(v115 + 152) || *(v115 + 156))
          {
            v50 = v114;
            if ((v114 + v24) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0]) = 136315394;
              *(buf + 4) = "populateAvdWork";
              WORD2(buf[1]) = 1024;
              *(&buf[1] + 6) = 1543;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
              v50 = v114;
            }

            v51 = v24 + v50;
            v2 = this;
            result = CAHDec::addToPatcherList(this, v49, 44 * v107 + 213760, v51, 0xFFFFFFFFLL, 0, -1, 4);
            if (result)
            {
              return result;
            }
          }

          *(v21 + 24) = v33;
          v24 += v33;
          v13 = v32;
        }

        else
        {
          v43 = v115;
          if (*v115 || *(v115 + 152) || *(v115 + 156))
          {
            v44 = v114;
            if ((v114 + v24) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf[0]) = 136315394;
              *(buf + 4) = "populateAvdWork";
              WORD2(buf[1]) = 1024;
              *(&buf[1] + 6) = 1472;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
              v44 = v114;
            }

            result = CAHDec::addToPatcherList(v2, v43, 44 * v107 + 213760, v24 + v44, 0xFFFFFFFFLL, 0, -1, 4);
            if (result)
            {
              return result;
            }
          }

          *(v21 + 24) = v103 - v24;
          v46 = *(v95 + v97);
          if (!(*(**(v2 + 32) + 440))(*(v2 + 32), v102, &v115, &v114))
          {
            return 0xFFFFFFFFLL;
          }

          v103 = v46;
          v47 = *(v27 + 36);
          if (*(v27 + 32))
          {
            v25 = 2;
          }

          else
          {
            v25 = 258;
          }

          v13 = v32;
          v113 = *(v27 + 36);
          if (v32)
          {
            v20 = v101;
            if (v47 % v101 == v90)
            {
              v24 = 0;
              if (v47 / v101 == v85 + 1)
              {
                v48 = 72;
              }

              else
              {
                v48 = 8;
              }

              v25 |= v48;
            }

            else
            {
              v24 = 0;
            }

            goto LABEL_82;
          }

          v24 = 0;
        }

        v20 = v101;
LABEL_82:
        v52 = v23 + 1;
        if (v23 + 1 < v96)
        {
          v53 = (*(*v2 + 72))(v2, (v23 + 1), v20);
          v54 = v92;
          if (v113 != v53)
          {
            v54 = 0;
          }

          v25 |= v54;
        }

        *(v21 + 16) = v25;
        if (v108 == v93)
        {
          *(v21 + 18) |= 2u;
        }

        if (v23 == v96 - 1)
        {
          *(v21 + 18) |= 4u;
        }

        v55 = v110;
        if (v23 != v96 - 2)
        {
          v55 = 0;
        }

        if (v55 == 1)
        {
          *(v21 + 18) |= 4u;
        }

        if (v13)
        {
          v56 = *(v21 + 10);
          v57 = v89 > 1 && v87 == v56;
          v58 = v57;
          if (v88 == v56 || v58)
          {
            *(v21 + 18) |= 8u;
          }
        }

        if ((v25 & 4) != 0)
        {
          if (*(v100 + 52) && *(v100 + 53))
          {
            v59 = *(v2 + 33);
            v60 = *(v59 + 452);
            HIDWORD(v85) = v52 / v60;
            v90 = *(v59 + 2 * (v52 % v60) + 456);
            LODWORD(v85) = *(v59 + 2 * (v52 / v60) + 498);
            v99 = (v111 + v85) ^ 1;
          }

          v23 = (v23 + 1);
        }

        if ((v25 & 0x44) != 0 && v109 <= (*(*v2 + 88))(v2, v23))
        {
          v25 |= 0x20u;
        }

        if (!v31)
        {
          v61 = v104;
          if (!*(v106 + 32))
          {
            v61 = v113;
          }

          v104 = v61;
          v62 = v109;
          if (!*(v106 + 32))
          {
            v62 = v23;
          }

          v109 = v62;
        }

        if ((v25 & 0x44) != 0)
        {
          v63 = *(*(v2 + 33) + 452);
          if (v109 / v63 + 1 == v23 / v63)
          {
            v25 |= 0x10u;
          }
        }

        v64 = (v99 + (v113 / v20)) & 1;
        if (!v13)
        {
          v64 = v111;
        }

        if (v110)
        {
          v65 = v23 & 1;
        }

        else
        {
          v65 = v64;
        }

        ++*(&v118[-1] + v111);
        v118[v111] += 44;
        v66 = v94 ^ 1;
        if (v31)
        {
          v66 = 1;
        }

        if ((v66 & 1) == 0 && !*(v106 + 32))
        {
          v65 = v65 == 0;
        }

        v21 = v118[v65];
        v107 = 0x2E8BA2E8BA2E8BA3 * ((v21 - v98) >> 2);
        *(v21 + 4) = *(&v118[-1] + v65);
        *(v21 + 6) = v65;
        *(v21 + 8) = v102;
        *(v21 + 10) = v113 / v20;
        *(v21 + 12) = v23;
        *(v21 + 28) = v113;
        *(v21 + 32) = v104;
        *(v21 + 40) = (*(*this + 80))(this, v23, v20);
        v42 = v25;
        v19 = v65;
        v22 = v102;
        v108 = v102;
        v27 = v106;
LABEL_132:
        *(v21 + 14) = v42;
        v2 = this;
LABEL_133:
        if (v105 == ++v31)
        {
          goto LABEL_36;
        }
      }
    }

    v28 = *(v27 + 1896);
    v29 = __CFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      goto LABEL_39;
    }

LABEL_36:
    ++v22;
  }

  while (v22 != a2);
  v69 = v19;
  v70 = v115;
  if (!*v115 && !*(v115 + 152) && !*(v115 + 156))
  {
    goto LABEL_153;
  }

  v71 = v114;
  if ((v114 + v24) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "populateAvdWork";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = 1633;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v71 = v114;
  }

  v2 = this;
  result = CAHDec::addToPatcherList(this, v70, 44 * v107 + 213760, v24 + v71, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
LABEL_153:
    *(v21 + 24) = v103 - v24;
    *(v21 + 16) = 917519;
    ++*(&v118[-1] + v69);
    if (v94)
    {
      v72 = v98;
      buf[0] = v98;
      buf[1] = v81;
      v73 = *(v82 + 213748) + 1;
      if (v73 >= a2)
      {
        v74 = 0;
        v76 = buf;
      }

      else
      {
        v74 = 0;
        v75 = 0;
        v76 = buf;
        do
        {
          if (*(v72 + 4) + 1 == *(&v118[-1] + v74))
          {
            v75 = !v75;
            *(v72 + 36) = *(buf[v75] + 32);
          }

          else
          {
            if (v73 != *(v72 + 52))
            {
              v75 = !v75;
              *(v72 + 36) = *(buf[v75] + 32);
            }

            *v76 = v72 + 44;
          }

          v74 = v75;
          v76 = &buf[v75];
          v72 = *v76;
          v73 = *(*v76 + 8) + 1;
        }

        while (v73 < a2);
      }

      v77 = *(&v118[-1] + v74);
      if (*(v72 + 4) + 1 != v77)
      {
        do
        {
          v78 = *(v72 + 48);
          v72 += 44;
        }

        while (v78 + 1 != v77);
        *v76 = v72;
      }

      *(v72 + 36) = *(v72 + 40) + 1;
    }

    result = 0;
    v79 = *(v2 + 33);
    v80 = WORD2(v117);
    *(v79 + 28) = v117;
    *(v79 + 30) = v80;
    *(v79 + 32) = 213740;
    *(v79 + 36) = 303852;
  }

  return result;
}

uint64_t CAHDecSalviaHevc::allocWorkBuf_SPS(CAHDecSalviaHevc *this, _DWORD *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a2 + 5120;
  v5 = a2[902];
  v6 = a2[903];
  v7 = a2[900];
  if (v5 < (*(*this + 104))(this) || (v8 = a2[903], v8 < (*(*this + 112))(this)) || (v9 = a2[909], v9 > (*(*this + 120))(this) - 8) || (v10 = a2[910], v10 > (*(*this + 128))(this) - 8) || (v17 = v4[598], v17 - 16 > 0x30) || ((1 << (v17 - 16)) & 0x1000000010001) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = a2[902];
      v12 = a2[903];
      v13 = a2[909];
      v14 = a2[910];
      v15 = v4[598];
      v50 = 136316418;
      v51 = "allocWorkBuf_SPS";
      v52 = 1024;
      v53 = v11;
      v54 = 1024;
      *v55 = v12;
      *&v55[4] = 1024;
      *&v55[6] = v13;
      v56 = 1024;
      v57 = v14;
      v58 = 1024;
      v59 = v15;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): unsupported bit stream w %d h %d bd %d %d CtbSizeY %d\n", &v50, 0x2Au);
    }

    return 0xFFFFFFFFLL;
  }

  v18 = v5 + 31;
  if (v5 < -31)
  {
    v18 = v5 + 62;
  }

  v19 = v18 >> 5;
  v20 = v6 + 31;
  if (v6 < -31)
  {
    v20 = v6 + 62;
  }

  v21 = v20 >> 5;
  v22 = 32 - __clz(v19 - 1);
  if (v19 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = 32 - __clz(v21 - 1);
  if (v21 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = ((32 << (v25 + v23)) + 127) & 0xFFFFFF80;
  if (v7)
  {
    v27 = v5 << (v7 == 3);
    v28 = v27 + 31;
    v29 = v27 + 62;
    if (v28 >= 0)
    {
      v29 = v28;
    }

    v30 = v29 >> 5;
    if (v7 == 1)
    {
      v31 = v6 + 1;
    }

    else
    {
      v31 = v6;
    }

    v32 = v31 >> (v7 == 1);
    v34 = v32 + 15;
    v33 = v32 < -15;
    v35 = v32 + 30;
    if (!v33)
    {
      v35 = v34;
    }

    v36 = v35 >> 4;
    if (v30 > 1)
    {
      v37 = 32 - __clz(v30 - 1);
      goto LABEL_32;
    }
  }

  else
  {
    v36 = 0;
  }

  LOBYTE(v37) = 0;
LABEL_32:
  v38 = 32 - __clz(v36 - 1);
  if (v36 >= 2)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = ((8 << (v39 + v37)) + 127) & 0xFFFFFF80;
  if (!v7)
  {
    v40 = 0;
  }

  *(this + 2948) = v26;
  *(this + 2949) = v40;
  *(this + 1475) = 0;
  v41 = (v17 & 0xFFFFFFF0) * (v17 >> 4) * v4[600];
  *(this + 2954) = v41;
  *(this + 2953) = v4[602] * v41;
  if (*(*(this + 32) + 2648))
  {
LABEL_44:
    v46 = (this + 7568);
    v47 = 16;
    while (1)
    {
      v48 = *(this + 2953);
      if (v48)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v46, v48, 7, 1, 0))
        {
          break;
        }
      }

      result = 0;
      v46 += 11;
      if (!--v47)
      {
        return result;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    v50 = 136315650;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 1894;
    v54 = 2080;
    *v55 = "MvColo";
    v49 = MEMORY[0x277D86220];
  }

  else
  {
    v42 = (this + 3344);
    v43 = 16;
    while (1)
    {
      v44 = *(this + 2948);
      if (v44 && CAVDDecoder::allocAVDMem(*(this + 32), v42 - 176, v44, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 1885;
        v54 = 2080;
        *v55 = "HdrY";
        v49 = MEMORY[0x277D86220];
        goto LABEL_55;
      }

      v45 = *(this + 2949);
      if (v45)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v42, v45, 7, 1, 0))
        {
          break;
        }
      }

      v42 += 11;
      if (!--v43)
      {
        goto LABEL_44;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    v50 = 136315650;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 1886;
    v54 = 2080;
    *v55 = "HdrC";
    v49 = MEMORY[0x277D86220];
  }

LABEL_55:
  _os_log_impl(&dword_277606000, v49, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v50, 0x1Cu);
LABEL_56:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecSalviaHevc::allocWorkBuf_PPS(CAHDecSalviaHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = (a2[909] + 9) & 0xFFFFFFFE;
  v5 = (a2[910] + 9) & 0xFFFFFFFE;
  if (v4 <= v5)
  {
    v6 = (a2[910] + 9) & 0xFFFFFFFE;
  }

  else
  {
    v6 = (a2[909] + 9) & 0xFFFFFFFE;
  }

  v7 = a2[900];
  if (v6 == 10)
  {
    v8 = 40;
  }

  else
  {
    v8 = 48;
  }

  if (v6 == 8)
  {
    v8 = 32;
  }

  v9 = v7 != 3;
  if (*(a3 + 52))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = a2[1106] + a2[1105];
    v16 = a3[14];
    v17 = a2[5718];
    v18 = a2[902];
    do
    {
      v19 = a3[v10 + 17] + 1;
      v20 = v19 * v17;
      if (v19 * v17 + v13 > v18)
      {
        v20 = v18 - v13;
      }

      if (v11 <= v20)
      {
        v11 = v20;
      }

      if (v7)
      {
        v21 = (v19 << v15) >> v9;
        if (v16 == v10)
        {
          v21 = (((v18 >> 3) - (v14 << v15)) >> v9) + 1;
        }

        v12 += ((v21 + 2 * (v10 != 0)) * v8 + 127) & 0xFFFFFF80;
      }

      v13 += v20;
      v14 += v19;
      ++v10;
    }

    while (v16 + 1 != v10);
  }

  else
  {
    v18 = a2[902];
    v22 = (v8 + v8 * (v18 >> 3 >> v9) + 127) & 0x7FFFFF80;
    if (v7)
    {
      v12 = v22;
    }

    else
    {
      v12 = 0;
    }

    v11 = a2[902];
  }

  v23 = 0;
  v25 = *(this + 32);
  if (v11 >= -15)
  {
    v26 = v11 + 15;
  }

  else
  {
    v26 = v11 + 30;
  }

  v27 = a3[14];
  if (*(a3 + 52))
  {
    v28 = a3[14];
  }

  else
  {
    v28 = 0;
  }

  v67 = v28;
  if (v7 == 3)
  {
    v29 = 48;
  }

  else
  {
    v29 = 32;
  }

  if (v7 == 3)
  {
    v30 = 176;
  }

  else
  {
    v30 = 128;
  }

  if (!v7)
  {
    v29 = 16;
  }

  v31 = (v29 * v6) >> 3;
  if (!v7)
  {
    v30 = 80;
  }

  v65 = v26;
  v66 = v30;
  v32 = v26 >> 4;
  v33 = (v26 >> 4) * v31;
  v34 = 0;
  v35 = 0;
  if (!*(a3 + 52))
  {
    v59 = 0;
LABEL_84:
    v68 = v59;
    goto LABEL_85;
  }

  v68 = 0;
  if (v27)
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v23 = 0;
    v37 = 0;
    if (v7 == 1)
    {
      v38 = 144;
    }

    else
    {
      v38 = 192;
    }

    if (v7 == 1)
    {
      v39 = 24;
    }

    else
    {
      v39 = 32;
    }

    v40 = v7 == 0;
    if (v7)
    {
      v41 = v38;
    }

    else
    {
      v41 = 96;
    }

    v42 = (((v41 * v6) >> 3) + 7) & 0x3FFFFFF8;
    if (v40)
    {
      v43 = 16;
    }

    else
    {
      v43 = v39;
    }

    v44 = a2[903];
    v45 = v4 - 8;
    v46 = v5 - 8;
    if (v45 <= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = v45;
    }

    v48 = a3[15];
    v49 = a2[5718];
    v50 = (a3 + 37);
    v52 = *(v25 + 2644) == 1 && v47 != 0;
    do
    {
      v53 = v49 + v49 * *&v50[4 * v36];
      if (v53 + v37 > v44)
      {
        v53 = v44 - v37;
      }

      v54 = v53 + 15;
      if (v53 < -15)
      {
        v54 = v53 + 30;
      }

      if (v36)
      {
        v55 = (v54 >> 4) + 1;
      }

      else
      {
        v55 = v54 >> 4;
      }

      v56 = v55 * v42;
      if (v35 <= v56)
      {
        v35 = v56;
      }

      if (v34 <= (36 * (v54 >> 4)))
      {
        v34 = 36 * (v54 >> 4);
      }

      if (v52)
      {
        if (v48 == v36)
        {
          v57 = 23;
        }

        else
        {
          v57 = 15;
        }

        v58 = ((v57 + v53) / 16 * v43) | 6;
        if (v23 <= v58)
        {
          v23 = v58;
        }
      }

      v37 += v53;
      ++v36;
    }

    while (v48 + 1 != v36);
    v59 = (((3 * v6) & 0x7FFFFF) << 6) + (((v44 + 7) >> 3) + 2) * ((((v6 >> 1) & 0x1FFFFF) << 8) | 8);
    goto LABEL_84;
  }

LABEL_85:
  if (v33 && CAVDDecoder::allocAVDMem(v25, this + 649, v33, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2064;
      v73 = 2080;
      v74 = "IpAbove";
      v60 = MEMORY[0x277D86220];
LABEL_121:
      _os_log_impl(&dword_277606000, v60, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", buf, 0x1Cu);
      goto LABEL_122;
    }

    goto LABEL_122;
  }

  if ((v11 + 30) >= 0x1F && CAVDDecoder::allocAVDMem(*(this + 32), this + 462, 4 * (4 * v32 + (v65 >> 4)), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2065;
      v73 = 2080;
      v74 = "MvAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

LABEL_122:
    (*(*this + 160))(this, 0);
    return 0xFFFFFFFFLL;
  }

  v61 = v67 + ((v18 + 15) >> 4);
  v62 = v61 * ((((v66 * v6) >> 3) + 7) & 0x3FFFFFF8) + (v27 << 7);
  if (v62 && CAVDDecoder::allocAVDMem(*(this + 32), this + 660, v62, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2066;
      v73 = 2080;
      v74 = "LfAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  v63 = 36 * v61 + (v27 << 7);
  if (v63 && CAVDDecoder::allocAVDMem(*(this + 32), this + 671, v63, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2067;
      v73 = 2080;
      v74 = "LfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v35 && CAVDDecoder::allocAVDMem(*(this + 32), this + 682, v35, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2068;
      v73 = 2080;
      v74 = "LfLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v34 && CAVDDecoder::allocAVDMem(*(this + 32), this + 693, v34, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2069;
      v73 = 2080;
      v74 = "LfLeftInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v23 && CAVDDecoder::allocAVDMem(*(this + 32), this + 704, v23, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2070;
      v73 = 2080;
      v74 = "SwLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (v12 && CAVDDecoder::allocAVDMem(*(this + 32), this + 715, v12, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2071;
      v73 = 2080;
      v74 = "AZAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (!v68)
  {
    return 0;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 726, v68, 7, 1, 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v70 = "allocWorkBuf_PPS";
      v71 = 1024;
      v72 = 2072;
      v73 = 2080;
      v74 = "AZLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  return result;
}

uint64_t CAHDecSalviaHevc::freeWorkBuf_SPS(uint64_t this)
{
  v1 = this;
  if (!*(*(this + 256) + 2648))
  {
    v2 = (this + 3344);
    v3 = 16;
    do
    {
      if (*(v2 - 352))
      {
        this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v2 - 352);
        *(v2 - 352) = 0;
      }

      if (*v2)
      {
        this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v2);
        *v2 = 0;
      }

      v2 += 22;
      --v3;
    }

    while (v3);
  }

  v4 = (v1 + 7568);
  v5 = 16;
  do
  {
    if (*v4)
    {
      this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v4);
      *v4 = 0;
    }

    v4 += 22;
    --v5;
  }

  while (v5);
  return this;
}

uint64_t *CAHDecSalviaHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[1298])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 1298);
    v2[1298] = 0;
  }

  if (v2[924])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 924);
    v2[924] = 0;
  }

  if (v2[1320])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1320);
    v2[1320] = 0;
  }

  if (v2[1342])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1342);
    v2[1342] = 0;
  }

  if (v2[1364])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1364);
    v2[1364] = 0;
  }

  if (v2[1386])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1386);
    v2[1386] = 0;
  }

  if (v2[1408])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1408);
    v2[1408] = 0;
  }

  if (v2[1430])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1430);
    v2[1430] = 0;
  }

  if (v2[1452])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1452);
    v2[1452] = 0;
  }

  return this;
}

uint64_t CAHDecSalviaHevc::setVPInstrFifo(uint64_t this, int a2)
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

uint64_t createBorageAvxDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createBorageAvxDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Borage AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t createBorageHevcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createBorageHevcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Borage AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t createBorageAvcDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createBorageAvcDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Borage AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

uint64_t createBorageLghDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createBorageLghDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Borage AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

CAHDec *createHibiscusHevcDecoder(void *a1)
{
  v2 = operator new(0x3468uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_2886691B0;
    *(v3 + 32) = a1;
    *(v3 + 114) = 420540;
    *(v3 + 2) = 3132;
    *(v3 + 1) = xmmword_27775BBF0;
    *(v3 + 8) = 4;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x3230uLL);
  }

  return v3;
}

void CAHDecHibiscusHevc::~CAHDecHibiscusHevc(CAHDecHibiscusHevc *this)
{
  *this = &unk_2886691B0;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecHibiscusHevc::~CAHDecHibiscusHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecHibiscusHevc::init(CAHDecHibiscusHevc *this)
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

uint64_t CAHDecHibiscusHevc::initPicture(CAHDecHibiscusHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 420540;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x66ABCuLL);
    v7 = *(this + *(this + 13) + 34);
    *(v7 + 16) = a2;
    *(v7 + 24) = 257;
    *(v7 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 3351) = 0;
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

uint64_t CAHDecHibiscusHevc::populateSlices(CAHDecHibiscusHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 3132;
    v5 = a2;
    do
    {
      CAHDecHibiscusHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 368;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecHibiscusHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
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
  if (*(v7 + 44) > 1u)
  {
    goto LABEL_31;
  }

  if (!*(v7 + 2344))
  {
    goto LABEL_31;
  }

  if (*(a1 + 13404))
  {
    goto LABEL_31;
  }

  (*(**(a1 + 256) + 352))(*(a1 + 256), a3);
  v27 = *(a1 + 256);
  if (*(v27 + 8920))
  {
    goto LABEL_31;
  }

  *(a1 + 13404) = 1;
  *(a2 + 4) |= 0x40000u;
  v95 = 368 * a3;
  if (!*(v27 + 8744) && !*(v27 + 8896) && !*(v27 + 8900))
  {
    goto LABEL_147;
  }

  result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3468, 0, 0xFFFFFFFFLL, 8, -256, 4);
  if (result)
  {
    return result;
  }

  if (!*(v27 + 8744))
  {
LABEL_147:
    if (!*(v27 + 8896) && !*(v27 + 8900))
    {
      goto LABEL_31;
    }
  }

  result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3496, 0, 0x3FFFFFFFFFFLL, 32, 1023, 4);
  if (!result)
  {
LABEL_31:
    *(a2 + 4) = *(a2 + 4) & 0x77FFFF | 0x2D000000;
    (*(**(a1 + 256) + 360))(*(a1 + 256), 0, a3);
    v28 = *(v7 + 44);
    if (v28 > 1)
    {
      goto LABEL_41;
    }

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
    v85 = *(v84 + 2504);
    if (*(v84 + 2360) == 1)
    {
      v96 = 0;
      v97 = 0;
      if ((*(*v84 + 440))(v84, a3, &v97, &v96))
      {
        v86 = 368 * a3;
        *(a2 + 340) = 0;
        v87 = v97;
        if (*v97 || *(v97 + 152) || *(v97 + 156))
        {
          v88 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1733;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v88 = v96;
          }

          result = CAHDec::addToPatcherList(a1, v87, v86 + 3472, v88, 0x3FFFFFFFFFFLL, 32, 1023, 4);
          if (result)
          {
            return result;
          }

          v87 = v97;
          if (*v97)
          {
            goto LABEL_103;
          }
        }

        if (*(v87 + 152) || *(v87 + 156))
        {
LABEL_103:
          v90 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1734;
            v91 = MEMORY[0x277D86220];
LABEL_120:
            _os_log_impl(&dword_277606000, v91, OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v90 = v96;
            goto LABEL_121;
          }

          goto LABEL_121;
        }

        goto LABEL_122;
      }
    }

    else
    {
      v96 = 0;
      v97 = 0;
      if ((*(*v84 + 440))(v84, a3, &v97, &v96))
      {
        v86 = 368 * a3;
        *(a2 + 340) = 0;
        v87 = v97;
        if (*v97 || *(v97 + 152) || *(v97 + 156))
        {
          v92 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1752;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v92 = v96;
          }

          result = CAHDec::addToPatcherList(a1, v87, v86 + 3472, v92, 0x3FFFFFFFFFFLL, 32, 1023, 4);
          if (result)
          {
            return result;
          }

          v87 = v97;
          if (*v97)
          {
            goto LABEL_117;
          }
        }

        if (*(v87 + 152) || *(v87 + 156))
        {
LABEL_117:
          v90 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1753;
            v91 = MEMORY[0x277D86220];
            goto LABEL_120;
          }

LABEL_121:
          result = CAHDec::addToPatcherList(a1, v87, v86 + 3476, v90, 0xFFFFFFFFLL, 0, -1, 4);
          if (!result)
          {
            goto LABEL_122;
          }

          return result;
        }

LABEL_122:
        v93 = *(v7 + 16) - (*(v7 + 2080) >> 3);
        *(a2 + 348) = v93;
        if (*(v84 + 2360) != 1)
        {
          return 0;
        }

        *(a2 + 356) = 0;
        if (*(v84 + 2640))
        {
          if ((*(v84 + 2612) & 1) == 0)
          {
LABEL_125:
            result = 0;
            if (v93 >= *(v7 + 2352))
            {
              v93 = *(v7 + 2352);
            }

            v94 = v85 | (v93 << 22);
LABEL_144:
            *(a2 + 360) = v94;
            return result;
          }
        }

        else if (!*(v84 + 2420))
        {
          goto LABEL_125;
        }

        result = 0;
        if (v93 >= *(v7 + 2352))
        {
          v93 = *(v7 + 2352);
        }

        v94 = v93 | v85 & 0x10000;
        goto LABEL_144;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecHibiscusHevc::updateCommonRegisters(CAHDecHibiscusHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecHibiscusHevc::populateSequenceRegisters(CAHDecHibiscusHevc *this)
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
    CAHDecTansyHevc::copyScalingList(this, (v1 + 17), *(this + 33) + 892, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}