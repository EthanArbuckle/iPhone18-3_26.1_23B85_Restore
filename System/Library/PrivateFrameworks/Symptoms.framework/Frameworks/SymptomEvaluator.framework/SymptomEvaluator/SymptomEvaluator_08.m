void *QueryFindFact(void *a1, uint64_t a2)
{
  v25 = 0;
  *(a2 + 8) = 4;
  *(a2 + 24) = xmmword_2328169C0;
  v4 = DetermineQueryTemplates(a1, *(*(**(a1[6] + 352) + 16) + 24), "find-fact", &v25);
  if (v4)
  {
    v5 = v4;
    PushQueryCore(a1);
    v6 = a1[6];
    v7 = *(v6 + 472);
    v8 = *(*(v7 + 40) + 448);
    if (v8)
    {
      *(v7 + 32) = v8;
      *(*(*(v6 + 472) + 40) + 448) = **(*(v6 + 472) + 32);
      v9 = a1[6];
      v10 = *(*(v9 + 472) + 32);
    }

    else
    {
      v10 = genalloc(a1, 0x38uLL);
      v9 = a1[6];
    }

    *(*(v9 + 504) + 8) = v10;
    v12 = v25;
    v13 = 8 * v25;
    v14 = gm2(a1, v13);
    v15 = a1[6];
    **(*(v15 + 504) + 8) = v14;
    *(*(*(v15 + 504) + 8) + 8) = *(**(v15 + 352) + 16);
    if (TestForFirstInChain(a1, v5, 0))
    {
      Multifield = EnvCreateMultifield(a1, v12);
      *(a2 + 16) = Multifield;
      *(a2 + 32) = (v12 - 1);
      v17 = a1[6];
      if (v12)
      {
        v18 = 1;
        do
        {
          v19 = &Multifield[2 * v18 + 1];
          *v19 = 6;
          *(v19 + 8) = *(**(*(v17 + 504) + 8) + 8 * (v18++ - 1));
        }

        while (v18 <= v12);
      }
    }

    else
    {
      *(a2 + 16) = EnvCreateMultifield(a1, 0);
      v17 = a1[6];
    }

    v20 = *(v17 + 504);
    *(v20 + 24) = 0;
    rm(a1, **(v20 + 8), v13);
    v21 = a1[6];
    *(*(v21 + 472) + 32) = *(*(v21 + 504) + 8);
    **(*(v21 + 472) + 32) = *(*(*(v21 + 472) + 40) + 448);
    *(*(*(v21 + 472) + 40) + 448) = *(*(v21 + 472) + 32);
    v22 = a1[6];
    *(*(v22 + 504) + 8) = **(*(v22 + 504) + 16);
    v23 = *(v22 + 504);
    v24 = *(v23 + 16);
    *(v23 + 16) = *(v24 + 8);
    *(*(v22 + 472) + 32) = v24;
    **(*(v22 + 472) + 32) = *(*(*(v22 + 472) + 40) + 128);
    *(*(*(v22 + 472) + 40) + 128) = *(*(v22 + 472) + 32);

    return DeleteQueryTemplates(a1, v5);
  }

  else
  {
    result = EnvCreateMultifield(a1, 0);
    *(a2 + 16) = result;
  }

  return result;
}

void *QueryFindAllFacts(uint64_t a1, uint64_t a2)
{
  v29 = 0;
  *(a2 + 8) = 4;
  *(a2 + 24) = xmmword_2328169C0;
  v4 = DetermineQueryTemplates(a1, *(*(**(*(a1 + 48) + 352) + 16) + 24), "find-all-facts", &v29);
  if (v4)
  {
    v5 = v4;
    PushQueryCore(a1);
    v6 = *(a1 + 48);
    v7 = *(v6 + 472);
    v8 = *(*(v7 + 40) + 448);
    if (v8)
    {
      *(v7 + 32) = v8;
      *(*(*(v6 + 472) + 40) + 448) = **(*(v6 + 472) + 32);
      v9 = *(a1 + 48);
      v10 = *(*(v9 + 472) + 32);
    }

    else
    {
      v10 = genalloc(a1, 0x38uLL);
      v9 = *(a1 + 48);
    }

    *(*(v9 + 504) + 8) = v10;
    v12 = v29;
    v13 = 8 * v29;
    v14 = gm2(a1, v13);
    v15 = *(a1 + 48);
    **(*(v15 + 504) + 8) = v14;
    *(*(*(v15 + 504) + 8) + 8) = *(**(v15 + 352) + 16);
    *(*(*(v15 + 504) + 8) + 16) = 0;
    *(*(*(v15 + 504) + 8) + 24) = 0;
    v16 = *(*(v15 + 504) + 8);
    *(v16 + 40) = v12;
    *(v16 + 44) = 0;
    TestEntireChain(a1, v5, 0);
    v17 = *(*(a1 + 48) + 504);
    *(v17 + 24) = 0;
    *(a2 + 16) = EnvCreateMultifield(a1, *(*(v17 + 8) + 44) * v12);
    v18 = *(a1 + 48);
    v19 = *(*(v18 + 504) + 8);
    if (*(v19 + 24))
    {
      v20 = v18 + 504;
      do
      {
        v21 = *(a2 + 32) + 2;
        if (v12)
        {
          v22 = 0;
          v23 = *(a2 + 16) + 24;
          do
          {
            v24 = v23 + 16 * (v21 - 1);
            *v24 = 6;
            *(v24 + 8) = *(**(*(*v20 + 8) + 24) + v22);
            ++v21;
            v22 += 8;
          }

          while (v13 != v22);
        }

        *(a2 + 32) = v21 - 2;
        PopQuerySoln(a1);
        v20 = *(a1 + 48) + 504;
        v19 = *(*v20 + 8);
      }

      while (*(v19 + 24));
    }

    rm(a1, *v19, v13);
    v25 = *(a1 + 48);
    *(*(v25 + 472) + 32) = *(*(v25 + 504) + 8);
    **(*(v25 + 472) + 32) = *(*(*(v25 + 472) + 40) + 448);
    *(*(*(v25 + 472) + 40) + 448) = *(*(v25 + 472) + 32);
    v26 = *(a1 + 48);
    *(*(v26 + 504) + 8) = **(*(v26 + 504) + 16);
    v27 = *(v26 + 504);
    v28 = *(v27 + 16);
    *(v27 + 16) = *(v28 + 8);
    *(*(v26 + 472) + 32) = v28;
    **(*(v26 + 472) + 32) = *(*(*(v26 + 472) + 40) + 128);
    *(*(*(v26 + 472) + 40) + 128) = *(*(v26 + 472) + 32);

    return DeleteQueryTemplates(a1, v5);
  }

  else
  {
    result = EnvCreateMultifield(a1, 0);
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t *QueryDoForFact(void *a1, uint64_t a2)
{
  v20 = 0;
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = DetermineQueryTemplates(a1, *(*(*(**(a1[6] + 352) + 16) + 24) + 24), "do-for-fact", &v20);
  if (result)
  {
    v5 = result;
    PushQueryCore(a1);
    v6 = a1[6];
    v7 = *(v6 + 472);
    v8 = *(*(v7 + 40) + 448);
    if (v8)
    {
      *(v7 + 32) = v8;
      *(*(*(v6 + 472) + 40) + 448) = **(*(v6 + 472) + 32);
      v9 = a1[6];
      v10 = *(*(v9 + 472) + 32);
    }

    else
    {
      v10 = genalloc(a1, 0x38uLL);
      v9 = a1[6];
    }

    *(*(v9 + 504) + 8) = v10;
    v11 = 8 * v20;
    v12 = gm2(a1, v11);
    v13 = a1[6];
    **(*(v13 + 504) + 8) = v12;
    *(*(*(v13 + 504) + 8) + 8) = *(**(v13 + 352) + 16);
    *(*(*(v13 + 504) + 8) + 16) = *(*(**(v13 + 352) + 16) + 24);
    if (TestForFirstInChain(a1, v5, 0))
    {
      EvaluateExpression(a1, *(*(*(a1[6] + 504) + 8) + 16), a2);
    }

    v14 = a1[6];
    v15 = *(v14 + 504);
    *(v15 + 24) = 0;
    *(*(v14 + 104) + 4) = 0;
    rm(a1, **(v15 + 8), v11);
    v16 = a1[6];
    *(*(v16 + 472) + 32) = *(*(v16 + 504) + 8);
    **(*(v16 + 472) + 32) = *(*(*(v16 + 472) + 40) + 448);
    *(*(*(v16 + 472) + 40) + 448) = *(*(v16 + 472) + 32);
    v17 = a1[6];
    *(*(v17 + 504) + 8) = **(*(v17 + 504) + 16);
    v18 = *(v17 + 504);
    v19 = *(v18 + 16);
    *(v18 + 16) = *(v19 + 8);
    *(*(v17 + 472) + 32) = v19;
    **(*(v17 + 472) + 32) = *(*(*(v17 + 472) + 40) + 128);
    *(*(*(v17 + 472) + 40) + 128) = *(*(v17 + 472) + 32);

    return DeleteQueryTemplates(a1, v5);
  }

  return result;
}

uint64_t *QueryDoForAllFacts(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = DetermineQueryTemplates(a1, *(*(*(**(*(a1 + 48) + 352) + 16) + 24) + 24), "do-for-all-facts", &v20);
  if (result)
  {
    v5 = result;
    PushQueryCore(a1);
    v6 = *(a1 + 48);
    v7 = *(v6 + 472);
    v8 = *(*(v7 + 40) + 448);
    if (v8)
    {
      *(v7 + 32) = v8;
      *(*(*(v6 + 472) + 40) + 448) = **(*(v6 + 472) + 32);
      v9 = *(a1 + 48);
      v10 = *(*(v9 + 472) + 32);
    }

    else
    {
      v10 = genalloc(a1, 0x38uLL);
      v9 = *(a1 + 48);
    }

    *(*(v9 + 504) + 8) = v10;
    v11 = 8 * v20;
    v12 = gm2(a1, v11);
    v13 = *(a1 + 48);
    **(*(v13 + 504) + 8) = v12;
    *(*(*(v13 + 504) + 8) + 8) = *(**(v13 + 352) + 16);
    *(*(*(v13 + 504) + 8) + 16) = *(*(**(v13 + 352) + 16) + 24);
    *(*(*(v13 + 504) + 8) + 48) = a2;
    ValueInstall(a1, *(*(*(v13 + 504) + 8) + 48));
    TestEntireChain(a1, v5, 0);
    ValueDeinstall(a1, *(*(*(*(a1 + 48) + 504) + 8) + 48));
    v14 = *(a1 + 48);
    v15 = *(v14 + 504);
    *(v15 + 24) = 0;
    *(*(v14 + 104) + 4) = 0;
    rm(a1, **(v15 + 8), v11);
    v16 = *(a1 + 48);
    *(*(v16 + 472) + 32) = *(*(v16 + 504) + 8);
    **(*(v16 + 472) + 32) = *(*(*(v16 + 472) + 40) + 448);
    *(*(*(v16 + 472) + 40) + 448) = *(*(v16 + 472) + 32);
    v17 = *(a1 + 48);
    *(*(v17 + 504) + 8) = **(*(v17 + 504) + 16);
    v18 = *(v17 + 504);
    v19 = *(v18 + 16);
    *(v18 + 16) = *(v19 + 8);
    *(*(v17 + 472) + 32) = v19;
    **(*(v17 + 472) + 32) = *(*(*(v17 + 472) + 40) + 128);
    *(*(*(v17 + 472) + 40) + 128) = *(*(v17 + 472) + 32);

    return DeleteQueryTemplates(a1, v5);
  }

  return result;
}

uint64_t *DelayedQueryDoForAllFacts(void *a1, uint64_t a2)
{
  v33 = 0;
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = DetermineQueryTemplates(a1, *(*(*(**(a1[6] + 352) + 16) + 24) + 24), "delayed-do-for-all-facts", &v33);
  if (result)
  {
    v5 = result;
    PushQueryCore(a1);
    v6 = a1[6];
    v7 = *(v6 + 472);
    v8 = *(*(v7 + 40) + 448);
    if (v8)
    {
      *(v7 + 32) = v8;
      *(*(*(v6 + 472) + 40) + 448) = **(*(v6 + 472) + 32);
      v9 = a1[6];
      v10 = *(*(v9 + 472) + 32);
    }

    else
    {
      v10 = genalloc(a1, 0x38uLL);
      v9 = a1[6];
    }

    *(*(v9 + 504) + 8) = v10;
    v11 = v33;
    v12 = 8 * v33;
    v13 = gm2(a1, v12);
    v14 = a1[6];
    **(*(v14 + 504) + 8) = v13;
    *(*(*(v14 + 504) + 8) + 8) = *(**(v14 + 352) + 16);
    *(*(*(v14 + 504) + 8) + 16) = 0;
    *(*(*(v14 + 504) + 8) + 24) = 0;
    *(*(*(v14 + 504) + 8) + 40) = v11;
    TestEntireChain(a1, v5, 0);
    v15 = a1[6];
    v16 = *(v15 + 504);
    *(v16 + 24) = 0;
    *(*(v16 + 8) + 16) = *(*(**(v15 + 352) + 16) + 24);
    v17 = *(v15 + 440);
    v18 = *(v17 + 112);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28[0] = 0;
    v29 = 0u;
    v28[1] = v18;
    *(v17 + 112) = v28;
    while (*(*(*(v15 + 504) + 8) + 24))
    {
      if (v11)
      {
        v19 = 0;
        do
        {
          v20 = *(*(a1[6] + 504) + 8);
          *(*v20 + v19) = *(**(v20 + 24) + v19);
          v19 += 8;
        }

        while (v12 != v19);
      }

      PopQuerySoln(a1);
      EvaluateExpression(a1, *(*(*(a1[6] + 504) + 8) + 16), a2);
      v21 = a1[6];
      if (*(v21[44] + 12) || (v22 = v21[13], v22[1]) || *v22)
      {
        while (*(*(v21[63] + 8) + 24))
        {
          PopQuerySoln(a1);
          v21 = a1[6];
        }

        break;
      }

      CleanCurrentGarbageFrame(a1, 0);
      CallPeriodicTasks(a1);
      v15 = a1[6];
    }

    RestorePriorGarbageFrame(a1, v28, v18, a2);
    CallPeriodicTasks(a1);
    v23 = a1[6];
    *(*(v23 + 104) + 4) = 0;
    rm(a1, **(*(v23 + 504) + 8), 8 * v11);
    v24 = a1[6];
    *(*(v24 + 472) + 32) = *(*(v24 + 504) + 8);
    **(*(v24 + 472) + 32) = *(*(*(v24 + 472) + 40) + 448);
    *(*(*(v24 + 472) + 40) + 448) = *(*(v24 + 472) + 32);
    v25 = a1[6];
    *(*(v25 + 504) + 8) = **(*(v25 + 504) + 16);
    v26 = *(v25 + 504);
    v27 = *(v26 + 16);
    *(v26 + 16) = *(v27 + 8);
    *(*(v25 + 472) + 32) = v27;
    **(*(v25 + 472) + 32) = *(*(*(v25 + 472) + 40) + 128);
    *(*(*(v25 + 472) + 40) + 128) = *(*(v25 + 472) + 32);
    return DeleteQueryTemplates(a1, v5);
  }

  return result;
}

uint64_t *DetermineQueryTemplates(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v34 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  while (!EvaluateExpression(a1, v4, &v36))
  {
    if (WORD4(v36) != 2)
    {
      v39 = 0;
      v35 = v8;
      if (WORD4(v36) == 4)
      {
        if (*(&v37 + 1) <= v38)
        {
          v18 = 0;
          v19 = 0;
          v20 = v38 - *(&v37 + 1) + 1;
          v21 = 16 * *(&v37 + 1);
          while (*(v37 + v21 + 24) == 2)
          {
            v22 = *(*(v37 + v21 + 32) + 24);
            ImportedConstruct = FindImportedConstruct(a1, "deftemplate", 0, v22, &v39, 1, 0);
            if (!ImportedConstruct)
            {
              CantFindItemInFunctionErrorMessage(a1, "deftemplate", v22, a3);
              break;
            }

            v24 = ImportedConstruct;
            IncrementDeftemplateBusyCount(a1, ImportedConstruct);
            v25 = *(a1 + 48);
            v26 = *(v25 + 472);
            v27 = *(*(v26 + 40) + 192);
            if (v27)
            {
              *(v26 + 32) = v27;
              *(*(*(v25 + 472) + 40) + 192) = **(*(v25 + 472) + 32);
              v28 = *(*(*(a1 + 48) + 472) + 32);
            }

            else
            {
              v28 = genalloc(a1, 0x18uLL);
            }

            v28[1] = 0;
            v28[2] = 0;
            v14 = v28;
            *v28 = v24;
            if (v19)
            {
              v18[1] = v28;
              v14 = v19;
            }

            v21 += 16;
            v18 = v28;
            v19 = v14;
            if (!--v20)
            {
              goto LABEL_30;
            }
          }

          DeleteQueryTemplates(a1, v19);
          v8 = v35;
        }

        goto LABEL_44;
      }

      if (WORD4(v36) != 63)
      {
        goto LABEL_44;
      }

      IncrementDeftemplateBusyCount(a1, v37);
      v15 = *(a1 + 48);
      v16 = *(v15 + 472);
      v17 = *(*(v16 + 40) + 192);
      if (v17)
      {
        *(v16 + 32) = v17;
        *(*(*(v15 + 472) + 40) + 192) = **(*(v15 + 472) + 32);
        v14 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v14 = genalloc(a1, 0x18uLL);
      }

      *v14 = v37;
      goto LABEL_29;
    }

    if (v37 != **(*(a1 + 48) + 504))
    {
      v39 = 0;
      v9 = FindImportedConstruct(a1, "deftemplate", 0, *(v37 + 24), &v39, 1, 0);
      if (!v9)
      {
        CantFindItemInFunctionErrorMessage(a1, "deftemplate", *(v37 + 24), a3);
LABEL_44:
        SyntaxErrorMessage(a1, "fact-set query class restrictions");
        DeleteQueryTemplates(a1, v8);
        SetEvaluationError(a1, 1);
        return 0;
      }

      v10 = v9;
      IncrementDeftemplateBusyCount(a1, v9);
      v11 = *(a1 + 48);
      v12 = *(v11 + 472);
      v13 = *(*(v12 + 40) + 192);
      v35 = v8;
      if (v13)
      {
        *(v12 + 32) = v13;
        *(*(*(v11 + 472) + 40) + 192) = **(*(v11 + 472) + 32);
        v14 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v14 = genalloc(a1, 0x18uLL);
      }

      *v14 = v10;
LABEL_29:
      v14[1] = 0;
      v14[2] = 0;
LABEL_30:
      v8 = v35;
      if (v35)
      {
        v29 = (v6 + 1);
        if (v34 == 1)
        {
          v29 = (v7 + 2);
          v30 = v14;
        }

        else
        {
          v30 = v6;
        }

        *v29 = v14;
        if (v34 != 1)
        {
          v14 = v7;
        }

        v34 = 0;
      }

      else
      {
        v8 = v14;
        v30 = v14;
      }

      do
      {
        v6 = v30;
        v30 = v30[1];
      }

      while (v30);
      v7 = v14;
      goto LABEL_40;
    }

    ++*a4;
    v34 = 1;
LABEL_40:
    v4 = *(v4 + 24);
    if (!v4)
    {
      return v8;
    }
  }

  DeleteQueryTemplates(a1, v8);
  return 0;
}

void *PushQueryCore(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 472);
  v4 = *(*(v3 + 40) + 128);
  if (v4)
  {
    *(v3 + 32) = v4;
    *(*(*(v2 + 472) + 40) + 128) = **(*(v2 + 472) + 32);
    v5 = *(a1 + 48);
    result = *(*(v5 + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x10uLL);
    v5 = *(a1 + 48);
  }

  *result = *(*(v5 + 504) + 8);
  result[1] = *(*(v5 + 504) + 16);
  *(*(v5 + 504) + 16) = result;
  return result;
}

uint64_t TestForFirstInChain(void *a1, uint64_t *a2, int a3)
{
  v3 = a1[6];
  v4 = v3[63];
  *(v4 + 24) = 1;
  if (a2)
  {
    v8 = a2;
    while (1)
    {
      *(v4 + 24) = 0;
      v9 = *v8;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v10 = v3[55];
      v11 = *(v10 + 112);
      v20[0] = 0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0;
      v20[1] = v11;
      *(v10 + 112) = v20;
      v12 = *(v9 + 80);
      if (!v12)
      {
        goto LABEL_18;
      }

LABEL_4:
      *(**(*(a1[6] + 504) + 8) + 8 * a3) = v12;
      v13 = a2[2];
      ++*(v12 + 16);
      if (v13)
      {
        v14 = TestForFirstInChain(a1, v13, (a3 + 1));
        --*(v12 + 16);
        if (!v14)
        {
          v15 = a1[6];
          if (*(*(v15 + 352) + 12) != 1 && *(*(v15 + 504) + 24) != 1)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        EvaluateExpression(a1, *(*(*(a1[6] + 504) + 8) + 8), &v25);
        CleanCurrentGarbageFrame(a1, 0);
        CallPeriodicTasks(a1);
        --*(v12 + 16);
        if (*(*(a1[6] + 352) + 12) != 1 && WORD4(v25) == 2)
        {
          v17 = v26;
          if (v17 == EnvFalseSymbol(a1))
          {
LABEL_15:
            while (1)
            {
              v12 = *(v12 + 96);
              if (!v12)
              {
                break;
              }

              if ((*(v12 + 64) & 1) == 0)
              {
                goto LABEL_4;
              }
            }

LABEL_18:
            RestorePriorGarbageFrame(a1, v20, v11, 0);
            CallPeriodicTasks(a1);
            v3 = a1[6];
            v18 = v3[44];
            goto LABEL_19;
          }
        }
      }

      RestorePriorGarbageFrame(a1, v20, v11, 0);
      CallPeriodicTasks(a1);
      v3 = a1[6];
      v18 = v3[44];
      if (*(v18 + 12) != 1 && *(v3[63] + 24) != 1)
      {
        return 1;
      }

LABEL_19:
      if (*(v18 + 12) != 1)
      {
        v4 = v3[63];
        if (*(v4 + 24) != 1)
        {
          v8 = v8[1];
          if (v8)
          {
            continue;
          }
        }
      }

      return 0;
    }
  }

  return 0;
}

uint64_t DeleteQueryTemplates(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      while (1)
      {
        v4 = v2[1];
        if (!v4)
        {
          break;
        }

        v5 = *v4;
        v2[1] = v4[1];
        DecrementDeftemplateBusyCount(v3, v5);
        v6 = *(v3 + 48);
        *(*(v6 + 472) + 32) = v4;
        **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 192);
        *(*(*(v6 + 472) + 40) + 192) = *(*(v6 + 472) + 32);
      }

      v7 = v2[2];
      result = DecrementDeftemplateBusyCount(v3, *v2);
      v8 = *(v3 + 48);
      *(*(v8 + 472) + 32) = v2;
      **(*(v8 + 472) + 32) = *(*(*(v8 + 472) + 40) + 192);
      *(*(*(v8 + 472) + 40) + 192) = *(*(v8 + 472) + 32);
      v2 = v7;
    }

    while (v7);
  }

  return result;
}

