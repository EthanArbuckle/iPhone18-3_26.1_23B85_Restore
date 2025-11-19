uint64_t AppleAVDMapPixelBuffer(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 > 0x80)
  {
    return 308;
  }

  v5 = *(a1 + 3824);
  v6 = *(v5 + 8);
  if (!v6)
  {
    v4 = 312;
LABEL_10:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "AppleAVDMapPixelBuffer";
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed error: %d \n", &v10, 0x12u);
    }

    return v4;
  }

  *(v5 + 6032) = a4;
  v7 = (*(*v6 + 56))(v6);
  v4 = v7;
  if (v7 != -536870210 && v7 != 0)
  {
    goto LABEL_10;
  }

  return v4;
}

uint64_t AppleAVDDecodeFrame(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (HIDWORD(v5) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AppleAVDDecodeFrame";
    *&buf[12] = 1024;
    *&buf[14] = 2515;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v5 = *(a2 + 8);
  }

  v6 = *(a2 + 16);
  v84 = -1;
  v85 = -1;
  v83 = -1;
  pthread_mutex_lock((a1 + 784));
  *(a1 + 224) = v6;
  *(a1 + 1276) = v5;
  v7 = *(a2 + 24);
  *(a1 + 1424) = v7;
  *(a1 + 3580) = *(a2 + 20);
  *(a1 + 3584) = *(a2 + 2108);
  *(a1 + 3848) = *(a2 + 2168);
  *(a1 + 52) = *(a2 + 2140);
  *(a1 + 3760) = *(a2 + 2144);
  *(a1 + 60) = *(a2 + 2136);
  *(a1 + 3552) = 0;
  v82 = 0;
  *(a1 + 1280) = v4;
  if (!*(a1 + 3624))
  {
    goto LABEL_53;
  }

  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "AppleAVDDecodeFrame";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() - Sync Decode not enabled for FT chroma deblocking filter\n", buf, 0xCu);
    }

    *(a1 + 1424) = 1;
  }

  if ((*(a1 + 3680) & 1) != 0 || *(a1 + 776) > 0x13u)
  {
    goto LABEL_53;
  }

  v8 = *(a1 + 3564);
  v9 = *(a1 + 3568);
  v10 = *(a1 + 228);
  cf = 0;
  v94 = 0;
  v95 = 0;
  valuePtr = (v9 * v8 + 4095) & 0xFFFFF000;
  v87 = 0;
  *buf = *MEMORY[0x277CD2948];
  memset(&buf[8], 0, 24);
  values = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (values)
  {
    *&buf[8] = *MEMORY[0x277CD2A70];
    if (v10 == 2)
    {
      v11 = 1752589105;
    }

    else if (v10 == 1)
    {
      v11 = 1635148593;
    }

    else if (v10)
    {
      v11 = 1748121140;
    }

    else
    {
      v11 = 1836070006;
    }

    v87 = v11;
    cf = CFNumberCreate(0, kCFNumberIntType, &v87);
    if (cf && (*&buf[16] = *MEMORY[0x277CD2970], v87 = 1024, (v94 = CFNumberCreate(0, kCFNumberIntType, &v87)) != 0))
    {
      v15 = CFDictionaryCreate(*MEMORY[0x277CBECE8], buf, &values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v14 = v15;
      if (v15)
      {
        v12 = IOSurfaceCreate(v15);
        if (v12)
        {
          CacheMode = IOSurfaceGetCacheMode();
          if (CacheMode == v87)
          {
            v13 = IOSurfaceLock(v12, 0, 0);
            if (!v13 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
LABEL_30:
              if (values)
              {
                CFRelease(values);
                values = 0;
              }

              goto LABEL_32;
            }

            *v88 = 0;
            v17 = MEMORY[0x277D86220];
            v18 = "AppleAVD: AppleAVD_VideoDecoder - ERROR IOSurfaceLock failed\n";
            v19 = 2;
          }

          else
          {
            v13 = -536870212;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_30;
            }

            *v88 = 136315394;
            v89 = "CreateCompressedBitBuffer";
            v90 = 1024;
            v91 = CacheMode;
            v17 = MEMORY[0x277D86220];
            v18 = "AppleAVD: ERROR: %s: Incorrect Cache Mode=%d\n";
            v19 = 18;
          }

          _os_log_impl(&dword_277606000, v17, OS_LOG_TYPE_DEFAULT, v18, v88, v19);
          goto LABEL_30;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v88 = 0;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_VideoDecoder - ERROR IOSurfaceCreate failed\n", v88, 2u);
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v13 = 0;
    v12 = 0;
    goto LABEL_30;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v94)
  {
    CFRelease(v94);
    v94 = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v88 = 136315394;
      v89 = "CreateCompressedBitBuffer";
      v90 = 1024;
      v91 = v13;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", v88, 0x12u);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    *(a1 + 3640) = 0;
    goto LABEL_44;
  }

  *(a1 + 3640) = v12;
  if (!v12)
  {
LABEL_44:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_47:
      v23 = 301;
      goto LABEL_156;
    }

    *buf = 136315138;
    *&buf[4] = "AppleAVDDecodeFrame";
    v20 = MEMORY[0x277D86220];
    v21 = "AppleAVD: ERROR: %s(): Create RVRA HDR buffer Failed";
    v22 = 12;
LABEL_46:
    _os_log_impl(&dword_277606000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
    goto LABEL_47;
  }

  IOSurfaceSetValue(v12, *MEMORY[0x277CD2A50], @"AVD video decoder RVRA");
  *(a1 + 3636) = IOSurfaceGetID(*(a1 + 3640));
  *(a1 + 3648) = IOSurfaceGetBaseAddress(*(a1 + 3640));
  v23 = AppleAVDMapPixelBuffer(a1, 0x80u, *(a1 + 3636), 0);
  if (v23)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_156;
    }

    *buf = 136315394;
    *&buf[4] = "AppleAVDDecodeFrame";
    *&buf[12] = 1024;
    *&buf[14] = v23;
    v24 = MEMORY[0x277D86220];
    v25 = "AppleAVD: ERROR: %s(): RVRA HDR buffer map failed: %d \n";
    goto LABEL_86;
  }

  *(a1 + 3680) = 1;
LABEL_53:
  if (!*(a1 + 1264))
  {
    goto LABEL_63;
  }

  if (*(a1 + 776) >= 0x14u && (*(a1 + 3681) & 1) == 0)
  {
    v23 = AppleAVDAllocateCVPixelBuffer(a1, 0x7Fu);
    if (v23)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_156;
      }

      *buf = 136315394;
      *&buf[4] = "AppleAVDDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v23;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: ERROR: %s(): RVRA_FIRST_BACKUP_BUFF_INDEX map failed: %d \n";
    }

    else
    {
      v23 = AppleAVDAllocateCVPixelBuffer(a1, 0x7Eu);
      if (!v23)
      {
        *(a1 + 3681) = 1;
        goto LABEL_56;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_156;
      }

      *buf = 136315394;
      *&buf[4] = "AppleAVDDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v23;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: ERROR: %s(): RVRA_SECOND_BACKUP_BUFF_INDEX map failed: %d \n";
    }

LABEL_86:
    v33 = 18;
LABEL_155:
    _os_log_impl(&dword_277606000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, v33);
    goto LABEL_156;
  }

LABEL_56:
  if (*(a1 + 224) >= 2u && (*(a1 + 1424) & 1) == 0 && (*(a1 + 1008) != *(a1 + 1000) || *(a1 + 1012) != *(a1 + 1004)))
  {
    v26 = *(a1 + 960);
    if (v26)
    {
      CPBManager::waitForCPBsOutstanding(v26, 1u);
    }
  }

  *(a1 + 1008) = *(a1 + 1000);
LABEL_63:
  *(a1 + 1480) = *(a2 + 32);
  *(a1 + 1488) = *(a2 + 40);
  v27 = *(a1 + 1460);
  if ((v27 & 0xFFFFFFFE) == 4 || *(a1 + 1457) == 1 && v27 <= 3 && v27 != 1)
  {
    bzero((a1 + 1504), 0x800uLL);
    v28 = *(a2 + 2104);
    *(a1 + 3552) = v28;
    memcpy((a1 + 1504), (a2 + 56), 4 * v28);
    memcpy((a1 + 2528), (a2 + 1080), 4 * *(a1 + 3552));
  }

  else
  {
    *(a1 + 3552) = 0;
  }

  v29 = *(a2 + 2120);
  *(a1 + 3588) = v29;
  *(a1 + 3600) = *(a2 + 2128);
  if (*(a1 + 228) == 4)
  {
    v23 = (*(**(*(a1 + 3824) + 8) + 192))(*(*(a1 + 3824) + 8), v4, v5, v6);
    if (v23)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_156;
      }

      *buf = 67109120;
      *&buf[4] = v23;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: ERROR: bad header, got error %d parsing header\n";
      goto LABEL_138;
    }

    if (*(a1 + 3820) != 1 || !(*(**(*(a1 + 3824) + 8) + 96))(*(*(a1 + 3824) + 8), 54, &values) || cf != 1)
    {
      goto LABEL_103;
    }

    v30 = values;
    v31 = HIDWORD(values);
    v32 = *(a1 + 3872);
    if (v32)
    {
      if (*(a1 + 32))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = 106;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %u: WARNING! resizing CVPixelBufferPool is not supported", buf, 8u);
        }
      }

      else
      {
        if (AppleAVDChangeVTResolutionInternal(a1, (a1 + 32), v32, values, SHIDWORD(values)))
        {
          v34 = 0;
          goto LABEL_98;
        }

        v35 = *(a1 + 208);
        if (v35)
        {
          BufferPool::setCVPixelBufferPool(v35, *(a1 + 32));
        }
      }
    }

    v34 = 1;
LABEL_98:
    v36 = *(a1 + 3864);
    if (v36)
    {
      if (!*(a1 + 40))
      {
        if (!AppleAVDChangeVTResolutionInternal(a1, (a1 + 40), v36, v30, v31))
        {
          v71 = *(a1 + 200);
          if (v71)
          {
            BufferPool::setCVPixelBufferPool(v71, *(a1 + 40));
          }

          goto LABEL_103;
        }

LABEL_215:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_47;
        }

        *buf = 67109376;
        *&buf[4] = values;
        *&buf[8] = 1024;
        *&buf[10] = HIDWORD(values);
        v20 = MEMORY[0x277D86220];
        v21 = "AppleAVD: ERROR: failed to change video resolution to %ux%u\n";
        v22 = 14;
        goto LABEL_46;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 121;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %u: WARNING! resizing CVPixelBufferPool is not supported", buf, 8u);
      }
    }

    if (v34)
    {
LABEL_103:
      v29 = *(a1 + 3588);
      goto LABEL_104;
    }

    goto LABEL_215;
  }

LABEL_104:
  if (v29)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(*(a1 + 3600));
    if (PixelFormatType <= 1278226487)
    {
      if (PixelFormatType > 875704949)
      {
        if (PixelFormatType == 875704950 || PixelFormatType == 875836518)
        {
          goto LABEL_124;
        }

        v39 = 875836534;
      }

      else
      {
        if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
        {
          goto LABEL_124;
        }

        v39 = 875704934;
      }

      if (PixelFormatType != v39)
      {
        goto LABEL_173;
      }
    }

    else
    {
      if (PixelFormatType > 1882469427)
      {
        if (PixelFormatType > 1885745713)
        {
          if (PixelFormatType != 1885745714)
          {
            v38 = 13364;
            goto LABEL_132;
          }
        }

        else if (PixelFormatType != 1882469428)
        {
          v38 = 12848;
LABEL_132:
          v40 = v38 | 0x70660000;
LABEL_133:
          if (PixelFormatType == v40)
          {
            goto LABEL_134;
          }

LABEL_173:
          v41 = 2 * *(a2 + 2112);
LABEL_135:
          *(a1 + 3592) = v41;
          if ((v41 & 0x3F) != 0)
          {
            v23 = -536870212;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_156;
            }

            *buf = 67109120;
            *&buf[4] = v41;
            v24 = MEMORY[0x277D86220];
            v25 = "AppleAVD: ERROR: ERROR: tileX offset not a multiple of 64! tileOffsetX:%d";
LABEL_138:
            v33 = 8;
            goto LABEL_155;
          }

          *(a1 + 3596) = *(a2 + 2116);
          v23 = AppleAVDPutTiledPixelBufferIntoBufferPool(a1, &v85, 1, 0, *(a2 + 2152), *(a2 + 2160));
          if (v23)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_156;
            }

            *buf = 0;
            v24 = MEMORY[0x277D86220];
            v25 = "AppleAVD: AppleAVDDecodeFrame could not put display buffer into the buffer pool";
            goto LABEL_154;
          }

          v23 = AppleAVDPutTiledPixelBufferIntoBufferPool(a1, &v84, 0, 0, *(a2 + 2152), *(a2 + 2160));
          if (v23)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_156;
            }

            *buf = 0;
            v24 = MEMORY[0x277D86220];
            v25 = "AppleAVD: AppleAVDDecodeFrame could not put decode/reference buffer into the buffer pool";
            goto LABEL_154;
          }

          goto LABEL_145;
        }

LABEL_134:
        v41 = (2 * ((2863311531u * *(a2 + 2112)) >> 32)) & 0xFFFFFFFC;
        goto LABEL_135;
      }

      if (PixelFormatType != 1278226488)
      {
        if (PixelFormatType != 1882468912)
        {
          v40 = 1882468914;
          goto LABEL_133;
        }

        goto LABEL_134;
      }
    }

LABEL_124:
    v41 = *(a2 + 2112);
    goto LABEL_135;
  }

  *(a1 + 848) = *(a2 + 2172);
  v23 = AppleAVDGetPixelBufferFromBufferPool(a1, &v84, 0, *(a2 + 2152), *(a2 + 2160));
  if (v23)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_156;
    }

    *buf = 0;
    v24 = MEMORY[0x277D86220];
    v25 = "AppleAVD: AppleAVDDecodeFrame could not get reference buffer from buffer pool";
    goto LABEL_154;
  }

  if ((*(a1 + 848) & 1) == 0)
  {
    v23 = AppleAVDGetPixelBufferFromBufferPool(a1, &v85, 1, *(a2 + 2152), *(a2 + 2160));
    if (v23)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_156;
      }

      *buf = 0;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: AppleAVDDecodeFrame could not get display buffer from buffer pool";
LABEL_154:
      v33 = 2;
      goto LABEL_155;
    }
  }

  if (*(a1 + 1264))
  {
    v23 = AppleAVDGetSecondPixelBufferFromBufferPoolAndLink(a1, v84, &v83, 0, *(a2 + 2152), *(a2 + 2160));
    if (v23)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_156;
      }

      *buf = 0;
      v24 = MEMORY[0x277D86220];
      v25 = "AppleAVD: AppleAVDDecodeFrame could not get scaler buffer from buffer pool";
      goto LABEL_154;
    }
  }

LABEL_145:
  v82 = 0;
  v42 = *(a1 + 848);
  v43 = v42 ^ 1;
  v44 = v42 == 0;
  v45 = &v85;
  if (!v44)
  {
    v45 = &v84;
  }

  BufferPool::getBufferInfo(*(a1 + 8 * v43 + 200), *v45, &v82);
  if (v82)
  {
    v46 = *(v82 + 16);
    v47 = v46 != 0;
    if (*(a1 + 3912) == 1 && v46)
    {
      *(*(a1 + 3824) + 6296) = v46;
      v47 = 1;
    }
  }

  else
  {
    v47 = 0;
    v46 = 0;
  }

  if (*(a1 + 3716) != 1 || !*(a1 + 3684))
  {
    goto LABEL_244;
  }

  v81 = (a1 + 3704);
  *(a1 + 3704) = 0;
  v50 = *(a1 + 228);
  if (v50 == 2)
  {
    v79 = v47;
    buffer = v46;
    v59 = *(a1 + 1432);
    v60 = operator new(0xB0uLL, MEMORY[0x277D826F0]);
    if (v60)
    {
      v61 = v60;
      HEVC_RBSP::HEVC_RBSP(v60);
      if (!v5)
      {
        goto LABEL_231;
      }

      if (v59 <= 4 && ((1 << v59) & 0x16) != 0)
      {
        v62 = 0;
        v63 = v4;
        v80 = v59;
        while (1)
        {
          v64 = *v63;
          if (v59 == 2)
          {
            v64 = v63[1] | (v64 << 8);
            v65 = v63 + 2;
            v66 = v64 + 2;
          }

          else if (v59 == 4)
          {
            v64 = v63[3] | (((v64 << 16) | (v63[1] << 8) | v63[2]) << 8);
            v65 = v63 + 4;
            v66 = v64 + 4;
          }

          else
          {
            v65 = v63 + 1;
            v66 = v64 + 1;
          }

          if (&v65[v64] > v4 + v5)
          {
            break;
          }

          HEVC_RBSP::setRBSP(v61, v65, v64);
          if (!HEVC_RBSP::parseNAL(v61, &values, 0))
          {
            v70 = 305;
            goto LABEL_229;
          }

          if (HIDWORD(values) == 39)
          {
            v68 = v65[2];
            v67 = v65 + 2;
            if (v68 == 5)
            {
              v69 = RemoveEPB(v67, v64 - 2, *(a1 + 3696));
              parseSEI(*(a1 + 3696), v69, *(a1 + 3688), v81);
            }
          }

          v62 += v66;
          v63 = (v4 + v62);
          v59 = v80;
          if (v62 >= v5)
          {
            goto LABEL_231;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = "FindFrameMetadataHEVC";
          *&buf[12] = 1024;
          *&buf[14] = v64;
          *&buf[18] = 2048;
          *&buf[20] = v65;
          *&buf[28] = 2048;
          *&buf[30] = v4 + v5;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s NALU too big! %d nal_ptr:%p, buf_end:%p", buf, 0x26u);
        }

        v70 = 318;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v59;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: HEVC_Decoder::ParseHeader unsupported naluLengthSize %d", buf, 8u);
        }

        v70 = 317;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "FindFrameMetadataHEVC";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: error creating rbsp!\n", buf, 0xCu);
      }

      v70 = 304;
    }

LABEL_229:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "FindFrameMetadataHEVC";
      *&buf[12] = 1024;
      *&buf[14] = v70;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s return with error %d", buf, 0x12u);
    }
  }

  else
  {
    if (v50 != 1)
    {
LABEL_244:
      v23 = 0;
      goto LABEL_156;
    }

    v23 = 0;
    if (v5 > 0x1800000)
    {
      goto LABEL_156;
    }

    v51 = *(a1 + 1432);
    if (v51 > v5)
    {
      goto LABEL_156;
    }

    v79 = v47;
    buffer = v46;
    if (v51 <= 4 && ((1 << v51) & 0x16) != 0)
    {
      v52 = 0;
      do
      {
        v53 = (v4 + v52);
        v54 = *v53;
        if (v51 == 2)
        {
          v54 = v53[1] | (v54 << 8);
          v55 = v53 + 2;
          v56 = v54 + 2;
        }

        else if (v51 == 4)
        {
          v54 = v53[3] | (((v54 << 16) | (v53[1] << 8) | v53[2]) << 8);
          v55 = v53 + 4;
          v56 = v54 + 4;
        }

        else
        {
          v55 = v53 + 1;
          v56 = v54 + 1;
        }

        v52 += v56;
        if (v52 > v5 || v54 > v5)
        {
          break;
        }

        if ((*v55 & 0x1F) == 6)
        {
          v58 = RemoveEPB(v55 + 1, v54 - 1, *(a1 + 3696));
          parseSEI(*(a1 + 3696), v58, *(a1 + 3688), v81);
        }
      }

      while (v52 + v51 <= v5);
    }
  }

LABEL_231:
  v72 = *v81;
  if (!v72)
  {
    goto LABEL_244;
  }

  if (v79)
  {
    v73 = *(a1 + 3688);
    if (*v73 == 109 && *(v73 + 1) == 101 && *(v73 + 2) == 116 && *(v73 + 3) == 97)
    {
      v74 = *MEMORY[0x277CBECE8];
      v75 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], (v73 + 4), v72, *MEMORY[0x277CBED00]);
      if (v75)
      {
        v76 = CFPropertyListCreateFromXMLData(v74, v75, 0, 0);
        if (v76)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v77 = *(a1 + 224);
            *buf = 67109120;
            *&buf[4] = v77;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDDecodeFrame - frame # %d metadataDict attached\n", buf, 8u);
          }

          CVBufferSetAttachment(buffer, @"MetadataDictionary", v76, kCVAttachmentMode_ShouldPropagate);
          CFRelease(v76);
        }

        CFRelease(v75);
      }
    }
  }

  v23 = 0;
  *v81 = 0;
LABEL_156:
  v48 = AppleAVDDecodeFrameInternal(a1, v4, v5, v6, v85, v84, v83, v23);
  if (v48 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDDecodeFrameInternal failed\n", buf, 2u);
  }

  *(a2 + 28) = *(a1 + 3556);
  if (*(a1 + 3880) != 503 && *(a1 + 1424) == 1)
  {
    while (*(a1 + 1428) != *(a1 + 224))
    {
      pthread_cond_wait((a1 + 1376), (a1 + 784));
    }
  }

  if (v48)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v48;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
    }

    if (v84 != -1)
    {
      AppleAVDReleaseCVPixelBuffer(a1, v84, 0, *(a1 + 224), 0);
    }

    if (v83 != -1)
    {
      AppleAVDReleaseCVPixelBuffer(a1, v83, 0, *(a1 + 224), 0);
    }

    if (v85 != -1)
    {
      AppleAVDReleaseCVPixelBuffer(a1, v85, 1, *(a1 + 224), 0);
    }
  }

  pthread_mutex_unlock((a1 + 784));
  return v48;
}

uint64_t CAVDDecoder::mapAVDMemory(uint64_t a1, mach_port_t **a2, int a3, uint64_t a4, int a5, int a6, _OWORD *a7, unsigned __int8 a8, __int16 a9, uint64_t a10, uint64_t a11, __int16 a12)
{
  v43 = *MEMORY[0x277D85DE8];
  outputStructCnt = 176;
  v38 = 0u;
  outputStruct = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  inputStruct[1] = 0;
  inputStruct[0] = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a10;
  *&v38 = a11;
  *(&v38 + 11) = a12;
  BYTE8(v38) = a8 ^ 1;
  *(&v38 + 9) = ((a8 | 0xFF00) ^ 1) & a9;
  v13 = IOConnectCallStructMethod(**a2, 3u, inputStruct, 0x30uLL, &outputStruct, &outputStructCnt);
  v14 = v13;
  if (v13 != -536870210)
  {
    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v40 = "mapAVDMemory";
        v41 = 1024;
        v42 = v14;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): failed error: %d \n", buf, 0x12u);
      }
    }

    else
    {
      v15 = v31;
      a7[8] = v30;
      a7[9] = v15;
      a7[10] = v32;
      v16 = v27;
      a7[4] = v26;
      a7[5] = v16;
      v17 = v29;
      a7[6] = v28;
      a7[7] = v17;
      v18 = v23;
      *a7 = outputStruct;
      a7[1] = v18;
      v19 = v25;
      a7[2] = v24;
      a7[3] = v19;
    }
  }

  return v14;
}

uint64_t BufferPool::getBuffer(uint64_t a1, unsigned int *a2, int a3, __CVBuffer *a4, uint64_t a5, uint64_t a6)
{
  v55 = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  v6 = *(a1 + 144);
  if (v6)
  {
    if (!*(a1 + 128) && !a5 && (*(a1 + 160) & 1) == 0 && *(a1 + 140) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v49 = "getBuffer";
        v50 = 2048;
        *v51 = 0;
        *&v51[8] = 2048;
        v52 = 0;
        v53 = 2048;
        v54 = a6;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): ERROR! Invalid parameter(s) m_p_cv_pool: %p - vtSession: %p - vtFrame: %p", buf, 0x2Au);
      }

      return 4294967294;
    }

    kdebug_trace();
    pthread_mutex_lock(a1);
    if (*(a1 + 160) == 1)
    {
      pixelBufferOut = a4;
      if (*(a1 + 140) == 1)
      {
        CVPixelBufferRetain(a4);
      }

      goto LABEL_30;
    }

    v12 = *(a1 + 128);
    if (v12)
    {
      v13 = CVPixelBufferPoolCreatePixelBuffer(0, v12, &pixelBufferOut);
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v49 = "getCVPixelBuffer";
          v50 = 1024;
          *v51 = v14;
          v15 = MEMORY[0x277D86220];
          v16 = "AppleAVD: %s(): Failed to create pixel buffer! error: 0x%x\n";
          v17 = 18;
LABEL_42:
          _os_log_impl(&dword_277606000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, v17);
        }

LABEL_43:
        v11 = 4294967293;
        goto LABEL_72;
      }

