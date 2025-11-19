void std::__tree<std::__value_type<char const* const,char const* const>,std::__map_value_compare<char const* const,std::__value_type<char const* const,char const* const>,anonymous namespace::CmpByContent,true>,std::allocator<std::__value_type<char const* const,char const* const>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

uint64_t InitializeFactPatterns(uint64_t a1)
{
  InitializeFactReteFunctions(a1);
  v2 = *(a1 + 48);
  v3 = *(v2 + 472);
  v4 = *(*(v3 + 40) + 1536);
  if (v4)
  {
    *(v3 + 32) = v4;
    *(*(*(v2 + 472) + 40) + 1536) = **(*(v2 + 472) + 32);
    v5 = *(a1 + 48);
    v6 = *(*(v5 + 472) + 32);
  }

  else
  {
    v6 = genalloc(a1, 0xC0uLL);
    v5 = *(a1 + 48);
  }

  *v6 = "facts";
  v6[44] = 0;
  *(v6 + 1) = *(v5 + 24) + 216;
  *(v6 + 3) = FactPatternParserFind;
  *(v6 + 4) = FactPatternParse;
  *(v6 + 5) = 0;
  *(v6 + 6) = PlaceFactPattern;
  *(v6 + 7) = DetachFactPattern;
  *(v6 + 8) = 0;
  *(v6 + 9) = FactReplaceGetvar;
  *(v6 + 10) = FactGenGetvar;
  *(v6 + 11) = FactJNVariableComparison;
  *(v6 + 12) = FactGenPNConstant;
  *(v6 + 13) = FactReplaceGetfield;
  *(v6 + 14) = FactGenGetfield;
  *(v6 + 15) = FactPNVariableComparison;
  *(v6 + 16) = 0;
  *(v6 + 17) = 0;
  *(v6 + 18) = MarkFactPatternForIncrementalReset;
  *(v6 + 19) = FactsIncrementalReset;
  *(v6 + 20) = CreateInitialFactPattern;
  *(v6 + 21) = 0;

  return AddPatternParser(a1, v6);
}

uint64_t PlaceFactPattern(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v4 = *(a2 + 192);
  v5 = *(*(*(v4 + 200) + 8) + 24);
  v6 = RemoveUnneededSlots(a1, v4);
  *(a2 + 192) = v6;
  v7 = *(v6 + 24);
  if (v7)
  {
    *(a2 + 192) = v7;
    *(v6 + 24) = 0;
    ReturnLHSParseNodes(a1, v6);
    v8 = *(a2 + 192);
  }

  else
  {
    ReturnExpression(a1, *(v6 + 11));
    ReturnExpression(a1, *(*(a2 + 192) + 128));
    ReturnExpression(a1, *(*(a2 + 192) + 136));
    v8 = *(a2 + 192);
    v8[11] = 0;
    v8[16] = 0;
    v8[17] = 0;
  }

  do
  {
    v9 = v8;
    v8 = v8[24];
  }

  while (v8);
  if ((v9[2] & 0x10) != 0)
  {
    for (i = v9[25]; i; i = i[24])
    {
      v9 = i;
    }
  }

  v26 = 0;
  v9[19] = *(a2 + 152);
  *(a2 + 152) = 0;
  ImportedConstruct = FindImportedConstruct(a1, "deftemplate", 0, v5, &v26, 1, 0);
  v12 = *(a1 + 48);
  *(*(v12 + 24) + 368) = ImportedConstruct;
  v13 = *(a2 + 192);
  if (!v13)
  {
    return 0;
  }

  NewPatternNode = 0;
  v15 = 0;
  v16 = (*(*(v12 + 24) + 368) + 72);
  while (1)
  {
    if ((*(v13 + 16) & 0x10) != 0)
    {
      v17 = *(v13 + 200);
    }

    else
    {
      v17 = v13;
      v13 = v15;
    }

    if (*(v17 + 192))
    {
      v18 = 1;
    }

    else
    {
      v18 = v13 == 0;
    }

    v19 = !v18;
    PatternNode = FindPatternNode(*v16, v17, &v27, v19, 0);
    if (!PatternNode)
    {
      PatternNode = CreateNewPatternNode(a1, v17, v27, NewPatternNode, v19, 0);
    }

    if (*(v17 + 128))
    {
      NewPatternNode = FindPatternNode(*(PatternNode + 64), v17, &v27, v19, 1);
      if (!NewPatternNode)
      {
        NewPatternNode = CreateNewPatternNode(a1, v17, v27, PatternNode, v19, 1);
      }
    }

    else
    {
      NewPatternNode = PatternNode;
    }

    v21 = *(v17 + 192);
    v22 = v13 && v21 == 0;
    v23 = v22 ? v13 : v17;
    v24 = *(v23 + 192);
    if (!v24)
    {
      break;
    }

    if (v21)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    v16 = (NewPatternNode + 64);
    v13 = v24;
  }

  *(NewPatternNode + 32) |= 4u;
  return NewPatternNode;
}

uint64_t DetachFactPattern(uint64_t a1, uint64_t a2)
{
  result = EnvGetNextFact(a1, 0);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = *(v5 + 40);
      if (v6)
      {
        v7 = 0;
        do
        {
          if (v6[2] == a2)
          {
            if (v7)
            {
              v8 = v7;
            }

            else
            {
              v8 = (v5 + 40);
            }

            *v8 = *v6;
            v9 = *(a1 + 48);
            *(*(v9 + 472) + 32) = v6;
            **(*(v9 + 472) + 32) = *(*(*(v9 + 472) + 40) + 192);
            *(*(*(v9 + 472) + 40) + 192) = *(*(v9 + 472) + 32);
            v6 = v8;
          }

          else
          {
            v7 = v6;
          }

          v6 = *v6;
        }

        while (v6);
      }

      result = EnvGetNextFact(a1, v5);
      v5 = result;
    }

    while (result);
  }

  if (!*(a2 + 16))
  {
    *(a2 + 32) &= ~4u;
  }

  if (!*(a2 + 64))
  {
    while (1)
    {
      v14 = *(a2 + 80);
      if (v14)
      {
        break;
      }

      v10 = *(a2 + 88);
      v11 = *(a2 + 72);
      if (v10)
      {
        if (v11)
        {
          if (*(v11 + 32) < 0)
          {
            RemoveHashedPatternNode(a1, *(a2 + 72), a2, **(a2 + 56), *(*(a2 + 56) + 8));
            v10 = *(a2 + 88);
          }

          v14 = 0;
          *(v11 + 64) = v10;
        }

        else
        {
          FindAndSetDeftemplatePatternNetwork(a1, a2, v10);
          v14 = 0;
          v10 = *(a2 + 88);
        }

        goto LABEL_37;
      }

      if (v11)
      {
        v12 = *(v11 + 32);
        if (v12 < 0)
        {
          RemoveHashedPatternNode(a1, *(a2 + 72), a2, **(a2 + 56), *(*(a2 + 56) + 8));
          LOBYTE(v12) = *(v11 + 32);
        }

        *(v11 + 64) = 0;
        if ((v12 & 4) != 0)
        {
          v11 = 0;
        }
      }

      else
      {
        FindAndSetDeftemplatePatternNetwork(a1, a2, 0);
      }

      RemoveHashedExpression(a1, *(a2 + 56));
      result = RemoveHashedExpression(a1, *(a2 + 24));
      v13 = *(a1 + 48);
      *(*(v13 + 472) + 32) = a2;
      **(*(v13 + 472) + 32) = *(*(*(v13 + 472) + 40) + 768);
      *(*(*(v13 + 472) + 40) + 768) = *(*(v13 + 472) + 32);
      a2 = v11;
      if (!v11)
      {
        return result;
      }
    }

    v15 = *(a2 + 72);
    if (v15)
    {
      if (*(v15 + 32) < 0)
      {
        RemoveHashedPatternNode(a1, v15, a2, **(a2 + 56), *(*(a2 + 56) + 8));
        v14 = *(a2 + 80);
      }
    }

    v10 = *(a2 + 88);
    *(v14 + 88) = v10;
    if (v10)
    {
LABEL_37:
      *(v10 + 80) = v14;
    }

    RemoveHashedExpression(a1, *(a2 + 56));
    result = RemoveHashedExpression(a1, *(a2 + 24));
    v16 = *(a1 + 48);
    *(*(v16 + 472) + 32) = a2;
    **(*(v16 + 472) + 32) = *(*(*(v16 + 472) + 40) + 768);
    *(*(*(v16 + 472) + 40) + 768) = *(*(v16 + 472) + 32);
  }

  return result;
}

uint64_t DestroyFactPatternNetwork(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2;
      v2 = *(v2 + 88);
      DestroyFactPatternNetwork(v3, *(v4 + 64));
      result = DestroyAlphaMemory(v3, v4, 0);
      v5 = *(v4 + 72);
      if (v5)
      {
        if (*(v5 + 32) < 0)
        {
          result = RemoveHashedPatternNode(v3, v5, v4, **(v4 + 56), *(*(v4 + 56) + 8));
        }
      }

      v6 = *(v3 + 48);
      *(*(v6 + 472) + 32) = v4;
      **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 768);
      *(*(*(v6 + 472) + 40) + 768) = *(*(v6 + 472) + 32);
    }

    while (v2);
  }

  return result;
}

unsigned __int16 *RemoveUnneededSlots(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = 0;
    v5 = a2;
    while (1)
    {
      v6 = *v5;
      if (v6 <= 0x24)
      {
        break;
      }

      if (v6 != 38)
      {
        if (v6 != 37)
        {
          goto LABEL_29;
        }

LABEL_8:
        if (!*(v5 + 11))
        {
          goto LABEL_25;
        }

LABEL_9:
        if (v6 != 36)
        {
          goto LABEL_29;
        }
      }

      v7 = *(v5 + 4);
      if ((v7 & 0x10) == 0 && !*(v5 + 11) && !v5[10] && !v5[11])
      {
        goto LABEL_25;
      }

      if ((v6 | 2) == 0x26)
      {
        if ((v7 & 0x10) != 0)
        {
          if (v6 == 38)
          {
            v8 = *(v5 + 25);
            if (v8)
            {
              v9 = FactGenCheckLength(a1, v8);
              v10 = *(v5 + 25);
              if (*(v10 + 128))
              {
                v11 = CopyExpression(a1, v9);
                v10 = *(v5 + 25);
                *(*(v10 + 128) + 24) = v11;
              }

              *(*(v5 + 25) + 88) = CombineExpressions(a1, v9, *(v10 + 88));
              v12 = RemoveUnneededSlots(a1);
              *(v5 + 25) = v12;
              if (!v12)
              {
LABEL_25:
                v13 = *(v5 + 24);
                if (v4)
                {
                  *(v4 + 24) = v13;
                  *(v5 + 24) = 0;
                  ReturnLHSParseNodes(a1, v5);
                  v13 = *(v4 + 24);
                  v5 = v4;
                }

                else
                {
                  *(v5 + 24) = 0;
                  ReturnLHSParseNodes(a1, v5);
                  v5 = 0;
                  v2 = v13;
                }

                goto LABEL_30;
              }
            }

            else
            {
              *v5 = 37;
              *(v5 + 11) = FactGenCheckZeroLength(a1, v5[36]);
              *(v5 + 4) &= ~0x10u;
            }
          }
        }

        else if (*(v5 + 11) && !v5[10] && !v5[11])
        {
          *v5 = 37;
        }
      }

LABEL_29:
      v13 = *(v5 + 24);
LABEL_30:
      v4 = v5;
      v5 = v13;
      if (!v13)
      {
        return v2;
      }
    }

    if (v6 == 35)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  return v2;
}

uint64_t FindPatternNode(uint64_t a1, unsigned __int16 *a2, void *a3, int a4, int a5)
{
  v8 = a1;
  *a3 = 0;
  if (a5)
  {
    v9 = 68;
LABEL_3:
    v10 = *&a2[v9];
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
    v9 = 44;
    goto LABEL_3;
  }

LABEL_5:
  if (a1)
  {
    do
    {
      v11 = *a2;
      if (v11 > 0x24)
      {
        if (v11 == 38)
        {
          goto LABEL_15;
        }

        if (v11 != 37)
        {
          goto LABEL_22;
        }
      }

      else if (v11 != 35)
      {
        if (v11 != 36)
        {
          goto LABEL_22;
        }

LABEL_15:
        v13 = *(v8 + 32);
        if ((v13 & 2) == 0 || ((v13 >> 6) & 1) != a4 || *(v8 + 52) != a2[13])
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      v12 = *(v8 + 32);
      if ((v12 & 1) == 0 || ((v12 >> 6) & 1) != a4)
      {
        goto LABEL_22;
      }

LABEL_18:
      if (*(v8 + 48) == a2[29] && a2[36] - 1 == *(v8 + 50) && IdenticalExpression(*(v8 + 56), v10) && IdenticalExpression(*(v8 + 24), *(a2 + 19)))
      {
        return v8;
      }

LABEL_22:
      *a3 = v8;
      v8 = *(v8 + 88);
    }

    while (v8);
  }

  return v8;
}

void *CreateNewPatternNode(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v12 = *(a1 + 48);
  v13 = *(v12 + 472);
  v14 = *(*(v13 + 40) + 768);
  if (v14)
  {
    *(v13 + 32) = v14;
    *(*(*(v12 + 472) + 40) + 768) = **(*(v12 + 472) + 32);
    v15 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v15 = genalloc(a1, 0x60uLL);
  }

  v15[8] = 0;
  v15[10] = 0;
  v15[11] = 0;
  *(v15 + 26) = a2[13];
  InitializePatternHeader(a1, v15);
  v16 = a2[29] & ~(a2[29] >> 31);
  *(v15 + 24) = a2[29] & ~(a2[29] >> 15);
  v17 = a2[36];
  if (v17 >= 0)
  {
    LOWORD(v16) = v17 - 1;
  }

  *(v15 + 25) = v16;
  if (!a6 && *(a2 + 16))
  {
    *(v15 + 32) |= 0x80u;
  }

  v18 = *a2;
  if (v18 > 0x24)
  {
    if (v18 != 37)
    {
      if (v18 != 38)
      {
        goto LABEL_12;
      }

LABEL_15:
      v19 = *(v15 + 32) | 2;
      goto LABEL_17;
    }
  }

  else if (v18 != 35)
  {
    if (v18 != 36)
    {
LABEL_12:
      v19 = *(v15 + 32);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v19 = *(v15 + 32) | 1;
LABEL_17:
  *(v15 + 32) = v19 & 0xBF | ((a5 & 1) << 6);
  if (a6)
  {
    v20 = *(a2 + 17);
  }

  else
  {
    v20 = *(a2 + 16);
    if (!v20)
    {
      v20 = *(a2 + 11);
    }
  }

  v15[7] = AddHashedExpression(a1, v20);
  v15[3] = AddHashedExpression(a1, *(a2 + 19));
  v15[9] = a4;
  if (a4)
  {
    if (*(a4 + 32) < 0)
    {
      AddHashedPatternNode(a1, a4, v15, *v15[7], *(v15[7] + 8));
    }

    v21 = (a4 + 64);
    if (a3)
    {
      v22 = *v21;
      v15[11] = *v21;
      if (v22)
      {
        *(v22 + 80) = v15;
      }
    }
  }

  else
  {
    v23 = *(a1 + 48);
    v21 = (*(*(v23 + 24) + 368) + 72);
    if (a3)
    {
      v15[11] = *v21;
      v24 = *(*(v23 + 24) + 368);
      v25 = *(v24 + 72);
      if (v25)
      {
        *(v25 + 80) = v15;
        v24 = *(*(v23 + 24) + 368);
      }

      v21 = (v24 + 72);
    }
  }

  *v21 = v15;
  return v15;
}

uint64_t FindAndSetDeftemplatePatternNetwork(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SaveCurrentModule(a1);
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v7 = NextDefmodule;
    while (1)
    {
      EnvSetCurrentModule(a1, v7);
      NextDeftemplate = EnvGetNextDeftemplate(a1, 0);
      if (NextDeftemplate)
      {
        break;
      }

LABEL_7:
      v7 = EnvGetNextDefmodule(a1, v7);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v9 = NextDeftemplate;
    while (*(v9 + 72) != a2)
    {
      v9 = EnvGetNextDeftemplate(a1, v9);
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    result = RestoreCurrentModule(a1);
    *(v9 + 72) = a3;
  }

  else
  {
LABEL_8:

    return RestoreCurrentModule(a1);
  }

  return result;
}

uint64_t AWDSymptomsAdvisoryAlternateNetworkTypeReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (1)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v200) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v200 & 0x7F) << v6;
      if ((v200 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if ([a2 hasError])
    {
      break;
    }

    v14 = v13 & 7;
    if (v14 == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 220) |= 2u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v200 & 0x7F) << v15;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
LABEL_313:
            v175 = 112;
            goto LABEL_314;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

        goto LABEL_313;
      case 2u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 220) |= 8u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v200 & 0x7F) << v94;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_318;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v96;
        }

LABEL_318:
        v174 = 124;
        goto LABEL_359;
      case 3u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 220) |= 0x20u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v200 & 0x7F) << v70;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_297;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v72;
        }

LABEL_297:
        v174 = 132;
        goto LABEL_359;
      case 4u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 220) |= 1u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v200 & 0x7F) << v82;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_305;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v84;
        }

LABEL_305:
        v175 = 104;
LABEL_314:
        *(a1 + v175) = v21;
        goto LABEL_360;
      case 5u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 220) |= 0x100000u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v200 & 0x7F) << v36;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_285;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_285:
        *(a1 + 216) = v42;
        goto LABEL_360;
      case 6u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 220) |= 0x4000u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v200 & 0x7F) << v112;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_330;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v114;
        }

LABEL_330:
        v174 = 180;
        goto LABEL_359;
      case 7u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 220) |= 0x10000u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            v129 = [a2 data];
            [v129 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v200 & 0x7F) << v124;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v12 = v125++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_338;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v126;
        }

LABEL_338:
        v174 = 188;
        goto LABEL_359;
      case 8u:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 220) |= 0x8000u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v200 & 0x7F) << v88;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_309;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v90;
        }

LABEL_309:
        v174 = 184;
        goto LABEL_359;
      case 9u:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 220) |= 0x20000u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v200 & 0x7F) << v142;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_350;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v144;
        }

LABEL_350:
        v174 = 192;
        goto LABEL_359;
      case 0xAu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 220) |= 0x200u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v200 & 0x7F) << v49;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_293;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v51;
        }

LABEL_293:
        v174 = 148;
        goto LABEL_359;
      case 0xBu:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 220) |= 0x800u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v200 & 0x7F) << v136;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_346;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v138;
        }

LABEL_346:
        v174 = 156;
        goto LABEL_359;
      case 0xCu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 220) |= 0x400u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v200 & 0x7F) << v30;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_283;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v32;
        }

LABEL_283:
        v174 = 152;
        goto LABEL_359;
      case 0xDu:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 220) |= 0x1000u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v200 & 0x7F) << v43;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_289;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v45;
        }

LABEL_289:
        v174 = 160;
        goto LABEL_359;
      case 0xEu:
        v29 = PBReaderReadString();
        if (v29)
        {
          [a1 addIngressTriggerSignature:v29];
        }

        goto LABEL_188;
      case 0xFu:
        v29 = PBReaderReadString();
        if (v29)
        {
          [a1 addEgressTriggerSignature:v29];
        }

LABEL_188:

        goto LABEL_360;
      case 0x10u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 220) |= 0x80u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v200 & 0x7F) << v76;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_301;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v78;
        }

LABEL_301:
        v174 = 140;
        goto LABEL_359;
      case 0x11u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 220) |= 0x2000u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v200 & 0x7F) << v22;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_279;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_279:
        v174 = 176;
        goto LABEL_359;
      case 0x12u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 220) |= 0x100u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v200 & 0x7F) << v100;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v12 = v101++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_322;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v102;
        }

LABEL_322:
        v174 = 144;
        goto LABEL_359;
      case 0x13u:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 220) |= 0x80000u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v133 = [a2 position] + 1;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
          {
            v135 = [a2 data];
            [v135 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v132 |= (v200 & 0x7F) << v130;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v12 = v131++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_342;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v132;
        }

LABEL_342:
        v174 = 212;
        goto LABEL_359;
      case 0x14u:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        *(a1 + 220) |= 0x40u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v157 = [a2 position] + 1;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
          {
            v159 = [a2 data];
            [v159 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v156 |= (v200 & 0x7F) << v154;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v12 = v155++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_358;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v156;
        }

LABEL_358:
        v174 = 136;
        goto LABEL_359;
      case 0x15u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 220) |= 0x40000u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (v200 & 0x7F) << v106;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v12 = v107++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_326;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v108;
        }

LABEL_326:
        v174 = 208;
        goto LABEL_359;
      case 0x16u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 220) |= 0x10u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (v200 & 0x7F) << v118;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v12 = v119++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_334;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v120;
        }

