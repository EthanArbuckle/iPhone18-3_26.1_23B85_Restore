uint64_t closeWithStateProc_1(unsigned int *a1, void *a2, void *a3)
{
  if (!atomic_load(a1 + 2))
  {
    v97 = 0;
    v96 = 0u;
    v95 = 0u;
    __s = 0;
    v86 = 0;
    v8 = *a1;
    v9 = *(a1 + 594);
    v87 = 0;
    v88[0] = v8;
    v88[1] = v9;
    v10 = a1 + 623;
    v89 = strlen(a1 + 2492);
    v11 = a1 + 879;
    v90 = strlen(a1 + 3516);
    v12 = a1 + 1135;
    v91 = strlen(a1 + 4540);
    v98 = a1[1185];
    v99 = a1[1186];
    v15 = *(a1 + 596);
    if (v15)
    {
      LODWORD(v15) = AAHeaderGetEncodedSize(v15);
    }

    v92 = v15;
    v16 = *(a1 + 595);
    v93 = *(a1 + 597);
    v94 = v16;
    v17 = *(a1 + 601);
    *(&v95 + 1) = *(a1 + 598);
    *&v96 = v17;
    *(&v96 + 1) = *(a1 + 604);
    v18 = *(a1 + 608);
    if (v18)
    {
      v19 = AAByteStreamSeek(v18, 0, 2);
      v20 = 1;
    }

    else
    {
      v20 = 0;
      v19 = *(a1 + 609);
    }

    HIBYTE(v97) = v20;
    *&v95 = v19;
    LOBYTE(v97) = *(a1 + 607) != 0;
    if (!a2[3])
    {
      goto LABEL_118;
    }

    v21 = 0;
    v22 = v88;
    v23 = 84;
    while (1)
    {
      v24 = (a2[3])(*a2, v22, v23);
      if (v24 < 1)
      {
        break;
      }

      v22 = (v22 + v24);
      v21 += v24;
      v23 -= v24;
      if (!v23)
      {
        if (v21 < 0)
        {
          goto LABEL_118;
        }

        goto LABEL_15;
      }
    }

    if (v24 < 0)
    {
      goto LABEL_118;
    }

LABEL_15:
    if (!a2[3])
    {
      goto LABEL_118;
    }

    v25 = v89;
    if (v89)
    {
      v26 = 0;
      while (1)
      {
        v27 = (a2[3])(*a2, v10, v25);
        if (v27 < 1)
        {
          break;
        }

        v10 = (v10 + v27);
        v26 += v27;
        v25 -= v27;
        if (!v25)
        {
          if (v26 < 0)
          {
            goto LABEL_118;
          }

          goto LABEL_23;
        }
      }

      if (v27 < 0)
      {
        goto LABEL_118;
      }

LABEL_23:
      if (!a2[3])
      {
        goto LABEL_118;
      }
    }

    v28 = v90;
    if (v90)
    {
      v29 = 0;
      while (1)
      {
        v30 = (a2[3])(*a2, v11, v28);
        if (v30 < 1)
        {
          break;
        }

        v11 = (v11 + v30);
        v29 += v30;
        v28 -= v30;
        if (!v28)
        {
          goto LABEL_30;
        }
      }

      v29 = v30;
LABEL_30:
      if (v29 < 0)
      {
        goto LABEL_118;
      }
    }

    if (!a2[3])
    {
      goto LABEL_118;
    }

    v31 = v91;
    if (v91)
    {
      v32 = 0;
      while (1)
      {
        v33 = (a2[3])(*a2, v12, v31);
        if (v33 < 1)
        {
          break;
        }

        v12 = (v12 + v33);
        v32 += v33;
        v31 -= v33;
        if (!v31)
        {
          goto LABEL_38;
        }
      }

      v32 = v33;
LABEL_38:
      if (v32 < 0)
      {
        goto LABEL_118;
      }
    }

    v34 = *(a1 + 596);
    if (v34)
    {
      EncodedData = AAHeaderGetEncodedData(v34);
      if (!a2[3])
      {
        goto LABEL_118;
      }

      v36 = v92;
      if (!v92)
      {
LABEL_49:
        v40 = *(&v95 + 1);
        if (!*(&v95 + 1))
        {
          goto LABEL_148;
        }

        v41 = 0;
        v42 = *(a1 + 600);
        while (1)
        {
          v43 = (a2[3])(*a2, v42, v40);
          if (v43 < 1)
          {
            break;
          }

          v42 += v43;
          v41 += v43;
          v40 -= v43;
          if (!v40)
          {
            goto LABEL_55;
          }
        }

        v41 = v43;
LABEL_55:
        if ((v41 & 0x8000000000000000) == 0)
        {
LABEL_148:
          if (a2[3])
          {
            v44 = v96;
            if (!v96)
            {
              goto LABEL_65;
            }

            v45 = 0;
            v46 = *(a1 + 603);
            while (1)
            {
              v47 = (a2[3])(*a2, v46, v44);
              if (v47 < 1)
              {
                break;
              }

              v46 += v47;
              v45 += v47;
              v44 -= v47;
              if (!v44)
              {
                goto LABEL_63;
              }
            }

            v45 = v47;
LABEL_63:
            if ((v45 & 0x8000000000000000) == 0 && a2[3])
            {
LABEL_65:
              v48 = *(&v96 + 1);
              if (!*(&v96 + 1))
              {
                goto LABEL_149;
              }

              v49 = 0;
              v50 = *(a1 + 606);
              while (1)
              {
                v51 = (a2[3])(*a2, v50, v48);
                if (v51 < 1)
                {
                  break;
                }

                v50 += v51;
                v49 += v51;
                v48 -= v51;
                if (!v48)
                {
                  goto LABEL_71;
                }
              }

              v49 = v51;
LABEL_71:
              if ((v49 & 0x8000000000000000) == 0)
              {
LABEL_149:
                if (*(a1 + 608))
                {
                  v52 = v95;
                  if (v95)
                  {
                    v83 = 0;
                    v53 = 0;
                    v54 = 0;
                    v55 = 0;
                    while (2)
                    {
                      __s = 0;
                      offset = v55;
                      v56 = v52 - v55;
                      if (v56)
                      {
                        v57 = 0;
                        v58 = 0;
                        s = *(a1 + 608);
                        if (v56 >= 0x40000)
                        {
                          v59 = 0x40000;
                        }

                        else
                        {
                          v59 = v56;
                        }

                        v60 = offset;
                        while (1)
                        {
                          if (v57 == v54)
                          {
                            v61 = v54 + 0x40000;
                            if ((v54 + 0x40000) < 0)
                            {
                              goto LABEL_144;
                            }

                            if (v54 <= 0xFFFFFFFFFFFBFFFFLL)
                            {
                              do
                              {
                                while (!v54)
                                {
                                  v54 = 0x4000;
                                  v63 = 0x4000;
                                  if (v61 <= 0x4000)
                                  {
                                    goto LABEL_93;
                                  }
                                }

                                v62 = v54 >> 1;
                                if ((v54 & (v54 >> 1)) != 0)
                                {
                                  v62 = v54 & (v54 >> 1);
                                }

                                v54 += v62;
                              }

                              while (v54 < v61);
                              v63 = v54;
                              if (v54 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_143;
                              }

LABEL_93:
                              v64 = realloc(v53, v63);
                              if (v64)
                              {
                                v86 = v63;
                                v87 = v64;
                                v83 = v64;
                                v57 = __s;
                                goto LABEL_95;
                              }

                              free(v53);
LABEL_143:
                              __s = 0;
                              v86 = 0;
                              v87 = 0;
LABEL_144:
                              v71 = "reading DAT file";
                              v72 = 759;
                              goto LABEL_119;
                            }

                            v57 = v54;
                          }

                          v63 = v54;
                          v64 = v53;
LABEL_95:
                          if (v63 - v57 >= v59)
                          {
                            v65 = v59;
                          }

                          else
                          {
                            v65 = v63 - v57;
                          }

                          v53 = v64;
                          v66 = AAByteStreamPRead(s, &v64[v57], v65, v60);
                          if (v66 < 0)
                          {
                            goto LABEL_144;
                          }

                          if (!v66)
                          {
                            break;
                          }

                          v57 = __s + v66;
                          if (__CFADD__(__s, v66))
                          {
                            goto LABEL_144;
                          }

                          v54 = v86;
                          if (v57 > v86)
                          {
                            goto LABEL_144;
                          }

                          __s += v66;
                          v58 += v66;
                          v60 += v66;
                          v59 -= v66;
                          if (!v59)
                          {
                            goto LABEL_105;
                          }
                        }

                        v54 = v63;
                        if (!v58)
                        {
                          goto LABEL_139;
                        }

LABEL_105:
                        if (a2[3])
                        {
                          v67 = __s;
                          if (__s)
                          {
                            v68 = 0;
                            v69 = v83;
                            while (1)
                            {
                              v70 = (a2[3])(*a2, v69, v67);
                              if (v70 < 1)
                              {
                                break;
                              }

                              v69 += v70;
                              v68 += v70;
                              v67 -= v70;
                              if (!v67)
                              {
                                goto LABEL_113;
                              }
                            }

                            v53 = v83;
                            v68 = v70;
                          }

                          else
                          {
                            v68 = 0;
LABEL_113:
                            v53 = v83;
                          }
                        }

                        else
                        {
                          v68 = -1;
                        }

                        if (v68 != v58)
                        {
                          v71 = "write state";
                          v72 = 762;
                          goto LABEL_119;
                        }

                        v55 = v58 + offset;
                        v52 = v95;
                        if (v58 + offset < v95)
                        {
                          continue;
                        }
                      }

                      else
                      {
LABEL_139:
                        v52 = v95;
                        v55 = offset;
                      }

                      break;
                    }

                    if (v55 != v52)
                    {
                      v71 = "truncated DAT file";
                      v72 = 765;
                      goto LABEL_119;
                    }
                  }

LABEL_130:
                  v78 = *(a1 + 607);
                  if (v78)
                  {
                    if ((AAByteStreamCloseWithState(v78) & 0x80000000) != 0)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "closeWithStateProc", 775, 133, 0, "write state", v79, v80, v81);
                      *(a1 + 607) = 0;
                      v4 = 0xFFFFFFFFLL;
                      goto LABEL_120;
                    }

                    *(a1 + 607) = 0;
                    if (a3)
                    {
                      goto LABEL_133;
                    }
                  }

                  else if (a3)
                  {
LABEL_133:
                    v4 = 0;
                    *a3 = -1;
                    goto LABEL_120;
                  }

                  v4 = 0;
                  goto LABEL_120;
                }

                if (a2[3])
                {
                  v74 = v95;
                  if (!v95)
                  {
                    goto LABEL_130;
                  }

                  v75 = 0;
                  v76 = *(a1 + 611);
                  while (1)
                  {
                    v77 = (a2[3])(*a2, v76, v74);
                    if (v77 < 1)
                    {
                      break;
                    }

                    v76 += v77;
                    v75 += v77;
                    v74 -= v77;
                    if (!v74)
                    {
                      goto LABEL_129;
                    }
                  }

                  v75 = v77;
LABEL_129:
                  if ((v75 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_130;
                  }
                }

                v71 = "write state";
                v72 = 769;
LABEL_119:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "closeWithStateProc", v72, 133, 0, v71, v13, v14, v81);
                v4 = 0xFFFFFFFFLL;
LABEL_120:
                free(v87);
                memset_s(&__s, 0x18uLL, 0, 0x18uLL);
                AAHeaderDestroy(*(a1 + 596));
                free(*(a1 + 600));
                memset_s(a1 + 1196, 0x18uLL, 0, 0x18uLL);
                free(*(a1 + 603));
                memset_s(a1 + 1202, 0x18uLL, 0, 0x18uLL);
                free(*(a1 + 606));
                memset_s(a1 + 1208, 0x18uLL, 0, 0x18uLL);
                free(*(a1 + 611));
                memset_s(a1 + 1218, 0x18uLL, 0, 0x18uLL);
                AAByteStreamClose(*(a1 + 608));
                AAByteStreamClose(*(a1 + 607));
                free(a1);
                return v4;
              }
            }
          }
        }

LABEL_118:
        v71 = "write state";
        v72 = 747;
        goto LABEL_119;
      }

      v37 = EncodedData;
      v38 = 0;
      while (1)
      {
        v39 = (a2[3])(*a2, v37, v36);
        if (v39 < 1)
        {
          break;
        }

        v37 += v39;
        v38 += v39;
        v36 -= v39;
        if (!v36)
        {
          goto LABEL_47;
        }
      }

      v38 = v39;
LABEL_47:
      if (v38 < 0)
      {
        goto LABEL_118;
      }
    }

    if (!a2[3])
    {
      goto LABEL_118;
    }

    goto LABEL_49;
  }

  return 0xFFFFFFFFLL;
}

uint64_t writeHeaderProc(uint64_t a1, AAHeader header)
{
  v53 = *MEMORY[0x29EDCA608];
  if (atomic_load((a1 + 8)))
  {
    goto LABEL_22;
  }

  length = 0;
  value = 0;
  v5.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v5);
  if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(header, KeyIndex, &value), FieldUInt <= 1) ? (v10 = 1) : (v10 = FieldUInt), v10 <= 0))
  {
    v18 = "missing TYP";
    v19 = 569;
    goto LABEL_20;
  }

  v11.ikey = 4997708;
  v12 = AAHeaderGetKeyIndex(header, v11);
  if ((v12 & 0x80000000) == 0)
  {
    FieldString = AAHeaderGetFieldString(header, v12, 0xC8uLL, __s1, &length);
    v14 = FieldString <= 1 ? 1 : FieldString;
    if (v14 >= 1)
    {
      if (strcmp(__s1, (a1 + 4540)))
      {
        __strlcpy_chk();
        *(a1 + 4740) = 0;
        v15 = *(a1 + 1048);
        if (v15)
        {
          v16 = v15(*(a1 + 1040), 90, __s1, 0);
          if (v16 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "updateLabel", 205, 133, 0, "Caller cancelled", v7, v8, v48);
            v18 = "updating label";
            v19 = 571;
            goto LABEL_20;
          }

          if (v16)
          {
            *(a1 + 4740) = 1;
          }
        }
      }
    }
  }

  if (!*(a1 + 4740))
  {
    if (value == 77)
    {
      v51[0] = 0;
      v22.ikey = 5263193;
      v23 = AAHeaderGetKeyIndex(header, v22);
      if ((v23 & 0x80000000) == 0)
      {
        v24 = AAHeaderGetFieldUInt(header, v23, v51);
        v25 = v24 <= 1 ? 1 : v24;
        if (v25 >= 1)
        {
          if (v51[0] == 93)
          {
            *(a1 + 4760) = 0;
            goto LABEL_18;
          }

          if (v51[0] == 91)
          {
            v26.ikey = 5328729;
            v27 = AAHeaderGetKeyIndex(header, v26);
            if ((v27 & 0x80000000) == 0)
            {
              v28 = AAHeaderGetFieldUInt(header, v27, (a1 + 4760));
              v29 = v28 <= 1 ? 1 : v28;
              if (v29 >= 1 && *(a1 + 4760))
              {
                goto LABEL_18;
              }
            }

            v18 = "expected valid YOQ field";
            v19 = 584;
            goto LABEL_20;
          }
        }
      }
    }

    if (*(a1 + 4864) || *(a1 + 4856) || *(a1 + 4768) || *(a1 + 4872) || *(a1 + 4784) || *(a1 + 4808) || *(a1 + 4832))
    {
      v18 = "invalid extractor state (blobs)";
      v19 = 603;
    }

    else
    {
      *(a1 + 4768) = AAHeaderClone(header);
      *(a1 + 4776) = AAHeaderGetPayloadSize(header);
      if ((updateFromHeader(a1) & 0x80000000) == 0)
      {
        if (*(a1 + 2096) == 77)
        {
          v35 = (a1 + 1056);
        }

        else
        {
          if (!*(a1 + 4744))
          {
            v18 = "invalid AssetArchive stream (missing manifest)";
            v19 = 616;
            goto LABEL_20;
          }

          v35 = (a1 + 1056);
          if (*(a1 + 1056))
          {
            v41 = *(a1 + 1048);
            if (v41)
            {
              LOBYTE(v51[0]) = 0;
              v42 = v41(*(a1 + 1040), 91, a1 + 1064, v51);
              if (v42 < 0)
              {
                v18 = "Caller cancelled";
                v19 = 626;
                goto LABEL_20;
              }

              if (v42)
              {
                __strlcpy_chk();
                v43.ikey = 5521744;
                v44 = AAHeaderGetKeyIndex(*(a1 + 4768), v43);
                if (v44 < 0)
                {
                  v18 = "no PAT field in header";
                  v19 = 632;
                  goto LABEL_20;
                }

                v45 = v44;
                v46 = strlen((a1 + 1064));
                v47.ikey = 5521744;
                if (AAHeaderSetFieldString(*(a1 + 4768), v45, v47, (a1 + 1064), v46) < 0)
                {
                  v18 = "set PAT";
                  v19 = 633;
                  goto LABEL_20;
                }
              }
            }
          }
        }

        if (*(a1 + 2088) == 70 && *(a1 + 2096) == 69)
        {
          if (!*v35)
          {
            v18 = "missing PAT";
            v19 = 640;
            goto LABEL_20;
          }

          if ((concatExtractPath(v51, 0x400uLL, (a1 + 3516), (a1 + 1064)) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 641, 133, 0, "invalid PAT: %s", v36, v37, a1 + 40);
            goto LABEL_21;
          }

          v38 = strlen(v51);
          makePath(v51, v38);
          v39 = aaArchiveFileOutputStreamOpenAt(-1, v51, *(a1 + 2104), *(a1 + 2488), 0, *(a1 + 2472), *(a1 + 2480));
          *(a1 + 4856) = v39;
          if (!v39)
          {
            v18 = "file stream";
            v19 = 647;
            goto LABEL_20;
          }
        }

        if (!*(a1 + 1060) || *(a1 + 4856) || *(a1 + 2104) < *(a1 + 4752) || (v40 = AATempFileStreamOpenWithDirectory((a1 + 12)), (*(a1 + 4864) = v40) != 0))
        {
          if (*(a1 + 4776) || (processEntry_0(a1, v30, v31, v32, v33, v34, v7, v8) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          v18 = "entry processing";
          v19 = 658;
        }

        else
        {
          v18 = "temp stream";
          v19 = 654;
        }

        goto LABEL_20;
      }

      v18 = "extract entry attributes from header";
      v19 = 610;
    }

LABEL_20:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", v19, 133, 0, v18, v7, v8, v48);
LABEL_21:
    v20 = 0;
    atomic_compare_exchange_strong((a1 + 8), &v20, 1u);
LABEL_22:
    result = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

LABEL_18:
  result = 0;
LABEL_23:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t writeBlobProc(uint64_t a1, size_t a2, uint64_t __src, rsize_t __smax, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 8)))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (!__smax || *(a1 + 4740))
  {
    return result;
  }

  if (*(a1 + 4776) < __smax)
  {
    v12 = "blob size mismatch";
    v13 = 672;
LABEL_87:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeBlobProc", v13, 133, 0, v12, a7, a8, v51);
    v45 = 0;
    atomic_compare_exchange_strong((a1 + 8), &v45, 1u);
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 4768))
  {
    v12 = "invalid state";
    v13 = 673;
    goto LABEL_87;
  }

  v14 = __src;
  result = 0;
  v15 = a2 & 0xFFFFFF;
  if ((a2 & 0xFFFFFF) <= 0x544143)
  {
    if (v15 != 4408665)
    {
      if (v15 == 4997953)
      {
        v16 = *(a1 + 4832);
        v17 = __CFADD__(v16, __smax);
        v18 = v16 + __smax;
        if (!v17 && (v18 & 0x8000000000000000) == 0)
        {
          v19 = (a1 + 4832);
          v20 = *(a1 + 4840);
          if (v20 >= v18)
          {
            goto LABEL_74;
          }

          do
          {
            while (!v20)
            {
              v20 = 0x4000;
              if (v18 <= 0x4000)
              {
                v22 = (a1 + 4848);
                v20 = 0x4000;
                goto LABEL_72;
              }
            }

            v21 = v20 >> 1;
            if ((v20 & (v20 >> 1)) != 0)
            {
              v21 = v20 & (v20 >> 1);
            }

            v20 += v21;
          }

          while (v20 < v18);
          v22 = (a1 + 4848);
          if (v20 >= 0x2000000001)
          {
            goto LABEL_89;
          }

LABEL_72:
          v40 = *v22;
          v41 = realloc(*v22, v20);
          if (v41)
          {
            *(a1 + 4848) = v41;
            *(a1 + 4840) = v20;
LABEL_74:
            v42 = *(a1 + 4848);
            if (v14)
            {
LABEL_75:
              memcpy((v42 + *v19), v14, __smax);
LABEL_82:
              *v19 += __smax;
              goto LABEL_83;
            }

LABEL_80:
            if (v42)
            {
              memset_s((v42 + *v19), __smax, 0, __smax);
            }

            goto LABEL_82;
          }

          goto LABEL_94;
        }

LABEL_68:
        v24 = -1;
        goto LABEL_69;
      }

      return result;
    }

    v27 = *(a1 + 4784);
    v17 = __CFADD__(v27, __smax);
    v28 = v27 + __smax;
    if (v17 || (v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    v19 = (a1 + 4784);
    v29 = *(a1 + 4792);
    if (v29 >= v28)
    {
LABEL_79:
      v42 = *(a1 + 4800);
      if (v14)
      {
        goto LABEL_75;
      }

      goto LABEL_80;
    }

    do
    {
      while (!v29)
      {
        v29 = 0x4000;
        if (v28 <= 0x4000)
        {
          v22 = (a1 + 4800);
          v29 = 0x4000;
          goto LABEL_77;
        }
      }

      v30 = v29 >> 1;
      if ((v29 & (v29 >> 1)) != 0)
      {
        v30 = v29 & (v29 >> 1);
      }

      v29 += v30;
    }

    while (v29 < v28);
    v22 = (a1 + 4800);
    if (v29 >= 0x2000000001)
    {
      goto LABEL_89;
    }

LABEL_77:
    v40 = *v22;
    v43 = realloc(*v22, v29);
    if (v43)
    {
      *(a1 + 4800) = v43;
      *(a1 + 4792) = v29;
      goto LABEL_79;
    }

LABEL_94:
    v47 = v40;
    goto LABEL_95;
  }

  if (v15 == 5521752)
  {
    v31 = *(a1 + 4808);
    v17 = __CFADD__(v31, __smax);
    v32 = v31 + __smax;
    if (v17 || (v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    v19 = (a1 + 4808);
    v33 = *(a1 + 4816);
    if (v33 < v32)
    {
      do
      {
        while (!v33)
        {
          v33 = 0x4000;
          if (v32 <= 0x4000)
          {
            v22 = (a1 + 4824);
            v33 = 0x4000;
            goto LABEL_90;
          }
        }

        v34 = v33 >> 1;
        if ((v33 & (v33 >> 1)) != 0)
        {
          v34 = v33 & (v33 >> 1);
        }

        v33 += v34;
      }

      while (v33 < v32);
      v22 = (a1 + 4824);
      if (v33 >= 0x2000000001)
      {
LABEL_89:
        *__error() = 12;
        goto LABEL_96;
      }

LABEL_90:
      v40 = *v22;
      v46 = realloc(*v22, v33);
      if (!v46)
      {
        goto LABEL_94;
      }

      *(a1 + 4824) = v46;
      *(a1 + 4816) = v33;
    }

    v42 = *(a1 + 4824);
    if (v14)
    {
      goto LABEL_75;
    }

    goto LABEL_80;
  }

  if (v15 == 5521732)
  {
    v23 = *(a1 + 4856);
    if (v23)
    {
      if (!v23[3])
      {
        goto LABEL_68;
      }

      v24 = 0;
      v25 = __smax;
      while (1)
      {
        v26 = (v23[3])(*v23, v14, v25);
        if (v26 < 1)
        {
          break;
        }

        v14 += v26;
        v24 += v26;
        v25 -= v26;
        if (!v25)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      v35 = *(a1 + 4864);
      if (!v35)
      {
        v37 = *(a1 + 4872);
        v17 = __CFADD__(v37, __smax);
        v38 = v37 + __smax;
        if (!v17 && (v38 & 0x8000000000000000) == 0)
        {
          v19 = (a1 + 4872);
          a2 = *(a1 + 4880);
          if (a2 < v38)
          {
            do
            {
              while (!a2)
              {
                a2 = 0x4000;
                if (v38 <= 0x4000)
                {
                  v22 = (a1 + 4888);
                  a2 = 0x4000;
                  goto LABEL_98;
                }
              }

              v39 = a2 >> 1;
              if ((a2 & (a2 >> 1)) != 0)
              {
                v39 = a2 & (a2 >> 1);
              }

              a2 += v39;
            }

            while (a2 < v38);
            v22 = (a1 + 4888);
            if (a2 >= 0x2000000001)
            {
              goto LABEL_89;
            }

LABEL_98:
            v48 = *v22;
            v49 = a2;
            v50 = realloc(*v22, a2);
            if (!v50)
            {
              v47 = v48;
LABEL_95:
              free(v47);
LABEL_96:
              *v22 = 0;
              v24 = -1;
              *v19 = 0;
              v19[1] = 0;
LABEL_69:
              if (v24 != __smax)
              {
                v12 = "store blob";
                v13 = 688;
                goto LABEL_87;
              }

LABEL_83:
              v44 = *(a1 + 4776) - __smax;
              *(a1 + 4776) = v44;
              if (v44 || (processEntry_0(a1, a2, __src, __smax, a5, a6, a7, a8) & 0x80000000) == 0)
              {
                return 0;
              }

              v12 = "entry processing";
              v13 = 693;
              goto LABEL_87;
            }

            *(a1 + 4888) = v50;
            *(a1 + 4880) = v49;
          }

          v42 = *(a1 + 4888);
          if (v14)
          {
            goto LABEL_75;
          }

          goto LABEL_80;
        }

        goto LABEL_68;
      }

      if (!v35[3])
      {
        goto LABEL_68;
      }

      v24 = 0;
      v36 = __smax;
      while (1)
      {
        v26 = (v35[3])(*v35, v14, v36);
        if (v26 < 1)
        {
          break;
        }

        v14 += v26;
        v24 += v26;
        v36 -= v26;
        if (!v36)
        {
          goto LABEL_69;
        }
      }
    }

    v24 = v26;
    goto LABEL_69;
  }

  return result;
}

uint64_t processEntry_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v125 = *MEMORY[0x29EDCA608];
  length = 0;
  memset(&v104, 0, sizeof(v104));
  hash_function = 0;
  v108 = 0u;
  v109 = 0u;
  *value = 0u;
  v107 = 0u;
  v9 = *a1;
  v10 = *(a1 + 2492);
  if (*(a1 + 2492))
  {
    v11 = strcmp(a1 + 2492, a1 + 3516) != 0;
  }

  else
  {
    v11 = 1;
  }

  if ((v9 & 2) != 0)
  {
    v12 = 0x20000000000001;
  }

  else
  {
    v12 = 0x20000000000000;
  }

  v13 = *(a1 + 2416);
  if (v13)
  {
    if (a1[304] != a1[598])
    {
      v21 = "blob size mismatch";
      v22 = 235;
      goto LABEL_97;
    }

    a1[303] = a1[600];
  }

  if ((v13 & 2) != 0)
  {
    if (a1[306] != a1[601])
    {
      v21 = "blob size mismatch";
      v22 = 240;
      goto LABEL_97;
    }

    a1[305] = a1[603];
  }

  if ((v13 & 4) != 0)
  {
    if (a1[308] != a1[604])
    {
      v21 = "blob size mismatch";
      v22 = 245;
      goto LABEL_97;
    }

    a1[307] = a1[606];
  }

  v14 = a1[262];
  if (v14 <= 76)
  {
    switch(v14)
    {
      case 'C':
        if (!*(a1 + 264))
        {
          v21 = "missing PAT";
          v22 = 398;
          goto LABEL_97;
        }

        if (!v10)
        {
          v57 = 399;
          goto LABEL_158;
        }

        if (v9 < 0)
        {
          fprintf(*MEMORY[0x29EDCA610], "Copy %c %s\n", *(a1 + 2088), a1 + 1064);
        }

        if (v11)
        {
          if ((concatPath(v112, 0x400uLL, a1 + 2492, a1 + 1064) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 402, 133, 0, "invalid PAT: %s", v45, v46, a1 + 40);
            goto LABEL_98;
          }

          if ((concatExtractPath(__s, 0x400uLL, a1 + 3516, a1 + 1064) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 403, 133, 0, "invalid PAT: %s", v47, v48, a1 + 40);
            goto LABEL_98;
          }

          if ((aaCopyFile(v112, __s, v12) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 404, 133, 0, "copy file: %s", v49, v50, __s);
            goto LABEL_98;
          }

          if (a1[598] && (applyYEC(a1 + 598, a1 + 3516, a1 + 1064) & 0x80000000) != 0)
          {
            v21 = "apply YEC (copy)";
            v22 = 406;
            goto LABEL_97;
          }
        }

        break;
      case 'E':
        if (!*(a1 + 264))
        {
          v21 = "missing PAT";
          v22 = 262;
          goto LABEL_97;
        }

        if ((concatExtractPath(__s, 0x400uLL, a1 + 3516, a1 + 1064) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 263, 133, 0, "invalid PAT: %s", v51, v52, a1 + 40);
          goto LABEL_98;
        }

        if (v9 < 0)
        {
          fprintf(*MEMORY[0x29EDCA610], "Extract %c %s\n", *(a1 + 2088), a1 + 1064);
        }

        v53 = strlen(__s);
        makePath(__s, v53);
        v54 = a1[261];
        switch(v54)
        {
          case 'L':
            v70 = a1[596];
            v71.ikey = 4935244;
            KeyIndex = AAHeaderGetKeyIndex(v70, v71);
            if ((KeyIndex & 0x80000000) != 0 || ((FieldString = AAHeaderGetFieldString(v70, KeyIndex, 0x400uLL, v112, &length), FieldString <= 1) ? (v74 = 1) : (v74 = FieldString), v74 <= 0))
            {
              v21 = "missing LNK";
              v22 = 279;
              goto LABEL_97;
            }

            unlink(__s);
            if (symlink(v112, __s) < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 281, 133, 0, "creating symlink: %s", v75, v76, __s);
              goto LABEL_98;
            }

            break;
          case 'F':
            v69 = a1[607];
            if (v69)
            {
              AAByteStreamClose(v69);
              a1[607] = 0;
              if (!a1[598] || (applyYEC(a1 + 598, a1 + 3516, a1 + 1064) & 0x80000000) == 0)
              {
                goto LABEL_125;
              }

              v21 = "apply YEC (extract)";
              v22 = 288;
            }

            else
            {
              v21 = "no file stream";
              v22 = 286;
            }

            goto LABEL_97;
          case 'D':
            unlink(__s);
            if (mkdir(__s, 0x1EDu) < 0 && (*__error() != 17 || stat(__s, &v104) || (v104.st_mode & 0xF000) != 0x4000))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 274, 133, 0, "creating dir: %s", v55, v56, __s);
              goto LABEL_98;
            }

            break;
          default:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 292, 133, 0, "Unsupported entry type (extract): %c\n", a7, a8, v54);
            goto LABEL_98;
        }

        break;
      case 'I':
        if (!*(a1 + 264))
        {
          v21 = "missing PAT";
          v22 = 425;
          goto LABEL_97;
        }

        if (!v10)
        {
          v57 = 426;
          goto LABEL_158;
        }

        if ((concatPath(v112, 0x400uLL, a1 + 2492, a1 + 1064) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 427, 133, 0, "invalid PAT: %s", v23, v24, a1 + 40);
          goto LABEL_98;
        }

        if (v9 < 0)
        {
          fprintf(*MEMORY[0x29EDCA610], "Src check %c %s\n", *(a1 + 2088), a1 + 1064);
        }

        FieldCount = AAHeaderGetFieldCount(a1[596]);
        *__s = 0u;
        memset(v111, 0, 156);
        if (!FieldCount)
        {
          goto LABEL_95;
        }

        v26 = FieldCount;
        v27 = 0;
        v28 = 0;
        while (1)
        {
          if (AAHeaderGetFieldType(a1[596], v27) != 3)
          {
            goto LABEL_91;
          }

          FieldKey = AAHeaderGetFieldKey(a1[596], v27);
          if (!v28)
          {
            v37 = FieldKey.ikey & 0xFFFFFF;
            if ((FieldKey.ikey & 0xFFFFFF) == 0x324853)
            {
              v28 = 0x2000;
            }

            else if (v37 == 3491923)
            {
              v28 = 0x8000;
            }

            else
            {
              if (v37 != 3360851)
              {
                v28 = 0;
LABEL_91:
                v38 = 0;
                goto LABEL_92;
              }

              v28 = 0x4000;
            }
          }

          if (!*__s && (aaEntryHashesInitWithPath(__s, v28, a1 + 2492, a1 + 1064) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 454, 133, 0, "computing file digest: %s", v30, v31, v112);
            goto LABEL_155;
          }

          if (AAHeaderGetFieldHash(a1[596], v27, 0x40uLL, &hash_function, value) < 0)
          {
            v58 = "retrieving digest from header";
            v59 = 458;
            goto LABEL_154;
          }

          if ((__s[0] & 4) != 0 && hash_function == 3)
          {
            v34 = *(v111 + 12) == *value && *(&v111[1] + 4) == *&value[8] && *(&v111[1] + 12) == v107 && *(&v111[2] + 4) == *(&v107 + 1);
          }

          else
          {
            if ((__s[0] & 8) != 0 && hash_function == 4)
            {
              v35 = &v111[2] + 12;
              v36 = 48;
            }

            else
            {
              v38 = 0;
              if ((__s[0] & 0x10) == 0 || hash_function != 5)
              {
                goto LABEL_92;
              }

              v35 = &v111[5] + 12;
              v36 = 64;
            }

            v34 = memcmp(v35, value, v36) == 0;
          }

          v38 = v34;
LABEL_92:
          if (++v27 >= v26 || v38)
          {
            if (v38)
            {
              goto LABEL_45;
            }

LABEL_95:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 465, 133, 0, "patch doesn't match source file: %s", v19, v20, v112);
LABEL_155:
            v10 = 0;
            goto LABEL_159;
          }
        }

      default:
        goto LABEL_124;
    }