LABEL_30:
      IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
      if (IOSurface)
      {
        v24 = IOSurface;
        ID = IOSurfaceGetID(IOSurface);
        v26 = ID;
        v27 = *(a1 + 160);
        if (v27 != 1 || (v28 = *(a1 + 136), !v28))
        {
LABEL_38:
          v42 = v6;
          if ((v27 & 1) != 0 || !IOSurfaceGetCompressionTypeOfPlane())
          {
            BaseAddress = IOSurfaceGetBaseAddress(v24);
            IOSurfaceGetBaseAddressOfPlane(v24, 0);
            IOSurfaceGetBaseAddressOfPlane(v24, 1uLL);
            IOSurfaceGetBytesPerRowOfPlane(v24, 0);
          }

          else
          {
            BaseAddress = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
            IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane();
          }

          IOSurfaceGetHeight(v24);
          Width = IOSurfaceGetWidth(v24);
          v32 = 0;
          v33 = MEMORY[0x277D86220];
          while (1)
          {
            v34 = *(a1 + 136);
            if (v34)
            {
              v35 = 0;
              v36 = 0;
              v37 = 184 * v34;
              while (*(*(a1 + 120) + v36))
              {
                v36 += 184;
                ++v35;
                if (v37 == v36)
                {
                  goto LABEL_51;
                }
              }

              v38 = AppleAVDMapPixelBuffer(*(a1 + 144), v35, v26, *(a1 + 140));
              if (v38)
              {
                v40 = v38;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v49 = "mapPixelBuffer";
                  v50 = 1024;
                  *v51 = v40;
                  _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Failed to map pixel buffer! - error: 0x%x\n", buf, 0x12u);
                }

                v11 = 4294967293;
                goto LABEL_72;
              }

              Width = CFRetain(v24);
              v39 = *(a1 + 120) + v36;
              *(v39 + 32) = v26;
              *(v39 + 8) = BaseAddress;
              *(v39 + 16) = pixelBufferOut;
              *(v39 + 24) = v24;
              *v39 = 1;
              *(v39 + 40) = a3;
              *(v39 + 160) = a5;
              *(v39 + 168) = a6;
              *(v39 + 36) = *(a1 + 168);
              *(v39 + 176) = 1;
              *a2 = v35;
              ++*(a1 + 152);
            }

            else
            {
LABEL_51:
              if (++v32 >= *(a1 + 164))
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v49 = "getBuffer";
                  v50 = 1024;
                  *v51 = v32;
                  _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to get an available buffer after %d attempts!\n", buf, 0x12u);
                }

                if (MGGetBoolAnswer())
                {
                  if (*(v42 + 984))
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      v49 = "getBuffer";
                      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Forcing panic due to SW timeout.\n", buf, 0xCu);
                    }

                    MEMORY[0x277CAEFA0](3072, "Timeout hit while getting a buffer from the Buffer Pool - panicking!\n");
                  }

                  v11 = 4294967293;
                }

                else
                {
                  v11 = 4294967293;
                }

                goto LABEL_72;
              }

              Width = BufferPool::pthreadCondTimedWait(Width, a1, (a1 + 64), 1000);
              if (Width == 60)
              {
                Width = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
                if (Width)
                {
                  *buf = 136315650;
                  v49 = "getBuffer";
                  v50 = 1024;
                  *v51 = 1000;
                  *&v51[4] = 1024;
                  *&v51[6] = v32;
                  _os_log_impl(&dword_277606000, v33, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): pthread_cond_timedwait (%d msec)! tryCount: %d", buf, 0x18u);
                }
              }

              v35 = -1;
            }

            if (v35 != -1)
            {
              v11 = 0;
              goto LABEL_77;
            }
          }
        }

        v29 = 0;
        v30 = (*(a1 + 120) + 36);
        while (*(v30 - 1) != ID || *(v30 - 5) != pixelBufferOut || *(v30 - 3) != v24)
        {
          ++v29;
          v30 += 46;
          if (v28 == v29)
          {
            goto LABEL_38;
          }
        }

        v11 = 0;
        *a2 = v29;
        ++*v30;
        goto LABEL_77;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v49 = "getBuffer";
        v15 = MEMORY[0x277D86220];
        v16 = "AppleAVD: %s(): Failed to get IOSurfaceRef!\n";
        v17 = 12;
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v18 = *(a1 + 172);
    v19 = *(a1 + 176);
    valuePtr = *(a1 + 180);
    if (v18 == 1)
    {
      if (v19)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v21 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE2B58], v21);
      }

      else
      {
        Mutable = 0;
        v21 = 0;
      }

      PixelBufferWithOptions = VTDecoderSessionCreatePixelBufferWithOptions();
      if (!PixelBufferWithOptions)
      {
LABEL_81:
        v11 = 0;
        if (!v21)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      PixelBufferWithOptions = VTDecoderSessionCreatePixelBuffer();
      Mutable = 0;
      v21 = 0;
      if (!PixelBufferWithOptions)
      {
        goto LABEL_81;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v49 = "getVTPixelBuffer";
      v50 = 1024;
      *v51 = PixelBufferWithOptions;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Failed to create pixel buffer! error: 0x%x\n", buf, 0x12u);
    }

    v11 = 4294967293;
    if (!v21)
    {
LABEL_27:
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (PixelBufferWithOptions)
      {
LABEL_72:
        if (!*(a1 + 160) || *(a1 + 140) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v49 = "getBuffer";
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Releasing CVPixelBufferRef!\n", buf, 0xCu);
          }

          CVPixelBufferRelease(pixelBufferOut);
        }

LABEL_77:
        pthread_mutex_unlock(a1);
        kdebug_trace();
        return v11;
      }

      goto LABEL_30;
    }

LABEL_26:
    CFRelease(v21);
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v49 = "getBuffer";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): NULL context!\n", buf, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

uint64_t BufferPool::getBufferInfo(uint64_t a1, unsigned int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 136);
  if (v4 <= a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "getBufferInfo";
      v12 = 1024;
      v13 = a2;
      v14 = 1024;
      v15 = v4;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): error index %d m_max_cache_size:%d \n", &v10, 0x18u);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    pthread_mutex_lock(a1);
    v7 = (*(a1 + 120) + 184 * a2);
    if (*v7 == 1)
    {
      v8 = 0;
      *a3 = v7;
    }

    else
    {
      *a3 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "getBufferInfo";
        v12 = 1024;
        v13 = a2;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): buff NOT in use! error index %d\n", &v10, 0x12u);
      }

      v8 = 0xFFFFFFFFLL;
    }

    pthread_mutex_unlock(a1);
  }

  return v8;
}

uint64_t CAVDDecoder::VAMapPixelBuffer(CAVDDecoder *this, int a2, int a3, int a4, char a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v31 = *MEMORY[0x277D85DE8];
  v15 = 1056;
  if (a4 == 1)
  {
    v15 = 24;
  }

  v16 = this + v15;
  v17 = a4 == 1 && (a2 - 123) < 3;
  if (v17)
  {
    if ((*(this + 672) & 0xFFFFFFFD) == 1)
    {
      v18 = 5;
    }

    else
    {
      v18 = 7;
    }
  }

  else
  {
    v18 = 3;
  }

  v19 = malloc_type_malloc(0xE0uLL, 0x1000040DD4DCD2DuLL);
  *&v16[8 * a2] = v19;
  v20 = *(this + 293);
  v21 = *(v20 + 6244);
  *v19 = 2;
  v19[50] = a2;
  v19[51] = 0;
  *(v19 + 26) = 0;
  if (v17)
  {
    v22 = *(this + 672);
    v24 = v22 == 2 || v22 == 4;
    if ((v24 | v21))
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 1;
  }

  HIBYTE(v28) = v17;
  LOBYTE(v28) = a5;
  v26 = CAVDDecoder::mapAVDMemory(v19, v20, a3, v25, 0, v18, v19 + 2, 0, v28, a6, a7, a8);
  if (v26)
  {
    free(*&v16[8 * a2]);
    *&v16[8 * a2] = 0;
    if (v26 != -536870210 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "VAMapPixelBuffer";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): error allocating surface\n", buf, 0xCu);
    }
  }

  return v26;
}

uint64_t AppleAVDCommandBuilder::decodeFrameFigHelper_CheckParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3)
  {
    v5 = 3758097131;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v5;
    }

    v12 = 136315650;
    v13 = "decodeFrameFigHelper_CheckParameters";
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = a3;
    v6 = MEMORY[0x277D86220];
    v7 = "AppleAVD: %s(): ERROR! NULL arguments - in (%p) out (%p)";
    v8 = 32;
    goto LABEL_14;
  }

  if (!*(a1 + 8))
  {
    v5 = 3758097131;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return v5;
    }

    v12 = 136315394;
    v13 = "decodeFrameFigHelper_CheckParameters";
    v14 = 2048;
    v15 = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "AppleAVD: %s(): ERROR! NULL decoder! (%p)";
    v8 = 22;
    goto LABEL_14;
  }

  if (!*(a2 + 2348))
  {
    v9 = *(a2 + 20);
    if (v9 < 0x30)
    {
      if (*(a2 + 2124))
      {
        return 0;
      }

      v11 = *(a2 + 16);
      if (v11 < 0x30)
      {
        return 0;
      }

      v5 = 3758097131;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v5;
      }

      v12 = 136315394;
      v13 = "decodeFrameFigHelper_CheckParameters";
      v14 = 1024;
      LODWORD(v15) = v11;
      v6 = MEMORY[0x277D86220];
      v7 = "AppleAVD: %s(): ERROR!  Display index out of range (%d)";
    }

    else
    {
      v5 = 3758097131;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v5;
      }

      v12 = 136315394;
      v13 = "decodeFrameFigHelper_CheckParameters";
      v14 = 1024;
      LODWORD(v15) = v9;
      v6 = MEMORY[0x277D86220];
      v7 = "AppleAVD: %s(): ERROR! Invalid reference index (%d)";
    }

    v8 = 18;
LABEL_14:
    _os_log_impl(&dword_277606000, v6, OS_LOG_TYPE_DEFAULT, v7, &v12, v8);
    return v5;
  }

  return 0;
}

BOOL CAVDHevcDecoder::decodeGetRenderTarget(uint64_t a1, unsigned int a2, void *a3, int a4)
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

uint64_t AppleAVDCommandBuilder::decodeFrameFigHelper_VASetParameters(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = (*(**(a1 + 8) + 104))(*(a1 + 8), 23, a2 + 2116);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a2 + 2116);
      *buf = 136315650;
      *&buf[4] = "decodeFrameFigHelper_VASetParameters";
      *&buf[12] = 1024;
      *&buf[14] = v5;
      *&buf[18] = 1024;
      v29 = v6;
      v7 = MEMORY[0x277D86220];
      v8 = "AppleAVD: ERROR: %s(): Failed to set usage mode parameter - status %d usageMode %d\n";
LABEL_4:
      v9 = buf;
      v10 = 24;
LABEL_22:
      _os_log_impl(&dword_277606000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, v10);
      return v5;
    }

    return v5;
  }

  v11 = *(a1 + 5408) - 1;
  if (v11 > 1)
  {
LABEL_10:
    if (v11 <= 2 && (v14 = (*(**(a1 + 8) + 104))(*(a1 + 8), 21, 0), v14))
    {
      v5 = v14;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v5;
      }

      *buf = 136315394;
      *&buf[4] = "decodeFrameFigHelper_VASetParameters";
      *&buf[12] = 1024;
      *&buf[14] = v5;
      v7 = MEMORY[0x277D86220];
      v8 = "AppleAVD: %s(): ERROR! Failed to set parameter kVASetYUVMD5Hash - status %d";
    }

    else
    {
      v15 = (*(**(a1 + 8) + 104))(*(a1 + 8), 11, a2 + 32);
      if (v15)
      {
        v5 = v15;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return v5;
        }

        *buf = 136315394;
        *&buf[4] = "decodeFrameFigHelper_VASetParameters";
        *&buf[12] = 1024;
        *&buf[14] = v5;
        v7 = MEMORY[0x277D86220];
        v8 = "AppleAVD: %s(): ERROR! Failed to set parameter kVASetDisableSkipToIDR - status %d";
      }

      else
      {
        v16 = (*(**(a1 + 8) + 104))(*(a1 + 8), 59, a2 + 2144);
        if (v16)
        {
          v5 = v16;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return v5;
          }

          *buf = 136315394;
          *&buf[4] = "decodeFrameFigHelper_VASetParameters";
          *&buf[12] = 1024;
          *&buf[14] = v5;
          v7 = MEMORY[0x277D86220];
          v8 = "AppleAVD: %s(): ERROR! Failed to set parameter kVASetEnableRVRA - status %d";
        }

        else
        {
          if (!*(a2 + 2144) || (*(a2 + 2148) & 0xFFFFFFFE) != 2)
          {
            goto LABEL_35;
          }

          v18 = *(a2 + 2152);
          v24 = *(a2 + 2148);
          LODWORD(v25) = v18;
          v19 = *(a2 + 2156);
          HIDWORD(v25) = v19;
          if (!v18 || !v19 || v18 > *(a1 + 5624) || v19 > *(a1 + 5628))
          {
            v5 = 3758097084;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return v5;
            }

            *buf = 136315650;
            *&buf[4] = "decodeFrameFigHelper_VASetParameters";
            *&buf[12] = 1024;
            *&buf[14] = v18;
            *&buf[18] = 1024;
            v29 = v19;
            v7 = MEMORY[0x277D86220];
            v8 = "AppleAVD: %s(): ERROR! Invalid VRA Dimensions - w:%d h:%d";
            goto LABEL_4;
          }

          v20 = (*(**(a1 + 8) + 104))(*(a1 + 8), 15, &v24);
          if (v20)
          {
            v5 = v20;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return v5;
            }

            *buf = 136315394;
            *&buf[4] = "decodeFrameFigHelper_VASetParameters";
            *&buf[12] = 1024;
            *&buf[14] = v5;
            v7 = MEMORY[0x277D86220];
            v8 = "AppleAVD: %s(): ERROR! Failed to set parameter kVASetVRATypeAndDimensions - status %d";
          }

          else
          {
LABEL_35:
            v21 = *(a2 + 2132);
            if (v21)
            {
              *&buf[8] = 0;
              *&buf[16] = 0;
              *buf = v21;
              v22 = *(a2 + 2136);
              *(a1 + 6017) = 1;
              *&buf[4] = v22;
              v23 = (*(**(a1 + 8) + 104))(*(a1 + 8), 20, buf);
              if (v23)
              {
                v5 = v23;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  return v5;
                }

                v24 = 136315394;
                v25 = "decodeFrameFigHelper_VASetParameters";
                v26 = 1024;
                v27 = v5;
                v7 = MEMORY[0x277D86220];
                v8 = "AppleAVD: %s(): ERROR! Failed to set parameter kVASetTileDecodeParams - status %d";
                v9 = &v24;
                goto LABEL_21;
              }
            }

            if (*(a2 + 2168) != 1 || *(a2 + 2132))
            {
              return 0;
            }

            LOBYTE(v24) = 1;
            LODWORD(v25) = *(a2 + 2172);
            v5 = (*(**(a1 + 8) + 104))(*(a1 + 8), 45, &v24);
            if (!v5 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return v5;
            }

            *buf = 136315394;
            *&buf[4] = "decodeFrameFigHelper_VASetParameters";
            *&buf[12] = 1024;
            *&buf[14] = v5;
            v7 = MEMORY[0x277D86220];
            v8 = "AppleAVD: %s(): ERROR! Failed to set parameter kVASetMuxedAlphaParams - status %d";
          }
        }
      }
    }

    v9 = buf;
LABEL_21:
    v10 = 18;
    goto LABEL_22;
  }

  v12 = (*(**(a1 + 8) + 104))(*(a1 + 8), 29, a2 + 2160);
  if (!v12)
  {
    v11 = *(a1 + 5408) - 1;
    goto LABEL_10;
  }

  v5 = v12;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a2 + 2160);
    *buf = 136315650;
    *&buf[4] = "decodeFrameFigHelper_VASetParameters";
    *&buf[12] = 1024;
    *&buf[14] = v5;
    *&buf[18] = 1024;
    v29 = v13;
    v7 = MEMORY[0x277D86220];
    v8 = "AppleAVD: %s(): ERROR! Failed to set HandleCRAFrameAsBLA parameter - status %d handleCRAFrameAsBLA %d";
    goto LABEL_4;
  }

  return v5;
}

uint64_t attachHistogramToIOSurface(uint64_t a1, int a2, CVPixelBufferRef pixelBuffer)
{
  v35 = *MEMORY[0x277D85DE8];
  valuePtr = a1;
  v22 = a2;
  if (!pixelBuffer)
  {
    return 0xFFFFFFFFLL;
  }

  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  v6 = *(a1 + 3736) + ((a2 & 0xF) << 9);
  v7 = *(a1 + 3752);
  if (v7)
  {
    fprintf(v7, "%d: ", a2);
    v8 = 0;
    while (1)
    {
      v9 = *(a1 + 3752);
      if (v8 == 508)
      {
        break;
      }

      fprintf(v9, "%d, ", *(v6 + v8));
      v10 = v8 >= 0x1FC;
      v8 += 4;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    fprintf(v9, "%d\n", *(v6 + 508));
LABEL_10:
    fflush(*(a1 + 3752));
  }

  *keys = xmmword_27A717AE0;
  v34 = @"kIOSurfaceSessionFrameNumber";
  v12 = *MEMORY[0x277CBECE8];
  v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  v14 = CFNumberCreate(v12, kCFNumberSInt32Type, &v22);
  v15 = CFDataCreate(v12, v6, 512);
  values[0] = v13;
  values[1] = v15;
  values[2] = v14;
  if (v15)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16 && v14 != 0)
  {
    v20 = CFDictionaryCreate(v12, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v20)
    {
      v21 = v20;
      IOSurfaceSetValue(IOSurface, @"kIOSurfacePixelMetadata", v20);
      CFRelease(v21);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "attachHistogramToIOSurface";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): WARNING! Failed to create CFDictionary!", buf, 0xCu);
    }

    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v25 = "attachHistogramToIOSurface";
    v26 = 2048;
    v27 = v13;
    v28 = 2048;
    v29 = v15;
    v30 = 2048;
    v31 = v14;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): WARNING! Failed to create CFType! sessionIdentifier: %p - hist: %p - sessionFrameNumberRef: %p", buf, 0x2Au);
  }

  if (v15)
  {
LABEL_33:
    CFRelease(v15);
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v13)
  {
LABEL_23:
    CFRelease(v13);
  }

LABEL_24:
  if (v14)
  {
    CFRelease(v14);
  }

  v18 = valuePtr;
  v19 = *(valuePtr + 3904);
  if (v19)
  {
    *v19 = 0x6161766468737431;
    *(v19 + 8) = v18;
    *(v19 + 16) = v22;
    *(v19 + 20) = 0x2000000080;
    *(v19 + 28) = *(v18 + 945);
    memcpy((v19 + 32), v6, 0x200uLL);
    IOSurfaceSetDataProperty();
  }

  return 0;
}

uint64_t DisplayCallBack(uint64_t a1, unsigned __int8 a2, const void *a3, uint64_t a4)
{
  v7 = a2;
  kdebug_trace();
  if (*(a1 + 16))
  {
    MEMORY[0x277CAEB50](*(a1 + 8), *(a1 + 8 * v7 + 2112), a4, 0, a3);
  }

  else
  {
    v9 = *(a1 + 5608);
    kdebug_trace();
    if (v9)
    {
      VTDecoderSessionEmitDecodedMultiImageFrame();
      if (a3)
      {
        CFRelease(a3);
      }
    }

    else
    {
      VTDecoderSessionEmitDecodedFrame();
    }
  }

  return kdebug_trace();
}

uint64_t DisplayCallBack_0(uint64_t a1, unsigned __int8 a2, const void *a3, uint64_t a4, int a5)
{
  v9 = a2;
  kdebug_trace();
  if (*(a1 + 16))
  {
    MEMORY[0x277CAEB50](*(a1 + 8), *(a1 + 8 * v9 + 2112), a4, 0, a3);
  }

  else
  {
    if (a5 == 409)
    {
      *(a1 + 4 * v9 + 4160) = 10;
    }

    v11 = *(a1 + 16816);
    kdebug_trace();
    if (v11)
    {
      VTDecoderSessionEmitDecodedMultiImageFrame();
      if (a3)
      {
        CFRelease(a3);
      }
    }

    else
    {
      VTDecoderSessionEmitDecodedFrame();
    }
  }

  return kdebug_trace();
}

uint64_t DisplayCallBack_1(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  kdebug_trace();
  if (*(a1 + 16))
  {
    MEMORY[0x277CAEB50](*(a1 + 8), *(a1 + 8 * v7 + 2112), a4, 0, a3);
  }

  else
  {
    kdebug_trace();
    VTDecoderSessionEmitDecodedFrame();
  }

  return kdebug_trace();
}

uint64_t DisplayCallBack_2()
{
  kdebug_trace();
  kdebug_trace();
  VTDecoderSessionEmitDecodedFrame();

  return kdebug_trace();
}

uint64_t AppleAVDWrapperHEVCDecoderDecodeFrameWithOptions(uint64_t a1, uint64_t a2, void *a3, char a4, const __CFDictionary *a5, int *a6)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!a5)
    {
      goto LABEL_25;
    }

    v13 = DerivedStorage;
    valuePtr[0] = 0;
    v33 = 0;
    Value = CFDictionaryGetValue(a5, *MEMORY[0x277CE2620]);
    if (!Value)
    {
LABEL_20:
      v25 = CFDictionaryGetValue(a5, *MEMORY[0x277CE2628]);
      if (v25)
      {
        CFNumberGetValue(v25, kCFNumberIntType, &v33);
        *(v13 + 5828) = v33;
        v26 = *(v13 + 5184);
        if (!v26)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v35 = "AppleAVDWrapperHEVCDecoderDecodeFrameWithOptions";
            v22 = MEMORY[0x277D86220];
            v23 = "AppleAVD: ERROR: %s() - trying to set kAppleAVDExtraInloopFilter before videoContext was created!\n";
            goto LABEL_37;
          }

          goto LABEL_39;
        }

        if (AppleAVDSetParameter(v26, 19, &v33))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v35 = "AppleAVDWrapperHEVCDecoderDecodeFrameWithOptions";
            v22 = MEMORY[0x277D86220];
            v23 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDExtraInloopFilter returned ERROR\n";
            goto LABEL_37;
          }

LABEL_39:
          v24 = 4294954385;
LABEL_40:
          AppleAVDHEVCDecoderEmitErrorToVT(v13);
          v27 = 2;
          if (!a6)
          {
LABEL_41:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v35 = "AppleAVDWrapperHEVCDecoderDecodeFrameWithOptions";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): Got NULL infoFlagsOut!\n", buf, 0xCu);
            }

            return v24;
          }

LABEL_26:
          *a6 = v27;
          return v24;
        }
      }

LABEL_25:
      v24 = AppleAVDWrapperHEVCDecoderDecodeFrame(a1, a2, a3, a4, a6);
      v27 = 0;
      if (!a6)
      {
        goto LABEL_41;
      }

      goto LABEL_26;
    }

    v15 = Value;
    v16 = CFDictionaryGetValue(Value, *MEMORY[0x277CE2770]);
    if (v16)
    {
      CFNumberGetValue(v16, kCFNumberIntType, valuePtr);
      v17 = CFDictionaryGetValue(v15, *MEMORY[0x277CE2768]);
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberIntType, valuePtr + 4);
        v18 = valuePtr[0];
        if (LODWORD(valuePtr[0]) != 1080)
        {
          v19 = HIDWORD(valuePtr[0]);
          if (HIDWORD(valuePtr[0]) != 1080 && ((LOBYTE(valuePtr[0]) | BYTE4(valuePtr[0])) & 0xF) != 0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v35 = "AppleAVDWrapperHEVCDecoderDecodeFrameWithOptions";
              v36 = 1024;
              v37 = v18;
              v38 = 1024;
              v39 = v19;
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): Non-mod16 VRA dimensions with width %d, height %d\n", buf, 0x18u);
            }

            if (*(v13 + 5204) == 2)
            {
              v20 = *(v13 + 5224);
              if (valuePtr[0] != *(v13 + 5224))
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_39;
                }

                v32 = *(v13 + 5228);
                *buf = 136315650;
                v35 = "AppleAVDWrapperHEVCDecoderDecodeFrameWithOptions";
                v36 = 1024;
                v37 = v20;
                v38 = 1024;
                v39 = v32;
                v22 = MEMORY[0x277D86220];
                v23 = "AppleAVD: ERROR: %s(): invalid dimensions (coded width %d, height %d)\n";
                v30 = 24;
                goto LABEL_38;
              }
            }
          }
        }

        v21 = *(v13 + 5184);
        if (!v21)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v35 = "AppleAVDWrapperHEVCDecoderDecodeFrameWithOptions";
            v22 = MEMORY[0x277D86220];
            v23 = "AppleAVD: ERROR: %s() - trying to set kAppleAVDSetVRADimensions before videoContext was created!\n";
            goto LABEL_37;
          }

          goto LABEL_39;
        }

        if (AppleAVDSetParameter(v21, 31, valuePtr))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v35 = "AppleAVDWrapperHEVCDecoderDecodeFrameWithOptions";
            v22 = MEMORY[0x277D86220];
            v23 = "AppleAVD: ERROR: %s() - AppleAVDSetParameter call for kAppleAVDSetVRADimensions returned ERROR\n";
LABEL_37:
            v30 = 12;
LABEL_38:
            _os_log_impl(&dword_277606000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v30);
            goto LABEL_39;
          }

          goto LABEL_39;
        }

        goto LABEL_20;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v35 = "AppleAVDWrapperHEVCDecoderDecodeFrameWithOptions";
        v28 = MEMORY[0x277D86220];
        v29 = "AppleAVD: ERROR: %s(): Failed to retrieve kVTDecompressionResolutionKey_Height from dictionary\n";
        goto LABEL_31;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "AppleAVDWrapperHEVCDecoderDecodeFrameWithOptions";
      v28 = MEMORY[0x277D86220];
      v29 = "AppleAVD: ERROR: %s(): Failed to retrieve kVTDecompressionResolutionKey_Width from dictionary\n";
LABEL_31:
      _os_log_impl(&dword_277606000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
    }

    v24 = 4294954394;
    goto LABEL_40;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDWrapperHEVCDecoderDecodeFrameWithOptions - ERROR! storage is NULL\n", buf, 2u);
  }

  return 311;
}

uint64_t AppleAVDWrapperHEVCDecoderDecodeFrame(uint64_t a1, uint64_t a2, void *a3, char a4, int *a5)
{
  v185 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDWrapperHEVCDecoderDecodeFrame - ERROR! storage is NULL\n", buf, 2u);
    }

    return 311;
  }

  v10 = DerivedStorage;
  kdebug_trace();
  kdebug_trace();
  pthread_mutex_lock((v10 + 5648));
  v11 = *(v10 + 5204);
  if (v11 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v11;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s called on plugin in state %d", buf, 0x12u);
    }

    pthread_mutex_unlock((v10 + 5648));
    return 311;
  }

  v12 = AppleAVDSetParameter(*(v10 + 5184), 17, (v10 + 5816));
  if (v12 | AppleAVDSetParameter(*(v10 + 5184), 35, (v10 + 5820)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
      v13 = MEMORY[0x277D86220];
      v14 = "AppleAVD: %s(): AppleAVD_HEVCDecoder - AppleAVDSetParameter kAppleAVDSetUsageMode or kAppleAVDEnableRVRA returned ERROR";
      v15 = 12;
LABEL_22:
      _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
    }

LABEL_23:
    kdebug_trace();
    v19 = v10;
LABEL_24:
    AppleAVDHEVCDecoderEmitErrorToVT(v19);
    if (a5)
    {
      *a5 = 2;
    }

    goto LABEL_26;
  }

  if (AppleAVDSetParameter(*(v10 + 5184), 19, (v10 + 5828)))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: AppleAVD_HEVCDecoder - AppleAVDSetParameter kAppleAVDExtraInloopFilter returned ERROR";
LABEL_21:
    v15 = 2;
    goto LABEL_22;
  }

  v17 = CMGetAttachment(a3, *MEMORY[0x277CC0718], 0);
  if (v17)
  {
    v18 = CFEqual(v17, *MEMORY[0x277CBED28]) != 0;
  }

  else
  {
    v18 = 0;
  }

  v132 = v18;
  if (AppleAVDSetParameter(*(v10 + 5184), 34, &v132))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: AppleAVD_HEVCDecoder - AppleAVDSetParameter kAppleAVDHandleCRAFrameAsBLA returned ERROR";
    goto LABEL_21;
  }

  theBuffer = CMSampleBufferGetDataBuffer(a3);
  if (!theBuffer || (v20 = CMBlockBufferGetDataLength(theBuffer)) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = theBuffer;
      *&buf[12] = 2048;
      *&buf[14] = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR:  either dataBuffer=%p is invalid or dataLength=%zu is invalid!", buf, 0x16u);
    }

    kdebug_trace();
    v25 = -12909;
    v26 = v10;
