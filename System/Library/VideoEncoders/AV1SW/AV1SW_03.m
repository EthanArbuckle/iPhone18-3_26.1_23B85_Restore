void sub_27796EBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_27796D574(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_27796EC0C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_27796EC40(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_27796EC74(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_27796ECA8(_DWORD *a1, uint64_t a2, __CVBuffer *a3, uint64_t a4, CMTime *a5, void *a6, uint64_t a7, const void **a8)
{
  v8 = a3;
  v9 = a1;
  v158 = *MEMORY[0x277D85DE8];
  v10 = a1[261];
  if (!v10 || ((v11 = a1[268], v11 <= 0x8000000) ? (v12 = a1[269] > 0x8000000u) : (v12 = 1), v12))
  {
    v13 = 0;
LABEL_86:
    sub_277A4C79C(v13);
    v13 = 0;
    v22 = MEMORY[0x1C];
    LODWORD(v26) = MEMORY[0x20];
    goto LABEL_87;
  }

  v143 = a1[269];
  v14 = 12;
  if (v10 <= 768)
  {
    if (v10 <= 260)
    {
      if (v10 == 258 || v10 == 260)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v10 != 261)
    {
      if (v10 != 262)
      {
        if (v10 == 263)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v14 = 24;
LABEL_42:
      v15 = (a1[261] & 0x800) == 0;
      if ((v10 & 0x800) != 0)
      {
        v18 = 16;
      }

      else
      {
        v18 = 8;
      }

      v139 = v18;
      goto LABEL_46;
    }

    v14 = 16;
LABEL_49:
    v15 = (a1[261] & 0x800) == 0;
    if ((v10 & 0x800) != 0)
    {
      v19 = 16;
    }

    else
    {
      v19 = 8;
    }

    v139 = v19;
    v17 = 1;
    goto LABEL_53;
  }

  if (v10 <= 2308)
  {
    if (v10 == 769 || v10 == 771)
    {
      goto LABEL_26;
    }

    if (v10 != 2306)
    {
      goto LABEL_25;
    }

LABEL_22:
    v14 = 24;
    goto LABEL_26;
  }

  switch(v10)
  {
    case 2309:
      v14 = 32;
      goto LABEL_49;
    case 2310:
      v14 = 48;
      goto LABEL_42;
    case 2817:
      goto LABEL_22;
  }

LABEL_25:
  v14 = 16;
LABEL_26:
  v15 = (a1[261] & 0x800) == 0;
  if ((v10 & 0x800) != 0)
  {
    v16 = 16;
  }

  else
  {
    v16 = 8;
  }

  v139 = v16;
  v17 = 1;
  if (v10 > 770)
  {
    if (v10 > 2308)
    {
      if (v10 == 2817)
      {
        goto LABEL_53;
      }

      goto LABEL_46;
    }

    if (v10 != 771 && v10 != 2306)
    {
LABEL_46:
      v17 = 0;
    }
  }

  else if (((v10 - 258) > 5 || ((1 << (v10 - 2)) & 0x2D) == 0) && v10 != 769)
  {
    goto LABEL_46;
  }

LABEL_53:
  v141 = 1;
  if (v10 <= 768)
  {
    if ((v10 - 258) <= 5 && ((1 << (v10 - 2)) & 0x25) != 0)
    {
      goto LABEL_64;
    }
  }

  else if (v10 > 2305)
  {
    if (v10 == 2306 || v10 == 2817)
    {
      goto LABEL_64;
    }
  }

  else if (v10 == 769 || v10 == 771)
  {
    goto LABEL_64;
  }

  v141 = 0;
LABEL_64:
  v138 = v17;
  v21 = v11 + ~(-1 << v17);
  v22 = v21 & (-1 << v17);
  if (v15)
  {
    v23 = 3;
  }

  else
  {
    v23 = 4;
  }

  if ((v10 & 0x100) != 0)
  {
    v24 = v21 & (-1 << v17);
  }

  else
  {
    v24 = (v22 * v14) >> v23;
  }

  v25 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10B004034508FE5uLL);
  v13 = v25;
  if (!v25)
  {
    goto LABEL_84;
  }

  v26 = (v143 + ~(-1 << v141)) & (-1 << v141);
  v27 = ((v24 << v23 >> 3) + 15) & 0x1FFFFFFFFFFFFFF0;
  v25[37] = 1;
  *(v25 + 17) = 0;
  if ((v10 & 0x100) != 0)
  {
    v28 = (v27 * v26 * v14) >> v23;
  }

  else
  {
    v28 = v27 * v26;
  }

  if (v28 > 0x1FFFFFFE9 || (v29 = malloc_type_malloc(v28 + 23, 0x5F484EBFuLL)) == 0)
  {
    *(v13 + 17) = 0;
    v13[36] = 1;
    *(v13 + 13) = v28;
LABEL_84:
    v9 = a1;
    goto LABEL_85;
  }

  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v30 - 8) = v29;
  *(v13 + 17) = v30;
  v13[36] = 1;
  *(v13 + 13) = v28;
  v9 = a1;
  if (!v30)
  {
LABEL_85:
    v8 = a3;
    goto LABEL_86;
  }

  *v13 = v10;
  v13[8] = v26;
  v13[9] = v139;
  v13[7] = v22;
  v13[14] = v138;
  v13[15] = v141;
  v13[28] = v14;
  v31 = v27 >> v138;
  v13[23] = v27 >> v138;
  v13[24] = v27 >> v138;
  v32 = v27 >> v138;
  v13[22] = v27;
  if (v10 == 263)
  {
    v32 = 0;
    v31 *= 2;
    *(v13 + 23) = v31;
  }

  if (v22 < v11 || v26 < v143)
  {
    v8 = a3;
    goto LABEL_87;
  }

  v13[10] = v11;
  v13[11] = v143;
  if ((v10 & 0x100) != 0)
  {
    *(v13 + 8) = v30;
    v134 = v30 + v27 * v26;
    if (v10 != 263)
    {
      v136 = v26 >> v141;
      v8 = a3;
      if ((v10 & 0x200) != 0)
      {
        *(v13 + 10) = v134;
        v30 = v134 + v136 * v32;
        v33 = 18;
      }

      else
      {
        *(v13 + 9) = v134;
        v30 = v134 + v136 * v31;
        v33 = 20;
      }

      goto LABEL_178;
    }

    v30 = 0;
    *(v13 + 9) = v134;
    v33 = 20;
  }

  else
  {
    v33 = 16;
  }

  v8 = a3;
LABEL_178:
  *&v13[v33] = v30;
LABEL_87:
  Width = CVPixelBufferGetWidth(v8);
  Height = CVPixelBufferGetHeight(v8);
  CVPixelBufferGetPixelFormatType(v8);
  if (v22 + a4 > Width || v26 + HIDWORD(a4) > Height)
  {
    fprintf(*MEMORY[0x277D85DF8], "Invalid source bounds - image is %dx%d, requested %dx%d at offset %dx%d\n", Width, Height, v22, v26, a4, HIDWORD(a4));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.duration.value) = 67110400;
      HIDWORD(buf.duration.value) = Width;
      LOWORD(buf.duration.timescale) = 1024;
      *(&buf.duration.timescale + 2) = Height;
      HIWORD(buf.duration.flags) = 1024;
      LODWORD(buf.duration.epoch) = v22;
      WORD2(buf.duration.epoch) = 1024;
      *(&buf.duration.epoch + 6) = v26;
      WORD1(buf.presentationTimeStamp.value) = 1024;
      HIDWORD(buf.presentationTimeStamp.value) = a4;
      LOWORD(buf.presentationTimeStamp.timescale) = 1024;
      *(&buf.presentationTimeStamp.timescale + 2) = HIDWORD(a4);
      _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invalid source bounds - image is %dx%d, requested %dx%d at offset %dx%d", &buf, 0x26u);
    }

    DataPointer = 4294954394;
    goto LABEL_151;
  }

  v39 = v13[14];
  v38 = v13[15];
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  v40 = v9[262];
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
  v144 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v43 = v22 >> v39;
  v44 = v26 >> v38;
  v146 = v9;
  if (v40 == 8)
  {
    v45 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
    v46 = a4 >> 32;
    v142 = v13[14];
    v140 = v13[15];
    if (v26)
    {
      v47 = 0;
      v48 = &BaseAddressOfPlane[a4 + BytesPerRowOfPlane * v46];
      do
      {
        memcpy((*(v13 + 8) + v13[22] * v47++), v48, v22);
        v48 += BytesPerRowOfPlane;
      }

      while (v26 != v47);
    }

    if ((*(v146 + 1055) & 1) == 0)
    {
      v49 = (v45 * v46) >> v140;
      v50 = 2 * (a4 >> v142);
      v51 = &v144[v49 + v50];
      if (*v13 == 263)
      {
        if (v44)
        {
          for (i = 0; i != v44; ++i)
          {
            memcpy((*(v13 + 9) + v13[23] * i), v51, (2 * v43));
            v51 += v45;
          }
        }
      }

      else if (v44)
      {
        v95 = 0;
        v96 = v50;
        v97 = v43 & 0xFFFFFFF0;
        v98 = &v144[v49 + 16 + v96];
        do
        {
          v99 = *(v13 + 9);
          v100 = *(v13 + 10);
          v101 = v13[23];
          v102 = v13[24];
          if (v97)
          {
            v103 = 0;
            v104 = v98;
            do
            {
              v105 = v104[-1];
              v106 = *v104;
              *(v99 + v101 * v95 + v103) = vuzp1q_s8(v105, *v104);
              *(v100 + v102 * v95 + v103) = vuzp2q_s8(v105, v106);
              v103 += 16;
              v104 += 2;
            }

            while (v103 < v97);
          }

          else
          {
            LODWORD(v103) = 0;
          }

          if (v103 < v43)
          {
            v107 = v43 - v103;
            v108 = (v100 + v102 * v95 + v103);
            v109 = (v99 + v101 * v95 + v103);
            v110 = &v51[2 * v103];
            do
            {
              *v109++ = *v110;
              *v108++ = v110[1];
              v110 += 2;
              --v107;
            }

            while (v107);
          }

          ++v95;
          v98 += v45;
          v51 += v45;
        }

        while (v95 != v44);
      }
    }
  }

  else
  {
    v53 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
    if (v26)
    {
      v54 = 0;
      v55 = v53 >> 1;
      v56 = v9[262];
      v57 = 16 - v56;
      v58 = &BaseAddressOfPlane[2 * a4 + 2 * (BytesPerRowOfPlane >> 1) * (a4 >> 32)];
      v59 = 2 * (a4 >> v13[14]);
      v60 = ((v53 >> 1) * (a4 >> 32)) >> v13[15];
      v61 = &v144[2 * v60 + 2 * v59];
      v62 = vdupq_n_s16(v56 - 16);
      v63 = v22 & 0xFFFFFFF0;
      v64 = &BaseAddressOfPlane[2 * a4 + 16 + 2 * (a4 >> 32) * (BytesPerRowOfPlane >> 1)];
      v65 = 2 * (BytesPerRowOfPlane >> 1);
      do
      {
        v66 = *(v13 + 8);
        v67 = v13[22];
        if (v63)
        {
          v68 = 0;
          v69 = (v66 + v67 * v54 + 16);
          v70 = v64;
          do
          {
            v71 = vshlq_u16(*v70, v62);
            v69[-1] = vshlq_u16(v70[-1], v62);
            *v69 = v71;
            v68 += 16;
            v70 += 2;
            v69 += 2;
          }

          while (v68 < v63);
        }

        else
        {
          LODWORD(v68) = 0;
        }

        if (v68 < v22)
        {
          v72 = v22 - v68;
          v73 = (v66 + 2 * v68 + v67 * v54);
          v74 = (v58 + 2 * v68);
          do
          {
            v75 = *v74++;
            *v73++ = v75 >> v57;
            --v72;
          }

          while (v72);
        }

        ++v54;
        v64 += v65;
        v58 += v65;
      }

      while (v54 != v26);
      if ((*(v9 + 1055) & 1) == 0 && v44)
      {
        v76 = 0;
        v77 = v43 & 0xFFFFFFF8;
        v78 = &v144[2 * v60 + 16 + 2 * v59];
        v79 = 2 * v55;
        do
        {
          v80 = *(v13 + 9);
          v81 = *(v13 + 10);
          v83 = v13[23];
          v82 = v13[24];
          if (v77)
          {
            v84 = 0;
            v85 = (v81 + v82 * v76);
            v86 = (v80 + v83 * v76);
            v87 = v78;
            do
            {
              v88 = vshlq_u16(v87[-1], v62);
              v89 = vshlq_u16(*v87, v62);
              *v86++ = vuzp1q_s16(v88, v89);
              *v85++ = vuzp2q_s16(v88, v89);
              v84 += 8;
              v87 += 2;
            }

            while (v84 < v77);
          }

          else
          {
            LODWORD(v84) = 0;
          }

          if (v84 < v43)
          {
            v90 = v43 - v84;
            v91 = 2 * v84;
            v92 = (v81 + v91 + v82 * v76);
            v93 = (v80 + v91 + v83 * v76);
            v94 = (v61 + 4 * v84);
            do
            {
              *v93++ = *v94 >> v57;
              *v92++ = v94[1] >> v57;
              v94 += 2;
              --v90;
            }

            while (v90);
          }

          ++v76;
          v78 += v79;
          v61 += v79;
        }

        while (v76 != v44);
      }
    }
  }

  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  if (!a2)
  {
    DataPointer = 8;
    goto LABEL_148;
  }

  v111 = *(a2 + 8);
  if (!v111 || !*(a2 + 48))
  {
    DataPointer = 1;
    goto LABEL_146;
  }

  if ((*(v111 + 16) & 2) == 0)
  {
    DataPointer = 4;
LABEL_146:
    *(a2 + 16) = DataPointer;
    goto LABEL_148;
  }

  v113 = HIDWORD(*a6);
  if (v13)
  {
    DataPointer = 8;
    if (v113 || (((*(a2 + 32) >> 18) ^ (*v13 >> 11)) & 1) != 0)
    {
      goto LABEL_146;
    }
  }

  else if (v113)
  {
    DataPointer = 8;
    goto LABEL_146;
  }

  DataPointer = (*(v111 + 104))();
  v114 = a2;
  *(a2 + 16) = DataPointer;
  if (DataPointer)
  {
LABEL_148:
    fprintf(*MEMORY[0x277D85DF8], "aom_codec_encode returned %d\n", DataPointer);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.duration.value) = 67109120;
      HIDWORD(buf.duration.value) = DataPointer;
      _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "aom_codec_encode returned %d", &buf, 8u);
    }

    goto LABEL_150;
  }

  v155[1] = 0;
  while (1)
  {
    v115 = v114;
    v116 = *(v114 + 8);
    if (!v116 || !*(v115 + 48))
    {
      v135 = 1;
      goto LABEL_183;
    }

    if ((*(v116 + 16) & 2) == 0)
    {
      break;
    }

    v117 = (*(v116 + 112))();
    if (!v117)
    {
      goto LABEL_184;
    }

    v118 = v117;
    if (!*v117)
    {
      v119 = *(a2 + 48);
      v120 = *(v119 + 16);
      if (v120)
      {
        v121 = *(v117 + 8);
        if (v121 != v120)
        {
          v122 = *(v117 + 16);
          v123 = *(v119 + 32);
          if (v122 + v123 + *(v119 + 36) <= *(v119 + 24))
          {
            memcpy(&v120[v123], v121, v122);
            v125 = *(v118 + 16);
            v124 = *(v118 + 32);
            *(v119 + 40) = *v118;
            *(v119 + 56) = v125;
            *(v119 + 72) = v124;
            v126 = *(v118 + 48);
            v127 = *(v118 + 64);
            v128 = *(v118 + 80);
            *(v119 + 136) = *(v118 + 96);
            *(v119 + 120) = v128;
            *(v119 + 104) = v127;
            *(v119 + 88) = v126;
            v129 = *(v118 + 112);
            v130 = *(v118 + 128);
            v131 = *(v118 + 144);
            *(v119 + 200) = *(v118 + 160);
            *(v119 + 184) = v131;
            *(v119 + 168) = v130;
            *(v119 + 152) = v129;
            v132 = *(v119 + 56) + (*(v119 + 36) + *(v119 + 32));
            *(v119 + 48) = v120;
            *(v119 + 56) = v132;
            v118 = v119 + 40;
          }
        }
      }

      if (v120 == *(v118 + 8))
      {
        *(v119 + 16) = &v120[*(v118 + 16)];
        *(v119 + 24) -= *(v118 + 16);
      }

      v133 = *v118;
      v155[0] = v118;
      if (!v133)
      {
        buf.duration.value = v146;
        *&buf.duration.timescale = v155;
        if (atomic_load_explicit((v146 + 1080), memory_order_acquire) != -1)
        {
          blockBufferOut.value = &buf;
          p_blockBufferOut = &blockBufferOut;
          std::__call_once((v146 + 1080), &p_blockBufferOut, sub_27796FB68);
        }

        if (a5)
        {
          buf.decodeTimeStamp = *a5;
          CMTimeMake(&blockBufferOut, *(v155[0] + 32), *(v146 + 84));
          buf.duration = blockBufferOut;
          CMTimeMake(&blockBufferOut, *(v155[0] + 24), *(v146 + 84));
          buf.presentationTimeStamp = blockBufferOut;
        }

        blockBufferOut.value = 0;
        v137 = *MEMORY[0x277CBECE8];
        DataPointer = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, *(v155[0] + 16), *(v146 + 1096), 0, 0, *(v155[0] + 16), 1u, &blockBufferOut);
        if (!DataPointer)
        {
          p_blockBufferOut = 0;
          sampleSizeArray = *(v155[0] + 16);
          DataPointer = CMSampleBufferCreate(v137, blockBufferOut.value, 1u, 0, 0, *(v146 + 1088), 1, a5 != 0, &buf, 1, &sampleSizeArray, &p_blockBufferOut);
          if (!DataPointer)
          {
            dataPointerOut = 0;
            DataPointer = CMBlockBufferGetDataPointer(blockBufferOut.value, 0, 0, 0, &dataPointerOut);
            if (!DataPointer)
            {
              memcpy(dataPointerOut, *(v155[0] + 8), sampleSizeArray);
              sub_27796FAF0(a8, &p_blockBufferOut);
            }
          }

          sub_27796D924(&p_blockBufferOut);
        }

        sub_27796FB34(&blockBufferOut);
        goto LABEL_150;
      }
    }

    v114 = a2;
  }

  v135 = 4;
LABEL_183:
  *(a2 + 16) = v135;
LABEL_184:
  fwrite("No compressed data returned!\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.duration.value) = 0;
    _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No compressed data returned!", &buf, 2u);
  }

  DataPointer = 4294954385;
LABEL_150:
  if (v13)
  {
LABEL_151:
    sub_277A4C79C(v13);
  }

  return DataPointer;
}

void sub_27796FAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29)
{
  sub_27796D924((v30 - 184));
  sub_27796FB34(&a29);
  if (v29)
  {
    sub_277A4C79C(v29);
  }

  _Unwind_Resume(a1);
}

const void **sub_27796FAF0(const void **a1, const void **a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  return a1;
}

const void **sub_27796FB34(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_27796FB68(void **a1)
{
  v1 = **a1;
  v40 = *v1;
  v2 = *v1[1];
  v49 = 0;
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); ; i -= v14)
  {
    if (i < 1)
    {
      goto LABEL_57;
    }

    v5 = (*v3 & 1) + 1;
    v6 = i - v5;
    if ((*v3 & 2) != 0 && i > v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (v6 != v8)
      {
        v9 |= (v3[v5 + v8] & 0x7F) << v7;
        v10 = v8 + 1;
        if ((v3[v5 + v8] & 0x80) != 0)
        {
          v7 += 7;
          if (v8++ != 7)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v10 = i - v5;
LABEL_13:
      v12 = v10 + v9;
    }

    else
    {
      v12 = i - v5;
    }

    if ((*v3 & 0x78) == 8 && v12 <= v6)
    {
      break;
    }

    v14 = v12 + v5;
    v3 += v14;
  }

  *bytes = 129;
  v15 = v12 + v5;
  if ((v12 + v5) < 1)
  {
    goto LABEL_50;
  }

  v52 = v3;
  v53 = v3;
  v16 = &v3[v15];
  v54 = &v3[v15];
  v17 = -2;
  v18 = v3;
  v50 = 0;
  v51 = 0;
  do
  {
    if (v18 >= v16)
    {
      v20 = 0;
      v51 = 0x1FFFFFFFFLL;
    }

    else
    {
      v52 = v18 + 1;
      v19 = *v18;
      LODWORD(v51) = 7;
      v20 = v19 << 57;
    }

    v50 = v20;
    v21 = sub_277BB5DA0(&v50, 4u);
    if (v51)
    {
      v22 = 2 * v50;
      v23 = v50 >> 63;
      v24 = v51 - 1;
      if (v51 == 1)
      {
        if (v52 < v54)
        {
          v25 = *v52++;
          LODWORD(v51) = 7;
          v50 = v25 << 57;
          LODWORD(v26) = (v25 >> 7) & 1;
          goto LABEL_33;
        }

        HIDWORD(v51) = 1;
      }
    }

    else if (v52 >= v54)
    {
      HIDWORD(v51) = 1;
      v24 = -1;
      v22 = 2 * v50;
      v23 = v50 >> 63;
    }

    else
    {
      v27 = *v52++;
      v22 = v27 << 57;
      LODWORD(v23) = (v27 >> 7) & 1;
      v24 = 7;
    }

    LODWORD(v51) = v24 - 1;
    v50 = 2 * v22;
    v26 = v22 >> 63;
LABEL_33:
    sub_277BB5DA0(&v50, (8 * v23) | 1);
    v18 = v54;
    if (v26)
    {
      v28 = 0;
      v29 = 0;
      do
      {
        v30 = sub_277BB5DA0(&v50, 8u);
        v29 |= (v30 & 0x7F) << v28;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v31 = v28 >= 0x31;
        v28 += 7;
      }

      while (!v31);
      if (v30 < 0 || HIDWORD(v29))
      {
        HIDWORD(v51) = 1;
        v18 = v52;
      }

      else
      {
        if (v18 - v52 < v29)
        {
          goto LABEL_50;
        }

        v18 = &v52[v29];
      }
    }

    if (v21 == 1)
    {
      if ((sub_277BB5694(&theDict, &v50) & 0x80000000) != 0 || v52 > v18)
      {
        goto LABEL_50;
      }

      v17 = 0;
      LODWORD(v51) = 0;
      v50 = 0;
    }

    if (HIDWORD(v51))
    {
      goto LABEL_50;
    }

    v52 = v18;
    v16 = v54;
  }

  while (v18 < v54);
  if (v17)
  {
LABEL_50:
    v32 = 1;
  }

  else
  {
    bytes[1] = ((4 * v45 + 24) | v46) & 0x1F | (32 * theDict);
    bytes[2] = (8 * (v42 < 3)) | (16 * (v42 == 0)) | (4 * (v42 < 2)) | ((v44 != 0) << 6) | (32 * (v44 > 1u)) | ((v47 != 0) << 7) | v43 & 3;
    Mutable = CFDataCreateMutable(0, 0);
    v50 = Mutable;
    if (v49)
    {
      CFRelease(v49);
      Mutable = v50;
    }

    v49 = Mutable;
    v50 = 0;
    sub_27796EC0C(&v50);
    CFDataAppendBytes(v49, bytes, 4);
    if (v40[132])
    {
      CFDataAppendBytes(v49, v3, v15);
    }

    v32 = 3;
  }

  if (v32 == 3)
  {
LABEL_57:
    if (v49)
    {
      theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v50 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v50, @"av1C", v49);
      v34 = v40[124];
      if (v34)
      {
        CFDictionaryAddValue(theDict, *MEMORY[0x277CC4C00], v34);
      }

      v35 = v40[125];
      if (v35)
      {
        CFDictionaryAddValue(theDict, *MEMORY[0x277CC4CC0], v35);
      }

      v36 = v40[126];
      if (v36)
      {
        CFDictionaryAddValue(theDict, *MEMORY[0x277CC4D10], v36);
      }

      CFDictionaryAddValue(theDict, *MEMORY[0x277CC0310], @"AV1");
      CFDictionarySetValue(theDict, *MEMORY[0x277CC03B0], v50);
      if (v40[132])
      {
        v37 = v40[136];
        if (v37)
        {
          CFRelease(v37);
          v40[136] = 0;
        }

        VTEncoderSessionCreateVideoFormatDescription();
      }

      else if (v40[133])
      {
        v38 = v40[136];
        if (v38)
        {
          CFRelease(v38);
          v40[136] = 0;
        }

        VTTileEncoderSessionCreateVideoFormatDescription();
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *bytes = 0;
        _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No session", bytes, 2u);
      }

      sub_27796EC40(&v50);
      sub_27796EC40(&theDict);
    }

    else
    {
      fwrite("No sequence header found\n", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(theDict) = 0;
        _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No sequence header found", &theDict, 2u);
      }
    }
  }

  return sub_27796EC0C(&v49);
}

void sub_277970180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27796EC40(va);
  sub_27796EC0C((v3 - 152));
  _Unwind_Resume(a1);
}