LABEL_125:
    v39 = 0;
    v40 = 0;
    v10 = 1;
    goto LABEL_100;
  }

  if (v14 <= 79)
  {
    if (v14 == 77)
    {
      v39 = 0;
      v40 = 0;
      v10 = 1;
      *(a1 + 1186) = 1;
      goto LABEL_100;
    }

    if (v14 == 79)
    {
      if (*(a1 + 264))
      {
        if ((v9 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v124 = 0;
        v123 = 0u;
        v122 = 0u;
        v121 = 0u;
        v120 = 0u;
        v119 = 0u;
        v118 = 0u;
        v117 = 0u;
        v116 = 0u;
        v115 = 0u;
        v114 = 0u;
        v113 = 0u;
        *v112 = 0u;
        v15 = *(a1 + 2112);
        if (v15)
        {
          __strlcat_chk();
          v15 = *(a1 + 2112);
          if ((v15 & 2) == 0)
          {
LABEL_24:
            if ((v15 & 8) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_169;
          }
        }

        else if ((a1[264] & 2) == 0)
        {
          goto LABEL_24;
        }

        __strlcat_chk();
        v15 = *(a1 + 2112);
        if ((v15 & 8) == 0)
        {
LABEL_25:
          if ((v15 & 4) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_170;
        }

LABEL_169:
        __strlcat_chk();
        v15 = *(a1 + 2112);
        if ((v15 & 4) == 0)
        {
LABEL_26:
          if ((v15 & 0x40) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_171;
        }

LABEL_170:
        __strlcat_chk();
        v15 = *(a1 + 2112);
        if ((v15 & 0x40) == 0)
        {
LABEL_27:
          if ((v15 & 0x10) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_172;
        }

LABEL_171:
        __strlcat_chk();
        v15 = *(a1 + 2112);
        if ((v15 & 0x10) == 0)
        {
LABEL_28:
          if ((v15 & 0x20) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

LABEL_172:
        __strlcat_chk();
        if ((a1[264] & 0x20) == 0)
        {
LABEL_30:
          v16 = *(a1 + 2184);
          if ((v16 & 2) != 0)
          {
            __strlcat_chk();
            v16 = *(a1 + 2184);
            if ((v16 & 1) == 0)
            {
LABEL_32:
              if ((v16 & 8) == 0)
              {
                goto LABEL_33;
              }

              goto LABEL_176;
            }
          }

          else if ((a1[273] & 1) == 0)
          {
            goto LABEL_32;
          }

          __strlcat_chk();
          v16 = *(a1 + 2184);
          if ((v16 & 8) == 0)
          {
LABEL_33:
            if ((v16 & 4) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

LABEL_176:
          __strlcat_chk();
          if ((a1[273] & 4) == 0)
          {
LABEL_35:
            v17 = *(a1 + 2240);
            if ((v17 & 4) != 0)
            {
              __strlcat_chk();
              v17 = *(a1 + 2240);
              if ((v17 & 8) == 0)
              {
LABEL_37:
                if ((v17 & 0x10) == 0)
                {
                  goto LABEL_39;
                }

                goto LABEL_38;
              }
            }

            else if ((a1[280] & 8) == 0)
            {
              goto LABEL_37;
            }

            __strlcat_chk();
            if ((a1[280] & 0x10) == 0)
            {
LABEL_39:
              v18 = *(a1 + 2416);
              if (v18)
              {
                __strlcat_chk();
                v18 = *(a1 + 2416);
                if ((v18 & 2) == 0)
                {
LABEL_41:
                  if ((v18 & 4) == 0)
                  {
LABEL_43:
                    fprintf(*MEMORY[0x29EDCA610], "Dst fixup %c%s %s\n", *(a1 + 2088), v112, a1 + 1064);
LABEL_44:
                    *v112 = 0;
                    if ((aaCheckAndFixWithPath(a1 + 2112, a1 + 2184, a1 + 2240, a1 + 2416, -1, v112, a1 + 3516, a1 + 1064, v12) & 0x80000000) != 0)
                    {
                      v96 = __s;
                      v58 = "fixup failed: %s";
                      v59 = 503;
LABEL_154:
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", v59, 133, 0, v58, v19, v20, v96);
                      goto LABEL_155;
                    }

LABEL_45:
                    v10 = 1;
LABEL_159:
                    v39 = 0;
                    goto LABEL_160;
                  }

LABEL_42:
                  __strlcat_chk();
                  goto LABEL_43;
                }
              }

              else if ((a1[302] & 2) == 0)
              {
                goto LABEL_41;
              }

              __strlcat_chk();
              if ((a1[302] & 4) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_42;
            }

LABEL_38:
            __strlcat_chk();
            goto LABEL_39;
          }

LABEL_34:
          __strlcat_chk();
          goto LABEL_35;
        }

LABEL_29:
        __strlcat_chk();
        goto LABEL_30;
      }

      v21 = "missing PAT";
      v22 = 472;
      goto LABEL_97;
    }

    goto LABEL_124;
  }

  if (v14 != 80)
  {
    if (v14 == 82)
    {
      if (*(a1 + 264))
      {
        if (v10)
        {
          if (v9 < 0)
          {
            fprintf(*MEMORY[0x29EDCA610], "Remove %c %s\n", *(a1 + 2088), a1 + 1064);
          }

          if (!v11)
          {
            if ((concatExtractPath(__s, 0x400uLL, a1 + 3516, a1 + 1064) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 417, 133, 0, "invalid PAT: %s", v43, v44, a1 + 40);
              goto LABEL_98;
            }

            unlink(__s);
          }

          goto LABEL_125;
        }

        v57 = 413;
LABEL_158:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", v57, 133, 0, "no input dir", a7, a8, v96);
        goto LABEL_159;
      }

      v21 = "missing PAT";
      v22 = 412;
LABEL_97:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", v22, 133, 0, v21, a7, a8, v96);
LABEL_98:
      v39 = 0;
      v40 = 0;
LABEL_99:
      v10 = 0;
      goto LABEL_100;
    }

LABEL_124:
    fprintf(*MEMORY[0x29EDCA610], "TODO(%c) %c %s\n", v14, *(a1 + 2088), a1 + 1064);
    goto LABEL_125;
  }

  if (!*(a1 + 264))
  {
    v21 = "missing PAT";
    v22 = 301;
    goto LABEL_97;
  }

  if (v9 < 0)
  {
    fprintf(*MEMORY[0x29EDCA610], "Patch %s\n", a1 + 1064);
  }

  if (!v10)
  {
    v57 = 303;
    goto LABEL_158;
  }

  if (a1[607])
  {
    v21 = "file stream already opened";
    v22 = 304;
    goto LABEL_97;
  }

  if ((concatExtractPath(__s, 0x400uLL, a1 + 3516, a1 + 1064) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 305, 133, 0, "invalid PAT: %s", v60, v61, a1 + 40);
    goto LABEL_98;
  }

  v101 = 0;
  v102 = 0;
  v62 = a1[608];
  if (v62)
  {
    FD = aaFileStreamGetFD(v62);
    v64 = MappedBufferCreateWithFD(FD, 0, 0xFFFFFFFFFFFFFFFFLL);
    v39 = v64;
    if (!v64)
    {
      v87 = "mapping patch file";
      v88 = 316;
      goto LABEL_239;
    }

    v67 = BXDiffMatchesOBuf(v64);
    DataSize = MappedBufferGetDataSize(v39);
  }

  else
  {
    v39 = 0;
    v67 = a1[611];
    DataSize = a1[609];
  }

  v77 = strlen(__s);
  makePath(__s, v77);
  if (DataSize < 9 || *v67 != 0x3031464649444952)
  {
    if ((BXDiff5GetPatchInfo(v67, DataSize, &v101) & 0x80000000) != 0)
    {
      LOBYTE(v96) = a1 + 40;
      v87 = "invalid patch: %s";
      v88 = 353;
    }

    else if (v102)
    {
      v84 = aaArchiveFileOutputStreamOpenAt(-1, __s, v101, *(a1 + 622), 0, *(a1 + 618), a1[310]);
      a1[607] = v84;
      if (v84)
      {
        if ((BXPatch5StreamWithFlags(0, 0, 0, v67, DataSize, aaByteStreamPCWriteProc, v84, 2) & 0x80000000) == 0)
        {
LABEL_210:
          AAByteStreamClose(a1[607]);
          a1[607] = 0;
          goto LABEL_211;
        }

        v96 = __s;
        v87 = "patching failed: %s";
        v88 = 364;
      }

      else
      {
        v87 = "file stream";
        v88 = 359;
      }
    }

    else if ((concatPath(v112, 0x400uLL, a1 + 2492, a1 + 1064) & 0x80000000) != 0)
    {
      LOBYTE(v96) = a1 + 40;
      v87 = "invalid PAT: %s";
      v88 = 371;
    }

    else if (v11)
    {
      v91 = aaArchiveFileOutputStreamOpenAt(-1, __s, v101, *(a1 + 622), 0, *(a1 + 618), a1[310]);
      a1[607] = v91;
      if (!v91)
      {
        v87 = "file stream";
        v88 = 381;
LABEL_240:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", v88, 133, v91, v87, v65, v66, v96);
        goto LABEL_241;
      }

      if ((BXPatch5FileWithFlags(v112, v67, DataSize, aaByteStreamPCWriteProc, v91, 2) & 0x80000000) == 0)
      {
        goto LABEL_210;
      }

      v96 = __s;
      v87 = "patching failed: %s";
      v88 = 386;
    }

    else if (HIDWORD(v102))
    {
      if ((BXPatch5InPlace(__s, v67, DataSize, 0, v89, v90, v65, v66) & 0x80000000) == 0)
      {
LABEL_211:
        MappedBufferDestroy(v39);
        if (!a1[598] || (applyYEC(a1 + 598, a1 + 3516, a1 + 1064) & 0x80000000) == 0)
        {
          v39 = 0;
          v10 = 1;
LABEL_160:
          v40 = 0;
          goto LABEL_100;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 392, 133, 0, "apply YEC (patch)", v85, v86, v96);
        v39 = 0;
LABEL_241:
        v10 = 0;
        goto LABEL_160;
      }

      v87 = "in-place patching failed";
      v88 = 376;
    }

    else
    {
      v87 = "patch doesn't allow in-place";
      v88 = 375;
    }

LABEL_239:
    LODWORD(v91) = 0;
    goto LABEL_240;
  }

  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  v40 = AAMemoryInputStreamOpen(v67, DataSize, v78, v79, v80, v81, v82, v83);
  if (!v40)
  {
    v94 = "AAMemoryInputStreamOpen";
    v95 = 336;
    goto LABEL_235;
  }

  if ((concatPath(v112, 0x400uLL, a1 + 2492, a1 + 1064) & 0x80000000) != 0)
  {
    LOBYTE(v96) = a1 + 40;
    v94 = "invalid PAT: %s";
    v95 = 339;
    goto LABEL_235;
  }

  *&v98 = v112;
  *(&v98 + 1) = __s;
  v10 = 1;
  DWORD2(v99) = 1;
  LODWORD(v100) = 1;
  if ((RawImagePatchInternal(&v97, v40) & 0x80000000) != 0)
  {
    v94 = "RawImagePatchInternal";
    v95 = 348;
LABEL_235:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", v95, 133, 0, v94, v92, v93, v96);
    goto LABEL_99;
  }

LABEL_100:
  AAHeaderDestroy(a1[596]);
  a1[596] = 0;
  AAByteStreamClose(a1[608]);
  a1[608] = 0;
  AAByteStreamClose(a1[607]);
  a1[607] = 0;
  a1[609] = 0;
  a1[598] = 0;
  a1[601] = 0;
  a1[604] = 0;
  memset_s(a1 + 264, 0x48uLL, 0, 0x48uLL);
  memset_s(a1 + 273, 0x38uLL, 0, 0x38uLL);
  memset_s(a1 + 280, 0xACuLL, 0, 0xACuLL);
  memset_s(a1 + 302, 0x38uLL, 0, 0x38uLL);
  AAByteStreamClose(v40);
  MappedBufferDestroy(v39);
  if (v10)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v42 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t applyYEC(uint64_t *a1, char *a2, const char *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (*a1)
  {
    v4 = a3;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    memset(v19, 0, 172);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    LOBYTE(v11) = 1;
    *(&v11 + 1) = a1[2];
    *&v12 = v3;
    v10 = 0;
    v7 = aaCheckAndFixWithPath(v17, v15, v19, &v11, -1, &v10, a2, a3, 0x20000000000000);
    if (v7 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "applyYEC", 113, 133, 0, "ECC failed: %s", v5, v6, v4);
    }

    result = (v7 >> 31);
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

_WORD *enterThreadErrorContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    ++result[2];
  }

  else
  {
    v11 = calloc(1uLL, 0x2000uLL);
    if (v11)
    {
      v11[2] = 1;
      *(v11 + 18) = 531890176;

      return setThreadErrorContext(v11, v12, v13, v14, v15, v16, v17, v18, a9);
    }

    else
    {
      v19 = *__error();

      return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThreadErrorContext", 76, 5, v19, "malloc", v20, v21, a9);
    }
  }

  return result;
}

size_t setThreadErrorContext(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_setspecific(ErrorContextKey, a1);
  if (result)
  {
    v12 = *__error();

    return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "setThreadErrorContext", 65, 5, v12, "pthread_setspecific", v13, v14, a9);
  }

  return result;
}

uint64_t leaveThreadErrorContext(__CFError **a1, const __CFString **a2, int a3)
{
  userInfoValues[1] = *MEMORY[0x29EDCA608];
  ErrorContextKey = getErrorContextKey();
  v7 = pthread_getspecific(ErrorContextKey);
  if (v7)
  {
    v15 = v7;
    v16 = v7[2] - 1;
    v7[2] = v16;
    if (!v16)
    {
      v18 = v7[36];
      v17 = *v7;
      if (!v7[36] && (v17 & 0x80000000) == 0)
      {
        if (!v7[3] || !a2 && !a3)
        {
          goto LABEL_46;
        }

        bzero(userInfoKeys, 0x400uLL);
        v34 = 0;
        do
        {
          v35 = strlen(userInfoKeys);
          if (v35 + 20 > 0x3FF)
          {
            break;
          }

          v36 = *&v15[2 * v34 + 4];
          if (v35)
          {
            snprintf(userInfoKeys + v35, 1024 - v35, ",0x%08x");
          }

          else
          {
            snprintf(userInfoKeys, 0x400uLL, "Warnings:0x%08x");
          }

          ++v34;
        }

        while (v34 < v15[3]);
        v37 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], userInfoKeys, 0x600u);
        if (!v37)
        {
          goto LABEL_46;
        }

        v38 = v37;
        if (a2)
        {
          *a2 = v37;
          goto LABEL_46;
        }

        Length = CFStringGetLength(v37);
        v46 = calloc(1uLL, Length + 1);
        if (v46)
        {
          v47 = v46;
          CFStringGetCString(v38, v46, Length + 1, 0x600u);
          fprintf(*MEMORY[0x29EDCA610], "%s\n", v47);
          free(v47);
        }

        v44 = v38;
LABEL_45:
        CFRelease(v44);
        goto LABEL_46;
      }

      if (!a1 && !a3)
      {
        goto LABEL_46;
      }

      v19 = calloc(v18 + 32, 1uLL);
      if (!v19)
      {
        goto LABEL_46;
      }

      v20 = v19;
      v21 = v19;
      if ((v17 & 0x80000000) != 0)
      {
        snprintf(v19, v18 + 32, "Error 0x%08x\n", v17);
        v21 = &v20[strlen(v20)];
      }

      v22 = v15[36];
      if (v15[36])
      {
        v23 = 0;
        do
        {
          v24 = (v15 + v23 + 76);
          v25 = *v24;
          v26 = v25 + v23;
          if (v25 < 4 || v26 > v22)
          {
            break;
          }

          v28 = v25 - 3;
          memcpy(v21, v24 + 1, v28);
          v29 = &v21[v28];
          *v29 = 10;
          v21 = v29 + 1;
          v23 = v26;
          v22 = v15[36];
        }

        while (v22 > v26);
      }

      if (v21 > v20)
      {
        *(v21 - 1) = 0;
      }

      v30 = *MEMORY[0x29EDB8ED8];
      v31 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v20, 0x600u);
      if (!v31)
      {
        free(v20);
        goto LABEL_46;
      }

      v32 = v31;
      userInfoKeys[0] = *MEMORY[0x29EDB8F58];
      userInfoValues[0] = v31;
      v33 = CFErrorCreateWithUserInfoKeysAndValues(v30, @"com.apple.ParallelCompression", 1, userInfoKeys, userInfoValues, 1);
      CFRelease(v32);
      free(v20);
      if (v33)
      {
        if (!a1)
        {
          v39 = CFErrorCopyDescription(v33);
          if (v39)
          {
            v40 = v39;
            v41 = CFStringGetLength(v39);
            v42 = calloc(1uLL, v41 + 1);
            if (v42)
            {
              v43 = v42;
              CFStringGetCString(v40, v42, v41 + 1, 0x600u);
              fprintf(*MEMORY[0x29EDCA610], "%s\n", v43);
              free(v43);
            }

            CFRelease(v40);
          }

          v44 = v33;
          goto LABEL_45;
        }

        *a1 = v33;
      }

LABEL_46:
      setThreadErrorContext(0, v8, v9, v10, v11, v12, v13, v14, v50);
      free(v15);
      goto LABEL_47;
    }
  }

  v17 = 0;
LABEL_47:
  v48 = *MEMORY[0x29EDCA608];
  return v17;
}

size_t appendThreadErrorContextString(size_t result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result - 8193 >= 0xFFFFFFFFFFFFE000)
    {
      v2 = result;
      ErrorContextKey = getErrorContextKey();
      result = pthread_getspecific(ErrorContextKey);
      if (result)
      {
        v4 = result;
        v5 = v2 + 3;
        v6 = *(result + 72);
        if (v6 + (v2 + 3) <= *(result + 74))
        {
          v7 = result + v6;
          *(v7 + 76) = v5;
          v8 = v7 + 78;
          result = memcpy((v7 + 78), v1, v2);
          *(v8 + v2) = 0;
          *(v4 + 72) += v5;
        }
      }
    }
  }

  return result;
}

_WORD *updateThreadErrorContextErrorCode(_WORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        *result = v1;
        result[3] = 0;
      }
    }
  }

  return result;
}

_DWORD *updateThreadErrorContextWarningCode(_DWORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        v3 = *(result + 3);
        if (v3 <= 0xF)
        {
          result[v3 + 2] = v1;
          *(result + 3) = v3 + 1;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *saveThreadErrorContext(void *a1)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    v4 = result;
    bzero(a1, 0x2000uLL);
    v5 = v4[36];
    if (v5 <= 0x1FB4)
    {
      v6 = v5 + 76;
    }

    else
    {
      v6 = 0;
    }

    return memcpy(a1, v4, v6);
  }

  return result;
}

unsigned __int16 *restoreThreadErrorContext(__int128 *a1)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    v4 = a1[1];
    v12 = *a1;
    v13 = v4;
    v5 = a1[3];
    v14 = a1[2];
    *v15 = v5;
    *&v15[12] = *(a1 + 60);
    if ((v12 & 0x80000000) == 0)
    {
      v6 = WORD3(v12);
      if ((*result & 0x80000000) != 0 && WORD3(v12) <= 0xFu)
      {
        v6 = WORD3(v12) + 1;
        *(&v12 + WORD3(v12) + 2) = *result;
      }

      v7 = result[3];
      if (result[3] && v6 <= 0xF)
      {
        v8 = 0;
        do
        {
          v9 = *&result[2 * v8 + 4];
          if (v8 >= v6 || *(&v12 + v8 + 2) != v9)
          {
            *(&v12 + v6++ + 2) = v9;
          }

          ++v8;
        }

        while (v8 < v7 && v6 < 0x10);
      }

      WORD3(v12) = v6;
    }

    v10 = *v15;
    *(result + 2) = v14;
    *(result + 3) = v10;
    *(result + 30) = *&v15[12];
    v11 = v13;
    *result = v12;
    *(result + 1) = v11;
    if (*&v15[24] <= 0x1FB4uLL)
    {
      return memcpy(result + 38, a1 + 76, *&v15[24]);
    }
  }

  return result;
}