LABEL_36:
    AppleAVDHEVCDecoderEmitErrorToVT(v26);
    if (!a5)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v21 = v20;
  if (*(v10 + 5832) != 6)
  {
    v114 = 0;
    v117 = v20;
    goto LABEL_44;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  if (FormatDescription && (v23 = FormatDescription, !CMFormatDescriptionEqual(*(v10 + 24), FormatDescription)))
  {
    FigFormatDescriptionRelease();
    *(v10 + 24) = FigFormatDescriptionRetain();
    CreateHeaderBuffer_0(v10, v23);
    v24 = (v21 + (*(v10 + 5640) & 0xFFFFFF));
    v114 = 1;
  }

  else
  {
    v114 = 0;
    v24 = v21;
  }

  v117 = v24;
  if (*(v10 + 5832) != 6)
  {
LABEL_44:
    Decryptor = FigSampleBufferGetDecryptor();
    v28 = Decryptor;
    if (*(v10 + 5208) == 1 && !Decryptor)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_49:
        v32 = v10;
LABEL_50:
        AppleAVDHEVCDecoderEmitErrorToVT(v32);
        goto LABEL_26;
      }

      *buf = 136315650;
      *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = 1;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      v29 = MEMORY[0x277D86220];
      v30 = "AppleAVD: ERROR: %s(): frame# %d, session: %p, decryptor attachment is NULL\n";
      v31 = 28;
LABEL_48:
      _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, v31);
      goto LABEL_49;
    }

    if (!Decryptor || Decryptor == *(v10 + 5192))
    {
LABEL_88:
      v53 = *(v10 + 5832);
      if (v53 == 4)
      {
        v92 = v21;
        SliceDataForDecryptor = GetSliceDataForDecryptor(v10);
        if (SliceDataForDecryptor)
        {
          v25 = SliceDataForDecryptor;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(v10 + 5208);
            *buf = 136315650;
            *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
            *&buf[12] = 1024;
            *&buf[14] = v94;
            *&buf[18] = 1024;
            *&buf[20] = v25;
            v38 = MEMORY[0x277D86220];
            v39 = "AppleAVD: ERROR: %s(): frame# %d, Could not get slice data for decryptor, err %d\n";
            goto LABEL_203;
          }

          goto LABEL_204;
        }

        v103 = *(v10 + 8000);
        if ((v103 - 257) <= 0xFFFFFFFFFFFFFEFFLL)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v103;
            *&buf[12] = 1024;
            *&buf[14] = 256;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: BAD encryptedSliceCount %zd MAX_SLICES %d", buf, 0x12u);
          }

          v32 = v10;
          goto LABEL_50;
        }

        v53 = *(v10 + 5832);
        v21 = v92;
      }

      if (v53 != 5 || (SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0)) == 0)
      {
        Length = 0;
        goto LABEL_98;
      }

      dataLengtha = v21;
      ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
      if (ValueAtIndex)
      {
        v56 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC0630]);
        if (!Value)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v91 = *(v10 + 5208);
            *buf = 136315650;
            *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
            *&buf[12] = 1024;
            *&buf[14] = v91;
            *&buf[18] = 1024;
            *&buf[20] = 312;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): frame# %d, cryptorIV is NULL, err %d\n", buf, 0x18u);
          }

          AppleAVDHEVCDecoderEmitErrorToVT(v10);
          v25 = 312;
          goto LABEL_38;
        }

        v58 = Value;
        Length = CFDataGetLength(Value);
        if (Length >= 0x11)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
            *&buf[12] = 1024;
            *&buf[14] = Length;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): oversized iv %d\n", buf, 0x12u);
          }

          AppleAVDHEVCDecoderEmitErrorToVT(v10);
          v25 = 313;
          goto LABEL_38;
        }

        v186.length = CFDataGetLength(v58);
        v186.location = 0;
        CFDataGetBytes(v58, v186, (v10 + 5924));
        v95 = CFDictionaryGetValue(v56, *MEMORY[0x277CC0628]);
        CFNumberGetValue(v95, kCFNumberSInt32Type, &valuePtr);
        v96 = CFDictionaryGetValue(v56, *MEMORY[0x277CC0638]);
        if (!v96)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_49;
          }

          *buf = 136315138;
          *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
          v29 = MEMORY[0x277D86220];
          v30 = "AppleAVD: %s() ERROR: CryptorSubsampleAuxiliaryData is NULL";
          v31 = 12;
          goto LABEL_48;
        }

        v97 = v96;
        BytePtr = CFDataGetBytePtr(v96);
        v99 = CFDataGetLength(v97);
        v100 = v99 >> 3;
        if (v99 >= 0x808)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
            *&buf[12] = 2048;
            *&buf[14] = v100;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s() ERROR: crauxNumEntries %ld out of range", buf, 0x16u);
          }

          kdebug_trace();
          goto LABEL_49;
        }

        *(v10 + 8000) = v100;
        if (BytePtr)
        {
          if (v99 >= 8)
          {
            v105 = *BytePtr;
            *(v10 + 5952) = *BytePtr;
            *(v10 + 6976) = *(BytePtr + 1);
            if (v99 >= 0x10)
            {
              v106 = v100 - 1;
              v107 = (v10 + 5956);
              v108 = BytePtr + 8;
              do
              {
                v105 += *v108 + *(v108 - 1);
                *v107 = v105;
                v107[256] = v108[1];
                ++v107;
                v108 += 2;
                --v106;
              }

              while (v106);
            }
          }
        }
      }

      else
      {
        Length = 0;
      }

      v21 = dataLengtha;
      goto LABEL_98;
    }

    dataLength = v21;
    LODWORD(rhs.value) = *(v10 + 5832);
    lhs.value = 0;
    NativeSession = FigCPECryptorGetNativeSession(Decryptor, &lhs);
    if (NativeSession)
    {
      v25 = NativeSession;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(v10 + 5208);
        *buf = 136315650;
        *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = v34;
        *&buf[18] = 1024;
        *&buf[20] = v25;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): frame# %d, FigCPECryptorGetNativeSession returned err %d\n", buf, 0x18u);
      }

      v35 = v10;
      goto LABEL_205;
    }

    v36 = AppleAVDSetParameter(*(v10 + 5184), 24, &rhs);
    if (v36)
    {
      v25 = v36;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(v10 + 5208);
        *buf = 136315650;
        *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = v37;
        *&buf[18] = 1024;
        *&buf[20] = v25;
        v38 = MEMORY[0x277D86220];
        v39 = "AppleAVD: ERROR: %s(): frame# %d, Could not set kAppleAVDSetCryptScheme, err %d\n";
LABEL_203:
        _os_log_impl(&dword_277606000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 0x18u);
        goto LABEL_204;
      }

      goto LABEL_204;
    }

    v40 = AppleAVDSetParameter(*(v10 + 5184), 25, lhs.value);
    if (v40)
    {
      v25 = v40;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(v10 + 5208);
        *buf = 136315650;
        *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = v41;
        *&buf[18] = 1024;
        *&buf[20] = v25;
        v38 = MEMORY[0x277D86220];
        v39 = "AppleAVD: ERROR: %s(): frame# %d, AppleAVDSetParameter [kAppleAVDSetCryptRef] failed with %d\n";
        goto LABEL_203;
      }

LABEL_204:
      v35 = v10;
LABEL_205:
      AppleAVDHEVCDecoderEmitErrorToVT(v35);
LABEL_38:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = v25;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
      }

      goto LABEL_26;
    }

    __dst = *(v10 + 8008);
    v131 = 0;
    ExternalProtectionMethods = FigCPECryptorGetExternalProtectionMethods(v28, &v131);
    if (ExternalProtectionMethods)
    {
      v25 = ExternalProtectionMethods;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(v10 + 5208);
        *buf = 136315650;
        *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = v43;
        *&buf[18] = 1024;
        *&buf[20] = v25;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): frame# %d, FigCPECryptorGetExternalProtectionMethods, err %d\n", buf, 0x18u);
      }

      AppleAVDHEVCDecoderEmitErrorToVT(v10);
      goto LABEL_38;
    }

    v44 = 3;
    if ((v131 & 1) == 0)
    {
      v44 = 1;
    }

    v45 = 7;
    if ((v131 & 2) == 0)
    {
      v45 = v44;
    }

    v46 = *(v10 + 8008);
    v113 = v45;
    if (v46 == v45)
    {
LABEL_83:
      v52 = *(v10 + 5192);
      if (v28 != v52)
      {
        if (v52)
        {
          CFRelease(v52);
        }

        *(v10 + 5192) = v28;
        CFRetain(v28);
      }

      v21 = dataLength;
      goto LABEL_88;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(v10 + 5208);
      *buf = 67109632;
      *&buf[4] = v47;
      *&buf[8] = 2048;
      *&buf[10] = v46;
      *&buf[18] = 2048;
      *&buf[20] = v113;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder: frame# %d, new CVPixelBufferPool created protectionOptions %llu %llu \n", buf, 0x1Cu);
    }

    *(v10 + 8008) = v113;
    if (*(v10 + 8016))
    {
      inited = InitPixelBufferCompressionSupported(*v10, *(v10 + 5184), *(v10 + 5220), *(v10 + 5212), *(v10 + 5216), *(v10 + 5224), *(v10 + 5228), *(v10 + 5745), *(v10 + 5744), *(v10 + 5801), v113, 5, 4, 2, 2, (v10 + 40), (v10 + 56), *(v10 + 16848), *(v10 + 16852), *(v10 + 16866), 0);
      if (!inited)
      {
        v49 = 1;
LABEL_82:
        *(v10 + 16865) = v49;
        goto LABEL_83;
      }
    }

    else
    {
      inited = InitPixelBufferCompressionNotSupported_0(v10);
      if (!inited)
      {
        v49 = 0;
        goto LABEL_82;
      }
    }

    v25 = inited;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(v10 + 5208);
      v51 = *(v10 + 8016);
      *buf = 136316418;
      *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v50;
      *&buf[18] = 2048;
      *&buf[20] = __dst;
      v179 = 2048;
      v180 = v113;
      v181 = 1024;
      v182 = v51;
      v183 = 1024;
      v184 = v25;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): frame# %d, new CVPixelBufferPool created protectionOptions %llu %llu - ioSurfaceType: %d, err: %d\n", buf, 0x32u);
    }

    AppleAVDHEVCDecoderEmitErrorToVT(v10);
    *(v10 + 8008) = __dst;
    goto LABEL_38;
  }

  Length = 0;
LABEL_98:
  v130 = **&MEMORY[0x277CC08F0];
  v129 = v130;
  CMSampleBufferGetOutputDuration(buf, a3);
  v59 = *buf;
  *(v10 + 5900) = *&buf[16];
  *(v10 + 5884) = v59;
  dataLengthb = v21;
  if ((*(v10 + 5896) & 0x1D) == 1)
  {
    if ((*(v10 + 5848) & 0x1D) == 1)
    {
      v60 = v10 + 5836;
      CMSampleBufferGetDecodeTimeStamp(&v130, a3);
      lhs = v130;
      rhs = *(v10 + 5836);
      CMTimeSubtract(buf, &lhs, &rhs);
      v61 = *buf;
      v62 = v10 + 5744;
      *(v10 + 5900) = *&buf[16];
      *(v10 + 5884) = v61;
      *(v10 + 5836) = *&v130.value;
      epoch = v130.epoch;
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&v129, a3);
      v60 = v10 + 5860;
      lhs = v129;
      rhs = *(v10 + 5860);
      CMTimeSubtract(buf, &lhs, &rhs);
      v65 = *buf;
      v62 = v10 + 5744;
      *(v10 + 5900) = *&buf[16];
      *(v10 + 5884) = v65;
      *(v10 + 5860) = *&v129.value;
      epoch = v129.epoch;
    }

    *(v60 + 16) = epoch;
    v66 = *(v62 + 140);
    if (v66 < 1)
    {
      v64 = 0.0;
    }

    else
    {
      v64 = *(v10 + 5892) / v66;
    }

    *(v10 + 5912) = v64;
    v21 = dataLengthb;
  }

  else
  {
    v64 = *(v10 + 5912);
  }

  if (((v64 + 0.5) - 1025) >= 0xFFFFFC00)
  {
    v67 = (v64 + 0.5);
  }

  else
  {
    v67 = 30;
  }

  v68 = *(v10 + 5920);
  if (v67 != v68)
  {
    v67 = filterSmallDeltaFPS(v68, v67);
  }

  *(v10 + 5920) = v67;
  *(v10 + 8156) = 1;
  if (*(v10 + 8164) == 1)
  {
    if ((*(v10 + 8153) & 1) == 0 && !*(v10 + 8168))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = 0;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s - lhvc is not received %d for mvhevc stream", buf, 0x12u);
      }

      v19 = v10;
      goto LABEL_24;
    }

    if (*(v10 + 5208) == 1)
    {
      AppleAVDHEVCCheckEnableMultiViewDecode(v10);
      v69 = AppleAVDSetParameter(*(v10 + 5184), 5, (v10 + 8164));
      if (v69)
      {
        v25 = v69;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(lhs.value) = 0;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: Could not get bitstream buffer", &lhs, 2u);
        }

        AppleAVDHEVCDecoderEmitErrorToVT(v10);
LABEL_126:
        if (a5)
        {
          *a5 = 2;
        }

        goto LABEL_128;
      }
    }

    if (*(v10 + 8160) >= 2u)
    {
      if (*(v10 + 8164))
      {
        calcLayersToDecodeFromDisplayLayersList(v10);
        if (getMultiViewLayerOffsetInfo(v10, theBuffer, v21, buf))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(lhs.value) = 0;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder ERROR: Could not get getMultiViewLayerOffsetInfo", &lhs, 2u);
          }

          AppleAVDHEVCDecoderEmitErrorToVT(v10);
          v25 = 0;
          goto LABEL_126;
        }
      }
    }
  }

  v125[1] = v117;
  v126 = 0;
  v125[0] = 0;
  LODWORD(v126) = *(v10 + 5208);
  v70 = AppleAVDGetParameter(*(v10 + 5184), 55, v125);
  if (v70)
  {
    v25 = v70;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
      *&buf[12] = 1024;
      *&buf[14] = v25;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): AppleAVDGetParameter [kAppleAVDGetCompressedPictureBuffer] failed with %d\n", buf, 0x12u);
    }

    v26 = v10;
    goto LABEL_36;
  }

  v71 = v125[0];
  __dsta = v125[0];
  if (v114)
  {
    memcpy(v125[0], *(v10 + 5632), *(v10 + 5640) & 0xFFFFFF);
    v71 = &__dsta[*(v10 + 5640) & 0xFFFFFF];
  }

  if (CMBlockBufferCopyDataBytes(theBuffer, 0, dataLengthb, v71))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING, fail to copy data bytes, nothing to decode", buf, 2u);
    }

    kdebug_trace();
    v25 = -12911;
    AppleAVDHEVCDecoderEmitErrorToVT(v10);
    AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 5184), *(v10 + 5208));
    if (!a5)
    {
      goto LABEL_38;
    }

LABEL_37:
    *a5 = 2;
    goto LABEL_38;
  }

  theBuffera = *(v10 + 5208);
  v72 = *(v10 + 8088);
  memset(v123, 0, sizeof(v123));
  v124 = 0;
  LOBYTE(v123[0]) = v72;
  if (!v72)
  {
    AppleAVDSetParameter(*(v10 + 5184), 39, v123);
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    goto LABEL_26;
  }

  v111 = v67;
  v73 = 8089;
  v74 = 2;
  v75 = v72;
  do
  {
    *(v123 + v74) = *(v10 + v73);
    v74 += 2;
    ++v73;
    --v75;
  }

  while (v75);
  AppleAVDSetParameter(*(v10 + 5184), 39, v123);
  v76 = 0;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v110 = (v72 - 1);
  v156 = 0u;
  v157 = 0u;
  v109 = v72;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v77 = *(v10 + 5208);
  while (1)
  {
    bzero(&v135, 0x878uLL);
    *&v134 = __dsta;
    *(&v134 + 1) = v117;
    LODWORD(v135) = v77;
    v172 = *(v10 + 8089 + v76);
    v78 = !*(v10 + 8164) || v110 == v76;
    v79 = v78;
    v173 = v79;
    v171 = theBuffera;
    v174 = *v10;
    v175 = a2;
    if (*(v10 + 8024))
    {
      if ((a4 & 4) != 0)
      {
        goto LABEL_158;
      }

      v80 = 1;
    }

    else
    {
      v80 = *(v10 + 8020) ? 2 : 1;
    }

    DWORD1(v135) = v80;
LABEL_158:
    HIDWORD(v135) = 0;
    *&v136 = __PAIR64__(Length, valuePtr);
    v167 = v111;
    *(&v136 + 1) = *(v10 + 5924);
    v170 = 0;
    v176 = 0;
    v169 = 0;
    v168 = 0;
    v177 = *(v10 + 16865);
    if ((*(v10 + 5832) & 0xFFFFFFFE) == 4)
    {
      v81 = *(v10 + 8000);
      if (v81 >= 257)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
          *&buf[12] = 2048;
          *&buf[14] = v81;
          *&buf[22] = 1024;
          *&buf[24] = 256;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): encryptedSliceCount (%ld) exceeds MAX_SLICES (%d)\n", buf, 0x1Cu);
        }

        kdebug_trace();
        AppleAVDHEVCDecoderEmitErrorToVT(v10);
        AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 5184), *(v10 + 5208));
        if (a5)
        {
          *a5 = 2;
        }

        v25 = -12911;
        goto LABEL_38;
      }

      if (HIDWORD(v81) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
        *&buf[12] = 1024;
        *&buf[14] = 3682;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v81 = *(v10 + 8000);
      }

      v166 = v81;
      __memcpy_chk();
      __memcpy_chk();
    }

    else
    {
      v166 = 0;
    }

    if (a4)
    {
      BYTE8(v135) = 0;
      v82 = *a5 | 1;
      *a5 = v82;
    }

    else
    {
      BYTE8(v135) = 1;
      v82 = *a5;
    }

    v83 = *(v10 + 5208);
    *(v10 + 64 + 8 * v83) = a2;
    *(v10 + 4160 + 4 * v83) = v82;
    if (!v76)
    {
      v84 = *(v10 + 8040);
      if (v84)
      {
        if (HIDWORD(dataLengthb) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
          *&buf[12] = 1024;
          *&buf[14] = 3713;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        }

        if (WriteNAL(v84, __dsta, dataLengthb))
        {
          v85 = *(v10 + 8048);
          if (v85)
          {
            fprintf(v85, "Error writing decEncryptedOutput for frame %d \n", *(v10 + 5208));
          }
        }
      }
    }

    v86 = *(v10 + 8056);
    if (v86)
    {
      fwrite(__dsta, 1uLL, dataLengthb, v86);
    }

    v87 = AppleAVDDecodeFrame(*(v10 + 5184), &v134);
    if (!v76)
    {
      v88 = *(v10 + 8032);
      if (v88)
      {
        if (HIDWORD(dataLengthb) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AppleAVDWrapperHEVCDecoderDecodeFrame";
          *&buf[12] = 1024;
          *&buf[14] = 3733;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        }

        if (WriteNAL(v88, __dsta, dataLengthb))
        {
          v89 = *(v10 + 8048);
          if (v89)
          {
            fprintf(v89, "Error writing decOutput for frame %d \n", *(v10 + 5208));
          }
        }
      }
    }

    v90 = *(v10 + 8064);
    if (v90)
    {
      fwrite(__dsta, 1uLL, dataLengthb, v90);
    }

    if (v87)
    {
      break;
    }

    v77 = *(v10 + 5208) + 1;
    *(v10 + 5208) = v77;
    if (v109 == ++v76)
    {
      goto LABEL_26;
    }
  }

  kdebug_trace();
  AppleAVDHEVCDecoderEmitErrorToVT(v10);
  AppleAVDReleaseOneCPBWithFrameworkError(*(v10 + 5184), *(v10 + 5208));
  *a5 = 2;
  v25 = HIDWORD(v135);
  v101 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v25)
  {
    if (v101)
    {
      v104 = *(v10 + 5208);
      *buf = 67109120;
      *&buf[4] = v104;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder_DecodeFrame ERROR: framenum %d kVTVideoDecoderMalfunctionErr", buf, 8u);
    }

    v25 = -12911;
    goto LABEL_38;
  }

  if (!v101)
  {
    goto LABEL_38;
  }

  v102 = *(v10 + 5208);
  *buf = 67109376;
  *&buf[4] = v102;
  *&buf[8] = 1024;
  *&buf[10] = v25;
  _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder_DecodeFrame ERROR: framenum %d decryptError %x", buf, 0xEu);
  v25 = HIDWORD(v135);
LABEL_128:
  if (v25)
  {
    goto LABEL_38;
  }

LABEL_26:
  pthread_mutex_unlock((v10 + 5648));
  kdebug_trace();
  return 0;
}

void HevcReleaseSliceHeader(uint64_t a1)
{
  if (*(a1 + 1872))
  {
    free(*(a1 + 1880));
    *(a1 + 1880) = 0;
  }
}

uint64_t CAVDHevcDecoder::initPicture(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6, char a7)
{
  v12 = a3[1];
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  v13 = a3[4];
  v14 = a3[3] - 1;
  *(a6 + 4) = v12;
  *(a6 + 8) = v14;
  *(a6 + 16) = a5[8];
  v15 = *(a1 + 8232);
  *(a6 + 48) = v15;
  *(a6 + 28) = *(a1 + 2968);
  v16 = *(a1 + 8228);
  *(a6 + 64) = v16;
  *(a6 + 36) = v13;
  if (*(a1 + 2644))
  {
    v15 = *(a1 + 8248);
    v16 = *(a1 + 8244);
  }

  *(a6 + 56) = v15;
  *(a6 + 68) = v16;
  *(a6 + 104) = *(a4 + 3600);
  *(a6 + 102) = *(a4 + 3604);
  *(a6 + 72) = *(a4 + 3608);
  *(a6 + 103) = *(a4 + 3616);
  *(a6 + 80) = *(a4 + 3620);
  *(a6 + 105) = *(a4 + 3636);
  *(a6 + 106) = *(a4 + 3640);
  CAVDHevcDecoder::deriveHevcOutputControlFlags(a1, a3, a5, a6, a7);
  *(a6 + 12) = HEVC_RLM::decodePicOrderCnt(*(a1 + 3016), a3, a4, a5, *(a6 + 1));
  HEVC_RLM::decodeReferencePictureSet(*(a1 + 3016), a6, a4, a5);
  *&v17 = -1;
  *(&v17 + 1) = -1;
  *(a1 + 8376) = v17;
  *(a1 + 8392) = v17;
  *(a1 + 8344) = v17;
  *(a1 + 8360) = v17;
  *(a1 + 8608) = 0;
  *(a1 + 8408) = 0u;
  *(a1 + 8424) = 0u;
  *(a1 + 8440) = 0u;
  *(a1 + 8456) = 0u;
  CAVDHevcDecoder::hevcOutputBumping(a1, a3, a4, a5, a6);
  return 0;
}

void CAVDHevcDecoder::hevcOutputBumping(HEVC_RLM **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 4) & 0xFFFFFFF8) == 0x10 && *(a5 + 1) == 1)
  {
    if (*(a5 + 4) == 21 || *(a4 + 1) == 1)
    {
      v7 = a1[377];

      HEVC_RLM::releaseAllPictures(v7);
    }

    else
    {
      HEVC_RLM::releaseUnusedPictures(a1[377]);
      v10 = a1[377];
      if (*(v10 + 708))
      {
        v11 = 0;
        do
        {
          if (!HEVC_RLM::bumpingProcess(v10, v12))
          {
            break;
          }

          if (v11 > 0xF)
          {
            break;
          }

          ++v11;
          (*(*a1 + 46))(a1, v12);
          v10 = a1[377];
        }

        while (*(v10 + 708));
      }
    }
  }

  else
  {
    HEVC_RLM::releaseUnusedPictures(a1[377]);
    if (HEVC_RLM::isBumpingNeededForNonIRAP(a1[377], a3))
    {
      v8 = 0;
      do
      {
        if (!HEVC_RLM::bumpingProcess(a1[377], v12) || v8 > 0xF)
        {
          break;
        }

        ++v8;
        (*(*a1 + 46))(a1, v12);
      }

      while (HEVC_RLM::isBumpingNeededForNonIRAP(a1[377], a3));
    }
  }
}

void HEVC_RLM::releaseUnusedPictures(HEVC_RLM *this)
{
  v2 = 0;
  v3 = *(*(this + 1) + 10);
  v4 = this + 18;
  do
  {
    if (*(v4 - 2) == 1 && !*(v4 + 18) && (!v3 || !*v4))
    {
      HEVC_RLM::removeEntry(this, v2);
    }

    ++v2;
    v4 += 176;
  }

  while (v2 != 16);
}

