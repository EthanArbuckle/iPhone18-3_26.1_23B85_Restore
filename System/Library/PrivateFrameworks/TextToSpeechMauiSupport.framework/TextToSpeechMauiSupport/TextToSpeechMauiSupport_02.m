void *crnc3rdprtyrnm_XML_GetCurrentLineNumber(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[71];
    if (v2)
    {
      if (v2 >= result[73])
      {
        (*(result[39] + 96))();
        v1[73] = v1[71];
      }
    }

    return (v1[99] + 1);
  }

  return result;
}

void *crnc3rdprtyrnm_XML_GetCurrentColumnNumber(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[71];
    if (v2)
    {
      if (v2 >= result[73])
      {
        (*(result[39] + 96))();
        v1[73] = v1[71];
      }
    }

    return v1[100];
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_FreeContentModel(uint64_t result)
{
  if (result)
  {
    return (*(result + 48))(*(result + 24));
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_MemMalloc(uint64_t result)
{
  if (result)
  {
    return (*(result + 32))(*(result + 24));
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_MemRealloc(uint64_t result)
{
  if (result)
  {
    return (*(result + 40))(*(result + 24));
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_MemFree(uint64_t result)
{
  if (result)
  {
    return (*(result + 48))(*(result + 24));
  }

  return result;
}

void *crnc3rdprtyrnm_XML_DefaultCurrent(void *result)
{
  if (result && result[23])
  {
    v1 = result[74];
    if (v1)
    {
      v2 = result[58];
      v3 = *v1;
      v4 = v1[1];
    }

    else
    {
      v2 = result[39];
      v3 = result[71];
      v4 = result[72];
    }

    return reportDefault(result, v2, v3, v4);
  }

  return result;
}

uint64_t reportDefault(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  if (*(a2 + 132))
  {
    v6 = a1[23];
    v7 = a1[1];
    v9 = (a4 - a3);

    return v6(v7, a3, v9);
  }

  else
  {
    if (a1[39] == a2)
    {
      v12 = a1 + 71;
      v13 = a1 + 72;
    }

    else
    {
      v12 = a1[74];
      v13 = v12 + 1;
    }

    do
    {
      v14 = a1[15];
      v16 = a1[14];
      v15 = (*(a2 + 112))(a2, &v17, a4, &v16, v14);
      *v13 = v17;
      result = (a1[23])(a1[1], a1[14], v16 - a1[14]);
      *v12 = v17;
    }

    while (v15 > 1);
  }

  return result;
}

char *crnc3rdprtyrnm_XML_ErrorString(int a1)
{
  if ((a1 - 1) > 0x2A)
  {
    return 0;
  }

  else
  {
    return off_279DA9208[a1 - 1];
  }
}

uint64_t crnc3rdprtyrnm_XML_SetBillionLaughsAttackProtectionMaximumAmplification(uint64_t result, float a2)
{
  if (result)
  {
    if (a2 >= 1.0 && *(result + 920) == 0)
    {
      *(result + 976) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetBillionLaughsAttackProtectionActivationThreshold(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 920))
    {
      return 0;
    }

    else
    {
      *(result + 984) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t crnc3rdprtyrnm_XML_SetReparseDeferralEnabled(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1)
  {
    if (a2 <= 1)
    {
      *(a1 + 104) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t crnc3rdprtyrnm_testingAccountingGetCountBytesDirect(uint64_t result)
{
  if (result)
  {
    return *(result + 952);
  }

  return result;
}

uint64_t crnc3rdprtyrnm_testingAccountingGetCountBytesIndirect(uint64_t result)
{
  if (result)
  {
    return *(result + 960);
  }

  return result;
}

uint64_t prologInitProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = initializeEncoding(a1);
  if (!result)
  {
    *(a1 + 552) = prologProcessor;

    return prologProcessor(a1, a2, a3, a4);
  }

  return result;
}

unint64_t getDebugLevel(const char *a1)
{
  v1 = getenv(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  *__error() = 0;
  v5 = 0;
  v3 = cstdlib_strtoul(v2, &v5, 0xAu);
  if (*__error() || v5 == v2 || *v5)
  {
    v3 = 0;
    *__error() = 0;
  }

  return v3;
}

uint64_t initializeEncoding(uint64_t a1)
{
  v2 = crnc3rdprtyrnm_XmlInitEncodingNS;
  if (!*(a1 + 480))
  {
    v2 = crnc3rdprtyrnm_XmlInitEncoding;
  }

  if (v2(a1 + 320, (a1 + 312), *(a1 + 472)))
  {
    return 0;
  }

  v4 = *(a1 + 472);

  return handleUnknownEncoding(a1, v4);
}

uint64_t prologProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = a2;
  v8 = (**(a1 + 312))();
  return doProlog(a1, *(a1 + 312), a2, a3, v8, v10, a4, *(a1 + 932) == 0, 1, 0);
}

uint64_t handleUnknownEncoding(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 272);
  if (!v2)
  {
    return 18;
  }

  memset(__b, 255, sizeof(__b));
  v14 = 0;
  v16 = 0;
  v15 = 0;
  if (!v2(*(a1 + 504), a2, __b))
  {
LABEL_8:
    if (v16)
    {
      v16(v14);
    }

    return 18;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = crnc3rdprtyrnm_XmlSizeOfUnknownEncoding();
  v8 = v6(v5, v7);
  *(a1 + 488) = v8;
  if (v8)
  {
    v9 = crnc3rdprtyrnm_XmlInitUnknownEncodingNS;
    if (!*(a1 + 480))
    {
      v9 = crnc3rdprtyrnm_XmlInitUnknownEncoding;
    }

    v10 = v9();
    if (v10)
    {
      v11 = v10;
      result = 0;
      *(a1 + 496) = v14;
      *(a1 + 512) = v16;
      *(a1 + 312) = v11;
      return result;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v16(v14);
  }

  return 1;
}

uint64_t doProlog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, char a9, int a10)
{
  v13 = a2;
  v14 = a1;
  v170 = a6;
  v15 = a1[87];
  if (a1[39] == a2)
  {
    v168 = a1 + 71;
    v16 = a1 + 72;
  }

  else
  {
    v168 = a1[74];
    v16 = v168 + 1;
  }

  v169 = v16;
  v17 = (a1 + 65);
  v163 = a1 + 82;
  v165 = a1 + 103;
  v166 = a1 + 101;
  while (2)
  {
    *v168 = a3;
    v18 = v170;
    *v169 = v170;
    if (a5 <= 0)
    {
      if (a8 && a5)
      {
        goto LABEL_365;
      }

      if (a5 > -5)
      {
        if (a5 > -2)
        {
          if (a5 == -1)
          {
            return 5;
          }

          *v168 = v18;
          return 4;
        }

        if (a5 == -4)
        {
          if (v13 == *(v14 + 312))
          {
            if (!*(v14 + 936))
            {
              return 3;
            }
          }

          else if (!*(*(v14 + 592) + 36))
          {
LABEL_365:
            v156 = 0;
            *a7 = a3;
            return v156;
          }

          if ((*v17)(v14 + 520, 4294967292, a4, a4, v13) == -1)
          {
            return 29;
          }

          goto LABEL_365;
        }

        if (a5 == -2)
        {
          return 6;
        }

LABEL_17:
        a5 = -a5;
        v170 = a4;
        goto LABEL_18;
      }

      if (a5 != -15)
      {
        goto LABEL_17;
      }

      a5 = 15;
    }

LABEL_18:
    v19 = (*v17)(v14 + 520, a5, a3);
    v20 = v19 > 0x39 || ((1 << v19) & 0x200000000000006) == 0;
    if (v20 && !accountingDiffTolerated(v14, a5, a3, v170, a10))
    {
      return 43;
    }

    v21 = 0;
    v22 = 1;
    switch(v19)
    {
      case 0xFFFFFFFF:
        if (a5 == 12)
        {
          v161 = 17;
        }

        else
        {
          v161 = 2;
        }

        if (a5 == 28)
        {
          return 10;
        }

        else
        {
          return v161;
        }

      case 0u:
        if (a5 != 14)
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      case 1u:
        v66 = v170;
        v67 = v14;
        v68 = 0;
        goto LABEL_189;
      case 2u:
        if (!*(v14 + 937))
        {
          goto LABEL_395;
        }

        v158 = *(v15 + 257);
        *(v15 + 257) = 1;
        if (!*(v14 + 940) || !*(v14 + 248))
        {
          goto LABEL_395;
        }

        v159 = lookup(v14, (v15 + 264), "#", 0x40uLL);
        if (!v159)
        {
          return 1;
        }

        v159[4] = *(v14 + 704);
        *(v15 + 259) = 0;
        if (!(*(v14 + 248))(*(v14 + 256), 0))
        {
          return 21;
        }

        if (*(v15 + 259))
        {
          if (!*(v15 + 258))
          {
            v160 = *(v14 + 240);
            if (v160)
            {
              if (!v160(*(v14 + 8)))
              {
                return 22;
              }
            }
          }
        }

        else
        {
          *(v15 + 257) = v158;
        }

LABEL_395:
        *(v14 + 552) = contentProcessor;
        return contentProcessor(v14, a3, a4, a7);
      case 3u:
        if (!*(v14 + 192))
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      case 4u:
        if (!*(v14 + 192))
        {
          goto LABEL_204;
        }

        v110 = poolStoreString(v166, v13, a3, v170);
        *(v14 + 624) = v110;
        if (!v110)
        {
          return 1;
        }

        v22 = 0;
        *(v14 + 840) = *(v14 + 832);
        *(v14 + 640) = 0;
LABEL_204:
        *(v14 + 632) = 0;
        goto LABEL_247;
      case 5u:
        *(v14 + 937) = 0;
        *(v15 + 257) = 1;
        if (*(v14 + 192))
        {
          v106 = poolStoreString(v166, v13, a3 + *(v13 + 128), v170 - *(v13 + 128));
          *(v14 + 632) = v106;
          if (!v106)
          {
            return 1;
          }

          v22 = 0;
          *(v14 + 840) = *(v14 + 832);
        }

        else
        {
          *(v14 + 632) = "#";
        }

        if (!*(v15 + 258) && !*(v14 + 940))
        {
          v134 = *(v14 + 240);
          if (v134)
          {
            if (!v134(*(v14 + 8)))
            {
              return 22;
            }
          }
        }

        if (*(v14 + 616))
        {
          goto LABEL_284;
        }

        v135 = lookup(v14, (v15 + 264), "#", 0x40uLL);
        *(v14 + 616) = v135;
        if (!v135)
        {
          return 1;
        }

        v135[5] = 0;
LABEL_284:
        if (!*(v15 + 256) || !*(v14 + 616))
        {
          goto LABEL_247;
        }

        v136 = poolStoreString((v15 + 160), v13, a3 + *(v13 + 128), v170 - *(v13 + 128));
        v137 = *(v14 + 616);
        *(v137 + 24) = v136;
        if (!v136)
        {
          return 1;
        }

        *(v137 + 32) = *(v14 + 704);
        *(v15 + 192) = *(v15 + 184);
        if (v19 == 13)
        {
          goto LABEL_288;
        }

        goto LABEL_247;
      case 6u:
        *(v14 + 937) = 0;
        v111 = lookup(v14, (v15 + 264), "#", 0x40uLL);
        *(v14 + 616) = v111;
        v156 = 1;
        if (!v111)
        {
          return v156;
        }

        *(v15 + 257) = 1;
        if (*(v14 + 192))
        {
          if (!(*(v13 + 104))(v13, a3, v170, v168))
          {
            return 32;
          }

          v112 = poolStoreString(v166, v13, a3 + *(v13 + 128), v170 - *(v13 + 128));
          if (!v112)
          {
            return v156;
          }

          v113 = v112;
          normalizePublicId(v112);
          v22 = 0;
          *(v14 + 840) = *(v14 + 832);
          *(v14 + 640) = v113;
        }

        else
        {
LABEL_212:
          if (!(*(v13 + 104))(v13, a3, v170, v168))
          {
            return 32;
          }
        }

        if (!*(v15 + 256) || !*(v14 + 616))
        {
          goto LABEL_247;
        }

        v114 = poolStoreString((v15 + 160), v13, a3 + *(v13 + 128), v170 - *(v13 + 128));
        if (!v114)
        {
          return 1;
        }

        v115 = v114;
        normalizePublicId(v114);
        *(*(v14 + 616) + 40) = v115;
        *(v15 + 192) = *(v15 + 184);
        if (v19 != 14)
        {
          goto LABEL_247;
        }

LABEL_288:
        if (!*(v14 + 296))
        {
          goto LABEL_247;
        }

        goto LABEL_330;
      case 7u:
        v117 = *(v14 + 192);
        if (!v117)
        {
          goto LABEL_328;
        }

        v117(*(v14 + 8), *(v14 + 624), *(v14 + 632), *(v14 + 640), 1);
        *(v14 + 624) = 0;
        v118 = *(v14 + 816);
        v36 = *(v14 + 808);
        if (!v118)
        {
          goto LABEL_273;
        }

        if (!v36)
        {
          goto LABEL_275;
        }

        do
        {
          v37 = v36;
          v36 = *v36;
          *v37 = v118;
          v118 = v37;
        }

        while (v36);
        goto LABEL_274;
      case 8u:
        if (a9 != 1)
        {
          return 4;
        }

        v82 = *(v14 + 624);
        if (!v82)
        {
          goto LABEL_313;
        }

        (*(v14 + 192))(*(v14 + 8), v82, *(v14 + 632), *(v14 + 640), 0);
        v83 = *(v14 + 816);
        v84 = *(v14 + 808);
        if (v83)
        {
          if (!v84)
          {
            goto LABEL_312;
          }

          do
          {
            v85 = v84;
            v84 = *v84;
            *v85 = v83;
            v83 = v85;
          }

          while (v84);
        }

        else
        {
          v85 = *(v14 + 808);
        }

        *(v14 + 816) = v85;
LABEL_312:
        v22 = 0;
        *v166 = 0;
        v165[1] = 0;
        v165[2] = 0;
        *v165 = 0;
LABEL_313:
        if (!*(v14 + 632) && !*(v14 + 937))
        {
          goto LABEL_346;
        }

        v146 = *(v15 + 257);
        *(v15 + 257) = 1;
        if (!*(v14 + 940) || !*(v14 + 248))
        {
          goto LABEL_345;
        }

        v147 = lookup(v14, (v15 + 264), "#", 0x40uLL);
        if (!v147)
        {
          return 1;
        }

        if (*(v14 + 937))
        {
          v148 = *(v14 + 704);
          v147[4] = v148;
        }

        else
        {
          v148 = v147[4];
        }

        *(v15 + 259) = 0;
        if (!(*(v14 + 248))(*(v14 + 256), 0, v148, v147[3], v147[5]))
        {
          return 21;
        }

        if (*(v15 + 259))
        {
          if (!*(v15 + 258))
          {
            v154 = *(v14 + 240);
            if (v154)
            {
              if (!v154(*(v14 + 8)))
              {
                return 22;
              }
            }
          }
        }

        else if (!*(v14 + 632))
        {
          *(v15 + 257) = v146;
        }

LABEL_345:
        *(v14 + 937) = 0;
LABEL_346:
        v155 = *(v14 + 200);
        if (!v155)
        {
          goto LABEL_247;
        }

        v155(*(v14 + 8));
        goto LABEL_330;
      case 9u:
        if ((*(v13 + 88))(v13, a3, v170))
        {
          goto LABEL_254;
        }

        if (!*(v15 + 256))
        {
          goto LABEL_253;
        }

        v119 = poolStoreString((v15 + 160), v13, a3, v170);
        if (!v119)
        {
          return 1;
        }

        v120 = v119;
        v121 = lookup(v14, v15, v119, 0x40uLL);
        *(v14 + 616) = v121;
        if (!v121)
        {
          return 1;
        }

        if (*v121 != v120)
        {
LABEL_253:
          *(v15 + 184) = *(v15 + 192);
LABEL_254:
          *(v14 + 616) = 0;
          goto LABEL_328;
        }

        v122 = 0;
        *(v15 + 192) = *(v15 + 184);
        v121[5] = 0;
        *(v121 + 57) = 0;
        if (!*(v14 + 920))
        {
LABEL_348:
          v122 = *(v14 + 592) == 0;
        }

LABEL_349:
        *(v121 + 58) = v122;
LABEL_350:
        if (!*(v14 + 296))
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      case 0xAu:
        if (!*(v15 + 256))
        {
          goto LABEL_253;
        }

        v125 = poolStoreString((v15 + 160), v13, a3, v170);
        if (!v125)
        {
          return 1;
        }

        v126 = v125;
        v121 = lookup(v14, (v15 + 264), v125, 0x40uLL);
        *(v14 + 616) = v121;
        if (!v121)
        {
          return 1;
        }

        if (*v121 != v126)
        {
          goto LABEL_253;
        }

        *(v15 + 192) = *(v15 + 184);
        v121[5] = 0;
        *(v121 + 57) = 1;
        if (!*(v14 + 920))
        {
          goto LABEL_348;
        }

        v122 = 0;
        goto LABEL_349;
      case 0xBu:
        if (!*(v15 + 256))
        {
          goto LABEL_328;
        }

        goto LABEL_350;
      case 0xCu:
        if (!*(v15 + 256))
        {
          goto LABEL_328;
        }

        v156 = storeEntityValue(v14, v13, a3 + *(v13 + 128), v170 - *(v13 + 128), 2);
        v78 = *(v14 + 616);
        v79 = *(v15 + 240);
        if (v78)
        {
          *(v78 + 8) = v79;
          v80 = *(v15 + 232);
          *(v78 + 16) = v80 - v79;
          *(v15 + 240) = v80;
          if (*(v14 + 296))
          {
            *v169 = a3;
            (*(v14 + 296))(*(v14 + 8), **(v14 + 616), *(*(v14 + 616) + 57), *(*(v14 + 616) + 8), *(*(v14 + 616) + 16), *(v14 + 704), 0, 0, 0);
            v22 = 0;
          }
        }

        else
        {
          *(v15 + 232) = v79;
        }

        if (v156)
        {
          return v156;
        }

        goto LABEL_247;
      case 0xDu:
        goto LABEL_284;
      case 0xEu:
        goto LABEL_212;
      case 0xFu:
        if (!*(v15 + 256) || !*(v14 + 616) || !*(v14 + 296))
        {
          goto LABEL_328;
        }

        *v169 = a3;
        (*(v14 + 296))(*(v14 + 8), **(v14 + 616), *(*(v14 + 616) + 57), 0, 0, *(*(v14 + 616) + 32), *(*(v14 + 616) + 24), *(*(v14 + 616) + 40), 0);
        goto LABEL_330;
      case 0x10u:
        if (!*(v15 + 256) || !*(v14 + 616))
        {
          goto LABEL_328;
        }

        v105 = poolStoreString((v15 + 160), v13, a3, v170);
        *(*(v14 + 616) + 48) = v105;
        if (!v105)
        {
          return 1;
        }

        *(v15 + 192) = *(v15 + 184);
        if (*(v14 + 208))
        {
          *v169 = a3;
          (*(v14 + 208))(*(v14 + 8), **(v14 + 616), *(*(v14 + 616) + 32), *(*(v14 + 616) + 24), *(*(v14 + 616) + 40), *(*(v14 + 616) + 48));
          goto LABEL_330;
        }

        if (!*(v14 + 296))
        {
          goto LABEL_328;
        }

        *v169 = a3;
        (*(v14 + 296))(*(v14 + 8), **(v14 + 616), 0, 0, 0, *(*(v14 + 616) + 32), *(*(v14 + 616) + 24), *(*(v14 + 616) + 40), *(*(v14 + 616) + 48));
        goto LABEL_330;
      case 0x11u:
        if (!*(v14 + 216))
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      case 0x12u:
        *v163 = 0;
        v163[1] = 0;
        if (!*(v14 + 216))
        {
          goto LABEL_328;
        }

        v109 = poolStoreString(v166, v13, a3, v170);
        *v163 = v109;
        if (v109)
        {
          goto LABEL_200;
        }

        return 1;
      case 0x13u:
        if (!*v163 || !*(v14 + 216))
        {
          goto LABEL_240;
        }

        v123 = poolStoreString(v166, v13, a3 + *(v13 + 128), v170 - *(v13 + 128));
        if (!v123)
        {
          return 1;
        }

        *v169 = a3;
        (*(v14 + 216))(*(v14 + 8), *(v14 + 656), *(v14 + 704), v123, *(v14 + 664));
        v22 = 0;
LABEL_240:
        v124 = *(v14 + 816);
        v45 = *(v14 + 808);
        if (!v124)
        {
          goto LABEL_244;
        }

        if (!v45)
        {
          goto LABEL_246;
        }

        do
        {
          v46 = v45;
          v45 = *v45;
          *v46 = v124;
          v124 = v46;
        }

        while (v45);
        goto LABEL_245;
      case 0x14u:
        if (*(v14 + 664) && *(v14 + 216))
        {
          *v169 = a3;
          (*(v14 + 216))(*(v14 + 8), *(v14 + 656), *(v14 + 704), 0, *(v14 + 664));
          v22 = 0;
        }

        v81 = *(v14 + 816);
        v45 = *(v14 + 808);
        if (!v81)
        {
          goto LABEL_244;
        }

        if (!v45)
        {
          goto LABEL_246;
        }

        do
        {
          v46 = v45;
          v45 = *v45;
          *v46 = v81;
          v81 = v46;
        }

        while (v45);
        goto LABEL_245;
      case 0x15u:
        if (!(*(v13 + 104))(v13, a3, v170, v168))
        {
          return 32;
        }

        if (!*v163)
        {
          goto LABEL_328;
        }

        v107 = poolStoreString(v166, v13, a3 + *(v13 + 128), v170 - *(v13 + 128));
        if (!v107)
        {
          return 1;
        }

        v108 = v107;
        normalizePublicId(v107);
        *(v14 + 664) = v108;
LABEL_200:
        *(v14 + 840) = *(v14 + 832);
        goto LABEL_330;
      case 0x16u:
        AttributeId = getAttributeId(v14, v13, a3, v170);
        *(v14 + 680) = AttributeId;
        if (!AttributeId)
        {
          return 1;
        }

        *(v14 + 688) = 0;
        *(v14 + 648) = 0;
        goto LABEL_257;
      case 0x17u:
        *(v14 + 688) = 1;
        v61 = "CDATA";
        goto LABEL_256;
      case 0x18u:
        *(v14 + 689) = 1;
        v61 = "ID";
        goto LABEL_256;
      case 0x19u:
        v61 = "IDREF";
        goto LABEL_256;
      case 0x1Au:
        v61 = "IDREFS";
        goto LABEL_256;
      case 0x1Bu:
        v61 = "ENTITY";
        goto LABEL_256;
      case 0x1Cu:
        v61 = "ENTITIES";
        goto LABEL_256;
      case 0x1Du:
        v61 = "NMTOKEN";
        goto LABEL_256;
      case 0x1Eu:
        v61 = "NMTOKENS";
LABEL_256:
        *(v14 + 648) = v61;
        goto LABEL_257;
      case 0x1Fu:
      case 0x20u:
        if (!*(v15 + 256) || !*(v14 + 288))
        {
          goto LABEL_328;
        }

        v23 = "(";
        if (v19 == 32)
        {
          v23 = "NOTATION(";
        }

        if (*(v14 + 648))
        {
          v24 = "|";
        }

        else
        {
          v24 = v23;
        }

        v25 = *v24;
        if (!*v24)
        {
          goto LABEL_38;
        }

        v26 = (v24 + 1);
        do
        {
          v27 = *(v14 + 832);
          if (v27 == *(v14 + 824))
          {
            if (!poolGrow(v166))
            {
              return 1;
            }

            v27 = *(v14 + 832);
          }

          *(v14 + 832) = v27 + 1;
          *v27 = v25;
          v28 = *v26++;
          v25 = v28;
        }

        while (v28);
LABEL_38:
        if (!*(v14 + 840) || !poolAppend(v166, v13, a3, v170))
        {
          return 1;
        }

        *(v14 + 648) = *(v14 + 840);
        goto LABEL_330;
      case 0x21u:
        goto LABEL_257;
      case 0x22u:
        ElementType = getElementType(v14, v13, a3, v170);
        *(v14 + 672) = ElementType;
        if (!ElementType)
        {
          return 1;
        }

LABEL_257:
        if (!*(v15 + 256) || !*(v14 + 288))
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      case 0x23u:
      case 0x24u:
        if (!*(v15 + 256))
        {
          goto LABEL_83;
        }

        if (!defineAttribute(*(v14 + 672), *(v14 + 680), *(v14 + 688), *(v14 + 689), 0, v14))
        {
          return 1;
        }

        if (!*(v14 + 288))
        {
          goto LABEL_83;
        }

        v40 = *(v14 + 648);
        if (!v40)
        {
          goto LABEL_83;
        }

        v41 = *v40;
        if (v41 != 40 && (v41 != 78 || v40[1] != 79))
        {
          goto LABEL_82;
        }

        v42 = *(v14 + 832);
        if (v42 != *(v14 + 824))
        {
          goto LABEL_78;
        }

        if (!poolGrow(v166))
        {
          return 1;
        }

        v42 = *(v14 + 832);
LABEL_78:
        *(v14 + 832) = v42 + 1;
        *v42 = 41;
        v43 = *(v14 + 832);
        if (v43 != *(v14 + 824))
        {
          goto LABEL_81;
        }

        if (!poolGrow(v166))
        {
          return 1;
        }

        v43 = *(v14 + 832);
LABEL_81:
        *(v14 + 832) = v43 + 1;
        *v43 = 0;
        *(v14 + 648) = *(v14 + 840);
        *(v14 + 840) = *(v14 + 832);
LABEL_82:
        *v169 = a3;
        (*(v14 + 288))(*(v14 + 8), **(v14 + 672), **(v14 + 680), *(v14 + 648), 0, v19 == 36);
        v22 = 0;
LABEL_83:
        v44 = *(v14 + 816);
        v45 = *(v14 + 808);
        if (v44)
        {
          if (!v45)
          {
            goto LABEL_246;
          }

          do
          {
            v46 = v45;
            v45 = *v45;
            *v46 = v44;
            v44 = v46;
          }

          while (v45);
        }

        else
        {
LABEL_244:
          v46 = v45;
        }

LABEL_245:
        *(v14 + 816) = v46;
LABEL_246:
        *v166 = 0;
        v165[1] = 0;
        v165[2] = 0;
        *v165 = 0;
        goto LABEL_247;
      case 0x25u:
      case 0x26u:
        if (!*(v15 + 256))
        {
          goto LABEL_328;
        }

        v29 = storeAttributeValue(v14, v13, *(v14 + 688), a3 + *(v13 + 128), v170 - *(v13 + 128), (v15 + 160), 2);
        if (v29)
        {
          return v29;
        }

        v30 = *(v15 + 192);
        *(v15 + 192) = *(v15 + 184);
        if (!defineAttribute(*(v14 + 672), *(v14 + 680), *(v14 + 688), 0, v30, v14))
        {
          return 1;
        }

        if (!*(v14 + 288))
        {
          goto LABEL_328;
        }

        v31 = *(v14 + 648);
        if (!v31)
        {
          goto LABEL_328;
        }

        v32 = *v31;
        if (v32 != 40 && (v32 != 78 || v31[1] != 79))
        {
          goto LABEL_56;
        }

        v33 = *(v14 + 832);
        if (v33 != *(v14 + 824))
        {
          goto LABEL_52;
        }

        if (!poolGrow(v166))
        {
          return 1;
        }

        v33 = *(v14 + 832);
LABEL_52:
        *(v14 + 832) = v33 + 1;
        *v33 = 41;
        v34 = *(v14 + 832);
        if (v34 != *(v14 + 824))
        {
          goto LABEL_55;
        }

        if (!poolGrow(v166))
        {
          return 1;
        }

        v34 = *(v14 + 832);
LABEL_55:
        *(v14 + 832) = v34 + 1;
        *v34 = 0;
        *(v14 + 648) = *(v14 + 840);
        *(v14 + 840) = *(v14 + 832);
LABEL_56:
        *v169 = a3;
        (*(v14 + 288))(*(v14 + 8), **(v14 + 672), **(v14 + 680), *(v14 + 648), v30, v19 == 38);
        v35 = *(v14 + 816);
        v36 = *(v14 + 808);
        if (v35)
        {
          if (!v36)
          {
            goto LABEL_275;
          }

          do
          {
            v37 = v36;
            v36 = *v36;
            *v37 = v35;
            v35 = v37;
          }

          while (v36);
        }

        else
        {
LABEL_273:
          v37 = v36;
        }

LABEL_274:
        *(v14 + 816) = v37;
LABEL_275:
        *v166 = 0;
        v165[1] = 0;
        v165[2] = 0;
        *v165 = 0;
        goto LABEL_330;
      case 0x27u:
        goto LABEL_327;
      case 0x28u:
        if (!*(v14 + 280))
        {
          goto LABEL_328;
        }

        v52 = getElementType(v14, v13, a3, v170);
        *(v14 + 672) = v52;
        v156 = 1;
        if (!v52)
        {
          return v156;
        }

        *(v15 + 344) = 0;
        *(v15 + 320) = 1;
        goto LABEL_330;
      case 0x29u:
      case 0x2Au:
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        if (!*(v14 + 280))
        {
          goto LABEL_67;
        }

        v38 = (*(v14 + 32))(*(v14 + 24), 32);
        v156 = 1;
        if (!v38)
        {
          return v156;
        }

        *(v38 + 24) = 0;
        if (v19 == 41)
        {
          v39 = 2;
        }

        else
        {
          v39 = 1;
        }

        *(v38 + 12) = 0;
        *(v38 + 4) = 0;
        *v38 = v39;
        *v169 = a3;
        (*(v14 + 280))(*(v14 + 8), **(v14 + 672), v38);
        v22 = 0;
LABEL_67:
        *(v15 + 320) = 0;
        goto LABEL_247;
      case 0x2Bu:
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        v127 = *(v15 + 328);
        v128 = 32 * *(*(v15 + 352) + 4 * *(v15 + 348) - 4);
        v129 = 3;
        goto LABEL_326;
      case 0x2Cu:
        v53 = *(v14 + 912);
        if (*(v14 + 528) < v53)
        {
          goto LABEL_323;
        }

        if (v53)
        {
          if ((v53 & 0x80000000) != 0)
          {
            return 1;
          }

          v54 = *(v14 + 40);
          v55 = *(v14 + 24);
          v56 = *(v14 + 904);
          *(v14 + 912) = 2 * v53;
          v57 = v54(v55, v56);
          if (!v57)
          {
            *(v14 + 912) >>= 1;
            return 1;
          }

          *(v14 + 904) = v57;
          v58 = *(v15 + 352);
          if (v58)
          {
            v59 = (*(v14 + 40))(*(v14 + 24), v58, 4 * *(v14 + 912));
            if (!v59)
            {
              return 1;
            }

            *(v15 + 352) = v59;
          }

          goto LABEL_323;
        }

        v149 = *(v14 + 24);
        v150 = *(v14 + 32);
        *(v14 + 912) = 32;
        v151 = v150(v149, 32);
        *(v14 + 904) = v151;
        if (v151)
        {
LABEL_323:
          *(*(v14 + 904) + *(v14 + 528)) = 0;
          if (!*(v15 + 320))
          {
            goto LABEL_328;
          }

          ScaffoldPart = nextScaffoldPart(v14);
          if ((ScaffoldPart & 0x80000000) != 0)
          {
            return 1;
          }

          *(*(v15 + 352) + 4 * (*(v15 + 348))++) = ScaffoldPart;
          v127 = *(v15 + 328);
          v128 = 32 * ScaffoldPart;
          v129 = 6;
LABEL_326:
          *(v127 + v128) = v129;
LABEL_327:
          if (!*(v14 + 280))
          {
LABEL_328:
            if (*(v14 + 184))
            {
              reportDefault(v14, v13, a3, v170);
            }
          }

LABEL_330:
          v153 = *(v14 + 928);
          if (v153 == 2)
          {
            return 35;
          }

          if (v153 == 3)
          {
            v156 = 0;
            *a7 = v170;
            return v156;
          }

          a3 = v170;
          a5 = (*v13)(v13, v170, a4, &v170);
          continue;
        }

        *(v14 + 912) = 0;
        return 1;
      case 0x2Du:
        goto LABEL_165;
      case 0x2Eu:
        v21 = 2;
        goto LABEL_165;
      case 0x2Fu:
        v21 = 1;
        goto LABEL_165;
      case 0x30u:
        v21 = 3;
LABEL_165:
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        v86 = *(v14 + 280);
        v22 = v86 == 0;
        v87 = *(v15 + 348) - 1;
        *(v15 + 348) = v87;
        *(*(v15 + 328) + 32 * *(*(v15 + 352) + 4 * v87) + 4) = v21;
        if (v87)
        {
          goto LABEL_247;
        }

        if (!v86)
        {
          goto LABEL_180;
        }

        v88 = *(v14 + 696);
        v89 = (*(v14 + 32))(*(v14 + 24), *(v88 + 336) + 32 * *(v88 + 344));
        if (!v89)
        {
          return 1;
        }

        v90 = *(v88 + 344);
        *(v89 + 16) = 0;
        if (v90)
        {
          v91 = (v89 + 32 * v90);
          v92 = v89 + 32;
          v93 = v89;
          v94 = v91;
          do
          {
            v95 = *(v93 + 16);
            v96 = *(v88 + 328);
            v97 = *(v96 + 32 * v95);
            *v93 = v97;
            v98 = v96 + 32 * v95;
            if (v97 == 4)
            {
              *(v93 + 8) = v94;
              v99 = *(v98 + 8);
              do
              {
                v100 = *v99++;
                *v94++ = v100;
              }

              while (v100);
              *(v93 + 16) = 0;
              *(v93 + 24) = 0;
            }

            else
            {
              *(v93 + 8) = 0;
              v101 = *(v98 + 24);
              *(v93 + 16) = v101;
              *(v93 + 24) = v92;
              if (v101)
              {
                v102 = 0;
                v103 = (v98 + 16);
                do
                {
                  v104 = *v103;
                  *(v92 + 16) = v104;
                  v92 += 32;
                  ++v102;
                  v103 = (v96 + 32 * v104 + 28);
                }

                while (v102 < *(v93 + 16));
              }
            }

            v93 += 32;
          }

          while (v93 < v91);
        }

        *v169 = a3;
        (*(v14 + 280))(*(v14 + 8), **(v14 + 672), v89);
LABEL_180:
        *(v15 + 320) = 0;
        *(v15 + 336) = 0;
        goto LABEL_247;
      case 0x31u:
        v62 = *(v14 + 904);
        v63 = *(v14 + 528);
        if (*(v62 + v63) == 44)
        {
          return 2;
        }

        if (*(v62 + v63))
        {
          v64 = 1;
        }

        else
        {
          v64 = *(v15 + 320) == 0;
        }

        if (!v64)
        {
          v65 = (*(v15 + 328) + 32 * *(*(v15 + 352) + 4 * *(v15 + 348) - 4));
          if (*v65 != 3)
          {
            *v65 = 5;
            v22 = *(v14 + 280) == 0;
          }
        }

        *(v62 + v63) = 124;
        goto LABEL_247;
      case 0x32u:
        v130 = *(v14 + 904);
        v131 = *(v14 + 528);
        if (*(v130 + v131) == 124)
        {
          return 2;
        }

        *(v130 + v131) = 44;
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        goto LABEL_327;
      case 0x33u:
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        v22 = 0;
        v60 = v170;
        goto LABEL_130;
      case 0x34u:
        v22 = 2;
        goto LABEL_113;
      case 0x35u:
        goto LABEL_113;
      case 0x36u:
        v22 = 3;
LABEL_113:
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        v60 = v170 - *(v13 + 128);
LABEL_130:
        v69 = nextScaffoldPart(v14);
        if ((v69 & 0x80000000) != 0)
        {
          return 1;
        }

        v70 = v69;
        v71 = (*(v15 + 328) + 32 * v69);
        *v71 = 4;
        v71[1] = v22;
        v72 = getElementType(v14, v13, a3, v60);
        if (!v72)
        {
          return 1;
        }

        v73 = 0;
        v74 = *v72;
        *(*(v15 + 328) + 32 * v70 + 8) = *v72;
          ;
        }

        v76 = *(v15 + 336);
        if (v73 > ~v76)
        {
          return 1;
        }

        *(v15 + 336) = v76 + v73;
        goto LABEL_327;
      case 0x37u:
        if (!reportProcessingInstruction(v14, v13, a3, v170))
        {
          return 1;
        }

        goto LABEL_330;
      case 0x38u:
        if (!reportComment(v14, v13, a3, v170))
        {
          return 1;
        }

        goto LABEL_330;
      case 0x39u:
        v66 = v170;
        v67 = v14;
        v68 = 1;
LABEL_189:
        v29 = processXmlDecl(v67, v68, a3, v66);
        if (v29)
        {
          return v29;
        }

        v13 = *(v14 + 312);
        goto LABEL_330;
      case 0x3Au:
        if (*(v14 + 184))
        {
          reportDefault(v14, v13, a3, v170);
        }

        v29 = doIgnoreSection(v14, v13, &v170, a4, a7, a8);
        if (v29)
        {
          return v29;
        }

        if (v170)
        {
          goto LABEL_330;
        }

        v156 = 0;
        *(v14 + 552) = ignoreSectionProcessor;
        return v156;
      case 0x3Bu:
      case 0x3Cu:
        *(v15 + 257) = 1;
        if (!*(v14 + 940))
        {
          v132 = *(v15 + 258);
          *(v15 + 256) = v132;
          if (v132)
          {
            goto LABEL_247;
          }

LABEL_270:
          v133 = *(v14 + 240);
          if (v133 && !v133(*(v14 + 8)))
          {
            return 22;
          }

          goto LABEL_247;
        }

        v47 = poolStoreString((v15 + 160), v13, a3 + *(v13 + 128), v170 - *(v13 + 128));
        if (!v47)
        {
          return 1;
        }

        v48 = v47;
        v49 = lookup(v14, (v15 + 264), v47, 0);
        v50 = v49;
        *(v15 + 184) = *(v15 + 192);
        if (!*(v14 + 540))
        {
          goto LABEL_92;
        }

        if (*(v15 + 258))
        {
          if (!*(v14 + 592))
          {
            goto LABEL_291;
          }
        }

        else if (!*(v15 + 257))
        {
LABEL_291:
          if (!v49)
          {
            return 11;
          }

          if (!*(v49 + 58))
          {
            return 24;
          }

          goto LABEL_293;
        }

LABEL_92:
        if (!v49)
        {
          *(v15 + 256) = *(v15 + 258);
          if (v19 == 60)
          {
            v51 = *(v14 + 264);
            if (v51)
            {
              v51(*(v14 + 8), v48, 1);
              goto LABEL_330;
            }
          }

          goto LABEL_328;
        }

LABEL_293:
        if (*(v49 + 56))
        {
          return 12;
        }

        if (v49[1])
        {
          v29 = processInternalEntity(v14, v49, v19 == 60);
          if (v29)
          {
            return v29;
          }

          goto LABEL_330;
        }

        v138 = *(v14 + 248);
        if (!v138)
        {
          *(v15 + 256) = *(v15 + 258);
          goto LABEL_328;
        }

        *(v15 + 259) = 0;
        *(v49 + 56) = 1;
        v139 = v14;
        do
        {
          v140 = v139;
          v139 = v139[115];
        }

        while (v139);
        v141 = vadd_s32(v140[124], 0x100000001);
        v140[124] = v141;
        v142 = v140[125].u32[0];
        if (v141.i32[1] > v142)
        {
          v140[125].i32[0] = v142 + 1;
        }

        v143 = v138(*(v14 + 256), 0, v49[4], v49[3], v49[5]);
        v144 = v14;
        if (!v143)
        {
          do
          {
            v157 = v14;
            v14 = *(v14 + 920);
          }

          while (v14);
          --*(v157 + 996);
          *(v50 + 56) = 0;
          return 21;
        }

        do
        {
          v145 = v144;
          v144 = *(v144 + 920);
        }

        while (v144);
        --*(v145 + 996);
        *(v50 + 56) = 0;
        if (!*(v15 + 259))
        {
          *(v15 + 256) = *(v15 + 258);
          goto LABEL_330;
        }

        v22 = 0;
        if (!*(v15 + 258))
        {
          goto LABEL_270;
        }

LABEL_247:
        if (v22)
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      default:
        goto LABEL_328;
    }
  }
}

BOOL accountingDiffTolerated(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a2 + 4) >= 5)
  {
    if (a5 == 2)
    {
      return 1;
    }

    goto LABEL_6;
  }

  result = 1;
  if (a5 != 2 && ((0x1Du >> (a2 + 4)) & 1) == 0)
  {
LABEL_6:
    v7 = a1;
    do
    {
      v8 = v7;
      v7 = *(v7 + 920);
    }

    while (v7);
    v9 = a4 - a3;
    v10 = 952;
    if (a5 == 0 && v8 == a1)
    {
      v11 = (v8 + 952);
    }

    else
    {
      v10 = 960;
      v11 = (v8 + 960);
    }

    v12 = *(v8 + v10);
    if (__CFADD__(v9, v12))
    {
      return 0;
    }

    *v11 = v12 + v9;
    v13 = *(v8 + 952);
    v14 = *(v8 + 960);
    v15 = (v14 + 22);
    v16 = v14 + v13;
    v17 = v15 / 22.0;
    if (v13)
    {
      v17 = v16 / v13;
    }

    if (v16 >= *(v8 + 984))
    {
      return v17 <= *(v8 + 976);
    }

    return 1;
  }

  return result;
}

uint64_t processXmlDecl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = -1;
  if (!accountingDiffTolerated(a1, 12, a3, a4, 0))
  {
    return 43;
  }

  v8 = crnc3rdprtyrnm_XmlParseXmlDeclNS;
  if (!*(a1 + 480))
  {
    v8 = crnc3rdprtyrnm_XmlParseXmlDecl;
  }

  v9 = (a1 + 568);
  if (!v8(a2, *(a1 + 312), a3, a4, (a1 + 568), &v31, &v30, &v33, &v32, &v29))
  {
    if (a2)
    {
      return 31;
    }

    else
    {
      return 30;
    }
  }

  if (!a2 && v29 == 1)
  {
    *(*(a1 + 696) + 258) = 1;
    if (*(a1 + 940) == 1)
    {
      *(a1 + 940) = 0;
    }
  }

  if (*(a1 + 304))
  {
    v10 = v33;
    if (v33)
    {
      v11 = *(a1 + 312);
      v12 = (*(v11 + 56))(v11, v33);
      v13 = poolStoreString((a1 + 856), v11, v10, v10 + v12);
      if (!v13)
      {
        return 1;
      }

      v10 = v13;
      *(a1 + 888) = *(a1 + 880);
    }

    if (v31)
    {
      v14 = poolStoreString((a1 + 856), *(a1 + 312), v31, v30 - *(*(a1 + 312) + 128));
      if (!v14)
      {
        return 1;
      }
    }

    else
    {
      v14 = 0;
    }

    (*(a1 + 304))(*(a1 + 8), v14, v10, v29);
    LOBYTE(v16) = v14 != 0;
  }

  else
  {
    v16 = *(a1 + 184);
    if (v16)
    {
      reportDefault(a1, *(a1 + 312), a3, a4);
      v10 = 0;
      LOBYTE(v16) = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  if (*(a1 + 472))
  {
    goto LABEL_26;
  }

  if (v32)
  {
    v21 = *(v32 + 128);
    v22 = *(a1 + 312);
    if (v21 != *(v22 + 128) || v21 == 2 && v32 != v22)
    {
      *v9 = v33;
      return 19;
    }

    *(a1 + 312) = v32;
LABEL_26:
    v17 = v16 ^ 1;
    if (v10)
    {
      v17 = 0;
    }

    if (v17)
    {
      return 0;
    }

    v18 = *(a1 + 864);
    v19 = *(a1 + 856);
    if (v18)
    {
      if (!v19)
      {
LABEL_48:
        result = 0;
        *(a1 + 856) = 0;
        *(a1 + 872) = 0;
        *(a1 + 888) = 0;
        *(a1 + 880) = 0;
        return result;
      }

      do
      {
        v20 = v19;
        v19 = *v19;
        *v20 = v18;
        v18 = v20;
      }

      while (v19);
    }

    else
    {
      v20 = *(a1 + 856);
    }

    *(a1 + 864) = v20;
    goto LABEL_48;
  }

  v23 = v33;
  if (!v33)
  {
    goto LABEL_26;
  }

  if (!v10)
  {
    v24 = *(a1 + 312);
    v25 = (*(v24 + 56))(v24, v33);
    v10 = poolStoreString((a1 + 856), v24, v23, v23 + v25);
    if (!v10)
    {
      return 1;
    }
  }

  result = handleUnknownEncoding(a1, v10);
  v26 = *(a1 + 864);
  v27 = *(a1 + 856);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_53;
    }

    do
    {
      v28 = v27;
      v27 = *v27;
      *v28 = v26;
      v26 = v28;
    }

    while (v27);
  }

  else
  {
    v28 = *(a1 + 856);
  }

  *(a1 + 864) = v28;
LABEL_53:
  *(a1 + 856) = 0;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  if (result == 18)
  {
    *v9 = v33;
  }

  return result;
}

uint64_t poolStoreString(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = poolAppend(a1, a2, a3, a4);
  if (result)
  {
    v6 = a1[3];
    if (v6 == a1[2])
    {
      if (!poolGrow(a1))
      {
        return 0;
      }

      v6 = a1[3];
    }

    a1[3] = (v6 + 1);
    *v6 = 0;
    return a1[4];
  }

  return result;
}

void *lookup(uint64_t a1, uint64_t *a2, char *a3, size_t a4)
{
  if (!a2[2])
  {
    if (a4)
    {
      *(a2 + 8) = 6;
      a2[2] = 64;
      result = (*(a2[4] + 8))(*a2[4], 512);
      *a2 = result;
      if (!result)
      {
        a2[2] = 0;
        return result;
      }

      cstdlib_memset(result, 0, 0x200uLL);
      v8.n128_u64[0] = hash(a1, a3);
      v12 = (a2[2] - 1) & v40;
      goto LABEL_45;
    }

    return 0;
  }

  v8.n128_u64[0] = hash(a1, a3);
  v10 = v9;
  v11 = a2[2];
  v12 = (v11 - 1) & v9;
  result = *(*a2 + 8 * v12);
  if (!result)
  {
LABEL_14:
    if (a4)
    {
      v22 = *(a2 + 8);
      if (!(a2[3] >> (v22 - 1)))
      {
LABEL_45:
        *(*a2 + 8 * v12) = (*(a2[4] + 8))(*a2[4], a4, v8);
        result = *(*a2 + 8 * v12);
        if (result)
        {
          cstdlib_memset(result, 0, a4);
          v41 = *a2;
          **(*a2 + 8 * v12) = a3;
          ++a2[3];
          return *(v41 + 8 * v12);
        }

        return result;
      }

      v23 = v22 + 1;
      v24 = (v22 + 1);
      if (v24 <= 0x3C)
      {
        result = (*(a2[4] + 8))(*a2[4], 8 << v23, v8);
        if (!result)
        {
          return result;
        }

        v25 = result;
        v42 = v24;
        v26 = 1 << v23;
        v27 = (1 << v23) - 1;
        cstdlib_memset(result, 0, 8 << v23);
        v28 = a2[2];
        if (v28)
        {
          for (i = 0; i < v28; ++i)
          {
            v30 = *(*a2 + 8 * i);
            if (v30)
            {
              hash(a1, *v30);
              v32 = v31 & v27;
              if (v25[v31 & v27])
              {
                LODWORD(v33) = 0;
                do
                {
                  if (v33)
                  {
                    v33 = v33;
                  }

                  else
                  {
                    v33 = ((v31 & -v26) >> (v42 - 1)) & (v27 >> 2) | 1;
                  }

                  v34 = v32 >= v33;
                  v35 = v32 - v33;
                  if (v34)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = 1 << v23;
                  }

                  v32 = v35 + v36;
                }

                while (v25[v32]);
              }

              v25[v32] = *(*a2 + 8 * i);
              v28 = a2[2];
            }
          }
        }

        (*(a2[4] + 24))(*a2[4], *a2);
        *a2 = v25;
        *(a2 + 8) = v23;
        a2[2] = v26;
        v12 = v27 & v10;
        if (v25[v27 & v10])
        {
          LODWORD(v37) = 0;
          do
          {
            if (v37)
            {
              v37 = v37;
            }

            else
            {
              v37 = ((v10 & -v26) >> (v42 - 1)) & (v27 >> 2) | 1;
            }

            v38 = v12 - v37;
            if (v12 >= v37)
            {
              v39 = 0;
            }

            else
            {
              v39 = 1 << v23;
            }

            v12 = v38 + v39;
          }

          while (v25[v38 + v39]);
        }

        goto LABEL_45;
      }
    }

    return 0;
  }

  v14 = 0;
  while (*a3 != **result)
  {
LABEL_8:
    if (!v14)
    {
      v14 = ((v10 & -v11) >> (*(a2 + 8) - 1)) & ((v11 - 1) >> 2) | 1;
    }

    v20 = v12 - v14;
    if (v12 >= v14)
    {
      v21 = 0;
    }

    else
    {
      v21 = a2[2];
    }

    v12 = v20 + v21;
    result = *(*a2 + 8 * (v20 + v21));
    if (!result)
    {
      goto LABEL_14;
    }
  }

  v15 = (*result + 1);
  v16 = (a3 + 1);
  v17 = *a3;
  while (v17)
  {
    v18 = *v16++;
    v17 = v18;
    v19 = *v15++;
    if (v17 != v19)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *normalizePublicId(_BYTE *result)
{
  v1 = result;
  for (i = result; ; ++i)
  {
    v3 = *i;
    if (v3 <= 0xC)
    {
      break;
    }

    if (v3 != 32 && v3 != 13)
    {
      goto LABEL_13;
    }

LABEL_9:
    v5 = result;
    if (v1 == result)
    {
      goto LABEL_15;
    }

    if (*(v1 - 1) != 32)
    {
      LOBYTE(v3) = 32;
LABEL_13:
      *v1++ = v3;
    }

    v5 = v1;
LABEL_15:
    v1 = v5;
  }

  if (v3 == 10)
  {
    goto LABEL_9;
  }

  if (*i)
  {
    goto LABEL_13;
  }

  if (v1 != result)
  {
    if (*(v1 - 1) == 32)
    {
      result = v1 - 1;
    }

    else
    {
      result = v1;
    }
  }

  *result = 0;
  return result;
}

uint64_t contentProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = doContent(a1, 0, *(a1 + 312), a2, a3, a4, *(a1 + 932) == 0, 0);
  if (!v5 && !storeRawNames(a1))
  {
    return 1;
  }

  return v5;
}

void *getElementType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 696);
  v6 = poolStoreString(v5 + 20, a2, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = lookup(a1, v5 + 5, v6, 0x28uLL);
  v9 = v8;
  if (v8)
  {
    if (*v8 != v7)
    {
      v5[23] = v5[24];
      return v9;
    }

    v5[24] = v5[23];
    if (setElementTypePrefix(a1, v8))
    {
      return v9;
    }

    return 0;
  }

  return v9;
}

void *getAttributeId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 696);
  v9 = *(v8 + 184);
  if (v9 == *(v8 + 176))
  {
    if (!poolGrow((v8 + 160)))
    {
      return 0;
    }

    v9 = *(v8 + 184);
  }

  *(v8 + 184) = v9 + 1;
  *v9 = 0;
  v10 = poolStoreString((v8 + 160), a2, a3, a4);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = (v10 + 1);
  v13 = lookup(a1, (v8 + 80), (v10 + 1), 0x18uLL);
  v14 = v13;
  if (v13)
  {
    if (*v13 != v12)
    {
      v15 = *(v8 + 192);
LABEL_8:
      *(v8 + 184) = v15;
      return v14;
    }

    v16 = *(v8 + 184);
    *(v8 + 192) = v16;
    if (!*(a1 + 480))
    {
      return v14;
    }

    v17 = *v12;
    if (v17 == 120 && v11[2] == 109 && v11[3] == 108 && v11[4] == 110 && v11[5] == 115)
    {
      if (v11[6] == 58)
      {
        v18 = lookup(a1, (v8 + 120), v11 + 7, 0x10uLL);
        goto LABEL_38;
      }

      if (!v11[6])
      {
        v18 = (v8 + 304);
LABEL_38:
        v14[1] = v18;
        *(v14 + 17) = 1;
        return v14;
      }
    }

    v19 = 0;
    if (!*v12)
    {
      return v14;
    }

    while (v17 != 58)
    {
      v17 = v11[v19++ + 2];
      if (!v17)
      {
        return v14;
      }
    }

    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = *(v8 + 184);
        if (v21 == *(v8 + 176))
        {
          if (!poolGrow((v8 + 160)))
          {
            return 0;
          }

          v21 = *(v8 + 184);
        }

        v22 = v12[i];
        *(v8 + 184) = v21 + 1;
        *v21 = v22;
      }

      v16 = *(v8 + 184);
    }

    if (v16 == *(v8 + 176))
    {
      if (!poolGrow((v8 + 160)))
      {
        return 0;
      }

      v16 = *(v8 + 184);
    }

    *(v8 + 184) = v16 + 1;
    *v16 = 0;
    v23 = lookup(a1, (v8 + 120), *(v8 + 192), 0x10uLL);
    v14[1] = v23;
    if (v23)
    {
      v15 = *(v8 + 192);
      if (*v23 == v15)
      {
        *(v8 + 192) = *(v8 + 184);
        return v14;
      }

      goto LABEL_8;
    }

    return 0;
  }

  return v14;
}

uint64_t poolAppend(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v7 = a1 + 3;
  if (a1[3])
  {
    goto LABEL_3;
  }

  while (poolGrow(a1))
  {
LABEL_3:
    if ((*(a2 + 112))(a2, &v9, a4, v7, a1[2]) < 2)
    {
      return a1[4];
    }
  }

  return 0;
}

uint64_t defineAttribute(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 24);
  if (a4 || a5)
  {
    if (v10 >= 1)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 24);
      while (*v11 != a2)
      {
        v11 += 3;
        if (!--v12)
        {
          goto LABEL_7;
        }
      }

      return 1;
    }

LABEL_7:
    if (a4 && !*(a1 + 16) && !*(a2 + 17))
    {
      *(a1 + 16) = a2;
    }
  }

  if (v10 != *(a1 + 28))
  {
    result = *(a1 + 32);
LABEL_16:
    v15 = *(a1 + 24);
    v16 = result + 24 * v15;
    *v16 = a2;
    *(v16 + 16) = a5;
    *(v16 + 8) = a3;
    if (!a3)
    {
      *(a2 + 16) = 1;
    }

    *(a1 + 24) = v15 + 1;
    return 1;
  }

  v13 = v10;
  if (!v10)
  {
    *(a1 + 28) = 8;
    result = (*(a6 + 32))(*(a6 + 24), 192);
    *(a1 + 32) = result;
    if (!result)
    {
      *(a1 + 28) = 0;
      return result;
    }

    goto LABEL_16;
  }

  if (v10 > 0x3FFFFFFF)
  {
    return 0;
  }

  result = (*(a6 + 40))(*(a6 + 24), *(a1 + 32), 48 * v10);
  if (result)
  {
    *(a1 + 28) = 2 * v13;
    *(a1 + 32) = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t poolGrow(uint64_t *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = a1[4];
  if (!v3)
  {
    v19 = *v2;
    *a1 = v2;
    a1[1] = v19;
    *v2 = 0;
    a1[4] = v2 + 12;
    a1[2] = v2 + 12 + *(v2 + 8);
    a1[3] = v2 + 12;
    return 1;
  }

  v4 = a1[2] - v3;
  if (v4 >= *(v2 + 8))
  {
LABEL_5:
    v9 = a1[4];
    v10 = *(a1 + 4) - v9;
    if (*a1)
    {
      v11 = v9 == *a1 + 12;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v13 = 2 * v10;
      if (((2 * v10) & 0x80000000) == 0 && v13 && ((v13 + 12) & ~((v13 + 12) >> 31)) != 0)
      {
        v15 = a1[3];
        result = (*(a1[5] + 16))(*a1[5]);
        if (!result)
        {
          return result;
        }

        *a1 = result;
        *(result + 8) = v13;
        v17 = result + 12 + v15 - v9;
        a1[4] = result + 12;
        v18 = result + 12 + v13;
LABEL_28:
        a1[2] = v18;
        a1[3] = v17;
        return 1;
      }
    }

    else if ((v10 & 0x80000000) == 0)
    {
      if (v10 >= 0x400)
      {
        v12 = 2 * v10;
        if (((2 * v10) & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        v12 = 1024;
      }

      v20 = v12 + 12;
      if ((v20 & ~(v20 >> 31)) != 0)
      {
        result = (*(a1[5] + 8))(*a1[5], v20 & ~(v20 >> 31));
        if (!result)
        {
          return result;
        }

        v21 = result;
        *(result + 8) = v12;
        *result = *a1;
        *a1 = result;
        v23 = a1[3];
        v22 = a1[4];
        if (v23 == v22)
        {
          v24 = a1[3];
        }

        else
        {
          cstdlib_memcpy((result + 12), v22, v23 - v22);
          v24 = a1[3];
          v23 = a1[4];
        }

        v17 = v21 + 12 + v24 - v23;
        a1[4] = v21 + 12;
        v18 = v21 + 12 + v12;
        goto LABEL_28;
      }
    }

    return 0;
  }

  v5 = *v2;
  *v2 = *a1;
  *a1 = v2;
  a1[1] = v5;
  cstdlib_memcpy((v2 + 12), v3, v4);
  v6 = *a1;
  v7 = *a1 + 12;
  v8 = v7 + a1[3] - a1[4];
  a1[4] = v7;
  a1[2] = v7 + *(v6 + 8);
  a1[3] = v8;
  return 1;
}

uint64_t storeAttributeValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  v8 = a3;
  result = appendAttributeValue(a1, a2, a3, a4, a5, a6, a7);
  if (!result)
  {
    v10 = a6[3];
    if (!v8 && v10 != a6[4] && *(v10 - 1) == 32)
    {
      a6[3] = --v10;
    }

    if (v10 == a6[2])
    {
      if (!poolGrow(a6))
      {
        return 1;
      }

      v10 = a6[3];
    }

    result = 0;
    a6[3] = (v10 + 1);
    *v10 = 0;
  }

  return result;
}

uint64_t storeEntityValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(a1 + 696);
  v12 = *(v10 + 208);
  v11 = (v10 + 208);
  v13 = *(a1 + 544);
  *(a1 + 544) = 1;
  if (!v12 && !poolGrow(v11))
  {
    return 1;
  }

  v42 = a3;
  v14 = (*(a2 + 40))(a2, a3, a4, &v42);
  if (!accountingDiffTolerated(a1, v14, a3, v42, a5))
  {
LABEL_54:
    result = 43;
    goto LABEL_56;
  }

  while (v14 <= 8)
  {
    if (v14 < 0)
    {
      if (v14 != -3)
      {
        if (v14 == -4)
        {
          result = 0;
          goto LABEL_56;
        }

        if (v14 == -1)
        {
          if (*(a1 + 312) == a2)
          {
            *(a1 + 568) = a3;
          }

          goto LABEL_68;
        }

LABEL_70:
        if (*(a1 + 312) == a2)
        {
          *(a1 + 568) = a3;
        }

        result = 23;
        goto LABEL_56;
      }

      v42 = a3 + *(a2 + 128);
    }

    else
    {
      if (v14 == 6)
      {
        goto LABEL_28;
      }

      if (v14 != 7)
      {
        if (!v14)
        {
          if (*(a1 + 312) == a2)
          {
            *(a1 + 568) = v42;
          }

LABEL_68:
          result = 4;
          goto LABEL_56;
        }

        goto LABEL_70;
      }
    }

    v26 = *(v10 + 232);
    if (*(v10 + 224) == v26)
    {
      if (!poolGrow(v11))
      {
LABEL_55:
        result = 1;
        goto LABEL_56;
      }

      v26 = *(v10 + 232);
    }

    *(v10 + 232) = v26 + 1;
    *v26 = 10;
LABEL_36:
    a3 = v42;
    v14 = (*(a2 + 40))(a2, v42, a4, &v42);
    if (!accountingDiffTolerated(a1, v14, a3, v42, a5))
    {
      goto LABEL_54;
    }
  }

  if (v14 == 9)
  {
LABEL_28:
    if (!poolAppend(v11, a2, a3, v42))
    {
      goto LABEL_55;
    }

    goto LABEL_36;
  }

  if (v14 != 10)
  {
    if (v14 != 28)
    {
      goto LABEL_70;
    }

    if (!*(a1 + 936) && *(a1 + 312) == a2)
    {
      *(a1 + 568) = a3;
      result = 10;
      goto LABEL_56;
    }

    v15 = poolStoreString((a1 + 808), a2, a3 + *(a2 + 128), v42 - *(a2 + 128));
    if (!v15)
    {
      goto LABEL_55;
    }

    result = lookup(a1, (v10 + 264), v15, 0);
    *(a1 + 832) = *(a1 + 840);
    if (!result)
    {
      *(v10 + 256) = *(v10 + 258);
      goto LABEL_56;
    }

    v17 = result;
    if (*(result + 56) || result == *(a1 + 616))
    {
      if (*(a1 + 312) == a2)
      {
        *(a1 + 568) = a3;
      }

      result = 12;
      goto LABEL_56;
    }

    if (*(result + 24))
    {
      v18 = *(a1 + 248);
      if (!v18)
      {
        goto LABEL_27;
      }

      *(v10 + 259) = 0;
      *(result + 56) = 1;
      v19 = a1;
      do
      {
        v20 = v19;
        v19 = v19[115];
      }

      while (v19);
      v21 = vadd_s32(v20[124], 0x100000001);
      v20[124] = v21;
      v22 = v20[125].u32[0];
      if (v21.i32[1] > v22)
      {
        v20[125].i32[0] = v22 + 1;
      }

      v23 = v18(*(a1 + 256), 0, *(result + 32));
      v24 = a1;
      if (!v23)
      {
        v39 = a1;
        do
        {
          v40 = v39;
          v39 = *(v39 + 920);
        }

        while (v39);
        --*(v40 + 996);
        *(v17 + 56) = 0;
        result = 21;
        goto LABEL_56;
      }

      do
      {
        v25 = v24;
        v24 = *(v24 + 920);
      }

      while (v24);
      --*(v25 + 996);
      *(v17 + 56) = 0;
      if (!*(v10 + 259))
      {
LABEL_27:
        *(v10 + 256) = *(v10 + 258);
      }
    }

    else
    {
      *(result + 56) = 1;
      v33 = a1;
      do
      {
        v34 = v33;
        v33 = v33[115];
      }

      while (v33);
      v35 = vadd_s32(v34[124], 0x100000001);
      v34[124] = v35;
      v36 = v34[125].u32[0];
      if (v35.i32[1] > v36)
      {
        v34[125].i32[0] = v36 + 1;
      }

      result = storeEntityValue(a1, *(a1 + 464), *(result + 8), *(result + 8) + *(result + 16), 1);
      v37 = a1;
      do
      {
        v38 = v37;
        v37 = *(v37 + 920);
      }

      while (v37);
      --*(v38 + 996);
      *(v17 + 56) = 0;
      if (result)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_36;
  }

  v27 = (*(a2 + 80))(a2, a3);
  if ((v27 & 0x80000000) == 0)
  {
    v28 = crnc3rdprtyrnm_XmlUtf8Encode(v27, v41);
    if (v28 >= 1)
    {
      v29 = v28;
      v30 = v41;
      do
      {
        v31 = *(v10 + 232);
        if (*(v10 + 224) == v31)
        {
          if (!poolGrow(v11))
          {
            goto LABEL_55;
          }

          v31 = *(v10 + 232);
        }

        v32 = *v30++;
        *(v10 + 232) = v31 + 1;
        *v31 = v32;
        --v29;
      }

      while (v29);
    }

    goto LABEL_36;
  }

  if (*(a1 + 312) == a2)
  {
    *(a1 + 568) = a3;
  }

  result = 14;
LABEL_56:
  *(a1 + 544) = v13;
  return result;
}

uint64_t doIgnoreSection(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, int a6)
{
  v11 = *a3;
  v17 = *a3;
  if (*(a1 + 312) == a2)
  {
    v12 = (a1 + 568);
    *(a1 + 568) = v11;
    v13 = (a1 + 576);
  }

  else
  {
    v12 = *(a1 + 592);
    v13 = v12 + 1;
  }

  *v12 = v11;
  *a3 = 0;
  v14 = (*(a2 + 24))(a2, v11, a4, &v17);
  if (!accountingDiffTolerated(a1, v14, v11, v17, 0))
  {
    return 43;
  }

  v15 = v17;
  *v13 = v17;
  if (v14 <= -2)
  {
    if (v14 != -4)
    {
      if (v14 != -2)
      {
LABEL_22:
        *v12 = v15;
        return 23;
      }

      if (!a6)
      {
        return 6;
      }

LABEL_20:
      result = 0;
      *a5 = v11;
      return result;
    }

LABEL_19:
    if (!a6)
    {
      return 2;
    }

    goto LABEL_20;
  }

  if (v14 == -1)
  {
    goto LABEL_19;
  }

  if (!v14)
  {
    *v12 = v15;
    return 4;
  }

  if (v14 != 42)
  {
    goto LABEL_22;
  }

  if (*(a1 + 184))
  {
    reportDefault(a1, a2, v11, v15);
    v15 = v17;
  }

  *a3 = v15;
  *a5 = v15;
  if (*(a1 + 928) == 2)
  {
    return 35;
  }

  else
  {
    return 0;
  }
}

uint64_t ignoreSectionProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  result = doIgnoreSection(a1, *(a1 + 312), &v6, a3, a4, *(a1 + 932) == 0);
  if (!result)
  {
    if (v6)
    {
      *(a1 + 552) = prologProcessor;

      return prologProcessor(a1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nextScaffoldPart(uint64_t a1)
{
  v2 = *(a1 + 696);
  if (!*(v2 + 352))
  {
    v3 = (*(a1 + 32))(*(a1 + 24), 4 * *(a1 + 912));
    *(v2 + 352) = v3;
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }

    *v3 = 0;
  }

  result = *(v2 + 344);
  v5 = *(v2 + 340);
  v6 = *(v2 + 328);
  if (result >= v5)
  {
    if (v6)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v7 = (*(a1 + 40))(*(a1 + 24));
        if (v7)
        {
          v6 = v7;
          v8 = 2 * *(v2 + 340);
LABEL_11:
          *(v2 + 340) = v8;
          *(v2 + 328) = v6;
          result = *(v2 + 344);
          goto LABEL_12;
        }
      }
    }

    else
    {
      v9 = (*(a1 + 32))(*(a1 + 24), 1024);
      if (v9)
      {
        v6 = v9;
        v8 = 32;
        goto LABEL_11;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_12:
  *(v2 + 344) = result + 1;
  v10 = *(v2 + 348);
  if (v10)
  {
    v11 = (v6 + 32 * *(*(v2 + 352) + 4 * v10 - 4));
    v12 = v11[5];
    if (v12)
    {
      *(v6 + 32 * v12 + 28) = result;
    }

    v13 = v11[6];
    if (!v13)
    {
      v11[4] = result;
    }

    v11[5] = result;
    v11[6] = v13 + 1;
  }

  v14 = v6 + 32 * result;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  return result;
}

uint64_t processInternalEntity(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a1 + 600);
  if (v6)
  {
    *(a1 + 600) = *(v6 + 16);
  }

  else
  {
    v6 = (*(a1 + 32))(*(a1 + 24), 40);
    if (!v6)
    {
      return 1;
    }
  }

  *(a2 + 56) = 1;
  v7 = a1;
  do
  {
    v8 = v7;
    v7 = v7[115];
  }

  while (v7);
  v9 = vadd_s32(v8[124], 0x100000001);
  v8[124] = v9;
  v10 = v8[125].u32[0];
  if (v9.i32[1] > v10)
  {
    v8[125].i32[0] = v10 + 1;
  }

  *(a2 + 20) = 0;
  v11 = *(a1 + 592);
  *(a1 + 592) = v6;
  *(v6 + 16) = v11;
  *(v6 + 24) = a2;
  v12 = *(a1 + 612);
  *(v6 + 32) = v12;
  *(v6 + 36) = a3;
  *v6 = 0;
  *(v6 + 8) = 0;
  v13 = *(a2 + 8);
  v14 = v13 + *(a2 + 16);
  v20 = v13;
  v15 = *(a1 + 464);
  if (*(a2 + 57))
  {
    v16 = (*v15)(*(a1 + 464), v13, v14, &v20);
    result = doProlog(a1, *(a1 + 464), v13, v14, v16, v20, &v20, 0, 0);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = doContent(a1, v12, v15, v13, v14, &v20, 0, 1);
    if (result)
    {
      return result;
    }
  }

  if (v14 == v20 || *(a1 + 928) != 3)
  {
    if (*(*(a1 + 592) + 24) == a2)
    {
      v18 = a1;
      do
      {
        v19 = v18;
        v18 = *(v18 + 920);
      }

      while (v18);
      result = 0;
      --*(v19 + 996);
      *(a2 + 56) = 0;
      *(a1 + 592) = *(v6 + 16);
      *(v6 + 16) = *(a1 + 600);
      *(a1 + 600) = v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(a2 + 20) = v20 - v13;
    *(a1 + 552) = internalEntityProcessor;
  }

  return result;
}

uint64_t reportProcessingInstruction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 152))
  {
    v7 = a3 + 2 * *(a2 + 128);
    v8 = v7 + (*(a2 + 56))(a2, v7);
    result = poolStoreString((a1 + 808), a2, v7, v8);
    if (result)
    {
      v10 = result;
      *(a1 + 840) = *(a1 + 832);
      v11 = (*(a2 + 64))(a2, v8);
      result = poolStoreString((a1 + 808), a2, v11, a4 - 2 * *(a2 + 128));
      if (result)
      {
        v12 = result;
        normalizeLines(result);
        (*(a1 + 152))(*(a1 + 8), v10, v12);
        v13 = *(a1 + 816);
        v14 = *(a1 + 808);
        if (v13)
        {
          if (!v14)
          {
LABEL_13:
            *(a1 + 808) = 0;
            *(a1 + 824) = 0;
            *(a1 + 840) = 0;
            result = 1;
            *(a1 + 832) = 0;
            return result;
          }

          do
          {
            v15 = v14;
            v14 = *v14;
            *v15 = v13;
            v13 = v15;
          }

          while (v14);
        }

        else
        {
          v15 = *(a1 + 808);
        }

        *(a1 + 816) = v15;
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (*(a1 + 184))
    {
      reportDefault(a1, a2, a3, a4);
    }

    return 1;
  }

  return result;
}

uint64_t reportComment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 160))
  {
    result = poolStoreString((a1 + 808), a2, a3 + 4 * *(a2 + 128), a4 - 3 * *(a2 + 128));
    if (!result)
    {
      return result;
    }

    v6 = result;
    normalizeLines(result);
    (*(a1 + 160))(*(a1 + 8), v6);
    v7 = *(a1 + 816);
    v8 = *(a1 + 808);
    if (v7)
    {
      if (!v8)
      {
LABEL_12:
        *(a1 + 808) = 0;
        *(a1 + 824) = 0;
        *(a1 + 840) = 0;
        result = 1;
        *(a1 + 832) = 0;
        return result;
      }

      do
      {
        v9 = v8;
        v8 = *v8;
        *v9 = v7;
        v7 = v9;
      }

      while (v8);
    }

    else
    {
      v9 = *(a1 + 808);
    }

    *(a1 + 816) = v9;
    goto LABEL_12;
  }

  if (*(a1 + 184))
  {
    reportDefault(a1, a2, a3, a4);
  }

  return 1;
}

int8x8_t hash(uint64_t a1, char *a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  do
  {
    v2 = a1;
    a1 = *(a1 + 920);
  }

  while (a1);
  v3 = *(v2 + 944);
  v8.i64[0] = 0x736F6D6570736575;
  v8.i64[1] = v3 ^ 0x646F72616E646F6DLL;
  v9 = 0x6C7967656E657261;
  v10 = v3 ^ 0x7465646279746573;
  v11[1] = v11;
  v11[2] = 0;
  if (*a2)
  {
    v4 = 0;
    do
    {
      v5 = v4 + 1;
    }

    while (a2[++v4]);
  }

  else
  {
    v5 = 0;
  }

  v11[0] = 0;
  sip24_update(v8.i64, a2, v5);
  return sip24_final(&v8);
}

uint64_t *sip24_update(uint64_t *a1, char *a2, uint64_t a3)
{
  v3 = a2;
  v5 = &a2[a3];
  v6 = (a1 + 5);
  v7 = a1 + 4;
  v8 = &a2[a3 - 1];
  do
  {
    if (v3 >= v5)
    {
      v13 = 0;
    }

    else
    {
      v9 = *v6;
      if (*v6 >= v6)
      {
        v13 = 1;
      }

      else
      {
        v10 = v8 - v3;
        while (1)
        {
          v11 = v3;
          v12 = *v3++;
          *v6 = v9 + 1;
          *v9 = v12;
          if (!v10)
          {
            break;
          }

          v9 = *v6;
          --v10;
          if (*v6 >= v6)
          {
            goto LABEL_11;
          }
        }

        v3 = v5;
LABEL_11:
        v13 = (v11 + 1) < v5;
      }
    }

    if (*v6 < v6)
    {
      break;
    }

    v14 = a1[4];
    a1[3] ^= v14;
    sip_round(a1, 2);
    *a1 ^= v14;
    v15 = a1[6] + 8;
    a1[5] = v7;
    a1[6] = v15;
  }

  while (v13);
  return a1;
}

int8x8_t sip24_final(int8x16_t *a1)
{
  v2 = a1[2].i32[2] - (a1 + 32);
  v3 = (v2 + a1[3].i32[0]) << 56;
  if (v2 <= 3)
  {
    if (v2 == 1)
    {
LABEL_18:
      v3 |= a1[2].u8[0];
      goto LABEL_19;
    }

    if (v2 == 2)
    {
LABEL_17:
      v3 |= a1[2].u8[1] << 8;
      goto LABEL_18;
    }

    if (v2 != 3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v3 |= a1[2].u8[2] << 16;
    goto LABEL_17;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
LABEL_15:
      v3 |= a1[2].u8[3] << 24;
      goto LABEL_16;
    }

    if (v2 != 5)
    {
      goto LABEL_19;
    }

LABEL_14:
    v3 |= a1[2].u8[4] << 32;
    goto LABEL_15;
  }

  if (v2 == 6)
  {
LABEL_13:
    v3 |= a1[2].u8[5] << 40;
    goto LABEL_14;
  }

  if (v2 == 7)
  {
    v3 |= a1[2].u8[6] << 48;
    goto LABEL_13;
  }

LABEL_19:
  a1[1].i64[1] ^= v3;
  sip_round(a1->i64, 2);
  a1->i64[0] ^= v3;
  a1[1].i64[0] ^= 0xFFuLL;
  sip_round(a1->i64, 4);
  v4 = veorq_s8(*a1, a1[1]);
  return veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
}

uint64_t *sip_round(uint64_t *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = *result;
    v3 = result[1];
    v5 = result[2];
    v4 = result[3];
    do
    {
      v6 = v2 + v3;
      v7 = v6 ^ __ROR8__(v3, 51);
      v8 = v5 + v4;
      v9 = __ROR8__(v4, 48);
      v2 = (v8 ^ v9) + __ROR8__(v6, 32);
      v4 = v2 ^ __ROR8__(v8 ^ v9, 43);
      v10 = v8 + v7;
      v3 = v10 ^ __ROR8__(v7, 47);
      v5 = __ROR8__(v10, 32);
      --a2;
    }

    while (a2);
    *result = v2;
    result[1] = v3;
    result[2] = v5;
    result[3] = v4;
  }

  return result;
}