uint64_t createThread(pthread_t *a1, uint64_t a2, uint64_t a3, size_t a4)
{
  *__relative_priority = 0;
  v8 = calloc(1uLL, 0x2000uLL);
  if (!v8)
  {
    v19 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 552, 5, *v19, "malloc", v20, v21, v36[0]);
    return -*__error();
  }

  v9 = v8;
  v10 = calloc(1uLL, 0x40uLL);
  if (!v10)
  {
    v22 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 555, 5, *v22, "malloc", v23, v24, v36[0]);
    v25 = __error();
    v13 = -*v25;
    if (!*v25)
    {
      return v13;
    }

    goto LABEL_10;
  }

  v11 = v10;
  v12 = pthread_attr_init(v10);
  if (v12)
  {
    v13 = v12;
    v14 = *__error();
    v17 = "pthread_attr_init";
    v18 = 558;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", v18, 5, v14, v17, v15, v16, v36[0]);
    goto LABEL_6;
  }

  if (a4)
  {
    v28 = pthread_attr_setstacksize(v11, a4);
    if (v28)
    {
      v13 = v28;
      v14 = *__error();
      v17 = "pthread_attr_setstacksize";
      v18 = 564;
      goto LABEL_5;
    }
  }

  v29 = pthread_self();
  qos_class_np = pthread_get_qos_class_np(v29, &__relative_priority[1], __relative_priority);
  if (qos_class_np)
  {
    v13 = qos_class_np;
    v14 = *__error();
    v17 = "pthread_get_qos_class_np";
    v18 = 570;
    goto LABEL_5;
  }

  v31 = pthread_attr_set_qos_class_np(v11, __relative_priority[1], __relative_priority[0]);
  if (v31)
  {
    v13 = v31;
    v14 = *__error();
    v17 = "pthread_attr_set_qos_class_np";
    v18 = 572;
    goto LABEL_5;
  }

  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 0x40000000;
  v36[2] = __createThread_block_invoke;
  v36[3] = &__block_descriptor_tmp;
  v36[4] = v9;
  v32 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v36);
  v9[2] = v32;
  if (v32)
  {
    *v9 = a2;
    v9[1] = a3;
    *(v9 + 7) = 1;
    *(v9 + 24) = 530317312;
    v13 = pthread_create(a1, v11, threadWrapperProc, v9);
    if (v13)
    {
      v14 = *__error();
      v17 = "pthread_create";
      v18 = 591;
      goto LABEL_5;
    }
  }

  else
  {
    v33 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 578, 5, *v33, "dispatch_block_create", v34, v35, v36[0]);
    v13 = -*__error();
  }

LABEL_6:
  pthread_attr_destroy(v11);
  free(v11);
  if (!v13)
  {
    return v13;
  }

LABEL_10:
  v26 = v9[2];
  if (v26)
  {
    _Block_release(v26);
  }

  free(v9);
  return v13;
}

uint64_t threadWrapperProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  setThreadErrorContext((a1 + 24), a2, a3, a4, a5, a6, a7, a8, v17);
  (*(*(a1 + 16) + 16))();
  setThreadErrorContext(0, v9, v10, v11, v12, v13, v14, v15, v18);
  return a1;
}

uint64_t joinThread(_opaque_pthread_t *a1)
{
  v23 = 0;
  if (pthread_join(a1, &v23))
  {
    joinThread_cold_1();
  }

  v3 = v23;
  if (*(v23 + 14) != 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 627, 5, 0, "expected ref_count=1 for terminating thread", v1, v2, v22);
    v13 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  ErrorContextKey = getErrorContextKey();
  v5 = pthread_getspecific(ErrorContextKey);
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  v7 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
    v8 = v3[6];
    if (v8 < 0)
    {
      *v5 = v8;
      v7 = v8;
    }
  }

  v9 = *(v3 + 48);
  if (!*(v3 + 48))
  {
LABEL_14:
    if (v7)
    {
      v13 = 0;
      *(v6 + 3) = 0;
      goto LABEL_26;
    }

    if (*(v3 + 15))
    {
      v15 = 0;
      v16 = *(v6 + 3);
      LODWORD(v17) = 16 - v16;
      if (v16 <= 0x10)
      {
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      v18 = &v6[v16 + 2];
      v19 = v16 + 1;
      while (v17 != v15)
      {
        v13 = 0;
        *(v18 + 4 * v15) = v3[v15 + 8];
        *(v6 + 3) = v19 + v15++;
        if (v15 >= *(v3 + 15))
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = (v3 + v11 + 100);
    v13 = *v12;
    if (!*v12)
    {
      break;
    }

    v10 += v13;
    if (v10 > v9)
    {
      goto LABEL_25;
    }

    v14 = *(v6 + 36);
    if (v14 + v13 <= *(v6 + 37))
    {
      memcpy(v6 + v14 + 76, v12, *v12);
      *(v6 + 36) += v13;
      v11 = v10;
      v9 = *(v3 + 48);
      if (v9 > v10)
      {
        continue;
      }
    }

    v7 = *v6;
    goto LABEL_14;
  }

LABEL_26:
  v20 = *(v3 + 2);
  if (v20)
  {
    _Block_release(v20);
  }

  free(v3);
  return v13;
}

size_t ParallelCompressionUpdateError(_WORD *a1, size_t a2)
{
  updateThreadErrorContextErrorCode(a1);

  return appendThreadErrorContextString(a2);
}

uint64_t getErrorContextKey()
{
  if (pthread_once(&getErrorContextKey_errorContextOnce, createErrorContextKey))
  {
    v0 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "getErrorContextKey", 53, 5, *v0, "pthread_once");
  }

  return gErrorContextKey;
}

uint64_t createErrorContextKey()
{
  result = pthread_key_create(&gErrorContextKey, 0);
  if (result)
  {
    v1 = *__error();

    return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createErrorContextKey", 42, 5, v1, "pthread_key_create");
  }

  return result;
}

AAArchiveStream AAConvertArchiveOutputStreamOpen(AAArchiveStream stream, AAFieldKeySet insert_key_set, AAFieldKeySet remove_key_set, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v13 = malloc(0x38uLL);
  v14 = v13;
  if (v13)
  {
    memset_s(v13, 0x38uLL, 0, 0x38uLL);
  }

  v15 = malloc(0x310uLL);
  v16 = v15;
  if (!v15 || (memset_s(v15, 0x310uLL, 0, 0x310uLL), !v14))
  {
    v21 = *__error();
    v22 = "malloc";
    v23 = 507;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "AAConvertArchiveOutputStreamOpen", v23, 111, v21, v22, v18, v19, v25);
    free(v14);
    convertStreamClose(v16);
    return 0;
  }

  *v16 = stream;
  v16[1] = AAFieldKeySetClone(insert_key_set);
  v17 = AAFieldKeySetClone(remove_key_set);
  v16[2] = v17;
  if (!v16[1] || !v17)
  {
    v22 = "copy key set";
    v23 = 512;
    v21 = 0;
    goto LABEL_11;
  }

  v16[3] = flags;
  v16[4] = msg_data;
  v16[5] = msg_proc;
  v16[12] = 0x10000;
  v20 = malloc(0x10000uLL);
  v16[13] = v20;
  if (!v20)
  {
    v21 = *__error();
    v22 = "malloc";
    v23 = 518;
    goto LABEL_11;
  }

  v14[3] = convertStreamWriteHeader;
  v14[4] = convertStreamWriteBlob;
  v14[2] = convertStreamAbort;
  *v14 = v16;
  v14[1] = convertStreamClose;
  return v14;
}

uint64_t convertStreamClose(uint64_t a1)
{
  if (a1)
  {
    AAFieldKeySetDestroy(*(a1 + 8));
    AAFieldKeySetDestroy(*(a1 + 16));
    AAHeaderDestroy(*(a1 + 56));
    OECCStreamDestroy(*(a1 + 776));
    free(*(a1 + 128));
    memset_s((a1 + 112), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 104));
    free(*(a1 + 88));
    memset_s((a1 + 80), 0x10uLL, 0, 0x10uLL);
    free(a1);
  }

  return 0;
}

uint64_t convertStreamWriteHeader(uint64_t a1, AAHeader header)
{
  v89 = *MEMORY[0x29EDCA608];
  if (*(a1 + 48))
  {
    goto LABEL_2;
  }

  value = 0;
  *v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  *(a1 + 52) = 0;
  *(a1 + 136) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  v6.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v6);
  if ((KeyIndex & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, KeyIndex, &value) >= 2)
  {
    v16 = "Invalid entry missing TYP field (skipped)";
    v17 = 237;
    goto LABEL_12;
  }

  v11.ikey = 5521744;
  v12 = AAHeaderGetKeyIndex(header, v11);
  if ((v12 & 0x80000000) != 0)
  {
    LOBYTE(v15) = 1;
LABEL_16:
    if (value == 77)
    {
      goto LABEL_18;
    }

    v16 = "Invalid non metadata entry missing PAT field (skipped)";
    v17 = 244;
LABEL_12:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", v17, 111, v16, v8, v9, v10, v74);
    goto LABEL_13;
  }

  FieldString = AAHeaderGetFieldString(header, v12, 0x400uLL, __s, 0);
  if (FieldString <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = FieldString;
  }

  v15 = v14 < 1;
  if (v15)
  {
    goto LABEL_16;
  }

LABEL_18:
  v19 = *(a1 + 40);
  if (!v19)
  {
    LOBYTE(v15) = 1;
  }

  if (!v15)
  {
    v70 = v19(*(a1 + 32), 40, __s, header);
    if (v70 < 0)
    {
      goto LABEL_112;
    }

    if (!v70)
    {
      v71 = (*(a1 + 40))(*(a1 + 32), 41, __s, v87);
      if ((v71 & 0x80000000) == 0)
      {
        if (v71)
        {
          __strlcpy_chk();
        }

        goto LABEL_21;
      }

LABEL_112:
      *(a1 + 48) = 1;
LABEL_143:
      result = 0xFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    *(a1 + 52) = 1;
    goto LABEL_14;
  }

LABEL_21:
  if (value == 77 && (*(a1 + 25) & 2) != 0)
  {
    goto LABEL_13;
  }

  if ((aaHeaderBlobArrayInitWithHeader(a1 + 80, header) & 0x80000000) != 0)
  {
    v72 = "capturing non-empty blobs";
    v73 = 262;
    goto LABEL_141;
  }

  v22 = AAHeaderCreate();
  *(a1 + 56) = v22;
  if (!v22)
  {
    v72 = "create new header";
    v73 = 266;
LABEL_141:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", v73, 111, 0, v72, v20, v21, v74);
    if (!*(a1 + 48))
    {
      *(a1 + 48) = 1;
      AAArchiveStreamCancel(*a1);
    }

    goto LABEL_143;
  }

  FieldCount = AAHeaderGetFieldCount(header);
  if (!FieldCount)
  {
    goto LABEL_117;
  }

  v29 = FieldCount;
  v75 = 0;
  for (i = 0; i != v29; ++i)
  {
    FieldKey = AAHeaderGetFieldKey(header, i);
    v32 = FieldKey;
    v33 = AAFieldKeySetContainsKey(*(a1 + 16), v32);
    v34 = *FieldKey.skey & 0xFFFFFFLL;
    if ((*FieldKey.skey & 0xFFFFFFLL) == 0x544144)
    {
      size.tv_sec = 0;
      offset = 0;
      if (AAHeaderGetFieldBlob(header, i, &size, &offset) < 0)
      {
        v72 = "getting header blob field";
        v73 = 290;
        goto LABEL_141;
      }

      if (!v33 || ((*FieldKey.skey & 0xFFFFFFuLL) > 0x54414F ? (v35 = 5521744) : (v35 = 5265748), v34 == v35))
      {
        v36 = FieldKey;
        if (AAHeaderSetFieldBlob(*(a1 + 56), 0xFFFFFFFF, v36, size.tv_sec) < 0)
        {
          v72 = "inserting header field";
          v73 = 295;
          goto LABEL_141;
        }

        v75 = 1;
      }

      v37.ikey = 3229779;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v37))
      {
        v38.ikey = 3229779;
        if (AAHeaderGetKeyIndex(header, v38) < 0)
        {
          v39.ikey = 3229779;
          if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v39, 2u, v83) < 0)
          {
            v72 = "inserting header field";
            v73 = 300;
            goto LABEL_141;
          }

          *(a1 + 136) |= 2u;
          CC_SHA1_Deprecated_Init((a1 + 160));
        }
      }

      v40.ikey = 3295315;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v40))
      {
        v41.ikey = 3295315;
        if (AAHeaderGetKeyIndex(header, v41) < 0)
        {
          v42.ikey = 3295315;
          if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v42, 3u, v83) < 0)
          {
            v72 = "inserting header field";
            v73 = 306;
            goto LABEL_141;
          }

          *(a1 + 136) |= 4u;
          CC_SHA256_Init((a1 + 256));
        }
      }

      v43.ikey = 3360851;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v43))
      {
        v44.ikey = 3360851;
        if (AAHeaderGetKeyIndex(header, v44) < 0)
        {
          v45.ikey = 3360851;
          if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v45, 4u, v83) < 0)
          {
            v72 = "inserting header field";
            v73 = 312;
            goto LABEL_141;
          }

          *(a1 + 136) |= 8u;
          CC_SHA384_Init((a1 + 360));
        }
      }

      v46.ikey = 3491923;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v46))
      {
        v47.ikey = 3491923;
        if (AAHeaderGetKeyIndex(header, v47) < 0)
        {
          v48.ikey = 3491923;
          if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v48, 5u, v83) < 0)
          {
            v72 = "inserting header field";
            v73 = 318;
            goto LABEL_141;
          }

          *(a1 + 136) |= 0x10u;
          CC_SHA512_Init((a1 + 568));
        }
      }

      v49.ikey = 5458755;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v49))
      {
        v50.ikey = 5458755;
        if (AAHeaderGetKeyIndex(header, v50) < 0)
        {
          v51.ikey = 5458755;
          if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v51, 1u, v83) < 0)
          {
            v72 = "inserting header field";
            v73 = 324;
            goto LABEL_141;
          }

          *(a1 + 136) |= 1u;
          CC_CKSUM_Init(a1 + 144);
        }
      }

      v52.ikey = 5917011;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v52))
      {
        v53.ikey = 5917011;
        if (AAHeaderGetKeyIndex(header, v53) < 0)
        {
          v54.ikey = 5917011;
          if (AAHeaderSetFieldUInt(*(a1 + 56), 0xFFFFFFFF, v54, size.tv_sec) < 0)
          {
            v72 = "inserting header field";
            v73 = 330;
            goto LABEL_141;
          }
        }
      }

      v55.ikey = 4408665;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v55))
      {
        v56.ikey = 4408665;
        if (AAHeaderGetKeyIndex(header, v56) < 0)
        {
          if (size.tv_sec)
          {
            v57.ikey = 4408665;
            if (AAHeaderSetFieldBlob(*(a1 + 56), 0xFFFFFFFF, v57, 0) < 0)
            {
              v72 = "inserting header field";
              v73 = 334;
              goto LABEL_141;
            }

            *(a1 + 136) |= 0x20u;
            v58 = OECCStreamCreate(1, 0x4000u, size.tv_sec);
            *(a1 + 776) = v58;
            if (!v58)
            {
              v72 = "creating YEC context";
              v73 = 337;
              goto LABEL_141;
            }
          }
        }
      }

      if (!v33 || ((*FieldKey.skey & 0xFFFFFFuLL) > 0x54414F ? (v59 = 5521744) : (v59 = 5265748), v34 == v59))
      {
        if (*(a1 + 136))
        {
          v72 = "can't generate a field from DAT, and keep DAT at the same time";
          v73 = 342;
          goto LABEL_141;
        }
      }
    }

    if (v33)
    {
      if ((*FieldKey.skey & 0xFFFFFFuLL) > 0x54414F)
      {
        if (v34 == 5521744)
        {
LABEL_87:
          v63 = strlen(__s);
          v64 = FieldKey;
          if (AAHeaderSetFieldString(*(a1 + 56), 0xFFFFFFFF, v64, __s, v63) < 0)
          {
            v72 = "inserting header field";
            v73 = 350;
            goto LABEL_141;
          }

          continue;
        }

        v60 = 5653828;
        goto LABEL_78;
      }

      if (v34 != 4935244)
      {
        v60 = 5265748;
LABEL_78:
        if (v34 != v60)
        {
          continue;
        }
      }
    }

    else if (v34 == 5521744)
    {
      goto LABEL_87;
    }

    if (v34 != 5521732)
    {
      FieldType = AAHeaderGetFieldType(header, i);
      v80 = 0;
      offset = 0;
      v78 = 0;
      v79 = 0;
      hash_function = 0;
      size.tv_sec = 0;
      size.tv_nsec = 0;
      if (FieldType > 2)
      {
        switch(FieldType)
        {
          case 3:
            if (AAHeaderGetFieldHash(header, i, *(a1 + 96), &hash_function, *(a1 + 104)) < 0)
            {
              v72 = "Invalid input header";
              v73 = 378;
              goto LABEL_141;
            }

            v67 = FieldKey;
            if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v67, hash_function, *(a1 + 104)) < 0)
            {
              v72 = "inserting header field";
              v73 = 379;
              goto LABEL_141;
            }

            break;
          case 4:
            if (AAHeaderGetFieldTimespec(header, i, &size) < 0)
            {
              v72 = "Invalid input header";
              v73 = 382;
              goto LABEL_141;
            }

            v69 = FieldKey;
            if (AAHeaderSetFieldTimespec(*(a1 + 56), 0xFFFFFFFF, v69, &size) < 0)
            {
              v72 = "inserting header field";
              v73 = 383;
              goto LABEL_141;
            }

            break;
          case 5:
            if (AAHeaderGetFieldBlob(header, i, &v80, &v79) < 0)
            {
              v72 = "Invalid input header";
              v73 = 363;
              goto LABEL_141;
            }

            v65 = FieldKey;
            if (AAHeaderSetFieldBlob(*(a1 + 56), 0xFFFFFFFF, v65, v80) < 0)
            {
              v72 = "inserting header field";
              v73 = 364;
              goto LABEL_141;
            }

            break;
          default:
LABEL_135:
            v72 = "Invalid header field type";
            v73 = 385;
            goto LABEL_141;
        }
      }

      else if (FieldType)
      {
        if (FieldType == 1)
        {
          if (AAHeaderGetFieldUInt(header, i, &v78) < 0)
          {
            v72 = "Invalid input header";
            v73 = 367;
            goto LABEL_141;
          }

          v68 = FieldKey;
          if (AAHeaderSetFieldUInt(*(a1 + 56), 0xFFFFFFFF, v68, v78) < 0)
          {
            v72 = "inserting header field";
            v73 = 368;
            goto LABEL_141;
          }
        }

        else
        {
          if (FieldType != 2)
          {
            goto LABEL_135;
          }

          if (AAHeaderGetFieldString(header, i, *(a1 + 96), *(a1 + 104), &offset) < 0)
          {
            v72 = "Invalid input header";
            v73 = 371;
            goto LABEL_141;
          }

          v62 = FieldKey;
          if (AAHeaderSetFieldString(*(a1 + 56), 0xFFFFFFFF, v62, *(a1 + 104), offset) < 0)
          {
            v72 = "inserting header field";
            v73 = 372;
            goto LABEL_141;
          }
        }
      }

      else
      {
        v66 = FieldKey;
        if (AAHeaderSetFieldFlag(*(a1 + 56), 0xFFFFFFFF, v66) < 0)
        {
          v72 = "inserting header field";
          v73 = 375;
          goto LABEL_141;
        }
      }
    }
  }

  if (v75 && (sendHeader(a1) & 0x80000000) != 0)
  {
    v72 = "sending header";
    v73 = 392;
    goto LABEL_141;
  }

LABEL_117:
  *(a1 + 76) = 0;
  if ((convertStreamToNextNonEmptyBlob(a1, v24, v25, v26, v27, v28, v20, v21) & 0x80000000) != 0)
  {
    v72 = "iterating to next blob";
    v73 = 396;
    goto LABEL_141;
  }

  if (*(a1 + 76) >= *(a1 + 80) && (convertStreamEndEntry(a1) & 0x80000000) != 0)
  {
    v72 = "finishing entry";
    v73 = 399;
    goto LABEL_141;
  }

LABEL_2:
  result = 0;