LABEL_334:
        v174 = 128;
        goto LABEL_359;
      case 0x17u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 220) |= 4u;
        while (1)
        {
          LOBYTE(v200) = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v200 & 0x7F) << v148;
          if ((v200 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_354;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v150;
        }

LABEL_354:
        v174 = 120;
LABEL_359:
        *(a1 + v174) = v28;
        goto LABEL_360;
      case 0x18u:
        if (v14 != 2)
        {
          v188 = 0;
          v189 = 0;
          v190 = 0;
          while (1)
          {
            LOBYTE(v200) = 0;
            v191 = [a2 position] + 1;
            if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
            {
              v193 = [a2 data];
              [v193 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v190 |= (v200 & 0x7F) << v188;
            if ((v200 & 0x80) == 0)
            {
              goto LABEL_397;
            }

            v188 += 7;
            v12 = v189++ >= 9;
            if (v12)
            {
              goto LABEL_398;
            }
          }
        }

        v200 = 0;
        v201 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v160 = [a2 position];
          if (v160 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_273;
          }

          v161 = 0;
          v162 = 0;
          v163 = 0;
          while (1)
          {
            v202 = 0;
            v164 = [a2 position] + 1;
            if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
            {
              v166 = [a2 data];
              [v166 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v163 |= (v202 & 0x7F) << v161;
            if ((v202 & 0x80) == 0)
            {
              break;
            }

            v161 += 7;
            v12 = v162++ >= 9;
            if (v12)
            {
              goto LABEL_257;
            }
          }

          [a2 hasError];
LABEL_257:
          PBRepeatedInt32Add();
        }

      case 0x19u:
        if (v14 != 2)
        {
          v182 = 0;
          v183 = 0;
          v184 = 0;
          while (1)
          {
            LOBYTE(v200) = 0;
            v185 = [a2 position] + 1;
            if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
            {
              v187 = [a2 data];
              [v187 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v184 |= (v200 & 0x7F) << v182;
            if ((v200 & 0x80) == 0)
            {
              goto LABEL_397;
            }

            v182 += 7;
            v12 = v183++ >= 9;
            if (v12)
            {
              goto LABEL_398;
            }
          }
        }

        v200 = 0;
        v201 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v63 = [a2 position];
          if (v63 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_273;
          }

          v64 = 0;
          v65 = 0;
          v66 = 0;
          while (1)
          {
            v202 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v202 & 0x7F) << v64;
            if ((v202 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v12 = v65++ >= 9;
            if (v12)
            {
              goto LABEL_104;
            }
          }

          [a2 hasError];
LABEL_104:
          PBRepeatedInt32Add();
        }

      case 0x1Au:
        if (v14 != 2)
        {
          v176 = 0;
          v177 = 0;
          v178 = 0;
          while (1)
          {
            LOBYTE(v200) = 0;
            v179 = [a2 position] + 1;
            if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
            {
              v181 = [a2 data];
              [v181 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v178 |= (v200 & 0x7F) << v176;
            if ((v200 & 0x80) == 0)
            {
              goto LABEL_397;
            }

            v176 += 7;
            v12 = v177++ >= 9;
            if (v12)
            {
              goto LABEL_398;
            }
          }
        }

        v200 = 0;
        v201 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v56 = [a2 position];
          if (v56 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_273;
          }

          v57 = 0;
          v58 = 0;
          v59 = 0;
          while (1)
          {
            v202 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v202 & 0x7F) << v57;
            if ((v202 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v12 = v58++ >= 9;
            if (v12)
            {
              goto LABEL_89;
            }
          }

          [a2 hasError];
LABEL_89:
          PBRepeatedInt32Add();
        }

      case 0x1Bu:
        if (v14 == 2)
        {
          v200 = 0;
          v201 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v167 = [a2 position];
            if (v167 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v168 = 0;
            v169 = 0;
            v170 = 0;
            while (1)
            {
              v202 = 0;
              v171 = [a2 position] + 1;
              if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
              {
                v173 = [a2 data];
                [v173 getBytes:&v202 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v170 |= (v202 & 0x7F) << v168;
              if ((v202 & 0x80) == 0)
              {
                break;
              }

              v168 += 7;
              v12 = v169++ >= 9;
              if (v12)
              {
                goto LABEL_272;
              }
            }

            [a2 hasError];
LABEL_272:
            PBRepeatedInt32Add();
          }

LABEL_273:
          PBReaderRecallMark();
        }

        else
        {
          v194 = 0;
          v195 = 0;
          v196 = 0;
          while (1)
          {
            LOBYTE(v200) = 0;
            v197 = [a2 position] + 1;
            if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
            {
              v199 = [a2 data];
              [v199 getBytes:&v200 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v196 |= (v200 & 0x7F) << v194;
            if ((v200 & 0x80) == 0)
            {
              break;
            }

            v194 += 7;
            v12 = v195++ >= 9;
            if (v12)
            {
              goto LABEL_398;
            }
          }

LABEL_397:
          [a2 hasError];
LABEL_398:
          PBRepeatedInt32Add();
        }

LABEL_360:
        v4 = a2;
        break;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_360;
        }

        return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t IOFunctionDefinitions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x40u, 0x10uLL, 0);
  *(*(*(a1 + 48) + 512) + 8) = 0;
  v2 = setlocale(0, 0);
  v3 = EnvAddSymbol(a1, v2);
  v4 = *(a1 + 48);
  **(v4 + 512) = v3;
  ++*(**(v4 + 512) + 8);
  EnvDefineFunction2(a1, "printout", 118, PrintoutFunction, "PrintoutFunction", "1*");
  EnvDefineFunction2(a1, "read", 117, ReadFunction, "ReadFunction", "*1");
  EnvDefineFunction2(a1, "open", 98, OpenFunction, "OpenFunction", "23*k");
  EnvDefineFunction2(a1, "close", 98, CloseFunction, "CloseFunction", "*1");
  EnvDefineFunction2(a1, "get-char", 105, GetCharFunction, "GetCharFunction", "*1");
  EnvDefineFunction2(a1, "put-char", 118, PutCharFunction, "PutCharFunction", "12");
  EnvDefineFunction2(a1, "remove", 98, RemoveFunction, "RemoveFunction", "11k");
  EnvDefineFunction2(a1, "rename", 98, RenameFunction, "RenameFunction", "22k");
  EnvDefineFunction2(a1, "format", 115, FormatFunction, "FormatFunction", "2**us");
  EnvDefineFunction2(a1, "readline", 107, ReadlineFunction, "ReadlineFunction", "*1");
  EnvDefineFunction2(a1, "set-locale", 117, SetLocaleFunction, "SetLocaleFunction", "*1");

  return EnvDefineFunction2(a1, "read-number", 117, ReadNumberFunction, "ReadNumberFunction", "*1");
}

void PrintoutFunction(uint64_t a1)
{
  v2 = EnvArgCountCheck(a1, "printout", 1u, 1);
  if (v2 != -1)
  {
    v3 = v2;
    LogicalName = GetLogicalName(a1, 1, "stdout");
    if (LogicalName)
    {
      v5 = LogicalName;
      if (!strcmp(LogicalName, "nil"))
      {
        return;
      }

      if (QueryRouters(a1, v5))
      {
        if (v3 < 2)
        {
          return;
        }

        v6 = v3 - 1;
        v7 = 2;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        while (1)
        {
          EnvRtnUnknown(a1, v7, &v19);
          v14 = *(a1 + 48);
          if (*(*(v14 + 352) + 12))
          {
            return;
          }

          if (WORD4(v19) == 3)
          {
            v18 = *(v20 + 24);
            v16 = a1;
            v17 = v5;
          }

          else
          {
            if (WORD4(v19) != 2)
            {
              PrintDataObject(a1, v5, &v19, v13, v8, v9, v10, v11, v12);
              goto LABEL_27;
            }

            v15 = *(v20 + 24);
            if (!strcmp(v15, "crlf"))
            {
              v16 = a1;
              v17 = v5;
              if (*(*(v14 + 512) + 8))
              {
                v18 = "\r\n";
              }

              else
              {
                v18 = "\n";
              }
            }

            else if (!strcmp(v15, "tab"))
            {
              v16 = a1;
              v17 = v5;
              v18 = "\t";
            }

            else if (!strcmp(v15, "vtab"))
            {
              v16 = a1;
              v17 = v5;
              v18 = "\v";
            }

            else if (*v15 == 102 && v15[1] == 102 && !v15[2])
            {
              v16 = a1;
              v17 = v5;
              v18 = "\f";
            }

            else
            {
              v16 = a1;
              v17 = v5;
              v18 = v15;
            }
          }

          EnvPrintRouter(v16, v17, v18);
LABEL_27:
          ++v7;
          if (!--v6)
          {
            return;
          }
        }
      }

      UnrecognizedRouterMessage(a1, v5);
    }

    else
    {
      IllegalLogicalNameMessage(a1, "printout");
      SetHaltExecution(a1, 1);

      SetEvaluationError(a1, 1);
    }
  }
}

uint64_t *ReadFunction(uint64_t a1, uint64_t a2)
{
  v4 = EnvArgCountCheck(a1, "read", 2u, 1);
  if (v4 == 1)
  {
    LogicalName = GetLogicalName(a1, 1, "stdin");
    if (!LogicalName)
    {
      IllegalLogicalNameMessage(a1, "read");
      goto LABEL_34;
    }
  }

  else if (v4)
  {
    if (v4 == -1)
    {
      goto LABEL_35;
    }

    LogicalName = 0;
  }

  else
  {
    LogicalName = "stdin";
  }

  if (!QueryRouters(a1, LogicalName))
  {
    UnrecognizedRouterMessage(a1, LogicalName);
LABEL_34:
    SetHaltExecution(a1, 1);
    SetEvaluationError(a1, 1);
    goto LABEL_35;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (!strcmp(LogicalName, "stdin"))
  {
    LOWORD(v14) = 172;
    do
    {
      v7 = *(*(a1 + 48) + 368);
      *v7 = 0;
      *(v7 + 8) = 1;
      v17 = 0;
      v8 = EnvGetcRouter(a1, "stdin");
      v9 = 0;
      while (1)
      {
        v10 = (v8 + 1) > 0xE || ((1 << (v8 + 1)) & 0x4801) == 0;
        if (!v10 || GetHaltExecution(a1))
        {
          break;
        }

        v9 = ExpandStringWithChar(a1, v8, v9, *(*(a1 + 48) + 368), &v17, v17 + 80);
        v8 = EnvGetcRouter(a1, "stdin");
      }

      OpenStringSource(a1, "read", v9, 0);
      GetToken(a1, "read", &v14);
      CloseStringSource(a1, "read");
      if (v17)
      {
        rm(a1, v9, v17);
      }

      if (GetHaltExecution(a1))
      {
        LOWORD(v14) = 3;
        v15 = EnvAddSymbol(a1, "*** READ ERROR ***");
      }

      v6 = v14;
      if (v8 == -1 && v14 == 172)
      {
        LOWORD(v14) = 2;
        v15 = EnvAddSymbol(a1, "EOF");
        v6 = v14;
      }
    }

    while (v6 == 172);
  }

  else
  {
    GetToken(a1, LogicalName, &v14);
    v6 = v14;
  }

  v11 = *(*(a1 + 48) + 368);
  *v11 = 0;
  *(v11 + 8) = 0;
  *(a2 + 8) = v6;
  if (v6 >= 4)
  {
    if (v6 == 172)
    {
      *(a2 + 8) = 2;
      v13 = "EOF";
      goto LABEL_36;
    }

    if (v6 != 173)
    {
      *(a2 + 8) = 3;
      v13 = v16;
LABEL_36:
      result = EnvAddSymbol(a1, v13);
      goto LABEL_37;
    }

LABEL_35:
    *(a2 + 8) = 3;
    v13 = "*** READ ERROR ***";
    goto LABEL_36;
  }

  result = v15;
LABEL_37:
  *(a2 + 16) = result;
  return result;
}

FILE *OpenFunction(uint64_t a1)
{
  v2 = EnvArgRangeCheck(a1, "open", 2, 3);
  if (v2 != -1)
  {
    v3 = v2;
    result = GetFileName(a1, "open", 1);
    if (!result)
    {
      return result;
    }

    v5 = result;
    LogicalName = GetLogicalName(a1, 2, 0);
    if (LogicalName)
    {
      v7 = LogicalName;
      if (FindFile(a1, LogicalName))
      {
        SetHaltExecution(a1, 1);
        SetEvaluationError(a1, 1);
        PrintErrorID(a1, "IOFUN", 2, 0);
        EnvPrintRouter(a1, "werror", "Logical name ");
        EnvPrintRouter(a1, "werror", v7);
        EnvPrintRouter(a1, "werror", " already in use.\n");
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
        if (v3 == 2)
        {
          v8 = "r";
        }

        else
        {
          result = EnvArgTypeCheck(a1, "open", 3, 3, &v10);
          if (!result)
          {
            return result;
          }

          v8 = *(v11 + 24);
        }

        v9 = *v8;
        if ((v9 == 97 || v9 == 119 || v9 == 114) && (!v8[1] || v8[1] == 98 && !v8[2]))
        {
          return OpenAFile(a1, v5, v8, v7);
        }

        SetHaltExecution(a1, 1);
        SetEvaluationError(a1, 1);
        ExpectedTypeError1(a1, "open", 3, "string with value r, w, a, rb, wb, or ab");
      }
    }

    else
    {
      SetHaltExecution(a1, 1);
      SetEvaluationError(a1, 1);
      IllegalLogicalNameMessage(a1, "open");
    }
  }

  return 0;
}

uint64_t CloseFunction(uint64_t a1)
{
  v2 = EnvArgCountCheck(a1, "close", 2u, 1);
  if (v2 == -1)
  {
    return 0;
  }

  if (!v2)
  {

    return CloseAllFiles(a1);
  }

  LogicalName = GetLogicalName(a1, 1, 0);
  if (!LogicalName)
  {
    IllegalLogicalNameMessage(a1, "close");
    SetHaltExecution(a1, 1);
    SetEvaluationError(a1, 1);
    return 0;
  }

  return CloseFile(a1, LogicalName);
}

uint64_t GetCharFunction(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "get-char", 2u, 1);
  if (result == -1)
  {
    return result;
  }

  if (result)
  {
    LogicalName = GetLogicalName(a1, 1, "stdin");
    if (!LogicalName)
    {
      IllegalLogicalNameMessage(a1, "get-char");
      goto LABEL_11;
    }
  }

  else
  {
    LogicalName = "stdin";
  }

  if (!QueryRouters(a1, LogicalName))
  {
    UnrecognizedRouterMessage(a1, LogicalName);
LABEL_11:
    SetHaltExecution(a1, 1);
    SetEvaluationError(a1, 1);
    return 0xFFFFFFFFLL;
  }

  return EnvGetcRouter(a1, LogicalName);
}

FILE *PutCharFunction(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  result = EnvArgRangeCheck(a1, "put-char", 1, 2);
  if (result == -1)
  {
    return result;
  }

  if (result == 1)
  {
    v3 = "stdout";
    if (QueryRouters(a1, "stdout"))
    {
      v4 = a1;
      v5 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    LogicalName = GetLogicalName(a1, 1, "stdout");
    if (!LogicalName)
    {
      IllegalLogicalNameMessage(a1, "put-char");
      goto LABEL_14;
    }

    v3 = LogicalName;
    if (QueryRouters(a1, LogicalName))
    {
      v4 = a1;
      v5 = 2;
LABEL_8:
      result = EnvArgTypeCheck(v4, "put-char", v5, 1, &v8);
      if (result)
      {
        v7 = *(v9 + 24);
        result = FindFptr(a1, v3);
        if (result)
        {
          return putc(v7, result);
        }
      }

      return result;
    }
  }

  UnrecognizedRouterMessage(a1, v3);
LABEL_14:
  SetHaltExecution(a1, 1);

  return SetEvaluationError(a1, 1);
}

BOOL RemoveFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "remove", 0, 1) == -1)
  {
    return 0;
  }

  FileName = GetFileName(a1, "remove", 1);
  if (!FileName)
  {
    return 0;
  }

  return genremove(FileName, v3);
}

BOOL RenameFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "rename", 0, 2) == -1)
  {
    return 0;
  }

  FileName = GetFileName(a1, "rename", 1);
  if (!FileName)
  {
    return 0;
  }

  v3 = FileName;
  v4 = GetFileName(a1, "rename", 2);
  if (!v4)
  {
    return 0;
  }

  return genrename(v3, v4, v5);
}

uint64_t *FormatFunction(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v2 = EnvAddSymbol(a1, "");
  v3 = EnvArgCountCheck(a1, "format", 1u, 2);
  if (v3 == -1)
  {
    goto LABEL_58;
  }

  v4 = v3;
  LogicalName = GetLogicalName(a1, 1, "stdout");
  if (!LogicalName)
  {
    IllegalLogicalNameMessage(a1, "format");
    SetHaltExecution(a1, 1);
    goto LABEL_57;
  }

  v6 = LogicalName;
  if (strcmp(LogicalName, "nil") && !QueryRouters(a1, v6))
  {
    UnrecognizedRouterMessage(a1, v6);
    goto LABEL_58;
  }

  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  if (EnvArgTypeCheck(a1, "format", 2, 3, &v58))
  {
    v12 = 0;
    v13 = 0;
    v14 = *(v59 + 24);
    while (*(v14 + v12) == 37)
    {
      v57 = v12 + 1;
      FormatFlag = FindFormatFlag(v14, &v57, __s, v7, v8, v9, v10, v11);
      if (FormatFlag != 32)
      {
        if (FormatFlag == 45)
        {
          PrintErrorID(a1, "IOFUN", 3, 0);
          EnvPrintRouter(a1, "werror", "Invalid format flag ");
          EnvPrintRouter(a1, "werror", __s);
          EnvPrintRouter(a1, "werror", " specified in format function.\n");
          goto LABEL_57;
        }

        ++v13;
      }

LABEL_13:
      v12 = v57;
    }

    if (*(v14 + v12))
    {
      v57 = v12 + 1;
      goto LABEL_13;
    }

    if (v13 == v4 - 2)
    {
      v16 = 0;
      appended = 0;
      v18 = 3;
      while (1)
      {
        v19 = *(v14 + v16);
        if (v19 != 37)
        {
          if (!*(v14 + v16))
          {
            if (!appended)
            {
              v2 = EnvAddSymbol(a1, "");
              goto LABEL_58;
            }

            v2 = EnvAddSymbol(a1, appended);
            if (strcmp(v6, "nil"))
            {
              EnvPrintRouter(a1, v6, appended);
            }

            goto LABEL_66;
          }

          v20 = 0;
          while (v19 && v19 != 37)
          {
            LOBYTE(v19) = *(v14 + 1 + v16 + v20++);
          }

          v56 = v16 + v20;
          appended = AppendNToString(a1, (v14 + v16), appended, v20, &v54, &v55);
          goto LABEL_53;
        }

        v56 = v16 + 1;
        v21 = FindFormatFlag(v14, &v56, __s, v7, v8, v9, v10, v11);
        if (v21 == 32)
        {
          appended = AppendToString(a1, __s, appended, &v54, &v55);
          if (!appended)
          {
            goto LABEL_58;
          }

          goto LABEL_53;
        }

        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        if (v21 - 100 > 0x14)
        {
          goto LABEL_44;
        }

        if (((1 << (v21 - 100)) & 0x120801) != 0)
        {
          if (!EnvArgTypeCheck(a1, "format", v18, 180, &v58))
          {
            goto LABEL_65;
          }

          v22 = strlen(__s) + 200;
          v23 = gm2(a1, v22);
          v33 = setlocale(4, 0);
          v25 = EnvAddSymbol(a1, v33);
          setlocale(4, *(**(*(a1 + 48) + 512) + 24));
          if (WORD4(v58))
          {
            v40 = *(v59 + 24);
          }

          else
          {
            v40 = *(v59 + 24);
          }

          gensprintf(v23, __s, v34, v35, v36, v37, v38, v39, v40);
        }

        else
        {
          if (((1 << (v21 - 100)) & 0xE) == 0)
          {
            if (v21 == 115)
            {
              if (!EnvArgTypeCheck(a1, "format", v18, 181, &v58))
              {
                goto LABEL_65;
              }

              v41 = strlen(__s);
              v22 = v41 + strlen(*(v59 + 24)) + 200;
              v42 = gm2(a1, v22);
              v23 = v42;
              v49 = *(v59 + 24);
            }

            else
            {
LABEL_44:
              if (v21 != 99)
              {
                EnvPrintRouter(a1, "werror", " Error in format, the conversion character");
                EnvPrintRouter(a1, "werror", " for formatted output is not valid\n");
                goto LABEL_65;
              }

              EnvRtnUnknown(a1, v18, &v58);
              if ((WORD4(v58) & 0xFFFE) == 2)
              {
                v22 = strlen(__s) + 200;
                v42 = gm2(a1, v22);
                v23 = v42;
                LOBYTE(v49) = **(v59 + 24);
              }

              else
              {
                if (WORD4(v58) != 1)
                {
                  ExpectedTypeError1(a1, "format", v18, "symbol, string, or integer");
LABEL_65:
                  if (!appended)
                  {
                    goto LABEL_58;
                  }

LABEL_66:
                  rm(a1, appended, v55);
                  goto LABEL_58;
                }

                v22 = strlen(__s) + 200;
                v42 = gm2(a1, v22);
                v23 = v42;
                LOBYTE(v49) = *(v59 + 24);
              }
            }

            gensprintf(v42, __s, v43, v44, v45, v46, v47, v48, v49);
            goto LABEL_50;
          }

          if (!EnvArgTypeCheck(a1, "format", v18, 180, &v58))
          {
            goto LABEL_65;
          }

          v22 = strlen(__s) + 200;
          v23 = gm2(a1, v22);
          v24 = setlocale(4, 0);
          v25 = EnvAddSymbol(a1, v24);
          setlocale(4, *(**(*(a1 + 48) + 512) + 24));
          if (WORD4(v58))
          {
            v32 = *(v59 + 24);
          }

          else
          {
            v32 = *(v59 + 24);
          }

          gensprintf(v23, __s, v26, v27, v28, v29, v30, v31, SLOBYTE(v32));
        }

        setlocale(4, v25[3]);
LABEL_50:
        v50 = EnvAddSymbol(a1, v23)[3];
        rm(a1, v23, v22);
        if (!v50)
        {
          goto LABEL_65;
        }

        v51 = AppendToString(a1, v50, appended, &v54, &v55);
        if (!v51)
        {
          goto LABEL_58;
        }

        appended = v51;
        ++v18;
LABEL_53:
        v16 = v56;
      }
    }

    ExpectedCountError(a1, "format", 0, v13 + 2);
LABEL_57:
    SetEvaluationError(a1, 1);
  }

LABEL_58:
  v52 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t *ReadlineFunction(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  *(a2 + 8) = 3;
  v4 = EnvArgCountCheck(a1, "readline", 2u, 1);
  if (v4)
  {
    if (v4 == -1)
    {
LABEL_19:
      result = EnvAddSymbol(a1, "*** READ ERROR ***");
      *(a2 + 16) = result;
      return result;
    }

    LogicalName = GetLogicalName(a1, 1, "stdin");
    if (!LogicalName)
    {
      IllegalLogicalNameMessage(a1, "readline");
LABEL_18:
      SetHaltExecution(a1, 1);
      SetEvaluationError(a1, 1);
      goto LABEL_19;
    }
  }

  else
  {
    LogicalName = "stdin";
  }

  if (!QueryRouters(a1, LogicalName))
  {
    UnrecognizedRouterMessage(a1, LogicalName);
    goto LABEL_18;
  }

  v6 = *(*(a1 + 48) + 368);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = EnvGetcRouter(a1, LogicalName);
  if (v7 == -1)
  {
    v11 = 0;
  }

  else
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = (v8 + 1) > 0xE || ((1 << (v8 + 1)) & 0x4801) == 0;
      if (!v10 || GetHaltExecution(a1))
      {
        break;
      }

      v9 = ExpandStringWithChar(a1, v8, v9, v6, &v14, v14 + 80);
      v8 = EnvGetcRouter(a1, LogicalName);
    }

    v11 = ExpandStringWithChar(a1, 0, v9, v6, &v14, v14 + 80);
  }

  v13 = *(*(a1 + 48) + 368);
  *v13 = 0;
  *(v13 + 8) = 0;
  if (!GetHaltExecution(a1))
  {
    if (!v11)
    {
      result = EnvAddSymbol(a1, "EOF");
      *(a2 + 16) = result;
      *(a2 + 8) = 2;
      return result;
    }

    *(a2 + 16) = EnvAddSymbol(a1, v11);
    return rm(a1, v11, v14);
  }

  result = EnvAddSymbol(a1, "*** READ ERROR ***");
  *(a2 + 16) = result;
  if (v11)
  {
    return rm(a1, v11, v14);
  }

  return result;
}

uint64_t SetLocaleFunction(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  result = EnvArgCountCheck(a1, "set-locale", 2u, 1);
  if (result)
  {
    if (result == -1 || !EnvArgTypeCheck(a1, "set-locale", 1, 3, &v7))
    {
      *(a2 + 8) = 2;
      result = EnvFalseSymbol(a1);
      *(a2 + 16) = result;
    }

    else
    {
      *(a2 + 8) = 3;
      v5 = *(a1 + 48);
      *(a2 + 16) = **(v5 + 512);
      result = DecrementSymbolCount(a1, **(v5 + 512));
      v6 = *(a1 + 48);
      **(v6 + 512) = v8;
      ++*(**(v6 + 512) + 8);
    }
  }

  else
  {
    *(a2 + 8) = 3;
    *(a2 + 16) = **(*(a1 + 48) + 512);
  }

  return result;
}

uint64_t *ReadNumberFunction(uint64_t a1, uint64_t a2)
{
  v4 = EnvArgCountCheck(a1, "read", 2u, 1);
  if (v4 == 1)
  {
    LogicalName = GetLogicalName(a1, 1, "stdin");
    if (!LogicalName)
    {
      IllegalLogicalNameMessage(a1, "read");
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    if (v4 == -1)
    {
      goto LABEL_16;
    }

    LogicalName = 0;
  }

  else
  {
    LogicalName = "stdin";
  }

  if (!QueryRouters(a1, LogicalName))
  {
    UnrecognizedRouterMessage(a1, LogicalName);
LABEL_15:
    SetHaltExecution(a1, 1);
    SetEvaluationError(a1, 1);
    goto LABEL_16;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = strcmp(LogicalName, "stdin") == 0;
  ReadNumber(a1, LogicalName, &v11, v6);
  v7 = *(*(a1 + 48) + 368);
  *v7 = 0;
  *(v7 + 8) = 0;
  v8 = v11;
  *(a2 + 8) = v11;
  if (v8 >= 4)
  {
    if (v8 == 172)
    {
      *(a2 + 8) = 2;
      v10 = "EOF";
      goto LABEL_17;
    }

    if (v8 != 173)
    {
      *(a2 + 8) = 3;
      v10 = v13;
LABEL_17:
      result = EnvAddSymbol(a1, v10);
      goto LABEL_18;
    }

LABEL_16:
    *(a2 + 8) = 3;
    v10 = "*** READ ERROR ***";
    goto LABEL_17;
  }

  result = v12;
LABEL_18:
  *(a2 + 16) = result;
  return result;
}

uint64_t SetFullCRLF(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 512);
  result = *(v2 + 8);
  *(v2 + 8) = a2;
  return result;
}

uint64_t FindFormatFlag(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + *a2);
  if (v9 <= 0x71)
  {
    if (v9 == 37)
    {
      v10 = "%%";
      goto LABEL_12;
    }

    if (v9 == 110)
    {
      v10 = "\n";
      goto LABEL_12;
    }

LABEL_14:
    *a3 = 37;
    v13 = a3 + 2;
    for (i = 74; ; --i)
    {
      *(v13 - 1) = 0;
      v15 = *(a1 + *a2);
      v11 = 32;
      if (!*(a1 + *a2))
      {
        return v11;
      }

      v16 = *(a1 + *a2);
      if (v16 == 37 || !i)
      {
        return v11;
      }

      ++*a2;
      if ((v16 - 99) <= 0x15)
      {
        v17 = 1 << (v15 - 99);
        if ((v17 & 0x1001D) != 0)
        {
          *(v13 - 1) = v16;
          return v15;
        }

        if ((v17 & 0x241002) != 0)
        {
          *(v13 - 1) = 27756;
          *(v13 + 1) = v16;
          return v15;
        }
      }

      if ((v15 - 47) <= 0xFDu && (v15 - 58) <= 0xFFFFFFF5)
      {
        *(v13 - 1) = v16;
        return 45;
      }

      *(v13++ - 1) = v15;
    }
  }

  if (v9 == 114)
  {
    v10 = "\r";
    goto LABEL_12;
  }

  if (v9 == 116)
  {
    v10 = "\t";
    goto LABEL_12;
  }

  if (v9 != 118)
  {
    goto LABEL_14;
  }

  v10 = "\v";
LABEL_12:
  gensprintf(a3, v10, a3, a4, a5, a6, a7, a8, v19);
  ++*a2;
  return 32;
}

uint64_t *ReadNumber(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  __endptr = 0;
  *a3 = 172;
  v8 = *(*(a1 + 48) + 368);
  *v8 = 0;
  *(v8 + 8) = 1;
  v27 = 0;
  v9 = MEMORY[0x277D85DE0];
  do
  {
    v10 = EnvGetcRouter(a1, a2);
    v11 = v10;
    if (v10 > 0x7F)
    {
      v12 = __maskrune(v10, 0x4000uLL);
    }

    else
    {
      v12 = *(v9 + 4 * v10 + 60) & 0x4000;
    }
  }

  while (v11 != -1 && v12 && !GetHaltExecution(a1));
  v13 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v11 + 1 > 0xE || ((1 << (v11 + 1)) & 0x4801) == 0)
  {
    while (!GetHaltExecution(a1))
    {
      v13 = ExpandStringWithChar(a1, v11, v13, *(*(a1 + 48) + 368), &v27, v27 + 80);
      v11 = EnvGetcRouter(a1, a2);
      if (a4)
      {
        goto LABEL_9;
      }

LABEL_12:
      if (v11 > 0x7F)
      {
        if (__maskrune(v11, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v9 + 4 * v11 + 60) & 0x4000) != 0)
      {
        break;
      }

      if (v11 == -1)
      {
        if (GetHaltExecution(a1))
        {
          goto LABEL_21;
        }

        goto LABEL_28;
      }
    }
  }

  if (GetHaltExecution(a1))
  {
LABEL_21:
    *a3 = 3;
    v14 = "*** READ ERROR ***";
    goto LABEL_29;
  }

  if (v11 == -1)
  {
LABEL_28:
    *a3 = 2;
    v14 = "EOF";
LABEL_29:
    result = EnvAddSymbol(a1, v14);
    *(a3 + 8) = result;
    if (v27)
    {
      return rm(a1, v13, v27);
    }

    return result;
  }

  v15 = setlocale(4, 0);
  v16 = EnvAddSymbol(a1, v15);
  setlocale(4, *(**(*(a1 + 48) + 512) + 24));
  v17 = strtoll(v13, &__endptr, 10);
  if (__endptr == v13)
  {
LABEL_34:
    v22 = strtod(v13, &__endptr);
    if (__endptr == v13)
    {
LABEL_41:
      setlocale(4, v16[3]);
      *a3 = 3;
      result = EnvAddSymbol(a1, "*** READ ERROR ***");
      *(a3 + 8) = result;
      return result;
    }

    v23 = v22;
    v24 = *__endptr;
    if ((v24 & 0x80000000) != 0)
    {
      v25 = __maskrune(*__endptr, 0x4000uLL);
      if (!v24)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v25 = *(v9 + 4 * v24 + 60) & 0x4000;
      if (!*__endptr)
      {
        goto LABEL_42;
      }
    }

    if (!v25)
    {
      goto LABEL_41;
    }

LABEL_42:
    *a3 = 0;
    v26 = EnvAddDouble(a1, v23);
    goto LABEL_43;
  }

  v18 = v17;
  v19 = *__endptr;
  if ((v19 & 0x80000000) != 0)
  {
    v20 = __maskrune(*__endptr, 0x4000uLL);
    if (!v19)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v20 = *(v9 + 4 * v19 + 60) & 0x4000;
    if (!*__endptr)
    {
      goto LABEL_38;
    }
  }

  if (!v20)
  {
    goto LABEL_34;
  }

LABEL_38:
  *a3 = 1;
  v26 = EnvAddLong(a1, v18);
LABEL_43:
  *(a3 + 8) = v26;
  if (v27)
  {
    rm(a1, v13, v27);
  }

  return setlocale(4, v16[3]);
}

uint64_t _unloadCrashReporterSupport()
{
  result = gCrashReporterSupportDyLibHandle;
  if (gCrashReporterSupportDyLibHandle)
  {
    result = dlclose(gCrashReporterSupportDyLibHandle);
    gCrashReporterSupportDyLibHandle = 0;
  }

  return result;
}

uint64_t _loadCrashReporterSupport()
{
  if (_loadCrashReporterSupport_symbolLoadOnce != -1)
  {
    _loadCrashReporterSupport_cold_1();
  }

  return _loadCrashReporterSupport_symbolsLoaded;
}

void ___loadCrashReporterSupport_block_invoke()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 6);
  gCrashReporterSupportDyLibHandle = v0;
  if (v0)
  {
    v1 = dlsym(v0, "OSAWriteLogForSubmission");
    if (v1)
    {
      gOSAWriteLogForSubmissionFunc = v1;
      v2 = dlsym(gCrashReporterSupportDyLibHandle, "OSAInMultiUserMode");
      if (v2)
      {
        gOSAInMultiUserModeFunc = v2;
        _loadCrashReporterSupport_symbolsLoaded = 1;
        v3 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v10 = 0;
        v4 = "Successfully loaded CrashReporterSupport";
        v5 = &v10;
        v6 = v3;
        v7 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_13;
      }

      v8 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 0;
      v4 = "Failed to load OSAInMultiUserMode() in CrashReporterSupport framework.";
      v5 = buf;
    }

    else
    {
      v8 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v12 = 0;
      v4 = "Failed to load OSAWriteLogForSubmission() in CrashReporterSupport framework.";
      v5 = &v12;
    }
  }

  else
  {
    v8 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v9 = 0;
    v4 = "Failed to load CrashReporterSupport framework.";
    v5 = &v9;
  }

  v6 = v8;
  v7 = OS_LOG_TYPE_ERROR;
LABEL_13:
  _os_log_impl(&dword_23255B000, v6, v7, v4, v5, 2u);
}