uint64_t TestEntireChain(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *(result + 48);
  v4 = v3[63];
  *(v4 + 24) = 1;
  if (a2)
  {
    v7 = result;
    v8 = a2;
    while (1)
    {
      *(v4 + 24) = 0;
      v9 = *v8;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v10 = v3[55];
      v11 = *(v10 + 112);
      v29[0] = 0;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0;
      v29[1] = v11;
      *(v10 + 112) = v29;
      v12 = *(v9 + 80);
      if (v12)
      {
LABEL_4:
        *(**(*(v7[6] + 504) + 8) + 8 * a3) = v12;
        v13 = a2[2];
        ++*(v12 + 16);
        if (v13)
        {
          TestEntireChain(v7, v13, (a3 + 1));
          --*(v12 + 16);
          v14 = v7[6];
          if (*(*(v14 + 352) + 12) != 1)
          {
            v15 = *(*(v14 + 504) + 24);
            goto LABEL_15;
          }
        }

        else
        {
          EvaluateExpression(v7, *(*(*(v7[6] + 504) + 8) + 8), &v34);
          --*(v12 + 16);
          v16 = v7[6];
          if (*(*(v16 + 352) + 12) != 1)
          {
            if (WORD4(v34) == 2)
            {
              v17 = v35;
              if (v17 == EnvFalseSymbol(v7))
              {
                goto LABEL_16;
              }

              v16 = v7[6];
            }

            v18 = *(*(v16 + 504) + 8);
            if (!*(v18 + 16))
            {
              v22 = gm2(v7, 0x10uLL);
              *v22 = gm2(v7, 8 * *(*(*(v7[6] + 504) + 8) + 40));
              v23 = v7[6];
              v24 = *(*(v23 + 504) + 8);
              if (*(v24 + 40))
              {
                v25 = 0;
                do
                {
                  *(*v22 + 8 * v25) = *(*v24 + 8 * v25);
                  ++v25;
                  v23 = v7[6];
                  v24 = *(*(v23 + 504) + 8);
                }

                while (v25 < *(v24 + 40));
              }

              v22[1] = 0;
              v26 = *(*(v23 + 504) + 8);
              v28 = *(v26 + 24);
              v27 = (v26 + 24);
              if (v28)
              {
                v27 = (*(*(*(v23 + 504) + 8) + 32) + 8);
              }

              *v27 = v22;
              *(*(*(v23 + 504) + 8) + 32) = v22;
              ++*(*(*(v23 + 504) + 8) + 44);
LABEL_16:
              while (1)
              {
                v12 = *(v12 + 96);
                if (!v12)
                {
                  break;
                }

                if ((*(v12 + 64) & 1) == 0)
                {
                  CleanCurrentGarbageFrame(v7, 0);
                  CallPeriodicTasks(v7);
                  goto LABEL_4;
                }
              }

              CleanCurrentGarbageFrame(v7, 0);
              CallPeriodicTasks(v7);
              goto LABEL_26;
            }

            ++*(v12 + 16);
            ValueDeinstall(v7, *(v18 + 48));
            v19 = *(*(v7[6] + 504) + 8);
            EvaluateExpression(v7, *(v19 + 16), *(v19 + 48));
            ValueInstall(v7, *(*(*(v7[6] + 504) + 8) + 48));
            --*(v12 + 16);
            v20 = v7[6];
            v21 = v20[13];
            if (!v21[1] && !*v21)
            {
              v15 = *(v20[44] + 12);
LABEL_15:
              if (v15 != 1)
              {
                goto LABEL_16;
              }

              goto LABEL_26;
            }

            *(v20[63] + 24) = 1;
          }
        }
      }

LABEL_26:
      RestorePriorGarbageFrame(v7, v29, v11, 0);
      result = CallPeriodicTasks(v7);
      v3 = v7[6];
      if (*(v3[44] + 12) != 1)
      {
        v4 = v3[63];
        if (*(v4 + 24) != 1)
        {
          v8 = v8[1];
          if (v8)
          {
            continue;
          }
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t PopQuerySoln(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(*(*(v2 + 504) + 8) + 32) = *(*(*(v2 + 504) + 8) + 24);
  *(*(*(v2 + 504) + 8) + 24) = *(*(*(*(v2 + 504) + 8) + 24) + 8);
  rm(a1, **(*(*(v2 + 504) + 8) + 32), 8 * *(*(*(v2 + 504) + 8) + 40));
  v3 = *(*(*(*(a1 + 48) + 504) + 8) + 32);

  return rm(a1, v3, 0x10uLL);
}

void sub_23273DDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23273EDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _loadCorePrediction()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___loadCorePrediction_block_invoke;
  block[3] = &unk_27898F390;
  block[4] = &v3;
  if (_loadCorePrediction_symbolLoadOnce != -1)
  {
    dispatch_once(&_loadCorePrediction_symbolLoadOnce, block);
  }

  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void ___loadCorePrediction_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = dlopen("/System/Library/PrivateFrameworks/CorePrediction.framework/CorePrediction", 6);
  gCorePredictionDyLibHandle = v2;
  if (!v2)
  {
    v12 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "/System/Library/PrivateFrameworks/CorePrediction.framework/CorePrediction";
      v9 = "Failed to dynamically load CorePrediction framework at %s";
      v10 = v12;
      v11 = OS_LOG_TYPE_ERROR;
      v13 = 12;
LABEL_23:
      _os_log_impl(&dword_23255B000, v10, v11, v9, &v16, v13);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v3 = dlsym(v2, "CPMLCreateKMEANSAnalysis");
  if (!v3)
  {
    v14 = scoringLogHandle;
    if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    LOWORD(v16) = 0;
    v9 = "Failed to load CPMLCreateKMEANSAnalysis() in CorePrediction framework.";
LABEL_21:
    v10 = v14;
    v11 = OS_LOG_TYPE_ERROR;
    goto LABEL_22;
  }

  gCPMLCreateKMEANSAnalysisFunc = v3;
  v4 = dlsym(gCorePredictionDyLibHandle, "CPMLTotalWithinssKMeansAnalysis");
  if (!v4)
  {
    v14 = scoringLogHandle;
    if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    LOWORD(v16) = 0;
    v9 = "Failed to load CPMLTotalWithinssKMeansAnalysis() in CorePrediction framework.";
    goto LABEL_21;
  }

  gCPMLTotalWithinssKMeansAnalysisFunc = v4;
  v5 = dlsym(gCorePredictionDyLibHandle, "CPMLClusterKMeansAnalysis");
  if (!v5)
  {
    v14 = scoringLogHandle;
    if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    LOWORD(v16) = 0;
    v9 = "Failed to load CPMLClusterKMeansAnalysis() in CorePrediction framework.";
    goto LABEL_21;
  }

  gCPMLClusterKMeansAnalysisFunc = v5;
  v6 = dlsym(gCorePredictionDyLibHandle, "CPMLCentersKMeansAnalysis");
  if (!v6)
  {
    v14 = scoringLogHandle;
    if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    LOWORD(v16) = 0;
    v9 = "Failed to load CPMLCentersKMeansAnalysis() in CorePrediction framework.";
    goto LABEL_21;
  }

  gCPMLCentersKMeansAnalysisFunc = v6;
  v7 = dlsym(gCorePredictionDyLibHandle, "CPMLDestroyKMEANSAnalysis");
  if (!v7)
  {
    v14 = scoringLogHandle;
    if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    LOWORD(v16) = 0;
    v9 = "Failed to load CPMLDestroyKMEANSAnalysis() in CorePrediction framework.";
    goto LABEL_21;
  }

  gCPMLDestroyKMEANSAnalysisFunc = v7;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v8 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    v9 = "Successfully loaded CorePrediction framework and functions";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
LABEL_22:
    v13 = 2;
    goto LABEL_23;
  }

LABEL_24:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t _unloadCorePrediction()
{
  result = gCorePredictionDyLibHandle;
  if (gCorePredictionDyLibHandle)
  {
    result = dlclose(gCorePredictionDyLibHandle);
    gCorePredictionDyLibHandle = 0;
  }

  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x16u);
}

uint64_t ParseDeffacts(uint64_t a1, char *a2)
{
  v18 = 0;
  SetPPBufferStatus(a1, 1);
  FlushPPBuffer(a1);
  SetIndentDepth(a1, 3);
  SavePPBuffer(a1, "(deffacts ");
  if (Bloaded(a1) == 1 && !*(*(*(a1 + 48) + 336) + 40))
  {
    CannotLoadWithBloadMessage(a1, "deffacts");
    return 1;
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    v4 = 1;
    ConstructNameAndComment = GetConstructNameAndComment(a1, a2, v17, "deffacts", EnvFindDeffactsInModule, EnvUndeffacts, "$", 1, 1, 1, 0);
    if (ConstructNameAndComment)
    {
      v6 = ConstructNameAndComment;
      v7 = BuildRHSAssert(a1, a2, v17, &v18, 0, 0, "deffacts");
      if (v18 != 1)
      {
        v8 = v7;
        if (ExpressionContainsVariables(v7, 0))
        {
          LocalVariableErrorMessage(a1, "a deffacts construct");
          ReturnExpression(a1, v8);
        }

        else
        {
          SavePPBuffer(a1, "\n");
          if (*(*(*(a1 + 48) + 336) + 40))
          {
            ReturnExpression(a1, v8);
          }

          else
          {
            ExpressionInstall(a1, v8);
            v9 = *(a1 + 48);
            v10 = *(v9 + 472);
            v11 = *(*(v10 + 40) + 448);
            if (v11)
            {
              *(v10 + 32) = v11;
              *(*(*(v9 + 472) + 40) + 448) = **(*(v9 + 472) + 32);
              v12 = *(*(*(a1 + 48) + 472) + 32);
            }

            else
            {
              v12 = genalloc(a1, 0x38uLL);
            }

            *v12 = v6;
            ++v6[1];
            v12[6] = PackExpression(a1, v8);
            ModuleItem = FindModuleItem(a1, "deffacts");
            v12[2] = GetModuleItem(a1, 0, *(ModuleItem + 8));
            v12[4] = 0;
            v12[5] = 0;
            ReturnExpression(a1, v8);
            ConserveMemory = EnvGetConserveMemory(a1);
            v15 = 0;
            if (ConserveMemory != 1)
            {
              v15 = CopyPPBuffer(a1);
            }

            v12[1] = v15;
            AddConstructToModule(v12);
          }

          return 0;
        }
      }
    }
  }

  return v4;
}

uint64_t InitializeConstructData(uint64_t a1)
{
  result = AllocateEnvironmentData(a1, 0x2Au, 0xC8uLL, DeallocateConstructData);
  *(*(*(a1 + 48) + 336) + 36) = 1;
  return result;
}

uint64_t DeallocateConstructData(uint64_t a1)
{
  DeallocateCallList(a1, *(*(*(a1 + 48) + 336) + 24));
  DeallocateCallList(a1, *(*(*(a1 + 48) + 336) + 160));
  DeallocateCallList(a1, *(*(*(a1 + 48) + 336) + 168));
  DeallocateCallList(a1, *(*(*(a1 + 48) + 336) + 176));
  v2 = *(a1 + 48);
  v3 = *(v2 + 336);
  v4 = *(v3 + 48);
  if (v4)
  {
    genfree(a1, v4, 9);
    v2 = *(a1 + 48);
    v3 = *(v2 + 336);
  }

  v5 = *(v3 + 56);
  if (v5)
  {
    genfree(a1, v5, 9);
    v2 = *(a1 + 48);
    v3 = *(v2 + 336);
  }

  *(v3 + 48) = 0;
  *(*(v2 + 336) + 56) = 0;
  EnvSetParsingFileName(a1, 0);
  EnvSetWarningFileName(a1, 0);
  result = EnvSetErrorFileName(a1, 0);
  v7 = *(*(*(a1 + 48) + 336) + 152);
  if (v7)
  {
    do
    {
      v8 = *(v7 + 96);
      v9 = *(a1 + 48);
      *(*(v9 + 472) + 32) = v7;
      **(*(v9 + 472) + 32) = *(*(*(v9 + 472) + 40) + 832);
      *(*(*(v9 + 472) + 40) + 832) = *(*(v9 + 472) + 32);
      v7 = v8;
    }

    while (v8);
  }

  return result;
}

uint64_t EnvSetParserErrorCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 336);
  result = *(v2 + 144);
  *(v2 + 144) = a2;
  return result;
}

uint64_t FindConstruct(uint64_t a1, char *__s1)
{
  for (i = *(*(*(a1 + 48) + 336) + 152); i; i = *(i + 96))
  {
    if (!strcmp(__s1, *i))
    {
      break;
    }
  }

  return i;
}

uint64_t RemoveConstruct(uint64_t a1, char *__s1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 336);
  v6 = *(v3 + 152);
  v4 = (v3 + 152);
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  if (strcmp(__s1, *v5))
  {
    v8 = v5;
    while (1)
    {
      v5 = *(v8 + 96);
      if (!v5)
      {
        return 0;
      }

      v9 = strcmp(__s1, *v5);
      v10 = v8;
      v8 = v5;
      if (!v9)
      {
        goto LABEL_9;
      }
    }
  }

  v10 = 0;
LABEL_9:
  if (v10)
  {
    v12 = (v10 + 96);
  }

  else
  {
    v12 = v4;
  }

  *v12 = *(v5 + 96);
  *(*(v2 + 472) + 32) = v5;
  **(*(v2 + 472) + 32) = *(*(*(v2 + 472) + 40) + 832);
  *(*(*(v2 + 472) + 40) + 832) = *(*(v2 + 472) + 32);
  return 1;
}

uint64_t EnvSave(uint64_t a1, char *a2)
{
  result = GenOpen(a1, a2, "w");
  if (result)
  {
    v4 = result;
    SetFastSave(a1, result);
    MarkModulesAsUnvisited(a1);
    v5 = 1;
    while (v5)
    {
      NextDefmodule = EnvGetNextDefmodule(a1, 0);
      if (NextDefmodule)
      {
        v7 = NextDefmodule;
        v5 = 0;
        v8 = 0;
        do
        {
          if (!*(v7 + 40))
          {
            if (AllImportedModulesVisited(a1, v7))
            {
              for (i = *(*(*(a1 + 48) + 336) + 24); i; i = *(i + 24))
              {
                (*(i + 8))(a1, v7, v4);
              }

              v8 = 1;
              *(v7 + 40) = 1;
            }

            else
            {
              v5 = 1;
            }
          }

          v7 = EnvGetNextDefmodule(a1, v7);
        }

        while (v7);
        if (v5 && !v8)
        {
          SystemError(a1, "CONSTRCT", 2);
          break;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    GenClose(a1, v4);
    SetFastSave(a1, 0);
    return 1;
  }

  return result;
}

BOOL RemoveSaveFunction(uint64_t a1, char *a2)
{
  v3 = 0;
  *(*(*(a1 + 48) + 336) + 24) = RemoveFunctionFromCallList(a1, a2, *(*(*(a1 + 48) + 336) + 24), &v3);
  return v3 != 0;
}

uint64_t InitializeConstructs(uint64_t a1)
{
  EnvDefineFunction2(a1, "clear", 118, ClearCommand, "ClearCommand", "00");
  EnvDefineFunction2(a1, "reset", 118, ResetCommand, "ResetCommand", "00");
  v2 = *(*(a1 + 48) + 336) + 36;

  return AddWatchItem(a1, "compilations", 0, v2, 30, 0, 0);
}

uint64_t ClearCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "clear", 0, 0);
  if (result != -1)
  {

    return EnvClear(a1);
  }

  return result;
}

uint64_t ResetCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "reset", 0, 0);
  if (result != -1)
  {

    return EnvReset(a1);
  }

  return result;
}

uint64_t EnvClear(uint64_t a1)
{
  v2 = EnvActivateRouter(a1, "wtrace");
  v3 = *(*(a1 + 48) + 336);
  *v3 = 1;
  if (*(v3 + 16) > 0 || *(v3 + 20) > 0)
  {
LABEL_3:
    PrintErrorID(a1, "CONSTRCT", 1, 0);
    EnvPrintRouter(a1, "werror", "Some constructs are still in use. Clear cannot continue.\n");
    result = EnvDeactivateRouter(a1, "wtrace");
    **(*(a1 + 48) + 336) = 0;
    return result;
  }

  v5 = *(v3 + 176);
  if (v5)
  {
    while (1)
    {
      v2 = (*(v5 + 8))(a1);
      if (!v2)
      {
        goto LABEL_3;
      }

      v5 = *(v5 + 24);
      if (!v5)
      {
        v3 = *(*(a1 + 48) + 336);
        break;
      }
    }
  }

  *v3 = 0x100000000;
  for (i = *(v3 + 168); i; i = *(i + 24))
  {
    v7 = *(i + 8);
    if (*(i + 32))
    {
      v2 = v7(a1);
    }

    else
    {
      v2 = v7(v2);
    }
  }

  EnvDeactivateRouter(a1, "wtrace");
  v8 = *(a1 + 48);
  v9 = *(v8 + 440);
  if (*(*(v9 + 112) + 2) && !**(v8 + 320) && !**(v8 + 352) && !*(v9 + 16))
  {
    CleanCurrentGarbageFrame(a1, 0);
    CallPeriodicTasks(a1);
    v8 = *(a1 + 48);
  }

  *(*(v8 + 336) + 4) = 0;
  v10 = *(v8 + 128);
  if (*(v10 + 40) || *(v10 + 48))
  {
    SystemError(a1, "CONSTRCT", 1);
  }

  return EnvReset(a1);
}

uint64_t EnvReset(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(v1 + 336);
  if (!*(v2 + 12))
  {
    v3 = result;
    *(v2 + 8) = 0x100000001;
    if (*(*(*(v1 + 440) + 112) + 2))
    {
      SetHaltExecution(result, 0);
      v2 = *(*(v3 + 48) + 336);
    }

    v4 = *(v2 + 192);
    if (v4 && (result = v4(v3), v2 = *(*(v3 + 48) + 336), !result))
    {
      *(v2 + 8) = 0;
    }

    else
    {
      *(v2 + 8) = 0;
      for (i = *(v2 + 160); i; i = *(i + 24))
      {
        if (GetHaltExecution(v3))
        {
          break;
        }

        v6 = *(i + 8);
        if (*(i + 32))
        {
          (v6)(v3);
        }

        else
        {
          v6();
        }
      }

      Defmodule = EnvFindDefmodule(v3, "MAIN");
      result = EnvSetCurrentModule(v3, Defmodule);
      v8 = *(v3 + 48);
      v9 = *(v8 + 440);
      if (*(*(v9 + 112) + 2) && !**(v8 + 320) && !**(v8 + 352) && !*(v9 + 16))
      {
        CleanCurrentGarbageFrame(v3, 0);
        result = CallPeriodicTasks(v3);
        v8 = *(v3 + 48);
      }

      v2 = *(v8 + 336);
    }

    *(v2 + 12) = 0;
  }

  return result;
}

uint64_t SetBeforeResetFunction(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 336);
  result = *(v2 + 192);
  *(v2 + 192) = a2;
  return result;
}

BOOL EnvRemoveResetFunction(uint64_t a1, char *a2)
{
  v3 = 0;
  *(*(*(a1 + 48) + 336) + 160) = RemoveFunctionFromCallList(a1, a2, *(*(*(a1 + 48) + 336) + 160), &v3);
  return v3 != 0;
}

uint64_t EnvDecrementClearReadyLocks(uint64_t result)
{
  v1 = *(*(result + 48) + 336);
  v2 = *(v1 + 16);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v4 < 0 == v3)
  {
    *(v1 + 16) = v4;
  }

  return result;
}

uint64_t ClearReady(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 336) + 176);
  if (!v1)
  {
    return 1;
  }

  while (1)
  {
    result = (*(v1 + 8))(a1);
    if (!result)
    {
      break;
    }

    v1 = *(v1 + 24);
    if (!v1)
    {
      return 1;
    }
  }

  return result;
}

BOOL RemoveClearReadyFunction(uint64_t a1, char *a2)
{
  v3 = 0;
  *(*(*(a1 + 48) + 336) + 176) = RemoveFunctionFromCallList(a1, a2, *(*(*(a1 + 48) + 336) + 176), &v3);
  return v3 != 0;
}

BOOL EnvRemoveClearFunction(uint64_t a1, char *a2)
{
  v3 = 0;
  *(*(*(a1 + 48) + 336) + 168) = RemoveFunctionFromCallList(a1, a2, *(*(*(a1 + 48) + 336) + 168), &v3);
  return v3 != 0;
}

uint64_t DeinstallConstructHeader(uint64_t a1, uint64_t a2)
{
  result = DecrementSymbolCount(a1, *a2);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = strlen(*(a2 + 8));
    result = rm(a1, v5, v6 + 1);
    *(a2 + 8) = 0;
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    result = ClearUserDataList(a1, v7);
    *(a2 + 40) = 0;
  }

  return result;
}

uint64_t DestroyConstructHeader(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = strlen(*(a2 + 8));
    result = rm(v3, v4, v5 + 1);
    *(a2 + 8) = 0;
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    result = ClearUserDataList(v3, v6);
    *(a2 + 40) = 0;
  }

  return result;
}

void *AddConstruct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  v15 = *(a1 + 48);
  v16 = *(v15 + 472);
  v17 = *(*(v16 + 40) + 832);
  if (v17)
  {
    *(v16 + 32) = v17;
    *(*(*(v15 + 472) + 40) + 832) = **(*(v15 + 472) + 32);
    v18 = *(a1 + 48);
    result = *(*(v18 + 472) + 32);
  }

  else
  {
    v25 = a2;
    v26 = a8;
    v20 = a7;
    v21 = a6;
    v22 = a5;
    v23 = a4;
    v24 = a3;
    result = genalloc(a1, 0x68uLL);
    a2 = v25;
    v14 = a9;
    a3 = v24;
    a4 = v23;
    a5 = v22;
    a6 = v21;
    a7 = v20;
    a8 = v26;
    v18 = *(a1 + 48);
  }

  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  result[6] = a8;
  result[7] = v14;
  result[8] = a10;
  result[9] = a11;
  result[10] = a12;
  result[11] = a13;
  result[12] = *(*(v18 + 336) + 152);
  *(*(v18 + 336) + 152) = result;
  return result;
}

uint64_t InvalidDeftemplateSlotMessage(uint64_t a1, char *a2, char *a3, int a4)
{
  PrintErrorID(a1, "TMPLTDEF", 1, a4);
  EnvPrintRouter(a1, "werror", "Invalid slot ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " not defined in corresponding deftemplate ");
  EnvPrintRouter(a1, "werror", a3);

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t SingleFieldSlotCardinalityError(uint64_t a1, char *a2)
{
  PrintErrorID(a1, "TMPLTDEF", 2, 1);
  EnvPrintRouter(a1, "werror", "The single field slot ");
  EnvPrintRouter(a1, "werror", a2);

  return EnvPrintRouter(a1, "werror", " can only contain a single field value.\n");
}

uint64_t MultiIntoSingleFieldSlotError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PrintErrorID(a1, "TMPLTFUN", 2, 1);
  EnvPrintRouter(a1, "werror", "Attempted to assert a multifield value \n");
  EnvPrintRouter(a1, "werror", "into the single field slot ");
  if (a2)
  {
    v6 = *(*a2 + 24);
  }

  else
  {
    v6 = "<<unknown>>";
  }

  EnvPrintRouter(a1, "werror", v6);
  EnvPrintRouter(a1, "werror", " of deftemplate ");
  if (a3)
  {
    v7 = *(*a3 + 24);
  }

  else
  {
    v7 = "<<unknown>>";
  }

  EnvPrintRouter(a1, "werror", v7);
  EnvPrintRouter(a1, "werror", ".\n");

  return SetEvaluationError(a1, 1);
}

uint64_t CheckTemplateFact(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  result = EnvGetDynamicConstraintChecking(a1);
  if (result)
  {
    v5 = a2[4];
    if (v5)
    {
      if ((*(v5 + 56) & 1) == 0)
      {
        v6 = *(v5 + 48);
        if (v6)
        {
          v23 = 0u;
          v24 = 0u;
          v22 = 0u;
          v7 = a2 + 17;
          while (1)
          {
            if (*(v6 + 8))
            {
              WORD4(v22) = 4;
              v23 = *v7;
              *&v24 = *(v23 + 8) - 1;
            }

            else
            {
              WORD4(v22) = *(v7 - 4);
              *&v23 = *v7;
            }

            result = ConstraintCheckDataObject(a1, &v22, *(v6 + 16));
            if (result)
            {
              break;
            }

            v6 = *(v6 + 40);
            v7 += 2;
            if (!v6)
            {
              goto LABEL_13;
            }
          }

          v14 = result;
          gensprintf(v25, "fact f-%-5lld ", v8, v9, v10, v11, v12, v13, a2[6]);
          PrintErrorID(a1, "CSTRNCHK", 1, 1);
          EnvPrintRouter(a1, "werror", "Slot value ");
          PrintDataObject(a1, "werror", &v22, v20, v15, v16, v17, v18, v19);
          EnvPrintRouter(a1, "werror", " ");
          ConstraintViolationErrorMessage(a1, 0, v25, 0, 0, *v6, 0, v14, *(v6 + 16), 1);
          result = SetHaltExecution(a1, 1);
        }
      }
    }
  }

LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CheckRHSSlotTypes(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, char *a4)
{
  if (!EnvGetStaticConstraintChecking(a1))
  {
    return 1;
  }

  v8 = ConstraintCheckExpressionChain(a1, a2, a3[2]);
  result = 1;
  if (v8)
  {
    if (v8 == 5)
    {
      v10 = "Literal slot values";
    }

    else
    {
      v10 = "A literal slot value";
    }

    ConstraintViolationErrorMessage(a1, v10, a4, 1, 0, *a3, 0, v8, a3[2], 1);
    return 0;
  }

  return result;
}

uint64_t GetNthSlot(uint64_t a1, int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = a2 - 1;
    do
    {
      result = *(result + 40);
      if (result)
      {
        v5 = v4 == 0;
      }

      else
      {
        v5 = 1;
      }

      --v4;
    }

    while (!v5);
  }

  return result;
}

uint64_t FindSlotPosition(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0;
  }

  result = 1;
  while (*v2 != a2)
  {
    result = (result + 1);
    v2 = v2[5];
    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t UpdateDeftemplateScope(uint64_t a1)
{
  result = EnvGetNextDefmodule(a1, 0);
  if (result)
  {
    v3 = result;
    v5 = 0;
    do
    {
      for (i = *(GetModuleItem(a1, v3, *(*(*(a1 + 48) + 40) + 8)) + 8); i; i = EnvGetNextDeftemplate(a1, i))
      {
        i[56] = i[56] & 0xFB | (4 * (FindImportedConstruct(a1, "deftemplate", v3, *(*i + 24), &v5, 1, 0) != 0));
      }

      result = EnvGetNextDefmodule(a1, v3);
      v3 = result;
    }

    while (result);
  }

  return result;
}

void *FindSlot(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v3 = 1;
  *a3 = 1;
  result = *(a1 + 48);
  if (result)
  {
    while (*result != a2)
    {
      *a3 = ++v3;
      result = result[5];
      if (!result)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = 0;
    *a3 = -1;
  }

  return result;
}

void *CreateImpliedDeftemplate(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a1 + 48);
  v7 = *(v6 + 472);
  v8 = *(*(v7 + 40) + 768);
  if (v8)
  {
    *(v7 + 32) = v8;
    *(*(*(v6 + 472) + 40) + 768) = **(*(v6 + 472) + 32);
    v9 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v9 = genalloc(a1, 0x60uLL);
  }

  *v9 = a2;
  v9[1] = 0;
  v9[5] = 0;
  v9[6] = 0;
  v10 = v9[7] & 0xF8 | a3 & 1;
  *(v9 + 29) = 0;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 56) = v10 | 4;
  v9[4] = 0;
  if (EnvGetWatchItem(a1, "facts"))
  {
    EnvSetDeftemplateWatch(a1, 1, v9);
  }

  v9[2] = GetModuleItem(a1, 0, *(*(*(a1 + 48) + 40) + 8));
  AddConstructToModule(v9);
  InstallDeftemplate(a1, v9);
  return v9;
}

void *FieldConversion(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (!a2)
  {
    SystemError(a1, "ANALYSIS", 3);
    EnvExitRouter(a1, 1);
  }

  v7 = v5[25];
  if (!v7)
  {
    v12 = 0;
    goto LABEL_89;
  }

  v53 = v5;
  v50 = a3;
  if (v7[25])
  {
    v8 = *(v5 + 28);
    v9 = v7;
    while (2)
    {
      v10 = v7;
      do
      {
        v11 = *v10;
        if ((v11 - 163) < 2)
        {
          if (!AllVariablesInExpression(*(v10 + 21), v8))
          {
            goto LABEL_15;
          }
        }

        else if ((v11 - 35) <= 1 && *(*(v10 + 5) + 56) != v8)
        {
LABEL_15:
          v59 = 0;
          goto LABEL_16;
        }

        v10 = *(v10 + 24);
      }

      while (v10);
      v7 = v7[25];
      if (v7)
      {
        continue;
      }

      break;
    }

    v59 = 1;
LABEL_16:
    v7 = v9;
  }

  else
  {
    v59 = 1;
  }

  v13 = 0;
  v14 = 0;
  v51 = 0;
  v52 = 0;
  do
  {
    v54 = v13;
    v55 = v14;
    v14 = 0;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v56 = v7;
    v17 = v7;
    do
    {
      v18 = 0;
      v19 = *v17;
      if (v19 > 0x22)
      {
        if (v19 - 35 < 2)
        {
          v29 = *(v17 + 5);
          if (v59 && v29 && *(v29 + 56) == v17[28])
          {
            v30 = *(*(v17 + 6) + 120);
            if (v30)
            {
              v18 = v30(a1, v17);
            }

            else
            {
              v18 = 0;
            }

            goto LABEL_62;
          }

          v20 = GenJNVariableComparison(a1, v17, v29);
          AddNandUnification(a1, v17, a4);
          goto LABEL_42;
        }

        if (v19 == 163)
        {
          v31 = *(v17 + 21);
          if (v59 && AllVariablesInExpression(*(v17 + 21), v17[28]))
          {
            v18 = GetfieldReplace(a1, v31);
            if (v17[8])
            {
              v32 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + 32));
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v32[2] = v18;
              v18 = v32;
              goto LABEL_64;
            }

            goto LABEL_62;
          }

          v20 = GetvarReplace(a1, v31, 0, a4);
          if (v17[8])
          {
            v36 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + 32));
            v18 = 0;
            v21 = 0;
            v22 = 0;
            v36[2] = v20;
            v20 = v36;
            goto LABEL_64;
          }

          goto LABEL_42;
        }

        v20 = 0;
        v21 = 0;
        v22 = 0;
        if (v19 == 164)
        {
          v25 = *(v17 + 21);
          if (v59 && AllVariablesInExpression(*(v17 + 21), v17[28]))
          {
            v57 = GetfieldReplace(a1, v25);
            v26 = 24;
            if ((*(v17 + 4) & 1) == 0)
            {
              v26 = 16;
            }

            v18 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + v26));
            v27 = (*(*(v17 + 6) + 112))(a1, v17);
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v18[2] = v27;
          }

          else
          {
            v57 = GetvarReplace(a1, v25, 0, a4);
            v35 = 24;
            if ((*(v17 + 4) & 1) == 0)
            {
              v35 = 16;
            }

            v20 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + v35));
            v27 = (*(*(v17 + 6) + 80))(a1, v17, 1);
            v18 = 0;
            v21 = 0;
            v22 = 0;
            *(v20 + 16) = v27;
          }

          *(v27 + 24) = v57;
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        if (v19 >= 4)
        {
          goto LABEL_64;
        }

        v23 = *(v17 + 6);
        if (v59)
        {
          v24 = *(v23 + 96);
          if (v24)
          {
            v18 = v24(a1, v17);
          }

          else
          {
            v33 = 24;
            if ((*(v17 + 4) & 1) == 0)
            {
              v33 = 16;
            }

            v18 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + v33));
            v18[2] = (*(*(v17 + 6) + 112))(a1, v17);
            *(v18[2] + 24) = GenConstant(a1, *v17, *(v17 + 1));
          }

          if ((v17[8] & 1) == 0)
          {
            v21 = (*(*(v17 + 6) + 112))(a1, v17);
            v22 = GenConstant(a1, *v17, *(v17 + 1));
            v20 = 0;
            goto LABEL_64;
          }