LABEL_14:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t convertStreamWriteBlob(uint64_t a1, uint64_t key, void *__src, rsize_t __smax, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48))
  {
    return 0;
  }

  v37 = v8;
  result = 0;
  if (__smax && !*(a1 + 52))
  {
    v12 = *(a1 + 76);
    if (v12 >= *(a1 + 80))
    {
      v15 = "invalid state";
      v16 = 414;
      goto LABEL_9;
    }

    v13 = *(a1 + 88) + 24 * v12;
    v14 = *v13;
    if (((*v13 ^ key) & 0xFFFFFF) != 0)
    {
      v15 = "invalid state";
      v16 = 416;
LABEL_9:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteBlob", v16, 111, 0, v15, a7, a8, v37);
      if (!*(a1 + 48))
      {
        *(a1 + 48) = 1;
        AAArchiveStreamCancel(*a1);
      }

      return 0xFFFFFFFFLL;
    }

    v18.ikey = key;
    if (!*(a1 + 68))
    {
      if ((convertStreamBeginBlob(a1, key, *(v13 + 8)) & 0x80000000) != 0)
      {
        v15 = "starting blob";
        v16 = 422;
        goto LABEL_9;
      }

      *(a1 + 68) = 1;
    }

    if ((*&v14 & 0xFFFFFFLL) != 0x544144)
    {
LABEL_30:
      if (!*(a1 + 72))
      {
        goto LABEL_33;
      }

      if (*(a1 + 64))
      {
        v20 = v18;
        if (AAArchiveStreamWriteBlob(*a1, v20, __src, __smax) < 0)
        {
          v15 = "sending blob data";
          v16 = 449;
          goto LABEL_9;
        }

LABEL_33:
        v21 = *(v13 + 8) - __smax;
        *(v13 + 8) = v21;
        if (!v21)
        {
          if ((convertStreamEndBlob(a1, key, __src, __smax, a5, a6, a7, a8) & 0x80000000) != 0)
          {
            v15 = "finishing blob";
            v16 = 457;
            goto LABEL_9;
          }

          *(a1 + 68) = 0;
          ++*(a1 + 76);
          if ((convertStreamToNextNonEmptyBlob(a1, v22, v23, v24, v25, v26, a7, a8) & 0x80000000) != 0)
          {
            v15 = "iterating to next blob";
            v16 = 461;
            goto LABEL_9;
          }

          if (*(a1 + 76) >= *(a1 + 80) && (convertStreamEndEntry(a1) & 0x80000000) != 0)
          {
            v15 = "finishing entry";
            v16 = 465;
            goto LABEL_9;
          }
        }

        return 0;
      }

      v28 = (a1 + 112);
      v27 = *(a1 + 112);
      v29 = __CFADD__(v27, __smax);
      v30 = v27 + __smax;
      if (!v29 && (v30 & 0x8000000000000000) == 0)
      {
        v31 = *(a1 + 120);
        if (v31 >= v30)
        {
LABEL_58:
          v36 = *(a1 + 128);
          if (__src)
          {
            memcpy((v36 + *v28), __src, __smax);
          }

          else if (v36)
          {
            memset_s((v36 + *v28), __smax, 0, __smax);
          }

          *v28 += __smax;
          if ((__smax & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          do
          {
            while (!v31)
            {
              v31 = 0x4000;
              if (v30 <= 0x4000)
              {
                v33 = (a1 + 128);
                v31 = 0x4000;
                goto LABEL_56;
              }
            }

            v32 = v31 >> 1;
            if ((v31 & (v31 >> 1)) != 0)
            {
              v32 = v31 & (v31 >> 1);
            }

            v31 += v32;
          }

          while (v31 < v30);
          v33 = (a1 + 128);
          if (v31 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_66;
          }

LABEL_56:
          v34 = *v33;
          v35 = realloc(*v33, v31);
          if (v35)
          {
            *(a1 + 120) = v31;
            *(a1 + 128) = v35;
            goto LABEL_58;
          }

          free(v34);
LABEL_66:
          *v33 = 0;
          *v28 = 0;
          *(a1 + 120) = 0;
        }
      }

      v15 = "accumulating blob data";
      v16 = 445;
      goto LABEL_9;
    }

    v19 = *(a1 + 136);
    if ((v19 & 2) != 0)
    {
      CC_SHA1_Deprecated_Update((a1 + 160), __src, __smax);
      v19 = *(a1 + 136);
      if ((v19 & 4) == 0)
      {
LABEL_19:
        if ((v19 & 8) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    else if ((*(a1 + 136) & 4) == 0)
    {
      goto LABEL_19;
    }

    CC_SHA256_Update((a1 + 256), __src, __smax);
    v19 = *(a1 + 136);
    if ((v19 & 8) == 0)
    {
LABEL_20:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_26:
    CC_SHA384_Update((a1 + 360), __src, __smax);
    v19 = *(a1 + 136);
    if ((v19 & 0x10) == 0)
    {
LABEL_21:
      if ((v19 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

LABEL_27:
    CC_SHA512_Update((a1 + 568), __src, __smax);
    v19 = *(a1 + 136);
    if ((v19 & 1) == 0)
    {
LABEL_22:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_28:
    CC_CKSUM_Update(a1 + 144, __src, __smax);
    if ((*(a1 + 136) & 0x20) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    if (OECCStreamWrite(*(a1 + 776), __src, __smax, __smax, a5, a6, a7, a8) != __smax)
    {
      v15 = "updating YEC field";
      v16 = 436;
      goto LABEL_9;
    }

    goto LABEL_30;
  }

  return result;
}

void convertStreamAbort(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    *(a1 + 48) = 1;
    AAArchiveStreamCancel(*a1);
  }
}

uint64_t sendHeader(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v1;
  if (*(a1 + 64))
  {
    return 0;
  }

  if (AAArchiveStreamWriteHeader(*a1, *(a1 + 56)) < 0)
  {
    v13 = "Encoding failed";
    v14 = 56;
  }

  else
  {
    v6 = 0;
    *(a1 + 64) = 1;
    v7 = *(a1 + 112);
    v8 = *(a1 + 128);
    while (1)
    {
      if (v6 >= v7)
      {
        result = 0;
        *(a1 + 112) = 0;
        return result;
      }

      v9 = v6 + 24;
      if (v6 + 24 > v7)
      {
        v13 = "Invalid payload";
        v14 = 66;
        goto LABEL_16;
      }

      v10 = (v8 + v6);
      v11 = *(v8 + v6 + 8);
      v6 = v11 + v9;
      if (v11 + v9 > v7)
      {
        break;
      }

      v12 = *v10;
      if (AAArchiveStreamWriteBlob(*a1, v12, (v8 + v9), v11) < 0)
      {
        v13 = "Blob encoding failed";
        v14 = 70;
        goto LABEL_16;
      }
    }

    v13 = "Invalid payload";
    v14 = 69;
  }

LABEL_16:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "sendHeader", v14, 111, 0, v13, v4, v5, v15);
  return 0xFFFFFFFFLL;
}

uint64_t convertStreamToNextNonEmptyBlob(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 76);
  if (v9 >= *(a1 + 80))
  {
    return 0;
  }

  v11 = 1;
  do
  {
    v12 = *(a1 + 88) + 24 * v9;
    if (*(v12 + 8))
    {
      break;
    }

    v13 = *v12;
    v14 = convertStreamBeginBlob(a1, v13, 0);
    if ((convertStreamEndBlob(a1, v15, v16, v17, v18, v19, v20, v21) | v14) < 0)
    {
      v11 = 0;
    }

    v22 = *(a1 + 80);
    v9 = *(a1 + 76) + 1;
    *(a1 + 76) = v9;
  }

  while (v9 < v22);
  if (v11)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamToNextNonEmptyBlob", 204, 111, 0, "iterating to next non-empty blob", a7, a8, v8);
  return 0xFFFFFFFFLL;
}

uint64_t convertStreamEndEntry(uint64_t a1)
{
  v4 = sendHeader(a1);
  if (v4 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndEntry", 182, 111, 0, "send header", v2, v3, v6);
  }

  AAHeaderDestroy(*(a1 + 56));
  *(a1 + 56) = 0;
  OECCStreamDestroy(*(a1 + 776));
  *(a1 + 776) = 0;
  free(*(a1 + 128));
  memset_s((a1 + 112), 0x18uLL, 0, 0x18uLL);
  return (v4 >> 31);
}

uint64_t convertStreamBeginBlob(uint64_t a1, AAFieldKey key, uint64_t a3)
{
  KeyIndex = AAHeaderGetKeyIndex(*(a1 + 56), key);
  *(a1 + 72) = KeyIndex >= 0;
  if (KeyIndex < 0 || *(a1 + 64))
  {
    return 0;
  }

  v11 = (a1 + 112);
  v10 = *(a1 + 112);
  v12 = a3 + v10 + 24;
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 120);
  if (v13 < v12)
  {
    do
    {
      while (!v13)
      {
        v13 = 0x4000;
        if (v12 <= 0x4000)
        {
          v15 = (a1 + 128);
          v13 = 0x4000;
          goto LABEL_15;
        }
      }

      v14 = v13 >> 1;
      if ((v13 & (v13 >> 1)) != 0)
      {
        v14 = v13 & (v13 >> 1);
      }

      v13 += v14;
    }

    while (v13 < v12);
    v15 = (a1 + 128);
    if (v13 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_28;
    }

LABEL_15:
    v16 = *v15;
    v17 = realloc(*v15, v13);
    if (v17)
    {
      *(a1 + 120) = v13;
      *(a1 + 128) = v17;
      v10 = *(a1 + 112);
      goto LABEL_17;
    }

    free(v16);
LABEL_28:
    *v15 = 0;
    *v11 = 0;
    *(a1 + 120) = 0;
LABEL_29:
    v21 = "allocating blob buffer";
    v22 = 87;
LABEL_39:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamBeginBlob", v22, 111, 0, v21, v7, v8, v27);
    return 0xFFFFFFFFLL;
  }

LABEL_17:
  v18 = v10 + 24;
  if (v10 >= 0xFFFFFFFFFFFFFFE8 || (v18 & 0x8000000000000000) != 0)
  {
LABEL_38:
    v21 = "accumulating blob data";
    v22 = 91;
    goto LABEL_39;
  }

  if (v13 < v18)
  {
    do
    {
      while (!v13)
      {
        v13 = 0x4000;
        if (v18 <= 0x4000)
        {
          v20 = (a1 + 128);
          v13 = 0x4000;
          goto LABEL_33;
        }
      }

      v19 = v13 >> 1;
      if ((v13 & (v13 >> 1)) != 0)
      {
        v19 = v13 & (v13 >> 1);
      }

      v13 += v19;
    }

    while (v13 < v18);
    v20 = (a1 + 128);
    if (v13 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_37;
    }

LABEL_33:
    v24 = *v20;
    v25 = realloc(*v20, v13);
    if (v25)
    {
      v23 = v25;
      *(a1 + 120) = v13;
      *(a1 + 128) = v25;
      v10 = *(a1 + 112);
      goto LABEL_35;
    }

    free(v24);
LABEL_37:
    *v20 = 0;
    *v11 = 0;
    *(a1 + 120) = 0;
    goto LABEL_38;
  }

  v23 = *(a1 + 128);
LABEL_35:
  result = 0;
  v26 = &v23[v10];
  *v26 = key;
  *(v26 + 1) = 0;
  *(v26 + 1) = a3;
  *(v26 + 2) = 0;
  *v11 += 24;
  return result;
}

uint64_t convertStreamEndBlob(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x29EDCA608];
  if ((*(*(a1 + 88) + 24 * *(a1 + 76)) & 0xFFFFFF) == 0x544144)
  {
    v9 = *(a1 + 136);
    if (v9)
    {
      if (*(a1 + 64))
      {
        v10 = "Header has already been sent";
        v11 = 111;
LABEL_46:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", v11, 111, 0, v10, a7, a8, v36);
        result = 0xFFFFFFFFLL;
        goto LABEL_47;
      }

      if ((v9 & 2) != 0)
      {
        CC_SHA1_Deprecated_Final(md, (a1 + 160));
        v12.ikey = 3229779;
        KeyIndex = AAHeaderGetKeyIndex(*(a1 + 56), v12);
        if ((KeyIndex & 0x80000000) != 0)
        {
          v10 = "Missing field in new header";
          v11 = 117;
          goto LABEL_46;
        }

        v14.ikey = 3229779;
        if (AAHeaderSetFieldHash(*(a1 + 56), KeyIndex, v14, 2u, md) < 0)
        {
          v10 = "updating new header field";
          v11 = 118;
          goto LABEL_46;
        }

        LOBYTE(v9) = *(a1 + 136);
      }

      if ((v9 & 4) != 0)
      {
        CC_SHA256_Final(md, (a1 + 256));
        v15.ikey = 3295315;
        v16 = AAHeaderGetKeyIndex(*(a1 + 56), v15);
        if ((v16 & 0x80000000) != 0)
        {
          v10 = "Missing field in new header";
          v11 = 125;
          goto LABEL_46;
        }

        v17.ikey = 3295315;
        if (AAHeaderSetFieldHash(*(a1 + 56), v16, v17, 3u, md) < 0)
        {
          v10 = "updating new header field";
          v11 = 126;
          goto LABEL_46;
        }

        LOBYTE(v9) = *(a1 + 136);
      }

      if ((v9 & 8) != 0)
      {
        CC_SHA384_Final(md, (a1 + 360));
        v18.ikey = 3360851;
        v19 = AAHeaderGetKeyIndex(*(a1 + 56), v18);
        if ((v19 & 0x80000000) != 0)
        {
          v10 = "Missing field in new header";
          v11 = 133;
          goto LABEL_46;
        }

        v20.ikey = 3360851;
        if (AAHeaderSetFieldHash(*(a1 + 56), v19, v20, 4u, md) < 0)
        {
          v10 = "updating new header field";
          v11 = 134;
          goto LABEL_46;
        }

        LOBYTE(v9) = *(a1 + 136);
      }

      if ((v9 & 0x10) != 0)
      {
        CC_SHA512_Final(md, (a1 + 568));
        v21.ikey = 3491923;
        v22 = AAHeaderGetKeyIndex(*(a1 + 56), v21);
        if ((v22 & 0x80000000) != 0)
        {
          v10 = "Missing field in new header";
          v11 = 141;
          goto LABEL_46;
        }

        v23.ikey = 3491923;
        if (AAHeaderSetFieldHash(*(a1 + 56), v22, v23, 5u, md) < 0)
        {
          v10 = "updating new header field";
          v11 = 142;
          goto LABEL_46;
        }

        LOBYTE(v9) = *(a1 + 136);
      }

      if (v9)
      {
        CC_CKSUM_Final(md, a1 + 144);
        v24.ikey = 5458755;
        v25 = AAHeaderGetKeyIndex(*(a1 + 56), v24);
        if ((v25 & 0x80000000) != 0)
        {
          v10 = "Missing field in new header";
          v11 = 149;
          goto LABEL_46;
        }

        v26.ikey = 5458755;
        if (AAHeaderSetFieldHash(*(a1 + 56), v25, v26, 1u, md) < 0)
        {
          v10 = "updating new header field";
          v11 = 150;
          goto LABEL_46;
        }

        LOBYTE(v9) = *(a1 + 136);
      }

      if ((v9 & 0x20) != 0)
      {
        DataSize = OECCStreamGetDataSize(*(a1 + 776));
        v28.ikey = 4408665;
        v29 = AAHeaderGetKeyIndex(*(a1 + 56), v28);
        if ((v29 & 0x80000000) != 0)
        {
          v10 = "Missing field in new header";
          v11 = 157;
          goto LABEL_46;
        }

        v30.ikey = 4408665;
        if (AAHeaderSetFieldBlob(*(a1 + 56), v29, v30, DataSize) < 0)
        {
          v10 = "updating new header field";
          v11 = 158;
          goto LABEL_46;
        }
      }
    }

    if ((sendHeader(a1) & 0x80000000) != 0)
    {
      v10 = "send header";
      v11 = 162;
      goto LABEL_46;
    }

    if ((*(a1 + 136) & 0x20) != 0)
    {
      v31 = OECCStreamGetDataSize(*(a1 + 776));
      DataPtr = OECCStreamGetDataPtr(*(a1 + 776));
      v33.ikey = 4408665;
      if (AAArchiveStreamWriteBlob(*a1, v33, DataPtr, v31) < 0)
      {
        v10 = "sending blob data";
        v11 = 169;
        goto LABEL_46;
      }
    }
  }

  result = 0;
LABEL_47:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

void *aaInPlaceStreamOpen(AAByteStream_impl *a1)
{
  v2 = calloc(1uLL, 0x68uLL);
  v3 = calloc(1uLL, 0x80uLL);
  v6 = v3;
  if (!v2 || !v3)
  {
    v9 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "aaInPlaceStreamOpen", 237, 126, *v9, "malloc", v10, v11, v19);
    free(v2);
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!*(a1 + 4) || !*(a1 + 5) || !*(a1 + 6) || !*(a1 + 8))
  {
    v7 = "stream not in-place compatible\n";
    v8 = 243;
    goto LABEL_12;
  }

  if (pthread_mutex_init(v3, 0))
  {
    v7 = "mutex failed";
    v8 = 246;
LABEL_12:
    v12 = 0;
LABEL_13:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "aaInPlaceStreamOpen", v8, 126, v12, v7, v4, v5, v19);
    free(v2);
LABEL_14:
    pthread_mutex_destroy(v6);
    free(*&v6[1].__opaque[32]);
LABEL_15:
    free(v6);
    return 0;
  }

  v6[1].__sig = a1;
  *v6[1].__opaque = 0;
  *&v6[1].__opaque[16] = 0;
  v14 = AAByteStreamSeek(a1, 0, 2);
  *&v6[1].__opaque[8] = v14;
  *&v6[1].__opaque[24] = 0;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v7 = "bad input size";
    v8 = 252;
    goto LABEL_12;
  }

  *&v6[1].__opaque[40] = (v14 + 0xFFFFF) >> 20;
  if (v14 >= 0x20000000000001)
  {
    *__error() = 12;
    *&v6[1].__opaque[32] = 0;
LABEL_26:
    v12 = *__error();
    v7 = "malloc";
    v8 = 257;
    goto LABEL_13;
  }

  v15 = calloc((v14 + 0xFFFFF) >> 20, 0x10uLL);
  *&v6[1].__opaque[32] = v15;
  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = *&v6[1].__opaque[40];
  if (v16)
  {
    v17 = v15 + 8;
    for (i = v16 - 1; ; --i)
    {
      *(v17 - 1) = 0;
      if (!i)
      {
        break;
      }

      *v17 = 0x100000;
      v17 += 2;
    }

    *v17 = ((*&v6[1].__opaque[8] - 1) & 0xFFFFF) + 1;
  }

  AACustomByteStreamSetData(v2, v6);
  AACustomByteStreamSetPReadProc(v2, aaInPlaceStreamPRead);
  AACustomByteStreamSetPWriteProc(v2, aaInPlaceStreamPWrite);
  AACustomByteStreamSetReadProc(v2, aaInPlaceStreamRead);
  AACustomByteStreamSetWriteProc(v2, aaInPlaceStreamWrite);
  AACustomByteStreamSetSeekProc(v2, aaInPlaceStreamSeek);
  AACustomByteStreamSetCloseProc(v2, aaInPlaceStreamClose);
  AACustomByteStreamSetCancelProc(v2, aaInPlaceStreamCancel);
  return v2;
}

uint64_t aaInPlaceStreamSeek(uint64_t a1, off_t a2, int a3)
{
  if (pthread_mutex_lock(a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "aaInPlaceStreamSeek", 176, 126, 0, "MutexLock", v6, v7, v11);
    *(a1 + 120) = 1;
    return -1;
  }

  if (*(a1 + 120))
  {
    pthread_mutex_unlock(a1);
    return -1;
  }

  v10 = AAByteStreamSeek(*(a1 + 64), a2, a3);
  v8 = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    *(a1 + 88) = v10;
    *(a1 + 72) = v10;
  }

  pthread_mutex_unlock(a1);
  return v8;
}

uint64_t aaInPlaceStreamClose(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*&a1[1].__opaque[48] && *&a1[1].__opaque[24] < *&a1[1].__opaque[8] && (AAByteStreamTruncate(a1[1].__sig) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "aaInPlaceStreamClose", 210, 126, 0, "truncate failed", v2, v3, v10);
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_destroy(a1);
  v5 = *&a1[1].__opaque[32];
  if (v5)
  {
    if (*&a1[1].__opaque[40])
    {
      v6 = 0;
      v7 = 0;
      do
      {
        free(*&v5[v6]);
        v5 = *&a1[1].__opaque[32];
        v8 = *&a1[1].__opaque[40];
        *&v5[v6] = 0;
        ++v7;
        v6 += 16;
      }

      while (v7 < v8);
    }

    free(v5);
  }

  free(a1);
  return v4;
}

uint64_t aaInPlaceStreamCancel(uint64_t a1)
{
  if (pthread_mutex_lock(a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "aaInPlaceStreamCancel", 191, 126, 0, "MutexLock", v2, v3, v5);
  }

  if (!*(a1 + 120))
  {
    *(a1 + 120) = 1;
    AAByteStreamCancel(*(a1 + 64));
  }

  return pthread_mutex_unlock(a1);
}

uint64_t blockReader(uint64_t a1, void *a2, size_t a3, uint64_t a4, int a5)
{
  if (!pthread_mutex_lock(a1))
  {
    if (*(a1 + 120))
    {
      pthread_mutex_unlock(a1);
      return -1;
    }

    if (a5)
    {
      a4 = *(a1 + 72);
      if (!a3)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *(a1 + 72) = a4;
      if (!a3)
      {
        goto LABEL_24;
      }
    }

    if (*(a1 + 80) <= a4)
    {
      a3 = 0;
    }

    else
    {
      v13 = blockGetFromCache(a1, a4);
      if (v13)
      {
        v16 = v13;
        v17 = v13[1];
        if (v17)
        {
          if (0x100000 - (a4 & 0xFFFFFuLL) < v17)
          {
            v17 = 0x100000 - (a4 & 0xFFFFF);
          }

          if (v17 < a3)
          {
            a3 = v17;
          }

          memcpy(a2, &(*v13)[a4 & 0xFFFFF], a3);
          v18 = &v16[1][-a3];
          v16[1] = v18;
          if (!v18)
          {
            free(*v16);
            *v16 = 0;
          }

          *(a1 + 72) += a3;
          goto LABEL_24;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "blockPRead", 72, 126, 0, "block already consumed", v14, v15, v19);
      }

      *(a1 + 120) = 1;
      a3 = -1;
    }

LABEL_24:
    pthread_mutex_unlock(a1);
    return a3;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "blockReader", 111, 126, 0, "MutexLock", v10, v11, v19);
  *(a1 + 120) = 1;
  return -1;
}

char **blockGetFromCache(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 104) + 16 * (a2 >> 20));
  if (!*v2)
  {
    v3 = v2[1];
    if (v3)
    {
      if (v3 >= 0x2000000001)
      {
        *__error() = 12;
        *v2 = 0;
LABEL_12:
        v14 = *__error();
        v15 = "malloc";
        v16 = 52;
LABEL_13:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "blockGetFromCache", v16, 126, v14, v15, v7, v8, v18);
        return 0;
      }

      v6 = malloc(v2[1]);
      *v2 = v6;
      if (!v6)
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 64);
      if (*(v9 + 32))
      {
        v10 = v6;
        v11 = 0;
        v12 = a2 & 0xFFFFFFFFFFF00000;
        while (1)
        {
          v13 = (*(v9 + 32))(*v9, v10, v3, v12);
          if (v13 < 0)
          {
            break;
          }

          if (v13)
          {
            v10 += v13;
            v11 += v13;
            v12 += v13;
            v3 -= v13;
            if (v3)
            {
              continue;
            }
          }

          goto LABEL_17;
        }

        v11 = v13;
LABEL_17:
        v3 = v2[1];
      }

      else
      {
        v11 = -1;
      }

      if (v11 != v3)
      {
        v15 = "stream read error";
        v16 = 58;
        v14 = 0;
        goto LABEL_13;
      }
    }
  }

  return v2;
}

uint64_t blockWriter(uint64_t a1, const void *a2, size_t a3, uint64_t a4, int a5)
{
  if (!pthread_mutex_lock(a1))
  {
    if (*(a1 + 120))
    {
      pthread_mutex_unlock(a1);
      return -1;
    }

    if (a5)
    {
      a4 = *(a1 + 88);
      if (a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(a1 + 88) = a4;
      if (a3)
      {
LABEL_9:
        if (*(a1 + 80) > a4)
        {
          if (!blockGetFromCache(a1, a4))
          {
            v12 = -1;
LABEL_20:
            *(a1 + 120) = 1;
            goto LABEL_21;
          }

          if (0x100000 - (a4 & 0xFFFFFuLL) < a3)
          {
            a3 = 0x100000 - (a4 & 0xFFFFF);
          }
        }

        v14 = AAByteStreamPWrite(*(a1 + 64), a2, a3, a4);
        v12 = v14;
        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14)
          {
            v15 = *(a1 + 96);
            v16 = *(a1 + 88) + v14;
            *(a1 + 88) = v16;
            if (v15 < v16)
            {
              *(a1 + 96) = v16;
            }
          }

          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v12 = 0;
LABEL_21:
    pthread_mutex_unlock(a1);
    return v12;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "blockWriter", 131, 126, 0, "MutexLock", v10, v11, v17);
  *(a1 + 120) = 1;
  return -1;
}

uint64_t io_hint_static_content(unsigned int **a1)
{
  FD = aaFileStreamGetFD(a1);
  if (FD < 0)
  {
    v6 = "file not open";
    v7 = 63;
  }

  else
  {
    v8 = 1;
    if (fcntl(FD, 68) != -1)
    {
      return 0;
    }

    v6 = "static content hint failed";
    v7 = 64;
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_hint_static_content", v7, 137, v6, v2, v3, v4, v8);
  return 0xFFFFFFFFLL;
}

uint64_t io_preallocate(unsigned int **a1, unint64_t a2)
{
  getRealTime();
  FD = aaFileStreamGetFD(a1);
  memset(&v25, 0, sizeof(v25));
  if (FD < 0)
  {
    v15 = "file not open";
    v16 = 84;
LABEL_12:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", v16, 137, v15, v5, v6, v7, v21);
    LOBYTE(v10) = 0;
    goto LABEL_13;
  }

  v8 = FD;
  if (fstat(FD, &v25) || v25.st_size)
  {
    v15 = "file not empty";
    v16 = 85;
    goto LABEL_12;
  }

  pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 88, 137, "preallocating %llu B", v5, v6, v7, a2);
  if (!a2)
  {
    v14 = 0;
    LOBYTE(v10) = 0;
    goto LABEL_14;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v23[0] = 0x300000002;
    v23[1] = 0;
    v23[2] = a2 - v10;
    v24 = 0;
    if (fcntl(v8, 42, v23) == -1 || v24 <= 0)
    {
      break;
    }

    v10 += v24;
    ++v9;
    if (v10 >= a2)
    {
      v14 = 0;
      goto LABEL_14;
    }
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 99, 137, "preallocation failed", v11, v12, v13, v22);
LABEL_13:
  v14 = 0xFFFFFFFFLL;
LABEL_14:
  getRealTime();
  pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 110, 137, "preallocation %llu/%llu B took %0.2f seconds (# of calls=%i)", v17, v18, v19, v10);
  return v14;
}

uint64_t io_set_nocache(unsigned int **a1)
{
  FD = aaFileStreamGetFD(a1);
  if (FD < 0)
  {
    v5 = "aaFileStreamGetFD";
    v6 = 126;
    v7 = 0;
  }

  else
  {
    v8 = 1;
    if (fcntl(FD, 48) != -1)
    {
      return 0;
    }

    v7 = *__error();
    v5 = "fcntl";
    v6 = 127;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_set_nocache", v6, 137, v7, v5, v2, v3, v8);
  return 0xFFFFFFFFLL;
}

uint64_t **aaSegmentStreamOpen(void *a1, void *a2)
{
  v3 = SegmentStreamCreate(a1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = *v3;
    v12 = pc_array_indirect_sort(a2[267], compare_extents_by_position);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = a2[269];
      do
      {
        if (v14 >= v15)
        {
          v17 = 0;
          v16 = a2 + 265;
        }

        else
        {
          v16 = v12[v14];
          v17 = v16[1];
        }

        v18 = *v16;
        v19 = *v16 >= v13;
        v20 = *v16 - v13;
        if (v20 != 0 && v19)
        {
          v40 = v5[397];
          v41 = v20;
          v42 = v13;
          v43 = 0;
          v44 = 0;
          v5[397] = v40 + v20;
          v21 = pc_array_append(v5[395], &v40, v6, v7, v8, v9, v10, v11);
          v5[395] = v21;
          if (!v21)
          {
            v37 = "segment_add";
            v38 = 476;
            goto LABEL_28;
          }

          v15 = a2[269];
        }

        v13 = v18 + v17;
        ++v14;
      }

      while (v14 <= v15);
      v22 = v5[397];
      a2[258] = v22;
      v23 = a2[270];
      if (v23)
      {
        v24 = 0;
        while (1)
        {
          v25 = (a2[268] + 129 * v24);
          v26 = a2[267];
          v27 = v5[397];
          v25[4] = 0;
          v25[5] = v27;
          if (v25[15])
          {
            break;
          }

LABEL_19:
          if (++v24 >= v23)
          {
            v22 = v5[397];
            goto LABEL_21;
          }
        }

        v28 = 0;
        v29 = v5[395];
        v30 = (v26 + 16 * v25[14] + 8);
        while (1)
        {
          v32 = *(v30 - 1);
          v31 = *v30;
          v40 = v5[397];
          v41 = v31;
          v42 = v32;
          v43 = 0;
          v44 = 0;
          v5[397] = v40 + v31;
          v29 = pc_array_append(v29, &v40, v6, v7, v8, v9, v10, v11);
          v5[395] = v29;
          if (!v29)
          {
            break;
          }

          v33 = *v30;
          v30 += 2;
          v25[4] += v33;
          if (++v28 >= v25[15])
          {
            v23 = a2[270];
            goto LABEL_19;
          }
        }

        v37 = "segment_add";
        v38 = 500;
      }

      else
      {
LABEL_21:
        v5[396] = *(v5[395] - 64);
        if (v22 == a2[265])
        {
          free(v12);
          return v4;
        }

        v37 = "bad image";
        v38 = 507;
      }
    }

    else
    {
      v37 = "pc_array_indirect_sort";
      v38 = 465;
    }

LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", v38, 137, 0, v37, v10, v11, v40);
  }

  else
  {
    v34 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 457, 137, *v34, "aaSegmentStreamOpen", v35, v36, v40);
    v12 = 0;
    v5 = 0;
  }

  free(v12);
  free(v4);
  SegmentStreamClose(v5);
  return 0;
}

void *SegmentStreamCreate(void *a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = calloc(1uLL, 0xC78uLL);
  v8 = v5;
  if (!v4 || !v5)
  {
    v9 = *__error();
    v10 = "malloc";
    v11 = 416;
LABEL_9:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamCreate", v11, 137, v9, v10, v6, v7, v13);
    free(v4);
    SegmentStreamClose(v8);
    return 0;
  }

  if (!a1[4] || !a1[5])
  {
    v10 = "stream not compatible";
    v11 = 417;
    v9 = 0;
    goto LABEL_9;
  }

  *v5 = a1;
  v5[1] = a2;
  v5[395] = pc_array_init(29);
  AACustomByteStreamSetData(v4, v8);
  AACustomByteStreamSetPReadProc(v4, SegmentStreamPRead);
  AACustomByteStreamSetPWriteProc(v4, SegmentStreamPWrite);
  AACustomByteStreamSetCancelProc(v4, SegmentStreamCancel);
  AACustomByteStreamSetCloseProc(v4, SegmentStreamClose);
  if (a1[11])
  {
    v4[11] = SegmentStreamSimulate;
  }

  return v4;
}

uint64_t SegmentStreamClose(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 3152))
    {
      for (i = 16; i != 3088; i += 24)
      {
        free(*(a1 + i));
      }

      pthread_mutex_destroy((a1 + 3088));
    }

    pc_array_free(*(a1 + 3160));
    free(a1);
  }

  return 0;
}

