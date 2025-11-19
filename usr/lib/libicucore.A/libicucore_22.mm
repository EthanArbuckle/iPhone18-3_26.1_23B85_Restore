char *icu::CollationDataWriter::copyData(char *this, const int *a2, void *__src, char *a4, unsigned __int8 *a5)
{
  v5 = &this[4 * a2];
  v7 = *v5;
  v6 = *(v5 + 1);
  if (v6 > v7)
  {
    return memcpy(&a4[v7], __src, v6 - v7);
  }

  return this;
}

uint64_t icu::CollationFastLatin::getOptions(icu::CollationFastLatin *this, const icu::CollationData *a2, const icu::CollationSettings *a3, unsigned __int16 *a4)
{
  result = 0xFFFFFFFFLL;
  if (a4 == 384)
  {
    v6 = *(this + 11);
    if (v6)
    {
      v9 = *(a2 + 6);
      if ((v9 & 0xC) != 0)
      {
        v10 = ((v9 >> 4) & 7) + 1;
        if (v10 >= *v6)
        {
          return result;
        }

        v11 = *&v6[2 * v10];
      }

      else
      {
        v11 = 3071;
      }

      if (*(a2 + 4))
      {
        v31 = *(this + 11);
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        for (i = 4096; i != 4104; ++i)
        {
          FirstPrimaryForGroup = icu::CollationData::getFirstPrimaryForGroup(this, i);
          if (FirstPrimaryForGroup < 2 || *(*(a2 + 4) + (FirstPrimaryForGroup >> 24)))
          {
            v18 = FirstPrimaryForGroup & 0xFFFFFF | (*(*(a2 + 4) + (FirstPrimaryForGroup >> 24)) << 24);
          }

          else
          {
            v18 = icu::CollationSettings::reorderEx(a2, FirstPrimaryForGroup);
          }

          if (i == 4100)
          {
            v14 = v15;
            v13 = v18;
          }

          else if (v18)
          {
            if (v18 < v15)
            {
              return 0xFFFFFFFFLL;
            }

            if (v15 == v14)
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            if (v12)
            {
              v19 = v12;
            }

            if (v13)
            {
              v12 = v19;
            }

            v15 = v18;
          }
        }

        v20 = icu::CollationData::getFirstPrimaryForGroup(this, 0x19u);
        if (v20 < 2 || *(*(a2 + 4) + (v20 >> 24)))
        {
          v21 = v20 & 0xFFFFFF | (*(*(a2 + 4) + (v20 >> 24)) << 24);
        }

        else
        {
          v21 = icu::CollationSettings::reorderEx(a2, v20);
        }

        if (v21 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        if (v12)
        {
          v23 = v12;
        }

        else
        {
          v23 = v21;
        }

        v22 = v14 < v13 && v13 < v23;
        v6 = v31;
      }

      else
      {
        v22 = 1;
      }

      v25 = 0;
      v26 = &v6[2 * *v6];
      do
      {
        v27 = *&v26[v25];
        v28 = v27 & 0xFF8;
        if (v11 >= v27)
        {
          v28 = 0;
        }

        if (v27 <= 0xFFF)
        {
          v29 = v28;
        }

        else
        {
          v29 = v27 & 0xFC00;
        }

        *(a3 + v25) = v29;
        v25 += 2;
      }

      while (v25 != 768);
      v30 = *(a2 + 6);
      if ((v30 & 2) != 0)
      {
        v22 = 0;
      }

      if (!v22)
      {
        *(a3 + 12) = 0;
        *(a3 + 13) = 0;
        *(a3 + 28) = 0;
      }

      return v30 | (v11 << 16);
    }
  }

  return result;
}

uint64_t icu::CollationFastLatin::compareUTF16(unsigned __int8 *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v9 = a3;
  v11 = 0;
  v12 = 0;
  v91 = a7;
  v92 = a5;
  v13 = &a1[2 * *a1];
  v14 = HIWORD(a3);
  v89 = a3;
  v90 = 0;
  v15 = v13 - 15616;
  while (2)
  {
    if (!v12)
    {
      while (1)
      {
        v19 = SHIDWORD(v90);
        if (HIDWORD(v90) == v92)
        {
          v12 = 2;
          goto LABEL_3;
        }

        ++HIDWORD(v90);
        v20 = *(a4 + 2 * v19);
        if (v20 <= 0x17F)
        {
          break;
        }

        if ((v20 & 0xFFC0) == 0x2000)
        {
          v21 = (v15 + 2 * v20);
LABEL_24:
          v18 = *v21;
          goto LABEL_25;
        }

        if (v20 == 0xFFFF)
        {
          v18 = 64680;
        }

        else
        {
          v18 = 1;
        }

        if (v20 == 65534)
        {
          v18 = 3;
          goto LABEL_26;
        }

LABEL_25:
        if (v18 >= 0x1000)
        {
          v12 = v18 & 0xFC00;
          goto LABEL_3;
        }

LABEL_26:
        if (v18 > v14)
        {
          v12 = v18 & 0xFF8;
          goto LABEL_3;
        }

        v22 = icu::CollationFastLatin::nextPair(v13, v20, v18, a4, 0, &v90 + 1, &v92);
        if (v22 == 1)
        {
          return 4294967294;
        }

        if (v22 <= 0xBFFu)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (v22 > v14)
        {
          v23 = v22 & 0xFFF8FFF8;
        }

        if (v22 >= 0x1000u)
        {
          v12 = v22 & 0xFC00FC00;
        }

        else
        {
          v12 = v23;
        }

        if (v12)
        {
          goto LABEL_3;
        }
      }

      v12 = *(a2 + 2 * v20);
      if (*(a2 + 2 * v20))
      {
        goto LABEL_3;
      }

      if ((v9 & 2) != 0 && (v20 - 58) > 0xFFFFFFF5)
      {
        return 4294967294;
      }

      v21 = (v13 + 2 * v20);
      goto LABEL_24;
    }

LABEL_3:
    if (v11)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v25 = v90;
      if (v90 == v91)
      {
        v11 = 2;
        goto LABEL_4;
      }

      LODWORD(v90) = v90 + 1;
      v26 = *(a6 + 2 * v25);
      if (v26 <= 0x17F)
      {
        v11 = *(a2 + 2 * v26);
        if (*(a2 + 2 * v26))
        {
          goto LABEL_4;
        }

        if ((v9 & 2) != 0 && (v26 - 58) > 0xFFFFFFF5)
        {
          return 4294967294;
        }

        v27 = (v13 + 2 * v26);
        goto LABEL_51;
      }

      if ((v26 & 0xFFC0) == 0x2000)
      {
        v27 = (v15 + 2 * v26);
LABEL_51:
        v24 = *v27;
        goto LABEL_52;
      }

      if (v26 == 0xFFFF)
      {
        v24 = 64680;
      }

      else
      {
        v24 = 1;
      }

      if (v26 == 65534)
      {
        v24 = 3;
        goto LABEL_53;
      }

LABEL_52:
      if (v24 >= 0x1000)
      {
        break;
      }

LABEL_53:
      if (v24 > v14)
      {
        v11 = v24 & 0xFF8;
        goto LABEL_4;
      }

      v28 = icu::CollationFastLatin::nextPair(v13, v26, v24, a6, 0, &v90, &v91);
      if (v28 == 1)
      {
        return 4294967294;
      }

      if (v28 <= 0xBFFu)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      if (v28 > v14)
      {
        v29 = v28 & 0xFFF8FFF8;
      }

      if (v28 >= 0x1000u)
      {
        v11 = v28 & 0xFC00FC00;
      }

      else
      {
        v11 = v29;
      }

      if (v11)
      {
        goto LABEL_4;
      }
    }

    v11 = v24 & 0xFC00;
LABEL_4:
    if (v12 == v11)
    {
      v11 = 0;
      v16 = v12 == 2;
      v12 = 0;
      if (!v16)
      {
        continue;
      }
    }

    else
    {
      v17 = v12;
      if (v12 != v11)
      {
        v44 = v11;
        goto LABEL_117;
      }

      if (v12 != 2)
      {
        v12 >>= 16;
        v11 >>= 16;
        continue;
      }
    }

    break;
  }

  if (v89 >= 0x1000)
  {
    v45 = 0;
    v46 = 0;
    v90 = 0;
    while (v46)
    {
LABEL_122:
      if (v45)
      {
        goto LABEL_123;
      }

      while (1)
      {
        v55 = v90;
        if (v90 == v91)
        {
          v45 = 2;
          goto LABEL_123;
        }

        LODWORD(v90) = v90 + 1;
        v56 = *(a6 + 2 * v55);
        v53 = v13;
        if (v56 < 0x180 || (v53 = v13 - 15616, (v56 & 0xFFC0) == 0x2000))
        {
          v54 = *(v53 + 2 * v56);
        }

        else
        {
          if (v56 == 0xFFFF)
          {
            v54 = 64680;
          }

          else
          {
            v54 = 1;
          }

          if (v56 == 65534)
          {
            v54 = 3;
            goto LABEL_150;
          }
        }

        if (v54 >= 0x1000)
        {
          break;
        }

LABEL_150:
        if (v54 > v14)
        {
          v45 = 192;
          goto LABEL_123;
        }

        v57 = icu::CollationFastLatin::nextPair(v13, v56, v54, a6, 0, &v90, &v91);
        Secondaries = icu::CollationFastLatin::getSecondaries(v14, v57);
        if (Secondaries)
        {
          v45 = Secondaries;
          goto LABEL_123;
        }
      }

      if ((v54 & 0x3E0u) >= 0x180)
      {
        v45 = ((v54 & 0x3E0) << 16) + 2097344;
      }

      else
      {
        v45 = (v54 & 0x3E0) + 32;
      }

LABEL_123:
      if (v46 != v45)
      {
        if (v46 != v45)
        {
          if (v46 < v45)
          {
            v72 = -1;
          }

          else
          {
            v72 = 1;
          }

          if ((v9 & 0x800) != 0)
          {
            return 4294967294;
          }

          else
          {
            return v72;
          }
        }

        if (v46 != 2)
        {
          v46 >>= 16;
          v45 >>= 16;
          continue;
        }

        goto LABEL_73;
      }

      v45 = 0;
      v16 = v46 == 2;
      v46 = 0;
      if (v16)
      {
        goto LABEL_73;
      }
    }

    while (1)
    {
      v49 = SHIDWORD(v90);
      if (HIDWORD(v90) == v92)
      {
        v46 = 2;
        goto LABEL_122;
      }

      ++HIDWORD(v90);
      v50 = *(a4 + 2 * v49);
      v47 = v13;
      if (v50 < 0x180 || (v47 = v13 - 15616, (v50 & 0xFFC0) == 0x2000))
      {
        v48 = *(v47 + 2 * v50);
      }

      else
      {
        if (v50 == 0xFFFF)
        {
          v48 = 64680;
        }

        else
        {
          v48 = 1;
        }

        if (v50 == 65534)
        {
          v48 = 3;
          goto LABEL_137;
        }
      }

      if (v48 >= 0x1000)
      {
        if ((v48 & 0x3E0u) >= 0x180)
        {
          v46 = ((v48 & 0x3E0) << 16) + 2097344;
        }

        else
        {
          v46 = (v48 & 0x3E0) + 32;
        }

        goto LABEL_122;
      }

LABEL_137:
      if (v48 > v14)
      {
        v46 = 192;
        goto LABEL_122;
      }

      v51 = icu::CollationFastLatin::nextPair(v13, v50, v48, a4, 0, &v90 + 1, &v92);
      v52 = icu::CollationFastLatin::getSecondaries(v14, v51);
      if (v52)
      {
        v46 = v52;
        goto LABEL_122;
      }
    }
  }

LABEL_73:
  if ((v9 & 0x400) == 0)
  {
    goto LABEL_74;
  }

  v59 = 0;
  v60 = 0;
  v61 = v89 < 0x1000;
  v90 = 0;
  while (1)
  {
LABEL_167:
    if (v60)
    {
      goto LABEL_182;
    }

    do
    {
      v62 = SHIDWORD(v90);
      if (HIDWORD(v90) == v92)
      {
        v60 = 2;
        if (v59)
        {
          goto LABEL_200;
        }

        while (1)
        {
LABEL_183:
          v67 = v90;
          if (v90 == v91)
          {
            v59 = 2;
            goto LABEL_200;
          }

          LODWORD(v90) = v90 + 1;
          v68 = *(a6 + 2 * v67);
          v69 = v13;
          if (v68 < 0x180)
          {
            break;
          }

          v69 = v13 - 15616;
          if ((v68 & 0xFFC0) == 0x2000)
          {
            break;
          }

          if (v68 == 0xFFFF)
          {
            v70 = 64680;
          }

          else
          {
            v70 = 1;
          }

          if (v68 != 65534)
          {
            goto LABEL_187;
          }

          v70 = 3;
LABEL_194:
          LODWORD(v70) = icu::CollationFastLatin::nextPair(v13, v68, v70, a6, 0, &v90, &v91);
LABEL_195:
          Cases = icu::CollationFastLatin::getCases(v14, v61, v70);
          if (Cases)
          {
            v59 = Cases;
            goto LABEL_200;
          }
        }

        v70 = *(v69 + 2 * v68);
LABEL_187:
        if (v70 > 0xBFF)
        {
          goto LABEL_195;
        }

        goto LABEL_194;
      }

      ++HIDWORD(v90);
      v63 = *(a4 + 2 * v62);
      v64 = v13;
      if (v63 < 0x180 || (v64 = v13 - 15616, (v63 & 0xFFC0) == 0x2000))
      {
        v65 = *(v64 + 2 * v63);
      }

      else
      {
        if (v63 == 0xFFFF)
        {
          v65 = 64680;
        }

        else
        {
          v65 = 1;
        }

        if (v63 == 65534)
        {
          v65 = 3;
LABEL_179:
          LODWORD(v65) = icu::CollationFastLatin::nextPair(v13, v63, v65, a4, 0, &v90 + 1, &v92);
          goto LABEL_180;
        }
      }

      if (v65 <= 0xBFF)
      {
        goto LABEL_179;
      }

LABEL_180:
      v66 = icu::CollationFastLatin::getCases(v14, v61, v65);
    }

    while (!v66);
    v60 = v66;
LABEL_182:
    if (!v59)
    {
      goto LABEL_183;
    }

LABEL_200:
    if (v60 == v59)
    {
      break;
    }

    if (v60 != v59)
    {
      if (v60 < v59)
      {
        v73 = 1;
      }

      else
      {
        v73 = -1;
      }

      if (v60 < v59)
      {
        v74 = -1;
      }

      else
      {
        v74 = 1;
      }

      if ((v9 & 0x100) != 0)
      {
        return v73;
      }

      else
      {
        return v74;
      }
    }

    if (v60 == 2)
    {
      goto LABEL_74;
    }

    v60 >>= 16;
    v59 >>= 16;
  }

  v59 = 0;
  v16 = v60 == 2;
  v60 = 0;
  if (!v16)
  {
    goto LABEL_167;
  }

LABEL_74:
  if (v89 < 0x2000)
  {
    return 0;
  }

  v31 = 0;
  v32 = 0;
  v33 = (v9 & 0x600) == 512;
  v90 = 0;
  while (2)
  {
    while (2)
    {
      if (v32)
      {
        goto LABEL_91;
      }

      while (2)
      {
        v34 = SHIDWORD(v90);
        if (HIDWORD(v90) == v92)
        {
          v32 = 2;
          if (v31)
          {
            goto LABEL_109;
          }

          while (1)
          {
LABEL_92:
            v39 = v90;
            if (v90 == v91)
            {
              v31 = 2;
              goto LABEL_109;
            }

            LODWORD(v90) = v90 + 1;
            v40 = *(a6 + 2 * v39);
            v41 = v13;
            if (v40 < 0x180)
            {
              break;
            }

            v41 = v13 - 15616;
            if ((v40 & 0xFFC0) == 0x2000)
            {
              break;
            }

            if (v40 == 0xFFFF)
            {
              v42 = 64680;
            }

            else
            {
              v42 = 1;
            }

            if (v40 != 65534)
            {
              goto LABEL_96;
            }

            v42 = 3;
LABEL_103:
            LODWORD(v42) = icu::CollationFastLatin::nextPair(v13, v40, v42, a6, 0, &v90, &v91);
LABEL_104:
            Tertiaries = icu::CollationFastLatin::getTertiaries(v14, v33, v42);
            if (Tertiaries)
            {
              v31 = Tertiaries;
              goto LABEL_109;
            }
          }

          v42 = *(v41 + 2 * v40);
LABEL_96:
          if (v42 > 0xBFF)
          {
            goto LABEL_104;
          }

          goto LABEL_103;
        }

        ++HIDWORD(v90);
        v35 = *(a4 + 2 * v34);
        v36 = v13;
        if (v35 < 0x180 || (v36 = v13 - 15616, (v35 & 0xFFC0) == 0x2000))
        {
          v37 = *(v36 + 2 * v35);
          goto LABEL_81;
        }

        if (v35 == 0xFFFF)
        {
          v37 = 64680;
        }

        else
        {
          v37 = 1;
        }

        if (v35 == 65534)
        {
          v37 = 3;
LABEL_88:
          LODWORD(v37) = icu::CollationFastLatin::nextPair(v13, v35, v37, a4, 0, &v90 + 1, &v92);
        }

        else
        {
LABEL_81:
          if (v37 <= 0xBFF)
          {
            goto LABEL_88;
          }
        }

        v38 = icu::CollationFastLatin::getTertiaries(v14, v33, v37);
        if (!v38)
        {
          continue;
        }

        break;
      }

      v32 = v38;
LABEL_91:
      if (!v31)
      {
        goto LABEL_92;
      }

LABEL_109:
      if (v32 != v31)
      {
        v17 = v32;
        if (v32 != v31)
        {
          v44 = v31;
          v75 = v32 ^ 0x18;
          if (v32 <= 3u)
          {
            v75 = v32;
          }

          v76 = v31 ^ 0x18;
          if (v31 <= 3u)
          {
            v76 = v31;
          }

          if ((v9 & 0x700) == 0x300)
          {
            v17 = v75;
            v44 = v76;
          }

          goto LABEL_117;
        }

        if (v32 == 2)
        {
          goto LABEL_207;
        }

        v32 >>= 16;
        v31 >>= 16;
        continue;
      }

      break;
    }

    v31 = 0;
    v16 = v32 == 2;
    v32 = 0;
    if (!v16)
    {
      continue;
    }

    break;
  }

LABEL_207:
  if (v89 < 0x3000)
  {
    return 0;
  }

  v77 = 0;
  v78 = 0;
  v90 = 0;
  while (2)
  {
    while (2)
    {
      if (!v78)
      {
        while (1)
        {
          v79 = SHIDWORD(v90);
          if (HIDWORD(v90) == v92)
          {
            v78 = 2;
            goto LABEL_232;
          }

          ++HIDWORD(v90);
          v80 = *(a4 + 2 * v79);
          v81 = v13;
          if (v80 < 0x180)
          {
            break;
          }

          v81 = v13 - 15616;
          if ((v80 & 0xFFC0) == 0x2000)
          {
            break;
          }

          if (v80 == 0xFFFF)
          {
            v82 = 64680;
          }

          else
          {
            v82 = 1;
          }

          if (v80 == 65534)
          {
            v82 = 3;
LABEL_248:
            v83 = icu::CollationFastLatin::nextPair(v13, v80, v82, a4, 0, &v90 + 1, &v92);
            LODWORD(v82) = v83;
            if (!HIWORD(v83))
            {
              goto LABEL_249;
            }

            if (v14 < v83)
            {
              v78 = -67044352;
              goto LABEL_232;
            }

            v78 = v83 & 0xFFF8FFF8;
            if ((v83 & 0xFFF8FFF8) != 0)
            {
              goto LABEL_232;
            }
          }

          else
          {
LABEL_241:
            if (v82 <= 0xBFF)
            {
              goto LABEL_248;
            }

LABEL_249:
            if (v82 >= 0x1000)
            {
              if ((v82 & 0x380u) <= 0x17F)
              {
                v78 = 64512;
              }

              else
              {
                v78 = -67044352;
              }

              goto LABEL_232;
            }

            if (v82 > v14)
            {
              v78 = 64512;
              goto LABEL_232;
            }

            if (v82 <= 0xBFF)
            {
              v78 = v82;
            }

            else
            {
              v78 = v82 & 0xFF8;
            }

            if (v78)
            {
              goto LABEL_232;
            }
          }
        }

        v82 = *(v81 + 2 * v80);
        goto LABEL_241;
      }

LABEL_232:
      if (v77)
      {
        goto LABEL_233;
      }

      while (2)
      {
        while (2)
        {
          v84 = v90;
          if (v90 == v91)
          {
            v77 = 2;
            goto LABEL_233;
          }

          LODWORD(v90) = v90 + 1;
          v85 = *(a6 + 2 * v84);
          v86 = v13;
          if (v85 < 0x180 || (v86 = v13 - 15616, (v85 & 0xFFC0) == 0x2000))
          {
            v87 = *(v86 + 2 * v85);
LABEL_263:
            if (v87 > 0xBFF)
            {
              break;
            }
          }

          else
          {
            if (v85 == 0xFFFF)
            {
              v87 = 64680;
            }

            else
            {
              v87 = 1;
            }

            if (v85 != 65534)
            {
              goto LABEL_263;
            }

            v87 = 3;
          }

          v88 = icu::CollationFastLatin::nextPair(v13, v85, v87, a6, 0, &v90, &v91);
          LODWORD(v87) = v88;
          if (HIWORD(v88))
          {
            if (v14 < v88)
            {
              v77 = -67044352;
              goto LABEL_233;
            }

            v77 = v88 & 0xFFF8FFF8;
            if ((v88 & 0xFFF8FFF8) != 0)
            {
              goto LABEL_233;
            }

            continue;
          }

          break;
        }

        if (v87 < 0x1000)
        {
          if (v87 > v14)
          {
            v77 = 64512;
            goto LABEL_233;
          }

          if (v87 <= 0xBFF)
          {
            v77 = v87;
          }

          else
          {
            v77 = v87 & 0xFF8;
          }

          if (v77)
          {
            goto LABEL_233;
          }

          continue;
        }

        break;
      }

      if ((v87 & 0x380u) <= 0x17F)
      {
        v77 = 64512;
      }

      else
      {
        v77 = -67044352;
      }

LABEL_233:
      if (v78 == v77)
      {
        v77 = 0;
        result = 0;
        v16 = v78 == 2;
        v78 = 0;
        if (v16)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v17 = v78;
    if (v78 == v77)
    {
      if (v78 != 2)
      {
        v78 >>= 16;
        v77 >>= 16;
        continue;
      }

      return 0;
    }

    break;
  }

  v44 = v77;
LABEL_117:
  if (v17 < v44)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t icu::CollationFastLatin::lookup(icu::CollationFastLatin *this, const unsigned __int16 *a2)
{
  if ((a2 & 0xFFFFFFC0) == 0x2000)
  {
    return *(this + a2 - 7808);
  }

  if (a2 == 0xFFFF)
  {
    v3 = 64680;
  }

  else
  {
    v3 = 1;
  }

  if (a2 == 65534)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t icu::CollationFastLatin::nextPair(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, int *a7)
{
  if ((a3 - 3072) < 0xFFFFF800)
  {
    return a3;
  }

  if (a3 >= 0x800)
  {
    return *(a1 + 2 * (a3 & 0x3FF) + 896);
  }

  v7 = *a7;
  if (!a2 && v7 < 0)
  {
    *a7 = *a6 - 1;
    return 2;
  }

  v8 = (a3 & 0x3FF) + 448;
  v9 = *a6;
  if (*a6 != v7)
  {
    v10 = v9 + 1;
    if (a4)
    {
      v11 = *(a4 + 2 * v9);
      if (v11 >= 0x180)
      {
        if ((v11 & 0xFFC0) != 0x2000)
        {
          if (v11 <= 0xFFFD)
          {
            return 1;
          }

          goto LABEL_17;
        }

        v11 -= 7808;
        if (v11)
        {
          goto LABEL_18;
        }

LABEL_15:
        if (v7 < 0)
        {
          *a7 = v9;
LABEL_17:
          v11 = -1;
        }

LABEL_18:
        v12 = *(a1 + 2 * v8);
        v13 = (a3 & 0x3FF) + 448;
        do
        {
          v13 += v12 >> 9;
          v12 = *(a1 + 2 * v13);
        }

        while ((v12 & 0x1FF) < v11);
        if ((v12 & 0x1FF) == v11)
        {
          *a6 = v10;
          v8 = v13;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v11 = *(a5 + v9);
      if (*(a5 + v9) < 0)
      {
        v17 = v11 - 198 < 0xFFFFFFFC || v10 == v7;
        if (v17 || *(a5 + v10) > -65)
        {
          v18 = v9 + 2;
          if ((v7 & 0x80000000) == 0 && v18 >= v7)
          {
            return 1;
          }

          if (v11 == 239)
          {
            if (*(a5 + v10) != 191 || (*(a5 + v18) & 0xFE) != 0xBE)
            {
              return 1;
            }

            v11 = -1;
          }

          else
          {
            if (v11 != 226 || *(a5 + v10) != 128 || *(a5 + v18) > -65)
            {
              return 1;
            }

            v11 = *(a5 + v18) | 0x100;
          }

          LODWORD(v10) = v9 + 3;
          goto LABEL_18;
        }

        v11 = *(a5 + v10) + (v11 << 6) - 12416;
        LODWORD(v10) = v9 + 2;
        if (v11)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }

    if (v11)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_22:
  v14 = (a1 + 2 * v8);
  v15 = *v14 >> 9;
  if (v15 == 1)
  {
    return 1;
  }

  a3 = v14[1];
  if (v15 != 2)
  {
    return a3 | (v14[2] << 16);
  }

  return a3;
}

uint64_t icu::CollationFastLatin::getSecondaries(icu::CollationFastLatin *this, unsigned int a2)
{
  if (a2 <= this)
  {
    v2 = 0;
  }

  else
  {
    v2 = 12583104;
  }

  if ((a2 & 0xF000) != 0)
  {
    v2 = (a2 & 0x3E003E0) + 2097184;
  }

  if (a2 <= 0xBFF)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (a2 <= this)
  {
    v4 = v3;
  }

  else
  {
    v4 = 192;
  }

  v5 = ((a2 & 0x3E0) << 16) + 2097344;
  if ((a2 & 0x3E0) < 0x180)
  {
    v5 = (a2 & 0x3E0) + 32;
  }

  if (a2 >= 0x1000)
  {
    v4 = v5;
  }

  if (HIWORD(a2))
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t icu::CollationFastLatin::getCases(icu::CollationFastLatin *this, int a2, unsigned int a3)
{
  if (HIWORD(a3))
  {
    if (a3 < 0x1000u)
    {
      if (a3 <= this)
      {
        return 0;
      }

      else
      {
        return 524296;
      }
    }

    else if (!a2 || a3 >> 26)
    {
      return a3 & 0x180018;
    }

    else
    {
      return a3 & 0x18;
    }
  }

  else
  {
    if (a3 <= 0xBFF)
    {
      v3 = a3;
    }

    else
    {
      v3 = 0;
    }

    if (a3 <= this)
    {
      v4 = v3;
    }

    else
    {
      v4 = 8;
    }

    v5 = a3 & 0x18;
    if ((a3 & 0x380) > 0x17F && a2 == 0)
    {
      v5 |= 0x80000u;
    }

    if (a3 >= 0x1000)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t icu::CollationFastLatin::getTertiaries(icu::CollationFastLatin *this, int a2, unsigned int a3)
{
  if (HIWORD(a3))
  {
    if (a2)
    {
      v10 = 2621480;
    }

    else
    {
      v10 = 2097184;
    }

    v11 = a3 & 0x70007 | v10;
    if (a3 <= this)
    {
      v11 = 0;
    }

    if (a2)
    {
      v12 = 2031647;
    }

    else
    {
      v12 = 458759;
    }

    v13 = v12 & a3 | 0x200020;
    if (a3 >= 0x1000u)
    {
      return v13;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    if (a3 <= 0xBFF)
    {
      v3 = a3;
    }

    else
    {
      v3 = 0;
    }

    if (a2)
    {
      v4 = 40;
    }

    else
    {
      v4 = 32;
    }

    v5 = v4 & 0xFFFFFFF8 | a3 & 7;
    if (a3 > this)
    {
      v3 = v5;
    }

    if ((a3 & 0x380) <= 0x17F)
    {
      v6 = 32;
    }

    else
    {
      v6 = 2097184;
    }

    v7 = 2621472;
    if ((a3 & 0x380) <= 0x17F)
    {
      v7 = 32;
    }

    v8 = v7 | a3 & 0x1F;
    if (!a2)
    {
      v8 = v6 | a3 & 7;
    }

    if (a3 >= 0x1000)
    {
      return v8;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t icu::CollationFastLatin::getQuaternaries(icu::CollationFastLatin *this, unsigned int a2)
{
  v2 = a2 & 0xFFF8FFF8;
  if (this < a2)
  {
    v2 = -67044352;
  }

  v3 = a2 & 0xFF8;
  if (a2 <= 0xBFF)
  {
    v3 = a2;
  }

  if (a2 > this)
  {
    v3 = 64512;
  }

  if ((a2 & 0x380) <= 0x17F)
  {
    v4 = 64512;
  }

  else
  {
    v4 = -67044352;
  }

  if (a2 < 0x1000)
  {
    v4 = v3;
  }

  if (HIWORD(a2))
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t icu::CollationFastLatin::compareUTF8(icu::CollationFastLatin *this, const unsigned __int16 *a2, const unsigned __int16 *a3, uint64_t a4, const unsigned __int8 *a5, uint64_t a6, const unsigned __int8 *a7)
{
  v9 = a3;
  v11 = 0;
  v12 = 0;
  v118 = a7;
  v119[0] = a5;
  v13 = (this + 2 * *this);
  v14 = (a3 >> 16);
  v114 = a3;
  *v117 = 0;
  while (2)
  {
    while (2)
    {
      if (!v12)
      {
        while (1)
        {
          v15 = *&v117[4];
          if (*&v117[4] == v119[0])
          {
            v12 = 2;
            goto LABEL_3;
          }

          v16 = *&v117[4] + 1;
          ++*&v117[4];
          v17 = *(a4 + v15);
          if ((v17 & 0x80) == 0)
          {
            break;
          }

          v18 = v17 - 198 < 0xFFFFFFFC || v16 == v119[0];
          if (!v18)
          {
            v19 = *(a4 + v16);
            if (v19 <= -65)
            {
              *&v117[4] = v15 + 2;
              v17 = v19 + (v17 << 6) - 12416;
              v12 = a2[v17];
              if (a2[v17])
              {
                goto LABEL_3;
              }

LABEL_20:
              v20 = *(v13 + v17);
              goto LABEL_22;
            }
          }

          v20 = icu::CollationFastLatin::lookupUTF8(v13, *(a4 + v15), a4, &v117[4], v119[0]);
LABEL_22:
          if (v20 >= 0x1000)
          {
            v12 = v20 & 0xFC00;
            goto LABEL_3;
          }

          if (v20 > v14)
          {
            v12 = v20 & 0xFF8;
            goto LABEL_3;
          }

          Pair = icu::CollationFastLatin::nextPair(v13, v17, v20, 0, a4, &v117[4], v119);
          if (Pair == 1)
          {
            return 4294967294;
          }

          if (Pair <= 0xBFFu)
          {
            v22 = Pair;
          }

          else
          {
            v22 = 0;
          }

          if (Pair > v14)
          {
            v22 = Pair & 0xFFF8FFF8;
          }

          if (Pair >= 0x1000u)
          {
            v12 = Pair & 0xFC00FC00;
          }

          else
          {
            v12 = v22;
          }

          if (v12)
          {
            goto LABEL_3;
          }
        }

        v12 = a2[*(a4 + v15)];
        if (a2[*(a4 + v15)])
        {
          goto LABEL_3;
        }

        if ((v9 & 2) != 0 && v17 - 58 > 0xFFFFFFF5)
        {
          return 4294967294;
        }

        goto LABEL_20;
      }

LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

      while (1)
      {
        v23 = *v117;
        if (*v117 == v118)
        {
          v11 = 2;
          goto LABEL_4;
        }

        v24 = *v117 + 1;
        ++*v117;
        v25 = *(a6 + v23);
        if ((v25 & 0x80) == 0)
        {
          v11 = a2[*(a6 + v23)];
          if (a2[*(a6 + v23)])
          {
            goto LABEL_4;
          }

          if ((v9 & 2) != 0 && v25 - 58 > 0xFFFFFFF5)
          {
            return 4294967294;
          }

          goto LABEL_47;
        }

        if (v25 - 198 >= 0xFFFFFFFC && v24 != v118)
        {
          v27 = *(a6 + v24);
          if (v27 <= -65)
          {
            *v117 = v23 + 2;
            v25 = v27 + (v25 << 6) - 12416;
            v11 = a2[v25];
            if (a2[v25])
            {
              goto LABEL_4;
            }

LABEL_47:
            v28 = *(v13 + v25);
            goto LABEL_49;
          }
        }

        v28 = icu::CollationFastLatin::lookupUTF8(v13, *(a6 + v23), a6, v117, v118);
LABEL_49:
        if (v28 >= 0x1000)
        {
          v11 = v28 & 0xFC00;
          goto LABEL_4;
        }

        if (v28 > v14)
        {
          break;
        }

        v29 = icu::CollationFastLatin::nextPair(v13, v25, v28, 0, a6, v117, &v118);
        if (v29 == 1)
        {
          return 4294967294;
        }

        if (v29 <= 0xBFFu)
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        if (v29 > v14)
        {
          v30 = v29 & 0xFFF8FFF8;
        }

        if (v29 >= 0x1000u)
        {
          v11 = v29 & 0xFC00FC00;
        }

        else
        {
          v11 = v30;
        }

        if (v11)
        {
          goto LABEL_4;
        }
      }

      v11 = v28 & 0xFF8;
LABEL_4:
      if (v12 != v11)
      {
        v31 = v12;
        if (v12 == v11)
        {
          if (v12 != 2)
          {
            v12 >>= 16;
            v11 >>= 16;
            continue;
          }

          goto LABEL_72;
        }

        v52 = v11;
LABEL_119:
        if (v31 < v52)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return 1;
        }
      }

      break;
    }

    v11 = 0;
    v18 = v12 == 2;
    v12 = 0;
    if (!v18)
    {
      continue;
    }

    break;
  }

LABEL_72:
  if (v114 < 0x1000)
  {
    goto LABEL_73;
  }

  v53 = 0;
  v54 = 0;
  *v117 = 0;
  while (2)
  {
    if (v54)
    {
      goto LABEL_124;
    }

    while (2)
    {
      v56 = *&v117[4];
      if (*&v117[4] == v119[0])
      {
        v54 = 2;
        goto LABEL_124;
      }

      v57 = *&v117[4] + 1;
      ++*&v117[4];
      v58 = *(a4 + v56);
      if ((v58 & 0x80) == 0)
      {
        v59 = *(a4 + v56);
LABEL_141:
        v55 = *(v13 + v59);
        if (v55 >= 0x1000)
        {
          goto LABEL_163;
        }

LABEL_142:
        if (v55 > v14)
        {
          v54 = 192;
          goto LABEL_124;
        }

        v62 = icu::CollationFastLatin::nextPair(v13, v58, v55, 0, a4, &v117[4], v119);
        Secondaries = icu::CollationFastLatin::getSecondaries(v14, v62);
        if (Secondaries)
        {
          v54 = Secondaries;
          goto LABEL_124;
        }

        continue;
      }

      break;
    }

    if (v58 <= 0xC5)
    {
      v60 = *(a4 + v57) + (v58 << 6);
      *&v117[4] = v56 + 2;
      v59 = v60 - 12416;
      goto LABEL_141;
    }

    v61 = *(a4 + 1 + v57);
    *&v117[4] = v56 + 3;
    if (v58 == 226)
    {
      v59 = v61 | 0x100;
      goto LABEL_141;
    }

    if (v61 == 190)
    {
      v55 = 3;
      goto LABEL_142;
    }

    LOWORD(v55) = -856;
LABEL_163:
    if ((v55 & 0x3E0u) >= 0x180)
    {
      v54 = ((v55 & 0x3E0) << 16) + 2097344;
    }

    else
    {
      v54 = (v55 & 0x3E0) + 32;
    }

LABEL_124:
    if (v53)
    {
      goto LABEL_125;
    }

    while (2)
    {
      v65 = *v117;
      if (*v117 == v118)
      {
        v53 = 2;
        goto LABEL_125;
      }

      v66 = *v117 + 1;
      ++*v117;
      v67 = *(a6 + v65);
      if ((v67 & 0x80) == 0)
      {
        v68 = *(a6 + v65);
LABEL_154:
        v64 = *(v13 + v68);
        if (v64 >= 0x1000)
        {
          goto LABEL_167;
        }

LABEL_155:
        if (v64 > v14)
        {
          v53 = 192;
          goto LABEL_125;
        }

        v71 = icu::CollationFastLatin::nextPair(v13, v67, v64, 0, a6, v117, &v118);
        v72 = icu::CollationFastLatin::getSecondaries(v14, v71);
        if (v72)
        {
          v53 = v72;
          goto LABEL_125;
        }

        continue;
      }

      break;
    }

    if (v67 <= 0xC5)
    {
      v69 = *(a6 + v66) + (v67 << 6);
      *v117 = v65 + 2;
      v68 = v69 - 12416;
      goto LABEL_154;
    }

    v70 = *(a6 + 1 + v66);
    *v117 = v65 + 3;
    if (v67 == 226)
    {
      v68 = v70 | 0x100;
      goto LABEL_154;
    }

    if (v70 == 190)
    {
      v64 = 3;
      goto LABEL_155;
    }

    LOWORD(v64) = -856;
LABEL_167:
    if ((v64 & 0x3E0u) >= 0x180)
    {
      v53 = ((v64 & 0x3E0) << 16) + 2097344;
    }

    else
    {
      v53 = (v64 & 0x3E0) + 32;
    }

LABEL_125:
    if (v54 == v53)
    {
      v53 = 0;
      v18 = v54 == 2;
      v54 = 0;
      if (!v18)
      {
        continue;
      }
    }

    else
    {
      if (v54 != v53)
      {
        if (v54 < v53)
        {
          v91 = -1;
        }

        else
        {
          v91 = 1;
        }

        if ((v9 & 0x800) != 0)
        {
          return 4294967294;
        }

        else
        {
          return v91;
        }
      }

      if (v54 != 2)
      {
        v54 >>= 16;
        v53 >>= 16;
        continue;
      }
    }

    break;
  }

LABEL_73:
  if ((v9 & 0x400) == 0)
  {
    goto LABEL_74;
  }

  v73 = 0;
  v74 = 0;
  *v117 = 0;
  while (2)
  {
    while (2)
    {
      if (v74)
      {
        goto LABEL_187;
      }

      while (2)
      {
        v76 = *&v117[4];
        if (*&v117[4] == v119[0])
        {
          v74 = 2;
          if (v73)
          {
            goto LABEL_206;
          }

          while (1)
          {
LABEL_194:
            v84 = *v117;
            if (*v117 == v118)
            {
              v73 = 2;
              goto LABEL_206;
            }

            v85 = *v117 + 1;
            ++*v117;
            v86 = *(a6 + v84);
            if ((v86 & 0x80) == 0)
            {
              v87 = *(a6 + v84);
              goto LABEL_201;
            }

            if (v86 <= 0xC5)
            {
              break;
            }

            v89 = *(a6 + 1 + v85);
            *v117 = v84 + 3;
            if (v86 == 226)
            {
              v87 = v89 | 0x100;
LABEL_201:
              v83 = *(v13 + v87);
              if (v83 <= 0xBFF)
              {
                goto LABEL_202;
              }

              goto LABEL_203;
            }

            if (v89 == 190)
            {
              v83 = 3;
LABEL_202:
              LODWORD(v83) = icu::CollationFastLatin::nextPair(v13, v86, v83, 0, a6, v117, &v118);
              goto LABEL_203;
            }

            LODWORD(v83) = 64680;
LABEL_203:
            Cases = icu::CollationFastLatin::getCases(v14, v114 < 0x1000, v83);
            if (Cases)
            {
              v73 = Cases;
              goto LABEL_206;
            }
          }

          v88 = *(a6 + v85) + (v86 << 6);
          *v117 = v84 + 2;
          v87 = v88 - 12416;
          goto LABEL_201;
        }

        v77 = *&v117[4] + 1;
        ++*&v117[4];
        v78 = *(a4 + v76);
        if ((v78 & 0x80) == 0)
        {
          v79 = *(a4 + v76);
          goto LABEL_183;
        }

        if (v78 <= 0xC5)
        {
          v80 = *(a4 + v77) + (v78 << 6);
          *&v117[4] = v76 + 2;
          v79 = v80 - 12416;
          goto LABEL_183;
        }

        v81 = *(a4 + 1 + v77);
        *&v117[4] = v76 + 3;
        if (v78 == 226)
        {
          v79 = v81 | 0x100;
LABEL_183:
          v75 = *(v13 + v79);
          if (v75 <= 0xBFF)
          {
LABEL_184:
            LODWORD(v75) = icu::CollationFastLatin::nextPair(v13, v78, v75, 0, a4, &v117[4], v119);
          }
        }

        else
        {
          if (v81 == 190)
          {
            v75 = 3;
            goto LABEL_184;
          }

          LODWORD(v75) = 64680;
        }

        v82 = icu::CollationFastLatin::getCases(v14, v114 < 0x1000, v75);
        if (!v82)
        {
          continue;
        }

        break;
      }

      v74 = v82;
LABEL_187:
      if (!v73)
      {
        goto LABEL_194;
      }

LABEL_206:
      if (v74 != v73)
      {
        if (v74 != v73)
        {
          if (v74 < v73)
          {
            v92 = 1;
          }

          else
          {
            v92 = -1;
          }

          if (v74 < v73)
          {
            v93 = -1;
          }

          else
          {
            v93 = 1;
          }

          if ((v9 & 0x100) != 0)
          {
            return v92;
          }

          else
          {
            return v93;
          }
        }

        if (v74 == 2)
        {
          goto LABEL_74;
        }

        v74 >>= 16;
        v73 >>= 16;
        continue;
      }

      break;
    }

    v73 = 0;
    v18 = v74 == 2;
    v74 = 0;
    if (!v18)
    {
      continue;
    }

    break;
  }

LABEL_74:
  if (v114 < 0x2000)
  {
    return 0;
  }

  v33 = 0;
  v34 = 0;
  v35 = (v9 & 0x600) == 512;
  v116 = a4 + 1;
  *v117 = 0;
  v115 = a6 + 1;
  while (2)
  {
    while (2)
    {
      if (v34)
      {
        goto LABEL_92;
      }

      while (2)
      {
        v37 = *&v117[4];
        if (*&v117[4] == v119[0])
        {
          v34 = 2;
          if (v33)
          {
            goto LABEL_111;
          }

          while (1)
          {
LABEL_99:
            v45 = *v117;
            if (*v117 == v118)
            {
              v33 = 2;
              goto LABEL_111;
            }

            v46 = *v117 + 1;
            ++*v117;
            v47 = *(a6 + v45);
            if ((v47 & 0x80) == 0)
            {
              v48 = *(a6 + v45);
              goto LABEL_106;
            }

            if (v47 <= 0xC5)
            {
              break;
            }

            v50 = *(v115 + v46);
            *v117 = v45 + 3;
            if (v47 == 226)
            {
              v48 = v50 | 0x100;
LABEL_106:
              v44 = *(v13 + v48);
              if (v44 <= 0xBFF)
              {
                goto LABEL_107;
              }

              goto LABEL_108;
            }

            if (v50 == 190)
            {
              v44 = 3;
LABEL_107:
              LODWORD(v44) = icu::CollationFastLatin::nextPair(v13, v47, v44, 0, a6, v117, &v118);
              goto LABEL_108;
            }

            LODWORD(v44) = 64680;
LABEL_108:
            Tertiaries = icu::CollationFastLatin::getTertiaries(v14, v35, v44);
            if (Tertiaries)
            {
              v33 = Tertiaries;
              goto LABEL_111;
            }
          }

          v49 = *(a6 + v46) + (v47 << 6);
          *v117 = v45 + 2;
          v48 = v49 - 12416;
          goto LABEL_106;
        }

        v38 = *&v117[4] + 1;
        ++*&v117[4];
        v39 = *(a4 + v37);
        if ((v39 & 0x80) == 0)
        {
          v40 = *(a4 + v37);
          goto LABEL_88;
        }

        if (v39 <= 0xC5)
        {
          v41 = *(a4 + v38) + (v39 << 6);
          *&v117[4] = v37 + 2;
          v40 = v41 - 12416;
          goto LABEL_88;
        }

        v42 = *(v116 + v38);
        *&v117[4] = v37 + 3;
        if (v39 == 226)
        {
          v40 = v42 | 0x100;
LABEL_88:
          v36 = *(v13 + v40);
          if (v36 <= 0xBFF)
          {
LABEL_89:
            LODWORD(v36) = icu::CollationFastLatin::nextPair(v13, v39, v36, 0, a4, &v117[4], v119);
          }
        }

        else
        {
          if (v42 == 190)
          {
            v36 = 3;
            goto LABEL_89;
          }

          LODWORD(v36) = 64680;
        }

        v43 = icu::CollationFastLatin::getTertiaries(v14, v35, v36);
        if (!v43)
        {
          continue;
        }

        break;
      }

      v34 = v43;
LABEL_92:
      if (!v33)
      {
        goto LABEL_99;
      }

LABEL_111:
      if (v34 != v33)
      {
        v31 = v34;
        if (v34 == v33)
        {
          if (v34 == 2)
          {
            goto LABEL_213;
          }

          v34 >>= 16;
          v33 >>= 16;
          continue;
        }

        v52 = v33;
        v94 = v34 ^ 0x18;
        if (v34 <= 3u)
        {
          v94 = v34;
        }

        v95 = v33 ^ 0x18;
        if (v33 <= 3u)
        {
          v95 = v33;
        }

        if ((v9 & 0x700) == 0x300)
        {
          v31 = v94;
          v52 = v95;
        }

        goto LABEL_119;
      }

      break;
    }

    v33 = 0;
    v18 = v34 == 2;
    v34 = 0;
    if (!v18)
    {
      continue;
    }

    break;
  }

LABEL_213:
  if (v114 < 0x3000)
  {
    return 0;
  }

  v96 = 0;
  v97 = 0;
  *v117 = 0;
  while (2)
  {
    while (2)
    {
      if (v97)
      {
        goto LABEL_238;
      }

      while (2)
      {
        v98 = *&v117[4];
        if (*&v117[4] == v119[0])
        {
          v97 = 2;
          goto LABEL_238;
        }

        v99 = *&v117[4] + 1;
        ++*&v117[4];
        v100 = *(a4 + v98);
        if ((v100 & 0x80) == 0)
        {
          v101 = *(a4 + v98);
          goto LABEL_250;
        }

        if (v100 <= 0xC5)
        {
          v102 = *(a4 + v99) + (v100 << 6);
          *&v117[4] = v98 + 2;
          v101 = v102 - 12416;
          goto LABEL_250;
        }

        v103 = *(v116 + v99);
        *&v117[4] = v98 + 3;
        if (v100 == 226)
        {
          v101 = v103 | 0x100;
LABEL_250:
          v104 = *(v13 + v101);
          if (v104 <= 0xBFF)
          {
LABEL_251:
            v105 = icu::CollationFastLatin::nextPair(v13, v100, v104, 0, a4, &v117[4], v119);
            LODWORD(v104) = v105;
            if (HIWORD(v105))
            {
              if (v14 < v105)
              {
                v97 = -67044352;
                goto LABEL_238;
              }

              v97 = v105 & 0xFFF8FFF8;
              if ((v105 & 0xFFF8FFF8) != 0)
              {
                goto LABEL_238;
              }

              continue;
            }
          }

          if (v104 >= 0x1000)
          {
            goto LABEL_295;
          }

          if (v104 > v14)
          {
            v97 = 64512;
            goto LABEL_238;
          }

          if (v104 <= 0xBFF)
          {
            v97 = v104;
          }

          else
          {
            v97 = v104 & 0xFF8;
          }

          if (v97)
          {
            goto LABEL_238;
          }

          continue;
        }

        break;
      }

      if (v103 == 190)
      {
        v104 = 3;
        goto LABEL_251;
      }

      LOWORD(v104) = -856;
LABEL_295:
      if ((v104 & 0x380u) <= 0x17F)
      {
        v97 = 64512;
      }

      else
      {
        v97 = -67044352;
      }

LABEL_238:
      if (v96)
      {
        goto LABEL_239;
      }

      while (2)
      {
        v106 = *v117;
        if (*v117 == v118)
        {
          v96 = 2;
          goto LABEL_239;
        }

        v107 = *v117 + 1;
        ++*v117;
        v108 = *(a6 + v106);
        if ((v108 & 0x80) == 0)
        {
          v109 = *(a6 + v106);
          goto LABEL_271;
        }

        if (v108 <= 0xC5)
        {
          v110 = *(a6 + v107) + (v108 << 6);
          *v117 = v106 + 2;
          v109 = v110 - 12416;
          goto LABEL_271;
        }

        v111 = *(v115 + v107);
        *v117 = v106 + 3;
        if (v108 == 226)
        {
          v109 = v111 | 0x100;
LABEL_271:
          v112 = *(v13 + v109);
          if (v112 <= 0xBFF)
          {
LABEL_272:
            v113 = icu::CollationFastLatin::nextPair(v13, v108, v112, 0, a6, v117, &v118);
            LODWORD(v112) = v113;
            if (HIWORD(v113))
            {
              if (v14 < v113)
              {
                v96 = -67044352;
                goto LABEL_239;
              }

              v96 = v113 & 0xFFF8FFF8;
              if ((v113 & 0xFFF8FFF8) != 0)
              {
                goto LABEL_239;
              }

              continue;
            }
          }

          if (v112 >= 0x1000)
          {
            goto LABEL_299;
          }

          if (v112 > v14)
          {
            v96 = 64512;
            goto LABEL_239;
          }

          if (v112 <= 0xBFF)
          {
            v96 = v112;
          }

          else
          {
            v96 = v112 & 0xFF8;
          }

          if (v96)
          {
            goto LABEL_239;
          }

          continue;
        }

        break;
      }

      if (v111 == 190)
      {
        v112 = 3;
        goto LABEL_272;
      }

      LOWORD(v112) = -856;
LABEL_299:
      if ((v112 & 0x380u) <= 0x17F)
      {
        v96 = 64512;
      }

      else
      {
        v96 = -67044352;
      }

LABEL_239:
      if (v97 != v96)
      {
        v31 = v97;
        if (v97 == v96)
        {
          if (v97 != 2)
          {
            v97 >>= 16;
            v96 >>= 16;
            continue;
          }

          return 0;
        }

        v52 = v96;
        goto LABEL_119;
      }

      break;
    }

    v96 = 0;
    result = 0;
    v18 = v97 == 2;
    v97 = 0;
    if (!v18)
    {
      continue;
    }

    return result;
  }
}

uint64_t icu::CollationFastLatin::lookupUTF8(icu::CollationFastLatin *this, const unsigned __int16 *a2, uint64_t a3, unsigned __int8 *a4, int *a5)
{
  v5 = *a4;
  v6 = v5 + 1;
  if ((a5 & 0x80000000) == 0 && v6 >= a5)
  {
    return 1;
  }

  v8 = *(a3 + v5);
  v9 = *(a3 + v6);
  v10 = *(a3 + v6);
  *a4 = v5 + 2;
  if (a2 == 226 && v8 == 128 && v9 <= -65)
  {
    return *(this + v10 + 256);
  }

  result = 1;
  if (a2 == 239 && v8 == 191)
  {
    if (v10 == 190)
    {
      return 3;
    }

    else if (v10 == 191)
    {
      return 64680;
    }
  }

  return result;
}

uint64_t icu::CollationFastLatin::lookupUTF8Unsafe(icu::CollationFastLatin *this, const unsigned __int16 *a2, uint64_t a3, unsigned __int8 *a4, int *a5)
{
  if (a2 > 197)
  {
    v7 = *a4;
    v8 = *(a3 + v7 + 1);
    *a4 = v7 + 2;
    if (a2 == 226)
    {
      return *(this + v8 + 256);
    }

    else if (v8 == 190)
    {
      return 3;
    }

    else
    {
      return 64680;
    }
  }

  else
  {
    v5 = *a4;
    *a4 = v5 + 1;
    return *(this + 64 * a2 + *(a3 + v5) - 12416);
  }
}

icu::CollationFastLatinBuilder *icu::CollationFastLatinBuilder::CollationFastLatinBuilder(icu::CollationFastLatinBuilder *this, UErrorCode *a2)
{
  *this = &unk_1F09383C0;
  *(this + 8) = 0u;
  icu::UVector64::UVector64((this + 7192), a2);
  icu::UVector64::UVector64((this + 7224), a2);
  *(this + 907) = 0;
  *(this + 455) = 0u;
  *(this + 7296) = 0;
  *(this + 913) = &unk_1F0935D00;
  *(this + 3656) = 2;
  *(this + 1842) = 0;
  return this;
}

void icu::CollationFastLatinBuilder::~CollationFastLatinBuilder(void **this)
{
  *this = &unk_1F09383C0;
  free(this[907]);
  icu::UnicodeString::~UnicodeString(0x1C88, (this + 913));
  icu::UVector64::~UVector64(this + 903);
  icu::UVector64::~UVector64(this + 899);

  icu::UObject::~UObject(this);
}

{
  icu::CollationFastLatinBuilder::~CollationFastLatinBuilder(this);

  JUMPOUT(0x19A8B2600);
}

BOOL icu::CollationFastLatinBuilder::forData(icu::CollationFastLatinBuilder *this, const icu::CollationData *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (*(this + 3656) >= 0x20u)
    {
      v3 = 0;
      *a3 = U_INVALID_STATE_ERROR;
      return v3;
    }

    if (icu::CollationFastLatinBuilder::loadGroups(this, a2, a3))
    {
      *(this + 1823) = *(this + 1820);
      icu::CollationFastLatinBuilder::getCEs(this, a2, a3);
      if (icu::CollationFastLatinBuilder::encodeUniqueCEs(this, a3))
      {
        if (!*(this + 7296))
        {
LABEL_11:
          if (icu::CollationFastLatinBuilder::encodeCharCEs(this, a3))
          {
            v3 = icu::CollationFastLatinBuilder::encodeContractions(this, a3) != 0;
LABEL_14:
            icu::UVector64::removeAllElements(this + 7192);
            icu::UVector64::removeAllElements(this + 7224);
            return v3;
          }

LABEL_13:
          v3 = 0;
          goto LABEL_14;
        }

        *(this + 1823) = *(this + 1821);
        icu::CollationFastLatinBuilder::resetCEs(this);
        icu::CollationFastLatinBuilder::getCEs(this, a2, a3);
        if (icu::CollationFastLatinBuilder::encodeUniqueCEs(this, a3))
        {
          if (*(this + 7296))
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }
      }
    }
  }

  return 0;
}

uint64_t icu::CollationFastLatinBuilder::loadGroups(icu::CollationFastLatinBuilder *this, const icu::CollationData *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v11 = v3;
  v12 = v4;
  *(this + 1842) = 5;
  v9 = 517;
  icu::UnicodeString::doAppend(this + 7304, &v9, 0, 1);
  v8 = 0;
  while (1)
  {
    result = icu::CollationData::getLastPrimaryForGroup(a2, v8 | 0x1000);
    *(this + v8 + 1816) = result;
    if (!result)
    {
      break;
    }

    v10 = 0;
    icu::UnicodeString::doAppend(this + 7304, &v10, 0, 1);
    if (++v8 == 4)
    {
      *(this + 1820) = icu::CollationData::getFirstPrimaryForGroup(a2, 0x1004u);
      *(this + 1821) = icu::CollationData::getFirstPrimaryForGroup(a2, 0x19u);
      *(this + 1822) = icu::CollationData::getLastPrimaryForGroup(a2, 0x19u);
      return *(this + 1820) && *(this + 1821) != 0;
    }
  }

  return result;
}

uint64_t icu::CollationFastLatinBuilder::getCEs(uint64_t this, const icu::CollationData *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return this;
  }

  v5 = this;
  v6 = 0;
  v7 = 24;
  while (v6 == 384)
  {
    v6 = 0x2000;
LABEL_7:
    v8 = v6;
    v9 = sub_1952C6CA0(a2, v6);
    v10 = a2;
    if (v9 == 192)
    {
      v10 = *(a2 + 4);
      v9 = sub_1952C6CA0(v10, v8);
    }

    this = icu::CollationFastLatinBuilder::getCEsFromCE32(v5, v10, v8, v9, a3);
    if (this)
    {
      v11 = *(v5 + 8);
      *(v5 + v7) = v11;
      icu::CollationFastLatinBuilder::addUniqueCE(v5, v11, a3);
      this = icu::CollationFastLatinBuilder::addUniqueCE(v5, *(v5 + 16), a3);
      if (v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *(v5 + 8) = xmmword_1954881C0;
      *(v5 + v7) = xmmword_1954881C0;
      if (v8)
      {
        goto LABEL_16;
      }
    }

    v12 = *(v5 + 8);
    if (v12 == 0x101000100 || (v12 & 0xFFFFFFFF00000000) != 0x100000000)
    {
      this = icu::CollationFastLatinBuilder::addContractionEntry(v5, 511, v12, *(v5 + 16), a3);
      *(v5 + 24) = xmmword_1954881D0;
    }

LABEL_16:
    v6 = v8 + 1;
    v7 += 16;
  }

  if (v6 != 8256)
  {
    goto LABEL_7;
  }

  v13 = *(v5 + 7200);
  v14 = v13 + 1;
  if (v13 >= -1 && *(v5 + 7204) > v13)
  {
LABEL_21:
    *(*(v5 + 7216) + 8 * v13) = 511;
    *(v5 + 7200) = v14;
  }

  else
  {
    this = icu::UVector64::expandCapacity((v5 + 7192), v14, a3);
    if (this)
    {
      v13 = *(v5 + 7200);
      v14 = v13 + 1;
      goto LABEL_21;
    }
  }

  return this;
}

void *icu::CollationFastLatinBuilder::encodeUniqueCEs(void **this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  free(this[907]);
  result = malloc_type_malloc(2 * *(this + 1808), 0x1000040BDFB0063uLL);
  this[907] = result;
  if (result)
  {
    v23 = a2;
    if (*(this + 1808) >= 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = *(this + 1816);
      while (1)
      {
        v13 = *(this[906] + v5);
        v14 = HIDWORD(v13);
        if (v7 == HIDWORD(v13))
        {
          v15 = v8;
          v14 = v7;
          v16 = v6;
          goto LABEL_30;
        }

        if (v12 >= HIDWORD(v13))
        {
          v16 = v6;
        }

        else
        {
          v25 = v10;
          v26 = v9;
          v17 = v6;
          v18 = v6 <= 3 ? 3 : v6;
          v24 = v18 + 1;
          if (v6 <= 3)
          {
            v17 = 3;
          }

          v19 = v17 - v6;
          v20 = this + v6 + 1817;
          while (1)
          {
            v6 = (v6 + 1);
            icu::UnicodeString::setCharAt((this + 913), v6, v11);
            if (!v19)
            {
              break;
            }

            v21 = *v20++;
            v12 = v21;
            --v19;
            if (v21 >= HIDWORD(v13))
            {
              v16 = v6;
              v10 = v25;
              v9 = v26;
              goto LABEL_20;
            }
          }

          v12 = -1;
          v10 = v25;
          v9 = v26;
          v16 = v24;
        }

LABEL_20:
        if (*(this + 1823) <= HIDWORD(v13))
        {
          break;
        }

        if (v11)
        {
          if (v11 > 0xFF7)
          {
            v22 = 1;
LABEL_54:
            v14 = v7;
            goto LABEL_58;
          }

          v9 = 0;
          v11 += 8;
LABEL_28:
          v15 = 1280;
          v10 = 160;
          goto LABEL_30;
        }

        v9 = 0;
        v15 = 1280;
        v10 = 160;
        v11 = 3072;
LABEL_30:
        v8 = WORD1(v13);
        if (WORD1(v13) == v15)
        {
          v8 = v15;
        }

        else
        {
          if (!v11)
          {
            if (!v10)
            {
              v9 = 0;
              v10 = 384;
              goto LABEL_32;
            }

            if (v10 > 0x3DF)
            {
              v11 = 0;
LABEL_57:
              v22 = 1;
              v8 = v15;
              goto LABEL_58;
            }

            goto LABEL_50;
          }

          if (BYTE3(v13) > 4u)
          {
            if (WORD1(v13) != 1280)
            {
              if (v10 < 0xC0)
              {
                v9 = 0;
                v10 = 192;
                goto LABEL_32;
              }

              if (v10 > 0x15F)
              {
                goto LABEL_57;
              }

              goto LABEL_50;
            }

            v9 = 0;
            v8 = 1280;
            v10 = 160;
          }

          else
          {
            if (v10 != 160)
            {
              if (v10 > 0x7F)
              {
                goto LABEL_57;
              }

LABEL_50:
              v9 = 0;
              v10 += 32;
              goto LABEL_32;
            }

            v10 = 0;
            v9 = 0;
          }
        }

LABEL_32:
        if ((v13 & 0x3F3F) < 0x501)
        {
          goto LABEL_35;
        }

        if (v9 <= 6)
        {
          ++v9;
LABEL_35:
          v22 = v9 | v11;
          if (v11 - 3072 > 0x3F8)
          {
            v22 = v10 | v11 | v9;
          }

          goto LABEL_58;
        }

        v22 = 1;
LABEL_58:
        *(this[907] + v5++) = v22;
        v6 = v16;
        v7 = v14;
        if (v5 >= *(this + 1808))
        {
          return (*v23 < U_ILLEGAL_ARGUMENT_ERROR);
        }
      }

      if (v11 < 0x1000)
      {
        v9 = 0;
        v15 = 1280;
        v10 = 160;
        v11 = 4096;
        goto LABEL_30;
      }

      if (v11 >> 11 > 0x1E)
      {
        v22 = 1;
        *(this + 7296) = 1;
        goto LABEL_54;
      }

      v9 = 0;
      v11 += 1024;
      goto LABEL_28;
    }

    return (*v23 < U_ILLEGAL_ARGUMENT_ERROR);
  }

  else
  {
    *a2 = U_MEMORY_ALLOCATION_ERROR;
  }

  return result;
}

uint64_t icu::CollationFastLatinBuilder::resetCEs(icu::CollationFastLatinBuilder *this)
{
  icu::UVector64::removeAllElements(this + 7192);
  result = icu::UVector64::removeAllElements(this + 7224);
  *(this + 7296) = 0;
  v3 = *(this + 1842);
  v4 = *(this + 3656);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = (v4 & 1) == 0;
  }

  if (v5)
  {
    if ((v4 & 0x8000) != 0)
    {
      v6 = *(this + 1829);
    }

    else
    {
      v6 = v4 >> 5;
    }

    if (v6 > v3)
    {
      if (v3 > 1023)
      {
        *(this + 3656) = v4 | 0xFFE0;
        *(this + 1829) = v3;
      }

      else
      {
        *(this + 3656) = *(this + 3656) & 0x1F | (32 * v3);
      }
    }
  }

  else
  {

    return icu::UnicodeString::unBogus(this + 7304);
  }

  return result;
}

BOOL icu::CollationFastLatinBuilder::encodeCharCEs(icu::CollationFastLatinBuilder *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v21 = v2;
  v22 = v3;
  if (*(this + 3656) < 0)
  {
    v7 = *(this + 1829);
  }

  else
  {
    v7 = *(this + 3656) >> 5;
  }

  v8 = 448;
  do
  {
    v18 = 0;
    icu::UnicodeString::doAppend(this + 7304, &v18, 0, 1);
    --v8;
  }

  while (v8);
  if (*(this + 3656) < 0)
  {
    v9 = *(this + 1829);
  }

  else
  {
    v9 = *(this + 3656) >> 5;
  }

  v10 = -7168;
  do
  {
    v11 = *(this + v10 + 7192);
    if (v11 == 0x101000100 || (v11 & 0xFFFFFFFF00000000) != 0x100000000)
    {
      v13 = icu::CollationFastLatinBuilder::encodeTwoCEs(this, v11, *(this + v10 + 7200));
      v14 = v13;
      if (v13 >= 0x10000)
      {
        if (*(this + 3656) < 0)
        {
          v15 = *(this + 1829);
        }

        else
        {
          v15 = *(this + 3656) >> 5;
        }

        v16 = v15 - v9;
        if (v15 - v9 <= 1023)
        {
          v19 = HIWORD(v13);
          v17 = icu::UnicodeString::doAppend(this + 7304, &v19, 0, 1);
          v20 = v14;
          icu::UnicodeString::doAppend(v17, &v20, 0, 1);
          v14 = v16 | 0x800;
        }

        else
        {
          v14 = 1;
        }
      }

      icu::UnicodeString::setCharAt((this + 7304), v7, v14);
    }

    ++v7;
    v10 += 16;
  }

  while (v10);
  return *a2 < U_ILLEGAL_ARGUMENT_ERROR;
}

uint64_t icu::CollationFastLatinBuilder::encodeContractions(icu::CollationFastLatinBuilder *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v36 = v2;
  v37 = v3;
  if (*(this + 3656) < 0)
  {
    v6 = *(this + 1829);
  }

  else
  {
    v6 = *(this + 3656) >> 5;
  }

  v7 = 0;
  v8 = *(this + 1842);
  v27 = v6;
  v28 = v8;
  do
  {
    v9 = *(this + 2 * v7 + 3);
    if (v9 != 0x101000100 && (v9 & 0xFFFFFFFF00000000) == 0x100000000)
    {
      if (*(this + 3656) < 0)
      {
        v11 = *(this + 1829);
      }

      else
      {
        v11 = *(this + 3656) >> 5;
      }

      v12 = v11 - v8 - 448;
      if (v12 >= 1024)
      {
        icu::UnicodeString::setCharAt((this + 7304), *(this + 1842) + v7, 1);
        goto LABEL_34;
      }

      v13 = *(this + 2 * v7 + 3) & 0x7FFFFFFFLL;
      for (i = 1; ; i = 0)
      {
        v15 = *(this + 1800);
        if (v13 >= v15)
        {
          LOWORD(v16) = 0;
        }

        else
        {
          v16 = *(*(this + 902) + 8 * v13);
          if (((v16 == 511) & ~i) != 0)
          {
            icu::UnicodeString::setCharAt((this + 7304), *(this + 1842) + v7, v12 | 0x400);
            v8 = v28;
            break;
          }
        }

        if (v15 <= v13 + 1)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(*(this + 902) + 8 * v13 + 8);
        }

        if (v15 <= v13 + 2)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(*(this + 902) + 8 * v13 + 16);
        }

        v19 = icu::CollationFastLatinBuilder::encodeTwoCEs(this, v17, v18);
        if (v19 == 1)
        {
          v29 = v16 | 0x200;
          v20 = this + 7304;
          v21 = &v29;
        }

        else
        {
          v22 = v19;
          v23 = HIWORD(v19);
          if (HIWORD(v19))
          {
            v32 = v16 | 0x600;
            icu::UnicodeString::doAppend(this + 7304, &v32, 0, 1);
            v33 = v23;
            v20 = icu::UnicodeString::doAppend(this + 7304, &v33, 0, 1);
            v34 = v22;
            v21 = &v34;
          }

          else
          {
            v30 = v16 | 0x400;
            icu::UnicodeString::doAppend(this + 7304, &v30, 0, 1);
            v31 = v22;
            v20 = this + 7304;
            v21 = &v31;
          }
        }

        icu::UnicodeString::doAppend(v20, v21, 0, 1);
        v13 += 3;
      }
    }

LABEL_34:
    ++v7;
  }

  while (v7 != 448);
  v24 = *(this + 3656);
  if (*(this + 3656) < 0)
  {
    v25 = *(this + 1829);
  }

  else
  {
    v25 = v24 >> 5;
  }

  if (v25 > v27)
  {
    v35 = 511;
    icu::UnicodeString::doAppend(this + 7304, &v35, 0, 1);
    LOWORD(v24) = *(this + 3656);
  }

  if ((v24 & 1) == 0)
  {
    return 1;
  }

  result = 0;
  *a2 = U_MEMORY_ALLOCATION_ERROR;
  return result;
}

BOOL icu::CollationFastLatinBuilder::inSameGroup(icu::CollationFastLatinBuilder *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 1823);
  if (v3 <= a2)
  {
    return v3 <= a3;
  }

  if (v3 <= a3)
  {
    return 0;
  }

  v4 = *(this + 1819);
  v5 = v4 < a3 && v4 < a2;
  if (v4 >= a2 && v4 >= a3)
  {
    v7 = *(this + 1816);
    if (v7 >= a2)
    {
      return v7 >= a3;
    }

    v8 = (this + 7268);
    while (v7 < a3)
    {
      v9 = *v8++;
      v7 = v9;
      if (v9 >= a2)
      {
        return v7 >= a3;
      }
    }

    return 0;
  }

  return v5;
}

uint64_t icu::CollationFastLatinBuilder::getCEsFromCE32(icu::CollationFastLatinBuilder *this, const icu::CollationData *a2, icu::Collation *a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  FinalCE32 = icu::CollationData::getFinalCE32(a2, a4);
  v11 = FinalCE32;
  *(this + 2) = 0;
  v12 = FinalCE32 & 0xF;
  if ((~FinalCE32 & 0xC0) != 0 || (v12 - 3) >= 0xFFFFFFFE)
  {
    v19 = v12 == 1;
    v14 = ((FinalCE32 & 0xFFFFFF00) << 32) | 0x5000500;
    if (!v19)
    {
      v14 = FinalCE32 & 0xFFFFFF00;
    }

    if (FinalCE32 <= 0xBFu)
    {
      v13 = (FinalCE32 << 16) & 0xFF000000 | (((FinalCE32 & 0xFFFF0000) >> 16) << 48) | (FinalCE32 << 8);
    }

    else
    {
      v13 = v14;
    }

    *(this + 1) = v13;
LABEL_17:
    if (!v13)
    {
      return *(this + 2) == 0;
    }

    goto LABEL_18;
  }

  result = 0;
  if (v12 <= 5)
  {
    if (v12 == 4)
    {
      v13 = (v11 >> 8) & 0xFF00 | (((v11 & 0xFF000000) >> 24) << 56) | 0x5000000;
      *(this + 1) = v13;
      *(this + 2) = (BYTE1(v11) << 24) | 0x500u;
      goto LABEL_18;
    }

    if (v12 != 5)
    {
      return result;
    }

    v20 = (v11 >> 8) & 0x1F;
    if (v20 > 2)
    {
      return 0;
    }

    v21 = (*(a2 + 1) + 4 * (v11 >> 13));
    v13 = sub_1952D6514(*v21);
    *(this + 1) = v13;
    if (v20 == 2)
    {
      *(this + 2) = sub_1952D6514(v21[1]);
      v13 = *(this + 1);
    }

    goto LABEL_17;
  }

  if (v12 == 6)
  {
    v22 = (v11 >> 8) & 0x1F;
    if (v22 > 2)
    {
      return 0;
    }

    v23 = (*(a2 + 2) + 8 * (v11 >> 13));
    v13 = *v23;
    *(this + 1) = *v23;
    if (v22 == 2)
    {
      *(this + 2) = v23[1];
    }

    goto LABEL_17;
  }

  if (v12 == 9)
  {

    return icu::CollationFastLatinBuilder::getCEsFromContractionCE32(this, a2, v11, a5);
  }

  if (v12 != 14)
  {
    return result;
  }

  v13 = (icu::Collation::getThreeBytePrimaryForOffsetData(a3, *(*(a2 + 2) + 8 * (v11 >> 13))) << 32) | 0x5000500;
  *(this + 1) = v13;
LABEL_18:
  if (!HIDWORD(v13) || *(this + 1822) < HIDWORD(v13))
  {
    return 0;
  }

  result = 0;
  v15 = *(this + 1823);
  v17 = v13 >> 14 != 5120 && v15 > HIDWORD(v13);
  if ((v13 & 0x3F00) >= 0x500 && !v17)
  {
    v18 = *(this + 2);
    if (!v18)
    {
      return ((v18 | v13) & 0xC0) == 0;
    }

    if (HIDWORD(v18))
    {
      result = icu::CollationFastLatinBuilder::inSameGroup(this, HIDWORD(v13), HIDWORD(v18));
      if (!result)
      {
        return result;
      }

      if (v18 < 0x10000 || v15 > HIDWORD(v18) && (v18 & 0xFFFFC000) != 0x5000000)
      {
        return 0;
      }

      goto LABEL_32;
    }

    result = 0;
    if (v15 <= HIDWORD(v13) && v18 >= 0x10000)
    {
LABEL_32:
      if ((v18 & 0x3F00) >= 0x500)
      {
        return ((v18 | v13) & 0xC0) == 0;
      }

      return 0;
    }
  }

  return result;
}

_DWORD *icu::CollationFastLatinBuilder::addUniqueCE(_DWORD *this, unint64_t a2, UErrorCode *a3)
{
  if (HIDWORD(a2) == 1 || a2 == 0 || *a3 > U_ZERO_ERROR)
  {
    return this;
  }

  v5 = a2 & 0xFFFFFFFFFFFF3FFFLL;
  v6 = this[1808];
  if (!v6)
  {
    v8 = -1;
    return icu::UVector64::insertElementAt(this + 1806, v5, ~v8, a3);
  }

  v7 = *(this + 906);
  v8 = v6 / 2;
  v9 = *(v7 + 8 * (v6 / 2));
  if (v9 == v5)
  {
LABEL_21:
    if (v8 < 0)
    {
      return icu::UVector64::insertElementAt(this + 1806, v5, ~v8, a3);
    }

    return this;
  }

  v10 = 0;
  while (v9 <= v5)
  {
    if (v8 == v10)
    {
      v8 = -2 - v8;
      goto LABEL_21;
    }

    v10 = v8;
LABEL_17:
    v8 = (v6 + v10) / 2;
    v9 = *(v7 + 8 * v8);
    if (v9 == v5)
    {
      goto LABEL_21;
    }
  }

  if (v8 != v10)
  {
    v6 = v8;
    goto LABEL_17;
  }

  v8 = ~v8;
  if (v8 < 0)
  {
    return icu::UVector64::insertElementAt(this + 1806, v5, ~v8, a3);
  }

  return this;
}

_DWORD *icu::CollationFastLatinBuilder::addContractionEntry(icu::CollationFastLatinBuilder *this, int a2, unint64_t a3, unint64_t a4, UErrorCode *a5)
{
  v10 = *(this + 1800);
  v11 = v10 + 1;
  if (v10 >= -1 && *(this + 1801) > v10)
  {
    goto LABEL_5;
  }

  v12 = icu::UVector64::expandCapacity((this + 7192), v11, a5);
  v10 = *(this + 1800);
  if (v12)
  {
    v11 = v10 + 1;
LABEL_5:
    *(*(this + 902) + 8 * v10) = a2;
    *(this + 1800) = v11;
    v10 = v11;
  }

  v13 = v10 + 1;
  if (v10 >= -1 && *(this + 1801) > v10)
  {
    goto LABEL_10;
  }

  v14 = icu::UVector64::expandCapacity((this + 7192), v13, a5);
  v10 = *(this + 1800);
  if (v14)
  {
    v13 = v10 + 1;
LABEL_10:
    *(*(this + 902) + 8 * v10) = a3;
    *(this + 1800) = v13;
    v10 = v13;
  }

  v15 = v10 + 1;
  if (v10 < -1 || *(this + 1801) <= v10)
  {
    if (!icu::UVector64::expandCapacity((this + 7192), v15, a5))
    {
      goto LABEL_16;
    }

    v10 = *(this + 1800);
    v15 = v10 + 1;
  }

  *(*(this + 902) + 8 * v10) = a4;
  *(this + 1800) = v15;
LABEL_16:
  icu::CollationFastLatinBuilder::addUniqueCE(this, a3, a5);

  return icu::CollationFastLatinBuilder::addUniqueCE(this, a4, a5);
}

unint64_t sub_1952D6514(int a1)
{
  v1 = a1 & 0xFFFFFF00;
  if ((a1 & 0xF) == 1)
  {
    v1 = (v1 << 32) | 0x5000500;
  }

  if (a1 <= 0xBFu)
  {
    return (a1 << 16) & 0xFF000000 | (((a1 & 0xFFFF0000) >> 16) << 48) | (a1 << 8);
  }

  else
  {
    return v1;
  }
}

uint64_t icu::CollationFastLatinBuilder::getCEsFromContractionCE32(icu::CollationFastLatinBuilder *this, const icu::CollationData *a2, unsigned int a3, UErrorCode *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    v4 = 0;
    goto LABEL_38;
  }

  v8 = (*(a2 + 3) + 2 * (a3 >> 13));
  v9 = *(this + 1800);
  if (icu::CollationFastLatinBuilder::getCEsFromCE32(this, a2, -1, v8[1] | (*v8 << 16), a4))
  {
    v10 = *(this + 1);
    v11 = *(this + 2);
    v12 = this;
  }

  else
  {
    v12 = this;
    v10 = 0x101000100;
    v11 = 0;
  }

  icu::CollationFastLatinBuilder::addContractionEntry(v12, 511, v10, v11, a4);
  v32 = 0;
  v30 = 0u;
  *v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  v26 = (v8 + 2);
  icu::UCharsTrie::Iterator::Iterator(v27, &v26, 0, a4);
  v25 = v26;
  if (!icu::UCharsTrie::Iterator::next(&v25, v27, a4))
  {
    goto LABEL_34;
  }

  v13 = 0;
  v14 = 0xFFFFFFFFLL;
  do
  {
    while (1)
    {
      v15 = v28;
      v16 = v28 >> 5;
      v17 = DWORD1(v28);
      if ((v28 & 0x8000u) == 0)
      {
        v18 = v28 >> 5;
      }

      else
      {
        v18 = DWORD1(v28);
      }

      if (!v18)
      {
        goto LABEL_31;
      }

      v19 = v29;
      if ((v28 & 2) != 0)
      {
        v19 = &v28 + 1;
      }

      v20 = *v19;
      if (v20 >= 0x180)
      {
        break;
      }

LABEL_18:
      if (v20 == v14)
      {
        if (!v13)
        {
          goto LABEL_31;
        }

        v20 = v14;
LABEL_30:
        icu::CollationFastLatinBuilder::addContractionEntry(this, v20, 0x101000100uLL, 0, a4);
        v13 = 0;
        v14 = v20;
        goto LABEL_31;
      }

      if (v13)
      {
        icu::CollationFastLatinBuilder::addContractionEntry(this, v14, *(this + 1), *(this + 2), a4);
        LOWORD(v15) = v28;
        v17 = DWORD1(v28);
        v16 = v28 >> 5;
      }

      if (v15 >= 0)
      {
        v21 = v16;
      }

      else
      {
        v21 = v17;
      }

      if (v21 != 1 || !icu::CollationFastLatinBuilder::getCEsFromCE32(this, a2, -1, v31[3], a4))
      {
        goto LABEL_30;
      }

      v13 = 1;
      v14 = v20;
      if (!icu::UCharsTrie::Iterator::next(v22, v27, a4))
      {
        goto LABEL_33;
      }
    }

    if ((v20 & 0xFFC0) == 0x2000 && v20 >> 7 >= 0x3D)
    {
      v20 = (v20 - 7808);
      goto LABEL_18;
    }

LABEL_31:
    ;
  }

  while (icu::UCharsTrie::Iterator::next(v15, v27, a4));
  LODWORD(v20) = v14;
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_33:
  icu::CollationFastLatinBuilder::addContractionEntry(this, v20, *(this + 1), *(this + 2), a4);
LABEL_34:
  if (*a4 <= 0)
  {
    *(this + 1) = v9 | 0x180000000;
    *(this + 2) = 0;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  icu::UCharsTrie::Iterator::~Iterator(v27);
LABEL_38:
  v23 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t icu::CollationFastLatinBuilder::getMiniCE(icu::CollationFastLatinBuilder *this, uint64_t a2)
{
  v2 = *(this + 1808);
  if (v2)
  {
    v3 = a2 & 0xFFFFFFFFFFFF3FFFLL;
    v4 = *(this + 906);
    v5 = v2 / 2;
    v6 = *(v4 + 8 * (v2 / 2));
    if (v6 != (a2 & 0xFFFFFFFFFFFF3FFFLL))
    {
      v7 = 0;
      do
      {
        if (v6 <= v3)
        {
          if (v5 == v7)
          {
            v5 = -2 - v5;
            return *(*(this + 907) + 2 * v5);
          }

          v7 = v5;
        }

        else
        {
          if (v5 == v7)
          {
            v5 = ~v5;
            return *(*(this + 907) + 2 * v5);
          }

          v2 = v5;
        }

        v5 = (v2 + v7) / 2;
        v6 = *(v4 + 8 * v5);
      }

      while (v6 != v3);
    }
  }

  else
  {
    v5 = -1;
  }

  return *(*(this + 907) + 2 * v5);
}

uint64_t icu::CollationFastLatinBuilder::encodeTwoCEs(icu::CollationFastLatinBuilder *this, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (a2 == 0x101000100)
    {
      return 1;
    }

    MiniCE = icu::CollationFastLatinBuilder::getMiniCE(this, a2);
    if (MiniCE == 1)
    {
      return 1;
    }

    v7 = MiniCE;
    v8 = ((v3 >> 11) & 0x18) + 8;
    if (MiniCE <= 0xFFF)
    {
      v8 = 0;
    }

    v3 = v8 | MiniCE;
    if (a3)
    {
      v9 = icu::CollationFastLatinBuilder::getMiniCE(this, a3);
      if (v9 == 1)
      {
        return 1;
      }

      v11 = a3 & 0xC000;
      if (v7 < 0x1000 || (v3 & 0x3E0) != 0xA0 || (v9 & 0x3E0) < 0x180 || v9 & 7 | v11)
      {
        v12 = (v11 >> 11) + 8;
        if (v9 - 4096 >= 0xFFFFF3E1)
        {
          v12 = 0;
        }

        return v12 | (v3 << 16) | v9;
      }

      else
      {
        return v9 & 0x3E0 | v3 & 0xFC1F;
      }
    }
  }

  return v3;
}

void icu::CollationIterator::CEBuffer::~CEBuffer(void **this)
{
  if (*(this + 20))
  {
    free(this[1]);
  }
}

{
  if (*(this + 20))
  {
    free(this[1]);
  }
}

uint64_t icu::CollationIterator::CEBuffer::ensureAppendCapacity(icu::CollationIterator::CEBuffer *this, int a2, UErrorCode *a3)
{
  v3 = *(this + 4);
  v4 = *this;
  v5 = *this + a2;
  if (v5 <= v3)
  {
    return 1;
  }

  if (*a3 > 0)
  {
    return 0;
  }

  do
  {
    v9 = v3;
    if (v3 >= 1000)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v3 <<= v10;
  }

  while (v3 < v5);
  if (v9 >= 1 && (v11 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL)) != 0)
  {
    v12 = v11;
    if (v4 >= 1)
    {
      v13 = *(this + 4);
      if (v13 >= v4)
      {
        v13 = v4;
      }

      if (v13 >= v3)
      {
        v13 = v3;
      }

      memcpy(v11, *(this + 1), 8 * v13);
    }

    if (*(this + 20))
    {
      free(*(this + 1));
    }

    *(this + 1) = v12;
    *(this + 4) = v3;
    result = 1;
    *(this + 20) = 1;
  }

  else
  {
    result = 0;
    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  return result;
}

uint64_t icu::CollationIterator::CollationIterator(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0938400;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  v3 = (a1 + 24);
  *(a1 + 32) = a1 + 48;
  *(a1 + 40) = 40;
  *(a1 + 44) = 0;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = 0;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 388) = *(a2 + 388);
  v11 = U_ZERO_ERROR;
  v4 = *(a2 + 24);
  if (v4 >= 1 && icu::CollationIterator::CEBuffer::ensureAppendCapacity((a1 + 24), *(a2 + 24), &v11))
  {
    v6 = *(a2 + 32);
    v7 = *(a1 + 32);
    v8 = v4;
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
    *v3 = v4;
  }

  else
  {
    *(a1 + 368) = 0;
  }

  return a1;
}

void icu::CollationIterator::~CollationIterator(icu::CollationIterator *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F0938400;
  v3 = *(this + 47);
  if (v3)
  {
    icu::UnicodeString::~UnicodeString(a2, (v3 + 72));
    icu::UnicodeString::~UnicodeString(v4, (v3 + 8));
    MEMORY[0x19A8B2600](v3, 0x10D2C4051426601);
  }

  if (*(this + 44))
  {
    free(*(this + 4));
  }

  icu::UObject::~UObject(this);
}

BOOL icu::CollationIterator::operator==(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    v5 = *(a1 + 24);
    if (v5 == *(a2 + 24) && *(a1 + 368) == *(a2 + 368) && *(a1 + 384) == *(a2 + 384) && *(a1 + 388) == *(a2 + 388))
    {
      if (v5 < 1)
      {
        return 1;
      }

      else
      {
        v6 = *(a1 + 32);
        v7 = *(a2 + 32);
        v8 = v5 - 1;
        do
        {
          v10 = *v6++;
          v9 = v10;
          v11 = *v7++;
          result = v9 == v11;
        }

        while (v9 == v11 && v8-- != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t icu::CollationIterator::reset(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 368) = 0;
  v1 = *(this + 376);
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 16) & 0x1E;
    }

    *(v1 + 16) = v2;
    *(v1 + 136) = 0;
  }

  return this;
}

uint64_t icu::CollationIterator::fetchCEs(icu::CollationIterator *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    do
    {
      if (sub_1952C5F10(this, a2) == 0x101000100)
      {
        break;
      }

      *(this + 92) = *(this + 6);
    }

    while (*a2 < 1);
  }

  return *(this + 6);
}

uint64_t icu::CollationIterator::handleNextCE32(uint64_t **this, int *a2, UErrorCode *a3)
{
  v5 = ((*this)[6])(this, a3);
  *a2 = v5;
  if (v5 < 0)
  {
    return 192;
  }

  v6 = v5;
  v7 = this[2];

  return sub_1952C6CA0(v7, v6);
}

uint64_t icu::CollationIterator::getCE32FromBuilderData(icu::CollationIterator *this, unsigned int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    *a3 = U_INTERNAL_PROGRAM_ERROR;
  }

  return 0;
}

uint64_t icu::CollationIterator::nextCEFromCE32(icu::CollationIterator *this, const icu::CollationData *a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  --*(this + 6);
  v7 = 1;
  icu::CollationIterator::appendCEsFromCE32(this, a2, a3, a4, 1, a5);
  if (*a5 <= 0)
  {
    v8 = *(this + 92);
    *(this + 92) = v8 + 1;
    return *(*(this + 4) + 8 * v8);
  }

  return v7;
}

void icu::CollationIterator::appendCEsFromCE32(icu::CollationIterator *this, const icu::CollationData *a2, uint64_t a3, uint64_t a4, int a5, UErrorCode *a6)
{
  v7 = a4;
  if ((~a4 & 0xC0) == 0)
  {
    while (1)
    {
      switch(v7 & 0xF)
      {
        case 1:
          v43 = *(this + 6);
          if (v43 < 40)
          {
            goto LABEL_78;
          }

          if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 24), 1, a6))
          {
            v43 = *(this + 6);
LABEL_78:
            v44 = (((v7 & 0xFFFFFF00) >> 8) << 40) | 0x5000500;
            *(this + 6) = v43 + 1;
            v45 = *(this + 4);
            goto LABEL_122;
          }

          return;
        case 2:
          v32 = *(this + 6);
          if (v32 < 40)
          {
            goto LABEL_74;
          }

          if (!icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 24), 1, a6))
          {
            return;
          }

          v32 = *(this + 6);
LABEL_74:
          v33 = v7 & 0xFFFFFF00;
          goto LABEL_60;
        case 4:
          if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 24), 2, a6))
          {
            v35 = *(this + 6);
            v36 = (*(this + 4) + 8 * v35);
            *v36 = (v7 >> 8) & 0xFF00 | (((v7 & 0xFF000000) >> 24) << 56) | 0x5000000;
            v36[1] = (BYTE1(v7) << 24) | 0x500u;
            *(this + 6) = v35 + 2;
          }

          return;
        case 5:
          v46 = *(a2 + 1);
          if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 24), (v7 >> 8) & 0x1F, a6))
          {
            v47 = (v46 + 4 * (v7 >> 13));
            v48 = *(this + 6);
            v49 = (*(this + 4) + 8 * v48);
            v50 = v48 + 1;
            v51 = ((v7 >> 8) & 0x1F) + 1;
            do
            {
              v53 = *v47++;
              v52 = v53;
              v54 = v53;
              v55 = v53 & 0xFFFFFF00;
              if ((v53 & 0xF) == 1)
              {
                v55 = (v55 << 32) | 0x5000500;
              }

              v56 = (v52 << 16) & 0xFF000000 | (((v52 & 0xFFFF0000) >> 16) << 48) | (v54 << 8);
              if (v54 > 0xBF)
              {
                v56 = v55;
              }

              *(this + 6) = v50;
              *v49++ = v56;
              ++v50;
              --v51;
            }

            while (v51 > 1);
          }

          return;
        case 6:
          v37 = *(a2 + 2);
          if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 24), (v7 >> 8) & 0x1F, a6))
          {
            v38 = (v37 + 8 * (v7 >> 13));
            v39 = *(this + 6);
            v40 = (*(this + 4) + 8 * v39);
            v41 = ((v7 >> 8) & 0x1F) + 1;
            do
            {
              v42 = *v38++;
              *v40++ = v42;
              LODWORD(v39) = v39 + 1;
              --v41;
            }

            while (v41 > 1);
            *(this + 6) = v39;
          }

          return;
        case 7:
          v12 = (*(*this + 120))(this, v7, a6);
          if (*a6 > 0)
          {
            return;
          }

          CE32FromPrefix = v12;
          if (v12 != 192)
          {
            goto LABEL_31;
          }

          a2 = *(*(this + 2) + 32);
          CE32FromContraction = sub_1952C6CA0(a2, a3);
          goto LABEL_30;
        case 8:
          if (a5)
          {
            (*(*this + 104))(this, 1, a6);
            CE32FromPrefix = icu::CollationIterator::getCE32FromPrefix(this, a2, v7, a6);
            (*(*this + 96))(this, 1, a6);
            goto LABEL_31;
          }

          CE32FromContraction = icu::CollationIterator::getCE32FromPrefix(this, a2, v7, a6);
          goto LABEL_30;
        case 9:
          v24 = (*(a2 + 3) + 2 * (v7 >> 13));
          CE32FromPrefix = v24[1] | (*v24 << 16);
          if (!a5)
          {
            goto LABEL_31;
          }

          if (!*(this + 47) && (*(this + 96) & 0x80000000) != 0)
          {
            v28 = (*(*this + 48))(this, a6);
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_31;
            }

            v26 = v28;
            if ((v7 & 0x200) != 0)
            {
              if (v28 < 0x300 || (!HIWORD(v28) ? (v29 = v28) : (v29 = ((v28 >> 10) - 10304)), !icu::CollationFCD::lcccIndex[v29 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v29 >> 5]] >> v29) & 1) == 0))
              {
                (*(*this + 104))(this, 1, a6);
                goto LABEL_31;
              }
            }
          }

          else
          {
            SkippedCodePoint = icu::CollationIterator::nextSkippedCodePoint(this, a6);
            if ((SkippedCodePoint & 0x80000000) != 0)
            {
              goto LABEL_31;
            }

            v26 = SkippedCodePoint;
            if ((v7 & 0x200) != 0)
            {
              if (SkippedCodePoint < 0x300 || (!HIWORD(SkippedCodePoint) ? (v27 = SkippedCodePoint) : (v27 = ((SkippedCodePoint >> 10) - 10304)), !icu::CollationFCD::lcccIndex[v27 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v27 >> 5]] >> v27) & 1) == 0))
              {
                icu::CollationIterator::backwardNumSkipped(this, 1, a6);
                goto LABEL_31;
              }
            }
          }

          CE32FromContraction = icu::CollationIterator::nextCE32FromContraction(this, a2, v7, (v24 + 2), CE32FromPrefix, v26, a6);
          if (CE32FromContraction == 1)
          {
            return;
          }