LABEL_62:
          v20 = 0;
LABEL_63:
          v21 = 0;
          v22 = 0;
          goto LABEL_64;
        }

        v28 = *(v23 + 64);
        if (v28)
        {
          v20 = v28(a1, v17, 1);
LABEL_42:
          v18 = 0;
          goto LABEL_63;
        }

        v34 = 24;
        if ((*(v17 + 4) & 1) == 0)
        {
          v34 = 16;
        }

        v20 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + v34));
        *(v20 + 16) = (*(*(v17 + 6) + 80))(a1, v17, 1);
        v18 = 0;
        v21 = 0;
        v22 = 0;
        *(*(v20 + 16) + 24) = GenConstant(a1, *v17, *(v17 + 1));
      }

LABEL_64:
      v14 = CombineExpressions(a1, v14, v18);
      v13 = CombineExpressions(a1, v13, v20);
      v15 = CombineExpressions(a1, v15, v21);
      v37 = CombineExpressions(a1, v16, v22);
      v16 = v37;
      v17 = *(v17 + 24);
    }

    while (v17);
    if (!v15)
    {
      goto LABEL_69;
    }

    if (v56 == v53[25] && !v56[25])
    {
      v53[16] = v15;
      v53[17] = v37;
      if (v14)
      {
        goto LABEL_70;
      }
    }

    else
    {
      ReturnExpression(a1, v15);
      ReturnExpression(a1, v16);
      ReturnExpression(a1, v53[16]);
      ReturnExpression(a1, v53[17]);
      v53[16] = 0;
      v53[17] = 0;
LABEL_69:
      if (v14)
      {
LABEL_70:
        if (v55)
        {
          v55[3] = v14;
        }

        else
        {
          v51 = v14;
        }

        goto LABEL_75;
      }
    }

    v14 = v55;
LABEL_75:
    if (v13)
    {
      if (v54)
      {
        v54[3] = v13;
      }

      else
      {
        v52 = v13;
      }
    }

    else
    {
      v13 = v54;
    }

    v7 = v56[25];
  }

  while (v7);
  v12 = v51;
  if (v51)
  {
    v5 = v53;
    if (v51[3])
    {
      v38 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + 8));
      v38[2] = v51;
      v12 = v38;
    }

    a3 = v50;
  }

  else
  {
    a3 = v50;
    v5 = v53;
  }

  v7 = v52;
  if (v52 && v52[3])
  {
    v39 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + 8));
    v39[2] = v52;
    v7 = v39;
  }

LABEL_89:
  if (*v5 - 35 <= 1)
  {
    v40 = v5[5];
    if (v40)
    {
      v41 = *(v40 + 56);
      if (v41 == *(v5 + 28))
      {
        v42 = *(v5[6] + 120);
        if (v42)
        {
          v43 = v42(a1, v5);
        }

        else
        {
          v43 = 0;
        }

        v12 = CombineExpressions(a1, v43, v12);
      }

      else if (v41 >= 1)
      {
        AddNandUnification(a1, v5, a4);
        v44 = GenJNVariableComparison(a1, v5, v5[5]);
        v7 = CombineExpressions(a1, v44, v7);
        v45 = *(v5[6] + 112);
        if (v45)
        {
          v46 = v45(a1, v5);
          *(a3 + 152) = AppendExpressions(v46, *(a3 + 152));
        }

        v47 = *(*(v5[5] + 48) + 80);
        if (v47)
        {
          v48 = v47(a1);
          *(a3 + 144) = AppendExpressions(v48, *(a3 + 144));
        }
      }
    }
  }

  v5[11] = v12;
  result = CombineExpressions(a1, *(a3 + 88), v7);
  *(a3 + 88) = result;
  return result;
}

uint64_t AddNandUnification(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  if (*(a2 + 76) != *(v3 + 76) && (*(v3 + 17) & 0x80) == 0)
  {
    v4 = a3;
    if (a3)
    {
      v6 = result;
      do
      {
        v7 = *(a2 + 40);
        if (*v4 >= *(v7 + 76))
        {
          *(v7 + 16) |= 0x8000u;
          v8 = GenJNVariableComparison(v6, *(a2 + 40), *(a2 + 40));
          *(*(v4 + 8) + 96) = CombineExpressions(v6, *(*(v4 + 8) + 96), v8);
          v9 = (*(*(*(a2 + 40) + 48) + 80))(v6);
          *(*(v4 + 8) + 120) = AppendExpressions(*(*(v4 + 8) + 120), v9);
          v10 = (*(*(*(a2 + 40) + 48) + 80))(v6);
          result = AppendExpressions(*(*(v4 + 8) + 112), v10);
          *(*(v4 + 8) + 112) = result;
        }

        v4 = *(v4 + 16);
      }

      while (v4);
    }
  }

  return result;
}

uint64_t GenJNVariableComparison(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 48) + 88);
  if (!v3)
  {
    return 0;
  }

  v5 = *(*(a3 + 48) + 88);
  if (!v5)
  {
    return 0;
  }

  if (v3 != v5)
  {
    v8 = 24;
    if ((*(a2 + 16) & 1) == 0)
    {
      v8 = 16;
    }

    v9 = GenConstant(a1, 30, *(*(*(a1 + 48) + 360) + v8));
    v9[2] = (*(*(a2 + 48) + 80))(a1, a2, 1);
    *(v9[2] + 24) = (*(*(a3 + 48) + 80))(a1, a3, 0);
    return v9;
  }

  return v3();
}

void *GetvarReplace(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v9 = *(v8 + 472);
  v10 = *(*(v9 + 40) + 256);
  if (v10)
  {
    *(v9 + 32) = v10;
    *(*(*(v8 + 472) + 40) + 256) = **(*(v8 + 472) + 32);
    v11 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v11 = genalloc(a1, 0x20uLL);
  }

  *v11 = *a2;
  v11[1] = *(a2 + 1);
  v11[3] = GetvarReplace(a1, *(a2 + 24), a3, a4);
  v11[2] = GetvarReplace(a1, *(a2 + 25), a3, a4);
  if (*a2 - 35 <= 1)
  {
    AddNandUnification(a1, a2, a4);
    v12 = *(a2 + 5);
    if (a3)
    {
      if (*(a2 + 19) <= *(v12 + 76))
      {
        v13 = a1;
        v14 = v11;
LABEL_15:
        (*(*(v12 + 48) + 72))(v13, v14);
        return v11;
      }
    }

    else if (*(a2 + 21) == *(v12 + 84))
    {
      v13 = a1;
      v14 = v11;
      goto LABEL_15;
    }

    v13 = a1;
    v14 = v11;
    goto LABEL_15;
  }

  if (*v11 == 33)
  {
    ReplaceGlobalVariable(a1, v11);
  }

  return v11;
}

uint64_t AllVariablesInExpression(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = a1;
  while (*v3 - 35 > 1 || *(v3[5] + 56) == a2)
  {
    result = AllVariablesInExpression(v3[25], a2);
    if (!result)
    {
      return result;
    }

    v3 = v3[24];
    if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

void *GetfieldReplace(uint64_t a1, unsigned __int16 *a2)
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
  v7[1] = *(a2 + 1);
  v7[3] = GetfieldReplace(a1, *(a2 + 24));
  v7[2] = GetfieldReplace(a1, *(a2 + 25));
  if (*a2 - 35 > 1)
  {
    if (*v7 == 33)
    {
      ReplaceGlobalVariable(a1, v7);
    }
  }

  else
  {
    (*(*(*(a2 + 5) + 48) + 104))(a1, v7);
  }

  return v7;
}

double findEnergyTaxBracketFor(unint64_t a1)
{
  v1 = 0;
  v2 = a1 >> 20;
  v3 = 4;
  while (v1 <= v3)
  {
    v4 = v3 + v1;
    v5 = (v3 + v1) >> 1;
    v6 = dataVolumesMBs[v5];
    if (v6 == v2)
    {
      return dataVolumesEnergyTaxBrackets[v5];
    }

    if (v6 < v2)
    {
      v1 = v5 + 1;
      if (v3 < 0)
      {
LABEL_8:
        v5 = 0;
        return dataVolumesEnergyTaxBrackets[v5];
      }
    }

    else
    {
      v3 = v5 - 1;
      if (v4 <= 1)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = v1 - 1;
  return dataVolumesEnergyTaxBrackets[v5];
}

char *if_nametobitmask(const char *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (getifaddrs(&v13) < 0)
  {
    i = 0;
  }

  else
  {
    v2 = v13;
    for (i = 0; v2; v2 = v2->ifa_next)
    {
      ifa_addr = v2->ifa_addr;
      if (ifa_addr)
      {
        ifa_name = v2->ifa_name;
        if (ifa_name)
        {
          if (ifa_addr->sa_family == 18)
          {
            v6 = strlen(a1);
            if (!strncmp(ifa_name, a1, v6))
            {
              i = (i | (1 << *ifa_addr->sa_data));
              v7 = flowLogHandle;
              if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
              {
                v8 = v2->ifa_name;
                v9 = *v2->ifa_addr->sa_data;
                *buf = 136315394;
                v15 = v8;
                v16 = 1024;
                v17 = v9;
                _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "if_nametobitmask: Found pdp interface %s at index %d", buf, 0x12u);
              }
            }
          }
        }
      }
    }

    v10 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = i;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "if_nametobitmask: Computed cellular interface bitmap: %#04llx", buf, 0xCu);
    }

    MEMORY[0x238387AA0](v13);
  }

  v11 = *MEMORY[0x277D85DE8];
  return i;
}

uint64_t ifnet_get_signature(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1 || !a3 || !a4)
  {
    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *&buf[24] = a4;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "called w/ a nil arg (%p/%p/%p)", buf, 0x20u);
    }

    goto LABEL_16;
  }

  v7 = a2;
  v8 = socket(a2, 2, 0);
  if (v8 == -1)
  {
    v14 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = *__error();
      *buf = 67109120;
      *&buf[4] = v16;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "socket() failed: %{errno}d", buf, 8u);
    }

LABEL_16:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v9 = v8;
  v10 = 0;
  memset(buf, 0, sizeof(buf));
  buf[16] = v7;
  while (1)
  {
    v11 = *(a1 + v10);
    buf[v10] = v11;
    if (!v11)
    {
      break;
    }

    if (++v10 == 15)
    {
      buf[15] = 0;
      break;
    }
  }

  v12 = ioctl(v8, 0xC02869AFuLL, buf);
  if (!v12)
  {
    *a3 = *&buf[20];
    *(a3 + 16) = *&buf[36];
    *a4 = 20;
  }

  close(v9);
LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

CFMutableDictionaryRef is_directly_reachable_address(CFMutableDictionaryRef result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (result)
    {
      v2 = result;
      v3 = CFDataCreate(0, v1, *v1);
      if (!v3)
      {
        CFRelease(v2);
        return 0;
      }

      v4 = v3;
      v5 = *MEMORY[0x277CBED28];
      CFDictionarySetValue(v2, @"CellularFallbackBypass", *MEMORY[0x277CBED28]);
      CFDictionarySetValue(v2, @"ConnectionOnDemandBypass", v5);
      CFDictionarySetValue(v2, @"remote-address", v4);
      CFDictionarySetValue(v2, @"ServerBypass", v5);
      v6 = *MEMORY[0x277CBECE8];
      v7 = SCNetworkReachabilityCreateWithOptions();
      CFRelease(v2);
      CFRelease(v4);
      if (v7)
      {
        flags = 0;
        SCNetworkReachabilityGetFlags(v7, &flags);
        CFRelease(v7);
        return ((flags >> 17) & 1);
      }

      v8 = rnfLogHandle;
      result = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Failed to get a reachability handle", buf, 2u);
        return 0;
      }
    }
  }

  return result;
}

uint64_t ParseFunctionDefinitions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0xBu, 0x30uLL, 0);

  return EnvDefineFunction2(a1, "check-syntax", 117, CheckSyntaxFunction, "CheckSyntaxFunction", "11s");
}

uint64_t CheckSyntaxFunction(void *a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvTrueSymbol(a1);
  result = EnvArgCountCheck(a1, "check-syntax", 0, 1);
  if (result != -1)
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    result = EnvArgTypeCheck(a1, "check-syntax", 1, 3, &v5);
    if (result)
    {
      return CheckSyntax(a1, *(v6 + 24), a2);
    }
  }

  return result;
}

uint64_t CheckSyntax(void *a1, char *a2, uint64_t a3)
{
  *(a3 + 8) = 2;
  *(a3 + 16) = EnvTrueSymbol(a1);
  if (!OpenStringSource(a1, "check-syntax", a2, 0))
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  GetToken(a1, "check-syntax", &v13);
  if (v13 == 170)
  {
    GetToken(a1, "check-syntax", &v13);
    if (v13 == 2)
    {
      v6 = *(v14 + 24);
      EnvAddRouter(a1, "error-capture", 40, FindErrorCapture, PrintErrorCapture, 0, 0, 0);
      if (FindConstruct(a1, v6))
      {
        *(*(a1[6] + 336) + 40) = 1;
        v7 = ParseConstruct(a1, v6, "check-syntax");
        GetToken(a1, "check-syntax", &v13);
        *(*(a1[6] + 336) + 40) = 0;
        if (v7)
        {
          EnvPrintRouter(a1, "werror", "\nERROR:\n");
          PPBuffer = GetPPBuffer(a1);
          PrintInChunks(a1, "werror", PPBuffer);
          EnvPrintRouter(a1, "werror", "\n");
          DestroyPPBuffer(a1);
          CloseStringSource(a1, "check-syntax");
        }

        else
        {
          DestroyPPBuffer(a1);
          CloseStringSource(a1, "check-syntax");
          if (!*(*(a1[6] + 88) + 24))
          {
            if (v13 == 172)
            {
              *(a3 + 8) = 2;
              *(a3 + 16) = EnvFalseSymbol(a1);
              DeactivateErrorCapture(a1);
              return 0;
            }

            *(a3 + 16) = EnvAddSymbol(a1, "EXTRANEOUS-INPUT-AFTER-LAST-PARENTHESIS");
            goto LABEL_17;
          }
        }
      }

      else
      {
        v11 = Function2Parse(a1, "check-syntax", v6);
        GetToken(a1, "check-syntax", &v13);
        ClearParsedBindNames(a1);
        CloseStringSource(a1, "check-syntax");
        if (v11)
        {
          if (v13 == 172)
          {
            DeactivateErrorCapture(a1);
            ReturnExpression(a1, v11);
            *(a3 + 8) = 2;
            v12 = EnvFalseSymbol(a1);
            result = 0;
            *(a3 + 16) = v12;
            return result;
          }

          *(a3 + 16) = EnvAddSymbol(a1, "EXTRANEOUS-INPUT-AFTER-LAST-PARENTHESIS");
          DeactivateErrorCapture(a1);
          ReturnExpression(a1, v11);
          return 1;
        }
      }

      SetErrorCaptureValues(a1, a3);
LABEL_17:
      DeactivateErrorCapture(a1);
      return 1;
    }

    CloseStringSource(a1, "check-syntax");
    v9 = "EXPECTED-SYMBOL-AFTER-LEFT-PARENTHESIS";
  }

  else
  {
    CloseStringSource(a1, "check-syntax");
    v9 = "MISSING-LEFT-PARENTHESIS";
  }

  *(a3 + 16) = EnvAddSymbol(a1, v9);
  return 1;
}

uint64_t PrintErrorCapture(uint64_t a1, char *__s1, char *a3)
{
  if (!strcmp(__s1, "werror"))
  {
    **(*(a1 + 48) + 88) = AppendToString(a1, a3, **(*(a1 + 48) + 88), (*(*(a1 + 48) + 88) + 8), (*(*(a1 + 48) + 88) + 16));
  }

  else if (!strcmp(__s1, "wwarning"))
  {
    *(*(*(a1 + 48) + 88) + 24) = AppendToString(a1, a3, *(*(*(a1 + 48) + 88) + 24), (*(*(a1 + 48) + 88) + 32), (*(*(a1 + 48) + 88) + 40));
  }

  return 1;
}

double SetErrorCaptureValues(uint64_t a1, uint64_t a2)
{
  Multifield = EnvCreateMultifield(a1, 2);
  v5 = Multifield;
  v6 = **(*(a1 + 48) + 88);
  if (v6)
  {
    *(Multifield + 12) = 3;
    v7 = EnvAddSymbol(a1, v6);
  }

  else
  {
    *(Multifield + 12) = 2;
    v7 = EnvFalseSymbol(a1);
  }

  v5[4] = v7;
  v8 = *(*(*(a1 + 48) + 88) + 24);
  if (v8)
  {
    *(v5 + 20) = 3;
    v9 = EnvAddSymbol(a1, v8);
  }

  else
  {
    *(v5 + 20) = 2;
    v9 = EnvFalseSymbol(a1);
  }

  v5[6] = v9;
  *(a2 + 8) = 4;
  result = 0.0;
  *(a2 + 24) = xmmword_232816A80;
  *(a2 + 16) = v5;
  return result;
}

uint64_t DeactivateErrorCapture(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 88);
  if (*v2)
  {
    rm(a1, *v2, *(v2 + 16));
    v3 = *(a1 + 48);
    **(v3 + 88) = 0;
    v2 = *(v3 + 88);
  }

  v4 = *(v2 + 24);
  if (v4)
  {
    rm(a1, v4, *(v2 + 40));
    v5 = *(a1 + 48);
    *(*(v5 + 88) + 24) = 0;
    v2 = *(v5 + 88);
  }

  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;

  return EnvDeleteRouter(a1, "error-capture");
}

uint64_t AWDSymptomsNetworkDiagnosticFrameworkSessionStateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v40 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v40 & 0x7F) << v31;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_63;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v33;
          }

LABEL_63:
          v37 = 8;
          goto LABEL_64;
        }

        if (v13 != 4)
        {
LABEL_32:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_65;
        }

        v21 = PBReaderReadString();
        v22 = *(a1 + 32);
        *(a1 + 32) = v21;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v41 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v41 & 0x7F) << v24;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_59:
          v37 = 16;
LABEL_64:
          *(a1 + v37) = v30;
          goto LABEL_65;
        }

        if (v13 != 2)
        {
          goto LABEL_32;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          v42 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v42 & 0x7F) << v14;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_55:
        *(a1 + 24) = v20;
      }

LABEL_65:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id DisplayAddressForAddress(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && !getnameinfo([v1 bytes], objc_msgSend(v1, "length"), v6, 0x401u, 0, 0, 2))
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v6 encoding:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

__CFString *icmpTypeToString(uint64_t a1)
{
  if ((a1 + 123) >= 5u)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u", a1];
  }

  else
  {
    v2 = off_27898F5A8[(a1 + 123)];
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_8()
{

  return [v0 length];
}

uint64_t OUTLINED_FUNCTION_12()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

BOOL OUTLINED_FUNCTION_13()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_14()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_15()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_16()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t InitializeDefaultRouters(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x2Eu, 0x50uLL, DeallocateRouterData);
  v2 = *(*(a1 + 48) + 368);
  *v2 = 0;
  *(v2 + 8) = 1;
  EnvDefineFunction2(a1, "exit", 118, ExitCommand, "ExitCommand", "*1i");
  InitializeFileRouter(a1);

  return InitializeStringRouter(a1);
}

uint64_t DeallocateRouterData(uint64_t result)
{
  v1 = *(*(*(result + 48) + 368) + 48);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = *(v1 + 72);
      v4 = strlen(*v1);
      result = genfree(v2, *v1, v4 + 1);
      v5 = *(v2 + 48);
      *(*(v5 + 472) + 32) = v1;
      **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 640);
      *(*(*(v5 + 472) + 40) + 640) = *(*(v5 + 472) + 32);
      v1 = v3;
    }

    while (v3);
  }

  return result;
}

uint64_t ExitCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "exit", 2u, 1);
  if (result != -1)
  {
    v3 = result;
    if (!result || (v3 = EnvRtnLong(a1, 1), result = GetEvaluationError(a1), !result))
    {

      return EnvExitRouter(a1, v3);
    }
  }

  return result;
}

uint64_t UnrecognizedRouterMessage(uint64_t a1, char *a2)
{
  v3 = a1;
  PrintErrorID(a1, "ROUTER", 1, 0);
  EnvPrintRouter(v3, "werror", "Logical name ");
  EnvPrintRouter(v3, "werror", a2);

  return EnvPrintRouter(v3, "werror", " was not recognized by any routers\n");
}