uint64_t AppleAVDCommandBuilder::decodeFrameFig(uint64_t a1, uint64_t a2, int *a3)
{
  v91 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  result = AppleAVDCommandBuilder::decodeFrameFigHelper_CheckParameters(a1, a2, a3);
  if (!result)
  {
    v7 = *(a2 + 12) & 0xF;
    v8 = *(a1 + 5600);
    v9 = (v8 + 3656 * v7);
    bzero(v9, 0xE48uLL);
    v10 = *(a2 + 12);
    *(a1 + 5660) = v10;
    v11 = *(a2 + 2176);
    *(a1 + 5668) = v11;
    v12 = *(a2 + 2184);
    *(a1 + 5672) = v12;
    *(a1 + 5676) = *(a2 + 2324);
    *(a1 + 6016) = *(a2 + 2124);
    *(a1 + 5644) = *(a2 + 8);
    *(a1 + 5892) = *(a2 + 2116);
    *(a1 + 6248) = *(a2 + 2336);
    if (*(a2 + 2348))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "decodeFrameFig";
        *&buf[12] = 1024;
        *&buf[14] = v10;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): foreError detected!! frameNumber: %d", buf, 0x12u);
      }

      v13 = 0;
      *(v9 + 3644) = *(a2 + 2333) ^ 1;
      v14 = 316;
      goto LABEL_6;
    }

    v48 = *(a2 + 2332);
    *(a1 + 6036) = v48;
    if (*(a2 + 2333) == 1 && (!v12 || !v11 || *(a1 + 5412) == 1))
    {
      if ((*(**(a1 + 8) + 72))(*(a1 + 8)))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "decodeFrameFig";
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s, error: Trying to map to an index that already has a mapping", buf, 0xCu);
        }

        v13 = 0;
        v14 = -1;
        goto LABEL_6;
      }

      v58 = (*(**(a1 + 8) + 56))(*(a1 + 8), *(a1 + 6036), 0xFFFFFFFFLL, 1, 0, *a2, *(a2 + 2328), 0);
      if (v58)
      {
        v14 = v58;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "decodeFrameFig";
          v59 = MEMORY[0x277D86220];
          v60 = "AppleAVD: %s, VAMapPixelBuffer returned fail";
          v61 = 12;
LABEL_139:
          _os_log_impl(&dword_277606000, v59, OS_LOG_TYPE_DEFAULT, v60, buf, v61);
          goto LABEL_140;
        }

        goto LABEL_140;
      }

      v48 = *(a1 + 6036);
    }

    *(v9 + 3644) = 1;
    v86 = 0;
    if (((*(**(a1 + 8) + 112))(*(a1 + 8), v48, &v86, 1) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "decodeFrameFig";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decodeGetRenderTarget returned fail", buf, 0xCu);
      }

      v13 = 0;
      v14 = 308;
LABEL_6:
      if (*(a2 + 2124) == 1)
      {
        v15 = *(a2 + 20);
        if (v15 == -1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v15 = *(a2 + 16);
        if (v15 > 0x2F)
        {
LABEL_9:
          *(v9 + 903) = *(a2 + 2164);
          *(v9 + 859) = *(a2 + 12);
          *(v9 + 864) = *(a2 + 28);
          *(v9 + 865) = *(a2 + 8);
          *(v9 + 894) = a3[1];
          v22 = (a2 + 20);
          v23 = *(a2 + 20);
          *(v9 + 861) = v23;
          *(v9 + 863) = v23;
          *(v9 + 452) = *(a2 + 2176);
          v24 = *(a2 + 2184);
          *(v9 + 906) = v24;
          v25 = v24 == 0;
          v26 = 2188;
          if (v25)
          {
            v26 = 12;
          }

          *(v9 + 907) = *(a2 + v26);
          *(v9 + 454) = *(a2 + 2136);
          LODWORD(v27) = *(a1 + 280);
          if (v27 >= 1)
          {
            v28 = 0;
            v29 = a1 + 284;
            v30 = v9 + 52;
            do
            {
              *(v9 + v28 + 68) = *(v29 + 4 * v28);
              v31 = a1 + 416 + 104 * *(v29 + 4 * v28);
              v32 = *v31;
              v33 = *(v31 + 32);
              *(v30 + 1) = *(v31 + 16);
              *(v30 + 2) = v33;
              *v30 = v32;
              v34 = *(v31 + 48);
              v35 = *(v31 + 64);
              v36 = *(v31 + 80);
              *(v30 + 12) = *(v31 + 96);
              *(v30 + 4) = v35;
              *(v30 + 5) = v36;
              *(v30 + 3) = v34;
              ++v28;
              v27 = *(a1 + 280);
              v30 += 52;
            }

            while (v28 < v27);
          }

          *v9 = v27;
          v37 = *(a1 + 5408);
          if (v37 >= 3)
          {
            if (v37 != 3)
            {
              if (v37 != 4)
              {
                goto LABEL_18;
              }

              if (*(a1 + 6016) == 1)
              {
                v46 = -1;
                *(v9 + 860) = -1;
                if (v27 >= 1)
                {
                  v22 = (a1 + 4 * (v27 - 1) + 284);
                }

                v47 = *v22;
                *(v9 + 861) = v47;
              }

              else
              {
                v57 = (a2 + 16);
                if (v27 >= 1)
                {
                  v57 = (a1 + 4 * (v27 - 1) + 284);
                }

                v46 = *v57;
                *(v9 + 860) = *v57;
                v47 = *(v9 + 861);
              }

              *(v9 + 862) = v46;
              *(v9 + 863) = v47;
              if (*(v9 + 903) == 1)
              {
LABEL_18:
                v39 = 0;
                v40 = a1 + 16;
                v41 = 1;
                do
                {
                  v42 = v41;
                  LODWORD(v43) = *(v40 + 4 * v39);
                  if (v43 >= 1)
                  {
                    v44 = 0;
                    do
                    {
                      *(3656 * v7 + v8 + 4 + 32 * v39 + v44) = *(a1 + 24 + (v39 << 7) + 4 * v44);
                      ++v44;
                      v43 = *(v40 + 4 * v39);
                    }

                    while (v44 < v43);
                  }

                  v41 = 0;
                  *(v9 + v39 + 2) = v43;
                  *(v40 + 4 * v39) = 0;
                  v39 = 1;
                }

                while ((v42 & 1) != 0);
                *a3 = v14;
                *(v9 + 858) = v14;
                (*(**(a1 + 8) + 96))(*(a1 + 8), 9, v9 + 1824);
                if (v14)
                {
                  v45 = *(a1 + 6288);
                }

                else
                {
                  CAVDDecoder::getDecoderAnalyticsInfo(*(a1 + 8), *(a1 + 6288) + 32);
                  v45 = *(a1 + 6288);
                  *(v9 + 913) = *(v45 + 36);
                  if (*(a1 + 5408) == 4 && (*(v45 + 21) & 1) == 0 && *(v45 + 48))
                  {
                    *(v45 + 21) = 1;
                    *(v45 + 22) = *(a1 + 6248);
                  }

                  *(v45 + 56) = 1;
                }

                *(v45 + 23) |= *(a2 + 2340);
                *(v45 + 18) |= *(a1 + 6016);
                *(v45 + 20) = (*(a2 + 2144) | *(v45 + 20)) != 0;
                *(v45 + 19) = (*(v45 + 19) | *(a2 + 2132)) != 0;
                if (v14 > 408)
                {
                  if (v14 == 409)
                  {
                    *a3 = 0;
                    v49 = 409;
                    *(v9 + 858) = 409;
                    if (v13)
                    {
LABEL_57:
                      v50 = AppleAVDCommandBuilder::decodeFrameFigHelper_CreateAndSubmitDecodeCMD(a1, a2, v14, v49);
                      if (v50)
                      {
                        if (*(a2 + 2184))
                        {
                          if ((v50 - 409) < 2 || v50 == 51)
                          {
                            goto LABEL_71;
                          }

                          *__str = 1;
                          v51 = (*(**(a1 + 8) + 104))(*(a1 + 8), 18, __str);
                          if (v51)
                          {
                            v52 = v51;
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 67109120;
                              *&buf[4] = v52;
                              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDDecodeFrameResponse kVASetSkipToNextIDR error: %d", buf, 8u);
                            }
                          }

                          if (!*(a2 + 2180))
                          {
                            goto LABEL_71;
                          }

                          v53 = CPBManager::waitForCPBsOutstanding(*(*a1 + 960), 0);
                          if (!v53)
                          {
                            goto LABEL_71;
                          }

                          v54 = v53;
                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_71;
                          }
                        }

                        else
                        {
                          v55 = CPBManager::waitForCPBsOutstanding(*(*a1 + 960), 0);
                          if (!v55)
                          {
                            goto LABEL_71;
                          }

                          v54 = v55;
                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_71;
                          }
                        }

                        *buf = 136315394;
                        *&buf[4] = "decodeFrameFig";
                        *&buf[12] = 1024;
                        *&buf[14] = v54;
                        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): timeout timeoutStatus: %d", buf, 0x12u);
                      }

LABEL_71:
                      kdebug_trace();
                      return 0;
                    }

LABEL_56:
                    AppleAVDCommandBuilder::setReleaseCurrentBuffersToResponseBuffer(a1, v9);
                    goto LABEL_57;
                  }

                  v49 = v14;
                  if (v14 == 410)
                  {
LABEL_55:
                    if (v13)
                    {
                      goto LABEL_57;
                    }

                    goto LABEL_56;
                  }
                }

                else
                {
                  v49 = v14;
                  if (!v14)
                  {
                    goto LABEL_57;
                  }

                  if (v14 == 51)
                  {
                    v49 = 0;
                    *a3 = 0;
                    *(v9 + 858) = 0;
                    goto LABEL_57;
                  }
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  *&buf[4] = "decodeFrameFig";
                  _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Error! Calling processHWResponse()!", buf, 0xCu);
                }

                v49 = 315;
                goto LABEL_55;
              }

LABEL_17:
              *(a1 + 280) = 0;
              goto LABEL_18;
            }

            v56 = *(a2 + 16);
            *(v9 + 860) = v56;
            *(v9 + 862) = v56;
            if (v14 != 51)
            {
              goto LABEL_17;
            }

            if (*(a1 + 6016) == 1)
            {
              *(v9 + 862) = -1;
              *(v9 + 863) = *(a1 + 6252);
              goto LABEL_17;
            }

            v38 = *(a1 + 6252);
          }

          else
          {
            v38 = *(a2 + 16);
            *(v9 + 860) = v38;
          }

          *(v9 + 862) = v38;
          goto LABEL_17;
        }
      }

      v16 = a1 + 104 * v15;
      v17 = *(v9 + 217);
      v18 = *(v9 + 219);
      *(v16 + 432) = *(v9 + 218);
      *(v16 + 448) = v18;
      *(v16 + 416) = v17;
      v19 = *(v9 + 220);
      v20 = *(v9 + 221);
      v21 = *(v9 + 222);
      *(v16 + 512) = *(v9 + 446);
      *(v16 + 480) = v20;
      *(v16 + 496) = v21;
      *(v16 + 464) = v19;
      goto LABEL_9;
    }

    v62 = v86;
    v63 = *(v86 + 8);
    v64 = *(v86 + 24);
    *(a1 + 5456) = *(v86 + 40);
    *(a1 + 5440) = v64;
    *(a1 + 5424) = v63;
    v65 = *(v62 + 56);
    v66 = *(v62 + 72);
    v67 = *(v62 + 88);
    *(a1 + 5520) = *(v62 + 104);
    *(a1 + 5504) = v67;
    *(a1 + 5488) = v66;
    *(a1 + 5472) = v65;
    v68 = *(v62 + 120);
    v69 = *(v62 + 136);
    v70 = *(v62 + 152);
    *(a1 + 5584) = *(v62 + 168);
    *(a1 + 5568) = v70;
    *(a1 + 5552) = v69;
    *(a1 + 5536) = v68;
    *(a1 + 5648) = *a2;
    if ((*(a1 + 5893) & 1) == 0 && *(a1 + 5892) == 1 && *(a2 + 2144))
    {
      v71 = AppleAVDCommandBuilder::allocRVRAMemory(a1, *(a1 + 5624), *(a1 + 5628));
      if (v71)
      {
        v14 = v71;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v59 = MEMORY[0x277D86220];
          v60 = "AppleAVD: createDecoder() error creating rvra buffers!";
          v61 = 2;
          goto LABEL_139;
        }

LABEL_140:
        v13 = 0;
        goto LABEL_6;
      }

      *(a1 + 5893) = 1;
      (*(**(a1 + 8) + 104))(*(a1 + 8), 28, a1 + 5896);
    }

    v72 = AppleAVDCommandBuilder::decodeFrameFigHelper_VASetParameters(a1, a2);
    if (v72)
    {
      v14 = v72;
      goto LABEL_140;
    }

    a3[1] = 0;
    if (*(a1 + 5672))
    {
      (*(**(a1 + 8) + 104))(*(a1 + 8), 10, a2 + 2192);
    }

    (*(**(a1 + 8) + 104))(*(a1 + 8), 39, a2 + 2112);
    v73 = *(a1 + 6240);
    if (!v73)
    {
      goto LABEL_113;
    }

    if (*(a2 + 2112))
    {
      (*(**(a1 + 8) + 104))(*(a1 + 8), 40, a2 + 1088);
      (*(**(a1 + 8) + 104))(*(a1 + 8), 41, a2 + 64);
      v73 = *(a1 + 6240);
    }

    if (v73 != 4)
    {
      if (v73 == 2)
      {
        v74 = *(a1 + 5648);
        v75 = *(a1 + 5880);
        if (v75 == 5)
        {
          v82 = *(a1 + 6232);
          *(v82 + 216) = 2;
          *(v82 + 236) = 1;
          *(v82 + 220) = *(a2 + 48);
          (*(**(a1 + 8) + 104))(*(a1 + 8), 36, *(a1 + 6232) + 216);
          *(*(a1 + 6232) + 244) = *(*(a1 + 6232) + 246) << 16;
          *(*(a1 + 6232) + 244) |= 0x10000u;
          v77 = *(**(a1 + 8) + 104);
          goto LABEL_142;
        }

        if (v75 == 4 && *(a2 + 44) && *(a1 + 5408) == 4)
        {
          v76 = *(a1 + 6232);
          *(v76 + 216) = 4;
          *(v76 + 236) = 0x100000001;
          *(v76 + 220) = *(a2 + 48);
          v77 = *(**(a1 + 8) + 104);
LABEL_142:
          v77();
        }

LABEL_114:
        *(a1 + 5680) = *(a2 + 20);
        v78 = *(a1 + 5608);
        if ((v78 == 28 || v78 >= 0x12F) && (*(a1 + 6040) & 8) != 0)
        {
          (*(**(a1 + 8) + 104))(*(a1 + 8), 51, *(a1 + 6048));
        }

        (*(**(a1 + 8) + 104))(*(a1 + 8), 24, a2 + 2340);
        kdebug_trace();
        v14 = (*(**(a1 + 8) + 32))(*(a1 + 8), v74, *(a2 + 8), *(a2 + 12), *(a2 + 16), *(a2 + 20), *(a2 + 24), v9 + 1736);
        kdebug_trace();
        if (!v14)
        {
          v13 = 1;
          goto LABEL_123;
        }

        if (v14 == 51 || v14 == 409)
        {
          v13 = 0;
LABEL_123:
          (*(**(a1 + 8) + 96))(*(a1 + 8), 22, a1 + 5632);
          (*(**(a1 + 8) + 96))(*(a1 + 8), 7, v9 + 1790);
          if (*(a1 + 6240) == 3 && (SampleBufferForSIODecrypt = AppleAVDCommandBuilder::retrieveSampleBufferForSIODecrypt(a1)) != 0)
          {
            v14 = SampleBufferForSIODecrypt;
          }

          else if (*(*a1 + 3912) == 1 && *(a1 + 6296))
          {
            (*(**(a1 + 8) + 208))(*(a1 + 8));
          }

          goto LABEL_6;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_140;
        }

        *buf = 136315394;
        *&buf[4] = "decodeFrameFig";
        *&buf[12] = 1024;
        *&buf[14] = v14;
        v59 = MEMORY[0x277D86220];
        v60 = "AppleAVD: %s(): ERROR! Failed to decode frame - status (%d)";
LABEL_131:
        v61 = 18;
        goto LABEL_139;
      }

LABEL_113:
      a3[1] = 0;
      v74 = *(a1 + 5648);
      goto LABEL_114;
    }

    v80 = *(a1 + 5408);
    if (v80 != 1)
    {
      v14 = -536870206;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "decodeFrameFig";
        *&buf[12] = 1024;
        *&buf[14] = v80;
        *&buf[18] = 1024;
        *&buf[20] = 4;
        v59 = MEMORY[0x277D86220];
        v60 = "AppleAVD: %s incompatible codec %d and decrypt method %d";
        v61 = 24;
        goto LABEL_139;
      }

      goto LABEL_140;
    }

    v81 = *(a1 + 5880);
    if (v81)
    {
      if (v81 != 3)
      {
        if (v81 != 2)
        {
          v14 = -536870206;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_140;
          }

          *buf = 136315394;
          *&buf[4] = "decodeFrameFig";
          *&buf[12] = 1024;
          *&buf[14] = v81;
          v59 = MEMORY[0x277D86220];
          v60 = "AppleAVD: %s(): transcryption attempted with incompatible scheme %d";
          goto LABEL_131;
        }

        *(*(a1 + 6232) + 244) |= 0x100000u;
        *(*(a1 + 6232) + 244) = 1;
        *(*(a1 + 6232) + 245) = 9;
        goto LABEL_151;
      }

      *(*(a1 + 6232) + 244) = 10;
      *(*(a1 + 6232) + 244) &= 0xFFFF00FF;
      v90 = 0;
      memset(buf, 0, sizeof(buf));
      *__str = 0;
      v88 = 0;
      if (*(a2 + 44))
      {
        v83 = 0;
        do
        {
          snprintf(__str, 3uLL, "%02x", *(a2 + 48 + v83));
          strlcat(buf, __str, 0x21uLL);
          ++v83;
        }

        while (v83 < *(a2 + 44));
      }
    }

    else
    {
      *(*(a1 + 6232) + 244) &= ~0x100000u;
      *(*(a1 + 6232) + 244) = 10;
      *(*(a1 + 6232) + 244) &= 0xFFFF00FF;
      v90 = 0;
      memset(buf, 0, sizeof(buf));
      *__str = 0;
      v88 = 0;
      if (*(a2 + 44))
      {
        v84 = 0;
        do
        {
          snprintf(__str, 3uLL, "%02x", *(a2 + 48 + v84));
          strlcat(buf, __str, 0x21uLL);
          ++v84;
        }

        while (v84 < *(a2 + 44));
      }
    }

    v85 = *(a1 + 6232);
    *(v85 + 216) = 4;
    *(v85 + 236) = 0x100000001;
    *(v85 + 220) = *(a2 + 48);
    (*(**(a1 + 8) + 104))(*(a1 + 8), 36, *(a1 + 6232) + 216);
LABEL_151:
    *(*(a1 + 6232) + 244) &= 0x3FFFFFu;
    (*(**(a1 + 8) + 104))(*(a1 + 8), 38, *(a1 + 6232) + 244);
    v74 = *(a1 + 5648);
    goto LABEL_114;
  }

  return result;
}

uint64_t CAVDHevcDecoder::VADecodeFrame(_DWORD *a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  v221 = *MEMORY[0x277D85DE8];
  a1[740] = 0;
  *(a1 + 371) = 0;
  v199 = a1 + 2048;
  *(a1 + 8994) = 0;
  a1[2237] = 0;
  v14 = a4 == 1;
  if (a4 == 1)
  {
    (*(*a1 + 256))(a1, 1);
  }

  if (a5 == -1)
  {
    v196 = 0;
    *(a1 + 1031) = 0;
    *(a1 + 1030) = 0xFFFFFFFF00000000;
  }

  else
  {
    *buf = 0;
    if (!(*(*a1 + 112))(a1, a5, buf, 1))
    {
      *(a1 + 1031) = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        v18 = MEMORY[0x277D86220];
        v19 = "AppleAVD: Error getting display buffer!";
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    a1[2060] = 1;
    a1[2061] = a5;
    v196 = *buf;
    *(a1 + 1031) = *buf + 8;
  }

  *buf = 0;
  if (((*(*a1 + 112))(a1, a6, buf, 0) & 1) == 0)
  {
    *(a1 + 1029) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v18 = MEMORY[0x277D86220];
      v19 = "AppleAVD: Error getting decoder buffer!";
      goto LABEL_17;
    }

LABEL_19:
    v21 = 0;
LABEL_20:
    v22 = 305;
    goto LABEL_21;
  }

  a1[2056] = 0;
  a1[2057] = a6;
  v15 = *buf;
  *(a1 + 261) = *buf;
  *(a1 + 1029) = v15 + 8;
  *(v15 + 204) = *(a1 + 343);
  v16 = (*(*a1 + 184))(a1);
  if (a7 != -1 && v16)
  {
    *buf = 0;
    if (!(*(*a1 + 112))(a1, a7, buf, 0))
    {
      *(a1 + 1033) = 0;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      buf[0] = 136315394;
      *&buf[1] = "VADecodeFrame";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v11;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: ERROR: %s(): Error getting second decoder buffer for scaling! (frameNum :%d)";
      goto LABEL_37;
    }

    a1[2064] = 0;
    a1[2065] = a7;
    v17 = *buf;
    *(a1 + 1033) = *buf + 8;
    if (v17)
    {
      *(v17 + 204) = 0;
      *(v17 + 208) = 0;
      goto LABEL_38;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "VADecodeFrame";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v11;
      v26 = MEMORY[0x277D86220];
      v27 = "AppleAVD: ERROR: %s(): vSurfInfoScalerRef was not set! (frameNum :%d)";
LABEL_37:
      _os_log_impl(&dword_277606000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x12u);
    }
  }

LABEL_38:
  a1[662] = *(*(a1 + 1029) + 160);
  v28 = *(a1 + 1031);
  if (*(a1 + 9) != 1)
  {
    if (v28)
    {
      v29 = (*(*a1 + 432))(a1, *(v28 + 148));
LABEL_44:
      a1[661] = v29;
      goto LABEL_45;
    }

LABEL_43:
    v29 = 0;
    goto LABEL_44;
  }

  if (!v28)
  {
    goto LABEL_43;
  }

LABEL_45:
  if (*(a1 + 2948) == 1 && a1[738] == 2 && !*(a1 + 2892))
  {
    if (!a1[731])
    {
LABEL_51:
      if (!a1[661] && a1[662] == 1)
      {
        *(v199 + 802) = 1;
      }

      goto LABEL_54;
    }

    *buf = 0;
    if ((*(*a1 + 112))(a1, 125, buf, 0))
    {
      *(a1 + 1034) = 0x7D00000000;
      *(a1 + 1035) = *buf + 8;
      goto LABEL_51;
    }

    *(a1 + 1035) = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    LOWORD(buf[0]) = 0;
    v18 = MEMORY[0x277D86220];
    v19 = "AppleAVD: Error getting chroma scratch buffer!";
LABEL_17:
    v20 = 2;
    goto LABEL_18;
  }

LABEL_54:
  v192 = a6;
  v30 = *(a1 + 1031);
  if (!v30)
  {
    v30 = *(a1 + 1029);
  }

  v197 = v14;
  (*(*a1 + 104))(a1, 22, v30 + 148);
  LODWORD(v31) = a1[749];
  if (v31 > a3)
  {
    LOBYTE(v205) = 0;
    v194 = 0;
    v200 = 0;
    v201 = 0;
LABEL_58:
    if (a1[2282])
    {
      CAVDDecoder::isADSDecryption(a1);
      a1[2231] = 0;
    }

    v32 = v192;
    v33 = v197;
    v34 = v201;
    if (v205)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315138;
        *&buf[1] = "VADecodeFrame";
        v18 = MEMORY[0x277D86220];
        v19 = "AppleAVD: ERROR: %s(): hevc - unpermitted non-VCL NAL following last VCL NAL\n";
        goto LABEL_63;
      }

      goto LABEL_19;
    }

    if (a8)
    {
      v136 = *(a1 + 1024) + 104 * a1[742];
      v138 = *(v136 + 64);
      v137 = *(v136 + 80);
      v139 = *(v136 + 48);
      *(a8 + 96) = *(v136 + 96);
      *(a8 + 64) = v138;
      *(a8 + 80) = v137;
      *(a8 + 48) = v139;
      v140 = *v136;
      v141 = *(v136 + 32);
      *(a8 + 16) = *(v136 + 16);
      *(a8 + 32) = v141;
      *a8 = v140;
    }

    if (!v201)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315138;
        *&buf[1] = "VADecodeFrame";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): slice count 0", buf, 0xCu);
      }

      v21 = 0;
      v22 = 403;
      goto LABEL_21;
    }

    v142 = *(v200 + 51) == 1 && *(v200 + 33) == 1;
    *(a1 + 2700) = v142;
    *(a1 + 2701) = *(v194 + 10650) == 1;
    a1[674] = v201;
    if ((*(*a1 + 336))(a1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315138;
        *&buf[1] = "VADecodeFrame";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): createDPB fail", buf, 0xCu);
      }

      v21 = 0;
      v22 = 317;
      goto LABEL_21;
    }

    v146 = *(v200 + 53) && !(*(*a1 + 408))(a1, *(v194 + 22880), v201);
    a1[741] = v146;
    while (!(*(*a1 + 392))(a1, v212))
    {
      (*(*a1 + 88))(a1, v213);
    }

    if (*(a1 + 2892))
    {
      if (v196)
      {
        v149 = IOSurfaceLookup(*(v196 + 160));
        if (v149)
        {
          v150 = v149;
          v193 = v11;
          SizeOfPlane = IOSurfaceGetSizeOfPlane();
          CFRelease(v150);
          v151 = a1[724];
          v152 = *(a1 + 1021);
          v153 = a1[2052];
          v154 = *(v152 + 23176 * v153 + 3608);
          if (__CFADD__(v151, v154 - 1))
          {
            v155 = 0;
            v156 = 0;
            LODWORD(v157) = 0;
            v158 = 1;
          }

          else
          {
            v176 = a1[725];
            v177 = *(v152 + 23176 * v153 + 3612) - 1;
            v156 = v176 + v177;
            if (!__CFADD__(v176, v177))
            {
              v157 = *(v196 + 84) * v156;
              if ((v157 & 0xFFFFFFFF00000000) != 0)
              {
                v155 = 0;
                v158 = 4;
                goto LABEL_339;
              }

              v155 = v157 + (v151 + v154 - 1);
              if (v155 >= SizeOfPlane)
              {
                v158 = 6;
                goto LABEL_339;
              }

              v32 = v192;
              v11 = v193;
              v33 = v197;
              v34 = v201;
              if ((CAVDDecoder::calcLumaChromaTileOffset(a1, a1[724], v176, *(*(a1 + 1031) + 76), *(*(a1 + 1031) + 80), *(a1 + 3640), a1 + 726, a1 + 727) & 1) == 0)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_329;
                }

                buf[0] = 136315138;
                *&buf[1] = "VADecodeFrame";
                v159 = MEMORY[0x277D86220];
                v160 = "AppleAVD: %s(): calcLumaChromaTileOffset returns fail";
                goto LABEL_327;
              }

              goto LABEL_320;
            }

            v155 = 0;
            LODWORD(v157) = 0;
            v158 = 2;
          }

LABEL_339:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v21 = 1;
            goto LABEL_343;
          }

          v187 = a1[725];
          v188 = *(v152 + 23176 * v153 + 3612);
          v189 = *(v196 + 84);
          buf[0] = 67111680;
          buf[1] = v151;
          LOWORD(buf[2]) = 1024;
          *(&buf[2] + 2) = v187;
          HIWORD(buf[3]) = 1024;
          buf[4] = v154;
          LOWORD(buf[5]) = 1024;
          *(&buf[5] + 2) = v188;
          HIWORD(buf[6]) = 1024;
          buf[7] = v189;
          LOWORD(buf[8]) = 2048;
          *(&buf[8] + 2) = v155;
          HIWORD(buf[10]) = 2048;
          *&buf[11] = SizeOfPlane;
          LOWORD(buf[13]) = 1024;
          *(&buf[13] + 2) = v158;
          HIWORD(buf[14]) = 1024;
          buf[15] = v151 + v154 - 1;
          LOWORD(buf[16]) = 1024;
          *(&buf[16] + 2) = v156;
          HIWORD(buf[17]) = 1024;
          buf[18] = v157;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: tile offset out of bounds! [%u %u] + [%u %u], %u, %zu >= %zu ?, %u; %u %u %u", buf, 0x4Cu);
          v21 = 1;
LABEL_341:
          v22 = 305;
          LODWORD(v11) = v193;
          goto LABEL_21;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          v159 = MEMORY[0x277D86220];
          v160 = "AppleAVD: bad IOSurface* in tile offset check";
          v175 = 2;
LABEL_328:
          _os_log_impl(&dword_277606000, v159, OS_LOG_TYPE_DEFAULT, v160, buf, v175);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315138;
        *&buf[1] = "vSurfInfoDisp is NULL";
        v159 = MEMORY[0x277D86220];
        v160 = "AppleAVD: ERROR: [CAVDHevcDecErr] %s";
LABEL_327:
        v175 = 12;
        goto LABEL_328;
      }

LABEL_329:
      v21 = 1;
      goto LABEL_20;
    }