LABEL_30:
          CE32FromPrefix = CE32FromContraction;
          goto LABEL_31;
        case 0xALL:
          if (*(this + 388))
          {

            icu::CollationIterator::appendNumericCEs(this, v7, a5, a6);
            return;
          }

          CE32FromPrefix = *(*(a2 + 1) + 4 * (v7 >> 13));
          goto LABEL_31;
        case 0xBLL:
          if (a5 && (*(*this + 80))(this))
          {
            v43 = *(this + 6);
            if (v43 < 40)
            {
LABEL_121:
              *(this + 6) = v43 + 1;
              v45 = *(this + 4);
              v44 = 0x101000100;
LABEL_122:
              *(v45 + 8 * v43) = v44;
            }

            else if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 24), 1, a6))
            {
              v43 = *(this + 6);
              goto LABEL_121;
            }

            return;
          }

          CE32FromPrefix = **(a2 + 1);
LABEL_31:
          v7 = CE32FromPrefix;
          if ((~CE32FromPrefix & 0xC0) != 0)
          {
            goto LABEL_56;
          }

          break;
        case 0xCLL:
          v18 = *(a2 + 5);
          v19 = a3 - 44032;
          v20 = (a3 - 44032) / 28;
          v21 = (a3 - 44032) % 28;
          v22 = v20 % 21;
          v23 = v19 / 588;
          if ((v7 & 0x100) != 0)
          {
            if (v21)
            {
              v57 = 3;
            }

            else
            {
              v57 = 2;
            }

            if (icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 24), v57, a6))
            {
              v58 = *(this + 6);
              v59 = *(v18 + 4 * v23);
              v60 = v59;
              v61 = v59 & 0xFFFFFF00;
              if ((v59 & 0xF) == 1)
              {
                v61 = ((v59 & 0xFFFFFF00) << 32) | 0x5000500;
              }

              v62 = (v59 << 16) & 0xFF000000 | (((v59 & 0xFFFF0000) >> 16) << 48) | (v59 << 8);
              if (v60 <= 0xBF)
              {
                v63 = v62;
              }

              else
              {
                v63 = v61;
              }

              v64 = *(this + 4);
              v65 = *(v18 + 4 * v22 + 76);
              v66 = v65 & 0xFFFFFF00;
              if ((v65 & 0xF) == 1)
              {
                v66 = ((v65 & 0xFFFFFF00) << 32) | 0x5000500;
              }

              v67 = (v65 << 16) & 0xFF000000 | (((v65 & 0xFFFF0000) >> 16) << 48);
              v68 = (v64 + 8 * v58);
              v69 = *(v18 + 4 * v22 + 76);
              v70 = v67 | (v69 << 8);
              if (v69 <= 0xBF)
              {
                v71 = v70;
              }

              else
              {
                v71 = v66;
              }

              *v68 = v63;
              v68[1] = v71;
              *(this + 6) = v58 + 2;
              if (v21)
              {
                v72 = *(v18 + 4 * v21 + 156);
                v73 = v72;
                v74 = v72 & 0xFFFFFF00;
                if ((v72 & 0xF) == 1)
                {
                  v74 = ((v72 & 0xFFFFFF00) << 32) | 0x5000500;
                }

                v75 = (v72 << 16) & 0xFF000000 | (((v72 & 0xFFFF0000) >> 16) << 48) | (v72 << 8);
                if (v73 > 0xBF)
                {
                  v75 = v74;
                }

                *(this + 6) = v58 + 3;
                *(v64 + 8 * (v58 + 2)) = v75;
              }
            }

            return;
          }

          icu::CollationIterator::appendCEsFromCE32(this, a2, -1, *(v18 + 4 * v23), a5, a6);
          icu::CollationIterator::appendCEsFromCE32(this, a2, -1, *(v18 + 4 * v22 + 76), a5, a6);
          if (!v21)
          {
            return;
          }

          CE32FromPrefix = *(v18 + 4 * v21 + 156);
          a3 = 0xFFFFFFFFLL;
          goto LABEL_31;
        case 0xDLL:
          v15 = (*(*this + 72))(this);
          if ((v15 & 0xFC00) == 0xDC00 && (a3 = (v15 + (a3 << 10) - 56613888), (v7 & 0x300) != 0))
          {
            if ((v7 & 0x300) == 0x100 || ((v16 = *a2, *(*a2 + 44) <= a3) ? (v17 = v16[12]) : (v17 = (v15 & 0x1F) + 4 * *(*v16 + 2 * (((a3 >> 5) & 0x3F) + *(*v16 + 2 * (a3 >> 11) + 4160)))), CE32FromPrefix = *(*(v16 + 2) + 4 * v17), CE32FromPrefix == 192))
            {
              a2 = *(a2 + 4);
              v30 = *a2;
              if (*(*a2 + 44) <= a3)
              {
                v31 = v30[12];
              }

              else
              {
                v31 = (v15 & 0x1F) + 4 * *(*v30 + 2 * (((a3 >> 5) & 0x3F) + *(*v30 + 2 * (a3 >> 11) + 4160)));
              }

              CE32FromPrefix = *(*(v30 + 2) + 4 * v31);
            }
          }

          else
          {
            CE32FromPrefix = 0xFFFFFFFFLL;
          }

          goto LABEL_31;
        case 0xELL:
          ThreeBytePrimaryForOffsetData = icu::Collation::getThreeBytePrimaryForOffsetData(a3, *(*(a2 + 2) + 8 * (v7 >> 13)));
          goto LABEL_114;
        case 0xFLL:
          if (a3 >> 11 == 27 && (*(*this + 88))(this))
          {
            LODWORD(CE32FromPrefix) = -195323;
            goto LABEL_56;
          }

          ThreeBytePrimaryForOffsetData = icu::Collation::unassignedPrimaryFromCodePoint(a3);