const void **sub_2779701BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v51 = *(a1 + 40);
  v52 = 0;
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  CMTimeMake(&v53, 1, 60);
  sub_27796ECA8(v2, v3 + 8, v4, v5, 0, &v53, *(a1 + 40), &v52);
  CFRelease(*(a1 + 64));
  atomic_store(0, (*(a1 + 56) + 64));
  dispatch_semaphore_signal(*(v2 + 8));
  std::mutex::lock((v2 + 1128));
  v6 = v2 + 1192;
  v7 = *(v2 + 1200);
  if (!v7)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      v9 = v7[5];
      if (v51 >= v9)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_7;
      }
    }

    if (v9 >= v51)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (!*(v2 + 1208))
  {
    goto LABEL_89;
  }

  v10 = *(v2 + 1216);
  do
  {
    v11 = *v6;
    if (*(*v6 + 40) != v10)
    {
      break;
    }

    VTEncoderSessionEmitEncodedTile();
    v12 = v11[1];
    v13 = v11;
    if (v12)
    {
      do
      {
        v14 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      do
      {
        v14 = v13[2];
        v39 = *v14 == v13;
        v13 = v14;
      }

      while (!v39);
    }

    if (*v6 == v11)
    {
      *v6 = v14;
    }

    --*(v2 + 1208);
    v15 = *(v2 + 1200);
    v16 = *v11;
    v17 = v11;
    if (*v11)
    {
      v18 = v11[1];
      if (!v18)
      {
        v17 = v11;
LABEL_24:
        v20 = 0;
        v19 = v17[2];
        *(v16 + 16) = v19;
        goto LABEL_25;
      }

      do
      {
        v17 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    v16 = v17[1];
    if (v16)
    {
      goto LABEL_24;
    }

    v19 = v17[2];
    v20 = 1;
LABEL_25:
    v21 = *v19;
    if (*v19 == v17)
    {
      *v19 = v16;
      if (v17 == v15)
      {
        v21 = 0;
        v15 = v16;
      }

      else
      {
        v21 = v19[1];
      }
    }

    else
    {
      v19[1] = v16;
    }

    v22 = *(v17 + 24);
    if (v17 != v11)
    {
      v23 = v11[2];
      v17[2] = v23;
      v23[*v23 != v11] = v17;
      v24 = *v11;
      *v17 = *v11;
      *(v24 + 16) = v17;
      v25 = v11[1];
      v17[1] = v25;
      if (v25)
      {
        *(v25 + 16) = v17;
      }

      *(v17 + 24) = *(v11 + 24);
      if (v15 == v11)
      {
        v15 = v17;
      }
    }

    if (!v15 || !v22)
    {
      goto LABEL_88;
    }

    if (!v20)
    {
      *(v16 + 24) = 1;
      goto LABEL_88;
    }

    while (1)
    {
      v26 = v21[2];
      v27 = *v26;
      if (*v26 == v21)
      {
        break;
      }

      if ((v21[3] & 1) == 0)
      {
        *(v21 + 24) = 1;
        *(v26 + 24) = 0;
        v28 = v26[1];
        v29 = *v28;
        v26[1] = *v28;
        if (v29)
        {
          *(v29 + 16) = v26;
        }

        v30 = v26[2];
        v28[2] = v30;
        v30[*v30 != v26] = v28;
        *v28 = v26;
        v26[2] = v28;
        if (v15 == *v21)
        {
          v15 = v21;
        }

        v21 = *(*v21 + 8);
      }

      v31 = *v21;
      if (*v21 && *(v31 + 24) != 1)
      {
        v32 = v21[1];
        if (v32 && (v32[3] & 1) == 0)
        {
LABEL_74:
          v31 = v21;
        }

        else
        {
          *(v31 + 24) = 1;
          *(v21 + 24) = 0;
          v40 = v31[1];
          *v21 = v40;
          if (v40)
          {
            *(v40 + 16) = v21;
          }

          v41 = v21[2];
          v31[2] = v41;
          v41[*v41 != v21] = v31;
          v31[1] = v21;
          v21[2] = v31;
          v32 = v21;
        }

        v42 = v31[2];
        *(v31 + 24) = *(v42 + 24);
        *(v42 + 24) = 1;
        *(v32 + 24) = 1;
        v43 = *(v42 + 8);
        v44 = *v43;
        *(v42 + 8) = *v43;
        if (v44)
        {
          *(v44 + 16) = v42;
        }

        v45 = *(v42 + 16);
        v43[2] = v45;
        v45[*v45 != v42] = v43;
        *v43 = v42;
        goto LABEL_87;
      }

      v32 = v21[1];
      if (v32 && *(v32 + 24) != 1)
      {
        goto LABEL_74;
      }

      *(v21 + 24) = 0;
      v33 = v21[2];
      if (v33 == v15 || (v33[24] & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_66:
      v21 = *(*(v33 + 2) + 8 * (**(v33 + 2) == v33));
    }

    if ((v21[3] & 1) == 0)
    {
      *(v21 + 24) = 1;
      *(v26 + 24) = 0;
      v34 = v27[1];
      *v26 = v34;
      if (v34)
      {
        *(v34 + 16) = v26;
      }

      v35 = v26[2];
      v27[2] = v35;
      v35[*v35 != v26] = v27;
      v27[1] = v26;
      v26[2] = v27;
      v36 = v21[1];
      if (v15 == v36)
      {
        v15 = v21;
      }

      v21 = *v36;
    }

    v37 = *v21;
    if (*v21 && *(v37 + 24) != 1)
    {
      goto LABEL_83;
    }

    v38 = v21[1];
    if (!v38 || *(v38 + 24) == 1)
    {
      *(v21 + 24) = 0;
      v33 = v21[2];
      v39 = v33[24] != 1 || v33 == v15;
      if (v39)
      {
LABEL_68:
        v33[24] = 1;
        goto LABEL_88;
      }

      goto LABEL_66;
    }

    if (v37 && (v37[3] & 1) == 0)
    {
LABEL_83:
      v38 = v21;
      goto LABEL_84;
    }

    *(v38 + 24) = 1;
    *(v21 + 24) = 0;
    v46 = *v38;
    v21[1] = *v38;
    if (v46)
    {
      *(v46 + 16) = v21;
    }

    v47 = v21[2];
    v38[2] = v47;
    v47[*v47 != v21] = v38;
    *v38 = v21;
    v21[2] = v38;
    v37 = v21;
LABEL_84:
    v42 = v38[2];
    *(v38 + 24) = *(v42 + 24);
    *(v42 + 24) = 1;
    *(v37 + 24) = 1;
    v43 = *v42;
    v48 = *(*v42 + 8);
    *v42 = v48;
    if (v48)
    {
      *(v48 + 16) = v42;
    }

    v49 = *(v42 + 16);
    v43[2] = v49;
    v49[*v49 != v42] = v43;
    v43[1] = v42;
LABEL_87:
    *(v42 + 16) = v43;
LABEL_88:
    sub_27796D924(v11 + 7);
    operator delete(v11);
    v10 = *(v2 + 1216) + 1;
    *(v2 + 1216) = v10;
  }

  while (*(v2 + 1208));
LABEL_89:
  std::mutex::unlock((v2 + 1128));
  return sub_27796D924(&v52);
}

void sub_277970764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2779707A0(va);
  std::mutex::unlock((v6 + 1128));
  sub_27796D924((v7 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_2779707A0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_27796D924(v2 + 7);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t AV1Encoder_CreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  VTVideoEncoderGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    v5 = v4;
    fwrite("FigDerivedObjectCreate failed\n", 0x1EuLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "FigDerivedObjectCreate failed", buf, 2u);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = operator new(0x4C8uLL, MEMORY[0x277D826F0]);
    if (v7)
    {
      v8 = v7;
      *v7 = 0;
      *(v7 + 4) = 0u;
      *(v7 + 20) = 0u;
      *(v7 + 36) = 0u;
      *(v7 + 52) = 0u;
      *(v7 + 68) = 0u;
      *(v7 + 84) = 0u;
      *(v7 + 100) = 0u;
      *(v7 + 116) = 0u;
      *(v7 + 132) = 0;
      bzero(v7 + 144, 0x32FuLL);
      *(v8 + 120) = 0x7FFFFFFFLL;
      *(v8 + 121) = 0x3F4CCCCD00000000;
      *(v8 + 122) = 0;
      *(v8 + 246) = 3;
      *(v8 + 1112) = 0u;
      *(v8 + 62) = 0u;
      *(v8 + 63) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 65) = 0u;
      *(v8 + 66) = 0u;
      *(v8 + 67) = 0u;
      *(v8 + 68) = 0u;
      *(v8 + 138) = v8 + 1112;
      *(v8 + 141) = 850045863;
      *(v8 + 71) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 73) = 0u;
      *(v8 + 148) = 0;
      *(v8 + 75) = 0u;
      *(v8 + 149) = v8 + 1200;
      *(v8 + 152) = 0;
      *(v8 + 241) = sub_27796D6C8();
      *(v8 + 3) = dispatch_queue_create("com.apple.coremedia.av1sw.encode", MEMORY[0x277D85CD8]);
      *(v8 + 2) = dispatch_group_create();
      v11[0] = 0;
      v11[1] = 0;
      *buf = v11;
      operator new();
    }

    *DerivedStorage = 0;
    v5 = 4294954392;
    *a3 = 0;
  }

  return v5;
}

void sub_277970B6C(_Unwind_Exception *a1)
{
  sub_27796D784(*(v1 + 1200));
  std::mutex::~mutex((v1 + 1128));
  sub_27796D738(*(v1 + 1112));
  sub_27796D7D8((v1 + 1088));
  sub_27796D80C((v1 + 1032));
  sub_27796D80C((v1 + 1024));
  sub_27796D80C((v1 + 1016));
  sub_27796D840((v1 + 1008));
  sub_27796D840((v1 + 1000));
  sub_27796D840((v1 + 992));
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    sub_27796D874(v3);
  }

  MEMORY[0x277CB1410](v1, MEMORY[0x277D826F0]);
  _Unwind_Resume(a1);
}

uint64_t sub_277970BF8()
{
  VTVideoEncoderGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();
  if (!v0)
  {
    return 4294954393;
  }

  sub_27796DAF4(v0);
  return 0;
}

uint64_t sub_277970C2C(uint64_t a1, uint64_t a2, __CVBuffer *a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  VTVideoEncoderGetCMBaseObject();
  v9 = *CMBaseObjectGetDerivedStorage();
  if (!v9)
  {
    return 4294954393;
  }

  v10 = *(v9 + 1076);
  if (*(v9 + 1072) == a5 && v10 == HIDWORD(a5))
  {
    v15 = *(v9 + 944);
    *(v9 + 944) = v15 + 1;
    if ((*v9 & 1) == 0)
    {
      sub_27796E0E4(v9, a3);
    }

    if (*(v9 + 1) == 1)
    {
      dispatch_semaphore_wait(*(v9 + 8), 0xFFFFFFFFFFFFFFFFLL);
      if (*(v9 + 4) < 1)
      {
        goto LABEL_21;
      }

      v16 = 0;
      v17 = 64;
      while (1)
      {
        v18 = atomic_load((*(v9 + 32) + v17));
        if ((v18 & 1) == 0)
        {
          break;
        }

        ++v16;
        v17 += 72;
        if (v16 >= *(v9 + 4))
        {
          goto LABEL_21;
        }
      }

      v20 = *(v9 + 32);
      if (v20)
      {
        v21 = v20 + 72 * v16;
        atomic_store(1u, (v21 + 64));
        CFRetain(a3);
        v22 = *(v9 + 16);
        v23 = *(v9 + 24);
        *buf = MEMORY[0x277D85DD0];
        v27 = 0x40000000;
        *&v28 = sub_2779701BC;
        *(&v28 + 1) = &unk_27A7190E0;
        v29 = v9;
        v30 = v15;
        v31 = a2;
        v32 = v21;
        v33 = a3;
        v34 = a4;
        dispatch_group_async(v22, v23, buf);
        return 0;
      }

      else
      {
LABEL_21:
        fwrite("No encoder found\n", 0x11uLL, 1uLL, *MEMORY[0x277D85DF8]);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No encoder found", buf, 2u);
        }

        return 4294954385;
      }
    }

    else
    {
      v25 = 0;
      v19 = *(v9 + 32);
      CMTimeMake(buf, 1, 60);
      sub_27796ECA8(v9, v19 + 8, a3, a4, 0, buf, v15, &v25);
      v14 = VTEncoderSessionEmitEncodedTile();
      sub_27796D924(&v25);
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Unexpected aperture of %dx%d, expected %dx%d\n", a5, HIDWORD(a5), *(v9 + 1072), v10);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = *(v9 + 1072);
      v13 = *(v9 + 1076);
      *buf = 67109888;
      *&buf[4] = a5;
      LOWORD(v27) = 1024;
      *(&v27 + 2) = HIDWORD(a5);
      HIWORD(v27) = 1024;
      LODWORD(v28) = v12;
      WORD2(v28) = 1024;
      *(&v28 + 6) = v13;
      _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected aperture of %dx%d, expected %dx%d", buf, 0x1Au);
    }

    return 4294954394;
  }

  return v14;
}

void sub_277970F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27796D924(va);
  _Unwind_Resume(a1);
}

uint64_t sub_277970F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  VTVideoEncoderGetCMBaseObject();
  v8 = *CMBaseObjectGetDerivedStorage();
  if (!v8)
  {
    return 4294954393;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a4;
    v29 = 1024;
    v30 = HIDWORD(a4);
    _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "StartTileSession %dx%d", buf, 0xEu);
  }

  v8[133] = a2;
  v8[134] = a4;
  if (a5)
  {
    v8[137] = CFRetain(a5);
  }

  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *buf = 16;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
  if (v9)
  {
    CFDictionaryAddValue(theDict, *MEMORY[0x277CC4D60], v9);
    CFRelease(v9);
  }

  *buf = 16;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
  if (v10)
  {
    CFDictionaryAddValue(theDict, *MEMORY[0x277CC4E38], v10);
    CFRelease(v10);
  }

  v11 = 0;
  value = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  do
  {
    *buf = *&aF024v02402fx02[v11];
    v12 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
    if (!v12)
    {
      v23 = 4294954392;
      goto LABEL_36;
    }

    CFArrayAppendValue(value, v12);
    CFRelease(v12);
    v11 += 4;
  }

  while (v11 != 84);
  CFDictionarySetValue(theDict, *MEMORY[0x277CC4E30], value);
  *buf = 0xFFFFFFF;
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
  if (v13)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B18], v13);
    CFRelease(v13);
  }

  *buf = 0xFFFFFFF;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
  if (v14)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B20], v14);
    CFRelease(v14);
  }

  *buf = 2;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
  if (v15)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B28], v15);
    CFRelease(v15);
  }

  *buf = 2;
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
  if (v16)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B30], v16);
    CFRelease(v16);
  }

  *buf = 64;
  v17 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
  if (v17)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B48], v17);
    CFRelease(v17);
  }

  *buf = 16;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
  if (v18)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B40], v18);
    CFRelease(v18);
  }

  *buf = 0x7FFFFFFF;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
  if (v19)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B10], v19);
    CFRelease(v19);
  }

  *buf = 0x7FFFFFFF;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
  if (v20)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B00], v20);
    CFRelease(v20);
  }

  *buf = 0x7FFFFFFFFFFFFFFFLL;
  v21 = CFNumberCreate(0, kCFNumberSInt64Type, buf);
  if (v21)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B08], v21);
    CFRelease(v21);
  }

  *buf = 16;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
  if (v22)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B38], v22);
    CFRelease(v22);
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2AF8], *MEMORY[0x277CBED10]);
  v23 = VTTileEncoderSessionSetTileEncodeRequirements();
LABEL_36:
  sub_27796EC74(&value);
  sub_27796EC40(&Mutable);
  sub_27796EC40(&theDict);
  return v23;
}

void sub_277971494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_27796EC40(va);
  sub_27796EC40(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2779714D8(uint64_t a1, void *a2)
{
  v11[9] = *MEMORY[0x277D85DE8];
  VTVideoEncoderGetCMBaseObject();
  if (!*CMBaseObjectGetDerivedStorage())
  {
    return 4294954393;
  }

  if ((atomic_load_explicit(&qword_280A72988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A72988))
  {
    v5 = *MEMORY[0x277CE25A0];
    v11[0] = *MEMORY[0x277CE25F0];
    v11[1] = v5;
    v6 = *MEMORY[0x277CE25E0];
    v11[2] = *MEMORY[0x277CE25B8];
    v11[3] = v6;
    v7 = *MEMORY[0x277CE2548];
    v11[4] = *MEMORY[0x277CE25F8];
    v11[5] = v7;
    v8 = *MEMORY[0x277CE2600];
    v11[6] = *MEMORY[0x277CE2528];
    v11[7] = v8;
    v11[8] = *MEMORY[0x277CE2610];
    qword_280A72978 = 0;
    qword_280A72980 = 0;
    qword_280A72970 = 0;
    sub_27796DC18();
  }

  if (atomic_load_explicit(qword_280A72998, memory_order_acquire) != -1)
  {
    v11[0] = &v9;
    v10 = v11;
    std::__call_once(qword_280A72998, &v10, sub_27796DCA8);
  }

  v3 = CFRetain(qword_280A72990);
  result = 0;
  *a2 = v3;
  return result;
}

uint64_t sub_2779716B4()
{
  VTVideoEncoderGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();
  if (!v0)
  {
    return 4294954393;
  }

  sub_27796DAF4(v0);
  return 0;
}

uint64_t sub_2779716E8(uint64_t a1, uint64_t a2, __CVBuffer *a3, CMTime *a4, __int128 *a5)
{
  VTVideoEncoderGetCMBaseObject();
  v8 = *CMBaseObjectGetDerivedStorage();
  if (!v8)
  {
    return 4294954393;
  }

  v15 = *a4;
  v13 = *a5;
  v14 = *(a5 + 2);
  if ((*v8 & 1) == 0)
  {
    sub_27796E0E4(v8, a3);
  }

  v16 = 0;
  v9 = *(v8 + 32);
  v10 = *(v8 + 944);
  *(v8 + 944) = v10 + 1;
  sub_27796ECA8(v8, v9 + 8, a3, 0, &v15, &v13, v10, &v16);
  v11 = VTEncoderSessionEmitEncodedFrame();
  sub_27796D924(&v16);
  return v11;
}

void sub_2779717E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27796D924(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2779717F8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  VTVideoEncoderGetCMBaseObject();
  v7 = *CMBaseObjectGetDerivedStorage();
  if (!v7)
  {
    return 4294954393;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a3;
    v19 = 1024;
    v20 = HIDWORD(a3);
    _os_log_impl(&dword_277934000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "StartSession %dx%d", buf, 0xEu);
  }

  v7[132] = a2;
  v7[134] = a3;
  if (a4)
  {
    v7[137] = CFRetain(a4);
  }

  *buf = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  theDict = Mutable;
  valuePtr = 16;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v9)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4D60], v9);
    CFRelease(v9);
    Mutable = theDict;
  }

  valuePtr = 16;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v10)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E38], v10);
    CFRelease(v10);
  }

  v11 = 0;
  while (1)
  {
    v12 = *buf;
    valuePtr = *&aV024f024024x02[v11];
    v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (!v13)
    {
      break;
    }

    CFArrayAppendValue(v12, v13);
    CFRelease(v13);
    v11 += 4;
    if (v11 == 84)
    {
      CFDictionarySetValue(theDict, *MEMORY[0x277CC4E30], *buf);
      v14 = VTEncoderSessionSetPixelBufferAttributes();
      goto LABEL_16;
    }
  }

  v14 = 4294954392;
LABEL_16:
  sub_27796EC40(&theDict);
  sub_27796EC74(buf);
  return v14;
}

void sub_277971A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27796EC74(va);
  _Unwind_Resume(a1);
}

uint64_t sub_277971A78(uint64_t a1, const void *a2, const void *a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  if (!v5)
  {
    return 4294954393;
  }

  cf = a3;
  if (*v5)
  {
    return 4294954386;
  }

  p_cf = &cf;
  v26 = &cf;
  v23 = &cf;
  v24 = &cf;
  v22 = &cf;
  if (CFEqual(a2, *MEMORY[0x277CE2608]))
  {
    if (cf)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(cf))
      {
        v8 = (v5 + 952);
        v9 = *(v5 + 952);
        v10 = cf;
        v11 = CFGetTypeID(cf);
        if (v11 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v10, kCFNumberSInt32Type, v8);
        }

        result = 0;
        *v8 = v9;
        return result;
      }
    }

    return 4294954394;
  }

  if (CFEqual(a2, *MEMORY[0x277CE25D8]))
  {
    return 0;
  }

  if (!CFEqual(a2, *MEMORY[0x277CE25F0]))
  {
    if (CFEqual(a2, *MEMORY[0x277CE2508]))
    {
      v16 = (v5 + 957);
      return sub_27796DD9C(&v24, v16);
    }

    if (CFEqual(a2, *MEMORY[0x277CE2500]))
    {
      v16 = (v5 + 958);
      return sub_27796DD9C(&v24, v16);
    }

    if (CFEqual(a2, *MEMORY[0x277CE25A0]))
    {
      v17 = (v5 + 960);
      v18 = 0x80000000;
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CE25B8]))
      {
        v19 = sub_27796D6C8();
        v17 = (v5 + 964);
        v18 = 1;
        return sub_27796DE38(&v26, v17, v18, v19);
      }

      if (CFEqual(a2, *MEMORY[0x277CE2518]))
      {
        result = sub_27796DE38(&v26, (v5 + 968), 0, 0x7FFFFFFF);
        *(v5 + 984) = 0;
        return result;
      }

      if (CFEqual(a2, *MEMORY[0x277CE25E0]))
      {
        result = sub_27796DEF4(&p_cf, (v5 + 972), 1.0);
        *(v5 + 984) = 3;
        return result;
      }

      if (!CFEqual(a2, *MEMORY[0x277CE25F8]))
      {
        if (CFEqual(a2, *MEMORY[0x277CE2548]))
        {
          return sub_27796DEF4(&p_cf, (v5 + 980), 3.4028e38);
        }

        if (CFEqual(a2, *MEMORY[0x277CE2528]))
        {
          v20 = (v5 + 992);
        }

        else if (CFEqual(a2, *MEMORY[0x277CE2600]))
        {
          v20 = (v5 + 1000);
        }

        else
        {
          if (!CFEqual(a2, *MEMORY[0x277CE2610]))
          {
            if (CFEqual(a2, *MEMORY[0x277CE2530]))
            {
              v21 = (v5 + 1016);
            }

            else if (CFEqual(a2, *MEMORY[0x277CE2590]))
            {
              v21 = (v5 + 1024);
            }

            else
            {
              if (!CFEqual(a2, *MEMORY[0x277CE2510]))
              {
                return 4294954396;
              }

              v21 = (v5 + 1032);
            }

            return sub_27796E04C(&v22, v21);
          }

          v20 = (v5 + 1008);
        }

        return sub_27796DFB4(&v23, v20);
      }

      v17 = (v5 + 976);
      v18 = 0;
    }

    v19 = 0x7FFFFFFF;
    return sub_27796DE38(&v26, v17, v18, v19);
  }

  if (!cf)
  {
    return 4294954394;
  }

  v12 = CFBooleanGetTypeID();
  if (v12 != CFGetTypeID(cf))
  {
    return 4294954394;
  }

  v13 = cf;
  v14 = CFGetTypeID(cf);
  v15 = v14 == CFBooleanGetTypeID() && CFBooleanGetValue(v13) != 0;
  result = 0;
  *(v5 + 956) = v15;
  return result;
}

uint64_t sub_277971E4C(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v6 = *CMBaseObjectGetDerivedStorage();
  if (!v6)
  {
    return 4294954393;
  }

  if (!CFEqual(a2, *MEMORY[0x277CE2608]))
  {
    if (CFEqual(a2, *MEMORY[0x277CE25D8]))
    {
      return 0;
    }

    if (CFEqual(a2, *MEMORY[0x277CE25F0]))
    {
      v12 = MEMORY[0x277CBED28];
      v13 = *(v6 + 956);
    }

    else if (CFEqual(a2, *MEMORY[0x277CE2508]))
    {
      v12 = MEMORY[0x277CBED28];
      v13 = *(v6 + 957);
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CE2500]))
      {
        if (CFEqual(a2, *MEMORY[0x277CE25A0]))
        {
          v7 = (v6 + 960);
          goto LABEL_4;
        }

        if (CFEqual(a2, *MEMORY[0x277CE25B8]))
        {
          v7 = (v6 + 964);
          goto LABEL_4;
        }

        if (CFEqual(a2, *MEMORY[0x277CE2518]))
        {
          v7 = (v6 + 968);
          goto LABEL_4;
        }

        if (CFEqual(a2, *MEMORY[0x277CE25E0]))
        {
          v7 = (v6 + 972);
        }

        else
        {
          if (CFEqual(a2, *MEMORY[0x277CE25F8]))
          {
            v7 = (v6 + 976);
            goto LABEL_4;
          }

          if (!CFEqual(a2, *MEMORY[0x277CE2548]))
          {
            if (CFEqual(a2, *MEMORY[0x277CE2528]))
            {
              v9 = *(v6 + 992);
              if (!v9)
              {
                goto LABEL_6;
              }
            }

            else if (CFEqual(a2, *MEMORY[0x277CE2600]))
            {
              v9 = *(v6 + 1000);
              if (!v9)
              {
                goto LABEL_6;
              }
            }

            else if (CFEqual(a2, *MEMORY[0x277CE2610]))
            {
              v9 = *(v6 + 1008);
              if (!v9)
              {
                goto LABEL_6;
              }
            }

            else if (CFEqual(a2, *MEMORY[0x277CE2530]))
            {
              v9 = *(v6 + 1016);
              if (!v9)
              {
                goto LABEL_6;
              }
            }

            else if (CFEqual(a2, *MEMORY[0x277CE2590]))
            {
              v9 = *(v6 + 1024);
              if (!v9)
              {
                goto LABEL_6;
              }
            }

            else
            {
              if (!CFEqual(a2, *MEMORY[0x277CE2510]))
              {
                return 4294954396;
              }

              v9 = *(v6 + 1032);
              if (!v9)
              {
                goto LABEL_6;
              }
            }

            goto LABEL_20;
          }

          v7 = (v6 + 980);
        }

        v8 = kCFNumberFloatType;
        goto LABEL_5;
      }

      v12 = MEMORY[0x277CBED28];
      v13 = *(v6 + 958);
    }

    if (!v13)
    {
      v12 = MEMORY[0x277CBED10];
    }

    v9 = *v12;
LABEL_20:
    v9 = CFRetain(v9);
    goto LABEL_6;
  }

  v7 = (v6 + 952);
LABEL_4:
  v8 = kCFNumberSInt32Type;
LABEL_5:
  v9 = CFNumberCreate(0, v8, v7);
LABEL_6:
  v10 = 0;
  *a4 = v9;
  return v10;
}

__CFString *sub_277972118(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<AV1VideoEncoder %p>", a1);
  return Mutable;
}