void *AddAfterModuleDefinedFunction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = AddFunctionToCallList(a1, a2, a4, a3, *(*(*(a1 + 48) + 32) + 104), 1);
  *(*(*(a1 + 48) + 32) + 104) = result;
  return result;
}

_DWORD *AddPortConstructItem(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 48);
  v7 = *(v6 + 472);
  v8 = *(*(v7 + 40) + 192);
  if (v8)
  {
    *(v7 + 32) = v8;
    *(*(*(v6 + 472) + 40) + 192) = **(*(v6 + 472) + 32);
    v9 = *(a1 + 48);
    result = *(*(v9 + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x18uLL);
    v9 = *(a1 + 48);
  }

  *result = a2;
  result[2] = a3;
  *(result + 2) = *(*(v9 + 32) + 88);
  *(*(v9 + 32) + 88) = result;
  return result;
}

uint64_t ParseDefmodule(uint64_t a1, char *a2)
{
  SetPPBufferStatus(a1, 1);
  FlushPPBuffer(a1);
  SetIndentDepth(a1, 3);
  SavePPBuffer(a1, "(defmodule ");
  if (Bloaded(a1) == 1 && !*(*(*(a1 + 48) + 336) + 40))
  {
    CannotLoadWithBloadMessage(a1, "defmodule");
    return 1;
  }

  v84 = 0;
  v85 = 0;
  v86 = 0;
  v4 = 1;
  ConstructNameAndComment = GetConstructNameAndComment(a1, a2, &v84, "defmodule", EnvFindDefmodule, DeleteDefmodule, "+", 1, 1, 0, 0);
  if (ConstructNameAndComment)
  {
    v6 = ConstructNameAndComment;
    v7 = ConstructNameAndComment[3];
    if (!strcmp(v7, "MAIN"))
    {
      Defmodule = EnvFindDefmodule(a1, "MAIN");
      if (Defmodule)
      {
        v9 = Defmodule;
        v11 = 0;
        v10 = 1;
        goto LABEL_9;
      }

      v7 = v6[3];
    }

    v8 = EnvFindDefmodule(a1, v7);
    if (!v8)
    {
      v13 = *(a1 + 48);
      v14 = *(v13 + 472);
      v15 = *(*(v14 + 40) + 576);
      if (v15)
      {
        *(v14 + 32) = v15;
        *(*(*(v13 + 472) + 40) + 576) = **(*(v13 + 472) + 32);
        v9 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v9 = genalloc(a1, 0x48uLL);
      }

      v83 = 0;
      v10 = 0;
      *v9 = v6;
      v82 = 0u;
      *(v9 + 56) = 0u;
      v81 = 1;
      goto LABEL_16;
    }

    v9 = v8;
    v10 = 0;
    v11 = 1;
LABEL_9:
    v81 = v11;
    v82 = *(v9 + 24);
    v83 = 1;
LABEL_16:
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    v16 = v9 + 24;
    while (1)
    {
      if (v84 != 170)
      {
        if (v84 != 171)
        {
LABEL_74:
          SyntaxErrorMessage(a1, "defmodule");
LABEL_75:
          v4 = 1;
          goto LABEL_76;
        }

        v37 = v10;
        v87 = 0;
        SaveCurrentModule(a1);
        NextDefmodule = EnvGetNextDefmodule(a1, 0);
        if (NextDefmodule)
        {
          v39 = NextDefmodule;
          while (1)
          {
            v40 = *(*(*(a1 + 48) + 32) + 88);
            if (v40)
            {
              break;
            }

LABEL_71:
            v39 = EnvGetNextDefmodule(a1, v39);
            if (!v39)
            {
              goto LABEL_72;
            }
          }

          while (1)
          {
            EnvSetCurrentModule(a1, v39);
            Construct = FindConstruct(a1, *v40);
            v42 = (*(Construct + 56))(a1, 0);
            if (v42)
            {
              break;
            }

LABEL_70:
            v40 = *(v40 + 16);
            if (!v40)
            {
              goto LABEL_71;
            }
          }

          v43 = v42;
          while (1)
          {
            EnvSetCurrentModule(a1, v9);
            v44 = *v40;
            v45 = (*(Construct + 32))(v43);
            FindImportedConstruct(a1, v44, 0, *(v45 + 24), &v87, 0, 0);
            if (v87 > 1)
            {
              break;
            }

            EnvSetCurrentModule(a1, v39);
            v43 = (*(Construct + 56))(a1, v43);
            if (!v43)
            {
              goto LABEL_70;
            }
          }

          ConstructNameString = EnvGetConstructNameString(a1, v9);
          v56 = *v40;
          v57 = (*(Construct + 32))(v43);
          ImportExportConflictMessage(a1, "defmodule", ConstructNameString, v56, *(v57 + 24));
          RestoreCurrentModule(a1);
          v4 = 1;
LABEL_86:
          v10 = v37;
LABEL_76:
          v47 = *v16;
          if (*v16)
          {
            do
            {
              v48 = v47[3];
              v49 = *(a1 + 48);
              *(*(v49 + 472) + 32) = v47;
              **(*(v49 + 472) + 32) = *(*(*(v49 + 472) + 40) + 256);
              *(*(*(v49 + 472) + 40) + 256) = *(*(v49 + 472) + 32);
              *v16 = v48;
              v47 = v48;
            }

            while (v48);
          }

          v50 = *(v9 + 4);
          if (v50)
          {
            do
            {
              v51 = *(v50 + 24);
              v52 = *(a1 + 48);
              *(*(v52 + 472) + 32) = v50;
              **(*(v52 + 472) + 32) = *(*(*(v52 + 472) + 40) + 256);
              *(*(*(v52 + 472) + 40) + 256) = *(*(v52 + 472) + 32);
              *(v9 + 4) = v51;
              v50 = v51;
            }

            while (v51);
          }

          if (((v83 | v10) & 1) == 0)
          {
            v53 = *(a1 + 48);
            *(*(v53 + 472) + 32) = v9;
            **(*(v53 + 472) + 32) = *(*(*(v53 + 472) + 40) + 576);
            *(*(*(v53 + 472) + 40) + 576) = *(*(v53 + 472) + 32);
          }

          if (v83)
          {
            *v16 = v82;
          }

          return v4;
        }

LABEL_72:
        RestoreCurrentModule(a1);
        v46 = *(a1 + 48);
        if (*(*(v46 + 336) + 40))
        {
          v4 = 0;
          goto LABEL_86;
        }

        if (v81)
        {
          ++*(*v9 + 8);
          goto LABEL_92;
        }

        if (*v16 || *(v9 + 4))
        {
          *(*(v46 + 32) + 80) = 0;
LABEL_92:
          v58 = *v16;
          if (*v16)
          {
            do
            {
              if (*v58)
              {
                ++*(*v58 + 8);
              }

              v59 = v58[1];
              if (v59)
              {
                ++*(v59 + 8);
              }

              v60 = v58[2];
              if (v60)
              {
                ++*(v60 + 8);
              }

              v58 = v58[3];
            }

            while (v58);
          }

          for (i = *(v9 + 4); i; i = i[3])
          {
            if (*i)
            {
              ++*(*i + 8);
            }

            v62 = i[1];
            if (v62)
            {
              ++*(v62 + 8);
            }

            v63 = i[2];
            if (v63)
            {
              ++*(v63 + 8);
            }
          }

          if (v81)
          {
            v64 = *(*(v46 + 32) + 56);
            if (v64)
            {
              *(v9 + 2) = gm2(a1, 8 * v64);
              v65 = *(*(a1 + 48) + 32);
              v66 = *(v65 + 64);
              if (*(v65 + 56) >= 1 && v66 != 0)
              {
                v68 = 0;
                do
                {
                  v69 = *(v66 + 16);
                  if (v69)
                  {
                    *(*(v9 + 2) + 8 * v68) = v69(a1);
                    v70 = *(*(v9 + 2) + 8 * v68);
                    v70[1] = 0;
                    v70[2] = 0;
                    *v70 = v9;
                  }

                  else
                  {
                    *(*(v9 + 2) + 8 * v68) = 0;
                  }

                  ++v68;
                  v66 = *(v66 + 56);
                }

                while (v68 < *(*(*(a1 + 48) + 32) + 56) && v66 != 0);
              }
            }

            else
            {
              *(v9 + 2) = 0;
            }
          }
        }

        SavePPBuffer(a1, "\n");
        if (EnvGetConserveMemory(a1) == 1)
        {
          v72 = 0;
        }

        else
        {
          v72 = CopyPPBuffer(a1);
        }

        *(v9 + 1) = v72;
        if (v81)
        {
          v73 = *(a1 + 48);
          v74 = *(v73 + 32);
          v75 = *(v74 + 48);
          v76 = (v74 + 32);
          if (v75)
          {
            v76 = (v75 + 64);
          }

          *v76 = v9;
          *(*(v73 + 32) + 48) = v9;
          v77 = *(v73 + 32);
          v78 = *(v77 + 96);
          *(v77 + 96) = v78 + 1;
          *(v9 + 6) = v78;
        }

        EnvSetCurrentModule(a1, v9);
        v79 = *(*(*(a1 + 48) + 32) + 104);
        if (!v79)
        {
          return 0;
        }

        do
        {
          (*(v79 + 8))(a1);
          v4 = 0;
          v79 = *(v79 + 24);
        }

        while (v79);
        return v4;
      }

      GetToken(a1, a2, &v84);
      if (v84 != 2)
      {
        goto LABEL_74;
      }

      v17 = *(v85 + 24);
      if (!strcmp(v17, "import"))
      {
        break;
      }

      if (strcmp(v17, "export"))
      {
        goto LABEL_74;
      }

      if (ParseExportSpec(a1, a2, &v84, v9, 0))
      {
        goto LABEL_75;
      }

LABEL_31:
      PPCRAndIndent(a1);
      GetToken(a1, a2, &v84);
      if (v84 == 171)
      {
        PPBackup(a1);
        PPBackup(a1);
        SavePPBuffer(a1, ")");
      }
    }

    SavePPBuffer(a1, " ");
    GetToken(a1, a2, &v84);
    if (v84 != 2)
    {
      SyntaxErrorMessage(a1, "defmodule import specification");
      goto LABEL_75;
    }

    v18 = EnvFindDefmodule(a1, *(v85 + 24));
    if (!v18)
    {
      CantFindItemErrorMessage(a1, "defmodule", *(v85 + 24));
      goto LABEL_75;
    }

    v19 = v18;
    if (!v18[4])
    {
      v22 = EnvGetConstructNameString(a1, v18);
      NotExportedErrorMessage(a1, v22, 0, 0);
      goto LABEL_75;
    }

    v80 = v10;
    v20 = *(v9 + 3);
    if (ParseExportSpec(a1, a2, &v84, v9, v18))
    {
      goto LABEL_27;
    }

    v23 = *v16;
    if (*v16 != v20)
    {
      v24 = *(v23 + 8);
      if (v24)
      {
        v25 = *(v19 + 32);
        if (!v25)
        {
LABEL_48:
          v30 = *(v23 + 16);
          v31 = EnvGetConstructNameString(a1, v19);
          if (v30)
          {
            v32 = *(*(*v16 + 16) + 24);
            v33 = a1;
          }

          else
          {
            v33 = a1;
            v32 = 0;
          }

          NotExportedErrorMessage(v33, v31, *(*(*v16 + 8) + 24), v32);
LABEL_27:
          v21 = 1;
          goto LABEL_57;
        }

        while (1)
        {
          v26 = v25[1];
          if (!v26)
          {
            break;
          }

          if (v26 == v24)
          {
            v27 = *(v23 + 16);
            if (!v27)
            {
              break;
            }

            v28 = v25[2];
            if (!v28)
            {
              break;
            }

            v25 = v25[3];
            if (v28 == v27 || v25 == 0)
            {
              if (v28 == v27)
              {
                break;
              }

              goto LABEL_48;
            }
          }

          else
          {
            v25 = v25[3];
            if (!v25)
            {
              goto LABEL_48;
            }
          }
        }
      }

      v87 = 0;
      SaveCurrentModule(a1);
      EnvSetCurrentModule(a1, v9);
      v34 = *(v9 + 3);
      if (v34)
      {
        while (1)
        {
          if (v34[1])
          {
            if (v34[2])
            {
              v35 = EnvFindDefmodule(a1, *(*v34 + 24));
              EnvSetCurrentModule(a1, v35);
              if (!FindImportedConstruct(a1, *(v34[1] + 24), 0, *(v34[2] + 24), &v87, 1, 0))
              {
                break;
              }
            }
          }

          v34 = v34[3];
          if (!v34)
          {
            goto LABEL_55;
          }
        }

        v36 = EnvGetConstructNameString(a1, v35);
        NotExportedErrorMessage(a1, v36, *(v34[1] + 24), *(v34[2] + 24));
        RestoreCurrentModule(a1);
        goto LABEL_27;
      }

LABEL_55:
      RestoreCurrentModule(a1);
    }

    v21 = 0;
LABEL_57:
    v10 = v80;
    if (v21)
    {
      goto LABEL_75;
    }

    goto LABEL_31;
  }

  return v4;
}