uint64_t *aaForkInputStreamOpen(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 2128) & 8) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", 538, 137, 0, "no chunk info", a7, a8, v48);
    v8 = 0;
LABEL_12:
    v13 = 0;
    goto LABEL_40;
  }

  v12 = SegmentStreamCreate(a1, a2);
  v8 = v12;
  if (!v12)
  {
    v25 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", 542, 137, *v25, "SegmentStreamCreate", v26, v27, v48);
    goto LABEL_12;
  }

  v13 = *v12;
  if (a1[11])
  {
    *(v13 + 3184) = 1;
  }

  v14 = 0;
  *(v13 + 3152) = 1;
  do
  {
    v15 = malloc(0x10000uLL);
    v16 = v13 + v14;
    *(v16 + 16) = v15;
    *(v16 + 24) = -1;
    if (!v15)
    {
      v28 = *__error();
      v23 = "malloc";
      v24 = 554;
      goto LABEL_39;
    }

    v14 += 24;
  }

  while (v14 != 3072);
  if (pthread_mutex_init((v13 + 3088), 0))
  {
    v23 = "MutexInit";
    v24 = 556;
    goto LABEL_38;
  }

  v51 = 0;
  v50 = 1;
  v49 = a3;
  while (!*(a2 + 2160))
  {
LABEL_32:
    if ((v50 & 1) == 0)
    {
      *(v13 + 3168) = *(*(v13 + 3160) - 64);
      *(a2 + 2080) = *(v13 + 3176);
      return v8;
    }

    v44 = *(v13 + 3176);
    *(a2 + 2056) = v44;
    v45 = *(a2 + 2064);
    if (v45)
    {
      __src = v44;
      v53 = v45;
      v54 = 0;
      v55 = 0;
      *(v13 + 3176) = v45 + v44;
      v46 = pc_array_append(*(v13 + 3160), &__src, v17, v18, v19, v20, v21, v22);
      *(v13 + 3160) = v46;
      if (!v46)
      {
        v23 = "segment_add";
        v24 = 607;
        goto LABEL_38;
      }

      v44 = *(v13 + 3176);
    }

    v50 = 0;
    *(a2 + 2072) = v44;
    v51 = 1;
  }

  v29 = 0;
  while (1)
  {
    v30 = *(a2 + 2144) + 129 * v29;
    if (a3)
    {
      LOBYTE(v31) = 1;
    }

    else
    {
      v31 = *(v30 + 104);
    }

    if (!(v51 & 1 | ((v31 & 1) == 0)))
    {
      break;
    }

LABEL_29:
    if (!(v50 & 1 | ((v31 & 2) == 0)))
    {
      v41 = *(v13 + 3176);
      *(v30 + 48) = v41;
      v42 = *(v30 + 32);
      __src = v41;
      v53 = v42;
      v54 = 0;
      v55 = 0;
      *(v13 + 3176) = v42 + v41;
      v43 = pc_array_append(*(v13 + 3160), &__src, v17, v18, v19, v20, v21, v22);
      *(v13 + 3160) = v43;
      if (!v43)
      {
        v23 = "segment_add";
        v24 = 597;
        goto LABEL_38;
      }
    }

LABEL_31:
    ++v29;
    a3 = v49;
    if (v29 >= *(a2 + 2160))
    {
      goto LABEL_32;
    }
  }

  if (!*(v30 + 80))
  {
    v23 = "no chunks found";
    v24 = 572;
    goto LABEL_38;
  }

  *(v30 + 48) = *(v13 + 3176);
  if (!*(v30 + 56))
  {
    goto LABEL_31;
  }

  v32 = 0;
  v33 = 0;
  v34 = *(v30 + 88);
  v35 = *(v13 + 3160);
  while (1)
  {
    v36 = *(v30 + 80) + v32;
    v37 = v34 >= 0x10000 ? 0x10000 : v34;
    v38 = *v36 + *(v30 + 40);
    v39 = *(v36 + 8);
    v40 = *(v30 + 128);
    __src = *(v13 + 3176);
    *&v53 = v37;
    *(&v53 + 1) = v38;
    v54 = v39;
    v55 = v40;
    *(v13 + 3176) = __src + v37;
    v35 = pc_array_append(v35, &__src, v17, v18, v19, v20, v21, v22);
    *(v13 + 3160) = v35;
    if (!v35)
    {
      break;
    }

    v34 -= v37;
    ++v33;
    v32 += 12;
    if (v33 >= *(v30 + 56))
    {
      goto LABEL_29;
    }
  }

  v23 = "segment_add";
  v24 = 584;
LABEL_38:
  v28 = 0;
LABEL_39:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", v24, 137, v28, v23, v21, v22, v48);
LABEL_40:
  free(v8);
  SegmentStreamClose(v13);
  return 0;
}

AAByteStream_impl *aaIntervalInputStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0x68uLL);
  v7 = calloc(1uLL, 0x20uLL);
  v10 = v7;
  if (v6 && v7)
  {
    if (a3 >= a2)
    {
      *v7 = a1;
      v7[1] = a2;
      v7[2] = a3 - a2;
      v7[3] = 0;
      AACustomByteStreamSetData(v6, v7);
      AACustomByteStreamSetReadProc(v6, IntervalStreamRead);
      AACustomByteStreamSetPReadProc(v6, IntervalStreamPRead);
      AACustomByteStreamSetSeekProc(v6, IntervalStreamSeek);
      AACustomByteStreamSetCancelProc(v6, IntervalStreamCancel);
      AACustomByteStreamSetCloseProc(v6, IntervalStreamClose);
      return v6;
    }

    v11 = "bad interval";
    v12 = 703;
    v13 = 0;
  }

  else
  {
    v13 = *__error();
    v11 = "malloc";
    v12 = 702;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaIntervalInputStreamOpen", v12, 137, v13, v11, v8, v9, v15);
  free(v6);
  free(v10);
  return 0;
}

ssize_t IntervalStreamPRead(uint64_t a1, void *a2, size_t a3, int64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (v5 == a4)
  {
    return 0;
  }

  if (v5 < a4)
  {
    return -1;
  }

  if ((a4 + a3) > v5)
  {
    a3 = v5 - a4;
  }

  result = AAByteStreamPRead(*a1, a2, a3, *(a1 + 8) + a4);
  if (result < 0)
  {
    return -1;
  }

  *(a1 + 24) += result;
  return result;
}

uint64_t IntervalStreamSeek(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (a1 + 24);
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return -1;
      }

      v3 = (a1 + 16);
    }

    a2 += *v3;
  }

  if ((a2 & 0x8000000000000000) == 0 && a2 <= *(a1 + 16))
  {
    *(a1 + 24) = a2;
    return a2;
  }

  return -1;
}

uint64_t SegmentStreamPRead(void **a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v7 = 0;
  v8 = a1 + 2;
  v77 = (a1 + 4);
  while (1)
  {
    v9 = segment_find(a1, a4);
    if (!v9)
    {
      v69 = "no segment found";
      v70 = 321;
      goto LABEL_74;
    }

    v12 = v9;
    v13 = a4 - *v9;
    if (v5 - v7 >= *(v9 + 8) - v13)
    {
      v14 = *(v9 + 8) - v13;
    }

    else
    {
      v14 = v5 - v7;
    }

    v80 = a4 - *v9;
    if (!*(v9 + 24))
    {
      v22 = v8;
      v23 = *a1;
      if ((*a1)[4])
      {
        if (!v14)
        {
          goto LABEL_41;
        }

        v24 = 0;
        v25 = v14;
        v26 = a2 + v7;
        v27 = *(v9 + 16) + v13;
        __na = v25;
        while (1)
        {
          v28 = (*(v23 + 32))(*v23, v26, v25, v27);
          if (v28 < 0)
          {
            break;
          }

          if (v28)
          {
            v26 += v28;
            v24 += v28;
            v27 += v28;
            v25 -= v28;
            if (v25)
            {
              continue;
            }
          }

          goto LABEL_39;
        }

        v24 = v28;
      }

      else
      {
        __na = v14;
        v24 = -1;
      }

LABEL_39:
      v14 = __na;
      v55 = __na == v24;
      v5 = a3;
      if (!v55)
      {
        v69 = "aaSegmentStreamProcess";
        v70 = 337;
        goto LABEL_74;
      }

LABEL_41:
      v8 = v22;
      if (*(a1 + 796))
      {
        v56 = *(v12 + 16);
        if (v14 != aaByteStreamSimulate(*a1))
        {
          v69 = "aaByteStreamSimulate";
          v70 = 340;
          goto LABEL_74;
        }
      }

      goto LABEL_56;
    }

    v15 = a1[1];
    v16 = *(v9 + 28);
    if (pthread_mutex_lock((a1 + 386)))
    {
      v64 = "MutexLock";
      v65 = 169;
      goto LABEL_61;
    }

    __n = v14;
    v19 = *(v12 + 16);
    v20 = &v8[3 * (((0x317E428CA9 * v19) >> 32) & 0x7F)];
    if (v20[1] == v19)
    {
      v21 = a1[394] + 1;
      a1[394] = v21;
      v20[2] = v21;
LABEL_26:
      v41 = *v20 + v80;
      v14 = __n;
      memcpy((a2 + v7), v41, __n);
      v42 = 0;
      goto LABEL_53;
    }

    v29 = 0;
    v30 = 0;
    v31 = v77;
    v32 = &v15[v16];
    while (*(v31 - 1) != v19)
    {
      v33 = *v31;
      v31 += 3;
      if (v33 < v8[3 * v30 + 2])
      {
        v30 = v29;
      }

      if (++v29 == 128)
      {
        goto LABEL_25;
      }
    }

    v30 = v29;
LABEL_25:
    v34 = v20[2];
    v35 = *v20;
    v36 = &v8[3 * v30];
    v37 = v36[2];
    *v20 = *v36;
    v20[2] = v37;
    *v36 = v35;
    v36[2] = v34;
    v38 = v20[1];
    v39 = *(v12 + 16);
    v40 = a1[394] + 1;
    a1[394] = v40;
    v20[2] = v40;
    if (v38 == v39)
    {
      goto LABEL_26;
    }

    if (pthread_mutex_unlock((a1 + 386)))
    {
      v64 = "MutexUnlock";
      v65 = 175;
LABEL_61:
      v66 = 0;
LABEL_68:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", v65, 137, v66, v64, v17, v18, v72);
      v42 = 0;
      goto LABEL_73;
    }

    v43 = *(v12 + 24);
    v44 = *(v12 + 8) + v43;
    if (v44 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_67:
      v66 = *__error();
      v64 = "aaMalloc";
      v65 = 179;
      goto LABEL_68;
    }

    v45 = malloc(v44);
    if (!v45)
    {
      goto LABEL_67;
    }

    v42 = v45;
    v76 = v32;
    v48 = *a1;
    if (!(*a1)[4])
    {
      goto LABEL_64;
    }

    v74 = v45;
    v75 = v8;
    v49 = v43;
    v73 = v43;
    v50 = 0;
    if (v43)
    {
      v51 = *(v12 + 16);
      v52 = v45;
      v53 = v49;
      while (1)
      {
        v54 = (*(v48 + 32))(*v48, v52, v53, v51);
        if (v54 < 0)
        {
          break;
        }

        if (v54)
        {
          v52 += v54;
          v50 += v54;
          v51 += v54;
          v53 -= v54;
          if (v53)
          {
            continue;
          }
        }

        goto LABEL_45;
      }

      v50 = v54;
    }

LABEL_45:
    v42 = v74;
    v55 = v50 == v73;
    v5 = a3;
    v8 = v75;
    if (!v55)
    {
LABEL_64:
      v67 = "aaByteStreamPReadExpected";
      v68 = 183;
      goto LABEL_72;
    }

    v57 = *(v12 + 8);
    if (*v74 == *(v76 + 4))
    {
      if (v57 + 1 != *(v12 + 24))
      {
        v67 = "chunk error";
        v68 = 189;
        goto LABEL_72;
      }

      v58 = v74 + 1;
    }

    else
    {
      v59 = *(v12 + 24);
      v58 = &v74[v59];
      if (compression_decode_buffer(&v74[v59], v57, v74, v59, 0, *v76) != *(v12 + 8))
      {
        v67 = "compression_decode_buffer";
        v68 = 195;
        goto LABEL_72;
      }
    }

    memcpy((a2 + v7), &v58[v80], __n);
    if (pthread_mutex_lock((a1 + 386)))
    {
      v67 = "MutexLock";
      v68 = 202;
      goto LABEL_72;
    }

    memcpy(*v20, v58, *(v12 + 8));
    v60 = *(v12 + 16);
    v61 = a1[394] + 1;
    a1[394] = v61;
    v20[1] = v60;
    v20[2] = v61;
    v14 = __n;
LABEL_53:
    if (pthread_mutex_unlock((a1 + 386)))
    {
      break;
    }

    free(v42);
    if (*(a1 + 796))
    {
      v62 = *(v12 + 24);
      v63 = *(v12 + 16);
      if (aaByteStreamSimulate(*a1) != v62)
      {
        v69 = "aaByteStreamSimulate";
        v70 = 333;
        goto LABEL_74;
      }
    }

LABEL_56:
    a4 += v14;
    v7 += v14;
    if (v7 >= v5)
    {
      return v7;
    }
  }

  v67 = "MutexUnlock";
  v68 = 208;
LABEL_72:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", v68, 137, 0, v67, v46, v47, v72);
LABEL_73:
  free(v42);
  v69 = "segment_decode_to_buffer";
  v70 = 330;
LABEL_74:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", v70, 137, 0, v69, v10, v11, v72);
  return -1;
}

uint64_t SegmentStreamPWrite(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = segment_find(a1, a4);
    if (!v8)
    {
      v19 = "no segment found";
      v20 = 363;
      goto LABEL_23;
    }

    v11 = a4 - *v8;
    if (a3 - v7 >= *(v8 + 8) - v11)
    {
      v12 = *(v8 + 8) - v11;
    }

    else
    {
      v12 = a3 - v7;
    }

    if (*(v8 + 24))
    {
      v19 = "compressed content";
      v20 = 370;
      goto LABEL_23;
    }

    v13 = *a1;
    if (!*(*a1 + 40))
    {
      v14 = -1;
      goto LABEL_16;
    }

    if (v12)
    {
      break;
    }

LABEL_17:
    a4 += v12;
    v7 += v12;
    if (v7 >= a3)
    {
      return v7;
    }
  }

  v14 = 0;
  v15 = a2 + v7;
  v16 = *(v8 + 16) + v11;
  v17 = v12;
  while (1)
  {
    v18 = (*(v13 + 40))(*v13, v15, v17, v16);
    if (v18 < 1)
    {
      break;
    }

    v15 += v18;
    v14 += v18;
    v16 += v18;
    v17 -= v18;
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  v14 = v18;
LABEL_16:
  if (v12 == v14)
  {
    goto LABEL_17;
  }

  v19 = "aaByteStreamPWriteExpected";
  v20 = 374;
LABEL_23:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPWrite", v20, 137, 0, v19, v9, v10, v22);
  return -1;
}

uint64_t SegmentStreamSimulate(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = 0;
  while (a4 > v8)
  {
    v9 = segment_find(a1, a5);
    if (!v9)
    {
      v15 = "no segment found";
      v16 = 276;
      goto LABEL_12;
    }

    v12 = *(v9 + 8) - (a5 - *v9);
    if (a4 - v8 < v12)
    {
      v12 = a4 - v8;
    }

    a5 += v12;
    v8 += v12;
    if (*(v9 + 24))
    {
      v13 = *(v9 + 24);
    }

    else
    {
      v13 = v12;
    }

    v14 = *(v9 + 16);
    if (v13 != aaByteStreamSimulate(*a1))
    {
      v15 = "aaByteStreamSimulate";
      v16 = 303;
LABEL_12:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamSimulate", v16, 137, 0, v15, v10, v11, v18);
      return -1;
    }
  }

  return v8;
}

uint64_t segment_find(void *a1, unint64_t a2)
{
  if (a1[397] <= a2)
  {
    return 0;
  }

  v2 = a1[396];
  v3 = a1[395];
  if (v2 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      if (*(v3 + 29 * ((v4 + v2) >> 1)) <= a2)
      {
        v4 = (v4 + v2) >> 1;
      }

      else
      {
        v2 = (v4 + v2) >> 1;
      }
    }

    while (v4 + 1 < v2);
  }

  return v3 + 29 * v4;
}

uint64_t load_variants(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = (a2 + 16);
  v7 = MEMORY[0x29EDCA610];
  while (1)
  {
    v8 = v6;
    if (v4)
    {
      v8 = (*(a2 + 8) + 8 * v4 - 8);
    }

    v9 = rawimg_create_with_path(*v8);
    *(a1 + 8 * v4) = v9;
    if (!v9)
    {
      v22 = "rawimg_create_with_file";
      v23 = 37;
      goto LABEL_26;
    }

    if ((rawimg_get_digests(v9, *(a2 + 36), 0, 0) & 0x80000000) != 0)
    {
      break;
    }

    v12 = *(a1 + 8 * v4);
    if (v4 < 2)
    {
LABEL_19:
      *(a1 + 8 * v5++) = v12;
    }

    else
    {
      v13 = 1;
      while (1)
      {
        v14 = *(a1 + 8 * v13);
        v15 = v14[261];
        v16 = v14[262];
        v17 = v14[263];
        v18 = v14[264];
        v19 = v12[261] == v15 && v12[262] == v16;
        v20 = v19 && v12[263] == v17;
        if (v20 && v12[264] == v18)
        {
          break;
        }

        if (v4 == ++v13)
        {
          goto LABEL_19;
        }
      }

      rawimg_destroy(v12);
      if (*(a2 + 40))
      {
        fprintf(*v7, "ImageDiff: Removed non-unique input variant <%s>.\n", *(*(a1 + 8 * v4) + 2048));
      }
    }

    if (++v4 > *a2)
    {
      return v5;
    }
  }

  v22 = "rawimg_get_digests";
  v23 = 38;
LABEL_26:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "load_variants", v23, 134, 0, v22, v10, v11, v25);
  return 0;
}

uint64_t patch_write_controls(AAByteStream_impl *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = AAByteStreamSeek(a1, 0, 1);
  *(a3 + 38) = v8;
  if (v8 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 331, 134, 0, "AAByteStreamSeek", v9, v10, v33);
    v20 = 0;
    v16 = 0;
  }

  else
  {
    v11 = *(a4 + 40);
    if (v11 <= 3)
    {
      v12 = v11 << 62;
    }

    else
    {
      v12 = 0xC000000000000000;
    }

    v13 = AACompressionOutputStreamOpen(a1, 0x306u, 0x100000uLL, v12, *(a4 + 36));
    v16 = v13;
    if (v13)
    {
      v17 = a2[2];
      if (v17 < 2)
      {
        v21 = a2[3];
        v18 = (v21 + 56);
        v19 = (v21 + 40);
      }

      else
      {
        v18 = (a2 + 11);
        v19 = (a2 + 9);
      }

      v22 = *v18;
      *(a3 + 18) = v22;
      v20 = *v19;
      if (*(v13 + 3))
      {
        v23 = 8 * v17 + 16;
        v24 = v23 * v22;
        if (!(v23 * v22))
        {
          goto LABEL_19;
        }

        v25 = 0;
        v26 = *v19;
        v27 = v23 * v22;
        while (1)
        {
          v28 = (*(v16 + 3))(*v16, v26, v27);
          if (v28 < 1)
          {
            break;
          }

          v26 += v28;
          v25 += v28;
          v27 -= v28;
          if (!v27)
          {
            goto LABEL_18;
          }
        }

        v25 = v28;
LABEL_18:
        if (v24 == v25)
        {
LABEL_19:
          v29 = 0;
          goto LABEL_22;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 350, 134, 0, "aaByteStreamWriteExpected", v14, v15, v33);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 335, 134, 0, "AACompressionOutputStreamOpen", v14, v15, v33);
      v20 = 0;
    }
  }

  v29 = 1;
LABEL_22:
  if (AAByteStreamClose(v16) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 353, 134, 0, "AAByteStreamClose", v30, v31, v33);
  }

  else if (!v29)
  {
    return v20;
  }

  return 0;
}

uint64_t RawImageDiff(uint64_t a1)
{
  v324 = *MEMORY[0x29EDCA608];
  v322 = 0u;
  v323 = 0u;
  v320 = 0u;
  v321 = 0u;
  v318 = 0u;
  v319 = 0u;
  v317 = 0u;
  if (!*(a1 + 36))
  {
    *(a1 + 36) = getDefaultNThreads();
  }

  if (*(a1 + 40))
  {
    v2 = MEMORY[0x29EDCA610];
    fwrite("ImageDiff\n", 0xAuLL, 1uLL, *MEMORY[0x29EDCA610]);
    v3 = *a1;
    if (*a1)
    {
      v4 = 0;
      do
      {
        v5 = *(*(a1 + 8) + 8 * v4);
        if (v5)
        {
          fprintf(*v2, "  Input %zu: %s\n", v4, v5);
          v3 = *a1;
        }

        ++v4;
      }

      while (v4 < v3);
    }

    if (*(a1 + 16))
    {
      fprintf(*v2, "  Output: %s\n", *(a1 + 16));
    }

    if (*(a1 + 24))
    {
      fprintf(*v2, "  Patch: %s\n", *(a1 + 24));
    }

    if (*(a1 + 32))
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    fprintf(*v2, "  In-place: %s\n", v6);
  }

  v7 = *a1 + 1;
  if (v7 > 0x400000000)
  {
    *__error() = 12;
LABEL_105:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 592, 134, 0, "aaCalloc", v8, v9, v283);
    v107 = 0xFFFFFFFFLL;
    goto LABEL_127;
  }

  v10 = calloc(v7, 8uLL);
  if (!v10)
  {
    goto LABEL_105;
  }

  v11 = v10;
  variants = load_variants(v10, a1);
  if (!variants)
  {
    v108 = "load_variants";
    v109 = 596;
    goto LABEL_123;
  }

  *a1 = variants - 1;
  if ((rawimg_set_fork_types(v11, variants, v13, v14, v15, v16, v17, v18) & 0x80000000) != 0)
  {
    v108 = "rawimg_set_fork_types";
    v109 = 600;
    goto LABEL_123;
  }

  v19 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v20 = *a1 & 0x7FFFFFFFLL;
    do
    {
      rawimg_show(v11[v20], v20 == 0, *(a1 + 40));
      --v20;
    }

    while (v20 != -1);
    v19 = *a1;
  }

  v21 = *v11;
  v315 = (*(*v11 + 2120) / 0x64uLL + 0x2000000);
  v317 = 0u;
  v318 = 0u;
  v319 = 0u;
  v320 = 0u;
  v321 = 0u;
  v322 = 0u;
  v323 = 0u;
  *(&v317 + 4) = vrev64_s32(*(a1 + 36));
  *&v318 = v19;
  if (v19 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v19;
  }

  if (!is_mul_ok(v22, 0x50uLL) || 80 * v22 >= 0x2000000001)
  {
    *__error() = 12;
    *(&v318 + 1) = 0;
    goto LABEL_109;
  }

  v23 = calloc(v22, 0x50uLL);
  *(&v318 + 1) = v23;
  if (!v23)
  {
LABEL_109:
    v110 = *__error();
    v113 = 205;
LABEL_110:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", v113, 134, v110, "aaCalloc", v111, v112, v283);
    v50 = 0;
    v42 = 0;
    v35 = 0;
LABEL_111:
    v69 = 0;
    v65 = 0;
    v58 = 0;
    goto LABEL_112;
  }

  v24 = v23;
  if (v19)
  {
    v25 = (v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = vdupq_n_s64(v19 - 1);
    v27 = xmmword_296AD18D0;
    v28 = xmmword_296AD1760;
    v29 = v23 + 196;
    v30 = vdupq_n_s64(4uLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v26, v28));
      if (vuzp1_s16(v31, *v26.i8).u8[0])
      {
        *(v29 - 40) = 1;
      }

      if (vuzp1_s16(v31, *&v26).i8[2])
      {
        *(v29 - 20) = 1;
      }

      if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
      {
        *v29 = 1;
        v29[20] = 1;
      }

      v27 = vaddq_s64(v27, v30);
      v28 = vaddq_s64(v28, v30);
      v29 += 80;
      v25 -= 4;
    }

    while (v25);
  }

  if (!*a1)
  {
    v255 = calloc(1uLL, 0x18uLL);
    *(v24 + 5) = v255;
    if (v255)
    {
      v50 = 0;
      v42 = 0;
      v35 = 0;
      v69 = 0;
      v65 = 0;
      v58 = 0;
      v256 = *(v21 + 2080);
      if (v256 < 0)
      {
        v256 = 0x8000000000000000 - v256;
      }

      v255[1] = v256;
      v114 = 1;
      *(v24 + 7) = 1;
      goto LABEL_113;
    }

    v110 = *__error();
    v113 = 213;
    goto LABEL_110;
  }

  v32 = AAFileStreamOpenWithPath(*(v21 + 2048), 0, 0);
  v35 = v32;
  if (!v32)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 223, 134, 0, "AAFileStreamOpenWithPath", v33, v34, v283);
    v50 = 0;
    v42 = 0;
    goto LABEL_111;
  }

  v36 = aaSegmentStreamOpen(v32, v21);
  v42 = v36;
  if (!v36)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 225, 134, 0, "aaSegmentStreamOpen", v40, v41, v283);
    v50 = 0;
    goto LABEL_111;
  }

  v50 = aaForkInputStreamOpen(v36, v21, 0, v37, v38, v39, v40, v41);
  if (!v50)
  {
    v259 = "aaForkInputStreamOpen";
    v260 = 227;
LABEL_302:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", v260, 134, 0, v259, v48, v49, v283);
    goto LABEL_111;
  }

  v51 = 0;
  while (1)
  {
    if (v51 >= v318)
    {
      if (v318 < 2)
      {
LABEL_355:
        v69 = 0;
        v65 = 0;
        v58 = 0;
        v114 = 1;
        goto LABEL_113;
      }

      if (bxdiff5CreateComboControls(&v317, v43, v44, v45, v46, v47, v48, v49))
      {
        v259 = "bxdiff5CreateComboControls";
        v260 = 270;
        goto LABEL_302;
      }

      if ((controls_combo_enforce_copy_fork_boundary(*v11, &v317, v271, v272, v273, v274, v48, v49) & 0x80000000) == 0)
      {
        if (*(a1 + 40))
        {
          fprintf(*MEMORY[0x29EDCA610], "ImageDiff: Constructed %zd combo controls.\n", *(&v322 + 1));
        }

        goto LABEL_355;
      }

      v259 = "controls_combo_enforce_copy_fork_boundary";
      v260 = 272;
      goto LABEL_302;
    }

    v52 = v42;
    v313 = v51;
    v53 = (v51 + 1);
    v54 = v11[v51 + 1];
    v55 = AAFileStreamOpenWithPath(*(v54 + 2048), 0, 0);
    v58 = v55;
    if (!v55)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 236, 134, 0, "AAFileStreamOpenWithPath", v56, v57, v283);
      v69 = 0;
      v65 = 0;