LABEL_114:
          v76 = ThreeBytePrimaryForOffsetData;
          v32 = *(this + 6);
          if (v32 < 40)
          {
            goto LABEL_117;
          }

          if (!icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 24), 1, a6))
          {
            return;
          }

          v32 = *(this + 6);
LABEL_117:
          v33 = (v76 << 32) | 0x5000500;
          goto LABEL_60;
        default:
          if (*a6 <= 0)
          {
            *a6 = U_INTERNAL_PROGRAM_ERROR;
          }

          return;
      }
    }
  }

  LODWORD(CE32FromPrefix) = a4;
LABEL_56:
  v32 = *(this + 6);
  if (v32 >= 40)
  {
    if (!icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 24), 1, a6))
    {
      return;
    }

    v32 = *(this + 6);
  }

  v33 = (CE32FromPrefix << 16) & 0xFF000000 | (((CE32FromPrefix & 0xFFFF0000) >> 16) << 48) | (CE32FromPrefix << 8);
LABEL_60:
  *(this + 6) = v32 + 1;
  *(*(this + 4) + 8 * v32) = v33;
}

uint64_t icu::CollationIterator::getCE32FromPrefix(icu::CollationIterator *this, const icu::CollationData *a2, unsigned int a3, UErrorCode *a4)
{
  v6 = 0;
  v7 = (*(a2 + 3) + 2 * (a3 >> 13));
  v8 = v7[1] | (*v7 << 16);
  v16[0] = 0;
  v16[1] = v7 + 2;
  v17 = v7 + 2;
  v18 = 0xFFFFFFFFLL;
  do
  {
    v9 = (*(*this + 56))(this, a4);
    if (v9 < 0)
    {
      break;
    }

    v10 = icu::UCharsTrie::nextForCodePoint(v16, v9);
    if (v10 >= 2)
    {
      v11 = v17 + 1;
      v12 = *v17;
      if (*v17 < 0)
      {
        v8 = v12 & 0x7FFF;
        if (v8 >= 0x4000)
        {
          if (v8 == 0x7FFF)
          {
            v14 = v17[1] << 16;
            v11 = v17 + 2;
          }

          else
          {
            v14 = (v8 << 16) - 0x40000000;
          }

          v8 = v14 | *v11;
        }
      }

      else
      {
        v13 = v12 >> 6;
        if (v13 > 0x100)
        {
          if (v13 > 0x1FE)
          {
            v8 = v17[2] | (v17[1] << 16);
          }

          else
          {
            v8 = (*v11 | ((v13 & 0x1FF) << 16)) - 16842752;
          }
        }

        else
        {
          v8 = v13 - 1;
        }
      }
    }

    v6 = (v6 + 1);
  }

  while ((v10 & 1) != 0);
  (*(*this + 96))(this, v6, a4);
  icu::UCharsTrie::~UCharsTrie(v16);
  return v8;
}