uint64_t EnvGetcRouter(uint64_t a1, char *a2)
{
  v3 = *(*(a1 + 48) + 368);
  v4 = v3[7];
  if (v4 == a2)
  {
    v8 = getc(v4);
    v7 = v8;
    v9 = v8 == 13 || v8 == 10;
    if (!v9 || *(*(*(a1 + 48) + 368) + 56) != *(*(*(a1 + 48) + 368) + 16))
    {
      return v7;
    }

    goto LABEL_31;
  }

  if (v3[3] == a2)
  {
    v10 = v3[5];
    v7 = *(v3[4] + v10);
    v3[5] = v10 + 1;
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v7 == 13 || v7 == 10;
    if (!v11 || v3[2] != a2)
    {
      return v7;
    }

LABEL_31:
    IncrementLineCount(a1);
    return v7;
  }

  v6 = v3[6];
  if (!v6)
  {
LABEL_7:
    UnrecognizedRouterMessage(a1, a2);
    return 0xFFFFFFFFLL;
  }

  while (!*(v6 + 56) || !QueryRouter(a1, a2, v6))
  {
    v6 = *(v6 + 72);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  SetEnvironmentRouterContext(a1, *(v6 + 24));
  v12 = *(v6 + 56);
  if (*(v6 + 16))
  {
    v13 = v12(a1, a2);
  }

  else
  {
    v13 = (v12)(a2);
  }

  v7 = v13;
  if (v13 == 13 || v13 == 10)
  {
    v14 = *(*(*(a1 + 48) + 368) + 16);
    if (v14)
    {
      if (!strcmp(a2, v14))
      {
        goto LABEL_31;
      }
    }
  }

  return v7;
}

uint64_t EnvUngetcRouter(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(*(a1 + 48) + 368);
  v7 = v6[7];
  if (v7 == a3)
  {
    if ((a2 == 13 || a2 == 10) && v6[2] == a3)
    {
      DecrementLineCount(a1);
      v7 = *(*(*(a1 + 48) + 368) + 56);
    }

    return ungetc(a2, v7);
  }

  if (v6[3] == a3)
  {
    if ((a2 == 13 || a2 == 10) && v6[2] == a3)
    {
      DecrementLineCount(a1);
      v6 = *(*(a1 + 48) + 368);
    }

    v10 = v6[5];
    v11 = v10 < 1;
    v12 = v10 - 1;
    if (!v11)
    {
      v6[5] = v12;
    }

    return a2;
  }

  v8 = v6[6];
  if (!v8)
  {
LABEL_7:
    UnrecognizedRouterMessage(a1, a3);
    return 0xFFFFFFFFLL;
  }

  while (!*(v8 + 64) || !QueryRouter(a1, a3, v8))
  {
    v8 = *(v8 + 72);
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if (a2 == 13 || a2 == 10)
  {
    v13 = *(*(*(a1 + 48) + 368) + 16);
    if (v13)
    {
      if (!strcmp(a3, v13))
      {
        DecrementLineCount(a1);
      }
    }
  }

  SetEnvironmentRouterContext(a1, *(v8 + 24));
  v14 = *(v8 + 64);
  if (*(v8 + 16))
  {

    return v14(a1, a2, a3);
  }

  else
  {

    return (v14)(a2, a3);
  }
}

uint64_t EnvExitRouter(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(*(result + 48) + 368);
  *(v4 + 72) = 0;
  v5 = *(v4 + 48);
  if (!v5)
  {
    goto LABEL_10;
  }

  do
  {
    while (1)
    {
      v6 = v5;
      v5 = *(v5 + 72);
      if (*(v6 + 8) != 1 || !*(v6 + 48))
      {
        goto LABEL_6;
      }

      SetEnvironmentRouterContext(v3, *(v6 + 24));
      v7 = *(v6 + 48);
      if (!*(v6 + 16))
      {
        break;
      }

      result = v7(v3, a2);
LABEL_6:
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    result = (v7)(a2);
  }

  while (v5);
LABEL_9:
  if (!*(*(*(v3 + 48) + 368) + 72))
  {
LABEL_10:

    genexit(v3, a2);
  }

  return result;
}

uint64_t EnvAddRouterWithContext(uint64_t a1, char *__s, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(a1 + 48);
  v17 = *(v16 + 472);
  v18 = *(*(v17 + 40) + 640);
  if (v18)
  {
    *(v17 + 32) = v18;
    *(*(*(v16 + 472) + 40) + 640) = **(*(v16 + 472) + 32);
    v19 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v19 = genalloc(a1, 0x50uLL);
  }

  v20 = strlen(__s);
  v21 = genalloc(a1, v20 + 1);
  genstrcpy(v21, __s);
  *v19 = v21;
  v19[8] = 1;
  *(v19 + 2) = 1;
  *(v19 + 3) = a3;
  *(v19 + 3) = a9;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  *(v19 + 6) = a8;
  *(v19 + 7) = a6;
  *(v19 + 8) = a7;
  *(v19 + 9) = 0;
  v22 = *(a1 + 48);
  v23 = *(v22 + 368);
  v26 = *(v23 + 48);
  v25 = (v23 + 48);
  v24 = v26;
  if (v26)
  {
    if (*(v24 + 12) <= a3)
    {
LABEL_11:
      *(v19 + 9) = v24;
      v25 = (*(v22 + 368) + 48);
    }

    else
    {
      v27 = v24;
      while (1)
      {
        v28 = v27;
        v27 = *(v27 + 72);
        if (!v27)
        {
          break;
        }

        if (*(v27 + 12) <= a3)
        {
          if (!v28)
          {
            goto LABEL_11;
          }

          break;
        }
      }

      *(v19 + 9) = v27;
      v25 = (v28 + 72);
    }
  }

  *v25 = v19;
  return 1;
}

uint64_t EnvDeleteRouter(uint64_t a1, const char *a2)
{
  v2 = *(*(*(a1 + 48) + 368) + 48);
  if (!v2)
  {
    return 0;
  }

  v5 = *v2;
  if (strcmp(*v2, a2))
  {
    while (1)
    {
      v6 = v2;
      v2 = *(v2 + 72);
      if (!v2)
      {
        return 0;
      }

      v5 = *v2;
      if (!strcmp(*v2, a2))
      {
        goto LABEL_8;
      }
    }
  }

  v6 = 0;
LABEL_8:
  v8 = strlen(v5);
  genfree(a1, v5, v8 + 1);
  if (v6)
  {
    v9 = (v6 + 72);
  }

  else
  {
    v9 = (*(*(a1 + 48) + 368) + 48);
  }

  *v9 = *(v2 + 72);
  rm(a1, v2, 0x50uLL);
  return 1;
}

uint64_t QueryRouters(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 48) + 368) + 48);
  if (!v2)
  {
    return 0;
  }

  while (!QueryRouter(a1, a2, v2))
  {
    v2 = *(v2 + 72);
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t EnvDeactivateRouter(uint64_t a1, char *__s2)
{
  v2 = *(*(*(a1 + 48) + 368) + 48);
  if (!v2)
  {
    return 0;
  }

  while (strcmp(*v2, __s2))
  {
    v2 = *(v2 + 72);
    if (!v2)
    {
      return 0;
    }
  }

  *(v2 + 8) = 0;
  return 1;
}

uint64_t EnvActivateRouter(uint64_t a1, char *__s2)
{
  v2 = *(*(*(a1 + 48) + 368) + 48);
  if (!v2)
  {
    return 0;
  }

  while (strcmp(*v2, __s2))
  {
    v2 = *(v2 + 72);
    if (!v2)
    {
      return 0;
    }
  }

  result = 1;
  *(v2 + 8) = 1;
  return result;
}

uint64_t PrintNRouter(uint64_t a1, FILE *a2, const char *a3, size_t a4)
{
  v8 = genalloc(a1, a4 + 1);
  genstrncpy(v8, a3, a4);
  v8[a4] = 0;
  v9 = EnvPrintRouter(a1, a2, v8);
  genfree(a1, v8, a4 + 1);
  return v9;
}

__CFString *trafficClassToString(int a1)
{
  v1 = @"UNKNOWN";
  v2 = @"VI";
  v3 = @"VO";
  v4 = @"CTL";
  if (a1 != 900)
  {
    v4 = @"UNKNOWN";
  }

  if (a1 != 800)
  {
    v3 = v4;
  }

  if (a1 != 700)
  {
    v2 = v3;
  }

  v5 = @"AV";
  v6 = @"RV";
  if (a1 != 600)
  {
    v6 = @"UNKNOWN";
  }

  if (a1 != 500)
  {
    v5 = v6;
  }

  if (a1 <= 699)
  {
    v2 = v5;
  }

  v7 = @"RD";
  v8 = @"OAM";
  if (a1 != 400)
  {
    v8 = @"UNKNOWN";
  }

  if (a1 != 300)
  {
    v7 = v8;
  }

  if (a1 == 200)
  {
    v7 = @"BK";
  }

  if (a1 == 100)
  {
    v1 = @"BK_SYS";
  }

  if (!a1)
  {
    v1 = @"BE";
  }

  if (a1 > 199)
  {
    v1 = v7;
  }

  if (a1 <= 499)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t trafficClassIsAudioVideo(int a1)
{
  result = 1;
  if (a1 <= 699)
  {
    if (a1 == 500 || a1 == 600)
    {
      return result;
    }

    return 0;
  }

  if (a1 != 700 && a1 != 800)
  {
    return 0;
  }

  return result;
}

void sub_232757048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2327576FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *AddImplicitMethods(uint64_t a1, uint64_t a2)
{
  result = FindFunction(a1, *(*a2 + 24));
  if (result)
  {
    v71[1] = result;
    v71[0] = 30;
    v71[2] = 0;
    v71[3] = 0;
    v4 = result[5];
    if (v4)
    {
      v5 = 0;
      v72 = 0;
      v73[1] = 0;
      v6 = *v4;
      if (v6 != 42)
      {
        v73[0] = *v4;
        v5 = atoi(v73);
      }

      v7 = v4[1];
      if (v7 == 42)
      {
        v66 = -1;
      }

      else
      {
        v73[0] = v4[1];
        v66 = atoi(v73);
        LOBYTE(v6) = v7;
      }

      if (v4[2])
      {
        v14 = v4[2];
      }

      else
      {
        v14 = 117;
      }

      if (v4[2])
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v67 = v5;
      if (v5 < 1)
      {
        v24 = 0;
        v23 = 0;
      }

      else
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = v4[v15];
          if (v4[v15])
          {
            ++v15;
          }

          if (v18)
          {
            LOBYTE(v6) = v18;
          }

          else
          {
            LOBYTE(v6) = v14;
          }

          v19 = ParseRestrictionType(a1, v6);
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

          v23[2] = v19;
          v23[3] = 0;
          v24 = v23;
          if (v17)
          {
            v16[3] = v23;
            v24 = v17;
          }

          v16 = v23;
          v17 = v24;
          --v5;
        }

        while (v5);
        v5 = v67;
      }

      v73[0] = v6;
      v25 = v4[v15];
      if (v25)
      {
        v26 = 0;
        v27 = &v4[v15 + 1];
        v68 = v5 + 1;
        v70 = v5 + 1 - v66;
        v28 = v23;
        v29 = v24;
        while (1)
        {
          v30 = v26;
          if (!*(v27 + v26) && v70 + v26 == 0)
          {
            break;
          }

          v32 = ParseRestrictionType(a1, v25);
          v33 = *(a1 + 48);
          v34 = *(v33 + 472);
          v35 = *(*(v34 + 40) + 256);
          if (v35)
          {
            *(v34 + 32) = v35;
            *(*(*(v33 + 472) + 40) + 256) = **(*(v33 + 472) + 32);
            v36 = *(*(*(a1 + 48) + 472) + 32);
          }

          else
          {
            v36 = genalloc(a1, 0x20uLL);
          }

          v36[2] = v32;
          v36[3] = 0;
          v24 = v36;
          if (v29)
          {
            v28[3] = v36;
            v24 = v29;
          }

          if (*(v27 + v30) || !(v70 + v30))
          {
            FindMethodByRestrictions(a2, v24, v68 + v30, 0, &v72);
            v37 = v72;
            v38 = PackExpression(a1, v71);
            v39 = AddMethod(a1, a2, 0, v37, 0, v24, v68 + v30, 0, 0, v38, 0, 1);
            *(v39 + 16) |= 1u;
            v25 = *(v27 + v30);
            v26 = v30 + 1;
            v28 = v36;
            v29 = v24;
            if (v25)
            {
              continue;
            }
          }

          LODWORD(v30) = v30 + 1;
          goto LABEL_53;
        }

        v24 = v29;
        v36 = v28;
        v14 = v25;
LABEL_53:
        v5 = v67;
      }

      else
      {
        LODWORD(v30) = 0;
        v36 = v23;
      }

      v47 = v30 + v5;
      v48 = v66 - (v30 + v5);
      if (v66 == v30 + v5)
      {
        goto LABEL_64;
      }

      v49 = ParseRestrictionType(a1, v14);
      if (v66 != -1)
      {
        Function = FindFunction(a1, "<=");
        v49[1] = GenConstant(a1, 30, Function);
        v51 = FindFunction(a1, "length$");
        *(v49[1] + 16) = GenConstant(a1, 30, v51);
        *(*(v49[1] + 16) + 16) = GenProcWildcardReference(a1, v47 + 1);
        v52 = EnvAddLong(a1, v48);
        *(*(v49[1] + 16) + 24) = GenConstant(a1, 1, v52);
      }

      v53 = *(a1 + 48);
      v54 = *(v53 + 472);
      v55 = *(*(v54 + 40) + 256);
      if (v55)
      {
        *(v54 + 32) = v55;
        *(*(*(v53 + 472) + 40) + 256) = **(*(v53 + 472) + 32);
        v56 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v56 = genalloc(a1, 0x20uLL);
      }

      v56[2] = v49;
      v56[3] = 0;
      if (v24)
      {
        v36[3] = v56;
      }

      else
      {
        v24 = v56;
      }

      v5 = v67;
      v57 = EnvTrueSymbol(a1);
      FindMethodByRestrictions(a2, v24, v47 + 1, v57, &v72);
      v58 = v72;
      v59 = EnvTrueSymbol(a1);
      v60 = PackExpression(a1, v71);
      v61 = AddMethod(a1, a2, 0, v58, 0, v24, v47 + 1, 0, v59, v60, 0, 0);
      *(v61 + 16) |= 1u;
      if (v30)
      {
LABEL_64:
        if (v23)
        {
          v62 = v23[3];
          v23[3] = 0;
          DeleteTempRestricts(a1, v62);
        }

        FindMethodByRestrictions(a2, v24, v5, 0, &v72);
        v63 = v72;
        v64 = PackExpression(a1, v71);
        v65 = AddMethod(a1, a2, 0, v63, 0, v24, v5, 0, 0, v64, 0, 1);
        *(v65 + 16) |= 1u;
      }

      v45 = a1;
      v46 = v24;
    }

    else
    {
      v8 = *(a1 + 48);
      v9 = *(v8 + 472);
      v10 = *(*(v9 + 40) + 256);
      if (v10)
      {
        *(v9 + 32) = v10;
        *(*(*(v8 + 472) + 40) + 256) = **(*(v8 + 472) + 32);
        v11 = *(a1 + 48);
        v12 = *(v11 + 472);
        v13 = *(v12 + 32);
      }

      else
      {
        v13 = genalloc(a1, 0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(v11 + 472);
      }

      v40 = *(*(v12 + 40) + 192);
      if (v40)
      {
        *(v12 + 32) = v40;
        *(*(*(v11 + 472) + 40) + 192) = **(*(v11 + 472) + 32);
        v41 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v41 = genalloc(a1, 0x18uLL);
      }

      PackRestrictionTypes(a1, v41, 0);
      v41[1] = 0;
      v13[2] = v41;
      v13[3] = 0;
      v42 = EnvTrueSymbol(a1);
      v43 = PackExpression(a1, v71);
      v44 = AddMethod(a1, a2, 0, 0, 0, v13, 1, 0, v42, v43, 0, 0);
      *(v44 + 16) |= 1u;
      v45 = a1;
      v46 = v13;
    }

    return DeleteTempRestricts(v45, v46);
  }

  return result;
}

void *ParseRestrictionType(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 472);
  v6 = *(*(v5 + 40) + 192);
  if (v6)
  {
    *(v5 + 32) = v6;
    *(*(*(v4 + 472) + 40) + 192) = **(*(v4 + 472) + 32);
    v7 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v7 = genalloc(a1, 0x18uLL);
  }

  v7[1] = 0;
  v8 = ArgumentTypeToConstraintRecord(a1, a2);
  v9 = 0;
  v10 = *v8;
  if (*v8)
  {
    goto LABEL_35;
  }

  if ((*v8 & 6) == 6)
  {
    v11 = 12;
LABEL_11:
    v12 = EnvAddLong(a1, v11);
    v9 = GenConstant(a1, 0, v12);
    v9[3] = 0;
    goto LABEL_12;
  }

  if ((v10 & 2) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  if ((v10 & 6) != 0)
  {
    goto LABEL_11;
  }

  v9 = 0;
LABEL_12:
  v13 = *v8;
  if ((*v8 & 0x18) == 0x18)
  {
    v14 = 11;
  }

  else
  {
    if ((v13 & 0x18) == 0)
    {
      goto LABEL_17;
    }

    v14 = (v13 >> 4) & 1;
  }

  v15 = EnvAddLong(a1, v14);
  v16 = GenConstant(a1, 0, v15);
  v16[3] = v9;
  v9 = v16;
LABEL_17:
  v17 = *v8 & 0x60;
  if (v17 == 96)
  {
    v18 = 14;
LABEL_23:
    v19 = EnvAddLong(a1, v18);
    v20 = GenConstant(a1, 0, v19);
    v20[3] = v9;
    v9 = v20;
    goto LABEL_24;
  }

  if ((*v8 & 0x20) != 0)
  {
    v18 = 8;
  }

  else
  {
    v18 = 7;
  }

  if (v17)
  {
    goto LABEL_23;
  }

LABEL_24:
  v21 = *v8;
  if ((~*v8 & 0x1C0) != 0)
  {
    if ((v21 & 0x80) != 0)
    {
      v23 = EnvAddLong(a1, 5);
      v24 = GenConstant(a1, 0, v23);
      v24[3] = v9;
      v21 = *v8;
      v9 = v24;
    }

    if ((v21 & 0x60) == 0x40)
    {
      v25 = EnvAddLong(a1, 7);
      v26 = GenConstant(a1, 0, v25);
      v26[3] = v9;
      v21 = *v8;
      v9 = v26;
    }

    if ((v21 & 0x100) == 0)
    {
      goto LABEL_33;
    }

    v22 = 6;
  }

  else
  {
    v22 = 13;
  }

  v27 = EnvAddLong(a1, v22);
  v28 = GenConstant(a1, 0, v27);
  v28[3] = v9;
  v9 = v28;
LABEL_33:
  if ((*(v8 + 2) & 2) != 0)
  {
    v29 = EnvAddLong(a1, 4);
    v30 = GenConstant(a1, 0, v29);
    v30[3] = v9;
    v9 = v30;
  }

LABEL_35:
  RemoveConstraint(a1, v8);
  PackRestrictionTypes(a1, v7, v9);
  return v7;
}

uint64_t AWDSymptomsNetworkAnalyticsDNSRestoredReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v39 & 0x7F) << v21;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 20;
      }

      *(a1 + v35) = v27;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void traceroute_result_callback(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v4 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "TR: traceroute_result_callback", buf, 2u);
    }

    v5 = *(a2 + 12);
    if (v5)
    {
      v6 = "*";
    }

    else
    {
      v6 = "";
    }

    bzero(buf, 0x401uLL);
    if (v5)
    {
      goto LABEL_15;
    }

    v7 = getnameinfo((a2 + 48), 0x80u, buf, 0x401u, 0, 0, 2);
    if (v7)
    {
      v8 = v7;
      v9 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = gai_strerror(v8);
        v12 = *(a2 + 12);
        *v23 = 67109890;
        *v24 = v8;
        *&v24[4] = 2080;
        *&v24[6] = v11;
        v25 = 2080;
        v26 = buf;
        v27 = 1024;
        v28 = v12;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "TR: getnameinfo failed with error: %d (%s), hbuf: %s, loss: %d", v23, 0x22u);
      }

      buf[0] = 105;
      v13 = 1u;
      do
      {
        buf[v13] = aInvalid_0[v13];
        ++v13;
      }

      while (v13 != 8);
    }

    if (*(a2 + 12))
    {
LABEL_15:
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d  (%s)  code: %d  loss: %d", *(a2 + 8), v6, *(a2 + 16), *(a2 + 12), v21, v22];
    }

    else
    {
      v18 = *(a2 + 16);
      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = *(a2 + 8);
      if (v18 < 1)
      {
        v14 = [v19 initWithFormat:@"%d  (%s)  %s%.*f ms", v20, buf, v6, 3, *(a2 + 32), v22];
      }

      else
      {
        v14 = [v19 initWithFormat:@"%d  (%s)  %scode: %d  %.*f ms", v20, buf, v6, *(a2 + 16), 3, *(a2 + 32)];
      }
    }

    v15 = v14;
    [a1 addObject:v14];
    v16 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
    {
      *v23 = 138477827;
      *v24 = v15;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "TR: hopResult: %{private}@", v23, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

id get_traceroute_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v55 = *MEMORY[0x277D85DE8];
  if (v4 != 2 && v4 != 30)
  {
    v12 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v52[0]) = 67109120;
      HIDWORD(v52[0]) = v11;
      v13 = "TR: Cannot run traceroute for unsupported address family %d";
      goto LABEL_33;
    }

LABEL_35:
    v37 = 0;
    goto LABEL_61;
  }

  if (!v5 && v6)
  {
    v12 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v52[0]) = 67109120;
      HIDWORD(v52[0]) = v9;
      v13 = "TR: Cannot run traceroute for nil args, but numArgs: %d";
LABEL_33:
      v35 = v12;
      v36 = 8;
LABEL_34:
      _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, v13, v52, v36);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (!v7)
  {
    v38 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    LOWORD(v52[0]) = 0;
    v13 = "TR: Cannot run traceroute for nil domain";
    v35 = v38;
    v36 = 2;
    goto LABEL_34;
  }

  if (v6 == -2 || (v14 = malloc_type_malloc(8 * (v6 + 2), 0x28CCECC2uLL)) == 0)
  {
LABEL_64:
    __break(1u);
  }

  v15 = v14;
  if (v9 >= 1 && v10)
  {
    v16 = 0;
    do
    {
      v17 = strlen(*(v10 + 8 * v16));
      v18 = __CFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_64;
      }

      v20 = malloc_type_malloc(v19, 0xF67911D6uLL);
      if (!v20)
      {
        goto LABEL_64;
      }

      v21 = v20;
      v15[v16] = v20;
      v22 = *(v10 + 8 * v16);
      v23 = strlen(v22);
      if (!v22)
      {
        goto LABEL_64;
      }

      v24 = v23 + 1;
      v25 = v23 + 1;
      if (v23 + 1 < 2)
      {
LABEL_20:
        if (v23 != -1 && v25)
        {
          *v21 = 0;
        }
      }

      else
      {
        while (1)
        {
          v26 = *v22;
          *v21 = v26;
          if (!v26)
          {
            break;
          }

          ++v21;
          ++v22;
          if (--v24 <= 1)
          {
            v25 = 1;
            goto LABEL_20;
          }
        }
      }
    }

    while (++v16 != v9);
  }

  v27 = strlen(v8);
  v18 = __CFADD__(v27, 1);
  v28 = v27 + 1;
  if (v18)
  {
    goto LABEL_64;
  }

  v29 = malloc_type_malloc(v28, 0x8E18475BuLL);
  if (!v29)
  {
    goto LABEL_64;
  }

  v30 = v29;
  v15[v9] = v29;
  v31 = strlen(v8);
  if (v31 + 1 < 2)
  {
    v32 = v31 + 1;
LABEL_39:
    if (v31 != -1 && v32)
    {
      *v30 = 0;
    }
  }

  else
  {
    v32 = 1;
    v33 = v31 + 1;
    while (1)
    {
      v34 = *v8;
      *v30 = v34;
      if (!v34)
      {
        break;
      }

      ++v30;
      ++v8;
      if (--v33 <= 1)
      {
        goto LABEL_39;
      }
    }
  }

  v39 = v9 + 1;
  v15[v9 + 1] = 0;
  if (v11 == 30)
  {
    v45 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v52[0]) = 0;
      _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEFAULT, "TR: Will run traceroute for IPv6", v52, 2u);
    }

    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    bzero(v52, 0x10D88uLL);
    traceroute6_context_init(v52);
    traceroute4_set_result_callback(v52, v40, traceroute_result_callback);
    traceroute6_parseargs(v52, v39, v15);
    traceroute6_run(v52, v46, v47, v48);
    traceroute6_cleanup(v52);
    v43 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    buf = 138477827;
    v54 = v40;
    v44 = "TR: IPv6 results: %{private}@";
    goto LABEL_56;
  }

  v40 = 0;
  if (v11 == 2)
  {
    v41 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v52[0]) = 0;
      _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEFAULT, "TR: Will run traceroute for IPv4", v52, 2u);
    }

    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    bzero(v52, 0x750uLL);
    traceroute4_context_init(v52);
    traceroute4_set_result_callback(v52, v40, traceroute_result_callback);
    if (!traceroute4_parseargs(v52, v39, v15))
    {
      v49 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_ERROR, "TR: traceroute4 parseargs failed", &buf, 2u);
      }

      traceroute4_cleanup(v52);
      goto LABEL_60;
    }

    if (!traceroute4_run(v52))
    {
      v42 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "TR: traceroute4 run failed", &buf, 2u);
      }
    }

    traceroute4_cleanup(v52);
    v43 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      buf = 138477827;
      v54 = v40;
      v44 = "TR: IPv4 results: %{private}@";
LABEL_56:
      _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEFAULT, v44, &buf, 0xCu);
    }
  }

LABEL_60:
  free_options(v39, v15);
  v37 = v40;

LABEL_61:
  v50 = *MEMORY[0x277D85DE8];

  return v37;
}