uint64_t doContent(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, int a8)
{
  v8 = a7;
  v114 = a4;
  if (*(a1 + 312) == a3)
  {
    v14 = (a1 + 568);
    v15 = (a1 + 576);
  }

  else
  {
    v14 = *(a1 + 592);
    v15 = v14 + 1;
  }

  v103 = *(a1 + 696);
  *v14 = a4;
  v105 = (a1 + 824);
  v106 = (a1 + 808);
  while (2)
  {
    v113 = v114;
    v16 = (*(a3 + 8))(a3);
    v17 = v16;
    if (v16 == -3 || v16 == -5)
    {
      v20 = v114;
      if (v8)
      {
        v19 = v114;
      }

      else
      {
        v19 = a5;
      }
    }

    else
    {
      v19 = v113;
      v20 = v114;
    }

    if (!accountingDiffTolerated(a1, v16, v20, v19, a8))
    {
      return 43;
    }

    v21 = v113;
    *v15 = v113;
    v22 = 17;
    switch(v17)
    {
      case -5:
        if (v8)
        {
          goto LABEL_167;
        }

        v96 = *(a1 + 144);
        if (v96)
        {
          if (*(a3 + 132))
          {
            v97 = *(a1 + 8);
            v98 = v114;
            v99 = (a5 - v114);
          }

          else
          {
            v101 = *(a1 + 120);
            v109 = *(a1 + 112);
            (*(a3 + 112))(a3, &v114, a5, &v109, v101);
            v96 = *(a1 + 144);
            v97 = *(a1 + 8);
            v98 = *(a1 + 112);
            v99 = (v109 - v98);
          }

          v96(v97, v98, v99);
        }

        else if (*(a1 + 184))
        {
          reportDefault(a1, a3, v114, a5);
        }

        if (!a2)
        {
          *v14 = a5;
          return 3;
        }

        if (*(a1 + 612) == a2)
        {
          goto LABEL_193;
        }

        *v14 = a5;
        return 13;
      case -4:
        if (v8)
        {
          goto LABEL_167;
        }

        if (a2 < 1)
        {
          return 3;
        }

        if (*(a1 + 612) != a2)
        {
          return 13;
        }

LABEL_167:
        v22 = 0;
        v93 = v114;
        goto LABEL_168;
      case -3:
        if (v8)
        {
          goto LABEL_167;
        }

        *v15 = a5;
        v95 = *(a1 + 144);
        if (v95)
        {
          LOBYTE(v109) = 10;
          v95(*(a1 + 8), &v109, 1);
        }

        else if (*(a1 + 184))
        {
          reportDefault(a1, a3, v114, a5);
        }

        if (!a2)
        {
          return 3;
        }

        if (*(a1 + 612) != a2)
        {
          return 13;
        }

LABEL_193:
        v22 = 0;
        *a6 = a5;
        return v22;
      case -2:
        if (v8)
        {
          goto LABEL_167;
        }

        return 6;
      case -1:
        if (v8)
        {
          goto LABEL_167;
        }

        return 5;
      case 0:
        *v14 = v21;
        return 4;
      case 1:
      case 2:
        v109 = 0;
        v23 = *(a1 + 720);
        v104 = a2;
        if (v23)
        {
          *(a1 + 720) = *v23;
LABEL_69:
          *(v23 + 80) = 0;
          *v23 = *(a1 + 712);
          *(a1 + 712) = v23;
          *(v23 + 32) = 0;
          *(v23 + 40) = 0;
          *(v23 + 8) = v114 + *(a3 + 128);
          v59 = (*(a3 + 56))(a3);
          *(v23 + 16) = v59;
          ++*(a1 + 612);
          v60 = *(v23 + 8) + v59;
          v112 = *(v23 + 8);
          v61 = *(v23 + 72);
          v109 = *(v23 + 64);
          v62 = (*(a3 + 112))(a3, &v112, v60, &v109, v61 - 1);
          v63 = v109;
          v64 = *(v23 + 64);
          v65 = v109 - v64;
          if (v112 < v60 && v62 != 1)
          {
            v102 = a6;
            do
            {
              v66 = 2 * (*(v23 + 72) - v64);
              v67 = (*(a1 + 40))(*(a1 + 24));
              if (!v67)
              {
                return 1;
              }

              *(v23 + 64) = v67;
              *(v23 + 72) = v67 + v66;
              v109 = (v67 + v65);
              v68 = (*(a3 + 112))(a3, &v112, v60, &v109, v67 + v66 - 1);
              v63 = v109;
              v64 = *(v23 + 64);
              v65 = v109 - v64;
            }

            while (v112 < v60 && v68 != 1);
            a6 = v102;
          }

          *(v23 + 48) = v65;
          *(v23 + 24) = v64;
          *v63 = 0;
          v70 = storeAtts(a1, a3, v114, (v23 + 24), (v23 + 80), a8);
          if (v70)
          {
            return v70;
          }

          v71 = *(a1 + 128);
          if (v71)
          {
            v71(*(a1 + 8), *(v23 + 24), *(a1 + 760));
            a2 = v104;
            v8 = a7;
          }

          else
          {
            a2 = v104;
            v8 = a7;
            if (*(a1 + 184))
            {
              reportDefault(a1, a3, v114, v113);
            }
          }

          v75 = *(a1 + 816);
          v76 = *(a1 + 808);
          if (v75)
          {
            if (!v76)
            {
LABEL_100:
              *v106 = 0;
              v105[1] = 0;
              v105[2] = 0;
              *v105 = 0;
              goto LABEL_143;
            }

            do
            {
              v77 = v76;
              v76 = *v76;
              *v77 = v75;
              v75 = v77;
            }

            while (v76);
          }

          else
          {
            v77 = *(a1 + 808);
          }

          *(a1 + 816) = v77;
          goto LABEL_100;
        }

        v57 = (*(a1 + 32))(*(a1 + 24), 88);
        if (!v57)
        {
          return 1;
        }

        v23 = v57;
        v58 = (*(a1 + 32))(*(a1 + 24), 32);
        *(v23 + 64) = v58;
        if (v58)
        {
          *(v23 + 72) = v58 + 32;
          goto LABEL_69;
        }

        (*(a1 + 48))(*(a1 + 24), v23);
        return 1;
      case 3:
      case 4:
        v24 = v114 + *(a3 + 128);
        v112 = 0;
        v111 = 0u;
        v110 = 0u;
        v25 = (*(a3 + 56))(a3, v24);
        v109 = poolStoreString(v106, a3, v24, v24 + v25);
        if (!v109)
        {
          return 1;
        }

        *(a1 + 840) = *(a1 + 832);
        v26 = storeAtts(a1, a3, v114, &v109, &v112, 2);
        if (v26)
        {
          v22 = v26;
          freeBindings(a1, v112);
          return v22;
        }

        *(a1 + 840) = *(a1 + 832);
        v27 = *(a1 + 128);
        if (v27)
        {
          v27(*(a1 + 8), v109, *(a1 + 760));
          v28 = *(a1 + 136);
          if (!v28)
          {
            goto LABEL_84;
          }

          if (*(a1 + 128))
          {
            *v14 = *v15;
            (*(a1 + 136))(*(a1 + 8), v109);
            goto LABEL_84;
          }

LABEL_83:
          v28(*(a1 + 8), v109);
          goto LABEL_84;
        }

        v28 = *(a1 + 136);
        if (v28)
        {
          goto LABEL_83;
        }

        if (*(a1 + 184))
        {
          reportDefault(a1, a3, v114, v113);
        }

LABEL_84:
        v72 = *(a1 + 816);
        v73 = *(a1 + 808);
        if (v72)
        {
          if (!v73)
          {
            goto LABEL_90;
          }

          do
          {
            v74 = v73;
            v73 = *v73;
            *v74 = v72;
            v72 = v74;
          }

          while (v73);
        }

        else
        {
          v74 = *(a1 + 808);
        }

        *(a1 + 816) = v74;
LABEL_90:
        *(a1 + 808) = 0;
        v105[1] = 0;
        v105[2] = 0;
        *v105 = 0;
        freeBindings(a1, v112);
        if (!*(a1 + 612))
        {
          goto LABEL_147;
        }

        goto LABEL_143;
      case 5:
        if (*(a1 + 612) == a2)
        {
          return 13;
        }

        v29 = *(a1 + 712);
        v30 = v114 + 2 * *(a3 + 128);
        v31 = (*(a3 + 56))(a3, v30);
        if (v31 != *(v29 + 16) || cstdlib_memcmp(*(v29 + 8), v30, v31))
        {
          *v14 = v30;
          return 7;
        }

        *(a1 + 712) = *v29;
        *v29 = *(a1 + 720);
        *(a1 + 720) = v29;
        --*(a1 + 612);
        v32 = *(a1 + 136);
        if (v32)
        {
          if (*(a1 + 480))
          {
            v33 = *(v29 + 32);
            if (v33)
            {
              v34 = (*(v29 + 24) + *(v29 + 52));
              v35 = *v33;
              if (*v33)
              {
                v36 = v33 + 1;
                do
                {
                  *v34++ = v35;
                  v37 = *v36++;
                  v35 = v37;
                }

                while (v37);
              }

              v38 = *(v29 + 40);
              if (*(a1 + 481))
              {
                v39 = v38 == 0;
              }

              else
              {
                v39 = 1;
              }

              if (!v39)
              {
                *v34++ = *(a1 + 916);
                v40 = *v38;
                if (*v38)
                {
                  v41 = v38 + 1;
                  do
                  {
                    *v34++ = v40;
                    v42 = *v41++;
                    v40 = v42;
                  }

                  while (v42);
                }
              }

              *v34 = 0;
              v32 = *(a1 + 136);
            }
          }

          v32(*(a1 + 8), *(v29 + 24));
        }

        else if (*(a1 + 184))
        {
          reportDefault(a1, a3, v114, v113);
        }

        v86 = *(v29 + 80);
        if (v86)
        {
          do
          {
            v87 = *(a1 + 232);
            v88 = v86;
            if (v87)
            {
              v87(*(a1 + 8), **v86);
              v88 = *(v29 + 80);
            }

            v89 = *(v88 + 8);
            *(v29 + 80) = v89;
            *(v86 + 8) = *(a1 + 736);
            *(a1 + 736) = v86;
            *(*v86 + 8) = *(v86 + 16);
            v86 = v89;
          }

          while (v89);
        }

        v8 = a7;
        if (*(a1 + 612))
        {
          goto LABEL_143;
        }

LABEL_147:
        v94 = *(a1 + 928);
        if (v94 == 2)
        {
          *v14 = v113;
          return 35;
        }

        else if (v94 == 3)
        {
          *(a1 + 552) = epilogProcessor;
          v93 = v113;
          *v14 = v113;
LABEL_145:
          v22 = 0;
LABEL_168:
          *a6 = v93;
        }

        else
        {
          return epilogProcessor(a1, v113, a5, a6);
        }

        return v22;
      case 6:
        v43 = *(a1 + 144);
        if (v43)
        {
          if (*(a3 + 132))
          {
            v44 = *(a1 + 8);
            v45 = v114;
            v46 = (v21 - v114);
            goto LABEL_58;
          }

          while (1)
          {
            v47 = *(a1 + 120);
            v109 = *(a1 + 112);
            v48 = (*(a3 + 112))(a3, &v114, v21, &v109, v47);
            *v15 = v114;
            v43(*(a1 + 8), *(a1 + 112), v109 - *(a1 + 112));
            if (v48 <= 1)
            {
              break;
            }

            *v14 = v114;
            v21 = v113;
          }

          goto LABEL_59;
        }

        v8 = a7;
        if (!*(a1 + 184))
        {
          goto LABEL_143;
        }

LABEL_102:
        v78 = v114;
        v79 = a1;
        v80 = a3;
        v81 = v21;
        goto LABEL_142;
      case 7:
        v49 = *(a1 + 144);
        if (!v49)
        {
          goto LABEL_53;
        }

        LOBYTE(v109) = 10;
        v49(*(a1 + 8), &v109, 1);
        goto LABEL_143;
      case 8:
        v52 = *(a1 + 168);
        if (v52)
        {
          v52(*(a1 + 8));
        }

        else if (*(a1 + 184))
        {
          reportDefault(a1, a3, v114, v21);
        }

        v70 = doCdataSection(a1, a3, &v113, a5, a6, v8, a8);
        if (v70)
        {
          return v70;
        }

        if (v113)
        {
          goto LABEL_143;
        }

        v22 = 0;
        *(a1 + 552) = cdataSectionProcessor;
        return v22;
      case 9:
        LOBYTE(v109) = (*(a3 + 88))(a3, v114 + *(a3 + 128), v21 - *(a3 + 128));
        if (v109)
        {
          accountingDiffTolerated(a1, 9, &v109, &v109 + 1, 1);
          v53 = *(a1 + 144);
          if (v53)
          {
            v54 = *(a1 + 8);
            v55 = &v109;
            v56 = 1;
LABEL_65:
            v53(v54, v55, v56);
            goto LABEL_143;
          }

LABEL_140:
          if (!*(a1 + 184))
          {
            goto LABEL_143;
          }

LABEL_141:
          v78 = v114;
          v81 = v113;
          v79 = a1;
          v80 = a3;
LABEL_142:
          reportDefault(v79, v80, v78, v81);
          goto LABEL_143;
        }

        v82 = poolStoreString((v103 + 160), a3, v114 + *(a3 + 128), v113 - *(a3 + 128));
        if (!v82)
        {
          return 1;
        }

        v83 = v82;
        v84 = lookup(a1, v103, v82, 0);
        v85 = v84;
        *(v103 + 184) = *(v103 + 192);
        if (!*(v103 + 257) || *(v103 + 258))
        {
          if (!v84)
          {
            return 11;
          }

          if (!*(v84 + 58))
          {
            return 24;
          }

LABEL_113:
          if (*(v84 + 56))
          {
            return 12;
          }

          if (v84[6])
          {
            return 15;
          }

          if (v84[1])
          {
            v8 = a7;
            if (*(a1 + 608))
            {
              v70 = processInternalEntity(a1, v84, 0);
              if (v70)
              {
                return v70;
              }

              goto LABEL_143;
            }

            v53 = *(a1 + 264);
            if (v53)
            {
              v54 = *(a1 + 8);
              v55 = *v85;
              v56 = 0;
              goto LABEL_65;
            }

            goto LABEL_140;
          }

          v8 = a7;
          if (!*(a1 + 248))
          {
            goto LABEL_140;
          }

          v22 = 1;
          *(v84 + 56) = 1;
          Context = getContext(a1);
          *(v85 + 56) = 0;
          if (!Context)
          {
            return v22;
          }

          if (!(*(a1 + 248))(*(a1 + 256), Context, v85[4], v85[3], v85[5]))
          {
            return 21;
          }

          *(a1 + 832) = *(a1 + 840);
          goto LABEL_143;
        }

        if (v84)
        {
          goto LABEL_113;
        }

        v91 = *(a1 + 264);
        if (!v91)
        {
LABEL_136:
          v8 = a7;
          if (!*(a1 + 184))
          {
            goto LABEL_143;
          }

          goto LABEL_141;
        }

        v91(*(a1 + 8), v83, 0);
LABEL_59:
        v8 = a7;
LABEL_143:
        v92 = *(a1 + 928);
        v93 = v113;
        v114 = v113;
        *v14 = v113;
        if (v92 == 2)
        {
          return 35;
        }

        if (v92 == 3)
        {
          goto LABEL_145;
        }

        continue;
      case 10:
        v50 = (*(a3 + 80))(a3, v114);
        if ((v50 & 0x80000000) != 0)
        {
          return 14;
        }

        v43 = *(a1 + 144);
        if (!v43)
        {
          goto LABEL_136;
        }

        v51 = *(a1 + 8);
        v46 = crnc3rdprtyrnm_XmlUtf8Encode(v50, &v109);
        v45 = &v109;
        v44 = v51;
LABEL_58:
        v43(v44, v45, v46);
        goto LABEL_59;
      case 11:
        if (!reportProcessingInstruction(a1, a3, v114, v21))
        {
          return 1;
        }

        goto LABEL_143;
      case 12:
        return v22;
      case 13:
        if (!reportComment(a1, a3, v114, v21))
        {
          return 1;
        }

        goto LABEL_143;
      default:
LABEL_53:
        if (!*(a1 + 184))
        {
          goto LABEL_143;
        }

        goto LABEL_102;
    }
  }
}