uint64_t sub_277972174()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *DerivedStorage;
  if (*DerivedStorage)
  {
    sub_27796DAF4(*DerivedStorage);
    v3 = *(v2 + 8);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      dispatch_release(v5);
    }

    sub_27796D784(*(v2 + 1200));
    std::mutex::~mutex((v2 + 1128));
    sub_27796D738(*(v2 + 1112));
    sub_27796D7D8((v2 + 1088));
    sub_27796D80C((v2 + 1032));
    sub_27796D80C((v2 + 1024));
    sub_27796D80C((v2 + 1016));
    sub_27796D840((v2 + 1008));
    sub_27796D840((v2 + 1000));
    sub_27796D840((v2 + 992));
    v6 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v6)
    {
      sub_27796D874(v6);
    }

    MEMORY[0x277CB1420](v2, 0x10E0C403D7FB410);
  }

  *v1 = 0;
  return 0;
}

void AV1RegisterEncoder()
{
  if (atomic_load_explicit(&qword_280BD5AA0, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v4[0] = &v2;
    v3 = v4;
    std::__call_once(&qword_280BD5AA0, &v3, sub_2779722B4);
  }
}

const void **sub_2779722B4()
{
  keys[2] = *MEMORY[0x277D85DE8];
  v3 = 0;
  keys[0] = *MEMORY[0x277CE2BC0];
  keys[1] = @"CMClassImplementationID";
  values[0] = *MEMORY[0x277CBED10];
  values[1] = @"com.apple.videotoolbox.videoencoder.av1.sw";
  v0 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v2 = 0;
  v3 = v0;
  sub_27796D540(&v2);
  VTRegisterVideoEncoderWithInfo();
  return sub_27796D540(&v3);
}

void sub_277972398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27796D540(va);
  _Unwind_Resume(a1);
}

unint64_t sub_2779723B0(int16x4_t *a1, int16x4_t *a2, uint64_t a3, int a4)
{
  v4 = 0;
  v5 = a2 + 2;
  v6 = a1 + 2;
  v7 = 0uLL;
  v8 = 0uLL;
  do
  {
    v9 = *v6[-2].i8;
    v10 = *v5[-2].i8;
    v11 = *(a3 + v4);
    v12 = vzip1q_s8(v11, 0);
    v13 = vzip2q_s8(v11, 0);
    v14 = vshll_n_s16(*v9.i8, 6uLL);
    v15 = vmlal_high_s16(vshll_high_n_s16(v9, 6uLL), v12, v10);
    *v10.i8 = vqmovn_s32(vmlal_s16(v14, *v12.i8, *v10.i8));
    *v15.i8 = vqmovn_s32(v15);
    v16 = vqmovn_s32(vmlal_s16(vshll_n_s16(*v6, 6uLL), *v13.i8, *v5));
    v17 = vqmovn_s32(vmlal_high_s16(vshll_high_n_s16(*v6->i8, 6uLL), v13, *v5->i8));
    v7 = vpadalq_u32(v7, vmlal_s16(vmull_s16(*v15.i8, *v15.i8), *v10.i8, *v10.i8));
    v8 = vpadalq_u32(v8, vmlal_s16(vmull_s16(v17, v17), v16, v16));
    v4 += 16;
    v5 += 4;
    v6 += 4;
  }

  while (v4 < a4);
  return (vaddvq_s64(vaddq_s64(v8, v7)) + 2048) >> 12;
}

unint64_t sub_277972454(unint64_t a1)
{
  if (a1 > 0x1FFFFFFE9)
  {
    return 0;
  }

  result = malloc_type_malloc(a1 + 23, 0x5F484EBFuLL);
  if (result)
  {
    v2 = result;
    result = (result + 23) & 0xFFFFFFFFFFFFFFF0;
    *(result - 8) = v2;
  }

  return result;
}

unint64_t sub_2779724A8(unint64_t a1, unint64_t a2)
{
  if (a1 && 0x1FFFFFFE9 / a1 < a2)
  {
    return 0;
  }

  v2 = a2 * a1;
  if (a2 * a1 > 0x1FFFFFFE9)
  {
    return 0;
  }

  v3 = malloc_type_malloc(v2 + 23, 0x5F484EBFuLL);
  if (!v3)
  {
    return 0;
  }

  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v4 - 8) = v3;
  if (!v4)
  {
    return 0;
  }

  bzero(((v3 + 23) & 0xFFFFFFFFFFFFFFF0), v2);
  return v4;
}

double sub_277972524(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v6 = (2 * a2);
  v7 = (2 * a5);
  v8 = (2 * a1);
  if (a3 < 9)
  {
    if (a3 == 8)
    {
      do
      {
        v13 = *v6++;
        v12 = vrhaddq_u16(v13, *v7);
        *v8++ = v12;
        v7 = (v7 + 2 * a6);
        --a4;
      }

      while (a4);
    }

    else
    {
      v14 = 0;
      do
      {
        *v12.i8 = vrhadd_u16(*&v6->i8[v14], *v7->i8);
        *(v8->i64 + v14) = v12.i64[0];
        v14 += 2 * a3;
        v7 = (v7 + 2 * a6);
        --a4;
      }

      while (a4);
    }
  }

  else
  {
    v9 = 2 * a3;
    do
    {
      v10 = 0;
      for (i = 0; i < a3; i += 8)
      {
        v12 = vrhaddq_u16(v6[v10], v7[v10]);
        v8[v10++] = v12;
      }

      v8 = (v8 + v9);
      v7 = (v7 + 2 * a6);
      v6 = (v6 + v9);
      --a4;
    }

    while (a4);
  }

  return *v12.i64;
}