uint64_t icu::CollationIterator::nextSkippedCodePoint(icu::CollationIterator *this, UErrorCode *a2)
{
  v3 = *(this + 47);
  if (v3 && ((v4 = *(v3 + 136), *(v3 + 16) < 0) ? (v5 = *(v3 + 20)) : (v5 = *(v3 + 16) >> 5), v4 < v5))
  {
    result = icu::UnicodeString::char32At(v4, (v3 + 8), *(v3 + 136));
    if (result < 0x10000)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    *(v3 + 136) += v7;
  }

  else if (*(this + 96))
  {
    result = (*(*this + 48))(this, a2);
    v8 = *(this + 47);
    if (v8 && *(v8 + 16) >= 0x20u && (result & 0x80000000) == 0)
    {
      ++*(v8 + 136);
    }

    v9 = *(this + 96);
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v11 < 0 == v10 && (result & 0x80000000) == 0)
    {
      *(this + 96) = v11;
    }
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t icu::CollationIterator::backwardNumSkipped(icu::CollationIterator *this, uint64_t a2, UErrorCode *a3)
{
  v4 = a2;
  v6 = *(this + 47);
  if (v6 && *(v6 + 16) >= 0x20u)
  {
    v4 = sub_1952D8114(v6, a2);
  }

  result = (*(*this + 104))(this, v4, a3);
  v8 = *(this + 96);
  if ((v8 & 0x80000000) == 0)
  {
    *(this + 96) = v8 + v4;
  }

  return result;
}

uint64_t icu::CollationIterator::nextCE32FromContraction(icu::CollationIterator *a1, uint64_t *a2, __int16 a3, uint64_t a4, uint64_t CE32FromDiscontiguousContraction, int a6, UErrorCode *a7)
{
  v8 = a6;
  v26 = 0;
  *&v27 = a4;
  *(&v27 + 1) = a4;
  v28 = 0xFFFFFFFFLL;
  v12 = *(a1 + 47);
  if (v12 && *(v12 + 16) >= 0x20u)
  {
    *(v12 + 144) = a4;
    *(v12 + 152) = a4;
    *(v12 + 160) = -1;
  }

  v13 = icu::UCharsTrie::firstForCodePoint(&v26, a6);
  v14 = 1;
  v15 = 2;
  while (v13 >= 2)
  {
    v16 = (*(&v27 + 1) + 2);
    v17 = **(&v27 + 1);
    if (**(&v27 + 1) < 0)
    {
      CE32FromDiscontiguousContraction = v17 & 0x7FFF;
      if (CE32FromDiscontiguousContraction >= 0x4000)
      {
        if (CE32FromDiscontiguousContraction == 0x7FFF)
        {
          v20 = *(*(&v27 + 1) + 2) << 16;
          v16 = (*(&v27 + 1) + 4);
        }

        else
        {
          v20 = (CE32FromDiscontiguousContraction << 16) - 0x40000000;
        }

        CE32FromDiscontiguousContraction = v20 | *v16;
      }
    }

    else
    {
      v18 = v17 >> 6;
      if (v18 > 0x100)
      {
        if (v18 > 0x1FE)
        {
          CE32FromDiscontiguousContraction = *(*(&v27 + 1) + 4) | (*(*(&v27 + 1) + 2) << 16);
        }

        else
        {
          CE32FromDiscontiguousContraction = (*v16 | ((v18 & 0x1FF) << 16)) - 16842752;
        }
      }

      else
      {
        CE32FromDiscontiguousContraction = v18 - 1;
      }
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_35;
    }

    SkippedCodePoint = icu::CollationIterator::nextSkippedCodePoint(a1, a7);
    if ((SkippedCodePoint & 0x80000000) != 0)
    {
      goto LABEL_35;
    }

    v8 = SkippedCodePoint;
    v22 = *(a1 + 47);
    if (v22)
    {
      if (*(v22 + 16) >= 0x20u)
      {
        *(v22 + 144) = v27;
        *(v22 + 160) = v28;
      }
    }

    v14 = 1;
LABEL_26:
    v13 = icu::UCharsTrie::nextForCodePoint(&v26, v8);
    ++v15;
  }

  if (v13)
  {
    v19 = icu::CollationIterator::nextSkippedCodePoint(a1, a7);
    if ((v19 & 0x80000000) == 0)
    {
      v14 = (v14 + 1);
      v8 = v19;
      goto LABEL_26;
    }
  }

  if ((a3 & 0x400) == 0)
  {
    goto LABEL_34;
  }

  v23 = v15 - 1;
  if ((a3 & 0x100) != 0 && v14 >= v23)
  {
    goto LABEL_34;
  }

  if (v14 >= 2)
  {
    icu::CollationIterator::backwardNumSkipped(a1, v14, a7);
    v8 = icu::CollationIterator::nextSkippedCodePoint(a1, a7);
    v23 = v15 - v14;
    v14 = 1;
  }

  if (sub_1951FAB08(a2[6], v8) < 0x100)
  {
LABEL_34:
    icu::CollationIterator::backwardNumSkipped(a1, v14, a7);
  }

  else
  {
    CE32FromDiscontiguousContraction = icu::CollationIterator::nextCE32FromDiscontiguousContraction(a1, a2, &v26, CE32FromDiscontiguousContraction, v23, v8, a7);
  }

LABEL_35:
  icu::UCharsTrie::~UCharsTrie(&v26);
  return CE32FromDiscontiguousContraction;
}

void icu::CollationIterator::appendNumericCEs(uint64_t **this, __int16 a2, int a3, UErrorCode *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(&v27[1], 0, 48);
  v28 = 0;
  v27[0] = &v27[1] + 5;
  LODWORD(v27[1]) = 40;
  if (a3)
  {
    icu::CharString::append(v27, HIBYTE(a2) & 0xF, a4);
    while (*(this + 96))
    {
      v6 = ((*this)[6])(this, a4);
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      v7 = v6;
      v8 = sub_1952C6CA0(this[2], v6);
      if (v8 == 192)
      {
        LOWORD(v8) = sub_1952C6CA0(this[2][4], v7);
      }

      if ((v8 & 0xCF) != 0xCA)
      {
        ((*this)[13])(this, 1, a4);
        break;
      }

      v9 = *(this + 96);
      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v11 < 0 == v10)
      {
        *(this + 96) = v11;
      }

      icu::CharString::append(v27, BYTE1(v8) & 0xF, a4);
    }
  }

  else
  {
    while (1)
    {
      icu::CharString::append(v27, HIBYTE(a2) & 0xF, a4);
      v12 = ((*this)[7])(this, a4);
      if ((v12 & 0x80000000) != 0)
      {
        break;
      }

      v13 = v12;
      v14 = sub_1952C6CA0(this[2], v12);
      a2 = v14;
      if (v14 == 192)
      {
        a2 = sub_1952C6CA0(this[2][4], v13);
      }

      if ((a2 & 0xCF) != 0xCA)
      {
        ((*this)[12])(this, 1, a4);
        break;
      }
    }

    v15 = v27[0] + v28 - 1;
    if (v27[0] < v15)
    {
      v16 = v27[0] + 1;
      do
      {
        v17 = *(v16 - 1);
        *(v16 - 1) = *v15;
        *v15-- = v17;
      }

      while (v16++ < v15);
    }
  }

  if (*a4 <= 0)
  {
    v19 = 0;
    v20 = v28;
    do
    {
      if (v19 < v20 - 1)
      {
        v21 = v27[0] + v19;
        v22 = ~v19 + v20;
        while (!*v21++)
        {
          ++v19;
          if (!--v22)
          {
            v19 = v20 - 1;
            break;
          }
        }
      }

      v24 = v20 - v19;
      if (v24 >= 254)
      {
        v25 = 254;
      }

      else
      {
        v25 = v24;
      }

      icu::CollationIterator::appendNumericSegmentCEs(this, v27[0] + v19, v25, a4);
      if (*a4 > 0)
      {
        break;
      }

      v19 += v25;
      v20 = v28;
    }

    while (v19 < v28);
  }

  if (BYTE4(v27[1]))
  {
    free(v27[0]);
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1952D8114(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < 0)
  {
    v4 = *(a1 + 20);
  }

  else
  {
    v4 = *(a1 + 16) >> 5;
  }

  v5 = *(a1 + 136);
  v6 = (v5 - v4);
  if (v6 < 1)
  {
    v7 = icu::UnicodeString::moveIndex32((a1 + 8), *(a1 + 136), -a2);
    a2 = 0;
  }

  else if (v6 >= a2)
  {
    v7 = v5 - a2;
  }

  else
  {
    v7 = icu::UnicodeString::moveIndex32((a1 + 8), v4, v6 - a2);
    a2 = v6;
  }

  *(a1 + 136) = v7;
  return a2;
}

uint64_t icu::CollationIterator::nextCE32FromDiscontiguousContraction(icu::CollationIterator *this, const icu::CollationData *a2, icu::UCharsTrie *a3, uint64_t a4, int a5, unsigned int a6, UErrorCode *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  v7 = a4;
  v12 = a2;
  v14 = sub_1951FAB08(*(a2 + 6), a6);
  SkippedCodePoint = icu::CollationIterator::nextSkippedCodePoint(this, a7);
  if ((SkippedCodePoint & 0x80000000) != 0)
  {
    v18 = this;
    v19 = 1;
    goto LABEL_7;
  }

  v16 = SkippedCodePoint;
  v17 = sub_1951FAB08(*(v12 + 6), SkippedCodePoint);
  if (v17 <= 0xFF)
  {
    v18 = this;
    v19 = 2;
LABEL_7:
    icu::CollationIterator::backwardNumSkipped(v18, v19, a7);
    return v7;
  }

  v21 = v17;
  v55 = v14;
  v22 = *(this + 47);
  if (!v22)
  {
    operator new();
  }

  if (v22[1].u16[0] <= 0x1Fu)
  {
    v24 = *(a3 + 1);
    *(a3 + 2) = v24;
    v25 = -1;
    *(a3 + 6) = -1;
    if (a5 < 2)
    {
      v29 = vdupq_n_s64(v24);
    }

    else
    {
      (*(*this + 104))(this, (a5 + 1), a7);
      v26 = (*(*this + 48))(this, a7);
      icu::UCharsTrie::firstForCodePoint(a3, v26);
      v27 = a5 - 2;
      if (a5 != 2)
      {
        do
        {
          v28 = (*(*this + 48))(this, a7);
          icu::UCharsTrie::nextForCodePoint(a3, v28);
          --v27;
        }

        while (v27);
      }

      (*(*this + 96))(this, 2, a7);
      v22 = *(this + 47);
      v29 = *(a3 + 8);
      v25 = *(a3 + 6);
    }

    v22[9] = v29;
    v22[10].i32[0] = v25;
  }

  else
  {
    v23 = *(a3 + 1);
    if (v23 && v23 == v22[9].i64[0])
    {
      *(a3 + 2) = v22[9].i64[1];
      *(a3 + 6) = v22[10].i32[0];
    }
  }

  v30 = v55;
  v22[8].i32[3] = 0;
  icu::UnicodeString::unBogus(&v22[4].i64[1]);
  if (v22[5].i16[0] < 0)
  {
    v31 = v22[5].u32[1];
  }

  else
  {
    v31 = v22[5].u16[0] >> 5;
  }

  icu::UnicodeString::replace(&v22[4].u64[1], 0, v31, a6);
  v32 = 2;
  while (1)
  {
    if (HIBYTE(v21) <= v30 || (v33 = icu::UCharsTrie::nextForCodePoint(a3, v16), v33 < 2))
    {
      icu::UnicodeString::append(*(this + 47) + 72, v16);
      v38 = *(this + 47);
      v39 = *(a3 + 1);
      if (v39)
      {
        v40 = v39 == *(v38 + 144);
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        *(a3 + 2) = *(v38 + 152);
        *(a3 + 6) = *(v38 + 160);
      }

      v30 = v21;
      goto LABEL_50;
    }

    v34 = *(a3 + 2);
    v35 = v34 + 1;
    v36 = *v34;
    if (*v34 < 0)
    {
      v7 = v36 & 0x7FFF;
      if (v7 >= 0x4000)
      {
        if (v7 == 0x7FFF)
        {
          v41 = v34[1] << 16;
          v35 = v34 + 2;
        }

        else
        {
          v41 = (v7 << 16) - 0x40000000;
        }

        v7 = v41 | *v35;
      }
    }

    else
    {
      v37 = v36 >> 6;
      if (v37 > 0x100)
      {
        v7 = v37 > 0x1FE ? v34[2] | (v34[1] << 16) : (*v35 | ((v37 & 0x1FF) << 16)) - 16842752;
      }

      else
      {
        v7 = v37 - 1;
      }
    }

    v42 = *(this + 47);
    v43 = *(v42 + 80) < 0 ? *(v42 + 84) : *(v42 + 80) >> 5;
    *(v42 + 140) = v43;
    v32 = 0;
    if ((v33 & 1) == 0)
    {
      break;
    }

    *(v42 + 144) = *(a3 + 1);
    *(v42 + 152) = v34;
    *(v42 + 160) = *(a3 + 6);
LABEL_50:
    v44 = icu::CollationIterator::nextSkippedCodePoint(this, a7);
    if ((v44 & 0x80000000) == 0)
    {
      v16 = v44;
      v32 = (v32 + 1);
      v45 = sub_1951FAB08(*(v12 + 6), v44);
      v21 = v45;
      if (v45 > 0xFF)
      {
        continue;
      }
    }

    break;
  }

  icu::CollationIterator::backwardNumSkipped(this, v32, a7);
  v46 = *(this + 47);
  v47 = *(v46 + 16);
  icu::UnicodeString::doReplace((v46 + 8), 0, *(v46 + 136), (v46 + 72), 0, *(v46 + 140));
  *(v46 + 136) = 0;
  if (v47 <= 0x1F && *(*(this + 47) + 16) >= 0x20u)
  {
    LODWORD(v48) = -1;
    while (1)
    {
      icu::CollationIterator::appendCEsFromCE32(this, v12, v48, v7, 1, a7);
      v49 = *(this + 47);
      v50 = *(v49 + 136);
      v51 = *(v49 + 16);
      v52 = *(v49 + 16) < 0 ? *(v49 + 20) : v51 >> 5;
      if (v50 >= v52)
      {
        break;
      }

      v48 = icu::UnicodeString::char32At(v51, (v49 + 8), v50);
      if (v48 < 0x10000)
      {
        v53 = 1;
      }

      else
      {
        v53 = 2;
      }

      *(v49 + 136) += v53;
      LODWORD(v7) = (*(*this + 112))(this, v48);
      v12 = *(this + 2);
      if (v7 == 192)
      {
        v12 = *(v12 + 4);
        LODWORD(v7) = sub_1952C6CA0(v12, v48);
      }
    }

    if (v51)
    {
      v54 = 2;
    }

    else
    {
      v54 = *(v49 + 16) & 0x1E;
    }

    *(v49 + 16) = v54;
    *(v49 + 136) = 0;
    return 1;
  }

  return v7;
}

uint64_t icu::CollationIterator::appendNumericSegmentCEs(uint64_t this, const char *a2, int a3, UErrorCode *a4)
{
  v5 = this;
  v6 = *(*(this + 16) + 56);
  if (a3 <= 7)
  {
    v7 = *a2;
    if (a3 >= 2)
    {
      v8 = a2 + 1;
      v9 = a3 - 1;
      do
      {
        v10 = *v8++;
        v7 = v10 + 10 * v7;
        --v9;
      }

      while (v9);
    }

    v11 = v7 - 74;
    if (v7 < 74)
    {
      v12 = ((v7 << 16) + 0x20000) | v6;
      goto LABEL_31;
    }

    if (v7 <= 0x27F9)
    {
      v13 = ((v11 % 0xFEu) << 8) + 512;
      v14 = (((v11 / 0xFEu) << 16) + 4980736) | v6;
LABEL_11:
      v12 = v13 | v14;
      goto LABEL_31;
    }

    if (v7 <= 0xFE839)
    {
      v15 = v7 - 10234;
      v14 = ((v15 / 0xFE + (((33027 * ((v15 / 0xFE) >> 1)) >> 21) & 0xFE)) << 8) + 512;
      v13 = (v15 % 0xFE + ((v15 / 0xFC04) << 16) + 7602178) | v6;
      goto LABEL_11;
    }
  }

  v16 = v6 | ((((a3 + 1 + ((a3 + 1) >> 31)) << 15) & 0xFFFF0000) + 0x800000);
  v17 = &a2[a3 - 1];
  v18 = v17;
  do
  {
    v19 = a3;
    v20 = *v18;
    v18 -= 2;
    if (v20)
    {
      break;
    }

    v21 = *(v17 - 1);
    a3 -= 2;
    v17 = v18;
  }

  while (!v21);
  v22 = *a2;
  if (v19)
  {
    v23 = 1;
  }

  else
  {
    v22 = a2[1] + 10 * v22;
    v23 = 2;
  }

  v24 = 2 * v22;
  if (v23 < v19)
  {
    v25 = &a2[v23 + 1];
    v26 = 8;
    while (1)
    {
      v27 = v24 + 11;
      if (!v26)
      {
        break;
      }

      v16 |= v27 << v26;
      v26 -= 8;
LABEL_27:
      v24 = 2 * (*v25 + 10 * *(v25 - 1));
      v25 += 2;
      v23 += 2;
      if (v23 >= v19)
      {
        goto LABEL_30;
      }
    }

    v28 = *(v5 + 24);
    if (v28 >= 40)
    {
      this = icu::CollationIterator::CEBuffer::ensureAppendCapacity((v5 + 24), 1, a4);
      if (!this)
      {
LABEL_26:
        v26 = 16;
        v16 = v6;
        goto LABEL_27;
      }

      v28 = *(v5 + 24);
    }

    *(v5 + 24) = v28 + 1;
    *(*(v5 + 32) + 8 * v28) = ((v27 | v16) << 32) | 0x5000500;
    goto LABEL_26;
  }

  LOBYTE(v26) = 8;
LABEL_30:
  v12 = ((v24 + 10) << v26) | v16;
LABEL_31:
  v29 = *(v5 + 24);
  v30 = (v12 << 32) | 0x5000500;
  if (v29 >= 40)
  {
    this = icu::CollationIterator::CEBuffer::ensureAppendCapacity((v5 + 24), 1, a4);
    if (!this)
    {
      return this;
    }

    v29 = *(v5 + 24);
  }

  *(v5 + 24) = v29 + 1;
  *(*(v5 + 32) + 8 * v29) = v30;
  return this;
}

unint64_t icu::CollationIterator::previousCE(icu::CollationIterator *this, icu::UVector32 *a2, UErrorCode *a3)
{
  v4 = *(this + 6);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v6 < 0 != v5)
  {
    icu::UVector32::removeAllElements(a2);
    v10 = (*(*this + 40))(this);
    v11 = (*(*this + 56))(this, a3);
    if ((v11 & 0x80000000) != 0)
    {
      return 0x101000100;
    }

    else
    {
      v12 = v11;
      if (sub_1952D8C08(*(this + 2), v11, *(this + 388)))
      {

        return icu::CollationIterator::previousCEUnsafe(this, v13, a2, a3);
      }

      else
      {
        v14 = sub_1952C6CA0(*(this + 2), v12);
        v15 = *(this + 2);
        if (v14 == 192)
        {
          v15 = v15[4];
          v14 = sub_1952C6CA0(v15, v12);
        }

        v16 = v14 & 0xF;
        if ((~v14 & 0xC0) != 0 || (v14 & 0xF) - 3 >= 0xFFFFFFFE)
        {
          if (v14 > 0xBFu)
          {
            result = v14 & 0xFFFFFF00;
            if (v16 == 1)
            {
              return (result << 32) | 0x5000500;
            }
          }

          else
          {
            return (v14 << 16) & 0xFF000000 | (((v14 & 0xFFFF0000) >> 16) << 48) | (v14 << 8);
          }
        }

        else
        {
          icu::CollationIterator::appendCEsFromCE32(this, v15, v12, v14, 0, a3);
          if (*a3 <= 0)
          {
            v18 = *(this + 6);
            if (v18 >= 2)
            {
              v19 = (*(*this + 40))(this);
              sub_1951D6BD0(a2, v19, a3);
              v20 = *(a2 + 2);
              while (1)
              {
                v18 = *(this + 6);
                if (v20 > v18)
                {
                  break;
                }

                if (v20 < -1 || *(a2 + 3) <= v20)
                {
                  v21 = icu::UVector32::expandCapacity(a2, v20 + 1, a3);
                  v20 = *(a2 + 2);
                  if (!v21)
                  {
                    continue;
                  }
                }

                *(*(a2 + 3) + 4 * v20) = v10;
                v20 = *(a2 + 2) + 1;
                *(a2 + 2) = v20;
              }
            }

            *(this + 6) = v18 - 1;
            return *(*(this + 4) + 8 * (v18 - 1));
          }

          else
          {
            return 1;
          }
        }
      }
    }
  }

  else
  {
    *(this + 6) = v6;
    return *(*(this + 4) + 8 * v6);
  }

  return result;
}