LABEL_329:
      v114 = 0;
      v42 = v52;
      goto LABEL_113;
    }

    v59 = aaSegmentStreamOpen(v55, v54);
    v65 = v59;
    if (!v59)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 238, 134, 0, "aaSegmentStreamOpen", v63, v64, v283);
      v69 = 0;
      goto LABEL_329;
    }

    v309 = v53;
    v66 = aaForkInputStreamOpen(v59, v54, 0, v60, v61, v62, v63, v64);
    v69 = v66;
    if (!v66)
    {
      v275 = "aaForkInputStreamOpen";
      v276 = 240;
LABEL_328:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", v276, 134, 0, v275, v67, v68, v283);
      goto LABEL_329;
    }

    v311 = v54;
    if ((GetLargeFileControlsWithStreams(v66, *(v54 + 2072), v50, *(v21 + 2072), (*(&v318 + 1) + 80 * v313 + 40), (*(&v318 + 1) + 80 * v313 + 56), &v317) & 0x80000000) != 0)
    {
      v275 = "GetLargeFileControlsWithStreams";
      v276 = 246;
      goto LABEL_328;
    }

    v70 = *(v21 + 2160);
    v42 = v52;
    if (v70)
    {
      v71 = *(&v318 + 1) + 80 * v313;
      v72 = *(v71 + 56);
      if (!v72)
      {
        v261 = "empty controls";
        v262 = 124;
LABEL_304:
        v263 = 0;
        goto LABEL_305;
      }

      if ((*(v21 + 2128) & 0x10) == 0 || (v311[2128] & 0x10) == 0)
      {
        v261 = "no digests found";
        v262 = 126;
        goto LABEL_304;
      }

      v73 = 24 * (v72 + v70);
      if (v73 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_342;
      }

      v307 = v50;
      v74 = v35;
      v305 = *(a1 + 40);
      v75 = *(v71 + 40);
      v76 = realloc(v75, v73);
      if (!v76)
      {
        free(v75);
        v35 = v74;
        v50 = v307;
LABEL_342:
        *(v71 + 40) = 0;
        v263 = *__error();
        v261 = "aaReallocf";
        v262 = 130;
LABEL_305:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_append_copy_forks", v262, 134, v263, v261, v67, v68, v283);
        v264 = "controls_append_copy_forks";
        v265 = 250;
LABEL_306:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", v265, 134, 0, v264, v102, v103, v283);
        goto LABEL_112;
      }

      *(v71 + 40) = v76;
      v77 = *(v71 + 56);
      if (v77)
      {
        v78 = 0;
        v79 = (v76 + 16);
        v80 = *(v71 + 56);
        v68 = 0x8000000000000000;
        v35 = v74;
        do
        {
          v81 = *(v79 - 2);
          if (v81 < 0)
          {
            v81 = 0x8000000000000000 - v81;
          }

          v83 = *v79;
          v79 += 3;
          v82 = v83;
          v84 = 0x8000000000000000 - v83;
          if (v83 < 0)
          {
            v82 = v84;
          }

          v78 += v81 + v82;
          --v80;
        }

        while (v80);
      }

      else
      {
        v78 = 0;
        v68 = 0x8000000000000000;
        v35 = v74;
      }

      v85 = *(v21 + 2160);
      v50 = v307;
      if (v85)
      {
        v86 = 0;
        v87 = *(v21 + 2144);
        do
        {
          v88 = v87 + 129 * v86;
          if ((*(v88 + 104) & 2) != 0)
          {
            v89 = *(v311 + 270);
            if (!v89)
            {
              goto LABEL_303;
            }

            v90 = *(v311 + 268);
            while (1)
            {
              if ((*(v90 + 104) & 2) != 0 && *(v90 + 88) == *(v88 + 88) && *(v90 + 96) == *(v88 + 96))
              {
                v91 = *(v90 + 32);
                if (v91 == *(v88 + 32))
                {
                  v67 = *(v88 + 24);
                  v92 = *v90 == *v88 && *(v90 + 8) == *(v88 + 8);
                  v93 = v92 && *(v90 + 16) == *(v88 + 16);
                  if (v93 && *(v90 + 24) == v67)
                  {
                    break;
                  }
                }
              }

              v90 += 129;
              if (!--v89)
              {
                goto LABEL_303;
              }
            }

            v95 = *(v90 + 48);
            if (v95 < 0)
            {
LABEL_303:
              v261 = "copy fork not found";
              v262 = 161;
              goto LABEL_304;
            }

            v96 = &v76[24 * v77];
            v97 = 0x8000000000000000 - v91;
            if (v91 >= 0)
            {
              v97 = v91;
            }

            v98 = *(v96 - 1);
            if (v98 < 0)
            {
              v98 = 0x8000000000000000 - v98;
            }

            *(v71 + 56) = ++v77;
            v96[1] = 0;
            v96[2] = 0;
            v99 = v95 - v78;
            v100 = __OFADD__(v98, v99);
            v101 = v98 + v99;
            if (v101 < 0 != v100)
            {
              v101 = 0x8000000000000000 - v101;
            }

            *(v96 - 1) = v101;
            *v96 = v97;
            v78 = v95 + v91;
            v85 = *(v21 + 2160);
          }

          ++v86;
        }

        while (v86 < v85);
      }

      if (v305 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "ImageDiff: Processed copy forks: %zd controls\n", v77);
      }
    }

    if ((*(a1 + 32) & 1) != 0 && (rawimg_force_in_place((*(&v318 + 1) + 80 * v313 + 40), (*(&v318 + 1) + 80 * v313 + 56), v311, v21, v315, *(a1 + 40)) & 0x80000000) != 0)
    {
      v264 = "rawimg_force_in_place";
      v265 = 258;
      goto LABEL_306;
    }

    if (AAByteStreamClose(v69) < 0)
    {
      v264 = "AAByteStreamClose";
      v265 = 262;
      goto LABEL_306;
    }

    if (AAByteStreamClose(v65) < 0)
    {
      break;
    }

    v106 = AAByteStreamClose(v58);
    v51 = v309;
    if (v106 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 264, 134, 0, "AAByteStreamClose", v48, v49, v283);
      v69 = 0;
      v65 = 0;
      goto LABEL_112;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 263, 134, 0, "AAByteStreamClose", v104, v105, v283);
  v69 = 0;
LABEL_112:
  v114 = 0;
LABEL_113:
  if (AAByteStreamClose(v50) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 280, 134, 0, "AAByteStreamClose", v115, v116, v283);
    v114 = 0;
  }

  if (AAByteStreamClose(v42) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 281, 134, 0, "AAByteStreamClose", v117, v118, v283);
    if ((AAByteStreamClose(v35) & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

LABEL_121:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 282, 134, 0, "AAByteStreamClose", v119, v120, v283);
    goto LABEL_122;
  }

  if (AAByteStreamClose(v35) < 0)
  {
    goto LABEL_121;
  }

  if (!v114)
  {
LABEL_122:
    AAByteStreamClose(v69);
    AAByteStreamClose(v65);
    AAByteStreamClose(v58);
    BXDiff5Data_free(&v317);
    v108 = "controls_create_with_variants";
    v109 = 612;
    goto LABEL_123;
  }

  v121 = 8 * *a1 + 62;
  if (v121 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_292;
  }

  v125 = *(a1 + 32);
  v126 = calloc(1uLL, 8 * *a1 + 62);
  if (!v126)
  {
LABEL_292:
    v252 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 515, 134, *v252, "aaCalloc", v253, v254, v283);
    v127 = 0;
    v132 = 0;
    goto LABEL_314;
  }

  v127 = v126;
  *v126 = 0x3031464649444952;
  *(v126 + 4) = *a1 + 1;
  *(v126 + 10) = v125 & 1;
  if (v125)
  {
    v128 = v315;
  }

  else
  {
    v128 = 0;
  }

  *(v126 + 26) = v128;
  *(v126 + 30) = v121;
  v129 = AAFileStreamOpenWithPath(*(a1 + 24), 1537, 0x1A4u);
  v132 = v129;
  if (!v129)
  {
    v257 = "AAFileStreamOpenWithPath";
    v258 = 526;
    goto LABEL_313;
  }

  if (AAByteStreamSeek(v129, v121, 0) < 0)
  {
    v257 = "AAByteStreamSeek";
    v258 = 527;
    goto LABEL_313;
  }

  v133 = *(a1 + 40);
  if (v133 <= 3)
  {
    v134 = v133 << 62;
  }

  else
  {
    v134 = 0xC000000000000000;
  }

  v140 = AACompressionOutputStreamOpen(v132, 0x306u, 0x100000uLL, v134, *(a1 + 36));
  if (!v140)
  {
    v266 = "AACompressionOutputStreamOpen";
    v267 = 305;
    goto LABEL_310;
  }

  v141 = 0;
  do
  {
    if ((rawimg_save_to_stream(v140, v11[v141], v141 == 0, v135, v136, v137, v138, v139) & 0x80000000) != 0)
    {
      v266 = "rawimg_save_to_stream";
      v267 = 311;
LABEL_310:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_metadata", v267, 134, 0, v266, v138, v139, v283);
      if ((AAByteStreamClose(v140) & 0x80000000) == 0)
      {
LABEL_312:
        v257 = "patch_write_metadata";
        v258 = 530;
        goto LABEL_313;
      }

LABEL_311:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_metadata", 315, 134, 0, "AAByteStreamClose", v130, v131, v283);
      goto LABEL_312;
    }

    ++v141;
  }

  while (v141 <= *a1);
  if (AAByteStreamClose(v140) < 0)
  {
    goto LABEL_311;
  }

  v142 = patch_write_controls(v132, &v317, v127, a1);
  if (!v142)
  {
    v257 = "patch_write_controls";
    v258 = 534;
    goto LABEL_313;
  }

  v143 = 0;
  v144 = v127 + 46;
  v293 = v142;
  do
  {
    v145 = v11[v143];
    v301 = *v11;
    v146 = AAByteStreamSeek(v132, 0, 1);
    v300 = (v144 + 8 * v143);
    *v300 = v146;
    if (v146 < 0)
    {
      v165 = 383;
      v166 = "AAByteStreamSeek";
LABEL_157:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", v165, 134, 0, v166, v147, v148, v283);
      v310 = 0;
      v312 = 0;
      v314 = 0;
      v316 = 0;
      v303 = 0;
      v304 = 0;
      v306 = 0;
      v308 = 0;
      v167 = 0;
      v168 = 0;
      goto LABEL_250;
    }

    v149 = *(a1 + 40);
    if (v149 <= 3)
    {
      v150 = v149 << 62;
    }

    else
    {
      v150 = 0xC000000000000000;
    }

    s = AACompressionOutputStreamOpen(v132, 0x306u, 0x100000uLL, v150, *(a1 + 36));
    if (!s)
    {
      v165 = 387;
      v166 = "AACompressionOutputStreamOpen";
      goto LABEL_157;
    }

    if (v143)
    {
      v151 = AAFileStreamOpenWithPath(*(v145 + 2048), 0, 0);
      if (v151)
      {
        v308 = v151;
        v154 = aaSegmentStreamOpen(v151, v145);
        if (v154)
        {
          v306 = v154;
          v314 = aaForkInputStreamOpen(v154, v145, 0, v155, v156, v157, v158, v159);
          if (!v314)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 398, 134, 0, "aaForkInputStreamOpen", v160, v161, v283);
            v310 = 0;
            v312 = 0;
            v314 = 0;
            v316 = 0;
            goto LABEL_247;
          }

          v310 = malloc(0x10000uLL);
          if (!v310)
          {
            v162 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 400, 134, *v162, "aaMalloc", v163, v164, v283);
            v310 = 0;
            v312 = 0;
LABEL_243:
            v316 = 0;
LABEL_247:
            v303 = 0;
            v304 = 0;
            goto LABEL_248;
          }

          goto LABEL_159;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 396, 134, 0, "aaSegmentStreamOpen", v158, v159, v283);
        v310 = 0;
        v312 = 0;
        v314 = 0;
        v316 = 0;
        v303 = 0;
        v304 = 0;
        v306 = 0;
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 394, 134, 0, "AAFileStreamOpenWithPath", v152, v153, v283);
        v310 = 0;
        v312 = 0;
        v314 = 0;
        v316 = 0;
        v303 = 0;
        v304 = 0;
        v306 = 0;
        v308 = 0;
      }

LABEL_248:
      v168 = 0;
      goto LABEL_249;
    }

    v308 = 0;
    v310 = 0;
    v314 = 0;
    v306 = 0;
LABEL_159:
    v169 = v301;
    v170 = AAFileStreamOpenWithPath(*(v301 + 2048), 0, 0);
    if (!v170)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 405, 134, 0, "AAFileStreamOpenWithPath", v171, v172, v283);
      v312 = 0;
      goto LABEL_243;
    }

    v304 = v170;
    v173 = aaSegmentStreamOpen(v170, v301);
    if (!v173)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 407, 134, 0, "aaSegmentStreamOpen", v177, v178, v283);
      v312 = 0;
      v316 = 0;
      v303 = 0;
      goto LABEL_248;
    }

    v303 = v173;
    v316 = aaForkInputStreamOpen(v173, v301, 0, v174, v175, v176, v177, v178);
    if (!v316)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 409, 134, 0, "aaForkInputStreamOpen", v179, v180, v283);
      v312 = 0;
      v316 = 0;
      goto LABEL_248;
    }

    v181 = malloc(0x10000uLL);
    if (!v181)
    {
      v238 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 411, 134, *v238, "aaMalloc", v239, v240, v283);
      v312 = 0;
      goto LABEL_248;
    }

    v312 = v181;
    v184 = v293;
    if (!*(v127 + 18))
    {
      v187 = 0;
      v186 = 0;
LABEL_270:
      if (v186 != *(v169 + 2080))
      {
        v244 = 472;
        v245 = "bad controls";
        goto LABEL_279;
      }

      v241 = v187;
      if (AAByteStreamClose(s) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 475, 134, 0, "AAByteStreamClose", v242, v243, v283);
        v168 = 0;
      }

      else
      {
        v168 = 1;
      }

      v248 = AAByteStreamSeek(v132, 0, 1);
      v300[1] = v248;
      if (v248 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 480, 134, 0, "AAByteStreamSeek", v249, v250, v283);
        v167 = 0;
        v168 = 0;
LABEL_290:
        v144 = v127 + 46;
      }

      else
      {
        if (*(a1 + 40) >= 2)
        {
          v251 = "Diff";
          if (!v143)
          {
            v251 = "Literal";
          }

          fprintf(*MEMORY[0x29EDCA610], "%s stream: %llu bytes -> %llu bytes\n", v251, v241, v248 - *v300);
        }

        v167 = 0;
        v144 = v127 + 46;
      }

      goto LABEL_250;
    }

    v185 = 0;
    v186 = 0;
    v187 = 0;
    v188 = 0;
    while (1)
    {
      v289 = v188;
      v288 = (v184 + 8 * (v188 + v188 * *(v127 + 8)));
      v189 = v288[1];
      v190 = 0x8000000000000000 - *v288;
      if ((*v288 & 0x8000000000000000) == 0)
      {
        v190 = *v288;
      }

      v191 = 0x8000000000000000 - v189;
      if (v189 >= 0)
      {
        v191 = v288[1];
      }

      if (!v143)
      {
        break;
      }

      v286 = v191;
      v192 = *(v169 + 2072);
      if (v186 < v192 && v190 + v186 > v192)
      {
        v246 = 427;
        v247 = "bad controls";
LABEL_281:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", v246, 134, 0, v247, v182, v183, v283);
        goto LABEL_248;
      }

      v193 = v186 >= v192;
      if (v186 >= v192)
      {
        v194 = v190 + v186;
      }

      else
      {
        v194 = v186;
      }

      if (v186 >= v192)
      {
        v195 = v190;
      }

      else
      {
        v195 = 0;
      }

      v294 = v194;
      v296 = v195 + v185;
      v284 = v187;
      if (!v193 && v190)
      {
        v196 = v190;
        v290 = v190;
        while (1)
        {
          v291 = v196;
          if (v196 >= 0x10000)
          {
            v197 = 0x10000;
          }

          else
          {
            v197 = v196;
          }

          if (!*(v314 + 4))
          {
            goto LABEL_275;
          }

          v198 = 0;
          v199 = v310;
          v200 = v296;
          v298 = v197;
          while (1)
          {
            v201 = (*(v314 + 4))(*v314, v199, v197, v200);
            if (v201 < 0)
            {
              break;
            }

            if (v201)
            {
              v199 += v201;
              v198 += v201;
              v200 += v201;
              v197 -= v201;
              if (v197)
              {
                continue;
              }
            }

            goto LABEL_191;
          }

          v198 = v201;
LABEL_191:
          v202 = v298;
          if (v298 != v198)
          {
LABEL_275:
            v244 = 442;
            goto LABEL_278;
          }

          v203 = v312;
          if (!*(v316 + 4))
          {
            goto LABEL_277;
          }

          v204 = 0;
          v205 = v294;
          while (1)
          {
            v206 = (*(v316 + 4))(*v316, v203, v202, v205);
            if (v206 < 0)
            {
              break;
            }

            if (v206)
            {
              v203 += v206;
              v204 += v206;
              v205 += v206;
              v202 -= v206;
              if (v202)
              {
                continue;
              }
            }

            goto LABEL_199;
          }

          v204 = v206;
LABEL_199:
          v207 = v298;
          v208 = v312;
          if (v298 != v204)
          {
LABEL_277:
            v244 = 443;
            goto LABEL_278;
          }

          v209 = 0;
          v210 = v298 <= 1 ? 1 : v298;
          v144 = v127 + 46;
          do
          {
            v312[v209] -= v310[v209];
            ++v209;
          }

          while (v210 != v209);
          if (!*(s + 3))
          {
            break;
          }

          v211 = 0;
          while (1)
          {
            v212 = (*(s + 3))(*s, v208, v207);
            if (v212 < 1)
            {
              break;
            }

            v208 += v212;
            v211 += v212;
            v207 -= v212;
            if (!v207)
            {
              goto LABEL_211;
            }
          }

          v211 = v212;
LABEL_211:
          v181 = v312;
          if (v298 != v211)
          {
            break;
          }

          v296 += v298;
          v294 += v298;
          v196 = v291 - v298;
          v190 = v290;
          if (v291 == v298)
          {
            goto LABEL_213;
          }
        }

        v246 = 447;
        v247 = "aaByteStreamWriteExpected";
        goto LABEL_281;
      }

LABEL_213:
      v213 = v288[v143 + 1];
      if (v213 < 0)
      {
        v213 = 0x8000000000000000 - v213;
      }

      v185 = v213 + v296;
      v187 = v284;
      v186 = v294 + v286;
      v169 = v301;
LABEL_239:
      v187 += v190;
      v188 = v289 + 1;
      v184 = v293;
      if ((v289 + 1) >= *(v127 + 18))
      {
        goto LABEL_270;
      }
    }

    v186 += v190;
    if (!v191)
    {
      v190 = 0;
      goto LABEL_239;
    }

    v292 = v185;
    v285 = v187;
    v287 = v191;
    v214 = v191;
    while (1)
    {
      v297 = v214;
      v215 = v214 >= 0x10000 ? 0x10000 : v214;
      if (!*(v316 + 4))
      {
        break;
      }

      v216 = 0;
      v217 = v181;
      v295 = v186;
      v218 = v186;
      v299 = v215;
      while (1)
      {
        v219 = (*(v316 + 4))(*v316, v217, v215, v218);
        if (v219 < 0)
        {
          break;
        }

        if (v219)
        {
          v217 += v219;
          v216 += v219;
          v218 += v219;
          v215 -= v219;
          if (v215)
          {
            continue;
          }
        }

        goto LABEL_228;
      }

      v216 = v219;
LABEL_228:
      v220 = v299;
      v221 = v312;
      if (v299 != v216)
      {
        break;
      }

      if (!*(s + 3))
      {
        goto LABEL_276;
      }

      v222 = 0;
      while (1)
      {
        v223 = (*(s + 3))(*s, v221, v220);
        if (v223 < 1)
        {
          break;
        }

        v221 += v223;
        v222 += v223;
        v220 -= v223;
        if (!v220)
        {
          goto LABEL_235;
        }
      }

      v222 = v223;
LABEL_235:
      v181 = v312;
      if (v299 != v222)
      {
LABEL_276:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 467, 134, 0, "aaByteStreamWriteExpected", v182, v183, v283);
        v168 = 0;
        v167 = s;
        goto LABEL_290;
      }

      v186 = v299 + v295;
      v214 = v297 - v299;
      if (v297 == v299)
      {
        v187 = v285;
        v190 = v287;
        v144 = v127 + 46;
        v169 = v301;
        v185 = v292;
        goto LABEL_239;
      }
    }

    v244 = 466;
LABEL_278:
    v245 = "aaByteStreamPReadExpected";
LABEL_279:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", v244, 134, 0, v245, v182, v183, v283);
    v168 = 0;
    v144 = v127 + 46;
LABEL_249:
    v167 = s;
LABEL_250:
    if (AAByteStreamClose(v167) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 489, 134, 0, "AAByteStreamClose", v224, v225, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v314) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 490, 134, 0, "AAByteStreamClose", v226, v227, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v306) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 491, 134, 0, "AAByteStreamClose", v228, v229, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v308) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 492, 134, 0, "AAByteStreamClose", v230, v231, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v316) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 493, 134, 0, "AAByteStreamClose", v232, v233, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v303) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 494, 134, 0, "AAByteStreamClose", v234, v235, v283);
      v168 = 0;
    }

    if (AAByteStreamClose(v304) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 495, 134, 0, "AAByteStreamClose", v236, v237, v283);
      v168 = 0;
    }

    free(v310);
    free(v312);
    if (!v168)
    {
      v257 = "patch_write_stream";
      v258 = 539;
      goto LABEL_313;
    }

    ++v143;
  }

  while (v143 <= *a1);
  if (!*(v132 + 5))
  {
    goto LABEL_351;
  }

  v277 = 0;
  v278 = 0;
  v279 = v127;
  v280 = v121;
  while (1)
  {
    v281 = (*(v132 + 5))(*v132, v279, v280, v278);
    if (v281 < 1)
    {
      break;
    }

    v279 += v281;
    v277 += v281;
    v278 += v281;
    v280 -= v281;
    if (!v280)
    {
      goto LABEL_345;
    }
  }

  v277 = v281;
LABEL_345:
  if (v121 != v277)
  {
LABEL_351:
    v257 = "aaByteStreamPWriteExpected";
    v258 = 543;
LABEL_313:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", v258, 134, 0, v257, v130, v131, v283);
LABEL_314:
    v268 = 1;
    goto LABEL_315;
  }

  v282 = *(a1 + 40);
  if (v282 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "  Metadata: %llu bytes\n  Controls: %llu bytes\n", *(v127 + 38) - *(v127 + 30), *(v127 + 46) - *(v127 + 38));
    v282 = *(a1 + 40);
  }

  if (v282 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12llu final patch size\n", *(v127 + 46 + 8 * *(v127 + 8)));
  }

  v268 = 0;
LABEL_315:
  if (AAByteStreamClose(v132) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 562, 134, 0, "AAByteStreamClose", v269, v270, v283);
    free(v127);
  }

  else
  {
    free(v127);
    if (!v268)
    {
      v107 = 0;
      goto LABEL_124;
    }
  }

  v108 = "patch_write";
  v109 = 615;
LABEL_123:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", v109, 134, 0, v108, v17, v18, v283);
  v107 = 0xFFFFFFFFLL;
LABEL_124:
  v122 = 0;
  do
  {
    rawimg_destroy(v11[v122++]);
  }

  while (v122 <= *a1);
  free(v11);
LABEL_127:
  BXDiff5Data_free(&v317);
  v123 = *MEMORY[0x29EDCA608];
  return v107;
}

double BXDiff5Data_free(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 16))
    {
      v3 = 0;
      v4 = 40;
      do
      {
        free(*(*(a1 + 24) + v4));
        ++v3;
        v4 += 80;
      }

      while (v3 < *(a1 + 16));
      v2 = *(a1 + 24);
    }

    free(v2);
  }

  free(*(a1 + 72));
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t controls_combo_enforce_copy_fork_boundary(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[11];
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v33 = a2[2];
    v34 = 8 * (v33 + 2);
    v14 = 8 * v33 + 16;
    v15 = -1;
    while (1)
    {
      v16 = a2[9];
      v17 = *&v16[v11];
      if (v17 >= 0)
      {
        v18 = *&v16[v11];
      }

      else
      {
        v18 = 0x8000000000000000 - v17;
      }

      v19 = *(a1 + 2072);
      v20 = v18 + v12;
      v21 = v19 - v12;
      if (v19 > v12 && v20 > v19)
      {
        v24 = v9 + 1;
        a2[11] = v24;
        if (v34 * v24 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_30;
        }

        v25 = realloc(v16, v34 * v24);
        if (!v25)
        {
          free(v16);
LABEL_30:
          a2[9] = 0;
          v30 = "aaReallocf";
          v31 = 88;
LABEL_31:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_combo_enforce_copy_fork_boundary", v31, 134, 0, v30, a7, a8, v32);
          return 0xFFFFFFFFLL;
        }

        a2[9] = v25;
        v26 = &v25[v11];
        memmove(&v25[v11 + v14], &v25[v11], v34 * (v15 + a2[11]));
        v27 = 0x8000000000000000 - v21;
        if (v21 >= 0)
        {
          v27 = v21;
        }

        *v26 = v27;
        if (v33 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          bzero(v26 + 1, 8 * v33 + 8);
        }

        v28 = v18 - v21;
        if ((v18 - v21) < 0)
        {
          v28 = 0x8000000000000000 - (v18 - v21);
        }

        *(v26 + v14) = v28;
        v9 = a2[11];
        v12 = v19;
      }

      else
      {
        v23 = *&v16[v11 + 8];
        if (v23 < 0)
        {
          v23 = 0x8000000000000000 - v23;
        }

        v12 = v20 + v23;
      }

      ++v13;
      v11 += v14;
      --v15;
      if (v13 >= v9)
      {
        goto LABEL_25;
      }
    }
  }

  v12 = 0;
LABEL_25:
  if (v12 != *(a1 + 2080))
  {
    v30 = "SIZE MISMATCH";
    v31 = 108;
    goto LABEL_31;
  }

  return 0;
}

