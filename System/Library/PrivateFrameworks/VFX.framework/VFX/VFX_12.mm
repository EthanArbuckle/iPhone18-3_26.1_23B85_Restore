CFStringRef sub_1AF1986A4(_DWORD *cf)
{
  v2 = cf[24] - 1;
  if (v2 > 3)
  {
    v3 = @"<%s %p | src:%p [%fx%f]>";
  }

  else
  {
    v3 = off_1E7A7B2D8[v2];
  }

  v4 = CFGetAllocator(cf);
  v5 = sub_1AF3753A8(cf);
  return CFStringCreateWithFormat(v4, 0, v3, v5, cf, *(cf + 11), COERCE_FLOAT(*(cf + 13)), COERCE_FLOAT(HIDWORD(*(cf + 13))));
}

__CFArray *sub_1AF198740(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 96);
  if (v3 == 1)
  {
    v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v7 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v4, @"name", @"url");
    CFDictionarySetValue(v4, @"type", v5);
    CFDictionarySetValue(v4, @"address", v7);
    CFDictionarySetValue(v4, @"semantic", v6);
    CFArrayAppendValue(Mutable, v4);
    CFRelease(v6);
    CFRelease(v4);
    CFRelease(v7);
    CFRelease(v5);
    v3 = *(a1 + 96);
  }

  if (v3 == 2)
  {
    v8 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v11 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v8, @"name", @"data");
    CFDictionarySetValue(v8, @"type", v9);
    CFDictionarySetValue(v8, @"address", v11);
    CFDictionarySetValue(v8, @"semantic", v10);
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v10);
    CFRelease(v8);
    CFRelease(v11);
    CFRelease(v9);
    v3 = *(a1 + 96);
  }

  if (v3 == 3)
  {
    v12 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v15 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v12, @"name", @"cgImage");
    CFDictionarySetValue(v12, @"type", v13);
    CFDictionarySetValue(v12, @"address", v15);
    CFDictionarySetValue(v12, @"semantic", v14);
    CFArrayAppendValue(Mutable, v12);
    CFRelease(v14);
    CFRelease(v12);
    CFRelease(v15);
    CFRelease(v13);
    v3 = *(a1 + 96);
  }

  if (v3 == 4)
  {
    v16 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v19 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v16, @"name", @"clientImage");
    CFDictionarySetValue(v16, @"type", v17);
    CFDictionarySetValue(v16, @"address", v19);
    CFDictionarySetValue(v16, @"semantic", v18);
    CFArrayAppendValue(Mutable, v16);
    CFRelease(v18);
    CFRelease(v16);
    CFRelease(v19);
    CFRelease(v17);
  }

  v20 = MEMORY[0x1E695E9D8];
  v21 = MEMORY[0x1E695E9E8];
  v22 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v41 = 2;
  valuePtr = 5;
  v40 = (a1 + 64);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v22, @"name", @"bitmap");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v39 = *(a1 + 116) & 1;
  v26 = CFDictionaryCreateMutable(0, 4, v20, v21);
  v41 = 0;
  valuePtr = 3;
  v40 = &v39;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v26, @"name", @"hasAlpha");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  CFArrayAppendValue(Mutable, v26);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v29);
  CFRelease(v27);
  v30 = CFDictionaryCreateMutable(0, 4, v20, v21);
  v41 = 0;
  valuePtr = 7;
  v40 = (a1 + 104);
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v33 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v30, @"name", @"size");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(Mutable, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, v20, v21);
  v41 = 0;
  valuePtr = 2;
  v40 = (a1 + 117);
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v34, @"name", @"type");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(Mutable, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  return Mutable;
}

uint64_t sub_1AF198F40(uint64_t a1)
{
  if (sub_1AF197458(a1))
  {
    return 1;
  }

  v3 = sub_1AF195E38(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v2 = CFEqual(v3, @"ast") || CFEqual(v4, @"astc");
  CFRelease(v4);
  return v2;
}

uint64_t sub_1AF198FC4(int a1, int a2, int a3)
{
  if (a1 <= 7)
  {
    if (a1 != 4)
    {
      v3 = 205;
      if (a3)
      {
        v3 = 187;
      }

      v4 = 206;
      if (a3)
      {
        v4 = 188;
      }

      if (a2 != 5)
      {
        v4 = 0;
      }

      if (a2 != 4)
      {
        v3 = v4;
      }

      v5 = 207;
      if (a3)
      {
        v5 = 189;
      }

      v6 = 208;
      if (a3)
      {
        v6 = 190;
      }

      if (a2 != 6)
      {
        v6 = 0;
      }

      if (a2 != 5)
      {
        v5 = v6;
      }

      if (a1 != 6)
      {
        v5 = 0;
      }

      v7 = a1 == 5;
LABEL_50:
      if (v7)
      {
        return v3;
      }

      else
      {
        return v5;
      }
    }

    v8 = 204;
    if (a3)
    {
      v8 = 186;
    }

    v10 = a2 == 4;
    goto LABEL_36;
  }

  if (a1 == 8)
  {
    v3 = 210;
    if (a3)
    {
      v3 = 192;
    }

    v5 = 211;
    if (a3)
    {
      v5 = 193;
    }

    v12 = 212;
    if (a3)
    {
      v12 = 194;
    }

    if (a2 != 8)
    {
      v12 = 0;
    }

    if (a2 != 6)
    {
      v5 = v12;
    }

    v7 = a2 == 5;
    goto LABEL_50;
  }

  if (a1 != 10)
  {
    v8 = 217;
    if (a3)
    {
      v8 = 199;
    }

    v9 = 218;
    if (a3)
    {
      v9 = 200;
    }

    if (a2 != 12)
    {
      v9 = 0;
    }

    if (a2 != 10)
    {
      v8 = v9;
    }

    v10 = a1 == 12;
LABEL_36:
    if (v10)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  v13 = 215;
  if (a3)
  {
    v13 = 197;
  }

  v14 = 216;
  if (a3)
  {
    v14 = 198;
  }

  if (a2 != 10)
  {
    v14 = 0;
  }

  if (a2 != 8)
  {
    v13 = v14;
  }

  v15 = 213;
  if (a3)
  {
    v15 = 195;
  }

  v16 = 214;
  if (a3)
  {
    v16 = 196;
  }

  if (a2 != 6)
  {
    v16 = 0;
  }

  if (a2 != 5)
  {
    v15 = v16;
  }

  if (a2 <= 7)
  {
    return v15;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_1AF199160(uint64_t a1)
{
  v2 = sub_1AF0D5194();
  v3 = os_signpost_id_generate(v2);
  v4 = sub_1AF0D5194();
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "LoadImage (ASTC)", &unk_1AFF70A1D, buf, 2u);
    }
  }

  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDA978(v6);
    }
  }

  v7 = sub_1AF197458(a1);
  if (v7)
  {
    v8 = v7;
    CFRetain(v7);
  }

  else
  {
    v20 = sub_1AF195E98(a1);
    if (!v20 || (v8 = sub_1AF287EF8(v20)) == 0)
    {
      v19 = 0;
      goto LABEL_17;
    }
  }

  if (CFDataGetLength(v8) >= 16 && (BytePtr = CFDataGetBytePtr(v8), *BytePtr == 1554098963))
  {
    v10 = BytePtr;
    sub_1AF197D10(a1);
    v11 = (v10[9] << 16) | (v10[8] << 8) | v10[7];
    v12 = (v10[12] << 16) | (v10[11] << 8) | v10[10];
    v24 = (v10[15] << 16) | (v10[14] << 8) | v10[13];
    *&v13 = v11;
    *(&v13 + 1) = v12;
    sub_1AF196048(a1, 2, 0, v13);
    v14 = sub_1AF196128(a1);
    v15 = v10[4];
    *(v14 + 4) = v15;
    v16 = v10[5];
    *(v14 + 5) = v16;
    v17 = v10[6];
    *(v14 + 6) = v17;
    *(v14 + 1) = 0x80;
    *(v14 + 20) = sub_1AF198FC4(v15, v16, 0);
    v18 = CFDataCreate(0, v10 + 16, 16 * (v11 + v15 - 1) / v15 * ((v12 + v16 - 1) / v16) * ((v24 + v17 - 1) / v17));
    CFArrayAppendValue(*(v14 + 24), v18);
    CFRelease(v18);
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  CFRelease(v8);
LABEL_17:
  v21 = sub_1AF0D5194();
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v21;
    if (os_signpost_enabled(v21))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v22, OS_SIGNPOST_INTERVAL_END, v3, "LoadImage (ASTC)", &unk_1AFF70A1D, v25, 2u);
    }
  }

  return v19;
}

uint64_t sub_1AF1993FC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 == a3)
  {
    return 0;
  }

  v4 = 0;
  *(a1 + 4) = 257;
  *(a1 + 6) = 1;
  if (a4 <= 36758)
  {
    if (a4 > 35414)
    {
      if (a4 <= 36193)
      {
        if (a4 <= 35900)
        {
          if (a4 <= 35841)
          {
            if (a4 != 35415)
            {
              if (a4 != 35840)
              {
                if (a4 != 35841)
                {
                  return v4;
                }

                goto LABEL_103;
              }

LABEL_106:
              v5 = 212993;
LABEL_114:
              *a1 = v5;
              v11 = 1028;
              goto LABEL_115;
            }

LABEL_108:
            v5 = 17055745;
            goto LABEL_114;
          }

          if (a4 == 35842)
          {
            goto LABEL_108;
          }

          if (a4 != 35843)
          {
            if (a4 != 35898)
            {
              return v4;
            }

            goto LABEL_69;
          }

LABEL_102:
          v12 = 17055745;
LABEL_104:
          *a1 = v12;
          v11 = 1032;
LABEL_115:
          *(a1 + 4) = v11;
          goto LABEL_116;
        }

        if (a4 <= 35917)
        {
          if (a4 == 35901)
          {
LABEL_69:
            *(a1 + 3) = 1;
            v9 = 800;
            goto LABEL_112;
          }

          if (a4 != 35907)
          {
            v8 = 35917;
LABEL_54:
            if (a4 != v8)
            {
              return v4;
            }

            v5 = 17055747;
            goto LABEL_114;
          }

          *(a1 + 3) = 1;
          *(a1 + 1) = 1056;
          v13 = a3 == 32993;
          LODWORD(v4) = 71;
          v14 = 81;
LABEL_187:
          if (v13)
          {
            LODWORD(v4) = v14;
          }

          goto LABEL_219;
        }

        v10 = -35918;
LABEL_82:
        if ((a4 + v10) >= 2)
        {
          return v4;
        }

        v5 = 17072131;
        goto LABEL_114;
      }

      if (a4 <= 36491)
      {
        if ((a4 - 36283) >= 2)
        {
          if ((a4 - 36285) >= 2)
          {
            if (a4 != 36194)
            {
              return v4;
            }

            *(a1 + 3) = 0;
            *(a1 + 1) = 784;
            goto LABEL_157;
          }

          v5 = 163844;
          goto LABEL_114;
        }

        *a1 = 16388;
        *(a1 + 2) = 67371009;
LABEL_116:
        v4 = 1;
        if (a4 > 36755)
        {
          if (a4 <= 36762)
          {
            if (a4 <= 36758)
            {
              if (a4 == 36756)
              {
                LODWORD(v4) = 12;
              }

              else
              {
                if (a4 != 36757)
                {
                  return v4;
                }

                LODWORD(v4) = 32;
              }
            }

            else if (a4 == 36760)
            {
              LODWORD(v4) = 22;
            }

            else
            {
              LODWORD(v4) = 62;
            }
          }

          else
          {
            switch(a4)
            {
              case 37808:
                LODWORD(v4) = 204;
                goto LABEL_219;
              case 37809:
                LODWORD(v4) = 205;
                goto LABEL_219;
              case 37810:
                LODWORD(v4) = 206;
                goto LABEL_219;
              case 37811:
                LODWORD(v4) = 207;
                goto LABEL_219;
              case 37812:
                LODWORD(v4) = 208;
                goto LABEL_219;
              case 37813:
                LODWORD(v4) = 210;
                goto LABEL_219;
              case 37814:
                LODWORD(v4) = 211;
                goto LABEL_219;
              case 37815:
                LODWORD(v4) = 212;
                goto LABEL_219;
              case 37816:
                LODWORD(v4) = 213;
                goto LABEL_219;
              case 37817:
                LODWORD(v4) = 214;
                goto LABEL_219;
              case 37818:
                LODWORD(v4) = 215;
                goto LABEL_219;
              case 37819:
                LODWORD(v4) = 216;
                goto LABEL_219;
              case 37820:
                LODWORD(v4) = 217;
                goto LABEL_219;
              case 37821:
                LODWORD(v4) = 218;
                goto LABEL_219;
              case 37822:
              case 37823:
              case 37824:
              case 37825:
              case 37826:
              case 37827:
              case 37828:
              case 37829:
              case 37830:
              case 37831:
              case 37832:
              case 37833:
              case 37834:
              case 37835:
              case 37836:
              case 37837:
              case 37838:
              case 37839:
                return v4;
              case 37840:
                LODWORD(v4) = 186;
                goto LABEL_219;
              case 37841:
                LODWORD(v4) = 187;
                goto LABEL_219;
              case 37842:
                LODWORD(v4) = 188;
                goto LABEL_219;
              case 37843:
                LODWORD(v4) = 189;
                goto LABEL_219;
              case 37844:
                LODWORD(v4) = 190;
                goto LABEL_219;
              case 37845:
                LODWORD(v4) = 192;
                goto LABEL_219;
              case 37846:
                LODWORD(v4) = 193;
                goto LABEL_219;
              case 37847:
                LODWORD(v4) = 194;
                goto LABEL_219;
              case 37848:
                LODWORD(v4) = 195;
                goto LABEL_219;
              case 37849:
                LODWORD(v4) = 196;
                goto LABEL_219;
              case 37850:
                LODWORD(v4) = 197;
                goto LABEL_219;
              case 37851:
                LODWORD(v4) = 198;
                goto LABEL_219;
              case 37852:
                LODWORD(v4) = 199;
                goto LABEL_219;
              case 37853:
                LODWORD(v4) = 200;
                goto LABEL_219;
              default:
                if (a4 == 36763)
                {
                  LODWORD(v4) = 112;
                }

                else
                {
                  if (a4 != 36975)
                  {
                    return v4;
                  }

                  LODWORD(v4) = 91;
                }

                break;
            }
          }

          goto LABEL_219;
        }

        if (a4 <= 34835)
        {
          v4 = 25;
          switch(a4)
          {
            case 33321:
              LODWORD(v4) = 10;
              goto LABEL_219;
            case 33322:
              LODWORD(v4) = 20;
              goto LABEL_219;
            case 33323:
              LODWORD(v4) = 30;
              goto LABEL_219;
            case 33324:
              LODWORD(v4) = 60;
              goto LABEL_219;
            case 33325:
              goto LABEL_219;
            case 33326:
              goto LABEL_151;
            case 33327:
              goto LABEL_184;
            case 33328:
              goto LABEL_182;
            case 33329:
              LODWORD(v4) = 14;
              goto LABEL_219;
            case 33330:
              LODWORD(v4) = 13;
              goto LABEL_219;
            case 33331:
              LODWORD(v4) = 24;
              goto LABEL_219;
            case 33332:
              LODWORD(v4) = 23;
              goto LABEL_219;
            case 33333:
              LODWORD(v4) = 54;
              goto LABEL_219;
            case 33334:
              LODWORD(v4) = 53;
              goto LABEL_219;
            case 33335:
              LODWORD(v4) = 34;
              goto LABEL_219;
            case 33336:
              LODWORD(v4) = 33;
              goto LABEL_219;
            case 33337:
              LODWORD(v4) = 64;
              goto LABEL_219;
            case 33338:
              LODWORD(v4) = 63;
              goto LABEL_219;
            case 33339:
              LODWORD(v4) = 104;
              goto LABEL_219;
            case 33340:
              LODWORD(v4) = 103;
              goto LABEL_219;
            default:
              if (a4 == 32857)
              {
                LODWORD(v4) = 90;
              }

              else
              {
                if (a4 != 32859)
                {
                  return v4;
                }

                LODWORD(v4) = 110;
              }

              break;
          }

          goto LABEL_219;
        }

        if (a4 > 36207)
        {
          if (a4 > 36225)
          {
            switch(a4)
            {
              case 36226:
                LODWORD(v4) = 124;
                break;
              case 36232:
                LODWORD(v4) = 114;
                break;
              case 36238:
                LODWORD(v4) = 74;
                break;
              default:
                return v4;
            }
          }

          else
          {
            switch(a4)
            {
              case 36208:
                LODWORD(v4) = 123;
                break;
              case 36214:
                LODWORD(v4) = 113;
                break;
              case 36220:
                LODWORD(v4) = 73;
                break;
              default:
                return v4;
            }
          }

          goto LABEL_219;
        }

        if (a4 <= 35900)
        {
          if (a4 != 35898)
          {
            return v4;
          }

          LODWORD(v4) = 92;
          goto LABEL_219;
        }

        if (a4 == 35901)
        {
          LODWORD(v4) = 93;
          goto LABEL_219;
        }

        if (a4 != 36194)
        {
          return v4;
        }

LABEL_157:
        LODWORD(v4) = 40;
        goto LABEL_219;
      }

      if (a4 <= 36755)
      {
        if ((a4 - 36492) < 2)
        {
          v5 = 17072132;
        }

        else
        {
          if ((a4 - 36494) >= 2)
          {
            return v4;
          }

          v5 = 229380;
        }

        goto LABEL_114;
      }

      if (a4 != 36756)
      {
        v6 = 36757;
        goto LABEL_86;
      }

LABEL_107:
      *(a1 + 3) = 0;
      v9 = 264;
      goto LABEL_112;
    }

    if (a4 > 33326)
    {
      if (a4 <= 34835)
      {
        if (a4 <= 33777)
        {
          if (a4 == 33327)
          {
            *(a1 + 3) = 0;
            *(a1 + 1) = 544;
LABEL_184:
            LODWORD(v4) = 65;
            goto LABEL_219;
          }

          if (a4 == 33328)
          {
            *(a1 + 3) = 0;
            *(a1 + 1) = 576;
LABEL_182:
            LODWORD(v4) = 105;
            goto LABEL_219;
          }

          v8 = 33777;
          goto LABEL_54;
        }

        v10 = -33778;
        goto LABEL_82;
      }

      if (a4 > 35411)
      {
        if (a4 == 35412)
        {
LABEL_103:
          v12 = 212993;
          goto LABEL_104;
        }

        if (a4 == 35413)
        {
          goto LABEL_106;
        }

        goto LABEL_102;
      }

      if (a4 == 34836)
      {
        *(a1 + 3) = 1;
        *(a1 + 1) = 1152;
        LODWORD(v4) = 125;
      }

      else
      {
        if (a4 != 34842)
        {
          return v4;
        }

        *(a1 + 3) = 1;
        *(a1 + 1) = 1088;
        LODWORD(v4) = 115;
      }
    }

    else
    {
      if (a4 > 33320)
      {
        if (a4 <= 33323)
        {
          if (a4 == 33321)
          {
            goto LABEL_107;
          }

          if (a4 != 33322)
          {
            v6 = 33323;
LABEL_86:
            if (a4 != v6)
            {
              return v4;
            }

            *(a1 + 3) = 0;
            v9 = 528;
            goto LABEL_112;
          }

LABEL_71:
          *(a1 + 3) = 0;
          v9 = 272;
          goto LABEL_112;
        }

        if (a4 != 33324)
        {
          if (a4 == 33325)
          {
            *(a1 + 3) = 0;
            *(a1 + 1) = 272;
            LODWORD(v4) = 25;
          }

          else
          {
            *(a1 + 3) = 0;
            *(a1 + 1) = 288;
LABEL_151:
            LODWORD(v4) = 55;
          }

          goto LABEL_219;
        }

LABEL_70:
        *(a1 + 3) = 0;
        v9 = 544;
        goto LABEL_112;
      }

      if (a4 > 32855)
      {
        if (a4 == 32856)
        {
          *(a1 + 3) = 1;
          *(a1 + 1) = 1056;
          v13 = a3 == 32993;
          LODWORD(v4) = 70;
          v14 = 80;
          goto LABEL_187;
        }

        if (a4 != 32857)
        {
          if (a4 != 32859)
          {
            return v4;
          }

          goto LABEL_111;
        }

        goto LABEL_62;
      }

      if (a4 == 32854)
      {
        *(a1 + 3) = 1;
        *(a1 + 1) = 1040;
        LODWORD(v4) = 42;
      }

      else
      {
        if (a4 != 32855)
        {
          return v4;
        }

        *(a1 + 3) = 1;
        *(a1 + 1) = 1040;
        LODWORD(v4) = 41;
      }
    }

LABEL_219:
    *(a1 + 20) = v4;
    return 1;
  }

  if (a4 <= 37807)
  {
    if (a4 > 37489)
    {
      v7 = a4 - 116;
      if ((a4 - 37492) > 5)
      {
        if ((a4 - 37490) >= 2)
        {
          return v4;
        }

        v5 = 163845;
      }

      else if (((1 << v7) & 3) != 0)
      {
        v5 = 212997;
      }

      else if (((1 << v7) & 0xC) != 0)
      {
        v5 = 17055749;
      }

      else
      {
        v5 = 17072133;
      }

      goto LABEL_114;
    }

    if (a4 <= 36762)
    {
      if (a4 == 36759)
      {
        *(a1 + 3) = 1;
        *(a1 + 1) = 1056;
        LODWORD(v4) = 72;
        goto LABEL_219;
      }

      if (a4 == 36760)
      {
        goto LABEL_71;
      }

      if (a4 != 36761)
      {
        return v4;
      }

      goto LABEL_70;
    }

    if ((a4 - 37488) < 2)
    {
      v5 = 81925;
      goto LABEL_114;
    }

    if (a4 == 36763)
    {
LABEL_111:
      *(a1 + 3) = 1;
      v9 = 1088;
      goto LABEL_112;
    }

    if (a4 != 36975)
    {
      return v4;
    }

LABEL_62:
    *(a1 + 3) = 1;
    v9 = 1056;
LABEL_112:
    *(a1 + 1) = v9;
    goto LABEL_116;
  }

  switch(a4)
  {
    case 37808:
    case 37840:
      v5 = 17072130;
      goto LABEL_114;
    case 37809:
    case 37841:
      *a1 = 17072130;
      v11 = 1029;
      goto LABEL_115;
    case 37810:
    case 37842:
      *a1 = 17072130;
      v11 = 1285;
      goto LABEL_115;
    case 37811:
    case 37843:
      *a1 = 17072130;
      v11 = 1286;
      goto LABEL_115;
    case 37812:
    case 37844:
      *a1 = 17072130;
      v11 = 1542;
      goto LABEL_115;
    case 37813:
    case 37845:
      *a1 = 17072130;
      v11 = 1288;
      goto LABEL_115;
    case 37814:
    case 37846:
      *a1 = 17072130;
      v11 = 1544;
      goto LABEL_115;
    case 37815:
    case 37847:
      *a1 = 17072130;
      v11 = 2056;
      goto LABEL_115;
    case 37816:
    case 37848:
      *a1 = 17072130;
      v11 = 1290;
      goto LABEL_115;
    case 37817:
    case 37849:
      *a1 = 17072130;
      v11 = 1546;
      goto LABEL_115;
    case 37818:
    case 37850:
      *a1 = 17072130;
      v11 = 2058;
      goto LABEL_115;
    case 37819:
    case 37851:
      *a1 = 17072130;
      v11 = 2570;
      goto LABEL_115;
    case 37820:
    case 37852:
      *a1 = 17072130;
      v11 = 2572;
      goto LABEL_115;
    case 37821:
    case 37853:
      *a1 = 17072130;
      v11 = 3084;
      goto LABEL_115;
    default:
      return v4;
  }

  return v4;
}