uint64_t sub_1952D8C08(uint64_t a1, int a2, int a3)
{
  if (icu::UnicodeSet::contains(*(a1 + 80), a2))
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  if (a2 > 1631)
  {
    return (sub_1952C6CA0(a1, a2) & 0xCF) == 202;
  }

  return (a2 - 48) < 0xA;
}

uint64_t icu::CollationIterator::previousCEUnsafe(icu::CollationIterator *this, int a2, icu::UVector32 *a3, UErrorCode *a4)
{
  v7 = 1;
  do
  {
    v8 = (*(*this + 56))(this, a4);
    if (v8 < 0)
    {
      break;
    }

    v7 = (v7 + 1);
  }

  while (sub_1952D8C08(*(this + 2), v8, *(this + 388)));
  *(this + 96) = v7;
  *(this + 92) = 0;
  v9 = (*(*this + 40))(this);
  v10 = *(this + 96);
  if (v10 > 0)
  {
    while (1)
    {
      *(this + 96) = v10 - 1;
      sub_1952C5F10(this, a4);
      *(this + 92) = *(this + 6);
      v11 = *(a3 + 2);
      if (v11 < -1 || *(a3 + 3) <= v11)
      {
        if (!icu::UVector32::expandCapacity(a3, v11 + 1, a4))
        {
          goto LABEL_13;
        }

        v11 = *(a3 + 2);
      }

      *(*(a3 + 3) + 4 * v11) = v9;
      ++*(a3 + 2);
LABEL_13:
      v9 = (*(*this + 40))(this);
      v13 = *(a3 + 2);
      while (v13 < *(this + 6))
      {
        if (v13 < -1 || *(a3 + 3) <= v13)
        {
          v14 = icu::UVector32::expandCapacity(a3, v13 + 1, a4);
          v13 = *(a3 + 2);
          if (!v14)
          {
            continue;
          }
        }

        *(*(a3 + 3) + 4 * v13) = v9;
        v13 = *(a3 + 2) + 1;
        *(a3 + 2) = v13;
      }

      v10 = *(this + 96);
      if (v10 < 1)
      {
        goto LABEL_22;
      }
    }
  }

  v13 = *(a3 + 2);
LABEL_22:
  if (v13 < -1 || *(a3 + 3) <= v13)
  {
    if (!icu::UVector32::expandCapacity(a3, v13 + 1, a4))
    {
      goto LABEL_27;
    }

    v13 = *(a3 + 2);
  }

  *(*(a3 + 3) + 4 * v13) = v9;
  ++*(a3 + 2);
LABEL_27:
  *(this + 96) = -1;
  (*(*this + 104))(this, v7, a4);
  *(this + 92) = 0;
  if (*a4 > 0)
  {
    return 1;
  }

  v16 = *(this + 6) - 1;
  *(this + 6) = v16;
  return *(*(this + 4) + 8 * v16);
}

_DWORD *sub_1952D8EE4(_DWORD *result, char *a2, size_t __n)
{
  if (a2 && __n >= 1)
  {
    v3 = result[6];
    if (v3 >= 1)
    {
      result[6] = (v3 - __n) & ~((v3 - __n) >> 31);
      if (((v3 - __n) & 0x80000000) == 0)
      {
        return result;
      }

      a2 += v3;
      LODWORD(__n) = __n - v3;
    }

    v4 = result[5];
    result[5] = v4 + __n;
    if ((*(result + 1) + v4) != a2)
    {
      if (__n <= result[4] - v4)
      {
        return memcpy((*(result + 1) + v4), a2, __n);
      }

      else
      {
        return (*(*result + 40))();
      }
    }
  }

  return result;
}

uint64_t sub_1952D8F74(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  if (a2 < 1 || a5 < a2)
  {
    a4 = 0;
    *a6 = 0;
    return a4;
  }

  if (*(a1 + 24) < 1)
  {
    v10 = *(a1 + 16) - *(a1 + 20);
    if (v10 >= a2)
    {
      *a6 = v10;
    }

    else
    {
      if (!(*(*a1 + 48))(a1, a3, *(a1 + 20)))
      {
        goto LABEL_4;
      }

      *a6 = *(a1 + 16) - *(a1 + 20);
    }

    return *(a1 + 8) + *(a1 + 20);
  }

LABEL_4:
  *a6 = a5;
  return a4;
}