uint64_t DeleteDefmodule(uint64_t a1, uint64_t a2)
{
  ConstructNameString = EnvGetConstructNameString(a1, a2);
  if (!strcmp(ConstructNameString, "MAIN"))
  {
    return *(*(*(a1 + 48) + 32) + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t ValidPortConstructItem(uint64_t a1, char *__s1)
{
  for (i = *(*(*(a1 + 48) + 32) + 88); i; i = *(i + 16))
  {
    if (!strcmp(__s1, *i))
    {
      break;
    }
  }

  return i;
}

uint64_t FindImportExportConflict(uint64_t a1, char *a2, uint64_t a3, char *a4)
{
  if (!ValidPortConstructItem(a1, a2))
  {
    return 0;
  }

  if (FindModuleSeparator(a4))
  {
    return 0;
  }

  ModuleItem = FindModuleItem(a1, a2);
  if (!ModuleItem || !*(ModuleItem + 48))
  {
    return 0;
  }

  v13 = 0;
  SaveCurrentModule(a1);
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v12 = NextDefmodule;
    while (1)
    {
      EnvSetCurrentModule(a1, v12);
      v8 = 1;
      FindImportedConstruct(a1, a2, 0, a4, &v13, 1, a3);
      if (v13 > 1)
      {
        break;
      }

      v12 = EnvGetNextDefmodule(a1, v12);
      if (!v12)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v8 = 0;
  }

  RestoreCurrentModule(a1);
  return v8;
}

uint64_t ParseExportSpec(uint64_t a1, char *a2, unsigned __int16 *a3, uint64_t a4, uint64_t *a5)
{
  if (a5)
  {
    v10 = *a5;
    v11 = "defmodule import specification";
  }

  else
  {
    v10 = 0;
    v11 = "defmodule export specification";
  }

  SavePPBuffer(a1, " ");
  GetToken(a1, a2, a3);
  v12 = *a3;
  if (v12 == 2)
  {
    v15 = *(a3 + 1);
    valid = ValidPortConstructItem(a1, *(v15 + 24));
    if (valid)
    {
      v17 = valid;
      SavePPBuffer(a1, " ");
      GetToken(a1, a2, a3);
      v18 = *a3;
      if (v18 != 35)
      {
        if (v18 != 171)
        {
          if (a5)
          {
            v19 = 24;
          }

          else
          {
            v19 = 32;
          }

          while (*(v17 + 8) == v18)
          {
            v20 = *(a1 + 48);
            v21 = *(v20 + 472);
            v22 = *(*(v21 + 40) + 256);
            if (v22)
            {
              *(v21 + 32) = v22;
              *(*(*(v20 + 472) + 40) + 256) = **(*(v20 + 472) + 32);
              v23 = *(*(*(a1 + 48) + 472) + 32);
            }

            else
            {
              v23 = genalloc(a1, 0x20uLL);
            }

            *v23 = v10;
            v23[1] = v15;
            v23[2] = *(a3 + 1);
            v24 = *(a4 + v19);
            *(a4 + v19) = v23;
            v23[3] = v24;
            SavePPBuffer(a1, " ");
            GetToken(a1, a2, a3);
            v18 = *a3;
            if (v18 == 171)
            {
              PPBackup(a1);
              PPBackup(a1);
              SavePPBuffer(a1, ")");
              return 0;
            }
          }
        }

        goto LABEL_43;
      }

      v28 = *(*(a3 + 1) + 24);
      if (!strcmp(v28, "ALL"))
      {
        v30 = *(a1 + 48);
        v31 = *(v30 + 472);
        v32 = *(*(v31 + 40) + 256);
        if (v32)
        {
          *(v31 + 32) = v32;
          *(*(*(v30 + 472) + 40) + 256) = **(*(v30 + 472) + 32);
          v14 = *(*(*(a1 + 48) + 472) + 32);
        }

        else
        {
          v14 = genalloc(a1, 0x20uLL);
        }

        *v14 = v10;
        v14[1] = v15;
        v14[2] = 0;
        v14[3] = 0;
      }

      else
      {
        if (strcmp(v28, "NONE"))
        {
          goto LABEL_43;
        }

        v14 = 0;
      }

      GetToken(a1, a2, a3);
      if (*a3 == 171)
      {
        if (v14)
        {
          if (a5)
          {
            goto LABEL_31;
          }

LABEL_39:
          result = 0;
          v14[3] = *(a4 + 32);
          *(a4 + 32) = v14;
          return result;
        }

        return 0;
      }

      goto LABEL_40;
    }

LABEL_43:
    SyntaxErrorMessage(a1, v11);
    return 1;
  }

  if (v12 != 35)
  {
    goto LABEL_43;
  }

  v13 = *(*(a3 + 1) + 24);
  if (strcmp(v13, "ALL"))
  {
    if (!strcmp(v13, "NONE"))
    {
      v14 = 0;
      goto LABEL_28;
    }

    goto LABEL_43;
  }

  v25 = *(a1 + 48);
  v26 = *(v25 + 472);
  v27 = *(*(v26 + 40) + 256);
  if (v27)
  {
    *(v26 + 32) = v27;
    *(*(*(v25 + 472) + 40) + 256) = **(*(v25 + 472) + 32);
    v14 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v14 = genalloc(a1, 0x20uLL);
  }

  *v14 = v10;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0;
LABEL_28:
  GetToken(a1, a2, a3);
  if (*a3 != 171)
  {
LABEL_40:
    if (v14)
    {
      v33 = *(a1 + 48);
      *(*(v33 + 472) + 32) = v14;
      **(*(v33 + 472) + 32) = *(*(*(v33 + 472) + 40) + 256);
      *(*(*(v33 + 472) + 40) + 256) = *(*(v33 + 472) + 32);
    }

    PPBackup(a1);
    SavePPBuffer(a1, " ");
    SavePPBuffer(a1, *(a3 + 2));
    goto LABEL_43;
  }

  if (v14)
  {
    if (a5)
    {
LABEL_31:
      result = 0;
      v14[3] = *(a4 + 24);
      *(a4 + 24) = v14;
      return result;
    }

    goto LABEL_39;
  }

  return 0;
}

uint64_t NotExportedErrorMessage(uint64_t a1, char *a2, char *a3, char *a4)
{
  PrintErrorID(a1, "MODULPSR", 1, 1);
  EnvPrintRouter(a1, "werror", "Module ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " does not export ");
  if (a3)
  {
    if (a4)
    {
      EnvPrintRouter(a1, "werror", "the ");
      v8 = a3;
      a3 = " ";
    }

    else
    {
      a4 = " constructs";
      v8 = "any ";
    }

    EnvPrintRouter(a1, "werror", v8);
    EnvPrintRouter(a1, "werror", a3);
  }

  else
  {
    a4 = "any constructs";
  }

  EnvPrintRouter(a1, "werror", a4);

  return EnvPrintRouter(a1, "werror", ".\n");
}

_BYTE *EnvInitializeEnvironment(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    v1 = result;
    InitializeMemory(result);
    InitializeCommandLineData(v1);
    InitializeConstructData(v1);
    InitializeEvaluationData(v1);
    InitializeExternalFunctionData(v1);
    InitializePrettyPrintData(v1);
    InitializePrintUtilityData(v1);
    InitializeScannerData(v1);
    AllocateEnvironmentData(v1, 0x3Au, 0x38uLL, 0);
    InitializeUserDataData(v1);
    InitializeUtilityData(v1);
    InitializeWatchData(v1);
    InitializeAtomTables(v1);
    InitializeDefaultRouters(v1);
    ProceduralFunctionDefinitions(v1);
    MiscFunctionDefinitions(v1);
    IOFunctionDefinitions(v1);
    PredicateFunctionDefinitions(v1);
    BasicMathFunctionDefinitions(v1);
    FileCommandDefinitions(v1);
    SortFunctionDefinitions(v1);
    WatchFunctionDefinitions(v1);
    MultifieldFunctionDefinitions(v1);
    StringFunctionDefinitions(v1);
    ConstructProfilingFunctionDefinitions(v1);
    v2 = ParseFunctionDefinitions(v1);
    gensystem(v2);
    gensystem(v1);
    InitializeConstraints(v1);
    InitExpressionData(v1);
    InitializeConstructs(v1);
    AllocateDefmoduleGlobals(v1);
    InitializeDefrules(v1);
    InitializeDeffacts(v1);
    SetupGenericFunctions(v1);
    SetupDeffunctions(v1);
    InitializeDefglobals(v1);
    InitializeDeftemplates(v1);
    InitializeDefmodules(v1);
    InstallProcedurePrimitives(v1);
    result = EnvClear(v1);
    *v1 |= 1u;
  }

  return result;
}

uint64_t RerouteStdin(uint64_t result, int a2, uint64_t a3)
{
  if (a2 >= 3 && a3)
  {
    v5 = result;
    v6 = 0;
    for (i = 1; i < a2; ++i)
    {
      v8 = i;
      v9 = *(a3 + 8 * i);
      if (*v9 == 45)
      {
        if (v9[1] == 102 && !v9[2])
        {
          goto LABEL_14;
        }

        if (!strcmp(*(a3 + 8 * i), "-f2"))
        {
          goto LABEL_17;
        }

        if (v9[1] == 108 && !v9[2])
        {
          goto LABEL_16;
        }
      }

      else if (!strcmp(*(a3 + 8 * i), "-f2"))
      {
        goto LABEL_17;
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
LABEL_17:
          ++i;
          result = EnvBatchStar(v5, *(a3 + 8 * (v8 + 1)));
          v6 = 2;
          continue;
        }

LABEL_16:
        ++i;
        result = EnvLoad(v5, *(a3 + 8 * (v8 + 1)));
        v6 = 3;
        continue;
      }

      if (!v6)
      {
        PrintErrorID(v5, "SYSDEP", 2, 0);
        result = EnvPrintRouter(v5, "werror", "Invalid option\n");
        continue;
      }

LABEL_14:
      ++i;
      v6 = 1;
      result = OpenBatch(v5, *(a3 + 8 * (v8 + 1)), 1);
    }
  }

  return result;
}

uint64_t genprintfile(int a1, FILE *a2, char *a3)
{
  fputs(a3, a2);

  return fflush(a2);
}

void genexit(uint64_t a1, int a2)
{
  v2 = *(*(*(a1 + 48) + 464) + 48);
  if (!v2)
  {
    exit(a2);
  }

  longjmp(v2, 1);
}

uint64_t EnvSetBeforeOpenFunction(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 464);
  result = *(v2 + 32);
  *(v2 + 32) = a2;
  return result;
}

uint64_t EnvSetAfterOpenFunction(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 464);
  result = *(v2 + 40);
  *(v2 + 40) = a2;
  return result;
}

FILE *GenOpen(uint64_t a1, char *__filename, char *__mode)
{
  v6 = *(*(*(a1 + 48) + 464) + 32);
  if (v6)
  {
    v6(a1);
  }

  v7 = fopen(__filename, __mode);
  v8 = v7;
  if (*__mode == 114)
  {
    if (v7)
    {
      if (!__mode[1])
      {
        v9 = getc(v7);
        if (v9 != 239 || (v9 = getc(v8), v9 != 187) || (v9 = getc(v8), v9 != 191))
        {
          ungetc(v9, v8);
        }
      }
    }
  }

  v10 = *(*(*(a1 + 48) + 464) + 40);
  if (v10)
  {
    v10(a1);
  }

  return v8;
}

uint64_t GenClose(uint64_t a1, FILE *a2)
{
  v4 = *(*(*(a1 + 48) + 464) + 32);
  if (v4)
  {
    v4(a1);
  }

  v5 = fclose(a2);
  v6 = *(*(*(a1 + 48) + 464) + 40);
  if (v6)
  {
    v6(a1);
  }

  return v5;
}

uint64_t GenOpenReadBinary(uint64_t a1, char *a2, char *__filename)
{
  v6 = *(*(*(a1 + 48) + 464) + 32);
  if (v6)
  {
    v6(a1);
  }

  v7 = fopen(__filename, "rb");
  v8 = *(a1 + 48);
  *(*(v8 + 464) + 24) = v7;
  v9 = *(*(v8 + 464) + 40);
  if (v7)
  {
    if (v9)
    {
      v9(a1);
    }

    return 1;
  }

  else
  {
    if (v9)
    {
      v9(a1);
    }

    OpenErrorMessage(a1, a2, __filename);
    return 0;
  }
}

uint64_t GenTellBinary(uint64_t a1, uint64_t *a2)
{
  result = MEMORY[0x238387AC0](*(*(*(a1 + 48) + 464) + 24));
  *a2 = result;
  return result;
}

uint64_t GenCloseBinary(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 464);
  v3 = *(v2 + 32);
  if (v3)
  {
    v3(a1);
    v2 = *(*(a1 + 48) + 464);
  }

  result = fclose(*(v2 + 24));
  v5 = *(*(*(a1 + 48) + 464) + 40);
  if (v5)
  {

    return v5(a1);
  }

  return result;
}

const void *GenWrite(const void *result, size_t a2, FILE *__stream)
{
  if (a2)
  {
    return fwrite(result, a2, 1uLL, __stream);
  }

  return result;
}

uint64_t InitializeFileRouter(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x2Fu, 8uLL, DeallocateFileRouterData);

  return EnvAddRouter(a1, "fileio", 0, FindFile, PrintFile, GetcFile, UngetcFile, ExitFile);
}

uint64_t DeallocateFileRouterData(uint64_t result)
{
  v1 = **(*(result + 48) + 376);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = v1[2];
      GenClose(v2, v1[1]);
      v4 = strlen(*v1);
      result = rm(v2, *v1, v4 + 1);
      v5 = *(v2 + 48);
      *(*(v5 + 472) + 32) = v1;
      **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
      *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
      v1 = v3;
    }

    while (v3);
  }

  return result;
}

uint64_t PrintFile(uint64_t a1, char *a2, char *a3)
{
  v4 = a1;
  Fptr = FindFptr(a1, a2);
  genprintfile(v4, Fptr, a3);
  return 1;
}

uint64_t GetcFile(uint64_t a1, char *a2)
{
  Fptr = FindFptr(a1, a2);
  v3 = Fptr;
  v4 = MEMORY[0x277D85E00];
  if (Fptr == *MEMORY[0x277D85E00])
  {
    v5 = gengetchar();
  }

  else
  {
    v5 = getc(Fptr);
  }

  v6 = v5;
  if (v3 == *v4 && v5 == -1)
  {
    clearerr(*v4);
  }

  return v6;
}

uint64_t UngetcFile(uint64_t a1, int a2, char *__s1)
{
  v4 = a1;
  Fptr = FindFptr(a1, __s1);
  if (Fptr == *MEMORY[0x277D85E00])
  {

    return genungetchar(v4, a2);
  }

  else
  {

    return ungetc(a2, Fptr);
  }
}

uint64_t FindFptr(uint64_t a1, char *__s1)
{
  if (!strcmp(__s1, "stdout"))
  {
    goto LABEL_13;
  }

  if (!strcmp(__s1, "stdin"))
  {
    v6 = MEMORY[0x277D85E00];
    return *v6;
  }

  if (!strcmp(__s1, "wtrace") || !strcmp(__s1, "wdialog") || !strcmp(__s1, "wclips") || !strcmp(__s1, "wdisplay") || !strcmp(__s1, "werror") || !strcmp(__s1, "wwarning"))
  {
LABEL_13:
    v6 = MEMORY[0x277D85E08];
    return *v6;
  }

  v4 = **(*(a1 + 48) + 376);
  if (v4)
  {
    while (strcmp(__s1, *v4))
    {
      result = 0;
      v4 = *(v4 + 16);
      if (!v4)
      {
        return result;
      }
    }

    v6 = v4 + 8;
    return *v6;
  }

  return 0;
}

FILE *OpenAFile(uint64_t a1, char *a2, char *a3, const char *a4)
{
  result = GenOpen(a1, a2, a3);
  if (result)
  {
    v7 = result;
    v8 = *(a1 + 48);
    v9 = *(v8 + 472);
    v10 = *(*(v9 + 40) + 192);
    if (v10)
    {
      *(v9 + 32) = v10;
      *(*(*(v8 + 472) + 40) + 192) = **(*(v8 + 472) + 32);
      v11 = *(*(*(a1 + 48) + 472) + 32);
    }

    else
    {
      v11 = genalloc(a1, 0x18uLL);
    }

    v12 = strlen(a4);
    v13 = gm2(a1, v12 + 1);
    genstrcpy(v13, a4);
    *v11 = v13;
    v11[1] = v7;
    v14 = *(a1 + 48);
    v11[2] = **(v14 + 376);
    **(v14 + 376) = v11;
    return 1;
  }

  return result;
}

uint64_t CloseFile(uint64_t a1, const char *a2)
{
  v2 = **(*(a1 + 48) + 376);
  if (!v2)
  {
    return 0;
  }

  if (strcmp(*v2, a2))
  {
    v5 = v2;
    while (1)
    {
      v2 = v5[2];
      if (!v2)
      {
        return 0;
      }

      v6 = v5;
      v5 = v5[2];
      if (!strcmp(*v2, a2))
      {
        goto LABEL_9;
      }
    }
  }

  v6 = 0;
LABEL_9:
  GenClose(a1, v2[1]);
  v8 = strlen(*v2);
  rm(a1, *v2, v8 + 1);
  if (v6)
  {
    v9 = v6 + 2;
  }

  else
  {
    v9 = *(*(a1 + 48) + 376);
  }

  *v9 = v2[2];
  rm(a1, v2, 0x18uLL);
  return 1;
}

uint64_t CloseAllFiles(uint64_t a1)
{
  v1 = **(*(a1 + 48) + 376);
  if (!v1)
  {
    return 0;
  }

  do
  {
    GenClose(a1, v1[1]);
    v3 = strlen(*v1);
    rm(a1, *v1, v3 + 1);
    v4 = v1[2];
    rm(a1, v1, 0x18uLL);
    v1 = v4;
  }

  while (v4);
  **(*(a1 + 48) + 376) = 0;
  return 1;
}

uint64_t ReorderPatterns(void *a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  GetLHSParseNode(a1);
  v7 = v6;
  *v6 = 151;
  *(v6 + 192) = a2;
  PropagateWhichCE(v6, 0);
  v8 = ReorderDriver(a1, v7, a3, 1, 1);
  v9 = ReorderDriver(a1, v8, a3, 2, 1);
  v10 = v9;
  v11 = *v9;
  if (v11 == 151)
  {
    goto LABEL_17;
  }

  if (v11 != 152)
  {
    GetLHSParseNode(a1);
    *v19 = 151;
    *(v19 + 192) = v10;
    v10 = v19;
LABEL_17:
    MarkExistsNands(*(v10 + 192));
    goto LABEL_18;
  }

  v12 = (v9 + 96);
  v13 = *(v9 + 24);
  if (v13)
  {
    v14 = 0;
    do
    {
      if (*v13 != 151)
      {
        GetLHSParseNode(a1);
        *v15 = 151;
        v16 = *(v13 + 200);
        *(v15 + 192) = v13;
        *(v15 + 200) = v16;
        *(v13 + 200) = 0;
        v17 = (v14 + 200);
        if (!v14)
        {
          v17 = (v10 + 192);
        }

        *v17 = v15;
        v13 = v15;
      }

      v14 = v13;
      v13 = *(v13 + 200);
    }

    while (v13);
    if (*v10 == 152)
    {
      for (i = *v12; i; i = *(i + 200))
      {
        MarkExistsNands(*(i + 192));
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_18:
  AddInitialPatterns(a1, v10);
  v20 = v10;
  if (*v10 != 152 || (v20 = *(v10 + 192)) != 0)
  {
    do
    {
      AssignPatternIndices(*(v20 + 192), 1, 1, 0);
      v20 = *(v20 + 200);
    }

    while (v20);
  }

  return v10;
}

double GetLHSParseNode(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 472);
  v3 = *(*(v2 + 40) + 1664);
  if (v3)
  {
    *(v2 + 32) = v3;
    *(*(*(v1 + 472) + 40) + 1664) = **(*(v1 + 472) + 32);
    v4 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v4 = genalloc(a1, 0xD0uLL);
  }

  *v4 = 173;
  *(v4 + 1) = 0;
  v5 = *(v4 + 4) & 0xFFFE0000 | 0x80;
  *(v4 + 20) = 0;
  *(v4 + 4) = v5;
  *(v4 + 5) = 0;
  *(v4 + 6) = 0;
  *(v4 + 4) = 0;
  *(v4 + 14) = -1;
  *(v4 + 8) = 0;
  *(v4 + 36) = -1;
  *(v4 + 76) = 0x100000001;
  result = 0.0;
  *(v4 + 84) = 0u;
  *(v4 + 100) = 0u;
  *(v4 + 116) = 0u;
  *(v4 + 132) = 0u;
  *(v4 + 148) = 0u;
  *(v4 + 164) = 0u;
  *(v4 + 180) = 0u;
  *(v4 + 12) = 0u;
  return result;
}

uint64_t PropagateWhichCE(unsigned __int16 *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      v4 = *v3;
      if (v4 == 154 || v4 == 150)
      {
        a2 = (a2 + 1);
      }

      *(v3 + 4) = *(v3 + 4) & 0xFFFF80FF | ((a2 & 0x7F) << 8);
      a2 = PropagateWhichCE(*(v3 + 24), a2);
      PropagateWhichCE(*(v3 + 21), a2);
      v3 = *(v3 + 25);
    }

    while (v3);
  }

  return a2;
}