uint64_t sub_1AF199E9C(uint64_t a1)
{
  if (sub_1AF197458(a1))
  {
    return 1;
  }

  v3 = sub_1AF195E38(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v2 = CFEqual(v3, @"ktx") != 0;
  CFRelease(v4);
  return v2;
}

uint64_t sub_1AF199F04(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = sub_1AF0D5194();
  v3 = os_signpost_id_generate(v2);
  v4 = sub_1AF0D5194();
  v5 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v4;
    if (os_signpost_enabled(v4))
    {
      *buf = 67109120;
      v43 = 1;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "LoadImage (KTX)", "dd %d", buf, 8u);
    }
  }

  if (!a1)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDA978(v7);
    }
  }

  v8 = sub_1AF197458(a1);
  if (v8)
  {
    v9 = v8;
    CFRetain(v8);
    goto LABEL_9;
  }

  v21 = sub_1AF195E98(a1);
  if (v21)
  {
    v9 = sub_1AF287EF8(v21);
    if (v9)
    {
LABEL_9:
      Length = CFDataGetLength(v9);
      if (Length > 0x3F)
      {
        v12 = Length;
        BytePtr = CFDataGetBytePtr(v9);
        if (*BytePtr == 0xBB31312058544BABLL && *(BytePtr + 2) == 169478669)
        {
          v15 = BytePtr;
          if (*(BytePtr + 3) == 67305985)
          {
            sub_1AF197D10(a1);
            sub_1AF196048(a1, 0, 0, COERCE_DOUBLE(vcvt_f32_u32(*(v15 + 36))));
            if (*(v15 + 13) == 6)
            {
              sub_1AF197E98(a1, 3);
            }

            v16 = sub_1AF196128(a1);
            if (sub_1AF1993FC(v16, v17, *(v15 + 6), *(v15 + 7)))
            {
              v18 = *v16;
              if (!*v16)
              {
                goto LABEL_43;
              }

              if (v18 != 3)
              {
                v28 = v18 != 4;
                if (v18 == 2)
                {
                  v28 = sub_1AF28A070();
                  v18 = *v16;
                }

                if (v18 & 0xFFFFFFFB) != 1 && (v28)
                {
LABEL_43:
                  v29 = 0;
                  v30 = *(v15 + 14);
                  v31 = *(v15 + 15) + 64;
                  if (v30 <= 1)
                  {
                    v30 = 1;
                  }

                  v39 = v30;
                  if (*(v15 + 13) <= 1u)
                  {
                    v32 = 1;
                  }

                  else
                  {
                    v32 = *(v15 + 13);
                  }

                  v40 = v3 - 1;
                  v41 = v3;
                  while (v31 <= v12)
                  {
                    v33 = 0;
                    v34 = *&v15[v31];
                    v31 += 4;
                    while (1)
                    {
                      v35 = v31 + v34;
                      if (v31 + v34 > v12)
                      {
                        break;
                      }

                      v36 = CFDataCreate(0, &v15[v31], v34);
                      CFArrayAppendValue(v16[3], v36);
                      CFRelease(v36);
                      v31 = (v35 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                      if (v32 == ++v33)
                      {
                        goto LABEL_56;
                      }
                    }

                    v37 = sub_1AF0D5194();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 67109888;
                      v43 = v33;
                      v44 = 1024;
                      *v45 = v29;
                      *&v45[4] = 2048;
                      *&v45[6] = v35;
                      *&v45[14] = 2048;
                      *&v45[16] = v12;
                      _os_log_error_impl(&dword_1AF0CE000, v37, OS_LOG_TYPE_ERROR, "Error: overflow reading slice[%d] / mip[%d] (%zu > %zu)", buf, 0x22u);
                    }

LABEL_56:
                    ++v29;
                    v22 = 1;
                    v5 = v40;
                    v3 = v41;
                    if (v29 == v39)
                    {
                      goto LABEL_34;
                    }
                  }

                  v38 = sub_1AF0D5194();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109632;
                    v43 = v29;
                    v44 = 2048;
                    *v45 = v31;
                    *&v45[8] = 2048;
                    *&v45[10] = v12;
                    _os_log_error_impl(&dword_1AF0CE000, v38, OS_LOG_TYPE_ERROR, "Error: overflow reading mip[%d] (%zu > %zu)", buf, 0x1Cu);
                  }

                  v22 = 1;
                  goto LABEL_34;
                }
              }

              v19 = sub_1AF0D5194();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v20 = *v16;
                *buf = 67109120;
                v43 = v20;
                _os_log_impl(&dword_1AF0CE000, v19, OS_LOG_TYPE_DEFAULT, "Warning: Compression type %d not supported", buf, 8u);
              }
            }

            else
            {
              v24 = sub_1AF0D5194();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_1AFDDAA40(v24);
              }
            }

            sub_1AF197D10(a1);
          }

          else
          {
            v23 = sub_1AF0D5194();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDDA9FC(v23);
            }
          }
        }
      }

      else
      {
        v11 = sub_1AF0D5194();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AF0CE000, v11, OS_LOG_TYPE_DEFAULT, "Warning: KTX file seems too small or is not a KTX", buf, 2u);
        }
      }

      v22 = 0;
LABEL_34:
      CFRelease(v9);
      goto LABEL_35;
    }
  }

  v22 = 0;
LABEL_35:
  v25 = sub_1AF0D5194();
  if (v5 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = v25;
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v26, OS_SIGNPOST_INTERVAL_END, v3, "LoadImage (KTX)", &unk_1AFF70A1D, buf, 2u);
    }
  }

  return v22;
}

uint64_t sub_1AF19A3D0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a1;
  v152 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_width(a1, a2, a3, a4);
  v10 = objc_msgSend_height(v5, v7, v8, v9);
  v14 = objc_msgSend_depth(v5, v11, v12, v13);
  if (objc_msgSend_textureType(v5, v15, v16, v17) == 5)
  {
    v21 = 6;
  }

  else
  {
    v21 = 1;
  }

  if (v4)
  {
    v138 = objc_msgSend_mipmapLevelCount(v5, v18, v19, v20);
  }

  else
  {
    v138 = 1;
  }

  if (objc_msgSend_storageMode(v5, v18, v19, v20) == 2)
  {
    v135 = v10;
    v136 = v6;
    v25 = objc_alloc_init(MEMORY[0x1E69741C0]);
    v29 = objc_msgSend_textureType(v5, v26, v27, v28);
    objc_msgSend_setTextureType_(v25, v30, v29, v31);
    v35 = objc_msgSend_pixelFormat(v5, v32, v33, v34);
    objc_msgSend_setPixelFormat_(v25, v36, v35, v37);
    v41 = objc_msgSend_width(v5, v38, v39, v40);
    objc_msgSend_setWidth_(v25, v42, v41, v43);
    v47 = objc_msgSend_height(v5, v44, v45, v46);
    objc_msgSend_setHeight_(v25, v48, v47, v49);
    v53 = objc_msgSend_depth(v5, v50, v51, v52);
    objc_msgSend_setDepth_(v25, v54, v53, v55);
    v59 = objc_msgSend_mipmapLevelCount(v5, v56, v57, v58);
    objc_msgSend_setMipmapLevelCount_(v25, v60, v59, v61);
    objc_msgSend_setUsage_(v25, v62, 0, v63);
    v67 = objc_msgSend_device(v5, v64, v65, v66);
    v70 = objc_msgSend_newTextureWithDescriptor_(v67, v68, v25, v69);
    v74 = objc_msgSend_device(v5, v71, v72, v73);
    v78 = objc_msgSend_newCommandQueue(v74, v75, v76, v77);
    v82 = objc_msgSend_commandBuffer(v78, v79, v80, v81);
    v89 = objc_msgSend_blitCommandEncoder(v82, v83, v84, v85);
    if (v138)
    {
      v91 = 0;
      *&v90 = __PAIR64__(v135, v136);
      v92 = v14;
      do
      {
        v93 = 0;
        v94 = v92;
        *v137[0].i8 = v90;
        *&v95 = v90;
        *(&v95 + 1) = SDWORD1(v90);
        v139 = v95;
        do
        {
          v148 = v139;
          *&v149 = v94;
          v141 = 0;
          v142 = 0;
          v143 = 0;
          memset(v147, 0, sizeof(v147));
          objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v89, v86, v5, v93, v91, &v141, &v148, v70, v93, v91, v147);
          ++v93;
        }

        while (v21 != v93);
        *(&v90 + 1) = v137[1];
        *&v90 = vshl_u32(v137[0], vcgt_s32(v137[0], 0x100000001));
        v92 = v94 >> (v94 > 1);
        ++v91;
      }

      while (v91 != v138);
    }

    objc_msgSend_endEncoding(v89, v86, v87, v88);
    objc_msgSend_commit(v82, v96, v97, v98);
    objc_msgSend_waitUntilCompleted(v82, v99, v100, v101);

    v5 = v70;
    v10 = v135;
    v6 = v136;
  }

  v150 = 0u;
  v151 = 0u;
  v149 = 0u;
  *&v148 = 0xBB31312058544BABLL;
  *(&v148 + 1) = 0x40302010A1A0A0DLL;
  v102 = objc_msgSend_pixelFormat(v5, v22, v23, v24);
  v106 = v102;
  if (v102 > 79)
  {
    switch(v102)
    {
      case 'P':
        v107 = xmmword_1AFE21970;
        goto LABEL_25;
      case 's':
        v107 = xmmword_1AFE219A0;
        v109 = 8;
        goto LABEL_31;
      case 'Q':
        v107 = xmmword_1AFE219C0;
        goto LABEL_25;
    }

LABEL_26:
    v110 = sub_1AF0D5194();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDAB28(v106);
    }

    return 0;
  }

  switch(v102)
  {
    case 10:
      v107 = xmmword_1AFE21990;
      v108 = 1;
      break;
    case 25:
      v107 = xmmword_1AFE21980;
      v108 = 2;
      break;
    case 71:
      v107 = xmmword_1AFE219B0;
LABEL_25:
      v109 = 4;
LABEL_31:
      v140 = v109;
      v111 = 6408;
      goto LABEL_32;
    default:
      goto LABEL_26;
  }

  v140 = v108;
  v111 = 6403;
LABEL_32:
  v149 = v107;
  LODWORD(v150) = v111;
  if (objc_msgSend_textureType(v5, v103, v104, v105) != 2 && objc_msgSend_textureType(v5, v112, v113, v114) != 5)
  {
    v132 = sub_1AF0D5194();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDAA84(v5, v132, v133, v134);
    }

    return 0;
  }

  DWORD1(v150) = objc_msgSend_width(v5, v112, v113, v114);
  *(&v150 + 1) = objc_msgSend_height(v5, v115, v116, v117);
  LODWORD(v151) = 0;
  *(&v151 + 4) = __PAIR64__(v138, v21);
  v120 = objc_msgSend_dataWithCapacity_(MEMORY[0x1E695DF88], v118, 0, v119);
  objc_msgSend_appendBytes_length_(v120, v121, &v148, 64);
  v123 = malloc_type_malloc(v10 * v6 * v140, 0x100004077774924uLL);
  if (v138)
  {
    v124 = 0;
    v125 = v10;
    do
    {
      LODWORD(v147[0]) = v6 * v140 * v125;
      objc_msgSend_appendBytes_length_(v120, v122, v147, 4);
      for (i = 0; i != v21; ++i)
      {
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v144 = v6;
        v145 = v125;
        v146 = 1;
        objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v5, v122, v123, (v6 * v140), LODWORD(v147[0]), &v141, v124, i);
        objc_msgSend_appendBytes_length_(v120, v127, v123, LODWORD(v147[0]));
      }

      LODWORD(v6) = v6 >> (v6 > 1);
      v125 = v125 >> (v125 > 1);
      ++v124;
    }

    while (v124 != v138);
  }

  free(v123);
  return objc_msgSend_copy(v120, v128, v129, v130);
}

void sub_1AF19A8D8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

size_t sub_1AF19A8F8(uint64_t a1)
{
  v1 = a1 - 1;
  v2 = MEMORY[0x1E69E9830];
  do
  {
    v3 = *(v1 + 1);
    if (v3 < 0)
    {
      result = __maskrune(*(v1 + 1), 0x4000uLL);
    }

    else
    {
      result = *(v2 + 4 * v3 + 60) & 0x4000;
    }

    ++v1;
  }

  while (result);
  if (v3)
  {
    result = strlen(v1);
    v5 = (v1 + result - 1);
    do
    {
      v6 = v5;
      if (v5 <= v1)
      {
        break;
      }

      v7 = *v5;
      result = v7 < 0 ? __maskrune(*v6, 0x4000uLL) : *(v2 + 4 * v7 + 60) & 0x4000u;
      v5 = v6 - 1;
    }

    while (result);
    v6[1] = 0;
  }

  return result;
}

void **sub_1AF19A9A4(uint64_t a1, unint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_malloc(0x128uLL, 0x108004001B6EADBuLL);
  if (!v4)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDAC50();
    }

    return 0;
  }

  v5 = v4;
  *(v4 + 16) = 0u;
  *(v4 + 17) = 0u;
  *(v4 + 14) = 0u;
  *(v4 + 15) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 13) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 69) = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  *(v4 + 268) = _D0;
  *(v4 + 36) = 0;
  if (a2)
  {
    v10 = 0;
    v30 = 0;
    v11 = 0;
    v29 = 0;
    v28 = v4 + 280;
    do
    {
      v12 = 0;
      while (1)
      {
        v13 = *(a1 + v10);
        if (v13 == 10 || v12 > 0xFE)
        {
          break;
        }

        ++v10;
        v14 = v12 + 1;
        v33[v12++] = v13;
        if (v10 >= a2)
        {
          goto LABEL_12;
        }
      }

      if (v13 == 10)
      {
        ++v10;
      }

      v14 = v12;
LABEL_12:
      v33[v14] = 0;
      sub_1AF19A8F8(v33);
      if (v33[0] && v33[0] != 35)
      {
        if (*v33 == 1280592212 && v33[4] == 69)
        {
          sscanf(v33, "TITLE %255[^]");
        }

        else if (*v33 == 0x4D5F4E49414D4F44 && *&v33[8] == 20041)
        {
          sscanf(v33, "DOMAIN_MIN %f %f %f");
        }

        else if (*v33 == 0x4D5F4E49414D4F44 && *&v33[8] == 22593)
        {
          sscanf(v33, "DOMAIN_MAX %f %f %f");
        }

        else
        {
          if (*v33 == 0x535F44315F54554CLL && *&v33[3] == 0x455A49535F44315FLL)
          {
            v24 = sub_1AF0D5194();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDDAC1C();
            }

LABEL_59:
            free(v5);
            return 0;
          }

          if (*v33 == 0x535F44335F54554CLL && *&v33[3] == 0x455A49535F44335FLL)
          {
            sscanf(v33, "LUT_3D_SIZE %d", v28);
            v29 = 3 * *(v5 + 70) * *(v5 + 70) * *(v5 + 70);
            v21 = malloc_type_malloc(4 * v29, 0x100004052888210uLL);
            v5[36] = v21;
            if (!v21)
            {
              v25 = sub_1AF0D5194();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                sub_1AFDDABE8();
              }

              goto LABEL_59;
            }
          }

          else if (v30 || (v33[0] - 45) < 2u || (v33[0] - 48) <= 9)
          {
            v32 = 0;
            v31 = 0;
            if (sscanf(v33, "%f %f %f", &v32 + 4, &v32, &v31) == 3)
            {
              if (v11 >= v29)
              {
                v27 = sub_1AF0D5194();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDDABB4();
                }

                free(v5[36]);
                goto LABEL_59;
              }

              v20 = v5[36] + 4 * v11;
              *v20 = HIDWORD(v32);
              v20[1] = v32;
              v11 += 3;
              v20[2] = v31;
              v30 = 1;
            }
          }

          else
          {
            v30 = 0;
          }
        }
      }
    }

    while (v10 < a2);
  }

  return v5;
}

BOOL sub_1AF19ADC4(void *a1, char *a2, void *a3, uint64_t a4)
{
  v7 = objc_msgSend_bytes(a1, a2, a3, a4);
  v11 = objc_msgSend_length(a1, v8, v9, v10);
  v12 = sub_1AF19A9A4(v7, v11);
  v13 = v12;
  if (v12)
  {
    *a2 = *(v12 + 70);
    *a3 = v12[36];
    free(v12);
  }

  return v13 != 0;
}

void sub_1AF19AE38(void *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1C3FAC(a1);
  if (v10)
  {
    v11 = v10;
    v12 = sub_1AF1D0140(v10);
    if (v12)
    {
      sub_1AF1443AC(v12);
    }

    v13 = sub_1AF1D00F8(v11);
    if (v13)
    {
      sub_1AF137D98(v13, a1);
    }
  }
}

void sub_1AF19AEAC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4)
  {
    ++*(a1 + 388);
    v10 = sub_1AF1C3FAC(a1);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v10, 0, 1u);
  }
}

float sub_1AF19AF30(unsigned int a1)
{
  result = 0.0;
  if (a1 <= 6)
  {
    return flt_1AFE21BC0[a1];
  }

  return result;
}

uint64_t sub_1AF19AF4C()
{
  if (qword_1ED73AC48 != -1)
  {
    sub_1AFDDACFC();
  }

  return qword_1ED73AC40;
}

double sub_1AF19AF84()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AC40 = v0;
  v1 = sub_1AF16CB64();
  sub_1AF1DCFAC(v0, v1);
  sub_1AF1DD02C(@"attenuationDistance", 0x54u, 1, 0);
  sub_1AF1DD02C(@"color", 0x40u, 12, 0);
  sub_1AF1DD02C(@"intensity", 0x58u, 1, 0);
  sub_1AF1DD02C(@"orthographicScale", 0x70u, 1, 0);
  sub_1AF1DD02C(@"shadowBias", 0x108u, 6, 0);
  sub_1AF1DD02C(@"shadowIntensity", 0x60u, 1, 0);
  sub_1AF1DD02C(@"shadowRadius", 0x74u, 1, 0);
  sub_1AF1DD02C(@"spotFalloffExponent", 0x138u, 1, 0);
  sub_1AF1DD02C(@"spotInnerAngle", 0x134u, 1, 0);
  sub_1AF1DD02C(@"spotOuterAngle", 0x130u, 1, 0);
  sub_1AF1DD02C(@"temperature", 0x5Cu, 1, 0);
  sub_1AF1DD02C(@"zFar", 0x100u, 1, 0);
  sub_1AF1DD02C(@"zNear", 0xFCu, 1, 0);
  sub_1AF1DD02C(@"shadowCascadeDebugFactor", 0x80u, 1, 0);
  sub_1AF1DD02C(@"areaExtents", 0x150u, 8, 0);
  sub_1AF1DD018();
  qword_1ED72EDA8 = sub_1AF19F068;
  result = *&xmmword_1F24E7D50;
  xmmword_1ED72ED98 = xmmword_1F24E7D50;
  qword_1ED72EDE8 = sub_1AF1A02DC;
  return result;
}