void icu::CollationKeys::writeSortKeyUpToQuaternary(icu::CollationIterator::CEBuffer *this, uint64_t a2, uint64_t a3, _DWORD *a4, char a5, uint64_t a6, int a7, UErrorCode *a8)
{
  v134 = *MEMORY[0x1E69E9840];
  if (*a8 > 0)
  {
    goto LABEL_2;
  }

  v10 = *(a3 + 24);
  v11 = (v10 >> 7) & 8 | dword_195489530[v10 >> 12];
  v12 = v11 & (-1 << a5);
  if ((v11 & (-1 << a5)) == 0)
  {
    goto LABEL_2;
  }

  v15 = 0;
  v105 = 0;
  v16 = 0;
  v117 = 0;
  v119 = 0;
  v122 = 0;
  v17 = *(a3 + 28);
  memset(&v132[1], 0, 48);
  v133 = 0;
  LODWORD(v132[1]) = 40;
  v107 = v10 & 0xC;
  v108 = 0;
  if ((v10 & 0xC) != 0)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 0;
  }

  LODWORD(v133) = 0;
  v110 = v10;
  BYTE4(v133) = 1;
  v106 = v10 & 0x600;
  v130[0] = 0uLL;
  if (v106 == 512)
  {
    v19 = 65343;
  }

  else
  {
    v19 = 16191;
  }

  v109 = v19;
  v131 = 0x100000000;
  v132[0] = &v132[1] + 5;
  memset(&v130[1], 0, 32);
  v129 = v130 + 5;
  LODWORD(v130[0]) = 40;
  memset(&v127[1], 0, 48);
  v128 = 0x100000000;
  v126 = 0x100000000;
  v127[0] = &v127[1] + 5;
  LODWORD(v127[1]) = 40;
  memset(&v125[1], 0, 48);
  v125[0] = &v125[1] + 5;
  LODWORD(v125[1]) = 40;
  do
  {
    v118 = v15;
    do
    {
      if (*(this + 92) == *(this + 6))
      {
        *(this + 6) = 0;
        *(this + 92) = 0;
      }

      v20 = sub_1952C5F10(this, a8);
      v21 = HIDWORD(v20);
      if (v20 > 0x2000000FFFFFFFFLL && v18 > HIDWORD(v20))
      {
        if (v16)
        {
          if (v16 < 114)
          {
            v23 = v16 - 1;
          }

          else
          {
            v22 = v16 + 112;
            do
            {
              sub_1952D9DE8(v125, 140);
              v22 -= 113;
            }

            while (v22 > 0xE1);
            v23 = v22 - 113;
          }

          sub_1952D9DE8(v125, v23 + 28);
        }

        while (1)
        {
          if ((v12 & 0x20) != 0)
          {
            v24 = *(a3 + 32);
            if (v24)
            {
              v25 = *(v24 + (v21 >> 24));
              if (v21 < 2 || v25)
              {
                LODWORD(v21) = v21 & 0xFFFFFF | (v25 << 24);
              }

              else
              {
                LODWORD(v21) = icu::CollationSettings::reorderEx(a3, v21);
              }
            }

            if (BYTE3(v21) >= 0x1Bu)
            {
              sub_1952D9DE8(v125, 27);
            }

            if (v21)
            {
              v26 = 4;
            }

            else
            {
              v26 = 3;
            }

            if ((v21 & 0xFF00) == 0)
            {
              v26 = 2;
            }

            if ((v21 & 0xFF0000) != 0)
            {
              v27 = v26;
            }

            else
            {
              v27 = 1;
            }

            v28 = v126;
            if (v126 + v27 <= SLODWORD(v125[1]))
            {
              goto LABEL_42;
            }

            if (sub_1952D9F54(v125, v27))
            {
              break;
            }
          }

          do
          {
LABEL_46:
            v32 = sub_1952C5F10(this, a8);
            v21 = HIDWORD(v32);
          }

          while (!HIDWORD(v32));
          LODWORD(v20) = v32;
          v16 = 0;
          if (v32 <= 0x2000000FFFFFFFFLL || v18 <= HIDWORD(v32))
          {
            goto LABEL_49;
          }
        }

        v28 = v126;
LABEL_42:
        LODWORD(v126) = v28 + 1;
        *(v125[0] + v28) = BYTE3(v21);
        if ((v21 & 0xFF0000) != 0)
        {
          v29 = v126;
          LODWORD(v126) = v126 + 1;
          *(v125[0] + v29) = BYTE2(v21);
          if ((v21 & 0xFF00) != 0)
          {
            v30 = v126;
            LODWORD(v126) = v126 + 1;
            *(v125[0] + v30) = BYTE1(v21);
            if (v21)
            {
              v31 = v126;
              LODWORD(v126) = v126 + 1;
              *(v125[0] + v31) = v21;
            }
          }
        }

        goto LABEL_46;
      }

LABEL_49:
      if ((v12 & 2) != 0 && v21 >= 2)
      {
        v33 = v21 >> 24;
        v34 = *(a2 + v33);
        v35 = *(a3 + 32);
        if (v35)
        {
          v36 = *(v35 + v33);
          if (v36)
          {
            LODWORD(v21) = v21 & 0xFFFFFF | (v36 << 24);
          }

          else
          {
            LODWORD(v21) = icu::CollationSettings::reorderEx(a3, v21);
          }
        }

        v37 = BYTE3(v21);
        if (v34)
        {
          v38 = v37 == HIBYTE(v122);
        }

        else
        {
          v38 = 0;
        }

        if (v38)
        {
LABEL_69:
          if ((v21 & 0xFF0000) != 0)
          {
            v124[0] = BYTE2(v21);
            v124[1] = BYTE1(v21);
            v124[2] = v21;
            if (v21)
            {
              v41 = 3;
            }

            else
            {
              v41 = 2;
            }

            if ((v21 & 0xFF00) != 0)
            {
              v42 = v41;
            }

            else
            {
              v42 = 1;
            }

            (*(*a4 + 16))(a4, v124, v42);
          }

          if (!a7 && a4[5] > a4[4])
          {
            if (*a8 <= 0)
            {
              goto LABEL_247;
            }

            goto LABEL_249;
          }

          continue;
        }

        if (v122)
        {
          if (v21 >= v122)
          {
            v39 = -1;
            goto LABEL_64;
          }

          if (v37 >= 3)
          {
            v39 = 3;
LABEL_64:
            sub_1952D9E40(a4, v39);
          }
        }

        sub_1952D9E40(a4, SBYTE3(v21));
        if (v34)
        {
          v40 = v21;
        }

        else
        {
          v40 = 0;
        }

        v122 = v40;
        goto LABEL_69;
      }
    }

    while (!v20);
    v43 = BYTE3(v20);
    if ((v12 & 4) == 0)
    {
      goto LABEL_81;
    }

    v44 = v119;
    if (v20 < 0x10000)
    {
LABEL_93:
      if ((v12 & 8) == 0)
      {
        goto LABEL_165;
      }

      goto LABEL_94;
    }

    v45 = WORD1(v20);
    v47 = (v110 & 0x800) == 0 || v21 != 0x2000000;
    if (v45 == 1280 && v47)
    {
      ++v108;
      goto LABEL_93;
    }

    if ((v110 & 0x800) == 0)
    {
      if (v108)
      {
        if (v108 < 34)
        {
          v52 = v108 - 1;
        }

        else
        {
          v51 = v108 + 32;
          do
          {
            sub_1952D9DE8(&v129, 37);
            v51 -= 33;
          }

          while (v51 > 0x41);
          v52 = v51 - 33;
          v43 = BYTE3(v20);
        }

        v67 = v52 + 5;
        v68 = 69 - v52;
        if (v43 >= 5)
        {
          v69 = v68;
        }

        else
        {
          v69 = v67;
        }

        sub_1952D9DE8(&v129, v69);
        LOWORD(v45) = WORD1(v20);
      }

      sub_1952D9ECC(&v129, v45);
      v108 = 0;
      goto LABEL_81;
    }

    if (v108)
    {
      v55 = (v108 - 1) % 33;
      if (v105 >= 0x500)
      {
        v56 = 69 - v55;
      }

      else
      {
        v56 = v55 + 5;
      }

      sub_1952D9DE8(&v129, v56);
      v57 = 33 * ((v108 - 1) / 33);
      if (v57 >= 1)
      {
        v58 = v108 - v55 + 32;
        do
        {
          sub_1952D9DE8(&v129, 37);
          v58 -= 33;
          v57 = v58 - 33;
        }

        while (v58 > 0x21);
      }

      v108 = v57;
      v45 = WORD1(v20);
    }

    else
    {
      v108 = 0;
    }

    if ((v21 - 1) >> 25)
    {
      if ((v20 & 0xFF0000) != 0)
      {
        v63 = 2;
      }

      else
      {
        v63 = 1;
      }

      v64 = v131;
      if (v131 + v63 <= SLODWORD(v130[0]))
      {
LABEL_144:
        if ((v20 & 0xFF0000) != 0)
        {
          v129[v64] = v45;
          v129[v131 + 1] = BYTE3(v20);
          LODWORD(v131) = v131 + 2;
        }

        else
        {
          LODWORD(v131) = v64 + 1;
          v129[v64] = BYTE3(v20);
        }

        v105 = v45;
      }

      else
      {
        v103 = v45;
        if (sub_1952D9F54(&v129, v63))
        {
          v64 = v131;
          v45 = v103;
          goto LABEL_144;
        }

        v105 = v103;
      }

      v44 = v119;
      v43 = BYTE3(v20);
      if ((v12 & 8) == 0)
      {
        goto LABEL_165;
      }

LABEL_94:
      if (v110 > 0xFFF)
      {
        if (v20 < 0x10000)
        {
          goto LABEL_165;
        }
      }

      else if (!v21)
      {
        goto LABEL_165;
      }

      v48 = BYTE1(v20);
      if ((v20 & 0xC000) == 0 && BYTE1(v20) >= 2u)
      {
        ++v44;
        goto LABEL_165;
      }

      if ((v110 & 0x100) != 0)
      {
        if (v44)
        {
          if (v44 < 14)
          {
            v54 = v44 - 1;
          }

          else
          {
            v112 = v43;
            v53 = v44 + 12;
            do
            {
              sub_1952D9DE8(v132, 48);
              v53 -= 13;
            }

            while (v53 > 0x19);
            v54 = v53 - 13;
            v43 = v112;
          }

          sub_1952D9DE8(v132, 16 * v54 + 48);
        }

        v65 = BYTE1(v20) >= 2u;
        v66 = ~(v20 >> 10) & 0x30;
      }

      else
      {
        if (v44)
        {
          if (BYTE1(v20) <= 1u && !v133)
          {
LABEL_164:
            sub_1952D9DE8(v132, v48);
            v44 = v119;
            goto LABEL_165;
          }

          if (v44 < 8)
          {
            v50 = v44 - 1;
          }

          else
          {
            v111 = v43;
            v49 = v44 + 6;
            do
            {
              sub_1952D9DE8(v132, 112);
              v49 -= 7;
            }

            while (v49 > 0xD);
            v50 = v49 - 7;
            v43 = v111;
          }

          if (BYTE1(v20) < 2u)
          {
            v70 = v50 + 1;
          }

          else
          {
            v70 = 13 - v50;
          }

          sub_1952D9DE8(v132, 16 * v70);
        }

        v65 = BYTE1(v20) >= 2u;
        v66 = ((v20 >> 10) & 0x30) + 208;
      }

      v119 = 0;
      if (v65)
      {
        v48 = v66;
      }

      goto LABEL_164;
    }

    v43 = BYTE3(v20);
    if (v118 < v131 - 1)
    {
      v59 = &v129[v118];
      v60 = &v129[v131 - 2];
      do
      {
        v61 = *v59;
        *v59++ = v60[1];
        v60[1] = v61;
        v65 = v59 >= v60--;
      }

      while (!v65);
    }

    if (v21 == 1)
    {
      v62 = 1;
    }

    else
    {
      v62 = 2;
    }

    sub_1952D9DE8(&v129, v62);
    v105 = 0;
    v118 = v131;
LABEL_81:
    v44 = v119;
    if ((v12 & 8) != 0)
    {
      goto LABEL_94;
    }

LABEL_165:
    v119 = v44;
    if ((v12 & 0x10) == 0)
    {
      v71 = v117;
      v15 = v118;
      goto LABEL_216;
    }

    v72 = v109 & v20;
    v73 = v117;
    if ((v109 & v20) != 0x500)
    {
      if (v106 == 512)
      {
        if ((v110 & 0x100) == 0)
        {
          if (v117)
          {
            if (v117 < 34)
            {
              v75 = v117 - 1;
            }

            else
            {
              v113 = v43;
              v74 = v117 + 32;
              do
              {
                sub_1952D9DE8(v127, 37);
                v74 -= 33;
              }

              while (v74 > 0x41);
              v75 = v74 - 33;
              v43 = v113;
            }

            v82 = v75 + 5;
            v83 = 69 - v75;
            if (v72 >= 0x500)
            {
              v84 = v83;
            }

            else
            {
              v84 = v82;
            }

            sub_1952D9DE8(v127, v84);
          }

          v81 = v72 + 0x4000;
          goto LABEL_199;
        }

        if (v72 >= 0x101)
        {
          if (v20 < 0x10000)
          {
            v72 += 0x4000;
          }

          else
          {
            if ((v72 ^ 0xC000) >> 8 >= 0xC5)
            {
              v72 ^= 0xC000u;
            }

            else
            {
              v72 = (v72 ^ 0xC000) - 0x4000;
            }

            v73 = v117;
          }
        }

        if (v73)
        {
          if (v73 < 34)
          {
            v87 = v73 - 1;
          }

          else
          {
            v115 = v43;
            v86 = v73 + 32;
            do
            {
              sub_1952D9DE8(v127, 165);
              v86 -= 33;
            }

            while (v86 > 0x41);
            v87 = v86 - 33;
            v43 = v115;
          }

          v88 = v87 - 123;
          v89 = -59 - v87;
          if (v72 >> 8 >= 0x85)
          {
            v90 = v89;
          }

          else
          {
            v90 = v88;
          }

          sub_1952D9DE8(v127, v90);
        }

        v85 = v72;
      }

      else
      {
        if (v117)
        {
          if (v117 < 98)
          {
            v77 = v117 - 1;
          }

          else
          {
            v114 = v43;
            v76 = v117 + 96;
            do
            {
              sub_1952D9DE8(v127, 101);
              v76 -= 97;
            }

            while (v76 > 0xC1);
            v77 = v76 - 97;
            v43 = v114;
          }

          v78 = v77 + 5;
          v79 = -59 - v77;
          if (v72 >= 0x500)
          {
            v80 = v79;
          }

          else
          {
            v80 = v78;
          }

          sub_1952D9DE8(v127, v80);
        }

        v81 = v72 - 0x4000;
LABEL_199:
        if (v72 <= 0x500)
        {
          v85 = v109 & v20;
        }

        else
        {
          v85 = v81;
        }
      }

      sub_1952D9ECC(v127, v85);
      v71 = 0;
      goto LABEL_215;
    }

    v71 = v117 + 1;
LABEL_215:
    v15 = v118;
LABEL_216:
    v117 = v71;
    if ((v12 & 0x20) != 0)
    {
      v116 = v43;
      v91 = v20;
      if ((v20 & 0xC0) != 0 || v20 < 0x101u)
      {
        if (v107 || v20 != 256 || v126)
        {
          if (v20 == 256)
          {
            v92 = 1;
          }

          else
          {
            v92 = (v20 >> 6) | 0xFC;
          }

          if (v16)
          {
            if (v16 < 114)
            {
              v94 = v16 - 1;
            }

            else
            {
              v93 = v16 + 112;
              do
              {
                sub_1952D9DE8(v125, 140);
                v93 -= 113;
              }

              while (v93 > 0xE1);
              v94 = v93 - 113;
            }

            v95 = v94 + 28;
            v96 = -4 - v94;
            if (v91 == 256)
            {
              v97 = v95;
            }

            else
            {
              v97 = v96;
            }

            sub_1952D9DE8(v125, v97);
          }

          sub_1952D9DE8(v125, v92);
          v16 = 0;
        }

        else
        {
          sub_1952D9DE8(v125, 1);
        }
      }

      else
      {
        ++v16;
      }

      v43 = v116;
    }
  }

  while (v43 != 1);
  if (*a8 > 0)
  {
    goto LABEL_249;
  }

  if ((v12 & 4) != 0)
  {
    if (!(*(*a6 + 16))(a6, 2))
    {
      goto LABEL_249;
    }

    v98 = BYTE4(v131) & 1;
    sub_1952D9E40(a4, 1);
    (*(*a4 + 16))(a4, v129, (v131 - 1));
  }

  else
  {
    v98 = 1;
  }

  if ((v12 & 8) != 0)
  {
    if (!(*(*a6 + 16))(a6, 3))
    {
      goto LABEL_249;
    }

    v98 = (BYTE4(v133) & v98);
    sub_1952D9E40(a4, 1);
    if (v133 >= 2)
    {
      v99 = 0;
      v100 = 0;
      v101 = (v133 - 1);
      do
      {
        v102 = *(v132[0] + v99);
        if (v100)
        {
          sub_1952D9E40(a4, v100 | (*(v132[0] + v99) >> 4));
          v102 = 0;
        }

        ++v99;
        v100 = v102;
      }

      while (v101 != v99);
      if (v102)
      {
        sub_1952D9E40(a4, v102);
      }
    }
  }

  if ((v12 & 0x10) != 0)
  {
    if (!(*(*a6 + 16))(a6, 4))
    {
      goto LABEL_249;
    }

    v98 = (BYTE4(v128) & v98);
    sub_1952D9E40(a4, 1);
    (*(*a4 + 16))(a4, v127[0], (v128 - 1));
  }

  if ((v12 & 0x20) != 0)
  {
    if (!(*(*a6 + 16))(a6, 5))
    {
      goto LABEL_249;
    }

    v98 = (BYTE4(v126) & v98);
    sub_1952D9E40(a4, 1);
    (*(*a4 + 16))(a4, v125[0], (v126 - 1));
  }

  if (v98)
  {
LABEL_247:
    if (*(a4 + 1))
    {
      goto LABEL_249;
    }
  }

  *a8 = U_MEMORY_ALLOCATION_ERROR;
LABEL_249:
  if (BYTE4(v125[1]))
  {
    free(v125[0]);
  }

  if (BYTE4(v127[1]))
  {
    free(v127[0]);
  }

  if (BYTE4(v130[0]))
  {
    free(v129);
  }

  if (BYTE4(v132[1]))
  {
    free(v132[0]);
  }

LABEL_2:
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1952D9DE8(uint64_t result, char a2)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4 >= *(result + 8))
  {
    result = sub_1952D9F54(result, 1);
    if (!result)
    {
      return result;
    }

    v4 = *(v3 + 56);
  }

  *(v3 + 56) = v4 + 1;
  *(*v3 + v4) = a2;
  return result;
}

_DWORD *sub_1952D9E40(_DWORD *result, char a2)
{
  v2 = result;
  v3 = result[6];
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v5 < 0 == v4)
  {
    result[6] = v5;
    return result;
  }

  v7 = result[5];
  if (v7 < result[4])
  {
    goto LABEL_6;
  }

  result = (*(*result + 48))(result, 1);
  if (result)
  {
    v7 = v2[5];
LABEL_6:
    *(*(v2 + 1) + v7) = a2;
  }

  ++v2[5];
  return result;
}

uint64_t sub_1952D9ECC(uint64_t result, __int16 a2)
{
  v3 = result;
  v4 = a2;
  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(result + 56);
  if (v6 + v5 > *(result + 8))
  {
    result = sub_1952D9F54(result, v5);
    if (!result)
    {
      return result;
    }

    v6 = *(v3 + 56);
  }

  *(v3 + 56) = v6 + 1;
  *(*v3 + v6) = HIBYTE(a2);
  if (v4)
  {
    v7 = *(v3 + 56);
    *(v3 + 56) = v7 + 1;
    *(*v3 + v7) = a2;
  }

  return result;
}

uint64_t sub_1952D9F54(uint64_t a1, int a2)
{
  if (!*(a1 + 60))
  {
    return 0;
  }

  v3 = 2 * *(a1 + 8);
  v4 = *(a1 + 56);
  if (v3 <= v4 + 2 * a2)
  {
    v3 = v4 + 2 * a2;
  }

  if (v3 <= 200)
  {
    v5 = 200;
  }

  else
  {
    v5 = v3;
  }

  result = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (result)
  {
    v7 = result;
    if (v4 >= 1)
    {
      v8 = *(a1 + 8);
      if (v8 >= v4)
      {
        v8 = v4;
      }

      if (v8 >= v5)
      {
        v8 = v5;
      }

      memcpy(result, *a1, v8);
    }

    if (*(a1 + 12))
    {
      free(*a1);
    }

    *a1 = v7;
    *(a1 + 8) = v5;
    result = 1;
    *(a1 + 12) = 1;
  }

  else
  {
    *(a1 + 60) = 0;
  }

  return result;
}

void *icu::CollationRoot::loadFromFile(icu::CollationRoot *this, char *a2, UErrorCode *a3)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v8 = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  if (!uprv_mapFile(v6, this, a2))
  {
    result = 0;
    v5 = 2;
    goto LABEL_10;
  }

  if (__PAIR64__(*(*(&v6[0] + 1) + 3), *(*(&v6[0] + 1) + 2)) != 0x27000000DALL || !icu::CollationDataReader::isAcceptable(0, "icu", "ucadata", (*(&v6[0] + 1) + 4)))
  {
    result = 0;
    v5 = 3;
LABEL_10:
    *a2 = v5;
    return result;
  }

  result = UDataMemory_createNewInstance(a2);
  if (*a2 > 0)
  {
    return 0;
  }

  result[1] = *(&v6[0] + 1);
  *(result + 2) = v7;
  return result;
}

void icu::CollationRoot::load(icu::CollationRoot *this, const char *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }
}

uint64_t sub_1952DA29C()
{
  if (qword_1ED442B88)
  {
    icu::SharedObject::removeRef(qword_1ED442B88);
    qword_1ED442B88 = 0;
  }

  atomic_store(0, &unk_1ED442B90);
  return 1;
}

uint64_t icu::CollationRoot::getRootCacheEntry(icu::CollationRoot *this, UErrorCode *a2)
{
  sub_1951D10A4(&unk_1ED442B90, icu::CollationRoot::load, 0, this);
  if (*this >= 1)
  {
    return 0;
  }

  else
  {
    return qword_1ED442B88;
  }
}

uint64_t icu::CollationRoot::getRoot(icu::CollationRoot *this, UErrorCode *a2)
{
  sub_1951D10A4(&unk_1ED442B90, icu::CollationRoot::load, 0, this);
  result = 0;
  if (*this <= 0)
  {
    return *(qword_1ED442B88 + 248);
  }

  return result;
}

uint64_t icu::CollationRoot::getData(icu::CollationRoot *this, UErrorCode *a2)
{
  sub_1951D10A4(&unk_1ED442B90, icu::CollationRoot::load, 0, this);
  result = 0;
  if (*this <= 0)
  {
    return *(*(qword_1ED442B88 + 248) + 24);
  }

  return result;
}

uint64_t icu::CollationRoot::getSettings(icu::CollationRoot *this, UErrorCode *a2)
{
  sub_1951D10A4(&unk_1ED442B90, icu::CollationRoot::load, 0, this);
  result = 0;
  if (*this <= 0)
  {
    return *(*(qword_1ED442B88 + 248) + 32);
  }

  return result;
}

void *sub_1952DA480(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0938628;
  icu::Locale::Locale((a1 + 3), a2);
  a1[31] = a3;
  if (a3)
  {
    icu::SharedObject::addRef(a3);
  }

  return a1;
}

unint64_t icu::CollationRootElements::lastCEWithPrimaryBefore(icu::CollationRootElements *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = icu::CollationRootElements::findP(this, a2);
  v5 = *this;
  v6 = (*this + 4 * v4);
  v7 = *v6 & 0xFFFFFF00;
  if (v7 == a2)
  {
    v8 = *(v6 - 1);
    if ((v8 & 0x80) != 0)
    {
      v13 = (v5 + 4 * (v4 - 2));
      do
      {
        v15 = *v13--;
        v14 = v15;
      }

      while ((v15 & 0x80) != 0);
      v7 = v14 & 0xFFFFFF00;
    }

    else
    {
      v7 = v8 & 0xFFFFFF00;
      v8 = 83887360;
    }
  }

  else
  {
    v10 = 83887360;
    v11 = (v5 + 4 * v4 + 4);
    do
    {
      v8 = v10;
      v12 = *v11++;
      v10 = v12;
    }

    while ((v12 & 0x80) != 0);
  }

  return v8 & 0xFFFFFF7F | (v7 << 32);
}

uint64_t icu::CollationRootElements::findP(icu::CollationRootElements *this, unsigned int a2)
{
  v3 = *this;
  result = *(*this + 8);
  v5 = *(this + 2) - 1;
  while (result + 1 < v5)
  {
    LODWORD(v6) = (v5 + result) / 2;
    v7 = *(v3 + 4 * v6);
    if ((v7 & 0x80) != 0)
    {
      if (v6 + 1 == v5)
      {
LABEL_8:
        LODWORD(v6) = v6 - 1;
        if (v6 == result)
        {
          return result;
        }

        v6 = v6;
        while (1)
        {
          v7 = *(v3 + 4 * v6);
          if ((v7 & 0x80) == 0)
          {
            break;
          }

          if (result == --v6)
          {
            return result;
          }
        }
      }

      else
      {
        v8 = ((v5 + result + ((v5 + result) >> 31)) >> 1) + 1;
        while (1)
        {
          v7 = *(v3 + 4 * v8);
          if ((v7 & 0x80) == 0)
          {
            break;
          }

          if (v5 == ++v8)
          {
            goto LABEL_8;
          }
        }

        LODWORD(v6) = v8;
      }
    }

    v9 = v7 & 0xFFFFFF00;
    if (v9 <= a2)
    {
      result = v6;
    }

    else
    {
      result = result;
    }

    if (v9 > a2)
    {
      v5 = v6;
    }
  }

  return result;
}