uint64_t storeRawNames(uint64_t a1)
{
  for (i = *(a1 + 712); i; i = *i)
  {
    v3 = *(i + 12) + 1;
    v4 = i[8];
    v5 = v4 + v3;
    v6 = i[1];
    if (v6 == (v4 + v3))
    {
      break;
    }

    v7 = *(i + 4);
    if (2147483646 - *(i + 12) < v7)
    {
      return 0;
    }

    v8 = v7 + v3;
    if (i[9] - v4 < v7 + v3)
    {
      v9 = v8;
      result = (*(a1 + 40))(*(a1 + 24), i[8], v8);
      if (!result)
      {
        return result;
      }

      v11 = i[8];
      if (i[3] == v11)
      {
        i[3] = result;
      }

      v12 = i[4];
      if (v12)
      {
        i[4] = (result + v12 - v11);
      }

      i[8] = result;
      i[9] = (result + v9);
      v5 = (result + v3);
      v6 = i[1];
      v7 = *(i + 4);
    }

    cstdlib_memcpy(v5, v6, v7);
    i[1] = v5;
  }

  return 1;
}

uint64_t getContext(uint64_t a1)
{
  v2 = *(a1 + 696);
  v3 = *(v2 + 312);
  v4 = v3 == 0;
  if (v3)
  {
    v5 = *(a1 + 832);
    if (v5 == *(a1 + 824))
    {
      if (!poolGrow((a1 + 808)))
      {
        return 0;
      }

      v5 = *(a1 + 832);
    }

    *(a1 + 832) = v5 + 1;
    *v5 = 61;
    v6 = *(*(v2 + 312) + 40) - (*(a1 + 916) != 0);
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = *(a1 + 832);
        if (v8 == *(a1 + 824))
        {
          if (!poolGrow((a1 + 808)))
          {
            return 0;
          }

          v8 = *(a1 + 832);
        }

        v9 = *(*(*(v2 + 312) + 32) + i);
        *(a1 + 832) = v8 + 1;
        *v8 = v9;
      }
    }
  }

  v10 = *(v2 + 120);
  if (v10)
  {
    v11 = &v10[*(v2 + 136)];
  }

  else
  {
    v11 = 0;
  }

  while (v10 != v11)
  {
    v12 = v10;
    v14 = *v10++;
    v13 = v14;
    if (v14 && v13[1])
    {
      if (!v4)
      {
        v15 = *(a1 + 832);
        if (v15 == *(a1 + 824))
        {
          if (!poolGrow((a1 + 808)))
          {
            return 0;
          }

          v15 = *(a1 + 832);
        }

        *(a1 + 832) = v15 + 1;
        *v15 = 12;
      }

      v16 = **v13;
      if (v16)
      {
        v17 = (*v13 + 1);
        do
        {
          v18 = *(a1 + 832);
          if (v18 == *(a1 + 824))
          {
            if (!poolGrow((a1 + 808)))
            {
              return 0;
            }

            v16 = *(v17 - 1);
            v18 = *(a1 + 832);
          }

          *(a1 + 832) = v18 + 1;
          *v18 = v16;
          v19 = *v17++;
          v16 = v19;
        }

        while (v19);
      }

      v20 = *(a1 + 832);
      if (v20 == *(a1 + 824))
      {
        if (!poolGrow((a1 + 808)))
        {
          return 0;
        }

        v20 = *(a1 + 832);
      }

      v4 = 0;
      v10 = v12 + 1;
      *(a1 + 832) = v20 + 1;
      *v20 = 61;
      v21 = *(v13[1] + 10) - (*(a1 + 916) != 0);
      if (v21 >= 1)
      {
        for (j = 0; j != v21; ++j)
        {
          v23 = *(a1 + 832);
          if (v23 == *(a1 + 824))
          {
            if (!poolGrow((a1 + 808)))
            {
              return 0;
            }

            v23 = *(a1 + 832);
          }

          v24 = *(*(v13[1] + 4) + j);
          *(a1 + 832) = v23 + 1;
          *v23 = v24;
        }

        v4 = 0;
      }
    }
  }

  v25 = *v2;
  if (*v2)
  {
    v26 = &v25[*(v2 + 16)];
  }

  else
  {
    v26 = 0;
  }

  while (v25 != v26)
  {
    v27 = v25;
    v29 = *v25++;
    v28 = v29;
    if (v29 && v28[56])
    {
      if (!v4)
      {
        v30 = *(a1 + 832);
        if (v30 == *(a1 + 824))
        {
          if (!poolGrow((a1 + 808)))
          {
            return 0;
          }

          v30 = *(a1 + 832);
        }

        *(a1 + 832) = v30 + 1;
        *v30 = 12;
      }

      v4 = 0;
      v25 = v27 + 1;
      v31 = **v28;
      if (v31)
      {
        v32 = (*v28 + 1);
        do
        {
          v33 = *(a1 + 832);
          if (v33 == *(a1 + 824))
          {
            if (!poolGrow((a1 + 808)))
            {
              return 0;
            }

            v31 = *(v32 - 1);
            v33 = *(a1 + 832);
          }

          *(a1 + 832) = v33 + 1;
          *v33 = v31;
          v34 = *v32++;
          v31 = v34;
        }

        while (v34);
        v4 = 0;
      }
    }
  }

  v35 = *(a1 + 832);
  if (v35 != *(a1 + 824))
  {
    goto LABEL_59;
  }

  if (poolGrow((a1 + 808)))
  {
    v35 = *(a1 + 832);
LABEL_59:
    *(a1 + 832) = v35 + 1;
    *v35 = 0;
    return *(a1 + 840);
  }

  return 0;
}