void free_options(int a1, void **a2)
{
  if (a1 >= 1)
  {
    v3 = a1;
    v4 = a2;
    do
    {
      if (*v4)
      {
        free(*v4);
        *v4 = 0;
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  free(a2);
}

void *InitializeDefglobals(uint64_t a1)
{
  AllocateEnvironmentData(a1, 1u, 0x108uLL, DeallocateDefglobalData);
  v2 = *(*(a1 + 48) + 8);
  v3 = unk_284794AE8;
  *(v2 + 24) = xmmword_284794AD8;
  *(v2 + 40) = v3;
  v4 = unk_284794B08;
  *(v2 + 56) = xmmword_284794AF8;
  v5 = xmmword_284794B28;
  *(v2 + 120) = unk_284794B38;
  v6 = xmmword_284794B18;
  *(v2 + 104) = v5;
  *(v2 + 88) = v6;
  *(v2 + 72) = v4;
  v7 = *(*(a1 + 48) + 8);
  v8 = unk_284794B58;
  *(v7 + 136) = xmmword_284794B48;
  *(v7 + 152) = v8;
  v9 = unk_284794B78;
  *(v7 + 168) = xmmword_284794B68;
  *(v7 + 184) = v9;
  v10 = unk_284794B98;
  *(v7 + 200) = xmmword_284794B88;
  *(v7 + 216) = v10;
  *(v7 + 232) = xmmword_284794BA8;
  v11 = *(*(a1 + 48) + 8);
  *(v11 + 20) = 1;
  *(v11 + 248) = -1;
  InstallPrimitive(a1, v11 + 24, 33);
  InstallPrimitive(a1, *(*(a1 + 48) + 8) + 136, 90);
  *(*(*(a1 + 48) + 8) + 8) = RegisterModuleItem(a1, "defglobal", AllocateModule_1, ReturnModule_1, BloadDefglobalModuleReference, 0, EnvFindDefglobalInModule);
  AddPortConstructItem(a1, "defglobal", 2);
  DefglobalBasicCommands(a1);
  DefglobalCommandDefinitions(a1);
  result = AddConstruct(a1, "defglobal", "defglobals", ParseDefglobal, EnvFindDefglobal, GetConstructNamePointer, GetConstructPPForm, GetConstructModuleItem, EnvGetNextDefglobal, SetNextConstruct, EnvIsDefglobalDeletable, EnvUndefglobal, ReturnDefglobal);
  **(*(a1 + 48) + 8) = result;
  return result;
}

uint64_t GetDefglobalValue2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  ImportedConstruct = FindImportedConstruct(a1, "defglobal", 0, *(a2 + 24), &v8, 1, 0);
  if (!ImportedConstruct)
  {
    PrintErrorID(a1, "GLOBLDEF", 1, 0);
    EnvPrintRouter(a1, "werror", "Global variable ?*");
    EnvPrintRouter(a1, "werror", *(a2 + 24));
    EnvPrintRouter(a1, "werror", "* is unbound.\n");
    goto LABEL_5;
  }

  if (v8 >= 2)
  {
    AmbiguousReferenceErrorMessage(a1, "defglobal", *(a2 + 24));
LABEL_5:
    *(a3 + 8) = 2;
    *(a3 + 16) = EnvFalseSymbol(a1);
    SetEvaluationError(a1, 1);
    return 0;
  }

  QGetDefglobalValue(a1, ImportedConstruct, a3);
  return 1;
}

uint64_t QGetDefglobalValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 72);
  *(a3 + 8) = v3;
  v4 = *(a2 + 88);
  *(a3 + 16) = *(a2 + 80);
  *(a3 + 24) = v4;
  v5 = *(a2 + 96);
  *(a3 + 32) = v5;
  if (v3 == 4)
  {
    Multifield = EnvCreateMultifield(a1, v5 + 1);
    *(a3 + 16) = Multifield;
    memcpy(Multifield + 3, (*(a2 + 80) + 16 * *(a2 + 88) + 24), 16 * *(a3 + 32) + 16);
  }

  return 1;
}

uint64_t DecrementDefglobalBusyCount(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 48) + 336) + 4))
  {
    --*(a2 + 56);
  }

  return result;
}

uint64_t DeallocateDefglobalData(uint64_t a1)
{
  result = Bloaded(a1);
  if (!result)
  {
    DoForAllConstructs(a1, DestroyDefglobalAction, *(*(*(a1 + 48) + 8) + 8), 0, 0);
    result = EnvGetNextDefmodule(a1, 0);
    if (result)
    {
      v3 = result;
      do
      {
        ModuleItem = GetModuleItem(a1, v3, *(*(*(a1 + 48) + 8) + 8));
        v5 = *(a1 + 48);
        *(*(v5 + 472) + 32) = ModuleItem;
        **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
        *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
        result = EnvGetNextDefmodule(a1, v3);
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

BOOL EnvIsDefglobalDeletable(uint64_t a1, uint64_t a2)
{
  result = ConstructsDeletable(a1);
  if (result)
  {
    return *(a2 + 56) == 0;
  }

  return result;
}

uint64_t ReturnDefglobal(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    ValueDeinstall(result, a2 + 64);
    if (*(a2 + 72) == 4)
    {
      ReturnMultifield(v3, *(a2 + 80));
    }

    RemoveHashedExpression(v3, *(a2 + 112));
    result = DeinstallConstructHeader(v3, a2);
    v4 = *(v3 + 48);
    *(*(v4 + 472) + 32) = a2;
    **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 960);
    *(*(*(v4 + 472) + 40) + 960) = *(*(v4 + 472) + 32);
    *(*(*(v3 + 48) + 8) + 12) = 1;
  }

  return result;
}

uint64_t QSetDefglobalValue(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    EvaluateExpression(a1, *(a2 + 112), a3);
    if (*(*(*(a1 + 48) + 352) + 8))
    {
      *(a3 + 8) = 2;
      *(a3 + 16) = EnvFalseSymbol(a1);
    }
  }

  if (*(a2 + 48))
  {
    EnvPrintRouter(a1, "wtrace", ":== ?*");
    EnvPrintRouter(a1, "wtrace", *(*a2 + 24));
    EnvPrintRouter(a1, "wtrace", "* ==> ");
    PrintDataObject(a1, "wtrace", a3, v12, v7, v8, v9, v10, v11);
    EnvPrintRouter(a1, "wtrace", " <== ");
    PrintDataObject(a1, "wtrace", a2 + 64, v18, v13, v14, v15, v16, v17);
    EnvPrintRouter(a1, "wtrace", "\n");
  }

  ValueDeinstall(a1, a2 + 64);
  if (*(a2 + 72) == 4)
  {
    ReturnMultifield(a1, *(a2 + 80));
  }

  v19 = *(a3 + 8);
  *(a2 + 72) = v19;
  if (v19 == 4)
  {
    DuplicateMultifield(a1, a2 + 64, a3);
  }

  else
  {
    *(a2 + 80) = *(a3 + 16);
  }

  result = ValueInstall(a1, a2 + 64);
  v21 = *(a1 + 48);
  *(*(v21 + 8) + 12) = 1;
  v22 = *(v21 + 440);
  if (*(*(v22 + 112) + 2) && !**(v21 + 320) && !**(v21 + 352) && !*(v22 + 16))
  {
    CleanCurrentGarbageFrame(a1, 0);

    return CallPeriodicTasks(a1);
  }

  return result;
}

void *QFindDefglobal(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(*(*(a1 + 48) + 8) + 8);
  v5 = 0;
  while (1)
  {
    result = GetNextConstructItem(a1, v5, v4);
    v5 = result;
    if (!result || *result == a2)
    {
      break;
    }

    v4 = *(*(*(v3 + 48) + 8) + 8);
    a1 = v3;
  }

  return result;
}

uint64_t EnvGetDefglobalValueForm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OpenStringDestination(a1, "GlobalValueForm", a2, a3);
  EnvPrintRouter(a1, "GlobalValueForm", "?*");
  EnvPrintRouter(a1, "GlobalValueForm", *(*a4 + 24));
  EnvPrintRouter(a1, "GlobalValueForm", "* = ");
  PrintDataObject(a1, "GlobalValueForm", a4 + 64, v11, v6, v7, v8, v9, v10);

  return CloseStringDestination(a1, "GlobalValueForm");
}

uint64_t EnvGetDefglobalValue(uint64_t a1, char *a2, uint64_t a3)
{
  result = FindNamedConstructInModuleOrImports(a1, a2, **(*(a1 + 48) + 8));
  if (result)
  {
    QGetDefglobalValue(a1, result, a3);
    return 1;
  }

  return result;
}

uint64_t EnvSetDefglobalValue(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = EnvAddSymbol(a1, a2);
  result = QFindDefglobal(a1, v5);
  if (result)
  {
    QSetDefglobalValue(a1, result, a3, 0);
    return 1;
  }

  return result;
}

uint64_t UpdateDefglobalScope(uint64_t a1)
{
  result = EnvGetNextDefmodule(a1, 0);
  if (result)
  {
    v3 = result;
    v5 = 0;
    do
    {
      for (i = *(GetModuleItem(a1, v3, *(*(*(a1 + 48) + 8) + 8)) + 8); i; i = GetNextConstructItem(a1, i, *(*(*(a1 + 48) + 8) + 8)))
      {
        i[48] = i[48] & 0xFD | (2 * (FindImportedConstruct(a1, "defglobal", v3, *(*i + 24), &v5, 1, 0) != 0));
      }

      result = EnvGetNextDefmodule(a1, v3);
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t GetNextDefglobalInScope(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 8);
  if (!a2)
  {
    if (*(v4 + 248) != *(*(v3 + 32) + 72))
    {
      UpdateDefglobalScope(a1);
      *(*(*(a1 + 48) + 8) + 248) = *(*(*(a1 + 48) + 32) + 72);
    }

    v6 = a1;
    v7 = 0;
    goto LABEL_6;
  }

  for (i = GetNextConstructItem(a1, a2, *(v4 + 8)); ; i = *(GetModuleItem(a1, *(*(v9 + 8) + 256), *(*(v9 + 8) + 8)) + 8))
  {
    v10 = *(a1 + 48);
    if (!*(*(v10 + 8) + 256))
    {
      return 0;
    }

    if (i)
    {
      break;
    }

LABEL_12:
    v7 = *(*(v10 + 8) + 256);
    v6 = a1;
LABEL_6:
    NextDefmodule = EnvGetNextDefmodule(v6, v7);
    v9 = *(a1 + 48);
    *(*(v9 + 8) + 256) = NextDefmodule;
  }

  while ((*(i + 48) & 2) == 0)
  {
    i = GetNextConstructItem(a1, i, *(*(*(a1 + 48) + 8) + 8));
    if (!i)
    {
      v10 = *(a1 + 48);
      goto LABEL_12;
    }
  }

  return i;
}

uint64_t DestroyDefglobalAction(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(a2 + 72) == 4)
    {
      ReturnMultifield(result, *(a2 + 80));
    }

    result = DeinstallConstructHeader(v3, a2);
    v4 = *(v3 + 48);
    *(*(v4 + 472) + 32) = a2;
    **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 960);
    *(*(*(v4 + 472) + 40) + 960) = *(*(v4 + 472) + 32);
  }

  return result;
}

void *AllocateModule_1(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 472);
  v3 = *(*(v2 + 40) + 192);
  if (!v3)
  {
    return genalloc(a1, 0x18uLL);
  }

  *(v2 + 32) = v3;
  *(*(*(v1 + 472) + 40) + 192) = **(*(v1 + 472) + 32);
  return *(*(*(a1 + 48) + 472) + 32);
}

uint64_t ReturnModule_1(uint64_t a1, uint64_t a2)
{
  result = FreeConstructHeaderModule(a1, a2, **(*(a1 + 48) + 8));
  v5 = *(a1 + 48);
  *(*(v5 + 472) + 32) = a2;
  **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
  *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
  return result;
}

uint64_t FileCommandDefinitions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0xEu, 0x68uLL, DeallocateFileCommandData);
  EnvDefineFunction2(a1, "batch", 98, BatchCommand, "BatchCommand", "11k");
  EnvDefineFunction2(a1, "batch*", 98, BatchStarCommand, "BatchStarCommand", "11k");
  EnvDefineFunction2(a1, "dribble-on", 98, DribbleOnCommand, "DribbleOnCommand", "11k");
  EnvDefineFunction2(a1, "dribble-off", 98, DribbleOffCommand, "DribbleOffCommand", "00");
  EnvDefineFunction2(a1, "save", 98, SaveCommand, "SaveCommand", "11k");
  EnvDefineFunction2(a1, "load", 98, LoadCommand, "LoadCommand", "11k");
  EnvDefineFunction2(a1, "load*", 98, LoadStarCommand, "LoadStarCommand", "11k");
  EnvDefineFunction2(a1, "bsave", 98, BsaveCommand, "BsaveCommand", "11k");
  InitializeBsaveData(a1);
  InitializeBloadData(a1);

  return EnvDefineFunction2(a1, "bload", 98, BloadCommand, "BloadCommand", "11k");
}

uint64_t DeallocateFileCommandData(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 112);
  v3 = *(v2 + 80);
  if (v3)
  {
    do
    {
      v4 = *(v3 + 40);
      if (*v3)
      {
        v5 = strlen(*(v3 + 16));
        rm(a1, *(v3 + 16), v5 + 1);
      }

      else
      {
        GenClose(a1, *(*(*(*(a1 + 48) + 112) + 80) + 8));
      }

      v6 = *(a1 + 48);
      *(*(v6 + 472) + 32) = v3;
      **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 384);
      *(*(*(v6 + 472) + 40) + 384) = *(*(v6 + 472) + 32);
      v3 = v4;
    }

    while (v4);
    v2 = *(*(a1 + 48) + 112);
  }

  v7 = *(v2 + 56);
  if (v7)
  {
    rm(a1, v7, *(v2 + 72));
    v2 = *(*(a1 + 48) + 112);
  }

  result = DeleteString(a1, *(v2 + 96));
  v9 = *(a1 + 48);
  *(*(v9 + 112) + 96) = 0;
  v10 = *(v9 + 112);
  v11 = *(v10 + 8);
  if (v11)
  {
    result = rm(a1, v11, *(v10 + 24));
    v10 = *(*(a1 + 48) + 112);
  }

  v12 = *v10;
  if (*v10)
  {

    return GenClose(a1, v12);
  }

  return result;
}

uint64_t BatchCommand(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "batch", 0, 1) == -1)
  {
    return 0;
  }

  FileName = GetFileName(a1, "batch", 1);
  if (!FileName)
  {
    return 0;
  }

  return OpenBatch(a1, FileName, 0);
}

uint64_t BatchStarCommand(void *a1)
{
  if (EnvArgCountCheck(a1, "batch*", 0, 1) == -1)
  {
    return 0;
  }

  FileName = GetFileName(a1, "batch*", 1);
  if (!FileName)
  {
    return 0;
  }

  return EnvBatchStar(a1, FileName);
}

uint64_t DribbleOnCommand(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "dribble-on", 0, 1) == -1)
  {
    return 0;
  }

  FileName = GetFileName(a1, "dribble-on", 1);
  if (!FileName)
  {
    return 0;
  }

  return EnvDribbleOn(a1, FileName);
}

BOOL DribbleOffCommand(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "dribble-off", 0, 0) == -1)
  {
    return 0;
  }

  return EnvDribbleOff(a1);
}

uint64_t SaveCommand(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "save", 0, 1) != -1)
  {
    result = GetFileName(a1, "save", 1);
    if (!result)
    {
      return result;
    }

    v3 = result;
    if (EnvSave(a1, result))
    {
      return 1;
    }

    OpenErrorMessage(a1, "save", v3);
  }

  return 0;
}

uint64_t LoadCommand(void *a1)
{
  if (EnvArgCountCheck(a1, "load", 0, 1) != -1)
  {
    result = GetFileName(a1, "load", 1);
    if (!result)
    {
      return result;
    }

    v3 = result;
    SetPrintWhileLoading(a1, 1);
    v4 = EnvLoad(a1, v3);
    SetPrintWhileLoading(a1, 0);
    if (v4)
    {
      return v4 != -1;
    }

    OpenErrorMessage(a1, "load", v3);
  }

  return 0;
}

uint64_t LoadStarCommand(void *a1)
{
  if (EnvArgCountCheck(a1, "load*", 0, 1) != -1)
  {
    result = GetFileName(a1, "load*", 1);
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = EnvLoad(a1, result);
    if (v4 != -1)
    {
      if (v4)
      {
        return 1;
      }

      OpenErrorMessage(a1, "load*", v3);
    }
  }

  return 0;
}

uint64_t EnvDribbleOn(uint64_t a1, char *__filename)
{
  if (**(*(a1 + 48) + 112))
  {
    EnvDribbleOff(a1);
  }

  v4 = GenOpen(a1, __filename, "w");
  v5 = *(a1 + 48);
  **(v5 + 112) = v4;
  if (**(v5 + 112))
  {
    EnvAddRouter(a1, "dribble", 40, FindDribble, PrintDribble, GetcDribble, UngetcDribble, ExitDribble);
    v6 = *(*(a1 + 48) + 112);
    *(v6 + 16) = 0;
    v7 = *(v6 + 32);
    v8 = 1;
    if (v7)
    {
      v7(a1, 1);
    }
  }

  else
  {
    OpenErrorMessage(a1, "dribble-on", __filename);
    return 0;
  }

  return v8;
}

BOOL EnvDribbleOff(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 112);
  v4 = *(v3 + 32);
  if (v4)
  {
    v4(a1, 0);
    v2 = *(a1 + 48);
    v3 = *(v2 + 112);
  }

  if (*v3)
  {
    if (*(v3 + 16))
    {
      fputs(*(v3 + 8), *v3);
    }

    EnvDeleteRouter(a1, "dribble");
    v5 = GenClose(a1, **(*(a1 + 48) + 112)) == 0;
    v2 = *(a1 + 48);
    v3 = *(v2 + 112);
  }

  else
  {
    v5 = 1;
  }

  *v3 = 0;
  v6 = *(v2 + 112);
  v7 = v6[1];
  if (v7)
  {
    rm(a1, v7, v6[3]);
    v8 = *(a1 + 48);
    *(*(v8 + 112) + 8) = 0;
    v6 = *(v8 + 112);
  }

  v6[2] = 0;
  v6[3] = 0;
  return v5;
}

uint64_t PrintDribble(uint64_t a1, FILE *a2, char *a3)
{
  v6 = *a3;
  if (*a3)
  {
    v7 = (a3 + 1);
    do
    {
      PutcDribbleBuffer(a1, v6);
      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  EnvDeactivateRouter(a1, "dribble");
  EnvPrintRouter(a1, a2, a3);
  EnvActivateRouter(a1, "dribble");
  return 1;
}

uint64_t GetcDribble(uint64_t a1, char *a2)
{
  EnvDeactivateRouter(a1, "dribble");
  v4 = EnvGetcRouter(a1, a2);
  EnvActivateRouter(a1, "dribble");
  PutcDribbleBuffer(a1, v4);
  return v4;
}

uint64_t UngetcDribble(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(*(a1 + 48) + 112);
  v7 = *(v6 + 16);
  if (v7)
  {
    *(v6 + 16) = --v7;
  }

  *(*(v6 + 8) + v7) = 0;
  EnvDeactivateRouter(a1, "dribble");
  v8 = EnvUngetcRouter(a1, a2, a3);
  EnvActivateRouter(a1, "dribble");
  return v8;
}

uint64_t ExitDribble(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 112);
  if (*(v2 + 16))
  {
    fputs(*(v2 + 8), *v2);
    v2 = *(*(a1 + 48) + 112);
  }

  if (*v2)
  {
    GenClose(a1, *v2);
  }

  return 1;
}

uint64_t LLGetcBatch(uint64_t a1, char *a2, int a3)
{
  do
  {
    v6 = *(*(a1 + 48) + 112);
    if (*(v6 + 40))
    {
      v7 = EnvGetcRouter(a1, *(v6 + 48));
    }

    else
    {
      v7 = getc(*(v6 + 48));
    }

    v8 = v7;
    if (v7 != -1)
    {
      v11 = v7 << 24;
      v12 = ExpandStringWithChar(a1, v7, *(*(*(a1 + 48) + 112) + 56), (*(*(a1 + 48) + 112) + 64), (*(*(a1 + 48) + 112) + 72), *(*(*(a1 + 48) + 112) + 72) + 120);
      v13 = *(a1 + 48);
      *(*(v13 + 112) + 56) = v12;
      if (v11 != 218103808)
      {
        if (v11 != 167772160)
        {
          return v8;
        }

        EnvPrintRouter(a1, "stdout", *(*(v13 + 112) + 56));
        v14 = *(*(a1 + 48) + 112);
        v14[8] = 0;
        v15 = v14[7];
        if (v15)
        {
          v16 = v14[9];
          if (v16 >= 0x79)
          {
            rm(a1, v15, v16);
            v17 = *(*(a1 + 48) + 112);
            *(v17 + 72) = 0;
            *(v17 + 56) = 0;
          }
        }
      }

      IncrementLineCount(a1);
      return v8;
    }

    v9 = *(*(a1 + 48) + 112);
    if (*(v9 + 64))
    {
      EnvPrintRouter(a1, "stdout", *(v9 + 56));
    }
  }

  while (RemoveBatch(a1));
  v10 = *(*(a1 + 48) + 112);
  if (*(v10 + 64))
  {
    EnvPrintRouter(a1, "stdout", *(v10 + 56));
  }

  EnvDeleteRouter(a1, "batch");
  RemoveBatch(a1);
  if (a3 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  return EnvGetcRouter(a1, a2);
}

uint64_t RemoveBatch(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 112) + 80);
  if (!v1)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 1);
  if (*v1)
  {
    CloseStringSource(a1, v4);
    v5 = strlen(*(*(*(*(a1 + 48) + 112) + 80) + 16));
    rm(a1, *(*(*(*(a1 + 48) + 112) + 80) + 16), v5 + 1);
  }

  else
  {
    GenClose(a1, v4);
    FlushParsingMessages(a1);
    DeleteErrorCaptureRouter(a1);
  }

  DeleteString(a1, *(*(*(*(a1 + 48) + 112) + 80) + 24));
  v6 = *(a1 + 48);
  v7 = *(v6 + 112);
  v8 = *(v7 + 80);
  *(v7 + 80) = *(v8 + 40);
  *(*(v6 + 472) + 32) = v8;
  **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 384);
  *(*(*(v6 + 472) + 40) + 384) = *(*(v6 + 472) + 32);
  v9 = *(a1 + 48);
  v10 = *(v9 + 112);
  v11 = *(v10 + 80);
  if (!v11)
  {
    *(v10 + 88) = 0;
    *(*(v9 + 112) + 48) = 0;
    v15 = *(v9 + 112);
    v16 = *(v15 + 56);
    if (v16)
    {
      rm(a1, v16, *(v15 + 72));
      v17 = *(a1 + 48);
      *(*(v17 + 112) + 56) = 0;
      v15 = *(v17 + 112);
    }

    *(v15 + 64) = 0;
    *(v15 + 72) = 0;
    if (!v3)
    {
      EnvSetParsingFileName(a1, *(v15 + 96));
      DeleteString(a1, *(*(*(a1 + 48) + 112) + 96));
      result = 0;
      *(*(*(a1 + 48) + 112) + 96) = 0;
      return result;
    }

    return 0;
  }

  *(v10 + 40) = *v11;
  *(v10 + 48) = *(v11 + 8);
  v12 = *(v9 + 112);
  *(v12 + 64) = 0;
  v13 = *(v12 + 80);
  if (!*v13)
  {
    EnvSetParsingFileName(a1, *(v13 + 24));
    v13 = *(*(*(a1 + 48) + 112) + 80);
  }

  SetLineCount(a1, *(v13 + 32));
  return 1;
}

uint64_t OpenBatch(uint64_t a1, char *a2, int a3)
{
  v6 = GenOpen(a1, a2, "r");
  if (v6)
  {
    v7 = v6;
    if (*(*(*(a1 + 48) + 112) + 80) || (EnvAddRouter(a1, "batch", 20, FindBatch, 0, GetcBatch, UngetcBatch, ExitBatch), *(*(*(a1 + 48) + 112) + 80)))
    {
      *(*(*(*(a1 + 48) + 112) + 80) + 32) = GetLineCount(a1);
    }

    else
    {
      ParsingFileName = EnvGetParsingFileName(a1);
      *(*(*(a1 + 48) + 112) + 96) = CopyString(a1, ParsingFileName);
    }

    EnvSetParsingFileName(a1, a2);
    SetLineCount(a1, 0);
    CreateErrorCaptureRouter(a1);
    AddBatch(a1, a3, v7, 0, 0, a2);
    return 1;
  }

  else
  {
    OpenErrorMessage(a1, "batch", a2);
    return 0;
  }
}

uint64_t UngetcBatch(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 112);
  v3 = *(v2 + 64);
  if (v3)
  {
    *(v2 + 64) = --v3;
  }

  v4 = *(v2 + 56);
  if (v4)
  {
    *(v4 + v3) = 0;
    v2 = *(*(a1 + 48) + 112);
  }

  if (*(v2 + 40))
  {
    return EnvUngetcRouter(a1, a2, *(v2 + 48));
  }

  else
  {
    return ungetc(a2, *(v2 + 48));
  }
}

char *AddBatch(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, char *__s)
{
  v12 = *(a1 + 48);
  v13 = *(v12 + 472);
  v14 = *(*(v13 + 40) + 384);
  if (v14)
  {
    *(v13 + 32) = v14;
    *(*(*(v12 + 472) + 40) + 384) = **(*(v12 + 472) + 32);
    v15 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v15 = genalloc(a1, 0x30uLL);
  }

  *v15 = a4;
  v15[1] = a3;
  v15[2] = a5;
  result = CopyString(a1, __s);
  v15[4] = 0;
  v15[5] = 0;
  v15[3] = result;
  v17 = *(a1 + 48);
  v18 = *(v17 + 112);
  v19 = *(v18 + 80);
  if (v19)
  {
    if (a2)
    {
      *(*(v18 + 88) + 40) = v15;
      *(*(v17 + 112) + 88) = v15;
      return result;
    }

    v15[5] = v19;
    *(*(v17 + 112) + 80) = v15;
  }

  else
  {
    *(v18 + 80) = v15;
    *(*(v17 + 112) + 88) = v15;
  }

  v20 = *(v17 + 112);
  *(v20 + 40) = a4;
  *(v20 + 48) = a3;
  *(*(v17 + 112) + 64) = 0;
  return result;
}

uint64_t OpenStringBatch(uint64_t a1, char *a2, char *a3, int a4)
{
  if (!OpenStringSource(a1, a2, a3, 0))
  {
    return 0;
  }

  if (!*(*(*(a1 + 48) + 112) + 80))
  {
    EnvAddRouter(a1, "batch", 20, FindBatch, 0, GetcBatch, UngetcBatch, ExitBatch);
  }

  v8 = 1;
  AddBatch(a1, a4, a2, 1, a3, 0);
  return v8;
}

uint64_t CloseAllBatchSources(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 112);
  v3 = *(v2 + 56);
  if (v3)
  {
    if (*(v2 + 64))
    {
      EnvPrintRouter(a1, "stdout", *(v2 + 56));
      v2 = *(*(a1 + 48) + 112);
      v3 = *(v2 + 56);
    }

    rm(a1, v3, *(v2 + 72));
    v4 = *(a1 + 48);
    *(*(v4 + 112) + 56) = 0;
    v5 = *(v4 + 112);
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
  }

  EnvDeleteRouter(a1, "batch");
  do
  {
    result = RemoveBatch(a1);
  }

  while (result);
  return result;
}