uint64_t icu::CollationRootElements::firstCEWithPrimaryAtLeast(icu::CollationRootElements *this, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = icu::CollationRootElements::findP(this, a2);
  if ((*(*this + 4 * v4) & 0xFFFFFF00) != v2)
  {
    v5 = (*this + 4 * v4 + 4);
    do
    {
      v6 = *v5++;
      v2 = v6;
    }

    while ((v6 & 0x80) != 0);
  }

  return (v2 << 32) | 0x5000500;
}

uint64_t icu::CollationRootElements::getPrimaryBefore(icu::CollationRootElements *this, icu::Collation *a2, int a3)
{
  v6 = icu::CollationRootElements::findP(this, a2);
  v7 = (*this + 4 * v6);
  if ((*v7 & 0xFFFFFF00) == a2)
  {
    v8 = *v7 & 0x7F;
    if ((*v7 & 0x7F) == 0)
    {
      v9 = (*this + 4 * v6 - 4);
      do
      {
        v11 = *v9--;
        v10 = v11;
      }

      while ((v11 & 0x80) != 0);
      return v10 & 0xFFFFFF00;
    }
  }

  else
  {
    v8 = v7[1] & 0x7F;
  }

  if (a2)
  {

    return icu::Collation::decThreeBytePrimaryByOneStep(a2, a3, v8);
  }

  else
  {

    return icu::Collation::decTwoBytePrimaryByOneStep(a2, a3, v8);
  }
}

uint64_t icu::CollationRootElements::getSecondaryBefore(icu::CollationRootElements *this, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    LODWORD(v5) = icu::CollationRootElements::findP(this, a2) + 1;
    v6 = *this;
    v7 = *(*this + 4 * v5);
    if (v7 >= 0x5000500)
    {
      v8 = 83887360;
    }

    else
    {
      v8 = *(*this + 4 * v5);
    }

    if ((v7 & 0x80) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 83887360;
    }

    result = 256;
  }

  else
  {
    result = 0;
    v6 = *this;
    v5 = *(*this + 4);
    v9 = *(*this + 4 * v5);
  }

  v11 = HIWORD(v9);
  if (v11 < a3)
  {
    v12 = (v6 + 4 * v5);
    do
    {
      result = v11;
      v13 = *v12++;
      v11 = HIWORD(v13);
    }

    while (v11 < a3);
  }

  return result;
}

uint64_t icu::CollationRootElements::getFirstSecTerForPrimary(icu::CollationRootElements *this, int a2)
{
  v2 = *(*this + 4 * a2);
  v3 = v2 & 0xFFFFFF7F;
  if ((v2 & 0xFFFFFF7F) >= 0x5000500)
  {
    v3 = 83887360;
  }

  if ((v2 & 0x80) != 0)
  {
    return v3;
  }

  else
  {
    return 83887360;
  }
}

uint64_t icu::CollationRootElements::getTertiaryBefore(icu::CollationRootElements *this, unsigned int a2, int a3, int a4)
{
  if (a2)
  {
    LODWORD(v7) = icu::CollationRootElements::findP(this, a2) + 1;
    v8 = *this;
    v9 = *(*this + 4 * v7);
    v10 = v9 & 0xFFFFFF7F;
    if ((v9 & 0xFFFFFF7F) >= 0x5000500)
    {
      v10 = 83887360;
    }

    if ((v9 & 0x80) == 0)
    {
      v10 = 83887360;
    }

    v11 = 256;
  }

  else
  {
    v8 = *this;
    v11 = (a3 != 0) << 8;
    v7 = *(*this + 4 * (a3 != 0));
    v10 = *(*this + 4 * v7) & 0xFFFFFF7F;
  }

  v12 = a4 | (a3 << 16);
  if (v12 > v10)
  {
    v13 = (v8 + 4 * v7);
    do
    {
      if (a3 == HIWORD(v10))
      {
        v11 = v10;
      }

      v14 = *v13++;
      v10 = v14 & 0xFFFFFF7F;
    }

    while (v12 > (v14 & 0xFFFFFF7F));
  }

  return v11;
}

uint64_t icu::CollationRootElements::getPrimaryAfter(icu::CollationRootElements *this, icu::Collation *a2, int a3, int a4)
{
  v4 = *this;
  result = *(*this + 4 * a3 + 4);
  if ((result & 0x80) != 0)
  {
    v7 = (v4 + 4 * a3 + 8);
    do
    {
      v8 = *v7++;
      result = v8;
    }

    while ((v8 & 0x80) != 0);
  }

  else
  {
    v6 = result & 0x7F;
    if ((result & 0x7F) != 0)
    {
      if (a2)
      {
        return icu::Collation::incThreeBytePrimaryByOffset(a2, a4, v6);
      }

      else
      {
        return icu::Collation::incTwoBytePrimaryByOffset(a2, a4, v6);
      }
    }
  }

  return result;
}

uint64_t icu::CollationRootElements::getSecondaryAfter(icu::CollationRootElements *this, int a2, unsigned int a3)
{
  v3 = *this;
  if (a2)
  {
    v4 = a2;
    v5 = *(v3 + 4 * a2 + 4);
    if (v5 >= 0x5000500)
    {
      v6 = 83887360;
    }

    else
    {
      v6 = *(v3 + 4 * a2 + 4);
    }

    if ((v5 & 0x80) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 83887360;
    }

    result = *(v3 + 18) << 8;
  }

  else
  {
    v4 = *(v3 + 4);
    v7 = *(v3 + 4 * v4);
    result = 0x10000;
  }

  for (i = (v3 + 4 * v4 + 4); ; ++i)
  {
    v10 = HIWORD(v7);
    if (v10 > a3)
    {
      break;
    }

    v11 = *i;
    v7 = v11;
    if ((v11 & 0x80) == 0)
    {
      return result;
    }
  }

  return v10;
}

uint64_t icu::CollationRootElements::getTertiaryAfter(int **this, uint64_t a2, unsigned int a3, int a4)
{
  if (a2)
  {
    v4 = *this;
    v5 = (*this)[a2 + 1];
    v6 = v5 & 0xFFFFFF7F;
    if ((v5 & 0xFFFFFF7F) >= 0x5000500)
    {
      v6 = 83887360;
    }

    if ((v5 & 0x80) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 83887360;
    }

    v8 = v4[4];
    result = v4[4] << 8;
  }

  else
  {
    v4 = *this;
    if (a3)
    {
      v10 = v4 + 1;
      v11 = v4[4];
      result = v4[4] << 8;
    }

    else
    {
      result = 0x4000;
      v10 = v4;
    }

    a2 = *v10;
    v7 = v4[a2] & 0xFFFFFF7F;
  }

  v12 = a4 | (a3 << 16);
  if (v7 > v12)
  {
    return v7;
  }

  v13 = &v4[a2 + 1];
  while (1)
  {
    v15 = *v13++;
    v14 = v15;
    if ((v15 & 0x80) == 0 || HIWORD(v14) > a3)
    {
      break;
    }

    v7 = v14 & 0xFFFFFF7F;
    if (v7 > v12)
    {
      return v7;
    }
  }

  return result;
}

icu::CollationRuleParser *icu::CollationRuleParser::CollationRuleParser(icu::CollationRuleParser *this, UErrorCode *a2, UErrorCode *a3)
{
  *this = icu::Normalizer2::getNFDInstance(a3, a2);
  *(this + 1) = icu::Normalizer2::getNFCInstance(a3, v6);
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  return this;
}

{
  *this = icu::Normalizer2::getNFDInstance(a3, a2);
  *(this + 1) = icu::Normalizer2::getNFCInstance(a3, v6);
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  return this;
}

void *icu::CollationRuleParser::parse(void *this, const icu::UnicodeString *a2, icu::CollationSettings *a3, UParseError *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    this[4] = a3;
    this[5] = a4;
    if (a4)
    {
      *&a4->line = 0xFFFFFFFF00000000;
      a4->preContext[0] = 0;
      a4->postContext[0] = 0;
    }

    this[6] = 0;
    return icu::CollationRuleParser::parse(this, a2, a5);
  }

  return this;
}

uint64_t icu::CollationRuleParser::parse(uint64_t this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    v5 = 0;
    *(this + 16) = a2;
    *(this + 72) = 0;
    while (1)
    {
      v6 = *(a2 + 4);
      if (*(a2 + 4) < 0)
      {
        v7 = *(a2 + 3);
        if (v5 >= v7)
        {
          return this;
        }
      }

      else
      {
        if (v5 >= (v6 >> 5))
        {
          return this;
        }

        v7 = v6 >> 5;
      }

      if (v7 <= v5)
      {
        v9 = 0xFFFFLL;
      }

      else
      {
        if ((v6 & 2) != 0)
        {
          v8 = a2 + 10;
        }

        else
        {
          v8 = *(a2 + 3);
        }

        v9 = *&v8[2 * v5];
      }

      this = icu::PatternProps::isWhiteSpace(v9);
      if (this)
      {
        v5 = *(v4 + 72) + 1;
        *(v4 + 72) = v5;
        goto LABEL_31;
      }

      if (v9 <= 37)
      {
        if (v9 == 33)
        {
          goto LABEL_25;
        }

        if (v9 != 35)
        {
LABEL_26:
          if (*a3 > 0)
          {
            return this;
          }

          *a3 = U_INVALID_FORMAT_ERROR;
          *(v4 + 48) = "expected a reset or setting or comment";
          if (!*(v4 + 40))
          {
            return this;
          }

          this = icu::CollationRuleParser::setErrorContext(v4);
          goto LABEL_29;
        }

        this = icu::CollationRuleParser::skipComment(v4, *(v4 + 72) + 1);
        *(v4 + 72) = this;
      }

      else
      {
        switch(v9)
        {
          case '[':
            this = icu::CollationRuleParser::parseSetting(v4, a3);
            break;
          case '@':
            this = icu::CollationSettings::setFlag(*(v4 + 32), 2048, 17, 0, a3);
LABEL_25:
            ++*(v4 + 72);
            break;
          case '&':
            this = icu::CollationRuleParser::parseRuleChain(v4, a3);
            break;
          default:
            goto LABEL_26;
        }
      }

LABEL_29:
      if (*a3 > 0)
      {
        return this;
      }

      v5 = *(v4 + 72);
LABEL_31:
      a2 = *(v4 + 16);
    }
  }

  return this;
}

uint64_t icu::CollationRuleParser::parseRuleChain(icu::CollationRuleParser *this, UErrorCode *a2)
{
  v4 = icu::CollationRuleParser::parseResetAndPosition(this, a2);
  result = icu::CollationRuleParser::parseRelationOperator(this, a2);
  if (*a2 > 0)
  {
    return result;
  }

  v6 = 1;
  while ((result & 0x80000000) == 0)
  {
    v7 = result & 0xF;
    if (v4 <= 14)
    {
      if (v6)
      {
        if (v7 != v4)
        {
          *a2 = U_INVALID_FORMAT_ERROR;
          v14 = "reset-before strength differs from its first relation";
          goto LABEL_30;
        }
      }

      else if (v7 < v4)
      {
        *a2 = U_INVALID_FORMAT_ERROR;
        v14 = "reset-before strength followed by a stronger relation";
        goto LABEL_30;
      }
    }

    v13 = *(this + 18) + (result >> 8);
    if ((result & 0x10) != 0)
    {
      result = icu::CollationRuleParser::parseStarredCharacters(this, v7, v13, a2);
    }

    else
    {
      result = icu::CollationRuleParser::parseRelationStrings(this, v7, v13, a2);
    }

    if (*a2 > 0)
    {
      return result;
    }

    v6 = 0;
LABEL_25:
    result = icu::CollationRuleParser::parseRelationOperator(this, a2);
    if (*a2 >= 1)
    {
      return result;
    }
  }

  v8 = *(this + 18);
  v9 = *(this + 2);
  v10 = *(v9 + 8);
  if (*(v9 + 8) < 0)
  {
    v11 = *(v9 + 12);
    if (v8 >= v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v8 >= (v10 >> 5))
    {
      goto LABEL_27;
    }

    v11 = v10 >> 5;
  }

  if (v11 > v8)
  {
    v12 = (v10 & 2) != 0 ? v9 + 10 : *(v9 + 24);
    if (*(v12 + 2 * v8) == 35)
    {
      *(this + 18) = icu::CollationRuleParser::skipComment(this, v8 + 1);
      goto LABEL_25;
    }
  }

LABEL_27:
  if (!v6)
  {
    return result;
  }

  *a2 = U_INVALID_FORMAT_ERROR;
  v14 = "reset not followed by a relation";
LABEL_30:
  *(this + 6) = v14;
  if (*(this + 5))
  {

    return icu::CollationRuleParser::setErrorContext(this);
  }

  return result;
}

icu::CollationRuleParser *icu::CollationRuleParser::parseSetting(icu::CollationRuleParser *this, UErrorCode *a2)
{
  v179[5] = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v3 = this;
    v178 = 0u;
    memset(v179, 0, 40);
    v177 = &unk_1F0935D00;
    LOWORD(v178) = 2;
    v4 = *(this + 18) + 1;
    Words = icu::CollationRuleParser::readWords(this, v4, &v177);
    if (Words <= v4)
    {
      if (*a2 > 0)
      {
        goto LABEL_9;
      }
    }

    else if (v178 > 0x1Fu || *a2 >= 1)
    {
      goto LABEL_9;
    }

    *a2 = U_INVALID_FORMAT_ERROR;
    *(v3 + 48) = "expected a setting/option at '['";
    if (*(v3 + 40))
    {
      icu::CollationRuleParser::setErrorContext(v3);
    }

LABEL_9:
    v6 = *(v3 + 16);
    v7 = *(v6 + 8);
    v8 = v7 >> 5;
    if (*(v6 + 8) < 0)
    {
      v9 = *(v6 + 12);
    }

    else
    {
      v9 = v7 >> 5;
    }

    if (v9 > Words)
    {
      v10 = (v7 & 2) != 0 ? v6 + 10 : *(v6 + 24);
      if (*(v10 + 2 * Words) == 93)
      {
        v11 = Words + 1;
        v146 = L"reorder";
        icu::UnicodeString::UnicodeString(&__src, 1, &v146);
        if ((SWORD4(__src) & 0x8000u) == 0)
        {
          v12 = WORD4(__src) >> 5;
        }

        else
        {
          v12 = HIDWORD(__src);
        }

        if (BYTE8(__src))
        {
          v14 = v178 & 1;
          if (v178)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if ((v178 & 1) == 0)
          {
            if ((BYTE8(__src) & 2) != 0)
            {
              v13 = &__src + 10;
            }

            else
            {
              v13 = *(&v148 + 1);
            }

            v14 = icu::UnicodeString::doEqualsSubstring(&v177, 0, v12, v13, v12 & (v12 >> 31), v12 & ~(v12 >> 31));
            if (!v14)
            {
              goto LABEL_53;
            }

LABEL_49:
            if (v178 < 0)
            {
              v24 = DWORD1(v178);
              if (DWORD1(v178) != 7)
              {
                goto LABEL_57;
              }
            }

            else if ((v178 & 0x7FE0) != 0xE0)
            {
              v24 = v178 >> 5;
LABEL_57:
              if (v24 < 8)
              {
                icu::UnicodeString::~UnicodeString(v178, &__src);
                v122[12] = v146;
                goto LABEL_64;
              }

              if ((v178 & 2) != 0)
              {
                v26 = v179;
              }

              else
              {
                v26 = (v179[0] + 14);
              }

              v27 = *v26;
              icu::UnicodeString::~UnicodeString(v26, &__src);
              v122[11] = v146;
              if (v27 != 32)
              {
LABEL_64:
                v145 = L"backwards 2";
                icu::UnicodeString::UnicodeString(&__src, 1, &v145);
                if (v178)
                {
                  v31 = WORD4(__src);
                  v32 = BYTE8(__src) & 1;
                }

                else
                {
                  if ((v178 & 0x8000u) == 0)
                  {
                    v28 = v178 >> 5;
                  }

                  else
                  {
                    v28 = DWORD1(v178);
                  }

                  if ((SWORD4(__src) & 0x8000u) == 0)
                  {
                    v29 = WORD4(__src) >> 5;
                  }

                  else
                  {
                    v29 = HIDWORD(__src);
                  }

                  if ((BYTE8(__src) & 1) != 0 || v28 != v29)
                  {
                    icu::UnicodeString::~UnicodeString(WORD4(__src), &__src);
                    v122[8] = v145;
                    goto LABEL_82;
                  }

                  if ((BYTE8(__src) & 2) != 0)
                  {
                    v30 = &__src + 10;
                  }

                  else
                  {
                    v30 = *(&v148 + 1);
                  }

                  v32 = icu::UnicodeString::doEquals(&v177, v30, v28);
                }

                icu::UnicodeString::~UnicodeString(v31, &__src);
                v122[7] = v145;
                if (v32)
                {
                  icu::CollationSettings::setFlag(*(v3 + 32), 2048, 17, 0, a2);
                  goto LABEL_80;
                }

LABEL_82:
                v173 = 0u;
                v176 = 0;
                v175 = 0u;
                v174 = 0u;
                v172 = &unk_1F0935D00;
                LOWORD(v173) = 2;
                if ((v178 & 0x8000u) == 0)
                {
                  v33 = v178 >> 5;
                }

                else
                {
                  v33 = DWORD1(v178);
                }

                IndexOf = icu::UnicodeString::doLastIndexOf(&v177, 0x20u, 0, v33);
                if ((IndexOf & 0x80000000) != 0)
                {
                  goto LABEL_117;
                }

                v35 = IndexOf;
                v36 = IndexOf + 1;
                icu::UnicodeString::unBogus(&v172);
                if (v178 < 0)
                {
                  v37 = DWORD1(v178);
                  if (SDWORD1(v178) <= v35)
                  {
                    goto LABEL_93;
                  }
                }

                else if (v35 >= v178 >> 5)
                {
                  v37 = v178 >> 5;
LABEL_93:
                  v36 = v37;
                }

                if ((v173 & 0x8000u) == 0)
                {
                  v39 = v173 >> 5;
                }

                else
                {
                  v39 = DWORD1(v173);
                }

                v40 = v178 >> 5;
                if ((v178 & 0x8000u) != 0)
                {
                  v40 = DWORD1(v178);
                }

                icu::UnicodeString::doReplace(&v172, 0, v39, &v177, v36, (v40 - v36));
                if (v35 || (v178 & 1) == 0)
                {
                  if ((v178 & 0x8000u) == 0)
                  {
                    v41 = v178 >> 5;
                  }

                  else
                  {
                    v41 = DWORD1(v178);
                  }

                  if (v41 > v35)
                  {
                    if (v35 > 0x3FF)
                    {
                      LOWORD(v178) = v178 | 0xFFE0;
                      DWORD1(v178) = v35;
                    }

                    else
                    {
                      LOWORD(v178) = v178 & 0x1F | (32 * v35);
                    }
                  }
                }

                else
                {
                  icu::UnicodeString::unBogus(&v177);
                }

LABEL_117:
                v144 = L"strength";
                icu::UnicodeString::UnicodeString(&__src, 1, &v144);
                if (v178)
                {
                  v45 = WORD4(__src);
                  if (BYTE8(__src))
                  {
                    goto LABEL_130;
                  }
                }

                else
                {
                  if ((v178 & 0x8000u) == 0)
                  {
                    v44 = v178 >> 5;
                  }

                  else
                  {
                    v44 = DWORD1(v178);
                  }

                  v45 = WORD4(__src);
                  if ((SWORD4(__src) & 0x8000u) == 0)
                  {
                    v46 = WORD4(__src) >> 5;
                  }

                  else
                  {
                    v46 = HIDWORD(__src);
                  }

                  if ((BYTE8(__src) & 1) == 0 && v44 == v46)
                  {
                    v47 = (BYTE8(__src) & 2) != 0 ? (&__src + 10) : *(&v148 + 1);
                    if (icu::UnicodeString::doEquals(&v177, v47, v44))
                    {
LABEL_130:
                      if ((v173 & 0x8000u) == 0)
                      {
                        v48 = v173 >> 5;
                      }

                      else
                      {
                        v48 = DWORD1(v173);
                      }

                      icu::UnicodeString::~UnicodeString((v173 >> 5), &__src);
                      v122[6] = v144;
                      if (v48 == 1)
                      {
                        v49 = v173;
                        if ((v173 & 0x8000u) == 0)
                        {
                          v50 = v173 >> 5;
                        }

                        else
                        {
                          v50 = DWORD1(v173);
                        }

                        if (v50)
                        {
                          if ((v173 & 2) != 0)
                          {
                            v51 = &v173 + 1;
                          }

                          else
                          {
                            v51 = v174;
                          }

                          v52 = *v51;
                          v49 = *v51;
                          if (v49 == 73)
                          {
                            v53 = 15;
LABEL_180:
                            icu::CollationSettings::setStrength(*(v3 + 32), v53, 0, a2);
                            goto LABEL_196;
                          }

                          if ((v52 - 53) >= 0xFFFCu)
                          {
                            v53 = v49 - 49;
                            if (v49 != 48)
                            {
                              goto LABEL_180;
                            }
                          }
                        }

                        goto LABEL_218;
                      }

LABEL_145:
                      v143 = "a";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v143);
                      if (v178)
                      {
                        v57 = WORD4(__src);
                        v58 = BYTE8(__src) & 1;
                      }

                      else
                      {
                        if ((v178 & 0x8000u) == 0)
                        {
                          v54 = v178 >> 5;
                        }

                        else
                        {
                          v54 = DWORD1(v178);
                        }

                        if ((SWORD4(__src) & 0x8000u) == 0)
                        {
                          v55 = WORD4(__src) >> 5;
                        }

                        else
                        {
                          v55 = HIDWORD(__src);
                        }

                        if ((BYTE8(__src) & 1) != 0 || v54 != v55)
                        {
                          icu::UnicodeString::~UnicodeString(WORD4(__src), &__src);
                          v122[4] = v143;
                          goto LABEL_163;
                        }

                        if ((BYTE8(__src) & 2) != 0)
                        {
                          v56 = &__src + 10;
                        }

                        else
                        {
                          v56 = *(&v148 + 1);
                        }

                        v58 = icu::UnicodeString::doEquals(&v177, v56, v54);
                      }

                      icu::UnicodeString::~UnicodeString(v57, &__src);
                      v122[3] = v143;
                      if (v58)
                      {
                        v142 = "n";
                        icu::UnicodeString::UnicodeString(&__src, 1, &v142);
                        v59 = sub_195213DE4(&v172, &__src);
                        icu::UnicodeString::~UnicodeString(v60, &__src);
                        v115[1] = v142;
                        if (v59)
                        {
                          v61 = 21;
LABEL_171:
                          icu::CollationSettings::setAlternateHandling(*(v3 + 32), v61, 0, a2);
LABEL_196:
                          *(v3 + 72) = v11;
LABEL_197:
                          icu::UnicodeString::~UnicodeString(v49, &v172);
                          goto LABEL_222;
                        }

                        v141 = "s";
                        icu::UnicodeString::UnicodeString(&__src, 1, &v141);
                        v72 = sub_195213DE4(&v172, &__src);
                        icu::UnicodeString::~UnicodeString(v73, &__src);
                        v115[0] = v141;
                        v49 = v115;
                        if (v72)
                        {
                          v61 = 20;
                          goto LABEL_171;
                        }

                        goto LABEL_218;
                      }

LABEL_163:
                      v140 = "m";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v140);
                      v62 = sub_195213DE4(&v177, &__src);
                      icu::UnicodeString::~UnicodeString(v63, &__src);
                      v122[2] = v140;
                      if (v62)
                      {
                        v139 = "s";
                        icu::UnicodeString::UnicodeString(&__src, 1, &v139);
                        v64 = sub_195213DE4(&v172, &__src);
                        icu::UnicodeString::~UnicodeString(v65, &__src);
                        v116[3] = v139;
                        if (v64)
                        {
                          v66 = 0;
                        }

                        else
                        {
                          v138 = "p";
                          v66 = 1;
                          icu::UnicodeString::UnicodeString(&__src, 1, &v138);
                          v74 = sub_195213DE4(&v172, &__src);
                          icu::UnicodeString::~UnicodeString(v75, &__src);
                          v116[2] = v138;
                          if (!v74)
                          {
                            v137 = "s";
                            icu::UnicodeString::UnicodeString(&__src, 1, &v137);
                            v76 = sub_195213DE4(&v172, &__src);
                            icu::UnicodeString::~UnicodeString(v77, &__src);
                            v116[1] = v137;
                            if (v76)
                            {
                              v66 = 2;
                            }

                            else
                            {
                              v136 = L"currency";
                              icu::UnicodeString::UnicodeString(&__src, 1, &v136);
                              v91 = sub_195213DE4(&v172, &__src);
                              icu::UnicodeString::~UnicodeString(v92, &__src);
                              v116[0] = v136;
                              v49 = v116;
                              if (!v91)
                              {
                                goto LABEL_218;
                              }

                              v66 = 3;
                            }
                          }
                        }

                        icu::CollationSettings::setMaxVariable(*(v3 + 32), v66, 0, a2);
                        LastPrimaryForGroup = icu::CollationData::getLastPrimaryForGroup(*(v3 + 24), v66 | 0x1000);
                        v49 = *(v3 + 32);
                        *(v49 + 28) = LastPrimaryForGroup;
                        goto LABEL_196;
                      }

                      v135 = "c";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v135);
                      v67 = sub_195213DE4(&v177, &__src);
                      icu::UnicodeString::~UnicodeString(v68, &__src);
                      v122[1] = v135;
                      if (v67)
                      {
                        v134 = "o";
                        icu::UnicodeString::UnicodeString(&__src, 1, &v134);
                        v69 = sub_195213DE4(&v172, &__src);
                        icu::UnicodeString::~UnicodeString(v70, &__src);
                        v117[2] = v134;
                        if (v69)
                        {
                          v71 = 16;
                        }

                        else
                        {
                          v133 = "l";
                          icu::UnicodeString::UnicodeString(&__src, 1, &v133);
                          v85 = sub_195213DE4(&v172, &__src);
                          icu::UnicodeString::~UnicodeString(v86, &__src);
                          v117[1] = v133;
                          if (v85)
                          {
                            v71 = 24;
                          }

                          else
                          {
                            v132 = "u";
                            icu::UnicodeString::UnicodeString(&__src, 1, &v132);
                            v94 = sub_195213DE4(&v172, &__src);
                            icu::UnicodeString::~UnicodeString(v95, &__src);
                            v117[0] = v132;
                            v49 = v117;
                            if (!v94)
                            {
                              goto LABEL_218;
                            }

                            v71 = 25;
                          }
                        }

                        icu::CollationSettings::setCaseFirst(*(v3 + 32), v71, 0, a2);
                        goto LABEL_196;
                      }

                      v131 = "c";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v131);
                      v78 = sub_195213DE4(&v177, &__src);
                      icu::UnicodeString::~UnicodeString(v79, &__src);
                      v122[0] = v131;
                      if (v78)
                      {
                        v81 = icu::CollationRuleParser::getOnOffValue(v122, &v172, v80);
                        if (v81 == -1)
                        {
                          goto LABEL_218;
                        }

                        v82 = v81;
                        v83 = *(v3 + 32);
                        v84 = 1024;
LABEL_195:
                        icu::CollationSettings::setFlag(v83, v84, v82, 0, a2);
                        goto LABEL_196;
                      }

                      v130 = "n";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v130);
                      v87 = sub_195213DE4(&v177, &__src);
                      icu::UnicodeString::~UnicodeString(v88, &__src);
                      v121 = v130;
                      if (v87)
                      {
                        v90 = icu::CollationRuleParser::getOnOffValue(&v121, &v172, v89);
                        if (v90 == -1)
                        {
                          goto LABEL_218;
                        }

                        v82 = v90;
                        v83 = *(v3 + 32);
                        v84 = 1;
                        goto LABEL_195;
                      }

                      v129 = "n";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v129);
                      v96 = sub_195213DE4(&v177, &__src);
                      icu::UnicodeString::~UnicodeString(v97, &__src);
                      v120 = v129;
                      if (v96)
                      {
                        v99 = icu::CollationRuleParser::getOnOffValue(&v120, &v172, v98);
                        if (v99 == -1)
                        {
                          goto LABEL_218;
                        }

                        v82 = v99;
                        v83 = *(v3 + 32);
                        v84 = 2;
                        goto LABEL_195;
                      }

                      v128 = "h";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v128);
                      v100 = sub_195213DE4(&v177, &__src);
                      icu::UnicodeString::~UnicodeString(v101, &__src);
                      v119 = v128;
                      if (v100)
                      {
                        v103 = icu::CollationRuleParser::getOnOffValue(&v119, &v172, v102);
                        if (v103 != -1)
                        {
                          if (v103 == 17)
                          {
                            v49 = *a2;
                            if (v49 <= 0)
                            {
                              *a2 = U_INVALID_FORMAT_ERROR;
                              *(v3 + 48) = "[hiraganaQ on] is not supported";
                              v49 = *(v3 + 40);
                              if (v49)
                              {
                                icu::CollationRuleParser::setErrorContext(v3);
                              }
                            }
                          }

                          goto LABEL_196;
                        }

                        goto LABEL_218;
                      }

                      v127 = "i";
                      icu::UnicodeString::UnicodeString(&__src, 1, &v127);
                      v104 = sub_195213DE4(&v177, &__src);
                      icu::UnicodeString::~UnicodeString(v105, &__src);
                      v118 = v127;
                      v49 = &v118;
                      if (!v104)
                      {
LABEL_218:
                        icu::UnicodeString::~UnicodeString(v49, &v172);
                        goto LABEL_219;
                      }

                      memset(&v170[1], 0, 48);
                      v170[0] = &v170[1] + 5;
                      LODWORD(v170[1]) = 40;
                      v171 = 0;
                      icu::CharString::appendInvariantChars(v170, &v172, a2);
                      if (*a2 == U_MEMORY_ALLOCATION_ERROR)
                      {
LABEL_228:
                        v49 = BYTE4(v170[1]);
                        if (BYTE4(v170[1]))
                        {
                          free(v170[0]);
                        }

                        goto LABEL_197;
                      }

                      v126 = 0;
                      v168 = 0u;
                      v169 = 0u;
                      *v166 = 0u;
                      v167 = 0u;
                      ulocimp_forLanguageTag(v170[0], &v126, a2, -1, v166);
                      if (*a2 > 0)
                      {
                        goto LABEL_224;
                      }

                      if (v126 != v171)
                      {
                        goto LABEL_224;
                      }

                      v154 = 0u;
                      memset(v155, 0, 29);
                      v152 = 0u;
                      v153 = 0u;
                      v150 = 0u;
                      v151 = 0u;
                      v148 = 0u;
                      v149 = 0u;
                      __src = 0u;
                      BaseName = uloc_getBaseName(v166[0], &__src, 157, a2);
                      if (*a2 > 0 || BaseName >= 96)
                      {
LABEL_224:
                        *a2 = U_INVALID_FORMAT_ERROR;
                        *(v3 + 48) = "expected language tag in [import langTag]";
                        if (*(v3 + 40))
                        {
                          icu::CollationRuleParser::setErrorContext(v3);
                        }

                        goto LABEL_226;
                      }

                      if (!BaseName || BaseName == 3 && (__src == 28277 ? (v107 = BYTE2(__src) == 100) : (v107 = 0), v107))
                      {
                        strcpy(&__src, "root");
                      }

                      else if (__src == 95)
                      {
                        memmove(&__src + 3, &__src, BaseName + 1);
                        qmemcpy(&__src, "und", 3);
                      }

                      v164 = 0u;
                      v165 = 0u;
                      *v162 = 0u;
                      v163 = 0u;
                      ulocimp_getKeywordValue(v166[0], "collation", 9, a2, v162);
                      if (*a2 < 1)
                      {
                        v110 = *(v3 + 64);
                        if (v110)
                        {
                          v158 = 0u;
                          v161 = 0;
                          v160 = 0u;
                          v159 = 0u;
                          v157 = &unk_1F0935D00;
                          LOWORD(v158) = 2;
                          if (DWORD2(v165))
                          {
                            v111 = v162[0];
                          }

                          else
                          {
                            v111 = "standard";
                          }

                          (*(*v110 + 24))(v110, &__src, v111, &v157, v3 + 48, a2);
                          if (*a2 < 1)
                          {
                            v113 = *(v3 + 16);
                            v114 = *(v3 + 72);
                            icu::CollationRuleParser::parse(v3, &v157, a2);
                            v112 = *a2;
                            if (v112 >= 1)
                            {
                              v112 = *(v3 + 40);
                              if (v112)
                              {
                                v112[1] = v114;
                              }
                            }

                            *(v3 + 16) = v113;
                            *(v3 + 72) = v11;
                          }

                          else
                          {
                            if (!*(v3 + 48))
                            {
                              *(v3 + 48) = "[import langTag] failed";
                            }

                            icu::CollationRuleParser::setErrorContext(v3);
                          }

                          icu::UnicodeString::~UnicodeString(v112, &v157);
                          goto LABEL_249;
                        }

                        *a2 = U_INVALID_FORMAT_ERROR;
                        v109 = "[import langTag] is not supported";
                      }

                      else
                      {
                        *a2 = U_INVALID_FORMAT_ERROR;
                        v109 = "expected language tag in [import langTag]";
                      }

                      *(v3 + 48) = v109;
                      if (*(v3 + 40))
                      {
                        icu::CollationRuleParser::setErrorContext(v3);
                      }

LABEL_249:
                      if (BYTE4(v162[1]))
                      {
                        free(v162[0]);
                      }

LABEL_226:
                      if (BYTE4(v166[1]))
                      {
                        free(v166[0]);
                      }

                      goto LABEL_228;
                    }
                  }
                }

                icu::UnicodeString::~UnicodeString(v45, &__src);
                v122[5] = v144;
                goto LABEL_145;
              }