LABEL_320:
    if (*(a1 + 2356) == 1)
    {
      (*(*a1 + 224))(a1, v11, v32);
    }

    v183 = (*(*a1 + 304))(a1, v34, v11, v33 & 1);
    (*(*a1 + 256))(a1, 0);
    v184 = *(a1 + 262);
    *(v184 + 12) = v34;
    AppleAVDCommandBuilder::setDecodeBufferSections(*(a1 + 293), v184 + 8);
    if (*(a1 + 2356) == 1)
    {
      a1[583] = CAHDec::getDecBufIndex(*(a1 + 262));
    }

    if (!v183)
    {
      return 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_329;
    }

    buf[0] = 136315138;
    *&buf[1] = "VADecodeFrame";
    v159 = MEMORY[0x277D86220];
    v160 = "AppleAVD: %s(): DecodePicture fail";
    goto LABEL_327;
  }

  v200 = 0;
  v201 = 0;
  v194 = 0;
  v35 = 0;
  v36 = 0;
  v205 = 0;
  v37 = a2;
  v38 = a2 + a3;
  v193 = v11;
  v198 = v38;
  while (1)
  {
    switch(v31)
    {
      case 1:
        v44 = *v37;
        v39 = v37 + 1;
        v41 = v44;
        v42 = v44 + 1;
        break;
      case 2:
        v43 = *v37;
        v39 = v37 + 2;
        v41 = __rev16(v43);
        v42 = v41 + 2;
        break;
      case 4:
        v40 = *v37;
        v39 = (v37 + 1);
        v41 = bswap32(v40);
        v42 = v41 + 4;
        break;
      default:
        v21 = 0;
        v22 = 317;
        goto LABEL_21;
    }

    v203 = v42;
    if (v41)
    {
      v45 = &v39[v41] > v38;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315394;
        *&buf[1] = "VADecodeFrame";
        LOWORD(buf[3]) = 1024;
        *(&buf[3] + 2) = v41;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s NALU bad size! %d", buf, 0x12u);
      }

      v21 = 0;
      v22 = 318;
      goto LABEL_21;
    }

    HEVC_RBSP::setRBSP(*(a1 + 375), v39, v41);
    if ((HEVC_RBSP::parseNAL(*(a1 + 375), &v208, 0) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315394;
        *&buf[1] = "VADecodeFrame";
        LOWORD(buf[3]) = 1024;
        *(&buf[3] + 2) = v41;
        v18 = MEMORY[0x277D86220];
        v19 = "AppleAVD: %s parse NAL error ! %d";
        v20 = 18;
        goto LABEL_18;
      }

      goto LABEL_314;
    }

    v46 = v31 + v36;
    v47 = v209;
    v48 = v205;
    if ((0x7003F03FFuLL >> v209))
    {
      v49 = 0x7FFC0FC00uLL >> v209;
    }

    else
    {
      v49 = v205;
    }

    if (v209 <= 0x22)
    {
      v48 = v49;
    }

    v205 = v48;
    if (v210)
    {
      goto LABEL_203;
    }

    if (v209 <= 15)
    {
      break;
    }

    if (v209 <= 31)
    {
      v50 = v201;
      if ((v209 - 16) >= 6)
      {
        goto LABEL_203;
      }

      goto LABEL_88;
    }

    if (v209 > 33)
    {
      if (v209 == 34)
      {
        v38 = v198;
        if ((HEVC_RBSP::parsePPS(*(a1 + 375), *(a1 + 1022), *(a1 + 1021)) & 0x80000000) == 0)
        {
          goto LABEL_204;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_337;
        }

        buf[0] = 136315394;
        *&buf[1] = "VADecodeFrame";
        LOWORD(buf[3]) = 1024;
        *(&buf[3] + 2) = v41;
        v143 = MEMORY[0x277D86220];
        v144 = "AppleAVD: %s parse PPS error ! %d";
        goto LABEL_291;
      }

      if (v209 == 36)
      {
        *(*(a1 + 1123) + 4 * a1[742]) = 1;
        (*(*a1 + 416))(a1, 0x7FFFFFFFLL);
      }

LABEL_203:
      v38 = v198;
      goto LABEL_204;
    }

    if (v209 == 32)
    {
      v38 = v198;
      if (HEVC_RBSP::parseVPS(*(a1 + 375), a1 + 928, 0, 0))
      {
        goto LABEL_204;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_337;
      }

      buf[0] = 136315394;
      *&buf[1] = "VADecodeFrame";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v41;
      v143 = MEMORY[0x277D86220];
      v144 = "AppleAVD: %s parse VPS error ! %d";
LABEL_291:
      v145 = 18;
      goto LABEL_229;
    }

    v83 = HEVC_RBSP::parseSPS(*(a1 + 375), (a1 + 928), *(a1 + 1021), 0, 0);
    v38 = v198;
    if ((v83 & 0x80000000) != 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_337;
      }

      buf[0] = 136315394;
      *&buf[1] = "VADecodeFrame";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v41;
      v143 = MEMORY[0x277D86220];
      v144 = "AppleAVD: %s parse SPS error ! %d";
      goto LABEL_291;
    }

    v84 = v83;
    v85 = (*(*a1 + 424))(a1, *(a1 + 1021) + 23176 * v83);
    v86 = (*(a1 + 1021) + 23176 * v84);
    v86[5793] = CAVDHevcDecoder::DpbMaxSize(v85, v86);
LABEL_204:
    v35 += v203;
    v37 = (a2 + v35);
    v36 = v41 + v46;
    v31 = a1[749];
    if (v37 + v31 > v38)
    {
      goto LABEL_58;
    }
  }

  if (v209 >= 0xA)
  {
    goto LABEL_203;
  }

  v50 = v201;
  if (*(a1 + 2892))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 67109120;
      buf[1] = v47;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: Rejecting non-IRAP frame in tiled decode %d", buf, 8u);
    }

    goto LABEL_314;
  }

LABEL_88:
  if (!a1[672])
  {
    v51 = &v39[v41 - 1];
    v52 = v41 + 1;
    do
    {
      v53 = *v51--;
      v41 = v52 - 1;
      if (v53)
      {
        v54 = 1;
      }

      else
      {
        v54 = v52 == 1;
      }

      --v52;
    }

    while (!v54);
  }

  if (v50)
  {
    if (v50 > 599)
    {
      goto LABEL_337;
    }
  }

  else if (*(a1 + 2725))
  {
    if (v11 != 1 && (v209 & 0xFFFFFFF8) != 0x10)
    {
      v21 = 0;
      v22 = 406;
      goto LABEL_21;
    }

    v81 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 67109120;
      buf[1] = v11;
      _os_log_impl(&dword_277606000, v81, OS_LOG_TYPE_DEFAULT, "AppleAVD: FOUND IRAP-- SETTING m_skipToIdr FALSE! %d", buf, 8u);
    }

    *(a1 + 2725) = 0;
    a1[2237] = 1;
    v82 = *(a1 + 377);
    if (v82)
    {
      HEVC_RLM::releaseAllPictures(v82);
    }
  }

  v190 = v46;
  v55 = *(a1 + 1023);
  v56 = v55 + 2360 * v50;
  v57 = v55 + 2360 * v50 - 2336;
  if (v50 <= 0)
  {
    v58 = 0;
  }

  else
  {
    v58 = v57;
  }

  HevcReleaseSliceHeader(v56 + 24);
  bzero((v56 + 24), 0x808uLL);
  if ((HEVC_RBSP::parseSliceHeader(*(a1 + 375), (v56 + 24), &v208, *(a1 + 1021), *(a1 + 1022), (a1 + 928), 0, v58) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "VADecodeFrame";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v50;
      HIWORD(buf[4]) = 1024;
      buf[5] = v209;
      v18 = MEMORY[0x277D86220];
      v19 = "AppleAVD: %s() slice header parsing error - slice_count: %d - nal_unit_type: %d";
      v20 = 24;
      goto LABEL_18;
    }

LABEL_314:
    v21 = 0;
    v22 = 305;
    goto LABEL_21;
  }

  if (v50 >= 1 && *(v56 + 32))
  {
    HevcCopyDependentSliceHeader((v56 + 24), (*(a1 + 1023) + 2360 * v50 - 2336));
  }

  else
  {
    ++a1[740];
  }

  if (CAVDHevcDecoder::activatePS(a1, v56 + 24))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_314;
    }

    buf[0] = 136315138;
    *&buf[1] = "VADecodeFrame";
    v18 = MEMORY[0x277D86220];
    v19 = "AppleAVD: %s(): fail to activate parameter set for slice\n";
LABEL_63:
    v20 = 12;
    goto LABEL_18;
  }

  v195 = v56;
  v59 = *(a1 + 1022);
  v60 = a1[2053];
  v61 = *(a1 + 1021);
  v62 = a1[2052];
  v63 = *(a1 + 1023) + 2360 * v50;
  *(v63 + 8) = v39;
  *(v63 + 16) = v41;
  *v63 = v209;
  *(v63 + 2084) = v211;
  NumberOfBitsParsed = HEVC_RBSP::getNumberOfBitsParsed(*(a1 + 375));
  v191 = v50;
  v65 = *(a1 + 1023) + 2360 * v50;
  *(v65 + 2080) = NumberOfBitsParsed;
  v66 = *(v65 + 16);
  if (NumberOfBitsParsed > 8 * v66)
  {
    v148 = NumberOfBitsParsed;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "VADecodeFrame";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 8 * v66;
      HIWORD(buf[4]) = 1024;
      buf[5] = v148;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): rbsp return invalid bitUsed %d nalL_inBits = %d", buf, 0x18u);
      goto LABEL_296;
    }

    v21 = 0;
LABEL_343:
    v22 = 305;
    LODWORD(v11) = v193;
    goto LABEL_21;
  }

  if (CAVDDecoder::isADSDecryption(a1) && (*(a1 + 10) & 1) == 0)
  {
    v67 = CAVDDecoder::calculateClearBytes(a1, v190, v41, *(*(a1 + 1023) + 2360 * v50 + 2080), a1[736], *(a1 + 366), *(a1 + 367));
    if (v67 == -1)
    {
      v68 = 1023;
    }

    else
    {
      v68 = v67;
    }

    *(*(a1 + 1023) + 2360 * v50 + 2352) = v68;
    if (a1[605])
    {
      v69 = 0x10000;
    }

    else
    {
      v69 = 0x200000;
    }

    a1[626] |= v69;
  }

  v70 = v61 + 23176 * v62;
  v200 = v59 + 9856 * v60;
  if (!*(v200 + 52) || (v71 = *(v200 + 56), v72 = v71 + 1, v71 == -1))
  {
LABEL_124:
    if (*(v195 + 24))
    {
      v11 = v193;
      if (v201)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_337;
        }

        buf[0] = 136315394;
        *&buf[1] = "VADecodeFrame";
        LOWORD(buf[3]) = 1024;
        *(&buf[3] + 2) = v201;
        v143 = MEMORY[0x277D86220];
        v144 = "AppleAVD: %s(): ERROR! Bad Bitstream! first_slice_segment_in_pic_flag set on slice_count: %d";
        goto LABEL_291;
      }

      v79 = a1[742];
      if (*(*(a1 + 1122) + 4 * v79))
      {
        v80 = *(*(a1 + 1123) + 4 * v79) != 0;
      }

      else
      {
        v80 = 1;
      }

      if ((*(*a1 + 320))(a1, a1 + 928, &v208, v70, v195 + 24, a1 + 884, v80))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_314;
        }

        buf[0] = 136315138;
        *&buf[1] = "VADecodeFrame";
        v18 = MEMORY[0x277D86220];
        v19 = "AppleAVD: caught initPicture error in %s";
        goto LABEL_63;
      }

      *(*(a1 + 1123) + 4 * a1[742]) = 0;
      ++*(*(a1 + 1122) + 4 * a1[742]);
    }

    else
    {
      v11 = v193;
      if (!v201)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_337;
        }

        buf[0] = 136315394;
        *&buf[1] = "VADecodeFrame";
        LOWORD(buf[3]) = 1024;
        *(&buf[3] + 2) = 0;
        v143 = MEMORY[0x277D86220];
        v144 = "AppleAVD: %s(): ERROR! Bad Bitstream! first_slice_segment_in_pic_flag NOT set on slice_count: %d";
        goto LABEL_291;
      }
    }

    if ((*(*a1 + 400))(a1, a1 + 884, *(*(a1 + 1023) + 2360 * v50 + 44), v11))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v161 = a1[885];
        v162 = a1[887];
        v163 = a1[2055];
        v164 = a1[2236];
        v165 = a1[2237];
        v166 = *(*(a1 + 1023) + 2360 * v50 + 44);
        buf[0] = 136316930;
        *&buf[1] = "VADecodeFrame";
        LOWORD(buf[3]) = 1024;
        *(&buf[3] + 2) = v161;
        HIWORD(buf[4]) = 1024;
        buf[5] = v162;
        LOWORD(buf[6]) = 1024;
        *(&buf[6] + 2) = v163;
        HIWORD(buf[7]) = 1024;
        buf[8] = v164;
        LOWORD(buf[9]) = 1024;
        *(&buf[9] + 2) = v165;
        HIWORD(buf[10]) = 1024;
        buf[11] = v166;
        LOWORD(buf[12]) = 1024;
        *(&buf[12] + 2) = v11;
        v167 = MEMORY[0x277D86220];
        v168 = "AppleAVD: %s(): RandomAccessSkipPic nal %d poc %d rapoc %d crasbla %d recov %d slice %d frame %d";
        v169 = buf;
        v170 = 54;
LABEL_269:
        _os_log_impl(&dword_277606000, v167, OS_LOG_TYPE_DEFAULT, v168, v169, v170);
      }

      return 409;
    }

    v87 = v70;
    v88 = *(v70 + 3600);
    v89 = *(v87 + 3604);
    v90 = *(v87 + 3636);
    v91 = *(v87 + 3640);
    *&v92 = *(v87 + 3608);
    v93 = *(v87 + 3616);
    v94 = *(v87 + 3620);
    v95 = *(v87 + 3628);
    v96 = *(v87 + 22872);
    v194 = v87;
    v97 = *(v87 + 23172);
    if (*(a1 + 10))
    {
      v98 = a1[2241];
      if (v97 > v98)
      {
        goto LABEL_298;
      }

LABEL_156:
      v105 = *(a1 + 1024);
      v106 = a1[742];
      if (*(*(a1 + 1116) + 4 * v210))
      {
        v107 = v105 + 104 * v106;
        v108 = *(v107 + 32) != v88 || v89 != *(v107 + 30) || *(v107 + 33) != v90 || *(v107 + 34) != v91 || v92 != *v107 || v96 != *(v107 + 24);
      }

      else
      {
        v108 = 0;
      }

      v109 = v105 + 104 * v106;
      *(&v92 + 1) = v94;
      *v109 = v92;
      *(v109 + 16) = v95;
      *(v109 + 24) = v96;
      *(v109 + 30) = v89;
      *(v109 + 31) = v93;
      *(v109 + 32) = v88;
      *(v109 + 33) = v90;
      *(v109 + 34) = v91;
      *(v109 + 35) = v97;
      *(v109 + 36) = 0;
      (*(*a1 + 104))(a1, 21, 0);
      memset(&buf[2], 0, 172);
      v110 = *(v200 + 52);
      buf[0] = v110;
      v111 = *(v200 + 56);
      buf[1] = v111;
      if (v111 + 1 > 1)
      {
        v112 = v111 + 1;
      }

      else
      {
        v112 = 1;
      }

      memcpy(&buf[2], (v200 + 68), 4 * v112);
      v113 = *(v200 + 60);
      buf[22] = v113;
      if (v113 + 1 > 1)
      {
        v114 = v113 + 1;
      }

      else
      {
        v114 = 1;
      }

      memcpy(&buf[23], (v200 + 148), 4 * v114);
      v115 = *(a1 + 1025);
      v116 = a1[742];
      if (*(*(a1 + 1117) + 4 * v210))
      {
        v117 = v115 + 180 * v116;
        v54 = *v117 == v110;
        v118 = v197;
        v119 = v201;
        if (!v54 || v111 != *(v117 + 4) || v113 != *(v117 + 88))
        {
          goto LABEL_181;
        }

        v120 = 1;
        do
        {
          v121 = buf[v120 + 1];
          v122 = *(v115 + 180 * v116 + 4 * (v120 - 1) + 8);
          if (v120 > v111)
          {
            break;
          }

          ++v120;
        }

        while (v121 == v122);
        if (v121 != v122)
        {
LABEL_181:
          *(v117 + 128) = *&buf[32];
          *(v117 + 144) = *&buf[36];
          *(v117 + 160) = *&buf[40];
          *(v117 + 176) = buf[44];
          *(v117 + 64) = *&buf[16];
          *(v117 + 80) = *&buf[20];
          *(v117 + 96) = *&buf[24];
          *(v117 + 112) = *&buf[28];
          *v117 = *buf;
          *(v117 + 16) = *&buf[4];
          *(v117 + 32) = *&buf[8];
          *(v117 + 48) = *&buf[12];
          LOBYTE(v123) = 1;
          goto LABEL_184;
        }

        v133 = 1;
        do
        {
          v134 = buf[v133 + 22];
          v135 = *(v115 + 180 * v116 + 4 * (v133 - 1) + 92);
          v123 = v134 != v135;
          if (v133 > v113)
          {
            break;
          }

          ++v133;
        }

        while (v134 == v135);
      }

      else
      {
        v123 = 0;
        v118 = v197;
        v119 = v201;
      }

      v124 = v115 + 180 * v116;
      *(v124 + 128) = *&buf[32];
      *(v124 + 144) = *&buf[36];
      *(v124 + 160) = *&buf[40];
      *(v124 + 176) = buf[44];
      *(v124 + 64) = *&buf[16];
      *(v124 + 80) = *&buf[20];
      *(v124 + 96) = *&buf[24];
      *(v124 + 112) = *&buf[28];
      *v124 = *buf;
      *(v124 + 16) = *&buf[4];
      *(v124 + 32) = *&buf[8];
      *(v124 + 48) = *&buf[12];
      if (((v108 | v123) & 1) == 0)
      {
        v125 = 0;
        goto LABEL_192;
      }

LABEL_184:
      v125 = 1;
      v126 = AppleAVDCommandBuilder::waitNumInFlight(*(a1 + 293), 1u);
      if (v126)
      {
        v127 = v126;
        v128 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v214 = 136315394;
          v215 = "VADecodeFrame";
          v216 = 1024;
          v217 = v127;
          _os_log_impl(&dword_277606000, v128, OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s(): timeout status: %d", v214, 0x12u);
        }

        v125 = 1;
      }

LABEL_192:
      v129 = v210;
      if (((*(*(a1 + 1116) + 4 * v210) != 0) & ~v108) == 0)
      {
        (*(**(a1 + 262) + 144))(*(a1 + 262));
        *(*(a1 + 1116) + 4 * v210) = 0;
        if ((*(**(a1 + 262) + 136))(*(a1 + 262), v194))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *v214 = 136315138;
            v215 = "virtual int CAVDHevcDecoder::VADecodeFrame(unsigned char *, int, uint32_t, int, int, int, avd_seq_params *)";
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s fail to allocate work buffer for sps", v214, 0xCu);
          }

          v22 = 304;
          LODWORD(v11) = v193;
          goto LABEL_317;
        }

        *(*(a1 + 1116) + 4 * v210) = 1;
        v129 = v210;
      }

      if (*(*(a1 + 1117) + 4 * v129))
      {
        v130 = v108;
      }

      else
      {
        v130 = 1;
      }

      v131 = v130 | v123;
      v46 = v190;
      v11 = v193;
      if (v131)
      {
        (*(**(a1 + 262) + 160))(*(a1 + 262), 0);
        *(*(a1 + 1117) + 4 * v210) = 0;
        if ((*(**(a1 + 262) + 152))(*(a1 + 262), v194, v200, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *v214 = 136315138;
            v215 = "virtual int CAVDHevcDecoder::VADecodeFrame(unsigned char *, int, uint32_t, int, int, int, avd_seq_params *)";
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s fail to allocate work buffer for pps", v214, 0xCu);
          }

          v22 = 304;
          goto LABEL_317;
        }

        *(*(a1 + 1117) + 4 * v210) = 1;
      }

      v132 = (*(*a1 + 328))(a1, v200, *(a1 + 1023) + 2360 * v191, a1 + 884);
      if (!v132)
      {
        v197 = v125 | v118;
        v201 = (v119 + 1);
        goto LABEL_203;
      }

      v147 = v132;
      if (v132 == 410)
      {
        v22 = 410;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v214 = 136315394;
          v215 = "VADecodeFrame";
          v216 = 1024;
          v217 = 410;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s():  fail to create reference picture list - result: %d\n", v214, 0x12u);
        }

LABEL_317:
        v21 = 0;
        goto LABEL_21;
      }

      v172 = v209 & 0xFFFFFFFE;
      v173 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v172 != 8)
      {
        if (v173)
        {
          *v214 = 136315394;
          v215 = "VADecodeFrame";
          v216 = 1024;
          v217 = v147;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): fail to create reference picture list - result: %d\n", v214, 0x12u);
        }

        v22 = 305;
        goto LABEL_317;
      }

      if (v173)
      {
        v174 = a1[2236];
        *v214 = 136315650;
        v215 = "VADecodeFrame";
        v216 = 1024;
        v217 = v147;
        v218 = 1024;
        v219 = v174;
        v167 = MEMORY[0x277D86220];
        v168 = "AppleAVD: %s(): missing ref - skip RASL picture: %d crasbla %d \n";
        v169 = v214;
        v170 = 24;
        goto LABEL_269;
      }

      return 409;
    }

    v99 = a1[728];
    v100 = *(v87 + 3608);
    if (v92 == v99)
    {
      if (DWORD1(v92) == a1[729])
      {
        v98 = a1[2241];
        if (v97 > v98)
        {
          LODWORD(v11) = v193;
LABEL_298:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          v180 = *(*(a1 + 1024) + 104 * a1[742] + 35);
          buf[0] = 67109632;
          buf[1] = v98;
          LOWORD(buf[2]) = 1024;
          *(&buf[2] + 2) = v97;
          HIWORD(buf[3]) = 1024;
          buf[4] = v180;
          v18 = MEMORY[0x277D86220];
          v19 = "AppleAVD: #### <WARNING> DPB Size Requirement Changed: origDpbSize: %d -> curDpbSize: %d, prevDpbSize: %d";
          v20 = 20;
          goto LABEL_18;
        }

        v101 = a1[731];
        LODWORD(v11) = v193;
        if (v88 == v101)
        {
          v102 = a1[730];
          if (v90 == v102)
          {
            if (v91 == a1[2239])
            {
              v103 = a1[2240];
              if (v96 == v103)
              {
                v104 = *(v199 + 776);
                if (v89 == v104)
                {
                  goto LABEL_156;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_314;
                }

                buf[0] = 67109376;
                buf[1] = v89;
                LOWORD(buf[2]) = 1024;
                *(&buf[2] + 2) = v104;
                v18 = MEMORY[0x277D86220];
                v19 = "AppleAVD: #### <WARNING> new_separate_colour_plane_flag:%d m_orig_separate_colour_plane_flag:%d";
              }

              else
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_314;
                }

                buf[0] = 67109376;
                buf[1] = v96;
                LOWORD(buf[2]) = 1024;
                *(&buf[2] + 2) = v103;
                v18 = MEMORY[0x277D86220];
                v19 = "AppleAVD: #### <WARNING> CTB size changed new_CtbSizeY:%d m_orig_CtbSizeY:%d";
              }

              goto LABEL_313;
            }

            v181 = *(v87 + 3640);
            v102 = *(v87 + 3636);
          }

          else
          {
            v181 = *(v87 + 3640);
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          v182 = a1[2239];
          buf[0] = 67109888;
          buf[1] = v90;
          LOWORD(buf[2]) = 1024;
          *(&buf[2] + 2) = v102;
          HIWORD(buf[3]) = 1024;
          buf[4] = v181;
          LOWORD(buf[5]) = 1024;
          *(&buf[5] + 2) = v182;
          v18 = MEMORY[0x277D86220];
          v19 = "AppleAVD: #### <WARNING> Bit depth changed: new_bit_depth_luma_minus8:%d m_orig_bit_depth_luma_minus8:%d new_bit_depth_chroma_minus8:%d m_orig_bit_depth_chroma_minus8:%d";
          v20 = 26;
          goto LABEL_18;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_314;
        }

        buf[0] = 67109376;
        buf[1] = v88;
        LOWORD(buf[2]) = 1024;
        *(&buf[2] + 2) = v101;
        v18 = MEMORY[0x277D86220];
        v19 = "AppleAVD: #### <WARNING> Chroma format Changed: %d -> %d";
LABEL_313:
        v20 = 14;
LABEL_18:
        _os_log_impl(&dword_277606000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
        goto LABEL_19;
      }

      v207 = HIDWORD(*(v87 + 3608));
      v99 = *(v87 + 3608);
    }

    else
    {
      v207 = HIDWORD(*(v87 + 3608));
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_296:
      v21 = 0;
      goto LABEL_341;
    }

    v179 = a1[729];
    buf[0] = 67110144;
    buf[1] = v193;
    LOWORD(buf[2]) = 1024;
    *(&buf[2] + 2) = v99;
    LODWORD(v11) = v193;
    HIWORD(buf[3]) = 1024;
    buf[4] = v179;
    LOWORD(buf[5]) = 1024;
    *(&buf[5] + 2) = v100;
    HIWORD(buf[6]) = 1024;
    buf[7] = v207;
    v18 = MEMORY[0x277D86220];
    v19 = "AppleAVD: #### <WARNING> Frame resolution change not supported Frame %d old %d %d new %d %d";
    v20 = 32;
    goto LABEL_18;
  }

  v73 = 0;
  v74 = v59 + 9856 * v60 + 9680;
  v75 = -v71;
  v76 = -v72;
  while (1)
  {
    v77 = (v75 == v73 ? v70 + 22880 : v74);
    v78 = *v77 - *(v74 - 4);
    if (v78 <= 1)
    {
      break;
    }

    v74 += 4;
    if (v76 == --v73)
    {
      goto LABEL_124;
    }
  }

  LODWORD(v11) = v193;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315650;
    *&buf[1] = "virtual int CAVDHevcDecoder::VADecodeFrame(unsigned char *, int, uint32_t, int, int, int, avd_seq_params *)";
    LOWORD(buf[3]) = 1024;
    *(&buf[3] + 2) = -v73;
    HIWORD(buf[4]) = 1024;
    buf[5] = v78;
    v143 = MEMORY[0x277D86220];
    v144 = "AppleAVD: %s() tile[%d] width %d, need at least two CTU wide\n";
    v145 = 24;
LABEL_229:
    _os_log_impl(&dword_277606000, v143, OS_LOG_TYPE_DEFAULT, v144, buf, v145);
    v21 = 0;
    v22 = 310;
    goto LABEL_21;
  }

LABEL_337:
  v21 = 0;
  v22 = 310;
LABEL_21:
  if (*(a1 + 2724))
  {
    if (v21)
    {
      v23 = *(a1 + 377);
      if (v23)
      {
        HEVC_RLM::removeCurrentFrameFromDPB(v23, a1[2078]);
      }
    }

    *(a1 + 2725) = 0;
    if (v22 == 410)
    {
      return 410;
    }

    else
    {
      return 305;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 67109376;
      buf[1] = v11;
      LOWORD(buf[2]) = 1024;
      *(&buf[2] + 2) = v22;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: SETTING m_skipToIdr TRUE! fno=%d, err=%d", buf, 0xEu);
    }

    *(a1 + 2725) = 1;
    v25 = *(a1 + 377);
    if (v25)
    {
      HEVC_RLM::releaseAllPictures(v25);
    }

    return 406;
  }
}