uint64_t storeAtts(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, uint64_t *a5, int a6)
{
  v142[3] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 696);
  v13 = lookup(a1, (v12 + 40), *a4, 0);
  if (!v13)
  {
    v37 = poolCopyString((v12 + 160), *a4);
    if (!v37)
    {
      return 1;
    }

    v38 = lookup(a1, (v12 + 40), v37, 0x28uLL);
    if (!v38)
    {
      return 1;
    }

    v13 = v38;
    if (*(a1 + 480))
    {
      if (!setElementTypePrefix(a1, v38))
      {
        return 1;
      }
    }
  }

  v14 = *(v13 + 6);
  v15 = (*(a2 + 72))(a2, a3, *(a1 + 744), *(a1 + 760));
  if (v15 > (v14 ^ 0x7FFFFFFF))
  {
    return 1;
  }

  v16 = v15;
  v134 = a6;
  v17 = *(a1 + 744);
  if (v15 + v14 > v17)
  {
    if (v14 > 2147483631 || v15 > 2147483631 - v14)
    {
      return 1;
    }

    v19 = v15 + v14 + 16;
    *(a1 + 744) = v19;
    v20 = (*(a1 + 40))(*(a1 + 24), *(a1 + 760), 32 * v19);
    if (!v20)
    {
      *(a1 + 744) = v17;
      return 1;
    }

    *(a1 + 760) = v20;
    if (v16 > v17)
    {
      (*(a2 + 72))(a2, a3, v16, v20);
    }
  }

  v138 = a5;
  v132 = a4;
  v133 = v12;
  v21 = *(a1 + 760);
  if (v16 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v136 = 0;
    while (1)
    {
      v24 = *(*(a1 + 760) + 32 * v22);
      v25 = (*(a2 + 56))(a2, v24);
      AttributeId = getAttributeId(a1, a2, v24, v24 + v25);
      if (!AttributeId)
      {
        return 1;
      }

      v27 = AttributeId;
      if (*(*AttributeId - 1))
      {
        if (*(a1 + 312) == a2)
        {
          *(a1 + 568) = *(*(a1 + 760) + 32 * v22);
        }

        return 8;
      }

      *(*AttributeId - 1) = 1;
      v28 = v23 + 1;
      *(v21 + 8 * v23) = *AttributeId;
      v29 = *(a1 + 760) + 32 * v22;
      if (*(v29 + 24))
      {
        v30 = poolStoreString((a1 + 808), a2, *(v29 + 8), *(v29 + 16));
        *(v21 + 8 * v28) = v30;
        if (!v30)
        {
          return 1;
        }
      }

      else
      {
        if (*(AttributeId + 16))
        {
          v31 = v14 < 1;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
LABEL_26:
          v34 = 1;
        }

        else
        {
          v32 = (v13[4] + 8);
          v33 = v14;
          while (AttributeId != *(v32 - 1))
          {
            v32 += 24;
            if (!--v33)
            {
              goto LABEL_26;
            }
          }

          v34 = *v32;
        }

        result = storeAttributeValue(a1, a2, v34, *(v29 + 8), *(v29 + 16), (a1 + 808), v134);
        if (result)
        {
          return result;
        }

        *(v21 + 8 * v28) = *(a1 + 840);
      }

      *(a1 + 840) = *(a1 + 832);
      v36 = *(v27 + 8);
      if (v36)
      {
        if (*(v27 + 17))
        {
          result = addBinding(a1, v36, v27, *(v21 + 8 * v28), v138);
          if (result)
          {
            return result;
          }
        }

        else
        {
          v23 += 2;
          ++v136;
          *(*v27 - 1) = 2;
        }
      }

      else
      {
        v23 += 2;
      }

      if (++v22 == v16)
      {
        goto LABEL_44;
      }
    }
  }

  v136 = 0;
  v23 = 0;