uint64_t sub_1AF19B168()
{
  if (qword_1ED73AC48 != -1)
  {
    sub_1AFDDACFC();
  }

  v0 = sub_1AF0D160C(qword_1ED73AC40, 0x180uLL);
  v2[0] = 0;
  v2[1] = 0;
  sub_1AF19B268(v0, 1);
  sub_1AF163FFC(v2, 1.0, 1.0, 1.0, 1.0);
  sub_1AF19B308(v0, v2);
  sub_1AF19B3DC(v0, 1.0);
  *(v0 + 264) = 0x3FF0000000000000;
  *(v0 + 104) = vdup_n_s32(0x44800000u);
  *(v0 + 252) = 0x42C800003DCCCCCDLL;
  *(v0 + 240) = -1;
  *(v0 + 132) = 272;
  *(v0 + 92) = 1170939904;
  *(v0 + 84) = 0x46D2A78541200000;
  *(v0 + 249) = *(v0 + 249) & 0xC7 | 8;
  *(v0 + 128) = 0;
  *(v0 + 112) = xmmword_1AFE21A50;
  sub_1AF19B430(v0);
  return v0;
}

void sub_1AF19B268(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) != a2)
  {
    sub_1AF19B5C4(a1);
    *(a1 + 80) = a2;
    sub_1AF19B430(a1);
    sub_1AF19AE38(a1);
    v12 = sub_1AF1C3FAC(a1);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v12, 0, 1u);
  }
}

void sub_1AF19B308(uint64_t a1, float *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD6F14(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!sub_1AF163E94(a2, (a1 + 64)))
  {
    v20 = sub_1AF1C3FAC(a1);
    if (v20)
    {
      v21 = sub_1AF1D0140(v20);
      if (v21)
      {
        sub_1AF1443AC(v21);
      }
    }

    v22 = sub_1AF163F54((a1 + 64));
    v23 = sub_1AF163F54(a2);
    *(a1 + 64) = *a2;
    if (v22 || v23)
    {
      sub_1AF19AE38(a1);
    }

    sub_1AF19BB18(a1);
  }
}

void sub_1AF19B3DC(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 96) = a2;
}

double sub_1AF19B430(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 > 4)
  {
    if (v1 == 5)
    {
      *(a1 + 368) = 0;
      *(a1 + 304) = *(a1 + 304) & 0xFC | 2;
      *(a1 + 320) = xmmword_1AFE21B90;
      *(a1 + 336) = unk_1AFE21BA0;
      result = 0.0;
      *(a1 + 352) = xmmword_1AFE21BB0;
    }

    else if (v1 == 6)
    {
      *(a1 + 304) = 0;
      result = 2.19902369e13;
      *(a1 + 312) = 0x42B4000042C80000;
    }
  }

  else if (v1 == 3)
  {
    result = 8.58993629e10;
    *(a1 + 304) = 0x4234000042700000;
    *(a1 + 312) = 0x40000000;
  }

  else if (v1 == 4)
  {
    *(a1 + 304) = 0;
    *(a1 + 392) = 1;
    *(a1 + 384) = 0x1FFFFFFFFLL;
    *(a1 + 396) = 0;
    result = 0.0;
    __asm { FMOV            V1.4S, #10.0 }

    *(a1 + 320) = _Q1;
    *(a1 + 336) = 0u;
    *(a1 + 398) = 0;
    __asm { FMOV            V1.4S, #1.0 }

    *(a1 + 352) = _Q1;
    *(a1 + 368) = 0u;
  }

  return result;
}

uint64_t sub_1AF19B4EC(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 272);
  if (a2)
  {
    if (!result)
    {
      result = sub_1AF16578C(a1, 23);
      *(a1 + 272) = result;
    }
  }

  return result;
}

uint64_t sub_1AF19B558(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 280);
  if (a2)
  {
    if (!result)
    {
      result = sub_1AF16578C(a1, 26);
      *(a1 + 280) = result;
    }
  }

  return result;
}

void sub_1AF19B5C4(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 == 4)
  {
LABEL_4:
    v3 = *(a1 + 304);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 304) = 0;
    }

    return;
  }

  if (v2 != 5)
  {
    if (v2 != 6)
    {
      return;
    }

    goto LABEL_4;
  }

  v4 = *(a1 + 368);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 368) = 0;
  }

  if (*(a1 + 320) == 4)
  {
    v5 = *(a1 + 360);

    free(v5);
  }
}

void sub_1AF19B650(uint64_t a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 5)
  {
    v12 = *(a1 + 320);
    v13 = *a2;
    if (v12 != 4 || v13 == 4)
    {
      if (v13 == 4)
      {
        v15 = a2[32];
        if (v15 > 2)
        {
          v19 = *(a2 + 5);
          if (v12 == 4)
          {
            v20 = *(a1 + 360);
          }

          else
          {
            v20 = 0;
          }

          v21 = malloc_type_realloc(v20, 8 * a2[32], 0x41966D66uLL);
          *(a2 + 5) = v21;
          v22 = 0.0;
          v23 = 1;
          v24 = v15;
          v25 = v19;
          do
          {
            v26 = *v25++;
            v27 = v26;
            if (v24 == 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = v23;
            }

            v22 = v22 + ((-*(&v27 + 1) * COERCE_FLOAT(v19[v28])) + (*&v27 * COERCE_FLOAT(HIDWORD(v19[v28]))));
            ++v23;
            --v24;
          }

          while (v24);
          if (v22 >= 0.0)
          {
            memcpy(v21, v19, 8 * v15);
          }

          else
          {
            v29 = v15 - 1;
            do
            {
              *v21++ = v19[v29--];
              --v15;
            }

            while (v15);
          }
        }

        else
        {
          *a2 = 1;
          *&v16 = 0x3F0000003F000000;
          *(&v16 + 1) = 0x3F0000003F000000;
          *(a2 + 1) = v16;
        }
      }
    }

    else
    {
      free(*(a1 + 360));
    }

    v17 = *a2;
    v18 = *(a2 + 2);
    *(a1 + 336) = *(a2 + 1);
    *(a1 + 352) = v18;
    *(a1 + 320) = v17;
    sub_1AF19CDD8(a1);
    sub_1AF19D368(a1);
  }
}

uint64_t sub_1AF19B7C0(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 == 5)
  {
    v3 = (*(a1 + 320) & 7) << 6;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    if (sub_1AF166220(v4))
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 80);
  }

  else
  {
    v5 = 0;
    v6 = v2;
  }

  if ((v6 - 1) < 2)
  {
    goto LABEL_16;
  }

  if (v6 == 3)
  {
    v7 = *(a1 + 304);
  }

  else
  {
    if (v6 != 6)
    {
      goto LABEL_17;
    }

    v7 = *(a1 + 316);
  }

  if (v7 < 180.0)
  {
LABEL_16:
    v8 = sub_1AF19B994(a1);
    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
LABEL_18:
  v9 = *(a1 + 96);
  v10 = sub_1AF19B9DC(a1);
  v11 = v3 | v5 | v2 & 7u;
  if (v8)
  {
    LOBYTE(v12) = v10;
    v13 = v11 | (32 * (v9 < 1.0)) | 0x10;
    if (v10 && sub_1AF19BA38(a1) == 0.0)
    {
      v12 = fminf(ceilf(sqrtf(v12)), 8.0);
      v13 |= 0x80000u;
    }

    v11 = ((v12 & 0x1F) << 9) | v13;
    if (sub_1AF19BA80(a1))
    {
      v14 = sub_1AF19BAD0(a1);
      v11 = ((v14 & 7) << 14) | v11;
      if (v14 >= 2)
      {
        return v11 | ((*(a1 + 128) != 0.0) << 18) | 0x20000;
      }
    }
  }

  return v11;
}

uint64_t sub_1AF19B934(uint64_t a1)
{
  result = *(a1 + 272);
  if (result)
  {
    return sub_1AF166220(result);
  }

  return result;
}

uint64_t sub_1AF19B944(uint64_t a1)
{
  v1 = *(a1 + 80);
  if ((v1 - 1) < 2)
  {
    return 1;
  }

  if (v1 == 6)
  {
    v2 = *(a1 + 316);
    return v2 < 180.0;
  }

  if (v1 == 3)
  {
    v2 = *(a1 + 304);
    return v2 < 180.0;
  }

  return 0;
}

uint64_t sub_1AF19B994(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 248);
}

uint64_t sub_1AF19B9DC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 132) >= 0x1Fu)
  {
    v10 = 31;
  }

  else
  {
    v10 = *(a1 + 132);
  }

  if (*(a1 + 132))
  {
    return v10;
  }

  else
  {
    return 1;
  }
}

float sub_1AF19BA38(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 116);
}

BOOL sub_1AF19BA80(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80) == 2;
}

uint64_t sub_1AF19BAD0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 133);
}

void sub_1AF19BB18(uint64_t a1)
{
  v2 = sub_1AF1C3FAC(a1);
  if (v2)
  {
    v5 = sub_1AF1D0140(v2);
    if (v5)
    {
      sub_1AF1443AC(v5);
    }
  }

  if (*(a1 + 80) == 5)
  {

    sub_1AF19D174(a1, v3, v4);
  }
}

uint64_t sub_1AF19BB78(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 64;
}

__n128 sub_1AF19BBC0(__n128 *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1[4];
}

__n128 sub_1AF19BC08(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  memset(v11, 0, sizeof(v11));
  sub_1AF19BC90(a1, v11);
  return *sub_1AF15E62C(v11, 0);
}

uint64_t sub_1AF19BC90(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAD10(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 80);
  _ZF = v20 == 1 || v20 == 4;
  if (_ZF)
  {
    v22 = 90.0;
  }

  else if (v20 == 6)
  {
    v22 = *(a1 + 316);
  }

  else
  {
    v22 = sub_1AF19BFD8(a1);
    if (v22 >= 180.0 || v22 <= 0.0)
    {
      v22 = 60.0;
    }

    v20 = *(a1 + 80);
  }

  _ZF = v20 == 2;
  v24 = *a2 & 0xC2;
  if (_ZF)
  {
    ++v24;
  }

  *a2 = v24;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(a2 + 32) = _D1;
  v29 = *(a1 + 252);
  v30 = *(a1 + 256);
  if (v30 == 0.0)
  {
    v30 = 100.0;
  }

  *(a2 + 4) = v29;
  *(a2 + 8) = v30;
  if (v29 == 0.0)
  {
    *(a2 + 4) = 1065353216;
  }

  *a2 = v24 & 0xC1;
  *(a2 + 40) = *(a1 + 112);
  *(a2 + 44) = v22;
  return 1;
}

float sub_1AF19BDC0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

void sub_1AF19BE08(uint64_t a1, void *cf, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v6, cf, a3, a4, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80) == 6)
  {
    v11 = *(a1 + 304);
    if (v11 != cf)
    {
      if (v11)
      {
        CFRelease(v11);
        *(a1 + 304) = 0;
      }

      if (cf)
      {
        v12 = CFRetain(cf);
      }

      else
      {
        v12 = 0;
      }

      *(a1 + 304) = v12;
    }

    v13 = j__objc_msgSend__infoHangle(cf, cf, a3, a4);
    if (v13)
    {
      *(a1 + 316) = *(v13 + 20);
      v14 = *(v13 + 4);
    }

    else
    {
      *(a1 + 316) = 1110704128;
      v14 = 1.0;
    }

    *(a1 + 312) = v14;
    sub_1AF19AE38(a1);
    v15 = sub_1AF1C3FAC(a1);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v15, 0, 1u);
  }
}

uint64_t sub_1AF19BEF0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) != 6)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAD88(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return *(a1 + 304);
}

float sub_1AF19BF64(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) != 6)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAD88(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return *(a1 + 316);
}

float sub_1AF19BFD8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 3)
  {
    return *(a1 + 304);
  }

  else
  {
    return 60.0;
  }
}

float sub_1AF19C038(uint64_t a1, int a2, float a3)
{
  v3 = *(a1 + 84) * a3;
  v4 = fmaxf(v3, 0.0);
  if (!a2)
  {
    return v4;
  }

  if (v3 <= 0.0)
  {
    return 0.0;
  }

  return -1.0 / v3;
}

void sub_1AF19C0B8(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 == 3)
  {
    v3 = fminf(*(a1 + 304), 180.0);
    v4 = *(a1 + 308);
    if (v4 >= (v3 + -0.1))
    {
      v4 = v3 + -0.1;
    }

    v2 = (v4 * 0.5);
  }

  else
  {
    v2 = 0.0;
    v3 = 0.0;
    if (v1 == 6)
    {
      v3 = *(a1 + 316);
    }
  }

  v5 = v2 / 180.0 * 3.14159265;
  cosf(v5);
  v6 = (v3 * 0.5) / 180.0 * 3.14159265;
  fmaxf(cosf(v6), 0.0);
}

float sub_1AF19C1FC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 84);
}

uint64_t sub_1AF19C244(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 249) & 1;
}

void sub_1AF19C290(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 249);
  if ((v12 & 1) != a2)
  {
    *(a1 + 249) = v12 & 0xFE | a2;
    sub_1AF19AE38(a1);
    v13 = sub_1AF1C3FAC(a1);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v13, 0, 1u);
  }
}

void sub_1AF19C32C(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 248) != a2)
  {
    *(a1 + 248) = a2;
    v12 = sub_1AF1C3FAC(a1);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v12, 0, 1u);
    sub_1AF19AE38(a1);
  }
}

uint64_t sub_1AF19C3BC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 240);
}

void sub_1AF19C404(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[30] != a2)
  {
    a1[30] = a2;
    sub_1AF19AE38(a1);
  }
}

float sub_1AF19C46C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

void sub_1AF19C4B4(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 88) = a2;
  sub_1AF19BB18(a1);
}

float sub_1AF19C510(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 88);
  return v10 / sub_1AF19AF30(*(a1 + 80));
}

float sub_1AF19C56C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 112);
}

void sub_1AF19C5B4(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 112) = a2;
}

double sub_1AF19C608(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 264);
}

void sub_1AF19C650(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 264) = a2;
}

double sub_1AF19C6A4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 104);
}

void sub_1AF19C6EC(float32x2_t *a1, float32x2_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = vcge_f32(0x3400000034000000, vabd_f32(a2, a1[13]));
  if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) == 0)
  {
    a1[13] = a2;
    v13 = sub_1AF1C3FAC(a1);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v13, 0, 1u);
    sub_1AF19AE38(a1);
  }
}

void sub_1AF19C78C(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 116);
  if (v12 != a2)
  {
    *(a1 + 116) = a2;
    if (a2 == 0.0 || v12 == 0.0)
    {
      v13 = sub_1AF1C3FAC(a1);
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v13, 0, 1u);
      sub_1AF19AE38(a1);
    }

    v14 = sub_1AF1C3FAC(a1);
    if (v14)
    {
      v15 = sub_1AF1D0140(v14);
      if (v15)
      {
        sub_1AF1443AC(v15);
      }
    }
  }
}

uint64_t sub_1AF19C844(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 132);
}

void sub_1AF19C88C(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 132) != a2)
  {
    v12 = sub_1AF19B9DC(a1);
    *(a1 + 132) = a2;
    if (v12 != sub_1AF19B9DC(a1))
    {
      v13 = sub_1AF1C3FAC(a1);
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v13, 0, 1u);
      sub_1AF19AE38(a1);
    }
  }
}

float sub_1AF19C938(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = 2.0;
  if (*(a1 + 80) == 3)
  {
    return *(a1 + 312);
  }

  return result;
}

void sub_1AF19C990(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 3)
  {
    *(a1 + 312) = a2;
  }
}

float sub_1AF19C9F0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 3)
  {
    return *(a1 + 308);
  }

  else
  {
    return 45.0;
  }
}

void sub_1AF19CA50(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 3)
  {
    *(a1 + 308) = a2;
  }
}

void sub_1AF19CAB0(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 3)
  {
    *(a1 + 304) = a2;
  }
}

float sub_1AF19CB10(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 92);
}

void sub_1AF19CB58(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 92) = a2;
  sub_1AF19BB18(a1);
}

uint64_t sub_1AF19CBB4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

float sub_1AF19CBFC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 256);
}

void sub_1AF19CC44(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 256) = a2;
}

float sub_1AF19CC98(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 252);
}

void sub_1AF19CCE0(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 252) = a2;
}

uint64_t sub_1AF19CD34(uint64_t a1)
{
  if (*(a1 + 80) != 5 || (*(a1 + 304) & 2) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 368);
  if (!v2)
  {
    v2 = [VFXModel __createCFObject]_0();
    *(a1 + 368) = v2;
    v4 = sub_1AF1A0BFC();
    v5 = sub_1AF1A1270(v4);
    sub_1AF165A7C(v5, 0);
    sub_1AF1A1310(v4, 1);
    sub_1AF1B32F8(v2, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    sub_1AF19CDD8(a1);
    sub_1AF19D174(a1, v6, v7);
  }

  return v2;
}

void sub_1AF19CDD8(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 368);
  if (!v1)
  {
    return;
  }

  v3 = *(a1 + 320);
  if (v3 <= 1)
  {
    if (!*(a1 + 320))
    {
      v20 = *(a1 + 336);
      *bytes = -v20;
      v33 = 0;
      *v34 = v20;
      *&v34[4] = 0;
      *v31 = 256;
      v21 = *MEMORY[0x1E695E480];
      v22 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
      values = sub_1AF1ADBE4(v22, 0, 2, 3, 1);
      CFRelease(v22);
      v23 = CFDataCreate(v21, v31, 2);
      cf = sub_1AF1A6834();
      sub_1AF1A6A70(cf, 2, 1, v23, 1);
      CFRelease(v23);
      v28 = 0;
      v24 = MEMORY[0x1E695E9C0];
      v25 = CFArrayCreate(v21, &values, 1, MEMORY[0x1E695E9C0]);
      v26 = CFArrayCreate(v21, &cf, 1, v24);
      v16 = sub_1AF27B22C(v25, v26, &v28);
      sub_1AF16CC34(v16, @"Area Light - Line");
      CFRelease(v26);
      CFRelease(v25);
      v17 = cf;
LABEL_20:
      CFRelease(v17);
LABEL_21:
      sub_1AF1B2C80(v1, v16);
      if (v16)
      {
        CFRelease(v16);
      }

      return;
    }

    if (v3 != 1)
    {
      goto LABEL_24;
    }

    v18 = sub_1AF22917C(0, 1, 1, 0, COERCE_FLOAT(*(a1 + 336)) + COERCE_FLOAT(*(a1 + 336)), COERCE_FLOAT(HIDWORD(*(a1 + 336))) + COERCE_FLOAT(HIDWORD(*(a1 + 336))), 0.0);
    v16 = v18;
    v19 = @"Area light - Rectangle";
LABEL_18:
    sub_1AF16CC34(v18, v19);
    goto LABEL_21;
  }

  switch(v3)
  {
    case 2u:
      v18 = sub_1AF22917C(0, 1, 1, 0, COERCE_FLOAT(*(a1 + 336)) + COERCE_FLOAT(*(a1 + 336)), COERCE_FLOAT(HIDWORD(*(a1 + 336))) + COERCE_FLOAT(HIDWORD(*(a1 + 336))), 0.0);
      v16 = v18;
      v19 = @"Area Light - Ellipse";
      goto LABEL_18;
    case 3u:
      v18 = sub_1AF226914(0, 1, 1, 1, 0, 0, COERCE_FLOAT(*(a1 + 336)) + COERCE_FLOAT(*(a1 + 336)), COERCE_FLOAT(HIDWORD(*(a1 + 336))) + COERCE_FLOAT(HIDWORD(*(a1 + 336))), COERCE_FLOAT(*(a1 + 344)) + COERCE_FLOAT(*(a1 + 344)), 0.0);
      v16 = v18;
      v19 = @"Area Light - Ellipsoid";
      goto LABEL_18;
    case 4u:
      Mutable = CGPathCreateMutable();
      if (*(a1 + 352))
      {
        v5 = 0;
        __asm { FMOV            V0.2S, #-1.0 }

        v11 = -_D0;
        do
        {
          v12 = vmul_f32(*(*(a1 + 360) + 8 * v5), *&v11);
          v13 = v12.f32[0];
          v14 = v12.f32[1];
          if (v5)
          {
            CGPathAddLineToPoint(Mutable, 0, v13, v14);
          }

          else
          {
            CGPathMoveToPoint(Mutable, 0, v13, v14);
          }

          ++v5;
        }

        while (v5 < *(a1 + 352));
      }

      CGPathCloseSubpath(Mutable);
      *bytes = 0.0;
      v33 = 1065353216;
      *v34 = 0;
      *&v34[8] = 2139095039;
      v35 = Mutable;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v15 = sub_1AF21DA64(bytes);
      *bytes = 0.0;
      v33 = 1065353216;
      *v34 = 0;
      *&v34[8] = 2139095039;
      v35 = Mutable;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v16 = sub_1AF22AD8C(v15, bytes);
      sub_1AF16CC34(v16, @"Area light - Polygon");
      CFRelease(v15);
      v17 = Mutable;
      goto LABEL_20;
  }

LABEL_24:
  v27 = *(a1 + 368);

  sub_1AF1B2C80(v27, 0);
}

void sub_1AF19D174(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = *(a1 + 368);
  if (v3)
  {
    sub_1AF19D69C(a1, a2, a3);
    *bytes = v5;
    v18 = v6;
    v7 = sub_1AF1B2030(v3, 0);
    sub_1AF1A11A4(v7, *(a1 + 304) & 1);
    v8 = *(a1 + 320);
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        sub_1AF1A11A4(v7, 1);
        v9 = @"area_shape_ellipsoid_frag";
        goto LABEL_9;
      }

      if (v8 != 4)
      {
        return;
      }
    }

    else if (v8 >= 2)
    {
      v9 = @"area_shape_ellipse_frag";
LABEL_9:
      v11 = sub_1AF1D534C(@"area_shape_vert", v9);
      sub_1AF1A1AB0(v7, v11);
      CFRelease(v11);
      v12 = *MEMORY[0x1E695E480];
      v13 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
      sub_1AF16E2D4(v7, @"color", v13);
      CFRelease(v13);
      v14 = *(a1 + 336);
      HIDWORD(v14) = 0;
      v16 = v14;
      v15 = CFDataCreate(v12, &v16, 16);
      sub_1AF16E2D4(v7, @"halfExtents", v15);
      CFRelease(v15);
      return;
    }

    v10 = sub_1AF1A1270(v7);
    sub_1AF166340(v10, 1, bytes);
  }
}