uint64_t CAVDHevcDecoder::VASetParams(CAVDHevcDecoder *this, int a2, unsigned int *a3)
{
  *&v43[5] = *MEMORY[0x277D85DE8];
  result = 0;
  switch(a2)
  {
    case 10:
      result = 0;
      *(this + 8996) = *a3;
      v6 = *(a3 + 1);
      v7 = *(a3 + 2);
      v8 = *(a3 + 4);
      *(this + 9044) = *(a3 + 3);
      *(this + 9060) = v8;
      *(this + 9012) = v6;
      *(this + 9028) = v7;
      v9 = *(a3 + 5);
      v10 = *(a3 + 6);
      v11 = *(a3 + 7);
      *(this + 4562) = *(a3 + 64);
      *(this + 9092) = v10;
      *(this + 9108) = v11;
      *(this + 9076) = v9;
      return result;
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
        return 0;
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
      v18 = *(this + 1024) + 104 * *(this + 743);
      result = 0;
      if (a3)
      {
        v19 = *a3;
        v20 = *(a3 + 1);
        *(v18 + 72) = *(a3 + 2);
        *(v18 + 56) = v20;
      }

      else
      {
        v19 = 0uLL;
        *(v18 + 72) = 0u;
        *(v18 + 56) = 0u;
      }

      *(v18 + 40) = v19;
      return result;
    case 22:
      if (!a3)
      {
        return 0;
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
      v14 = *a3;
      *(this + 12) = v14;
      goto LABEL_39;
    case 25:
      result = 0;
      v14 = *a3;
LABEL_39:
      *(this + 4) = v14;
      return result;
    case 26:
      v31 = a3[5];
      v32 = *(*(this + 260) + 56);
      if (v31 <= v32)
      {
        v40 = **(this + 292);
        if (*(v40 + 3680))
        {
          v41 = *(v40 + 3648);
          IOSurfaceLock(*(v40 + 3640), 0, 0);
          memcpy(v41, *(a3 + 1), a3[5]);
          IOSurfaceUnlock(*(**(this + 292) + 3640), 0, 0);
          return 0;
        }

        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v42 = 136315138;
        *v43 = "VASetParams";
        v33 = MEMORY[0x277D86220];
        v34 = "AppleAVD: ERROR: %s(): chromaFilterHdrBuffAllocated is false!\n";
        v35 = 12;
      }

      else
      {
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v42 = 67109376;
        v43[0] = v31;
        LOWORD(v43[1]) = 1024;
        *(&v43[1] + 2) = v32;
        v33 = MEMORY[0x277D86220];
        v34 = "AppleAVD: ERROR: m_dec_hdr_c_size:%d > size of rvra header buffer:%d ";
        v35 = 14;
      }

      _os_log_impl(&dword_277606000, v33, OS_LOG_TYPE_DEFAULT, v34, &v42, v35);
      return 0;
    case 27:
      result = 0;
      *(this + 8952) = *a3;
      return result;
    case 28:
      result = 0;
      *(this + 696) = *a3;
      *(this + 346) = *(a3 + 1);
      v36 = *(a3 + 18);
      v37 = *(a3 + 26);
      v38 = *(a3 + 14);
      *(this + 2856) = *(a3 + 22);
      *(this + 2872) = v37;
      *(this + 2824) = v38;
      *(this + 2840) = v36;
      v39 = *(a3 + 10);
      *(this + 2792) = *(a3 + 6);
      *(this + 2808) = v39;
      return result;
    case 29:
      result = 0;
      *(this + 2236) = *a3;
      return result;
    case 30:
      result = 0;
      *(this + 10) = *a3;
      return result;
    case 31:
      result = 0;
      *(this + 2241) = *a3;
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
      v15 = *a3;
      v16 = *(a3 + 1);
      v17 = *(a3 + 2);
      *(this + 2468) = *(a3 + 6);
      *(this + 2436) = v16;
      *(this + 2452) = v17;
      *(this + 2420) = v15;
      *(this + 628) = 1;
      return result;
    case 36:
      result = 0;
      v28 = *a3;
      *(this + 2488) = *(a3 + 3);
      *(this + 2476) = v28;
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
      v29 = (*(this + 1023) + 2352);
      v30 = 600;
      result = 0;
      do
      {
        *v29 = *a3;
        v29 += 1180;
        --v30;
      }

      while (v30);
      return result;
    case 43:
      result = 0;
      v21 = *a3;
      *(this + 159) = *(a3 + 1);
      *(this + 158) = v21;
      v22 = *(a3 + 2);
      v23 = *(a3 + 3);
      v24 = *(a3 + 4);
      *(this + 652) = a3[20];
      *(this + 658) = 1;
      *(this + 162) = v24;
      *(this + 161) = v23;
      *(this + 160) = v22;
      return result;
    case 44:
      result = 0;
      v12 = *a3;
      *(this + 657) = a3[4];
      *(this + 2612) = v12;
      *(this + 659) = 1;
      return result;
    case 45:
      result = 0;
      *(this + 2948) = *a3;
      *(this + 738) = a3[1];
      return result;
    case 47:
      result = 0;
      *(this + 663) = *a3;
      return result;
    case 48:
      result = 0;
      *(this + 166) = *a3;
      return result;
    case 49:
      result = 0;
      *(this + 2674) = *a3;
      return result;
    case 50:
      result = 0;
      *(this + 2675) = *a3;
      return result;
    case 51:
      result = 0;
      *(this + 335) = a3;
      return result;
    case 55:
    case 56:
      return result;
    case 58:
      result = 0;
      *(this + 2282) = *a3;
      return result;
    case 59:
      result = 0;
      *(this + 689) = *a3;
      return result;
    default:
      return 308;
  }
}

uint64_t HEVC_RBSP::setRBSP(HEVC_RBSP *this, unsigned __int8 *a2, uint64_t a3)
{
  *v8 = 0;
  *(this + 16) = &a2[a3];
  *(this + 17) = a2;
  *(this + 40) = a3;
  *(this + 19) = 0;
  *(this + 72) = -1;
  *(this + 164) = 0;
  v7 = 0;
  *(this + 13) = HEVC_RBSP::get_next_uint32(this, a2, v8, &v7, &v8[1]) << 32;
  *(this + 19) = v8[1] << 32;
  v5 = &a2[v8[0]];
  result = HEVC_RBSP::get_next_uint32(this, v5, v8, &v7, &v8[1]);
  *(this + 13) |= result;
  *(this + 19) |= v8[1];
  *(this + 15) = &v5[v8[0]];
  *(this + 28) = 8 * v7;
  return result;
}

uint64_t HEVC_RBSP::get_next_uint32(HEVC_RBSP *this, unsigned __int8 *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *(this + 16) - a2;
  *a5 = 0;
  if (v5 <= 0)
  {
    *a4 = 0;
    *a3 = 0;
    *(this + 72) = -1;
    return 0xFFFFFFFFLL;
  }

  if (v5 == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 255;
    v9 = 255;
    v10 = 255;
LABEL_9:
    v12 = 255;
LABEL_10:
    v13 = 255;
    goto LABEL_11;
  }

  v10 = a2[1];
  if (v5 < 3)
  {
    v6 = 0;
    v7 = 0;
    v8 = 255;
    v9 = 255;
    goto LABEL_9;
  }

  v9 = a2[2];
  if (v5 == 3)
  {
    v6 = 0;
    v7 = 0;
    v8 = 255;
    goto LABEL_9;
  }

  v12 = a2[3];
  if (v5 < 5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 255;
    goto LABEL_10;
  }

  v8 = a2[4];
  if (v5 == 5)
  {
    v6 = 0;
    v13 = 255;
  }

  else
  {
    v13 = a2[5];
    v6 = 1;
  }

  v7 = 1;
LABEL_11:
  v14 = *a2;
  if (*(this + 72) || v14 != 3 || v9 || v12 || v8 != 3)
  {
    if (*(this + 145) | v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v10 == 3;
    }

    v16 = v15;
    if (v16 != 1 || v9 != 0 || v12 != 0 || v8 != 3)
    {
      if (*(this + 144))
      {
        goto LABEL_29;
      }

      if (*(this + 145))
      {
        v24 = 0;
      }

      else
      {
        v24 = v14 == 3;
      }

      v25 = v24;
      if (v25 == 1 && v10 == 0 && v9 == 0 && v12 == 3)
      {
        v10 = 0;
        v23 = -16711936;
        goto LABEL_63;
      }

      if ((v25 & 1) == 0)
      {
LABEL_29:
        if (v16)
        {
          v14 = 0;
          v20 = 16711680;
          v21 = v12;
          v22 = v9;
        }

        else if (*a2 || v10 || v9 != 3)
        {
          if (v10 || v9 || v12 != 3)
          {
            v30 = 4;
            if (v5 < 4)
            {
              v30 = v5;
            }

            *a4 = v30;
            *a3 = v30;
            switch(v5)
            {
              case 3:
                *(this + 144) = a2[1];
                v31 = a2[2];
                break;
              case 2:
                *(this + 144) = *a2;
                v31 = a2[1];
                break;
              case 1:
                *(this + 144) = -1;
                v31 = *a2;
                break;
              default:
                *(this + 144) = a2[2];
                v31 = a2[3];
                break;
            }

            v22 = v10;
            v21 = v9;
            v8 = v12;
            goto LABEL_73;
          }

          v21 = 0;
          v22 = 0;
          v20 = 255;
        }

        else
        {
          v22 = 0;
          v14 = 0;
          v20 = 65280;
          v21 = v12;
        }
      }

      else
      {
        v20 = -16777216;
        v21 = v12;
        v22 = v9;
        v14 = v10;
      }

      *a5 = v20;
      v32 = v5 - 1;
      if (v7)
      {
        v32 = 4;
      }

      *a4 = v32;
      v30 = v32 + 1;
      *a3 = v32 + 1;
      if (v5 > 2)
      {
        if (v5 == 3)
        {
          *(this + 144) = a2[1];
          v31 = a2[2];
        }

        else if (v5 == 4)
        {
          *(this + 144) = a2[2];
          v31 = a2[3];
        }

        else
        {
          *(this + 144) = a2[3];
          v31 = a2[4];
        }
      }

      else if (v5 == 1)
      {
        v31 = -1;
        *(this + 144) = -1;
      }

      else
      {
        *(this + 144) = *a2;
        v31 = a2[1];
      }

      goto LABEL_73;
    }

    v8 = 0;
    v10 = 0;
    v23 = 16711935;
  }

  else
  {
    v8 = 0;
    v23 = -16776961;
  }

LABEL_63:
  *a5 = v23;
  v29 = v5 - 2;
  if (v6)
  {
    v29 = 4;
  }

  *a4 = v29;
  v30 = v29 + 2;
  *a3 = v29 + 2;
  if ((v5 - 1) >= 3)
  {
    if (v5 == 4)
    {
      v22 = 0;
      *(this + 144) = a2[2];
      v31 = a2[3];
    }

    else
    {
      v22 = 0;
      if (v5 == 5)
      {
        *(this + 144) = a2[3];
        v31 = a2[4];
      }

      else
      {
        *(this + 144) = a2[4];
        v31 = a2[5];
      }
    }
  }

  else
  {
    v22 = 0;
    v31 = -1;
    *(this + 144) = -1;
  }

  v14 = v10;
  v21 = v8;
  v8 = v13;
LABEL_73:
  *(this + 145) = v31;
  if (v5 < v30 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136315394;
    v34 = "get_next_uint32";
    v35 = 1024;
    v36 = 463;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v33, 0x12u);
  }

  return v8 | (((v14 << 16) | (v22 << 8) | v21) << 8);
}

uint64_t HEVC_RBSP::ue_v(HEVC_RBSP *this)
{
  v2 = *(this + 13);
  if ((v2 & 0x8000000000000000) != 0)
  {
    ++*(this + 41);
    HEVC_RBSP::flush_bits(this, 1);
    return 0;
  }

  else
  {
    v3 = HIDWORD(v2);
    v4 = -32;
    do
    {
      LODWORD(v3) = 2 * v3;
      v5 = v4 + 1;
      if ((v3 & 0x80000000) != 0)
      {
        break;
      }

      v6 = v4 + 32;
      ++v4;
    }

    while (v6 < 0x1E);
    *(this + 41) += v5 + 33;
    HEVC_RBSP::flush_bits(this, v5 + 33);
    v7 = *(this + 27);
    *(this + 41) += v5 + 32;
    v8 = v7 >> -v5;
    HEVC_RBSP::flush_bits(this, v5 + 32);
    return v8 + ~(-2 << (v5 + 31));
  }
}

uint64_t HEVC_RBSP::flush_bits(uint64_t this, int a2)
{
  v2 = this;
  v3 = *(this + 112);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(this + 104) <<= a2;
    *(this + 152) <<= a2;
  }

  else
  {
    *v15 = 0;
    v5 = *(this + 104);
    v6 = *(this + 152);
    v7 = v5 << v3;
    v8 = v6 << v3;
    v9 = v5 >> -v3;
    v10 = v6 >> -v3;
    if (v3 < 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    if (v3 < 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    v14 = 0;
    this = HEVC_RBSP::get_next_uint32(this, *(this + 120), v15, &v14, &v15[1]);
    *(v2 + 120) += v15[0];
    v3 = 8 * v14;
    v13 = (v12 | v15[1]) << v4;
    *(v2 + 104) = (v11 | this) << v4;
    *(v2 + 152) = v13;
    a2 = v4;
  }

  *(v2 + 112) = v3 - a2;
  return this;
}

uint64_t HEVC_RBSP::next_access_unit(HEVC_RBSP *this, int a2)
{
  HEVC_RBSP::flush_bits(this, *(this + 28) & 7);
  if (!a2)
  {
    return 1;
  }

  v4 = *(this + 13);
  v5 = *(this + 41);
  *(this + 41) = v5 + 32;
  if (HIDWORD(v4) == 1)
  {
    v6 = 32;
    v7 = 64;
LABEL_6:
    *(this + 41) = v5 + v7;
    HEVC_RBSP::flush_bits(this, v6);
    return 1;
  }

  if (v4 >> 40 == 1)
  {
    v6 = 24;
    v7 = 56;
    goto LABEL_6;
  }

  return 0;
}

uint64_t HEVC_RBSP::parseNAL(uint64_t a1, _DWORD *a2, int a3)
{
  access_unit = HEVC_RBSP::next_access_unit(a1, a3);
  if (access_unit)
  {
    v6 = *(a1 + 104);
    ++*(a1 + 164);
    v7 = v6 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    *a2 = v7;
    v8 = *(a1 + 104);
    *(a1 + 164) += 6;
    v9 = v8 >> 58;
    HEVC_RBSP::flush_bits(a1, 6);
    a2[1] = v9;
    v10 = *(a1 + 104);
    *(a1 + 164) += 6;
    v11 = v10 >> 58;
    HEVC_RBSP::flush_bits(a1, 6);
    a2[2] = v11;
    v12 = *(a1 + 104);
    *(a1 + 164) += 3;
    v13 = v12 >> 61;
    HEVC_RBSP::flush_bits(a1, 3);
    a2[3] = v13;
    a2[4] = v13 - 1;
  }

  return access_unit;
}

uint64_t HEVC_RBSP::se_v(HEVC_RBSP *this)
{
  v2 = *(this + 13);
  if ((v2 & 0x8000000000000000) != 0)
  {
    ++*(this + 41);
    HEVC_RBSP::flush_bits(this, 1);
    v9 = 0;
  }

  else
  {
    v3 = HIDWORD(v2);
    v4 = -32;
    do
    {
      LODWORD(v3) = 2 * v3;
      v5 = v4 + 1;
      if ((v3 & 0x80000000) != 0)
      {
        break;
      }

      v6 = v4 + 32;
      ++v4;
    }

    while (v6 < 0x1E);
    *(this + 41) += v5 + 33;
    HEVC_RBSP::flush_bits(this, v5 + 33);
    v7 = *(this + 27);
    *(this + 41) += v5 + 32;
    v8 = v7 >> -v5;
    HEVC_RBSP::flush_bits(this, v5 + 32);
    v9 = v8 + ~(-2 << (v5 + 31));
  }

  return (-((v9 & 1) == 0) ^ ((v9 + 1) >> 1)) + ((v9 & 1) == 0);
}

uint64_t HEVC_RBSP::byte_alignment(HEVC_RBSP *this)
{
  HEVC_RBSP::flush_bits(this, 1);
  v2 = *(this + 28) & 7;

  return HEVC_RBSP::flush_bits(this, v2);
}

uint64_t CAVDHevcDecoder::getDisplayMode(CAVDHevcDecoder *this, int a2)
{
  result = 1;
  if (a2 > 1885745711)
  {
    if (a2 != 1885745712 && a2 != 1885745714)
    {
      v3 = 1885746228;
LABEL_8:
      if (a2 != v3)
      {
        return 2;
      }
    }
  }

  else if (a2 != 1882468912 && a2 != 1882468914)
  {
    v3 = 1882469428;
    goto LABEL_8;
  }

  return result;
}

uint64_t HEVC_RBSP::parseSliceHeader(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v253 = *MEMORY[0x277D85DE8];
  v14 = a3[4];
  v15 = a3[1];
  v239 = a3[2];
  v237 = *(a6 + 4448);
  bzero(a2, 0x800uLL);
  a2[512] = v15;
  a2[513] = v14;
  v16 = *(a1 + 104);
  ++*(a1 + 164);
  v17 = v16 >> 63;
  HEVC_RBSP::flush_bits(a1, 1);
  *a2 = v17;
  if ((v15 & 0xFFFFFFF8) == 0x10)
  {
    v18 = *(a1 + 104);
    ++*(a1 + 164);
    v19 = v18 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    *(a2 + 1) = v19;
    if (a8)
    {
      v20 = *(a8 + 1);
      if (v20 != v19)
      {
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 136316674;
        v242 = "parseSliceHeader";
        v243 = 1024;
        v244 = 3625;
        v245 = 2080;
        v246 = "no_output_of_prior_pics_flag";
        v247 = 2080;
        *v248 = "slice";
        *&v248[8] = 1024;
        *v249 = v19;
        *&v249[4] = 2080;
        v250 = "prev_slice";
        v251 = 1024;
        v252 = v20;
        v31 = MEMORY[0x277D86220];
        v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
        goto LABEL_31;
      }
    }
  }

  *(a2 + 37) = (v15 < 0x16) & (0x270000u >> v15);
  v21 = *(a1 + 104);
  if ((v21 & 0x8000000000000000) != 0)
  {
    ++*(a1 + 164);
    HEVC_RBSP::flush_bits(a1, 1);
    v28 = 0;
  }

  else
  {
    v22 = HIDWORD(v21);
    v23 = -32;
    do
    {
      LODWORD(v22) = 2 * v22;
      v24 = v23 + 1;
      if ((v22 & 0x80000000) != 0)
      {
        break;
      }

      v25 = v23 + 32;
      ++v23;
    }

    while (v25 < 0x1E);
    *(a1 + 164) += v24 + 33;
    HEVC_RBSP::flush_bits(a1, v24 + 33);
    v26 = *(a1 + 108);
    *(a1 + 164) += v24 + 32;
    v27 = v26 >> -v24;
    HEVC_RBSP::flush_bits(a1, v24 + 32);
    v28 = v27 + ~(-2 << (v24 + 31));
  }

  a2[1] = v28;
  if (a8)
  {
    v29 = *(a8 + 4);
    if (v28 != v29)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136316674;
      v242 = "parseSliceHeader";
      v243 = 1024;
      v244 = 3631;
      v245 = 2080;
      v246 = "slice_pic_parameter_set_id";
      v247 = 2080;
      *v248 = "slice";
      *&v248[8] = 1024;
      *v249 = v28;
      *&v249[4] = 2080;
      v250 = "prev_slice";
      v251 = 1024;
      v252 = v29;
      v31 = MEMORY[0x277D86220];
      v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
      goto LABEL_31;
    }
  }

  if (v28 >= 0x40)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 67109120;
    LODWORD(v242) = v28;
    v31 = MEMORY[0x277D86220];
    v32 = "AppleAVD: slice->slice_pic_parameter_set_id > HEVC_MAX_PPS_SET, is %d";
    v33 = 8;
    goto LABEL_49;
  }

  v34 = a5 + 9856 * v28;
  if (*v34 == -1)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v31 = MEMORY[0x277D86220];
    v32 = "AppleAVD: PPS doesn't exist for slice header parsing";