uint64_t EnvBatchStar(void *a1, char *a2)
{
  v13 = 0;
  v14 = 0;
  v4 = GenOpen(a1, a2, "r");
  if (v4)
  {
    v5 = v4;
    ParsingFileName = EnvGetParsingFileName(a1);
    v7 = CopyString(a1, ParsingFileName);
    EnvSetParsingFileName(a1, a2);
    CreateErrorCaptureRouter(a1);
    v8 = SetLineCount(a1, 1);
    SetHaltExecution(a1, 0);
    SetEvaluationError(a1, 0);
    v9 = getc(v5);
    if (v9 != -1)
    {
      v10 = v9;
      v11 = 0;
      do
      {
        v11 = ExpandStringWithChar(a1, v10, v11, &v14, &v13, v13 + 80);
        if (CompleteCommand(v11))
        {
          FlushPPBuffer(a1);
          SetPPBufferStatus(a1, 0);
          RouteCommand(a1, v11, 0);
          FlushPPBuffer(a1);
          SetHaltExecution(a1, 0);
          SetEvaluationError(a1, 0);
          FlushBindList(a1);
          genfree(a1, v11, v13);
          v13 = 0;
          v14 = 0;
          FlushParsingMessages(a1);
          v11 = 0;
        }

        if (v10 == 13 || v10 == 10)
        {
          IncrementLineCount(a1);
        }

        v10 = getc(v5);
      }

      while (v10 != -1);
      if (v11)
      {
        genfree(a1, v11, v13);
      }
    }

    GenClose(a1, v5);
    FlushParsingMessages(a1);
    DeleteErrorCaptureRouter(a1);
    SetLineCount(a1, v8);
    EnvSetParsingFileName(a1, v7);
    DeleteString(a1, v7);
    return 1;
  }

  else
  {
    OpenErrorMessage(a1, "batch", a2);
    return 0;
  }
}

uint64_t PutcDribbleBuffer(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 48);
  if (a2 == -1)
  {
    v6 = *(v3 + 112);
    if (*(v6 + 16))
    {
      result = fputs(*(v6 + 8), *v6);
      v7 = *(*(v2 + 48) + 112);
      *(v7 + 16) = 0;
      **(v7 + 8) = 0;
    }
  }

  else
  {
    v5 = *(v3 + 112);
    if (*(*(v3 + 368) + 8))
    {
      result = ExpandStringWithChar(result, a2, *(v5 + 8), (v5 + 16), (v5 + 24), *(v5 + 24) + 120);
      *(*(*(v2 + 48) + 112) + 8) = result;
    }

    else
    {
      if (*(v5 + 16))
      {
        fputs(*(v5 + 8), *v5);
        v8 = *(*(v2 + 48) + 112);
        *(v8 + 16) = 0;
        **(v8 + 8) = 0;
        v5 = *(*(v2 + 48) + 112);
      }

      v9 = *v5;

      return fputc(a2, v9);
    }
  }

  return result;
}

__CFString *flowBasedStateToString(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_27898F818[a1];
  }
}

void sub_232763F38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

const char *netcore_strerror(int a1, char *a2, size_t a3)
{
  if (strerror_r(a1, a2, a3))
  {
    return "";
  }

  else
  {
    return a2;
  }
}

void symtrans_main(const char *a1)
{
  mach_service = xpc_connection_create_mach_service(a1, MEMORY[0x277D85CD0], 1uLL);
  if (!mach_service)
  {
    exit(71);
  }

  v2 = mach_service;
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_48);
  xpc_connection_resume(v2);
  v3 = transportLogHandle;
  if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "symtrans_main after connection resume\n", v4, 2u);
  }
}

uint64_t DefruleCommands(uint64_t a1)
{
  EnvDefineFunction2(a1, "run", 118, RunCommand, "RunCommand", "*1i");
  EnvDefineFunction2(a1, "halt", 118, HaltCommand, "HaltCommand", "00");
  EnvDefineFunction2(a1, "focus", 98, FocusCommand, "FocusCommand", "1*w");
  EnvDefineFunction2(a1, "clear-focus-stack", 118, ClearFocusStackCommand, "ClearFocusStackCommand", "00");
  EnvDefineFunction2(a1, "get-focus-stack", 109, GetFocusStackFunction, "GetFocusStackFunction", "00");
  EnvDefineFunction2(a1, "pop-focus", 119, PopFocusFunction, "PopFocusFunction", "00");
  EnvDefineFunction2(a1, "get-focus", 119, GetFocusFunction, "GetFocusFunction", "00");
  EnvDefineFunction2(a1, "set-break", 118, SetBreakCommand, "SetBreakCommand", "11w");
  EnvDefineFunction2(a1, "remove-break", 118, RemoveBreakCommand, "RemoveBreakCommand", "*1w");
  EnvDefineFunction2(a1, "show-breaks", 118, ShowBreaksCommand, "ShowBreaksCommand", "01w");
  EnvDefineFunction2(a1, "matches", 117, MatchesCommand, "MatchesCommand", "12w");
  EnvDefineFunction2(a1, "join-activity", 117, JoinActivityCommand, "JoinActivityCommand", "12w");
  EnvDefineFunction2(a1, "join-activity-reset", 118, JoinActivityResetCommand, "JoinActivityResetCommand", "00");
  EnvDefineFunction2(a1, "list-focus-stack", 118, ListFocusStackCommand, "ListFocusStackCommand", "00");
  EnvDefineFunction2(a1, "dependencies", 118, DependenciesCommand, "DependenciesCommand", "11h");
  EnvDefineFunction2(a1, "dependents", 118, DependentsCommand, "DependentsCommand", "11h");
  EnvDefineFunction2(a1, "timetag", 103, TimetagFunction, "TimetagFunction", "11h");
  EnvDefineFunction2(a1, "get-incremental-reset", 98, GetIncrementalResetCommand, "GetIncrementalResetCommand", "00");
  EnvDefineFunction2(a1, "set-incremental-reset", 98, SetIncrementalResetCommand, "SetIncrementalResetCommand", "11");
  EnvDefineFunction2(a1, "get-beta-memory-resizing", 98, GetBetaMemoryResizingCommand, "GetBetaMemoryResizingCommand", "00");
  EnvDefineFunction2(a1, "set-beta-memory-resizing", 98, SetBetaMemoryResizingCommand, "SetBetaMemoryResizingCommand", "11");
  EnvDefineFunction2(a1, "get-strategy", 119, GetStrategyCommand, "GetStrategyCommand", "00");

  return EnvDefineFunction2(a1, "set-strategy", 119, SetStrategyCommand, "SetStrategyCommand", "11w");
}

uint64_t MatchesCommand(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgRangeCheck(a1, "matches", 1, 2);
  if (result != -1)
  {
    v5 = result;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    result = EnvArgTypeCheck(a1, "matches", 1, 2, &v14);
    if (result)
    {
      if (WORD4(v14) != 2)
      {
        v10 = "rule name";
        v11 = a1;
        v12 = 1;
        return ExpectedTypeError1(v11, "matches", v12, v10);
      }

      v6 = *(v15 + 24);
      Defrule = EnvFindDefrule(a1, v6);
      if (Defrule)
      {
        v8 = Defrule;
        if (v5 != 2)
        {
          goto LABEL_13;
        }

        result = EnvArgTypeCheck(a1, "matches", 2, 2, &v14);
        if (result)
        {
          v9 = *(v15 + 24);
          if (strcmp(v9, "verbose"))
          {
            if (!strcmp(v9, "succinct"))
            {
              v13 = 1;
            }

            else
            {
              if (strcmp(v9, "terse"))
              {
                v10 = "symbol with value verbose, succinct, or terse";
                v11 = a1;
                v12 = 2;
                return ExpectedTypeError1(v11, "matches", v12, v10);
              }

              v13 = 2;
            }

            return EnvMatches(a1, v8, v13, a2);
          }

LABEL_13:
          v13 = 0;
          return EnvMatches(a1, v8, v13, a2);
        }
      }

      else
      {
        return CantFindItemErrorMessage(a1, "defrule", v6);
      }
    }
  }

  return result;
}

void JoinActivityCommand(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  v4 = EnvArgRangeCheck(a1, "join-activity", 1, 2);
  if (v4 != -1)
  {
    v5 = v4;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    if (EnvArgTypeCheck(a1, "join-activity", 1, 2, &v14))
    {
      if (WORD4(v14) != 2)
      {
        v10 = "rule name";
        v11 = a1;
        v12 = 1;
        goto LABEL_12;
      }

      v6 = *(v15 + 24);
      Defrule = EnvFindDefrule(a1, v6);
      if (Defrule)
      {
        v8 = Defrule;
        if (v5 != 2)
        {
          goto LABEL_13;
        }

        if (EnvArgTypeCheck(a1, "join-activity", 2, 2, &v14))
        {
          v9 = *(v15 + 24);
          if (strcmp(v9, "verbose"))
          {
            if (!strcmp(v9, "succinct"))
            {
              v13 = 1;
            }

            else
            {
              if (strcmp(v9, "terse"))
              {
                v10 = "symbol with value verbose, succinct, or terse";
                v11 = a1;
                v12 = 2;
LABEL_12:
                ExpectedTypeError1(v11, "join-activity", v12, v10);
                return;
              }

              v13 = 2;
            }

            goto LABEL_14;
          }

LABEL_13:
          v13 = 0;
LABEL_14:
          EnvJoinActivity(a1, v8, v13, a2);
        }
      }

      else
      {
        CantFindItemErrorMessage(a1, "defrule", v6);
      }
    }
  }
}

uint64_t TimetagFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "timetag", 0, 1) == -1)
  {
    return -1;
  }

  memset(v4, 0, sizeof(v4));
  FactOrInstanceArgument = GetFactOrInstanceArgument(a1, 1, v4, "timetag");
  if (!FactOrInstanceArgument)
  {
    return -1;
  }

  else
  {
    return *(FactOrInstanceArgument + 24);
  }
}

uint64_t GetBetaMemoryResizingCommand(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 128) + 32);
  EnvArgCountCheck(a1, "get-beta-memory-resizing", 0, 0);
  return v1;
}

uint64_t SetBetaMemoryResizingCommand(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v2 = *(*(*(a1 + 48) + 128) + 32);
  if (EnvArgCountCheck(a1, "set-beta-memory-resizing", 0, 1) != -1)
  {
    EnvRtnUnknown(a1, 1, &v7);
    v3 = v8;
    v5 = v3 != EnvFalseSymbol(a1) || WORD4(v7) != 2;
    *(*(*(a1 + 48) + 128) + 32) = v5;
  }

  return v2;
}

uint64_t EnvSetBetaMemoryResizing(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 128);
  result = *(v2 + 32);
  *(v2 + 32) = a2;
  return result;
}

uint64_t EnvMatches(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a4;
  *(a4 + 8) = 4;
  *(a4 + 24) = xmmword_232817060;
  Multifield = EnvCreateMultifield(a1, 3);
  *(v4 + 16) = Multifield;
  *(Multifield + 12) = 1;
  v9 = *(a1 + 48);
  Multifield[4] = *(*(v9 + 392) + 32);
  *(Multifield + 20) = 1;
  Multifield[6] = *(*(v9 + 392) + 32);
  *(Multifield + 28) = 1;
  Multifield[8] = *(*(v9 + 392) + 32);
  v84 = a2;
  DisjunctCount = EnvGetDisjunctCount(a1, a2);
  if (DisjunctCount >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 1;
    v91 = v4;
    while (1)
    {
      v86 = v12;
      NthDisjunct = EnvGetNthDisjunct(a1, v84, v12);
      v14 = *(*(NthDisjunct + 88) + 120);
      if (v14)
      {
        v15 = 0;
        v16 = *(*(NthDisjunct + 88) + 120);
        while (1)
        {
          while ((*v16 & 4) != 0)
          {
            v16 = *(v16 + 104);
            if (!v16)
            {
              goto LABEL_11;
            }
          }

          v16 = *(v16 + 120);
          if (!v16)
          {
            break;
          }

          ++v15;
        }

        v16 = 1;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

LABEL_11:
      v17 = v16 + v15;
      v87 = NthDisjunct;
      if (v16 + v15)
      {
        v85 = 48 * v17;
        ptr = genalloc(a1, 48 * v17);
        AlphaJoinsDriver(*(*(NthDisjunct + 88) + 120), v17, ptr);
        v18 = 0;
        v88 = v10;
        v89 = v17;
        while (1)
        {
          if (GetHaltExecution(a1) == 1)
          {
            v19 = 0;
          }

          else
          {
            v20 = &ptr[48 * v18];
            v21 = *(v20 + 1);
            if (!a3)
            {
              EnvPrintRouter(a1, "wdisplay", "Matches for Pattern ");
              PrintLongInteger(a1, "wdisplay", *v20, v22, v23, v24, v25, v26);
              EnvPrintRouter(a1, "wdisplay", "\n");
            }

            v27 = *(v21 + 104);
            if (!v27)
            {
              v30 = *(**(*(v21 + 64) + 16) + 56);
              v19 = v30 != 0;
              if (a3)
              {
                if (a3 != 1)
                {
                  v4 = v91;
                  goto LABEL_48;
                }

                EnvPrintRouter(a1, "wdisplay", "Pattern ");
                PrintLongInteger(a1, "wdisplay", *v20, v31, v32, v33, v34, v35);
                EnvPrintRouter(a1, "wdisplay", ": ");
                if (*(**(*(v21 + 64) + 16) + 56))
                {
                  v36 = "1";
                }

                else
                {
                  v36 = "0";
                }

                EnvPrintRouter(a1, "wdisplay", v36);
                v37 = "\n";
              }

              else if (v30)
              {
                v37 = "*\n";
              }

              else
              {
                v37 = " None\n";
              }

              v4 = v91;
              goto LABEL_46;
            }

            v28 = *v27;
            if (*v27)
            {
              v19 = 0;
              do
              {
                v29 = *(v28 + 16);
                if (v29)
                {
                  while (GetHaltExecution(a1) != 1)
                  {
                    if (!a3)
                    {
                      PrintPartialMatch(a1, "wdisplay", v29);
                      EnvPrintRouter(a1, "wdisplay", "\n");
                    }

                    v29 = *(v29 + 40);
                    ++v19;
                    if (!v29)
                    {
                      goto LABEL_25;
                    }
                  }

                  v19 = 0;
                  v17 = v89;
                  v4 = v91;
                  goto LABEL_35;
                }

LABEL_25:
                v28 = *(v28 + 32);
              }

              while (v28);
              if (!a3)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v19 = 0;
              if (!a3)
              {
LABEL_37:
                if (!v19)
                {
                  v37 = " None\n";
                  v17 = v89;
                  v4 = v91;
LABEL_45:
                  v10 = v88;
LABEL_46:
                  EnvPrintRouter(a1, "wdisplay", v37);
                  goto LABEL_48;
                }
              }
            }

            v17 = v89;
            v4 = v91;
            if (a3 == 1)
            {
              EnvPrintRouter(a1, "wdisplay", "Pattern ");
              PrintLongInteger(a1, "wdisplay", *v20, v38, v39, v40, v41, v42);
              EnvPrintRouter(a1, "wdisplay", ": ");
              PrintLongInteger(a1, "wdisplay", v19, v43, v44, v45, v46, v47);
              v37 = "\n";
              goto LABEL_45;
            }

LABEL_35:
            v10 = v88;
          }

LABEL_48:
          v11 += v19;
          *(*(v4 + 16) + 24) = 1;
          *(*(v4 + 16) + 32) = EnvAddLong(a1, v11);
          if (++v18 == v17)
          {
            genfree(a1, ptr, v85);
            NthDisjunct = v87;
            goto LABEL_51;
          }
        }
      }

      AlphaJoinsDriver(v14, 0, 0);
LABEL_51:
      v48 = BetaJoinCountDriver(*(*(NthDisjunct + 88) + 120));
      v49 = v48;
      if (v48)
      {
        v90 = 48 * v48;
        ptra = genalloc(a1, 48 * v48);
        EnvBetaJoins(ptra, NthDisjunct, v49, ptra);
        if (v49 >= 2)
        {
          v50 = 80;
          for (i = 1; v49 != i; ++i)
          {
            if (GetHaltExecution(a1) == 1)
            {
              v52 = 0;
            }

            else
            {
              if (!a3)
              {
                EnvPrintRouter(a1, "wdisplay", "Partial matches for CEs ");
                v57 = BetaHeaderString(a1, ptra, i, v49, v53, v54, v55, v56);
                EnvPrintRouter(a1, "wdisplay", v57);
                EnvPrintRouter(a1, "wdisplay", "\n");
              }

              v58 = PrintBetaMemory(a1, "wdisplay", *&ptra[v50], 1, "", a3);
              v52 = v58;
              if (!a3 && !v58)
              {
                v59 = " None\n";
LABEL_63:
                EnvPrintRouter(a1, "wdisplay", v59);
                goto LABEL_64;
              }

              if (a3 == 1)
              {
                EnvPrintRouter(a1, "wdisplay", "CEs ");
                v64 = BetaHeaderString(a1, ptra, i, v49, v60, v61, v62, v63);
                EnvPrintRouter(a1, "wdisplay", v64);
                EnvPrintRouter(a1, "wdisplay", ": ");
                PrintLongInteger(a1, "wdisplay", v52, v65, v66, v67, v68, v69);
                v59 = "\n";
                goto LABEL_63;
              }
            }

LABEL_64:
            v10 += v52;
            *(*(v4 + 16) + 40) = 1;
            *(*(v4 + 16) + 48) = EnvAddLong(a1, v10);
            v50 += 48;
          }
        }

        genfree(a1, ptra, v90);
      }

      else
      {
        EnvBetaJoins(0, NthDisjunct, 0, 0);
      }

      v70 = v87;
      v12 = v86 + 1;
      if (v86 == DisjunctCount)
      {
        goto LABEL_71;
      }
    }
  }

  v70 = 0;
LABEL_71:
  if (!a3)
  {
    EnvPrintRouter(a1, "wdisplay", "Activations\n");
  }

  NextActivation = EnvGetNextActivation(a1, 0);
  if (!NextActivation)
  {
    v74 = 0;
LABEL_82:
    if (a3 == 1)
    {
      EnvPrintRouter(a1, "wdisplay", "Activations: ");
      PrintLongInteger(a1, "wdisplay", v74, v77, v78, v79, v80, v81);
      v82 = "\n";
    }

    else
    {
      if (a3 || v74)
      {
        goto LABEL_88;
      }

      v82 = " None\n";
    }

    EnvPrintRouter(a1, "wdisplay", v82);
LABEL_88:
    *(*(v4 + 16) + 56) = 1;
    result = EnvAddLong(a1, v74);
    *(*(v4 + 16) + 64) = result;
    return result;
  }

  v72 = NextActivation;
  v73 = v70;
  v74 = 0;
  while (1)
  {
    result = GetHaltExecution(a1);
    if (result == 1)
    {
      return result;
    }

    if (**v72 == *v73)
    {
      ++v74;
      if (!a3)
      {
        ActivationBasis = EnvGetActivationBasis(a1, v72);
        PrintPartialMatch(a1, "wdisplay", ActivationBasis);
        EnvPrintRouter(a1, "wdisplay", "\n");
      }
    }

    v72 = EnvGetNextActivation(a1, v72);
    if (!v72)
    {
      goto LABEL_82;
    }
  }
}

uint64_t EnvAlphaJoinCount(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 88) + 120);
  if (v2)
  {
    v3 = 0;
    v4 = 1;
    while (1)
    {
      while ((*v2 & 4) != 0)
      {
        v2 = *(v2 + 104);
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      v2 = *(v2 + 120);
      if (!v2)
      {
        break;
      }

      ++v3;
    }
  }

  else
  {
    v3 = 0;
LABEL_9:
    v4 = 0;
  }

  return v4 + v3;
}

void *EnvCreateJoinArray(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return genalloc(a1, 48 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t EnvFreeJoinArray(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    return genfree(result, a2, 48 * a3);
  }

  return result;
}

void EnvBetaJoins(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 88);
  v5 = *(v4 + 120);
  if (v5)
  {
    v6 = (v4 + 56);
    do
    {
      v7 = 0;
      v8 = *v6;
      --a3;
      v9 = a4 + 48 * a3;
      *(v9 + 8) = v5;
      *(v9 + 32) = v8;
      *(v9 + 40) = v4;
      v10 = v5;
      do
      {
        ++v7;
        v10 = *(v10 + 120);
      }

      while (v10);
      *v9 = v7;
      v11 = v5;
      do
      {
        if ((*v11 & 4) != 0)
        {
          v12 = 26;
        }

        else
        {
          v12 = 30;
        }

        LODWORD(v10) = (((*v11 & 4u) >> 2) ^ 1) + v10;
        v11 = *&v11[v12];
      }

      while (v11);
      *(v9 + 20) = v10;
      v13 = (*v5 >> 2) & 1;
      v14 = 30;
      v15 = v5;
      do
      {
        if ((*v15 & 4) == 0)
        {
          v14 = 30;
        }

        v13 += ((*v15 & 4u) >> 2) ^ 1;
        v15 = *&v15[v14];
        v14 = 26;
      }

      while (v15);
      *(v9 + 16) = v13;
      if ((*v5 & 4) != 0)
      {
        v16 = *(v5 + 104);
        v17 = 64;
      }

      else
      {
        v16 = *(v5 + 120);
        if (!v16)
        {
          return;
        }

        v17 = 56;
      }

      v6 = (v5 + v17);
      v4 = v5;
      v5 = v16;
    }

    while (v16);
  }
}

uint64_t AlphaJoinsDriver(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    while ((*v5 & 4) != 0)
    {
      v5 = *(v5 + 104);
      if (!v5)
      {
        return result;
      }
    }

    result = *(v5 + 120);
    if (result)
    {
      result = AlphaJoinsDriver(result, a2 - 1, a3);
    }

    v6 = a3 + 48 * a2;
    *(v6 - 48) = a2;
    *(v6 - 40) = v5;
  }

  return result;
}

uint64_t BetaJoinCountDriver(uint64_t a1)
{
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = 0;
    if (!a1)
    {
      break;
    }

    while ((*a1 & 4) != 0)
    {
      a1 = *(a1 + 104);
      ++v3;
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    a1 = *(a1 + 120);
    if (!a1)
    {
      return v2 + v3 + v1;
    }

    v1 += v3 + 1;
  }

LABEL_8:
  v2 = 0;
  return v2 + v3 + v1;
}

void EnvJoinActivity(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v59 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 4;
  *(a4 + 24) = xmmword_232817060;
  Multifield = EnvCreateMultifield(a1, 3);
  v57 = a4;
  *(a4 + 16) = Multifield;
  *(Multifield + 12) = 1;
  v9 = *(a1 + 48);
  Multifield[4] = *(*(v9 + 392) + 32);
  *(Multifield + 20) = 1;
  Multifield[6] = *(*(v9 + 392) + 32);
  *(Multifield + 28) = 1;
  Multifield[8] = *(*(v9 + 392) + 32);
  v53 = a2;
  DisjunctCount = EnvGetDisjunctCount(a1, a2);
  if (DisjunctCount >= 1)
  {
    v10 = 1;
    v56 = a3;
    do
    {
      NthDisjunct = EnvGetNthDisjunct(a1, v53, v10);
      v12 = BetaJoinCountDriver(*(*(NthDisjunct + 88) + 120));
      v13 = v12;
      if (v12)
      {
        v54 = 48 * v12;
        ptr = genalloc(a1, 48 * v12);
        EnvBetaJoins(ptr, NthDisjunct, v13, ptr);
        if (v13 >= 1)
        {
          v14 = 0;
          v15 = ptr + 5;
          while (GetHaltExecution(a1) == 1)
          {
LABEL_17:
            ++v14;
            v15 += 6;
            if (v13 == v14)
            {
              goto LABEL_18;
            }
          }

          v16 = *v15;
          v17 = *(*(v15 - 4) + 48);
          v18 = 6;
          if ((**v15 & 4) == 0)
          {
            v18 = 4;
          }

          v19 = 10;
          if ((**v15 & 4) == 0)
          {
            v19 = 8;
          }

          v20 = *&v16[v19];
          v21 = *&v16[v18];
          if (a3 == 1)
          {
            EnvPrintRouter(a1, "wdisplay", "CE ");
            v33 = ActivityHeaderString(a1, ptr, v14, v13, v29, v30, v31, v32);
            EnvPrintRouter(a1, "wdisplay", v33);
            EnvPrintRouter(a1, "wdisplay", ": ");
            PrintLongInteger(a1, "wdisplay", v20 + v17 + v21, v34, v35, v36, v37, v38);
            v28 = a1;
            v27 = "\n";
LABEL_15:
            EnvPrintRouter(v28, "wdisplay", v27);
          }

          else if (!a3)
          {
            EnvPrintRouter(a1, "wdisplay", "Activity for CE ");
            v26 = ActivityHeaderString(a1, ptr, v14, v13, v22, v23, v24, v25);
            EnvPrintRouter(a1, "wdisplay", v26);
            EnvPrintRouter(a1, "wdisplay", "\n");
            snprintf(__str, 0x64uLL, "   Compares: %10lld\n", v17);
            EnvPrintRouter(a1, "wdisplay", __str);
            snprintf(__str, 0x64uLL, "   Adds:     %10lld\n", v21);
            EnvPrintRouter(a1, "wdisplay", __str);
            snprintf(__str, 0x64uLL, "   Deletes:  %10lld\n", v20);
            v27 = __str;
            v28 = a1;
            goto LABEL_15;
          }

          v39 = *(v57 + 16);
          v40 = *(*(v39 + 32) + 24);
          v41 = *(*(v39 + 48) + 24);
          v42 = v17;
          v43 = v13;
          v44 = *(*(v39 + 64) + 24);
          *(v39 + 24) = 1;
          v45 = EnvAddLong(a1, v40 + v42);
          v46 = *(v57 + 16);
          *(v46 + 32) = v45;
          *(v46 + 40) = 1;
          v47 = EnvAddLong(a1, v41 + v21);
          v48 = *(v57 + 16);
          *(v48 + 48) = v47;
          *(v48 + 56) = 1;
          v49 = v44 + v20;
          v13 = v43;
          *(*(v57 + 16) + 64) = EnvAddLong(a1, v49);
          a3 = v56;
          goto LABEL_17;
        }

LABEL_18:
        genfree(a1, ptr, v54);
      }

      else
      {
        EnvBetaJoins(0, NthDisjunct, 0, 0);
      }
    }

    while (v10++ != DisjunctCount);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void JoinActivityReset(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 88); i; i = *(i + v3))
  {
    *(i + 48) = 0;
    *(i + 16) = 0uLL;
    *(i + 32) = 0uLL;
    if ((*i & 4) != 0)
    {
      v3 = 104;
    }

    else
    {
      v3 = 120;
    }
  }
}