LABEL_44:
  *(a1 + 748) = v23;
  v39 = v13[2];
  if (v39)
  {
    v40 = *v39;
    v41 = v136;
    if (*(*v39 - 1))
    {
      if (v23 < 1)
      {
        goto LABEL_58;
      }

      v42 = 0;
      while (*(v21 + 8 * v42) != v40)
      {
        v42 += 2;
        if (v23 <= v42)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      LODWORD(v42) = -1;
    }
  }

  else
  {
    LODWORD(v42) = -1;
    v41 = v136;
  }

  *(a1 + 752) = v42;
LABEL_58:
  if (v14 >= 1)
  {
    v43 = 0;
    v44 = 24 * v14;
    do
    {
      v45 = v13[4];
      v46 = *(v45 + v43);
      v47 = *v46;
      if (!*(*v46 - 1))
      {
        v48 = *(v45 + v43 + 16);
        if (v48)
        {
          v49 = *(v46 + 8);
          if (v49)
          {
            if (*(v46 + 17))
            {
              result = addBinding(a1, v49, v46, v48, v138);
              if (result)
              {
                return result;
              }

              goto LABEL_61;
            }

            *(v47 - 1) = 2;
            ++v41;
          }

          else
          {
            *(v47 - 1) = 1;
          }

          v50 = (v21 + 8 * v23);
          *v50 = **(v45 + v43);
          v23 += 2;
          v50[1] = *(v45 + v43 + 16);
        }
      }

LABEL_61:
      v43 += 24;
    }

    while (v44 != v43);
  }

  v51 = v23;
  *(v21 + 8 * v23) = 0;
  if (!v41)
  {
LABEL_147:
    LODWORD(v63) = 0;
LABEL_148:
    if (v63 < v51)
    {
      v109 = v63;
      do
      {
        *(*(v21 + 8 * v109) - 1) = 0;
        v109 += 2;
      }

      while (v109 < v51);
    }

    for (i = *v138; i; i = *(i + 8))
    {
      *(**(i + 24) - 1) = 0;
    }

    if (*(a1 + 480))
    {
      v111 = v13[1];
      if (v111)
      {
        v112 = *(v111 + 8);
        if (!v112)
        {
          return 27;
        }

        v113 = *v132;
        do
        {
          v114 = *v113++;
        }

        while (v114 != 58);
LABEL_161:
        v115 = **v112;
        if (*(a1 + 481))
        {
          v116 = v115 == 0;
        }

        else
        {
          v116 = 1;
        }

        if (v116)
        {
          LODWORD(v117) = 0;
        }

        else
        {
          v117 = 0;
            ;
          }
        }

        v119 = 0;
        v120 = *(v112 + 40);
        v132[1] = v113;
        v132[2] = v115;
        *(v132 + 7) = v120;
        *(v132 + 8) = v117;
          ;
        }

        if (v120 > (v117 ^ 0x7FFFFFFF) || ((v117 + v120) ^ 0x7FFFFFFFu) <= v119 - 1)
        {
          return 1;
        }

        v122 = v119 + v117 + v120;
        if (v122 <= *(v112 + 44))
        {
          v125 = *(v112 + 32);
        }

        else
        {
          if (v122 > 2147483623)
          {
            return 1;
          }

          v123 = v122 + 24;
          v124 = (*(a1 + 32))(*(a1 + 24), v122 + 24);
          if (!v124)
          {
            return 1;
          }

          v125 = v124;
          *(v112 + 44) = v123;
          cstdlib_memcpy(v124, *(v112 + 32), *(v112 + 40));
          v126 = *(a1 + 712);
          for (j = *(v112 + 32); v126; v126 = *v126)
          {
            if (v126[3] == j)
            {
              v126[3] = v125;
            }
          }

          (*(a1 + 48))(*(a1 + 24), j);
          *(v112 + 32) = v125;
          v120 = *(v112 + 40);
        }

        v128 = &v125[v120];
        cstdlib_memcpy(v128, v113, v119);
        if (v117)
        {
          v128[v119 - 1] = *(a1 + 916);
          cstdlib_memcpy(&v128[v119], **v112, v117);
        }

        result = 0;
        *v132 = *(v112 + 32);
        return result;
      }

      v112 = *(v133 + 312);
      if (v112)
      {
        v113 = *v132;
        goto LABEL_161;
      }
    }

    return 0;
  }

  v52 = *(a1 + 784);
  if (v52 > 0x1F)
  {
    return 1;
  }

  if (!((2 * v41) >> v52))
  {
    v55 = *(a1 + 776);
    v56 = 1 << v52;
    if (v55)
    {
      goto LABEL_89;
    }

    goto LABEL_83;
  }

  v53 = *(a1 + 784);
    ;
  }

  *(a1 + 784) = v53;
  if (v53 > 2u)
  {
    if (v53 >= 0x20u)
    {
LABEL_168:
      *(a1 + 784) = v52;
      return 1;
    }
  }

  else
  {
    v53 = 3;
    *(a1 + 784) = 3;
  }

  v57 = (*(a1 + 40))(*(a1 + 24), *(a1 + 768), 24 << v53);
  if (!v57)
  {
    goto LABEL_168;
  }

  *(a1 + 768) = v57;
  v56 = 1 << v53;
LABEL_83:
  v58 = 0;
  v59 = vdupq_n_s64(v56 - 1);
  v60 = (*(a1 + 768) + 24 * v56 - 48);
  v55 = 0xFFFFFFFFLL;
  do
  {
    v61 = vmovn_s64(vcgeq_u64(v59, vorrq_s8(vdupq_n_s64(v58), xmmword_26ECC7980)));
    if (v61.i8[0])
    {
      v60[3] = 0xFFFFFFFFLL;
    }

    if (v61.i8[4])
    {
      *v60 = 0xFFFFFFFFLL;
    }

    v58 += 2;
    v60 -= 6;
  }

  while (((v56 + 1) & 0xFFFFFFFFFFFFFFFELL) != v58);
LABEL_89:
  v62 = v55 - 1;
  *(a1 + 776) = v55 - 1;
  if (v51 < 1)
  {
    goto LABEL_147;
  }

  v63 = 0;
  v64 = (v56 - 1);
  v129 = ~v64;
  v130 = v56 - 1;
  v131 = v56;
  v135 = v64 >> 2;
  while (1)
  {
    v65 = *(v21 + 8 * v63);
    if (*(v65 - 1) != 2)
    {
      *(v65 - 1) = 0;
      goto LABEL_145;
    }

    v142[0] = 0;
    v66 = a1;
    do
    {
      v67 = v66;
      v66 = *(v66 + 920);
    }

    while (v66);
    v68 = *(v67 + 944);
    v139.i64[0] = 0x736F6D6570736575;
    v139.i64[1] = v68 ^ 0x646F72616E646F6DLL;
    v140 = 0x6C7967656E657261;
    v141 = v68 ^ 0x7465646279746573;
    v142[1] = v142;
    v142[2] = 0;
    *(v65 - 1) = 0;
    v69 = lookup(a1, (v133 + 80), v65, 0);
    if (!v69)
    {
      return 1;
    }

    v70 = v69[1];
    if (!v70)
    {
      return 1;
    }

    v71 = *(v70 + 8);
    if (!v71)
    {
      return 27;
    }

    v72 = *(v71 + 40);
    if (v72 > 0)
    {
      v137 = v41;
      for (k = 0; k < v72; ++k)
      {
        v74 = *(*(v71 + 32) + k);
        v75 = *(a1 + 832);
        if (v75 == *(a1 + 824))
        {
          if (!poolGrow((a1 + 808)))
          {
            return 1;
          }

          v75 = *(a1 + 832);
        }

        *(a1 + 832) = v75 + 1;
        *v75 = v74;
        v72 = *(v71 + 40);
      }

      v41 = v137;
      v56 = v131;
    }

    sip24_update(v139.i64, *(v71 + 32), v72);
    do
    {
      v76 = *v65++;
    }

    while (v76 != 58);
    if (*v65)
    {
      v77 = 0;
      do
      {
        v78 = &v65[v77++];
      }

      while (v78[1]);
    }

    else
    {
      v77 = 0;
    }

    sip24_update(v139.i64, v65, v77);
    do
    {
      v79 = *(a1 + 832);
      if (v79 == *(a1 + 824))
      {
        if (!poolGrow((a1 + 808)))
        {
          return 1;
        }

        v79 = *(a1 + 832);
      }

      v80 = *v65;
      *(a1 + 832) = v79 + 1;
      *v79 = v80;
    }

    while (*v65++);
    sip24_final(&v139);
    v83 = v82;
    v84 = v130 & v82;
    v85 = *(a1 + 768);
    v86 = (v85 + 24 * (v130 & v82));
    if (*v86 == v62)
    {
      break;
    }

LABEL_137:
    v102 = v84;
    if (*(a1 + 481))
    {
      *(*(a1 + 832) - 1) = *(a1 + 916);
      v103 = **v71;
      do
      {
        v104 = *(a1 + 832);
        if (v104 == *(a1 + 824))
        {
          if (!poolGrow((a1 + 808)))
          {
            return 1;
          }

          v104 = *(a1 + 832);
        }

        v105 = *v103;
        *(a1 + 832) = v104 + 1;
        *v104 = v105;
      }

      while (*v103++);
    }

    v107 = *(a1 + 840);
    *(a1 + 840) = *(a1 + 832);
    *(v21 + 8 * v63) = v107;
    v108 = (*(a1 + 768) + 24 * v102);
    *v108 = v62;
    v108[1] = v83;
    v108[2] = v107;
    if (!--v41)
    {
      LODWORD(v63) = v63 + 2;
      goto LABEL_148;
    }

    v56 = v131;
LABEL_145:
    v63 += 2;
    if (v51 <= v63)
    {
      goto LABEL_148;
    }
  }

  v87 = 0;
  while (1)
  {
    if (v82 == v86[1])
    {
      v88 = *(a1 + 840);
      v89 = v86[2];
      v90 = *v88 == 0;
      if (*v88)
      {
        v91 = *v88 == *v89;
      }

      else
      {
        v91 = 0;
      }

      if (v91)
      {
        v92 = v89 + 1;
        v93 = v88 + 1;
        do
        {
          v95 = *v93++;
          v94 = v95;
          v90 = v95 == 0;
          v97 = *v92++;
          v96 = v97;
          if (v94)
          {
            v98 = v94 == v96;
          }

          else
          {
            v98 = 0;
          }
        }

        while (v98);
      }

      if (v90)
      {
        return 8;
      }
    }

    if (!v87)
    {
      v87 = ((v82 & v129) >> (*(a1 + 784) - 1)) & v135 | 1;
    }

    v99 = __OFSUB__(v84, v87);
    v100 = v84 - v87;
    if (v100 < 0 != v99)
    {
      v101 = v56;
    }

    else
    {
      v101 = 0;
    }

    v84 = v100 + v101;
    v86 = (v85 + 24 * v84);
    if (*v86 != v62)
    {
      goto LABEL_137;
    }
  }
}