unsigned __int16 *ReorderDriver(void *a1, unsigned __int16 *a2, _DWORD *a3, int a4, int a5)
{
  v5 = a4;
  v6 = a3;
  v72 = 0;
  *a3 = 0;
  do
  {
    if (*a2 - 151 > 2)
    {
      v32 = 0;
      goto LABEL_124;
    }

    v9 = (a2 + 96);
    if (v5 != 1)
    {
      v33 = *(a2 + 24);
      if (!v33)
      {
LABEL_64:
        v11 = 0;
        goto LABEL_65;
      }

      v11 = 0;
      while (1)
      {
        while (*a2 != 153)
        {
LABEL_52:
          v33 = *(v33 + 25);
          if (!v33)
          {
            goto LABEL_65;
          }
        }

        v34 = *v33;
        switch(v34)
        {
          case 150:
            CopyLHSParseNode(a1, a2, v33, 0);
            *(a2 + 4) = *(a2 + 4) & 0xFFFFFFF8 | 1;
            *(a2 + 24) = *(v33 + 24);
            *(v33 + 25) = 0;
            *(v33 + 92) = 0u;
            *(v33 + 84) = 0u;
            *(v33 + 76) = 0u;
            *(v33 + 68) = 0u;
            *(v33 + 60) = 0u;
            *(v33 + 52) = 0u;
            *(v33 + 44) = 0u;
            break;
          case 151:
            goto LABEL_60;
          case 153:
            v35 = *(v33 + 24);
            if (!v35)
            {
LABEL_60:
              *a2 = v34;
              v37 = *(a2 + 4) & 0xFFFFFFFE | *(v33 + 4) & 1;
              *(a2 + 4) = v37;
              v38 = v37 & 0xFFFFFFFD | (2 * ((*(v33 + 4) >> 1) & 1));
              *(a2 + 4) = v38;
              v39 = v38 & 0xFFFFFFFB | (4 * ((*(v33 + 4) >> 2) & 1));
              *(a2 + 4) = v39;
              *(a2 + 1) = *(v33 + 1);
              *(a2 + 4) = v39 & 0xFFFFFFF7 | (8 * ((*(v33 + 4) >> 3) & 1));
              *(a2 + 24) = *(v33 + 24);
              *(v33 + 24) = 0;
              *(v33 + 25) = 0;
              ReturnLHSParseNodes(a1, v33);
              IncrementNandDepth(a1, *(a2 + 24), 1);
              goto LABEL_61;
            }

            v36 = *v35;
            if (v36 == 150)
            {
              CopyLHSParseNode(a1, a2, v35, 0);
              *(a2 + 4) = *(a2 + 4) & 0xFFFFFFF8 | 3;
              *(a2 + 24) = *(*(v33 + 24) + 192);
              v40 = *(v33 + 24);
              *(v40 + 120) = 0;
              *(v40 + 104) = 0u;
              *(v40 + 88) = 0u;
              *(v40 + 144) = 0u;
              *(v40 + 160) = 0u;
              *(v40 + 176) = 0u;
              *(v40 + 192) = 0;
              *(*(v33 + 24) + 200) = 0;
            }

            else
            {
              if (v36 != 153)
              {
                goto LABEL_60;
              }

              *v9 = *(v35 + 24);
              *(*(v33 + 24) + 192) = 0;
            }

            break;
          default:
            goto LABEL_52;
        }

        ReturnLHSParseNodes(a1, v33);
LABEL_61:
        v33 = *v9;
        v11 = 1;
        if (!*v9)
        {
          goto LABEL_65;
        }
      }
    }

    v10 = *v9;
    if (!*v9)
    {
      goto LABEL_64;
    }

    v11 = 0;
    while (2)
    {
      v12 = 0;
      LOBYTE(v13) = 1;
      v14 = 1;
LABEL_7:
      v15 = *a2;
      v16 = v14 - 1;
      v17 = v10;
      while (1)
      {
        if (v15 == 153)
        {
          if (*v17 == 152)
          {
            v22 = *(v17 + 24);
            *(v17 + 24) = 0;
            *(v17 + 25) = 0;
            ReturnLHSParseNodes(a1, v17);
            *a2 = 151;
            *v9 = v22;
            if (!v22)
            {
              goto LABEL_66;
            }

            do
            {
              GetLHSParseNode(a1);
              v24 = v23;
              CopyLHSParseNode(a1, v23, v22, 0);
              *(v24 + 192) = *(v22 + 192);
              *(v24 + 200) = 0;
              *v22 = 153;
              *(v22 + 16) &= 0xFFFFFFF0;
              *(v22 + 8) = 0;
              *(v22 + 168) = 0;
              *(v22 + 176) = 0;
              *(v22 + 192) = v24;
              v22 = *(v22 + 200);
            }

            while (v22);
            v11 = 1;
LABEL_31:
            v12 = 0;
            v10 = *v9;
            LOBYTE(v13) = 1;
            v14 = 1;
            if (*v9)
            {
              goto LABEL_7;
            }

            goto LABEL_65;
          }

          goto LABEL_17;
        }

        if (v15 == 152)
        {
          if (*v17 == 152)
          {
LABEL_20:
            if ((v17[8] & 8) != 0)
            {
              *(a2 + 4) |= 8u;
            }

            v10 = *(v17 + 24);
            v19 = *(v17 + 25);
            *(v17 + 24) = 0;
            *(v17 + 25) = 0;
            ReturnLHSParseNodes(a1, v17);
            v20 = (v12 + 100);
            if (!v12)
            {
              v20 = v9;
            }

            *v20 = v10;
            v13 = v10;
            do
            {
              v21 = v13;
              v13 = *(v13 + 25);
            }

            while (v13);
            *(v21 + 25) = v19;
            v11 = 1;
            if (v10)
            {
              goto LABEL_7;
            }

            goto LABEL_31;
          }

          goto LABEL_17;
        }

        if (v15 == 151)
        {
          v18 = *v17;
          if (v18 == 151)
          {
            goto LABEL_20;
          }

          if (v18 == 152)
          {
            break;
          }
        }

LABEL_17:
        ++v14;
        ++v16;
        v12 = v17;
        v17 = *(v17 + 25);
        if (!v17)
        {
          if (v13)
          {
            goto LABEL_65;
          }

          goto LABEL_31;
        }
      }

      v25 = *(v17 + 24);
      if (v25)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          v28 = CopyLHSParseNodes(a1, a2);
          v29 = *(v28 + 24);
          if (v14 != 1)
          {
            v30 = v16;
            do
            {
              v29 = *(v29 + 200);
              --v30;
            }

            while (v30);
          }

          ReturnLHSParseNodes(a1, *(v29 + 192));
          CopyLHSParseNode(a1, v29, v25, 1);
          *(v29 + 192) = CopyLHSParseNodes(a1, *(v25 + 192));
          v10 = v28;
          if (v26)
          {
            *(v26 + 25) = v28;
            v10 = v27;
          }

          *(v28 + 25) = 0;
          v25 = *(v25 + 200);
          v26 = v28;
          v27 = v10;
        }

        while (v25);
      }

      else
      {
        v10 = 0;
      }

      ReturnLHSParseNodes(a1, a2);
      GetLHSParseNode(a1);
      a2 = v31;
      *v31 = 152;
      *(v31 + 24) = v10;
      v9 = (v31 + 96);
      v11 = 1;
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_65:
    if (v11)
    {
LABEL_66:
      v32 = 1;
      *a3 = 1;
    }

    else
    {
      v32 = 0;
    }

    v42 = (a2 + 96);
    v41 = *(a2 + 24);
    if (!v41)
    {
      v43 = 0;
      goto LABEL_121;
    }

    v43 = 0;
    v44 = 0;
    v45 = 0;
    while (2)
    {
      v46 = *a2;
      if (v46 == 151)
      {
        v47 = *v41;
        if (v47 != 150)
        {
          if (v47 != 154)
          {
            if (v47 != 151)
            {
              goto LABEL_111;
            }

            goto LABEL_81;
          }

          v53 = *(v41 + 25);
          if (v53)
          {
            if (*v53 == 154)
            {
              v54 = *(v41 + 19);
              if (v54 == *(v41 + 20) && v54 == *(v53 + 76))
              {
                *(v41 + 21) = CombineLHSParseNodes(a1, *(v41 + 21), *(v53 + 168));
                v55 = *(v41 + 25);
                *(v55 + 168) = 0;
LABEL_94:
                *(v41 + 25) = *(v55 + 200);
                *(v55 + 200) = 0;
                ReturnLHSParseNodes(a1, v55);
                v43 = 1;
                v48 = v41;
                goto LABEL_88;
              }
            }

LABEL_111:
            v48 = *(v41 + 25);
            goto LABEL_112;
          }

          if (*v42 != v41)
          {
            goto LABEL_111;
          }

          CopyLHSParseNode(a1, a2, v41, 1);
          *(a2 + 24) = 0;
LABEL_110:
          ReturnLHSParseNodes(a1, v41);
          v43 = 1;
          goto LABEL_114;
        }

        v56 = *(v41 + 25);
        if (!v56)
        {
          if (a5 < 2 || *v42 != v41)
          {
            goto LABEL_111;
          }

          CopyLHSParseNode(a1, a2, v41, 0);
          *(a2 + 24) = *(v41 + 24);
          *(v41 + 25) = 0;
          *(v41 + 92) = 0u;
          *(v41 + 84) = 0u;
          *(v41 + 76) = 0u;
          *(v41 + 68) = 0u;
          *(v41 + 60) = 0u;
          *(v41 + 52) = 0u;
          *(v41 + 44) = 0u;
          goto LABEL_110;
        }

        if (*v56 != 154)
        {
          goto LABEL_111;
        }

        if ((v41[8] & 3) != 0)
        {
          goto LABEL_111;
        }

        v57 = *(v41 + 19);
        if (v57 != *(v41 + 20) || v57 != *(v56 + 76))
        {
          goto LABEL_111;
        }

        v58 = *(v56 + 80);
        *(v41 + 21) = CombineLHSParseNodes(a1, *(v41 + 21), *(v56 + 168));
        v55 = *(v41 + 25);
        *(v55 + 168) = 0;
        if (*v42 != v41 || *(v41 + 19) - 1 != v58)
        {
          goto LABEL_94;
        }

        v59 = *(v41 + 4);
        if (v59)
        {
          v60 = v59 & 0xFFFFFFFC | 2;
        }

        else
        {
          if ((v59 & 2) == 0)
          {
            *(v41 + 4) = v59 | 1;
LABEL_119:
            PropagateNandDepth(v41, v58, v58);
            v55 = *(v41 + 25);
            goto LABEL_94;
          }

          v60 = v59 & 0xFFFFFFFC | 1;
        }

        *(v41 + 4) = v60;
        v61 = LHSParseNodesToExpression(a1, *(v41 + 22));
        v62 = NegateExpression(a1, v61);
        ReturnLHSParseNodes(a1, *(v41 + 22));
        *(v41 + 22) = ExpressionToLHSParseNodes(a1, v62);
        ReturnExpression(a1, v62);
        goto LABEL_119;
      }

      if (v46 != 153)
      {
        if (v46 != 152 || *v41 != 152)
        {
          goto LABEL_111;
        }

LABEL_81:
        if ((v41[8] & 8) != 0)
        {
          *(a2 + 4) |= 8u;
        }

        v48 = *(v41 + 24);
        v49 = *(v41 + 25);
        *(v41 + 24) = 0;
        *(v41 + 25) = 0;
        ReturnLHSParseNodes(a1, v41);
        v50 = (v45 + 100);
        if (!v45)
        {
          v50 = (a2 + 96);
        }

        *v50 = v48;
        v51 = v48;
        do
        {
          v52 = v51;
          v51 = *(v51 + 25);
        }

        while (v51);
        *(v52 + 25) = v49;
        v43 = 1;
LABEL_88:
        v41 = v45;
        v44 = 1;
LABEL_112:
        v45 = v41;
        v41 = v48;
        if (v48)
        {
          continue;
        }

        if (!v44)
        {
          goto LABEL_121;
        }

LABEL_114:
        v44 = 0;
        v45 = 0;
        v41 = *v42;
        if (!*v42)
        {
          goto LABEL_121;
        }

        continue;
      }

      break;
    }

    if (*v41 != 154)
    {
      goto LABEL_111;
    }

    GetLHSParseNode(a1);
    *v63 = 30;
    *(v63 + 8) = *(*(a1[6] + 360) + 32);
    *(v63 + 200) = *(v41 + 21);
    *(v41 + 21) = v63;
    v43 = 1;
    CopyLHSParseNode(a1, a2, v41, 1);
    ReturnLHSParseNodes(a1, v41);
    *(a2 + 24) = 0;
LABEL_121:
    v72 = v43;
    if (v43)
    {
      v32 = 1;
      v6 = a3;
      *a3 = 1;
      v5 = a4;
    }

    else
    {
      v5 = a4;
      v6 = a3;
    }

LABEL_124:
    v64 = *(a2 + 24);
    if (v64)
    {
      v65 = 0;
      do
      {
        v66 = v64;
        v64 = *(v64 + 25);
        if (*v66 - 151 <= 2)
        {
          *(v66 + 25) = 0;
          v67 = ReorderDriver(a1);
          v66 = v67;
          if (v65)
          {
            *(v65 + 25) = v67;
            *(v67 + 200) = v64;
            v66 = *(v65 + 25);
          }

          else
          {
            *(a2 + 24) = v67;
            *(v67 + 200) = v64;
          }

          if (v72)
          {
            v32 = 1;
            *v6 = 1;
          }
        }

        v65 = v66;
      }

      while (v64);
    }
  }

  while (v32);
  return a2;
}

uint64_t MarkExistsNands(uint64_t result)
{
  if (result)
  {
    v1 = 1;
    do
    {
      v2 = *(result + 76);
      if (v2 - v1 == 2)
      {
        v3 = *(result + 80);
        if (v3 >= v2)
        {
          v4 = result;
          do
          {
            v4 = *(v4 + 200);
            v3 = *(v4 + 80);
          }

          while (v3 >= v2);
        }

        if (v3 <= v1)
        {
          *(result + 16) |= 4u;
          v5 = result;
          do
          {
            v6 = *(v5 + 80);
            --*(v5 + 76);
            if (v6 <= v1)
            {
              break;
            }

            *(v5 + 80) = v6 - 1;
            v5 = *(v5 + 200);
          }

          while (v5);
        }
      }

      v1 = *(result + 80);
      result = *(result + 200);
    }

    while (result);
  }

  return result;
}

void AddInitialPatterns(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 192);
  if (*a2 == 152)
  {
    for (; v3; v3 = *(v3 + 200))
    {
      AddInitialPatterns(a1, v3);
    }
  }

  else
  {
    if (v3)
    {
      v5 = 0;
      v6 = 1;
      v7 = *(a2 + 192);
      do
      {
        if (*v7 == 154 && *(v7 + 76) > v6)
        {
          GetLHSParseNode(a1);
          *v8 = 150;
          v9 = *(v8 + 16);
          *(v8 + 16) = v9 & 0xFFFFFF7F;
          *(v8 + 200) = 0;
          v10 = *(v7 + 76);
          *(v8 + 76) = v10;
          *(v8 + 80) = v10;
          v11 = *(v7 + 16) & 8 | v9 & 0xFFFFFF77;
          *(v8 + 16) = v11;
          *(v8 + 16) = v11 & 0xFFFFFFFB | *(v7 + 16) & 4;
          *(v7 + 16) &= ~4u;
          *(v8 + 200) = v7;
          if (v5)
          {
            *(v5 + 200) = v8;
          }

          else
          {
            v3 = v8;
          }
        }

        v6 = *(v7 + 80);
        v5 = v7;
        v7 = *(v7 + 200);
      }

      while (v7);
    }

    *(a2 + 192) = v3;
  }
}

unsigned __int16 *AssignPatternIndices(unsigned __int16 *a1, signed __int16 a2, int a3, __int16 a4)
{
  v4 = a1;
  if (a1)
  {
    while (*(v4 + 19) <= a3)
    {
      v9 = *v4;
      if (v9 == 150)
      {
        v10 = *(v4 + 21);
        if (v10)
        {
          PropagateJoinDepth(v10, a4);
          PropagateNandDepth(*(v4 + 21), *(v4 + 19), *(v4 + 20));
        }

        v4[28] = a2;
        *(v4 + 21) = a4;
        PropagateJoinDepth(*(v4 + 24), a4);
        PropagateNandDepth(*(v4 + 24), *(v4 + 19), *(v4 + 20));
        for (i = *(v4 + 24); i; i = *(i + 192))
        {
          *(i + 56) = a2;
          PropagateIndexSlotPatternValues(i, a2, *(i + 58), *(i + 64), *(i + 72));
        }

        v8 = *(v4 + 20);
        goto LABEL_15;
      }

      if (v9 == 154)
      {
        if ((a4 & 0xFFFE) == 0)
        {
          a4 = 1;
        }

        *(v4 + 21) = a4 - 1;
        PropagateJoinDepth(*(v4 + 21), (a4 - 1));
        PropagateNandDepth(*(v4 + 21), *(v4 + 19), *(v4 + 20));
        if (*(v4 + 20) < a3)
        {
          return v4;
        }
      }

LABEL_17:
      v4 = *(v4 + 25);
      if (!v4)
      {
        return v4;
      }
    }

    v4 = AssignPatternIndices(v4, a2);
    v8 = *(v4 + 20);
LABEL_15:
    if (v8 < a3)
    {
      return v4;
    }

    ++a2;
    ++a4;
    goto LABEL_17;
  }

  return v4;
}

void *CopyLHSParseNodes(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1[6];
  v5 = *(v4 + 472);
  v6 = *(*(v5 + 40) + 1664);
  if (v6)
  {
    *(v5 + 32) = v6;
    *(*(*(v4 + 472) + 40) + 1664) = **(*(v4 + 472) + 32);
    v7 = *(*(a1[6] + 472) + 32);
  }

  else
  {
    v7 = genalloc(a1, 0xD0uLL);
  }

  CopyLHSParseNode(a1, v7, a2, 1);
  v7[24] = CopyLHSParseNodes(a1, *(a2 + 192));
  v7[25] = CopyLHSParseNodes(a1, *(a2 + 200));
  return v7;
}

void *CopyLHSParseNode(void *result, uint64_t a2, uint64_t a3, int a4)
{
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  v6 = *(a2 + 16) & 0xFFFFFFFE | *(a3 + 16) & 1;
  *(a2 + 16) = v6;
  v7 = v6 & 0xFFFFFFFD | (2 * ((*(a3 + 16) >> 1) & 1));
  *(a2 + 16) = v7;
  v8 = v7 & 0xFFFFFFFB | (4 * ((*(a3 + 16) >> 2) & 1));
  *(a2 + 16) = v8;
  v9 = v8 & 0xFFFFFFDF | (32 * ((*(a3 + 16) >> 5) & 1));
  *(a2 + 16) = v9;
  v10 = v9 & 0xFFFEFFFF | ((HIWORD(*(a3 + 16)) & 1) << 16);
  *(a2 + 16) = v10;
  v11 = v10 & 0xFFFFFFEF | (16 * ((*(a3 + 16) >> 4) & 1));
  *(a2 + 16) = v11;
  *(a2 + 20) = *(a3 + 20);
  v12 = v11 & 0xFFFFFFF7 | (8 * ((*(a3 + 16) >> 3) & 1));
  *(a2 + 16) = v12;
  v13 = v12 & 0xFFFFFF7F | (((*(a3 + 16) >> 7) & 1) << 7);
  *(a2 + 16) = v13;
  v14 = v13 & 0xFFFF7FFF | (((*(a3 + 16) >> 15) & 1) << 15);
  *(a2 + 16) = v14;
  v15 = v14 & 0xFFFF80FF | (((*(a3 + 16) >> 8) & 0x7F) << 8);
  *(a2 + 16) = v15;
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 56) = *(a3 + 56);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 76) = *(a3 + 76);
  *(a2 + 84) = *(a3 + 84);
  v16 = *(a3 + 88);
  if (a4)
  {
    v17 = result;
    *(a2 + 88) = CopyExpression(result, v16);
    *(a2 + 96) = CopyExpression(v17, *(a3 + 96));
    *(a2 + 104) = CopyExpression(v17, *(a3 + 104));
    *(a2 + 120) = CopyExpression(v17, *(a3 + 120));
    *(a2 + 112) = CopyExpression(v17, *(a3 + 112));
    *(a2 + 128) = CopyExpression(v17, *(a3 + 128));
    *(a2 + 136) = CopyExpression(v17, *(a3 + 136));
    *(a2 + 144) = CopyExpression(v17, *(a3 + 144));
    *(a2 + 160) = CopyExpression(v17, *(a3 + 160));
    *(a2 + 152) = CopyExpression(v17, *(a3 + 152));
    v18 = *(a3 + 184);
    if (v18)
    {
      v19 = *(*(a3 + 48) + 136);
      if (v19)
      {
        v18 = v19(v17);
      }
    }

    *(a2 + 184) = v18;
    *(a2 + 168) = CopyLHSParseNodes(v17, *(a3 + 168));
    *(a2 + 176) = CopyLHSParseNodes(v17, *(a3 + 176));
    result = CopyConstraintRecord(v17, *(a3 + 32));
    *(a2 + 32) = result;
    v20 = *(a2 + 16);
    if (result)
    {
      v21 = v20 | 0x40;
    }

    else
    {
      v21 = v20 & 0xFFFFFFBF;
    }

    *(a2 + 16) = v21;
  }

  else
  {
    *(a2 + 88) = v16;
    *(a2 + 96) = *(a3 + 96);
    *(a2 + 112) = *(a3 + 112);
    *(a2 + 128) = *(a3 + 128);
    *(a2 + 160) = *(a3 + 160);
    *(a2 + 144) = *(a3 + 144);
    *(a2 + 184) = *(a3 + 184);
    *(a2 + 168) = *(a3 + 168);
    *(a2 + 16) = v15 & 0xFFFFFFBF;
    *(a2 + 32) = *(a3 + 32);
  }

  return result;
}

uint64_t ReturnLHSParseNodes(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    ReturnExpression(result, *(a2 + 88));
    ReturnExpression(v3, *(a2 + 96));
    ReturnExpression(v3, *(a2 + 104));
    ReturnExpression(v3, *(a2 + 120));
    ReturnExpression(v3, *(a2 + 112));
    ReturnExpression(v3, *(a2 + 128));
    ReturnExpression(v3, *(a2 + 136));
    ReturnExpression(v3, *(a2 + 144));
    ReturnExpression(v3, *(a2 + 160));
    ReturnExpression(v3, *(a2 + 152));
    ReturnLHSParseNodes(v3, *(a2 + 192));
    ReturnLHSParseNodes(v3, *(a2 + 200));
    ReturnLHSParseNodes(v3, *(a2 + 168));
    result = ReturnLHSParseNodes(v3, *(a2 + 176));
    if ((*(a2 + 16) & 0x40) != 0)
    {
      result = RemoveConstraint(v3, *(a2 + 32));
    }

    if (*(a2 + 184))
    {
      v4 = *(*(a2 + 48) + 128);
      if (v4)
      {
        result = v4(v3);
      }
    }

    v5 = *(v3 + 48);
    *(*(v5 + 472) + 32) = a2;
    **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 1664);
    *(*(*(v5 + 472) + 40) + 1664) = *(*(v5 + 472) + 32);
  }

  return result;
}

uint64_t ExpressionToLHSParseNodes(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  LHSParseNode = GetLHSParseNode(a1);
  v6 = v5;
  *v5 = *a2;
  *(v5 + 8) = *(a2 + 8);
  *(v5 + 192) = ExpressionToLHSParseNodes(a1, *(a2 + 24), LHSParseNode);
  v8 = ExpressionToLHSParseNodes(a1, *(a2 + 16), v7);
  *(v6 + 200) = v8;
  if (*v6 == 30)
  {
    v9 = v8;
    if (v8)
    {
      v10 = *(v6 + 8);
      v11 = 1;
      do
      {
        if (*v9 == 35)
        {
          NthRestriction = GetNthRestriction(v10, v11);
          *(v9 + 32) = ArgumentTypeToConstraintRecord(a1, NthRestriction);
          *(v9 + 16) |= 0x40u;
        }

        v9 = *(v9 + 192);
        ++v11;
      }

      while (v9);
    }
  }

  return v6;
}

void *LHSParseNodesToExpression(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(v4 + 472);
  v6 = *(*(v5 + 40) + 256);
  if (v6)
  {
    *(v5 + 32) = v6;
    *(*(*(v4 + 472) + 40) + 256) = **(*(v4 + 472) + 32);
    v7 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v7 = genalloc(a1, 0x20uLL);
  }

  *v7 = *a2;
  v7[1] = *(a2 + 8);
  v7[3] = LHSParseNodesToExpression(a1, *(a2 + 192));
  v7[2] = LHSParseNodesToExpression(a1, *(a2 + 200));
  return v7;
}