uint64_t *AEADecryptToFileAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  v32 = *MEMORY[0x29EDCA608];
  strcpy(v31, ".tmp_decrypt");
  memset(&v30, 0, sizeof(v30));
  v12 = malloc(0x898uLL);
  v13 = v12;
  if (v12)
  {
    memset_s(v12, 0x898uLL, 0, 0x898uLL);
    v14 = malloc(0x38uLL);
    v15 = v14;
    if (v14)
    {
      memset_s(v14, 0x38uLL, 0, 0x38uLL);
      *(v13 + 8) = a2;
      *(v13 + 16) = a3;
      *(v13 + 24) = a4;
      *(v13 + 2084) = -1;
      *(v13 + 2080) = a5 >> 62;
      if (pthread_mutex_init((v13 + 2136), 0))
      {
        v18 = "MutexInit";
        v19 = 290;
      }

      else if (strlen(a1) - 1012 > 0xFFFFFFFFFFFFFBFELL)
      {
        __strlcpy_chk();
        __strlcpy_chk();
        __strlcat_chk();
        v26 = stat((v13 + 32), &v30);
        if (v26 || (v30.st_mode & 0xF000) == 0x8000)
        {
          v27 = stat((v13 + 1056), &v30);
          if (v27 || (v30.st_mode & 0xF000) == 0x8000)
          {
            if (v27 | v26)
            {
              v28 = AEADecryptAsyncStreamOpen(v13, setupContext, verifySegment, processSegment_0, a5, a6);
              *v13 = v28;
              if (v28)
              {
                *v15 = v13;
                v15[1] = decryptToFileAsyncClose;
                v15[4] = decryptToFileAsyncCancel;
                v15[2] = decryptToFileAsyncGetRange;
                v15[3] = decryptToFileAsyncProcess;
                goto LABEL_12;
              }

              v18 = "creating DecryptAsyncStream";
              v19 = 313;
            }

            else
            {
              v29 = v13 + 32;
              v18 = "Both file and temp file exist: %s";
              v19 = 309;
            }
          }

          else
          {
            v29 = v13 + 32;
            v18 = "Temp file exists but is not a regular file: %s";
            v19 = 306;
          }
        }

        else
        {
          v29 = v13 + 32;
          v18 = "File exists but is not a regular file: %s";
          v19 = 301;
        }
      }

      else
      {
        v29 = a1;
        v18 = "Filename is too long: %s";
        v19 = 293;
      }

      v23 = 0;
    }

    else
    {
      v23 = *__error();
      v18 = "malloc";
      v19 = 281;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileAsyncStreamOpen", v19, 98, v23, v18, v16, v17, v29);
  }

  else
  {
    v20 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileAsyncStreamOpen", 279, 98, *v20, "malloc", v21, v22, v29);
    v15 = 0;
  }

  decryptToFileAsyncClose(v13);
  free(v15);
  v15 = 0;
LABEL_12:
  v24 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t setupContext(uint64_t a1, AEAContext context, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v20, 0, sizeof(v20));
  v10 = *(a1 + 16);
  if (v10 && (v10(*(a1 + 8), context) & 0x80000000) != 0)
  {
    v11 = "Client context callback returned an error";
    v12 = 58;
    goto LABEL_9;
  }

  if (!*(a1 + 2096))
  {
    result = 0;
    *(a1 + 2096) = 1;
    return result;
  }

  if ((*(a1 + 2084) & 0x80000000) == 0 || (*(a1 + 2088) & 0x80000000) == 0)
  {
    v11 = "Invalid state, file already open";
    v12 = 64;
LABEL_9:
    v14 = 0;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "setupContext", v12, 98, v14, v11, a7, a8, v19);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 2104) = AEAContextGetFieldUInt(context, 0xDu);
  *(a1 + 2112) = AEAContextGetFieldUInt(context, 4u);
  if (!stat((a1 + 32), &v20) && (v20.st_mode & 0xF000) == 0x8000)
  {
    if (v20.st_size && v20.st_size != *(a1 + 2104))
    {
      v19 = a1 + 32;
      v11 = "Destination file exists and size doesn't match: %s";
      v12 = 77;
      goto LABEL_9;
    }

    rename((a1 + 32), (a1 + 1056), v15);
    if (v16)
    {
      v14 = *__error();
      v19 = a1 + 32;
      v11 = "rename: %s";
      v12 = 82;
      goto LABEL_10;
    }

    if (*(a1 + 2080))
    {
      fprintf(*MEMORY[0x29EDCA610], "Verifying file: %s\n", (a1 + 32));
    }
  }

  if (stat((a1 + 1056), &v20) || (v20.st_mode & 0xF000) != 0x8000)
  {
    *(a1 + 2088) = open((a1 + 1056), 1537, 420);
    *(a1 + 2092) = 1;
    v17 = *(a1 + 2084);
  }

  else
  {
    v17 = open((a1 + 1056), 0);
    *(a1 + 2084) = v17;
  }

  v18 = *(a1 + 2088);
  if (v17 < 0)
  {
    if (v18 < 0)
    {
      v14 = *__error();
      v19 = a1 + 32;
      v11 = "open: %s";
      v12 = 98;
      goto LABEL_10;
    }
  }

  else if (v18 < 0)
  {
    return 0;
  }

  result = ftruncate(v18, *(a1 + 2104));
  if (result)
  {
    v14 = *__error();
    v19 = a1 + 32;
    v11 = "truncate to final size: %s";
    v12 = 101;
    goto LABEL_10;
  }

  return result;
}

uint64_t verifySegment(uint64_t a1, unint64_t a2, uint64_t a3, int a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 2092))
  {
    v11 = *(a1 + 2112);
    if (v11 < a2)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "verifySegment", 117, 98, 0, "Invalid segment size", a7, a8, v32);
      v8 = 0xFFFFFFFFLL;
      goto LABEL_23;
    }

    v34 = 0;
    memset(v33, 0, sizeof(v33));
    if (v11 < 0x2000000001)
    {
      v12 = malloc(v11);
      if (v12)
      {
        v21 = 0;
        while (a2 > v21)
        {
          v22 = pread(*(a1 + 2084), v12 + v21, a2 - v21, v21 + a3);
          if (v22)
          {
            v23 = 0;
          }

          else
          {
            v23 = 5;
          }

          v21 += v22 & ~(v22 >> 63);
          if (v22 < 0)
          {
            v23 = 4;
          }

          if (v23)
          {
            if (v23 == 4)
            {
              goto LABEL_21;
            }

            break;
          }
        }

        if (v21 == a2)
        {
          v24 = aeaChecksum(v33, a4, v12, a2, v17, v18, v19, v20);
          v8 = 0;
          if (v24 < 0 || LODWORD(v33[0]) != a6)
          {
            goto LABEL_22;
          }

          if (!memcmp(v33 + 4, a5, a6))
          {
            atomic_fetch_add_explicit((a1 + 2128), a2, memory_order_relaxed);
            v28 = *(a1 + 24);
            if (v28 && ((v29 = *(a1 + 2104)) == 0 ? (v25.n128_u64[0] = 0) : (v25.n128_f32[0] = (*(a1 + 2128) * 100.0) / v29), (v28(*(a1 + 8), v25) & 0x80000000) != 0))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "verifySegment", 144, 98, 0, "Client progress callback reported an error", v30, v31, v32);
              v8 = 0xFFFFFFFFLL;
            }

            else
            {
              if (*(a1 + 2080) >= 3u)
              {
                fprintf(*MEMORY[0x29EDCA610], "Segment verified: offset=%llu size=%zu\n", a3, a2);
              }

              v8 = 1;
            }

            goto LABEL_22;
          }
        }
      }

LABEL_21:
      v8 = 0;
    }

    else
    {
      v12 = 0;
      v8 = 0;
      *__error() = 12;
    }

LABEL_22:
    free(v12);
    goto LABEL_23;
  }

  v8 = 0;
LABEL_23:
  v26 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t processSegment_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((*(a1 + 2088) & 0x80000000) == 0)
  {
LABEL_2:
    v13 = 0;
    do
    {
      v14 = v13;
      if (a2 <= v13)
      {
        break;
      }

      v15 = pwrite(*(a1 + 2088), (a4 + v13), a2 - v13, v13 + a3);
      v13 = v15 + v14;
    }

    while (v15 > 0);
    if (a2 == v14)
    {
      atomic_fetch_add_explicit((a1 + 2128), a2, memory_order_relaxed);
      if (*(a1 + 2080) >= 3u)
      {
        fprintf(*MEMORY[0x29EDCA610], "Segment processed: offset=%llu size=%zu\n", a3, a2);
      }
    }

    else
    {
      atomic_fetch_add_explicit((a1 + 2120), a2, memory_order_relaxed);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 181, 98, 0, "Segment write failed: offset=%llu size=%zu\n", a8, a9, a3);
    }

    v18 = *(a1 + 24);
    if (!v18)
    {
      return 0;
    }

    v19 = *(a1 + 2104);
    if (v19)
    {
      a5.n128_f32[0] = (*(a1 + 2128) * 100.0) / v19;
    }

    else
    {
      a5.n128_u64[0] = 0;
    }

    if ((v18(*(a1 + 8), a5) & 0x80000000) == 0)
    {
      return 0;
    }

    v16 = "Client progress callback reported an error";
    v17 = 190;
    goto LABEL_22;
  }

  if (pthread_mutex_lock((a1 + 2136)))
  {
    v16 = "MutexInit";
    v17 = 165;
  }

  else
  {
    if ((*(a1 + 2088) & 0x80000000) != 0)
    {
      *(a1 + 2088) = open((a1 + 1056), 2);
    }

    if (!pthread_mutex_unlock((a1 + 2136)))
    {
      if ((*(a1 + 2088) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 168, 98, 0, "Can't reopen %s for writing", a8, a9, a1 + 32);
        return 0xFFFFFFFFLL;
      }

      goto LABEL_2;
    }

    v16 = "MutexUnlock";
    v17 = 167;
  }

LABEL_22:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", v17, 98, 0, v16, a8, a9, v21);
  return 0xFFFFFFFFLL;
}

uint64_t decryptToFileAsyncClose(uint64_t a1)
{
  if (a1)
  {
    v4 = AAAsyncByteStreamClose(*a1);
    if ((v4 & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 207, 98, 0, "Async stream reported errors", v2, v3, v18);
    }

    pthread_mutex_destroy((a1 + 2136));
    v7 = atomic_load((a1 + 2128));
    v8 = atomic_load((a1 + 2120));
    if (!v4)
    {
      if (v7 == *(a1 + 2104) && v8 == 0)
      {
        v4 = 0;
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 216, 98, 0, "Some segments failed to process", v5, v6, v18);
        v4 = 0xFFFFFFFFLL;
      }
    }

    v10 = *(a1 + 2084);
    if (v10 < 0)
    {
      v12 = *(a1 + 2088);
      if (v12 < 0)
      {
        if (v4)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }
    }

    else
    {
      close(v10);
      v12 = *(a1 + 2088);
      if (v12 < 0)
      {
        if (!v4)
        {
LABEL_18:
          rename((a1 + 1056), (a1 + 32), v11);
          if (v13)
          {
            v14 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 227, 98, *v14, "rename: %s", v15, v16, a1 + 32);
            v4 = 0xFFFFFFFFLL;
            goto LABEL_24;
          }

LABEL_21:
          if (*(a1 + 2080) >= 2u)
          {
            fprintf(*MEMORY[0x29EDCA610], "Decrypted file: %s\n", (a1 + 32));
          }

          v4 = 0;
        }

LABEL_24:
        free(a1);
        return v4;
      }
    }

    close(v12);
    if (!v4)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  return 0;
}

uint64_t AEADecryptToFileChunkAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unsigned int a8)
{
  v12 = AEADecryptToFileAsyncStreamOpen(a1, a2, a3, a4, a7 | 0x200000000000000, a8);
  if (v12)
  {

    return aaCompositeChunkAsyncStreamOpen(v12, a5, a6, a7, a8);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileChunkAsyncStreamOpen", 349, 98, 0, "AEADecryptToFileAsyncStreamOpen", v13, v14, v16);
    return 0;
  }
}

void *AATempStreamOpenWithDirectory(unint64_t a1, const char *a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0x88uLL);
  v6 = v5;
  if (v5 && (memset_s(v5, 0x88uLL, 0, 0x88uLL), v4))
  {
    if (a2)
    {
      v7 = strlen(a2);
      v8 = v7 + 1;
      if (v7 + 1 < 0x2000000001)
      {
        v15 = malloc(v7 + 1);
        v9 = v15;
        if (v15)
        {
          memcpy(v15, a2, v8);
        }
      }

      else
      {
        v9 = 0;
        *__error() = 12;
      }
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 13) = v9;
    v16 = a1 >> 20;
    if (a1 == -1)
    {
      v16 = -1;
    }

    *(v6 + 1) = 0x100000;
    *(v6 + 2) = v16;
    if ((pthread_mutex_init((v6 + 40), 0) & 0x80000000) == 0)
    {
      *v4 = v6;
      v4[1] = tempStreamClose;
      v4[7] = tempStreamCancel;
      v4[2] = tempStreamRead;
      v4[4] = tempStreamPRead;
      v4[6] = tempStreamSeek;
      v4[3] = tempStreamWrite;
      v4[5] = tempStreamPWrite;
      v4[8] = tempStreamTruncate;
      return v4;
    }

    v10 = *__error();
    v13 = "mutex init";
    v14 = 326;
  }

  else
  {
    v10 = *__error();
    v13 = "malloc";
    v14 = 320;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "AATempStreamOpenWithDirectory", v14, 50, v10, v13, v11, v12, v18);
  free(v6);
  free(v4);
  return 0;
}

uint64_t tempStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 128));
    AAByteStreamClose(*(result + 112));
    v3 = *(v1 + 32);
    if (v3)
    {
      if (*(v1 + 24))
      {
        v4 = 0;
        do
        {
          free(*(*(v1 + 32) + 8 * v4++));
        }

        while (v4 < *(v1 + 24));
        v3 = *(v1 + 32);
      }

      free(v3);
    }

    pthread_mutex_destroy((v1 + 40));
    free(*(v1 + 104));
    free(v1);
    if (v2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

ssize_t tempStreamRead(uint64_t a1, void *a2, size_t a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (*(a1 + 112))
  {
    return AAByteStreamRead(*(a1 + 112), a2, a3);
  }

  return tempStreamPRead(a1, a2, a3, atomic_fetch_add((a1 + 120), a3));
}

ssize_t tempStreamPRead(uint64_t a1, char *buf, size_t a3, off_t offset)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  v7 = offset;
  v8 = buf;
  v10 = *(a1 + 112);
  if (!v10)
  {
    if (((offset | a3) & 0x8000000000000000) == 0)
    {
      v11 = offset + a3;
      if (!__OFADD__(offset, a3))
      {
        if (*a1 <= offset)
        {
          return 0;
        }

        if (pthread_mutex_lock((a1 + 40)) < 0)
        {
          v20 = *__error();
          v23 = "mutex lock";
          v24 = 120;
        }

        else
        {
          if (v11 >= *a1)
          {
            v12 = *a1;
          }

          else
          {
            v12 = v11;
          }

          if (v12 <= v7)
          {
            v5 = 0;
          }

          else
          {
            v5 = 0;
            v13 = *(a1 + 8);
            v14 = v7 / v13;
            v15 = v7 / v13 * v13;
            v16 = v15 + v13;
            do
            {
              if (v16 >= v12)
              {
                v17 = v12;
              }

              else
              {
                v17 = v16;
              }

              memcpy(v8, (*(*(a1 + 32) + 8 * v14) + v7 - v15), v17 - v7);
              v8 += v17 - v7;
              v5 += v17 - v7;
              ++v14;
              v18 = *(a1 + 8);
              v15 += v18;
              v7 = v17;
              v19 = v16 >= v12;
              v16 += v18;
            }

            while (!v19);
          }

          if ((pthread_mutex_unlock((a1 + 40)) & 0x80000000) == 0)
          {
            return v5;
          }

          v20 = *__error();
          v23 = "mutex unlock";
          v24 = 148;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPRead", v24, 50, v20, v23, v21, v22, v26);
        v25 = 0;
        atomic_compare_exchange_strong((a1 + 128), &v25, 1u);
      }
    }

    return -1;
  }

  return AAByteStreamPRead(v10, buf, a3, offset);
}

off_t tempStreamSeek(uint64_t a1, unint64_t a2, int a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (!*(a1 + 112))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 += atomic_fetch_add((a1 + 120), a2);
        return a2;
      }

      if (a3 != 2)
      {
        return -1;
      }

      a2 += *a1;
    }

    atomic_store(a2, (a1 + 120));
    return a2;
  }

  return AAByteStreamSeek(*(a1 + 112), a2, a3);
}

ssize_t tempStreamWrite(uint64_t a1, void *a2, size_t a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (*(a1 + 112))
  {
    return AAByteStreamWrite(*(a1 + 112), a2, a3);
  }

  return tempStreamPWrite(a1, a2, a3, atomic_fetch_add((a1 + 120), a3));
}

ssize_t tempStreamPWrite(uint64_t a1, char *buf, size_t nbyte, unint64_t offset)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  v7 = offset;
  v9 = buf;
  v11 = *(a1 + 112);
  if (!v11)
  {
    if (((offset | nbyte) & 0x8000000000000000) != 0)
    {
      return -1;
    }

    v12 = offset + nbyte;
    if (__OFADD__(offset, nbyte))
    {
      return -1;
    }

    if (pthread_mutex_lock((a1 + 40)) < 0)
    {
      v25 = *__error();
      v28 = "mutex lock";
      v29 = 164;
      goto LABEL_38;
    }

    if (v12 <= *a1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = v7 + nbyte;
    }

    if ((resizeStream(a1, v19, v13, v14, v15, v16, v17, v18) & 0x80000000) != 0)
    {
      v30 = "resizing stream";
      v31 = 170;
    }

    else
    {
      v22 = *(a1 + 112);
      if (!v22)
      {
        if (v12 <= v7)
        {
          v5 = 0;
        }

        else
        {
          v5 = 0;
          v32 = *(a1 + 8);
          v33 = v7 / v32;
          v34 = v7 / v32 * v32;
          v35 = v34 + v32;
          do
          {
            if (v35 >= v12)
            {
              v36 = v12;
            }

            else
            {
              v36 = v35;
            }

            memcpy((*(*(a1 + 32) + 8 * v33) + v7 - v34), v9, v36 - v7);
            v9 += v36 - v7;
            v5 += v36 - v7;
            ++v33;
            v37 = *(a1 + 8);
            v34 += v37;
            v7 = v36;
            v38 = v35 >= v12;
            v35 += v37;
          }

          while (!v38);
        }

        v24 = 0;
        v39 = *a1;
        if (v12 > *a1)
        {
          v39 = v12;
        }

        *a1 = v39;
        goto LABEL_34;
      }

      v23 = AAByteStreamPWrite(v22, v9, nbyte, v7);
      if ((v23 & 0x8000000000000000) == 0)
      {
        v5 = v23;
        v24 = 0;
LABEL_34:
        if ((pthread_mutex_unlock((a1 + 40)) & 0x80000000) == 0)
        {
          if (!v24)
          {
            return v5;
          }

          goto LABEL_39;
        }

        v25 = *__error();
        v28 = "mutex unlock";
        v29 = 209;
LABEL_38:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", v29, 50, v25, v28, v26, v27, v41);
LABEL_39:
        v40 = 0;
        atomic_compare_exchange_strong((a1 + 128), &v40, 1u);
        return -1;
      }

      v30 = "temp file write";
      v31 = 176;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", v31, 50, 0, v30, v20, v21, v41);
    v5 = 0;
    v24 = 1;
    goto LABEL_34;
  }

  return AAByteStreamPWrite(v11, buf, nbyte, offset);
}

uint64_t tempStreamTruncate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 128)))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(a1 + 112);
  if (v12)
  {

    return AAByteStreamTruncate(v12);
  }

  if (a2 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 271, 50, 0, "invalid length", a7, a8, v30);
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 40)) < 0)
  {
    v22 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 272, 50, *v22, "mutex lock", v23, v24, v30);
    v25 = 0;
    atomic_compare_exchange_strong((a1 + 128), &v25, 1u);
    return 0xFFFFFFFFLL;
  }

  if ((resizeStream(a1, a2, v13, v14, v15, v16, v17, v18) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 274, 50, 0, "resize stream", v19, v20, v30);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  if (pthread_mutex_unlock((a1 + 40)) < 0)
  {
    v26 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 276, 50, *v26, "mutex lock", v27, v28, v30);
    v29 = 0;
    v21 = 0;
    atomic_compare_exchange_strong((a1 + 128), &v29, 1u);
  }

  if (v21)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t resizeStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 112))
  {
    v8 = "invalid state";
    v9 = 64;
LABEL_3:
    v10 = 0;
LABEL_4:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "resizeStream", v9, 50, v10, v8, a7, a8, v42);
    return 0xFFFFFFFFLL;
  }

  if (*a1 >= a2)
  {
    goto LABEL_51;
  }

  v14 = *(a1 + 8);
  if (__OFADD__(a2, v14))
  {
    v42 = a2;
    v8 = "new size out of range: %zu";
    v9 = 70;
    goto LABEL_3;
  }

  v15 = (a2 + v14 - 1) / v14;
  if (v15 <= *(a1 + 16))
  {
    v32 = *(a1 + 24);
    while (v32 < v15)
    {
      if (v32)
      {
        v32 *= 2;
      }

      else
      {
        v32 = 32;
      }
    }

    if (8 * v32 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_54:
      *(a1 + 32) = 0;
      v10 = *__error();
      v8 = "malloc";
      v9 = 89;
      goto LABEL_4;
    }

    v33 = *(a1 + 32);
    v34 = realloc(v33, 8 * v32);
    if (!v34)
    {
      free(v33);
      goto LABEL_54;
    }

    *(a1 + 32) = v34;
    memset_s(&v34[8 * *(a1 + 24)], 8 * (v32 - *(a1 + 24)), 0, 8 * (v32 - *(a1 + 24)));
    *(a1 + 24) = v32;
    v35 = v15 - 1;
    while (v35 != -1 && !*(*(a1 + 32) + 8 * v35))
    {
      v36 = *(a1 + 8);
      if (v36 < 0x2000000001)
      {
        v38 = malloc(*(a1 + 8));
        v37 = v38;
        if (v38)
        {
          memset_s(v38, v36, 0, v36);
        }
      }

      else
      {
        v37 = 0;
        *__error() = 12;
      }

      *(*(a1 + 32) + 8 * v35) = v37;
      if (!*(*(a1 + 32) + 8 * v35--))
      {
        v10 = *__error();
        v8 = "malloc";
        v9 = 99;
        goto LABEL_4;
      }
    }

LABEL_51:
    result = 0;
    *a1 = a2;
    return result;
  }

  v16 = AATempFileStreamOpenWithDirectory(*(a1 + 104));
  *(a1 + 112) = v16;
  if (!v16)
  {
    v40 = "AATempFileStreamOpen";
    v41 = 36;
LABEL_57:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "offloadToFile", v41, 50, 0, v40, v17, v18, v42);
    v8 = "offload to file";
    v9 = 76;
    goto LABEL_3;
  }

  v19 = (a1 + 24);
  if (*(a1 + 24))
  {
    v20 = 0;
    v21 = 0;
    while (*a1 > v21)
    {
      if (*(a1 + 8) >= *a1 - v21)
      {
        v22 = *a1 - v21;
      }

      else
      {
        v22 = *(a1 + 8);
      }

      v23 = *(a1 + 112);
      if (*(v23 + 24))
      {
        v24 = 0;
        if (v22)
        {
          v25 = *(*(a1 + 32) + 8 * v20);
          v26 = v22;
          while (1)
          {
            v27 = (*(v23 + 24))(*v23, v25, v26);
            if (v27 < 1)
            {
              break;
            }

            v25 += v27;
            v24 += v27;
            v26 -= v27;
            if (!v26)
            {
              goto LABEL_26;
            }
          }

          v24 = v27;
        }
      }

      else
      {
        v24 = -1;
      }

LABEL_26:
      if (v24 != v22)
      {
        v40 = "writing data to temp file";
        v41 = 43;
        goto LABEL_57;
      }

      v21 += v22;
      if (++v20 >= *v19)
      {
        if (!*v19)
        {
          goto LABEL_31;
        }

        break;
      }
    }

    v28 = 0;
    do
    {
      free(*(*(a1 + 32) + 8 * v28++));
    }

    while (v28 < *(a1 + 24));
  }

LABEL_31:
  free(*(a1 + 32));
  *v19 = 0;
  *(a1 + 32) = 0;
  if ((AAByteStreamTruncate(*(a1 + 112)) & 0x80000000) != 0)
  {
    v8 = "truncate temp file";
    v9 = 78;
    goto LABEL_3;
  }

  v29 = *(a1 + 112);
  v30 = atomic_load((a1 + 120));
  v31 = AAByteStreamSeek(v29, v30, 0);
  result = 0;
  if (v31 < 0)
  {
    v8 = "seek temp file";
    v9 = 80;
    goto LABEL_3;
  }

  return result;
}

uint64_t bxdiff5Free(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16))
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = *(a1 + 24);
      if (*(v12 + v9))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 40, 54, 0, "in[%zu] is not NULL", a7, a8, v10);
        v11 = 0;
        v12 = *(a1 + 24);
      }

      if (*(v12 + v9 + 64))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 41, 54, 0, "inPatch[%zu] is not NULL", a7, a8, v10);
        v11 = 0;
        v12 = *(a1 + 24);
      }

      if (*(v12 + v9 + 40))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 42, 54, 0, "inControls[%zu] is not NULL", a7, a8, v10);
        v11 = 0;
      }

      ++v10;
      v9 += 80;
    }

    while (v10 < *(a1 + 16));
  }

  else
  {
    v11 = 1;
  }

  if (*(a1 + 32))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 44, 54, 0, "out is not NULL", a7, a8, v14);
    v11 = 0;
  }

  if (*(a1 + 72))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 45, 54, 0, "comboControls is not NULL", a7, a8, v14);
    v11 = 0;
  }

  if (*(a1 + 96))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 46, 54, 0, "comboPatch is not NULL", a7, a8, v14);
    v11 = 0;
  }

  free(*(a1 + 24));
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (v11)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = 0uLL;
  return result;
}