uint64_t freeBindings(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v3[29];
      if (v4)
      {
        result = v4(v3[1], **v2);
      }

      v6 = *v2;
      v5 = *(v2 + 8);
      *(v2 + 8) = v3[92];
      v3[92] = v2;
      v6[1] = *(v2 + 16);
      v2 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t epilogProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  *(a1 + 552) = epilogProcessor;
  *(a1 + 568) = a2;
  while (1)
  {
    v7 = (**(a1 + 312))();
    if (!accountingDiffTolerated(a1, v7, v5, 0, 0))
    {
      return 43;
    }

    *(a1 + 576) = 0;
    result = 9;
    if (v7 <= 10)
    {
      break;
    }

    switch(v7)
    {
      case 11:
        if (!reportProcessingInstruction(a1, *(a1 + 312), v5, 0))
        {
          return 1;
        }

        break;
      case 13:
        if (!reportComment(a1, *(a1 + 312), v5, 0))
        {
          return 1;
        }

        break;
      case 15:
        if (*(a1 + 184))
        {
          reportDefault(a1, *(a1 + 312), v5, 0);
        }

        break;
      default:
        return result;
    }

    v5 = 0;
    *(a1 + 568) = 0;
    v9 = *(a1 + 928);
    if (v9 == 2)
    {
      return 35;
    }

    if (v9 == 3)
    {
      goto LABEL_30;
    }
  }

  if (v7 > -3)
  {
    switch(v7)
    {
      case -2:
        if (*(a1 + 932))
        {
          return 6;
        }

        break;
      case -1:
        if (*(a1 + 932))
        {
          return 5;
        }

        break;
      case 0:
        *(a1 + 568) = 0;
        return 4;
      default:
        return result;
    }

LABEL_30:
    result = 0;
    *a4 = v5;
    return result;
  }

  if (v7 != -15)
  {
    if (v7 != -4)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (*(a1 + 184))
  {
    reportDefault(a1, *(a1 + 312), v5, 0);
    if (*(a1 + 928) == 2)
    {
      return 35;
    }
  }

  result = 0;
  *a4 = 0;
  return result;
}

uint64_t doCdataSection(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, int a6, int a7)
{
  v13 = *a3;
  v30 = *a3;
  if (*(a1 + 312) == a2)
  {
    v14 = (a1 + 568);
    *(a1 + 568) = v13;
    v15 = (a1 + 576);
  }

  else
  {
    v14 = *(a1 + 592);
    v15 = v14 + 1;
  }

  *v14 = v13;
  *a3 = 0;
  while (1)
  {
    v29 = v13;
    v16 = (*(a2 + 16))(a2);
    if (!accountingDiffTolerated(a1, v16, v30, v29, a7))
    {
      return 43;
    }

    v17 = v29;
    *v15 = v29;
    if (v16 <= 5)
    {
      if (v16 > -2)
      {
        if (v16 != -1)
        {
          if (!v16)
          {
            *v14 = v17;
            return 4;
          }

          goto LABEL_40;
        }
      }

      else if (v16 != -4)
      {
        if (v16 != -2)
        {
          goto LABEL_40;
        }

        if (!a6)
        {
          return 6;
        }

LABEL_33:
        result = 0;
        *a5 = v30;
        return result;
      }

      if (!a6)
      {
        return 20;
      }

      goto LABEL_33;
    }

    if (v16 != 6)
    {
      break;
    }

    v27 = a6;
    v19 = a5;
    v20 = *(a1 + 144);
    if (!v20)
    {
      a5 = v19;
      a6 = v27;
      if (!*(a1 + 184))
      {
        goto LABEL_19;
      }

LABEL_18:
      reportDefault(a1, a2, v30, v17);
      goto LABEL_19;
    }

    if (*(a2 + 132))
    {
      v20(*(a1 + 8), v30, (v17 - v30));
    }

    else
    {
      while (1)
      {
        v21 = *(a1 + 120);
        v28 = *(a1 + 112);
        v22 = (*(a2 + 112))(a2, &v30, v17, &v28, v21);
        *v15 = v29;
        v20(*(a1 + 8), *(a1 + 112), v28 - *(a1 + 112));
        if (v22 <= 1)
        {
          break;
        }

        *v14 = v30;
        v17 = v29;
      }
    }

    a5 = v19;
    a6 = v27;
LABEL_19:
    v13 = v29;
    v30 = v29;
    *v14 = v29;
    v23 = *(a1 + 928);
    if (v23 == 2)
    {
      return 35;
    }

    if (v23 == 3)
    {
      result = 0;
      *a5 = v13;
      return result;
    }
  }

  if (v16 == 7)
  {
    v18 = *(a1 + 144);
    if (v18)
    {
      LOBYTE(v28) = 10;
      v18(*(a1 + 8), &v28, 1);
      goto LABEL_19;
    }

    if (*(a1 + 184))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v16 != 40)
  {
LABEL_40:
    *v14 = v17;
    return 23;
  }

  v25 = *(a1 + 176);
  if (v25)
  {
    v25(*(a1 + 8));
  }

  else if (*(a1 + 184))
  {
    reportDefault(a1, a2, v30, v17);
  }

  v26 = v29;
  *a3 = v29;
  *a5 = v26;
  if (*(a1 + 928) == 2)
  {
    return 35;
  }

  else
  {
    return 0;
  }
}

uint64_t cdataSectionProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = a2;
  result = doCdataSection(a1, *(a1 + 312), &v9, a3, a4, *(a1 + 932) == 0, 0);
  if (!result)
  {
    v8 = v9;
    if (v9)
    {
      if (*(a1 + 920))
      {
        *(a1 + 552) = externalEntityContentProcessor;

        return externalEntityContentProcessor(a1, v8, a3, a4);
      }

      else
      {
        *(a1 + 552) = contentProcessor;

        return contentProcessor(a1);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t setElementTypePrefix(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a1 + 696);
  v6 = *a2;
  while (1)
  {
    if (!v6[v4])
    {
      return 1;
    }

    if (v6[v4] == 58)
    {
      break;
    }

    ++v4;
  }

  for (; v4; --v4)
  {
    v7 = *(v5 + 184);
    if (v7 == *(v5 + 176))
    {
      result = poolGrow((v5 + 160));
      if (!result)
      {
        return result;
      }

      v7 = *(v5 + 184);
    }

    v9 = *v6++;
    *(v5 + 184) = v7 + 1;
    *v7 = v9;
  }

  v10 = *(v5 + 184);
  if (v10 == *(v5 + 176))
  {
    result = poolGrow((v5 + 160));
    if (!result)
    {
      return result;
    }

    v10 = *(v5 + 184);
  }

  *(v5 + 184) = v10 + 1;
  *v10 = 0;
  result = lookup(a1, (v5 + 120), *(v5 + 192), 0x10uLL);
  if (result)
  {
    v11 = *(v5 + 192);
    if (*result == v11)
    {
      *(v5 + 192) = *(v5 + 184);
    }

    else
    {
      *(v5 + 184) = v11;
    }

    *(a2 + 8) = result;
    return 1;
  }

  return result;
}

uint64_t addBinding(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t *a5)
{
  v10 = *a4;
  v11 = *a2;
  if (*a4)
  {
    if (v11)
    {
      if (*v11 != 120 || v11[1] != 109 || v11[2] != 108)
      {
LABEL_10:
        LODWORD(v11) = 0;
        v12 = 1;
        result = 40;
        goto LABEL_14;
      }

      v12 = v11[3];
      if (v11[3])
      {
        if (v12 == 110 && v11[4] == 115 && !v11[5])
        {
          return 39;
        }

        goto LABEL_10;
      }

      LODWORD(v11) = 1;
      result = 38;
    }

    else
    {
      result = 40;
      v12 = 1;
    }

LABEL_14:
    v14 = 0;
    v15 = a4 + 1;
    v16 = 1;
    v17 = 1;
    while (1)
    {
      v18 = v14;
      if (v17 && (v14 > 0x24 || v10 != addBinding_xmlNamespace[v14]))
      {
        v17 = 0;
      }

      if (v16)
      {
        v19 = v12;
      }

      else
      {
        v19 = 0;
      }

      if (v19 == 1 && (v18 > 0x1D || v10 != addBinding_xmlnsNamespace[v18]))
      {
        v16 = 0;
      }

      if (*(a1 + 480) && v10 == *(a1 + 916) && ((v10 - 33) > 0x3E || ((1 << (v10 - 33)) & 0x57FFFFFFD7FFFFFDLL) == 0))
      {
        v20 = v10 - 97;
        if (v20 > 0x1D || ((1 << v20) & 0x23FFFFFF) == 0)
        {
          return 2;
        }
      }

      v14 = v18 + 1;
      v10 = v15[v18];
      if (!v15[v18])
      {
        v21 = v17 != 0;
        v22 = v16 != 0;
        goto LABEL_34;
      }
    }
  }

  if (v11)
  {
    return 28;
  }

  LODWORD(v14) = 0;
  v21 = 1;
  result = 40;
  v22 = 1;
LABEL_34:
  if (v14 != 36)
  {
    v21 = 0;
  }

  if (v11 == v21)
  {
    if (v14 == 29 && v22)
    {
      return 40;
    }

    if (*(a1 + 916))
    {
      v24 = (v14 + 1);
    }

    else
    {
      v24 = v14;
    }

    v25 = *(a1 + 736);
    if (v25)
    {
      if (v24 <= *(v25 + 44))
      {
        v26 = *(v25 + 32);
        goto LABEL_56;
      }

      if (v24 <= 0x7FFFFFE7)
      {
        v26 = (*(a1 + 40))(*(a1 + 24), *(v25 + 32), (v24 + 24));
        if (v26)
        {
          *(v25 + 32) = v26;
          *(v25 + 44) = v24 + 24;
LABEL_56:
          *(a1 + 736) = *(v25 + 8);
          goto LABEL_57;
        }
      }
    }

    else
    {
      v25 = (*(a1 + 32))(*(a1 + 24), 48);
      result = 1;
      if (!v25 || v24 > 0x7FFFFFE7)
      {
        return result;
      }

      v26 = (*(a1 + 32))(*(a1 + 24), (v24 + 24));
      *(v25 + 32) = v26;
      if (v26)
      {
        *(v25 + 44) = v24 + 24;
LABEL_57:
        *(v25 + 40) = v24;
        cstdlib_memcpy(v26, a4, v24);
        if (*(a1 + 916))
        {
          *(*(v25 + 32) + v24 - 1) = *(a1 + 916);
        }

        *v25 = a2;
        *(v25 + 16) = a2[1];
        *(v25 + 24) = a3;
        if (!*a4 && (*(a1 + 696) + 304) == a2)
        {
          v27 = 0;
        }

        else
        {
          v27 = v25;
        }

        a2[1] = v27;
        *(v25 + 8) = *a5;
        *a5 = v25;
        if (a3)
        {
          v28 = *(a1 + 224);
          if (v28)
          {
            if (a2[1])
            {
              v29 = a4;
            }

            else
            {
              v29 = 0;
            }

            v28(*(a1 + 8), *a2, v29);
          }
        }

        return 0;
      }

      (*(a1 + 48))(*(a1 + 24), v25);
    }

    return 1;
  }

  return result;
}

uint64_t externalEntityContentProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = doContent(a1, 1, *(a1 + 312), a2, a3, a4, *(a1 + 932) == 0, 1);
  if (!v5 && !storeRawNames(a1))
  {
    return 1;
  }

  return v5;
}

uint64_t appendAttributeValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  v10 = a4;
  v14 = *(a1 + 696);
  v41 = a4;
  v15 = (*(a2 + 32))(a2, a4, a5, &v41);
  if (!accountingDiffTolerated(a1, v15, v10, v41, a7))
  {
    return 43;
  }

  while (1)
  {
    if (v15 <= 8)
    {
      if (v15 < 0)
      {
        if (v15 != -3)
        {
          if (v15 == -4)
          {
            return 0;
          }

          if (v15 == -1)
          {
            if (*(a1 + 312) == a2)
            {
              *(a1 + 568) = v10;
            }

            return 4;
          }

LABEL_75:
          if (*(a1 + 312) == a2)
          {
            *(a1 + 568) = v10;
          }

          return 23;
        }

        v41 = v10 + *(a2 + 128);
        goto LABEL_13;
      }

      if (v15 != 6)
      {
        if (v15 != 7)
        {
          if (!v15)
          {
            if (*(a1 + 312) == a2)
            {
              *(a1 + 568) = v41;
            }

            return 4;
          }

          goto LABEL_75;
        }

        goto LABEL_13;
      }

      if (!poolAppend(a6, a2, v10, v41))
      {
        return 1;
      }

      goto LABEL_63;
    }

    if (v15 == 9)
    {
      break;
    }

    if (v15 != 10)
    {
      if (v15 != 39)
      {
        goto LABEL_75;
      }

LABEL_13:
      v16 = a6[3];
      if (a3 || v16 != a6[4] && *(v16 - 1) != 32)
      {
        if (v16 == a6[2])
        {
          if (!poolGrow(a6))
          {
            return 1;
          }

          v16 = a6[3];
        }

        a6[3] = (v16 + 1);
        *v16 = 32;
      }

      goto LABEL_63;
    }

    v19 = (*(a2 + 80))(a2, v10);
    if ((v19 & 0x80000000) != 0)
    {
      if (*(a1 + 312) == a2)
      {
        *(a1 + 568) = v10;
      }

      return 14;
    }

    if (a3 || v19 != 32 || (v20 = a6[3], v20 != a6[4]) && *(v20 - 1) != 32)
    {
      v21 = crnc3rdprtyrnm_XmlUtf8Encode(v19, v40);
      if (v21 >= 1)
      {
        v22 = v21;
        v23 = v40;
        do
        {
          v24 = a6[3];
          if (v24 == a6[2])
          {
            if (!poolGrow(a6))
            {
              return 1;
            }

            v24 = a6[3];
          }

          v25 = *v23++;
          a6[3] = (v24 + 1);
          *v24 = v25;
          --v22;
        }

        while (v22);
      }
    }

LABEL_63:
    v10 = v41;
    v15 = (*(a2 + 32))(a2, v41, a5, &v41);
    if (!accountingDiffTolerated(a1, v15, v10, v41, a7))
    {
      return 43;
    }
  }

  v39 = (*(a2 + 88))(a2, v10 + *(a2 + 128), v41 - *(a2 + 128));
  if (v39)
  {
    accountingDiffTolerated(a1, 9, &v39, v40, 1);
    v17 = a6[3];
    if (v17 == a6[2])
    {
      if (!poolGrow(a6))
      {
        return 1;
      }

      v17 = a6[3];
    }

    v18 = v39;
    a6[3] = (v17 + 1);
    *v17 = v18;
    goto LABEL_63;
  }

  v26 = poolStoreString((a1 + 856), a2, v10 + *(a2 + 128), v41 - *(a2 + 128));
  if (!v26)
  {
    return 1;
  }

  v27 = lookup(a1, v14, v26, 0);
  v28 = v27;
  *(a1 + 880) = *(a1 + 888);
  if ((v14 + 160) == a6)
  {
    if (*(a1 + 540))
    {
      if (*(v14 + 258))
      {
        if (!*(a1 + 592))
        {
          goto LABEL_44;
        }
      }

      else if (!*(v14 + 257))
      {
        goto LABEL_44;
      }
    }
  }

  else if (!*(v14 + 257) || *(v14 + 258))
  {
LABEL_44:
    if (!v27)
    {
      return 11;
    }

    if (!*(v27 + 58))
    {
      return 24;
    }

    goto LABEL_53;
  }

  if (!v27)
  {
    goto LABEL_63;
  }

LABEL_53:
  if (!*(v27 + 56))
  {
    if (v27[6])
    {
      v37 = *(a1 + 312);
      result = 15;
      goto LABEL_84;
    }

    v29 = v27[1];
    if (!v29)
    {
      v37 = *(a1 + 312);
      result = 16;
      goto LABEL_84;
    }

    v30 = *(v27 + 4);
    *(v27 + 56) = 1;
    v31 = a1;
    do
    {
      v32 = v31;
      v31 = v31[115];
    }

    while (v31);
    v33 = vadd_s32(v32[124], 0x100000001);
    v32[124] = v33;
    v34 = v32[125].u32[0];
    if (v33.i32[1] > v34)
    {
      v32[125].i32[0] = v34 + 1;
    }

    result = appendAttributeValue(a1, *(a1 + 464), a3, v29, v29 + v30, a6, 1);
    v35 = a1;
    do
    {
      v36 = v35;
      v35 = *(v35 + 920);
    }

    while (v35);
    --*(v36 + 996);
    *(v28 + 56) = 0;
    if (result)
    {
      return result;
    }

    goto LABEL_63;
  }

  v37 = *(a1 + 312);
  result = 12;
LABEL_84:
  if (v37 == a2)
  {
    *(a1 + 568) = v10;
  }

  return result;
}

uint64_t internalEntityProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 592);
  if (!v4)
  {
    return 23;
  }

  v9 = *(v4 + 24);
  v10 = *(v9 + 8);
  v11 = v10 + *(v9 + 20);
  v12 = v10 + *(v9 + 16);
  v22 = v11;
  if (*(v9 + 57))
  {
    v13 = (**(a1 + 464))();
    v14 = doProlog(a1, *(a1 + 464), v11, v12, v13, v22, &v22, 0, 1);
  }

  else
  {
    v14 = doContent(a1, *(v4 + 32), *(a1 + 464), v11, v12, &v22, 0, 1);
  }

  v15 = v14;
  if (!v14)
  {
    v17 = a1;
    if (v12 == v22 || (v17 = a1, *(a1 + 928) != 3))
    {
      do
      {
        v18 = v17;
        v17 = *(v17 + 920);
      }

      while (v17);
      --*(v18 + 996);
      *(v9 + 56) = 0;
      v19 = *(v4 + 16);
      *(a1 + 592) = v19;
      *(v4 + 16) = *(a1 + 600);
      *(a1 + 600) = v4;
      if (v19 && *(a1 + 928) == 3)
      {
        return 0;
      }

      else if (*(v9 + 57))
      {
        *(a1 + 552) = prologProcessor;
        v20 = (**(a1 + 312))();
        LOBYTE(v21) = 1;
        return doProlog(a1, *(a1 + 312), a2, a3, v20, v22, a4, *(a1 + 932) == 0, v21);
      }

      else
      {
        *(a1 + 552) = contentProcessor;
        v15 = doContent(a1, *(a1 + 920) != 0, *(a1 + 312), a2, a3, a4, *(a1 + 932) == 0, 0);
        if (!v15 && !storeRawNames(a1))
        {
          return 1;
        }
      }
    }

    else
    {
      v15 = 0;
      *(v9 + 20) = v22 - *(v9 + 8);
    }
  }

  return v15;
}

_BYTE *normalizeLines(_BYTE *result)
{
  while (1)
  {
    v1 = *result;
    if (!*result)
    {
      break;
    }

    if (v1 == 13)
    {
      v2 = result;
      do
      {
        if (v1 == 13)
        {
          *v2 = 10;
          v3 = *++result;
          if (v3 == 10)
          {
            ++result;
          }
        }

        else
        {
          ++result;
          *v2 = v1;
        }

        ++v2;
        v1 = *result;
      }

      while (*result);
      *v2 = 0;
      return result;
    }

    ++result;
  }

  return result;
}

uint64_t externalEntityInitProcessor2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v8 = (*(*(a1 + 312) + 8))();
  if (v8 == -2)
  {
    if (*(a1 + 932))
    {
      *(a1 + 568) = v6;
      return 6;
    }

    goto LABEL_12;
  }

  if (v8 == -1)
  {
    if (*(a1 + 932))
    {
      *(a1 + 568) = v6;
      return 5;
    }

    goto LABEL_12;
  }

  if (v8 != 14)
  {
LABEL_7:
    *(a1 + 552) = externalEntityInitProcessor3;
    return externalEntityInitProcessor3(a1, v6, a3, a4);
  }

  if (accountingDiffTolerated(a1, 14, v6, a2, 0))
  {
    v6 = a2;
    if (a2 != a3 || *(a1 + 932))
    {
      goto LABEL_7;
    }

LABEL_12:
    result = 0;
    *a4 = v6;
    return result;
  }

  return 43;
}

uint64_t externalEntityInitProcessor3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  *(a1 + 568) = a2;
  v8 = (*(*(a1 + 312) + 8))();
  *(a1 + 576) = a2;
  switch(v8)
  {
    case -2:
      if (*(a1 + 932))
      {
        return 6;
      }

      goto LABEL_12;
    case -1:
      if (*(a1 + 932))
      {
        return 5;
      }

LABEL_12:
      result = 0;
      *a4 = v6;
      return result;
    case 12:
      result = processXmlDecl(a1, 1, v6, a2);
      if (result)
      {
        return result;
      }

      v10 = *(a1 + 928);
      if (v10 == 2)
      {
        return 35;
      }

      if (v10 == 3)
      {
        result = 0;
        *a4 = a2;
        return result;
      }

      v6 = a2;
      break;
  }

  *(a1 + 552) = externalEntityContentProcessor;
  *(a1 + 612) = 1;
  return externalEntityContentProcessor(a1, v6, a3, a4);
}

uint64_t entityValueInitProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  *(a1 + 568) = a2;
  v8 = (**(a1 + 312))();
  v9 = a2;
  *(a1 + 576) = a2;
  if (v8 >= 1)
  {
    v10 = v6;
    while (1)
    {
      switch(v8)
      {
        case 14:
          if (!accountingDiffTolerated(a1, 14, v10, v9, 0))
          {
            return 43;
          }

          v9 = a2;
          *a4 = a2;
          v10 = a2;
          break;
        case 29:
          *a4 = v9;
          return 2;
        case 12:
          result = processXmlDecl(a1, 0, v6, v9);
          if (!result)
          {
            if (*(a1 + 928) == 2)
            {
              return 35;
            }

            else
            {
              *a4 = a2;
              *(a1 + 552) = entityValueProcessor;
              return entityValueProcessor(a1, a2, a3, a4);
            }
          }

          return result;
      }

      v6 = v9;
      *(a1 + 568) = v9;
      v8 = (**(a1 + 312))();
      v9 = a2;
      *(a1 + 576) = a2;
      if (v8 < 1)
      {
        goto LABEL_12;
      }
    }
  }

  v10 = v6;
LABEL_12:
  if (v8)
  {
    v11 = *(a1 + 932) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    result = 0;
    *a4 = v10;
  }

  else if ((v8 + 2) >= 3)
  {
    return storeEntityValue(a1, *(a1 + 312), v10, a3, 0);
  }

  else
  {
    return (4 - v8);
  }

  return result;
}

uint64_t externalParEntProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v12 = a2;
  v8 = (**(a1 + 312))();
  v9 = v8;
  if (v8 <= 0)
  {
    if (v8)
    {
      v10 = *(a1 + 932) == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      if ((v8 + 2) < 3)
      {
        return (4 - v8);
      }

      goto LABEL_11;
    }

    result = 0;
    *a4 = v6;
  }

  else
  {
    if (v8 != 14)
    {
LABEL_11:
      *(a1 + 552) = prologProcessor;
      return doProlog(a1, *(a1 + 312), v6, a3, v9, v12, a4, *(a1 + 932) == 0, 1, 0);
    }

    if (accountingDiffTolerated(a1, 14, v6, v12, 0))
    {
      v6 = v12;
      v9 = (**(a1 + 312))();
      goto LABEL_11;
    }

    return 43;
  }

  return result;
}

uint64_t entityValueProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 312);
    ;
  }

  if (i)
  {
    v10 = *(a1 + 932) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    result = 0;
    *a4 = a2;
  }

  else if ((i + 2) >= 3)
  {
    return storeEntityValue(a1, v8, a2, a3, 0);
  }

  else
  {
    return (4 - i);
  }

  return result;
}

uint64_t hashTableClear(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    v2 = 0;
    do
    {
      result = (*(v1[4] + 24))(*v1[4], *(*v1 + 8 * v2));
      *(*v1 + 8 * v2++) = 0;
    }

    while (v2 < v1[2]);
  }

  v1[3] = 0;
  return result;
}

uint64_t hashTableDestroy(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = 0;
    do
    {
      (*(a1[4] + 24))(*a1[4], *(*a1 + 8 * v2++));
    }

    while (v2 < a1[2]);
  }

  v3 = a1[4];
  v4 = v3[3];
  v5 = *v3;
  v6 = *a1;

  return v4(v5, v6);
}