uint64_t AssignPatternMarkedFlag(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = (a2 & 1) << 15;
    do
    {
      *(v3 + 16) = *(v3 + 16) & 0xFFFF7FFF | v4;
      v5 = *(v3 + 200);
      if (v5)
      {
        AssignPatternMarkedFlag(v5, a2);
      }

      v6 = *(v3 + 168);
      if (v6)
      {
        AssignPatternMarkedFlag(v6, a2);
      }

      result = *(v3 + 176);
      if (result)
      {
        result = AssignPatternMarkedFlag(result, a2);
      }

      v3 = *(v3 + 192);
    }

    while (v3);
  }

  return result;
}

BOOL IsExistsSubjoin(uint64_t a1, int a2)
{
  v2 = *(a1 + 76);
  if (v2 - a2 != 2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(a1 + 80);
    if (v3 < v2)
    {
      break;
    }

    a1 = *(a1 + 200);
  }

  return v3 <= a2;
}

void *CombineLHSParseNodes(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  if (a2)
  {
    if (!a3)
    {
      return a2;
    }

    v6 = a2[1];
    v7 = *(a1 + 48);
    v8 = **(v7 + 360);
    v9 = *(a3 + 8);
    if (v6 != v8)
    {
      if (v9 != v8)
      {
        GetLHSParseNode(a1);
        v10 = *(*(a1 + 48) + 360);
        a2[24] = v3;
        *v11 = 30;
        *(v11 + 8) = *v10;
        *(v11 + 200) = a2;
        return v11;
      }

      v14 = *(a3 + 200);
      if (v14)
      {
        *(a3 + 200) = a2;
        a2[24] = v14;
        return v3;
      }

      goto LABEL_15;
    }

    v12 = a2[25];
    if (v9 == v6)
    {
      if (v12)
      {
        do
        {
          v15 = v12;
          v12 = *(v12 + 192);
        }

        while (v12);
        *(v15 + 192) = *(a3 + 200);
LABEL_15:
        *(*(v7 + 472) + 32) = a3;
        **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 1664);
        *(*(*(v7 + 472) + 40) + 1664) = *(*(v7 + 472) + 32);
        return a2;
      }
    }

    else if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *(v12 + 192);
      }

      while (v12);
      *(v13 + 192) = a3;
      return a2;
    }

    *(*(v7 + 472) + 32) = a2;
    **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 1664);
    *(*(*(v7 + 472) + 40) + 1664) = *(*(v7 + 472) + 32);
  }

  return v3;
}

uint64_t IncrementNandDepth(uint64_t result, unsigned __int16 *a2, int a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v4;
      if (v6 <= 0x97)
      {
        if (v6 == 150)
        {
          goto LABEL_12;
        }

        if (v6 == 151)
        {
LABEL_10:
          if (a3)
          {
            v7 = *(v4 + 25) == 0;
          }

          else
          {
            v7 = 0;
          }

          result = IncrementNandDepth(v5, *(v4 + 24), v7);
        }
      }

      else
      {
        switch(v6)
        {
          case 0x98u:
            result = SystemError(v5, "REORDER", 1);
            break;
          case 0x99u:
            goto LABEL_10;
          case 0x9Au:
LABEL_12:
            ++*(v4 + 19);
            if (!a3 || *(v4 + 25))
            {
              ++*(v4 + 20);
            }

            break;
        }
      }

      v4 = *(v4 + 25);
    }

    while (v4);
  }

  return result;
}

uint64_t PropagateNandDepth(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    do
    {
      *(v5 + 76) = a2;
      *(v5 + 80) = a3;
      PropagateNandDepth(*(v5 + 168), a2, a3);
      PropagateNandDepth(*(v5 + 176), a2, a3);
      result = PropagateNandDepth(*(v5 + 200), a2, a3);
      v5 = *(v5 + 192);
    }

    while (v5);
  }

  return result;
}

uint64_t PropagateJoinDepth(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      *(v3 + 84) = a2;
      v4 = *(v3 + 200);
      if (v4)
      {
        PropagateJoinDepth(v4, a2);
      }

      v5 = *(v3 + 168);
      if (v5)
      {
        PropagateJoinDepth(v5, a2);
      }

      result = *(v3 + 176);
      if (result)
      {
        result = PropagateJoinDepth(result, a2);
      }

      v3 = *(v3 + 192);
    }

    while (v3);
  }

  return result;
}

uint64_t PropagateIndexSlotPatternValues(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if ((*(result + 16) & 0x10) != 0)
  {
    *(result + 56) = a2;
    if (a3 >= 1)
    {
      *(result + 58) = a3;
    }

    *(result + 64) = a4;
    *(result + 72) = a5;
    for (i = *(result + 200); i; i = *(i + 192))
    {
      *(i + 56) = a2;
      *(i + 64) = a4;
      result = PropagateIndexSlotPatternValues(i, a2, *(i + 58), a4, a5);
    }
  }

  else
  {
    for (j = *(result + 200); j; j = *(j + 200))
    {
      v9 = j;
      do
      {
        *(v9 + 56) = a2;
        if (a3 >= 1)
        {
          *(v9 + 58) = a3;
        }

        *(v9 + 64) = a4;
        *(v9 + 72) = a5;
        v9 = *(v9 + 192);
      }

      while (v9);
    }
  }

  return result;
}

void *NetworkAssert(void *result, uint64_t a2, _DWORD *a3)
{
  if (*(*(result[6] + 144) + 84))
  {
    v3 = (*a3 & 0x20) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    if (*a3)
    {
      return EmptyDrive(result, a3, a2, 0);
    }

    else
    {
      return NetworkAssertRight(result, a2, a3, 0);
    }
  }

  return result;
}

void *EmptyDrive(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 72);
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = result[6];
  v10 = *(v9 + 144);
  v11 = v10[12];
  v12 = v10[13];
  v13 = v10[14];
  v10[12] = 0;
  *(*(v9 + 144) + 104) = a3;
  *(*(v9 + 144) + 112) = a2;
  result = EvaluateJoinExpression(result, v8, a2);
  v14 = v7[6];
  *(*(v14 + 352) + 8) = 0;
  *(*(v14 + 144) + 96) = v11;
  *(*(v14 + 144) + 104) = v12;
  *(*(v14 + 144) + 112) = v13;
  if (result)
  {
LABEL_34:
    v15 = *(a2 + 80);
    if (!v15)
    {
      goto LABEL_6;
    }

    v16 = v7[6];
    v17 = *(v16 + 144);
    v18 = v17[12];
    v19 = v17[13];
    v20 = v17[14];
    v17[12] = 0;
    *(*(v16 + 144) + 104) = a3;
    *(*(v16 + 144) + 112) = a2;
    result = EvaluateJoinExpression(v7, v15, a2);
    v21 = v7[6];
    *(*(v21 + 352) + 8) = 0;
    *(*(v21 + 144) + 96) = v18;
    *(*(v21 + 144) + 104) = v19;
    *(*(v21 + 144) + 112) = v20;
    if (result)
    {
LABEL_6:
      if ((*a2 & 8) != 0 || (*a2 & 0x14) == 4)
      {
        v23 = **(*(a2 + 56) + 16);
        if (!v23[3])
        {
          result = AddBlockedLink(v23, a3);
          v24 = v23[7];
          if (v24)
          {

            return PosEntryRetractBeta(v7, v23, v24, a4);
          }
        }
      }

      else
      {
        if ((*a2 & 0x10) != 0)
        {
          v22 = **(*(a2 + 56) + 16);
          if (*(v22 + 24))
          {
            return result;
          }

          result = AddBlockedLink(**(*(a2 + 56) + 16), a3);
        }

        else
        {
          v22 = 0;
        }

        for (i = *(a2 + 112); i; i = *(i + 2))
        {
          if ((*a2 & 0x10) != 0)
          {
            CreateEmptyPartialMatch(v7);
          }

          else
          {
            v26 = CopyPartialMatch(v7, a3);
          }

          v27 = v26;
          v28 = *(i + 1);
          if (*i)
          {
            v29 = *(v28 + 96);
            if (!v29)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v29 = *(v28 + 88);
            if (!v29)
            {
LABEL_24:
              v30 = 0;
              goto LABEL_25;
            }
          }

          v30 = BetaMemoryHashValue(v7, v29, v26, 0, v28);
LABEL_25:
          if ((*a2 & 0x10) != 0)
          {
            v31 = v22;
            v32 = 0;
          }

          else
          {
            v31 = 0;
            v32 = a3;
          }

          UpdateBetaPMLinks(v7, v27, v31, v32, *(i + 1), v30, *i);
          v33 = *(i + 1);
          if (*i)
          {
            result = NetworkAssertRight(v7, v27, v33, a4);
          }

          else
          {
            result = NetworkAssertLeft(v7, v27, v33, a4);
          }
        }
      }
    }
  }

  return result;
}

uint64_t NetworkAssertRight(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(result + 48) + 144) + 84))
  {
    v4 = (*a3 & 0x20) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v8 = result;
    if ((*a3 & 1) == 0)
    {
      result = GetLeftBetaMemory(a3, *(a2 + 8));
      if (!result)
      {
        return result;
      }

      v9 = result;
      v10 = v8[6];
      v11 = *(v10 + 144);
      v12 = v11[12];
      v13 = v11[13];
      v14 = v11[14];
      v11[13] = a2;
      *(*(v10 + 144) + 112) = a3;
      while (1)
      {
        while (1)
        {
          v15 = v9;
          v9 = v9[5];
          ++*(a3 + 48);
          if (v15[1] != *(a2 + 8) || v15[3])
          {
            goto LABEL_26;
          }

          v16 = *(a3 + 72);
          if (v16)
          {
            *(*(v8[6] + 144) + 96) = v15;
            result = EvaluateJoinExpression(v8, v16, a3);
            v17 = result;
            if (*(*(v8[6] + 352) + 8))
            {
              if ((*a3 & 8) != 0)
              {
                v17 = 1;
              }

              else
              {
                v17 = result;
              }

              result = SetEvaluationError(v8, 0);
            }
          }

          else
          {
            v17 = 1;
          }

          v18 = *(a3 + 80);
          if (v18)
          {
            if (v17)
            {
              *(*(v8[6] + 144) + 96) = v15;
              result = EvaluateJoinExpression(v8, v18, a3);
              v17 = result;
              if (*(*(v8[6] + 352) + 8))
              {
                result = SetEvaluationError(v8, 0);
              }
            }
          }

          if (!v17)
          {
            goto LABEL_26;
          }

          if ((*a3 & 0x10) == 0)
          {
            break;
          }

          AddBlockedLink(v15, a2);
          v20 = v8;
          v21 = v15;
          v22 = 0;
LABEL_30:
          result = PPDrive(v20, v21, v22, a3, a4);
          if (!v9)
          {
LABEL_31:
            v23 = v8[6];
            *(*(v23 + 144) + 96) = v12;
            *(*(v23 + 144) + 104) = v13;
            *(*(v23 + 144) + 112) = v14;
            return result;
          }
        }

        if ((*a3 & 0xC) == 0)
        {
          v20 = v8;
          v21 = v15;
          v22 = a2;
          goto LABEL_30;
        }

        result = AddBlockedLink(v15, a2);
        v19 = v15[7];
        if (v19)
        {
          result = PosEntryRetractBeta(v8, v15, v19, a4);
        }

LABEL_26:
        if (!v9)
        {
          goto LABEL_31;
        }
      }
    }

    return EmptyDrive();
  }

  return result;
}

uint64_t EvaluateJoinExpression(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  v4 = a2;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = *(a2 + 1);
  v7 = *(*(a1 + 48) + 360);
  v8 = v6 == *v7;
  if (v6 == *v7 || v6 == v7[1])
  {
    v9 = v6 != *v7;
    v4 = *(a2 + 2);
    if (v4)
    {
      goto LABEL_6;
    }

    return 1;
  }

  v9 = 0;
  v8 = 1;
  while (1)
  {
LABEL_6:
    v10 = *(a1 + 48);
    v11 = *(v10 + 352);
    v12 = *v4;
    v13 = v11[v12 + 3];
    if (v13 && *(v13 + 40))
    {
      v14 = *v11;
      *v11 = v4;
      result = (*(*(*(v10 + 352) + 8 * v12 + 24) + 40))(a1, *(v4 + 1), &v24);
      **(*(a1 + 48) + 352) = v14;
      goto LABEL_24;
    }

    v16 = *(v4 + 1);
    v17 = *(v10 + 360);
    if (v16 == v17[1])
    {
      v20 = EvaluateJoinExpression(a1, v4, a3);
      v21 = *(*(*(a1 + 48) + 352) + 8);
      if (v20 == 1)
      {
        goto LABEL_21;
      }

      result = 0;
      goto LABEL_23;
    }

    if (v16 != *v17)
    {
      break;
    }

    result = EvaluateJoinExpression(a1, v4, a3);
    v21 = *(*(*(a1 + 48) + 352) + 8);
    if (result)
    {
LABEL_21:
      if (v21)
      {
        return 0;
      }

      result = 1;
      goto LABEL_28;
    }

LABEL_23:
    if (v21)
    {
      return result;
    }

LABEL_24:
    if (result)
    {
      v22 = 0;
    }

    else
    {
      v22 = v8;
    }

    if (v22)
    {
      return 0;
    }

LABEL_28:
    if (result == 1 && v9)
    {
      return 1;
    }

    v4 = *(v4 + 3);
    if (!v4)
    {
      return result;
    }
  }

  EvaluateExpression(a1, v4, &v24);
  if (!*(*(*(a1 + 48) + 352) + 8))
  {
    v18 = v25;
    result = v18 != EnvFalseSymbol(a1) || WORD4(v24) != 2;
    goto LABEL_24;
  }

  PrintErrorID(a1, "DRIVE", 1, 1);
  EnvPrintRouter(a1, "werror", "This error occurred in the join network\n");
  EnvPrintRouter(a1, "werror", "   Problem resides in associated join\n");
  TraceErrorToRule(a1, a3, "      ");
  EnvPrintRouter(a1, "werror", "\n");
  return 0;
}

uint64_t PPDrive(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a4 + 112);
  if (v5)
  {
    v9 = result;
    do
    {
      v10 = MergePartialMatches(v9, a2, a3);
      v11 = *(v5 + 1);
      if (*v5)
      {
        v12 = *(v11 + 96);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v12 = *(v11 + 88);
        if (!v12)
        {
LABEL_7:
          v13 = 0;
          goto LABEL_8;
        }
      }

      v13 = BetaMemoryHashValue(v9, v12, v10, 0, v11);
LABEL_8:
      UpdateBetaPMLinks(v9, v10, a2, a3, *(v5 + 1), v13, *v5);
      v14 = *(v5 + 1);
      if (*v5)
      {
        result = NetworkAssertRight(v9, v10, v14, a5);
      }

      else
      {
        result = NetworkAssertLeft(v9, v10, v14, a5);
      }

      v5 = *(v5 + 2);
    }

    while (v5);
  }

  return result;
}

uint64_t NetworkAssertLeft(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  if (a4 == 1)
  {
    result = PartialMatchWillBeDeleted(result, a2);
    if (result)
    {
      return result;
    }
  }

  v8 = *(v7 + 48);
  v9 = *(v8 + 144);
  if (*(v9 + 84))
  {
    if ((*a3 & 0x20) == 0)
    {
      return result;
    }
  }

  v10 = *(a3 + 136);
  if (v10)
  {

    return AddActivation(v7, v10, a2);
  }

  v11 = *(a3 + 104);
  if (!v11)
  {
    v12 = *(a3 + 72);
    if (!v12)
    {
      goto LABEL_16;
    }

    v14 = *(v9 + 96);
    v13 = *(v9 + 104);
    v15 = *(v9 + 112);
    *(v9 + 96) = a2;
    *(*(v8 + 144) + 104) = 0;
    *(*(v8 + 144) + 112) = a3;
    result = EvaluateJoinExpression(v7, v12, a3);
    v16 = result;
    v17 = *(v7 + 48);
    if (*(*(v17 + 352) + 8))
    {
      result = SetEvaluationError(v7, 0);
      v17 = *(v7 + 48);
    }

    *(*(v17 + 144) + 96) = v14;
    *(*(v17 + 144) + 104) = v13;
    *(*(v17 + 144) + 112) = v15;
    if (v16)
    {
LABEL_16:

      return PPDrive(v7, a2, 0, a3, a4);
    }

    return result;
  }

  if ((*a3 & 4) != 0)
  {
    result = GetRightBetaMemory(a3, *(a2 + 8));
  }

  else
  {
    result = GetAlphaMemory(v7, v11, *(a2 + 8));
  }

  v18 = result;
  if (!result && !*(a3 + 80))
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v29 = 1;
LABEL_47:
    if ((*a3 & 0xC) != 0 && (*a3 & 0x10) == 0 && !*(a2 + 24))
    {
      v30 = *(a3 + 80);
      if (!v30)
      {
        goto LABEL_54;
      }

      *(*(*(v7 + 48) + 144) + 104) = 0;
      result = EvaluateJoinExpression(v7, v30, a3);
      v31 = result;
      if (*(*(*(v7 + 48) + 352) + 8))
      {
        result = SetEvaluationError(v7, 0);
      }

      if (v31)
      {
LABEL_54:
        result = PPDrive(v7, a2, 0, a3, a4);
      }
    }

    if ((v29 & 1) == 0)
    {
      goto LABEL_56;
    }

    return result;
  }

  v19 = *(v7 + 48);
  v20 = *(v19 + 144);
  v22 = v20[12];
  v21 = v20[13];
  v23 = v20[14];
  v20[12] = a2;
  *(*(v19 + 144) + 112) = a3;
  if (!result)
  {
    goto LABEL_46;
  }

  while (1)
  {
    if (a4 == 1)
    {
      result = PartialMatchWillBeDeleted(v7, v18);
      if (result)
      {
        goto LABEL_43;
      }
    }

    ++*(a3 + 48);
    v24 = *(a3 + 72);
    if (v24)
    {
      *(*(*(v7 + 48) + 144) + 104) = v18;
      result = EvaluateJoinExpression(v7, v24, a3);
      v25 = result;
      if (*(*(*(v7 + 48) + 352) + 8))
      {
        if ((*a3 & 8) != 0)
        {
          v25 = 1;
        }

        else
        {
          v25 = result;
        }

        result = SetEvaluationError(v7, 0);
      }
    }

    else
    {
      v25 = 1;
    }

    v26 = *(a3 + 80);
    if (v26)
    {
      v27 = v25 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v28 = *a3;
      if ((*a3 & 0x10) == 0)
      {
        goto LABEL_41;
      }

      *(*(*(v7 + 48) + 144) + 104) = v18;
      result = EvaluateJoinExpression(v7, v26, a3);
      v25 = result;
      if (*(*(*(v7 + 48) + 352) + 8))
      {
        result = SetEvaluationError(v7, 0);
      }
    }

    if (v25)
    {
      break;
    }

LABEL_43:
    v18 = *(v18 + 40);
    if (!v18)
    {
      goto LABEL_46;
    }
  }

  v28 = *a3;
LABEL_41:
  if ((v28 & 0x1C) == 0)
  {
    result = PPDrive(v7, a2, v18, a3, a4);
    goto LABEL_43;
  }

  result = AddBlockedLink(a2, v18);
  if ((v28 & 0x10) == 0)
  {
LABEL_46:
    v29 = 0;
    goto LABEL_47;
  }

  result = PPDrive(v7, a2, 0, a3, a4);
LABEL_56:
  v32 = *(v7 + 48);
  *(*(v32 + 144) + 96) = v22;
  *(*(v32 + 144) + 104) = v21;
  *(*(v32 + 144) + 112) = v23;
  return result;
}

uint64_t EvaluateSecondaryNetworkTest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 80);
  if (!v4)
  {
    return 1;
  }

  v6 = *(a1 + 48);
  v7 = *(v6 + 144);
  v8 = v7[12];
  v9 = v7[13];
  v10 = v7[14];
  v7[12] = a2;
  *(*(v6 + 144) + 104) = 0;
  *(*(v6 + 144) + 112) = a3;
  result = EvaluateJoinExpression(a1, v4, a3);
  v12 = *(a1 + 48);
  *(*(v12 + 352) + 8) = 0;
  *(*(v12 + 144) + 96) = v8;
  *(*(v12 + 144) + 104) = v9;
  *(*(v12 + 144) + 112) = v10;
  return result;
}

uint64_t BetaMemoryHashValue(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a2;
  v7 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v8 = *(a1 + 48);
  v9 = *(v8 + 144);
  v10 = v9[12];
  v11 = v9[13];
  v9[12] = a3;
  v12 = v9[14];
  *(*(v8 + 144) + 104) = a4;
  *(*(v8 + 144) + 112) = a5;
  v13 = 1;
  do
  {
    v14 = *(a1 + 48);
    v15 = *(v14 + 352);
    v16 = *v5;
    v17 = v15[v16 + 3];
    if (v17 && *(v17 + 40))
    {
      v18 = *v15;
      *v15 = v5;
      (*(*(*(v14 + 352) + 8 * v16 + 24) + 40))(a1, *(v5 + 1), &v22);
      **(*(a1 + 48) + 352) = v18;
    }

    else
    {
      EvaluateExpression(a1, v5, &v22);
    }

    if (WORD4(v22) > 4u)
    {
      switch(WORD4(v22))
      {
        case 5u:
          v19 = *(v23 + 24);
          break;
        case 6u:
          v19 = v23;
          break;
        case 8u:
LABEL_14:
          v19 = *(v23 + 16) >> 3;
          break;
        default:
          goto LABEL_16;
      }

      v7 += v13 * v19;
      goto LABEL_16;
    }

    if (WORD4(v22) - 2 < 2 || WORD4(v22) < 2u)
    {
      goto LABEL_14;
    }

LABEL_16:
    v5 = *(v5 + 3);
    v13 *= 509;
  }

  while (v5);
  v20 = *(a1 + 48);
  *(*(v20 + 144) + 96) = v10;
  *(*(v20 + 144) + 104) = v11;
  *(*(v20 + 144) + 112) = v12;
  return v7;
}

uint64_t EPMDrive(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 112);
  if (v4)
  {
    v7 = result;
    do
    {
      CreateEmptyPartialMatch(v7);
      v9 = v8;
      UpdateBetaPMLinks(v7, v8, a2, 0, *(v4 + 1), 0, *v4);
      v10 = *(v4 + 1);
      if (*v4)
      {
        result = NetworkAssertRight(v7, v9, v10, a4);
      }

      else
      {
        result = NetworkAssertLeft(v7, v9, v10, a4);
      }

      v4 = *(v4 + 2);
    }

    while (v4);
  }

  return result;
}

void sub_2325C9538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2325D1918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2325D2180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  objc_sync_exit(v19);
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_1_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_FAULT);
}

void sub_2325D642C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak((v39 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a39);
  objc_destroyWeak((v41 - 192));
  objc_destroyWeak((v41 - 144));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2325E8DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2325EA0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2325EAD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2325EDDE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2325EE014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2325EEEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = SymptomsCAObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2325F0704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v29 = *(*v27 + 16);
      v30 = v28;
      v31 = v29(v27);
      *(v24 - 96) = 136315138;
      *(v24 - 92) = v31;
      _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Exception during AnalyticsEventObserver startObservingEventList because %s", (v24 - 96), 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x2325F06C4);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_1_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_FAULT);
}