uint64_t sub_2779725E0(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, int a6, __int32 *a7, int a8, uint16x8_t a9, double a10, double a11, uint8x8_t a12, int a13)
{
  v13 = (2 * a2);
  v14 = (2 * result);
  if (a13)
  {
    v15 = (2 * a2);
  }

  else
  {
    v15 = (2 * a5);
  }

  if (a13)
  {
    v13 = (2 * a5);
    v16 = a3;
  }

  else
  {
    v16 = a6;
  }

  v17 = v16;
  if (a13)
  {
    v18 = a6;
  }

  else
  {
    v18 = a3;
  }

  if (a3 <= 7)
  {
    a9.i32[0] = 4194368;
    a9.i16[2] = 64;
    a9.i16[3] = 64;
    do
    {
      a12.i32[0] = *a7;
      v26 = vmovl_u8(a12).u64[0];
      a12 = vsubw_u8(a9, a12).u64[0];
      *v14++ = vrshrn_n_s32(vmlal_u16(vmull_u16(a12, *v13), v26, *v15), 6uLL);
      a7 = (a7 + a8);
      v13 = (v13 + 2 * v18);
      v15 = (v15 + 2 * v17);
      --a4;
    }

    while (a4);
  }

  else
  {
    v19 = 2 * v17;
    v20.i64[0] = 0x40004000400040;
    v20.i64[1] = 0x40004000400040;
    do
    {
      v21 = 0;
      for (i = 0; i < a3; i += 8)
      {
        v23 = *&a7[i / 4];
        v24 = vmovl_u8(v23);
        v25 = vsubw_u8(v20, v23);
        *v14[v21].i8 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_u16(vmull_u16(v13[v21], *v25.i8), v15[v21], *v24.i8), 6uLL), vmlal_high_u16(vmull_high_u16(*v13[v21].i8, v25), *v15[v21].i8, v24), 6uLL);
        v21 += 2;
      }

      a7 = (a7 + a8);
      v14 = (v14 + 2 * a3);
      v13 = (v13 + 2 * v18);
      v15 = (v15 + v19);
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t sub_2779726D8(uint64_t result, uint64_t a2, unsigned int a3, int a4, uint64_t a5, int a6, __int32 a7, __int32 a8, uint16x4_t a9, uint16x4_t a10)
{
  v10 = (2 * a2);
  a9.i32[0] = a7;
  a10.i32[0] = a8;
  v11 = (2 * a5);
  v12 = (2 * result);
  if (a3 < 9)
  {
    if (a3 == 8)
    {
      do
      {
        v16 = *v10++;
        *v12++ = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v16.i8, a10, 0), *v11, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v16, a10, 0), *v11->i8, a9, 0), 4uLL);
        v11 = (v11 + 2 * a6);
        --a4;
      }

      while (a4);
    }

    else
    {
      v17 = 0;
      do
      {
        *&v12->i8[v17] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*&v10->i8[v17], a10, 0), *v11, a9, 0), 4uLL);
        v17 += 2 * a3;
        v11 = (v11 + 2 * a6);
        --a4;
      }

      while (a4);
    }
  }

  else
  {
    v13 = 2 * a3;
    do
    {
      v14 = 0;
      for (i = 0; i < a3; i += 8)
      {
        v12[v14 / 0x10] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v10[v14 / 0x10].i8, a10, 0), v11[v14 / 8], a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v10[v14 / 0x10], a10, 0), *v11[v14 / 8].i8, a9, 0), 4uLL);
        v14 += 16;
      }

      v12 = (v12 + v13);
      v11 = (v11 + 2 * a6);
      v10 = (v10 + v13);
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t sub_2779727CC(uint64_t a1, void *a2, uint64_t a3, int *a4, int a5, int a6, int a7, int *a8, int *a9, int a10)
{
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  v86 = _Q1;
  v87 = _Q1;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  v16 = &loc_277BB6000;
  v78 = a6;
  v79 = a7;
  if (a6 >= 1)
  {
    v73 = _Q1;
    v17 = 0;
    v18 = 0;
    v19 = a5;
    v74 = a2;
    v75 = a1;
    v20 = *a2;
    v21 = *(a1 + 408);
    v22 = 232 * a6;
    v76 = a5;
    v23 = *a2 + 232 * a5;
    v24 = 100.0;
    v80 = a5;
    while (1)
    {
      v25 = v23 + v17;
      if (v19 < 0)
      {
        if (v25 < *v21 || v20 == 0)
        {
          goto LABEL_42;
        }
      }

      else if (v25 >= v21[1] || v20 == 0)
      {
        goto LABEL_42;
      }

      sub_277972C7C((v23 + v17), &v83, *a4, a4[1]);
      if ((v19 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (v25 >= *v21)
      {
        goto LABEL_20;
      }

LABEL_25:
      if (v19 < -1)
      {
        if (v23 + v17 + 232 < *v21)
        {
          goto LABEL_36;
        }

        v29 = v19 + 1;
        goto LABEL_31;
      }

      v29 = v18 + v80 + 1;
      v28 = v21[1];
LABEL_27:
      if (v20 + 232 * v29 >= v28)
      {
        goto LABEL_36;
      }

LABEL_31:
      v32 = v20 + 232 * v29;
      v33 = *(v32 + 64);
      if (v33 < 0.5 || v33 <= *(v32 + 48))
      {
LABEL_36:
        v35 = sub_277972D0C((v23 + v17));
        v36 = v35 * *&v86;
        if (v36 < 0.01)
        {
          v36 = 0.01;
        }

        *&v86 = v36;
      }

LABEL_39:
      v37 = *&v86;
      sub_277972D70(*(a3 + 8592), a4);
      if (a8)
      {
        ++*a8;
      }

      v24 = v24 + v37 * v38;
      ++v18;
      v17 += 232;
      ++v19;
      if (v22 == v17)
      {
LABEL_42:
        v39 = v24;
        a6 = v78;
        a7 = v79;
        a1 = v75;
        a5 = v76;
        a2 = v74;
        v16 = &loc_277BB6000;
        _Q1 = v73;
        goto LABEL_44;
      }
    }

    v28 = v21[1];
    if (v25 >= v28)
    {
      v29 = v19 + 1;
      goto LABEL_27;
    }

LABEL_20:
    v30 = *(v23 + v17 + 64);
    if (v30 >= 0.5 && v30 > *(v23 + v17 + 48))
    {
      goto LABEL_39;
    }

    goto LABEL_25;
  }

  v39 = 100;
LABEL_44:
  v40 = a10;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v86 = _Q1;
  v87 = _Q1;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  LODWORD(v92) = 0;
  if (a7 < 1)
  {
    v64 = 0;
    goto LABEL_85;
  }

  v77 = v39;
  v41 = 0;
  v42 = a5;
  v81 = -a7;
  v43 = *a2;
  v44 = *(a1 + 408);
  v45 = *a2 + 232 * a5;
  v46 = 0.0;
  v47 = -1;
  v48 = v16[266];
  do
  {
    v49 = v42 + v41 - 1;
    v50 = v45 - 232;
    if (v49 < 0)
    {
      if (v50 < *v44 || v43 == 0)
      {
        break;
      }
    }

    else if (v50 >= v44[1] || v43 == 0)
    {
      break;
    }

    sub_277972C7C((v45 - 232), &v83, *a4, a4[1]);
    if (v49 < 0)
    {
      if (v50 < *v44)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v53 = v44[1];
      if (v50 >= v53)
      {
        v54 = v42 + v41;
        goto LABEL_68;
      }
    }

    v55 = *(v45 - 168);
    if (v55 >= 0.5 && v55 > *(v45 - 184))
    {
      goto LABEL_80;
    }

LABEL_66:
    if (v49 >= -1)
    {
      v54 = v47 + v42 + 1;
      v53 = v44[1];
LABEL_68:
      if (v43 + 232 * v54 < v53)
      {
        goto LABEL_72;
      }

      goto LABEL_77;
    }

    if (v45 >= *v44)
    {
      v54 = v42 + v41;
LABEL_72:
      v57 = v43 + 232 * v54;
      v58 = *(v57 + 64);
      if (v58 >= 0.5 && v58 > *(v57 + 48))
      {
        goto LABEL_80;
      }
    }

LABEL_77:
    v60 = sub_277972D0C((v45 - 232));
    v61 = v60 * *&v86;
    if (v61 < v48)
    {
      v61 = v48;
    }

    *&v86 = v61;
LABEL_80:
    v62 = *&v86;
    sub_277972D70(*(a3 + 8592), a4);
    if (a8)
    {
      ++*a8;
    }

    v46 = v46 + v62 * v63;
    --v47;
    --v41;
    v45 -= 232;
  }

  while (v41 > v81);
  v64 = v46;
  a6 = v78;
  a7 = v79;
  v39 = v77;
  v40 = a10;
LABEL_85:
  v65 = v64 + v39;
  v66 = a7 + a6;
  if (v40)
  {
    *a9 = v66;
    if (*a8 < v66)
    {
      v67 = sqrt(*(a3 + 8496));
      v68 = fmin(sqrt(v66), 10.0);
      if (v68 <= v67)
      {
        v68 = v67;
      }

      v69 = v68 * 10.0 + 200.0;
      v70 = fmin(sqrt(*a8), 10.0);
      if (v70 > v67)
      {
        v67 = v70;
      }

      v65 = rint(v69 * v65 / (v67 * 10.0 + 200.0));
    }
  }

  v71 = 50 * v66;
  if (v65 <= v71)
  {
    return v71;
  }

  else
  {
    return v65;
  }
}

double sub_277972C7C(double *a1, float64x2_t *a2, double result, double a4)
{
  v4 = a1[7];
  v5.f64[0] = v4 * a1[19];
  a2[4].f64[1] = v5.f64[0];
  v5.f64[1] = fabs(v5.f64[0]);
  a2[5] = vaddq_f64(v5, a2[5]);
  if (v4 > 0.05)
  {
    v6 = a1[14];
    v7 = fabs(v6) / (fabs(a1[13]) + 0.000001);
    v8 = a1[16];
    v9 = fabs(v8);
    v10 = fabs(a1[15]);
    v11 = v6 * a4;
    if (v7 < v11)
    {
      v11 = v7;
    }

    v12 = a2[2].f64[0] + v4 * v11;
    v13 = v8 * result;
    if (v9 / (v10 + 0.000001) < v13)
    {
      v13 = v9 / (v10 + 0.000001);
    }

    result = v12 + v4 * v13;
    a2[2].f64[0] = result;
  }

  return result;
}

double sub_277972D0C(double *a1)
{
  v2 = sub_277972E8C(a1);
  v3 = (a1[6] - a1[7]) * 0.5;
  v4 = 1.0;
  if (v3 <= 1.0)
  {
    v4 = (a1[6] - a1[7]) * 0.5;
    if (v3 < 0.0)
    {
      v4 = 0.0;
    }
  }

  result = v2 + (1.0 - v2) * v4;
  if (v4 > result)
  {
    return v4;
  }

  return result;
}

double sub_277972E8C(double *a1)
{
  v1 = a1[4];
  v2 = a1[5] - v1;
  v3 = a1[6];
  if (v1 > 0.01 && a1[2] / (v1 + 0.000001) < 5.0)
  {
    v3 = v3 - a1[9];
  }

  v4 = 1.0;
  if (v2 > 0.01)
  {
    v4 = v2 * -0.25 / a1[2] + 1.0 + (1.0 - v3) * 100.0 * -0.005;
  }

  return fmax(v4, 0.75);
}

uint64_t sub_277972F1C(int a1, int a2, uint64_t a3)
{
  result = 0;
  if (a2 && a3 >= 1)
  {
    if (a1 <= 0)
    {
      if (a3 >= 0x7FFFFFFF)
      {
        return 0x7FFFFFFFLL;
      }

      else
      {
        return a3;
      }
    }

    else
    {
      v5 = a2 + 100 * a1;
      if (a2 >= 1024)
      {
        v6 = a2 >> 10;
        a2 /= a2 >> 10;
        v5 /= v6;
      }

      return (a2 * a3 / v5) & ~((a2 * a3 / v5) >> 31);
    }
  }

  return result;
}

uint64_t sub_277972F7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1[33789];
  v6 = *(v5 + 112);
  if ((v6 & 0x80000000) == 0)
  {
    v10 = *a1;
    v27 = (*a1 + 35632);
    v11 = (*a1 + 23176);
    v12 = (v5 + 116);
    v13 = (1 << (*(a1 + 67772) + 8)) | (1 << *(a1 + 67771));
    for (i = v6 + 1; i; --i)
    {
      v15 = *v12++;
      v16 = v15 & v13;
      if (v15)
      {
        v17 = v16 == v13;
      }

      else
      {
        v17 = 1;
      }

      if (!v17 || *v11 > 0x1BuLL)
      {
        goto LABEL_26;
      }

      v18 = &qword_277C300D0[10 * *v11];
      if (*v18 < 8u || *(v5 + 321) == 0)
      {
        v20 = 48;
      }

      else
      {
        v20 = 56;
      }

      if (*(v5 + 69) == 1)
      {
        v21 = 2.0;
      }

      else
      {
        v21 = 3.0;
      }

      if (!*(v5 + 69))
      {
        v21 = 1.0;
      }

      v22 = (v21 * (*&v18[v20] * 1000000.0) / *(a1 + 49422));
      if (a5)
      {
        if (a3 > 4 * v22)
        {
          v23 = *(v10 + 44120);
          v24 = (v23 * 100.0 * (4 * v22) / (a4 - 4 * v22));
          v27[1] = v24;
LABEL_25:
          a3 = sub_277972F1C(v23, v24, a4);
        }
      }

      else if (a3 > 8 * v22)
      {
        v23 = *(a2 + 44) - 1;
        v24 = (v23 * 100.0 * (8 * v22) / (a4 - 8 * v22));
        *v27 = v24;
        goto LABEL_25;
      }

LABEL_26:
      ++v11;
    }
  }

  return a3;
}

void sub_27797318C(void *a1, unint64_t a2, jmp_buf a3)
{
  v5 = a1 + 58;
  if ((a1 + 58) < a2)
  {
    v6 = a1;
    do
    {
      v6[83] = 0.0;
      if (!*(v6 + 82) && !*(v6 + 53) && !*(v6 + 24))
      {
        v7 = v6[31];
        v8 = v6[60];
        v9 = v7 * (v8 - v6[62]);
        if (v9 > 0.0)
        {
          v10 = v6[2];
          v11 = v10 * (v7 - v6[33]);
          if (v11 > 0.0)
          {
            v12 = v10 * (v8 - v6[63]);
            if (v12 > 0.0)
            {
              v6[83] = fmax(v7 - sqrt(v9) * sqrt(v11) / sqrt(v12), 0.01);
            }
          }
        }
      }

      v13 = (v6 + 87);
      v6 += 29;
    }

    while (v13 < a2);
    v14 = (a1 + 82);
    v15 = 58;
    v16 = 696;
    v17 = (a1 + 58);
    do
    {
      if (!*(v17 + 24) && !*(v17 - 5) && !*(v17 - 34) && v17[25] < 1.0)
      {
        v18 = (v17 + 29);
        v19 = v14;
        while (v18 < a2)
        {
          if (!*(v19 + 29) && !*v19 && !*(v19 - 29))
          {
            v20 = v19[30];
            if (v20 >= 1.0)
            {
              goto LABEL_31;
            }
          }

          v18 = (v19 + 34);
          v19 += 29;
        }

        v21 = v16;
        if (v15 < 87)
        {
          goto LABEL_29;
        }

        while (1)
        {
          if (!*(a1 + v21 - 272) && !*(a1 + v21 - 504) && !*(a1 + v21 - 736))
          {
            v20 = *(a1 + v21 - 264);
            if (v20 >= 1.0)
            {
              break;
            }
          }

          v21 -= 232;
          if (v21 < 928)
          {
            goto LABEL_29;
          }
        }

LABEL_31:
        v17[25] = v20;
      }

LABEL_29:
      v15 += 29;
      v17 = &a1[v15];
      v14 += 29;
      v16 += 232;
    }

    while (&a1[v15] < a2);
    v22 = 464;
    v23 = 696;
    do
    {
      if (v5[24] || *(v5 - 5) || *(v5 - 34))
      {
        v24 = (v5 + 29);
        v25 = v5;
        while (v24 < a2)
        {
          if (!v25[53] && !v25[24] && !*(v25 - 5))
          {
            v28 = (v25 + 54);
            goto LABEL_49;
          }

          v24 = (v25 + 58);
          v25 += 29;
        }

        v26 = v23;
        if (v22 < 0x2B8)
        {
          goto LABEL_50;
        }

        while (1)
        {
          v27 = a1 + v26;
          if (!*(a1 + v26 - 272) && !*(v27 - 63) && !*(a1 + v26 - 736))
          {
            break;
          }

          v26 -= 232;
          if (v26 < 928)
          {
            goto LABEL_50;
          }
        }

        v28 = v27 - 264;
LABEL_49:
        v5[25] = *v28;
      }

LABEL_50:
      v22 += 232;
      v5 += 29;
      v23 += 232;
    }

    while (v5 < a2);
    v29 = a1[83];
    a1[25] = v29;
    a1[54] = v29;
  }

  v30 = 0x34F72C234F72C235 * ((a2 - a1) >> 3);
  v31 = (0x4F72C23500000000 * ((a2 - a1) >> 3)) >> 29;
  if (v31 <= 0x1FFFFFFE9 && (v32 = malloc_type_malloc(v31 + 23, 0x5F484EBFuLL)) != 0 && (v33 = ((v32 + 23) & 0xFFFFFFFFFFFFFFF0), *(v33 - 1) = v32, v33))
  {
    if (v30 >= 1)
    {
      v34 = 0;
      v35 = v30 & 0x7FFFFFFF;
      v36 = -3;
      do
      {
        v37 = 0.0;
        v38 = 7;
        v39 = v36;
        v40 = 0.0;
        do
        {
          v41 = v39 & ~(v39 >> 31);
          if (v41 >= v30 - 1)
          {
            v41 = v30 - 1;
          }

          v42 = &a1[29 * v41];
          if (!*(v42 + 24))
          {
            v40 = v40 + v42[25];
            v37 = v37 + 1.0;
          }

          ++v39;
          --v38;
        }

        while (v38);
        if (v37 <= 0.01)
        {
          v43 = *&a1[29 * v34 + 25];
        }

        else
        {
          v43 = v40 / v37;
        }

        *&v33[v34++] = v43;
        ++v36;
      }

      while (v34 != v35);
      v44 = a1 + 25;
      do
      {
        v45 = *v33++;
        *v44 = v45;
        v44 += 29;
        --v35;
      }

      while (v35);
    }

    free(v32);
  }

  else
  {

    sub_2779F5C10(a3, 2, "Error allocating buffers in smooth_filter_noise()");
  }
}

uint64_t sub_277973568(uint64_t result, unint64_t a2)
{
  v2 = (result + 232);
  if (result + 232 < a2)
  {
    do
    {
      v3 = *(v2 - 27);
      v4 = v2[2];
      v5 = sqrt(fmax(v3 * (v4 - v2[4]), 0.001));
      v6 = v2[25];
      v7 = fmax(v3 - v6, 0.001);
      v8 = v5 / v7 * sqrt(v7 / fmax(v4 - v6, 0.001));
      v9 = v8 <= 0.0;
      v10 = v8 < 1.0 || v8 <= 0.0;
      if (v8 >= 1.0)
      {
        v9 = 1;
      }

      if (v10)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      if (v9)
      {
        v8 = v11;
      }

      v2[26] = v8;
      v2 += 29;
    }

    while (v2 < a2);
  }

  *(result + 208) = 0x3FF0000000000000;
  return result;
}

_DWORD *sub_277973604(_DWORD *result)
{
  v1 = result;
  v2 = *(*result + 4 * *(result + 463456) + 5160);
  if (!result[68045] && !*(*result + 23172))
  {
    result = sub_277A5B930(result, *(*result + 4 * *(result + 463456) + 5160), result[61418], result[61419]);
  }

  v1[98766] = v2;
  return result;
}

uint64_t sub_277973684(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v82 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v77 = a1 + 49387;
  v9 = *(a1 + 98778);
  v10 = sub_277A2CED0(*(*a1 + 368), **(*a1 + 368), *(a1 + 644192));
  v11 = v10;
  if (!a3)
  {
    if (v10 == -1)
    {
      return *(v77 + 3);
    }

    return v11;
  }

  if (v10 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = v10;
  }

  memset_pattern16(__b, &unk_277BB7C60, 0x40uLL);
  if (v11 == -1)
  {
    v13 = a3;
  }

  else
  {
    v13 = v12;
  }

  v78 = *(a2 + 11392);
  v14 = v78 & ~(v78 >> 31);
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v78 & ~(v78 >> 31);
  }

  if (v15 <= a4)
  {
    v71 = 0;
    goto LABEL_104;
  }

  v16 = a2;
  v75 = v11;
  v17 = 0;
  v18 = a1 + 271180;
  v19 = 463516;
  if (!*(a1 + 271336))
  {
    v19 = 246144;
  }

  v73 = v8 + 44184;
  v74 = v8;
  v20 = (v8 + 35264);
  v21 = 200.0 / *(a1 + v19);
  v22 = *(v8 + 44184);
  v79 = a2;
  v80 = a1 + 271180;
  v76 = (v8 + 35264);
  while (1)
  {
    v23 = v9 + 1;
    if (v22 < 1 || ((v24 = a4 + 1, *(v18 + 20) == 1) ? (v25 = v24 < v14) : (v25 = 0), !v25))
    {
      ++a4;
      goto LABEL_21;
    }

    v26 = *v18;
    if (v23 >= *v18)
    {
      v27 = -*(v20 + 7);
      if (a4 > v27 && *(v20 + 6) >= a4)
      {
        v28 = *v20 + 232 * ((*(v20 + 5) + a4 - 1) % *(v20 + 2));
      }

      else
      {
        v28 = 0;
      }

      v29 = a4 < v27 || *(v20 + 6) <= a4 ? 0 : (*v20 + 232 * ((*(v20 + 5) + a4) % *(v20 + 2)));
      if (v24 >= v27)
      {
        v30 = *(v20 + 6);
        if (v30 > v24)
        {
          if (v28)
          {
            if (v29)
            {
              v31 = *v20;
              if (*v20)
              {
                v32 = 0.12;
                if (v9 <= 30)
                {
                  v32 = v23 / 31.0 * 0.035 + 0.085;
                }

                v33 = *(v18 + 112);
                v34 = *(v20 + 5);
                v35 = *(v20 + 2);
                v36 = v29[6];
                v37 = __OFSUB__(v30, a4);
                v38 = v30 - a4;
                v39 = (v38 < 0) ^ v37 | (v38 == 0) ? 0 : v38;
                if (v22 == 1)
                {
                  if (v39 < 4)
                  {
                    goto LABEL_88;
                  }

                  v40 = 1;
                  v41 = 3;
                }

                else
                {
                  v40 = 3;
                  v41 = 16;
                }

                if (v41 >= v39 - 1)
                {
                  v41 = v39 - 1;
                }

                if ((v9 > 1 || v33 != 3) && v29[8] < v32)
                {
                  v42 = (v31 + 232 * ((v34 + v24) % v35));
                  if (v42[8] < v32)
                  {
                    if (v36 < 0.05)
                    {
                      goto LABEL_53;
                    }

                    v59 = v29[2];
                    v60 = v29[4];
                    if (v59 < v60 * 1.5 && v60 > *(v28 + 32) * 5.0 && v60 > v42[4] * 5.0)
                    {
                      goto LABEL_53;
                    }

                    if (1.0 - v36 <= 0.25)
                    {
                      goto LABEL_88;
                    }

                    if (1.0 - v36 <= v36 - v29[9] + v36 - v29[9])
                    {
                      goto LABEL_88;
                    }

                    v61 = v60 + dbl_277BB7020[v60 < 0.0];
                    if (v59 / v61 >= 1.9)
                    {
                      goto LABEL_88;
                    }

                    if (vabdd_f64(*(v28 + 32), v60) / v61 > 0.4 || vabdd_f64(*(v28 + 16), v59) / (v59 + dbl_277BB7020[v59 < 0.0]) > 0.4)
                    {
LABEL_53:
                      if (v39 < 2)
                      {
                        goto LABEL_88;
                      }
                    }

                    else if (v42[2] / (v42[4] + dbl_277BB7020[v42[4] < 0.0]) <= 3.5 || v39 < 2)
                    {
                      goto LABEL_88;
                    }

                    v43 = v41 + 1;
                    v44 = -v41;
                    v45 = a4 + v34;
                    v46 = 1;
                    v47 = 0.0;
                    v48 = 1.0;
                    while (1)
                    {
                      v49 = (v31 + 232 * ((v45 + v46) % v35));
                      v50 = v49[2];
                      v51 = v49[4];
                      if (v50 * 12.5 / (v51 + dbl_277BB7020[v51 < 0.0]) <= 128.0)
                      {
                        v52 = v50 * 12.5 / (v51 + dbl_277BB7020[v51 < 0.0]);
                      }

                      else
                      {
                        v52 = 128.0;
                      }

                      v53 = v49[6];
                      v54 = (v53 + 0.85) * 0.5;
                      if (v53 > 0.85)
                      {
                        v54 = v49[6];
                      }

                      v48 = v48 * v54;
                      v55 = v47 + v48 * v52;
                      if (v53 < 0.05 || v52 < 1.5)
                      {
                        break;
                      }

                      v56 = v53 - v49[9];
                      v57 = v52 < 3.0;
                      if (v56 >= 0.2)
                      {
                        v57 = 0;
                      }

                      if (v50 < v21 || v57 || v55 - v47 < 3.0)
                      {
                        break;
                      }

                      ++v46;
                      v47 = v47 + v48 * v52;
                      if (v44 + v46 == 1)
                      {
                        v46 = v43;
                        break;
                      }
                    }

                    if (v55 > 30.0 && v46 > v40)
                    {
                      goto LABEL_112;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_88:
    v63 = v14;
    v64 = v24 < -*(v16 + 11396) || v78 <= v24;
    v65 = v64 ? 0 : (*(v16 + 11368) + 232 * ((*(v16 + 11388) + v24) % *(v16 + 11376)));
    v66 = sub_277972D0C(v65);
    v67 = 0;
    __b[v17 & 7] = v66;
    v68 = 1.0;
    do
    {
      v68 = v68 * __b[v67++];
    }

    while (v67 != 8);
    v18 = v80;
    v69 = *(v80 + 4);
    if (v23 >= v26)
    {
      v70 = sub_277977C10(v79, a4 + 1, *v77, v17, v69 - v17, v66, v68);
      v18 = v80;
      if (v70)
      {
        break;
      }
    }

    if (v24 >= 2 * v69)
    {
      v71 = 0;
      ++a4;
      goto LABEL_103;
    }

    ++a4;
    v16 = v79;
    v14 = v63;
    v20 = v76;
LABEL_21:
    ++v17;
    v9 = v23;
    if (a4 >= v15)
    {
      v71 = 0;
      goto LABEL_103;
    }
  }

  *(v73 + 4) = 0;
LABEL_112:
  v71 = 1;
LABEL_103:
  LODWORD(v11) = v75;
  v8 = v74;
LABEL_104:
  if (!*(v8 + 23172))
  {
    v71 = 1;
  }

  if (v71)
  {
    return a4;
  }

  else
  {
    return v11;
  }
}

void sub_277973D00(int *a1, uint64_t a2)
{
  v4 = a1 + 161134;
  v5 = a1 + 67578;
  v6 = *a1;
  v7 = *(*a1 + 23888);
  if (a1[67823] != 3 && !a1[61408])
  {
    v8 = v7[3];
    if (!*(a1 + 463456) && v8 != 0)
    {
      v10 = v7[4];
      if (v10)
      {
        if (*(v6 + 23172))
        {
          v11 = *v8;
          v12 = v8[2];
          *(v10 + 16) = v8[1];
          *(v10 + 32) = v12;
          *v10 = v11;
          v13 = v8[3];
          v14 = v8[4];
          v15 = v8[6];
          *(v10 + 80) = v8[5];
          *(v10 + 96) = v15;
          *(v10 + 48) = v13;
          *(v10 + 64) = v14;
          v16 = v8[7];
          v17 = v8[8];
          v18 = v8[10];
          *(v10 + 144) = v8[9];
          *(v10 + 160) = v18;
          *(v10 + 112) = v16;
          *(v10 + 128) = v17;
          v19 = v8[11];
          v20 = v8[12];
          v21 = v8[13];
          *(v10 + 224) = *(v8 + 28);
          *(v10 + 192) = v20;
          *(v10 + 208) = v21;
          *(v10 + 176) = v19;
          v22 = *a1;
          if (*(*a1 + 23172))
          {
            v23 = a1[98796];
LABEL_16:
            v25 = *(*(v6 + 23888) + 32);
            v26 = sub_2779777C4(a1, v23, v25[4] / v25[22], v25[10] / v25[22] + (v25[11] + v25[11]) / (v25[22] * a1[61534]));
            a1[98816] = v26;
            a1[98800] = v26;
            *(v6 + 44276) = v26;
            *(v6 + 44264) = sub_277A58CE0(v26, *(*v5 + 72));
            *(v6 + 44216) = v26;
            v27 = (v5[243] + v26) / 2;
            *(v6 + 44272) = v27;
            *(v6 + 44212) = v27;
            v7 = *(v6 + 23888);
            goto LABEL_17;
          }

          v8 = *(*(v22 + 23888) + 24);
          LODWORD(v19) = a1[61408];
          *&v19 = v19;
        }

        else
        {
          *&v19 = 0;
          v22 = *a1;
        }

        v24 = *(v22 + 35536) / (*(v8 + 22) - *&v19);
        if (v24 >= 0x7FFFFFFF)
        {
          v23 = 0x7FFFFFFF;
        }

        else
        {
          v23 = v24;
        }

        goto LABEL_16;
      }
    }
  }

LABEL_17:
  v28 = *v4;
  if (*v4 >= v7[1])
  {
    if (!a2)
    {
      return;
    }
  }

  else
  {
    v29 = *v28;
    v30 = v28[2];
    *(a2 + 16) = v28[1];
    *(a2 + 32) = v30;
    *a2 = v29;
    v31 = v28[3];
    v32 = v28[4];
    v33 = v28[6];
    *(a2 + 80) = v28[5];
    *(a2 + 96) = v33;
    *(a2 + 48) = v31;
    *(a2 + 64) = v32;
    v34 = v28[7];
    v35 = v28[8];
    v36 = v28[10];
    *(a2 + 144) = v28[9];
    *(a2 + 160) = v36;
    *(a2 + 112) = v34;
    *(a2 + 128) = v35;
    v37 = v28[11];
    v38 = v28[12];
    v39 = v28[13];
    *(a2 + 224) = *(v28 + 28);
    *(a2 + 192) = v38;
    *(a2 + 208) = v39;
    *(a2 + 176) = v37;
    *v4 += 232;
  }

  *(v4 + 2) = log1p(*(a2 + 16));
  if (*(*(*(*a1 + 23888) + 24) + 24) >= 0.0)
  {
    *(v4 + 4) = log1p(*(a2 + 24));
  }

  *(v4 + 24) = *(a2 + 80) >= 0.15;
}

uint64_t sub_277973F84(uint64_t result)
{
  v1 = *(*result + 368) + 16 * *(result + 644192);
  v2 = *(v1 + 8);
  if (v2 < *(v1 + 16) || (v2 = *(*result + 23476), v2 >= 1))
  {
    if (*(result + 395108) < v2)
    {
      v2 = *(result + 395108);
    }

    *(result + 395108) = v2;
  }

  return result;
}

double sub_277973FD8(uint64_t a1, double *a2, float64x2_t *a3, int a4, double a5, double a6)
{
  if (!a2)
  {
    return 0.0;
  }

  v10 = a2[4] * (a2[1] / a2[22]) / a2[22];
  v11 = v10 * pow(a3[2].f64[0] * a3->f64[1] / (v10 + dbl_277BB7020[v10 < 0.0]), a4 / 100.0);
  v12 = vmulq_f64(a3[5], xmmword_277BB7000);
  v13 = 1.0;
  v14 = 1.0 - (v12.f64[0] + v12.f64[1] / *(a1 + 16));
  if (v14 <= 1.0)
  {
    v13 = v14;
  }

  if (v14 >= 0.5)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0.5;
  }

  v16 = fabs(sqrt(v15));
  v17 = v15 == -INFINITY;
  v18 = INFINITY;
  if (!v17)
  {
    v18 = v16;
  }

  v19 = v11 * v18;
  if (v19 <= a6)
  {
    v20 = v19;
  }

  else
  {
    v20 = a6;
  }

  if (v19 >= a5)
  {
    return v20;
  }

  else
  {
    return a5;
  }
}

double sub_2779740F0(int *a1, double *a2, double *a3, int a4, double a5)
{
  v10 = *a1;
  v98 = 0.0;
  v11 = a1 + 98775;
  v96 = 0u;
  v97 = 0u;
  memset(v95, 0, sizeof(v95));
  if (a1[67823] == 3)
  {
    v12 = a1[98777] + a1[98777];
    v13 = 80.0;
    v14 = v12 <= 80.0;
    v15 = v12 < 128.0 || v12 <= 80.0;
    if (v12 >= 128.0)
    {
      v14 = 1;
    }

    if (!v15)
    {
      v13 = 128.0;
    }

    if (v14)
    {
      v12 = v13;
    }

    v73 = v12;
    if (a4)
    {
      goto LABEL_12;
    }

LABEL_21:
    v40 = 0;
    v16 = a1[98777];
    goto LABEL_24;
  }

  v73 = 128.0;
  if (!a4)
  {
    goto LABEL_21;
  }

LABEL_12:
  v16 = a1[98777];
  if (v16 < 2)
  {
    v40 = 0;
  }

  else
  {
    v72 = a1 + 98775;
    v17 = *(a1 + 80567);
    v18 = *(*(v10 + 23888) + 8);
    if (v17 >= v18)
    {
      v40 = 0;
      v11 = a1 + 98775;
    }

    else
    {
      v19 = 0.0;
      v20 = 0uLL;
      v71 = a1[98777];
      v21 = v16 - 1;
      v22 = 0uLL;
      v23 = -1;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v94 = 0u;
      v32 = 0.0;
      v33 = 0.0;
      do
      {
        v85 = v30;
        v86 = v29;
        v87 = v28;
        v88 = v27;
        v89 = v26;
        v90 = v25;
        v91 = v24;
        v92 = v22;
        v93 = v20;
        v34 = *v17;
        v35 = v17[2].f64[0];
        v36 = &v17[2].f64[1];
        v81 = v17[4];
        v82 = v17[3];
        v79 = v17[6];
        v80 = v17[5];
        v77 = v17[8];
        v78 = v17[7];
        v37 = v17[10];
        v75 = v17[1];
        v76 = v17[9];
        v38 = v17[11].f64[0];
        v17 = (v17 + 232);
        *(a1 + 80567) = v17;
        v83 = v37;
        v84 = vaddq_f64(v34, v31);
        v34.f64[0] = v35;
        v34.f64[1] = *v36;
        v74 = v34;
        v32 = log1p(v35) + v32;
        v94 = vaddq_f64(v75, v94);
        v39 = log1p(v75.f64[0]);
        v31 = v84;
        v33 = v39 + v33;
        v30 = vaddq_f64(v74, v85);
        v29 = vaddq_f64(v82, v86);
        v28 = vaddq_f64(v81, v87);
        v27 = vaddq_f64(v80, v88);
        v26 = vaddq_f64(v79, v89);
        v25 = vaddq_f64(v78, v90);
        v24 = vaddq_f64(v77, v91);
        v22 = vaddq_f64(v76, v92);
        v40 = v23 + 2;
        v19 = v38 + v19;
        ++v23;
        v20 = vaddq_f64(v83, v93);
      }

      while (v40 < v21 && v17 < v18);
      v98 = v32;
      v95[0] = v84;
      v95[1] = v94;
      v95[2] = v30;
      v95[3] = v29;
      v95[4] = v28;
      v95[5] = v27;
      v95[6] = v26;
      v95[7] = v25;
      v95[8] = v24;
      v95[9] = v22;
      v95[10] = v20;
      *(&v97 + 1) = v33;
      *&v95[11] = v19;
      if (v23)
      {
        v41 = vdupq_lane_s64(COERCE__INT64(v40), 0);
        *(v95 + 8) = vdivq_f64(*(v95 + 8), v41);
        *(&v95[1] + 8) = vdivq_f64(*(&v95[1] + 8), v41);
        *(&v95[2] + 8) = vdivq_f64(*(&v95[2] + 8), v41);
        *(&v95[3] + 8) = vdivq_f64(*(&v95[3] + 8), v41);
        *(&v95[4] + 8) = vdivq_f64(*(&v95[4] + 8), v41);
        *(&v95[5] + 8) = vdivq_f64(*(&v95[5] + 8), v41);
        *(&v95[6] + 8) = vdivq_f64(*(&v95[6] + 8), v41);
        *(&v95[7] + 8) = vdivq_f64(*(&v95[7] + 8), v41);
        *(&v95[8] + 8) = vdivq_f64(*(&v95[8] + 8), v41);
        *(&v95[9] + 8) = vdivq_f64(*(&v95[9] + 8), v41);
        *(&v95[10] + 8) = vdivq_f64(*(&v95[10] + 8), v41);
      }

      v11 = v72;
      v16 = v71;
    }
  }

LABEL_24:
  v42 = v16 - 1;
  v43 = 0.0;
  if (v40 < v16 - 1)
  {
    v44 = a5 * 1.5;
    do
    {
      if (a4)
      {
        if (v40)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v48 = *(a1 + 80567);
        if (v48 >= *(*(v10 + 23888) + 8))
        {
          return v43;
        }

        v49 = *(v48 + 208);
        v96 = *(v48 + 192);
        v97 = v49;
        v98 = *(v48 + 224);
        v50 = *(v48 + 144);
        v95[8] = *(v48 + 128);
        v95[9] = v50;
        v51 = *(v48 + 176);
        v95[10] = *(v48 + 160);
        v95[11] = v51;
        v52 = *(v48 + 80);
        v95[4] = *(v48 + 64);
        v95[5] = v52;
        v53 = *(v48 + 112);
        v95[6] = *(v48 + 96);
        v95[7] = v53;
        v54 = *(v48 + 16);
        v95[0] = *v48;
        v95[1] = v54;
        v55 = *(v48 + 48);
        v95[2] = *(v48 + 32);
        v95[3] = v55;
        *(a1 + 80567) = v48 + 232;
        if (v40)
        {
LABEL_28:
          v45 = *a2;
          v46 = *&v95[3] - *(&v95[3] + 1);
          v47 = sub_277972E8C(v95);
          if (v47 >= v46)
          {
            v47 = v46;
          }

          if (v45 >= v47)
          {
            v45 = v47;
          }

          goto LABEL_35;
        }
      }

      v45 = *&v95[3] - *(&v95[3] + 1);
LABEL_35:
      *a2 = v45;
      if (*a3 < v44 && v40 <= 2 * *v11)
      {
        v56 = v45 * 0.5 + 0.75;
        if (v40 >= 2)
        {
          v57 = *a3;
        }

        else
        {
          v57 = 0.0;
        }

        v58 = sub_277A58CE0(*(v10 + 44216), a1[115873]);
        v59 = vmulq_f64(v95[5], xmmword_277BB7000);
        v60 = 1.0 - (v59.f64[0] + v59.f64[1] / a1[115870]);
        if (v60 <= 1.0)
        {
          v61 = v60;
        }

        else
        {
          v61 = 1.0;
        }

        if (v60 >= 0.5)
        {
          v62 = v61;
        }

        else
        {
          v62 = 0.5;
        }

        v63 = dbl_277BB7010[(a1[115866] * a1[115867]) < 0x38401] * v62;
        if (v63 <= *&v95[1] * v62)
        {
          v63 = *&v95[1] * v62;
        }

        v64 = (*&v95[2] + v57) * v62;
        v65 = v64 + 0.000001;
        if (v64 < 0.0)
        {
          v65 = v64 + -0.000001;
        }

        v66 = v57 + *(&v95[2] + 1) - *&v95[2];
        if (v66 < 0.0)
        {
          v66 = 0.0;
        }

        v67 = fmin(v58 * 0.015 + 0.5, 2.0);
        *a3 = v66;
        v68 = v67 * (v63 / v65 + 40.0);
        v69 = v73 * v67;
        if (v68 < v69)
        {
          v69 = v68;
        }

        v43 = v43 + v69 * v56;
      }

      ++v40;
    }

    while (v40 < v42);
  }

  return v43;
}

uint64_t sub_2779746B8(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int *a5)
{
  result = 0;
  v262 = 0;
  if (a2 < 2)
  {
    return result;
  }

  v10 = a2;
  v11 = 56 * a2;
  if (a2 <= 0x9249248 && (v12 = malloc_type_malloc(v11 + 23, 0x5F484EBFuLL)) != 0)
  {
    v13 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v13 - 1) = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_2779724A8(v10, 8uLL);
  v15 = sub_2779724A8(v10, 8uLL);
  v16 = sub_2779724A8(v10, 8uLL);
  if (!v13 || !v14 || !v15 || !v16)
  {
    sub_277977CBC(v13, v14, v15, v16);
    return 0xFFFFFFFFLL;
  }

  v255 = v16;
  v251 = a3;
  v252 = a5;
  bzero(v13, v11);
  v17 = 0;
  v18 = 0;
  v19 = a2;
  v20 = a2 - 1;
  v21 = a1 - 40;
  v253 = a1 + 16;
  v260 = a1 - 216;
  v22 = &loc_277BB6000;
  v23 = &loc_277BB6000;
  v24 = &loc_277BB6000;
  v254 = a4;
  while (1)
  {
    v258 = v17;
    LODWORD(v25) = -1;
    if (v20 != v18)
    {
      v26 = v255;
      if (v18 >= v19)
      {
        goto LABEL_66;
      }

      v27 = v18 - 3;
      v28 = v18 + 1;
      v25 = v18;
      while (1)
      {
        v29 = v18 <= v27 ? v27 : v18;
        v30 = v25 + 1;
        v31 = v18 <= v27 ? v27 : v18;
        v32 = a1 + 232 * v25;
        if (!*(v32 + 192) && (!v25 || !*(v21 + 232 * v25)))
        {
          break;
        }

LABEL_21:
        ++v27;
        ++v28;
        ++v25;
        if (v30 == v19)
        {
          LODWORD(v25) = -1;
          goto LABEL_66;
        }
      }

      v33 = *(v32 + 32);
      v34 = v33 / fmax(*(v32 + 16), 0.01);
      if (v25 <= v18)
      {
        v37 = 0.0;
        v38 = 0.0;
        if (v25 >= v20)
        {
LABEL_52:
          if (v34 >= 0.02)
          {
            goto LABEL_66;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v35 = v21 + 232 * v29;
        v36 = v31;
        v37 = 0.0;
        v38 = 0.0;
        v39 = v35;
        do
        {
          v40 = *(v39 + 232);
          v39 += 232;
          if (!v40 && (v36 < 1 || !*v35))
          {
            v41 = *(v35 + 72);
            v42 = v41 / fmax(*(v35 + 56), 0.01);
            if (v42 > v37)
            {
              v37 = v42;
            }

            if (v41 > v38)
            {
              v38 = *(v35 + 72);
            }
          }

          ++v36;
          v35 = v39;
        }

        while (v36 < v25);
        if (v25 >= v20)
        {
          if (v37 >= 0.001)
          {
            v43 = *(v32 + 40);
            v44 = 0.0;
            v45 = 0.0;
            goto LABEL_56;
          }

          goto LABEL_52;
        }
      }

      v46 = v28 - 1;
      v47 = (a1 + 32 + 232 * v28);
      if (v25 + 3 >= v20)
      {
        v48 = v20;
      }

      else
      {
        v48 = v25 + 3;
      }

      v45 = 0.0;
      v44 = 0.0;
      do
      {
        if (!v25 || !*(v21 + 232 * v25))
        {
          v49 = *v47 / fmax(*(v47 - 2), 0.01);
          if (v49 > v44)
          {
            v44 = v49;
          }

          if (*v47 > v45)
          {
            v45 = *v47;
          }
        }

        ++v46;
        v47 += 29;
      }

      while (v46 < v48);
      if (v37 >= 0.001 || v44 >= 0.001)
      {
        v43 = *(v32 + 40);
        if (v43 <= *(a1 + 232 * v30 + 40))
        {
          v43 = *(a1 + 232 * v30 + 40);
        }

LABEL_56:
        if (v43 / fmax(v33, 0.01) <= 1.2)
        {
          if (v37 <= v44)
          {
            v37 = v44;
          }

          if (v34 >= v37 + v37)
          {
            goto LABEL_66;
          }

          v50 = v38 <= v45 ? v45 : v38;
          if (v33 >= v50 + v50)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_21;
      }

      goto LABEL_52;
    }

    v26 = v255;
LABEL_66:
    v51 = v25 - 1;
    if ((v25 & 0x80000000) != 0)
    {
      v51 = v20;
    }

    if (v18 <= v51)
    {
      v53 = v18;
      v54 = v51 + 1;
      v55 = v18 - 3;
      v56 = v18 - 3;
      v57 = v18;
      do
      {
        v58 = 0;
        v59 = 0.0;
        v60 = v56;
        do
        {
          if (v60 <= v18)
          {
            v61 = v18;
          }

          else
          {
            v61 = v60;
          }

          if (v61 >= v51)
          {
            v61 = v51;
          }

          v62 = a1 + 232 * v61;
          if (!*(v62 + 192))
          {
            v63 = *&qword_277BB80D8[v58];
            *(v14 + 8 * v57) = *(v14 + 8 * v57) + v63 * *(v62 + 16);
            v59 = v59 + v63;
          }

          ++v58;
          ++v60;
        }

        while (v58 != 7);
        if (v59 <= 0.01)
        {
          v64 = *(a1 + 232 * v57 + 16);
        }

        else
        {
          v64 = *(v14 + 8 * v57) / v59;
        }

        *(v14 + 8 * v57++) = v64;
        ++v56;
      }

      while (v54 != v57);
      v65 = v18 - 3;
      v66 = v18;
      do
      {
        v67 = 0;
        v68 = 0.0;
        v69 = v65;
        do
        {
          if (v69 <= v18)
          {
            v70 = v18;
          }

          else
          {
            v70 = v69;
          }

          if (v70 >= v51)
          {
            v71 = v51;
          }

          else
          {
            v71 = v70;
          }

          v72 = a1 + 232 * v71;
          if (!*(v72 + 192) && (v71 < 1 || !*(v21 + 232 * v71)))
          {
            v73 = *&qword_277BB80D8[v67];
            *(v15 + 8 * v66) = *(v15 + 8 * v66) + v73 * *(v72 + 32);
            v68 = v68 + v73;
          }

          ++v67;
          ++v69;
        }

        while (v67 != 7);
        if (v68 <= 0.01)
        {
          v74 = *(a1 + 232 * v66 + 32);
        }

        else
        {
          v74 = *(v15 + 8 * v66) / v68;
        }

        *(v15 + 8 * v66++) = v74;
        ++v65;
      }

      while (v54 != v66);
      if (v18 == v51)
      {
        *(v26 + 8 * v18) = 0;
      }

      else
      {
        v75 = (v26 + 8 * v18);
        v76 = v18 - 1;
        do
        {
          if (v76 <= v18)
          {
            v77 = v18;
          }

          else
          {
            v77 = v76;
          }

          v78 = v76 + 2;
          if (v76 + 2 >= v51)
          {
            v78 = v51;
          }

          *v75++ = (*(v15 + 8 * v78) - *(v15 + 8 * v77)) / (v78 - v77);
          ++v76;
        }

        while (v51 != v76);
      }

      LODWORD(v52) = 0;
      *v13 = v18;
      while (1)
      {
        v79 = 0;
        v80 = 7;
        v81 = v55;
        v82 = 0.001;
        v83 = 0.001;
        v84 = 0.001;
        v85 = 0.001;
        do
        {
          if (v81 <= v18)
          {
            v86 = v18;
          }

          else
          {
            v86 = v81;
          }

          if (v86 >= v51)
          {
            v87 = v51;
          }

          else
          {
            v87 = v86;
          }

          v88 = a1 + 232 * v87;
          if (!*(v88 + 192) && (v87 < 1 || !*(v21 + 232 * v87)))
          {
            v89 = *(v88 + 16);
            v82 = v82 + v89;
            v85 = v85 + v89 * v89;
            v90 = *(v88 + 32);
            v84 = v84 + v90;
            v83 = v83 + v90 * v90;
            ++v79;
          }

          ++v81;
          --v80;
        }

        while (v80);
        if (v79 < 1)
        {
          v95 = 1;
        }

        else
        {
          v91 = v79;
          v92 = v82 / v79;
          v93 = v84 / v79;
          v94 = v83 / v79 / (v93 * v93) < v23[285] && fabs(*(v26 + 8 * v53)) / v93 < v22[267] || v93 / v92 < v22[267];
          v95 = v85 / v91 / (v92 * v92) >= v24[286] || !v94 || v93 >= v92 * 0.5;
        }

        v96 = &v13[14 * v52];
        v98 = *v96;
        v97 = v96 + 12;
        if (v98 == v53)
        {
          goto LABEL_133;
        }

        if (v95 != *v97)
        {
          break;
        }

LABEL_134:
        ++v53;
        ++v55;
        if (v54 == v53)
        {
          goto LABEL_135;
        }
      }

      v13[14 * v52 + 1] = v53 - 1;
      v52 = v52 + 1;
      v99 = &v13[14 * v52];
      *v99 = v53;
      v97 = v99 + 12;
LABEL_133:
      *v97 = v95;
      goto LABEL_134;
    }

    LODWORD(v52) = 0;
    *v13 = v18;
LABEL_135:
    v257 = v25;
    v13[14 * v52 + 1] = v51;
    v261 = v52 + 1;
    sub_277977D38(v13, &v261, 0, 3);
    sub_277977D38(v13, &v261, 1, 3);
    v103 = v261;
    if (v261 >= 1)
    {
      v104 = 0;
      do
      {
        sub_277977E08(a1, v104++, v13, v100, v101, v102);
      }

      while (v103 != v104);
      v105 = 0;
      do
      {
        if (v13[14 * v105 + 12])
        {
          if (v105)
          {
            v106 = &v13[14 * v105];
            v108 = *(v106 - 14);
            v107 = *(v106 - 13);
            v109 = v107 - 6;
            if (v107 - 6 <= v108 + 1)
            {
              v109 = v108 + 1;
            }

            if (v108 < v107)
            {
              v110 = v107 - 6 <= v108 + 1 ? v108 + 1 : v107 - 6;
              v111 = v107 + 1 - v109;
              v112 = (v253 + 232 * v110);
              v113 = 0.0;
              v114 = v111;
              do
              {
                v115 = *v112;
                v112 += 29;
                v113 = v113 + v115;
                --v114;
              }

              while (v114);
              if (v107 + 1 != v109)
              {
                v116 = v13[14 * v105 + 1];
                if (v107 < v116)
                {
                  v117 = fmax(v113 / v111, 0.001);
                  v118 = v107 + 2;
                  v119 = v116 - v107;
                  v120 = (a1 + 248 + 232 * v107);
                  do
                  {
                    if (vabdd_f64(*v120, v117) / v117 >= 0.1)
                    {
                      break;
                    }

                    if (v120[24] <= 0.995)
                    {
                      break;
                    }

                    if (v120[2] / v117 >= 0.1)
                    {
                      break;
                    }

                    *(v106 - 13) = v118 - 1;
                    *v106 = v118++;
                    v120 += 29;
                    --v119;
                  }

                  while (v119);
                }
              }
            }
          }

          if (v105 < v103 - 1)
          {
            v121 = &v13[14 * v105];
            v122 = v121[15];
            v123 = v121[14];
            v124 = v122 <= v123 + 6 ? v122 - 1 : v123 + 6;
            if (v123 <= v124)
            {
              v125 = v124 + 1;
              v126 = v124 + 1 - v123;
              v127 = (v253 + 232 * v123);
              v128 = 0.0;
              do
              {
                v129 = *v127;
                v127 += 29;
                v128 = v128 + v129;
                --v126;
              }

              while (v126);
              if (v125 != v123)
              {
                v130 = *v121;
                if (v123 > v130)
                {
                  v131 = fmax(v128 / (v125 - v123), 0.001);
                  v132 = v123 - 2;
                  v133 = (a1 - 24 + 232 * v123);
                  v134 = 1;
                  do
                  {
                    v135 = vabdd_f64(*(v133 - 24), v131) / v131;
                    v136 = *v133 <= 0.995;
                    if (v133[7] / v131 >= 0.1)
                    {
                      v136 = 1;
                    }

                    if (v135 >= 0.1)
                    {
                      break;
                    }

                    v134 -= v136;
                    if (v134 < 0)
                    {
                      break;
                    }

                    --v123;
                    v121[14] = v132 + 1;
                    v13[14 * v105 + 1] = v132--;
                    v133 -= 29;
                  }

                  while (v123 > v130);
                }
              }
            }
          }
        }

        ++v105;
      }

      while (v105 != v103);
    }

    sub_277977EF0(v13, &v261);
    sub_277977D38(v13, &v261, 1, 3);
    v140 = v261;
    if (v261 >= 1)
    {
      v141 = 0;
      do
      {
        sub_277977E08(a1, v141++, v13, v137, v138, v139);
      }

      while (v140 != v141);
      v264[0] = 0;
      if (v140 != 1)
      {
        v142 = 0;
        do
        {
          v143 = &v13[14 * v142];
          v144 = *(v143 + 12);
          if (v144 == 1)
          {
            if (v142 < 1 || *(v143 + 1) - *v143 > 12)
            {
              goto LABEL_203;
            }

            v147 = v143[5];
            v148 = &v13[14 * v142];
            if (v147 >= *(v148 - 2) * 0.99)
            {
              if (v143[2] <= *(v148 - 5) * 1.001 || v142 >= (v140 - 1))
              {
LABEL_203:
                v264[0] = ++v142;
                goto LABEL_204;
              }
            }

            else if (v142 >= (v140 - 1))
            {
              goto LABEL_203;
            }

            if (v147 >= v143[12] * 0.99 && v143[2] <= v143[9] * 1.001)
            {
              goto LABEL_203;
            }
          }

          else
          {
            if (v144 || v142 < 1 || *(v143 + 1) - *v143 > 12)
            {
              goto LABEL_203;
            }

            v145 = v143[5];
            v146 = &v13[14 * v142];
            if (v145 <= *(v146 - 2) * 1.01)
            {
              if (v143[2] >= *(v146 - 5) * 0.999 || v142 >= (v140 - 1))
              {
                goto LABEL_203;
              }
            }

            else if (v142 >= (v140 - 1))
            {
              goto LABEL_203;
            }

            if (v145 <= v143[12] * 1.01 && v143[2] >= v143[9] * 0.999)
            {
              goto LABEL_203;
            }
          }

          *&v151 = sub_277977FA4(2, v13, &v261, v264).n128_u64[0];
          v142 = v264[0];
          sub_277977E08(a1, v264[0] - 1, v13, v151, v152, v153);
LABEL_204:
          v140 = v261;
          v154 = v142 >= v261 || v261 <= 1;
        }

        while (!v154);
      }
    }

    sub_277977D38(v13, &v261, 0, 7);
    sub_277977D38(v13, &v261, 1, 3);
    v158 = v261;
    if (v261 >= 1)
    {
      v159 = 0;
      do
      {
        sub_277977E08(a1, v159++, v13, v155, v156, v157);
      }

      while (v158 != v159);
      v160 = 0;
      v161 = 0;
      v264[0] = 0;
      v162 = &loc_277BB6000;
      do
      {
        v259 = v161;
        while (1)
        {
          v163 = &v13[14 * v160];
          if (!v163[12])
          {
            break;
          }

          v164 = *v163;
          if (v164 <= v163[1])
          {
            v165 = 0;
            v166 = 0;
            v167 = v260 + 232 * v164;
            do
            {
              if (v160 || v164 != *v163)
              {
                if (!*(v167 + 408) && (v164 < 1 || !*(v167 + 176)))
                {
                  v169 = *(v167 + 232);
                  v157.f64[0] = v169 - *v167;
                  v155 = vabdd_f64(v169, *v167) / fmax(v169, 0.01);
                  v170 = v157.f64[0] > 0.0 ? 1 : -1;
                  v156 = v162[267];
                  v171 = v155 <= v156 ? 0 : v170;
                  if (v165 != v171)
                  {
                    if (v165)
                    {
                      sub_277978088(v166, v164 - 1, 3, v13, &v261, v264);
                      v162 = &loc_277BB6000;
                      v160 = v264[0];
                    }

                    if (v160 || v164 != *v13 + 1)
                    {
                      v166 = v164;
                    }

                    else
                    {
                      v160 = 0;
                      v166 = (v164 - 1);
                    }

                    v165 = v171;
                  }
                }
              }

              else
              {
                v160 = 0;
              }

              v163 = &v13[14 * v160];
              v168 = v163[1];
              v167 += 232;
              v154 = v164++ < v168;
            }

            while (v154);
            if (v165)
            {
              sub_277978088(v166, v168, 3, v13, &v261, v264);
              v162 = &loc_277BB6000;
              v160 = v264[0];
            }
          }

          v264[0] = ++v160;
          v158 = v261;
          if (v160 >= v261)
          {
            v172 = v259 == 0;
            goto LABEL_245;
          }
        }

        v264[0] = ++v160;
        v161 = v259 + 1;
      }

      while (v160 < v158);
      v172 = 0;
LABEL_245:
      if (v158 >= 1)
      {
        for (i = 0; i != v158; ++i)
        {
          sub_277977E08(a1, i, v13, v155, v156, v157);
        }

        v174 = v158;
        v175 = (v13 + 12);
        do
        {
          if (*v175 == 3)
          {
            if (*(v175 - 11) == *(v175 - 12) || (v155 = *(v175 - 4), v156 = 0.6, v155 < 0.6 || v172))
            {
              *v175 = 1;
            }
          }

          v175 += 7;
          --v174;
        }

        while (v174);
        for (j = 0; j != v158; ++j)
        {
          sub_277977E08(a1, j, v13, v155, v156, v157);
        }

        v264[0] = 1;
        if (v158 != 1)
        {
          v213 = 1;
          while (1)
          {
            if (v213 < v158 - 1)
            {
              v214 = &v13[14 * v213];
              if (*(v214 + 12) == 1 && *(v214 - 2) == 3 && *(v214 + 26) == 3 && *(v214 + 1) - *v214 <= 2 && *(a1 + 232 * *(v214 - 13) + 16) <= *(v260 + 232 * *(v214 - 13)) && *(a1 + 232 * *(v214 + 15) + 16) > *(v260 + 232 * *(v214 + 15)))
              {
                v216 = *(v214 - 4);
                if (v216 >= v214[10])
                {
                  v216 = v214[10];
                }

                if (v214[3] > v216 * 0.95)
                {
                  break;
                }
              }
            }

            v217 = &v13[14 * v213];
            if (*(v217 - 2) == 3 && *(v217 + 12) == 3)
            {
              v218 = *(v217 + 1);
              v219 = *(v217 - 14);
              if (v218 - v219 > 2)
              {
                v220 = *(v217 - 13);
                v221 = a1 + 232 * v220;
                if (*(v221 + 16) <= *(v221 - 216) && *(a1 + 232 * v218 + 16) > *(v260 + 232 * v218))
                {
                  v223 = v220 - v219;
                  if (v223 > 1)
                  {
                    v227 = *(v221 + 32);
                    if (v227 <= *(v221 - 200))
                    {
                      v227 = *(v221 - 200);
                    }

                    v225 = *(a1 + 232 * v220 + 40) / fmax(v227, 0.001);
                    v226 = -(v225 - *(v217 - 4) * (v223 + 1)) / v223;
                    if (v226 >= *&v13[14 * v213 + 6])
                    {
                      v226 = *&v13[14 * v213 + 6];
                    }
                  }

                  else
                  {
                    v224 = *(v221 + 32);
                    if (v224 <= *(v221 - 200))
                    {
                      v224 = *(v221 - 200);
                    }

                    v225 = *(a1 + 232 * v220 + 40) / fmax(v224, 0.001);
                    v226 = *&v13[14 * v213 + 6];
                  }

                  if (v225 > v226 * 0.95)
                  {
                    v235 = 0;
LABEL_350:
                    *&v236 = sub_277977FA4(v235, v13, &v261, v264).n128_u64[0];
                    v213 = v264[0];
                    sub_277977E08(a1, v264[0] - 1, v13, v236, v237, v238);
                    goto LABEL_346;
                  }
                }

                v263 = v213 - 1;
                sub_277978088(v220, v220, 1, v13, &v261, &v263);
                v228 = v263;
                sub_277977E08(a1, v263, v13, v229, v230, v231);
                v213 = v228 + 1;
                sub_277977E08(a1, v213, v13, v232, v233, v234);
              }

              else
              {
                *(v217 - 2) = 1;
              }
            }

            v264[0] = ++v213;
LABEL_346:
            v158 = v261;
            if (v213 >= v261)
            {
              goto LABEL_257;
            }
          }

          *(v214 + 12) = 3;
          v235 = 2;
          goto LABEL_350;
        }
      }
    }

LABEL_257:
    sub_277977EF0(v13, &v261);
    v264[0] = 0;
    v177 = v261;
    v178 = v254;
    if (v261 > 1)
    {
      v179 = 0;
      while (1)
      {
        v180 = &v13[14 * v179];
        v181 = *(v180 + 12);
        if (v181 == 1)
        {
          v182 = 0;
          v183 = *(v180 + 1) - *v180 > 3;
        }

        else
        {
          v182 = v181 == 3 && *(v180 + 1) - *v180 < 4;
          v183 = 1;
        }

        if (v179 < 1)
        {
          break;
        }

        v184 = v13[14 * v179 - 2];
        if (!v184)
        {
          v186 = 1;
LABEL_275:
          v185 = v177 - 1;
          if (v179 >= v177 - 1)
          {
            v187 = 0;
            if (v182)
            {
              goto LABEL_285;
            }
          }

          else
          {
            v187 = *(v180 + 26) == 3;
            if (v182)
            {
              goto LABEL_285;
            }
          }

          goto LABEL_279;
        }

        v185 = v177 - 1;
        v186 = v179 < (v177 - 1) && *(v180 + 26) == 0;
        if (v184 != 3)
        {
          goto LABEL_275;
        }

        v187 = 1;
        if (v182)
        {
          goto LABEL_285;
        }

LABEL_279:
        v188 = v179 > 0;
        if (v179 < v185)
        {
          ++v188;
        }

        if (v187 + v186 < v188)
        {
          v183 = 1;
        }

        if (!v183)
        {
LABEL_285:
          v189 = 1.0;
          v190 = 1.0;
          if (v179 >= 1)
          {
            v190 = vabdd_f64(*&v13[14 * v179 + 4], *&v13[14 * v179 - 10]);
          }

          if (v179 < v185)
          {
            v189 = vabdd_f64(*&v13[14 * v179 + 4], v180[9]);
          }

          sub_277977FA4(v190 > v189, v13, &v261, v264);
          v179 = v264[0];
          v177 = v261;
          goto LABEL_290;
        }

        v264[0] = ++v179;
LABEL_290:
        if (v177 <= 1 || v179 >= v177)
        {
          goto LABEL_292;
        }
      }

      v186 = *(v180 + 26) == 0;
      goto LABEL_275;
    }

LABEL_292:
    sub_277977EF0(v13, &v261);
    v262 = 0;
    v191 = v261;
    if (v261 >= 1)
    {
      v192 = 0;
      do
      {
        v193 = &v13[14 * v192];
        if (!v193[12])
        {
          v195 = *v193;
          v194 = v193[1];
          if (v195 <= v194)
          {
            v196 = v194 + 1;
            v197 = (a1 + 192 + 232 * v195);
            do
            {
              v198 = *v197;
              v197 += 29;
              if (v198)
              {
                sub_277978088(v195, v195, 1, v13, &v261, &v262);
              }

              v195 = (v195 + 1);
            }

            while (v196 != v195);
            v191 = v261;
            v192 = v262;
          }
        }

        v262 = ++v192;
      }

      while (v192 < v191);
    }

    sub_277977EF0(v13, &v261);
    v202 = v261;
    v203 = v261 - 1;
    if (v261 < 1)
    {
      v203 = 0;
      v19 = a2;
      v204 = v258;
      v22 = &loc_277BB6000;
      v209 = v257;
    }

    else
    {
      v204 = v258;
      v205 = v254 + 56 * v258;
      v206 = v13;
      v207 = (v261 - 1);
      v208 = v261;
      v19 = a2;
      v22 = &loc_277BB6000;
      v209 = v257;
      while (v206[1] >= *v206 || v207 != 0)
      {
        v199 = *v206;
        v200 = *(v206 + 1);
        v201 = *(v206 + 2);
        *(v205 + 48) = *(v206 + 6);
        *(v205 + 16) = v200;
        *(v205 + 32) = v201;
        *v205 = v199;
        v205 += 56;
        --v207;
        v206 += 14;
        if (!--v208)
        {
          v203 = v202;
          goto LABEL_312;
        }
      }

      v202 = v203;
    }

LABEL_312:
    v262 = v203;
    v211 = v202 + v204;
    if (v209 < 0)
    {
      break;
    }

    v212 = (v254 + 56 * v211);
    v212[12] = 2;
    *v212 = v209;
    v212[1] = v209;
    v17 = v211 + 1;
    v18 = v209 + 1;
    v20 = a2 - 1;
    v23 = &loc_277BB6000;
    v24 = &loc_277BB6000;
  }

  *v252 = v211;
  if (v211 >= 1)
  {
    for (k = 0; k != v211; ++k)
    {
      sub_277977E08(a1, k, v254, *&v199, *&v200, v201);
    }

    v240 = *v252;
    v178 = v254;
    if (*v252 >= 1)
    {
      v241 = 0;
      v242 = (v254 + 48);
      do
      {
        if (*v242 == 2 && *(v242 - 4) * (1.0 - *(a1 + 232 * *(v242 - 12) + 200) / *(v242 - 2)) >= 0.8)
        {
          *v242 = 1;
          v240 = *v252;
        }

        ++v241;
        v242 += 7;
      }

      while (v241 < v240);
    }
  }

  sub_277977EF0(v178, v252);
  v246 = *v252;
  if (*v252 >= 1)
  {
    v247 = v178;
    v248 = 0;
    do
    {
      sub_277977E08(a1, v248++, v247, v243, v244, v245);
    }

    while (v246 != v248);
    if (*v252 >= 1)
    {
      v249 = 0;
      v250 = vdup_n_s32(v251);
      do
      {
        *v247 = vadd_s32(*v247, v250);
        v247 += 7;
        ++v249;
      }

      while (v249 < *v252);
    }
  }

  sub_277977CBC(v13, v14, v15, v255);
  return 0;
}

uint64_t *sub_277975AF0(uint64_t *result, int a2, int a3)
{
  v143 = *MEMORY[0x277D85DE8];
  v3 = result + 98773;
  v4 = *result;
  v5 = *result + 35604;
  v6 = *(result + 98778);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  v8 = *(*result + 23172);
  if (*(result + 68045) | v8)
  {
    v9 = result[80567];
    v10 = *(result + 61418);
    v11 = *(result + 61419);
    v126 = v9 + 232 * v7;
    v13 = *(result + 98774);
    v12 = *(result + 98775);
    v14 = v6 == 0;
    v15 = *(*result + 23168);
    if (v12 >= a2)
    {
      v12 = a2;
    }

    v127 = v12;
    v16 = 0uLL;
    memset(&v142[32], 0, 28);
    if (v13 <= 6)
    {
      v17 = 6;
    }

    else
    {
      v17 = v13;
    }

    v116 = v17;
    v114 = v8;
    memset(v142, 0, 32);
    v141 = -1;
    v133 = 0.0;
    memset(v138, 0, sizeof(v138));
    v131 = 0uLL;
    v132 = 0uLL;
    __asm { FMOV            V7.2D, #1.0 }

    v134 = _Q7;
    v135 = _Q7;
    v136 = 0uLL;
    v137 = 0uLL;
    if (_ZF)
    {
      v23 = 2;
    }

    else
    {
      v23 = a3 + 1;
    }

    v128 = v23;
    *v138 = 0uLL;
    if (v15)
    {
      v24 = -1;
    }

    else
    {
      v24 = 0;
    }

    memset(&v138[16], 0, 20);
    v25 = (v5 + 108);
    v118 = v11;
    v119 = v10;
    v130 = (v5 + 112);
    v26 = vcvtd_n_f64_s32(v10 + v11, 2uLL);
    v124 = v4 + 35772;
    v122 = v9 + 232 * v7;
    v27 = v9;
    v28 = 1;
    v129 = *(result + 98777);
    v125 = v4;
    v123 = v6;
    v120 = v9;
    v121 = v5;
    v117 = _Q7;
    while (1)
    {
      if (v129 <= v14)
      {
        goto LABEL_24;
      }

      v29 = v14 - v24;
      if (v14 - v24 >= v3[3])
      {
        goto LABEL_38;
      }

      v30 = *(*(v4 + 23888) + 8);
      if (v27 >= v30)
      {
LABEL_24:
        v45 = 1;
        goto LABEL_39;
      }

      v31 = *v27;
      v32 = *(v27 + 32);
      v139[1] = *(v27 + 16);
      v139[2] = v32;
      v139[0] = v31;
      v33 = *(v27 + 48);
      v34 = *(v27 + 64);
      v35 = *(v27 + 96);
      v139[5] = *(v27 + 80);
      v139[6] = v35;
      v139[3] = v33;
      v139[4] = v34;
      v36 = *(v27 + 112);
      v37 = *(v27 + 128);
      v38 = *(v27 + 160);
      v139[9] = *(v27 + 144);
      v139[10] = v38;
      v139[7] = v36;
      v139[8] = v37;
      v39 = *(v27 + 176);
      v40 = *(v27 + 192);
      v41 = *(v27 + 208);
      v140 = *(v27 + 224);
      v139[12] = v40;
      v139[13] = v41;
      v139[11] = v39;
      v42 = v27 + 232;
      v43 = result;
      result[80567] = v27 + 232;
      if (v27 + 232 >= v30)
      {
        break;
      }

      v44 = *(v27 + 296);
      if (v44 <= *(v27 + 280))
      {
        break;
      }

      v115 = v44 >= 0.5;
      sub_277977B04(v139, v44 >= 0.5, v6, v14, &v131, v119, v118);
      if (v44 < 0.5)
      {
        goto LABEL_26;
      }

LABEL_28:
      result = v43;
      v9 = v120;
      v5 = v121;
      v4 = v125;
      v6 = v123;
      v16 = 0uLL;
      _Q7 = v117;
      if (v29 >= v13 && v129 - v14 >= v13)
      {
        v46 = v115;
        if ((v29 & 1) == 0)
        {
          v46 = 1;
        }

        if ((v46 & 1) == 0)
        {
          v45 = 0;
          if (v133 > v26 || *&v137 > 4.4)
          {
            goto LABEL_39;
          }
        }
      }

      if (v29 <= v127)
      {
        goto LABEL_156;
      }

      v45 = v114;
      if (v114)
      {
        if (*(&v134 + 1) >= 0.999)
        {
          goto LABEL_156;
        }

LABEL_38:
        v45 = 0;
        goto LABEL_39;
      }

      if (*(&v134 + 1) >= 0.995 && *v121 > 98)
      {
LABEL_156:
        v56 = v14;
        goto LABEL_142;
      }

LABEL_39:
      v47 = v14 - 1;
      v48 = v6 - *(v4 + 44112);
      v49 = *(v5 + 100);
      if (v14 - 1 <= v24)
      {
        v56 = v14 - 1;
      }

      else if (v14 - 1 - v24 > v127)
      {
        v56 = v14 - 1;
      }

      else
      {
        v50 = v48 + v24;
        if (v49 <= 0)
        {
          v54 = v48 + v47;
          LODWORD(v51) = -1;
LABEL_55:
          LODWORD(v53) = -1;
        }

        else
        {
          v51 = 0;
          v52 = v130;
          while (*(v52 - 1) > v50 || *v52 < v50)
          {
            ++v51;
            v52 += 14;
            if (v49 == v51)
            {
              LODWORD(v51) = -1;
              break;
            }
          }

          v53 = 0;
          v54 = v48 + v47;
          v55 = v130;
          while (*(v55 - 1) > v54 || *v55 < v54)
          {
            ++v53;
            v55 += 14;
            if (v49 == v53)
            {
              goto LABEL_55;
            }
          }
        }

        if (v50)
        {
          v57 = v51;
        }

        else
        {
          v57 = 0;
        }

        v58 = v53 - v57;
        if (v53 <= v57)
        {
          LODWORD(v59) = -1;
        }

        else
        {
          v59 = v57 + 1;
          v60 = (v124 + 56 * v57);
          while (v60[11] != 2 || *v60 - v50 <= v13)
          {
            ++v59;
            v60 += 14;
            if (v59 - v53 == 1)
            {
              LODWORD(v59) = -1;
              break;
            }
          }
        }

        v61 = v25[14 * v49 - 13];
        if (v59 == -1 || (v62 = v25[14 * v59 + 1], v61 - v62 < 4))
        {
          v63 = v53 == v49 - 1 && v54 == v25[14 * v53 + 1];
          if (v25[14 * v57 + 12] == 2)
          {
            v64 = 2;
          }

          else
          {
            v64 = 1;
          }

          if (!v63 || (v56 = v14 - 1, v58 > v64))
          {
            v65 = v61 - v48;
            v66 = *(v4 + 23888);
            v67 = v66[1];
            v68 = v24 + 1;
            v69 = v24 + v116;
            v70 = v122 + 232 * v68;
            v71 = 0.0;
            do
            {
              if (v70 >= v67)
              {
                break;
              }

              v71 = (v71 + 1.0) * *(v70 + 208);
              ++v68;
              v70 += 232;
            }

            while (v68 < v69);
            if (v69 >= v14)
            {
              v95 = 0;
              v78 = -1;
            }

            else
            {
              v72 = result;
              v73 = 0;
              v74 = 0;
              v75 = v65;
              v76 = 0.0;
              v77 = v122 + 232 + 232 * v69;
              v78 = -1;
              v79 = (v122 + 232 * v69);
              do
              {
                v80 = v126 + 232 * v69;
                if (v80 >= v67)
                {
                  break;
                }

                v71 = (v71 + 1.0) * *(v80 + 208);
                if (v49 >= 1)
                {
                  v81 = 0;
                  v82 = v48 + v69;
                  v83 = v130;
                  while (*(v83 - 1) > v82 || *v83 < v82)
                  {
                    ++v81;
                    v83 += 14;
                    if (v49 == v81)
                    {
                      goto LABEL_115;
                    }
                  }

                  if (v25[14 * v81 + 12] == 3)
                  {
                    if (v74)
                    {
                      break;
                    }

                    v73 = 1;
                    v71 = 0.0;
                  }

                  else
                  {
                    if (v73)
                    {
                      v74 = 1;
                    }

                    v84 = v71 * 0.1;
                    if (v69 >= v75)
                    {
                      LODWORD(v85) = 0;
                    }

                    else
                    {
                      v85 = 0;
                      v86 = v69 + 3;
                      if (v69 + 3 >= v75)
                      {
                        v86 = v75;
                      }

                      v87 = 1.0;
                      v88 = v77;
                      do
                      {
                        if (v88 >= v67)
                        {
                          break;
                        }

                        v87 = v87 * v88[26];
                        v89 = 1.0 - v88[25] / fmax(v88[2], 0.001);
                        if (v89 < 0.5)
                        {
                          v89 = 0.5;
                        }

                        v84 = v84 + v87 * sqrt(v89);
                        ++v85;
                        v88 += 29;
                      }

                      while (v69 + v85 < v86);
                    }

                    v90 = v69 + v85 - 6;
                    if (v90 <= *v25 - v48)
                    {
                      v90 = *v25 - v48;
                    }

                    if (v69 > v90)
                    {
                      v91 = 1.0;
                      v92 = v79;
                      v93 = v69;
                      do
                      {
                        if (v92 < *v66)
                        {
                          break;
                        }

                        v91 = v91 * v92[26];
                        v94 = 1.0 - v92[25] / fmax(v92[2], 0.001);
                        if (v94 < 0.5)
                        {
                          v94 = 0.5;
                        }

                        v84 = v84 + v91 * sqrt(v94);
                        --v93;
                        v92 -= 29;
                      }

                      while (v93 > v90);
                    }

                    v73 = 0;
                    if (v84 > v76)
                    {
                      v76 = v84;
                      v78 = v69;
                    }
                  }
                }

LABEL_115:
                ++v69;
                v77 += 232;
                v79 += 29;
              }

              while (v69 != v14);
              v95 = v76 > 0.1;
              result = v72;
              v4 = v125;
              v6 = v123;
            }

            if (v49 >= 1)
            {
              v96 = 0;
              v97 = v78 + v48;
              v98 = v130;
              while (*(v98 - 1) > v97 || *v98 < v97)
              {
                ++v96;
                v98 += 14;
                if (v49 == v96)
                {
                  goto LABEL_123;
                }
              }

              if (v96)
              {
                if (v49 - 1 > v96)
                {
                  v103 = &v25[14 * v96];
                  if (*(v103 - 2) == 3 && v103[26] == 3)
                  {
                    v105 = *v103;
                    v104 = v103[1];
                    if (v97 == v105 && v97 < v104)
                    {
                      ++v78;
                    }

                    else if (v97 == v104)
                    {
                      v78 -= v97 > v105;
                    }
                  }
                }
              }
            }

LABEL_123:
            if (v47 - v78 >= 2)
            {
              v99 = v78;
            }

            else
            {
              v99 = v14 - 1;
            }

            if (v99 > 0 && v95)
            {
              v56 = v99;
            }

            else
            {
              v56 = v14 - 1;
            }
          }
        }

        else
        {
          v56 = v62 - v48 - (*&v25[14 * v59 + 4] * (1.0 - *(v126 + 232 * (v25[14 * v59] - v48) + 200) / *&v25[14 * v59 + 8]) <= 0.6);
        }
      }

      *&v142[4 * v28 - 4] = v56;
      v42 = v9 + 232 * v56;
      result[80567] = v42;
      v24 = v56;
      if (v49 >= 1)
      {
        v100 = 0;
        v101 = v56 + 1 + v48;
        v102 = v130;
        while (*(v102 - 1) > v101 || *v102 < v101)
        {
          ++v100;
          v102 += 14;
          if (v49 == v100)
          {
            v24 = v56;
            goto LABEL_138;
          }
        }

        if (v25[14 * v100 + 12] == 2)
        {
          v24 = v56 + 1;
        }

        else
        {
          v24 = v56;
        }
      }

LABEL_138:
      ++v28;
      if (v56 != v47)
      {
        v45 = 0;
      }

      if (v45)
      {
LABEL_163:
        *v3 = v28 - 1;
        if (v28 >= 2)
        {
          v109 = (v5 + 36);
          v110 = v141;
          v111 = v28 - 1;
          v112 = v142;
          do
          {
            v113 = *v112++;
            *v109++ = v113 - v110;
            v110 = v113;
            --v111;
          }

          while (v111);
        }

        *(v5 + 96) = 0;
        result[80567] = v9;
        return result;
      }

      v133 = 0.0;
      v131 = v16;
      v132 = v16;
      v134 = _Q7;
      v135 = _Q7;
      v136 = v16;
      v137 = v16;
      *v138 = v16;
      *&v138[16] = v16;
      *&v138[32] = 0;
LABEL_142:
      v14 = v56 + 1;
      v27 = v42;
      if (v28 >= v128)
      {
        goto LABEL_163;
      }
    }

    sub_277977B04(v139, 0, v6, v14, &v131, v119, v118);
    v115 = 0;
LABEL_26:
    if (sub_277977C10(v125 + 23896, 1332920885 * ((v42 - **(v125 + 23888)) >> 3), v13, v14 - v24, 5, *&v135, *(&v135 + 1)))
    {
      v45 = 0;
      result = v43;
      v9 = v120;
      v5 = v121;
      v4 = v125;
      v6 = v123;
      v16 = 0uLL;
      _Q7 = v117;
      goto LABEL_39;
    }

    goto LABEL_28;
  }

  for (i = 0; i != 60; i += 4)
  {
    v108 = *(result + 98775);
    if (v108 >= a2)
    {
      v108 = a2;
    }

    *(v4 + 35640 + i) = v108;
  }

  *(v5 + 96) = 0;
  *v3 = 15;
  return result;
}

void sub_277976540(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = (a1 + 80524);
  v6 = a1 + 57929;
  v7 = (a1 + 49386);
  v8 = a1 + 67813;
  v9 = (a1 + 30709);
  v10 = *a1;
  v11 = a1[80567];
  v12 = (*a1 + 400);
  v68 = *(a1 + 61419);
  v69 = *(a1 + 61418);
  v13 = *(a1 + 98778);
  v71 = v13 == 0;
  *(*a1 + 392) = *(a1 + 67856) > 1;
  if (v13)
  {
    bzero(v12, 0x58F0uLL);
    *(v6 + 24) = 0;
  }

  v70 = v6;
  v75 = 0;
  v14 = 0uLL;
  memset(v74, 0, sizeof(v74));
  v15 = v8[232];
  if (v15)
  {
    v16 = *a1;
    if (v15 == 3 && *(v5 + 48))
    {
      v72 = a2;
      v92 = 0;
      v90 = 0uLL;
      v91 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      v86 = 0uLL;
      v87 = 0uLL;
      v84 = 0uLL;
      v85 = 0uLL;
      v82 = 0uLL;
      v83 = 0uLL;
      v80 = 0uLL;
      v81 = 0uLL;
      v78 = 0uLL;
      v79 = 0uLL;
      v17 = *(v5 + 43);
      v18 = *v9;
      v19 = v9[1];
      v77 = 0;
      v20 = v7[6];
      v21 = v20 == 0;
      *(v16 + 392) = v8[43] > 1;
      if (v20)
      {
        bzero((v16 + 400), 0x58F0uLL);
        v14 = 0uLL;
        *(v70 + 24) = 0;
      }

      v76[7] = v14;
      v76[8] = v14;
      v76[5] = v14;
      v76[6] = v14;
      v76[3] = v14;
      v76[4] = v14;
      v76[1] = v14;
      v76[2] = v14;
      v76[0] = v14;
      sub_277976DFC(a1, v21, v18, v19, &v78, v17, v76, &v77);
      *(v16 + 3156) = v8[43];
      v22 = v77;
      if (a3)
      {
        --v7[1];
        ++*(v16 + 35700);
      }

      v23 = v7[5] <= v22;
      *(v16 + 44120) = v22;
      *(v16 + 44124) = v23;
      *v7 = v22;
      sub_277A80C80(a1);
      sub_27797718C(a1, v22, v21, a3, 1, 0, v17, v76);
      v24 = *(v5 + 48);
      *(v72 + 4) = *(v24 + 184);
      *(v72 + 16) = *(v24 + 156);
      return;
    }

    v67 = v12;
    v25 = a2;
    if (!*(v16 + 23172))
    {
LABEL_19:
      LODWORD(v76[0]) = 0;
      v85 = 0uLL;
      v86 = 0uLL;
      v28 = v10 + 11030;
      v29 = v10 + 8901;
      v83 = 0uLL;
      v84 = 0uLL;
      v81 = 0uLL;
      v82 = 0uLL;
      v79 = 0uLL;
      v80 = 0uLL;
      v78 = 0uLL;
      sub_277976DFC(a1, v71, v69, v68, v74, v11, &v78, v76);
      v30 = v8[42];
      v31 = v7[2];
      v32 = *&v81;
      if (v30 <= 1 && *&v81 > 0.95 && *&v84 < 40.0 && *&v86 < 2000.0)
      {
        *(*a1 + 392) = 0;
      }

      if (v30)
      {
        v33 = v10[11047];
        if (v33)
        {
          v33 = 0;
          if (SLODWORD(v76[0]) < v8[39])
          {
            v34 = 0;
            if (SLODWORD(v76[0]) < 3)
            {
LABEL_46:
              v10[789] = v33;
              if ((v8[10] == 3 && v8[9] < 129 || !*(*a1 + 392)) && (!v8[8] ? (v40 = v8[7] != 0) : (v40 = 1), (v34 & v40) == 1))
              {
                v41 = v7[5];
                v42 = v41 - LODWORD(v76[0]);
                v44 = v41 == LODWORD(v76[0]) && SLODWORD(v76[0]) > 4;
                v45 = SLODWORD(v76[0]) >= 10 && v42 <= 7 && v42 + 1 >= v31;
                v46 = 0;
                if ((v44 || v45) && SLODWORD(v76[0]) > v31 + 1)
                {
                  --LODWORD(v76[0]);
                  if (a3)
                  {
                    v7[1] = 0;
                  }

                  v52 = &v10[v10[8925]];
                  --v52[8910];
                  *(v5 + 43) = v11;
                  sub_277976DFC(a1, v71, v69, v68, v74, v11, &v78, v76);
                  v46 = -1;
                }
              }

              else
              {
                v46 = 0;
              }

              v47 = v76[0];
              if (a3)
              {
                --v7[1];
                ++v29[24];
              }

              v48 = v7[5] <= v47;
              *v28 = v47;
              v28[1] = v48;
              *v7 = v47;
              sub_277A80C80(a1);
              sub_27797718C(a1, v47, v71, a3, v34, v46, v11, &v78);
              *(v25 + 4) = v7[6] != 0;
              v49 = v67[*(v70 + 24)];
              v51 = v49 != 3 && v49 != 6;
              *(v25 + 16) = v51;
              return;
            }

LABEL_42:
            v33 = v8[43];
            v34 = 1;
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        goto LABEL_43;
      }

      if (*(*a1 + 23172))
      {
        if (v32 < 0.999)
        {
          goto LABEL_39;
        }
      }

      else if (v32 < 0.995 || *v29 <= 98)
      {
LABEL_39:
        v33 = v10[11047];
        if (v33)
        {
          v33 = 0;
          if (SLODWORD(v76[0]) < v8[39])
          {
            v34 = 0;
            if (SLODWORD(v76[0]) <= 3)
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }

LABEL_45:
          v34 = 0;
          goto LABEL_46;
        }

LABEL_43:
        v34 = 0;
        goto LABEL_46;
      }

      v33 = 0;
      goto LABEL_43;
    }

LABEL_14:
    v26 = *(v16 + 368) + 16 * *v5;
    v27 = *(v26 + 8);
    if (v27 < *(v26 + 16) || (v27 = *(v16 + 23476), v27 >= 1))
    {
      if (v7[5] < v27)
      {
        v27 = v7[5];
      }

      v7[5] = v27;
    }

    goto LABEL_19;
  }

  v16 = *a1;
  if (*(*a1 + 23172))
  {
    v67 = v12;
    v25 = a2;
    goto LABEL_14;
  }

  v35 = (v16 + 44120);
  if (*(v8 + 76) == 3)
  {
    v36 = **v70;
    if (v36 < 1)
    {
      v37 = 80;
    }

    else
    {
      v37 = 0x64u / v36 * *(&qword_277BB6AA8 + v7[371]);
      if (v37 >= 160)
      {
        v37 = 160;
      }
    }

    v53 = v7[45];
    if (v53 < 40 && v53 != 0)
    {
      v37 = 16;
    }

    *v35 = v37;
    v39 = *a1;
  }

  else
  {
    v38 = *(v16 + 35700);
    v37 = *(v16 + 4 * v38 + 35640);
    *v35 = v37;
    --v7[1];
    *(v16 + 35700) = v38 + 1;
    v39 = v16;
  }

  v55 = *(v39 + 368) + 16 * *v5;
  v56 = *(v55 + 8);
  if (v56 >= *(v55 + 16) && (v56 = *(v39 + 23476), v56 <= 0))
  {
    v57 = v7[5];
  }

  else
  {
    v57 = v7[5];
    if (v57 >= v56)
    {
      v57 = v56;
    }

    v7[5] = v57;
  }

  if (v37 > v57)
  {
    *v35 = v57;
    v37 = v57;
  }

  *(v16 + 35636) = 2000;
  *(v16 + 44124) = v37 >= v57;
  *(v16 + 3156) = v8[43];
  v58 = v8[39];
  if (v37 > v58 || v58 < 3 || (v8[44] & 1) == 0 || v37 < v7[2])
  {
    *(v16 + 3156) = 0;
  }

  sub_277A80C80(a1);
  if (*(v16 + 6664) >= 1)
  {
    v59 = 1290;
    do
    {
      v60 = *(v16 + v59 - 890);
      if (v8[10] == 1)
      {
        if (*(v16 + v59 - 890))
        {
          v61 = sub_277A5BFDC(a1, v60);
        }

        else
        {
          v61 = sub_277A5C184(a1);
        }
      }

      else if (*(v16 + v59 - 890))
      {
        v61 = sub_277A5BF0C(a1, v60);
      }

      else
      {
        v63 = v7[24];
        v64 = 25 * v63;
        v65 = *v8;
        if (v65)
        {
          v66 = v65 * v63 / 100;
          if (v66 < v64)
          {
            v64 = v66;
          }
        }

        if (v64 >= v7[26])
        {
          v61 = v7[26];
        }

        else
        {
          v61 = v64;
        }
      }

      *(v16 + 4 * v59) = v61;
      v62 = v59 - 1289;
      ++v59;
    }

    while (v62 < *(v16 + 6664));
  }
}

BOOL sub_277976CD4(int *a1, uint64_t a2)
{
  v4 = a1 + 98778;
  v5 = *a1;
  v6 = a1[98864];
  sub_277A260F8(a1, a2);
  if (v6 == 2)
  {
    return (50 * *(v5 + 44176)) * 1.4 > *(v5 + 35636) && sub_277A261CC(a1, 3, a2) == 0;
  }

  else
  {
    if (*v4 < 1)
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = *(*a1 + 6660) >> 31;
    }

    if (v6 != 1 || (v9 = sub_277A261CC(a1, 2, a2), result = v9 == 0, v9 == 2))
    {
      v10 = sub_277A261CC(a1, 1, a2) == 0;
      result = v10;
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8;
      }

      if ((v11 & 1) == 0)
      {
        result = 0;
        a1[68232] = 1;
      }
    }
  }

  return result;
}

void sub_277976DFC(uint64_t *a1, int a2, int a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, int *a8)
{
  v11 = a2;
  v13 = *a1;
  *(a7 + 32) = 0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  *(a7 + 40) = _Q1;
  *(a7 + 56) = _Q1;
  v19 = v13 + 0x8000;
  *(a7 + 72) = 0u;
  *(a7 + 88) = 0u;
  *(a7 + 104) = 0u;
  *(a7 + 120) = 0u;
  *(a7 + 136) = 0;
  *(a5 + 224) = 0;
  *(a5 + 192) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v20 = *(v13 + 35700);
  v70 = v13;
  v71 = v13 + 35640;
  if (*(v13 + 35640 + 4 * v20) <= a2)
  {
    v22 = *(v13 + 23888);
  }

  else
  {
    v21 = a1[80567];
    v22 = *(v13 + 23888);
    if (v21 < *(v22 + 8))
    {
      v23 = a2;
      while (1)
      {
        v24 = *v21;
        v25 = *(v21 + 32);
        *(a5 + 16) = *(v21 + 16);
        *(a5 + 32) = v25;
        *a5 = v24;
        v26 = *(v21 + 48);
        v27 = *(v21 + 64);
        v28 = *(v21 + 96);
        *(a5 + 80) = *(v21 + 80);
        *(a5 + 96) = v28;
        *(a5 + 48) = v26;
        *(a5 + 64) = v27;
        v29 = *(v21 + 112);
        v30 = *(v21 + 128);
        v31 = *(v21 + 160);
        *(a5 + 144) = *(v21 + 144);
        *(a5 + 160) = v31;
        *(a5 + 112) = v29;
        *(a5 + 128) = v30;
        v32 = *(v21 + 176);
        v33 = *(v21 + 192);
        v34 = *(v21 + 208);
        *(a5 + 224) = *(v21 + 224);
        *(a5 + 192) = v33;
        *(a5 + 208) = v34;
        *(a5 + 176) = v32;
        v21 = a1[80567] + 232;
        a1[80567] = v21;
        v22 = *(v13 + 23888);
        v35.f64[0] = sub_277973FD8((a1 + 57933), *(v22 + 24), a5, *(a1 + 67824), *(v19 + 2776), *(v19 + 2784));
        v35.f64[1] = *(a5 + 32);
        v36 = *(a7 + 16);
        *a7 = vaddq_f64(v35, *a7);
        *(a7 + 16) = vaddq_f64(*(a5 + 80), v36);
        ++v23;
        v20 = *(v19 + 2932);
        if (v23 >= *(v71 + 4 * v20))
        {
          break;
        }

        v13 = v70;
        if (v21 >= *(v22 + 8))
        {
          goto LABEL_9;
        }
      }

      v13 = v70;
    }
  }

LABEL_9:
  a1[80567] = a6;
  if (*(v22 + 8) > a6)
  {
    v37 = *a6;
    v38 = *(a6 + 32);
    *(a5 + 16) = *(a6 + 16);
    *(a5 + 32) = v38;
    *a5 = v37;
    v39 = *(a6 + 48);
    v40 = *(a6 + 64);
    v41 = *(a6 + 96);
    *(a5 + 80) = *(a6 + 80);
    *(a5 + 96) = v41;
    *(a5 + 48) = v39;
    *(a5 + 64) = v40;
    v42 = *(a6 + 112);
    v43 = *(a6 + 128);
    v44 = *(a6 + 160);
    *(a5 + 144) = *(a6 + 144);
    *(a5 + 160) = v44;
    *(a5 + 112) = v42;
    *(a5 + 128) = v43;
    v45 = *(a6 + 176);
    v46 = *(a6 + 192);
    v47 = *(a6 + 208);
    *(a5 + 224) = *(a6 + 224);
    *(a5 + 192) = v46;
    *(a5 + 208) = v47;
    *(a5 + 176) = v45;
    a6 = a1[80567] + 232;
    a1[80567] = a6;
    LODWORD(v20) = *(v19 + 2932);
  }

  v48 = *(v71 + 4 * v20);
  if (v48 > v11 && a6 < *(*(v13 + 23888) + 8))
  {
    do
    {
      v49 = *a6;
      v50 = *(a6 + 32);
      *(a5 + 16) = *(a6 + 16);
      *(a5 + 32) = v50;
      *a5 = v49;
      v51 = *(a6 + 48);
      v52 = *(a6 + 64);
      v53 = *(a6 + 96);
      *(a5 + 80) = *(a6 + 80);
      *(a5 + 96) = v53;
      *(a5 + 48) = v51;
      *(a5 + 64) = v52;
      v54 = *(a6 + 112);
      v55 = *(a6 + 128);
      v56 = *(a6 + 160);
      *(a5 + 144) = *(a6 + 144);
      *(a5 + 160) = v56;
      *(a5 + 112) = v54;
      *(a5 + 128) = v55;
      v57 = *(a6 + 176);
      v58 = *(a6 + 192);
      v59 = *(a6 + 208);
      *(a5 + 224) = *(a6 + 224);
      *(a5 + 192) = v58;
      *(a5 + 208) = v59;
      *(a5 + 176) = v57;
      v60 = a1[80567];
      a1[80567] = v60 + 232;
      v62 = (v60 + 232) < *(*(v13 + 23888) + 8) && (v61 = *(v60 + 296), v61 > *(v60 + 280)) && v61 >= 0.5;
      sub_277977B04(a5, v62, *(a1 + 98778), v11++, a7, a3, a4);
      v48 = *(v71 + 4 * *(v19 + 2932));
      if (v11 >= v48)
      {
        break;
      }

      a6 = a1[80567];
      v13 = v70;
    }

    while (a6 < *(*(v70 + 23888) + 8));
  }

  if (v48)
  {
    v63 = vdupq_lane_s64(COERCE__INT64(v48), 0);
    v64 = vdivq_f64(*(a7 + 96), v63);
    v65 = vdivq_f64(*(a7 + 112), v63);
    *(a7 + 96) = v64;
    *(a7 + 112) = v65;
  }

  v66 = *(a7 + 136);
  if (v66)
  {
    *(a7 + 128) = *(a7 + 128) / v66;
  }

  *a8 = v48;
}

double sub_27797718C(int *a1, int a2, int a3, int a4, int a5, int a6, unint64_t a7, double *a8)
{
  v88 = *MEMORY[0x277D85DE8];
  v11 = a1 + 98777;
  v12 = a1 + 67820;
  v13 = *a1;
  v14 = (*a1 + 44120);
  v15 = *a1 + 35576;
  v16 = a2 - a3;
  if (!a5)
  {
    *(a1 + 80567) = a7;
    v21 = sub_2779727CC(v13 + 23480, a1 + 80567, v13 + 35624, a1 + 115866, a6, v16, 0, (v13 + 44176), (v13 + 44180), *(v13 + 23172));
    v22 = 5400;
    if (v21 <= 5400)
    {
      v22 = sub_2779727CC(v13 + 23480, a1 + 80567, v13 + 35624, a1 + 115866, a6, v16, 0, (v13 + 44176), (v13 + 44180), *(*a1 + 23172));
    }

    v19 = v15;
    *(v15 + 60) = v22;
    v20 = 1065353216;
    goto LABEL_13;
  }

  v17 = *v11 - a2;
  if (v17 >= v16)
  {
    v18 = a2 - a3;
  }

  else
  {
    v18 = v17 & ~(v17 >> 31);
  }

  *(v15 + 60) = sub_2779727CC(v13 + 23480, a1 + 80567, v13 + 35624, a1 + 115866, a6, v18, v16, (v13 + 44176), (v13 + 44180), *(v13 + 23172));
  v14[11] = 1065353216;
  v19 = v15;
  if ((v12[1] || *v12) && (*v11 == v16 || *v11 - v16 == 1))
  {
    v20 = 1045220557;
LABEL_13:
    v14[11] = v20;
  }

  *(a1 + 80567) = a7;
  v23 = *a1;
  v24 = *a1 + 35568;
  if (*(*a1 + 23172))
  {
    v25 = *v14;
    *a8 = v25;
  }

  else
  {
    v25 = *a8;
  }

  v26 = v12[6] * v11[19];
  if (v26 >= -99)
  {
    v27 = v26 / 100;
    if (v27 >= v11[21])
    {
      v27 = v11[21];
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = *v24;
  if (*v24 < 1 || (v29 = *(v24 + 8), v29 <= 0.0))
  {
    v30 = 0;
  }

  else
  {
    v30 = (v25 / v29 * v28);
    if (v30 < 0)
    {
      v30 = 0;
      goto LABEL_28;
    }
  }

  if (v30 >= v28)
  {
    v30 = v28;
  }

LABEL_28:
  v31 = v27 * *(v23 + 44120);
  if (v30 < v31)
  {
    v31 = v30;
  }

  *(v13 + 35624) = v31;
  if (v12[3] == 3 || !a4 || (v34 = *v14, v34 < 2))
  {
    if (!a4)
    {
      v32 = v19;
      v33 = 1;
      goto LABEL_40;
    }
  }

  else
  {
    v35 = sub_2779777C4(a1, v31 / v34, a8[1] / v34, a8[2] / v34 + (a8[3] + a8[3]) / (v34 * a1[61534]));
    if (v35 <= v11[39] >> 1)
    {
      v36 = v11[39] >> 1;
    }

    else
    {
      v36 = v35;
    }

    v11[39] = v36;
    v25 = *a8;
  }

  v33 = 0;
  v32 = v19;
  *v19 = *v19 - v25;
LABEL_40:
  *(a1 + 80567) = a7;
  v37 = v11[1];
  if (v37)
  {
    v38 = *(*(v13 + 23888) + 8);
    v39 = 0.0;
    if (v38 <= a7)
    {
      v40 = 0.0;
    }

    else
    {
      v40 = 0.0;
      if (*v14 >= 1)
      {
        v41 = a7 + 232;
        v42 = 1;
        do
        {
          v39 = v39 + *(v41 - 216);
          v40 = v40 + *(v41 - 200);
          if (v41 >= v38)
          {
            break;
          }

          v41 += 232;
        }

        while (v42++ < *v14);
      }
    }

    *(v13 + 23480) = (v39 / (v40 + dbl_277BB7020[v40 < 0.0]));
  }

  v44 = v37 == 0;
  v45 = *(v13 + 35624);
  v46 = *a1;
  v47 = sub_277972F1C((__PAIR64__(*(*a1 + 44120), v37) - 1) >> 32, *(*a1 + 35636), v45);
  v48 = sub_277972F7C(a1, (a1 + 98766), v47, v45, 1);
  v50 = *(v13 + 6664);
  memset(v86, 0, sizeof(v86));
  v87 = 0;
  if (a5)
  {
    v51 = v48;
  }

  else
  {
    v51 = 0;
  }

  LODWORD(v52) = (__PAIR64__(*(v46 + 44120), v11[1]) - 1) >> 32;
  if (v52 <= 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = v52;
  }

  v53 = *(v13 + 3152);
  if (v50 > v44)
  {
    if (v37)
    {
      v54 = v13;
    }

    else
    {
      v54 = v13 + 1;
    }

    v55 = v50 - (v37 == 0);
    v56 = (v13 + 4 * (v37 == 0) + 1152);
    v57 = (v54 + 400);
    do
    {
      v59 = *v57++;
      v58 = v59;
      if (v59 == 6 || v58 == 3)
      {
        ++*(v86 + *v56);
      }

      ++v56;
      --v55;
    }

    while (v55);
  }

  memset(v84, 0, sizeof(v84));
  v85 = 0;
  if (v53 >= 2)
  {
    v61 = v53 - 1;
    v62 = v84 + 1;
    v63 = v86 + 1;
    v64 = v61 - 1;
    v65 = &qword_277BB8060;
    do
    {
      if (v64)
      {
        v66 = *v65;
      }

      else
      {
        v66 = 1.0;
      }

      v68 = *v63++;
      v67 = v68;
      if (v68 <= 1)
      {
        v67 = 1;
      }

      result = v66 * v48;
      *v62++ = (result / v67);
      v48 -= result;
      ++v65;
      --v64;
      --v61;
    }

    while (v61);
  }

  if (v50 <= v44)
  {
    goto LABEL_92;
  }

  v69 = v45 - v51;
  v70 = v13 + 4 * (v37 == 0);
  v71 = v37 ? v13 : v13 + 1;
  v72 = v50 - (v37 == 0);
  v73 = (v71 + 400);
  v74 = v69 / v52;
  do
  {
    v76 = *v73++;
    v75 = v76;
    if ((v76 - 4) < 2)
    {
      v80 = 0;
    }

    else if (v75 == 6 || v75 == 3)
    {
      v78 = *(v84 + *(v70 + 1152));
      v79 = v78 ^ 0x7FFFFFFF;
      v80 = v78 + v74;
      if (v79 < v74)
      {
        v80 = 0x7FFFFFFF;
      }
    }

    else
    {
      v80 = v74;
    }

    *(v70 + 5160) = v80;
    v70 += 4;
    --v72;
  }

  while (v72);
  if (v50 < 250)
  {
LABEL_92:
    *(v13 + 4 * v50 + 5160) = 0;
  }

  if ((v33 & 1) == 0)
  {
    *(*a1 + 23168) = a5;
    *&result = 0x100000001;
    *(v32 + 2) = 0x100000001;
  }

  return result;
}

uint64_t sub_2779777C4(uint64_t a1, int a2, double a3, double a4)
{
  v4 = (a1 + 395240);
  if (a2 <= 0)
  {
    return *v4;
  }

  v5 = (a1 + 270312);
  v6 = 0.9999;
  if (a4 <= 0.9999)
  {
    v6 = a4;
  }

  v7 = a4 < 0.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = 463516;
  if (!*(a1 + 271336))
  {
    v9 = 246144;
  }

  LODWORD(v9) = *(a1 + v9) - (v8 * *(a1 + v9));
  if (v9 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v9;
  }

  v10 = *(a1 + 271272);
  if (v10 >= *(a1 + 271276))
  {
    v10 = *(a1 + 271276);
  }

  v11 = *a1 + 44320;
  v12 = (100 - v10);
  v13 = *a1 + 35584;
  v14 = v12 / 200.0;
  v15 = 0.2;
  if (v14 >= 0.2)
  {
    v15 = v14;
  }

  v16 = 1.0 - v15;
  v17 = v15 + 1.0;
  v18 = *(a1 + 644576);
  if (v18)
  {
    v19 = *(v18 + 18128);
    if (v19 >= 1)
    {
      v20 = 0;
      v21 = 0;
      v22 = (v18 + 176);
      v23 = 0.0;
      v24 = v19;
      do
      {
        v20 += *(v22 - 3);
        v21 += *(v22 - 4);
        v25 = *v22;
        v22 += 9;
        v23 = v23 + v25;
        --v24;
      }

      while (v24);
      if ((v26 = v23 / v19 * (v20 / (*(dbl_277BB7020 + ((v21 >> 60) & 8)) + v21)), v27 = *v13, *v13 <= 1.0) && v26 < v27 || v27 >= 1.0 && v26 > v27)
      {
        if (v17 < v26)
        {
          v26 = v17;
        }

        if (v16 > v26)
        {
          v26 = v16;
        }

        *v13 = v26;
      }
    }
  }

  if (*(v11 + 48))
  {
    if (*v11 >= 1)
    {
      v28 = *(v13 + 8);
      if (v28 >= 1)
      {
        v29 = *(v11 + 24);
        v30 = *(v13 + 12);
        v31 = (v30 - v28) / v28;
        if (v31 > 1.0)
        {
          v31 = 1.0;
        }

        v32 = v31 + 1.0;
        if (v30 > v28)
        {
          v33 = v32;
        }

        else
        {
          v33 = 1.0 - (v28 - v30) / v28;
        }

        if (v17 < v33)
        {
          v33 = v17;
        }

        if (v16 > v33)
        {
          v33 = v16;
        }

        if (v33 < 1.0 && (v29 & 0x80000000) == 0 || (v33 > 1.0 ? (v34 = v29 <= 0) : (v34 = 0), v34))
        {
          if (v17 >= v33 * *v13)
          {
            v17 = v33 * *v13;
          }

          if (v16 <= v17)
          {
            v16 = v17;
          }

          *v13 = v16;
        }
      }
    }
  }

  v36 = *v4;
  v35 = *(a1 + 395244);
  if (v35 < *v4)
  {
    v37 = *(*v5 + 72);
    v38 = *v13;
    v39 = (a2 << 9) / v9;
    v40 = pow(a3 / (1.0 - v8), 0.9) * 1250000.0;
    do
    {
      v41 = (v36 + v35) >> 1;
      v42 = (&unk_277BB8090 + 8 * ((v36 + v35) >> 6));
      if (v41 <= 0)
      {
        v45 = -(-((v36 + v35) >> 1) & 0x1F);
      }

      else
      {
        v45 = v41 & 0x1F;
      }

      v43 = *v42;
      v44 = v42[1] - *v42;
      if (v39 < (v38 * (v40 / (v43 + v44 * v45 * 0.03125)) / sub_277A58CE0((v36 + v35) >> 1, v37)))
      {
        v35 = (v41 + 1);
      }

      else
      {
        v36 = (v36 + v35) >> 1;
        v35 = v35;
      }
    }

    while (v35 < v36);
  }

  if (v5[245] != 2)
  {
    return v35;
  }

  v46 = v5[244];
  if (v35 <= v46)
  {
    return v46;
  }

  else
  {
    return v35;
  }
}

void sub_277977B04(double *a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7)
{
  sub_277972C7C(a1, a5, a6, a7);
  v12.f64[0] = a1[5];
  v12.f64[1] = a1[8];
  v13 = *(a5 + 112);
  *(a5 + 96) = vaddq_f64(v12, *(a5 + 96));
  v12.f64[0] = a1[20];
  v12.f64[1] = a1[3];
  *(a5 + 112) = vaddq_f64(v12, v13);
  v14 = a1[23];
  if (fabs(v14) > 0.000001)
  {
    ++*(a5 + 136);
    *(a5 + 128) = v14 + *(a5 + 128);
  }

  if (!a2)
  {
    *(a5 + 64) = *(a5 + 56);
    v15 = sub_277972D0C(a1);
    *(a5 + 56) = v15;
    *(a5 + 40) = v15 * *(a5 + 40);
    if (a4 + a3 >= 3)
    {
      v16 = *(a5 + 48);
      v17 = a1[6] - a1[7];
      v18 = sub_277972E8C(a1);
      if (v18 >= v17)
      {
        v18 = v17;
      }

      if (v16 < v18)
      {
        v18 = v16;
      }

      *(a5 + 48) = v18;
    }
  }
}

BOOL sub_277977C10(uint64_t a1, int a2, int a3, int a4, int a5, double a6, double a7)
{
  result = 0;
  if (a4 > a3 && a6 >= 0.999 && a7 < 0.9)
  {
    result = 0;
    v9 = *(a1 + 11392);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if ((v11 < 0) ^ v10 | (v11 == 0))
    {
      v11 = 0;
    }

    if (v11 >= a5)
    {
      if (a5 < 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        v13 = *(a1 + 11388);
        v14 = *(a1 + 11376);
        v15 = *(a1 + 11368);
        v16 = v13 + a2;
        while (1)
        {
          v17 = v15 + 232 * ((v16 + v12) % v14);
          if (*(v17 + 48) - *(v17 + 56) < 0.999)
          {
            break;
          }

          if (a5 == ++v12)
          {
            v12 = a5;
            return v12 == a5;
          }
        }
      }

      return v12 == a5;
    }
  }

  return result;
}

void sub_277977CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    free(*(a1 - 8));
  }

  if (a2)
  {
    free(*(a2 - 8));
  }

  if (a3)
  {
    free(*(a3 - 8));
  }

  if (a4)
  {
    v7 = *(a4 - 8);

    free(v7);
  }
}

void sub_277977D38(uint64_t a1, int *a2, int a3, int a4)
{
  v11 = 0;
  v6 = *a2;
  if (*a2 >= 2)
  {
    v9 = 0;
    do
    {
      v10 = (a1 + 56 * v9);
      if (v10[1] - *v10 + 1 < a4 && v10[12] == a3)
      {
        sub_277977FA4(2, a1, a2, &v11);
        v9 = v11;
        v6 = *a2;
      }

      else
      {
        v11 = ++v9;
      }
    }

    while (v9 < v6 && v6 > 1);
  }

  sub_277977EF0(a1, a2);
}

uint64_t sub_277977E08(uint64_t result, int a2, uint64_t a3, double a4, double a5, float64x2_t a6)
{
  v6 = (a3 + 56 * a2);
  v7 = 0uLL;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  v8 = v6[1];
  v9 = *v6;
  if (v8 >= v9)
  {
    v10 = ((a2 != 0) - v9 + v8);
    v11 = v8 - v9 + 1;
    a6.f64[0] = *(v6 + 1);
    v12 = vdupq_lane_s64(COERCE__INT64(v11), 0);
    v13 = result + 232 * v9;
    v14 = 0.0;
    v15 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
    v16 = *v6;
    do
    {
      if (a2 || v16 > v9)
      {
        v18 = *(v13 - 200);
        v17 = *(v13 + 32);
        if (v17 > v18)
        {
          v18 = *(v13 + 32);
        }

        v14 = v14 + *(v13 + 40) / fmax(v18, 0.001) / v10;
        *(v6 + 3) = v14;
      }

      else
      {
        v17 = *(v13 + 32);
      }

      v19.f64[0] = *(v13 + 16);
      v19.f64[1] = v17;
      v7 = vaddq_f64(v7, vdivq_f64(v19, v12));
      a6 = vaddq_f64(a6, vdivq_f64(vmaxnmq_f64(*(v13 + 200), v15), v12));
      ++v16;
      v13 += 232;
      --v11;
    }

    while (v11);
    *(v6 + 2) = v7;
    *(v6 + 2) = a6;
  }

  return result;
}

void sub_277977EF0(uint64_t a1, int *a2)
{
  v9 = 0;
  v2 = *a2;
  if (*a2 >= 1)
  {
    v5 = 0;
    v6 = a1 - 8;
    do
    {
      if ((v5 < 1 || ((v7 = *(a1 + 56 * v5 + 48), *(v6 + 56 * v5) == v7) ? (v8 = v7 == 2) : (v8 = 1), v8)) && *(a1 + 56 * v5 + 4) >= *(a1 + 56 * v5))
      {
        v9 = ++v5;
      }

      else
      {
        sub_277977FA4(0, a1, a2, &v9);
        v5 = v9;
        v2 = *a2;
      }
    }

    while (v5 < v2);
  }
}

__n128 sub_277977FA4(int a1, uint64_t a2, int *a3, int *a4)
{
  if (*a3 == 1)
  {
    *a3 = 0;
    return result;
  }

  v4 = *a4;
  v5 = *a4;
  if (*a4 == *a3 - 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (v7 == 2)
  {
    v9 = a2 + 56 * v5;
    v10 = *(v9 + 60);
  }

  else
  {
    if (v7 == 1)
    {
      *(a2 + 56 * ++v4) = *(a2 + 56 * v5);
      goto LABEL_18;
    }

    v9 = a2 + 56 * v5;
    v10 = *(v9 + 4);
  }

  *(v9 - 52) = v10;
LABEL_18:
  *a4 = v4;
  v11 = *a3 - v8;
  *a3 = v11;
  v12 = *a4 - (v7 == 1);
  if (v12 < v11)
  {
    v13 = v12;
    v14 = 56 * v8;
    v15 = a2 + 56 * v12;
    do
    {
      v16 = *(v15 + v14 + 16);
      *v15 = *(v15 + v14);
      *(v15 + 16) = v16;
      result = *(v15 + v14 + 32);
      *(v15 + 32) = result;
      *(v15 + 48) = *(v15 + v14 + 48);
      ++v13;
      v15 += 56;
    }

    while (v13 < *a3);
  }

  return result;
}

uint64_t sub_277978088(uint64_t result, int a2, int a3, uint64_t a4, int *a5, int *a6)
{
  v6 = *a6;
  v7 = *a6;
  v8 = (a4 + 56 * v7);
  v9 = v8[12];
  v10 = v8[1];
  if (*v8 == result)
  {
    v11 = v10 != a2;
  }

  else
  {
    v11 = (v10 != a2) + 1;
  }

  v12 = *a5;
  if (*a5 - 1 > v6)
  {
    v13 = v12 - 1;
    v14 = a4 + 56 * *a5 - 56;
    do
    {
      v15 = v14 + 56 * v11;
      v16 = *v14;
      v17 = *(v14 + 16);
      v18 = *(v14 + 32);
      *(v15 + 48) = *(v14 + 48);
      *(v15 + 16) = v17;
      *(v15 + 32) = v18;
      *v15 = v16;
      --v13;
      v14 -= 56;
    }

    while (v13 > v6);
    v12 = *a5;
  }

  *a5 = v12 + v11;
  if (*v8 < result)
  {
    v8[1] = result - 1;
    v7 = v6 + 1;
    *(a4 + 56 * v7) = result;
    ++v6;
  }

  v19 = a4 + 56 * v7;
  *(v19 + 48) = a3;
  if (v10 <= a2)
  {
    a2 = v10;
  }

  else
  {
    v20 = (a4 + 56 * ++v6);
    *v20 = a2 + 1;
    v20[1] = v10;
    v20[12] = v9;
  }

  *(v19 + 4) = a2;
  *a6 = v6;
  return result;
}

unint64_t sub_277978170(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, uint64_t a9)
{
  LODWORD(v11) = a4;
  v12 = a1;
  v342 = *MEMORY[0x277D85DE8];
  v13 = (a2 + 7872);
  v14 = *a2;
  v15 = *(a2 + 4);
  v326 = (a2 + 7872);
  v313 = v15;
  v314 = *a2;
  if (a4)
  {
    v16 = *a3;
    v17 = *(a1 + 493);
    v18 = *(a1 + 494);
    if (a4 > 7)
    {
      v21 = &unk_277C31E18 + 2 * a4 - 16;
      v22 = v21[1];
      v23 = a1 + 24404;
      LODWORD(v336) = sub_277979698(a1 + 24404 + 36 * *v21, *(a1 + 493), *a3, v15, v14, *(a1 + 494));
      v24 = sub_277979698(v23 + 36 * v22, v17, v16, v15, v14, v18);
      v12 = a1;
      HIDWORD(v336) = v24;
      v20 = a2;
      v13 = v326;
    }

    else
    {
      v19 = sub_277979698(a1 + 36 * a4 + 24404, *(a1 + 493), *a3, v15, v14, *(a1 + 494));
      v12 = a1;
      v336 = v19;
      v20 = a2;
      v13 = v326;
      if (a8)
      {
        a8[v11] = v19;
      }
    }
  }

  else
  {
    v20 = a2;
    v336 = 0;
    if (a8)
    {
      *a8 = -2147450880;
    }
  }

  v11 = v11;
  v25 = (a5 + v11);
  v26 = v13[436];
  v27 = v13[437];
  if (v26 <= v27)
  {
    v28 = v13[437];
  }

  else
  {
    v28 = v13[436];
  }

  result = sub_277979874(*(*(v12 + 24696) + 28), v20, v314, v15, v28);
  v320 = result;
  if (v11 < 8)
  {
    v33 = -1;
    v32 = v11;
  }

  else
  {
    v31 = &unk_277C31E18 + 2 * v11 - 16;
    v32 = *v31;
    v33 = v31[1];
  }

  v310 = 0;
  v318 = v314 & (v27 < 2);
  v335[0] = v32;
  v304 = v33;
  v335[1] = v33;
  *(a9 + 2 * v11) = 0;
  *v25 = 0;
  v34 = v326;
  if (*v326 == 1)
  {
    if ((v314 & (v27 < 2)) != 0)
    {
      v35 = -5;
    }

    else
    {
      v35 = -6;
    }

    if ((v314 & (v27 < 2)) != 0)
    {
      v36 = -3;
    }

    else
    {
      v36 = -4;
    }

    if (v326[437] < 2u)
    {
      v35 = v36;
    }

    v37 = v20[1961] + ~v314;
    if (v35 < v37)
    {
      v37 = v35;
    }

    if (v20[1960] - v314 <= v35)
    {
      v38 = v37;
    }

    else
    {
      v38 = v20[1960] - v314;
    }

    v310 = v38;
  }

  v311 = 0;
  v317 = v15 & (v26 < 2);
  if (v326[1] == 1)
  {
    if ((v15 & (v26 < 2)) != 0)
    {
      v39 = -5;
    }

    else
    {
      v39 = -6;
    }

    if ((v15 & (v26 < 2)) != 0)
    {
      v40 = -3;
    }

    else
    {
      v40 = -4;
    }

    if (v326[436] < 2u)
    {
      v39 = v40;
    }

    v41 = v20[1963] + ~v15;
    if (v39 < v41)
    {
      v41 = v39;
    }

    if (v20[1962] - v15 <= v39)
    {
      v42 = v41;
    }

    else
    {
      v42 = v20[1962] - v15;
    }

    v311 = v42;
  }

  v327 = a7 + 16 * v11;
  v328 = (a6 + (v11 << 6));
  v334 = 0;
  v333 = 0;
  if (v310 >= 0)
  {
    v43 = v310;
  }

  else
  {
    v43 = -v310;
  }

  v316 = v43;
  v329 = v25;
  if (!v310)
  {
    goto LABEL_76;
  }

  v44 = v326[436];
  v45 = *(a1 + 536) - v313;
  if (v45 >= v44)
  {
    v45 = v326[436];
  }

  v46 = v45 >= 16 ? 16 : v45;
  if (v45 >= 1)
  {
    v324 = 0;
    v47 = 0;
    v48 = *(a2 + 7864) - 8 * *(a2 + 8);
    do
    {
      v49 = *(v48 + 8 * v47);
      v50 = *v49;
      v51 = byte_277C3F990[v50];
      v52 = v34[436];
      if (v52 >= v51)
      {
        v53 = byte_277C3F990[v50];
      }

      else
      {
        v53 = v34[436];
      }

      if (v53 <= 4)
      {
        v54 = 4;
      }

      else
      {
        v54 = v53;
      }

      if (v44 <= 0xF)
      {
        v55 = v53;
      }

      else
      {
        v55 = v54;
      }

      if (v52 < 2 || v52 > v51)
      {
        LOWORD(v57) = 2;
      }

      else
      {
        v57 = byte_277C36D60[v50];
        if (-v310 < v57)
        {
          LOWORD(v57) = -v310;
        }

        v57 = v57;
        v324 = v57;
        if (v57 <= 2u)
        {
          LOWORD(v57) = 2;
        }
      }

      result = sub_277979938(v49, v335, v25, &v334, &v333, v328, v327, &v336, a1 + 24404, v57 * v55);
      v47 += v55;
      v34 = v326;
    }

    while (v47 < v46);
  }

  else
  {
LABEL_76:
    v324 = 0;
  }

  if (v311 >= 0)
  {
    v58 = v311;
  }

  else
  {
    v58 = -v311;
  }

  v315 = v58;
  if (!v311)
  {
    goto LABEL_105;
  }

  v59 = v34[437];
  v60 = *(a1 + 532) - v314;
  if (v60 >= v59)
  {
    v60 = v34[437];
  }

  v61 = v60 >= 16 ? 16 : v60;
  if (v60 >= 1)
  {
    v323 = 0;
    v62 = 0;
    do
    {
      v63 = *(*(a2 + 7864) + 8 * *(a2 + 8) * v62 - 8);
      v64 = *v63;
      v65 = byte_277C36D60[v64];
      v66 = v34[437];
      if (v66 >= v65)
      {
        v67 = byte_277C36D60[v64];
      }

      else
      {
        v67 = v34[437];
      }

      if (v67 <= 4)
      {
        v68 = 4;
      }

      else
      {
        v68 = v67;
      }

      if (v59 <= 0xF)
      {
        v69 = v67;
      }

      else
      {
        v69 = v68;
      }

      LOWORD(v70) = 2;
      if (v66 >= 2 && v66 <= v65)
      {
        v70 = byte_277C3F990[v64];
        if (-v311 < v70)
        {
          v70 = -v311;
        }

        v323 = v70;
        if (v70 <= 2)
        {
          LOWORD(v70) = 2;
        }
      }

      result = sub_277979938(v63, v335, v329, &v334 + 1, &v333, v328, v327, &v336, a1 + 24404, v70 * v69);
      v62 += v69;
      v34 = v326;
    }

    while (v62 < v61);
  }

  else
  {
LABEL_105:
    v323 = 0;
  }

  v71 = a2;
  v72 = v329;
  v74 = a7 + 16 * v11;
  v73 = (a6 + (v11 << 6));
  if (v320)
  {
    if (*(a2 + 7840) < v314)
    {
      v75 = v34[436];
      if (v313 + v75 >= *(a2 + 7848) && *(a2 + 7844) >= v314 && v313 + v75 < *(a2 + 7852))
      {
        result = sub_277979938(*(*(a2 + 7864) + 8 * (v75 - *(a2 + 8))), v335, v329, &v334, &v333, v328, v327, &v336, a1 + 24404, 4);
        v72 = v329;
        v73 = (a6 + (v11 << 6));
        v34 = v326;
      }
    }
  }

  v76 = v334 != 0;
  if (HIBYTE(v334))
  {
    ++v76;
  }

  v303 = v76;
  v312 = *v72;
  if (*v72)
  {
    v77 = (a7 + 16 * v11);
    v78 = *v72;
    do
    {
      *v77++ += 640;
      --v78;
    }

    while (v78);
  }

  v305 = v11;
  if (*(a1 + 498))
  {
    v79 = v34[437];
    if (v79 <= 2)
    {
      v80 = 2;
    }

    else
    {
      v80 = v34[437];
    }

    v81 = v34[436];
    result = v81;
    if (v81 <= 2u)
    {
      v82 = 2;
    }

    else
    {
      v82 = v81;
    }

    if (v79 >= 0x10)
    {
      v83 = 16;
    }

    else
    {
      v83 = v34[437];
    }

    v309 = v83;
    v84 = v79 - 2 >= 0xE || (v81 - 2) >= 0xEu;
    v85 = !v84;
    v340 = v80;
    v341[0] = -2;
    if (v79 <= 0xF)
    {
      v86 = 2;
    }

    else
    {
      v86 = 4;
    }

    v308 = v86;
    v341[1] = v80;
    v341[2] = v82;
    v321 = v81;
    if ((v81 & 0xF0) != 0)
    {
      v87 = 16;
    }

    else
    {
      v87 = v81;
    }

    v341[3] = v80 - 2;
    v341[4] = v82;
    if ((v81 & 0xF0) != 0)
    {
      v88 = 4;
    }

    else
    {
      v88 = 2;
    }

    if (!v79)
    {
      goto LABEL_151;
    }

    v302 = v85;
    v89 = 0;
    v90 = 0;
    do
    {
      if (v321)
      {
        v91 = 0;
        do
        {
          result = sub_277979C2C(a1, a2, v314, v313, v11, v90, v91, &v336, v72, v73, v327, a9);
          v72 = v329;
          v73 = (a6 + (v11 << 6));
          if (!(v91 | v90))
          {
            v89 = result;
          }

          v91 += v88;
        }

        while (v91 < v87);
      }

      v90 += v308;
    }

    while (v90 < v309);
    v71 = a2;
    v34 = v326;
    v74 = a7 + 16 * v11;
    v11 = v11;
    v85 = v302;
    if (!v89)
    {
LABEL_151:
      *(a9 + 2 * v11) |= 8u;
    }

    if (v85)
    {
      v92 = v341;
      v93 = 3;
      do
      {
        v94 = *(v92 - 1);
        if (v94 + (v314 & 0xFu) <= 0xF && *v92 + (v313 & 0xFu) <= 0xF)
        {
          result = sub_277979C2C(a1, v71, v314, v313, v11, v94, *v92, &v336, v72, v73, v74, a9);
          v72 = v329;
          v73 = (a6 + (v11 << 6));
          v34 = v326;
        }

        v92 += 2;
        --v93;
      }

      while (v93);
    }
  }

  v332 = 0;
  if (*(v71 + 7840) < v314 && *(v71 + 7848) < v313 && *(v71 + 7844) >= v314 && *(v71 + 7852) >= v313)
  {
    result = sub_277979938(*(*(v71 + 7864) + 8 * ~*(v71 + 8)), v335, v72, &v334, &v332, v73, v74, &v336, a1 + 24404, 4);
    v34 = v326;
  }

  v96 = 0;
  v97 = a1 + 24404;
  v98 = -3;
  do
  {
    v322 = v96;
    v99 = v98 + v318;
    v100 = -(v98 + v318);
    if (v316 >= v100 && v324 < v100)
    {
      v102 = v34[436];
      v103 = *(a1 + 536) - v313;
      if (v103 >= v102)
      {
        v103 = v34[436];
      }

      if (v103 >= 16)
      {
        v104 = 16;
      }

      else
      {
        v104 = v103;
      }

      v106 = (v313 & 1) == 0 || v102 > 1;
      if (v103 >= 1)
      {
        v107 = 0;
        v108 = *(v71 + 7864) + 8 * *(v71 + 8) * v99;
        v109 = v99 - v310 + 1;
        v110 = ~v99;
        if (v102 <= 0xF)
        {
          v111 = 2;
        }

        else
        {
          v111 = 4;
        }

        do
        {
          v112 = *(v108 + 8 * (v107 + v106));
          v113 = *v112;
          v114 = byte_277C3F990[v113];
          v115 = v34[436];
          if (v115 >= v114)
          {
            v116 = byte_277C3F990[v113];
          }

          else
          {
            v116 = v34[436];
          }

          if (v111 <= v116)
          {
            v117 = v116;
          }

          else
          {
            v117 = v111;
          }

          if (v115 < 2 || v115 > v114)
          {
            v119 = 2;
          }

          else
          {
            v120 = byte_277C36D60[v113];
            if (v109 >= v120)
            {
              v121 = v120;
            }

            else
            {
              v121 = v109;
            }

            v119 = v121;
            if (v121 <= 2u)
            {
              v119 = 2;
            }

            v324 = v110 + v121;
          }

          result = sub_277979938(v112, v335, v329, &v334, &v332, v328, v327, &v336, v97, v119 * v117);
          v107 += v117;
          v34 = v326;
        }

        while (v107 < v104);
      }
    }

    v122 = v98 + v317;
    if (v315 < -v122 || v323 >= -v122)
    {
      v71 = a2;
    }

    else
    {
      v123 = v34[437];
      v124 = *(a1 + 532) - v314;
      if (v124 >= v123)
      {
        v124 = v34[437];
      }

      if (v124 >= 16)
      {
        v125 = 16;
      }

      else
      {
        v125 = v124;
      }

      v127 = (v314 & 1) == 0 || v123 > 1;
      v71 = a2;
      if (v124 >= 1)
      {
        v128 = 0;
        if (v123 <= 0xF)
        {
          v129 = 2;
        }

        else
        {
          v129 = 4;
        }

        do
        {
          v130 = *(*(a2 + 7864) + 8 * (v122 + *(a2 + 8) * (v128 + v127)));
          v131 = *v130;
          v132 = byte_277C36D60[v131];
          v133 = v34[437];
          if (v133 >= v132)
          {
            v134 = byte_277C36D60[v131];
          }

          else
          {
            v134 = v34[437];
          }

          if (v129 <= v134)
          {
            v135 = v134;
          }

          else
          {
            v135 = v129;
          }

          v136 = 2;
          if (v133 >= 2 && v133 <= v132)
          {
            if (v122 - v311 + 1 >= byte_277C3F990[v131])
            {
              v137 = byte_277C3F990[v131];
            }

            else
            {
              v137 = v122 - v311 + 1;
            }

            if (v137 <= 2)
            {
              v136 = 2;
            }

            else
            {
              v136 = v137;
            }

            v323 = v137 + ~v122;
          }

          result = sub_277979938(v130, v335, v329, &v334 + 1, &v332, v328, v327, &v336, v97, v136 * v135);
          v128 += v135;
          v34 = v326;
        }

        while (v128 < v125);
      }
    }

    v98 = -5;
    v96 = 1;
  }

  while ((v322 & 1) == 0);
  v138 = v334;
  v139 = HIBYTE(v334);
  if (v303)
  {
    v140 = v329;
    v142 = v327;
    v141 = v328;
    v143 = v305;
    v145 = v313;
    v144 = v314;
    v146 = a9;
    if (v303 == 1)
    {
      v147 = HIBYTE(v334) != 0;
      v148 = v334 != 0;
      if (v333)
      {
        v149 = 2;
      }

      else
      {
        v149 = 3;
      }

      v150 = v149 | *(a9 + 2 * v305);
      *(a9 + 2 * v305) = v150;
      if (v148 == v147)
      {
        if (!v138 || !v139)
        {
          goto LABEL_263;
        }

        v151 = v150 | 0x40;
      }

      else
      {
        v151 = v150 | 0x30;
      }
    }

    else
    {
      if (v333)
      {
        v152 = 4;
      }

      else
      {
        v152 = 5;
      }

      v151 = *(a9 + 2 * v305) | 0x50 | v152;
    }
  }

  else
  {
    v140 = v329;
    v142 = v327;
    v141 = v328;
    v143 = v305;
    v145 = v313;
    v144 = v314;
    v146 = a9;
    if (HIBYTE(v334) | v334)
    {
      *(a9 + 2 * v305) |= 1u;
    }

    if ((v138 != 0) == (v139 != 0))
    {
      if (!v138 || !v139)
      {
        goto LABEL_263;
      }

      v151 = *(a9 + 2 * v305) | 0x20;
    }

    else
    {
      v151 = *(a9 + 2 * v305) | 0x10;
    }
  }

  *(v146 + 2 * v143) = v151;
LABEL_263:
  if (v312)
  {
    v153 = v312;
    do
    {
      if (v153 < 2)
      {
        break;
      }

      v154 = v153;
      v155 = *v142;
      v156 = (a7 + 16 * v143 + 2);
      v157 = v141;
      v158 = 1;
      v153 = 0;
      do
      {
        v159 = *v156;
        if (v155 < v159)
        {
          v30 = vextq_s8(*v157, *v157, 8uLL);
          *v157 = v30;
          *(v156 - 1) = *v156;
          *v156 = v155;
          v159 = v155;
          v153 = v158;
        }

        ++v158;
        v157 = (v157 + 8);
        ++v156;
        v155 = v159;
      }

      while (v154 != v158);
    }

    while (v153 >= 1);
  }

  v160 = *v140;
  if (v160 > v312)
  {
    do
    {
      if (v312 + 1 >= v160)
      {
        break;
      }

      v161 = v160;
      v162 = (16 * v143 + 2 * v312 + a7 + 2);
      v163 = (a6 + (v143 << 6) + 8 * v312);
      v164 = v312 + 1;
      v160 = v312;
      do
      {
        v165 = *(v162 - 1);
        result = *v162;
        if (v165 < result)
        {
          v30 = vextq_s8(*v163, *v163, 8uLL);
          *v163 = v30;
          *(v162 - 1) = *v162;
          *v162 = v165;
          v160 = v164;
        }

        ++v164;
        v163 = (v163 + 8);
        ++v162;
      }

      while (v161 != v164);
    }

    while (v160 > v312);
  }

  v166 = *(a1 + 536) - v145;
  v30.i8[0] = v34[436];
  v30.i8[4] = v34[437];
  v167 = v30.u8[0];
  if ((v30.i8[0] & 0xF0) != 0)
  {
    v167 = 16;
  }

  if (v166 >= v167)
  {
    v166 = v167;
  }

  if ((v34[437] & 0xF0) != 0)
  {
    v168 = 16;
  }

  else
  {
    v168 = v34[437];
  }

  if (*(a1 + 532) - v144 < v168)
  {
    v168 = *(a1 + 532) - v144;
  }

  if (v166 >= v168)
  {
    v166 = v168;
  }

  if ((v304 & 0x80) != 0)
  {
    v233 = *v140;
    if (v310 && v166 >= 1)
    {
      v234 = 0;
      v235 = a1 + 25428;
      do
      {
        if (v233 >= 2u)
        {
          break;
        }

        v236 = 0;
        v237 = *(*(v71 + 7864) + 8 * (v234 - *(v71 + 8)));
        LOBYTE(result) = 1;
        do
        {
          v238 = result;
          v239 = v237[v236 + 16];
          if (v239 >= 1)
          {
            v240 = &v237[4 * v236 + 8];
            v241 = *v240;
            v242 = *(v240 + 1);
            LODWORD(v240) = *(v235 + 4 * v239);
            v243 = *(v235 + 4 * v143);
            v244 = v240 == v243;
            if (v240 == v243)
            {
              LOWORD(v245) = v241;
            }

            else
            {
              v245 = -v241;
            }

            if (v244)
            {
              LOWORD(v246) = v242;
            }

            else
            {
              v246 = -v242;
            }

            if (v233)
            {
              v247 = 0;
              v248 = v233;
              v249 = v141;
              while (1)
              {
                v250 = v249->i32[0];
                v249 = (v249 + 8);
                if ((v245 | (v246 << 16)) == v250)
                {
                  break;
                }

                if (v233 == ++v247)
                {
                  goto LABEL_377;
                }
              }
            }

            else
            {
              LODWORD(v247) = 0;
            }

            if (v247 == v233)
            {
              v248 = v233;
LABEL_377:
              v251 = &v141->i16[4 * v248];
              *v251 = v245;
              v251[1] = v246;
              v142[v248] = 2;
              v233 = *v140 + 1;
              *v140 = v233;
            }
          }

          result = 0;
          v236 = 1;
        }

        while ((v238 & 1) != 0);
        v234 += byte_277C3F990[*v237];
      }

      while (v234 < v166);
    }

    if (v311 && v166 >= 1)
    {
      v252 = 0;
      v253 = a1 + 25428;
      v254 = v233;
      do
      {
        if (v233 >= 2u)
        {
          break;
        }

        result = 0;
        v255 = *(*(v71 + 7864) + 8 * *(v71 + 8) * v252 - 8);
        v256 = 1;
        do
        {
          v257 = v256;
          v258 = v255[result + 16];
          if (v258 >= 1)
          {
            v259 = &v255[4 * result + 8];
            v260 = *v259;
            v261 = *(v259 + 1);
            LODWORD(v259) = *(v253 + 4 * v258);
            v262 = *(v253 + 4 * v143);
            v263 = v259 == v262;
            if (v259 == v262)
            {
              LOWORD(v264) = v260;
            }

            else
            {
              v264 = -v260;
            }

            if (v263)
            {
              LOWORD(v265) = v261;
            }

            else
            {
              v265 = -v261;
            }

            if (v254)
            {
              v266 = 0;
              v267 = v254;
              v268 = v141;
              while (1)
              {
                v269 = v268->i32[0];
                v268 = (v268 + 8);
                if ((v264 | (v265 << 16)) == v269)
                {
                  break;
                }

                if (v254 == ++v266)
                {
                  goto LABEL_400;
                }
              }
            }

            else
            {
              LODWORD(v266) = 0;
            }

            if (v266 == v254)
            {
              v267 = v254;
LABEL_400:
              v270 = &v141->i16[4 * v267];
              *v270 = v264;
              v270[1] = v265;
              v142[v267] = 2;
              v254 = *v140 + 1;
              *v140 = v254;
            }

            v233 = v254;
          }

          v256 = 0;
          result = 1;
        }

        while ((v257 & 1) != 0);
        v252 += byte_277C36D60[*v255];
      }

      while (v252 < v166);
    }

    else
    {
      v254 = v233;
    }

    if (v254)
    {
      v271 = 0;
      v272 = v34[436];
      v273 = v34[437];
      v274 = *(v71 + 7928) + 32 * v272;
      v275 = *(v71 + 7932) - 32 * v273;
      v276 = *(v71 + 7936) + 32 * v273;
      v277 = *(v71 + 7924) - 32 * v272 - 128;
      v278 = v274 + 128;
      v279 = v275 - 128;
      v280 = v276 + 128;
      v281 = &v141->i16[1];
      do
      {
        v282 = *v281;
        if (v282 >= v278)
        {
          v283 = v278;
        }

        else
        {
          v283 = *v281;
        }

        if (v277 <= v282)
        {
          v284 = v283;
        }

        else
        {
          v284 = v277;
        }

        *v281 = v284;
        v285 = *(v281 - 1);
        if (v285 >= v280)
        {
          v286 = v280;
        }

        else
        {
          v286 = *(v281 - 1);
        }

        if (v279 <= v285)
        {
          v287 = v286;
        }

        else
        {
          v287 = v279;
        }

        *(v281 - 1) = v287;
        ++v271;
        v281 += 4;
      }

      while (v271 < *v140);
    }

    return result;
  }

  if (*v140 > 1u)
  {
LABEL_428:
    v293 = 0;
    v294 = vand_s8(vshl_n_s32(*v30.i8, 5uLL), vdup_n_s32(0x1FE0u));
    v295.i32[0] = *(v71 + 7924);
    v295.i32[1] = *(v71 + 7932);
    v296.i32[0] = *(v71 + 7928);
    v296.i32[1] = *(v71 + 7936);
    *v297.i8 = vadd_s32(vsub_s32(v295, v294), 0x7F0000007FLL);
    v297.i64[1] = v297.i64[0];
    v298 = vrev64q_s32(v297);
    *v299.i8 = vadd_s32(v294, vadd_s32(v296, 0x8000000080));
    v299.i64[1] = v299.i64[0];
    v300 = vrev64q_s32(v299);
    do
    {
      v301 = vmovl_s16(*&v141->i8[8 * v293]);
      *&v141->i8[8 * v293++] = vmovn_s32(vbslq_s8(vcgtq_s32(v298, v301), v298, vminq_s32(v301, v300)));
    }

    while (v293 < *v140);
    return result;
  }

  v330 = 0;
  v331 = 0;
  if (v310 && v166 >= 1)
  {
    v169 = 0;
    v170 = *(v71 + 7864);
    v171 = a1 + 25428;
    do
    {
      result = 0;
      v172 = *(v170 + 8 * (v169 - *(v71 + 8)));
      v173 = 1;
      do
      {
        v174 = 0;
        v175 = v173;
        v176 = &v172[4 * result + 8];
        v177 = v172[result + 16];
        v178 = &v331 + 1;
        v179 = &v330 + 1;
        result = 1;
        v180 = 1;
        do
        {
          v181 = v180;
          v182 = v335[v174];
          if (v177 == v182)
          {
            v183 = *v178;
            if (*v178 <= 1)
            {
              v341[2 * v174 - 1 + v183] = *v176;
LABEL_308:
              *v178 = v183 + 1;
              goto LABEL_309;
            }
          }

          if (v177 >= 1)
          {
            v184 = *v179;
            if (*v179 <= 1)
            {
              v185 = *(v171 + 4 * v177);
              v186 = *(v171 + 4 * v182);
              v187 = v185 == v186;
              if (v185 == v186)
              {
                LOWORD(v188) = *v176;
              }

              else
              {
                v188 = -*v176;
              }

              if (v187)
              {
                LOWORD(v189) = *(v176 + 1);
              }

              else
              {
                v189 = -*(v176 + 1);
              }

              v190 = &v339[2 * v174 + 2 + v184];
              *v190 = v188;
              v190[1] = v189;
              v183 = v184;
              v178 = v179;
              goto LABEL_308;
            }
          }

LABEL_309:
          v180 = 0;
          v178 = &v331;
          v179 = &v330;
          v174 = 1;
        }

        while ((v181 & 1) != 0);
        v173 = 0;
      }

      while ((v175 & 1) != 0);
      v169 += byte_277C3F990[*v172];
    }

    while (v169 < v166);
  }

  if (!v311 || v166 < 1)
  {
    goto LABEL_333;
  }

  v191 = 0;
  v192 = *(v71 + 7864) - 8;
  v193 = a1 + 25428;
  do
  {
    result = 0;
    v194 = *(v192 + 8 * *(v71 + 8) * v191);
    v195 = 1;
    do
    {
      v196 = 0;
      v197 = v195;
      v198 = &v194[4 * result + 8];
      v199 = v194[result + 16];
      v200 = &v331 + 1;
      v201 = &v330 + 1;
      result = 1;
      v202 = 1;
      do
      {
        v203 = v202;
        v204 = v335[v196];
        if (v199 == v204)
        {
          v205 = *v200;
          if (*v200 <= 1)
          {
            v341[2 * v196 - 1 + v205] = *v198;
LABEL_329:
            *v200 = v205 + 1;
            goto LABEL_330;
          }
        }

        if (v199 >= 1)
        {
          v206 = *v201;
          if (*v201 <= 1)
          {
            v207 = *(v193 + 4 * v199);
            v208 = *(v193 + 4 * v204);
            v209 = v207 == v208;
            if (v207 == v208)
            {
              LOWORD(v210) = *v198;
            }

            else
            {
              v210 = -*v198;
            }

            if (v209)
            {
              LOWORD(v211) = *(v198 + 1);
            }

            else
            {
              v211 = -*(v198 + 1);
            }

            v212 = &v339[2 * v196 + 2 + v206];
            *v212 = v210;
            v212[1] = v211;
            v205 = v206;
            v200 = v201;
            goto LABEL_329;
          }
        }

LABEL_330:
        v202 = 0;
        v200 = &v331;
        v201 = &v330;
        v196 = 1;
      }

      while ((v203 & 1) != 0);
      v195 = 0;
    }

    while ((v197 & 1) != 0);
    v191 += byte_277C36D60[*v194];
  }

  while (v191 < v166);
LABEL_333:
  v213 = 0;
  v214 = &v331 + 1;
  v215 = &v330 + 1;
  v216 = &v336;
  v217 = 1;
  do
  {
    v218 = v217;
    v219 = *v214;
    if (v219 < 1)
    {
      v220 = 0;
    }

    else
    {
      if (v219 == 1)
      {
        v220 = 1;
      }

      else
      {
        v220 = 2;
      }

      v221 = &v341[2 * v213 - 1];
      result = (&v337 + v213);
      v222 = v220;
      do
      {
        v223 = *v221++;
        *result = v223;
        result += 8;
        --v222;
      }

      while (v222);
    }

    if (v220 <= 1)
    {
      v224 = *v215;
      if (v224 >= 1)
      {
        v225 = &v339[2 * v213 + 2];
        result = 1;
        do
        {
          v226 = v220;
          v227 = *v225++;
          *(&v337 + 2 * v220 + v213) = v227;
          if (v220)
          {
            break;
          }

          v220 = 1;
          v84 = result++ >= v224;
        }

        while (!v84);
        v220 = v226 + 1;
      }
    }

    if (v220 <= 1)
    {
      v228 = *v216;
      do
      {
        v229 = v220;
        *(&v337 + 2 * v220 + v213) = v228;
        v220 = 1;
      }

      while (!v229);
    }

    v217 = 0;
    v214 = &v331;
    v215 = &v330;
    v216 = &v336 + 1;
    v213 = 1;
  }

  while ((v218 & 1) != 0);
  v230 = *v140;
  if (*v140)
  {
    v231 = v338;
    if (v337 == v141->i32[0] && v338 == v141->i32[1])
    {
      v232 = v339[1];
      v141->i32[2 * v230] = v339[0];
      v141->i32[2 * *v140 + 1] = v232;
    }

    else
    {
      v141->i32[2 * v230] = v337;
      v141->i32[2 * *v140 + 1] = v231;
    }

    v142[*v140] = 2;
    v288 = *v140 + 1;
    *v140 = v288;
  }

  else
  {
    v288 = 0;
    v289 = &v337;
    v290 = 1;
    do
    {
      v292 = *v289;
      v291 = v289[1];
      v141->i32[2 * v288] = v292;
      v141->i32[2 * *v140 + 1] = v291;
      v142[*v140] = 2;
      LOBYTE(v292) = v290;
      v288 = *v140 + 1;
      *v140 = v288;
      v289 = v339;
      v290 = 0;
    }

    while ((v292 & 1) != 0);
  }

  if (v288)
  {
    v30.i8[0] = v34[436];
    v30.i8[4] = v34[437];
    goto LABEL_428;
  }

  return result;
}

uint64_t sub_277979698(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    LOWORD(v9) = 0;
    return v9 | (v6 << 16);
  }

  if (v6 == 1)
  {
    v8 = *a1;
    v7 = *(a1 + 4);
    v9 = *a1 >> 13;
    v6 = v7 >> 13;
    if (!a6)
    {
      return v9 | (v6 << 16);
    }

    v10 = v9 - (((((v8 >> 13) >> 28) & 7) + (v8 >> 13)) & 0xFFFF8);
    if (v10)
    {
      v10 = v10;
      v11 = v9 - v10;
      v12 = v10 <= 0;
      if ((v10 & 0x8000u) != 0)
      {
        v10 = -v10;
      }

      if (v12)
      {
        v13 = -8;
      }

      else
      {
        v13 = 8;
      }

      v14 = v13 + v11;
      if (v10 >= 5)
      {
        LOWORD(v9) = v14;
      }

      else
      {
        LOWORD(v9) = v11;
      }
    }

    v15 = ((((v7 >> 13) >> 28) & 7) + (v7 >> 13)) & 0xFFFF8;
  }

  else
  {
    v16 = 4 * a4 + (byte_277C3CAFE[a3] >> 1) - 1;
    v17 = 4 * a5 + (byte_277C3CAE8[a3] >> 1) - 1;
    v18 = *a1 + (*(a1 + 8) - 0x10000) * v16 + v17 * *(a1 + 12);
    v19 = *(a1 + 4) + *(a1 + 16) * v16 + (*(a1 + 20) - 0x10000) * v17;
    if (a2)
    {
      if (v18 < 0)
      {
        v6 = -((4096 - v18) >> 13);
      }

      else
      {
        v6 = (v18 + 4096) >> 13;
      }

      if (v19 < 0)
      {
        v9 = -((4096 - v19) >> 13);
      }

      else
      {
        v9 = (v19 + 4096) >> 13;
      }

      if (!a6)
      {
        return v9 | (v6 << 16);
      }
    }

    else
    {
      if (v18 < 0)
      {
        v20 = -((0x2000 - v18) >> 14);
      }

      else
      {
        v20 = (v18 + 0x2000) >> 14;
      }

      v6 = 2 * v20;
      if (v19 < 0)
      {
        v21 = -((0x2000 - v19) >> 14);
      }

      else
      {
        v21 = (v19 + 0x2000) >> 14;
      }

      v9 = 2 * v21;
      if (!a6)
      {
        return v9 | (v6 << 16);
      }
    }

    v22 = v9 - ((v9 + ((v9 >> 28) & 7)) & 0xFFFFFFF8);
    if (v9 != ((v9 + ((v9 >> 28) & 7)) & 0xFFF8))
    {
      v22 = v22;
      v23 = v22 <= 0;
      if ((v22 & 0x8000u) != 0)
      {
        v22 = -v22;
      }

      if (v23)
      {
        v24 = -8;
      }

      else
      {
        v24 = 8;
      }

      v25 = v24 + ((v9 + ((v9 >> 28) & 7)) & 0xFFF8);
      if (v22 >= 5)
      {
        LOWORD(v9) = v25;
      }

      else
      {
        LOWORD(v9) = (v9 + ((v9 >> 28) & 7)) & 0xFFF8;
      }
    }

    v15 = (v6 + ((v6 >> 28) & 7)) & 0xFFFFFFF8;
  }

  v26 = v6 - v15;
  if (v26)
  {
    LOWORD(v6) = v6 - v26;
    v27 = v26 >= 0 ? v26 : -v26;
    if (v27 >= 5)
    {
      if (v26 > 0)
      {
        v28 = 8;
      }

      else
      {
        v28 = -8;
      }

      LOWORD(v6) = v28 + v6;
    }
  }

  return v9 | (v6 << 16);
}

uint64_t sub_277979874(unsigned __int8 a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a5 > 16)
  {
    return 0;
  }

  v6 = byte_277C3F990[a1];
  v7 = (v6 - 1) & a3;
  v8 = (v6 - 1) & a4;
  v9 = (v7 & a5) == 0;
  if ((v8 & a5) == 0)
  {
    v9 = 1;
  }

  while (1)
  {
    v10 = a5;
    if (a5 >= v6 || (a5 & v8) == 0)
    {
      break;
    }

    a5 *= 2;
    if ((v8 & (2 * v10)) != 0 && (v7 & (2 * v10)) != 0)
    {
      v9 = 0;
      break;
    }
  }

  v11 = *(a2 + 8308);
  v12 = *(a2 + 8309);
  if (v11 < v12)
  {
    v9 |= *(a2 + 10632) ^ 1;
  }

  if (v11 > v12)
  {
    v9 &= *(a2 + 10633);
  }

  if (*(**(a2 + 7864) + 1) == 6)
  {
    v14 = (v10 & v7) == 0 || v11 != v12;
    v9 &= v14;
  }

  return v9 & 1;
}