void sub_1AF19D2D4(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 5)
  {
    if (a2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 304) = *(a1 + 304) & 0xFD | v12;
    if ((a2 & 1) == 0)
    {
      v13 = *(a1 + 368);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 368) = 0;
      }
    }

    sub_1AF19D368(a1);
  }
}

void sub_1AF19D368(void *a1)
{
  sub_1AF19AE38(a1);
  v2 = sub_1AF1C3FAC(a1);

  sub_1AF1CF760(v2, 9, a1, 0);
}

uint64_t sub_1AF19D3B0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 5)
  {
    return (*(a1 + 304) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_1AF19D410(__n128 *a1, __n128 a2)
{
  if (a1[5].n128_u8[0] == 5)
  {
    a1[21] = a2;
    sub_1AF19CDD8(a1);

    sub_1AF19D368(a1);
  }
}

__n128 sub_1AF19D45C(__n128 *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result.n128_u64[0] = 0;
  if (a1[5].n128_u8[0] == 5)
  {
    return a1[21];
  }

  return result;
}

void sub_1AF19D4B4(uint64_t a1, char a2, float32x4_t a3, float32x4_t a4)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (*(a1 + 80) == 5)
  {
    *(a1 + 304) = *(a1 + 304) & 0xFE | a2;
    sub_1AF19D174(a1, a3, a4);
    v14 = sub_1AF1C3FAC(a1);
    if (v14)
    {
      v15 = sub_1AF1D0140(v14);
      if (v15)
      {
        sub_1AF1443AC(v15);
      }
    }
  }
}

uint64_t sub_1AF19D540(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 5)
  {
    v10 = *(a1 + 304);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

__n128 sub_1AF19D5A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 5)
  {
    v12 = (a1 + 320);
  }

  else
  {
    v12 = &xmmword_1AFE21B90;
  }

  v13 = v12[1];
  *a2 = *v12;
  *(a2 + 16) = v13;
  result = v12[2];
  *(a2 + 32) = result;
  return result;
}

BOOL sub_1AF19D63C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88) == 0.0 || sub_1AF163F54((a1 + 64));
}

double sub_1AF19D69C(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  a2.i32[0] = a1[5].i32[3];
  if (a2.f32[0] == 0.0)
  {
    v3 = xmmword_1AFE20150;
  }

  else
  {
    a3.i32[0] = 1170939904;
    v4 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(a3, a2)), 0);
    v5 = vaddq_f32(vbslq_s8(v4, xmmword_1AFE21A70, xmmword_1AFE21A60), vdivq_f32(vbslq_s8(v4, xmmword_1AFE21A90, xmmword_1AFE21A80), vaddq_f32(vdupq_lane_s32(*a2.f32, 0), vbslq_s8(v4, xmmword_1AFE21AB0, xmmword_1AFE21AA0))));
    v5.i32[3] = 0;
    v6 = vmaxnmq_f32(v5, 0);
    v6.i32[3] = 0;
    v3 = vminnmq_f32(v6, xmmword_1AFE208C0);
  }

  v7 = vmulq_f32(v3, a1[4]);
  v8 = v7;
  v9 = a1[5].u8[0];
  if (v9 == 6)
  {
    v10 = vmulq_n_f32(v7, a1[19].f32[2] * 0.0014641);
    v10.i32[3] = HIDWORD(*&a1[4]);
    v12 = v10;
  }

  else
  {
    v8.i32[3] = HIDWORD(*&a1[4]);
    v12 = v8;
  }

  *&result = vmulq_n_f32(v12, a1[5].f32[2] / sub_1AF19AF30(v9)).u64[0];
  return result;
}

void sub_1AF19D7B8(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 84);
  *(a1 + 84) = a2;
  if ((a2 == 0.0) != (v12 == 0.0))
  {
    sub_1AF19AE38(a1);
  }
}

void sub_1AF19D830(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[36];
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      a1[36] = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    a1[36] = v13;
    sub_1AF19AE38(a1);
  }
}

uint64_t sub_1AF19D8B8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 288);
}

void sub_1AF19D900(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 4)
  {
    *(a1 + 396) = a2;
    sub_1AF19AE38(a1);
  }
}

uint64_t sub_1AF19D968(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4)
  {
    return *(a1 + 396);
  }

  else
  {
    return 0;
  }
}

void sub_1AF19D9C4(_BYTE *a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[80] == 4 && a1[396] == 1 && a1[397] != a2)
  {
    a1[397] = a2;
    sub_1AF19DA44(a1);
  }
}

void sub_1AF19DA44(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4 && *(a1 + 396) == 1)
  {
    ++*(a1 + 392);
    v10 = sub_1AF1C3FAC(a1);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v10, 0, 1u);
  }
}

uint64_t sub_1AF19DAD4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4)
  {
    return *(a1 + 397);
  }

  else
  {
    return 0;
  }
}

void sub_1AF19DB30(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 4)
  {
    *(a1 + 398) = a2;
  }
}

uint64_t sub_1AF19DB90(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4)
  {
    v10 = *(a1 + 398);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1AF19DBF0(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      sub_1AFDDAC84(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  if (a1[5].n128_u8[0] == 4)
  {
    a1[23] = a2;
  }
}

__n128 sub_1AF19DC58(__n128 *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result.n128_u64[0] = 0;
  if (a1[5].n128_u8[0] == 4)
  {
    return a1[23];
  }

  return result;
}

void sub_1AF19DCB0(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      sub_1AFDDAC84(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  if (a1[5].n128_u8[0] == 4)
  {
    a1[22] = a2;
  }
}

__n128 sub_1AF19DD18(__n128 *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (a1[5].n128_u8[0] == 4)
  {
    return a1[22];
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  return result;
}

float32x4_t sub_1AF19DD74(float32x4_t *a1, float32x4_t result)
{
  if (!a1)
  {
    v12 = result;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    result = v12;
    if (v4)
    {
      sub_1AFDDAC84(v3, v5, v6, v7, v8, v9, v10, v11);
      result = v12;
    }
  }

  if (a1[5].i8[0] == 4)
  {
    result.i32[3] = 0;
    result = vminnmq_f32(result, xmmword_1AFE21AC0);
    a1[20] = result;
  }

  return result;
}

__n128 sub_1AF19DDEC(__n128 *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (a1[5].n128_u8[0] == 4)
  {
    return a1[20];
  }

  else
  {
    __asm { FMOV            V0.4S, #10.0 }
  }

  return result;
}

void sub_1AF19DE48(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      sub_1AFDDAC84(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  if (a1[5].n128_u8[0] == 4)
  {
    a1[21] = a2;
  }
}

__n128 sub_1AF19DEB0(__n128 *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result.n128_u64[0] = 0;
  if (a1[5].n128_u8[0] == 4)
  {
    return a1[21];
  }

  return result;
}

void sub_1AF19DF08(uint64_t a1, __int16 a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 80) == 4)
  {
    *(a1 + 384) = a2;
  }
}

uint64_t sub_1AF19DF68(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4)
  {
    return *(a1 + 384);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1AF19DFC4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80) == 4 && *(a1 + 396) == 1)
  {
    return *(a1 + 392);
  }

  else
  {
    return 1;
  }
}

float sub_1AF19E02C(unsigned int a1, float a2)
{
  if (a1 == 6)
  {
    v2 = a2 * 0.683;
  }

  else
  {
    v2 = a2;
  }

  return (v2 * sub_1AF19AF30(a1)) / 1000.0;
}

float sub_1AF19E070(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v4 = sub_1AF1B9B04(a2);
  v5 = *(a1 + 80);
  if ((v5 | 2) != 3)
  {
    return 1.0;
  }

  v6 = vsubq_f32(v4[3], a3);
  v7 = *(a1 + 84);
  v8 = 1.0;
  if (v7 > 0.0)
  {
    *&v9 = v7 * v7;
    v10 = vrecpe_f32(COERCE_UNSIGNED_INT(v7 * v7));
    v11 = vmul_f32(v10, vrecps_f32(v9, v10));
    v11.f32[0] = vmul_f32(v11, vrecps_f32(v9, v11)).f32[0];
    v12 = vmulq_f32(v6, v6);
    v12.f32[0] = v12.f32[2] + vaddv_f32(*v12.f32);
    v11.f32[0] = fminf(fmaxf(1.0 - (v11.f32[0] * v12.f32[0]), 0.0), 1.0);
    v8 = (1.0 / fmaxf(v12.f32[0], 0.0001)) * (v11.f32[0] * v11.f32[0]);
  }

  if (v5 == 3)
  {
    v20 = v6;
    v22 = vnegq_f32(v4[2]);
    sub_1AF19C0B8(a1);
    v13 = vmulq_f32(v20, v20);
    *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
    *v13.f32 = vrsqrte_f32(v14);
    *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
    v15 = vmulq_f32(vmulq_n_f32(v20, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]), v22);
    v18 = fminf(fmaxf(v17 + ((v15.f32[2] + vaddv_f32(*v15.f32)) * v16), 0.0), 1.0);
    return v8 * (v18 * v18);
  }

  return v8;
}

void sub_1AF19E1CC(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v98 = *MEMORY[0x1E69E9840];
  if (!a3 && (v11 = sub_1AF0D5194(), os_log_type_enabled(v11, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAC84(v11, v12, v13, v14, v15, v16, v17, v18);
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else if (a4)
  {
    goto LABEL_6;
  }

  v19 = sub_1AF0D5194();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAE00(v19, v20, v21, v22, v23, v24, v25, v26);
  }

LABEL_6:
  v27 = sub_1AF1B9B04(a4);
  v79 = *(v27 + 32);
  v80 = *(v27 + 48);
  v28 = sub_1AF1B9AB4(a2);
  v30.i32[0] = a3[5].i32[3];
  if (v30.f32[0] == 0.0)
  {
    v31 = xmmword_1AFE20150;
  }

  else
  {
    v29.i32[0] = 1170939904;
    v32 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v29, v30)), 0);
    v33 = vaddq_f32(vbslq_s8(v32, xmmword_1AFE21A70, xmmword_1AFE21A60), vdivq_f32(vbslq_s8(v32, xmmword_1AFE21A90, xmmword_1AFE21A80), vaddq_f32(vdupq_lane_s32(*v30.f32, 0), vbslq_s8(v32, xmmword_1AFE21AB0, xmmword_1AFE21AA0))));
    v33.i32[3] = 0;
    v34 = vmaxnmq_f32(v33, 0);
    v34.i32[3] = 0;
    v31 = vminnmq_f32(v34, xmmword_1AFE208C0);
  }

  v35 = vmulq_f32(v31, a3[4]);
  v36 = v35;
  v37 = a3[5].u8[0];
  v85 = v28;
  if (v37 == 6)
  {
    v38 = vmulq_n_f32(v35, a3[19].f32[2] * 0.0014641);
    v38.i32[3] = HIDWORD(*&a3[4]);
    v82 = v38;
  }

  else
  {
    v36.i32[3] = HIDWORD(*&a3[4]);
    v82 = v36;
  }

  v39 = vmulq_n_f32(v82, a3[5].f32[2] / sub_1AF19AF30(v37));
  v39.i32[3] = v82.i32[3];
  v41 = vmulq_n_f32(v39, sub_1AF19E070(a3, a4, v85));
  v42 = a3[5].u8[0];
  if (v42 == 1)
  {
    v47.i32[1] = v85.i32[1];
    v45 = vsubq_f32(v80, v85);
    v46 = vmulq_f32(v45, v45);
    *v47.i32 = sqrtf(v46.f32[2] + vaddv_f32(*v46.f32));
    v96 = xmmword_1AFE21AD0;
    v97 = 0x3F88CF6B3F973FD9;
    v83 = v41;
    if (*v47.i32 <= 0.1)
    {
      v48 = 1.5708;
    }

    else
    {
      v86 = v45;
      v81 = v47;
      v48 = asinf(0.1 / *v47.i32);
      v47 = v81;
      v45 = v86;
    }

    v87 = vdivq_f32(v45, vdupq_lane_s32(v47, 0));
    v49 = __sincosf_stret(v48);
    v88[0] = 1.7725 - (v49.__cosval * 1.7725);
    v88[1] = ((v49.__sinval * v49.__sinval) * 3.07) * 0.5;
    if (a5 < 3)
    {
      v54 = v83;
      if (a5 != 2)
      {
        return;
      }

      v89 = 1049652923;
      v55 = v87.f32[2] * 0.488602512;
      v90 = vmuls_lane_f32(-0.4886, *v87.f32, 1);
      v91 = v55;
      v92.f32[0] = -0.4886 * v87.f32[0];
    }

    else
    {
      v88[2] = ((v49.__cosval * -3.9633) * ((v49.__cosval * v49.__cosval) + -1.0)) * 0.5;
      if (a5 == 3)
      {
        v50 = *v87.f32;
        v89 = 1049652923;
        v51 = v87.f32[2] * 0.488602512;
        v52 = vmuls_lane_f32(v87.f32[2], v87, 2) * 0.946174696 + -0.315391565;
        v90 = vmuls_lane_f32(-0.4886, *v87.f32, 1);
        v91 = v51;
        v53 = v87.f32[2] * -1.09254843;
        v93 = vmuls_lane_f32(v53, *v87.f32, 1);
        v94 = v52;
        v92.f32[0] = -0.4886 * v87.f32[0];
        v92.f32[1] = (vmuls_lane_f32(v50.f32[0], v50, 1) + (v87.f32[0] * v87.f32[1])) * 0.54627;
        v95.f32[0] = v53 * v87.f32[0];
        v95.f32[1] = (vmuls_lane_f32(-v87.f32[1], *v87.f32, 1) + (v50.f32[0] * v50.f32[0])) * 0.54627;
      }

      else
      {
        v88[3] = (((v49.__cosval * v49.__cosval) * 3.5171) + (((v49.__cosval * v49.__cosval) * (v49.__cosval * v49.__cosval)) * -2.9309)) + -0.58618;
        if (a5 > 4)
        {
          return;
        }

        sub_1AF1A0314(&v89, v87, v87.f32[1], v87.f32[2]);
      }

      v54 = v83;
    }

    v56 = 0;
    v57 = 0;
    v59 = 1;
    do
    {
      v60 = (2 * (v57 & 0x7FFFFFFF)) | 1;
      v61 = vmulq_n_f32(v54, v88[v57] * *(&v96 + v57));
      v62 = v56;
      do
      {
        v63 = 4 * v62;
        v64 = *(&v89 + v63);
        *(a6 + v63) = *(a6 + v63) + (v64 * v61.f32[0]);
        *(a6 + 4 * a5 * a5 + v63) = *(a6 + 4 * a5 * a5 + v63) + (v64 * v61.f32[1]);
        v58 = a6 + 8 * a5 * a5;
        *(v58 + v63) = *(v58 + v63) + (v64 * v61.f32[2]);
        ++v62;
        --v60;
      }

      while (v60);
      ++v57;
      v56 += v59;
      v59 += 2;
    }

    while (v57 != a5);
  }

  else if (v42 == 2 && a5 - 7 >= 0xFFFFFFFB)
  {
    v43.i32[0] = v79;
    switch(a5)
    {
      case 4u:
        v40.i32[0] = v79;
        v84 = v41;
        sub_1AF1A0314(&v89, v40, *(&v79 + 1), *(&v79 + 2));
        v41 = v84;
        break;
      case 3u:
        v89 = 1049652923;
        v65 = *(&v79 + 2) * 0.488602512;
        v66 = (*(&v79 + 2) * *(&v79 + 2)) * 0.946174696 + -0.315391565;
        v90 = *(&v79 + 1) * -0.4886;
        v91 = v65;
        v67 = *(&v79 + 2) * -1.09254843;
        v93 = *(&v79 + 1) * v67;
        v94 = v66;
        v68.i32[0] = v79;
        v68.f32[1] = (*&v79 * *(&v79 + 1)) + (*&v79 * *(&v79 + 1));
        v92 = vmul_f32(v68, 0x3F0BD8A1BEFA2A1CLL);
        v43.f32[1] = (*&v79 * *&v79) - (*(&v79 + 1) * *(&v79 + 1));
        v69 = &dword_1AFE21AF4;
        v70 = vld1_dup_f32(v69);
        v70.f32[0] = v67;
        v95 = vmul_f32(v43, v70);
        break;
      case 2u:
        v89 = 1049652923;
        v44 = *(&v79 + 2) * 0.488602512;
        v90 = *(&v79 + 1) * -0.4886;
        v91 = v44;
        v92.f32[0] = *&v79 * -0.4886;
        break;
    }

    v71 = 0;
    v72 = 0.75;
    if (a5 > 2)
    {
      v72 = 1.0625;
    }

    if (a5 > 4)
    {
      v72 = v72 + -0.09375;
    }

    v73 = 3.1416 / v72;
    v75 = (3.1416 / v72) * v41.f32[0];
    v76 = vmuls_lane_f32(v73, *v41.f32, 1);
    v77 = vmuls_lane_f32(v73, v41, 2);
    do
    {
      v78 = *(&v89 + v71);
      *(a6 + v71) = *(a6 + v71) + (v78 * v75);
      *(a6 + 4 * a5 * a5 + v71) = *(a6 + 4 * a5 * a5 + v71) + (v78 * v76);
      v74 = a6 + 8 * a5 * a5;
      *(v74 + v71) = *(v74 + v71) + (v78 * v77);
      v71 += 4;
    }

    while (4 * a5 * a5 != v71);
  }
}

void sub_1AF19E858(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 249);
  if (((((v12 & 8) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 249) = v12 & 0xF7 | v13;
    if (sub_1AF19BAD0(a1) >= 2)
    {
      v14 = sub_1AF1C3FAC(a1);
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v14, 0, 1u);
    }
  }
}

uint64_t sub_1AF19E90C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 249) >> 3) & 1;
}

BOOL sub_1AF19E958(unsigned __int8 *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF19BA80(a1) && a1[133] > 1u;
  return ((a1[249] & 8) != 0 || v10) && a1[80] == 2;
}

void sub_1AF19E9DC(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a2;
  }

  if (v12 >= 4)
  {
    v12 = 4;
  }

  if (v12 != *(a1 + 133))
  {
    *(a1 + 133) = v12;
    sub_1AF19AE38(a1);
    v13 = sub_1AF1C3FAC(a1);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v13, 0, 1u);
  }
}

void sub_1AF19EA80(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 120) = a2;
}

void sub_1AF19EADC(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 124) = a2;
}

float sub_1AF19EB30(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 124);
}

void sub_1AF19EB78(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 128) != 0.0;
  *(a1 + 128) = a2;
  if ((a2 != 0.0) != v12)
  {
    sub_1AF19AE38(a1);
    v13 = sub_1AF1C3FAC(a1);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v13, 0, 1u);
  }
}

float sub_1AF19EC18(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 128);
}

void *sub_1AF19EC60(uint64_t a1, unsigned int a2, void *__src)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *(a1 + 136) = a2;
  return memcpy((a1 + 144), __src, 16 * a2);
}

uint64_t sub_1AF19ECC8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 144;
}

uint64_t sub_1AF19ED10(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 136);
}

void sub_1AF19ED58(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 249) = *(a1 + 249) & 0xEF | v12;
}

uint64_t sub_1AF19EDC4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 249) >> 4) & 1;
}

void sub_1AF19EE10(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 249) = *(a1 + 249) & 0xDF | v12;
}