id activityLogHandle()
{
  if (activityLogHandle_activityPred != -1)
  {
    activityLogHandle_cold_1();
  }

  v1 = activityLogHandle_activityHandle;

  return v1;
}

uint64_t __activityLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd.NWActivityHelper", "activity");
  v1 = activityLogHandle_activityHandle;
  activityLogHandle_activityHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id metricstreamLogHandle()
{
  if (metricstreamLogHandle_metricstreamPred != -1)
  {
    metricstreamLogHandle_cold_1();
  }

  v1 = metricstreamLogHandle_metricstreamHandle;

  return v1;
}

uint64_t __metricstreamLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd.NWActivityHelper", "metricstream");
  v1 = metricstreamLogHandle_metricstreamHandle;
  metricstreamLogHandle_metricstreamHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id algosLogHandle()
{
  if (algosLogHandle_algosPred != -1)
  {
    algosLogHandle_cold_1();
  }

  v1 = algosLogHandle_algosHandle;

  return v1;
}

uint64_t __algosLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd.NWActivityHelper", "algos");
  v1 = algosLogHandle_algosHandle;
  algosLogHandle_algosHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t MultifieldFunctionDefinitions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0xAu, 8uLL, 0);
  EnvDefineFunction2(a1, "first$", 109, FirstFunction, "FirstFunction", "11m");
  EnvDefineFunction2(a1, "rest$", 109, RestFunction, "RestFunction", "11m");
  EnvDefineFunction2(a1, "subseq$", 109, SubseqFunction, "SubseqFunction", "33im");
  EnvDefineFunction2(a1, "delete-member$", 109, DeleteMemberFunction, "DeleteMemberFunction", "2*um");
  EnvDefineFunction2(a1, "replace-member$", 109, ReplaceMemberFunction, "ReplaceMemberFunction", "3*um");
  EnvDefineFunction2(a1, "delete$", 109, DeleteFunction, "DeleteFunction", "33im");
  EnvDefineFunction2(a1, "replace$", 109, ReplaceFunction, "ReplaceFunction", "4**mii");
  EnvDefineFunction2(a1, "insert$", 109, InsertFunction, "InsertFunction", "3**mi");
  EnvDefineFunction2(a1, "explode$", 109, ExplodeFunction, "ExplodeFunction", "11s");
  EnvDefineFunction2(a1, "implode$", 115, ImplodeFunction, "ImplodeFunction", "11m");
  EnvDefineFunction2(a1, "nth$", 117, NthFunction, "NthFunction", "22*im");
  EnvDefineFunction2(a1, "member$", 117, MemberFunction, "MemberFunction", "22*um");
  EnvDefineFunction2(a1, "subsetp", 98, SubsetpFunction, "SubsetpFunction", "22*mm");
  EnvDefineFunction2(a1, "progn$", 117, MultifieldPrognFunction, "MultifieldPrognFunction", 0);
  EnvDefineFunction2(a1, "foreach", 117, ForeachFunction, "ForeachFunction", 0);
  EnvDefineFunction2(a1, "str-implode", 115, ImplodeFunction, "ImplodeFunction", "11m");
  EnvDefineFunction2(a1, "str-explode", 109, ExplodeFunction, "ExplodeFunction", "11s");
  EnvDefineFunction2(a1, "subset", 98, SubsetpFunction, "SubsetpFunction", "22*mm");
  EnvDefineFunction2(a1, "nth", 117, NthFunction, "NthFunction", "22*im");
  EnvDefineFunction2(a1, "mv-replace", 109, MVReplaceFunction, "MVReplaceFunction", "33*im");
  EnvDefineFunction2(a1, "member", 117, MemberFunction, "MemberFunction", "22*um");
  EnvDefineFunction2(a1, "mv-subseq", 109, MVSubseqFunction, "MVSubseqFunction", "33*iim");
  EnvDefineFunction2(a1, "mv-delete", 109, MVDeleteFunction, "MVDeleteFunction", "22*im");
  AddFunctionParser(a1, "progn$", MultifieldPrognParser);
  AddFunctionParser(a1, "foreach", ForeachParser);
  FuncSeqOvlFlags(a1, "progn$", 0, 0);
  FuncSeqOvlFlags(a1, "foreach", 0, 0);
  EnvDefineFunction2(a1, "(get-progn$-field)", 117, GetMvPrognField, "GetMvPrognField", "00");

  return EnvDefineFunction2(a1, "(get-progn$-index)", 108, GetMvPrognIndex, "GetMvPrognIndex", "00");
}

double FirstFunction(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  if (!EnvArgTypeCheck(a1, "first$", 1, 4, &v7))
  {
    return EnvSetMultifieldErrorValue(a1, a2);
  }

  *(a2 + 8) = 4;
  v5 = v9;
  v6 = v8;
  if (v9 >= *(&v8 + 1))
  {
    v5 = *(&v8 + 1);
  }

  *(a2 + 24) = *(&v8 + 1);
  *(a2 + 32) = v5;
  *(a2 + 16) = v6;
  return result;
}

double RestFunction(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  if (!EnvArgTypeCheck(a1, "rest$", 1, 4, &v7))
  {
    return EnvSetMultifieldErrorValue(a1, a2);
  }

  *(a2 + 8) = 4;
  v5 = *(&v8 + 1);
  v6 = v9;
  if (*(&v8 + 1) <= v9)
  {
    v5 = *(&v8 + 1) + 1;
  }

  *(a2 + 16) = v8;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

void SubseqFunction(uint64_t a1, uint64_t a2)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  if (EnvArgTypeCheck(a1, "subseq$", 1, 4, &v11) && (v4 = v12, v5 = v13, EnvArgTypeCheck(a1, "subseq$", 2, 1, &v11)) && (v6 = *(v12 + 24), EnvArgTypeCheck(a1, "subseq$", 3, 1, &v11)) && ((v7 = *(v12 + 24), v7 >= 1) ? (v8 = v7 < v6) : (v8 = 1), !v8 && (v9 = v5 - *(&v4 + 1) + 1, v6 <= v9)))
  {
    if (v7 >= v9)
    {
      v7 = v5 - *(&v4 + 1) + 1;
    }

    if (v6 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6;
    }

    *(a2 + 8) = 4;
    *(a2 + 32) = *(&v4 + 1) - 1 + v7;
    *(a2 + 16) = v4;
    *(a2 + 24) = *(&v4 + 1) - 1 + v10;
  }

  else
  {
    EnvSetMultifieldErrorValue(a1, a2);
  }
}

double DeleteMemberFunction(uint64_t a1, _OWORD *a2)
{
  v4 = EnvArgCountCheck(a1, "delete-member$", 1u, 2);
  if (v4 == -1)
  {
    SetEvaluationError(a1, 1);

    return EnvSetMultifieldErrorValue(a1, a2);
  }

  else
  {
    v5 = v4;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    if (EnvArgTypeCheck(a1, "delete-member$", 1, 4, &v19))
    {
      v6 = v5 - 1;
      v7 = gm2(a1, (48 * (v5 - 1)));
      v8 = v7;
      if (v5 < 2)
      {
LABEL_7:
        v14 = 0;
        v15 = 0;
        if (!FindDOsInSegment(v8, v6, &v19, &v15, &v14, 0, 0))
        {
LABEL_11:
          rm(a1, v8, (48 * v6));
          v12 = v20;
          *a2 = v19;
          a2[1] = v12;
          result = *&v21;
          a2[2] = v21;
          return result;
        }

        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        while (DeleteMultiValueField(a1, &v16, &v19, v15, v14, "delete-member$"))
        {
          v19 = v16;
          v20 = v17;
          v21 = v18;
          if (!FindDOsInSegment(v8, v6, &v19, &v15, &v14, 0, 0))
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v9 = (v5 + 1);
        v10 = 2;
        v11 = v7;
        while (EnvRtnUnknown(a1, v10, v11))
        {
          ++v10;
          v11 += 48;
          if (v9 == v10)
          {
            goto LABEL_7;
          }
        }
      }

      rm(a1, v8, (48 * v6));
    }

    SetEvaluationError(a1, 1);
    return EnvSetMultifieldErrorValue(a1, a2);
  }
}

void ReplaceMemberFunction(uint64_t a1, _OWORD *a2)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v4 = EnvArgCountCheck(a1, "replace-member$", 1u, 3);
  if (v4 != -1)
  {
    v5 = v4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    if (EnvArgTypeCheck(a1, "replace-member$", 1, 4, &v28) && EnvRtnUnknown(a1, 2, &v25))
    {
      v19 = WORD4(v25);
      v7 = *(&v26 + 1);
      v6 = v27;
      v8 = v5 - 2;
      v9 = gm2(a1, (48 * (v5 - 2)));
      v10 = v9;
      if (v5 < 3)
      {
LABEL_8:
        v20 = 0;
        v21 = 0;
        if (!FindDOsInSegment(v10, v8, &v28, &v21, &v20, 0, 0))
        {
LABEL_14:
          rm(a1, v10, (48 * v8));
          v16 = v29;
          *a2 = v28;
          a2[1] = v16;
          a2[2] = v30;
LABEL_20:
          v18 = *MEMORY[0x277D85DE8];
          return;
        }

        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        if (v19 == 4)
        {
          v14 = v6 - v7;
        }

        else
        {
          v14 = 0;
        }

        while (1)
        {
          v15 = v21;
          if (!ReplaceMultiValueField(a1, &v22, &v28, v21, v20, &v25, "replace-member$"))
          {
            break;
          }

          v28 = v22;
          v29 = v23;
          v30 = v24;
          v31[0] = 1;
          v31[1] = v14 + v15;
          if (!FindDOsInSegment(v10, v8, &v28, &v21, &v20, v31, 1))
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v11 = (v5 + 1);
        v12 = 3;
        v13 = v9;
        while (EnvRtnUnknown(a1, v12, v13))
        {
          ++v12;
          v13 += 48;
          if (v11 == v12)
          {
            goto LABEL_8;
          }
        }
      }

      rm(a1, v10, (48 * v8));
    }

    SetEvaluationError(a1, 1);
    EnvSetMultifieldErrorValue(a1, a2);
    goto LABEL_20;
  }

  SetEvaluationError(a1, 1);
  v17 = *MEMORY[0x277D85DE8];

  EnvSetMultifieldErrorValue(a1, a2);
}

double DeleteFunction(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  if (!EnvArgTypeCheck(a1, "delete$", 1, 4, v11) || !EnvArgTypeCheck(a1, "delete$", 2, 1, &v8) || !EnvArgTypeCheck(a1, "delete$", 3, 1, &v5) || !DeleteMultiValueField(a1, a2, v11, *(v9 + 24), *(v6 + 24), "delete$"))
  {
    SetEvaluationError(a1, 1);
    return EnvSetMultifieldErrorValue(a1, a2);
  }

  return result;
}

double ReplaceFunction(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  if (!EnvArgTypeCheck(a1, "replace$", 1, 4, v12) || !EnvArgTypeCheck(a1, "replace$", 2, 1, &v9) || !EnvArgTypeCheck(a1, "replace$", 3, 1, &v6))
  {
    goto LABEL_8;
  }

  if (*(*(*(*(*(**(*(a1 + 48) + 352) + 16) + 24) + 24) + 24) + 24))
  {
    StoreInMultifield(a1, v5, *(*(*(*(**(*(a1 + 48) + 352) + 16) + 24) + 24) + 24), 1);
  }

  else
  {
    EvaluateExpression(a1, *(*(*(*(**(*(a1 + 48) + 352) + 16) + 24) + 24) + 24), v5);
  }

  if (!ReplaceMultiValueField(a1, a2, v12, *(v10 + 24), *(v7 + 24), v5, "replace$"))
  {
LABEL_8:
    SetEvaluationError(a1, 1);
    return EnvSetMultifieldErrorValue(a1, a2);
  }

  return result;
}

double InsertFunction(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  if (!EnvArgTypeCheck(a1, "insert$", 1, 4, v9) || !EnvArgTypeCheck(a1, "insert$", 2, 1, &v6))
  {
    goto LABEL_7;
  }

  if (*(*(*(*(**(*(a1 + 48) + 352) + 16) + 24) + 24) + 24))
  {
    StoreInMultifield(a1, v5, *(*(*(**(*(a1 + 48) + 352) + 16) + 24) + 24), 1);
  }

  else
  {
    EvaluateExpression(a1, *(*(*(**(*(a1 + 48) + 352) + 16) + 24) + 24), v5);
  }

  if (!InsertMultiValueField(a1, a2, v9, *(v7 + 24), v5, "insert$"))
  {
LABEL_7:
    SetEvaluationError(a1, 1);
    return EnvSetMultifieldErrorValue(a1, a2);
  }

  return result;
}

void ExplodeFunction(uint64_t a1, uint64_t a2)
{
  if (EnvArgCountCheck(a1, "explode$", 0, 1) == -1)
  {
    SetHaltExecution(a1, 1);
    SetEvaluationError(a1, 1);

    EnvSetMultifieldErrorValue(a1, a2);
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    if (EnvArgTypeCheck(a1, "explode$", 1, 3, &v6))
    {
      Multifield = StringToMultifield(a1, *(v7 + 24));
      if (Multifield)
      {
        v5 = Multifield[1] - 1;
      }

      else
      {
        Multifield = EnvCreateMultifield(a1, 0);
        v5 = -1;
      }

      *(a2 + 8) = 4;
      *(a2 + 24) = 0;
      *(a2 + 32) = v5;
      *(a2 + 16) = Multifield;
    }

    else
    {
      SetHaltExecution(a1, 1);
      SetEvaluationError(a1, 1);
      EnvSetMultifieldErrorValue(a1, a2);
    }
  }
}

uint64_t *ImplodeFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "implode$", 0, 1) == -1)
  {

    return EnvAddSymbol(a1, "");
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    if (EnvArgTypeCheck(a1, "implode$", 1, 4, v9))
    {
      return ImplodeMultifield(a1, v9, v2, v3, v4, v5, v6, v7);
    }

    else
    {
      return EnvAddSymbol(a1, "");
    }
  }
}

uint64_t *NthFunction(uint64_t a1, uint64_t a2)
{
  if (EnvArgCountCheck(a1, "nth$", 0, 2) == -1)
  {
    *(a2 + 8) = 2;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    if (EnvArgTypeCheck(a1, "nth$", 1, 1, &v11) && EnvArgTypeCheck(a1, "nth$", 2, 4, &v8))
    {
      v4 = *(v12 + 24);
      if (v4 >= 1 && v4 <= v10 - *(&v9 + 1) + 1)
      {
        v7 = v9 + 16 * v4 + 16 * *(&v9 + 1);
        *(a2 + 8) = *(v7 + 8);
        result = *(v7 + 16);
        goto LABEL_11;
      }
    }

    *(a2 + 8) = 2;
  }

  result = EnvAddSymbol(a1, "nil");
LABEL_11:
  *(a2 + 16) = result;
  return result;
}

double MemberFunction(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  if (EnvArgCountCheck(a1, "member$", 0, 2) != -1)
  {
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    EnvRtnUnknown(a1, 1, v13);
    if (EnvArgTypeCheck(a1, "member$", 2, 4, v12))
    {
      v10 = 0;
      v11 = 0;
      if (FindDOsInSegment(v13, 1, v12, &v11, &v10, 0, 0))
      {
        v5 = v10;
        v6 = v11;
        if (v11 == v10)
        {
          *(a2 + 8) = 1;
          *(a2 + 16) = EnvAddLong(a1, v6);
        }

        else
        {
          *(a2 + 8) = 4;
          Multifield = EnvCreateMultifield(a1, 2);
          *(a2 + 16) = Multifield;
          *(Multifield + 12) = 1;
          v8 = EnvAddLong(a1, v6);
          v9 = *(a2 + 16);
          *(v9 + 32) = v8;
          *(v9 + 40) = 1;
          *(*(a2 + 16) + 48) = EnvAddLong(a1, v5);
          result = 0.0;
          *(a2 + 24) = xmmword_232816A80;
        }
      }
    }
  }

  return result;
}

uint64_t SubsetpFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "subsetp", 0, 2) == -1)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = EnvArgTypeCheck(a1, "subsetp", 1, 4, &v15);
  if (result)
  {
    result = EnvArgTypeCheck(a1, "subsetp", 2, 4, &v12);
    if (result)
    {
      v3 = v17;
      if (v17 - *(&v16 + 1) == -1)
      {
        return 1;
      }

      if (v14 - *(&v13 + 1) != -1)
      {
        v10 = 0u;
        v11 = 0u;
        v9 = 0u;
        v4 = (v16 + 16 * *(&v16 + 1) + 32);
        v5 = *(&v16 + 1) - 1;
        while (++v5 <= v3)
        {
          v6 = v4 + 2;
          WORD4(v9) = *(v4 - 4);
          *&v10 = *v4;
          result = FindDOsInSegment(&v9, 1, &v12, &v8, &v7, 0, 0);
          v4 = v6;
          if (!result)
          {
            return result;
          }
        }

        return 1;
      }

      return 0;
    }
  }

  return result;
}

double MVReplaceFunction(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  if (!EnvArgTypeCheck(a1, "mv-replace", 1, 1, &v7) || !EnvArgTypeCheck(a1, "mv-replace", 2, 4, v6) || (EvaluateExpression(a1, *(*(*(**(*(a1 + 48) + 352) + 16) + 24) + 24), v5), !ReplaceMultiValueField(a1, a2, v6, *(v8 + 24), *(v8 + 24), v5, "mv-replace")))
  {
    SetEvaluationError(a1, 1);
    return EnvSetMultifieldErrorValue(a1, a2);
  }

  return result;
}

void MVSubseqFunction(uint64_t a1, uint64_t a2)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  if (EnvArgTypeCheck(a1, "mv-subseq", 1, 1, &v11) && (v4 = *(v12 + 24), EnvArgTypeCheck(a1, "mv-subseq", 2, 1, &v11)) && ((v5 = *(v12 + 24), v5 >= 1) ? (v6 = v5 < v4) : (v6 = 1), !v6 && EnvArgTypeCheck(a1, "mv-subseq", 3, 4, &v11) && (v7 = *(&v12 + 1), v8 = v13 - *(&v12 + 1) + 1, v4 <= v8)))
  {
    v9 = v12;
    if (v5 < v8)
    {
      v8 = v5;
    }

    if (v4 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v4;
    }

    *(a2 + 8) = 4;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10 + v7 - 1;
    *(a2 + 32) = v7 + v8 - 1;
  }

  else
  {
    EnvSetMultifieldErrorValue(a1, a2);
  }
}

double MVDeleteFunction(uint64_t a1, uint64_t a2)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  if (!EnvArgTypeCheck(a1, "mv-delete", 1, 1, &v6) || !EnvArgTypeCheck(a1, "mv-delete", 2, 4, v5) || !DeleteMultiValueField(a1, a2, v5, *(v7 + 24), *(v7 + 24), "mv-delete"))
  {
    SetEvaluationError(a1, 1);
    return EnvSetMultifieldErrorValue(a1, a2);
  }

  return result;
}

uint64_t MultifieldPrognParser(uint64_t a1, uint64_t a2, char *a3)
{
  v17 = 0;
  v18 = 0;
  __s = 0;
  SavePPBuffer(a1, " ");
  GetToken(a1, a3, &v17);
  if (v17 != 170)
  {
    v6 = ParseAtomOrExpression(a1, a3, &v17);
LABEL_6:
    *(a2 + 16) = v6;
    if (!v6)
    {
LABEL_10:
      ReturnExpression(a1, a2);
      return 0;
    }

    v7 = v6;
    v8 = 0;
    goto LABEL_8;
  }

  GetToken(a1, a3, &v17);
  if (v17 != 35)
  {
    if (v17 != 2)
    {
LABEL_9:
      SyntaxErrorMessage(a1, "progn$");
      goto LABEL_10;
    }

    v6 = Function2Parse(a1, a3, *(v18 + 24));
    goto LABEL_6;
  }

  v8 = v18;
  SavePPBuffer(a1, " ");
  v16 = ParseAtomOrExpression(a1, a3, 0);
  *(a2 + 16) = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

  GetToken(a1, a3, &v17);
  if (v17 != 171)
  {
    goto LABEL_9;
  }

  PPBackup(a1);
  SavePPBuffer(a1, __s);
  SavePPBuffer(a1, " ");
  v7 = *(a2 + 16);
LABEL_8:
  if (CheckArgumentAgainstRestriction(a1, v7, 109))
  {
    goto LABEL_9;
  }

  ParsedBindNames = GetParsedBindNames(a1);
  SetParsedBindNames(a1, 0);
  IncrementIndentDepth(a1, 3);
  v11 = *(*(a1 + 48) + 360);
  *(v11 + 80) = **(v11 + 72);
  *(v11 + 84) = 1;
  PPCRAndIndent(a1);
  *(*(a2 + 16) + 24) = GroupActions(a1, a3, &v17, 1, 0, 0);
  DecrementIndentDepth(a1, 3);
  PPBackup(a1);
  PPBackup(a1);
  SavePPBuffer(a1, __s);
  v12 = *(a2 + 16);
  v13 = *(v12 + 24);
  if (!v13)
  {
    ClearParsedBindNames(a1);
    SetParsedBindNames(a1, ParsedBindNames);
    goto LABEL_10;
  }

  *(v12 + 24) = *(v13 + 16);
  *(v13 + 16) = 0;
  ReturnExpression(a1, v13);
  v14 = GetParsedBindNames(a1);
  if (v14)
  {
    while (1)
    {
      v15 = v14;
      if (v8)
      {
        if (!strcmp(*(*v14 + 24), *(v8 + 24)))
        {
          break;
        }
      }

      v14 = *(v15 + 16);
      if (!v14)
      {
        *(v15 + 16) = ParsedBindNames;
        goto LABEL_23;
      }
    }

    ClearParsedBindNames(a1);
    SetParsedBindNames(a1, ParsedBindNames);
    PrintErrorID(a1, "MULTIFUN", 2, 0);
    EnvPrintRouter(a1, "werror", "Cannot rebind field variable in function progn$.\n");
    goto LABEL_10;
  }

  SetParsedBindNames(a1, ParsedBindNames);
LABEL_23:
  if (v8)
  {
    ReplaceMvPrognFieldVars(a1, v8, *(*(a2 + 16) + 24), 0);
  }

  return a2;
}