LABEL_48:
    v33 = 2;
    goto LABEL_49;
  }

  v35 = a4 + 23176 * *(v34 + 4);
  if (*(v35 + 3588) == -1)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v31 = MEMORY[0x277D86220];
    v32 = "AppleAVD: SPS doesn't exist for slice header parsing";
    goto LABEL_48;
  }

  if (*a6 == -1)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v31 = MEMORY[0x277D86220];
    v32 = "AppleAVD: VPS doesn't exist for slice header parsing";
    goto LABEL_48;
  }

  if (!*a2)
  {
    if (*(v34 + 8))
    {
      v36 = *(a1 + 104);
      ++*(a1 + 164);
      v37 = v36 >> 63;
      HEVC_RBSP::flush_bits(a1, 1);
      *(a2 + 8) = v37;
    }

    v38 = 32 - __clz(*(v35 + 22896) - 1);
    v39 = *(v35 + 22896) == 1 ? 0 : v38;
    v40 = *(a1 + 108);
    *(a1 + 164) += v39;
    v41 = v40 >> -v39;
    HEVC_RBSP::flush_bits(a1, v39);
    a2[3] = v41;
    v42 = *(v35 + 22896) - 1;
    if (v41 > v42)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136316418;
      v242 = "parseSliceHeader";
      v243 = 1024;
      v244 = 3665;
      v245 = 2080;
      v246 = "slice->slice_segment_address";
      v247 = 1024;
      *v248 = v41;
      *&v248[4] = 1024;
      *&v248[6] = 0;
      *v249 = 1024;
      *&v249[2] = v42;
      v31 = MEMORY[0x277D86220];
      v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
LABEL_299:
      v33 = 46;
      goto LABEL_49;
    }
  }

  v43 = v239;
  v236 = *(v35 + 3644);
  v44 = v236 + 4;
  if (*(a2 + 8))
  {
LABEL_37:
    if (*(v34 + 52) || *(v34 + 53))
    {
      v45 = *(a1 + 104);
      if ((v45 & 0x8000000000000000) != 0)
      {
        ++*(a1 + 164);
        HEVC_RBSP::flush_bits(a1, 1);
        a2[468] = 0;
      }

      else
      {
        v46 = HIDWORD(v45);
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
        *(a1 + 164) += v48 + 33;
        HEVC_RBSP::flush_bits(a1, v48 + 33);
        v50 = *(a1 + 108);
        *(a1 + 164) += v48 + 32;
        v51 = v50 >> -v48;
        HEVC_RBSP::flush_bits(a1, v48 + 32);
        v52 = v51 + ~(-2 << (v48 + 31));
        a2[468] = v52;
        if (v52 >= 0xA8D)
        {
          result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *buf = 136315394;
          v242 = "parseSliceHeader";
          v243 = 1024;
          v244 = v52;
          v31 = MEMORY[0x277D86220];
          v32 = "AppleAVD: %s(): illegal num_entry_point_offsets %d";
LABEL_102:
          v33 = 18;
          goto LABEL_49;
        }

        v73 = malloc_type_malloc(4 * v52, 0x100004052888210uLL);
        *(a2 + 235) = v73;
        if (!v73)
        {
          result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          v85 = a2[468];
          *buf = 136315394;
          v242 = "parseSliceHeader";
          v243 = 1024;
          v244 = v85;
          v31 = MEMORY[0x277D86220];
          v32 = "AppleAVD: %s(): failed to allocate %d x4 bytes mem for slice->entry_point_offset_minus1";
          goto LABEL_102;
        }

        v74 = HEVC_RBSP::ue_v(a1);
        v75 = v74;
        a2[469] = v74;
        if (v74 >= 0x20)
        {
          result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *buf = 136316418;
          v242 = "parseSliceHeader";
          v243 = 1024;
          v244 = 4051;
          v245 = 2080;
          v246 = "slice->offset_len_minus1";
          v247 = 1024;
          *v248 = v75;
          *&v248[4] = 1024;
          *&v248[6] = 0;
          *v249 = 1024;
          *&v249[2] = 31;
          v31 = MEMORY[0x277D86220];
          v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_299;
        }

        if (a2[468])
        {
          v90 = 0;
          v91 = v74 + 1;
          v92 = 31 - v74;
          do
          {
            v93 = *(a1 + 108);
            *(a1 + 164) += v91;
            v94 = v93 >> v92;
            HEVC_RBSP::flush_bits(a1, v91);
            *(*(a2 + 235) + 4 * v90++) = v94;
          }

          while (v90 < a2[468]);
        }
      }
    }

    if (a7)
    {
      if (*(v34 + 6464))
      {
        v69 = HEVC_RBSP::ue_v(a1);
        a2[472] = v69;
        if (v69 >= 0x101)
        {
          v70 = v69;
          result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *buf = 136316418;
          v242 = "parseSliceHeader";
          v243 = 1024;
          v244 = 4070;
          v245 = 2080;
          v246 = "slice->slice_segment_header_extension_length";
          v247 = 1024;
          *v248 = v70;
          *&v248[4] = 1024;
          *&v248[6] = 0;
          *v249 = 1024;
          *&v249[2] = 256;
          v31 = MEMORY[0x277D86220];
          v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
          goto LABEL_299;
        }

        v86 = *(a1 + 164);
        *(a2 + 1893) = 0;
        if (*(v34 + 6544))
        {
          v87 = *(a1 + 104);
          *(a1 + 164) = v86 + 2;
          v88 = v87 >> 62;
          HEVC_RBSP::flush_bits(a1, 2);
          a2[75] = v88;
          *(a2 + 1893) = 1;
          if (*(a2 + 37) && v88 == 3)
          {
            result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (!result)
            {
              return result;
            }

            *buf = 136316418;
            v242 = "parseSliceHeader";
            v243 = 1024;
            v244 = 4080;
            v245 = 2080;
            v246 = "slice->poc_reset_idc";
            v247 = 1024;
            *v248 = 3;
            *&v248[4] = 1024;
            *&v248[6] = 0;
            *v249 = 1024;
            *&v249[2] = 2;
            v31 = MEMORY[0x277D86220];
            v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
            goto LABEL_299;
          }
        }

        else
        {
          LODWORD(v88) = a2[75];
        }

        if (v88)
        {
          v102 = *(a1 + 104);
          *(a1 + 164) += 6;
          v103 = v102 >> 58;
          HEVC_RBSP::flush_bits(a1, 6);
          a2[76] = v103;
          if (a2[75] == 3)
          {
            v104 = *(a1 + 104);
            ++*(a1 + 164);
            v105 = v104 >> 63;
            HEVC_RBSP::flush_bits(a1, 1);
            *(a2 + 308) = v105;
            v106 = *(a1 + 108);
            *(a1 + 164) += v44;
            LODWORD(v105) = v106 >> (28 - v236);
            HEVC_RBSP::flush_bits(a1, v44);
            a2[78] = v105;
          }
        }

        if (*(a2 + 37))
        {
          if ((*(v237 + 746) & 1) == 0 || *(*(v237 + 512) + 28 * *(v237 + 2 * v43 + 580) + 18))
          {
            goto LABEL_137;
          }
        }

        else if ((*(v237 + 746) & 1) == 0)
        {
LABEL_137:
          if (*(a2 + 316))
          {
            a2[80] = HEVC_RBSP::ue_v(a1);
          }

          v109 = 8 * a2[472];
          v110 = *(a1 + 164);
          if (v109 > v110 - v86 && v86 - v110 + v109)
          {
            v111 = v110 - v86 - v109;
            do
            {
              v112 = *(a1 + 104);
              ++*(a1 + 164);
              v113 = v112 >> 63;
              HEVC_RBSP::flush_bits(a1, 1);
              *(a2 + 1892) = v113;
              v81 = __CFADD__(v111++, 1);
            }

            while (!v81);
          }

          goto LABEL_144;
        }

        v107 = *(a1 + 104);
        ++*(a1 + 164);
        v108 = v107 >> 63;
        HEVC_RBSP::flush_bits(a1, 1);
        *(a2 + 316) = v108;
        goto LABEL_137;
      }
    }

    else if (*(v34 + 6464))
    {
      v71 = HEVC_RBSP::ue_v(a1);
      v72 = v71;
      a2[472] = v71;
      if (v71 > 0x100)
      {
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 136316418;
        v242 = "parseSliceHeader";
        v243 = 1024;
        v244 = 4118;
        v245 = 2080;
        v246 = "slice->slice_segment_header_extension_length";
        v247 = 1024;
        *v248 = v72;
        *&v248[4] = 1024;
        *&v248[6] = 0;
        *v249 = 1024;
        *&v249[2] = 256;
        v31 = MEMORY[0x277D86220];
        v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
        goto LABEL_299;
      }

      if (v71)
      {
        v89 = 0;
        do
        {
          *(a1 + 164) += 8;
          HEVC_RBSP::flush_bits(a1, 8);
          ++v89;
        }

        while (v89 < a2[472]);
      }
    }

LABEL_144:
    HEVC_RBSP::byte_alignment(a1);
    return 1;
  }

  *(a2 + 738) = 1;
  v235 = v236 + 4;
  if (a7 && *(v34 + 12))
  {
    v53 = *(a1 + 104);
    ++*(a1 + 164);
    v54 = v53 >> 63;
    v55 = 1;
    HEVC_RBSP::flush_bits(a1, 1);
    *(a2 + 16) = v54;
    if (*(v34 + 12) >= 2u)
    {
      v56 = *(a1 + 104);
      ++*(a1 + 164);
      v57 = v56 >> 63;
      HEVC_RBSP::flush_bits(a1, 1);
      *(a2 + 17) = v57;
      v55 = 2;
    }
  }

  else
  {
    v55 = 0;
  }

  while (v55 < *(v34 + 12))
  {
    v58 = *(a1 + 104);
    ++*(a1 + 164);
    v59 = v58 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    *(a2 + 18) = v59;
    ++v55;
  }

  v60 = *(a1 + 104);
  if ((v60 & 0x8000000000000000) != 0)
  {
    ++*(a1 + 164);
    HEVC_RBSP::flush_bits(a1, 1);
    a2[5] = 0;
    v68 = (a2 + 5);
  }

  else
  {
    v61 = HIDWORD(v60);
    v62 = -32;
    do
    {
      LODWORD(v61) = 2 * v61;
      v63 = v62 + 1;
      if ((v61 & 0x80000000) != 0)
      {
        break;
      }

      v64 = v62 + 32;
      ++v62;
    }

    while (v64 < 0x1E);
    *(a1 + 164) += v63 + 33;
    HEVC_RBSP::flush_bits(a1, v63 + 33);
    v65 = *(a1 + 108);
    *(a1 + 164) += v63 + 32;
    v66 = v65 >> -v63;
    HEVC_RBSP::flush_bits(a1, v63 + 32);
    v67 = v66 + ~(-2 << (v63 + 31));
    a2[5] = v67;
    v68 = (a2 + 5);
    if (v67 > 2)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136316418;
      v242 = "parseSliceHeader";
      v243 = 1024;
      v244 = 3696;
      v245 = 2080;
      v246 = "slice->slice_type";
      v247 = 1024;
      *v248 = v67;
      *&v248[4] = 1024;
      *&v248[6] = 0;
      *v249 = 1024;
      *&v249[2] = 2;
      v31 = MEMORY[0x277D86220];
      v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_299;
    }
  }

  v233 = v68;
  if (*(v34 + 9))
  {
    v76 = *(a1 + 104);
    ++*(a1 + 164);
    v77 = v76 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
  }

  else
  {
    LODWORD(v77) = 1;
  }

  *(a2 + 24) = v77;
  if (a8)
  {
    v78 = *(a8 + 24);
    if (v77 != v78)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136316674;
      v242 = "parseSliceHeader";
      v243 = 1024;
      v244 = 3703;
      v245 = 2080;
      v246 = "pic_output_flag";
      v247 = 2080;
      *v248 = "slice";
      *&v248[8] = 1024;
      *v249 = v77;
      *&v249[4] = 2080;
      v250 = "prev_slice";
      v251 = 1024;
      v252 = v78;
      v31 = MEMORY[0x277D86220];
      v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
      goto LABEL_31;
    }
  }

  if (*(v35 + 3604) == 1)
  {
    v79 = *(a1 + 104);
    *(a1 + 164) += 2;
    v80 = v79 >> 62;
    HEVC_RBSP::flush_bits(a1, 2);
    a2[7] = v80;
  }

  v234 = v35;
  if (a7)
  {
    if (v239 < 1)
    {
      if (v15 - 21 > 0xFFFFFFFD)
      {
        goto LABEL_216;
      }
    }

    else
    {
      v81 = *(*(v237 + 512) + 28 * *(v237 + 2 * v239 + 580) + 25) != 1 || v15 - 19 >= 2;
      if (!v81)
      {
LABEL_202:
        if ((*(v237 + 714) & 1) == 0)
        {
          v152 = v237 + 580;
          if (*(*(v237 + 512) + 28 * *(v237 + 580 + 2 * v239) + 18))
          {
            v153 = *(a1 + 104);
            ++*(a1 + 164);
            v154 = HEVC_RBSP::flush_bits(a1, 1);
            *(a2 + 38) = v153 < 0;
            if (v153 < 0)
            {
              v155 = *(*(v237 + 512) + 28 * *(v152 + 2 * v239) + 18);
              if (v155 >= 2)
              {
                if ((*(v237 + 745) & 1) == 0)
                {
                  v156 = __clz(v155 - 1);
                  v157 = *(a1 + 108);
                  *(a1 + 164) += 32 - v156;
                  v158 = v157 >> v156;
                  v154 = HEVC_RBSP::flush_bits(a1, 32 - v156);
                  a2[10] = v158;
                  if (v158 > v155)
                  {
                    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                    if (!result)
                    {
                      return result;
                    }

                    *buf = 136316418;
                    v242 = "parseSliceHeader";
                    v243 = 1024;
                    v244 = 3837;
                    v245 = 2080;
                    v246 = "slice->num_inter_layer_ref_pics_minus1";
                    v247 = 1024;
                    *v248 = v158;
                    *&v248[4] = 1024;
                    *&v248[6] = 0;
                    *v249 = 1024;
                    *&v249[2] = v155;
                    v31 = MEMORY[0x277D86220];
                    v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                    goto LABEL_299;
                  }

                  v155 = *(*(v237 + 512) + 28 * *(v152 + 2 * v239) + 18);
                }

                v159 = 32 - __clz(v155 - 1);
                if (v155 == 1)
                {
                  v159 = 0;
                }

                v229 = v159;
                if (HEVC_RBSP::calcNumReflayerPics(v154, a6, v239, v14) != v155)
                {
                  v215 = v239;
                  if (HEVC_RBSP::calcNumActiveRefLayerPics(a1, a6, v239, v14, a2) >= 1)
                  {
                    v216 = 11;
                    while (1)
                    {
                      v217 = *(*(v237 + 512) + 28 * *(v237 + 580 + 2 * v215) + 18);
                      v218 = *(a1 + 108);
                      *(a1 + 164) += v229;
                      v219 = v218 >> (32 - v229);
                      HEVC_RBSP::flush_bits(a1, v229);
                      a2[v216] = v219;
                      if (v219 > v217)
                      {
                        break;
                      }

                      active = HEVC_RBSP::calcNumActiveRefLayerPics(a1, a6, v239, v14, a2);
                      v221 = v216 - 10;
                      ++v216;
                      v215 = v239;
                      if (v221 >= active)
                      {
                        goto LABEL_219;
                      }
                    }

                    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                    if (!result)
                    {
                      return result;
                    }

                    *buf = 136316418;
                    v242 = "parseSliceHeader";
                    v243 = 1024;
                    v244 = 3850;
                    v245 = 2080;
                    v246 = "slice->inter_layer_pred_layer_idc[idx]";
                    v247 = 1024;
                    *v248 = v219;
                    *&v248[4] = 1024;
                    *&v248[6] = 0;
                    *v249 = 1024;
                    *&v249[2] = v217;
                    v31 = MEMORY[0x277D86220];
                    v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                    goto LABEL_299;
                  }

LABEL_219:
                  if (*(a2 + 36) == 1)
                  {
                    v162 = a2 + 81;
                  }

                  else
                  {
                    v162 = (v234 + 10672);
                  }

                  v163 = *v162;
                  a2[474] = v163;
                  v164 = a2 + 82;
                  if (v15 == 20 || (v15 & 0xFFFFFFFC) == 0x10)
                  {
                    *(a2 + 118) = 0u;
                    *(a2 + 122) = 0u;
                    *(a2 + 110) = 0u;
                    *(a2 + 114) = 0u;
                    *(a2 + 102) = 0u;
                    *(a2 + 106) = 0u;
                    *(a2 + 94) = 0u;
                    *(a2 + 98) = 0u;
                    *(a2 + 86) = 0u;
                    *(a2 + 90) = 0u;
                    *v164 = 0u;
                  }

                  else
                  {
                    v165 = (v234 + 176 * v163 + 10676);
                    v166 = *v165;
                    v167 = v165[2];
                    *(a2 + 86) = v165[1];
                    *(a2 + 90) = v167;
                    *v164 = v166;
                    v168 = v165[3];
                    v169 = v165[4];
                    v170 = v165[6];
                    *(a2 + 102) = v165[5];
                    *(a2 + 106) = v170;
                    *(a2 + 94) = v168;
                    *(a2 + 98) = v169;
                    v171 = v165[7];
                    v172 = v165[8];
                    v173 = v165[10];
                    *(a2 + 118) = v165[9];
                    *(a2 + 122) = v173;
                    *(a2 + 110) = v171;
                    *(a2 + 114) = v172;
                  }

                  v44 = v236 + 4;
                  v174 = a2 + 149;
                  if (*(v234 + 10649))
                  {
                    v175 = *(a1 + 104);
                    ++*(a1 + 164);
                    v176 = v175 >> 63;
                    HEVC_RBSP::flush_bits(a1, 1);
                    *(a2 + 593) = v176;
                    if (*(v234 + 3600))
                    {
                      v177 = *(a1 + 104);
                      ++*(a1 + 164);
                      v178 = v177 >> 63;
                      HEVC_RBSP::flush_bits(a1, 1);
                      *(a2 + 594) = v178;
                    }
                  }

                  *v174 = -1;
                  if (a2[5] > 1)
                  {
                    *(a2 + 738) = 1;
                    v43 = v239;
LABEL_233:
                    v181 = HEVC_RBSP::se_v(a1);
                    a2[461] = v181;
                    v182 = *(v34 + 28);
                    v183 = -6 * *(v234 + 3636) - v182 - 26;
                    if (25 - v182 <= v183)
                    {
                      v184 = -6 * *(v234 + 3636) - v182 - 26;
                    }

                    else
                    {
                      v184 = 25 - v182;
                    }

                    if (v181 < v183 || v181 > v184)
                    {
                      v186 = v181;
                      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                      if (!result)
                      {
                        return result;
                      }

                      *buf = 136316418;
                      v242 = "parseSliceHeader";
                      v243 = 1024;
                      v244 = 3980;
                      v245 = 2080;
                      v246 = "slice->slice_qp_delta";
                      v247 = 1024;
                      *v248 = v186;
                      *&v248[4] = 1024;
                      *&v248[6] = v183;
                      *v249 = 1024;
                      *&v249[2] = v184;
                      v31 = MEMORY[0x277D86220];
                      v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                      goto LABEL_299;
                    }

                    if (*(v34 + 48))
                    {
                      a2[462] = HEVC_RBSP::se_v(a1);
                      v187 = HEVC_RBSP::se_v(a1);
                      a2[463] = v187;
                      v188 = a2[462];
                      if (v188 - 13 <= 0xFFFFFFE6)
                      {
                        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                        if (!result)
                        {
                          return result;
                        }

                        *buf = 136316418;
                        v242 = "parseSliceHeader";
                        v243 = 1024;
                        v244 = 3986;
                        v245 = 2080;
                        v246 = "slice->slice_cb_qp_offset";
                        v247 = 1024;
                        *v248 = v188;
                        *&v248[4] = 1024;
                        *&v248[6] = -12;
                        *v249 = 1024;
                        *&v249[2] = 12;
                        v31 = MEMORY[0x277D86220];
                        v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                        goto LABEL_299;
                      }

                      v199 = v187;
                      if (v187 - 13 <= 0xFFFFFFE6)
                      {
                        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                        if (!result)
                        {
                          return result;
                        }

                        *buf = 136316418;
                        v242 = "parseSliceHeader";
                        v243 = 1024;
                        v244 = 3987;
                        v245 = 2080;
                        v246 = "slice->slice_cr_qp_offset";
                        v247 = 1024;
                        *v248 = v199;
                        *&v248[4] = 1024;
                        *&v248[6] = -12;
                        *v249 = 1024;
                        *&v249[2] = 12;
                        v31 = MEMORY[0x277D86220];
                        v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                        goto LABEL_299;
                      }
                    }

                    if (*(v34 + 6477))
                    {
                      v200 = *(a1 + 104);
                      ++*(a1 + 164);
                      v201 = v200 >> 63;
                      HEVC_RBSP::flush_bits(a1, 1);
                      *(a2 + 1856) = v201;
                    }

                    if (*(v34 + 239))
                    {
                      v202 = *(a1 + 104);
                      ++*(a1 + 164);
                      v203 = v202 >> 63;
                      HEVC_RBSP::flush_bits(a1, 1);
                      *(a2 + 1857) = v203;
                    }

                    else
                    {
                      LODWORD(v203) = *(a2 + 1857);
                    }

                    if (v203)
                    {
                      v209 = *(a1 + 104);
                      ++*(a1 + 164);
                      HEVC_RBSP::flush_bits(a1, 1);
                      *(a2 + 1858) = v209 < 0;
                      if ((v209 & 0x8000000000000000) == 0)
                      {
                        a2[465] = HEVC_RBSP::se_v(a1);
                        v210 = HEVC_RBSP::se_v(a1);
                        a2[466] = v210;
                        v211 = a2[465];
                        if (v211 - 7 <= 0xFFFFFFF2)
                        {
                          result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                          if (!result)
                          {
                            return result;
                          }

                          *buf = 136316418;
                          v242 = "parseSliceHeader";
                          v243 = 1024;
                          v244 = 4004;
                          v245 = 2080;
                          v246 = "slice->slice_beta_offset_div2";
                          v247 = 1024;
                          *v248 = v211;
                          *&v248[4] = 1024;
                          *&v248[6] = -6;
                          *v249 = 1024;
                          *&v249[2] = 6;
                          v31 = MEMORY[0x277D86220];
                          v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                          goto LABEL_299;
                        }

                        v212 = v210;
                        if (v210 - 7 <= 0xFFFFFFF2)
                        {
                          result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                          if (!result)
                          {
                            return result;
                          }

                          *buf = 136316418;
                          v242 = "parseSliceHeader";
                          v243 = 1024;
                          v244 = 4005;
                          v245 = 2080;
                          v246 = "slice->slice_tc_offset_div2";
                          v247 = 1024;
                          *v248 = v212;
                          *&v248[4] = 1024;
                          *&v248[6] = -6;
                          *v249 = 1024;
                          *&v249[2] = 6;
                          v31 = MEMORY[0x277D86220];
                          v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                          goto LABEL_299;
                        }
                      }
                    }

                    else
                    {
                      *(a2 + 465) = *(v34 + 244);
                      *(a2 + 1858) = *(v34 + 240);
                    }

                    LOBYTE(v213) = *(v34 + 237);
                    if (v213 && (*(a2 + 593) || *(a2 + 594) || !*(a2 + 1858)))
                    {
                      v214 = *(a1 + 104);
                      ++*(a1 + 164);
                      v213 = v214 >> 63;
                      HEVC_RBSP::flush_bits(a1, 1);
                    }

                    *(a2 + 1868) = v213;
                    goto LABEL_37;
                  }

                  v179 = *(a1 + 104);
                  ++*(a1 + 164);
                  HEVC_RBSP::flush_bits(a1, 1);
                  *(a2 + 595) = v179 < 0;
                  a2[149] = *(v34 + 20);
                  if (a2[5])
                  {
                    v180 = -1;
                  }

                  else
                  {
                    v180 = *(v34 + 24);
                  }

                  a2[150] = v180;
                  if (v179 < 0)
                  {
                    v195 = HEVC_RBSP::ue_v(a1);
                    *v174 = v195;
                    if (v195 >= 0xF)
                    {
                      v196 = v195;
                      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                      if (!result)
                      {
                        return result;
                      }

                      *buf = 136316418;
                      v242 = "parseSliceHeader";
                      v243 = 1024;
                      v244 = 3899;
                      v245 = 2080;
                      v246 = "slice->num_ref_idx_l0_active_minus1";
                      v247 = 1024;
                      *v248 = v196;
                      *&v248[4] = 1024;
                      *&v248[6] = 0;
                      *v249 = 1024;
                      *&v249[2] = 14;
                      v31 = MEMORY[0x277D86220];
                      v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                      goto LABEL_299;
                    }

                    if (!*v233)
                    {
                      v197 = HEVC_RBSP::ue_v(a1);
                      a2[150] = v197;
                      if (v197 >= 0xF)
                      {
                        v198 = v197;
                        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                        if (!result)
                        {
                          return result;
                        }

                        *buf = 136316418;
                        v242 = "parseSliceHeader";
                        v243 = 1024;
                        v244 = 3908;
                        v245 = 2080;
                        v246 = "slice->num_ref_idx_l1_active_minus1";
                        v247 = 1024;
                        *v248 = v198;
                        *&v248[4] = 1024;
                        *&v248[6] = 0;
                        *v249 = 1024;
                        *&v249[2] = 14;
                        v31 = MEMORY[0x277D86220];
                        v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                        goto LABEL_299;
                      }
                    }
                  }

                  v189 = HEVC_RBSP::calcNumPocTotalCurr(a1, a6, (a2 + 82), a2, a3, a7);
                  a2[475] = v189;
                  if (*(v34 + 6456))
                  {
                    if (v189 >= 2)
                    {
                      result = HEVC_RBSP::parseRefPicListsModification(a1, a2);
                      if (!result)
                      {
                        return result;
                      }
                    }
                  }

                  v190 = v233;
                  if (!*v233)
                  {
                    v191 = *(a1 + 104);
                    ++*(a1 + 164);
                    v192 = v191 >> 63;
                    HEVC_RBSP::flush_bits(a1, 1);
                    v190 = v233;
                    *(a2 + 736) = v192;
                  }

                  v43 = v239;
                  if (*(v34 + 17))
                  {
                    v193 = *(a1 + 104);
                    ++*(a1 + 164);
                    v194 = v193 >> 63;
                    HEVC_RBSP::flush_bits(a1, 1);
                    v190 = v233;
                    *(a2 + 737) = v194;
                  }

                  if (!*(a2 + 592))
                  {
                    goto LABEL_279;
                  }

                  if (*v190)
                  {
                    *(a2 + 738) = 1;
                  }

                  else
                  {
                    v204 = *(a1 + 104);
                    ++*(a1 + 164);
                    HEVC_RBSP::flush_bits(a1, 1);
                    v190 = v233;
                    *(a2 + 738) = v204 < 0;
                    if ((v204 & 0x8000000000000000) == 0)
                    {
                      if (a2[150] < 1)
                      {
                        goto LABEL_279;
                      }

                      goto LABEL_276;
                    }
                  }

                  if (*v174 <= 0)
                  {
LABEL_279:
                    if ((!*(v34 + 49) || *v190 != 1) && (!*(v34 + 50) || *v190) || HEVC_RBSP::parsePredWeightTable(a1, v234, a2, *(v234 + 3600)))
                    {
                      v207 = HEVC_RBSP::ue_v(a1);
                      a2[460] = v207;
                      if (v207 >= 5)
                      {
                        v208 = v207;
                        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                        if (!result)
                        {
                          return result;
                        }

                        *buf = 136316418;
                        v242 = "parseSliceHeader";
                        v243 = 1024;
                        v244 = 3966;
                        v245 = 2080;
                        v246 = "slice->five_minus_max_num_merge_cand";
                        v247 = 1024;
                        *v248 = v208;
                        *&v248[4] = 1024;
                        *&v248[6] = 0;
                        *v249 = 1024;
                        *&v249[2] = 4;
                        v31 = MEMORY[0x277D86220];
                        v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                        goto LABEL_299;
                      }

                      goto LABEL_233;
                    }

                    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                    if (!result)
                    {
                      return result;
                    }

                    *buf = 0;
                    v31 = MEMORY[0x277D86220];
                    v32 = "AppleAVD: invalid weight table";
                    goto LABEL_48;
                  }

LABEL_276:
                  v205 = HEVC_RBSP::ue_v(a1);
                  v190 = v233;
                  a2[185] = v205;
                  if (v205 >= 0xF)
                  {
                    v206 = v205;
                    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                    if (!result)
                    {
                      return result;
                    }

                    *buf = 136316418;
                    v242 = "parseSliceHeader";
                    v243 = 1024;
                    v244 = 3949;
                    v245 = 2080;
                    v246 = "slice->collocated_ref_idx";
                    v247 = 1024;
                    *v248 = v206;
                    *&v248[4] = 1024;
                    *&v248[6] = 0;
                    *v249 = 1024;
                    *&v249[2] = 14;
                    v31 = MEMORY[0x277D86220];
                    v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
                    goto LABEL_299;
                  }

                  goto LABEL_279;
                }
              }
            }
          }
        }

LABEL_216:
        v160 = HEVC_RBSP::calcNumActiveRefLayerPics(a1, a6, v239, v14, a2);
        if (v160 >= 1)
        {
          v161 = 0;
          do
          {
            a2[v161 + 11] = HEVC_RBSP::calcReflayerPicIdc(v160, a6, v239, v161, v14);
            ++v161;
            v160 = HEVC_RBSP::calcNumActiveRefLayerPics(a1, a6, v239, v14, a2);
          }

          while (v161 < v160);
        }

        goto LABEL_219;
      }
    }

    v95 = *(a1 + 108);
    *(a1 + 164) += v235;
    v96 = v95 >> (28 - v236);
    HEVC_RBSP::flush_bits(a1, v235);
    a2[8] = v96;
    v97 = *(v35 + 22912) - 1;
    if (v96 > v97)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136316418;
      v242 = "parseSliceHeader";
      v243 = 1024;
      v244 = 3718;
      v245 = 2080;
      v246 = "slice->slice_pic_order_cnt_lsb";
      v247 = 1024;
      *v248 = v96;
      *&v248[4] = 1024;
      *&v248[6] = 0;
      *v249 = 1024;
      *&v249[2] = v97;
      v31 = MEMORY[0x277D86220];
      v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_299;
    }

    v98 = v239;
    if (v15 - 21 > 0xFFFFFFFD)
    {
LABEL_201:
      if (v98 < 1)
      {
        goto LABEL_216;
      }

      goto LABEL_202;
    }
  }

  else
  {
    if (v15 - 21 > 0xFFFFFFFD)
    {
      goto LABEL_219;
    }

    v82 = *(a1 + 108);
    *(a1 + 164) += v235;
    v83 = v82 >> (28 - v236);
    HEVC_RBSP::flush_bits(a1, v235);
    a2[8] = v83;
    v84 = *(v35 + 22912) - 1;
    if (v83 > v84)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136316418;
      v242 = "parseSliceHeader";
      v243 = 1024;
      v244 = 3728;
      v245 = 2080;
      v246 = "slice->slice_pic_order_cnt_lsb";
      v247 = 1024;
      *v248 = v83;
      *&v248[4] = 1024;
      *&v248[6] = 0;
      *v249 = 1024;
      *&v249[2] = v84;
      v31 = MEMORY[0x277D86220];
      v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_299;
    }
  }

  v99 = *(a1 + 104);
  ++*(a1 + 164);
  HEVC_RBSP::flush_bits(a1, 1);
  *(a2 + 36) = v99 < 0;
  if (a8)
  {
    v100 = *(a8 + 36);
    if (v100 != v99 >> 63)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136316674;
      v242 = "parseSliceHeader";
      v243 = 1024;
      v244 = 3744;
      v245 = 2080;
      v246 = "short_term_ref_pic_set_sps_flag";
      v247 = 2080;
      *v248 = "slice";
      *&v248[8] = 1024;
      *v249 = v99 >> 63;
      *&v249[4] = 2080;
      v250 = "prev_slice";
      v251 = 1024;
      v252 = v100;
      v31 = MEMORY[0x277D86220];
      v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
      goto LABEL_31;
    }
  }

  if (v99 < 0)
  {
    v101 = v234;
    v114 = *(v234 + 10672);
    if (v114 >= 2)
    {
      v115 = __clz(v114 - 1);
      v116 = *(a1 + 108);
      *(a1 + 164) += 32 - v115;
      v117 = v116 >> v115;
      HEVC_RBSP::flush_bits(a1, 32 - v115);
      a2[81] = v117;
      if (a8)
      {
        v118 = *(a8 + 324);
        if (v117 != v118)
        {
          result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *buf = 136316674;
          v242 = "parseSliceHeader";
          v243 = 1024;
          v244 = 3759;
          v245 = 2080;
          v246 = "short_term_ref_pic_set_idx";
          v247 = 2080;
          *v248 = "slice";
          *&v248[8] = 1024;
          *v249 = v117;
          *&v249[4] = 2080;
          v250 = "prev_slice";
          v251 = 1024;
          v252 = v118;
          v31 = MEMORY[0x277D86220];
          v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
          goto LABEL_31;
        }
      }
    }
  }

  else
  {
    v101 = v234;
    if ((HEVC_RBSP::parseShortTermRefPicSet(a1, v234 + 10676, *(v234 + 10672), *(v234 + 10672)) & 1) == 0)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 0;
      v31 = MEMORY[0x277D86220];
      v32 = "AppleAVD: parseShortTermRefPicSet parsing failure";
      goto LABEL_48;
    }
  }

  if (!*(v101 + 22116))
  {
    goto LABEL_197;
  }

  if (*(v101 + 22120))
  {
    v119 = HEVC_RBSP::ue_v(a1);
    a2[126] = v119;
    if (a8)
    {
      v120 = *(a8 + 504);
      if (v119 != v120)
      {
        v127 = v119;
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 136316674;
        v242 = "parseSliceHeader";
        v243 = 1024;
        v244 = 3766;
        v245 = 2080;
        v246 = "num_long_term_sps";
        v247 = 2080;
        *v248 = "slice";
        *&v248[8] = 1024;
        *v249 = v127;
        *&v249[4] = 2080;
        v250 = "prev_slice";
        v251 = 1024;
        v252 = v120;
        v31 = MEMORY[0x277D86220];
        v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
        goto LABEL_31;
      }
    }

    v121 = *(v101 + 22120);
    v230 = v119;
    if (v119 > v121)
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136316418;
      v242 = "parseSliceHeader";
      v243 = 1024;
      v244 = 3767;
      v245 = 2080;
      v246 = "slice->num_long_term_sps";
      v247 = 1024;
      *v248 = v230;
      *&v248[4] = 1024;
      *&v248[6] = 0;
      *v249 = 1024;
      *&v249[2] = v121;
      v31 = MEMORY[0x277D86220];
      v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
      goto LABEL_299;
    }
  }

  v122 = HEVC_RBSP::ue_v(a1);
  a2[127] = v122;
  if (a8)
  {
    v123 = *(a8 + 508);
    if (v122 != v123)
    {
      v128 = v122;
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136316674;
      v242 = "parseSliceHeader";
      v243 = 1024;
      v244 = 3773;
      v245 = 2080;
      v246 = "num_long_term_pics";
      v247 = 2080;
      *v248 = "slice";
      *&v248[8] = 1024;
      *v249 = v128;
      *&v249[4] = 2080;
      v250 = "prev_slice";
      v251 = 1024;
      v252 = v123;
      v31 = MEMORY[0x277D86220];
      v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
      goto LABEL_31;
    }
  }

  v124 = a2[126];
  if (v124 >= 0x11)
  {
    v125 = a2[126];
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136316418;
    v242 = "parseSliceHeader";
    v243 = 1024;
    v244 = 3775;
    v245 = 2080;
    v246 = "slice->num_long_term_sps";
    v247 = 1024;
    *v248 = v125;
    *&v248[4] = 1024;
    *&v248[6] = 0;
    *v249 = 1024;
    *&v249[2] = 16;
    v31 = MEMORY[0x277D86220];
    v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
    goto LABEL_299;
  }

  v126 = 16 - v124;
  v231 = v122;
  if (v122 > 16 - v124)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136316418;
    v242 = "parseSliceHeader";
    v243 = 1024;
    v244 = 3776;
    v245 = 2080;
    v246 = "slice->num_long_term_pics";
    v247 = 1024;
    *v248 = v231;
    *&v248[4] = 1024;
    *&v248[6] = 0;
    *v249 = 1024;
    *&v249[2] = v126;
    v31 = MEMORY[0x277D86220];
    v32 = "AppleAVD: ERROR: %s() Line %d: RNG_CHECK failed for %s x %d low %d up %d\n";
    goto LABEL_299;
  }

  v129 = 32 - __clz(*(v101 + 22120) - 1);
  if (*(v101 + 22120) == 1)
  {
    v129 = 0;
  }

  v225 = v129;
  if (!(v122 + v124))
  {
LABEL_197:
    if (!*(v101 + 22284) || (v149 = *(a1 + 104), ++*(a1 + 164), v150 = v149 >> 63, HEVC_RBSP::flush_bits(a1, 1), *(a2 + 592) = v150, !a8) || (v151 = *(a8 + 592), v151 == v150))
    {
      v98 = v239;
      if (!a7)
      {
        goto LABEL_219;
      }

      goto LABEL_201;
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136316674;
    v242 = "parseSliceHeader";
    v243 = 1024;
    v244 = 3819;
    v245 = 2080;
    v246 = "slice_temporal_mvp_enabled_flag";
    v247 = 2080;
    *v248 = "slice";
    *&v248[8] = 1024;
    *v249 = v150;
    *&v249[4] = 2080;
    v250 = "prev_slice";
    v251 = 1024;
    v252 = v151;
    v31 = MEMORY[0x277D86220];
    v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
LABEL_31:
    v33 = 60;
LABEL_49:
    _os_log_impl(&dword_277606000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, v33);
    return 0;
  }

  v130 = 0;
  v224 = 32 - v129;
  v227 = v101 + 22124;
  v226 = v101 + 22252;
  v131 = 1904;
  while (1)
  {
    *v228 = v131;
    v232 = v130;
    if (v130 < v124)
    {
      break;
    }

    v136 = *(a1 + 108);
    *(a1 + 164) += v235;
    v137 = v136 >> (28 - v236);
    HEVC_RBSP::flush_bits(a1, v235);
    *(a2 + v131) = v137;
    v138 = *(a1 + 104);
    ++*(a1 + 164);
    v139 = v138 >> 63;
    HEVC_RBSP::flush_bits(a1, 1);
    v140 = v139;
LABEL_183:
    *(a2 + v232 + 1968) = v140;
    if (a8)
    {
      v141 = *(a2 + *v228);
      v142 = *(a8 + *v228);
      if (v141 != v142)
      {
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 136316674;
        v242 = "parseSliceHeader";
        v243 = 1024;
        v244 = 3797;
        v245 = 2080;
        v246 = "PocLsbLt[i]";
        v247 = 2080;
        *v248 = "slice";
        *&v248[8] = 1024;
        *v249 = v141;
        *&v249[4] = 2080;
        v250 = "prev_slice";
        v251 = 1024;
        v252 = v142;
        v31 = MEMORY[0x277D86220];
        v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
        goto LABEL_31;
      }

      v143 = *(a8 + v232 + 1968);
      if (v140 != v143)
      {
        v222 = v140;
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 136316674;
        v242 = "parseSliceHeader";
        v243 = 1024;
        v244 = 3798;
        v245 = 2080;
        v246 = "UsedByCurrPicLt[i]";
        v247 = 2080;
        *v248 = "slice";
        *&v248[8] = 1024;
        *v249 = v222;
        *&v249[4] = 2080;
        v250 = "prev_slice";
        v251 = 1024;
        v252 = v143;
        v31 = MEMORY[0x277D86220];
        v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
        goto LABEL_31;
      }
    }

    v144 = *(a1 + 104);
    ++*(a1 + 164);
    HEVC_RBSP::flush_bits(a1, 1);
    v145 = v232;
    *(a2 + v232 + 576) = v144 < 0;
    if (a8)
    {
      v146 = *(a8 + v232 + 576);
      if (v146 != v144 >> 63)
      {
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 136316674;
        v242 = "parseSliceHeader";
        v243 = 1024;
        v244 = 3801;
        v245 = 2080;
        v246 = "delta_poc_msb_present_flag[i]";
        v247 = 2080;
        *v248 = "slice";
        *&v248[8] = 1024;
        *v249 = v144 >> 63;
        *&v249[4] = 2080;
        v250 = "prev_slice";
        v251 = 1024;
        v252 = v146;
        v31 = MEMORY[0x277D86220];
        v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
        goto LABEL_31;
      }
    }

    if (v144 < 0)
    {
      v147 = HEVC_RBSP::ue_v(a1);
      v145 = v232;
    }

    else
    {
      v147 = 0;
    }

    if (v145 && v145 != a2[126])
    {
      v147 += *(a2 + *v228 + 76);
    }

    *(a2 + *v228 + 80) = v147;
    if (a8)
    {
      v148 = *(a8 + *v228 + 80);
      if (v147 != v148)
      {
        v223 = v147;
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 136316674;
        v242 = "parseSliceHeader";
        v243 = 1024;
        v244 = 3813;
        v245 = 2080;
        v246 = "DeltaPocMsbCycleLt[i]";
        v247 = 2080;
        *v248 = "slice";
        *&v248[8] = 1024;
        *v249 = v223;
        *&v249[4] = 2080;
        v250 = "prev_slice";
        v251 = 1024;
        v252 = v148;
        v31 = MEMORY[0x277D86220];
        v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
        goto LABEL_31;
      }
    }

    v130 = v145 + 1;
    v124 = a2[126];
    v131 = *v228 + 4;
    if (v130 >= a2[127] + v124)
    {
      goto LABEL_197;
    }
  }

  v132 = &a2[v130];
  if (*(v101 + 22120) <= 1u)
  {
    v134 = v132[128];
LABEL_182:
    *(a2 + *v228) = *(v227 + 4 * v134);
    v140 = *(v226 + v134);
    v101 = v234;
    goto LABEL_183;
  }

  v133 = *(a1 + 108);
  *(a1 + 164) += v225;
  v134 = v133 >> v224;
  HEVC_RBSP::flush_bits(a1, v225);
  v132[128] = v134;
  if (!a8)
  {
    goto LABEL_182;
  }

  v135 = *(a8 + 4 * v232 + 512);
  if (v134 == v135)
  {
    goto LABEL_182;
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 136316674;
    v242 = "parseSliceHeader";
    v243 = 1024;
    v244 = 3786;
    v245 = 2080;
    v246 = "lt_idx_sps[i]";
    v247 = 2080;
    *v248 = "slice";
    *&v248[8] = 1024;
    *v249 = v134;
    *&v249[4] = 2080;
    v250 = "prev_slice";
    v251 = 1024;
    v252 = v135;
    v31 = MEMORY[0x277D86220];
    v32 = "AppleAVD: ERROR: %s() Line %d: %s mismatch b/w %s %d and %s %d";
    goto LABEL_31;
  }

  return result;
}