LABEL_56:
              icu::CollationRuleParser::parseReordering(v3, &v177, a2);
LABEL_80:
              *(v3 + 72) = v11;
LABEL_222:
              this = icu::UnicodeString::~UnicodeString(v25, &v177);
              goto LABEL_223;
            }

            icu::UnicodeString::~UnicodeString(v178, &__src);
            v122[10] = v146;
            goto LABEL_56;
          }

          v14 = 0;
        }

LABEL_53:
        icu::UnicodeString::~UnicodeString(v14, &__src);
        v122[9] = v146;
        goto LABEL_64;
      }
    }

    if ((v7 & 0x8000) != 0)
    {
      v8 = *(v6 + 12);
    }

    if (v8 <= Words)
    {
      goto LABEL_219;
    }

    v15 = (v7 & 2) != 0 ? v6 + 10 : *(v6 + 24);
    if (*(v15 + 2 * Words) != 91)
    {
      goto LABEL_219;
    }

    v156 = 0;
    memset(v155, 0, sizeof(v155));
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    __src = 0u;
    v148 = 0u;
    icu::UnicodeSet::UnicodeSet(&__src);
    v16 = icu::CollationRuleParser::parseUnicodeSet(v3, Words, &__src, a2);
    if (*a2 > 0)
    {
LABEL_114:
      (icu::UnicodeSet::~UnicodeSet)(&__src);
      goto LABEL_222;
    }

    v17 = v16;
    v125 = L"optimize";
    v18 = icu::UnicodeString::UnicodeString(&v172, 1, &v125);
    if (v178)
    {
      v22 = v173;
      v23 = v173 & 1;
    }

    else
    {
      if ((v178 & 0x8000u) == 0)
      {
        v19 = v178 >> 5;
      }

      else
      {
        v19 = DWORD1(v178);
      }

      if ((v173 & 0x8000u) == 0)
      {
        v20 = v173 >> 5;
      }

      else
      {
        v20 = DWORD1(v173);
      }

      if ((v173 & 1) != 0 || v19 != v20)
      {
        v38 = icu::UnicodeString::~UnicodeString(v173, v18);
        v123[2] = v125;
        goto LABEL_109;
      }

      if ((v173 & 2) != 0)
      {
        v21 = &v173 + 2;
      }

      else
      {
        v21 = v174;
      }

      v23 = icu::UnicodeString::doEquals(&v177, v21, v19);
    }

    v38 = icu::UnicodeString::~UnicodeString(v22, &v172);
    v123[1] = v125;
    if (v23)
    {
      (*(**(v3 + 56) + 48))(*(v3 + 56), &__src, v3 + 48, a2);
LABEL_111:
      if (*a2 >= 1)
      {
        icu::CollationRuleParser::setErrorContext(v3);
      }

      *(v3 + 72) = v17;
      goto LABEL_114;
    }

LABEL_109:
    v124 = "s";
    icu::UnicodeString::UnicodeString(v38, 1, &v124);
    v42 = sub_195213DE4(&v177, &v172);
    icu::UnicodeString::~UnicodeString(v43, &v172);
    v123[0] = v124;
    if (!v42)
    {
      icu::UnicodeSet::~UnicodeSet(v123, &__src);
LABEL_219:
      v25 = *a2;
      if (v25 <= 0)
      {
        *a2 = U_INVALID_FORMAT_ERROR;
        *(v3 + 48) = "not a valid setting/option";
        v25 = *(v3 + 40);
        if (v25)
        {
          icu::CollationRuleParser::setErrorContext(v3);
        }
      }

      goto LABEL_222;
    }

    (*(**(v3 + 56) + 40))(*(v3 + 56), &__src, v3 + 48, a2);
    goto LABEL_111;
  }

LABEL_223:
  v108 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::CollationRuleParser::skipComment(icu::CollationRuleParser *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(v2 + 8);
  result = a2;
  if ((v3 & 0x8000) != 0)
  {
    goto LABEL_4;
  }

LABEL_2:
  v5 = v3 >> 5;
  if (result < (v3 >> 5))
  {
    while (1)
    {
      if (v5 > result)
      {
        v6 = v2 + 10;
        if ((v3 & 2) == 0)
        {
          v6 = *(v2 + 24);
        }

        v7 = *(v6 + 2 * result);
        v8 = v7 > 0xD || ((1 << v7) & 0x3400) == 0;
        v9 = v8 && v7 - 8232 >= 2;
        if (!v9 || v7 == 133)
        {
          return (result + 1);
        }
      }

      ++result;
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_2;
      }

LABEL_4:
      v5 = *(v2 + 12);
      if (result >= v5)
      {
        return result;
      }
    }
  }

  return result;
}

char *icu::CollationRuleParser::setParseError(char *this, const char *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    *a3 = U_INVALID_FORMAT_ERROR;
    *(this + 6) = a2;
    if (*(this + 5))
    {
      return icu::CollationRuleParser::setErrorContext(this);
    }
  }

  return this;
}

uint64_t icu::CollationRuleParser::parseResetAndPosition(icu::CollationRuleParser *this, UErrorCode *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
LABEL_2:
    v2 = 0xFFFFFFFFLL;
    goto LABEL_3;
  }

  v7 = icu::CollationRuleParser::skipWhiteSpace(this, *(this + 18) + 1);
  if (icu::UnicodeString::doCompare(*(this + 2), v7, 7, "[", 0, 7))
  {
    goto LABEL_5;
  }

  v11 = v7 + 7;
  v12 = *(this + 2);
  v13 = *(v12 + 8);
  if (*(v12 + 8) < 0)
  {
    v14 = *(v12 + 12);
    if (v11 >= v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v11 >= (v13 >> 5))
    {
      goto LABEL_5;
    }

    v14 = v13 >> 5;
  }

  if (v14 <= v11)
  {
    v21 = 0xFFFFLL;
  }

  else
  {
    if ((v13 & 2) != 0)
    {
      v17 = v12 + 10;
    }

    else
    {
      v17 = *(v12 + 24);
    }

    v21 = *(v17 + 2 * v11);
  }

  if (!icu::PatternProps::isWhiteSpace(v21))
  {
    goto LABEL_5;
  }

  v22 = icu::CollationRuleParser::skipWhiteSpace(this, v7 + 8);
  v23 = v22 + 1;
  v24 = *(this + 2);
  v25 = *(v24 + 8);
  if ((v25 & 0x8000) != 0)
  {
    v26 = *(v24 + 12);
    if (v23 < v26)
    {
      goto LABEL_41;
    }

LABEL_5:
    v2 = 15;
    goto LABEL_6;
  }

  if (v23 >= (v25 >> 5))
  {
    goto LABEL_5;
  }

  v26 = v25 >> 5;
LABEL_41:
  if (v26 <= v22)
  {
    goto LABEL_5;
  }

  v27 = (v25 & 2) != 0 ? v24 + 10 : *(v24 + 24);
  v2 = *(v27 + 2 * v22) - 49;
  if (v2 > 2)
  {
    goto LABEL_5;
  }

  v28 = (v25 & 0x8000) != 0 ? *(v24 + 12) : v25 >> 5;
  if (v28 <= v23)
  {
    goto LABEL_5;
  }

  v29 = (v25 & 2) != 0 ? v24 + 10 : *(v24 + 24);
  if (*(v29 + 2 * v23) != 93)
  {
    goto LABEL_5;
  }

  v7 = icu::CollationRuleParser::skipWhiteSpace(this, v22 + 2);
LABEL_6:
  v8 = *(this + 2);
  v9 = *(v8 + 8);
  if (*(v8 + 8) < 0)
  {
    v10 = *(v8 + 12);
  }

  else
  {
    v10 = v9 >> 5;
  }

  if (v7 >= v10)
  {
    if (*a2 <= 0)
    {
      *a2 = U_INVALID_FORMAT_ERROR;
      *(this + 6) = "reset without position";
      if (*(this + 5))
      {
        icu::CollationRuleParser::setErrorContext(this);
      }
    }

    goto LABEL_2;
  }

  v31 = 0u;
  v32 = 0u;
  v34 = 0;
  v33 = 0u;
  v30 = &unk_1F0935D00;
  LOWORD(v31) = 2;
  if ((v9 & 0x8000) != 0)
  {
    v15 = *(v8 + 12);
  }

  else
  {
    v15 = v9 >> 5;
  }

  if (v15 > v7 && ((v9 & 2) != 0 ? (v16 = v8 + 10) : (v16 = *(v8 + 24)), *(v16 + 2 * v7) == 91))
  {
    v18 = icu::CollationRuleParser::parseSpecialPosition(this, v7, &v30, a2);
  }

  else
  {
    v18 = icu::CollationRuleParser::parseTailoringString(this, v7, &v30, a2);
  }

  v19 = v18;
  (*(**(this + 7) + 24))(*(this + 7), v2, &v30, this + 48, a2);
  v20 = *a2;
  if (v20 >= 1)
  {
    icu::CollationRuleParser::setErrorContext(this);
  }

  *(this + 18) = v19;
  icu::UnicodeString::~UnicodeString(v20, &v30);
LABEL_3:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t icu::CollationRuleParser::parseRelationOperator(icu::CollationRuleParser *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v4 = icu::CollationRuleParser::skipWhiteSpace(this, *(this + 18));
    *(this + 18) = v4;
    v5 = *(this + 2);
    v6 = *(v5 + 8);
    if (*(v5 + 8) < 0)
    {
      v7 = *(v5 + 12);
      if (v4 >= v7)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (v4 >= (v6 >> 5))
      {
        return 0xFFFFFFFFLL;
      }

      v7 = v6 >> 5;
    }

    if (v7 > v4)
    {
      v8 = v4 + 1;
      if ((v6 & 2) != 0)
      {
        v9 = v5 + 10;
      }

      else
      {
        v9 = *(v5 + 24);
      }

      v10 = *(v9 + 2 * v4);
      v2 = 0xFFFFFFFFLL;
      if (v10 <= 59)
      {
        if (v10 == 44)
        {
          v11 = 2;
        }

        else
        {
          if (v10 != 59)
          {
            return v2;
          }

          v11 = 1;
        }

        return v11 | ((v8 - v4) << 8);
      }

      if (v10 != 61)
      {
        if (v10 != 60)
        {
          return v2;
        }

        if ((v6 & 0x8000) != 0)
        {
          v12 = *(v5 + 12);
          if (v8 >= v12)
          {
            v11 = 0;
            goto LABEL_55;
          }
        }

        else
        {
          v12 = v6 >> 5;
          if (v8 >= (v6 >> 5))
          {
            v11 = 0;
LABEL_56:
            if (v8 < v12 && v12 > v8)
            {
              if ((v6 & 2) != 0)
              {
                v18 = v5 + 10;
              }

              else
              {
                v18 = *(v5 + 24);
              }

              if (*(v18 + 2 * v8) == 42)
              {
                v11 |= 0x10u;
                LODWORD(v8) = v8 + 1;
              }
            }

            return v11 | ((v8 - v4) << 8);
          }
        }

        if (v12 > v8 && ((v6 & 2) != 0 ? (v14 = v5 + 10) : (v14 = *(v5 + 24)), *(v14 + 2 * v8) == 60))
        {
          v8 = v4 + 2;
          if ((v6 & 0x8000) != 0)
          {
            v12 = *(v5 + 12);
            if (v8 >= v12)
            {
              v11 = 1;
              goto LABEL_55;
            }
          }

          else
          {
            v12 = v6 >> 5;
            if (v8 >= (v6 >> 5))
            {
              v11 = 1;
              goto LABEL_56;
            }
          }

          if (v12 > v8 && ((v6 & 2) != 0 ? (v17 = v5 + 10) : (v17 = *(v5 + 24)), *(v17 + 2 * v8) == 60))
          {
            v8 = v4 + 3;
            if ((v6 & 0x8000) != 0)
            {
              v12 = *(v5 + 12);
              if (v8 >= v12)
              {
                v11 = 2;
                goto LABEL_55;
              }
            }

            else
            {
              v12 = v6 >> 5;
              if (v8 >= (v6 >> 5))
              {
                v11 = 2;
                goto LABEL_56;
              }
            }

            if (v12 <= v8)
            {
              v11 = 2;
            }

            else
            {
              if ((v6 & 2) != 0)
              {
                v20 = v5 + 10;
              }

              else
              {
                v20 = *(v5 + 24);
              }

              v21 = *(v20 + 2 * v8) == 60;
              if (*(v20 + 2 * v8) == 60)
              {
                v11 = 3;
              }

              else
              {
                v11 = 2;
              }

              if (v21)
              {
                LODWORD(v8) = v4 + 4;
              }
            }
          }

          else
          {
            v11 = 1;
          }
        }

        else
        {
          v11 = 0;
        }

        if ((v6 & 0x8000) == 0)
        {
          v12 = v6 >> 5;
          goto LABEL_56;
        }

LABEL_55:
        v12 = *(v5 + 12);
        goto LABEL_56;
      }

      if ((v6 & 0x8000) != 0)
      {
        v13 = *(v5 + 12);
        if (v8 < v13)
        {
LABEL_30:
          if (v13 > v8)
          {
            if ((v6 & 2) != 0)
            {
              v15 = v5 + 10;
            }

            else
            {
              v15 = *(v5 + 24);
            }

            v16 = *(v15 + 2 * v8) == 42;
            if (*(v15 + 2 * v8) == 42)
            {
              v11 = 31;
            }

            else
            {
              v11 = 15;
            }

            if (v16)
            {
              LODWORD(v8) = v4 + 2;
            }

            return v11 | ((v8 - v4) << 8);
          }
        }
      }

      else if (v8 < (v6 >> 5))
      {
        v13 = v6 >> 5;
        goto LABEL_30;
      }

      v11 = 15;
      return v11 | ((v8 - v4) << 8);
    }

    return 0xFFFFFFFFLL;
  }

  return 0xFFFFFFFFLL;
}

void *icu::CollationRuleParser::parseRelationStrings(icu::CollationRuleParser *this, uint64_t a2, int a3, UErrorCode *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v41 = 0;
  v40 = 0u;
  v39 = 0u;
  v36 = 0;
  v37 = &unk_1F0935D00;
  LOWORD(v38) = 2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = 0;
  v32 = &unk_1F0935D00;
  LOWORD(v33) = 2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = &unk_1F0935D00;
  LOWORD(v28) = 2;
  v7 = icu::CollationRuleParser::parseTailoringString(this, a3, &v32, a4);
  v8 = *a4;
  if (v8 > 0)
  {
    goto LABEL_32;
  }

  v9 = v7;
  v10 = *(this + 2);
  v11 = *(v10 + 8);
  if (*(v10 + 8) < 0)
  {
    v12 = *(v10 + 12);
    if (v7 >= v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v7 >= (v11 >> 5))
    {
      goto LABEL_23;
    }

    v12 = v11 >> 5;
  }

  if (v12 > v7)
  {
    if ((v11 & 2) != 0)
    {
      v13 = v10 + 10;
    }

    else
    {
      v13 = *(v10 + 24);
    }

    v14 = *(v13 + 2 * v7);
    if (v14 != 124)
    {
LABEL_21:
      if (v14 == 47)
      {
        v9 = icu::CollationRuleParser::parseTailoringString(this, v9 + 1, &v27, a4);
      }

      goto LABEL_23;
    }

    icu::UnicodeString::operator=(&v37, &v32);
    v15 = icu::CollationRuleParser::parseTailoringString(this, v9 + 1, &v32, a4);
    v8 = *a4;
    if (v8 > 0)
    {
      goto LABEL_32;
    }

    v9 = v15;
    v16 = *(this + 2);
    v17 = *(v16 + 8);
    if (*(v16 + 8) < 0)
    {
      v18 = *(v16 + 12);
      if (v15 >= v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v15 >= (v17 >> 5))
      {
        goto LABEL_23;
      }

      v18 = v17 >> 5;
    }

    if (v18 > v15)
    {
      if ((v17 & 2) != 0)
      {
        v19 = v16 + 10;
      }

      else
      {
        v19 = *(v16 + 24);
      }

      v14 = *(v19 + 2 * v15);
      goto LABEL_21;
    }
  }

LABEL_23:
  if (v38 < 0x20u || (v20 = icu::UnicodeString::char32At(v38, &v37, 0), v22 = icu::UnicodeString::char32At(v21, &v32, 0), (*(**(this + 1) + 120))(*(this + 1), v20)) && (*(**(this + 1) + 120))(*(this + 1), v22))
  {
    (*(**(this + 7) + 32))(*(this + 7), a2, &v37, &v32, &v27, this + 48, a4);
    v8 = *a4;
    if (v8 >= 1)
    {
      icu::CollationRuleParser::setErrorContext(this);
    }

    *(this + 18) = v9;
  }

  else
  {
    v8 = *a4;
    if (v8 <= 0)
    {
      *a4 = U_INVALID_FORMAT_ERROR;
      *(this + 6) = "in 'prefix|str', prefix and str must each start with an NFC boundary";
      v8 = *(this + 5);
      if (v8)
      {
        icu::CollationRuleParser::setErrorContext(this);
      }
    }
  }

LABEL_32:
  icu::UnicodeString::~UnicodeString(v8, &v27);
  icu::UnicodeString::~UnicodeString(v23, &v32);
  result = icu::UnicodeString::~UnicodeString(v24, &v37);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}