id sub_1AF19EE8C(void *a1)
{
  sub_1AF19B5C4(a1);
  v2 = a1[34];
  if (v2)
  {
    CFRelease(v2);
    a1[34] = 0;
  }

  v3 = a1[35];
  if (v3)
  {
    CFRelease(v3);
    a1[35] = 0;
  }

  v4 = a1[36];
  if (v4)
  {
    CFRelease(v4);
    a1[36] = 0;
  }

  return sub_1AF16C9A4(a1);
}

CFStringRef sub_1AF19EEF8(unsigned __int8 *a1)
{
  v2 = a1[248];
  v3 = CFGetAllocator(a1);
  v4 = sub_1AF3753A8(a1);
  v5 = sub_1AF19EF8C(a1);
  if (v2 == 1)
  {
    return CFStringCreateWithFormat(v3, 0, @"<%s %p | Type:%@ CastsShadow(Samples:%d Cascade:%d)>", v4, a1, v5, a1[132], a1[133]);
  }

  else
  {
    return CFStringCreateWithFormat(v3, 0, @"<%s %p | Type:%@>", v4, a1, v5);
  }
}

__CFString *sub_1AF19EF8C(unsigned __int8 *a1)
{
  v1 = a1[80];
  if (v1 <= 2)
  {
    if (!a1[80])
    {
      return @"Ambient";
    }

    if (v1 == 1)
    {
      return @"Omni";
    }

    if (v1 == 2)
    {
      return @"Directional";
    }

    return @"Unknown";
  }

  if (a1[80] > 4u)
  {
    if (v1 == 5)
    {
      v4 = a1[320];
      if (v4 < 5)
      {
        return off_1E7A7B318[v4];
      }
    }

    else if (v1 == 6)
    {
      return @"IES";
    }

    return @"Unknown";
  }

  if (v1 == 3)
  {
    return @"Spot";
  }

  if (v1 != 4)
  {
    return @"Unknown";
  }

  v2 = @"IES";
  if (a1[396] == 1)
  {
    v2 = @"Radiance";
  }

  if (a1[396])
  {
    return v2;
  }

  else
  {
    return @"Irradiance";
  }
}

__CFArray *sub_1AF19F068(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 12;
  v89 = a1 + 64;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v7 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v4, @"name", @"Color");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 88;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v11 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v8, @"name", @"intensity");
  CFDictionarySetValue(v8, @"type", v9);
  CFDictionarySetValue(v8, @"address", v11);
  CFDictionarySetValue(v8, @"semantic", v10);
  CFArrayAppendValue(Mutable, v8);
  CFRelease(v10);
  CFRelease(v8);
  CFRelease(v11);
  CFRelease(v9);
  v12 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 2;
  v89 = a1 + 80;
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v15 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v12, @"name", @"type");
  CFDictionarySetValue(v12, @"type", v13);
  CFDictionarySetValue(v12, @"address", v15);
  CFDictionarySetValue(v12, @"semantic", v14);
  CFArrayAppendValue(Mutable, v12);
  CFRelease(v14);
  CFRelease(v12);
  CFRelease(v15);
  CFRelease(v13);
  v16 = MEMORY[0x1E695E9D8];
  v17 = MEMORY[0x1E695E9E8];
  v18 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 3;
  v89 = a1 + 248;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v21 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v18, @"name", @"castShadow");
  CFDictionarySetValue(v18, @"type", v19);
  CFDictionarySetValue(v18, @"address", v21);
  CFDictionarySetValue(v18, @"semantic", v20);
  CFArrayAppendValue(Mutable, v18);
  CFRelease(v20);
  CFRelease(v18);
  CFRelease(v21);
  CFRelease(v19);
  v22 = CFDictionaryCreateMutable(0, 4, v16, v17);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 96;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v22, @"name", @"shadowIntensity");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = v16;
  v27 = MEMORY[0x1E695E9E8];
  v28 = CFDictionaryCreateMutable(0, 4, v26, MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 252;
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v31 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v28, @"name", @"zNear");
  CFDictionarySetValue(v28, @"type", v29);
  CFDictionarySetValue(v28, @"address", v31);
  CFDictionarySetValue(v28, @"semantic", v30);
  CFArrayAppendValue(Mutable, v28);
  CFRelease(v30);
  CFRelease(v28);
  CFRelease(v31);
  CFRelease(v29);
  v32 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 256;
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v35 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v32, @"name", @"zFar");
  CFDictionarySetValue(v32, @"type", v33);
  CFDictionarySetValue(v32, @"address", v35);
  CFDictionarySetValue(v32, @"semantic", v34);
  CFArrayAppendValue(Mutable, v32);
  CFRelease(v34);
  CFRelease(v32);
  CFRelease(v35);
  CFRelease(v33);
  v36 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 116;
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v39 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v36, @"name", @"shadowSoftenFactor");
  CFDictionarySetValue(v36, @"type", v37);
  CFDictionarySetValue(v36, @"address", v39);
  CFDictionarySetValue(v36, @"semantic", v38);
  CFArrayAppendValue(Mutable, v36);
  CFRelease(v38);
  CFRelease(v36);
  CFRelease(v39);
  CFRelease(v37);
  v40 = MEMORY[0x1E695E9D8];
  v41 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 84;
  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v44 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v41, @"name", @"attenuationDistance");
  CFDictionarySetValue(v41, @"type", v42);
  CFDictionarySetValue(v41, @"address", v44);
  CFDictionarySetValue(v41, @"semantic", v43);
  CFArrayAppendValue(Mutable, v41);
  CFRelease(v43);
  CFRelease(v41);
  CFRelease(v44);
  CFRelease(v42);
  v45 = CFDictionaryCreateMutable(0, 4, v40, v27);
  v90 = 0;
  valuePtr = 1;
  v88 = a1;
  v89 = a1 + 308;
  v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v47 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v48 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v45, @"name", @"spotInnerAngle");
  CFDictionarySetValue(v45, @"type", v46);
  CFDictionarySetValue(v45, @"address", v48);
  CFDictionarySetValue(v45, @"semantic", v47);
  CFArrayAppendValue(Mutable, v45);
  CFRelease(v47);
  CFRelease(v45);
  CFRelease(v48);
  CFRelease(v46);
  v49 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 304;
  v50 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v51 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v52 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v49, @"name", @"spotOuterAngle");
  CFDictionarySetValue(v49, @"type", v50);
  CFDictionarySetValue(v49, @"address", v52);
  CFDictionarySetValue(v49, @"semantic", v51);
  v53 = Mutable;
  CFArrayAppendValue(Mutable, v49);
  CFRelease(v51);
  CFRelease(v49);
  CFRelease(v52);
  CFRelease(v50);
  v54 = MEMORY[0x1E695E9D8];
  v55 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = v88 + 312;
  v56 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v57 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v58 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v55, @"name", @"spotFalloffExponent");
  CFDictionarySetValue(v55, @"type", v56);
  CFDictionarySetValue(v55, @"address", v58);
  CFDictionarySetValue(v55, @"semantic", v57);
  CFArrayAppendValue(v53, v55);
  CFRelease(v57);
  CFRelease(v55);
  CFRelease(v58);
  CFRelease(v56);
  v59 = CFDictionaryCreateMutable(0, 4, v54, v27);
  v90 = 0;
  valuePtr = 6;
  v89 = v88 + 264;
  v60 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v61 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v62 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v59, @"name", @"shadowBias");
  CFDictionarySetValue(v59, @"type", v60);
  CFDictionarySetValue(v59, @"address", v62);
  CFDictionarySetValue(v59, @"semantic", v61);
  CFArrayAppendValue(v53, v59);
  CFRelease(v61);
  CFRelease(v59);
  CFRelease(v62);
  CFRelease(v60);
  v63 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 7;
  v89 = v88 + 104;
  v64 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v65 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v66 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v63, @"name", @"shadowMapSize");
  CFDictionarySetValue(v63, @"type", v64);
  CFDictionarySetValue(v63, @"address", v66);
  CFDictionarySetValue(v63, @"semantic", v65);
  CFArrayAppendValue(v53, v63);
  CFRelease(v65);
  CFRelease(v63);
  CFRelease(v66);
  CFRelease(v64);
  v67 = MEMORY[0x1E695E9D8];
  v68 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = v88 + 112;
  v69 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v70 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v71 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v68, @"name", @"directionalExtent");
  CFDictionarySetValue(v68, @"type", v69);
  CFDictionarySetValue(v68, @"address", v71);
  CFDictionarySetValue(v68, @"semantic", v70);
  CFArrayAppendValue(v53, v68);
  CFRelease(v70);
  CFRelease(v68);
  CFRelease(v71);
  CFRelease(v69);
  v72 = v67;
  v73 = MEMORY[0x1E695E9E8];
  v74 = CFDictionaryCreateMutable(0, 4, v72, MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 1;
  v89 = v88 + 132;
  v75 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v76 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v77 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v74, @"name", @"shadowMaxSampleCount");
  CFDictionarySetValue(v74, @"type", v75);
  CFDictionarySetValue(v74, @"address", v77);
  CFDictionarySetValue(v74, @"semantic", v76);
  CFArrayAppendValue(v53, v74);
  CFRelease(v76);
  CFRelease(v74);
  CFRelease(v77);
  CFRelease(v75);
  v78 = MEMORY[0x1E695E9D8];
  v79 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v73);
  v90 = 0;
  valuePtr = 45;
  v89 = v88 + 240;
  v80 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v81 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v82 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v79, @"name", @"categoryBitMask");
  CFDictionarySetValue(v79, @"type", v80);
  CFDictionarySetValue(v79, @"address", v82);
  CFDictionarySetValue(v79, @"semantic", v81);
  CFArrayAppendValue(v53, v79);
  CFRelease(v81);
  CFRelease(v79);
  CFRelease(v82);
  CFRelease(v80);
  v83 = CFDictionaryCreateMutable(0, 4, v78, v73);
  v90 = 2;
  valuePtr = 5;
  v89 = v88 + 272;
  v84 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v85 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v86 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v83, @"name", @"gobo");
  CFDictionarySetValue(v83, @"type", v84);
  CFDictionarySetValue(v83, @"address", v86);
  CFDictionarySetValue(v83, @"semantic", v85);
  CFArrayAppendValue(v53, v83);
  CFRelease(v85);
  CFRelease(v83);
  CFRelease(v86);
  CFRelease(v84);
  return v53;
}

void sub_1AF1A011C(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 248) == __dst)
  {
    v9 = *__src;

    sub_1AF19C32C(a1, v9);
  }

  else if ((a1 + 84) == __dst)
  {
    v10 = *__src;

    sub_1AF19D7B8(a1, v10);
  }

  else if (a1 + 64 > __dst || a1 + 76 < __dst)
  {
    if (a1 + 336 > __dst || a1 + 384 < __dst)
    {

      memcpy(__dst, __src, __n);
    }

    else
    {
      if (*(a1 + 80) != 5 && (byte_1EB6585F0 & 1) == 0)
      {
        byte_1EB6585F0 = 1;
        v11 = sub_1AF0D5194();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDAE78(v11);
        }
      }

      memcpy(__dst, __src, __n);
      sub_1AF19CDD8(a1);
      sub_1AF19D368(a1);
    }
  }

  else
  {
    v8 = sub_1AF163F54((a1 + 64));
    memcpy(__dst, __src, __n);
    if (v8 != sub_1AF163F54((a1 + 64)))
    {

      sub_1AF19AE38(a1);
    }
  }
}

uint64_t sub_1AF1A02DC(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

float32_t sub_1AF1A0314(uint64_t a1, float32x4_t a2, float a3, float a4)
{
  v4 = a4 * a4;
  *a1 = 1049652923;
  *&v5 = a4;
  v6 = a4 * 0.488602512;
  v7 = v4;
  v8 = v7 * 0.946174696 + -0.315391565;
  v9 = (v7 * 1.86588166 + -1.119529) * *&v5;
  *(a1 + 4) = a3 * -0.4886;
  *(a1 + 8) = v6;
  v10.f32[0] = *&v5 * -1.09254843;
  *(a1 + 20) = v10.f32[0] * a3;
  *(a1 + 24) = v8;
  v11.f64[0] = v7 * -2.285229 + 0.457045799;
  *&v12 = (a2.f32[0] * a3) + (a2.f32[0] * a3);
  v13.i32[0] = a2.i32[0];
  v13.f32[1] = *&v12;
  v14 = (a2.f32[0] * a2.f32[0]) - (a3 * a3);
  *(a1 + 12) = vmul_f32(v13, 0x3F0BD8A1BEFA2A1CLL);
  v11.f64[1] = *&v5 * 1.44530572;
  *&v11.f64[0] = vcvt_f32_f64(v11);
  *(a1 + 44) = a3 * *v11.f64;
  *(a1 + 48) = v9;
  v5.i32[0] = a2.i32[0];
  v5.f32[1] = v14;
  *(a1 + 52) = vmul_f32(v5, *&v11.f64[0]);
  v10.f32[1] = v14;
  v10.i64[1] = __PAIR64__(v12, (v14 * a3) + (a2.f32[0] * *&v12));
  a2.i32[1] = 1057740961;
  a2.i32[2] = -1089008359;
  a2.i32[3] = HIDWORD(v11.f64[0]);
  *(a1 + 28) = vmulq_f32(v10, a2);
  a2.f32[0] = ((a2.f32[0] * v14) - (*&v12 * a3)) * -0.59004;
  *(a1 + 60) = a2.f32[0];
  return a2.f32[0];
}

uint64_t sub_1AF1A044C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2);
  }

  return result;
}

__CFArray *sub_1AF1A046C(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 2;
  valuePtr = 5;
  v22 = a1 + 64;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v5, @"name", @"LOD");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v23 = 0;
  valuePtr = 1;
  v22 = a1 + 72;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v9, @"name", @"threshold");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 0;
  valuePtr = 2;
  v22 = a1 + 76;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v13, @"name", @"thresholdType");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 0;
  valuePtr = 5;
  v22 = a1 + 48;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v17, @"name", @"worldRef");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  return Mutable;
}

uint64_t sub_1AF1A0878()
{
  if (qword_1ED73AC58 != -1)
  {
    sub_1AFDDAEBC();
  }

  return qword_1ED73AC50;
}

double sub_1AF1A08B0()
{
  qword_1ED73AC50 = _CFRuntimeRegisterClass();
  result = *&xmmword_1F24E7D80;
  unk_1ED72EE98 = xmmword_1F24E7D80;
  unk_1ED72EEA8 = *algn_1F24E7D90;
  qword_1ED72EEB8 = qword_1F24E7DA0;
  qword_1ED72EE80 = sub_1AF1A046C;
  return result;
}

uint64_t sub_1AF1A0910(const void *a1, int a2, float a3)
{
  if (qword_1ED73AC58 != -1)
  {
    sub_1AFDDAEBC();
  }

  v6 = sub_1AF0D160C(qword_1ED73AC50, 0x40uLL);
  *(v6 + 76) = a2;
  *(v6 + 72) = a3;
  v7 = *(v6 + 64);
  if (v7 != a1)
  {
    if (v7)
    {
      CFRelease(v7);
      *(v6 + 64) = 0;
    }

    if (a1)
    {
      v8 = CFRetain(a1);
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 64) = v8;
  }

  return v6;
}

uint64_t sub_1AF1A09B0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAED0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

uint64_t sub_1AF1A09F8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAED0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 76);
}

float sub_1AF1A0A40(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAED0(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

id sub_1AF1A0A8C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }

  return sub_1AF16C9A4(a1);
}

uint64_t sub_1AF1A0AD8()
{
  if (qword_1ED73AC38 != -1)
  {
    sub_1AFDDAF48();
  }

  return qword_1ED73AC30;
}

double sub_1AF1A0B10()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AC30 = v0;
  v1 = sub_1AF16CB64();
  sub_1AF1DCFAC(v0, v1);
  sub_1AF1DD02C(@"doubleSided", 0x68u, 3, 0);
  sub_1AF1DD02C(@"cullMode", 0x5Eu, 4, 0);
  sub_1AF1DD02C(@"alphaCutoff", 0x58u, 1, 0);
  sub_1AF1DD018();
  qword_1ED72ECD0 = sub_1AF1A1CC4;
  xmmword_1ED72ECC0 = xmmword_1F24E7DC8;
  unk_1ED72ED28 = xmmword_1F24E7DD8;
  result = *&xmmword_1F24E7DE8;
  unk_1ED72ECE8 = xmmword_1F24E7DE8;
  unk_1ED72ECF8 = unk_1F24E7DF8;
  qword_1ED72ED08 = qword_1F24E7E08;
  unk_1ED72ED10 = sub_1AF1A255C;
  return result;
}

uint64_t sub_1AF1A0BFC()
{
  if (qword_1ED73AC38 != -1)
  {
    sub_1AFDDAF48();
  }

  v0 = sub_1AF0D160C(qword_1ED73AC30, 0x60uLL);
  *(v0 + 64) = sub_1AF165F90(v0);
  *(v0 + 104) = 0;
  *(v0 + 96) = 3840;
  *(v0 + 92) = 257;
  *(v0 + 88) = -1082130432;
  sub_1AF1A0C78(v0);
  return v0;
}

uint64_t sub_1AF1A0C78(uint64_t a1)
{
  sub_1AF1C4640(*(a1 + 80));
  memset(v5, 0, sizeof(v5));
  sub_1AF1C40BC(v5);
  if (*(a1 + 104))
  {
    v2 = 2;
  }

  else
  {
    v2 = *(a1 + 94);
  }

  v5[0] = v2;
  v5[1] = *(a1 + 95);
  v5[2] = *(a1 + 93) != 0;
  v5[3] = *(a1 + 92) != 0;
  *v4 = *v5;
  *&v4[13] = *&v5[13];
  result = sub_1AF1C4354(v4);
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1AF1A0D14(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAF5C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A0BFC();
  sub_1AF1A0D70(a1, v10);
  return v10;
}

uint64_t sub_1AF1A0D70(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAF5C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAFD4(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 92) = *(a1 + 92);
  *(a2 + 97) = *(a1 + 97);
  *(a2 + 88) = *(a1 + 88);
  v20 = *(a1 + 64);
  v21 = *(a2 + 64);
  if (v20)
  {
    sub_1AF165938(v20, v21);
  }

  else if (v21)
  {
    CFRelease(*(a2 + 64));
    *(a2 + 64) = 0;
  }

  sub_1AF16D160(a1, a2);
  v22 = sub_1AF1A0EB0(a1);
  sub_1AF1A0E54(a2, v22);
  return sub_1AF1A0C78(a2);
}

CFStringRef sub_1AF1A0E54(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return sub_1AF16CC34(a1, theString);
}

uint64_t sub_1AF1A0EB0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CBEC(a1);
}

uint64_t sub_1AF1A0EFC(uint64_t a1)
{
  v7 = xmmword_1AFE21160;
  v8 = xmmword_1AFE201A0;
  v2 = sub_1AF1A0BFC();
  sub_1AF165938(*(a1 + 64), *(v2 + 64));
  v3 = 0;
  v4 = *(v2 + 64);
  do
  {
    sub_1AF166480(v4, v3, 0);
    sub_1AF166340(*(v2 + 64), v3++, &v8);
    v4 = *(v2 + 64);
  }

  while (v3 != 18);
  sub_1AF165A7C(v4, 0);
  sub_1AF166480(*(v2 + 64), 1, 0);
  sub_1AF166340(*(v2 + 64), 1, &v7);
  sub_1AF166480(*(v2 + 64), 5, 0);
  sub_1AF166340(*(v2 + 64), 5, &v7);
  sub_1AF1A1014(v2, 1u);
  sub_1AF1A10A4(v2, 0);
  sub_1AF1A1124(v2, 15);
  v5 = sub_1AF1A1224(a1);
  sub_1AF1A11A4(v2, v5);
  return v2;
}

void sub_1AF1A1014(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 >= 2)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB0C4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (*(a1 + 95) != a2)
  {
    *(a1 + 95) = a2;
    sub_1AF1A0C78(a1);
  }
}

void sub_1AF1A10A4(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 96) != a2)
  {
    *(a1 + 96) = a2;
    v12 = sub_1AF1C3FAC(a1);
    sub_1AF1CF760(v12, 3, a1, 0);
    sub_1AF1A0C78(a1);
  }
}

void sub_1AF1A1124(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 97) != a2)
  {
    *(a1 + 97) = a2;
    v12 = sub_1AF1C3FAC(a1);
    sub_1AF1CF760(v12, 3, a1, 0);
    sub_1AF1A0C78(a1);
  }
}

void sub_1AF1A11A4(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 104) != a2)
  {
    *(a1 + 104) = a2;
    v12 = sub_1AF1C3FAC(a1);
    sub_1AF1CF760(v12, 3, a1, 0);
    sub_1AF1A0C78(a1);
  }
}

uint64_t sub_1AF1A1224(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 104);
}

uint64_t sub_1AF1A1270(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

uint64_t sub_1AF1A12B8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 64);
  }
}

void sub_1AF1A1310(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 94) != a2)
  {
    *(a1 + 94) = a2;
    sub_1AF1A0C78(a1);
  }
}

uint64_t sub_1AF1A1378(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 94);
}

uint64_t sub_1AF1A13C0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 95);
}