uint64_t CAVDHevcDecoder::activatePS(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 4);
  *(a1 + 8212) = v2;
  if (v2 >= 64)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "activatePS";
      v10 = 1024;
      v11 = v2;
      v3 = MEMORY[0x277D86220];
      v4 = "AppleAVD: WARNING: %s(): bad PPS index %d";
LABEL_7:
      _os_log_impl(&dword_277606000, v3, OS_LOG_TYPE_DEFAULT, v4, &v8, 0x12u);
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  v5 = *(*(a1 + 8176) + 9856 * v2 + 4);
  *(a1 + 8208) = v5;
  if (v5 >= 16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "activatePS";
      v10 = 1024;
      v11 = v5;
      v3 = MEMORY[0x277D86220];
      v4 = "AppleAVD: WARNING: %s(): bad SPS index %d";
      goto LABEL_7;
    }

    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 8168) + 23176 * v5;
  result = 0;
  if (!*(v7 + 3600))
  {
    *(v7 + 3640) = 0;
  }

  return result;
}

uint64_t HEVC_RBSP::getNumberOfBitsParsed(int8x8_t *this)
{
  v1 = vaddlv_u8(vcnt_s8(this[19])) & 0x78;
  if (!*&this[19])
  {
    v1 = 0;
  }

  return (8 * (this[15].i32[0] - this[17].i32[0]) - (this[14].i32[0] + v1) - 32);
}

uint64_t HEVC_RBSP::calcNumPocTotalCurr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *(a3 + 4);
  if (v6)
  {
    LODWORD(v7) = 0;
    v8 = (a3 + 16);
    do
    {
      if (*v8++)
      {
        v7 = (v7 + 1);
      }

      else
      {
        v7 = v7;
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = *(a3 + 8);
  if (v10)
  {
    v11 = (a3 + 32);
    do
    {
      if (*v11++)
      {
        v7 = (v7 + 1);
      }

      else
      {
        v7 = v7;
      }

      --v10;
    }

    while (v10);
  }

  v13 = (*(a4 + 508) + *(a4 + 504));
  if (v13)
  {
    v14 = (a4 + 1968);
    do
    {
      if (*v14++)
      {
        v7 = (v7 + 1);
      }

      else
      {
        v7 = v7;
      }

      --v13;
    }

    while (v13);
  }

  if (a6)
  {
    return HEVC_RBSP::calcNumActiveRefLayerPics(a1, a2, *(a5 + 8), *(a5 + 16), a4) + v7;
  }

  return v7;
}

uint64_t CAVDHevcDecoder::deriveHevcOutputControlFlags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 4);
  if ((v5 & 0xFFFFFFF8) == 0x10)
  {
    LOBYTE(v6) = 1;
    if ((v5 - 16) >= 5 && (a5 & 1) == 0)
    {
      v6 = *(a1 + 8944);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  *(a4 + 1) = v6;
  *(a4 + 2) = *(a3 + 24);
  if ((v5 & 0xFFFFFFFE) != 8)
  {
    return 0;
  }

  v7 = *(*(a1 + 3016) + 2840);
  if (v7)
  {
    if (*(v7 + 1))
    {
      result = 0;
      *(a4 + 2) = 0;
      return result;
    }

    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "deriveHevcOutputControlFlags";
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s RASL picture %d with no associated IRAP picture", &v9, 0x12u);
  }

  return 310;
}

uint64_t AppleAVDWrapperHEVCDecoderDecodeTile(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, int *a9)
{
  v52 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDWrapperHEVCDecoderDecodeTile - ERROR! storage is NULL\n", buf, 2u);
    }

    return 311;
  }

  v15 = DerivedStorage;
  pthread_mutex_lock((DerivedStorage + 5648));
  v16 = *(v15 + 5204);
  if (v16 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v49 = "AppleAVDWrapperHEVCDecoderDecodeTile";
      v50 = 1024;
      v51 = v16;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s called on plugin in state %d", buf, 0x12u);
    }

    pthread_mutex_unlock((v15 + 5648));
    return 311;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  v18 = DataBuffer;
  if (!DataBuffer)
  {
    goto LABEL_61;
  }

  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  if (CMBlockBufferGetDataLength(v18) != DataLength && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v49 = "AppleAVDWrapperHEVCDecoderDecodeTile";
    v50 = 1024;
    v51 = 5104;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
  }

  v20 = CMBlockBufferGetDataLength(v18);
  v21 = v20;
  if (!v20)
  {
LABEL_61:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v49 = v18;
      v50 = 1024;
      v51 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR:  either tile dataBuffer=%p is invalid or dataLength=%u is invalid!", buf, 0x12u);
    }

    v23 = -12909;
    MEMORY[0x277CAEB50](*(v15 + 8), a2, 4294954387, 2, 0);
    if (a9)
    {
      *a9 = 2;
    }

    goto LABEL_23;
  }

  destination[1] = v20;
  v38 = 0;
  destination[0] = 0;
  LODWORD(v38) = *(v15 + 5208);
  v22 = AppleAVDGetParameter(*(v15 + 5184), 55, destination);
  if (v22)
  {
    v23 = v22;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v49 = "AppleAVDWrapperHEVCDecoderDecodeTile";
      v50 = 1024;
      v51 = v23;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): AppleAVDGetParameter [kAppleAVDGetCompressedPictureBuffer] failed with %d\n", buf, 0x12u);
    }

    MEMORY[0x277CAEB50](*(v15 + 8), a2, 4294954385, 2, 0);
    if (a9)
    {
      *a9 = 2;
    }

    goto LABEL_23;
  }

  v25 = destination[0];
  if (!CMBlockBufferCopyDataBytes(v18, 0, v21, destination[0]))
  {
    bzero(v40, 0x878uLL);
    v39[0] = v25;
    v39[1] = v21;
    v26 = *(v15 + 5208);
    v40[0] = v26;
    if (*(v15 + 8024))
    {
      if ((a8 & 4) != 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(v15 + 8020))
    {
      v27 = 2;
LABEL_38:
      v40[1] = v27;
LABEL_39:
      v43 = 0;
      v42 = 0;
      v44 = 0x100000000;
      v46 = 1;
      v45 = a7;
      v47 = a6;
      if (a8)
      {
        v41 = 0;
        v28 = *a9 | 1;
        *a9 = v28;
        LOBYTE(v26) = *(v15 + 5208);
      }

      else
      {
        v41 = 1;
        v28 = *a9;
      }

      *(v15 + 8 * v26 + 2112) = a2;
      *(v15 + 4 * v26 + 4160) = v28;
      v29 = *(v15 + 8040);
      if (v29)
      {
        if (WriteNAL(v29, v25, v21))
        {
          v30 = *(v15 + 8048);
          if (v30)
          {
            fprintf(v30, "Error writing decEncryptedOutput for frame %d \n", *(v15 + 5208));
          }
        }
      }

      v31 = *(v15 + 8056);
      if (v31)
      {
        fwrite(v25, 1uLL, v21, v31);
      }

      v32 = AppleAVDDecodeFrame(*(v15 + 5184), v39);
      if (!v32)
      {
        v34 = *(v15 + 8032);
        if (v34)
        {
          if (WriteNAL(v34, v25, v21))
          {
            v35 = *(v15 + 8048);
            if (v35)
            {
              fprintf(v35, "Error writing decOutput for frame %d \n", *(v15 + 5208));
            }
          }
        }

        v36 = *(v15 + 8064);
        if (v36)
        {
          fwrite(v25, 1uLL, v21, v36);
        }

        ++*(v15 + 5208);
        goto LABEL_25;
      }

      MEMORY[0x277CAEB50](*(v15 + 8), a2, v32, 2, 0);
      AppleAVDReleaseOneCPBWithFrameworkError(*(v15 + 5184), *(v15 + 5208));
      *a9 = 2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(v15 + 5208);
        *buf = 67109120;
        LODWORD(v49) = v33;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCTileDecoder_DecodeFrame ERROR: framenum %d kVTVideoDecoderMalfunctionErr", buf, 8u);
      }

      goto LABEL_51;
    }

    v27 = 1;
    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING, fail to copy data bytes, nothing to decode", buf, 2u);
  }

  MEMORY[0x277CAEB50](*(v15 + 8), a2, 0, 2, 0);
  AppleAVDReleaseOneCPBWithFrameworkError(*(v15 + 5184), *(v15 + 5208));
  if (a9)
  {
    *a9 = 2;
  }

LABEL_51:
  v23 = -12911;
LABEL_23:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v49 = "AppleAVDWrapperHEVCDecoderDecodeTile";
    v50 = 1024;
    v51 = v23;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", buf, 0x12u);
  }

LABEL_25:
  pthread_mutex_unlock((v15 + 5648));
  return 0;
}

void BufferPool::BufferPool(BufferPool *this)
{
  *(this + 112) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 19) = 0;
  *(this + 160) = 0;
  *(this + 42) = 1;
  *(this + 172) = 0;
  *(this + 22) = 0;
}

uint64_t BufferPool::initBufferPool(BufferPool *this, void *a2, __CVPixelBufferPool *a3, unsigned int a4, int a5, int a6, int a7)
{
  v30 = *MEMORY[0x277D85DE8];
  *(this + 35) = a5;
  *(this + 41) = a6;
  *(this + 42) = a7;
  v10 = *(this + 112);
  if (!a2 || (v10 & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134218752;
      *v25 = a2;
      *&v25[8] = 2048;
      *&v25[10] = a3;
      v26 = 1024;
      v27 = a4;
      v28 = 1024;
      v29 = v10;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: failed due to p_ctx=%p, p_cv_pool=%p, max_cache_size=%d, m_is_initialized=%d", &v24, 0x22u);
    }

    v13 = 4294967294;
    goto LABEL_21;
  }

  v12 = pthread_mutex_init(this, 0);
  if (v12)
  {
    v13 = v12;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v14 = "ENOMEM";
    if (v13 == 22)
    {
      v14 = "EINVAL";
    }

    if (v13 == 35)
    {
      v14 = "EAGAIN";
    }

    v24 = 67109378;
    *v25 = v13;
    *&v25[4] = 2080;
    *&v25[6] = v14;
    v15 = MEMORY[0x277D86220];
    v16 = "AppleAVD:  cannot initialize mutex, return error %d [ %s ]";
    goto LABEL_20;
  }

  v17 = pthread_cond_init((this + 64), 0);
  if (v17)
  {
    v13 = v17;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v18 = "ENOMEM";
    if (v13 == 22)
    {
      v18 = "EINVAL";
    }

    if (v13 == 35)
    {
      v18 = "EAGAIN";
    }

    v24 = 67109378;
    *v25 = v13;
    *&v25[4] = 2080;
    *&v25[6] = v18;
    v15 = MEMORY[0x277D86220];
    v16 = "AppleAVD:  cannot initialize cond variable, return error %d [ %s ]";
LABEL_20:
    _os_log_impl(&dword_277606000, v15, OS_LOG_TYPE_DEFAULT, v16, &v24, 0x12u);
LABEL_21:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      *v25 = "initBufferPool";
      *&v25[8] = 1024;
      *&v25[10] = v13;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): failed with error %d\n", &v24, 0x12u);
    }

    return v13;
  }

  *(this + 34) = a4;
  v20 = operator new[](184 * a4, MEMORY[0x277D826F0]);
  *(this + 15) = v20;
  if (!v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315138;
      *v25 = "initBufferPool";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Failed to allocate buffers!\n", &v24, 0xCu);
    }

    v13 = 4294967293;
    goto LABEL_21;
  }

  if (a4)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = &v20[v21];
      *(v23 + 22) = 0;
      *(v23 + 9) = 0uLL;
      *(v23 + 10) = 0uLL;
      *(v23 + 7) = 0uLL;
      *(v23 + 8) = 0uLL;
      *(v23 + 5) = 0uLL;
      *(v23 + 6) = 0uLL;
      *(v23 + 3) = 0uLL;
      *(v23 + 4) = 0uLL;
      *(v23 + 1) = 0uLL;
      *(v23 + 2) = 0uLL;
      *v23 = 0uLL;
      v20 = *(this + 15);
      *&v20[v21 + 152] = -1;
      ++v22;
      v21 += 184;
    }

    while (v22 < *(this + 34));
  }

  v13 = 0;
  *(this + 18) = a2;
  *(this + 16) = a3;
  *(this + 112) = 1;
  return v13;
}

BOOL CAVDHevcDecoder::VAIsSurfaceListIndexMapped(CAVDHevcDecoder *this, int a2, int a3)
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

uint64_t AppleAVDPutTiledPixelBufferIntoBufferPool(_DWORD *a1, unsigned int *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a1 + 50;
  v13 = *&a1[2 * a3 + 50];
  if (v13)
  {
    goto LABEL_2;
  }

  v18 = operator new(0xB8uLL, MEMORY[0x277D826F0]);
  if (!v18)
  {
    *&v12[2 * a3] = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 67109120;
      v24 = a3;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: pBufferPool[%d] allocation failed!";
      goto LABEL_18;
    }

    return 301;
  }

  v19 = v18;
  BufferPool::BufferPool(v18);
  *&v12[2 * a3] = v19;
  if (a1[962])
  {
    v20 = 50;
  }

  else
  {
    v20 = 5;
  }

  if (BufferPool::initBufferPool(v19, a1, 0, 5u, a3, v20, 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 67109120;
      v24 = a3;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: pBufferPool[%d] initBufferPool allocation failed!";
LABEL_18:
      _os_log_impl(&dword_277606000, v21, OS_LOG_TYPE_DEFAULT, v22, &v23, 8u);
      return 301;
    }

    return 301;
  }

  v13 = *&v12[2 * a3];
  *(v13 + 160) = 1;
LABEL_2:
  v14 = 902;
  if (a3 == 1)
  {
    v14 = 900;
  }

  if (a4)
  {
    v14 = 904;
  }

  v15 = *&a1[v14];
  v16 = a1[56];

  return BufferPool::getBuffer(v13, a2, v16, v15, a5, a6);
}

uint64_t CAHDecCatnipHevc::freeWorkBuf_SPS(uint64_t this)
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

uint64_t CAHDecCatnipHevc::allocWorkBuf_SPS(CAHDecCatnipHevc *this, _DWORD *a2)
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
    v53 = 2251;
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
        v53 = 2242;
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
    v53 = 2243;
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

uint64_t AppleAVDWrapperHEVCDecoderCopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  pthread_once(&sCreateSupportedPropertyDictionaryOnce_0, hevc_createSupportedPropertyDictionary);
  if (a2 && sHEVCVideoDecoderSupportedPropertyDictionary)
  {
    v3 = CFRetain(sHEVCVideoDecoderSupportedPropertyDictionary);
    result = 0;
    *a2 = v3;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVD_HEVCVideoDecoder Error:: CFDictionaryCreate - HEVCVideoDecoder_CopySupportedPropertyDictionary- failed.\n", v5, 2u);
    }

    return 4294954392;
  }

  return result;
}

uint64_t AppleAVDWrapperHEVCDecoderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, *MEMORY[0x277CE2708]))
  {
    if (CFEqual(a2, *MEMORY[0x277CE2660]) || CFEqual(a2, *MEMORY[0x277CE2650]))
    {
LABEL_7:
      v11 = *MEMORY[0x277CBED28];
LABEL_8:
      v10 = CFRetain(v11);
      goto LABEL_9;
    }

    if (CFEqual(a2, *MEMORY[0x277CE2688]))
    {
      LODWORD(v17) = 0;
      v14 = *(DerivedStorage + 5184);
      if (v14)
      {
        if (!AppleAVDGetParameter(v14, 74, &v17))
        {
          v9 = &v17;
          goto LABEL_4;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          HIDWORD(v17) = 136315138;
          v18 = "AppleAVDWrapperHEVCDecoderCopyProperty";
          v15 = MEMORY[0x277D86220];
          v16 = "AppleAVD: ERROR: %s() - AppleAVDGetParameter call for kAppleAVDGetFrameReceiverThreadPriority returned ERROR\n";
LABEL_23:
          _os_log_impl(&dword_277606000, v15, OS_LOG_TYPE_DEFAULT, v16, &v17 + 4, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        HIDWORD(v17) = 136315138;
        v18 = "AppleAVDWrapperHEVCDecoderCopyProperty";
        v15 = MEMORY[0x277D86220];
        v16 = "AppleAVD: WARNING: %s() - trying to get FrameReceiverThreadPriority before videoContext was created!\n";
        goto LABEL_23;
      }
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CE26D0]))
      {
        if (!CFEqual(a2, *MEMORY[0x277CE2710]))
        {
          if (CFEqual(a2, *MEMORY[0x277CE26D8]))
          {
            if (*(DerivedStorage + 16848) == 1)
            {
              result = 0;
              v12 = *MEMORY[0x277CBED28];
              goto LABEL_10;
            }
          }

          else
          {
            if (!CFEqual(a2, *MEMORY[0x277CE2720]))
            {
              return 4294954396;
            }

            if (*(DerivedStorage + 16856) == 1)
            {
              v8 = 16860;
              goto LABEL_3;
            }
          }

          result = 0;
          *a4 = 0;
          return result;
        }

        goto LABEL_7;
      }

      v11 = *(DerivedStorage + 16816);
      if (v11)
      {
        goto LABEL_8;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        HIDWORD(v17) = 136315138;
        v18 = "AppleAVDWrapperHEVCDecoderCopyProperty";
        v15 = MEMORY[0x277D86220];
        v16 = "AppleAVD: ERROR: %s() - RequestedMVHEVCVideoLayerIDs not set ERROR\n";
        goto LABEL_23;
      }
    }

    return 4294954385;
  }

  v8 = 5816;
LABEL_3:
  v9 = (DerivedStorage + v8);
LABEL_4:
  v10 = CFNumberCreate(a3, kCFNumberSInt32Type, v9);
LABEL_9:
  v12 = v10;
  result = 0;
LABEL_10:
  *a4 = v12;
  return result;
}

uint64_t *CAHDecCatnipHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
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

uint64_t CAHDecCatnipHevc::allocWorkBuf_PPS(CAHDecCatnipHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
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
      v72 = 2421;
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
      v72 = 2422;
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
      v72 = 2423;
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
      v72 = 2424;
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
      v72 = 2425;
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
      v72 = 2426;
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
      v72 = 2427;
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
      v72 = 2428;
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
      v72 = 2429;
      v73 = 2080;
      v74 = "AZLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  return result;
}