uint64_t bxdiff5Dump(uint64_t a1, FILE *a2)
{
  if (*(a1 + 16))
  {
    v4 = 0;
    v5 = (*(a1 + 24) + 36);
    v6 = *(a1 + 16);
    do
    {
      v7 = *v5;
      v5 += 20;
      if (v7)
      {
        ++v4;
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  fprintf(a2, "BXDiff5Data: n=%zu, nUnique=%zu\n", *(a1 + 16), v4);
  if (*(a1 + 16))
  {
    v8 = 0;
    v9 = 0;
    v10 = 16;
    do
    {
      fprintf(a2, "- input %zu\n", v9);
      v11 = (*(a1 + 24) + 80 * v9);
      if (*v11)
      {
        fprintf(a2, "    in set, inSize=%zu, inSHA1=", v11[1]);
        v12 = 20;
        v13 = v10;
        do
        {
          fprintf(a2, "%02x", *(*(a1 + 24) + v13++));
          --v12;
        }

        while (v12);
        v14 = "unique";
        if (!*(*(a1 + 24) + 80 * v9 + 36))
        {
          v14 = "non unique";
        }

        fprintf(a2, ", %s", v14);
        fputc(10, a2);
      }

      else
      {
        fwrite("    in is NULL\n", 0xFuLL, 1uLL, a2);
      }

      v15 = *(a1 + 24) + 80 * v9;
      if (*(v15 + 40))
      {
        v16 = 3 * *(v15 + 56);
        fprintf(a2, "    inControls set, nControls=%zu, inPlace=%d (%zu MB)\n", *(v15 + 56), *(v15 + 48), (v16 >> 17) & 0xFFFFFFFFFFFLL);
        v8 += 8 * v16;
      }

      else
      {
        fwrite("    inControls is NULL\n", 0x17uLL, 1uLL, a2);
      }

      v17 = *(a1 + 24) + 80 * v9;
      if (*(v17 + 64))
      {
        v18 = *(v17 + 72);
        fprintf(a2, "    inPatch set, inPatchSize=%zu (%zu MB)\n", v18, v18 >> 20);
        v8 += v18;
      }

      else
      {
        fwrite("    inPatch is NULL\n", 0x14uLL, 1uLL, a2);
      }

      ++v9;
      v10 += 80;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    v8 = 0;
  }

  fwrite("- output\n", 9uLL, 1uLL, a2);
  if (*(a1 + 32))
  {
    fprintf(a2, "    out set, outSize=%zu, outSHA1=", *(a1 + 40));
    for (i = 0; i != 20; ++i)
    {
      fprintf(a2, "%02x", *(a1 + 48 + i));
    }

    fputc(10, a2);
  }

  else
  {
    fwrite("    out is NULL\n", 0x10uLL, 1uLL, a2);
  }

  if (*(a1 + 72))
  {
    v20 = (8 * v4 + 16) * *(a1 + 88);
    fprintf(a2, "    comboControls set, nControls=%zu, inPlace=%d (%zu MB)\n", *(a1 + 88), *(a1 + 80), v20 >> 20);
    v8 += v20;
  }

  else
  {
    fwrite("    comboControls is NULL\n", 0x1AuLL, 1uLL, a2);
  }

  if (*(a1 + 96))
  {
    v21 = *(a1 + 104);
    fprintf(a2, "    comboPatch set, comboPatchSize=%zu (%zu MB)\n", v21, v21 >> 20);
    v8 += v21;
  }

  else
  {
    fwrite("    comboPatch is NULL\n", 0x17uLL, 1uLL, a2);
  }

  fprintf(a2, "Total size %zu MB\n", v8 >> 20);
  return 0;
}

uint64_t bxdiff5SetIn(void *a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[2] <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetIn", 122, 54, 0, "invalid I=%zu", a7, a8, a2);
    return 0xFFFFFFFFLL;
  }

  if (!a3 || !a4)
  {
    v16 = "invalid in,inSize";
    v17 = 123;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetIn", v17, 54, 0, v16, a7, a8, v19);
    return 0xFFFFFFFFLL;
  }

  if (!a1[4])
  {
    v16 = "missing out";
    v17 = 124;
    goto LABEL_16;
  }

  v10 = a1[3] + 80 * a2;
  *v10 = a3;
  *(v10 + 8) = a4;
  getBufferSHA1Digest(a3, a4, (v10 + 16));
  v11 = a1[2];
  v12 = a1[3];
  *(v12 + 80 * a2 + 36) = 1;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      if (a2 != v14)
      {
        v15 = a1[3];
        if (*(v15 + v13))
        {
          if (!sha1cmp(v15 + 80 * a2 + 16, v15 + v13 + 16))
          {
            v12 = a1[3];
            *(v12 + 80 * a2 + 36) = 0;
            break;
          }

          v11 = a1[2];
        }
      }

      ++v14;
      v13 += 80;
      if (v14 >= v11)
      {
        v12 = a1[3];
        break;
      }
    }
  }

  result = sha1cmp(v12 + 80 * a2 + 16, (a1 + 6));
  if (result)
  {
    return 0;
  }

  *(a1[3] + 80 * a2 + 36) = 0;
  return result;
}

uint64_t bxdiff5SetOut(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a3)
  {
    *(a1 + 32) = a2;
    *(a1 + 40) = a3;
    getBufferSHA1Digest(a2, a3, (a1 + 48));
    return 0;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetOut", 155, 54, 0, "invalid out,outSize", a7, a8, vars0);
    return 0xFFFFFFFFLL;
  }
}

uint64_t bxdiff5CreateInControls(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16) <= a2)
  {
    v12 = "invalid input index";
    v13 = 247;
    goto LABEL_5;
  }

  v10 = *(a1 + 24) + 80 * a2;
  v11 = (v10 + 40);
  if (*(v10 + 40))
  {
    v12 = "input controls already present";
    v13 = 248;
LABEL_5:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", v13, 54, 0, v12, a7, a8, v23);
    return 0xFFFFFFFFLL;
  }

  v15 = *v10;
  if (!*v10 || (v16 = *(v10 + 8)) == 0)
  {
    v12 = "input is missing or invalid";
    v13 = 249;
    goto LABEL_5;
  }

  if (!*(v10 + 36))
  {
    return 0;
  }

  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = (v10 + 56);
  if (!(v16 >> 28) || v19 >> 28 == 0)
  {
    if ((getBXDiffControls(v15, v16, v18, v19, v11, v20, a1, a8) & 0x80000000) != 0)
    {
      v12 = "generic controls";
      v13 = 270;
      goto LABEL_5;
    }
  }

  else
  {
    LargeFileControls = GetLargeFileControls(v15, v16, v18, v19, v11, v20, a1, a8);
    if (LargeFileControls < 0)
    {
      v12 = "largefile controls";
      v13 = 262;
      goto LABEL_5;
    }
  }

  if (!a3)
  {
    return 0;
  }

  if ((forceInPlaceControls(*(*(a1 + 24) + 80 * a2 + 8), *(a1 + 40), *(*(a1 + 24) + 80 * a2 + 40), *(*(a1 + 24) + 80 * a2 + 56), *(a1 + 4)) & 0x80000000) != 0)
  {
    v12 = "forceInPlaceControls";
    v13 = 278;
    goto LABEL_5;
  }

  result = 0;
  *(*(a1 + 24) + 80 * a2 + 48) = 1;
  return result;
}

uint64_t bxdiff5CreateComboControls(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_7;
  }

  v10 = 0;
  v11 = (*(a1 + 24) + 36);
  v12 = *(a1 + 16);
  do
  {
    v13 = *v11;
    v11 += 20;
    if (v13)
    {
      ++v10;
    }

    --v12;
  }

  while (v12);
  if (v10 <= 1)
  {
LABEL_7:
    v14 = "creating combo controls requires 2 or more unique inputs";
    v15 = 289;
    v16 = 0;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", v15, 54, v16, v14, a7, a8, v36);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 80) = 1;
  v19 = calloc(v8, 0x18uLL);
  if (!v19)
  {
    v16 = *__error();
    v14 = "malloc";
    v15 = 300;
    goto LABEL_8;
  }

  v20 = v19;
  v21 = v19;
  v22 = v8;
  do
  {
    initDiffSegmentVector(v21);
    v21 += 3;
    --v22;
  }

  while (v22);
  v29 = 0;
  v30 = 0;
  v31 = *(a1 + 24);
  do
  {
    if (*(v31 + v29 + 36))
    {
      v32 = *(v31 + v29 + 40);
      if (!v32)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 309, 54, 0, "missing controls for input %zu", v27, v28, v22);
        goto LABEL_30;
      }

      if ((pushControls(&v20[3 * v30], v32, *(v31 + v29 + 56), 0, 0) & 0x80000000) != 0)
      {
        v33 = "pushControls";
        v34 = 312;
        goto LABEL_29;
      }

      v31 = *(a1 + 24);
      if (!*(v31 + v29 + 48))
      {
        *(a1 + 80) = 0;
      }

      ++v30;
    }

    ++v22;
    v29 += 80;
  }

  while (v8 != v22);
  if ((mergeDiffSegmentVectors(v30, v20, v23, v24, v25, v26, v27, v28) & 0x80000000) != 0)
  {
    v33 = "mergeDiffSegmentVectors";
    v34 = 321;
  }

  else
  {
    if ((getComboControlsFromMergedDiffSegmentVectors(v30, v20, (a1 + 72), (a1 + 88)) & 0x80000000) == 0)
    {
      v17 = 0;
      goto LABEL_31;
    }

    v33 = "getComboControlsFromMergedDiffSegmentVectors";
    v34 = 324;
  }

LABEL_29:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", v34, 54, 0, v33, v27, v28, v36);
LABEL_30:
  v17 = 0xFFFFFFFFLL;
LABEL_31:
  v35 = v20;
  do
  {
    BlobBufferFree(v35);
    v35 += 24;
    --v8;
  }

  while (v8);
  free(v20);
  return v17;
}

uint64_t bxdiff5CreatePatchBackend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t __size, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, size_t *a11, int a12, int a13, unsigned int a14)
{
  v19 = a10;
  v18 = a11;
  v20 = malloc(__size);
  v23 = v20;
  if (!v20)
  {
    v31 = *__error();
    v32 = "malloc";
    v33 = 447;
LABEL_48:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", v33, 54, v31, v32, v21, v22, v89);
    v38 = 0;
LABEL_69:
    free(v23);
    free(v38);
    v86 = 0;
    v85 = 0;
    v87 = 0xFFFFFFFFLL;
    goto LABEL_70;
  }

  v24 = a13;
  v25 = a9;
  v26 = a1 + 2;
  if (a9)
  {
    v27 = 0uLL;
    v28 = vnegq_f64(0);
    v29 = a8;
    v30 = a9;
    do
    {
      v27 = vaddq_s64(vbslq_s8(vcltzq_s64(*v29), vsubq_s64(v28, *v29), *v29), v27);
      v29 = (v29 + 8 * a1 + 16);
      --v30;
    }

    while (v30);
  }

  else
  {
    v27 = 0uLL;
  }

  __dst = v20;
  if (a13 > 1)
  {
    v94 = v27;
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 backend, out: %zu B, diff: %zu B, lit: %zu B, ctrl: %zu B\n", __size, v27.u64[0], v27.u64[1], 8 * (a1 + 2) * a9);
    v27 = v94;
    v24 = a13;
    v26 = a1 + 2;
    v18 = a11;
    v19 = a10;
    v23 = __dst;
  }

  if (vaddvq_s64(v27) != __size)
  {
    v32 = "size inconsistency: diff + archive != out";
    v33 = 458;
    v31 = 0;
    goto LABEL_48;
  }

  v90 = v26;
  v95 = v19;
  v92 = v18;
  v34 = v24;
  v35 = 28 * a1 + lzma_stream_buffer_bound() * a1;
  v36 = v35 + lzma_stream_buffer_bound() + 60;
  v93 = v34;
  if (v34 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch allocated: %zu B\n", v36);
  }

  v37 = malloc(v36);
  v38 = v37;
  if (!v37)
  {
    v69 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 469, 54, *v69, "malloc", v70, v71, v89);
    v18 = v92;
LABEL_50:
    v19 = v95;
    goto LABEL_52;
  }

  *(v37 + 44) = 0u;
  v37[1] = 0u;
  v37[2] = 0u;
  *v37 = 0u;
  v91 = v37 + 60;
  bzero(v37 + 60, 28 * a1);
  *v38 = 0x3035464649445842;
  v38[2] = __size;
  *(v38 + 5) = *a7;
  *(v38 + 14) = *(a7 + 16);
  *(v38 + 2) = a1;
  *(v38 + 3) = a12 != 0;
  if (a1)
  {
    v39 = v38 + 68;
    v40 = a1;
    do
    {
      *v39 = *a4;
      *(v39 + 4) = *(a4 + 16);
      a4 += 20;
      v39 += 28;
      --v40;
    }

    while (v40);
  }

  v41 = v38 + v36;
  v42 = &v91[28 * a1];
  if (v34 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch headers: %zu B\n", v42 - v38);
  }

  v18 = v92;
  v43 = plzmaEncodeBuffer(v42, &v41[-v42], a8, 8 * (a1 + 2) * a9, a14);
  if (v43 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 499, 54, 0, "Payload compression", v44, v45, v89);
LABEL_52:
    v23 = __dst;
    goto LABEL_69;
  }

  v46 = v42 + v43;
  v38[3] = v43;
  if (v93 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch control payload: %zu B\n", v43);
  }

  v23 = __dst;
  if (a1)
  {
    v47 = 0;
    v48 = a5;
    while (!a9)
    {
      v52 = v23;
LABEL_42:
      v66 = plzmaEncodeBuffer(v46, &v41[-v46], v23, v52 - v23, a14);
      if (v66 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 530, 54, 0, "Payload compression", v67, v45, v89);
        goto LABEL_50;
      }

      v68 = v66;
      *&v91[28 * v47] = v66;
      if (v93 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch diff[%zu] payload: %zu B\n", v47, v66);
      }

      v46 += v68;
      ++v47;
      v23 = __dst;
      v48 = a5;
      if (v47 == a1)
      {
        goto LABEL_55;
      }
    }

    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = v23;
    while (1)
    {
      v53 = (a8 + 8 * v49 * v90);
      v54 = *v53;
      v55 = v53[1];
      if (*v53 < 0)
      {
        v54 = 0x8000000000000000 - *v53;
      }

      if (v55 < 0)
      {
        v55 = 0x8000000000000000 - v55;
      }

      v56 = v53[v47 + 2];
      if (v56 < 0)
      {
        v56 = 0x8000000000000000 - v56;
      }

      if (v50 < 0)
      {
        break;
      }

      v57 = v54 + v50;
      if (v54 + v50 > __size)
      {
        break;
      }

      if (v51 < 0 || (v58 = v54 + v51, v54 + v51 > *(a3 + 8 * v47)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 519, 54, 0, "in[%zu] access out of range", v90, v45, v47);
        goto LABEL_68;
      }

      if (v54 >= 1)
      {
        v59 = (v48 + v50);
        v60 = (*(a2 + 8 * v47) + v51);
        v61 = v52;
        v62 = v54;
        do
        {
          v64 = *v59++;
          v63 = v64;
          v65 = *v60++;
          *v61++ = v63 - v65;
          --v62;
        }

        while (v62);
      }

      v52 += v54;
      v50 = v57 + v55;
      v51 = v58 + v56;
      if (++v49 == a9)
      {
        goto LABEL_42;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 518, 54, 0, "out access out of range", v90, v45, v89);
    goto LABEL_68;
  }

  v48 = a5;
LABEL_55:
  if (a9)
  {
    v72 = 0;
    v73 = (a8 + 8);
    v74 = 8 * a1 + 16;
    v23 = __dst;
    do
    {
      v75 = *(v73 - 1);
      v76 = *v73;
      if (v75 < 0)
      {
        v75 = 0x8000000000000000 - v75;
      }

      if (v76 >= 0)
      {
        v77 = *v73;
      }

      else
      {
        v77 = 0x8000000000000000 - v76;
      }

      v78 = v75 + v72;
      memcpy(v23, (v48 + v75 + v72), v77);
      v48 = a5;
      v23 += v77;
      v72 = v78 + v77;
      v73 = (v73 + v74);
      --v25;
    }

    while (v25);
  }

  v79 = v23 - __dst;
  v23 = __dst;
  v80 = plzmaEncodeBuffer(v46, &v41[-v46], __dst, v79, a14);
  if (v80 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 554, 54, 0, "Payload compression", v81, v82, v89);
    v18 = v92;
LABEL_68:
    v19 = v95;
    goto LABEL_69;
  }

  v83 = v46 + v80;
  v38[4] = v80;
  v18 = v92;
  v19 = v95;
  if (v93 <= 1)
  {
    v85 = v83 - v38;
  }

  else
  {
    v84 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch archive payload: %zu B\n", v80);
    v85 = v83 - v38;
    fprintf(*v84, "BXDiff5 patch total size: %zu B\n", v83 - v38);
  }

  free(__dst);
  v86 = reallocToFit(v38, v85);
  v87 = 0;
LABEL_70:
  *v19 = v86;
  *v18 = v85;
  return v87;
}

uint64_t bxdiff5CreateComboPatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72))
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (*(a1 + 24) + 36);
      do
      {
        v12 = *v11;
        v11 += 20;
        if (v12)
        {
          ++v10;
        }

        --v9;
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v14 = calloc(v10, 8uLL);
    v15 = calloc(v10, 8uLL);
    v16 = calloc(v10, 0x14uLL);
    v17 = v16;
    if (v14)
    {
      v18 = v15 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18 || v16 == 0)
    {
      v20 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboPatch", 609, 54, *v20, "malloc", v21, v22, v32);
      PatchBackend = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = *(a1 + 16);
      if (v23)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        do
        {
          v27 = *(a1 + 24);
          if (*(v27 + v24 + 36))
          {
            v14[v26] = *(v27 + v24);
            v28 = *(a1 + 24) + v24;
            v15[v26] = *(v28 + 8);
            v29 = &v16[20 * v26];
            v30 = *(v28 + 16);
            *(v29 + 4) = *(v28 + 32);
            *v29 = v30;
            ++v26;
            v23 = *(a1 + 16);
          }

          ++v25;
          v24 += 80;
        }

        while (v25 < v23);
      }

      PatchBackend = bxdiff5CreatePatchBackend(v10, v14, v15, v16, *(a1 + 32), *(a1 + 40), a1 + 48, *(a1 + 72), *(a1 + 88), (a1 + 96), (a1 + 104), *(a1 + 80), *(a1 + 4), *(a1 + 8));
    }

    free(v14);
    free(v15);
    free(v17);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboPatch", 600, 54, 0, "missing combo controls", a7, a8, v32);
    return 0xFFFFFFFFLL;
  }

  return PatchBackend;
}

uint64_t BXDiff5WithIndividualPatches(uint64_t a1, void **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v117 = *MEMORY[0x29EDCA608];
  if (HIDWORD(*a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 645, 54, 0, "Invalid number of inputs: %zu", a7, a8, *a1);
    result = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v9 = a5;
  v10 = a4;
  v14 = *(a1 + 48);
  enterThreadErrorContext(a1, a2, a3, a4, a5, a6, a7, a8, v103);
  v20 = *a1;
  v21 = *(a1 + 52);
  if (v10)
  {
    v22 = v9 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  v24 = *(a1 + 40);
  v25 = *(a1 + 44);
  v112 = 0u;
  memset(v113, 0, sizeof(v113));
  *v114 = 0u;
  v115 = 0u;
  v116 = 0;
  v111 = v20;
  v109 = __PAIR64__(v21, v24);
  v110 = v25;
  if (v20)
  {
    *&v112 = calloc(v20, 0x50uLL);
    *a2 = 0;
    *a3 = 0;
    if (v10)
    {
      bzero(v10, 8 * v20);
    }

    if (v9)
    {
      bzero(v9, 8 * v20);
    }
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
  }

  if (bxdiff5SetOut(&v109, *(a1 + 24), *(a1 + 32), v15, v16, v17, v18, v19))
  {
    v33 = "bxdiff5SetOut";
    v34 = 672;
    goto LABEL_17;
  }

  if (!v20)
  {
LABEL_28:
    v48 = v111;
    if (v111)
    {
      v49 = 0;
      v50 = (v112 + 36);
      do
      {
        v51 = *v50;
        v50 += 20;
        if (v51)
        {
          ++v49;
        }

        --v48;
      }

      while (v48);
      if (!v49)
      {
        *(v112 + 36) = 1;
      }
    }

    if (v21 >= 2)
    {
      bxdiff5Dump(&v109, *MEMORY[0x29EDCA610]);
    }

    if (!v20)
    {
      v62 = *(&v112 + 1);
      v63 = *&v113[0];
      v64 = HIDWORD(v109);
      v65 = v110;
      v66 = lzma_stream_buffer_bound();
      v67 = v66 + 60;
      if (v64 >= 1)
      {
        fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch capacity: %zu B\n", v67);
      }

      v68 = malloc(v67);
      v69 = v68;
      if (v68)
      {
        *v68 = 0u;
        *(v68 + 1) = 0u;
        *(v68 + 44) = 0u;
        *(v68 + 2) = 0u;
        *v68 = 0x3035464649445842;
        *(v68 + 1) = 0;
        *(v68 + 2) = v63;
        *(v68 + 40) = *(v113 + 8);
        *(v68 + 14) = DWORD2(v113[1]);
        v70 = plzmaEncodeBuffer((v68 + 60), v66, v62, v63, v65);
        if ((v70 & 0x8000000000000000) == 0)
        {
          v73 = a3;
          v74 = v69 + v70 + 60;
          v69[4] = v70;
          if (v64 >= 1)
          {
            fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch archive payload size: %zu B\n", v70);
          }

          v35 = 0;
          *a2 = reallocToFit(v69, v74 - v69);
          *v73 = v74 - v69;
          goto LABEL_20;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateFullReplacementBackend", 406, 54, 0, "Payload compression", v71, v72, v104);
      }

      else
      {
        v81 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateFullReplacementBackend", 386, 54, *v81, "malloc patch", v82, v83, v104);
      }

      free(v69);
      *a2 = 0;
      *a3 = 0;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 689, 54, 0, "bxdiff5CreateFullReplacementBackend", v84, v85, v105);
      v35 = -1;
      goto LABEL_20;
    }

    v108 = v21;
    v52 = v111;
    if (v111)
    {
      v53 = 0;
      v54 = (v112 + 36);
      do
      {
        v55 = *v54;
        v54 += 20;
        if (v55)
        {
          ++v53;
        }

        --v52;
      }

      while (v52);
      if (v53 == 1)
      {
        v56 = 0;
      }

      else
      {
        v56 = v23;
      }

      if (v53 == 1)
      {
        v57 = 0;
        v58 = (v112 + 36);
        while (1)
        {
          v59 = *v58;
          v58 += 20;
          if (v59)
          {
            break;
          }

          if (v20 == ++v57)
          {
            v60 = "could not find unique input";
            v61 = 699;
            goto LABEL_89;
          }
        }

        v106 = a2;
        v107 = a3;
        v75 = 1;
        v23 = v56;
        v53 = 1;
LABEL_62:
        v76 = 0;
        v77 = 36;
        do
        {
          if (*(v112 + v77))
          {
            if (bxdiff5CreateInControls(&v109, v76, v14 & 2, v28, v29, v30, v31, v32))
            {
              v33 = "bxdiff5CreateInControls";
              v34 = 710;
              goto LABEL_17;
            }

            v78 = v57 == v76 ? v75 : 0;
            if ((v23 || v78) && bxdiff5CreateInPatch(&v109, v76))
            {
              v33 = "bxdiff5CreateInPatch";
              v34 = 718;
              goto LABEL_17;
            }
          }

          ++v76;
          v77 += 80;
        }

        while (v20 != v76);
        if (v108 >= 2)
        {
          bxdiff5Dump(&v109, *MEMORY[0x29EDCA610]);
        }

        v80 = v106;
        v79 = v107;
        if (v53 >= 2)
        {
          if (bxdiff5CreateComboControls(&v109, v26, v27, v28, v29, v30, v31, v32))
          {
            v60 = "bxdiff5CreateComboControls";
            v61 = 730;
            goto LABEL_89;
          }

          v86 = 0;
          v87 = v112;
          v88 = v20;
          do
          {
            free(*(v87 + v86 + 40));
            v87 = v112;
            v96 = v112 + v86;
            *(v96 + 40) = 0;
            *(v96 + 56) = 0;
            v86 += 80;
            --v88;
          }

          while (v88);
          v79 = v107;
          if (v108 > 1)
          {
            bxdiff5Dump(&v109, *MEMORY[0x29EDCA610]);
          }

          v80 = v106;
          if (bxdiff5CreateComboPatch(&v109, v89, v90, v91, v92, v93, v94, v95))
          {
            v60 = "bxdiff5CreateComboPatch";
            v61 = 747;
LABEL_89:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", v61, 54, 0, v60, v31, v32, v104);
            v35 = -1;
            goto LABEL_18;
          }
        }

        if (v108 >= 2)
        {
          bxdiff5Dump(&v109, *MEMORY[0x29EDCA610]);
        }

        if (v53 >= 2)
        {
          v97 = v116;
          *v80 = *(&v115 + 1);
          *v79 = v97;
          *(&v115 + 1) = 0;
          v116 = 0;
          if (!v23)
          {
            goto LABEL_98;
          }

          v98 = (v112 + 64);
          v99 = v20;
          do
          {
            v100 = v98[1];
            *v10++ = *v98;
            *v9++ = v100;
            *v98 = 0;
            v98[1] = 0;
            v98 += 10;
            --v99;
          }

          while (v99);
        }

        if (v53 == 1)
        {
          v35 = 0;
          v101 = v112 + 80 * v57;
          v102 = *(v101 + 72);
          *v80 = *(v101 + 64);
          *v79 = v102;
          *(v101 + 64) = 0;
          *(v101 + 72) = 0;
          goto LABEL_18;
        }

LABEL_98:
        v35 = 0;
LABEL_18:
        v36 = 0;
        v37 = v112;
        do
        {
          v38 = v37 + v36;
          *v38 = 0;
          free(*(v38 + 40));
          v37 = v112;
          *(v112 + v36 + 40) = 0;
          v36 += 80;
          --v20;
        }

        while (v20);
        goto LABEL_20;
      }

      v106 = a2;
      v107 = a3;
      v75 = 0;
    }

    else
    {
      v106 = a2;
      v107 = a3;
      v75 = 0;
      v53 = 0;
    }

    v57 = -1;
    goto LABEL_62;
  }

  v47 = 0;
  while (!bxdiff5SetIn(&v109, v47, *(*(a1 + 8) + 8 * v47), *(*(a1 + 16) + 8 * v47), v29, v30, v31, v32))
  {
    if (v20 == ++v47)
    {
      goto LABEL_28;
    }
  }

  v33 = "bxdiff5SetIn";
  v34 = 675;
LABEL_17:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", v34, 54, 0, v33, v31, v32, v104);
  v35 = -1;
  if (v20)
  {
    goto LABEL_18;
  }

LABEL_20:
  *(&v112 + 1) = 0;
  free(v114[0]);
  v114[0] = 0;
  bxdiff5Free(&v109, v39, v40, v41, v42, v43, v44, v45);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    result = v35;
  }

  else
  {
    result = result;
  }

LABEL_23:
  v46 = *MEMORY[0x29EDCA608];
  return result;
}