char *BetaHeaderString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v84 = *MEMORY[0x277D85DE8];
  if (a4 >= 1)
  {
    v10 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = vdupq_n_s64(a4 - 1);
    v12 = xmmword_232817070;
    v13 = xmmword_232816A80;
    v14 = (a2 + 120);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 24) = 0;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 12) = 0;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = 0;
        v14[12] = 0;
      }

      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 48;
      v10 -= 4;
    }

    while (v10);
  }

  v17 = *(a2 + 48 * a3 + 8);
  v18 = 1;
  if (v17)
  {
    v19 = 0;
    v20 = 0;
    v21 = a3;
    do
    {
      if (v21 < 0)
      {
LABEL_16:
        v22 = v21;
      }

      else
      {
        v22 = v21 - 1;
        v23 = (a2 + 24 + 48 * v21);
        while (*(v23 - 2) != v17)
        {
          v24 = v22-- + 1;
          v23 -= 12;
          if (v24 <= 0)
          {
            goto LABEL_16;
          }
        }

        ++v20;
        *v23 = 1;
        if (*(v23 - 2) != *(v23 - 1))
        {
          v19 = 1;
        }
      }

      v17 = *(v17 + 120);
      v21 = v22;
    }

    while (v17);
    v18 = v19 == 0;
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_48:
    appended = "";
    goto LABEL_49;
  }

  v20 = 0;
  if (a3 < 0)
  {
    goto LABEL_48;
  }

LABEL_21:
  v25 = 0;
  v79 = a2 + 72;
  appended = "";
  v81 = v18;
  do
  {
    v27 = (a2 + 48 * v25);
    if (v27[6])
    {
      --v20;
      if (v27[4] != v27[5] || v8 <= v25)
      {
        v33 = v25;
        v32 = v25;
      }

      else
      {
        v29 = v8 - v25;
        v30 = v25 + 1;
        v31 = (v79 + 48 * v25);
        v32 = v25;
        v33 = v25;
        do
        {
          if (*v31)
          {
            if (*(v31 - 2) != *(v31 - 1))
            {
              break;
            }

            --v20;
            v33 = v30;
            v32 = v30;
          }

          ++v30;
          v31 += 12;
          --v29;
        }

        while (v29);
      }

      gensprintf(v83, "%d", a3, a4, a5, a6, a7, a8, *v27);
      appended = AppendStrings(a1, appended, v83);
      if (!v18)
      {
        v34 = v27[4];
        v35 = v27[5];
        v36 = AppendStrings(a1, appended, " (P");
        gensprintf(v83, "%d", v37, v38, v39, v40, v41, v42, v27[4]);
        v43 = AppendStrings(a1, v36, v83);
        if (v34 != v35)
        {
          v44 = AppendStrings(a1, v43, " - P");
          gensprintf(v83, "%d", v45, v46, v47, v48, v49, v50, v27[5]);
          v43 = AppendStrings(a1, v44, v83);
        }

        appended = AppendStrings(a1, v43, ")");
        v8 = a3;
        v18 = v81;
      }

      if (v25 != v32)
      {
        v51 = (a2 + 48 * v32);
        v52 = AppendStrings(a1, appended, " - ");
        gensprintf(v83, "%d", v53, v54, v55, v56, v57, v58, *v51);
        appended = AppendStrings(a1, v52, v83);
        if (!v18)
        {
          v59 = a1;
          v60 = v51[4];
          v61 = v51[5];
          v62 = AppendStrings(v59, appended, " (P");
          gensprintf(v83, "%d", v63, v64, v65, v66, v67, v68, v51[4]);
          v69 = AppendStrings(v59, v62, v83);
          if (v60 != v61)
          {
            v70 = AppendStrings(v59, v69, " - P");
            gensprintf(v83, "%d", v71, v72, v73, v74, v75, v76, v51[5]);
            v69 = AppendStrings(v59, v70, v83);
          }

          a1 = v59;
          appended = AppendStrings(v59, v69, ")");
          v18 = v81;
        }
      }

      if (v20 >= 1)
      {
        appended = AppendStrings(a1, appended, " , ");
      }
    }

    else
    {
      v33 = v25;
    }

    v25 = v33 + 1;
  }

  while (v33 < v8);
LABEL_49:
  v77 = *MEMORY[0x277D85DE8];
  return appended;
}

char *ActivityHeaderString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a4 >= 1)
  {
    v9 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v10 = vdupq_n_s64(a4 - 1);
    v11 = xmmword_232817070;
    v12 = xmmword_232816A80;
    v13 = (a2 + 120);
    v14 = vdupq_n_s64(4uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s16(v15, *v10.i8).u8[0])
      {
        *(v13 - 24) = 0;
      }

      if (vuzp1_s16(v15, *&v10).i8[2])
      {
        *(v13 - 12) = 0;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11))).i32[1])
      {
        *v13 = 0;
        v13[12] = 0;
      }

      v11 = vaddq_s64(v11, v14);
      v12 = vaddq_s64(v12, v14);
      v13 += 48;
      v9 -= 4;
    }

    while (v9);
  }

  v16 = a2 + 48 * a3;
  v17 = *(v16 + 8);
  if (v17)
  {
    v18 = 0;
    do
    {
      if (a3 < 0)
      {
LABEL_16:
        v19 = a3;
      }

      else
      {
        v19 = a3 - 1;
        v20 = (a2 + 16 + 48 * a3);
        while (*(v20 - 1) != v17)
        {
          v21 = v19-- + 1;
          v20 -= 12;
          if (v21 <= 0)
          {
            goto LABEL_16;
          }
        }

        if (*v20 != v20[1])
        {
          v18 = 1;
        }
      }

      v17 = *(v17 + 120);
      a3 = v19;
    }

    while (v17);
    v22 = v18 == 0;
  }

  else
  {
    v22 = 1;
  }

  gensprintf(v43, "%d", a3, a4, a5, a6, a7, a8, *v16);
  appended = AppendStrings(a1, "", v43);
  if (!v22)
  {
    v24 = *(v16 + 16);
    v25 = *(v16 + 20);
    v26 = AppendStrings(a1, appended, " (P");
    gensprintf(v43, "%d", v27, v28, v29, v30, v31, v32, *(v16 + 16));
    v33 = AppendStrings(a1, v26, v43);
    if (v24 != v25)
    {
      v34 = AppendStrings(a1, v33, " - P");
      gensprintf(v43, "%d", v35, v36, v37, v38, v39, v40, *(v16 + 20));
      v33 = AppendStrings(a1, v34, v43);
    }

    appended = AppendStrings(a1, v33, ")");
  }

  v41 = *MEMORY[0x277D85DE8];
  return appended;
}

uint64_t EnvRtnLexeme(uint64_t a1, int a2)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v4 = **(*(a1 + 48) + 352);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = a2 < 2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = 2;
    do
    {
      v5 = *(v5 + 24);
      if (v5)
      {
        v8 = v7 < a2;
      }

      else
      {
        v8 = 0;
      }

      ++v7;
    }

    while (v8);
  }

  if (v5)
  {
    EvaluateExpression(a1, v5, &v10);
    if ((WORD4(v10) & 0xFFFE) == 2)
    {
      return *(v11 + 24);
    }

    ExpectedTypeError3(a1, "RtnLexeme", *(**(**(*(a1 + 48) + 352) + 8) + 24), a2, "symbol, string, or instance name");
  }

  else
  {
    NonexistantError(a1, "RtnLexeme", *(**(v4 + 8) + 24), a2);
  }

  SetHaltExecution(a1, 1);
  SetEvaluationError(a1, 1);
  return 0;
}

uint64_t NonexistantError(uint64_t a1, char *a2, char *a3, int a4)
{
  PrintErrorID(a1, "ARGACCES", 3, 0);
  EnvPrintRouter(a1, "werror", "Function ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " received a request from function ");
  EnvPrintRouter(a1, "werror", a3);
  EnvPrintRouter(a1, "werror", " for argument #");
  PrintLongInteger(a1, "werror", a4, v8, v9, v10, v11, v12);

  return EnvPrintRouter(a1, "werror", " which is non-existent\n");
}

uint64_t ExpectedTypeError3(uint64_t a1, char *a2, char *a3, int a4, char *a5)
{
  PrintErrorID(a1, "ARGACCES", 6, 0);
  EnvPrintRouter(a1, "werror", "Function ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " received a request from function ");
  EnvPrintRouter(a1, "werror", a3);
  EnvPrintRouter(a1, "werror", " for argument #");
  PrintLongInteger(a1, "werror", a4, v10, v11, v12, v13, v14);
  EnvPrintRouter(a1, "werror", " which is not of type ");
  EnvPrintRouter(a1, "werror", a5);

  return EnvPrintRouter(a1, "werror", "\n");
}

double EnvRtnDouble(uint64_t a1, int a2)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v4 = **(*(a1 + 48) + 352);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = a2 < 2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = 2;
    do
    {
      v5 = *(v5 + 24);
      if (v5)
      {
        v8 = v7 < a2;
      }

      else
      {
        v8 = 0;
      }

      ++v7;
    }

    while (v8);
  }

  if (v5)
  {
    EvaluateExpression(a1, v5, &v10);
    if (WORD4(v10) == 1)
    {
      return *(v11 + 24);
    }

    if (!WORD4(v10))
    {
      return *(v11 + 24);
    }

    ExpectedTypeError3(a1, "RtnDouble", *(**(**(*(a1 + 48) + 352) + 8) + 24), a2, "number");
  }

  else
  {
    NonexistantError(a1, "RtnDouble", *(**(v4 + 8) + 24), a2);
  }

  SetHaltExecution(a1, 1);
  SetEvaluationError(a1, 1);
  return 1.0;
}

uint64_t EnvRtnLong(uint64_t a1, int a2)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v4 = **(*(a1 + 48) + 352);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = a2 < 2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = 2;
    do
    {
      v5 = *(v5 + 24);
      if (v5)
      {
        v8 = v7 < a2;
      }

      else
      {
        v8 = 0;
      }

      ++v7;
    }

    while (v8);
  }

  if (!v5)
  {
    NonexistantError(a1, "RtnLong", *(**(v4 + 8) + 24), a2);
LABEL_17:
    v9 = 1;
    SetHaltExecution(a1, 1);
    SetEvaluationError(a1, 1);
    return v9;
  }

  EvaluateExpression(a1, v5, &v11);
  if (WORD4(v11) == 1)
  {
    return *(v12 + 24);
  }

  if (WORD4(v11))
  {
    ExpectedTypeError3(a1, "RtnLong", *(**(**(*(a1 + 48) + 352) + 8) + 24), a2, "number");
    goto LABEL_17;
  }

  return *(v12 + 24);
}

uint64_t EnvRtnUnknown(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = **(*(a1 + 48) + 352);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = a2 < 2;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = 2;
    do
    {
      v7 = *(v7 + 24);
      if (v7)
      {
        v10 = v9 < a2;
      }

      else
      {
        v10 = 0;
      }

      ++v9;
    }

    while (v10);
  }

  if (v7)
  {
    EvaluateExpression(a1, v7, a3);
  }

  else
  {
    NonexistantError(a1, "RtnUnknown", *(**(v6 + 8) + 24), a2);
    SetHaltExecution(a1, 1);
    SetEvaluationError(a1, 1);
    return 0;
  }

  return v3;
}

uint64_t EnvRtnArgCount(uint64_t a1)
{
  v1 = *(**(*(a1 + 48) + 352) + 16);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + 1);
    v1 = *(v1 + 24);
  }

  while (v1);
  return result;
}

uint64_t EnvArgCountCheck(uint64_t a1, char *a2, unsigned int a3, uint64_t a4)
{
  v5 = *(**(*(a1 + 48) + 352) + 16);
  if (v5)
  {
    LODWORD(result) = 0;
    do
    {
      result = (result + 1);
      v5 = *(v5 + 24);
    }

    while (v5);
  }

  else
  {
    result = 0;
  }

  if (a3 == 2)
  {
    if (result <= a4)
    {
      return result;
    }
  }

  else if (a3 == 1)
  {
    if (result >= a4)
    {
      return result;
    }
  }

  else if (!a3 && result == a4)
  {
    return a4;
  }

  ExpectedCountError(a1, a2, a3, a4);
  SetHaltExecution(a1, 1);
  SetEvaluationError(a1, 1);
  return 0xFFFFFFFFLL;
}

uint64_t ExpectedCountError(uint64_t a1, char *a2, unsigned int a3, int a4)
{
  PrintErrorID(a1, "ARGACCES", 4, 0);
  EnvPrintRouter(a1, "werror", "Function ");
  EnvPrintRouter(a1, "werror", a2);
  if (a3 > 2)
  {
    v8 = " generated an illegal argument check for ";
  }

  else
  {
    v8 = off_27898F8C0[a3];
  }

  EnvPrintRouter(a1, "werror", v8);
  PrintLongInteger(a1, "werror", a4, v9, v10, v11, v12, v13);

  return EnvPrintRouter(a1, "werror", " argument(s)\n");
}

uint64_t EnvArgRangeCheck(uint64_t a1, char *a2, int a3, int a4)
{
  v8 = *(**(*(a1 + 48) + 352) + 16);
  if (v8)
  {
    LODWORD(result) = 0;
    do
    {
      result = (result + 1);
      v8 = *(v8 + 24);
    }

    while (v8);
  }

  else
  {
    result = 0;
  }

  if (result < a3 || result > a4)
  {
    PrintErrorID(a1, "ARGACCES", 1, 0);
    EnvPrintRouter(a1, "werror", "Function ");
    EnvPrintRouter(a1, "werror", a2);
    EnvPrintRouter(a1, "werror", " expected at least ");
    PrintLongInteger(a1, "werror", a3, v10, v11, v12, v13, v14);
    EnvPrintRouter(a1, "werror", " and no more than ");
    PrintLongInteger(a1, "werror", a4, v15, v16, v17, v18, v19);
    EnvPrintRouter(a1, "werror", " arguments.\n");
    SetHaltExecution(a1, 1);
    SetEvaluationError(a1, 1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t EnvArgTypeCheck(uint64_t a1, char *a2, int a3, int a4, uint64_t a5)
{
  EnvRtnUnknown(a1, a3, a5);
  if (*(*(*(a1 + 48) + 352) + 8))
  {
    return 0;
  }

  v11 = *(a5 + 8);
  if (v11 == a4 || a4 == 180 && v11 < 2)
  {
    return 1;
  }

  if (a4 == 181)
  {
    if ((v11 & 0xFFFE) == 2)
    {
      return 1;
    }

    v13 = "symbol or string";
    goto LABEL_11;
  }

  if (!a4 && v11 == 1)
  {
    *(a5 + 8) = 0;
    *(a5 + 16) = EnvAddDouble(a1, *(*(a5 + 16) + 24));
    return 1;
  }

  if (a4 == 1 && !*(a5 + 8))
  {
    v10 = 1;
    *(a5 + 8) = 1;
    *(a5 + 16) = EnvAddLong(a1, *(*(a5 + 16) + 24));
    return v10;
  }

  if (a4)
  {
    v13 = "integer";
  }

  else
  {
    v13 = "float";
  }

  if (a4 > 2)
  {
    if (a4 == 4)
    {
      v13 = "multifield";
      goto LABEL_11;
    }

    if (a4 == 3)
    {
      v13 = "string";
      goto LABEL_11;
    }
  }

  else
  {
    if (a4 < 2)
    {
      goto LABEL_11;
    }

    if (a4 == 2)
    {
      v13 = "symbol";
      goto LABEL_11;
    }
  }

  if (a4 == 180)
  {
    v13 = "integer or float";
  }

  else
  {
    if (a4 != 6)
    {
      goto LABEL_12;
    }

    v13 = "fact address";
  }

LABEL_11:
  ExpectedTypeError1(a1, a2, a3, v13);
LABEL_12:
  SetHaltExecution(a1, 1);
  SetEvaluationError(a1, 1);
  return 0;
}

uint64_t ExpectedTypeError1(uint64_t a1, char *a2, int a3, char *a4)
{
  PrintErrorID(a1, "ARGACCES", 5, 0);
  EnvPrintRouter(a1, "werror", "Function ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " expected argument #");
  PrintLongInteger(a1, "werror", a3, v8, v9, v10, v11, v12);
  EnvPrintRouter(a1, "werror", " to be of type ");
  EnvPrintRouter(a1, "werror", a4);

  return EnvPrintRouter(a1, "werror", "\n");
}

uint64_t GetNumericArgument(uint64_t a1, unsigned __int16 *a2, char *a3, uint64_t a4, int a5, int a6)
{
  v9 = *a2;
  if (v9 > 1)
  {
    EvaluateExpression(a1, a2, a4);
    v9 = *(a4 + 8);
    if (v9 >= 2)
    {
      ExpectedTypeError1(a1, a3, a6, "integer or float");
      SetHaltExecution(a1, 1);
      SetEvaluationError(a1, 1);
      *(a4 + 8) = 1;
      v13 = EnvAddLong(a1, 0);
      result = 0;
      *(a4 + 16) = v13;
      return result;
    }

    v10 = (a4 + 16);
  }

  else
  {
    v10 = (a2 + 4);
  }

  v15 = *v10;
  if (a5)
  {
    if (v9 == 1)
    {
      v15 = EnvAddDouble(a1, *(v15 + 3));
      LOWORD(v9) = 0;
    }
  }

  *(a4 + 8) = v9;
  *(a4 + 16) = v15;
  return 1;
}

unsigned __int8 *GetLogicalName(uint64_t a1, int a2, uint64_t a3)
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  EnvRtnUnknown(a1, a2, &v17);
  result = 0;
  if (WORD4(v17) <= 1u)
  {
    if (WORD4(v17))
    {
      if (WORD4(v17) != 1)
      {
        return result;
      }

      v16 = LongIntegerToString(a1, *(v18 + 24), v6, v7, v8, v9, v10, v11);
    }

    else
    {
      v12.n128_u64[0] = *(v18 + 24);
      v16 = FloatToString(a1, v12, v5, v6, v7, v8, v9, v10, v11);
    }

    return EnvAddSymbol(a1, v16)[3];
  }

  else if (WORD4(v17) - 2 < 2 || WORD4(v17) == 8)
  {
    result = *(v18 + 24);
    v15 = *result;
    if ((v15 == 84 || v15 == 116) && !result[1])
    {
      return a3;
    }
  }

  return result;
}

uint64_t GetFileName(uint64_t a1, char *a2, int a3)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  EnvRtnUnknown(a1, a3, &v7);
  if (WORD4(v7) - 4 > 0xFFFFFFFD)
  {
    return *(v8 + 24);
  }

  ExpectedTypeError1(a1, a2, a3, "file name");
  return 0;
}

uint64_t OpenErrorMessage(uint64_t a1, char *a2, char *a3)
{
  PrintErrorID(a1, "ARGACCES", 2, 0);
  EnvPrintRouter(a1, "werror", "Function ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " was unable to open file ");
  EnvPrintRouter(a1, "werror", a3);

  return EnvPrintRouter(a1, "werror", ".\n");
}

void *GetModuleName(uint64_t a1, char *a2, int a3, _DWORD *a4)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  *a4 = 0;
  EnvRtnUnknown(a1, a3, &v11);
  if (WORD4(v11) != 2)
  {
    goto LABEL_5;
  }

  result = EnvFindDefmodule(a1, *(v12 + 24));
  if (result)
  {
    return result;
  }

  v9 = *(v12 + 24);
  v10 = *v9;
  if (v10 != 42)
  {
    if (42 != v10)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v9[1])
  {
    return 0;
  }

LABEL_5:
  ExpectedTypeError1(a1, a2, a3, "defmodule name");
  result = 0;
  *a4 = 1;
  return result;
}

uint64_t GetConstructName(uint64_t a1, char *a2, char *a3)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v5 = *(**(*(a1 + 48) + 352) + 16);
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = 1;
  do
  {
    v5 = *(v5 + 24);
    --v7;
  }

  while (v5);
  if (!v7)
  {
    EnvRtnUnknown(a1, 1, &v9);
    if (WORD4(v9) == 2)
    {
      return *(v10 + 24);
    }

    ExpectedTypeError1(a1, a2, 1, a3);
  }

  else
  {
LABEL_5:
    ExpectedCountError(a1, a2, 0, 1);
  }

  return 0;
}

uint64_t CheckFunctionArgCount(uint64_t a1, char *a2, char *a3, int a4)
{
  v14[1] = 0;
  if (a3)
  {
    if ((*a3 - 48) > 9)
    {
      v8 = -1;
    }

    else
    {
      v14[0] = *a3;
      v8 = atoi(v14);
    }

    if ((a3[1] - 48) > 9)
    {
      v9 = 10000;
    }

    else
    {
      v14[0] = a3[1];
      v9 = atoi(v14);
    }

    if (v8 == v9)
    {
      if (v8 != a4)
      {
        v10 = a1;
        v11 = a2;
        v12 = 0;
LABEL_13:
        v9 = v8;
LABEL_14:
        ExpectedCountError(v10, v11, v12, v9);
        SetEvaluationError(a1, 1);
        return 0;
      }
    }

    else
    {
      if (v8 > a4)
      {
        v10 = a1;
        v11 = a2;
        v12 = 1;
        goto LABEL_13;
      }

      if (v9 < a4)
      {
        v10 = a1;
        v11 = a2;
        v12 = 2;
        goto LABEL_14;
      }
    }
  }

  return 1;
}

void *ExpectedTypeError2(uint64_t a1, char *a2, int a3)
{
  result = FindFunction(a1, a2);
  if (result)
  {
    NthRestriction = GetNthRestriction(result, a3);
    ArgumentTypeName = GetArgumentTypeName(NthRestriction);

    return ExpectedTypeError1(a1, a2, a3, ArgumentTypeName);
  }

  return result;
}

uint64_t GetFactOrInstanceArgument(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  EnvRtnUnknown(a1, a2, a3);
  v8 = *(a3 + 8);
  if ((v8 - 6) >= 2)
  {
    if (v8 == 1)
    {
      result = FindIndexedFact(a1, *(*(a3 + 16) + 24));
      if (result)
      {
        goto LABEL_8;
      }

      gensprintf(v17, "f-%lld", v10, v11, v12, v13, v14, v15, *(*(a3 + 16) + 24));
      CantFindItemErrorMessage(a1, "fact", v17);
    }

    else
    {
      ExpectedTypeError2(a1, a4, a2);
    }

    result = 0;
    goto LABEL_8;
  }

  result = *(a3 + 16);
LABEL_8:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IllegalLogicalNameMessage(uint64_t a1, char *a2)
{
  PrintErrorID(a1, "IOFUN", 1, 0);
  EnvPrintRouter(a1, "werror", "Illegal logical name used for ");
  EnvPrintRouter(a1, "werror", a2);

  return EnvPrintRouter(a1, "werror", " function.\n");
}

void *DefmoduleBinarySetup(uint64_t a1)
{
  AddBeforeBloadFunction(a1, "defmodule", RemoveAllDefmodules, 2000);
  AddBinaryItem(a1, "defmodule", 0, BsaveFind_2, 0, BsaveStorage_2, BsaveBinaryItem_1, BloadStorage_2, BloadBinaryItem_2, ClearBload_3);

  return AddAbortBloadFunction(a1, "defmodule", CreateMainModule, 0);
}

uint64_t BsaveFind_2(uint64_t a1)
{
  SaveBloadCount(a1, *(*(*(a1 + 48) + 32) + 112));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 32) + 120));
  v2 = *(*(a1 + 48) + 32);
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  result = EnvGetNextDefmodule(a1, 0);
  if (result)
  {
    v4 = result;
    do
    {
      ++*(*(*(a1 + 48) + 32) + 112);
      *(*v4 + 16) |= 4u;
      for (i = v4[3]; i; i = i[3])
      {
        ++*(*(*(a1 + 48) + 32) + 120);
        if (*i)
        {
          *(*i + 16) |= 4u;
        }

        v6 = i[1];
        if (v6)
        {
          *(v6 + 16) |= 4u;
        }

        v7 = i[2];
        if (v7)
        {
          *(v7 + 16) |= 4u;
        }
      }

      for (j = v4[4]; j; j = j[3])
      {
        ++*(*(*(a1 + 48) + 32) + 120);
        if (*j)
        {
          *(*j + 16) |= 4u;
        }

        v9 = j[1];
        if (v9)
        {
          *(v9 + 16) |= 4u;
        }

        v10 = j[2];
        if (v10)
        {
          *(v10 + 16) |= 4u;
        }
      }

      result = EnvGetNextDefmodule(a1, v4);
      v4 = result;
    }

    while (result);
  }

  return result;
}

const void *BsaveStorage_2(uint64_t a1, FILE *__stream)
{
  v5 = 16;
  GenWrite(&v5, 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 32) + 112), 8uLL, __stream);
  return GenWrite((*(*(a1 + 48) + 32) + 120), 8uLL, __stream);
}