uint64_t copyEntityTable(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a4;
  if (*a4)
  {
    v8 = &v7[*(a4 + 16)];
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    do
    {
      if (v7 == v8)
      {
        return 1;
      }

      v12 = *v7++;
      v11 = v12;
    }

    while (!v12);
    result = poolCopyString(a3, *v11);
    if (!result)
    {
      return result;
    }

    result = lookup(a1, a2, result, 0x40uLL);
    if (!result)
    {
      return result;
    }

    v14 = result;
    v15 = *(v11 + 24);
    if (!v15)
    {
      break;
    }

    result = poolCopyString(a3, v15);
    if (!result)
    {
      return result;
    }

    *(v14 + 24) = result;
    v16 = *(v11 + 32);
    if (v16)
    {
      if (v16 != v10)
      {
        result = poolCopyString(a3, *(v11 + 32));
        v9 = result;
        v10 = v16;
        if (!result)
        {
          return result;
        }
      }

      *(v14 + 32) = v9;
    }

    v17 = *(v11 + 40);
    if (v17)
    {
      result = poolCopyString(a3, v17);
      if (!result)
      {
        return result;
      }

      *(v14 + 40) = result;
    }

LABEL_28:
    v24 = *(v11 + 48);
    if (v24)
    {
      result = poolCopyString(a3, v24);
      if (!result)
      {
        return result;
      }

      *(v14 + 48) = result;
    }

    *(v14 + 57) = *(v11 + 57);
  }

  v25 = a2;
  v18 = *(v11 + 8);
  v19 = *(v11 + 16);
  if (!a3[3])
  {
    result = poolGrow(a3);
    if (!result)
    {
      return result;
    }
  }

  if (v19 >= 1)
  {
    v20 = v19 + 1;
    do
    {
      v21 = a3[3];
      if (v21 == a3[2])
      {
        result = poolGrow(a3);
        if (!result)
        {
          return result;
        }

        v21 = a3[3];
      }

      v22 = *v18++;
      a3[3] = (v21 + 1);
      *v21 = v22;
      --v20;
    }

    while (v20 > 1);
  }

  v23 = a3[4];
  a3[4] = a3[3];
  if (v23)
  {
    *(v14 + 8) = v23;
    *(v14 + 16) = *(v11 + 16);
    a2 = v25;
    goto LABEL_28;
  }

  return 0;
}

unint64_t crnc3rdprtyrnm__INTERNAL_trim_to_complete_utf8_characters(unint64_t result, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 > result)
  {
    v3 = 0;
    v4 = *a2;
    while (1)
    {
      v6 = *--v4;
      v5 = v6;
      if ((v6 & 0xF8) == 0xF0)
      {
        if ((v3 - 3) <= 0xFFFFFFFFFFFFFFFBLL)
        {
          v2 += 3;
          break;
        }
      }

      else if ((v5 & 0xF0) == 0xE0)
      {
        if ((v3 - 2) <= 0xFFFFFFFFFFFFFFFCLL)
        {
          v2 += 2;
          break;
        }
      }

      else
      {
        if ((v5 & 0xE0) != 0xC0)
        {
          if ((v5 & 0x80) == 0)
          {
            break;
          }

          goto LABEL_12;
        }

        if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          ++v2;
          break;
        }
      }

      v3 = 0;
LABEL_12:
      ++v3;
      v2 = v4;
      if (v4 <= result)
      {
        v2 = result;
        break;
      }
    }
  }

  *a2 = v2;
  return result;
}

uint64_t crnc3rdprtyrnm_XmlUtf8Encode(unsigned int a1, _BYTE *a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 <= 0x7F)
  {
    *a2 = a1;
    return 1;
  }

  if (a1 <= 0x7FF)
  {
    *a2 = (a1 >> 6) | 0xC0;
    a2[1] = a1 & 0x3F | 0x80;
    return 2;
  }

  if (!HIWORD(a1))
  {
    *a2 = (a1 >> 12) | 0xE0;
    a2[1] = (a1 >> 6) & 0x3F | 0x80;
    a2[2] = a1 & 0x3F | 0x80;
    return 3;
  }

  if (HIWORD(a1) > 0x10u)
  {
    return 0;
  }

  *a2 = (a1 >> 18) | 0xF0;
  a2[1] = (a1 >> 12) & 0x3F | 0x80;
  a2[2] = (a1 >> 6) & 0x3F | 0x80;
  a2[3] = a1 & 0x3F | 0x80;
  return 4;
}

uint64_t crnc3rdprtyrnm_XmlUtf16Encode(unsigned int a1, _WORD *a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (!HIWORD(a1))
  {
    *a2 = a1;
    return 1;
  }

  if (HIWORD(a1) > 0x10u)
  {
    return 0;
  }

  *a2 = ((a1 + 67043328) >> 10) - 10240;
  a2[1] = a1 & 0x3FF | 0xDC00;
  return 2;
}

void *crnc3rdprtyrnm_XmlInitUnknownEncoding(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cstdlib_memcpy(a1, latin1_encoding, 0x1D0uLL);
  for (i = 0; i != 128; ++i)
  {
    if (*(&latin1_encoding[17] + i))
    {
      v9 = *(&latin1_encoding[17] + i) == 28;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && i != *(a2 + 4 * i))
    {
      return 0;
    }
  }

  v10 = 0;
  v11 = 993;
  do
  {
    v12 = *(a2 + 4 * v10);
    if (v12 == -1)
    {
      *(a1 + v10 + 136) = 1;
      goto LABEL_25;
    }

    if ((v12 & 0x80000000) != 0)
    {
      result = 0;
      if (!a3 || v12 < 0xFFFFFFFC)
      {
        return result;
      }

      *(a1 + v10 + 136) = 3 - v12;
      *(a1 + v11 - 1) = 0;
      *(a1 + v10 + 240) = 0;
      goto LABEL_38;
    }

    if (v12 > 0x7F)
    {
      if ((checkCharRefNumber(*(a2 + 4 * v10)) & 0x80000000) == 0)
      {
        if (WORD1(v12))
        {
          return 0;
        }

        v19 = v12 >> 5;
        if ((namingBitmap[v19 | (8 * nmstrtPages[v12 >> 8])] & (1 << v12)) != 0)
        {
          v20 = a1 + v10;
          v21 = 22;
        }

        else
        {
          v20 = a1 + v10;
          if ((namingBitmap[v19 | (8 * namePages[v12 >> 8])] & (1 << v12)) != 0)
          {
            v21 = 26;
          }

          else
          {
            v21 = 28;
          }
        }

        v20[136] = v21;
        *(a1 + v11 - 1) = crnc3rdprtyrnm_XmlUtf8Encode(v12, a1 + v11);
        *(a1 + v10 + 240) = v12;
        goto LABEL_38;
      }

      *(a1 + v10 + 136) = 0;
LABEL_25:
      *(a1 + v10 + 240) = -1;
      *(a1 + v11 - 1) = 1;
      goto LABEL_38;
    }

    v13 = *(&latin1_encoding[17] + v12);
    if (*(&latin1_encoding[17] + v12))
    {
      v14 = v13 == 28;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && v10 != v12)
    {
      return 0;
    }

    *(a1 + v10 + 136) = v13;
    v16 = a1 + v11;
    *(v16 - 1) = 1;
    *v16 = v12;
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = -1;
    }

    *(a1 + v10 + 240) = v17;
LABEL_38:
    ++v10;
    v11 += 4;
  }

  while (v10 != 256);
  a1[58] = a3;
  a1[59] = a4;
  if (a3)
  {
    a1[49] = unknown_isName;
    a1[50] = unknown_isName;
    a1[51] = unknown_isName;
    a1[52] = unknown_isNmstrt;
    a1[53] = unknown_isNmstrt;
    a1[54] = unknown_isNmstrt;
    a1[55] = unknown_isInvalid;
    a1[56] = unknown_isInvalid;
    a1[57] = unknown_isInvalid;
  }

  a1[14] = unknown_toUtf8;
  a1[15] = unknown_toUtf16;
  return a1;
}