uint64_t sub_1AF1A1408(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

float sub_1AF1A1450(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

BOOL sub_1AF1A1498(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88) >= 0.0;
}

void sub_1AF1A14E8(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 88);
  if (v12 != a2)
  {
    v13 = v12 < 0.0;
    *(a1 + 88) = a2;
    sub_1AF1A1580(a1);
    if ((((a2 >= 0.0) ^ v13) & 1) == 0)
    {
      v14 = sub_1AF1C3FAC(a1);
      sub_1AF1CF760(v14, 3, a1, 0);
    }
  }
}

void sub_1AF1A1580(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 100);
}

void sub_1AF1A15D0(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 92) != a2)
  {
    *(a1 + 92) = a2;
    v12 = sub_1AF1C3FAC(a1);
    sub_1AF1CF760(v12, 3, a1, 0);
    sub_1AF1A0C78(a1);
  }
}

BOOL sub_1AF1A1650(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 92) != 0;
}

uint64_t sub_1AF1A16A0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 97);
}

void sub_1AF1A16E8(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 93) != a2)
  {
    *(a1 + 93) = a2;
    v12 = sub_1AF1C3FAC(a1);
    sub_1AF1CF760(v12, 3, a1, 0);
    sub_1AF1A0C78(a1);
  }
}

BOOL sub_1AF1A1768(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 93) != 0;
}

uint64_t sub_1AF1A17B8(uint64_t a1)
{
  v2 = sub_1AF1A1828(a1);
  if (v2)
  {

    return sub_1AF1D5EB4(v2);
  }

  else
  {
    v4 = sub_1AF1656E4(*(a1 + 64), 4, 0);
    v5 = sub_1AF166FE0(v4);
    result = 0;
    if (v5)
    {
      return *(a1 + 96) == 0;
    }
  }

  return result;
}

uint64_t sub_1AF1A1828(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

uint64_t sub_1AF1A1870(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a1 + 96);
  if (v5 <= 2)
  {
    if (!*(a1 + 96))
    {
      if (!a2 || (v7 = sub_1AF1656E4(*(a1 + 64), 4, 0), (sub_1AF166FE0(v7) & 1) == 0))
      {

        return sub_1AF15BBC4();
      }

      return sub_1AF15BC40();
    }

    if (v5 != 1)
    {
      if (v5 == 2)
      {

        return sub_1AF15BA5C();
      }

LABEL_25:
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDB22C(v8);
      }

      return sub_1AF15BBC4();
    }

    if (!*(a1 + 64) && (v10 = sub_1AF0D5194(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
    {
      sub_1AFDDB13C(v10, v11, v12, v13, v14, v15, v16, v17);
      if (!a5)
      {
LABEL_36:
        v18 = sub_1AF0D5194();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDDB1B4(v18, v19, v20, v21, v22, v23, v24, v25);
        }
      }
    }

    else if (!a5)
    {
      goto LABEL_36;
    }

    return sub_1AF15BBC4();
  }

  if (*(a1 + 96) > 4u)
  {
    if (v5 == 5)
    {

      return sub_1AF15BDA8();
    }

    if (v5 == 6)
    {

      return sub_1AF15BD2C();
    }

    goto LABEL_25;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      if (a4)
      {

        return sub_1AF15BB4C();
      }

      else
      {

        return sub_1AF15BAD4();
      }
    }

    goto LABEL_25;
  }

  return sub_1AF15BCB4();
}

void sub_1AF1A1A4C(void *a1)
{
  v2 = sub_1AF1C3FAC(a1);
  sub_1AF1CF760(v2, 3, a1, 0);
  sub_1AF1A1580(a1);
  v3 = a1[8];

  sub_1AF1BE334(@"kCFXShadableDidChange", v3, 0, 1u);
}

void sub_1AF1A1AB0(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[9];
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      a1[9] = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    a1[9] = v13;
  }

  sub_1AF1A1A4C(a1);
}

uint64_t sub_1AF1A1B38(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 100);
}

id sub_1AF1A1B84(uint64_t a1)
{
  sub_1AF1BE334(@"kCFXNotificationMaterialWillDie", a1, 0, 1u);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 72) = 0;
  }

  sub_1AF1C4640(*(a1 + 80));

  return sub_1AF16C9A4(a1);
}

__CFString *sub_1AF1A1C00(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v4 = sub_1AF16CBEC(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@, ", v3, a1, v4);
  v5 = sub_1AF1A12B8(a1);
  if (v5)
  {
    CFStringAppendFormat(Mutable, 0, @"common profile %@", v5);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"custom %@", a1[9]);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFArray *sub_1AF1A1CC4(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v45 = 1;
  valuePtr = 5;
  v44 = sub_1AF1A0EB0(a1);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v45);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v44);
  CFDictionarySetValue(v5, @"name", @"name");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v45 = 1;
  valuePtr = 5;
  v44 = sub_1AF1A1270(a1);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v45);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v44);
  CFDictionarySetValue(v9, @"name", @"commonProfile");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v45 = 0;
  valuePtr = 4;
  v44 = a1 + 94;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v45);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v44);
  CFDictionarySetValue(v13, @"name", @"cullMode");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v45 = 0;
  valuePtr = 4;
  v44 = a1 + 95;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v45);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v44);
  CFDictionarySetValue(v17, @"name", @"fillMode");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = MEMORY[0x1E695E9D8];
  v22 = MEMORY[0x1E695E9E8];
  v23 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v45 = 0;
  valuePtr = 1;
  v44 = a1 + 88;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v45);
  v26 = CFNumberCreate(0, kCFNumberLongType, &v44);
  CFDictionarySetValue(v23, @"name", @"alphaCutoff");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v27 = CFDictionaryCreateMutable(0, 4, v21, v22);
  v45 = 0;
  valuePtr = 3;
  v44 = a1 + 93;
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &v45);
  v30 = CFNumberCreate(0, kCFNumberLongType, &v44);
  CFDictionarySetValue(v27, @"name", @"enableReadsFromDepthBuffer");
  CFDictionarySetValue(v27, @"type", v28);
  CFDictionarySetValue(v27, @"address", v30);
  CFDictionarySetValue(v27, @"semantic", v29);
  CFArrayAppendValue(Mutable, v27);
  CFRelease(v29);
  CFRelease(v27);
  CFRelease(v30);
  CFRelease(v28);
  v31 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v22);
  v45 = 0;
  valuePtr = 3;
  v44 = a1 + 92;
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &v45);
  v34 = CFNumberCreate(0, kCFNumberLongType, &v44);
  CFDictionarySetValue(v31, @"name", @"enableWriteInDepthBuffer");
  CFDictionarySetValue(v31, @"type", v32);
  CFDictionarySetValue(v31, @"address", v34);
  CFDictionarySetValue(v31, @"semantic", v33);
  CFArrayAppendValue(Mutable, v31);
  CFRelease(v33);
  CFRelease(v31);
  CFRelease(v34);
  CFRelease(v32);
  v35 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v22);
  v45 = 0;
  valuePtr = 3;
  v44 = a1 + 104;
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &v45);
  v38 = CFNumberCreate(0, kCFNumberLongType, &v44);
  CFDictionarySetValue(v35, @"name", @"doubleSided");
  CFDictionarySetValue(v35, @"type", v36);
  CFDictionarySetValue(v35, @"address", v38);
  CFDictionarySetValue(v35, @"semantic", v37);
  CFArrayAppendValue(Mutable, v35);
  CFRelease(v37);
  CFRelease(v35);
  CFRelease(v38);
  CFRelease(v36);
  v39 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v45 = 0;
  valuePtr = 5;
  v44 = a1 + 48;
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v41 = CFNumberCreate(0, kCFNumberSInt32Type, &v45);
  v42 = CFNumberCreate(0, kCFNumberLongType, &v44);
  CFDictionarySetValue(v39, @"name", @"worldRef");
  CFDictionarySetValue(v39, @"type", v40);
  CFDictionarySetValue(v39, @"address", v42);
  CFDictionarySetValue(v39, @"semantic", v41);
  CFArrayAppendValue(Mutable, v39);
  CFRelease(v41);
  CFRelease(v39);
  CFRelease(v42);
  CFRelease(v40);
  return Mutable;
}

uint64_t sub_1AF1A255C(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1AF1A2594(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 88) == __dst)
  {
    sub_1AF1A14E8(a1, *__src);
  }

  else
  {
    memcpy(__dst, __src, __n);
  }
}

const __CFDictionary *sub_1AF1A25B8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CEA0(a1, @"kCoreEntityKey");
}

void sub_1AF1A2610(CFTypeRef *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1C3FAC(a1);
  v13 = sub_1AF1A25B8(a1);
  if (v12 && v13)
  {
    sub_1AF1C3A90(v13, v12);
  }

  sub_1AF16CF28(a1, @"kCoreEntityKey", a2, v12 != 0);
  if (a2)
  {
    if (v12)
    {
      sub_1AF1C3CB4(a2, v12);
    }
  }
}

uint64_t sub_1AF1A26B8(const void *a1, uint64_t a2)
{
  result = sub_1AF1C3858(a1);
  if (result)
  {
    v4 = *(a2 + 16);

    return v4(a2, result);
  }

  return result;
}

void sub_1AF1A270C(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 152) = 0;
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    v4 = a1 + 129;
    v5 = 9;
    do
    {
      *(v4 - 1) = 255;
      v4 += 2;
      --v5;
    }

    while (v5);
    CFRelease(v3);
    *(a1 + 120) = 0;
  }
}

void sub_1AF1A2768(uint64_t a1)
{
  v2 = a1 + 120;
  Count = CFArrayGetCount(*(a1 + 120));
  free(*(a1 + 160));
  *(a1 + 160) = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);

  sub_1AF1A27E0(a1, v2);
}

void sub_1AF1A27E0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *&v34[5] = *MEMORY[0x1E69E9840];
  v5 = a2 + 8;
  do
  {
    *(a2 + v4 + 8) = 255;
    v4 += 2;
  }

  while (v4 != 18);
  *(a1 + 208) &= ~0x80u;
  Count = CFArrayGetCount(*a2);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    v9 = -1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v8);
      v11 = sub_1AF1AE3D8(ValueAtIndex);
      v12 = v11;
      if (v11 == v9)
      {
        if (!v9)
        {
          if (*(a2 + 9))
          {
            v13 = sub_1AF0D5194();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDDB2F8(v33, v34, v13);
            }
          }
        }

        v14 = v5 + 2 * v9;
        v15 = *(v14 + 1) + 1;
        *(v14 + 1) = v15;
        if (v9 != 3 && v15 >= 2u)
        {
          v16 = sub_1AF0D5194();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = sub_1AF16CBEC(a1);
            v18 = sub_1AF1ADAF8(v9);
            *buf = 138412546;
            v30 = v17;
            v31 = 2112;
            v32 = v18;
            _os_log_impl(&dword_1AF0CE000, v16, OS_LOG_TYPE_DEFAULT, "Warning: Mesh '%@' : sources of redundant semantic '%@' will be ignored in rendering", buf, 0x16u);
          }
        }
      }

      else
      {
        if (v11 <= v9)
        {
          v19 = sub_1AF0D5194();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDB270(v27, &v28, v19);
          }
        }

        v20 = (v5 + 2 * v12);
        if (*v20 != 255)
        {
          v21 = sub_1AF0D5194();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDB2B4(v25, &v26, v21);
          }
        }

        *v20 = v8;
        v20[1] = 1;
        v9 = v12;
      }

      if (v12 == 2)
      {
        v22 = sub_1AF1AEBF4(ValueAtIndex);
        v23 = *(a1 + 208);
        v24 = v23 & 0x80;
        if (v22)
        {
          v24 = 0x80;
        }

        *(a1 + 208) = v24 & 0x80 | v23 & 0x7F;
      }

      ++v8;
    }

    while (v7 != v8);
  }
}

void *sub_1AF1A2A5C(uint64_t a1)
{
  if (!*(a1 + 120))
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB33C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (!*(a1 + 152))
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB3B4(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(a1 + 72);
  v19 = *(a1 + 120);
  if (v18 != v19)
  {
    if (v18)
    {
      CFRelease(*(a1 + 72));
      *(a1 + 72) = 0;
      v19 = *(a1 + 120);
    }

    if (v19)
    {
      v19 = CFRetain(v19);
    }

    *(a1 + 72) = v19;
  }

  v20 = *(a1 + 104);
  v21 = *(a1 + 152);
  if (v20 != v21)
  {
    if (v20)
    {
      CFRelease(*(a1 + 104));
      *(a1 + 104) = 0;
      v21 = *(a1 + 152);
    }

    if (v21)
    {
      v21 = CFRetain(v21);
    }

    *(a1 + 104) = v21;
  }

  *(a1 + 80) = *(a1 + 128);
  *(a1 + 96) = *(a1 + 144);
  Count = CFArrayGetCount(*(a1 + 120));
  free(*(a1 + 112));
  v23 = malloc_type_malloc(Count, 0x4F82645FuLL);
  *(a1 + 112) = v23;
  return memcpy(v23, *(a1 + 160), Count);
}

void sub_1AF1A2B70(uint64_t a1)
{
  *(a1 + 208) &= ~4u;
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = sub_1AF1A2CEC;
  v1[3] = &unk_1E7A7B380;
  v1[4] = a1;
  sub_1AF1A2BEC(a1, 0, v1);
}

void sub_1AF1A2BEC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    sub_1AF1AFDA8(a1, 1);
    v5 = a1 + 120;
  }

  else if (a2)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v5 = 0;
  }

  else
  {
    v5 = a1 + 72;
  }

  for (i = 0; i != 9; ++i)
  {
    v15 = (v5 + 8 + 2 * i);
    v16 = *v15;
    if (v16 != -1)
    {
      v17 = v15[1];
      if (v15[1])
      {
        v18 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*v5, v16 + v18);
          (*(a3 + 16))(a3, ValueAtIndex, i, v18, *(v16 + v18 + *(v5 + 40)));
          ++v18;
        }

        while (v17 != v18);
      }
    }
  }
}

uint64_t sub_1AF1A2CEC(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1ADBDC(a2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 208);
  if (result | ((v5 & 4) >> 2))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 208) = v6 | v5 & 0xFB;
  return result;
}

uint64_t sub_1AF1A2D3C()
{
  if (qword_1ED73AC18 != -1)
  {
    sub_1AFDDB4A4();
  }

  return qword_1ED73AC10;
}

double sub_1AF1A2D74()
{
  qword_1ED73AC10 = _CFRuntimeRegisterClass();
  qword_1ED72EBF8 = sub_1AF1A61C0;
  unk_1ED72EC10 = xmmword_1F24E7E30;
  unk_1ED72EC20 = unk_1F24E7E40;
  qword_1ED72EC30 = qword_1F24E7E50;
  unk_1ED72EC38 = sub_1AF1A65CC;
  qword_1ED72EC40 = sub_1AF1A6608;
  result = *&xmmword_1F24E7E58;
  unk_1ED72EC00 = xmmword_1F24E7E58;
  return result;
}

uint64_t sub_1AF1A2E00()
{
  if (qword_1ED73AC18 != -1)
  {
    sub_1AFDDB4A4();
  }

  v0 = sub_1AF0D160C(qword_1ED73AC10, 0xD0uLL);
  v1 = *MEMORY[0x1E695E480];
  v2 = MEMORY[0x1E695E9C0];
  *(v0 + 72) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(v0 + 104) = CFArrayCreateMutable(v1, 0, v2);
  *(v0 + 120) = 0;
  *(v0 + 152) = 0;
  *(v0 + 208) = *(v0 + 208) & 0x87 | 0x18;
  sub_1AF1A27E0(v0, v0 + 72);
  return v0;
}

uint64_t sub_1AF1A2EB8()
{
  result = sub_1AF1A2E00();
  *(result + 208) |= 1u;
  return result;
}

uint64_t sub_1AF1A2EDC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB4B8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A2E00();
  sub_1AF1A2F3C(a1, v10, 0);
  return v10;
}

void sub_1AF1A2F3C(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAF5C(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAFD4(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  sub_1AF1A4A54(a1, a2, a3);
  if (a3)
  {
    v22 = sub_1AF1A3CCC(a1);
    Mutable = CFArrayCreateMutable(0, v22, MEMORY[0x1E695E9C0]);
    if (v22 >= 1)
    {
      for (i = 0; i != v22; ++i)
      {
        v25 = sub_1AF1A3D1C(a1, i, 0);
        v26 = sub_1AF1A6C8C(v25);
        CFArrayAppendValue(Mutable, v26);
        CFRelease(v26);
      }
    }

    sub_1AF1A5208(a2, Mutable);
    CFRelease(Mutable);
  }

  else
  {
    v27 = *(a2 + 104);
    if (v27)
    {
      CFRelease(v27);
      *(a2 + 104) = 0;
    }

    v28 = *(a2 + 152);
    if (v28)
    {
      CFRelease(v28);
      *(a2 + 152) = 0;
    }

    v29 = *MEMORY[0x1E695E480];
    *(a2 + 104) = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 104));
    v30 = *(a1 + 152);
    if (v30)
    {
      MutableCopy = CFArrayCreateMutableCopy(v29, 0, v30);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(*MEMORY[0x1E695E498], 0, MEMORY[0x1E695E9C0]);
    }

    *(a2 + 152) = MutableCopy;
  }

  *(a2 + 208) = *(a2 + 208) & 0x87 | *(a1 + 208) & 0x78;
  sub_1AF16D160(a1, a2);
}

uint64_t sub_1AF1A30F0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB4B8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A2E00();
  sub_1AF1A2F3C(a1, v10, 1);
  return v10;
}

uint64_t sub_1AF1A3150(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB4B8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A2E00();
  sub_1AF1A2F3C(a1, v10, 1);
  sub_1AF1AFDA8(v10, 1);
  sub_1AF1A2A5C(v10);
  return v10;
}

void sub_1AF1A31C4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 192);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 200);
  if (v11)
  {
    free(v11);
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) &= ~2u;
}

uint64_t sub_1AF1A3234(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 200);
  if (!v14)
  {
    v15 = sub_1AF1A4604(a1, 0, 0, 0);
    if (v15)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      sub_1AF1AE1A8(v15, &v30);
      v17 = v31;
      if (v31)
      {
        v18 = 0uLL;
        if (v30)
        {
          if (BYTE7(v31) == 1)
          {
            v19 = 0;
            v18.i64[0] = 0x80000000800000;
            v18.i64[1] = 0x80000000800000;
            v20 = vnegq_f32(v18);
            do
            {
              v21 = v30 + v19;
              v22.i64[0] = *v21;
              v22.i64[1] = *(v21 + 8);
              v20 = vminnmq_f32(v20, v22);
              v18 = vmaxnmq_f32(v18, v22);
              v19 += BYTE6(v31);
              --v17;
            }

            while (v17);
          }

          else
          {
            v23 = 0;
            v18.i64[0] = 0x80000000800000;
            v18.i64[1] = 0x80000000800000;
            v20 = vnegq_f32(v18);
            do
            {
              v27 = v18;
              v29 = v20;
              *v16.i64 = sub_1AF279750(BYTE4(v31), (v30 + v23 * BYTE6(v31)), v16, v20.f32[0], v18.f32[0]);
              v20 = vminnmq_f32(v29, v16);
              v18 = vmaxnmq_f32(v27, v16);
              ++v23;
            }

            while (v23 < v31);
          }

          v28 = v20;
        }
      }

      else
      {
        v18 = 0uLL;
      }

      v26 = v18;
    }

    else
    {
      v26 = 0u;
      v28 = 0u;
    }

    v24 = sub_1AF288058(0x20uLL);
    *(a1 + 200) = v24;
    *v24 = v28;
    *(*(a1 + 200) + 16) = v26;
    v14 = *(a1 + 200);
  }

  *a2 = *v14;
  *a3 = *(*(a1 + 200) + 16);
  return 1;
}

uint64_t sub_1AF1A33B8(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 192);
  if (!v12)
  {
    v32 = 0uLL;
    v37.i32[2] = 0;
    v37.i64[0] = 0;
    v36.i32[2] = 0;
    v36.i64[0] = 0;
    sub_1AF1A3234(a1, &v37, &v36);
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v31 = vmulq_f32(vaddq_f32(v36, v37), v13);
    v35 = v31;
    v14 = sub_1AF1A4604(a1, 0, 0, 0);
    if (v14)
    {
      v33 = 0u;
      v34 = 0u;
      sub_1AF1AE1A8(v14, &v33);
      if (!v33)
      {
        return 0;
      }

      v18 = v34;
      if (BYTE7(v34) == 1)
      {
        if (v34)
        {
          v19 = 0;
          v20 = 0.0;
          do
          {
            v21 = v33 + v19;
            v16.i64[0] = *v21;
            v16.i32[2] = *(v21 + 8);
            v22 = vsubq_f32(v16, v31);
            v16 = vmulq_f32(v22, v22);
            v23 = vaddv_f32(*v16.f32);
            if ((v16.f32[2] + v23) > v20)
            {
              v20 = v16.f32[2] + v23;
            }

            v19 += BYTE6(v34);
            --v18;
          }

          while (v18);
        }

        else
        {
          v20 = 0.0;
        }

        v24 = sqrtf(v20);
      }

      else
      {
        if (v34)
        {
          v26 = 0;
          v27 = 0.0;
          do
          {
            *v28.i64 = sub_1AF279750(BYTE4(v34), (v33 + v26 * BYTE6(v34)), v15, v16.f32[0], v17);
            v29 = vsubq_f32(v28, v31);
            v15 = vmulq_f32(v29, v29);
            v16.f32[0] = vaddv_f32(*v15.f32);
            v15.f32[0] = v15.f32[2] + v16.f32[0];
            if ((v15.f32[2] + v16.f32[0]) > v27)
            {
              v27 = v15.f32[2] + v16.f32[0];
            }

            ++v26;
          }

          while (v26 < v34);
        }

        else
        {
          v27 = 0.0;
        }

        v24 = sqrtf(v27);
      }
    }

    else
    {
      v24 = 0.0;
    }

    sub_1AF1DA1D0(&v32, &v35, v24);
    v30 = sub_1AF288058(0x10uLL);
    *(a1 + 192) = v30;
    *v30 = v32;
    v12 = *(a1 + 192);
  }

  *a2 = *v12;
  return 1;
}