uint64_t ForeachParser(uint64_t a1, uint64_t a2, char *a3)
{
  v15 = 0;
  v16 = 0;
  __s = 0;
  SavePPBuffer(a1, " ");
  GetToken(a1, a3, &v15);
  if (v15 != 35)
  {
    goto LABEL_4;
  }

  v6 = v16;
  SavePPBuffer(a1, " ");
  v7 = ParseAtomOrExpression(a1, a3, 0);
  *(a2 + 16) = v7;
  if (!v7)
  {
LABEL_5:
    ReturnExpression(a1, a2);
    return 0;
  }

  if (CheckArgumentAgainstRestriction(a1, v7, 109))
  {
LABEL_4:
    SyntaxErrorMessage(a1, "foreach");
    goto LABEL_5;
  }

  ParsedBindNames = GetParsedBindNames(a1);
  SetParsedBindNames(a1, 0);
  IncrementIndentDepth(a1, 3);
  v10 = *(*(a1 + 48) + 360);
  *(v10 + 80) = **(v10 + 72);
  *(v10 + 84) = 1;
  PPCRAndIndent(a1);
  *(*(a2 + 16) + 24) = GroupActions(a1, a3, &v15, 1, 0, 0);
  DecrementIndentDepth(a1, 3);
  PPBackup(a1);
  PPBackup(a1);
  SavePPBuffer(a1, __s);
  v11 = *(a2 + 16);
  v12 = *(v11 + 24);
  if (!v12)
  {
    ClearParsedBindNames(a1);
    SetParsedBindNames(a1, ParsedBindNames);
    goto LABEL_5;
  }

  *(v11 + 24) = *(v12 + 16);
  *(v12 + 16) = 0;
  ReturnExpression(a1, v12);
  v13 = GetParsedBindNames(a1);
  if (v13)
  {
    while (1)
    {
      v14 = v13;
      if (v6)
      {
        if (!strcmp(*(*v13 + 24), *(v6 + 24)))
        {
          break;
        }
      }

      v13 = *(v14 + 16);
      if (!v13)
      {
        *(v14 + 16) = ParsedBindNames;
        goto LABEL_15;
      }
    }

    ClearParsedBindNames(a1);
    SetParsedBindNames(a1, ParsedBindNames);
    PrintErrorID(a1, "MULTIFUN", 2, 0);
    EnvPrintRouter(a1, "werror", "Cannot rebind field variable in function foreach.\n");
    goto LABEL_5;
  }

  SetParsedBindNames(a1, ParsedBindNames);
LABEL_15:
  if (v6)
  {
    ReplaceMvPrognFieldVars(a1, v6, *(*(a2 + 16) + 24), 0);
  }

  return a2;
}

uint64_t GetMvPrognField(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  v3 = *(*(*(**(v2 + 352) + 16) + 8) + 24);
  v4 = **(v2 + 80);
  if (v3 >= 1)
  {
    v5 = v3 + 1;
    do
    {
      v4 = *(v4 + 24);
      --v5;
    }

    while (v5 > 1);
  }

  *(a2 + 8) = *v4;
  *(a2 + 16) = *(v4 + 8);
  return result;
}

uint64_t GetMvPrognIndex(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(*(*(**(v1 + 352) + 16) + 8) + 24);
  v3 = **(v1 + 80);
  if (v2 >= 1)
  {
    v4 = v2 + 1;
    do
    {
      v3 = *(v3 + 24);
      --v4;
    }

    while (v4 > 1);
  }

  return *(v3 + 16);
}

uint64_t DeleteMultiValueField(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6)
{
  if (a3)
  {
    v8 = a3[4] - a3[3] + 1;
  }

  else
  {
    v8 = 0;
  }

  if (a5 < 1 || a4 < 1 || a5 < a4 || v8 < a4 || v8 < a5)
  {
    MVRangeError(a1, a4, a5, v8, a6);
    return 0;
  }

  else
  {
    *(a2 + 8) = 4;
    *(a2 + 24) = 0;
    v9 = a3[3];
    v10 = v9 + a4 - 1;
    v11 = v9 + a5;
    v12 = v8 + v9 + a4 + ~(v9 + a5);
    *(a2 + 32) = v12 - 1;
    Multifield = EnvCreateMultifield(a1, v12);
    *(a2 + 16) = Multifield;
    v14 = a3[3];
    v15 = v10 - v14;
    if (v10 <= v14)
    {
      v15 = 0;
      v18 = a3[3];
    }

    else
    {
      v16 = 0;
      v17 = a3[2] + 16 * v14;
      v18 = a3[3];
      do
      {
        v19 = &Multifield[v16];
        *(v19 + 12) = *(v17 + v16 * 8 + 24);
        v19[4] = *(v17 + v16 * 8 + 32);
        ++v18;
        v16 += 2;
      }

      while (v10 != v18);
    }

    v21 = *(a2 + 32);
    if (v15 <= v21)
    {
      v22 = v11 - 1;
      if (v18 > v11 - 1)
      {
        v22 = v18;
      }

      v23 = (a3[2] + 16 * v22 + 48);
      v24 = v14 + v21;
      if (v14 <= v10)
      {
        v25 = v10;
      }

      else
      {
        v25 = v14;
      }

      v26 = v24 - v25 + 1;
      v27 = &Multifield[2 * v25 + 4 + -2 * v14];
      do
      {
        *(v27 - 4) = *(v23 - 4);
        v28 = *v23;
        v23 += 2;
        *v27 = v28;
        v27 += 2;
        --v26;
      }

      while (v26);
    }

    return 1;
  }
}

uint64_t ReplaceMultiValueField(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  if (a3)
  {
    v11 = a3[4] - a3[3] + 1;
  }

  else
  {
    v11 = 0;
  }

  if (a5 < 1 || a4 < 1 || a5 < a4 || v11 < a4 || v11 < a5)
  {
    MVRangeError(a1, a4, a5, v11, a7);
    return 0;
  }

  else
  {
    v12 = a3[3];
    v13 = v12 + a4;
    v14 = v13 - 1;
    v15 = v12 + a5;
    if (*(a6 + 8) == 4)
    {
      v16 = v11 - v15 + v13 + *(a6 + 32) - *(a6 + 24);
    }

    else
    {
      v16 = v11 - v15 + v13;
    }

    *(a2 + 8) = 4;
    *(a2 + 24) = 0;
    Multifield = EnvCreateMultifield(a1, v16);
    *(a2 + 16) = Multifield;
    *(a2 + 32) = v16 - 1;
    v19 = a3[3];
    v20 = v14 - v19;
    if (v14 <= v19)
    {
      v20 = 0;
      v23 = a3[3];
    }

    else
    {
      v21 = 0;
      v22 = a3[2] + 16 * v19;
      v23 = a3[3];
      do
      {
        v24 = &Multifield[v21];
        *(v24 + 12) = *(v22 + v21 * 8 + 24);
        v24[4] = *(v22 + v21 * 8 + 32);
        ++v23;
        v21 += 2;
      }

      while (v14 != v23);
    }

    v25 = *(a6 + 8);
    if (v25 == 4)
    {
      v27 = *(a6 + 24);
      v26 = *(a6 + 32);
      if (v27 <= v26)
      {
        v28 = 0;
        v29 = v26 - v27 + 1;
        v30 = *(a6 + 16) + 16 * v27;
        if (v19 <= v14)
        {
          v31 = v14;
        }

        else
        {
          v31 = v19;
        }

        v32 = &Multifield[2 * v31 + -2 * v19];
        do
        {
          v33 = v32 + v28;
          *(v33 + 24) = *(v30 + v28 + 24);
          *(v33 + 32) = *(v30 + v28 + 32);
          ++v20;
          v28 += 16;
          --v29;
        }

        while (v29);
      }
    }

    else
    {
      v34 = &Multifield[2 * v20++];
      *(v34 + 12) = v25;
      v34[4] = *(a6 + 16);
    }

    v35 = v16 - v20;
    if (v16 > v20)
    {
      if (v23 <= v15 - 1)
      {
        v23 = v15 - 1;
      }

      v36 = (a3[2] + 16 * v23 + 48);
      v37 = &Multifield[2 * v20 + 4];
      do
      {
        *(v37 - 4) = *(v36 - 4);
        v38 = *v36;
        v36 += 2;
        *v37 = v38;
        v37 += 2;
        --v35;
      }

      while (v35);
    }

    return 1;
  }
}

uint64_t FindDOsInSegment(uint64_t a1, int a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, int a7)
{
  v7 = a3[3];
  v8 = a3[4] - v7;
  if (v8 < 0)
  {
    return 0;
  }

  v11 = 0;
  v29 = 16 * v7;
  v30 = a3[3];
  v33 = a2;
  v28 = a2;
  while (1)
  {
    v12 = v11 + 1;
    if (a2 >= 1)
    {
      break;
    }

LABEL_18:
    v29 += 16;
    ++v11;
    a2 = v28;
    if (v12 == v8 + 1)
    {
      return 0;
    }
  }

  v13 = 0;
  while (1)
  {
    v14 = a1 + 48 * v13;
    v15 = *(v14 + 8);
    if (v15 != 4)
    {
      break;
    }

    v16 = *(v14 + 24);
    v17 = *(v14 + 32) - v16;
    if (MVRangeCheck(v11 + 1, v12 + v17, a6, a7))
    {
      if (v17 < 0)
      {
LABEL_20:
        *a4 = v12;
        *a5 = v12 + v17;
        return 1;
      }

      v18 = v17 + 1;
      v19 = 16 * v16;
      v20 = v11;
      v21 = v29;
      while (v20 <= v8)
      {
        v22 = *(v14 + 16) + v19;
        v23 = a3[2] + v21;
        if (*(v22 + 24) != *(v23 + 24) || *(v22 + 32) != *(v23 + 32))
        {
          break;
        }

        v21 += 16;
        ++v20;
        v19 += 16;
        if (!--v18)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_17:
    if (++v13 == v33)
    {
      goto LABEL_18;
    }
  }

  v24 = a3[2] + 16 * v11 + 16 * v30;
  if (*(v14 + 16) != *(v24 + 32) || v15 != *(v24 + 24) || !MVRangeCheck(v11 + 1, v11 + 1, a6, a7))
  {
    goto LABEL_17;
  }

  *a5 = v12;
  *a4 = v12;
  return 1;
}

uint64_t InsertMultiValueField(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6)
{
  if (a3)
  {
    v10 = a3[4] - a3[3];
    if (a4 > 0)
    {
      v11 = v10 + 2;
      if (v10 + 2 >= a4)
      {
        v12 = a4;
      }

      else
      {
        v12 = v10 + 2;
      }

      *(a2 + 8) = 4;
      *(a2 + 24) = 0;
      if (*(a5 + 8) == 4)
      {
        v11 = v11 + *(a5 + 32) - *(a5 + 24);
      }

      Multifield = EnvCreateMultifield(a1, v11);
      *(a2 + 16) = Multifield;
      *(a2 + 32) = v11 - 1;
      v14 = a3[3];
      if (v12 < 2)
      {
        v19 = 0;
      }

      else
      {
        v15 = (a3[2] + 16 * v14 + 32);
        v16 = Multifield + 4;
        v14 = v14 + v12 - 1;
        v17 = v12 - 1;
        do
        {
          *(v16 - 4) = *(v15 - 4);
          v18 = *v15;
          v15 += 2;
          *v16 = v18;
          v16 += 2;
          --v17;
        }

        while (v17);
        v19 = v12 - 1;
      }

      v21 = *(a5 + 8);
      if (v21 == 4)
      {
        v23 = *(a5 + 24);
        v22 = *(a5 + 32);
        if (v23 <= v22)
        {
          v24 = 0;
          v25 = v22 - v23 + 1;
          v26 = *(a5 + 16) + 16 * v23;
          if (v12 <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = v12;
          }

          v28 = &Multifield[2 * v27];
          do
          {
            v29 = &v28[v24];
            *(v29 + 4) = *(v26 + v24 * 8 + 24);
            v29[2] = *(v26 + v24 * 8 + 32);
            ++v19;
            v24 += 2;
            --v25;
          }

          while (v25);
        }
      }

      else
      {
        v30 = &Multifield[2 * v12 - 2];
        *(v30 + 12) = v21;
        v30[4] = *(a5 + 16);
        ++v19;
      }

      v31 = a3[4];
      if (v14 <= v31)
      {
        v32 = v31 - v14 + 1;
        v33 = (a3[2] + 16 * v14 + 32);
        v34 = &Multifield[2 * v19 + 4];
        do
        {
          *(v34 - 4) = *(v33 - 4);
          v35 = *v33;
          v33 += 2;
          *v34 = v35;
          v34 += 2;
          --v32;
        }

        while (v32);
      }

      return 1;
    }

    v20 = v10 + 1;
LABEL_31:
    MVRangeError(a1, a4, a4, v20 + 1, a6);
    return 0;
  }

  if (a4 < 1)
  {
    v20 = 0;
    goto LABEL_31;
  }

  *(a2 + 8) = 4;
  *(a2 + 24) = 0;
  if (*(a5 + 8) == 4)
  {
    DuplicateMultifield(a1, a2, a5);
    AddToMultifieldList(a1, *(a2 + 16));
  }

  else
  {
    v37 = EnvCreateMultifield(a1, 0);
    *(a2 + 16) = v37;
    *(a2 + 32) = 0;
    *(v37 + 12) = *(a5 + 8);
    v37[4] = *(a5 + 16);
  }

  return 1;
}

uint64_t MVRangeCheck(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 1;
  if (a3 && a4 >= 1)
  {
    v5 = a4;
    for (i = (a3 + 8); ; i += 2)
    {
      v7 = *(i - 1);
      if (v7 <= a1 && *i >= a1)
      {
        break;
      }

      if (v7 <= a2 && *i >= a2)
      {
        break;
      }

      if (!--v5)
      {
        return 1;
      }
    }

    return 0;
  }

  return v4;
}

void *MultifieldPrognDriver(void *a1, uint64_t a2, char *a3)
{
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v6 = a1[6];
  v7 = *(v6 + 472);
  v8 = *(*(v7 + 40) + 256);
  if (v8)
  {
    *(v7 + 32) = v8;
    *(*(*(v6 + 472) + 40) + 256) = **(*(v6 + 472) + 32);
    v9 = *(*(a1[6] + 472) + 32);
  }

  else
  {
    v9 = genalloc(a1, 0x20uLL);
  }

  *v9 = 2;
  v9[1] = EnvFalseSymbol(a1);
  v10 = a1[6];
  v9[3] = **(v10 + 80);
  **(v10 + 80) = v9;
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgTypeCheck(a1, a3, 1, 4, &v29);
  if (result)
  {
    v12 = a1[6];
    v13 = *(v12 + 440);
    v14 = *(v13 + 112);
    v24[0] = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    v24[1] = v14;
    *(v13 + 112) = v24;
    v16 = *(&v30 + 1);
    v15 = v31;
    if (*(&v30 + 1) <= v31)
    {
      while (1)
      {
        v17 = *(&v30 + 1);
        v18 = v30 + 16 * v16;
        *v9 = *(v18 + 24);
        v9[1] = *(v18 + 32);
        v9[2] = v16 + 1 - v17;
        v19 = *(*(**(a1[6] + 352) + 16) + 24);
        if (v19)
        {
          break;
        }

LABEL_14:
        if (v16++ == v15)
        {
          v12 = a1[6];
          goto LABEL_6;
        }
      }

      while (1)
      {
        EvaluateExpression(a1, v19, a2);
        v20 = a1[6];
        v21 = *(v20 + 104);
        if (*(*(v20 + 352) + 12))
        {
          break;
        }

        if (v21[1] || *v21)
        {
          v21[1] = 0;
          goto LABEL_20;
        }

        if (v16 < v15 || *(v19 + 24))
        {
          CleanCurrentGarbageFrame(a1, 0);
          CallPeriodicTasks(a1);
          v19 = *(v19 + 24);
          if (v19)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v21[1] = 0;
      *(a2 + 8) = 2;
      *(a2 + 16) = EnvFalseSymbol(a1);
      v20 = a1[6];
LABEL_20:
      **(v20 + 80) = v9[3];
      *(*(v20 + 472) + 32) = v9;
      **(*(v20 + 472) + 32) = *(*(*(v20 + 472) + 40) + 256);
      *(*(*(v20 + 472) + 40) + 256) = *(*(v20 + 472) + 32);
      return RestorePriorGarbageFrame(a1, v24, v14, a2);
    }

    else
    {
LABEL_6:
      *(*(v12 + 104) + 4) = 0;
      **(v12 + 80) = v9[3];
      *(*(v12 + 472) + 32) = v9;
      **(*(v12 + 472) + 32) = *(*(*(v12 + 472) + 40) + 256);
      *(*(*(v12 + 472) + 40) + 256) = *(*(v12 + 472) + 32);
      RestorePriorGarbageFrame(a1, v24, v14, a2);
      return CallPeriodicTasks(a1);
    }
  }

  else
  {
    v23 = a1[6];
    **(v23 + 80) = v9[3];
    *(*(v23 + 472) + 32) = v9;
    **(*(v23 + 472) + 32) = *(*(*(v23 + 472) + 40) + 256);
    *(*(*(v23 + 472) + 40) + 256) = *(*(v23 + 472) + 32);
  }

  return result;
}

uint64_t MVRangeError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  PrintErrorID(a1, "MULTIFUN", 1, 0);
  EnvPrintRouter(a1, "werror", "Multifield index ");
  if (a2 == a3)
  {
    a3 = a2;
  }

  else
  {
    EnvPrintRouter(a1, "werror", "range ");
    PrintLongInteger(a1, "werror", a2, v15, v16, v17, v18, v19);
    EnvPrintRouter(a1, "werror", "..");
  }

  PrintLongInteger(a1, "werror", a3, v10, v11, v12, v13, v14);
  EnvPrintRouter(a1, "werror", " out of range 1..");
  PrintLongInteger(a1, "werror", a4, v20, v21, v22, v23, v24);
  if (a5)
  {
    EnvPrintRouter(a1, "werror", " in function ");
    EnvPrintRouter(a1, "werror", a5);
  }

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t ReplaceMvPrognFieldVars(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  result = strlen(*(a2 + 24));
  if (a3)
  {
    v9 = result;
    do
    {
      v10 = *a3;
      if (v10 == 35)
      {
        v11 = *(*(a3 + 1) + 24);
        result = strncmp(v11, *(a2 + 24), v9);
        if (result)
        {
          v12 = *(a3 + 2);
          if (!v12)
          {
            goto LABEL_14;
          }

LABEL_12:
          v15 = a1;
          v16 = a2;
          v17 = a4;
          goto LABEL_13;
        }

        if (!v11[v9])
        {
          *a3 = 30;
          v18 = a1;
          v19 = "(get-progn$-field)";
          goto LABEL_21;
        }

        result = strcmp(&v11[v9], "-index");
        if (!result)
        {
          *a3 = 30;
          v18 = a1;
          v19 = "(get-progn$-index)";
LABEL_21:
          *(a3 + 1) = FindFunction(v18, v19);
          v20 = EnvAddLong(a1, a4);
          result = GenConstant(a1, 1, v20);
          *(a3 + 2) = result;
        }
      }

      else
      {
        v12 = *(a3 + 2);
        if (v12)
        {
          if (v10 != 30)
          {
            goto LABEL_12;
          }

          v13 = *(a3 + 1);
          if (v13 != FindFunction(a1, "progn$"))
          {
            v14 = *(a3 + 1);
            if (v14 != FindFunction(a1, "foreach"))
            {
              v12 = *(a3 + 2);
              goto LABEL_12;
            }
          }

          v12 = *(a3 + 2);
          v17 = (a4 + 1);
          v15 = a1;
          v16 = a2;
LABEL_13:
          result = ReplaceMvPrognFieldVars(v15, v16, v12, v17);
        }
      }

LABEL_14:
      a3 = *(a3 + 3);
    }

    while (a3);
  }

  return result;
}

uint64_t AWDSymptomsNetworkAnalyticsPredictionsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v103 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v103 & 0x7F) << v5;
        if ((v103 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 92) |= 0x20u;
          while (1)
          {
            v110 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v110 & 0x7F) << v13;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_177:
              v101 = 48;
              goto LABEL_203;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_177;
        case 2u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 92) |= 0x200u;
          while (1)
          {
            v112 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v112 & 0x7F) << v63;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v11 = v64++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_181;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v65;
          }

LABEL_181:
          v100 = 72;
          goto LABEL_194;
        case 3u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 92) |= 0x10u;
          while (1)
          {
            v109 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v109 & 0x7F) << v45;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_165;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v47;
          }

LABEL_165:
          v101 = 40;
          goto LABEL_203;
        case 4u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 92) |= 0x1000u;
          while (1)
          {
            v111 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v111 & 0x7F) << v51;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_169;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v53;
          }

LABEL_169:
          v100 = 84;
          goto LABEL_194;
        case 5u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 92) |= 1u;
          while (1)
          {
            v108 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v108 & 0x7F) << v27;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_153;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v29;
          }

LABEL_153:
          v101 = 8;
          goto LABEL_203;
        case 6u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 92) |= 0x2000u;
          while (1)
          {
            v117 = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v117 & 0x7F) << v69;
            if ((v117 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v11 = v70++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_185;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v71;
          }

LABEL_185:
          v100 = 88;
          goto LABEL_194;
        case 7u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 92) |= 0x400u;
          while (1)
          {
            v116 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v116 & 0x7F) << v81;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v11 = v82++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_193;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v83;
          }

LABEL_193:
          v100 = 76;
          goto LABEL_194;
        case 8u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 92) |= 0x40u;
          while (1)
          {
            v107 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v107 & 0x7F) << v57;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_173;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v59;
          }

LABEL_173:
          v101 = 56;
          goto LABEL_203;
        case 9u:
          v93 = 0;
          v94 = 0;
          v95 = 0;
          *(a1 + 92) |= 8u;
          while (1)
          {
            v106 = 0;
            v96 = [a2 position] + 1;
            if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
            {
              v98 = [a2 data];
              [v98 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v95 |= (v106 & 0x7F) << v93;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v93 += 7;
            v11 = v94++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_202;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v95;
          }

LABEL_202:
          v101 = 32;
          goto LABEL_203;
        case 0xAu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 92) |= 4u;
          while (1)
          {
            v105 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v105 & 0x7F) << v39;
            if ((v105 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v41;
          }

LABEL_161:
          v101 = 24;
          goto LABEL_203;
        case 0xBu:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          *(a1 + 92) |= 2u;
          while (1)
          {
            v104 = 0;
            v90 = [a2 position] + 1;
            if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
            {
              v92 = [a2 data];
              [v92 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v89 |= (v104 & 0x7F) << v87;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v87 += 7;
            v11 = v88++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_198;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v89;
          }

LABEL_198:
          v101 = 16;
LABEL_203:
          *(a1 + v101) = v19;
          goto LABEL_204;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 92) |= 0x800u;
          while (1)
          {
            v115 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v115 & 0x7F) << v20;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_149;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_149:
          v100 = 80;
          goto LABEL_194;
        case 0xDu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 92) |= 0x80u;
          while (1)
          {
            v114 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v114 & 0x7F) << v33;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_157;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v35;
          }

LABEL_157:
          v100 = 64;
          goto LABEL_194;
        case 0xEu:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 92) |= 0x100u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_204;
      }

      while (1)
      {
        v113 = 0;
        v78 = [a2 position] + 1;
        if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
        {
          v80 = [a2 data];
          [v80 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v77 |= (v113 & 0x7F) << v75;
        if ((v113 & 0x80) == 0)
        {
          break;
        }

        v75 += 7;
        v11 = v76++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_189;
        }
      }

      v26 = [a2 hasError] ? 0 : v77;
LABEL_189:
      v100 = 68;
LABEL_194:
      *(a1 + v100) = v26;
LABEL_204:
      v102 = [a2 position];
    }

    while (v102 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}