uint64_t BsaveBinaryItem_1(uint64_t a1, FILE *__stream)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v39 = 40 * *(*(*(a1 + 48) + 32) + 112) + 32 * *(*(*(a1 + 48) + 32) + 120);
  GenWrite(&v39, 8uLL, __stream);
  v4 = *(*(a1 + 48) + 32);
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v6 = NextDefmodule;
    do
    {
      v7 = *(*v6 + 16) >> 3;
      v8 = *(*(a1 + 48) + 32);
      v9 = *(v8 + 112);
      *(v8 + 112) = v9 + 1;
      if (v6[8])
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = -1;
      }

      *&v36 = v7;
      *(&v37 + 1) = v10;
      v11 = v6[3];
      if (v11)
      {
        v12 = *(v8 + 120);
        *(&v36 + 1) = v12;
        do
        {
          ++v12;
          v11 = *(v11 + 24);
        }

        while (v11);
        *(v8 + 120) = v12;
      }

      else
      {
        *(&v36 + 1) = -1;
      }

      v13 = v6[4];
      if (v13)
      {
        v14 = *(v8 + 120);
        *&v37 = v14;
        do
        {
          ++v14;
          v13 = *(v13 + 24);
        }

        while (v13);
        *(v8 + 120) = v14;
      }

      else
      {
        *&v37 = -1;
      }

      v38 = v6[6];
      GenWrite(&v36, 0x28uLL, __stream);
      v6 = EnvGetNextDefmodule(a1, v6);
    }

    while (v6);
  }

  *(*(*(a1 + 48) + 32) + 120) = 0;
  v15 = EnvGetNextDefmodule(a1, 0);
  if (v15)
  {
    v16 = v15;
    do
    {
      for (i = *(v16 + 24); i; i = i[3])
      {
        v18 = *(*(a1 + 48) + 32);
        v19 = *(v18 + 120) + 1;
        *(v18 + 120) = v19;
        if (*i)
        {
          v20 = *(*i + 16) >> 3;
        }

        else
        {
          v20 = -1;
        }

        *&v34 = v20;
        v21 = i[1];
        if (v21)
        {
          v22 = *(v21 + 16) >> 3;
        }

        else
        {
          v22 = -1;
        }

        *(&v34 + 1) = v22;
        v23 = i[2];
        if (v23)
        {
          v24 = *(v23 + 16) >> 3;
        }

        else
        {
          v24 = -1;
        }

        if (!i[3])
        {
          v19 = -1;
        }

        *&v35 = v24;
        *(&v35 + 1) = v19;
        GenWrite(&v34, 0x20uLL, __stream);
      }

      for (j = *(v16 + 32); j; j = j[3])
      {
        v26 = *(*(a1 + 48) + 32);
        v27 = *(v26 + 120) + 1;
        *(v26 + 120) = v27;
        if (*j)
        {
          v28 = *(*j + 16) >> 3;
        }

        else
        {
          v28 = -1;
        }

        *&v34 = v28;
        v29 = j[1];
        if (v29)
        {
          v30 = *(v29 + 16) >> 3;
        }

        else
        {
          v30 = -1;
        }

        *(&v34 + 1) = v30;
        v31 = j[2];
        if (v31)
        {
          v32 = *(v31 + 16) >> 3;
        }

        else
        {
          v32 = -1;
        }

        if (!j[3])
        {
          v27 = -1;
        }

        *&v35 = v32;
        *(&v35 + 1) = v27;
        GenWrite(&v34, 0x20uLL, __stream);
      }

      v16 = EnvGetNextDefmodule(a1, v16);
    }

    while (v16);
  }

  RestoreBloadCount(a1, (*(*(a1 + 48) + 32) + 112));
  return RestoreBloadCount(a1, (*(*(a1 + 48) + 32) + 120));
}

size_t BloadStorage_2(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  GenReadBinary(a1, (*(*(a1 + 48) + 32) + 112), 8uLL);
  result = GenReadBinary(a1, (*(*(a1 + 48) + 32) + 120), 8uLL);
  v3 = *(*(a1 + 48) + 32);
  v4 = *(v3 + 112);
  if (v4)
  {
    __ptr = 72 * v4;
    result = genalloc(a1, 72 * v4);
    v5 = *(a1 + 48);
    *(*(v5 + 32) + 136) = result;
    v6 = *(v5 + 32);
    v7 = *(v6 + 120);
    if (v7)
    {
      __ptr = 32 * v7;
      result = genalloc(a1, 32 * v7);
      *(*(*(a1 + 48) + 32) + 128) = result;
    }

    else
    {
      *(v6 + 128) = 0;
    }
  }

  else
  {
    *(v3 + 136) = 0;
  }

  return result;
}

size_t BloadBinaryItem_2(uint64_t a1)
{
  __ptr = 0;
  result = GenReadBinary(a1, &__ptr, 8uLL);
  v3 = *(*(*(a1 + 48) + 32) + 112);
  if (v3)
  {
    BloadandRefresh(a1, v3, 40, UpdateDefmodule);
    BloadandRefresh(a1, *(*(*(a1 + 48) + 32) + 120), 32, UpdatePortItem);
    SetListOfDefmodules(a1, *(*(*(a1 + 48) + 32) + 136));
    NextDefmodule = EnvGetNextDefmodule(a1, 0);
    return EnvSetCurrentModule(a1, NextDefmodule);
  }

  return result;
}

uint64_t ClearBload_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 32);
  v4 = *(v3 + 112);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      DecrementSymbolCount(a1, *(*(v3 + 136) + 72 * v5));
      v6 = *(*(*(a1 + 48) + 32) + 136);
      v7 = *(v6 + 72 * v5 + 24);
      if (v7)
      {
        do
        {
          if (*v7)
          {
            DecrementSymbolCount(a1, *v7);
          }

          v8 = v7[1];
          if (v8)
          {
            DecrementSymbolCount(a1, v8);
          }

          v9 = v7[2];
          if (v9)
          {
            DecrementSymbolCount(a1, v9);
          }

          v7 = v7[3];
        }

        while (v7);
        v6 = *(*(*(a1 + 48) + 32) + 136);
      }

      v10 = *(v6 + 72 * v5 + 32);
      if (v10)
      {
        do
        {
          if (*v10)
          {
            DecrementSymbolCount(a1, *v10);
          }

          v11 = v10[1];
          if (v11)
          {
            DecrementSymbolCount(a1, v11);
          }

          v12 = v10[2];
          if (v12)
          {
            DecrementSymbolCount(a1, v12);
          }

          v10 = v10[3];
        }

        while (v10);
        v6 = *(*(*(a1 + 48) + 32) + 136);
      }

      v13 = *(v6 + 72 * v5 + 16);
      NumberOfModuleItems = GetNumberOfModuleItems(a1);
      rm(a1, v13, 8 * NumberOfModuleItems);
      ++v5;
      v2 = *(a1 + 48);
      v3 = *(v2 + 32);
      v4 = *(v3 + 112);
    }

    while (v5 < v4);
  }

  if (72 * v4)
  {
    genfree(a1, *(v3 + 136), 72 * v4);
    v2 = *(a1 + 48);
  }

  v15 = *(v2 + 32);
  *(v15 + 112) = 0;
  v16 = 32 * *(v15 + 120);
  if (v16)
  {
    genfree(a1, *(v15 + 128), v16);
    v15 = *(*(a1 + 48) + 32);
  }

  *(v15 + 120) = 0;
  SetListOfDefmodules(a1, 0);
  result = CreateMainModule(a1);
  *(*(*(a1 + 48) + 32) + 80) = 1;
  return result;
}

uint64_t UpdateDefmoduleItemHeader(uint64_t result, void *a2, void *a3, int a4, uint64_t a5)
{
  v5 = a2[1];
  *a3 = *(*(*(result + 48) + 32) + 136) + 72 * *a2;
  if (v5 == -1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = a5 + v5 * a4;
    v7 = a5 + a2[2] * a4;
  }

  a3[1] = v6;
  a3[2] = v7;
  return result;
}

void *AssignBsaveDefmdlItemHdrVals(void *result, void *a2)
{
  v2 = a2[1];
  *result = *(*a2 + 48);
  if (v2)
  {
    v3 = *(v2 + 24);
    v4 = *(a2[2] + 24);
  }

  else
  {
    v3 = -1;
    v4 = -1;
  }

  result[1] = v3;
  result[2] = v4;
  return result;
}

uint64_t UpdateDefmodule(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  v7 = 9 * a3;
  *(*(*(v6 + 32) + 136) + 72 * a3) = *(*(*(v6 + 392) + 120) + 8 * *a2);
  v8 = *(*(v6 + 32) + 136);
  v9 = (v8 + 72 * a3);
  ++*(*v9 + 8);
  v10 = a2[3];
  v11 = v8 + 72 * v10;
  if (v10 == -1)
  {
    v11 = 0;
  }

  v9[8] = v11;
  if (GetNumberOfModuleItems(a1))
  {
    NumberOfModuleItems = GetNumberOfModuleItems(a1);
    v13 = gm2(a1, 8 * NumberOfModuleItems);
  }

  else
  {
    v13 = 0;
  }

  *(*(*(*(a1 + 48) + 32) + 136) + 72 * a3 + 16) = v13;
  ListOfModuleItems = GetListOfModuleItems(a1);
  result = GetNumberOfModuleItems(a1);
  if (result >= 1 && ListOfModuleItems)
  {
    v16 = 0;
    do
    {
      v17 = *(ListOfModuleItems + 32);
      if (v17)
      {
        v18 = v17(a1, a3);
      }

      else
      {
        v18 = 0;
      }

      *(*(*(*(*(a1 + 48) + 32) + 136) + 72 * a3 + 16) + 8 * v16++) = v18;
      ListOfModuleItems = *(ListOfModuleItems + 56);
      result = GetNumberOfModuleItems(a1);
    }

    while (v16 < result && ListOfModuleItems);
  }

  v19 = *(a1 + 48);
  *(*(*(v19 + 32) + 136) + 72 * a3 + 8) = 0;
  v20 = a2[1];
  v21 = *(v19 + 32);
  if (v20 == -1)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v21 + 128) + 32 * v20;
  }

  *(*(v21 + 136) + 72 * a3 + 24) = v22;
  v23 = a2[2];
  v24 = *(v19 + 32);
  if (v23 == -1)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 128) + 32 * v23;
  }

  *(*(v24 + 136) + 8 * v7 + 32) = v25;
  *(*(*(v19 + 32) + 136) + 8 * v7 + 48) = a2[4];
  return result;
}

uint64_t UpdatePortItem(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(result + 48);
  if (*a2 == -1)
  {
    *(*(*(v3 + 32) + 128) + 32 * a3) = 0;
  }

  else
  {
    *(*(*(v3 + 32) + 128) + 32 * a3) = *(*(*(v3 + 392) + 120) + 8 * *a2);
    v4 = *(*(*(v3 + 32) + 128) + 32 * a3);
    ++*(v4 + 8);
  }

  v5 = a2[1];
  if (v5 == -1)
  {
    *(*(*(v3 + 32) + 128) + 32 * a3 + 8) = 0;
  }

  else
  {
    *(*(*(v3 + 32) + 128) + 32 * a3 + 8) = *(*(*(v3 + 392) + 120) + 8 * v5);
    v6 = *(*(*(v3 + 32) + 128) + 32 * a3 + 8);
    ++*(v6 + 8);
  }

  v7 = a2[2];
  if (v7 == -1)
  {
    *(*(*(v3 + 32) + 128) + 32 * a3 + 16) = 0;
  }

  else
  {
    *(*(*(v3 + 32) + 128) + 32 * a3 + 16) = *(*(*(v3 + 392) + 120) + 8 * v7);
    v8 = *(*(*(v3 + 32) + 128) + 32 * a3 + 16);
    ++*(v8 + 8);
  }

  v9 = a2[3];
  v10 = *(*(v3 + 32) + 128);
  if (v9 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 + 32 * v9;
  }

  *(v10 + 32 * a3 + 24) = v11;
  return result;
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_232775700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&STACK[0x440], 8);
  _Unwind_Resume(a1);
}

uint64_t __boottime_secs_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  *v6 = 0x1500000001;
  v4 = 0;
  v5 = 0;
  v3 = 16;
  result = sysctl(v6, 2u, &v4, &v3, 0, 0);
  if (result != -1 && v4 != 0)
  {
    boottime_secs_boottime = v4;
    if (v5 >= 500001)
    {
      boottime_secs_boottime = v4 + 1;
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t uptime_secs()
{
  if (boottime_secs_pred != -1)
  {
    boottime_secs_cold_1();
  }

  v0 = boottime_secs_boottime;
  if (boottime_secs_boottime == -1)
  {
    return -1;
  }

  v2 = 0;
  time(&v2);
  return v2 - v0;
}

BOOL isDateWithinScope(void *a1, uint64_t a2, double a3)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      [a1 timeIntervalSinceDate:a2];
      return fabs(v6) <= fabs(a3);
    }
  }

  return result;
}

id formattedDateStringForTimeInterval(double a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *v7 = 0;
  v8 = 0;
  v10 = 0;
  v9 = 0;
  v5 = a1;
  if (a1 <= 0 && (time(&v5), v5 < 1))
  {
    formattedDateStringForTimeInterval_cold_1();
  }

  else
  {
    v1 = localtime(&v5);
    if (strftime(v7, 0x1AuLL, "%Y-%m-%d %H:%M:%S %z", v1))
    {
      v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v7 encoding:1];
      goto LABEL_5;
    }

    formattedDateStringForTimeInterval_cold_2();
  }

  v2 = v6;
LABEL_5:
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id timeStringMillisecondsDuration(long double a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  *v17 = 0;
  __y[0] = 0.0;
  v1 = fmod(a1, 86400.0);
  v2 = -v1;
  if (v1 >= 0.0)
  {
    v2 = v1;
  }

  v3 = modf(v2, __y);
  v13 = __y[0];
  v4 = gmtime(&v13);
  v5 = "%S";
  if (v13 > 60)
  {
    v5 = "%M:%S";
  }

  if (v13 <= 3600)
  {
    v6 = v5;
  }

  else
  {
    v6 = "%H:%M:%S";
  }

  if (strftime(v17, 0xAuLL, v6, v4))
  {
    v12 = 0;
    *__str = 0;
    if (snprintf(__str, 6uLL, "%.3f", v3))
    {
      *v15 = 0;
      v16 = 0;
      if (v1 >= 0.0)
      {
        v7 = snprintf(v15, 0x10uLL, "%s%s");
      }

      else
      {
        v7 = snprintf(v15, 0x10uLL, "-%s%s");
      }

      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v15 encoding:1];
      }

      else
      {
        timeStringMillisecondsDuration_cold_1();
        v8 = *&__y[1];
      }

      goto LABEL_15;
    }

    timeStringMillisecondsDuration_cold_2();
  }

  else
  {
    timeStringMillisecondsDuration_cold_3();
  }

  v8 = *v15;
LABEL_15:
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

double timeIntervalFrom1970ToMidnight(void *a1)
{
  [a1 timeIntervalSince1970];
  v4 = v1;
  v2 = gmtime(&v4);
  v2->tm_hour = 0;
  *&v2->tm_sec = 0;
  return timegm(v2);
}

void sub_232778678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232778DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __24__cellFlowObserver_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v13 = value;
    if (value < 0)
    {
      *(*(a1 + 32) + 156) = 300;
      v15 = scoringLogHandle;
      if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v16 = *(*(a1 + 32) + 156);
      v17 = 134218240;
      v18 = v13;
      v19 = 1024;
      v20 = v16;
      v8 = "Configured AppAware dampening time is negative (%lld). Resetting dampening time to %d";
      v9 = v15;
      v10 = 18;
      goto LABEL_6;
    }

    *(*(a1 + 32) + 156) = value;
    v6 = scoringLogHandle;
    if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v14 = *(*(a1 + 32) + 156);
    v17 = 67109120;
    LODWORD(v18) = v14;
    v8 = "Set AppAware dampening time to %d";
LABEL_5:
    v9 = v6;
    v10 = 8;
LABEL_6:
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, v8, &v17, v10);
    goto LABEL_7;
  }

  *(*(a1 + 32) + 156) = 300;
  v6 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 156);
    v17 = 67109120;
    LODWORD(v18) = v7;
    v8 = "prefs_store of AppAware dampening time not found. Resetting dampening time to %d";
    goto LABEL_5;
  }

LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
}

void __33__cellFlowObserver_noteNewUsage___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 172) == *(a1 + 40))
  {
    if (*(v1 + 136) == *(v1 + 140) || *(v1 + 232) != 1)
    {
      v9 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 44);
        v11 = *(*(a1 + 32) + 140);
        v13 = 67109376;
        v14 = v10;
        v15 = 1024;
        v16 = v11;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "After dampening, new flags 0x%x, initial value 0x%x, ignore", &v13, 0xEu);
      }
    }

    else
    {
      v3 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v4 = *(a1 + 44);
        v5 = *(*(a1 + 32) + 140);
        v13 = 67109376;
        v14 = v4;
        v15 = 1024;
        v16 = v5;
        _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "After dampening, new flags 0x%x, initial value 0x%x, report", &v13, 0xEu);
      }

      [NetworkAnalyticsEngine sendTrafficInfoFlags:*(*(a1 + 32) + 136) changeFlags:(*(*(a1 + 32) + 140) ^ *(*(a1 + 32) + 136)) foreground:*(*(a1 + 32) + 233)];
      *(*(a1 + 32) + 140) = *(*(a1 + 32) + 136);
      *(*(a1 + 32) + 148) |= *(*(a1 + 32) + 136);
      *(*(a1 + 32) + 152) = *(*(a1 + 32) + 136);
      v6 = [MEMORY[0x277CBEAA8] date];
      v7 = *(a1 + 32);
      v8 = *(v7 + 160);
      *(v7 + 160) = v6;
    }

    *(*(a1 + 32) + 168) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23277B504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void InitializePatterns(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x13u, 0x80uLL, DeallocatePatternData);
  *(*(*(a1 + 48) + 152) + 72) = 1;
  v2 = gm3(a1, 0x320uLL);
  if (!v2)
  {
    EnvExitRouter(a1, 1);
  }

  bzero(v2, 0x320uLL);
  v3 = *(a1 + 48);
  *(*(v3 + 152) + 112) = v2;
  *(*(v3 + 152) + 120) = 100;
}

uint64_t DeallocatePatternData(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 152);
  v3 = v2[10];
  if (v3)
  {
    do
    {
      v4 = *(v3 + 16);
      v5 = *(a1 + 48);
      *(*(v5 + 472) + 32) = v3;
      **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
      *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
      v3 = v4;
    }

    while (v4);
    v1 = *(a1 + 48);
    v2 = *(v1 + 152);
  }

  v6 = *v2;
  if (*v2)
  {
    do
    {
      v7 = *(v6 + 184);
      v8 = *(a1 + 48);
      *(*(v8 + 472) + 32) = v6;
      **(*(v8 + 472) + 32) = *(*(*(v8 + 472) + 40) + 1536);
      *(*(*(v8 + 472) + 40) + 1536) = *(*(v8 + 472) + 32);
      v6 = v7;
    }

    while (v7);
    v1 = *(a1 + 48);
    v2 = *(v1 + 152);
  }

  if (v2[15])
  {
    v9 = 0;
    do
    {
      v10 = *(v2[14] + 8 * v9);
      if (v10)
      {
        do
        {
          v11 = *(v10 + 32);
          v12 = *(a1 + 48);
          *(*(v12 + 472) + 32) = v10;
          **(*(v12 + 472) + 32) = *(*(*(v12 + 472) + 40) + 320);
          *(*(*(v12 + 472) + 40) + 320) = *(*(v12 + 472) + 32);
          v10 = v11;
        }

        while (v11);
        v1 = *(a1 + 48);
      }

      ++v9;
      v2 = *(v1 + 152);
      v13 = v2[15];
    }

    while (v9 < v13);
    v14 = 8 * v13;
  }

  else
  {
    v14 = 0;
  }

  return rm(a1, v2[14], v14);
}

void *AddHashedPatternNode(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  AtomicHashValue = GetAtomicHashValue(a4, a5, 1);
  v11 = HashExternalAddress(a2, 0);
  v12 = *(a1 + 48);
  v13 = *(v12 + 472);
  v14 = *(*(v13 + 40) + 320);
  if (v14)
  {
    *(v13 + 32) = v14;
    *(*(*(v12 + 472) + 40) + 320) = **(*(v12 + 472) + 32);
    v15 = *(a1 + 48);
    result = *(*(v15 + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x28uLL);
    v15 = *(a1 + 48);
  }

  *result = a2;
  result[1] = a3;
  *(result + 4) = a4;
  result[3] = a5;
  v17 = (*(v15 + 152) + 112);
  v18 = (v11 + AtomicHashValue) % v17[1];
  v19 = *(*v17 + 8 * v18);
  *(*v17 + 8 * v18) = result;
  result[4] = v19;
  return result;
}

uint64_t RemoveHashedPatternNode(uint64_t a1, unsigned int a2, uint64_t a3, int a4, unint64_t a5)
{
  AtomicHashValue = GetAtomicHashValue(a4, a5, 1);
  v9 = HashExternalAddress(a2, 0);
  v10 = *(a1 + 48);
  v11 = *(*(v10 + 152) + 112);
  v12 = (v9 + AtomicHashValue) % *(*(v10 + 152) + 120);
  v13 = *(v11 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  if (*(v13 + 8) != a3)
  {
    v14 = *(v11 + 8 * v12);
    while (1)
    {
      v13 = *(v14 + 32);
      if (!v13)
      {
        return 0;
      }

      v15 = v14;
      v14 = *(v14 + 32);
      if (*(v13 + 8) == a3)
      {
        goto LABEL_9;
      }
    }
  }

  v15 = 0;
LABEL_9:
  v17 = *(v13 + 32);
  if (v15)
  {
    *(v15 + 32) = v17;
  }

  else
  {
    *(v11 + 8 * v12) = v17;
    v10 = *(a1 + 48);
  }

  *(*(v10 + 472) + 32) = v13;
  **(*(v10 + 472) + 32) = *(*(*(v10 + 472) + 40) + 320);
  *(*(*(v10 + 472) + 40) + 320) = *(*(v10 + 472) + 32);
  return 1;
}

uint64_t FindHashedPatternNode(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  AtomicHashValue = GetAtomicHashValue(a3, a4, 1);
  v9 = *(*(*(*(a1 + 48) + 152) + 112) + 8 * ((HashExternalAddress(a2, 0) + AtomicHashValue) % *(*(*(a1 + 48) + 152) + 120)));
  if (!v9)
  {
    return 0;
  }

  while (*v9 != a2 || *(v9 + 16) != a3 || *(v9 + 24) != a4)
  {
    v9 = *(v9 + 32);
    if (!v9)
    {
      return 0;
    }
  }

  return *(v9 + 8);
}

void *AddReservedPatternSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
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
  result[1] = a3;
  result[2] = *(*(v9 + 152) + 80);
  *(*(v9 + 152) + 80) = result;
  return result;
}

BOOL ReservedPatternSymbol(uint64_t a1, char *__s1, const char *a3)
{
  v3 = *(*(*(a1 + 48) + 152) + 80);
  if (!v3)
  {
    return 0;
  }

  while (strcmp(__s1, *v3))
  {
    v3 = *(v3 + 16);
    if (!v3)
    {
      return 0;
    }
  }

  result = 1;
  if (a3)
  {
    v7 = *(v3 + 8);
    if (v7)
    {
      return strcmp(a3, v7) != 0;
    }
  }

  return result;
}

uint64_t ReservedPatternSymbolErrorMsg(uint64_t a1, char *a2, char *a3)
{
  PrintErrorID(a1, "PATTERN", 1, 1);
  EnvPrintRouter(a1, "werror", "The symbol ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " has special meaning\n");
  EnvPrintRouter(a1, "werror", "and may not be used as ");
  EnvPrintRouter(a1, "werror", a3);

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t GetNextPatternEntity(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (!*a2)
  {
    *a2 = **(*(result + 48) + 152);
    *a3 = 0;
LABEL_8:
    v6 = *a2;
    do
    {
      if (!v6)
      {
        break;
      }

      result = (*(*(v6 + 8) + 48))(v5, 0);
      *a3 = result;
      if (result)
      {
        break;
      }

      v6 = *(*a2 + 184);
      *a2 = v6;
    }

    while (!*a3);
    return result;
  }

  if (a3)
  {
    result = (*(*(*a2 + 8) + 48))(result, *a3);
    *a3 = result;
    if (result)
    {
      return result;
    }

    *a2 = *(*a2 + 184);
  }

  else
  {
    SystemError(result, "PATTERN", 1);
    result = EnvExitRouter(v5, 1);
  }

  if (!*a3)
  {
    goto LABEL_8;
  }

  return result;
}

void *DetachPattern(void *result, int a2, uint64_t *a3)
{
  if (a2)
  {
    v3 = result;
    v4 = a2 - 1;
    if (*(*(result[6] + 152) + 8 * v4 + 8))
    {
      FlushAlphaMemory(result, a3);
      v6 = *(*(*(v3[6] + 152) + 8 * v4 + 8) + 56);

      return v6(v3, a3);
    }
  }

  return result;
}

uint64_t AddPatternParser(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 152);
  v3 = *(v2 + 72);
  if (v3 > 7)
  {
    return 0;
  }

  *(a2 + 16) = v3;
  *(v2 + 8 * v3) = a2;
  v5 = *(a1 + 48);
  v6 = *(v5 + 152);
  ++*(v6 + 18);
  v7 = *v6;
  if (v7)
  {
    v8 = *(a2 + 176);
    if (v8 < *(v7 + 176))
    {
      v9 = v7;
      do
      {
        v10 = v9;
        v9 = *(v9 + 184);
      }

      while (v9 && v8 < *(v9 + 176));
      *(a2 + 184) = v9;
      v11 = (v10 + 184);
      goto LABEL_12;
    }

    *(a2 + 184) = v7;
  }

  else
  {
    *(a2 + 184) = 0;
  }

  v11 = *(v5 + 152);
LABEL_12:
  *v11 = a2;
  return 1;
}

uint64_t FindPatternParser(uint64_t a1, char *__s2)
{
  for (i = **(*(a1 + 48) + 152); i; i = *(i + 184))
  {
    if (!strcmp(*i, __s2))
    {
      break;
    }
  }

  return i;
}

uint64_t GetPatternParser(uint64_t a1, int a2)
{
  if (a2)
  {
    return *(*(*(a1 + 48) + 152) + 8 * a2);
  }

  else
  {
    return 0;
  }
}