uint64_t sub_1AF1A359C(uint64_t result)
{
  v68 = *MEMORY[0x1E69E9840];
  if ((*(result + 208) & 2) == 0)
  {
    v1 = result;
    result = sub_1AF1A3CCC(result);
    if (result >= 1)
    {
      v2 = result;
      v3 = 0;
      while (1)
      {
        v4 = sub_1AF1A3D1C(v1, v3, 0);
        v59 = 0u;
        v60 = 0u;
        memset(v58, 0, sizeof(v58));
        sub_1AF1A767C(v4, 0, v58);
        if (*&v58[0])
        {
          if (sub_1AF1A7EF0(v4) == v4)
          {
            break;
          }
        }

        v4[11] = 0u;
        v4[12] = 0u;
        result = sub_1AF1A510C(v1, v3);
        if (result)
        {
          *(result + 176) = 0u;
          *(result + 192) = 0u;
        }

LABEL_8:
        if (++v3 == v2)
        {
          goto LABEL_88;
        }
      }

      v5 = sub_1AF1A70CC(v4);
      v6 = v5;
      if (*(&v58[0] + 1) % DWORD2(v60) < BYTE3(v59))
      {
        v7 = *(&v58[0] + 1) / BYTE3(v59);
      }

      else
      {
        v7 = *(&v58[0] + 1) / BYTE3(v59) + 1;
      }

      if (v7 >= v5)
      {
        v7 = v5;
      }

      else
      {
        v8 = sub_1AF0D5194();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219008;
          *&buf[4] = *(&v58[0] + 1);
          *&buf[12] = 1024;
          *&buf[14] = v6;
          *&buf[18] = 2048;
          *&buf[20] = *(&v60 + 1);
          *&buf[28] = 1024;
          *&buf[30] = v7;
          v66 = 1024;
          v67 = v6;
          _os_log_error_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - element has insufficient data (length %zu for count %d and stride %zu) ; count capped to %d (was %d)", buf, 0x28u);
        }
      }

      result = sub_1AF1A4604(v1, 0, 0, 0);
      if (!result)
      {
        goto LABEL_8;
      }

      memset(buf, 0, 32);
      result = sub_1AF1AE1A8(result, buf);
      if (!*buf)
      {
        goto LABEL_8;
      }

      v10 = *&buf[8] / buf[21];
      if (*&buf[8] % buf[22] >= buf[21])
      {
        LODWORD(v10) = v10 + 1;
      }

      if (*&buf[16] >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = *&buf[16];
      }

      if (buf[23] == 1)
      {
        if (BYTE3(v59) == 4)
        {
          if (v7)
          {
            v34 = 0;
            v35 = *&v58[0];
            v14.i64[0] = 0x80000000800000;
            v14.i64[1] = 0x80000000800000;
            v15 = vnegq_f32(v14);
            do
            {
              v36 = *(v35 + 4 * v60 + 4 * *(&v60 + 1) * v34);
              if (v36 >= v11)
              {
                v48 = v15;
                v55 = v14;
                v39 = sub_1AF0D5194();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  *v61 = 67109376;
                  v62 = v36;
                  v63 = 1024;
                  v64 = v11;
                  _os_log_error_impl(&dword_1AF0CE000, v39, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v61, 0xEu);
                }

                v15 = v48;
                v14 = v55;
              }

              else
              {
                v37 = v36 * buf[22];
                v38.i64[0] = *(*buf + v37);
                v38.i64[1] = *(*buf + v37 + 8);
                v15 = vminnmq_f32(v15, v38);
                v14 = vmaxnmq_f32(v14, v38);
              }

              ++v34;
            }

            while (v7 != v34);
            goto LABEL_86;
          }
        }

        else if (BYTE3(v59) == 2)
        {
          if (v7)
          {
            v24 = 0;
            v25 = *&v58[0];
            v14.i64[0] = 0x80000000800000;
            v14.i64[1] = 0x80000000800000;
            v15 = vnegq_f32(v14);
            do
            {
              v26 = *(v25 + 2 * v60 + 2 * *(&v60 + 1) * v24);
              if (v11 <= v26)
              {
                v46 = v15;
                v53 = v14;
                v29 = sub_1AF0D5194();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *v61 = 67109376;
                  v62 = v26;
                  v63 = 1024;
                  v64 = v11;
                  _os_log_error_impl(&dword_1AF0CE000, v29, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v61, 0xEu);
                }

                v15 = v46;
                v14 = v53;
              }

              else
              {
                v27 = *buf + buf[22] * *(v25 + 2 * v60 + 2 * *(&v60 + 1) * v24);
                v28.i64[0] = *v27;
                v28.i64[1] = *(v27 + 8);
                v15 = vminnmq_f32(v15, v28);
                v14 = vmaxnmq_f32(v14, v28);
              }

              ++v24;
            }

            while (v7 != v24);
            goto LABEL_86;
          }
        }

        else if (BYTE3(v59) == 1 && v7)
        {
          v12 = 0;
          v13 = *&v58[0];
          v14.i64[0] = 0x80000000800000;
          v14.i64[1] = 0x80000000800000;
          v15 = vnegq_f32(v14);
          do
          {
            v16 = *(v13 + v60 + *(&v60 + 1) * v12);
            if (v11 <= v16)
            {
              v44 = v15;
              v51 = v14;
              v19 = sub_1AF0D5194();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *v61 = 67109376;
                v62 = v16;
                v63 = 1024;
                v64 = v11;
                _os_log_error_impl(&dword_1AF0CE000, v19, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v61, 0xEu);
              }

              v15 = v44;
              v14 = v51;
            }

            else
            {
              v17 = *buf + buf[22] * *(v13 + v60 + *(&v60 + 1) * v12);
              v18.i64[0] = *v17;
              v18.i64[1] = *(v17 + 8);
              v15 = vminnmq_f32(v15, v18);
              v14 = vmaxnmq_f32(v14, v18);
            }

            ++v12;
          }

          while (v7 != v12);
          goto LABEL_86;
        }
      }

      else if (BYTE3(v59) == 4)
      {
        if (v7)
        {
          v40 = 0;
          v41 = *&v58[0];
          v14.i64[0] = 0x80000000800000;
          v14.i64[1] = 0x80000000800000;
          v15 = vnegq_f32(v14);
          do
          {
            v49 = v15;
            v56 = v14;
            v42 = *(v41 + 4 * v60 + 4 * *(&v60 + 1) * v40);
            if (v42 >= v11)
            {
              v43 = sub_1AF0D5194();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                *v61 = 67109376;
                v62 = v42;
                v63 = 1024;
                v64 = v11;
                _os_log_error_impl(&dword_1AF0CE000, v43, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v61, 0xEu);
              }

              v15 = v49;
              v14 = v56;
            }

            else
            {
              *v9.i64 = sub_1AF279750(buf[20], (*buf + v42 * buf[22]), v9, v14.f32[0], v15.f32[0]);
              v15 = vminnmq_f32(v49, v9);
              v14 = vmaxnmq_f32(v56, v9);
            }

            ++v40;
          }

          while (v7 != v40);
          goto LABEL_86;
        }
      }

      else if (BYTE3(v59) == 2)
      {
        if (v7)
        {
          v30 = 0;
          v31 = *&v58[0];
          v14.i64[0] = 0x80000000800000;
          v14.i64[1] = 0x80000000800000;
          v15 = vnegq_f32(v14);
          do
          {
            v47 = v15;
            v54 = v14;
            v32 = *(v31 + 2 * v60 + 2 * *(&v60 + 1) * v30);
            if (v11 <= v32)
            {
              v33 = sub_1AF0D5194();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *v61 = 67109376;
                v62 = v32;
                v63 = 1024;
                v64 = v11;
                _os_log_error_impl(&dword_1AF0CE000, v33, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v61, 0xEu);
              }

              v15 = v47;
              v14 = v54;
            }

            else
            {
              *v9.i64 = sub_1AF279750(buf[20], (*buf + buf[22] * v32), v9, v14.f32[0], v15.f32[0]);
              v15 = vminnmq_f32(v47, v9);
              v14 = vmaxnmq_f32(v54, v9);
            }

            ++v30;
          }

          while (v7 != v30);
          goto LABEL_86;
        }
      }

      else if (BYTE3(v59) == 1 && v7)
      {
        v20 = 0;
        v21 = *&v58[0];
        v14.i64[0] = 0x80000000800000;
        v14.i64[1] = 0x80000000800000;
        v15 = vnegq_f32(v14);
        do
        {
          v45 = v15;
          v52 = v14;
          v22 = *(v21 + v60 + *(&v60 + 1) * v20);
          if (v11 <= v22)
          {
            v23 = sub_1AF0D5194();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *v61 = 67109376;
              v62 = v22;
              v63 = 1024;
              v64 = v11;
              _os_log_error_impl(&dword_1AF0CE000, v23, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v61, 0xEu);
            }

            v15 = v45;
            v14 = v52;
          }

          else
          {
            *v9.i64 = sub_1AF279750(buf[20], (*buf + buf[22] * v22), v9, v14.f32[0], v15.f32[0]);
            v15 = vminnmq_f32(v45, v9);
            v14 = vmaxnmq_f32(v52, v9);
          }

          ++v20;
        }

        while (v7 != v20);
        goto LABEL_86;
      }

      v14.i64[0] = 0x80000000800000;
      v14.i64[1] = 0x80000000800000;
      v15 = vnegq_f32(v14);
LABEL_86:
      v50 = v15;
      v57 = v14;
      v4[11] = v15;
      v4[12] = v14;
      result = sub_1AF1A510C(v1, v3);
      if (result)
      {
        *(result + 176) = v50;
        *(result + 192) = v57;
      }

      goto LABEL_8;
    }

LABEL_88:
    *(v1 + 208) |= 2u;
  }

  return result;
}

const __CFArray *sub_1AF1A3CCC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 104);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const void *sub_1AF1A3D1C(uint64_t a1, CFIndex idx, int a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!*(a1 + 104))
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB5A8(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a3 == 1)
  {
    sub_1AF1AFDA8(a1, 1);
    v22 = *(a1 + 152);
    return CFArrayGetValueAtIndex(v22, idx);
  }

  if (!a3)
  {
    v22 = *(a1 + 104);
    return CFArrayGetValueAtIndex(v22, idx);
  }

  v24 = sub_1AF0D5194();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDB620(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  return 0;
}

void sub_1AF1A3DEC(CFArrayRef *a1, int a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a4 == 1)
  {
    sub_1AF1AFDA8(a1, 1);
    v16 = a1 + 15;
  }

  else if (a4)
  {
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v16 = 0;
  }

  else
  {
    v16 = a1 + 9;
  }

  v25 = v16 + 2 * a2;
  v28 = v25[8];
  v27 = v25 + 8;
  v26 = v28;
  if (v28 != -1 && v27[1] > a3)
  {
    v29 = v26 + a3;
    Count = CFArrayGetCount(*v16);
    if (v29 >= Count)
    {
      v31 = sub_1AF0D5194();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDB698(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    CFArrayRemoveValueAtIndex(*v16, v29);
    v39 = a1[20];
    if (v39)
    {
      free(v39);
      a1[20] = 0;
    }

    if (a4)
    {
      sub_1AF1A27E0(a1, v16);
    }

    else
    {
      if (Count - 1 > v29)
      {
        do
        {
          *(a1[14] + v29) = *(a1[14] + v29 + 1);
          ++v29;
        }

        while (Count - 1 != v29);
      }

      sub_1AF1A27E0(a1, v16);
      sub_1AF1A2B70(a1);
      sub_1AF1A270C(a1);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshWillDie", a1, 0, 1u);
  }
}

uint64_t sub_1AF1A3F8C(uint64_t a1, const void *a2, char a3, int a4, int a5)
{
  if (!a1 && (v10 = sub_1AF0D5194(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDB530(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v18 = sub_1AF0D5194();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0208(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (a5 == 1)
  {
    sub_1AF1AFDA8(a1, 1);
    v26 = (a1 + 120);
  }

  else if (a5)
  {
    v27 = sub_1AF0D5194();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v27, v28, v29, v30, v31, v32, v33, v34);
    }

    v26 = 0;
  }

  else
  {
    v26 = (a1 + 72);
  }

  v35 = sub_1AF1AE3D8(a2);
  v36 = v35;
  if (v35)
  {
    if (v35 < 0)
    {
LABEL_24:
      v43 = 0;
      goto LABEL_26;
    }

LABEL_21:
    v39 = v26 + 1;
    v40 = v36;
    while (1)
    {
      v41 = *(v39 + 2 * v40);
      if (v41 != -1)
      {
        break;
      }

      v42 = v40--;
      if (v42 < 1)
      {
        goto LABEL_24;
      }
    }

    v43 = *(v39 + 2 * v40 + 1) + v41;
LABEL_26:
    Count = CFArrayGetCount(*v26);
    CFArrayInsertValueAtIndex(*v26, v43, a2);
    if (a5)
    {
      sub_1AF1A2768(a1);
      if (!a4)
      {
        return *(v26 + 2 * v36 + 9) - 1;
      }
    }

    else
    {
      v46 = *(a1 + 160);
      if (v46)
      {
        free(v46);
        *(a1 + 160) = 0;
      }

      v47 = malloc_type_realloc(*(a1 + 112), Count + 1, 0x100004077774924uLL);
      *(a1 + 112) = v47;
      if (Count > v43)
      {
        do
        {
          *(*(a1 + 112) + Count) = *(*(a1 + 112) + Count - 1);
          --Count;
        }

        while (Count > v43);
        v47 = *(a1 + 112);
      }

      v47[v43] = a3;
      sub_1AF1A27E0(a1, v26);
      sub_1AF1A2B70(a1);
      sub_1AF1A270C(a1);
      if (!a4)
      {
        return *(v26 + 2 * v36 + 9) - 1;
      }
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshWillDie", a1, 0, 1u);
    return *(v26 + 2 * v36 + 9) - 1;
  }

  if (!sub_1AF1A4604(a1, 0, 0, a5))
  {
    sub_1AF1A31C4(a1);
    goto LABEL_21;
  }

  v37 = sub_1AF0D5194();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *v48 = 0;
    _os_log_impl(&dword_1AF0CE000, v37, OS_LOG_TYPE_DEFAULT, "Warning: Can't add two position sources", v48, 2u);
  }

  return -1;
}

uint64_t sub_1AF1A4210(uint64_t a1, const void *a2, uint64_t a3, int a4, int a5)
{
  if (!a1 && (v10 = sub_1AF0D5194(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDB530(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v18 = sub_1AF0D5194();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDB710(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (a4 && a5 == 1)
  {
    v26 = sub_1AF0D5194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB788(v26, v27, v28, v29, v30, v31, v32, v33);
    }

    goto LABEL_13;
  }

  if (a5 == 1)
  {
LABEL_13:
    sub_1AF1AFDA8(a1, 1);
    v34 = a1 + 120;
    goto LABEL_14;
  }

  if (a5)
  {
    v59 = sub_1AF0D5194();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v59, v60, v61, v62, v63, v64, v65, v66);
    }

    v34 = 0;
  }

  else
  {
    v34 = a1 + 72;
  }

LABEL_14:
  v35 = sub_1AF1AE3D8(a2);
  v36 = v34 + 8;
  v37 = (v34 + 8 + 2 * v35);
  v38 = *v37;
  if (v38 != -1 && v37[1] > a3)
  {
    v39 = v38 + a3;
    CFArraySetValueAtIndex(*v34, v39, a2);
    if (a4 != 255)
    {
      *(*(v34 + 40) + v39) = a4;
    }

    if (a5)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (a4 == 255)
  {
    v40 = sub_1AF0D5194();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB800(v40, v41, v42, v43, v44, v45, v46, v47);
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_26:
      v51 = 0;
LABEL_27:
      Count = CFArrayGetCount(*v34);
      CFArrayInsertValueAtIndex(*v34, v51, a2);
      if (a5)
      {
        sub_1AF1A2768(a1);
LABEL_40:
        LocalCenter = CFNotificationCenterGetLocalCenter();
        v54 = 1;
        CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshWillDie", a1, 0, 1u);
        return v54;
      }

      v55 = *(a1 + 160);
      if (v55)
      {
        free(v55);
        *(a1 + 160) = 0;
      }

      v56 = malloc_type_realloc(*(a1 + 112), Count + 1, 0x100004077774924uLL);
      *(a1 + 112) = v56;
      if (Count > v51)
      {
        do
        {
          *(*(a1 + 112) + Count) = *(*(a1 + 112) + Count - 1);
          --Count;
        }

        while (Count > v51);
        v56 = *(a1 + 112);
      }

      v56[v51] = a4;
      sub_1AF1A27E0(a1, v34);
LABEL_37:
      sub_1AF1A2B70(a1);
      if (!v35)
      {
        sub_1AF1A31C4(a1);
      }

      sub_1AF1A270C(a1);
      goto LABEL_40;
    }
  }

  if (v35 < 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v48 = v35;
  while (1)
  {
    v49 = *(v36 + 2 * v48);
    if (v49 != -1)
    {
      break;
    }

    v50 = v48--;
    if (v50 < 1)
    {
      goto LABEL_26;
    }
  }

  v53 = *(v36 + 2 * v48 + 1);
  if (v53 >= a3)
  {
    v51 = v53 + v49;
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_1AF1A44E8(uint64_t a1, const void *a2, int a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDB530(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0208(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (a3 == 1)
  {
    sub_1AF1AFDA8(a1, 1);
    v22 = (a1 + 120);
  }

  else if (a3)
  {
    v23 = sub_1AF0D5194();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    v22 = 0;
  }

  else
  {
    v22 = (a1 + 72);
  }

  v31 = v22 + 2 * sub_1AF1AE3D8(a2);
  v34 = v31[8];
  v32 = v31 + 8;
  v33 = v34;
  if (v34 == -1)
  {
    return -1;
  }

  v35 = v32[1];
  if (!v32[1])
  {
    return -1;
  }

  v36 = 0;
  while (CFArrayGetValueAtIndex(*v22, v33 + v36) != a2)
  {
    if (v35 == ++v36)
    {
      return -1;
    }
  }

  return v36;
}

const void *sub_1AF1A4604(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    sub_1AF1AFDA8(a1, 1);
    v8 = (a1 + 120);
  }

  else if (a4)
  {
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v8 = 0;
  }

  else
  {
    v8 = (a1 + 72);
  }

  v17 = sub_1AF1A46BC(a1, a2, a3, a4);
  if (v17 == -1)
  {
    return 0;
  }

  else
  {
    return CFArrayGetValueAtIndex(*v8, v17);
  }
}

uint64_t sub_1AF1A46BC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a4 == 1)
  {
    sub_1AF1AFDA8(a1, 1);
    v16 = (a1 + 120);
  }

  else if (a4)
  {
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v16 = 0;
  }

  else
  {
    v16 = (a1 + 72);
  }

  v25 = v16 + 2 * a2;
  v28 = v25[8];
  v27 = v25 + 8;
  v26 = v28;
  if (v28 == -1 || v27[1] <= a3)
  {
    return -1;
  }

  v29 = v26 + a3;
  if (v29 >= CFArrayGetCount(*v16))
  {
    v30 = sub_1AF0D5194();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB878(v30, v31, v32, v33, v34, v35, v36, v37);
    }
  }

  return v29;
}

BOOL sub_1AF1A47C0(uint64_t a1, int a2, int a3, int a4)
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 != 1)
    {
      sub_1AFDDB8F0(v9);
    }

    if (a4)
    {
      sub_1AF1AFDA8(a1, 1);
    }

    v7 = 120;
  }

  else
  {
    v7 = 72;
  }

  return *(a1 + v7) && sub_1AF1A46BC(a1, a2, 0, a3) != -1;
}

void sub_1AF1A4880(CFArrayRef *a1, const void *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0208(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF1A44E8(a1, a2, 0);
  if (v20 != -1)
  {
    v21 = v20;
    v22 = sub_1AF1AE3D8(a2);
    sub_1AF1A3DEC(a1, v22, v21, 0);
  }
}

const void *sub_1AF1A4930(CFArrayRef *a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  while (1)
  {
    result = sub_1AF1A4604(a1, a2, 0, 0);
    if (!result)
    {
      break;
    }

    sub_1AF1A3DEC(a1, a2, 0, 0);
  }

  return result;
}

void sub_1AF1A49AC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        v15 = ValueAtIndex[9];
        if (v15 && (ValueAtIndex[11] & 4) == 0 && !ValueAtIndex[10])
        {
          CFRelease(v15);
          ValueAtIndex[9] = 0;
        }
      }
    }
  }
}

void sub_1AF1A4A54(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAF5C(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAFD4(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  sub_1AF1A6638(a1 + 72, a2 + 72, a3);
  sub_1AF1A6638(a1 + 120, a2 + 120, a3);
  v22 = *(a1 + 168);
  *(a2 + 168) = v22;
  if (v22)
  {
    v23 = 4 * v22;
    v24 = malloc_type_realloc(*(a2 + 176), 4 * v22, 0x656A50B7uLL);
    *(a2 + 176) = v24;
    memcpy(v24, *(a1 + 176), v23);
  }

  else
  {
    free(*(a2 + 176));
    *(a2 + 176) = 0;
  }

  if (*(a1 + 184))
  {
    v25 = sub_1AF1A4604(a1, 0, 0, 0);
    v26 = 4 * sub_1AF1AE6EC(v25);
    v27 = malloc_type_realloc(*(a2 + 184), v26, 0x31120012uLL);
    *(a2 + 184) = v27;
    memcpy(v27, *(a1 + 184), v26);
    if (!a3)
    {
      return;
    }

    goto LABEL_11;
  }

  free(*(a2 + 184));
  *(a2 + 184) = 0;
  if (a3)
  {
LABEL_11:
    sub_1AF1A4DC8(a1, a2);
  }
}

CFIndex sub_1AF1A4BA0(uint64_t a1, void *a2)
{
  result = CFArrayGetCount(*(a1 + 72));
  if (result)
  {
    v5 = *(a1 + 112);
    v6 = *v5;
    if (result < 2)
    {
LABEL_6:
      if (a2)
      {
        *a2 = v6;
      }

      return 1;
    }

    else
    {
      v7 = result - 1;
      v8 = v5 + 1;
      while (1)
      {
        v9 = *v8++;
        if (v9 != v6)
        {
          return 0;
        }

        if (!--v7)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF1A4C10(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 112))
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB93C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(*(a1 + 112) + a2);
}

uint64_t sub_1AF1A4C6C(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = sub_1AF1A46BC(a1, a2, a3, 0);
  if (v6 == -1)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB9B4(v4, v3, v7);
    }
  }

  return *(*(a1 + 112) + v6);
}

CFArrayRef sub_1AF1A4CF8(uint64_t a1, int a2)
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_7:
      v12 = 72;
      return CFArrayCreateCopy(*MEMORY[0x1E695E498], *(a1 + v12));
    }
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (a2 != 1)
  {
    sub_1AFDDB8F0(v14);
  }

  sub_1AF1AFDA8(a1, 1);
  v12 = 120;
  return CFArrayCreateCopy(*MEMORY[0x1E695E498], *(a1 + v12));
}

void sub_1AF1A4DC8(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      v8 = sub_1AF17032C(ValueAtIndex);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9 != ValueAtIndex)
        {
          v10 = CFArrayGetCount(*(a1 + 72));
          if (v10 < 1)
          {
            goto LABEL_15;
          }

          v11 = v10;
          if (CFArrayGetValueAtIndex(*(a1 + 72), 0) == v9)
          {
            v15 = 0;
          }

          else
          {
            v12 = 1;
            while (1)
            {
              v13 = v12;
              if (v11 == v12)
              {
                break;
              }

              v14 = CFArrayGetValueAtIndex(*(a1 + 72), v12);
              v12 = v13 + 1;
              if (v14 == v9)
              {
                v15 = v13;
                goto LABEL_13;
              }
            }

            v15 = 0;
LABEL_13:
            if (v13 >= v11)
            {
LABEL_15:
              if ((byte_1EB6585F8 & 1) == 0)
              {
                byte_1EB6585F8 = 1;
                v21 = sub_1AF0D5194();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDDBA68(&v22, v23, v21);
                }
              }

              continue;
            }
          }

          v16 = CFArrayGetValueAtIndex(*(a2 + 72), i);
          v17 = sub_1AF17032C(v16);
          v18 = CFArrayGetValueAtIndex(*(a2 + 72), v15);
          sub_1AF1CB108(v17, v18, v19, v20);
        }
      }
    }
  }
}