uint64_t checkCharRefNumber(uint64_t result)
{
  v1 = result >> 8;
  if (((result >> 8) - 216) < 8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v1 == 255)
  {
    if (result >> 1 == 0x7FFF)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (!v1 && !*(&latin1_encoding[17] + result))
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t unknown_isName(uint64_t a1)
{
  v1 = (*(a1 + 464))(*(a1 + 472));
  if (HIWORD(v1))
  {
    return 0;
  }

  else
  {
    return namingBitmap[(v1 >> 5) | (8 * namePages[v1 >> 8])] & (1 << v1);
  }
}

uint64_t unknown_isNmstrt(uint64_t a1)
{
  v1 = (*(a1 + 464))(*(a1 + 472));
  if (HIWORD(v1))
  {
    return 0;
  }

  else
  {
    return namingBitmap[(v1 >> 5) | (8 * nmstrtPages[v1 >> 8])] & (1 << v1);
  }
}

uint64_t unknown_isInvalid(uint64_t a1)
{
  v1 = (*(a1 + 464))(*(a1 + 472));
  if (WORD1(v1))
  {
    return 1;
  }

  else
  {
    return checkCharRefNumber(v1) >> 31;
  }
}

uint64_t unknown_toUtf8(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, void **a4, uint64_t a5)
{
  v6 = *a2;
  if (v6 == a3)
  {
    return 0;
  }

  v11 = a1 + 992;
  v12 = a1 + 136;
  while (1)
  {
    v13 = (v11 + 4 * *v6);
    v16 = *v13;
    v14 = v13 + 1;
    v15 = v16;
    if (!v16)
    {
      break;
    }

    if (a5 - *a4 < v15)
    {
      return 2;
    }

    v17 = (v6 + 1);
LABEL_8:
    *a2 = v17;
    cstdlib_memcpy(*a4, v14, v15);
    *a4 = *a4 + v15;
    v6 = *a2;
    if (*a2 == a3)
    {
      return 0;
    }
  }

  v18 = (*(a1 + 464))(*(a1 + 472));
  v19 = crnc3rdprtyrnm_XmlUtf8Encode(v18, v21);
  if (a5 - *a4 >= v19)
  {
    v15 = v19;
    v17 = *a2 + *(v12 + **a2) - 3;
    v14 = v21;
    goto LABEL_8;
  }

  return 2;
}

uint64_t unknown_toUtf16(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4, _WORD *a5)
{
  v6 = *a2;
  if (v6 >= a3)
  {
    return 0;
  }

  v11 = a1 + 480;
  v12 = a1 + 136;
  v13 = *a4;
  while (v13 < a5)
  {
    v14 = *(v11 + 2 * *v6);
    if (v14)
    {
      v15 = (v6 + 1);
    }

    else
    {
      v14 = (*(a1 + 464))(*(a1 + 472));
      v15 = *a2 + *(v12 + **a2) - 3;
    }

    *a2 = v15;
    v16 = *a4;
    *v16 = v14;
    v13 = v16 + 1;
    *a4 = v13;
    v6 = *a2;
    if (*a2 >= a3)
    {
      return 0;
    }
  }

  if (v13 == a5)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t crnc3rdprtyrnm_XmlInitEncoding(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  EncodingIndex = getEncodingIndex(a3);
  if (EncodingIndex == -1)
  {
    return 0;
  }

  *(a1 + 133) = EncodingIndex;
  *a1 = initScanProlog;
  *(a1 + 8) = initScanContent;
  *(a1 + 96) = initUpdatePosition;
  *(a1 + 136) = a2;
  *a2 = a1;
  return 1;
}

uint64_t getEncodingIndex(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 6;
  }

  v2 = 0;
  while (!streqci(a1, getEncodingIndex_encodingNames[v2]))
  {
    if (++v2 == 6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t doParseXmlDecl(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void *a8, uint64_t *a9, void *a10, int *a11)
{
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v17 = *(a3 + 128);
  v37 = a4 + 5 * v17;
  v18 = a5 - 2 * v17;
  v19 = parsePseudoAttribute(a3, v37, v18, &v35, &v34, &v36, &v37);
  i = v35;
  if (v19)
  {
    v21 = v35 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_6;
  }

  v23 = v34;
  if ((*(a3 + 48))(a3, v35, v34, "version"))
  {
    if (a7)
    {
      *a7 = v36;
    }

    v25 = v37;
    if (a8)
    {
      *a8 = v37;
    }

    if (!parsePseudoAttribute(a3, v25, v18, &v35, &v34, &v36, &v37))
    {
      goto LABEL_6;
    }

    i = v35;
    if (!v35)
    {
      if (!a2)
      {
        return 1;
      }

LABEL_6:
      i = v37;
      goto LABEL_7;
    }

    v23 = v34;
  }

  else if (!a2)
  {
    goto LABEL_7;
  }

  if (!(*(a3 + 48))(a3, i, v23, "encoding"))
  {
LABEL_27:
    v27 = (*(a3 + 48))(a3, i, v23, "standalone");
    if (a2 || !v27)
    {
      goto LABEL_7;
    }

    i = v36;
    v28 = v37;
    if ((*(a3 + 48))(a3, v36, v37 - *(a3 + 128), "yes"))
    {
      if (!a11)
      {
LABEL_38:
        for (i = v28; ; i += *(a3 + 128))
        {
          v40 = i;
          v38 = &v39;
          (*(a3 + 112))(a3, &v40, v18, &v38, &v40);
          v30 = v38 == &v39 ? -1 : v39;
          v31 = v30 > 0x20;
          v32 = (1 << v30) & 0x100002600;
          if (v31 || v32 == 0)
          {
            break;
          }
        }

        if (i == v18)
        {
          return 1;
        }

LABEL_7:
        result = 0;
        *a6 = i;
        return result;
      }

      v29 = 1;
    }

    else
    {
      if (!(*(a3 + 48))(a3, i, v28 - *(a3 + 128), "no"))
      {
        goto LABEL_7;
      }

      if (!a11)
      {
        goto LABEL_38;
      }

      v29 = 0;
    }

    *a11 = v29;
    goto LABEL_38;
  }

  i = v36;
  v40 = v36;
  v38 = &v39;
  (*(a3 + 112))(a3, &v40, v18, &v38, &v40);
  if (v38 == &v39 || (v39 & 0xFFFFFFDF) - 65 > 0x19)
  {
    goto LABEL_7;
  }

  if (a9)
  {
    *a9 = i;
  }

  v26 = v37;
  if (a10)
  {
    *a10 = a1(a3, i, v37 - *(a3 + 128));
  }

  if (!parsePseudoAttribute(a3, v26, v18, &v35, &v34, &v36, &v37))
  {
    goto LABEL_6;
  }

  i = v35;
  if (v35)
  {
    v23 = v34;
    goto LABEL_27;
  }

  return 1;
}

uint64_t (**findEncoding(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = a1;
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v7 = v9;
  v8 = a2;
  (*(a1 + 112))(a1, &v8, a3, &v7, &v10 + 15);
  if (v8 != a3)
  {
    return 0;
  }

  *v7 = 0;
  if (!streqci(v9, "UTF-16") || *(v4 + 128) != 2)
  {
    v6 = 0;
    while (!streqci(v9, getEncodingIndex_encodingNames[v6]))
    {
      if (++v6 == 6)
      {
        return 0;
      }
    }

    return encodings[v6];
  }

  return v4;
}

uint64_t crnc3rdprtyrnm_XmlInitEncodingNS(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  EncodingIndex = getEncodingIndex(a3);
  if (EncodingIndex == -1)
  {
    return 0;
  }

  *(a1 + 133) = EncodingIndex;
  *a1 = initScanPrologNS;
  *(a1 + 8) = initScanContentNS;
  *(a1 + 96) = initUpdatePosition;
  *(a1 + 136) = a2;
  *a2 = a1;
  return 1;
}

uint64_t (**findEncodingNS(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = a1;
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v7 = v9;
  v8 = a2;
  (*(a1 + 112))(a1, &v8, a3, &v7, &v10 + 15);
  if (v8 != a3)
  {
    return 0;
  }

  *v7 = 0;
  if (!streqci(v9, "UTF-16") || *(v4 + 128) != 2)
  {
    v6 = 0;
    while (!streqci(v9, getEncodingIndex_encodingNames[v6]))
    {
      if (++v6 == 6)
      {
        return 0;
      }
    }

    return encodingsNS[v6];
  }

  return v4;
}

void *crnc3rdprtyrnm_XmlInitUnknownEncodingNS(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = crnc3rdprtyrnm_XmlInitUnknownEncoding(a1, a2, a3, a4);
  if (result)
  {
    *(result + 194) = 23;
  }

  return result;
}

uint64_t normal_prologTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v5 = a2;
  v7 = a1 + 136;
  v9 = 18;
  v10 = 1;
  switch(*(a1 + 136 + *a2))
  {
    case 2:
      v18 = a2 + 1;
      if ((a3 - (a2 + 1)) < 1)
      {
        return 0xFFFFFFFFLL;
      }

      v23 = *(v7 + *v18);
      if (v23 > 0x1D)
      {
        goto LABEL_138;
      }

      if (((1 << v23) & 0x214000E0) != 0)
      {
        *a4 = a2;
        return 29;
      }

      if (v23 == 15)
      {
        v32 = a2 + 2;

        return normal_scanPi(a1, v32, a3, a4);
      }

      else
      {
        if (v23 != 16)
        {
          goto LABEL_138;
        }

        v31 = a2 + 2;

        return normal_scanDecl(a1, v31, a3, a4);
      }

    case 4:
      v24 = a2 + 1;
      v25 = a3 - (a2 + 1);
      if (v25 < 1)
      {
        return 4294967270;
      }

      if (*v24 != 93)
      {
        goto LABEL_129;
      }

      if (v25 == 1)
      {
        return 0xFFFFFFFFLL;
      }

      if (a2[2] == 62)
      {
        *a4 = a2 + 3;
        return 34;
      }

      else
      {
LABEL_129:
        *a4 = v24;
        return 26;
      }

    case 5:
      if ((a3 - a2) < 2)
      {
        return 4294967294;
      }

      if ((*(a1 + 440))(a1, a2))
      {
        goto LABEL_111;
      }

      if ((*(a1 + 416))(a1, v5))
      {
        goto LABEL_121;
      }

      if (!(*(a1 + 392))(a1, v5))
      {
        goto LABEL_111;
      }

      v9 = 19;
LABEL_121:
      v10 = 2;
      goto LABEL_4;
    case 6:
      if ((a3 - a2) < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 448))(a1, a2))
      {
        goto LABEL_111;
      }

      if ((*(a1 + 424))(a1, v5))
      {
        goto LABEL_75;
      }

      if (!(*(a1 + 400))(a1, v5))
      {
        goto LABEL_111;
      }

      v9 = 19;
LABEL_75:
      v10 = 3;
      goto LABEL_4;
    case 7:
      if ((a3 - a2) < 4)
      {
        return 4294967294;
      }

      if ((*(a1 + 456))(a1, a2))
      {
        goto LABEL_111;
      }

      if ((*(a1 + 432))(a1, v5))
      {
        goto LABEL_88;
      }

      if (!(*(a1 + 408))(a1, v5))
      {
LABEL_111:
        v9 = 0;
LABEL_112:
        *a4 = v5;
        return v9;
      }

      v9 = 19;
LABEL_88:
      v10 = 4;
LABEL_4:
      v5 += v10;
      v11 = a3 - v5;
      if ((a3 - v5) < 1)
      {
        return -v9;
      }

      break;
    case 9:
      if (a2 + 1 != a3)
      {
        goto LABEL_95;
      }

      *a4 = a3;
      return 4294967281;
    case 0xA:
    case 0x15:
LABEL_95:
      v26 = a2 + 1;
      v27 = a3 - (a2 + 1);
      if (v27 < 1)
      {
        goto LABEL_106;
      }

      do
      {
        v28 = *(v7 + *v26);
        if (v28 != 21 && v28 != 10 && (v28 != 9 || v26 + 1 == a3))
        {
          goto LABEL_106;
        }

        ++v26;
        --v27;
      }

      while (v27 > 0);
      v26 = a3;
LABEL_106:
      *a4 = v26;
      return 15;
    case 0xB:
      *a4 = a2 + 1;
      return 17;
    case 0xC:
      v20 = a2 + 1;
      v21 = 12;
      goto LABEL_66;
    case 0xD:
      v20 = a2 + 1;
      v21 = 13;
LABEL_66:

      return normal_scanLit(v21, a1, v20, a3, a4);
    case 0x13:
      v17 = a2 + 1;

      return normal_scanPoundName(a1, v17, a3, a4);
    case 0x14:
      *a4 = a2 + 1;
      return 25;
    case 0x16:
    case 0x18:
      goto LABEL_4;
    case 0x17:
    case 0x19:
    case 0x1A:
    case 0x1B:
      v9 = 19;
      v10 = 1;
      goto LABEL_4;
    case 0x1E:
      v22 = a2 + 1;

      return normal_scanPercent(a1, v22, a3, a4);
    case 0x1F:
      *a4 = a2 + 1;
      return 23;
    case 0x20:
      v18 = a2 + 1;
      if ((a3 - (a2 + 1)) < 1)
      {
        return 4294967272;
      }

      v19 = *(v7 + *v18);
      if (v19 > 0x24)
      {
        goto LABEL_116;
      }

      if (((1 << v19) & 0x1900200000) != 0)
      {
        goto LABEL_117;
      }

      if (v19 == 33)
      {
        *a4 = a2 + 2;
        return 36;
      }

      else
      {
        if (v19 == 34)
        {
          *a4 = a2 + 2;
          return 37;
        }

LABEL_116:
        if ((v19 - 9) >= 3)
        {
          if (v19 == 15)
          {
            *a4 = a2 + 2;
            return 35;
          }

          else
          {
LABEL_138:
            v9 = 0;
            *a4 = v18;
          }
        }

        else
        {
LABEL_117:
          *a4 = v18;
          return 24;
        }
      }

      return v9;
    case 0x23:
      *a4 = a2 + 1;
      return 38;
    case 0x24:
      *a4 = a2 + 1;
      return 21;
    default:
      goto LABEL_111;
  }

  while (2)
  {
    switch(*(v7 + *v5))
    {
      case 5:
        if (v11 == 1)
        {
          return 4294967294;
        }

        if ((*(a1 + 440))(a1, v5) || !(*(a1 + 392))(a1, v5))
        {
          goto LABEL_111;
        }

        v12 = v5 + 2;
        goto LABEL_7;
      case 6:
        if (v11 < 3)
        {
          return 4294967294;
        }

        if ((*(a1 + 448))(a1, v5) || !(*(a1 + 400))(a1, v5))
        {
          goto LABEL_111;
        }

        v12 = v5 + 3;
        goto LABEL_7;
      case 7:
        if (v11 < 4)
        {
          return 4294967294;
        }

        if ((*(a1 + 456))(a1, v5) || !(*(a1 + 408))(a1, v5))
        {
          goto LABEL_111;
        }

        v12 = v5 + 4;
        goto LABEL_7;
      case 9:
      case 0xA:
      case 0xB:
      case 0x14:
      case 0x15:
      case 0x1E:
      case 0x20:
      case 0x23:
      case 0x24:
        goto LABEL_112;
      case 0xF:
        if (v9 == 19)
        {
          goto LABEL_111;
        }

        *a4 = v5 + 1;
        return 30;
      case 0x16:
      case 0x18:
      case 0x19:
      case 0x1A:
      case 0x1B:
        v12 = v5 + 1;
        goto LABEL_7;
      case 0x17:
        v12 = v5 + 1;
        if (v9 == 41)
        {
          v9 = 19;
          goto LABEL_7;
        }

        if (v9 != 18)
        {
          goto LABEL_7;
        }

        v13 = a3 - v12;
        if ((a3 - v12) < 1)
        {
          return 0xFFFFFFFFLL;
        }

        v14 = *(v7 + *v12);
        v9 = 19;
        if (v14 > 0x15)
        {
          if (v14 - 24 >= 4 && v14 != 22)
          {
            if (v14 == 29)
            {
              goto LABEL_49;
            }

            goto LABEL_7;
          }

          v12 = v5 + 2;
          goto LABEL_47;
        }

        if (v14 != 5)
        {
          if (v14 == 6)
          {
            if (v13 < 3)
            {
              return 4294967294;
            }

            if ((*(a1 + 448))(a1, v5 + 1) || !(*(a1 + 400))(a1, v5 + 1))
            {
              goto LABEL_49;
            }

            v12 = v5 + 4;
          }

          else
          {
            if (v14 != 7)
            {
              goto LABEL_7;
            }

            if (v13 < 4)
            {
              return 4294967294;
            }

            if ((*(a1 + 456))(a1, v5 + 1) || !(*(a1 + 408))(a1, v5 + 1))
            {
              goto LABEL_49;
            }

            v12 = v5 + 5;
          }

LABEL_47:
          v9 = 41;
LABEL_7:
          v11 = a3 - v12;
          v5 = v12;
          if ((a3 - v12) <= 0)
          {
            return -v9;
          }

          continue;
        }

        if (v13 == 1)
        {
          return 4294967294;
        }

        if (!(*(a1 + 440))(a1, v5 + 1) && (*(a1 + 392))(a1, v5 + 1))
        {
          v12 = v5 + 3;
          goto LABEL_47;
        }

LABEL_49:
        v9 = 0;
        *a4 = v12;
        break;
      case 0x21:
        if (v9 == 19)
        {
          goto LABEL_111;
        }

        *a4 = v5 + 1;
        return 31;
      case 0x22:
        if (v9 == 19)
        {
          goto LABEL_111;
        }

        *a4 = v5 + 1;
        return 32;
      default:
        goto LABEL_111;
    }

    return v9;
  }
}

uint64_t normal_contentTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v6 = a2;
  v8 = a1 + 136;
  v9 = *(a1 + 136 + *a2);
  if (v9 > 5)
  {
    if (*(a1 + 136 + *a2) > 7u)
    {
      switch(v9)
      {
        case 8u:
          goto LABEL_128;
        case 9u:
          v23 = a2 + 1;
          if ((a3 - (a2 + 1)) < 1)
          {
            return 4294967293;
          }

          if (*(v8 + a2[1]) == 10)
          {
            v23 = a2 + 2;
          }

          break;
        case 0xAu:
          v23 = a2 + 1;
          break;
        default:
          goto LABEL_97;
      }

      *a4 = v23;
      return 7;
    }

    if (v9 == 6)
    {
      if ((a3 - a2) < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 448))(a1, a2))
      {
        goto LABEL_128;
      }

      v24 = v6 + 3;
      goto LABEL_98;
    }

    if (v9 == 7)
    {
      if ((a3 - a2) < 4)
      {
        return 4294967294;
      }

      if ((*(a1 + 456))(a1, a2))
      {
        goto LABEL_128;
      }

      v24 = v6 + 4;
      goto LABEL_98;
    }

LABEL_97:
    v24 = a2 + 1;
    goto LABEL_98;
  }

  if (*(a1 + 136 + *a2) > 2u)
  {
    switch(v9)
    {
      case 3u:
        v26 = a2 + 1;

        return normal_scanRef(a1, v26, a3, a4);
      case 4u:
        v24 = a2 + 1;
        if ((a3 - (a2 + 1)) < 1)
        {
          return 4294967291;
        }

        if (*v24 != 93)
        {
          goto LABEL_98;
        }

        v25 = a2 + 2;
        if ((a3 - (a2 + 2)) < 1)
        {
          return 4294967291;
        }

        if (*v25 == 62)
        {
          goto LABEL_93;
        }

LABEL_98:
        v27 = a3 - v24;
        if ((a3 - v24) >= 1)
        {
          while (1)
          {
            v28 = *(v8 + *v24);
            if (v28 > 5)
            {
              if (v28 == 6)
              {
                if (v27 < 3 || (*(a1 + 448))(a1, v24))
                {
LABEL_123:
                  *a4 = v24;
                  return 6;
                }

                v29 = v24 + 3;
              }

              else if (v28 == 7)
              {
                if (v27 < 4 || (*(a1 + 456))(a1, v24))
                {
                  goto LABEL_123;
                }

                v29 = v24 + 4;
              }

              else
              {
                if (v28 - 8 < 3)
                {
                  goto LABEL_123;
                }

                v29 = v24 + 1;
              }
            }

            else if (v28 == 4)
            {
              if (v27 == 1)
              {
                goto LABEL_123;
              }

              v29 = v24 + 1;
              if (v24[1] == 93)
              {
                if (v27 < 3)
                {
                  goto LABEL_123;
                }

                if (v24[2] == 62)
                {
                  result = 0;
                  v25 = v24 + 2;
                  goto LABEL_187;
                }
              }
            }

            else
            {
              if (v28 != 5 || v27 == 1 || (*(a1 + 440))(a1, v24))
              {
                goto LABEL_123;
              }

              v29 = v24 + 2;
            }

            v27 = a3 - v29;
            v24 = v29;
            if ((a3 - v29) <= 0)
            {
              goto LABEL_125;
            }
          }
        }

        v29 = v24;
LABEL_125:
        *a4 = v29;
        return 6;
      case 5u:
        if ((a3 - a2) < 2)
        {
          return 4294967294;
        }

        if ((*(a1 + 440))(a1, a2))
        {
          goto LABEL_128;
        }

        v24 = v6 + 2;
        goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (v9 < 2)
  {
    goto LABEL_128;
  }

  v10 = a2 + 1;
  v11 = a3 - (a2 + 1);
  if (v11 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(v8 + *v10);
  if (v12 <= 0xF)
  {
    if (*(v8 + *v10) > 6u)
    {
      if (v12 != 7)
      {
        if (v12 == 15)
        {
          v30 = a2 + 2;

          return normal_scanPi(a1, v30, a3, a4);
        }

        goto LABEL_180;
      }

      if (v11 < 4)
      {
        return 4294967294;
      }

      if ((*(a1 + 456))(a1, a2 + 1) || !(*(a1 + 432))(a1, v6 + 1))
      {
        goto LABEL_180;
      }

      v14 = 4;
    }

    else if (v12 == 5)
    {
      if (v11 == 1)
      {
        return 4294967294;
      }

      if ((*(a1 + 440))(a1, a2 + 1) || !(*(a1 + 416))(a1, v6 + 1))
      {
        goto LABEL_180;
      }

      v14 = 2;
    }

    else
    {
      if (v12 != 6)
      {
        goto LABEL_180;
      }

      if (v11 < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 448))(a1, a2 + 1) || !(*(a1 + 424))(a1, v6 + 1))
      {
        goto LABEL_180;
      }

      v14 = 3;
    }

LABEL_14:
    v6 = &v10[v14];
    v15 = a3 - &v10[v14];
    if (v15 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = 0;
    while (1)
    {
      v17 = *(v8 + *v6);
      if (v17 <= 0x16)
      {
        if (*(v8 + *v6) <= 6u)
        {
          if (v17 == 5)
          {
            if (v15 == 1)
            {
              return 4294967294;
            }

            if ((*(a1 + 440))(a1, v6) || !(*(a1 + 392))(a1, v6))
            {
              goto LABEL_128;
            }

LABEL_55:
            v18 = 2;
            goto LABEL_56;
          }

          if (v17 != 6)
          {
            goto LABEL_128;
          }

          if (v15 < 3)
          {
            return 4294967294;
          }

          if ((*(a1 + 448))(a1, v6) || !(*(a1 + 400))(a1, v6))
          {
            goto LABEL_128;
          }

          goto LABEL_31;
        }

        if (*(v8 + *v6) <= 0x10u)
        {
          if (v17 != 7)
          {
            if (v17 - 9 >= 2)
            {
              if (v17 == 11)
              {
LABEL_203:
                *a4 = v6 + 1;
                return 2;
              }

              goto LABEL_128;
            }

            goto LABEL_206;
          }

          if (v15 < 4)
          {
            return 4294967294;
          }

          if ((*(a1 + 456))(a1, v6) || !(*(a1 + 408))(a1, v6))
          {
            goto LABEL_128;
          }

          goto LABEL_25;
        }

        v18 = 1;
        if (v17 != 22)
        {
          if (v17 == 17)
          {
            goto LABEL_252;
          }

          if (v17 != 21)
          {
            goto LABEL_128;
          }

LABEL_206:
          v42 = a3 - ++v6;
          if ((a3 - v6) < 1)
          {
            return 0xFFFFFFFFLL;
          }

          result = 0xFFFFFFFFLL;
          while (1)
          {
            v43 = *(v8 + *v6);
            if (v43 > 0xA)
            {
              if (*(v8 + *v6) > 0x15u)
              {
                if (v43 != 22 && v43 != 24)
                {
                  goto LABEL_128;
                }

                v46 = 2;
                goto LABEL_246;
              }

              if (v43 != 21)
              {
                if (v43 == 11)
                {
                  goto LABEL_203;
                }

                if (v43 == 17)
                {
LABEL_252:
                  v25 = v6 + 1;
                  if ((a3 - (v6 + 1)) >= 1)
                  {
                    if (*v25 == 62)
                    {
                      *a4 = v6 + 2;
                      return 4;
                    }

LABEL_93:
                    result = 0;
                    goto LABEL_187;
                  }

                  return 0xFFFFFFFFLL;
                }

LABEL_128:
                result = 0;
LABEL_129:
                *a4 = v6;
                return result;
              }
            }

            else if (*(v8 + *v6) <= 8u)
            {
              switch(v43)
              {
                case 5u:
                  if (v42 == 1)
                  {
                    return 4294967294;
                  }

                  if ((*(a1 + 440))(a1, v6) || !(*(a1 + 416))(a1, v6))
                  {
                    goto LABEL_128;
                  }

                  v46 = 3;
                  break;
                case 6u:
                  if (v42 < 3)
                  {
                    return 4294967294;
                  }

                  if ((*(a1 + 448))(a1, v6) || !(*(a1 + 424))(a1, v6))
                  {
                    goto LABEL_128;
                  }

                  v46 = 4;
                  break;
                case 7u:
                  if (v42 >= 4)
                  {
                    if ((*(a1 + 456))(a1, v6) || !(*(a1 + 432))(a1, v6))
                    {
                      goto LABEL_128;
                    }

                    v46 = 5;
                    break;
                  }

                  return 4294967294;
                default:
                  goto LABEL_128;
              }

LABEL_246:

              return normal_scanAtts(a1, &v6[v46 - 1], a3, a4);
            }

            ++v6;
            if (--v42 <= 0)
            {
              return result;
            }
          }
        }
      }

      else if (v17 - 24 >= 4)
      {
        if (v17 != 23 || v16)
        {
          goto LABEL_128;
        }

        v10 = v6 + 1;
        v19 = a3 - (v6 + 1);
        if (v19 < 1)
        {
          return 0xFFFFFFFFLL;
        }

        v20 = *(v8 + *v10);
        if (v20 > 0x15)
        {
          if (v20 != 22 && v20 != 24)
          {
            goto LABEL_180;
          }

          v16 = 1;
          goto LABEL_55;
        }

        if (v20 == 5)
        {
          if (v19 == 1)
          {
            return 4294967294;
          }

          if ((*(a1 + 440))(a1, v6 + 1) || !(*(a1 + 416))(a1, v6 + 1))
          {
            goto LABEL_180;
          }

          v16 = 1;
LABEL_31:
          v18 = 3;
          goto LABEL_56;
        }

        if (v20 == 6)
        {
          if (v19 < 3)
          {
            return 4294967294;
          }

          if ((*(a1 + 448))(a1, v6 + 1) || !(*(a1 + 424))(a1, v6 + 1))
          {
            goto LABEL_180;
          }

          v16 = 1;
LABEL_25:
          v18 = 4;
          goto LABEL_56;
        }

        if (v20 != 7)
        {
          goto LABEL_180;
        }

        if (v19 < 4)
        {
          return 4294967294;
        }

        if ((*(a1 + 456))(a1, v6 + 1) || !(*(a1 + 432))(a1, v6 + 1))
        {
          goto LABEL_180;
        }

        v16 = 1;
        v18 = 5;
      }

      else
      {
        v18 = 1;
      }

LABEL_56:
      v6 += v18;
      v15 = a3 - v6;
      result = 0xFFFFFFFFLL;
      if ((a3 - v6) <= 0)
      {
        return result;
      }
    }
  }

  if (*(v8 + *v10) > 0x15u)
  {
    if (v12 != 22 && v12 != 24)
    {
      goto LABEL_180;
    }

    v14 = 1;
    goto LABEL_14;
  }

  if (v12 == 16)
  {
    v25 = a2 + 2;
    if ((a3 - (a2 + 2)) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v37 = *(v8 + *v25);
    if (v37 == 20)
    {
      v25 = a2 + 3;
      if ((a3 - (a2 + 3)) >= 6)
      {
        v39 = &big2_scanCdataSection_CDATA_LSQB;
        v40 = 6;
        do
        {
          v41 = *v39++;
          if (*v25 != v41)
          {
            goto LABEL_93;
          }

          ++v25;
          --v40;
        }

        while (v40);
        result = 8;
        v25 = a2 + 9;
LABEL_187:
        *a4 = v25;
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      if (v37 != 27)
      {
        goto LABEL_93;
      }

      v38 = a2 + 3;

      return normal_scanComment(a1, v38, a3, a4);
    }
  }

  if (v12 != 17)
  {
LABEL_180:
    result = 0;
    *a4 = v10;
    return result;
  }

  v6 = a2 + 2;
  v31 = a3 - (a2 + 2);
  if (v31 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v32 = *(v8 + *v6);
  if (v32 <= 6)
  {
    if (v32 == 5)
    {
      if (v31 == 1)
      {
        return 4294967294;
      }

      if ((*(a1 + 440))(a1, a2 + 2))
      {
        goto LABEL_128;
      }

      result = (*(a1 + 416))(a1, v6);
      if (!result)
      {
        goto LABEL_129;
      }

      v33 = 2;
    }

    else
    {
      if (v32 != 6)
      {
        goto LABEL_129;
      }

      if (v31 < 3)
      {
        return 4294967294;
      }

      if ((*(a1 + 448))(a1, a2 + 2))
      {
        goto LABEL_128;
      }

      result = (*(a1 + 424))(a1, v6);
      if (!result)
      {
        goto LABEL_129;
      }

      v33 = 3;
    }
  }

  else if (v32 == 7)
  {
    if (v31 < 4)
    {
      return 4294967294;
    }

    if ((*(a1 + 456))(a1, a2 + 2))
    {
      goto LABEL_128;
    }

    result = (*(a1 + 432))(a1, v6);
    if (!result)
    {
      goto LABEL_129;
    }

    v33 = 4;
  }

  else
  {
    v33 = 1;
    if (v32 != 22 && v32 != 24)
    {
      goto LABEL_129;
    }
  }

  v6 += v33;
  v34 = a3 - v6;
  if ((a3 - v6) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  do
  {
    v35 = *(v8 + *v6);
    if (v35 <= 8)
    {
      switch(v35)
      {
        case 5u:
          if (v34 == 1)
          {
            return 4294967294;
          }

          if ((*(a1 + 440))(a1, v6))
          {
            goto LABEL_128;
          }

          result = (*(a1 + 392))(a1, v6);
          if (!result)
          {
            goto LABEL_129;
          }

          v36 = 2;
          break;
        case 6u:
          if (v34 < 3)
          {
            return 4294967294;
          }

          if ((*(a1 + 448))(a1, v6))
          {
            goto LABEL_128;
          }

          result = (*(a1 + 400))(a1, v6);
          if (!result)
          {
            goto LABEL_129;
          }

          v36 = 3;
          break;
        case 7u:
          if (v34 < 4)
          {
            return 4294967294;
          }

          if ((*(a1 + 456))(a1, v6))
          {
            goto LABEL_128;
          }

          result = (*(a1 + 408))(a1, v6);
          if (!result)
          {
            goto LABEL_129;
          }

          v36 = 4;
          break;
        default:
          goto LABEL_128;
      }
    }

    else
    {
      if (v35 > 0x1B)
      {
        goto LABEL_128;
      }

      if (((1 << v35) & 0xFC00000) == 0)
      {
        if (((1 << v35) & 0x200600) != 0)
        {
          v44 = a3 - ++v6;
          if ((a3 - v6) < 1)
          {
            return 0xFFFFFFFFLL;
          }

          result = 0xFFFFFFFFLL;
          while (1)
          {
            v35 = *(v8 + *v6);
            if (v35 - 9 >= 2 && v35 != 21)
            {
              break;
            }

            ++v6;
            if (--v44 <= 0)
            {
              return result;
            }
          }
        }

        if (v35 != 11)
        {
          goto LABEL_128;
        }

        ++v6;
        result = 5;
        goto LABEL_129;
      }

      v36 = 1;
    }

    v6 += v36;
    v34 = a3 - v6;
    result = 0xFFFFFFFFLL;
  }

  while ((a3 - v6) > 0);
  return result;
}

uint64_t normal_cdataSectionTok(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v6 = a2;
  result = 0;
  v9 = a1 + 136;
  v10 = a1[*a2 + 136];
  if (v10 > 6)
  {
    if (a1[*a2 + 136] > 8u)
    {
      if (v10 == 9)
      {
        if ((a3 - (a2 + 1)) < 1)
        {
          return 0xFFFFFFFFLL;
        }

        if (v9[a2[1]] == 10)
        {
          v6 = a2 + 2;
        }

        else
        {
          v6 = a2 + 1;
        }
      }

      else
      {
        if (v10 != 10)
        {
          goto LABEL_34;
        }

        v6 = a2 + 1;
      }

      result = 7;
      goto LABEL_62;
    }

    if (v10 != 7)
    {
      if (v10 == 8)
      {
        goto LABEL_62;
      }

      goto LABEL_34;
    }

    if ((a3 - a2) >= 4)
    {
      if (!(*(a1 + 57))(a1, a2))
      {
        v11 = v6 + 4;
        goto LABEL_35;
      }

      goto LABEL_61;
    }

    return 4294967294;
  }

  if (a1[*a2 + 136] > 4u)
  {
    if (v10 == 5)
    {
      if ((a3 - a2) >= 2)
      {
        if (!(*(a1 + 55))(a1, a2))
        {
          v11 = v6 + 2;
          goto LABEL_35;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_34;
      }

      if ((a3 - a2) >= 3)
      {
        if (!(*(a1 + 56))(a1, a2))
        {
          v11 = v6 + 3;
          goto LABEL_35;
        }

LABEL_61:
        result = 0;
        goto LABEL_62;
      }
    }

    return 4294967294;
  }

  if (v10 >= 2)
  {
    if (v10 == 4)
    {
      v11 = a2 + 1;
      if ((a3 - (a2 + 1)) >= 1)
      {
        if (*v11 != 93)
        {
          goto LABEL_35;
        }

        if ((a3 - (a2 + 2)) >= 1)
        {
          if (a2[2] == 62)
          {
            v6 = a2 + 3;
            result = 40;
            goto LABEL_62;
          }

LABEL_35:
          v12 = a3 - v11;
          if ((a3 - v11) >= 1)
          {
            do
            {
              v13 = v9[*v11];
              result = 6;
              if (v13 > 5)
              {
                if (v13 == 6)
                {
                  if (v12 < 3)
                  {
                    goto LABEL_58;
                  }

                  if ((*(a1 + 56))(a1, v11))
                  {
                    break;
                  }

                  v14 = 3;
                }

                else if (v13 == 7)
                {
                  if (v12 < 4)
                  {
                    goto LABEL_58;
                  }

                  if ((*(a1 + 57))(a1, v11))
                  {
                    break;
                  }

                  v14 = 4;
                }

                else
                {
                  v14 = 1;
                  if (v13 - 8 < 3)
                  {
                    goto LABEL_58;
                  }
                }
              }

              else if (v13 == 5)
              {
                if (v12 == 1)
                {
                  goto LABEL_58;
                }

                if ((*(a1 + 55))(a1, v11))
                {
                  break;
                }

                v14 = 2;
              }

              else
              {
                v15 = v13 < 2 || v13 == 4;
                v14 = 1;
                if (v15)
                {
                  goto LABEL_58;
                }
              }

              v11 += v14;
              v12 = a3 - v11;
            }

            while ((a3 - v11) > 0);
          }

          result = 6;
LABEL_58:
          v6 = v11;
          goto LABEL_62;
        }
      }

      return 0xFFFFFFFFLL;
    }

LABEL_34:
    v11 = a2 + 1;
    goto LABEL_35;
  }

LABEL_62:
  *a4 = v6;
  return result;
}

uint64_t normal_ignoreSectionTok(unsigned int (**a1)(void, void), unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  v9 = 0;
  v10 = (a1 + 17);
  while (1)
  {
    v11 = v10[*v7];
    if (v11 > 4)
    {
      break;
    }

    if (v11 == 2)
    {
      v12 = v7 + 1;
      if (a3 - (v7 + 1) < 1)
      {
        return 0xFFFFFFFFLL;
      }

      if (*v12 == 33)
      {
        v12 = v7 + 2;
        if (a3 - (v7 + 2) < 1)
        {
          return 0xFFFFFFFFLL;
        }

        if (*v12 == 91)
        {
          v12 = v7 + 3;
          ++v9;
        }
      }

      goto LABEL_35;
    }

    if (v11 != 4)
    {
      if (v11 < 2)
      {
        goto LABEL_38;
      }

LABEL_34:
      v12 = v7 + 1;
      goto LABEL_35;
    }

    v12 = v7 + 1;
    if (a3 - (v7 + 1) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    if (*v12 == 93)
    {
      v12 = v7 + 2;
      if (a3 - (v7 + 2) < 1)
      {
        return 0xFFFFFFFFLL;
      }

      if (*v12 == 62)
      {
        v12 = v7 + 3;
        if (!v9)
        {
          result = 42;
          v7 += 3;
          goto LABEL_39;
        }

        --v9;
      }
    }

LABEL_35:
    v4 = a3 - v12;
    v7 = v12;
    if (a3 - v12 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v10[*v7] > 6u)
  {
    if (v11 != 7)
    {
      if (v11 == 8)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    if (v4 < 4)
    {
      return 4294967294;
    }

    if ((a1)[57](a1, v7))
    {
LABEL_38:
      result = 0;
LABEL_39:
      *a4 = v7;
      return result;
    }

    v12 = v7 + 4;
    goto LABEL_35;
  }

  if (v11 != 5)
  {
    if (v11 != 6)
    {
      goto LABEL_34;
    }

    if (v4 < 3)
    {
      return 4294967294;
    }

    if ((a1)[56](a1, v7))
    {
      goto LABEL_38;
    }

    v12 = v7 + 3;
    goto LABEL_35;
  }

  if (v4 != 1)
  {
    if ((a1)[55](a1, v7))
    {
      goto LABEL_38;
    }

    v12 = v7 + 2;
    goto LABEL_35;
  }

  return 4294967294;
}