uint64_t sub_1AF1A4F3C(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 81;
  do
  {
    result += *(v4 + v2);
    v2 += 2;
  }

  while (v2 != 18);
  return result;
}

uint64_t sub_1AF1A4F94(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 168);
  }

  return *(a1 + 176);
}

void sub_1AF1A4FB0(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 208) &= ~2u;
  sub_1AF1A270C(a1);
  CFArrayAppendValue(*(a1 + 104), a2);
}

CFIndex sub_1AF1A5020(uint64_t a1, const void *a2, int a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!*(a1 + 104))
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB5A8(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a3 == 1)
  {
    sub_1AF1AFDA8(a1, 1);
    v22.length = CFArrayGetCount(*(a1 + 152));
    v23 = *(a1 + 152);
    goto LABEL_11;
  }

  if (!a3)
  {
    v22.length = CFArrayGetCount(*(a1 + 104));
    v23 = *(a1 + 104);
LABEL_11:
    v22.location = 0;
    return CFArrayGetFirstIndexOfValue(v23, v22, a2);
  }

  v25 = sub_1AF0D5194();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDBAA8(v25, v26, v27, v28, v29, v30, v31, v32);
  }

  return -1;
}

const void *sub_1AF1A510C(uint64_t a1, CFIndex idx)
{
  Count = *(a1 + 152);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    return 0;
  }

  v5 = *(a1 + 152);

  return CFArrayGetValueAtIndex(v5, idx);
}

uint64_t sub_1AF1A516C(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 == 1)
  {
    sub_1AF1AFDA8(a1, 1);
    return *(a1 + 152);
  }

  else if (a2)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDBB20(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    return 0;
  }

  else
  {
    return *(a1 + 104);
  }
}

void sub_1AF1A5208(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 104);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 104) = 0;
    }

    if (cf)
    {
      v13 = CFGetAllocator(cf);
      *(a1 + 104) = CFArrayCreateMutableCopy(v13, 0, cf);
    }

    *(a1 + 208) &= ~2u;
    sub_1AF1A270C(a1);
  }
}

void sub_1AF1A52A0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 208) &= ~2u;
  sub_1AF1A270C(a1);
  CFArrayRemoveAllValues(*(a1 + 104));
}

void sub_1AF1A5300(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1A3CCC(a1);
  if (v4 < 1)
  {
    return;
  }

  v5 = v4;
  v6 = 0;
  v7 = a2 - 4;
  allocator = *MEMORY[0x1E695E480];
  while (1)
  {
    v8 = sub_1AF1A3D1C(a1, v6, 1);
    if (sub_1AF1A7034(v8) != a2)
    {
      break;
    }

LABEL_27:
    if (++v6 == v5)
    {
      return;
    }
  }

  if (v7 > 0xFFFFFFFFFFFFFFFDLL)
  {
    if (sub_1AF1A7034(v8))
    {
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        size_4 = 0;
        _os_log_impl(&dword_1AF0CE000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Can only convert from triangle array to another element type", &size_4, 2u);
      }

      goto LABEL_27;
    }

    size = 0;
    v10 = sub_1AF1A73C0(v8, &size);
    v11 = sub_1AF1A7674(v8);
    v12 = size;
    BytePtr = CFDataGetBytePtr(v10);
    if (v12 == 2)
    {
      if (a2 == 2)
      {
        v14 = 3 * v11;
        v15 = 6 * v11;
        v16 = malloc_type_calloc(6 * v11, size, 0x3DDF882BuLL);
        v21 = v16;
        if (v11 >= 1)
        {
          do
          {
            *v21 = *BytePtr;
            v22 = *(BytePtr + 1);
            *(v21 + 1) = v22;
            *(v21 + 2) = v22;
            v23 = *(BytePtr + 2);
            *(v21 + 3) = v23;
            *(v21 + 4) = v23;
            v24 = *BytePtr;
            BytePtr += 6;
            *(v21 + 5) = v24;
            v21 += 12;
            --v11;
          }

          while (v11);
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (v12 != 1)
      {
        v29 = 3 * v11;
        if (a2 == 2)
        {
          v30 = malloc_type_calloc(6 * v11, size, 0xF8B504A0uLL);
          v31 = v30;
          if (v11 >= 1)
          {
            do
            {
              *v31 = *BytePtr;
              v32 = *(BytePtr + 1);
              *(v31 + 1) = v32;
              *(v31 + 2) = v32;
              v33 = *(BytePtr + 2);
              *(v31 + 3) = v33;
              *(v31 + 4) = v33;
              v34 = *BytePtr;
              BytePtr += 12;
              *(v31 + 5) = v34;
              v31 += 24;
              --v11;
            }

            while (v11);
          }

          v35 = CFDataCreate(allocator, v30, 2 * v29 * size);
          sub_1AF1A6A70(v8, 2, v29, v35, size);
          CFRelease(v35);
          v26 = v30;
          goto LABEL_23;
        }

        v36 = CFDataCreate(allocator, BytePtr, v29 * size);
        sub_1AF1A6A70(v8, 3, 3 * v11, v36, size);
        v28 = v36;
LABEL_25:
        CFRelease(v28);
        goto LABEL_26;
      }

      if (a2 == 2)
      {
        v14 = 3 * v11;
        v15 = 6 * v11;
        v16 = malloc_type_calloc(6 * v11, size, 0xDF492BB9uLL);
        v17 = v16;
        if (v11 >= 1)
        {
          do
          {
            *v17 = *BytePtr;
            v18 = BytePtr[1];
            v17[1] = v18;
            v17[2] = v18;
            v19 = BytePtr[2];
            v17[3] = v19;
            v17[4] = v19;
            v20 = *BytePtr;
            BytePtr += 3;
            v17[5] = v20;
            v17 += 6;
            --v11;
          }

          while (v11);
        }

LABEL_17:
        v25 = CFDataCreate(allocator, v16, v15 * size);
        sub_1AF1A6A70(v8, 2, v14, v25, size);
        CFRelease(v25);
        v26 = v16;
LABEL_23:
        free(v26);
        v7 = a2 - 4;
LABEL_26:
        sub_1AF1A270C(a1);
        goto LABEL_27;
      }
    }

    v27 = CFDataCreate(allocator, BytePtr, 3 * v11 * size);
    sub_1AF1A6A70(v8, 3, 3 * v11, v27, size);
    v28 = v27;
    goto LABEL_25;
  }

  v37 = sub_1AF0D5194();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AF0CE000, v37, OS_LOG_TYPE_DEFAULT, "Warning: Can only convert to lines or points element type", buf, 2u);
  }
}

uint64_t sub_1AF1A56A0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 208) >> 2) & 1;
}

CFStringRef sub_1AF1A56EC(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return sub_1AF16CC34(a1, theString);
}

uint64_t sub_1AF1A5748(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CBEC(a1);
}

uint64_t sub_1AF1A5794(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

uint64_t sub_1AF1A57DC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 208) & 1;
}

BOOL sub_1AF1A5828(float32x4_t *a1, unsigned int a2, unsigned int a3, float32x4_t a4, float a5, float32x4_t a6, double a7, double a8, float32x4_t a9, __n128 a10)
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = a3 - a2;
  if (a3 > a2)
  {
    v12 = a1[4].i64[0];
    v13 = a1[5].u8[6];
    v61 = a1 + 9;
    v14 = a2;
    v65 = a1[5].u8[7];
    v60 = a1[5].u8[4];
    v64 = a3;
    a4.i64[0] = 67109120;
    v15 = 1;
    while (1)
    {
      v16 = a1[2].u8[2];
      if (a1[2].i8[2])
      {
        if (v14)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v14)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        v19 = v16 != 5;
        v20 = 1;
        if (v16 == 1)
        {
          v19 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 != 1)
        {
          v18 = 1;
        }
      }

      else
      {
        v20 = 3;
        v19 = 3;
        v17 = 2;
        v18 = 1;
      }

      v21 = a1->i64[0];
      if (!a1->i64[0])
      {
        v35 = v14 * v19;
        v34 = v18 + v20 * v14;
        v33 = v17 + v20 * v14;
        goto LABEL_28;
      }

      v22 = a1->u64[1];
      v23 = a1[2].u8[3];
      v24 = a1[3].i64[0];
      v25 = a1[3].i64[1];
      v26 = v24 + v25 * v14 * v19;
      v27 = v20 * v14;
      v28 = v24 + (v18 + v20 * v14) * v25;
      v29 = v24 + (v17 + v27) * v25;
      v30 = v29 <= v26 ? v26 : v29;
      v31 = v28 <= v30 ? v30 : v28;
      if (v22 >= v23 + v23 * v31)
      {
        break;
      }

      v32 = sub_1AF0D5194();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v67 = "CFXIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
        v68 = 1024;
        v69 = v31;
        v70 = 2048;
        v71 = v22 / v23;
        v56 = v32;
        v57 = "Error: %s - index (%u) out of bounds (%lu)";
        v58 = 28;
LABEL_45:
        _os_log_error_impl(&dword_1AF0CE000, v56, OS_LOG_TYPE_ERROR, v57, buf, v58);
      }

LABEL_26:
      v33 = 0;
      v34 = 0;
      v35 = 0;
LABEL_28:
      v36 = v12 + (v35 * v13);
      if (v65 == 1)
      {
        a9.i64[0] = *v36;
        a9.i32[2] = *(v36 + 8);
        v37 = v12 + (v34 * v13);
        a10.n128_u64[0] = *v37;
        a10.n128_u32[2] = *(v37 + 8);
        v38 = v12 + (v33 * v13);
        a4.i64[0] = *v38;
        a4.i32[2] = *(v38 + 8);
      }

      else
      {
        *v39.i64 = sub_1AF279750(v60, v36, a4, a5, a6.f32[0]);
        v63 = v39;
        *v42.i64 = sub_1AF279750(v60, (v12 + (v34 * v13)), v39, v40, v41);
        v62 = v42;
        *a4.i64 = sub_1AF279750(v60, (v12 + (v33 * v13)), v42, v43, v44);
        a10 = v62;
        a9 = v63;
      }

      v45 = a10;
      v45.i32[3] = 0;
      v46 = a4;
      v46.i32[3] = 0;
      v47 = vminnmq_f32(v45, v46);
      v48 = a9;
      v48.i32[3] = 0;
      v47.i32[3] = 0;
      v49 = vminnmq_f32(v48, v47);
      v50 = vmaxnmq_f32(v45, v46);
      v50.i32[3] = 0;
      v51 = vmaxnmq_f32(v48, v50);
      v49.i32[3] = 1.0;
      v51.i32[3] = 1.0;
      v48.i64[0] = 0x3F0000003F000000;
      v48.i64[1] = 0x3F0000003F000000;
      a6 = vabdq_f32(a1[6], vmulq_f32(vaddq_f32(v49, v51), v48));
      v52 = vcgeq_f32(vaddq_f32(a1[7], vmulq_f32(vsubq_f32(v51, v49), v48)), a6);
      v52.i32[3] = v52.i32[2];
      a5 = COERCE_FLOAT(vminvq_u32(v52));
      if ((LODWORD(a5) & 0x80000000) == 0 || (v53 = a1[201].u32[0], a1[201].i32[0] = v53 + 1, v54 = &v61[3 * v53], *v54 = a9, v54[1] = a10, v54[2] = a4, a1[201].i32[0] != 64) || (a1[201].i32[0] = 0, ((*(a1[8].i64[0] + 16))() & 1) == 0))
      {
        v15 = ++v14 < v64;
        if (--v10)
        {
          continue;
        }
      }

      return v15;
    }

    switch(v23)
    {
      case 4u:
        v35 = *(v21 + 4 * v26);
        v34 = *(v21 + 4 * v28);
        v33 = *(v21 + 4 * v29);
        goto LABEL_28;
      case 2u:
        v35 = *(v21 + 2 * v26);
        v34 = *(v21 + 2 * v28);
        v33 = *(v21 + 2 * v29);
        goto LABEL_28;
      case 1u:
        v35 = *(v21 + v26);
        v34 = *(v21 + v28);
        v33 = *(v21 + v29);
        goto LABEL_28;
    }

    v55 = sub_1AF0D5194();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 67109120;
    LODWORD(v67) = v23;
    v56 = v55;
    v57 = "Unreachable code: Invalid bytes per index (%d)";
    v58 = 8;
    goto LABEL_45;
  }

  return 0;
}

uint64_t sub_1AF1A5C00(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  v6 = sub_1AF1A4604(a1, 0, 0, 0);
  result = sub_1AF1AE6EC(v6);
  if (result)
  {
    result = sub_1AF1A3CCC(a1);
    if (result)
    {
      v8 = result;
      v43 = 0u;
      memset(v44, 0, 368);
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      result = sub_1AF1AE1A8(v6, &v39);
      v41 = a3;
      v42 = a4;
      v45 = 0;
      *&v43 = a2;
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = sub_1AF1A3D1C(a1, i, 0);
          sub_1AF1A767C(v10, 0, &v31);
          v35 = v31;
          v36 = v32;
          v37 = v33;
          v38 = v34;
          if (v32 < 0x101)
          {
            result = sub_1AF1A5828(&v35, 0, v32, v33, *&v34, v11, v12, v13, v14, v15);
            if (result)
            {
              return result;
            }
          }

          else
          {
            v30 = 0;
            v31 = v35;
            v32 = v36;
            v33 = v37;
            v34 = v38;
            v29[0] = v39;
            v29[1] = v40;
            result = sub_1AF2825F4(v10, &v31, v29, &v30);
            v19 = v30;
            if (v30)
            {
              v20 = 0;
              v21 = (result + 16);
              v22 = 32;
              do
              {
                v23 = v21[-1];
                v24 = vaddq_f32(v42, *v21);
                v25 = vcgeq_f32(v24, vabdq_f32(v41, v23));
                v25.i32[3] = v25.i32[2];
                v25.i32[0] = vminvq_u32(v25);
                if (v25.i32[0] < 0)
                {
                  if (v22 >= v36)
                  {
                    v26 = v36;
                  }

                  else
                  {
                    v26 = v22;
                  }

                  result = sub_1AF1A5828(&v35, v22 - 32, v26, v25, v24.f32[0], v23, *v21->i64, v16, v17, v18);
                  if (result)
                  {
                    return result;
                  }

                  v19 = v30;
                }

                ++v20;
                v21 += 2;
                v22 += 32;
              }

              while (v20 < v19);
            }
          }
        }

        if (v45)
        {
          return (*(a2 + 16))(a2, v44);
        }
      }
    }
  }

  return result;
}

id sub_1AF1A5E08(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshWillDie", a1, 0, 1u);
  sub_1AF1A6084(a1 + 72);
  sub_1AF1A6084(a1 + 120);
  free(*(a1 + 176));
  free(*(a1 + 184));
  v3 = *(a1 + 200);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 192);
  if (v4)
  {
    free(v4);
  }

  return sub_1AF16C9A4(a1);
}

__CFString *sub_1AF1A5E98(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v4 = sub_1AF16CBEC(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@\n", v3, a1, v4);
  if (sub_1AF1A3CCC(a1) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = sub_1AF1A3D1C(a1, v5, 0);
      CFStringAppendFormat(Mutable, 0, @"  element%d: %@\n", v5++, v6);
    }

    while (v5 < sub_1AF1A3CCC(a1));
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = sub_1AF1A60D0;
  v11[3] = &unk_1E7A7B3C0;
  v11[4] = Mutable;
  sub_1AF1A2BEC(a1, 0, v11);
  if (a1[15])
  {
    if (sub_1AF1A3CCC(a1) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = sub_1AF1A3D1C(a1, v7, 1);
        CFStringAppendFormat(Mutable, 0, @"  renderable element%d: %@\n", v7++, v8);
      }

      while (v7 < sub_1AF1A3CCC(a1));
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = sub_1AF1A614C;
    v10[3] = &unk_1E7A7B3E0;
    v10[4] = Mutable;
    sub_1AF1A2BEC(a1, 1, v10);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

void sub_1AF1A6084(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  free(*(a1 + 40));
  *(a1 + 40) = 0;
}

void sub_1AF1A60D0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = sub_1AF1ADAF8(a3);
  if (a4 < 1)
  {
    CFStringAppendFormat(v8, 0, @"  source %@ (channel:%d) : %@\n", v9, a5, a2);
  }

  else
  {
    CFStringAppendFormat(v8, 0, @"  source %@%d (channel:%d) : %@\n", v9, a4, a5, a2);
  }
}

void sub_1AF1A614C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = sub_1AF1ADAF8(a3);
  if (a4 < 1)
  {
    CFStringAppendFormat(v6, 0, @"  renderable source %@: %@\n", v7, a2);
  }

  else
  {
    CFStringAppendFormat(v6, 0, @"  renderable source %@%d: %@\n", v7, a4, a2);
  }
}