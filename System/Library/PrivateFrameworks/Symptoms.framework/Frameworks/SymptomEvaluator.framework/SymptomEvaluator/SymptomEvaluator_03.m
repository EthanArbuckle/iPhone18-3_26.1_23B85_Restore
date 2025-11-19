void *InitializeDefrules(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x10u, 0x40uLL, DeallocateDefruleData);
  InitializeEngine(a1);
  InitializeAgenda(a1);
  InitializePatterns(a1);
  *(*(*(a1 + 48) + 128) + 8) = RegisterModuleItem(a1, "defrule", AllocateModule, ReturnModule, BloadDefruleModuleReference, 0, EnvFindDefruleInModule);
  AddReservedPatternSymbol(a1, "and", 0);
  AddReservedPatternSymbol(a1, "not", 0);
  AddReservedPatternSymbol(a1, "or", 0);
  AddReservedPatternSymbol(a1, "test", 0);
  AddReservedPatternSymbol(a1, "logical", 0);
  AddReservedPatternSymbol(a1, "exists", 0);
  AddReservedPatternSymbol(a1, "forall", 0);
  DefruleBasicCommands(a1);
  DefruleCommands(a1);
  **(*(a1 + 48) + 128) = AddConstruct(a1, "defrule", "defrules", ParseDefrule, EnvFindDefrule, GetConstructNamePointer, GetConstructPPForm, GetConstructModuleItem, EnvGetNextDefrule, SetNextConstruct, EnvIsDefruleDeletable, EnvUndefrule, ReturnDefrule);
  result = gm3(a1, 0x320uLL);
  v3 = 0;
  *(*(*(a1 + 48) + 128) + 24) = result;
  do
  {
    *(*(*(*(a1 + 48) + 128) + 24) + v3) = 0;
    v3 += 8;
  }

  while (v3 != 800);
  v4 = *(a1 + 48);
  v5 = *(v4 + 128);
  *(v5 + 32) = 1;
  *(v5 + 40) = 0;
  *(*(v4 + 128) + 48) = 0;
  return result;
}

uint64_t DeallocateDefruleData(uint64_t a1)
{
  result = Bloaded(a1);
  if (!result)
  {
    DoForAllConstructs(a1, DestroyDefruleAction, *(*(*(a1 + 48) + 128) + 8), 0, 0);
    NextDefmodule = EnvGetNextDefmodule(a1, 0);
    if (NextDefmodule)
    {
      v4 = NextDefmodule;
      do
      {
        ModuleItem = GetModuleItem(a1, v4, *(*(*(a1 + 48) + 128) + 8));
        v6 = *(ModuleItem + 32);
        if (v6)
        {
          do
          {
            v7 = *(v6 + 48);
            v8 = *(a1 + 48);
            *(*(v8 + 472) + 32) = v6;
            **(*(v8 + 472) + 32) = *(*(*(v8 + 472) + 40) + 448);
            *(*(*(v8 + 472) + 40) + 448) = *(*(v8 + 472) + 32);
            v6 = v7;
          }

          while (v7);
        }

        v9 = *(ModuleItem + 24);
        if (v9)
        {
          do
          {
            v10 = *(v9 + 24);
            v11 = *(a1 + 48);
            *(*(v11 + 472) + 32) = v9;
            **(*(v11 + 472) + 32) = *(*(*(v11 + 472) + 40) + 320);
            *(*(*(v11 + 472) + 40) + 320) = *(*(v11 + 472) + 32);
            v9 = v10;
          }

          while (v10);
        }

        v12 = *(a1 + 48);
        *(*(v12 + 472) + 32) = ModuleItem;
        **(*(v12 + 472) + 32) = *(*(*(v12 + 472) + 40) + 320);
        *(*(*(v12 + 472) + 40) + 320) = *(*(v12 + 472) + 32);
        v4 = EnvGetNextDefmodule(a1, v4);
      }

      while (v4);
    }

    v13 = *(*(*(a1 + 48) + 128) + 24);

    return rm(a1, v13, 0x320uLL);
  }

  return result;
}

BOOL EnvIsDefruleDeletable(uint64_t a1, uint64_t a2)
{
  result = ConstructsDeletable(a1);
  if (result)
  {
    if (a2)
    {
      while ((*(a2 + 56) & 0x80000000) == 0)
      {
        a2 = *(a2 + 96);
        if (!a2)
        {
          return *(*(*(a1 + 48) + 144) + 92) == 0;
        }
      }

      return 0;
    }

    else
    {
      return *(*(*(a1 + 48) + 144) + 92) == 0;
    }
  }

  return result;
}

uint64_t EnvGetDisjunctCount(uint64_t a1, uint64_t a2)
{
  for (result = 0; a2; a2 = *(a2 + 96))
  {
    ++result;
  }

  return result;
}

uint64_t EnvGetNthDisjunct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (result = a2; result; result = *(result + 96))
  {
    if (!--a3)
    {
      break;
    }
  }

  return result;
}

void AddBetaMemoriesToJoin(uint64_t a1, int *a2)
{
  if (!*(a2 + 7) && !*(a2 + 8))
  {
    v4 = *a2;
    if ((*a2 & 0x1D) == 1)
    {
      *(a2 + 7) = 0;
    }

    else
    {
      v5 = *(a1 + 48);
      v6 = *(v5 + 472);
      v7 = *(*(v6 + 40) + 256);
      if (*(a2 + 11))
      {
        if (v7)
        {
          *(v6 + 32) = v7;
          *(*(*(v5 + 472) + 40) + 256) = **(*(v5 + 472) + 32);
          v8 = *(*(*(a1 + 48) + 472) + 32);
        }

        else
        {
          v8 = genalloc(a1, 0x20uLL);
        }

        *(a2 + 7) = v8;
        v10 = genalloc(a1, 0x88uLL);
        *(*(a2 + 7) + 16) = v10;
        v10[16] = 0;
        *(v10 + 6) = 0u;
        *(v10 + 7) = 0u;
        *(v10 + 4) = 0u;
        *(v10 + 5) = 0u;
        *(v10 + 2) = 0u;
        *(v10 + 3) = 0u;
        v11 = 17;
        *v10 = 0u;
        *(v10 + 1) = 0u;
      }

      else
      {
        if (v7)
        {
          *(v6 + 32) = v7;
          *(*(*(v5 + 472) + 40) + 256) = **(*(v5 + 472) + 32);
          v9 = *(*(*(a1 + 48) + 472) + 32);
        }

        else
        {
          v9 = genalloc(a1, 0x20uLL);
        }

        *(a2 + 7) = v9;
        v12 = genalloc(a1, 8uLL);
        *(*(a2 + 7) + 16) = v12;
        *v12 = 0;
        v11 = 1;
      }

      v13 = *(a2 + 7);
      *v13 = v11;
      v13[1] = 0;
      v13[3] = 0;
      v4 = *a2;
      if ((*a2 & 1) != 0 && (v4 & 0x1C) != 0)
      {
        CreateEmptyPartialMatch(a1);
        **(*(a2 + 7) + 16) = v14;
        *(**(*(a2 + 7) + 16) + 16) = a2;
        v4 = *a2;
      }
    }

    if ((v4 & 4) != 0)
    {
      v15 = *(a1 + 48);
      v16 = *(v15 + 472);
      v17 = *(*(v16 + 40) + 256);
      if (*(a2 + 11))
      {
        if (v17)
        {
          *(v16 + 32) = v17;
          *(*(*(v15 + 472) + 40) + 256) = **(*(v15 + 472) + 32);
          v18 = *(*(*(a1 + 48) + 472) + 32);
        }

        else
        {
          v18 = genalloc(a1, 0x20uLL);
        }

        *(a2 + 8) = v18;
        *(*(a2 + 8) + 16) = genalloc(a1, 0x88uLL);
        v24 = genalloc(a1, 0x88uLL);
        v25 = *(a2 + 8);
        *(v25 + 24) = v24;
        v26 = *(v25 + 16);
        *v26 = 0u;
        *(v26 + 16) = 0u;
        *(v26 + 32) = 0u;
        *(v26 + 48) = 0u;
        *(v26 + 64) = 0u;
        *(v26 + 80) = 0u;
        *(v26 + 96) = 0u;
        *(v26 + 112) = 0u;
        *(v26 + 128) = 0;
        v27 = *(*(a2 + 8) + 24);
        *(v27 + 128) = 0;
        *(v27 + 96) = 0u;
        *(v27 + 112) = 0u;
        *(v27 + 64) = 0u;
        *(v27 + 80) = 0u;
        *(v27 + 32) = 0u;
        *(v27 + 48) = 0u;
        *v27 = 0u;
        *(v27 + 16) = 0u;
        v28 = *(a2 + 8);
        v29 = xmmword_232816A90;
      }

      else
      {
        if (v17)
        {
          *(v16 + 32) = v17;
          *(*(*(v15 + 472) + 40) + 256) = **(*(v15 + 472) + 32);
          v23 = *(*(*(a1 + 48) + 472) + 32);
        }

        else
        {
          v23 = genalloc(a1, 0x20uLL);
        }

        *(a2 + 8) = v23;
        *(*(a2 + 8) + 16) = genalloc(a1, 8uLL);
        v32 = genalloc(a1, 8uLL);
        v33 = *(a2 + 8);
        *(v33 + 24) = v32;
        **(v33 + 16) = 0;
        **(*(a2 + 8) + 24) = 0;
        v28 = *(a2 + 8);
        v29 = xmmword_232816AA0;
      }
    }

    else
    {
      if (*(a2 + 13))
      {
        *(a2 + 8) = 0;
        return;
      }

      v19 = *(a1 + 48);
      v20 = *(v19 + 472);
      v21 = *(*(v20 + 40) + 256);
      if (v21)
      {
        *(v20 + 32) = v21;
        *(*(*(v19 + 472) + 40) + 256) = **(*(v19 + 472) + 32);
        v22 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v22 = genalloc(a1, 0x20uLL);
      }

      *(a2 + 8) = v22;
      *(*(a2 + 8) + 16) = genalloc(a1, 8uLL);
      *(*(a2 + 8) + 24) = genalloc(a1, 8uLL);
      CreateEmptyPartialMatch(a1);
      **(*(a2 + 8) + 16) = v30;
      v31 = *(*(a2 + 8) + 16);
      *(*v31 + 16) = a2;
      **v31 |= 4u;
      **(*(a2 + 8) + 24) = **(*(a2 + 8) + 16);
      v28 = *(a2 + 8);
      v29 = vdupq_n_s64(1uLL);
    }

    *v28 = v29;
  }
}

void *AllocateModule(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 472);
  v3 = *(*(v2 + 40) + 320);
  if (v3)
  {
    *(v2 + 32) = v3;
    *(*(*(v1 + 472) + 40) + 320) = **(*(v1 + 472) + 32);
    result = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x28uLL);
  }

  result[3] = 0;
  result[4] = 0;
  return result;
}

uint64_t ReturnModule(uint64_t a1, uint64_t a2)
{
  result = FreeConstructHeaderModule(a1, a2, **(*(a1 + 48) + 128));
  v5 = *(a1 + 48);
  *(*(v5 + 472) + 32) = a2;
  **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 320);
  *(*(*(v5 + 472) + 40) + 320) = *(*(v5 + 472) + 32);
  return result;
}

uint64_t CallDeffunction(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v22, 0, sizeof(v22));
  *(a4 + 8) = 2;
  result = EnvFalseSymbol(a1);
  *(a4 + 16) = result;
  v9 = a1[6];
  v10 = *(v9 + 352);
  *(v10 + 8) = 0;
  if (!*(v10 + 12))
  {
    v11 = *(v9 + 440);
    v12 = *(v11 + 112);
    v23[0] = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    v23[1] = v12;
    *(v11 + 112) = v23;
    v13 = ExecutingConstruct(a1);
    SetExecutingConstruct(a1, 1);
    v14 = a1[6];
    v15 = *(v14 + 184);
    v16 = *(v15 + 144);
    *(v15 + 144) = a2;
    ++*(*(v14 + 352) + 16);
    ++*(a2 + 52);
    v17 = CountArguments(a3);
    DefruleName = EnvGetDefruleName(a1, a2);
    PushProcParameters(a1, a3, v17, DefruleName, "deffunction", UnboundDeffunctionErr);
    v19 = a1[6];
    if (*(v19[44] + 8))
    {
      v20 = v19 + 44;
      --*(a2 + 52);
      *(v19[23] + 144) = v16;
    }

    else
    {
      if (*(a2 + 56))
      {
        WatchDeffunction(a1, ">> ");
        v19 = a1[6];
      }

      StartProfile(a1, v22, (a2 + 40), *(v19[15] + 72));
      EvaluateProcActions(a1, **(a2 + 16), *(a2 + 64), *(a2 + 80), a4, UnboundDeffunctionErr);
      EndProfile(a1, v22);
      if (*(a2 + 56))
      {
        WatchDeffunction(a1, "<< ");
      }

      **(a1[6] + 104) = 0;
      --*(a2 + 52);
      PopProcParameters(a1);
      v21 = a1[6];
      *(*(v21 + 184) + 144) = v16;
      v20 = (v21 + 352);
    }

    --*(*v20 + 16);
    RestorePriorGarbageFrame(a1, v23, v12, a4);
    CallPeriodicTasks(a1);
    return SetExecutingConstruct(a1, v13);
  }

  return result;
}

uint64_t UnboundDeffunctionErr(uint64_t a1)
{
  EnvPrintRouter(a1, "werror", "deffunction ");
  DefruleName = EnvGetDefruleName(a1, *(*(*(a1 + 48) + 184) + 144));
  EnvPrintRouter(a1, "werror", DefruleName);

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t WatchDeffunction(uint64_t a1, char *a2)
{
  EnvPrintRouter(a1, "wtrace", "DFN ");
  EnvPrintRouter(a1, "wtrace", a2);
  v4 = **(*(*(*(a1 + 48) + 184) + 144) + 16);
  if (v4 != EnvGetCurrentModule(a1))
  {
    ConstructNameString = EnvGetConstructNameString(a1, **(*(*(*(a1 + 48) + 184) + 144) + 16));
    EnvPrintRouter(a1, "wtrace", ConstructNameString);
    EnvPrintRouter(a1, "wtrace", "::");
  }

  EnvPrintRouter(a1, "wtrace", *(**(*(*(a1 + 48) + 184) + 144) + 24));
  EnvPrintRouter(a1, "wtrace", " ED:");
  PrintLongInteger(a1, "wtrace", *(*(*(a1 + 48) + 352) + 16), v6, v7, v8, v9, v10);

  return PrintProcParamArray(a1, "wtrace");
}

void *CreateMultifield2(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = 16 * v3 + 24;
  if (v4 <= 0x1F3 && (v5 = *(a1 + 48), v6 = *(v5 + 472), (v7 = *(*(v6 + 40) + 8 * v4)) != 0))
  {
    *(v6 + 32) = v7;
    *(*(*(v5 + 472) + 40) + 8 * v4) = **(*(v5 + 472) + 32);
    result = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    result = genalloc(a1, v4);
  }

  *result = 0;
  result[1] = a2;
  result[2] = 0;
  return result;
}

uint64_t ReturnMultifield(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = a2[1];
    if (v2)
    {
      v3 = 16 * v2 + 24;
    }

    else
    {
      v3 = 40;
    }

    v4 = *(result + 48);
    v5 = *(v4 + 472);
    *(v5 + 48) = v3;
    if (v3 > 0x1F3)
    {
      return genfree(result, a2, v3);
    }

    else
    {
      *(v5 + 32) = a2;
      **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 8 * *(*(v4 + 472) + 48));
      *(*(*(v4 + 472) + 40) + 8 * *(*(v4 + 472) + 48)) = *(*(v4 + 472) + 32);
    }
  }

  return result;
}

uint64_t MultifieldInstall(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    ++*a2;
    if (v2)
    {
      v3 = result;
      v4 = (a2 + 32);
      do
      {
        v5 = *(v4 - 4);
        v6 = *v4;
        v4 += 2;
        result = AtomInstall(v3, v5, v6);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t MultifieldDeinstall(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    --*a2;
    if (v2)
    {
      v3 = result;
      v4 = (a2 + 32);
      do
      {
        v5 = *(v4 - 4);
        v6 = *v4;
        v4 += 2;
        result = AtomDeinstall(v3, v5, v6);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *StringToMultifield(uint64_t a1, char *__s)
{
  v18 = 0;
  v19 = 0;
  __s1 = 0;
  OpenStringSource(a1, "multifield-str", __s, 0);
  GetToken(a1, "multifield-str", &v18);
  v3 = 0;
  v4 = 0;
  for (i = 0; ; i = v11)
  {
    v6 = v18;
    if (v18 < 4u || v18 == 8)
    {
      v8 = v19;
      v9 = a1;
      goto LABEL_8;
    }

    if (v18 == 172)
    {
      break;
    }

    v8 = EnvAddSymbol(a1, __s1);
    v9 = a1;
    v6 = 3;
LABEL_8:
    v10 = GenConstant(v9, v6, v8);
    v11 = v10;
    v12 = v10;
    if (v4)
    {
      i[3] = v10;
      v12 = v4;
    }

    GetToken(a1, "multifield-str", &v18);
    ++v3;
    v4 = v12;
  }

  CloseStringSource(a1, "multifield-str");
  Multifield = EnvCreateMultifield(a1, v3);
  v14 = Multifield;
  if (v4)
  {
    v15 = Multifield + 4;
    v16 = v4;
    do
    {
      *(v15 - 4) = *v16;
      *v15 = *(v16 + 8);
      v15 += 2;
      v16 = *(v16 + 24);
    }

    while (v16);
  }

  ReturnExpression(a1, v4);
  return v14;
}

void *EnvCreateMultifield(uint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    v4 = 16 * a2 + 24;
  }

  else
  {
    v4 = 40;
  }

  if (v4 <= 0x1F3 && (v5 = *(a1 + 48), v6 = *(v5 + 472), (v7 = *(*(v6 + 40) + 8 * v4)) != 0))
  {
    *(v6 + 32) = v7;
    *(*(*(v5 + 472) + 40) + 8 * v4) = **(*(v5 + 472) + 32);
    v8 = *(a1 + 48);
    result = *(*(v8 + 472) + 32);
  }

  else
  {
    result = genalloc(a1, v4);
    v8 = *(a1 + 48);
  }

  *result = 0;
  result[1] = a2;
  result[2] = 0;
  result[2] = *(*(*(v8 + 440) + 112) + 56);
  *(*(*(v8 + 440) + 112) + 56) = result;
  v10 = *(*(v8 + 440) + 112);
  *v10 = 1;
  if (!*(v10 + 64))
  {
    *(v10 + 64) = result;
  }

  return result;
}

void *DOToMultifield(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 4)
  {
    return 0;
  }

  Multifield2 = CreateMultifield2(a1, *(a2 + 32) - *(a2 + 24) + 1);
  memcpy(Multifield2 + 3, (*(a2 + 16) + 16 * *(a2 + 24) + 24), 16 * Multifield2[1]);
  return Multifield2;
}

uint64_t AddToMultifieldList(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  *(a2 + 16) = *(*(*(v2 + 440) + 112) + 56);
  *(*(*(v2 + 440) + 112) + 56) = a2;
  v3 = *(*(v2 + 440) + 112);
  *v3 = 1;
  if (!*(v3 + 64))
  {
    *(v3 + 64) = a2;
  }

  return result;
}

void *DuplicateMultifield(uint64_t a1, uint64_t a2, void *a3)
{
  *(a2 + 8) = 4;
  *(a2 + 24) = 0;
  v5 = a3[4] - a3[3];
  *(a2 + 32) = v5;
  Multifield2 = CreateMultifield2(a1, v5 + 1);
  *(a2 + 16) = Multifield2;
  v7 = Multifield2 + 3;
  v8 = (a3[2] + 16 * a3[3] + 24);
  v9 = 16 * *(a2 + 32) + 16;

  return memcpy(v7, v8, v9);
}

void *CopyMultifield(uint64_t a1, uint64_t a2)
{
  Multifield2 = CreateMultifield2(a1, *(a2 + 8));
  memcpy(Multifield2 + 3, (a2 + 24), 16 * *(a2 + 8));
  return Multifield2;
}

void *StoreInMultifield(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v8 = CountArguments(a3);
  if (v8)
  {
    v9 = v8;
    memset(v35, 0, sizeof(v35));
    v10 = 48 * v8;
    v11 = gm3(a1, v10);
    v12 = v11;
    if (v9 < 1)
    {
      v13 = 0;
LABEL_14:
      if (a4)
      {
        Multifield = EnvCreateMultifield(a1, v13);
      }

      else
      {
        Multifield = CreateMultifield2(a1, v13);
      }

      if (v9 >= 1)
      {
        v21 = 0;
        v22 = 1;
        do
        {
          v23 = &v12[6 * v21];
          v24 = *(v23 + 4);
          if (v24 != 175)
          {
            if (v24 == 4)
            {
              v26 = v23[3];
              v25 = v23[4];
              if (v26 <= v25)
              {
                v27 = v23[2];
                v28 = v22 + v25 - v26 + 1;
                v29 = v25 - v26 + 1;
                v30 = &Multifield[2 * v22 + 2];
                v31 = (v27 + 16 * v26 + 32);
                do
                {
                  *(v30 - 4) = *(v31 - 4);
                  v32 = *v31;
                  v31 += 2;
                  *v30 = v32;
                  v30 += 2;
                  --v29;
                }

                while (v29);
                v22 = v28;
              }
            }

            else
            {
              v33 = &Multifield[2 * v22 + 1];
              *v33 = v24;
              *(v33 + 8) = v23[2];
              ++v22;
            }
          }

          ++v21;
        }

        while (v21 != v9);
      }

      *(a2 + 8) = 4;
      *(a2 + 24) = 0;
      *(a2 + 32) = v13 - 1;
    }

    else
    {
      v13 = 0;
      v14 = (v11 + 3);
      v34 = vdupq_n_s64(1uLL);
      v15 = v9;
      while (1)
      {
        EvaluateExpression(a1, v5, v35);
        if (*(*(*(a1 + 48) + 352) + 8))
        {
          break;
        }

        v16 = v35[0].u16[4];
        v14[-1].i16[0] = v35[0].i16[4];
        v14[-1].i64[1] = v35[1].i64[0];
        v17 = xmmword_232816AA0;
        if (v16 != 175)
        {
          if (v16 == 4)
          {
            v17 = vaddq_s64(*(&v35[1] + 8), v34);
          }

          else
          {
            v17.i64[0] = -1;
            v17.i64[1] = -1;
          }
        }

        v13 = v13 - v17.i64[0] + v17.i64[1] + 1;
        v18.i64[0] = -1;
        v18.i64[1] = -1;
        *v14 = vaddq_s64(v17, v18);
        v14 += 3;
        v5 = *(v5 + 24);
        if (!--v15)
        {
          goto LABEL_14;
        }
      }

      *(a2 + 8) = 4;
      *(a2 + 24) = xmmword_2328169C0;
      if (a4)
      {
        Multifield = EnvCreateMultifield(a1, 0);
      }

      else
      {
        Multifield = CreateMultifield2(a1, 0);
      }
    }

    *(a2 + 16) = Multifield;
    return rm(a1, v12, v10);
  }

  else
  {
    *(a2 + 8) = 4;
    *(a2 + 24) = xmmword_2328169C0;
    if (a4)
    {
      result = EnvCreateMultifield(a1, 0);
    }

    else
    {
      result = CreateMultifield2(a1, 0);
    }

    *(a2 + 16) = result;
  }

  return result;
}

uint64_t MultifieldDOsEqual(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a1[4] - v2;
  v4 = a2[3];
  if (v3 == a2[4] - v4)
  {
    v5 = __CFADD__(v3, 1);
    v6 = v3 + 1;
    if (v5)
    {
      return 1;
    }

    v7 = (a2[2] + 16 * v4 + 24);
    v8 = (a1[2] + 16 * v2 + 24);
    while (*v8 == *v7 && *(v8 + 1) == *(v7 + 1))
    {
      v10 = v6-- > 1;
      v8 += 8 * v10;
      v7 += 8 * v10;
      if (!v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MultifieldsEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    if (v2 < 1)
    {
      return 1;
    }

    v3 = (a2 + 32);
    for (i = (a1 + 32); ; i += 2)
    {
      v5 = *(i - 4);
      if (v5 != *(v3 - 4))
      {
        break;
      }

      v6 = *i;
      v7 = *v3;
      if (v5 == 4)
      {
        result = MultifieldsEqual(v6, v7);
        if (!result)
        {
          return result;
        }
      }

      else if (v6 != v7)
      {
        return 0;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t HashMultifield(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 0;
    v5 = -v2;
    v6 = (a1 + 32);
    v7 = 29;
    while (1)
    {
      v8 = *(v6 - 4);
      if (v8 > 3)
      {
        if (v8 == 6)
        {
          v9 = *v6;
        }

        else
        {
          if (v8 != 5)
          {
            if (v8 == 4)
            {
              v4 += HashMultifield(*v6, a2);
            }

            goto LABEL_17;
          }

          v9 = *(*v6 + 24);
        }

        v4 += v7 * v9;
      }

      else if (v8 - 2 < 2)
      {
        v4 += HashSymbol(*(*v6 + 24), a2) * v7;
      }

      else if (*(v6 - 4))
      {
        if (v8 == 1)
        {
          v4 += *(*v6 + 24) + *(*v6 + 24) * v7;
        }
      }

      else
      {
        v4 += *(*v6 + 24) * v7 + *(*v6 + 24);
      }

LABEL_17:
      ++v7;
      v6 += 2;
      if (v5 + v7 == 29)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t *ImplodeMultifield(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0uLL;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  v10 = a2[3];
  if (v10 > a2[4])
  {
    return EnvAddSymbol(a1, "");
  }

  v12 = 0;
  v13 = a2[2] + 24;
  do
  {
    v14 = (v13 + 16 * v10);
    v15 = *v14;
    if (v15 == 3)
    {
      v17 = *(*(v14 + 1) + 24);
      v12 += strlen(v17) + 3;
      while (1)
      {
        v18 = *v17;
        if (v18 == 34 || v18 == 92)
        {
          ++v12;
        }

        else if (!*v17)
        {
          goto LABEL_17;
        }

        ++v17;
      }
    }

    if (v15 == 1)
    {
      v16 = LongIntegerToString(a1, *(*(v14 + 1) + 24), a3, a4, a5, a6, a7, a8);
    }

    else if (*v14)
    {
      WORD4(v51) = *v14;
      *&v52 = *(v14 + 1);
      v16 = DataObjectToString(a1, &v51, a3, a4, a5, a6, a7, a8, v9);
    }

    else
    {
      v9.n128_u64[0] = *(*(v14 + 1) + 24);
      v16 = FloatToString(a1, v9, a2, a3, a4, a5, a6, a7, a8);
    }

    v12 += strlen(v16) + 1;
LABEL_17:
    v19 = v10++ < a2[4];
  }

  while (v19);
  if (!v12)
  {
    return EnvAddSymbol(a1, "");
  }

  v27 = gm2(a1, v12);
  v29 = a2[3];
  if (v29 <= a2[4])
  {
    v30 = 0;
    do
    {
      v32 = (v13 + 16 * v29);
      v33 = *v32;
      if (v33 == 3)
      {
        v42 = *(*(v32 + 1) + 24);
        v27[v30] = 34;
        while (1)
        {
          v43 = v30 + 1;
          v44 = *v42;
          if (v44 == 34 || v44 == 92)
          {
            v27[v43] = 92;
            v43 = v30 + 2;
          }

          else if (!*v42)
          {
            v27[v43] = 34;
            v30 += 2;
            goto LABEL_44;
          }

          v45 = *v42++;
          v27[v43] = v45;
          v30 = v43;
        }
      }

      if (v33 == 1)
      {
        v38 = LongIntegerToString(a1, *(*(v32 + 1) + 24), v21, v22, v23, v24, v25, v26);
        v39 = *v38;
        if (*v38)
        {
          v40 = v38 + 1;
          do
          {
            v27[v30++] = v39;
            v41 = *v40++;
            v39 = v41;
          }

          while (v41);
        }
      }

      else if (*v32)
      {
        WORD4(v51) = *v32;
        *&v52 = *(v32 + 1);
        v46 = DataObjectToString(a1, &v51, v21, v22, v23, v24, v25, v26, v28);
        v47 = *v46;
        if (*v46)
        {
          v48 = (v46 + 1);
          do
          {
            v27[v30++] = v47;
            v49 = *v48++;
            v47 = v49;
          }

          while (v49);
        }
      }

      else
      {
        v28.n128_u64[0] = *(*(v32 + 1) + 24);
        v34 = FloatToString(a1, v28, v20, v21, v22, v23, v24, v25, v26);
        v35 = *v34;
        if (*v34)
        {
          v36 = v34 + 1;
          do
          {
            v27[v30++] = v35;
            v37 = *v36++;
            v35 = v37;
          }

          while (v37);
        }
      }

LABEL_44:
      v27[v30++] = 32;
      v19 = v29++ < a2[4];
    }

    while (v19);
  }

  else
  {
    v30 = 0;
  }

  v27[v30 - 1] = 0;
  v31 = EnvAddSymbol(a1, v27);
  rm(a1, v27, v12);
  return v31;
}

void *as_setup(const char *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = "whois.radb.net";
  }

  *&v15.sa_data[10] = 0;
  *&v15.sa_data[2] = 0;
  *&v15.sa_len = 528;
  v2 = getservbyname("whois", "tcp");
  if (v2)
  {
    s_port = v2->s_port;
  }

  else
  {
    warnx("warning: whois/tcp service not found");
    LOWORD(s_port) = 11008;
  }

  *v15.sa_data = s_port;
  if (inet_aton(v1, &v15.sa_data[2]))
  {
    v4 = socket(2, 1, 0);
    if (v4 != -1)
    {
      v5 = v4;
      if (!connect(v4, &v15, 0x10u))
      {
        goto LABEL_9;
      }

LABEL_18:
      close(v5);
      warn("connect");
LABEL_24:
      result = 0;
      goto LABEL_25;
    }

LABEL_20:
    warn("socket");
    goto LABEL_24;
  }

  v9 = gethostbyname(v1);
  if (!v9 || (v10 = v9, !*v9->h_addr_list))
  {
    as_setup_cold_1(v1);
    goto LABEL_24;
  }

  v11 = socket(2, 1, 0);
  if (v11 == -1)
  {
    goto LABEL_20;
  }

  v5 = v11;
  v12 = *v10->h_addr_list;
  while (1)
  {
    h_length = v10->h_length;
    __memcpy_chk();
    ++v10->h_addr_list;
    if (!connect(v5, &v15, 0x10u))
    {
      break;
    }

    if (!*v10->h_addr_list)
    {
      goto LABEL_18;
    }
  }

LABEL_9:
  v6 = fdopen(v5, "r+");
  if (!v6)
  {
    warn("fdopen");
    goto LABEL_24;
  }

  v7 = v6;
  fwrite("!!\n", 3uLL, 1uLL, v6);
  fflush(v7);
  result = malloc_type_malloc(8uLL, 0xAFACDBE5uLL);
  if (result)
  {
    *result = v7;
LABEL_25:
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t as_lookup(FILE **a1, const char *a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = 32;
  if (a3 == 30)
  {
    v5 = 128;
  }

  v11 = 0;
  fprintf(v4, "!r%s/%d,l\n", a2, v5);
  fflush(*a1);
  if (fgets(__s, 1024, *a1))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v13[1016] = 0;
      if ((v7 & 1) != 0 && (v6 = __s[0], __s[0] == 65))
      {
        sscanf(__s, "A%d\n");
      }

      else
      {
        if (!v11)
        {
          v6 = __s[0];
        }

        if (v6 != 65)
        {
          break;
        }

        v11 -= strlen(__s);
        if (!strncasecmp(__s, "origin:", 7uLL))
        {
          sscanf(v13, " AS%u");
        }
      }

      v8 = fgets(__s, 1024, *a1);
      v7 = 0;
      v6 = 65;
    }

    while (v8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void as_shutdown(FILE **a1)
{
  fwrite("!q\n", 3uLL, 1uLL, *a1);
  fclose(*a1);

  free(a1);
}

const char *findsaddr(__int128 *a1, _OWORD *a2, _WORD *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  bzero(&__buf, 0x25CuLL);
  v26 = 1029;
  v28 = 0x2100000807;
  v6 = socket(17, 3, 0);
  if (v6 < 0)
  {
    v17 = __error();
    strerror(*v17);
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "socket: %.128s");
    goto LABEL_21;
  }

  v7 = v6;
  v8 = getpid();
  v30 = 1;
  v32 = *a1;
  v9 = v32;
  if ((v32 & 3) != 0)
  {
    v9 = (v32 & 0xFC) + 4;
  }

  v10 = v9 + 92;
  __buf = v9 + 92;
  v11 = write(v7, &__buf, v9 + 92);
  if (v11 < 0)
  {
    v18 = __error();
    strerror(*v18);
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "write: %.128s");
LABEL_20:
    close(v7);
    goto LABEL_21;
  }

  if (v11 != v10)
  {
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "short write (%zd != %zd)");
    goto LABEL_20;
  }

  v12 = &v32;
  do
  {
    bzero(&__buf, 0x25CuLL);
    v13 = read(v7, &__buf, 0x25CuLL);
    if (v13 < 0)
    {
      v19 = __error();
      strerror(*v19);
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "read: %.128s");
      goto LABEL_20;
    }
  }

  while (v30 != 1 || v29 != v8);
  v15 = v13;
  close(v7);
  if (v26 == 5)
  {
    if (v15 >= __buf)
    {
      if (!__errnum)
      {
        v22 = 1;
        v16 = "failed!";
        while (1)
        {
          if ((HIDWORD(v28) & v22) != 0)
          {
            if (v22 == 32 && v12[1] == 2 && *(v12 + 1))
            {
              v16 = 0;
              *a2 = *v12;
              *a3 = v27;
              goto LABEL_21;
            }

            v23 = (*v12 & 0xFC) + 4;
            if ((*v12 & 3) == 0)
            {
              v23 = *v12;
            }

            v24 = &v12[v23];
            *v12;
            if (*v12)
            {
              v12 = v24;
            }

            else
            {
              v12 += 4;
            }
          }

          v22 *= 2;
          if (!v22)
          {
            goto LABEL_21;
          }
        }
      }

      strerror(__errnum);
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "rtm_errno: %.128s");
    }

    else
    {
      v16 = findsaddr_errbuf;
      snprintf(findsaddr_errbuf, 0x200uLL, "bad msglen %d > %zd");
    }
  }

  else
  {
    v16 = findsaddr_errbuf;
    snprintf(findsaddr_errbuf, 0x200uLL, "bad version %d");
  }

LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t ifaddrlist(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v38 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v35 = 0u;
  v10 = socket(2, 2, 0);
  if (v10 < 0)
  {
    v24 = __error();
    v25 = strerror(*v24);
    snprintf(v8, v6, "socket: %s", v25);
    goto LABEL_36;
  }

  v11 = v10;
  v31 = 0x8000;
  v32 = v37;
  if (ioctl(v10, 0xC00C6924uLL, &v31) < 0 || v31 <= 0x1F)
  {
    if (*__error() == 22)
    {
      snprintf(v8, v6, "SIOCGIFCONF: ifreq struct too small (%d bytes)");
    }

    else
    {
      v26 = __error();
      strerror(*v26);
      snprintf(v8, v6, "SIOCGIFCONF: %s");
    }

    close(v11);
    goto LABEL_36;
  }

  if (v31 <= 0)
  {
    close(v11);
    v13 = 0;
LABEL_38:
    *v9 = v34;
    goto LABEL_39;
  }

  v12 = 0;
  v13 = 0;
  v14 = &v37[v31];
  v15 = v37;
  v16 = v34;
  while (1)
  {
    v17 = v15[16];
    if (v17 >= 0x10)
    {
      v18 = v17 + 16;
    }

    else
    {
      v18 = 32;
    }

    if (v15[17] != 2)
    {
      goto LABEL_27;
    }

    v19 = 0;
    while (1)
    {
      v20 = v15[v19];
      *(&v35 + v19) = v20;
      if (!v20)
      {
        break;
      }

      if (++v19 == 15)
      {
        HIBYTE(v35) = 0;
        break;
      }
    }

    if ((ioctl(v11, 0xC0206911uLL, &v35) & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 6)
    {
      v29 = __error();
      strerror(*v29);
      snprintf(v8, v6, "SIOCGIFFLAGS: %.*s: %s");
      goto LABEL_43;
    }

LABEL_27:
    v15 += v18;
    if (v15 >= v14)
    {
      close(v11);
      if (v12)
      {
        free(v12);
      }

      goto LABEL_38;
    }
  }

  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

  v21 = 0;
  while (1)
  {
    v22 = *(&v35 + v21);
    __s1[v21] = v22;
    if (!v22)
    {
      break;
    }

    if (++v21 == 16)
    {
      __s1[16] = 0;
      break;
    }
  }

  if (ioctl(v11, 0xC0206921uLL, &v35) < 0)
  {
    v30 = __error();
    strerror(*v30);
    snprintf(v8, v6, "SIOCGIFADDR: %s: %s");
    goto LABEL_43;
  }

  if (v13 < 0x400)
  {
    *v16 = DWORD1(v36);
    if (v12)
    {
      free(v12);
    }

    v23 = strdup(__s1);
    if (!v23)
    {
      __break(1u);
    }

    v12 = v23;
    *(v16 + 1) = v23;
    v16 += 16;
    v13 = (v13 + 1);
    goto LABEL_27;
  }

  snprintf(v8, v6, "Too many interfaces (%d)");
LABEL_43:
  close(v11);
  if (v12)
  {
    free(v12);
  }

LABEL_36:
  v13 = 0xFFFFFFFFLL;
LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t traceroute4_context_init(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, 0x750uLL);
  result = 0;
  *(a1 + 560) = 0u;
  *(a1 + 1752) = 0x8000;
  *(a1 + 1760) = 0xFFFFFFFFLL;
  *(a1 + 1768) = 1;
  *(a1 + 1780) = 5;
  *(a1 + 1840) = 0u;
  *(a1 + 1792) = 1;
  *(a1 + 1864) = 0;
  *(a1 + 1836) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0u;
  *(a1 + 1824) = 0xFFFFFFFFLL;
  *(a1 + 8) = null_output_callback;
  return result;
}

uint64_t traceroute4_set_result_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return result;
}

uint64_t traceroute6_context_init(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(a1, 0x10D88uLL);
  result = 0;
  *(a1 + 3368) = 20;
  *(a1 + 3424) = 3;
  *(a1 + 3384) = 0xFFFFFFFF00000001;
  *(a1 + 3432) = 30;
  *(a1 + 3364) = -32102;
  *(a1 + 3440) = 5;
  *(a1 + 3404) = 17;
  *(a1 + 8) = null_output_callback;
  return result;
}

uint64_t traceroute4_cleanup(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 544);
    if (v2)
    {
      free(v2);
      *(v1 + 544) = 0;
    }

    v3 = *(v1 + 688);
    if (v3)
    {
      free(v3);
      *(v1 + 688) = 0;
    }

    v4 = *(v1 + 1740);
    if (v4)
    {
      close(v4);
      *(v1 + 1740) = -1;
    }

    result = *(v1 + 1744);
    if (result)
    {
      result = close(result);
      *(v1 + 1744) = -1;
    }
  }

  return result;
}

uint64_t traceroute6_cleanup(uint64_t a1)
{
  v2 = *(a1 + 3372);
  if (v2)
  {
    close(v2);
    *(a1 + 3372) = -1;
  }

  result = *(a1 + 3376);
  if (result)
  {
    result = close(result);
    *(a1 + 3376) = -1;
  }

  return result;
}

_BYTE *clean_non_printable(_BYTE *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = MEMORY[0x277D85DE0];
      for (i = a1; ; ++i)
      {
        v6 = *i;
        if (!*i)
        {
          return a1;
        }

        if ((v6 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v4 + 4 * v6 + 60) & 0x40000) == 0)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (!--v3)
        {
          return a1;
        }
      }

      if (__maskrune(v6, 0x40000uLL))
      {
        goto LABEL_8;
      }

LABEL_7:
      *i = 63;
      goto LABEL_8;
    }
  }

  return a1;
}

uint64_t dump_hex(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  for (i = 0; i != a2; ++i)
  {
    result = printf("%02x", *(v3 + i));
    if ((~i & 0xF) != 0)
    {
      if ((i & 1) == 0)
      {
        continue;
      }

      v5 = 32;
    }

    else
    {
      v5 = 10;
    }

    result = putchar(v5);
  }

  if ((a2 & 0xF) != 0)
  {

    return putchar(10);
  }

  return result;
}

uint64_t in_cksum(unsigned __int16 *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = *a1++;
      v2 += v3;
      a2 -= 2;
    }

    while (a2 > 1);
  }

  if (a2 == 1)
  {
    v2 += *a1;
  }

  return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
}

unsigned __int8 *udp_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  v3 = *(a2 + 1800);
  if (v3)
  {
    v4 = *result;
  }

  else
  {
    v4 = 0;
  }

  *v2 = bswap32(v4 + *(a2 + 1832)) >> 16;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *result;
  }

  v2[1] = bswap32(v5 + *(a2 + 1834)) >> 16;
  v6 = *(a2 + 656);
  v2[2] = bswap32(v6) >> 16;
  v2[3] = 0;
  if (*(a2 + 1792))
  {
    result = p_cksum(*(a2 + 544), v2, v6, v6);
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = -1;
    }

    v2[3] = v7;
  }

  return result;
}

BOOL udp_check(unsigned __int16 *a1, int a2, uint64_t a3)
{
  result = 0;
  v5 = bswap32(*a1);
  v6 = *(a3 + 1800);
  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v7 + *(a3 + 1832) == HIWORD(v5))
  {
    v8 = bswap32(a1[1]);
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    return v9 + *(a3 + 1834) == HIWORD(v8);
  }

  return result;
}

unsigned __int8 *tcp_prep(unsigned __int8 *result, uint64_t a2)
{
  v3 = *(a2 + 552);
  *v3 = bswap32(*(a2 + 1832)) >> 16;
  if (*(a2 + 1800))
  {
    v4 = 0;
  }

  else
  {
    v4 = *result;
  }

  v3[1] = bswap32(v4 + *(a2 + 1834)) >> 16;
  *(v3 + 1) = v3[1] | (*v3 << 16);
  *(v3 + 2) = 0;
  *(v3 + 12) = v3[6] & 0xF | 0x50;
  *(v3 + 13) = 2;
  v3[8] = 0;
  if (*(a2 + 1792))
  {
    result = p_cksum(*(a2 + 544), v3, *(a2 + 656), *(a2 + 656));
    v3[8] = result;
  }

  if (*(a2 + 1776) >= 2)
  {
    return fprintf(*MEMORY[0x277D85DF8], "tcp_prep: th_sport %u th_dport %u th_seq %u\n", bswap32(*v3) >> 16, bswap32(v3[1]) >> 16, *(v3 + 1));
  }

  return result;
}

BOOL tcp_check(unsigned __int16 *a1, int a2, uint64_t a3)
{
  if (*(a3 + 1776) >= 2)
  {
    fprintf(*MEMORY[0x277D85DF8], "tcp_check: th_sport %u th_dport %u th_seq %u\n", bswap32(*a1) >> 16, bswap32(a1[1]) >> 16, *(a1 + 1));
  }

  v6 = *a1;
  if (*(a3 + 1832) == bswap32(v6) >> 16 && ((v7 = a1[1], v8 = bswap32(v7), *(a3 + 1800)) ? (v9 = 0) : (v9 = a2), v9 + *(a3 + 1834) == HIWORD(v8)))
  {
    return *(a1 + 1) == (v7 | (v6 << 16));
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *gre_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = 288;
  v2[1] = bswap32(*(a2 + 1834)) >> 16;
  v2[2] = 0;
  v2[3] = bswap32(*(a2 + 1832) + *result) >> 16;
  return result;
}

uint64_t icmp_prep(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = 8;
  v2[2] = bswap32(*(a2 + 1832)) >> 16;
  v2[3] = *a1 << 8;
  v2[1] = 0;
  result = in_cksum(v2, *(a2 + 656));
  v2[1] = result;
  if (!v2[1])
  {
    v2[1] = -1;
  }

  return result;
}

unsigned __int8 *gen_prep(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 552);
  *v2 = bswap32(*(a2 + 1832)) >> 16;
  v2[1] = bswap32(*(a2 + 1834) + *result) >> 16;
  return result;
}

uint64_t traceroute4_parseargs(uint64_t *a1, int a2, char *const *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "TR: begin traceroute4_parseargs\n", buf, 2u);
  }

  *MEMORY[0x277D85E70] = 0;
  while (2)
  {
    v7 = getopt(a2, a3, "aA:eEdDFInrSvxf:g:i:M:m:P:p:q:s:t:w:z:");
    v8 = v7;
    switch(v7)
    {
      case 'A':
        *(a1 + 447) = 1;
        a1[230] = *MEMORY[0x277D85E68];
        continue;
      case 'B':
      case 'C':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'L':
      case 'N':
      case 'O':
      case 'Q':
      case 'R':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'h':
      case 'j':
      case 'k':
      case 'l':
      case 'o':
      case 'u':
      case 'y':
        goto LABEL_34;
      case 'D':
        *(a1 + 451) = 1;
        continue;
      case 'E':
        *(a1 + 452) = 1;
        continue;
      case 'F':
        *(a1 + 918) = 0x4000;
        continue;
      case 'I':
        v9 = "icmp";
        goto LABEL_23;
      case 'M':
      case 'f':
        *(a1 + 442) = str2val(*MEMORY[0x277D85E68], "first ttl", 1, 255);
        continue;
      case 'P':
        v9 = *MEMORY[0x277D85E68];
LABEL_23:
        a1[233] = setproto(v9);
        continue;
      case 'S':
        *(a1 + 457) = 1;
        continue;
      case 'a':
        *(a1 + 447) = 1;
        continue;
      case 'd':
        *(a1 + 443) |= 1u;
        continue;
      case 'e':
        *(a1 + 450) = 1;
        continue;
      case 'g':
        v10 = *(a1 + 453);
        if (v10 >= 8)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s: No more than %d gateways\n", "libtraceroute", 8);
          goto LABEL_38;
        }

        v11 = gethostinfo(*MEMORY[0x277D85E68]);
        *(a1 + v10 + 144) = **(v11 + 2);
        freehostinfo(v11);
        ++*(a1 + 453);
        continue;
      case 'i':
        a1[85] = *MEMORY[0x277D85E68];
        continue;
      case 'm':
        *(a1 + 441) = str2val(*MEMORY[0x277D85E68], "max ttl", 1, 255);
        continue;
      case 'n':
        ++*(a1 + 446);
        continue;
      case 'p':
        *(a1 + 456) = str2val(*MEMORY[0x277D85E68], "port", 1, 0xFFFF);
        continue;
      case 'q':
        *(a1 + 440) = str2val(*MEMORY[0x277D85E68], "nprobes", 1, -1);
        continue;
      case 'r':
        *(a1 + 443) |= 0x10u;
        continue;
      case 's':
        a1[84] = *MEMORY[0x277D85E68];
        continue;
      case 't':
        *(a1 + 454) = str2val(*MEMORY[0x277D85E68], "tos", 0, 255);
        ++*(a1 + 455);
        continue;
      case 'v':
        ++*(a1 + 444);
        continue;
      case 'w':
        *(a1 + 445) = str2val(*MEMORY[0x277D85E68], "wait time", 1, 86400);
        continue;
      case 'x':
        *(a1 + 448) = 1;
        continue;
      case 'z':
        *(a1 + 166) = str2val(*MEMORY[0x277D85E68], "pause msecs", 0, 3600000);
        continue;
      default:
        if (v7 != -1)
        {
LABEL_34:
          v14 = otherLogHandle;
          if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          *buf = 67109120;
          *v42 = v8;
          v15 = "TR: libtraceroute, unhandled case '%c'";
          v16 = v14;
          v17 = OS_LOG_TYPE_ERROR;
          v18 = 8;
          goto LABEL_36;
        }

        v12 = MEMORY[0x277D85E78];
        if (a2 == 1)
        {
          v13 = 0;
          *MEMORY[0x277D85E78] = 0;
        }

        else
        {
          v13 = *MEMORY[0x277D85E78];
        }

        v21 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
        {
          v22 = a3[v13];
          *buf = 67109890;
          *v42 = a2;
          *&v42[4] = 1024;
          *&v42[6] = v13;
          v43 = 1024;
          v44 = v13;
          v45 = 2080;
          v46 = v22;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "TR: libtraceroute, argc: %d, optind: %d, argv[%d]: %s", buf, 0x1Eu);
          v13 = *v12;
        }

        if (a2 - v13 == 1)
        {
          goto LABEL_46;
        }

        if (a2 - v13 != 2)
        {
          v32 = otherLogHandle;
          if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v15 = "TR: libtraceroute, default case";
            v16 = v32;
            v17 = OS_LOG_TYPE_DEFAULT;
            v18 = 2;
LABEL_36:
            _os_log_impl(&dword_23255B000, v16, v17, v15, buf, v18);
          }

LABEL_38:
          result = 0xFFFFFFFFLL;
          goto LABEL_39;
        }

        a1[81] = str2val(a3[v13 + 1], "packet length", *(a1 + 437), *(a1 + 438));
        v13 = *v12;
LABEL_46:
        v23 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v24 = a3[v13];
          *buf = 136315138;
          *v42 = v24;
          _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "TR: libtraceroute, hostname: %s", buf, 0xCu);
          v13 = *v12;
        }

        v25 = gethostinfo(a3[v13]);
        a1[232] = v25;
        if (!v25)
        {
          v33 = otherLogHandle;
          if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
          {
            v34 = a3[*v12];
            *buf = 136315138;
            *v42 = v34;
            v15 = "TR: libtraceroute, no hostinfo for %s";
            v16 = v33;
            v17 = OS_LOG_TYPE_ERROR;
            v18 = 12;
            goto LABEL_36;
          }

          goto LABEL_38;
        }

        v26 = v25;
        v27.s_addr = **(v25 + 2);
        *(a1 + 612) = 0;
        *(a1 + 620) = 0;
        *(a1 + 306) = 528;
        *(a1 + 154) = v27;
        if (v26[2] >= 2)
        {
          v28 = a1[1];
          v29 = a3[*v12];
          if (v28)
          {
            v30 = *a1;
            v31 = inet_ntoa(v27);
            v28(v30, "%s: Warning: %s has multiple addresses; using %s\n", "libtraceroute", v29, v31);
          }

          else
          {
            v35 = *MEMORY[0x277D85DF8];
            v36 = inet_ntoa(v27);
            fprintf(v35, "%s: Warning: %s has multiple addresses; using %s\n", "libtraceroute", v29, v36);
          }
        }

        v37 = a1[86];
        if (v37)
        {
          free(v37);
          a1[86] = 0;
        }

        v38 = a1[232];
        if (!*v38 || (v39 = strdup(*v38)) == 0)
        {
          __break(1u);
        }

        a1[86] = v39;
        freehostinfo(v38);
        *MEMORY[0x277D85E88] = 1;
        *v12 = 1;
        v40 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEBUG, "TR: end traceroute4_parseargs\n", buf, 2u);
        }

        result = 0;
LABEL_39:
        v20 = *MEMORY[0x277D85DE8];
        return result;
    }
  }
}

uint64_t str2val(char *__str, uint64_t a2, int a3, int a4)
{
  __endptr = 0;
  if (*__str == 48 && (__str[1] | 0x20) == 0x78)
  {
    __str += 2;
    v6 = 16;
  }

  else
  {
    v6 = 10;
  }

  result = strtol(__str, &__endptr, v6);
  if (*__endptr)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: %s bad value for %s \n");
    return 0xFFFFFFFFLL;
  }

  if (a3 < 0 || result >= a3)
  {
    if ((a4 & 0x80000000) == 0 && result > a4)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: %s must be <= %d\n");
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = *MEMORY[0x277D85DF8];
    if (a3)
    {
      fprintf(v8, "%s: %s must be > %d\n");
    }

    else
    {
      fprintf(v8, "%s: %s must be >= %d\n");
    }

    return 1;
  }

  return result;
}

char **setproto(char *a1)
{
  v2 = protos;
  if (protos[0])
  {
    if (!strcasecmp(protos[0], a1))
    {
      return v2;
    }

    v2 = off_28192C9F0;
    while (1)
    {
      v3 = *v2;
      if (!*v2)
      {
        break;
      }

      v2 += 5;
      if (!strcasecmp(v3, a1))
      {
        v2 -= 5;
        return v2;
      }
    }
  }

  v4 = getprotobyname(a1);
  if (v4)
  {
    p_proto = v4->p_proto;
  }

  else
  {
    LOBYTE(p_proto) = str2val(*MEMORY[0x277D85E68], "proto number", 1, 255);
  }

  *(v2 + 16) = p_proto;
  return v2;
}

_BYTE *gethostinfo(const char *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (strlen(a1) >= 0x100)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: hostname %.32s... is too long\n", prog, a1);
LABEL_26:
    v3 = 0;
    goto LABEL_27;
  }

  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x572EF47AuLL);
  if (!v2)
  {
LABEL_28:
    __break(1u);
  }

  v3 = v2;
  v4 = inet_addr(a1);
  if (v4 != -1)
  {
    if (a1)
    {
      v5 = v4;
      v6 = strdup(a1);
      if (v6)
      {
        *v3 = v6;
        v3[2] = 1;
        v7 = malloc_type_calloc(1uLL, 4uLL, 0xE04EC303uLL);
        if (v7)
        {
          *(v3 + 2) = v7;
          *v7 = v5;
LABEL_27:
          v26 = *MEMORY[0x277D85DE8];
          return v3;
        }
      }
    }

    goto LABEL_28;
  }

  v8 = gethostbyname(a1);
  if (!v8)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: unknown host %s\n");
    goto LABEL_25;
  }

  v9 = v8;
  if (v8->h_addrtype != 2 || v8->h_length != 4)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: bad host %s\n");
LABEL_25:
    freehostinfo(v3);
    goto LABEL_26;
  }

  h_name = v8->h_name;
  if (!v9->h_name)
  {
    goto LABEL_28;
  }

  v11 = strdup(h_name);
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = v11;
  *v3 = v11;
  v13 = strlen(v11);
  result = clean_non_printable(v12, v13);
  h_addr_list = v9->h_addr_list;
  if (*h_addr_list)
  {
    v16 = 0;
    v17 = h_addr_list + 1;
      ;
    }

    v3[2] = v16;
    v19 = malloc_type_calloc(v16, 4uLL, 0x681248ACuLL);
    if (v19)
    {
      *(v3 + 2) = v19;
      v20 = v9->h_addr_list;
      v21 = *v20;
      if (*v20)
      {
        v22 = v20 + 1;
        do
        {
          *v19++ = *v21;
          v23 = *v22++;
          v21 = v23;
        }

        while (v23);
      }

      v24 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *v3;
        *buf = 136315394;
        v28 = a1;
        v29 = 2080;
        v30 = v25;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "TR: hostname: %s, hi->name: %s", buf, 0x16u);
      }

      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v3[2] = 0;
  __break(1u);
  return result;
}

void freehostinfo(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

uint64_t traceroute4_run(void *a1)
{
  v315 = *MEMORY[0x277D85DE8];
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "TR: begin traceroute4_run\n", buf, 2u);
  }

  v297 = 1;
  v296 = 0;
  v3 = a1[86];
  if (!v3)
  {
    v13 = a1[1];
    if (v13)
    {
      v13(*a1, "%s: Error: No hostname provided in context.\n", prog);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: Error: No hostname provided in context.\n", prog);
    }

    goto LABEL_12;
  }

  v4 = (a1 + 612);
  if (!a1[232])
  {
    v5 = gethostinfo(v3);
    a1[232] = v5;
    if (v5)
    {
      v6 = v5;
      v7.s_addr = **(v5 + 2);
      *v4 = 0;
      *(a1 + 620) = 0;
      *(a1 + 306) = 528;
      *(a1 + 154) = v7;
      if (v6[2] >= 2)
      {
        v8 = a1[1];
        v9 = prog;
        v10 = *v6;
        if (v8)
        {
          v11 = *a1;
          v12 = inet_ntoa(v7);
          v8(v11, "%s: Warning: %s has multiple addresses; using %s\n", v9, v10, v12);
        }

        else
        {
          v15 = *MEMORY[0x277D85DF8];
          v16 = inet_ntoa(v7);
          fprintf(v15, "%s: Warning: %s has multiple addresses; using %s\n", v9, v10, v16);
        }
      }

      v17 = a1[86];
      if (v17)
      {
        free(v17);
        a1[86] = 0;
      }

      v18 = a1[232];
      if (!*v18)
      {
        goto LABEL_465;
      }

      v19 = strdup(*v18);
      if (!v19)
      {
        goto LABEL_465;
      }

      a1[86] = v19;
      freehostinfo(v18);
    }
  }

  a1[233] = protos;
  v20 = getprotobyname("icmp");
  v21 = v20;
  if (v20)
  {
    p_proto = v20->p_proto;
    RawSocket = NEHelperGetRawSocket();
    *(a1 + 435) = RawSocket;
    if (RawSocket < 0 || (v24 = NEHelperGetRawSocket(), *(a1 + 436) = v24, v24 < 0))
    {
      v25 = *__error();
    }

    else
    {
      v25 = 0;
    }

    v26 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 436);
      v28 = *(a1 + 435);
      *buf = 67109376;
      *&buf[4] = v27;
      *&buf[8] = 1024;
      *&buf[10] = v28;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "TR: Raw sockets created over IPv4 via NEHelper, UDP sndsock: %d, ICMP rcvsock: %d", buf, 0xEu);
    }
  }

  else
  {
    v25 = 0;
  }

  v29 = a1 + 441;
  if (!*(a1 + 441))
  {
    *buf = xmmword_232816AD0;
    *v311 = 4;
    if (sysctl(buf, 4u, a1 + 1764, v311, 0, 0) == -1)
    {
      perror("sysctl(net.inet.ip.ttl)");
      goto LABEL_107;
    }
  }

  v30 = *(a1 + 456);
  if (v30 == -1)
  {
    LOWORD(v30) = *(a1[233] + 20);
  }

  *(a1 + 917) = v30;
  if (*(a1 + 440) == -1)
  {
    if (*(a1 + 451))
    {
      v31 = 1;
    }

    else
    {
      v31 = 3;
    }

    *(a1 + 440) = v31;
  }

  v32 = *(a1 + 441);
  if (*(a1 + 442) > v32)
  {
    v33 = a1[1];
    if (v33)
    {
      v33(*a1, "%s: first ttl (%d) may not be greater than max ttl (%d)\n", prog, *(a1 + 442), v32);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: first ttl (%d) may not be greater than max ttl (%d)\n", prog, *(a1 + 442), v32);
    }

    goto LABEL_107;
  }

  if (!*(a1 + 448))
  {
    v34 = a1[1];
    if (v34)
    {
      v34(*a1, "%s: Warning: ip checksums disabled\n", prog);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: Warning: ip checksums disabled\n", prog);
    }
  }

  v35 = *(a1 + 453);
  if (v35 <= 0)
  {
    v36 = *(a1 + 449);
  }

  else
  {
    v36 = 4 * v35 + 4;
    *(a1 + 449) = v36;
  }

  LODWORD(v37) = *(a1[233] + 18) + v36 + 20;
  *(a1 + 437) = v37;
  if (v37 <= 40)
  {
    v37 = 40;
  }

  else
  {
    v37 = v37;
  }

  v38 = a1 + 81;
  a1[81] = v37;
  setvbuf(*MEMORY[0x277D85E08], 0, 1, 0);
  v39 = a1[81];
  v40 = *(a1 + 449);
  v41 = v39 - v40 - 20;
  if (*(a1[233] + 16) == 6)
  {
    LODWORD(v39) = v40 + 40;
    *v38 = v40 + 40;
  }

  a1[82] = v41;
  if (!v39 || (v42 = malloc_type_malloc(v39, 0xB34814EFuLL)) == 0)
  {
LABEL_465:
    __break(1u);
  }

  a1[68] = v42;
  bzero(v42, a1[81]);
  *a1[68] = *a1[68] & 0xF | 0x40;
  v43 = a1[68];
  if (*(a1 + 455))
  {
    *(v43 + 1) = *(a1 + 454);
  }

  if (*(a1 + 452))
  {
    *(v43 + 1) |= 1u;
  }

  *(v43 + 2) = a1[81];
  *(v43 + 6) = *(a1 + 918);
  *(v43 + 9) = *(a1[233] + 16);
  a1[69] = v43 + 20;
  *(v43 + 16) = *(a1 + 154);
  *v43 = *v43 & 0xF0 | 5;
  *(a1 + 916) = getpid() | 0x8000;
  if (!v21)
  {
    v65 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    *buf = 136315394;
    *&buf[4] = prog;
    *&buf[12] = 2080;
    *&buf[14] = "icmp";
    v61 = "TR: %s: unknown protocol %s\n";
LABEL_104:
    v62 = buf;
    goto LABEL_105;
  }

  v44 = *(a1 + 435);
  if (v44 < 0)
  {
    *__error() = v25;
    v65 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v66 = prog;
    v67 = __error();
    v68 = strerror(*v67);
    *buf = 136315394;
    *&buf[4] = v66;
    *&buf[12] = 2080;
    *&buf[14] = v68;
    v61 = "TR: %s: icmp socket: %s\n";
    goto LABEL_104;
  }

  setsockopt(v44, 0xFFFF, 4356, &v297, 4u);
  v45 = *(a1 + 443);
  if (v45)
  {
    setsockopt(*(a1 + 435), 0xFFFF, 1, &v297, 4u);
    v45 = *(a1 + 443);
  }

  if ((v45 & 0x10) != 0)
  {
    setsockopt(*(a1 + 435), 0xFFFF, 16, &v297, 4u);
  }

  v46 = *(a1 + 436);
  if (v46 < 0)
  {
    *__error() = v25;
    v65 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v69 = prog;
    v70 = __error();
    v71 = strerror(*v70);
    *buf = 136315394;
    *&buf[4] = v69;
    *&buf[12] = 2080;
    *&buf[14] = v71;
    v61 = "TR: %s: raw socket: %s\n";
    goto LABEL_104;
  }

  if (*(a1 + 453) < 1)
  {
    goto LABEL_69;
  }

  v47 = getprotobyname("ip");
  if (!v47)
  {
    v65 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    *v311 = 136315394;
    *&v311[4] = prog;
    v312 = 2080;
    v313 = "ip";
    v61 = "TR: %s: unknown protocol %s\n";
LABEL_99:
    v62 = v311;
LABEL_105:
    v63 = v65;
    v64 = 22;
    goto LABEL_106;
  }

  v48 = v47;
  *(a1 + *(a1 + 453) + 144) = *(a1 + 154);
  v49 = *(a1 + 453) + 1;
  *(a1 + 453) = v49;
  *buf = -31999;
  v50 = 4 * v49;
  buf[2] = (4 * v49) | 3;
  buf[3] = 4;
  __memcpy_chk();
  if (setsockopt(*(a1 + 436), v48->p_proto, 1, buf, v50 + 4) < 0)
  {
    v65 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v75 = prog;
    v76 = __error();
    v77 = strerror(*v76);
    *v311 = 136315394;
    *&v311[4] = v75;
    v312 = 2080;
    v313 = v77;
    v61 = "TR: %s: IP_OPTIONS: %s\n";
    goto LABEL_99;
  }

  v46 = *(a1 + 436);
LABEL_69:
  if (setsockopt(v46, 0xFFFF, 4097, a1 + 81, 8u) < 0)
  {
    v65 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v72 = prog;
    v73 = __error();
    v74 = strerror(*v73);
    *buf = 136315394;
    *&buf[4] = v72;
    *&buf[12] = 2080;
    *&buf[14] = v74;
    v61 = "TR: %s: SO_SNDBUF: %s\n";
    goto LABEL_104;
  }

  if (setsockopt(*(a1 + 436), 0, 2, &v297, 4u) < 0)
  {
    v65 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v78 = prog;
    v79 = __error();
    v80 = strerror(*v79);
    *buf = 136315394;
    *&buf[4] = v78;
    *&buf[12] = 2080;
    *&buf[14] = v80;
    v61 = "TR: %s: IP_HDRINCL: %s\n";
    goto LABEL_104;
  }

  v52 = *(a1 + 443);
  if (v52)
  {
    setsockopt(*(a1 + 436), 0xFFFF, 1, &v297, 4u);
    v52 = *(a1 + 443);
  }

  if ((v52 & 0x10) != 0)
  {
    setsockopt(*(a1 + 436), 0xFFFF, 16, &v297, 4u);
  }

  v53 = ifaddrlist(&v296, v311, 132, v51);
  if (v53 < 0)
  {
    v65 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    *buf = 136315394;
    *&buf[4] = prog;
    *&buf[12] = 2080;
    *&buf[14] = v311;
    v61 = "TR: %s: ifaddrlist: %s\n";
    goto LABEL_104;
  }

  v54 = v53;
  if (!v53)
  {
    v82 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    *buf = 136315138;
    *&buf[4] = prog;
    v61 = "TR: %s: Can't find any network interfaces\n";
    v62 = buf;
    v63 = v82;
    v64 = 12;
    goto LABEL_106;
  }

  v55 = (a1 + 628);
  v56 = a1[85];
  v281 = (a1 + 628);
  if (!v56)
  {
    v83 = (a1 + 84);
    v84 = a1[84];
    if (v84)
    {
      goto LABEL_115;
    }

    LOWORD(v291[0]) = 0;
LABEL_129:
    v100 = findsaddr(v4, v55, v291);
    if (v100)
    {
      v101 = v100;
      v65 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_107;
      }

      *buf = 136315394;
      *&buf[4] = prog;
      *&buf[12] = 2080;
      *&buf[14] = v101;
      v61 = "TR: %s: findsaddr: %s\n";
      goto LABEL_104;
    }

    v102 = if_indextoname(LOWORD(v291[0]), a1 + 696);
    a1[85] = v102;
    if (v102)
    {
      goto LABEL_143;
    }

    v103 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    v104 = prog;
    v105 = LOWORD(v291[0]);
    v106 = __error();
    v107 = strerror(*v106);
    *buf = 136315650;
    *&buf[4] = v104;
    *&buf[12] = 1024;
    *&buf[14] = v105;
    *&buf[18] = 2080;
    *&buf[20] = v107;
    v61 = "TR: %s: if_indextoname(%u): %s\n";
    v62 = buf;
    v63 = v103;
LABEL_85:
    v64 = 28;
LABEL_106:
    _os_log_impl(&dword_23255B000, v63, OS_LOG_TYPE_ERROR, v61, v62, v64);
    goto LABEL_107;
  }

  v57 = otherLogHandle;
  v58 = v296;
  v59 = v53 + 1;
  do
  {
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v60 = *(v58 + 1);
      *buf = 136315394;
      *&buf[4] = v60;
      *&buf[12] = 2080;
      *&buf[14] = v60;
      _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_DEFAULT, "TR: ctx: %s al: %s\n", buf, 0x16u);
      v57 = otherLogHandle;
      v56 = a1[85];
      v58 = v296;
    }

    if (!strcmp(v56, *(v58 + 1)))
    {
      v83 = (a1 + 84);
      v84 = a1[84];
      if (v84)
      {
        v4 = (a1 + 612);
LABEL_115:
        v85 = gethostinfo(v84);
        v86 = v85;
        v87 = *v85;
        a1[84] = *v85;
        *v85 = 0;
        v88 = a1[85];
        if (v88)
        {
          v89 = *(v85 + 2);
          if (v89 >= 1)
          {
            v90 = *(v85 + 2);
            v91 = *v296;
            v92 = v89 + 1;
            while (*v90 != v91)
            {
              ++v90;
              if (--v92 <= 1)
              {
                goto LABEL_120;
              }
            }

            v29 = a1 + 441;
            *&v281->sa_len = 0;
            *(a1 + 636) = 0;
            *(a1 + 314) = 528;
            *(a1 + 158) = v91;
            v38 = a1 + 81;
            goto LABEL_142;
          }

LABEL_120:
          v93 = otherLogHandle;
          if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = prog;
            *&buf[12] = 2080;
            *&buf[14] = v87;
            *&buf[22] = 1040;
            *&buf[24] = 32;
            *v304 = 2080;
            *&v304[2] = v88;
            _os_log_impl(&dword_23255B000, v93, OS_LOG_TYPE_ERROR, "TR: %s: %s is not on interface %.32s\n", buf, 0x26u);
          }
        }

        else
        {
          v94.s_addr = **(v85 + 2);
          *&v281->sa_len = 0;
          *(a1 + 636) = 0;
          *(a1 + 314) = 528;
          *(a1 + 158) = v94;
          if (v86[2] >= 2)
          {
            v95 = a1[1];
            v96 = prog;
            if (v95)
            {
              v97 = *a1;
              v98 = inet_ntoa(v94);
              v95(v97, "%s: Warning: %s has multiple addresses; using %s\n", v96, v87, v98);
            }

            else
            {
              v108 = *MEMORY[0x277D85DF8];
              v109 = inet_ntoa(v94);
              fprintf(v108, "%s: Warning: %s has multiple addresses; using %s\n", v96, v87, v109);
            }

            v4 = (a1 + 612);
          }

          v110 = v296;
          v111 = **(v86 + 2);
          v112 = v54 + 1;
          v29 = a1 + 441;
          v38 = a1 + 81;
          do
          {
            if (*v110 == v111)
            {
              a1[85] = *(v110 + 1);
            }

            v110 += 4;
            --v112;
          }

          while (v112 > 1);
          v296 = v110;
          if (a1[85])
          {
LABEL_142:
            freehostinfo(v86);
            goto LABEL_143;
          }

          v121 = a1[1];
          v122 = prog;
          v123.s_addr = *(a1 + 158);
          if (v121)
          {
            v124 = *a1;
            v125 = inet_ntoa(v123);
            v121(v124, "%s: no device for: %s\n", v122, v125);
          }

          else
          {
            v132 = *MEMORY[0x277D85DF8];
            v133 = inet_ntoa(v123);
            fprintf(v132, "%s: no device for: %s\n", v122, v133);
          }
        }

        freehostinfo(v86);
        goto LABEL_107;
      }

      LOWORD(v291[0]) = 0;
      v4 = (a1 + 612);
      v29 = a1 + 441;
      if (v56)
      {
        v99 = *v296;
        *&v281->sa_len = 0;
        *(a1 + 636) = 0;
        *(a1 + 314) = 528;
        *(a1 + 158) = v99;
        v38 = a1 + 81;
LABEL_143:
        if (*(a1 + 444))
        {
          v113 = a1[1];
          if (v113)
          {
            v113(*a1, "Using interface: %s\n", a1[85]);
          }

          else
          {
            printf("Using interface: %s\n", a1[85]);
          }
        }

        *(a1[68] + 12) = *(a1 + 158);
        if ((bind(*(a1 + 436), v281, 0x10u) & 0x80000000) == 0)
        {
          if (*(a1 + 447))
          {
            v114 = as_setup(a1[230]);
            a1[231] = v114;
            if (!v114)
            {
              v115 = a1[1];
              if (v115)
              {
                v115(*a1, "%s: as_setup failed, AS# lookups disabled\n", prog);
              }

              else
              {
                fprintf(*MEMORY[0x277D85DF8], "%s: as_setup failed, AS# lookups disabled\n", prog);
              }

              fflush(*MEMORY[0x277D85DF8]);
              *(a1 + 447) = 0;
            }
          }

          if (*(a1[233] + 16) == 6)
          {
            pcap_on_interface = create_pcap_on_interface(a1, a1[85]);
          }

          else
          {
            pcap_on_interface = 0;
          }

          v279 = (a1 + 89);
          if (getnameinfo(v4, *(a1 + 612), a1 + 712, 0x401u, 0, 0, 2))
          {
            v135 = 0;
            *(a1 + 712) = 40;
            do
            {
              *(a1 + v135 + 713) = aInvalid[v135 + 1];
              ++v135;
            }

            while (v135 != 9);
          }

          v136 = a1[1];
          v137 = a1[86];
          if (v136)
          {
            v136(*a1, "%s to %s (%s)", prog, a1[86], v279);
          }

          else
          {
            fprintf(*MEMORY[0x277D85DF8], "%s to %s (%s)", prog, a1[86], v279);
          }

          if (*v83)
          {
            v138 = a1[1];
            if (v138)
            {
              v138(*a1, " from %s", *v83);
            }

            else
            {
              fprintf(*MEMORY[0x277D85DF8], " from %s", *v83);
            }
          }

          v139 = a1[1];
          v140 = *(a1 + 441);
          v141 = a1[81];
          if (v139)
          {
            v139(*a1, ", %d hops max, %zu byte packets\n", *(a1 + 441), v141);
          }

          else
          {
            fprintf(*MEMORY[0x277D85DF8], ", %d hops max, %zu byte packets\n", *(a1 + 441), v141);
          }

          fflush(*MEMORY[0x277D85DF8]);
          v142 = *(a1 + 442);
          if (v142 > *(a1 + 441))
          {
LABEL_459:
            if (*(a1 + 447))
            {
              as_shutdown(a1[231]);
            }

            if (pcap_on_interface)
            {
              pcap_close(pcap_on_interface);
            }

            v272 = otherLogHandle;
            v273 = os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT);
            result = 0;
            if (v273)
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v272, OS_LOG_TYPE_DEFAULT, "TR: end traceroute4_run\n", buf, 2u);
              result = 0;
            }

            goto LABEL_108;
          }

          v286 = 0;
          __dst = a1 + 4;
          v290 = pcap_on_interface;
          while (1)
          {
            bzero(buf, 0x8B8uLL);
            *buf = 2;
            *&buf[8] = v142;
            v310 = a1 + 89;
            v143 = a1[1];
            v282 = v142;
            if (v143)
            {
              v143(*a1, "%2d ", v142);
            }

            else
            {
              printf("%2d ", v142);
            }

            v144 = *(a1 + 440);
            if (v144 >= 1)
            {
              break;
            }

            v280 = 0;
            v267 = 0;
            v268 = 1;
LABEL_448:
            if (*(a1 + 457))
            {
              v269 = v267 / v144;
              *v304 = v269;
              v270 = a1[1];
              if (v270)
              {
                v270(*a1, " (%d%% loss)", v269);
              }

              else
              {
                printf(" (%d%% loss)", v269);
              }
            }

            v271 = a1[1];
            if (v271)
            {
              v271(*a1, "\n");
            }

            else
            {
              putchar(10);
            }

            if (v268 && (v280 < 1 || v280 < *(a1 + 440) - 1))
            {
              v142 = v282 + 1;
              if (v282 < *v29)
              {
                continue;
              }
            }

            goto LABEL_459;
          }

          v145 = 0;
          v146 = 0;
          v280 = 0;
          v278 = 0;
          v277 = 0;
LABEL_186:
          v284 = v145;
          v295.tv_sec = 0;
          *&v295.tv_usec = 0;
          v294.tv_sec = 0;
          *&v294.tv_usec = 0;
          v293 = 0;
          *v291 = 0;
          v292 = 0;
          v287 = v146;
          if (v146)
          {
            v147 = *(a1 + 166);
            if (v147)
            {
              usleep(1000 * v147);
            }
          }

          LOBYTE(v291[0]) = v286 + 1;
          BYTE1(v291[0]) = v282;
          gettimeofday(&v295, &v293);
          v292 = v295;
          (*(a1[233] + 24))(v291, a1);
          v148 = a1[68];
          v148[8] = v282;
          ++v286;
          *(v148 + 2) = bswap32(*(a1 + 916) + v286) >> 16;
          if (*(a1 + 444) < 2)
          {
LABEL_202:
            v152 = sendto(*(a1 + 436), v148, a1[81], 0, v4, 0x10u);
            v153 = v152;
            if (v152 < 0)
            {
              v155 = *MEMORY[0x277D85DF8];
              v156 = prog;
              v157 = __error();
              v158 = strerror(*v157);
              fprintf(v155, "%s: sendto: %s\n", v156, v158);
              v154 = *v38;
            }

            else
            {
              v154 = *v38;
              if (v152 == *v38)
              {
LABEL_207:
                v285 = 0;
                v288 = v287 + 1;
LABEL_208:
                v159 = *(a1 + 435);
                v314.tv_sec = 0;
                *&v314.tv_usec = 0;
                v301 = 0;
                v300 = 16;
                if (pcap_on_interface)
                {
                  selectable_fd = pcap_get_selectable_fd(pcap_on_interface);
                }

                else
                {
                  selectable_fd = -1;
                }

                if (selectable_fd <= v159)
                {
                  v161 = v159;
                }

                else
                {
                  v161 = selectable_fd;
                }

                if (selectable_fd == -1)
                {
                  v161 = v159;
                }

                v162 = v161 + 1;
                v163 = (v161 + 1) >> 5;
                if ((v162 & 0x1FLL) != 0)
                {
                  ++v163;
                }

                v164 = v163 << 7;
                if (!(v163 << 7))
                {
                  goto LABEL_465;
                }

                v165 = malloc_type_malloc(v163 << 7, 0x82685057uLL);
                if (!v165)
                {
                  goto LABEL_465;
                }

                v166 = v165;
                v302.tv_sec = 0;
                *&v302.tv_usec = 0;
                bzero(v165, v164);
                v167 = 1 << v159;
                v168 = v159 >> 5;
                v169 = 1 << selectable_fd;
                tv_sec = v295.tv_sec;
                tv_usec = v295.tv_usec;
                v171 = selectable_fd >> 5;
                while (1)
                {
                  do
                  {
                    while (1)
                    {
                      if (__darwin_check_fd_set_overflow(v159, v166, 0))
                      {
                        v166->fds_bits[v168] |= v167;
                      }

                      if (selectable_fd != -1 && __darwin_check_fd_set_overflow(selectable_fd, v166, 0))
                      {
                        v166->fds_bits[v171] |= v169;
                      }

                      v302.tv_sec = tv_sec + *(a1 + 445);
                      v302.tv_usec = tv_usec;
                      gettimeofday(&v314, &v301);
                      v172 = v302.tv_sec;
                      v173 = v302.tv_usec - v314.tv_usec;
                      v302.tv_usec = v173;
                      if (v173 < 0)
                      {
                        v172 = v302.tv_sec - 1;
                        v302.tv_usec = v173 + 1000000;
                      }

                      v302.tv_sec = v172 - v314.tv_sec;
                      if (v172 - v314.tv_sec < 0)
                      {
                        v302.tv_sec = 0;
                        v302.tv_usec = 1;
                      }

                      v174 = select(v162, v166, 0, 0, &v302);
                      if (v174 == -1)
                      {
                        if (*__error() == 22)
                        {
                          fprintf(*MEMORY[0x277D85DF8], "%s: botched select() args\n", prog);
                          free(v166);
                          v179 = -1;
                          v4 = (a1 + 612);
                          pcap_on_interface = v290;
                          goto LABEL_264;
                        }

LABEL_302:
                        free(v166);
                        v38 = a1 + 81;
                        v4 = (a1 + 612);
                        pcap_on_interface = v290;
LABEL_303:
                        v145 = v284 + 1;
                        *&buf[12] = 1;
                        v210 = a1[1];
                        if (v210)
                        {
                          v210(*a1, " *");
                        }

                        else
                        {
                          printf(" *");
                        }

                        v29 = a1 + 441;
                        goto LABEL_307;
                      }

                      if (v174 < 1)
                      {
                        goto LABEL_302;
                      }

                      if (__darwin_check_fd_set_overflow(v159, v166, 0) && (v166->fds_bits[v168] & v167) != 0)
                      {
                        v179 = recvfrom(v159, __dst, 0x200uLL, 0, v281, &v300);
                        v38 = a1 + 81;
                        v4 = (a1 + 612);
                        pcap_on_interface = v290;
                        goto LABEL_263;
                      }

                      if (selectable_fd == -1 || !__darwin_check_fd_set_overflow(selectable_fd, v166, 0) || (v166->fds_bits[v171] & v169) == 0)
                      {
                        goto LABEL_302;
                      }

                      v298 = 0;
                      v299 = 0;
                      if (pcap_next_ex(v290, &v299, &v298) != 1)
                      {
                        v179 = 0;
                        v4 = (a1 + 612);
                        goto LABEL_260;
                      }

                      if (*(a1 + 444) >= 2)
                      {
                        fprintf(*MEMORY[0x277D85DF8], "# got TCP packet %d bytes\n", v299->caplen);
                        dump_hex(v298, v299->caplen);
                      }

                      v175 = pcap_datalink(v290);
                      if (v175 == 1)
                      {
                        break;
                      }

                      if (v175 != 108)
                      {
                        if (v175 == 12)
                        {
                          v177 = 0;
                          caplen = v299->caplen;
LABEL_256:
                          v180 = caplen - v177;
                          if (v180 >= 0x200)
                          {
                            v179 = 512;
                          }

                          else
                          {
                            v179 = v180;
                          }

                          memcpy(__dst, &v298[v177], v179);
                          v4 = (a1 + 612);
                          *v281 = *(a1 + 612);
                          v285 = 1;
LABEL_260:
                          pcap_on_interface = v290;
                        }

                        else
                        {
                          v192 = *MEMORY[0x277D85DF8];
                          pcap_on_interface = v290;
                          v193 = pcap_datalink(v290);
                          fprintf(v192, "# cannot process TCP packet with data link %d\n", v193);
                          v179 = 0;
                          v4 = (a1 + 612);
                        }

                        v38 = a1 + 81;
LABEL_263:
                        free(v166);
                        if (!v179)
                        {
                          goto LABEL_303;
                        }

LABEL_264:
                        gettimeofday(&v294, &v293);
                        if (v285)
                        {
                          a1[70] = __dst;
                          v181 = 4 * (a1[4] & 0xF);
                          if (v181 + 20 > v179)
                          {
LABEL_274:
                            if (*(a1 + 444))
                            {
                              v186.s_addr = *(a1 + 158);
                              v187 = inet_ntoa(v186);
                              printf("packet too short (%zu bytes) from %s\n", v179, v187);
                            }
                          }

                          else
                          {
                            v182 = &__dst[v181];
                            if (*(a1 + 444) >= 2)
                            {
                              fprintf(*MEMORY[0x277D85DF8], "tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", bswap32(*v182) >> 16, bswap32(v182[1]) >> 16, *(v182 + 1));
                            }

                            if (*(a1 + 916) == bswap32(v182[1]) >> 16)
                            {
                              v183 = bswap32(*v182);
                              v184 = v286;
                              if (*(a1 + 450))
                              {
                                v184 = 0;
                              }

                              if (v184 + *(a1 + 917) == HIWORD(v183))
                              {
LABEL_312:
                                v212 = -2;
                                goto LABEL_313;
                              }
                            }
                          }

                          goto LABEL_208;
                        }

                        v185 = 4 * (*__dst & 0xF);
                        if (v179 < v185 + 8)
                        {
                          goto LABEL_274;
                        }

                        v188 = &__dst[v185];
                        v189 = __dst[4 * (*__dst & 0xF)];
                        v190 = __dst[v185 + 1];
                        if (v190 == 4)
                        {
                          v191 = bswap32(*(v188 + 3)) >> 16;
                        }

                        else
                        {
                          v191 = 0;
                        }

                        *(a1 + 439) = v191;
                        if (!v189)
                        {
                          v194 = a1[233];
                          if (*(v194 + 16) == 1)
                          {
                            if ((*(v194 + 32))(v188, v286, a1))
                            {
                              goto LABEL_312;
                            }
                          }
                        }

                        v195 = v179 - v185;
                        v197 = v189 == 11 && v190 == 0;
                        if (v189 != 3 && !v197 || (v198 = v188[8], a1[70] = v188 + 8, a1[71] = &__dst[v179] - (v188 + 8), v199 = 4 * (v198 & 0xF), v195 < (v199 + 16)) || (v200 = a1[233], v188[17] != *(v200 + 16)) || !(*(v200 + 32))(&v188[v199 + 8], v286, a1))
                        {
                          if (*(a1 + 444))
                          {
                            v201.s_addr = *(a1 + 158);
                            v202 = inet_ntoa(v201);
                            printf("\n%zu bytes from %s to ", v195, v202);
                            v203.s_addr = *(a1 + 12);
                            v204 = inet_ntoa(v203);
                            v205 = "OUT-OF-RANGE";
                            if (v189 <= 0x10)
                            {
                              v205 = pr_type_ttab[v189];
                            }

                            printf("%s: icmp type %d (%s) code %d\n", v204, v189, v205, v188[1]);
                            if (v195 >= 5)
                            {
                              v206 = (v188 + 8);
                              v207 = 8;
                              do
                              {
                                v208 = *v206++;
                                printf("%2d: x%8.8x\n", v207 - 4, v208);
                                v209 = v195 <= v207;
                                v207 += 4;
                              }

                              while (!v209);
                            }
                          }

                          goto LABEL_208;
                        }

                        if (v189 == 11)
                        {
                          v212 = -1;
                        }

                        else
                        {
                          v212 = v190 + 1;
                        }

LABEL_313:
                        if (v278)
                        {
                          if (*(a1 + 158) == v277)
                          {
                            v38 = a1 + 81;
                            v145 = v284;
                            goto LABEL_344;
                          }

                          v213 = a1[1];
                          if (v213)
                          {
                            v213(*a1, "\n   ");
                          }

                          else
                          {
                            printf("\n   ");
                          }
                        }

                        v214.s_addr = *(a1 + 158);
                        v306 = 0;
                        v308 = 0;
                        v305 = 528;
                        s_addr = v214.s_addr;
                        v215 = *(a1 + 32);
                        v216 = inet_ntoa(v214);
                        if (!v216)
                        {
                          goto LABEL_465;
                        }

                        v217 = 0;
                        v218 = v179 - 4 * (v215 & 0xF);
                        v145 = v284;
                        while (1)
                        {
                          v219 = v216[v217];
                          *(&v314.tv_sec + v217) = v219;
                          if (!v219)
                          {
                            break;
                          }

                          if (++v217 == 15)
                          {
                            *(&v314.tv_usec + 7) = 0;
                            break;
                          }
                        }

                        v309 = v314;
                        if (*(a1 + 447))
                        {
                          *&buf[4] = as_lookup(a1[231], &v314, 2);
                          v220 = a1[1];
                          if (v220)
                          {
                            v221 = *a1;
                            v274 = as_lookup(a1[231], &v314, 2);
                            v222 = v221;
                            v145 = v284;
                            v220(v222, " [AS%u]", v274);
                          }

                          else
                          {
                            v223 = as_lookup(a1[231], &v314, 2);
                            printf(" [AS%u]", v223);
                          }
                        }

                        if (*(a1 + 446))
                        {
                          v224 = a1[1];
                          if (v224)
                          {
                            v224(*a1, " %s", &v314);
                          }

                          else
                          {
                            printf(" %s", &v314);
                          }
                        }

                        else
                        {
                          v225.s_addr = *(a1 + 158);
                          v226 = inetname(v225, 0);
                          strnlen(v226, 0x401uLL);
                          __memcpy_chk();
                          v227 = a1[1];
                          if (v227)
                          {
                            v227(*a1, " %s (%s)", v226, &v314);
                          }

                          else
                          {
                            printf(" %s (%s)", v226, &v314);
                          }

                          free(v226);
                          v145 = v284;
                        }

                        if (*(a1 + 444))
                        {
                          v228 = a1[1];
                          if (v228)
                          {
                            v229 = *a1;
                            v230.s_addr = *(a1 + 12);
                            v276 = inet_ntoa(v230);
                            v231 = v229;
                            v145 = v284;
                            v228(v231, " %zu bytes to %s", v218, v276);
                          }

                          else
                          {
                            v232.s_addr = *(a1 + 12);
                            v233 = inet_ntoa(v232);
                            printf(" %zu bytes to %s", v218, v233);
                          }
                        }

                        v277 = *(a1 + 158);
                        LODWORD(v278) = v278 + 1;
                        v38 = a1 + 81;
LABEL_344:
                        v234 = (v294.tv_sec - tv_sec);
                        v235 = (v294.tv_usec - tv_usec) / 1000.0;
                        v236 = v235 + v234 * 1000.0;
                        v237 = a1[1];
                        if (v237)
                        {
                          v237(*a1, "  %.*f ms", 3, v235 + v234 * 1000.0);
                        }

                        else
                        {
                          printf("  %.*f ms", 3, v235 + v234 * 1000.0);
                        }

                        v29 = a1 + 441;
                        *&v304[4] = v236;
                        if (*(a1 + 452))
                        {
                          v238 = *(a1[70] + 1) & 3;
                          if (v238 != (*(a1[68] + 1) & 3))
                          {
                            if ((*(a1[70] + 1) & 3) != 0)
                            {
                              if (v238 != 3)
                              {
                                goto LABEL_361;
                              }

                              v239 = a1[1];
                              if (!v239)
                              {
                                printf(" (ecn=mangled)");
                                goto LABEL_361;
                              }

                              v240 = *a1;
                              v241 = " (ecn=mangled)";
                            }

                            else
                            {
                              v239 = a1[1];
                              if (!v239)
                              {
                                printf(" (ecn=bleached)");
                                goto LABEL_361;
                              }

                              v240 = *a1;
                              v241 = " (ecn=bleached)";
                            }

LABEL_358:
                            v239(v240, v241);
                            goto LABEL_361;
                          }

                          v239 = a1[1];
                          if (v239)
                          {
                            v240 = *a1;
                            v241 = " (ecn=passed)";
                            goto LABEL_358;
                          }

                          printf(" (ecn=passed)");
                        }

LABEL_361:
                        if (*(a1 + 451))
                        {
                          v242 = a1[1];
                          if (v242)
                          {
                            v242(*a1, "\n");
                          }

                          else
                          {
                            putchar(10);
                          }

                          v243 = a1[1];
                          if (v243)
                          {
                            v243(*a1, "%*.*s%s\n", -8 * (*a1[68] & 0xF), 8 * (*a1[68] & 0xF), ip_hdr_key, *(a1[233] + 8));
                          }

                          else
                          {
                            printf("%*.*s%s\n", -8 * (*a1[68] & 0xF), 8 * (*a1[68] & 0xF), ip_hdr_key, *(a1[233] + 8));
                          }

                          v244 = a1[68];
                          v245 = a1[81];
                          v246 = a1[70];
                          v247 = a1[71];
                          if (v245 >= 1)
                          {
                            v248 = a1[68];
                            v249 = a1[81];
                            do
                            {
                              v250 = *v248++;
                              printf("%02x", v250);
                              --v249;
                            }

                            while (v249);
                          }

                          putchar(10);
                          if (v245 >= v247)
                          {
                            v245 = v247;
                          }

                          v251 = v246;
                          v252 = v245;
                          if (v245 < 1)
                          {
                            v257 = 0;
                          }

                          else
                          {
                            do
                            {
                              v254 = *v244++;
                              v253 = v254;
                              v256 = *v251++;
                              v255 = v256;
                              if (v253 == v256)
                              {
                                printf("__");
                              }

                              else
                              {
                                printf("%02x", v255);
                              }

                              --v252;
                            }

                            while (v252);
                            v257 = v245;
                          }

                          v209 = v247 <= v257;
                          v258 = v247 - v257;
                          v4 = (a1 + 612);
                          v145 = v284;
                          if (!v209)
                          {
                            v259 = &v246[v257];
                            do
                            {
                              v260 = *v259++;
                              printf("%02x", v260);
                              --v258;
                            }

                            while (v258);
                          }

                          putchar(10);
                          v29 = a1 + 441;
                          v38 = a1 + 81;
                        }

                        if (v212 != -1)
                        {
                          if (v212 == -2)
                          {
                            if (*(a1 + 40) <= 1u)
                            {
                              v261 = a1[1];
                              if (v261)
                              {
                                v261(*a1, " !");
                              }

                              else
                              {
                                printf(" !");
                              }
                            }

                            ++HIDWORD(v278);
                          }

                          else
                          {
                            *&buf[16] = v212 - 1;
                            switch(v212)
                            {
                              case 1:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !N";
                                  goto LABEL_427;
                                }

                                printf(" !N");
                                break;
                              case 2:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !H";
                                  goto LABEL_427;
                                }

                                printf(" !H");
                                break;
                              case 3:
                                ++HIDWORD(v278);
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !P";
                                  goto LABEL_427;
                                }

                                printf(" !P");
                                break;
                              case 4:
                                if (*(a1 + 40) <= 1u)
                                {
                                  v265 = a1[1];
                                  if (v265)
                                  {
                                    v265(*a1, " !");
                                  }

                                  else
                                  {
                                    printf(" !");
                                  }
                                }

                                ++HIDWORD(v278);
                                break;
                              case 5:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v275 = *(a1 + 439);
                                  v264 = " !F-%d";
                                  goto LABEL_427;
                                }

                                v266 = *(a1 + 439);
                                printf(" !F-%d");
                                break;
                              case 6:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !S";
                                  goto LABEL_427;
                                }

                                printf(" !S");
                                break;
                              case 7:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !U";
                                  goto LABEL_427;
                                }

                                printf(" !U");
                                break;
                              case 8:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !W";
                                  goto LABEL_427;
                                }

                                printf(" !W");
                                break;
                              case 9:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !I";
                                  goto LABEL_427;
                                }

                                printf(" !I");
                                break;
                              case 10:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !A";
                                  goto LABEL_427;
                                }

                                printf(" !A");
                                break;
                              case 11:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !Z";
                                  goto LABEL_427;
                                }

                                printf(" !Z");
                                break;
                              case 12:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !Q";
                                  goto LABEL_427;
                                }

                                printf(" !Q");
                                break;
                              case 13:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !T";
                                  goto LABEL_427;
                                }

                                printf(" !T");
                                break;
                              case 14:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !X";
                                  goto LABEL_427;
                                }

                                printf(" !X");
                                break;
                              case 15:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !V";
                                  goto LABEL_427;
                                }

                                printf(" !V");
                                break;
                              case 16:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !C";
                                  goto LABEL_427;
                                }

                                printf(" !C");
                                break;
                              default:
                                ++v280;
                                v262 = a1[1];
                                if (v262)
                                {
                                  v263 = *a1;
                                  v264 = " !<%d>";
LABEL_427:
                                  v262(v263, v264);
                                }

                                else
                                {
                                  printf(" !<%d>");
                                }

                                break;
                            }

                            v38 = a1 + 81;
                            v4 = (a1 + 612);
                            v29 = a1 + 441;
                            pcap_on_interface = v290;
                            v145 = v284;
                          }
                        }

LABEL_307:
                        v211 = a1[3];
                        if (v211)
                        {
                          v211(a1[2], buf);
                        }

                        else
                        {
                          fflush(*MEMORY[0x277D85E08]);
                        }

                        v144 = *(a1 + 440);
                        v146 = v288;
                        if (v288 >= v144)
                        {
                          v267 = 100 * v145;
                          v268 = HIDWORD(v278) == 0;
                          goto LABEL_448;
                        }

                        goto LABEL_186;
                      }

                      caplen = v299->caplen;
                      v177 = 4;
LABEL_243:
                      if (v177 <= caplen)
                      {
                        goto LABEL_256;
                      }
                    }

                    caplen = v299->caplen;
                  }

                  while (caplen < 0xE);
                  v178 = *(v298 + 6);
                  if (v178 == 8)
                  {
                    v177 = 14;
                    goto LABEL_243;
                  }

                  if (v178 == 33024)
                  {
                    v177 = 18;
                    goto LABEL_243;
                  }

                  fprintf(*MEMORY[0x277D85DF8], "# cannot process TCP packet with Ethernet type 0x%04x\n", __rev16(v178));
                }
              }
            }

            printf("%s: wrote %s %zu chars, ret=%zu\n", prog, a1[86], v154, v153);
            fflush(*MEMORY[0x277D85E08]);
            goto LABEL_207;
          }

          v149 = *v38;
          printf("[ %zu bytes", *v38);
          if (v149 >= 2)
          {
            v150 = 0;
            do
            {
              if ((v150 & 7) == 0)
              {
                printf("\n\t");
              }

              ++v150;
              v151 = *v148;
              v148 += 2;
              printf(" %04x", bswap32(v151) >> 16);
            }

            while (v149 >> 1 != v150);
            v38 = a1 + 81;
            if ((a1[81] & 1) == 0)
            {
              goto LABEL_201;
            }

            if ((v149 & 0xE) != 0)
            {
              goto LABEL_200;
            }
          }

          else if ((*v38 & 1) == 0)
          {
            goto LABEL_201;
          }

          printf("\n\t");
LABEL_200:
          printf(" %02x", *v148);
LABEL_201:
          puts("]");
          v148 = a1[68];
          goto LABEL_202;
        }

        v116 = a1[1];
        v117 = prog;
        if (v116)
        {
          v118 = *a1;
          v119 = __error();
          v120 = strerror(*v119);
          v116(v118, "%s: bind: %s\n", v117, v120);
        }

        else
        {
          v126 = *MEMORY[0x277D85DF8];
          v127 = __error();
          v128 = strerror(*v127);
          fprintf(v126, "%s: bind: %s\n", v117, v128);
        }

        v129 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          v130 = __error();
          v131 = strerror(*v130);
          *buf = 136315138;
          *&buf[4] = v131;
          _os_log_impl(&dword_23255B000, v129, OS_LOG_TYPE_ERROR, "TR: bind: %s\n", buf, 0xCu);
        }

LABEL_12:
        result = 0xFFFFFFFFLL;
        goto LABEL_108;
      }

      v38 = a1 + 81;
      v55 = (a1 + 628);
      goto LABEL_129;
    }

    v58 += 4;
    v296 = v58;
    --v59;
  }

  while (v59 > 1);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = prog;
    *&buf[12] = 1040;
    *&buf[14] = 32;
    *&buf[18] = 2080;
    *&buf[20] = v56;
    v61 = "TR: %s: Can't find interface %.32s\n";
    v62 = buf;
    v63 = v57;
    goto LABEL_85;
  }

LABEL_107:
  result = 1;
LABEL_108:
  v81 = *MEMORY[0x277D85DE8];
  return result;
}

pcap_t *create_pcap_on_interface(int *a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *&v7.bf_len = 0;
  v7.bf_insns = 0;
  v3 = pcap_create(a2, create_pcap_on_interface_ebuf);
  if (!v3)
  {
    errx(71, "pcap_open_live(%s) failed: %s");
  }

  v4 = v3;
  if (pcap_set_snaplen(v3, 0xFFFF) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_snaplen(%s, %d) failed: %s");
  }

  if (pcap_set_immediate_mode(v4, 1) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_immediate_mode(%s, %d) failed: %s");
  }

  if (pcap_setnonblock(v4, 1, create_pcap_on_interface_ebuf))
  {
    create_pcap_on_interface_cold_1();
  }

  if (pcap_set_buffer_size(v4, 0xFFFF))
  {
    create_pcap_on_interface_cold_2();
  }

  if (pcap_activate(v4) < 0)
  {
    create_pcap_on_interface_cold_5();
  }

  inet_ntop(2, a1 + 154, v9, 0x2Eu);
  inet_ntop(2, a1 + 158, v8, 0x2Eu);
  snprintf(create_pcap_on_interface_filter_str, 0x400uLL, "tcp and src %s and dst %s", v9, v8);
  if (pcap_compile(v4, &v7, create_pcap_on_interface_filter_str, 1, 0xFFFFFFFF))
  {
    create_pcap_on_interface_cold_3(v4);
  }

  if (pcap_setfilter(v4, &v7) < 0)
  {
    create_pcap_on_interface_cold_4(v4);
  }

  if (a1[444] >= 2)
  {
    fprintf(*MEMORY[0x277D85DF8], "# using pcap filter %s\n", create_pcap_on_interface_filter_str);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

const char *pr_type(unsigned int a1)
{
  if (a1 <= 0x10)
  {
    return pr_type_ttab[a1];
  }

  else
  {
    return "OUT-OF-RANGE";
  }
}

uint64_t p_cksum(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned __int16 a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  BYTE1(v11) = *(a1 + 9);
  HIWORD(v11) = bswap32(a3) >> 16;
  v12 = *(a1 + 12);
  v9[1] = in_cksum(&v10, 0x14u);
  v9[0] = in_cksum(a2, a4);
  v6 = in_cksum(v9, 4u);
  v7 = *MEMORY[0x277D85DE8];
  return v6 ^ 0xFFFFu;
}

uint64_t *tvsub(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 2) - *(a2 + 8);
  *(result + 2) = v3;
  if (v3 < 0)
  {
    *result = --v2;
    *(result + 2) = v3 + 1000000;
  }

  *result = v2 - *a2;
  return result;
}

char *inetname(in_addr a1, int a2)
{
  s_addr = a1.s_addr;
  v20 = *MEMORY[0x277D85DE8];
  v17 = a1.s_addr;
  if (a2)
  {
LABEL_2:
    v3.s_addr = s_addr;
    v4 = inet_ntoa(v3);
    if (!v4)
    {
      goto LABEL_23;
    }

    goto LABEL_3;
  }

  if ((gethostname(__s, 0x100uLL) & 0x80000000) == 0 && ((v7 = strchr(__s, 46)) != 0 || (v8 = gethostbyname(__s)) != 0 && (v7 = strchr(v8->h_name, 46)) != 0))
  {
    strlen(v7 + 1);
    __memmove_chk();
    s_addr = v17;
    if (!v17)
    {
      goto LABEL_2;
    }
  }

  else
  {
    __s[0] = 0;
    if (!s_addr)
    {
      goto LABEL_2;
    }
  }

  v9 = gethostbyaddr(&v17, 4u, 2);
  if (!v9)
  {
    s_addr = v17;
    goto LABEL_2;
  }

  v10 = v9;
  h_name = v9->h_name;
  v12 = strchr(v9->h_name, 46);
  if (v12)
  {
    v13 = v12;
    if (!strcmp(v12 + 1, __s))
    {
      *v13 = 0;
      h_name = v10->h_name;
    }
  }

  if (!h_name)
  {
LABEL_23:
    __break(1u);
  }

  v14 = 0;
  while (1)
  {
    v15 = h_name[v14];
    v18[v14] = v15;
    if (!v15)
    {
      break;
    }

    if (++v14 == 256)
    {
      v18[256] = 0;
      break;
    }
  }

  v16 = strlen(v18);
  clean_non_printable(v18, v16);
  v4 = v18;
LABEL_3:
  result = strdup(v4);
  if (!result)
  {
    goto LABEL_23;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t traceroute6_parseargs(uint64_t *a1, int a2, char *const *a3)
{
  v6 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "TR: begin traceroute6_parseargs\n", buf, 2u);
  }

  __endptr = 0;
  v7 = MEMORY[0x277D85E68];
  while (2)
  {
    v8 = getopt(a2, a3, "aA:deEf:g:i:Ilm:nNp:q:rs:t:TUvw:");
    switch(v8)
    {
      case 'A':
        *(a1 + 854) = 1;
        a1[286] = *v7;
        continue;
      case 'B':
      case 'C':
      case 'D':
      case 'F':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'L':
      case 'M':
      case 'O':
      case 'P':
      case 'Q':
      case 'R':
      case 'S':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'h':
      case 'j':
      case 'k':
      case 'o':
      case 'u':
        goto LABEL_119;
      case 'E':
        *(a1 + 853) = 1;
        continue;
      case 'I':
        *(a1 + 851) = 58;
        continue;
      case 'N':
        *(a1 + 851) = 59;
        continue;
      case 'T':
        *(a1 + 851) = 6;
        continue;
      case 'U':
        *(a1 + 851) = 17;
        continue;
      case 'a':
        *(a1 + 854) = 1;
        continue;
      case 'd':
        *(a1 + 848) |= 1u;
        continue;
      case 'e':
        *(a1 + 855) = 1;
        continue;
      case 'f':
        __endptr = 0;
        *__error() = 0;
        *(a1 + 846) = strtoul(*v7, &__endptr, 0);
        if (!*__error() && **v7 && !*__endptr && *(a1 + 846) < 256)
        {
          continue;
        }

        v15 = a1[1];
        if (v15)
        {
          v16 = *a1;
          v17 = "traceroute6: invalid min hoplimit.\n";
          goto LABEL_101;
        }

        v18 = *MEMORY[0x277D85DF8];
        v19 = "traceroute6: invalid min hoplimit.\n";
        goto LABEL_75;
      case 'g':
        v11 = gethostbyname2(*v7, 30);
        if (!v11)
        {
          v24 = a1[1];
          v25 = *v7;
          if (!v24)
          {
            v34 = *v7;
            fprintf(*MEMORY[0x277D85DF8], "traceroute6: unknown host %s\n");
            return 0xFFFFFFFFLL;
          }

          v26 = *a1;
          v32 = *v7;
          v27 = "traceroute6: unknown host %s\n";
          goto LABEL_91;
        }

        v12 = v11;
        v13 = a1[284];
        if (!v13)
        {
          v13 = inet6_rth_init(a1 + 26, 0x810u, 0, 0);
          a1[284] = v13;
          if (!v13)
          {
            v15 = a1[1];
            if (!v15)
            {
              v18 = *MEMORY[0x277D85DF8];
              v19 = "inet6_rth_init failed.\n";
              v20 = 23;
              goto LABEL_115;
            }

            v16 = *a1;
            v17 = "inet6_rth_init failed.\n";
            goto LABEL_101;
          }
        }

        if (inet6_rth_add(v13, *v12->h_addr_list))
        {
          v24 = a1[1];
          v28 = *v7;
          if (!v24)
          {
            v35 = *v7;
            fprintf(*MEMORY[0x277D85DF8], "inet6_rth_add failed for %s\n");
            return 0xFFFFFFFFLL;
          }

          v26 = *a1;
          v33 = *v7;
          v27 = "inet6_rth_add failed for %s\n";
LABEL_91:
          v24(v26, v27);
          return 0xFFFFFFFFLL;
        }

        continue;
      case 'i':
        __endptr = 0;
        *__error() = 0;
        v9 = strtoul(*v7, &__endptr, 0);
        if (*__error() || !**v7 || *__endptr || v9 >= 0x10000)
        {
          v15 = a1[1];
          if (v15)
          {
            v16 = *a1;
            v17 = "traceroute6: invalid ident.\n";
            goto LABEL_101;
          }

          v18 = *MEMORY[0x277D85DF8];
          v19 = "traceroute6: invalid ident.\n";
          v20 = 28;
          goto LABEL_115;
        }

        *(a1 + 1683) = v9;
        continue;
      case 'l':
        ++*(a1 + 852);
        continue;
      case 'm':
        __endptr = 0;
        *__error() = 0;
        a1[429] = strtoul(*v7, &__endptr, 0);
        if (!*__error() && **v7 && !*__endptr && a1[429] < 0x100)
        {
          continue;
        }

        v15 = a1[1];
        if (v15)
        {
          v16 = *a1;
          v17 = "traceroute6: invalid max hoplimit.\n";
          goto LABEL_101;
        }

        v18 = *MEMORY[0x277D85DF8];
        v19 = "traceroute6: invalid max hoplimit.\n";
LABEL_75:
        v20 = 35;
        goto LABEL_115;
      case 'n':
        ++*(a1 + 850);
        continue;
      case 'p':
        __endptr = 0;
        *__error() = 0;
        v14 = strtoul(*v7, &__endptr, 0);
        if (*__error() || !**v7 || *__endptr)
        {
          v15 = a1[1];
          if (!v15)
          {
            v18 = *MEMORY[0x277D85DF8];
            v19 = "traceroute6: invalid port.\n";
            v20 = 27;
            goto LABEL_115;
          }

          v16 = *a1;
          v17 = "traceroute6: invalid port.\n";
          goto LABEL_101;
        }

        if (v14 - 1 >= 0xFFFF)
        {
          v15 = a1[1];
          if (!v15)
          {
            v18 = *MEMORY[0x277D85DF8];
            v19 = "traceroute6: port out of range.\n";
            goto LABEL_107;
          }

          v16 = *a1;
          v17 = "traceroute6: port out of range.\n";
          goto LABEL_101;
        }

        *(a1 + 1682) = v14;
        continue;
      case 'q':
        __endptr = 0;
        *__error() = 0;
        a1[428] = strtoul(*v7, &__endptr, 0);
        if (*__error() || !**v7 || *__endptr)
        {
          v15 = a1[1];
          if (!v15)
          {
            v18 = *MEMORY[0x277D85DF8];
            v19 = "traceroute6: invalid nprobes.\n";
            v20 = 30;
            goto LABEL_115;
          }

          v16 = *a1;
          v17 = "traceroute6: invalid nprobes.\n";
          goto LABEL_101;
        }

        if (!a1[428])
        {
          v15 = a1[1];
          if (!v15)
          {
            v18 = *MEMORY[0x277D85DF8];
            v19 = "traceroute6: nprobes must be >0.\n";
            v20 = 33;
            goto LABEL_115;
          }

          v16 = *a1;
          v17 = "traceroute6: nprobes must be >0.\n";
          goto LABEL_101;
        }

        continue;
      case 'r':
        *(a1 + 848) |= 0x10u;
        continue;
      case 's':
        a1[287] = *v7;
        continue;
      case 't':
        __endptr = 0;
        *__error() = 0;
        v10 = strtoul(*v7, &__endptr, 0);
        if (*__error() || !**v7 || *__endptr || v10 >= 0x100)
        {
          v15 = a1[1];
          if (v15)
          {
            v16 = *a1;
            v17 = "traceroute6: invalid traffic class.\n";
            goto LABEL_101;
          }

          v18 = *MEMORY[0x277D85DF8];
          v19 = "traceroute6: invalid traffic class.\n";
          goto LABEL_114;
        }

        *(a1 + 847) = v10;
        continue;
      case 'v':
        ++*(a1 + 849);
        continue;
      case 'w':
        __endptr = 0;
        *__error() = 0;
        a1[430] = strtoul(*v7, &__endptr, 0);
        if (!*__error() && **v7 && !*__endptr)
        {
          if (!a1[430])
          {
            v15 = a1[1];
            if (v15)
            {
              v16 = *a1;
              v17 = "traceroute6: wait must be >= 1 sec.\n";
LABEL_101:
              v15(v16, v17);
              return 0xFFFFFFFFLL;
            }

            v18 = *MEMORY[0x277D85DF8];
            v19 = "traceroute6: wait must be >= 1 sec.\n";
LABEL_114:
            v20 = 36;
            goto LABEL_115;
          }

          continue;
        }

        v15 = a1[1];
        if (v15)
        {
          v16 = *a1;
          v17 = "traceroute6: invalid wait time.\n";
          goto LABEL_101;
        }

        v18 = *MEMORY[0x277D85DF8];
        v19 = "traceroute6: invalid wait time.\n";
LABEL_107:
        v20 = 32;
LABEL_115:
        fwrite(v19, v20, 1uLL, v18);
        return 0xFFFFFFFFLL;
      default:
        if (v8 != -1)
        {
LABEL_119:
          fwrite("usage: traceroute6 [-adeEIlnNrTUv] [-A as_server] [-f firsthop] [-g gateway]\n       [-m hoplimit] [-p port] [-q probes] [-s src] [-w waittime] target\n       [datalen]\n", 0xA7uLL, 1uLL, *MEMORY[0x277D85DF8]);
          exit(1);
        }

        v21 = MEMORY[0x277D85E78];
        v22 = *MEMORY[0x277D85E78];
        v23 = a2 - *MEMORY[0x277D85E78];
        if (v23 == 1)
        {
          goto LABEL_111;
        }

        if (v23 != 2)
        {
          usage();
        }

        *(a1 + 842) = strtoul(*a3, &__endptr, 0);
        if (!*__error() && *a3 && !*__endptr)
        {
          v22 = *v21;
LABEL_111:
          a1[288] = a3[v22];
          *MEMORY[0x277D85E88] = 1;
          *v21 = 1;
          v29 = otherLogHandle;
          v30 = os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT);
          result = 0;
          if (v30)
          {
            *v36 = 0;
            _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEFAULT, "TR: end traceroute4_parseargs\n", v36, 2u);
            return 0;
          }

          return result;
        }

        v15 = a1[1];
        if (v15)
        {
          v16 = *a1;
          v17 = "traceroute6: invalid packet length.\n";
          goto LABEL_101;
        }

        v18 = *MEMORY[0x277D85DF8];
        v19 = "traceroute6: invalid packet length.\n";
        goto LABEL_114;
    }
  }
}

uint64_t traceroute6_set_hostname(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      *(result + 2304) = a2;
    }
  }

  return result;
}

uint64_t traceroute6_run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v214 = *MEMORY[0x277D85DE8];
  v5 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.ai_flags) = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "TR: begin traceroute6_run\n", &buf, 2u);
  }

  v210 = xmmword_232816B00;
  v205 = 1;
  v204 = 0;
  memset(&v203, 0, sizeof(v203));
  v201 = 0;
  v202 = 0;
  RawSocket = NEHelperGetRawSocket();
  *(v4 + 843) = RawSocket;
  v7 = otherLogHandle;
  if (RawSocket < 0)
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v18 = *__error();
      buf.ai_flags = 67109120;
      buf.ai_family = v18;
      v19 = "TR: Failed to create raw ICMP receive socket over IPv6, errno: %d";
LABEL_27:
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, v19, &buf, 8u);
    }

LABEL_28:
    result = *__error();
    goto LABEL_46;
  }

  v8 = RawSocket;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    buf.ai_flags = 67109120;
    buf.ai_family = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "TR: Raw ICMP socket created over IPv6 via NEHelper, rcvsock: %d", &buf, 8u);
  }

  if (!v4[429])
  {
    v201 = 8;
    sysctl(&v210, 4u, &v204, &v201, 0, 0);
    v4[429] = v204;
  }

  if (setsockopt(*(v4 + 843), 41, 61, &v205, 4u) < 0)
  {
    v9 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.ai_flags) = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "setsockopt(IPV6_RECVPKTINFO)", &buf, 2u);
    }
  }

  if (setsockopt(*(v4 + 843), 41, 37, &v205, 4u) < 0)
  {
    v10 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.ai_flags) = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "setsockopt(IPV6_RECVHOPLIMIT)", &buf, 2u);
    }
  }

  *(v4 + 1683) = bswap32(getpid()) >> 16;
  v11 = *(v4 + 851);
  if (v11 > 0x3B || ((1 << v11) & 0xC00000000020040) == 0)
  {
    v23 = v4[1];
    if (v23)
    {
      v23(*v4, "traceroute6: unknown probe protocol %d\n", *(v4 + 851));
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "traceroute6: unknown probe protocol %d\n", *(v4 + 851));
    }

    result = 5;
    goto LABEL_46;
  }

  v12 = NEHelperGetRawSocket();
  *(v4 + 844) = v12;
  v7 = otherLogHandle;
  if (v12 < 0)
  {
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = *__error();
      buf.ai_flags = 67109120;
      buf.ai_family = v20;
      v19 = "TR: Failed to create raw UDP send socket over IPv6, errno: %d";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v13 = v12;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    buf.ai_flags = 67109120;
    buf.ai_family = v13;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "TR: Raw UDP socket created over IPv6 via NEHelper, sndsock: %d", &buf, 8u);
  }

  if (v4[429] < *(v4 + 846))
  {
    v14 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.ai_flags) = 0;
      v15 = "TR: traceroute6: max hoplimit must be larger than first hoplimit.\n";
LABEL_22:
      v16 = v14;
      v17 = 2;
LABEL_39:
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, v15, &buf, v17);
    }

LABEL_40:
    result = 0xFFFFFFFFLL;
    goto LABEL_46;
  }

  v22 = v4 + 847;
  if (*(v4 + 853))
  {
    *v22 = 1;
  }

  else if (*v22 == -1)
  {
    goto LABEL_35;
  }

  if (setsockopt(*(v4 + 844), 41, 36, v4 + 3388, 4u) == -1)
  {
    v28 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.ai_flags) = 0;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "TR: setsockopt(IPV6_TCLASS)", &buf, 2u);
    }

    result = 7;
    goto LABEL_46;
  }

LABEL_35:
  setvbuf(*MEMORY[0x277D85E08], 0, 1, 0x400uLL);
  memset(&v203.ai_addrlen, 0, 32);
  *&v203.ai_flags = xmmword_232816AF0;
  v24 = getaddrinfo(v4[288], 0, &v203, &v202);
  if (v24)
  {
    v25 = v24;
    v26 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v27 = gai_strerror(v25);
    buf.ai_flags = 136315138;
    *&buf.ai_family = v27;
    v15 = "TR: traceroute6: %s\n";
LABEL_38:
    v16 = v26;
    v17 = 12;
    goto LABEL_39;
  }

  v30 = v202;
  if (v202->ai_addrlen != 28)
  {
    v14 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    LOWORD(buf.ai_flags) = 0;
    v15 = "TR: traceroute6: size of sockaddr mismatch\n";
    goto LABEL_22;
  }

  ai_addr = v202->ai_addr;
  v32 = *ai_addr;
  *(v4 + 9) = *&ai_addr->sa_data[10];
  *(v4 + 60) = v32;
  ai_canonname = v30->ai_canonname;
  if (ai_canonname)
  {
    v34 = strdup(ai_canonname);
    if (!v34)
    {
      goto LABEL_412;
    }

    v4[288] = v34;
  }

  else if (!v4[288])
  {
    v14 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    LOWORD(buf.ai_flags) = 0;
    v15 = "TR: traceroute6: not enough core\n";
    goto LABEL_22;
  }

  if (v30->ai_next)
  {
    if (getnameinfo(v30->ai_addr, v30->ai_addrlen, v4 + 2336, 0x401u, 0, 0, 2))
    {
      *(v4 + 1168) = 63;
    }

    v35 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v36 = v4[288];
      buf.ai_flags = 136315394;
      *&buf.ai_family = v36;
      LOWORD(buf.ai_protocol) = 2080;
      *(&buf.ai_protocol + 2) = v4 + 292;
      _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, "TR:  traceroute6: Warning: %s has multiple addresses; using %s\n", &buf, 0x16u);
    }
  }

  freeaddrinfo(v202);
  v37 = *(v4 + 851);
  v38 = 8;
  if (v37 <= 57)
  {
    if (v37 == 6)
    {
      v38 = 20;
    }

    else if (v37 != 17)
    {
      goto LABEL_66;
    }

    goto LABEL_69;
  }

  if (v37 == 58)
  {
LABEL_69:
    v40 = *(v4 + 842);
    if (v40 >= v38)
    {
      if (v40 >= 0xFFFF)
      {
        v41 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        buf.ai_flags = 67109376;
        buf.ai_family = v38;
        LOWORD(buf.ai_socktype) = 1024;
        *(&buf.ai_socktype + 2) = 0xFFFF;
        v15 = "TR: traceroute6: packet size must be %u <= s < %d.\n";
        v16 = v41;
        v17 = 14;
        goto LABEL_39;
      }
    }

    else
    {
      *(v4 + 842) = v38;
    }

    goto LABEL_74;
  }

  if (v37 != 59)
  {
LABEL_66:
    v39 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    buf.ai_flags = 67109120;
    buf.ai_family = v37;
    v15 = "TR:  traceroute6: unknown probe protocol %d.\n";
    v16 = v39;
    v17 = 8;
    goto LABEL_39;
  }

  *(v4 + 842) = 0;
LABEL_74:
  v42 = malloc_type_calloc(0xFFFFuLL, 1uLL, 0xECF1DC1EuLL);
  if (!v42)
  {
    goto LABEL_412;
  }

  v4[432] = v42;
  v43 = *(v4 + 842);
  __memset_chk();
  v4[15] = v4 + 11;
  v44 = (v4 + 15);
  v4[21] = v4 + 433;
  v4[22] = 0xFFFFLL;
  *(v4 + 32) = 28;
  v4[17] = v4 + 21;
  *(v4 + 36) = 1;
  v45 = malloc_type_malloc(0x30uLL, 0x2AF5D3C0uLL);
  if (!v45)
  {
LABEL_412:
    __break(1u);
  }

  v4[19] = v45;
  *(v4 + 40) = 48;
  setsockopt(*(v4 + 843), 0xFFFF, 4356, &v205, 4u);
  v46 = *(v4 + 848);
  if (v46)
  {
    setsockopt(*(v4 + 843), 0xFFFF, 1, &v205, 4u);
    v46 = *(v4 + 848);
  }

  if ((v46 & 0x10) != 0)
  {
    setsockopt(*(v4 + 843), 0xFFFF, 16, &v205, 4u);
  }

  v47 = *(v4 + 842);
  if (v47 <= 1)
  {
    v47 = 1;
  }

  v204 = v47;
  if (setsockopt(*(v4 + 844), 0xFFFF, 4097, &v204, 8u) < 0 && *(v4 + 851) != 59)
  {
    v59 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.ai_flags) = 0;
      _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_ERROR, "TR: setsockopt(SO_SNDBUF)", &buf, 2u);
    }

    result = 6;
    goto LABEL_46;
  }

  v48 = *(v4 + 848);
  if (v48)
  {
    setsockopt(*(v4 + 844), 0xFFFF, 1, &v205, 4u);
    v48 = *(v4 + 848);
  }

  if ((v48 & 0x10) != 0)
  {
    setsockopt(*(v4 + 844), 0xFFFF, 16, &v205, 4u);
  }

  v49 = v4[284];
  if (v49)
  {
    v50 = v49[3];
    v49[1] = 2 * v50;
    if (setsockopt(*(v4 + 844), 41, 51, v49, (16 * (v50 & 0x7F)) | 8))
    {
      v26 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      v51 = __error();
      v52 = strerror(*v51);
      buf.ai_flags = 136315138;
      *&buf.ai_family = v52;
      v15 = "TR: setsockopt(IPV6_RTHDR): %s\n";
      goto LABEL_38;
    }
  }

  v4[4] = 0;
  *(v4 + 14) = 0;
  v4[5] = 0;
  v4[6] = 0;
  v53 = (v4 + 287);
  v54 = v4[287];
  if (v54)
  {
    *v212 = 0;
    memset(&buf.ai_socktype, 0, 40);
    buf.ai_socktype = 2;
    *&buf.ai_flags = 0x1E00000004;
    v55 = getaddrinfo(v54, "0", &buf, v212);
    if (v55)
    {
      v56 = v4[1];
      if (v56)
      {
        v57 = *v4;
        v58 = v4[287];
LABEL_112:
        v66 = gai_strerror(v55);
        v56(v57, "traceroute6: %s: %s\n", v58, v66);
        goto LABEL_40;
      }

      v67 = *v53;
      goto LABEL_124;
    }

    v190 = v4 + 847;
    v64 = *v212;
    v65 = *(*v212 + 16);
    if (v65 >= 0x1D)
    {
      v56 = v4[1];
      if (v56)
      {
        v57 = *v4;
        v58 = v4[287];
        v55 = 0;
        goto LABEL_112;
      }

      v67 = *v53;
      v55 = 0;
LABEL_124:
      v71 = gai_strerror(v55);
      printf("traceroute6: %s: %s\n", v67, v71);
      goto LABEL_40;
    }

    memcpy(v4 + 4, *(*v212 + 32), v65);
    freeaddrinfo(v64);
  }

  else
  {
    v190 = v4 + 847;
    v212[0] = 0;
    *&buf.ai_flags = *(v4 + 60);
    *&buf.ai_protocol = *(v4 + 9);
    HIWORD(buf.ai_flags) = 6695;
    v60 = v4[285];
    if (v60)
    {
      *&buf.ai_socktype = *inet6_rthdr_getaddr(v60, 1);
    }

    v61 = socket(30, 2, 0);
    if (v61 < 0)
    {
      v72 = "socket";
      goto LABEL_411;
    }

    v62 = v61;
    if (connect(v61, &buf, LOBYTE(buf.ai_flags)) < 0)
    {
      v72 = "connect";
      goto LABEL_411;
    }

    v212[0] = 28;
    if (getsockname(v62, v4 + 2, v212) < 0)
    {
LABEL_125:
      v72 = "getsockname";
LABEL_411:
      perror(v72);
      goto LABEL_40;
    }

    if (getnameinfo(v4 + 2, *(v4 + 32), v209, 0x401u, 0, 0, 2))
    {
      v63 = v4[1];
      if (v63)
      {
        v63(*v4, "getnameinfo failed for source\n");
      }

      else
      {
        fwrite("getnameinfo failed for source\n", 0x1EuLL, 1uLL, *MEMORY[0x277D85DF8]);
      }

      goto LABEL_40;
    }

    *v53 = v209;
    close(v62);
  }

  *(v4 + 17) = 0;
  if (bind(*(v4 + 844), v4 + 2, *(v4 + 32)) < 0)
  {
    v72 = "bind";
    goto LABEL_411;
  }

  buf.ai_flags = 28;
  if (getsockname(*(v4 + 844), v4 + 2, &buf) < 0)
  {
    goto LABEL_125;
  }

  *(v4 + 1681) = bswap32(*(v4 + 17)) >> 16;
  v68 = MEMORY[0x277D85DF8];
  if (*(v4 + 854))
  {
    v69 = as_setup(v4[286]);
    v4[431] = v69;
    if (!v69)
    {
      v70 = v4[1];
      if (v70)
      {
        v70(*v4, "traceroute6: as_setup failed, AS# lookups disabled\n");
      }

      else
      {
        fwrite("traceroute6: as_setup failed, AS# lookups disabled\n", 0x33uLL, 1uLL, *v68);
      }

      fflush(*v68);
      *(v4 + 854) = 0;
    }
  }

  v188 = (v4 + 292);
  if (getnameinfo((v4 + 60), *(v4 + 60), v4 + 2336, 0x401u, 0, 0, 2))
  {
    v73 = 0;
    *(v4 + 2336) = 40;
    do
    {
      *(v4 + v73 + 2337) = aInvalid[v73 + 1];
      ++v73;
    }

    while (v73 != 9);
  }

  v74 = v4[1];
  if (v74)
  {
    v74(*v4, "traceroute6");
  }

  else
  {
    fwrite("traceroute6", 0xBuLL, 1uLL, *v68);
  }

  v75 = v4[1];
  v76 = v4[288];
  if (v75)
  {
    v75(*v4, " to %s (%s)", v4[288], v188);
  }

  else
  {
    fprintf(*v68, " to %s (%s)", v4[288], v188);
  }

  if (*v53)
  {
    v77 = v4[1];
    if (v77)
    {
      v77(*v4, " from %s", *v53);
    }

    else
    {
      fprintf(*v68, " from %s", *v53);
    }
  }

  v78 = v4[1];
  v79 = v4[429];
  v80 = *(v4 + 842) + 8 * (*(v4 + 851) == 17);
  if (v78)
  {
    v78(*v4, ", %lu hops max, %lu byte packets\n", v4[429], v80);
  }

  else
  {
    fprintf(*v68, ", %lu hops max, %lu byte packets\n", v4[429], v80);
  }

  fflush(*v68);
  v81 = *(v4 + 846);
  if (v81 >= 2)
  {
    v82 = v4[1];
    if (v82)
    {
      v82(*v4, "Skipping %d intermediate hops\n", v81 - 1);
    }

    else
    {
      printf("Skipping %d intermediate hops\n", v81 - 1);
    }
  }

  if (connect(*(v4 + 844), (v4 + 60), 0x1Cu))
  {
    v83 = v4[1];
    if (v83)
    {
      v84 = *v4;
      v85 = __error();
      v86 = strerror(*v85);
      v83(v84, "connect: %s\n", v86);
    }

    else
    {
      v89 = *v68;
      v90 = __error();
      v91 = strerror(*v90);
      fprintf(v89, "connect: %s\n", v91);
    }

    goto LABEL_40;
  }

  interface_for_ipv6_address = get_interface_for_ipv6_address((v4 + 4), v4 + 2320, 0x10uLL);
  v4[289] = interface_for_ipv6_address;
  if (*(v4 + 851) == 6)
  {
    if (!interface_for_ipv6_address)
    {
      traceroute6_run_cold_1(v4 + 287);
    }

    pcap_on_interface_0 = create_pcap_on_interface_0(v4, interface_for_ipv6_address);
  }

  else
  {
    pcap_on_interface_0 = 0;
  }

  v92 = *(v4 + 846);
  if (v4[429] >= v92)
  {
    v194 = 0;
    v195 = 0;
    v196 = 0;
    while (1)
    {
      v191 = v92;
      bzero(&buf, 0x8B8uLL);
      buf.ai_flags = 30;
      buf.ai_socktype = v191;
      v208 = v4 + 292;
      v93 = v4[1];
      if (v93)
      {
        v93(*v4, "%2d ", v191);
      }

      else
      {
        printf("%2d ", v191);
      }

      v200 = 0uLL;
      if (v4[428])
      {
        break;
      }

      LODWORD(v189) = 0;
      v182 = 1;
LABEL_398:
      v183 = v4[1];
      if (v183)
      {
        v183(*v4, "\n");
      }

      else
      {
        putchar(10);
      }

      if (!v182 || v189 >= 1 && v189 >= (v4[428] + 1) >> 1)
      {
        goto LABEL_409;
      }

      v92 = v191 + 1;
      if (v4[429] < (v191 + 1))
      {
        goto LABEL_405;
      }
    }

    v189 = 0;
    v193 = 0;
LABEL_165:
    v199.tv_sec = 0;
    *&v199.tv_usec = 0;
    v198.tv_sec = 0;
    *&v198.tv_usec = 0;
    v197 = 0;
    gettimeofday(&v199, 0);
    send_probe6(v4, ++v194, v191);
    v192 = bswap32(v194) >> 16;
    while (1)
    {
      v94 = wait_for_reply6(v4, *(v4 + 843), pcap_on_interface_0, v44, &v197);
      if (!v94)
      {
LABEL_302:
        buf.ai_protocol = 1;
        v149 = v4[1];
        if (v149)
        {
          v149(*v4, " *");
        }

        else
        {
          printf(" *");
        }

        goto LABEL_305;
      }

      v95 = v94;
      gettimeofday(&v198, 0);
      v96 = v197;
      if (v197)
      {
        v97 = *(v4 + 849);
        if (v95 <= 0x3B)
        {
          if (v97)
          {
            v98 = v4[1];
            if (v98)
            {
              v99 = *v4;
              v100 = inet_ntop(30, v4 + 12, v212, 0x2Eu);
              v98(v99, "packet too short (%zd bytes) from %s\n", v95, v100);
            }

            else
            {
              inet_ntop(30, v4 + 12, v212, 0x2Eu);
              printf("packet too short (%zd bytes) from %s\n");
            }
          }

          goto LABEL_299;
        }

        if (v97 >= 2)
        {
          v105 = v4[1];
          if (v105)
          {
            v105(*v4, "tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", bswap32(*(v4 + 1752)) >> 16, bswap32(*(v4 + 1753)) >> 16, *(v4 + 877));
          }

          else
          {
            printf("tcp_packet_ok: th_sport %u th_dport %u th_seq %u\n", bswap32(*(v4 + 1752)) >> 16, bswap32(*(v4 + 1753)) >> 16, *(v4 + 877));
          }
        }

        if (*(v4 + 1683) == bswap32(*(v4 + 1753)) >> 16)
        {
          v121 = bswap32(*(v4 + 1752));
          v122 = v194;
          if (*(v4 + 855))
          {
            v122 = 0;
          }

          v123 = *(v4 + 849);
          if (v122 + *(v4 + 1682) == HIWORD(v121))
          {
            if (v123 >= 2)
            {
              v151 = v4[1];
              if (v151)
              {
                v151(*v4, "tcp_packet_ok: match\n");
              }

              else
              {
                puts("tcp_packet_ok: match");
              }
            }

LABEL_314:
            v152 = v4[12] == v200 && v4[13] == *(&v200 + 1);
            if (v152)
            {
              goto LABEL_352;
            }

            if (v193)
            {
              v153 = v4[1];
              if (v153)
              {
                v153(*v4, "\n   \n");
              }

              else
              {
                fwrite("\n   \n", 5uLL, 1uLL, *MEMORY[0x277D85E08]);
              }
            }

            msg_name = v44->msg_name;
            v155 = *(v44->msg_name + 12);
            v207[0] = *v44->msg_name;
            *(v207 + 12) = v155;
            if (getnameinfo(msg_name, msg_name->sa_len, v212, 0x401u, 0, 0, 2))
            {
              strcpy(v212, "invalid");
            }

            if (*(v4 + 854))
            {
              v156 = as_lookup(v4[431], v212, 30);
              buf.ai_family = v156;
              v157 = v4[1];
              if (v157)
              {
                v157(*v4, " [AS%u]", v156);
              }

              else
              {
                printf(" [AS%u]", v156);
              }
            }

            if (!*(v4 + 850))
            {
              v159 = *(v4 + 852);
              v160 = inetname6(msg_name, 0);
              strnlen(v160, 0x401uLL);
              __memcpy_chk();
              v161 = v4[1];
              if (v159)
              {
                if (v161)
                {
                  v162 = *v4;
                  v187 = v212;
                  v163 = " %s (%s)";
                  goto LABEL_337;
                }

                v187 = v212;
                printf(" %s (%s)");
              }

              else if (v161)
              {
                v162 = *v4;
                v163 = " %s";
LABEL_337:
                v161(v162, v163);
              }

              else
              {
                printf(" %s");
              }

              free(v160);
              goto LABEL_341;
            }

            strnlen(v212, 0x401uLL);
            __memcpy_chk();
            v158 = v4[1];
            if (v158)
            {
              v158(*v4, " %s", v212);
            }

            else
            {
              printf(" %s", v212);
            }

LABEL_341:
            if (*(v4 + 849))
            {
              v164 = v4[1];
              if (v164)
              {
                v165 = *v4;
                v166 = v4[25];
                if (v166)
                {
                  v167 = inet_ntop(30, v166, v212, 0x401u);
                }

                else
                {
                  v167 = "?";
                }

                v164(v165, " %zd bytes of data to %s", v95, v167);
              }

              else
              {
                v168 = v4[25];
                if (v168)
                {
                  v169 = inet_ntop(30, v168, v212, 0x401u);
                }

                else
                {
                  v169 = "?";
                }

                printf(" %zd bytes of data to %s", v95, v169);
              }
            }

            v200 = *(v4 + 6);
LABEL_352:
            v170 = v4[1];
            if (v170)
            {
              v171 = *v4;
              v172 = deltaT(&v199, &v198);
              v170(v171, "  %.3f ms", v172);
            }

            else
            {
              v173 = deltaT(&v199, &v198);
              printf("  %.3f ms", v173);
            }

            buf.ai_addr = COERCE_SOCKADDR_(deltaT(&v199, &v198));
            if (v96)
            {
              ++HIDWORD(v189);
              goto LABEL_305;
            }

            buf.ai_addrlen = v196;
            *(&buf.ai_addrlen + 1) = v195;
            if (v195 == 1)
            {
              v195 = 1;
              if (v196 > 1)
              {
                switch(v196)
                {
                  case 2:
                    LODWORD(v189) = v189 + 1;
                    v179 = v4[1];
                    if (v179)
                    {
                      v179(*v4, " !S");
                    }

                    else
                    {
                      printf(" !S");
                    }

                    v195 = 1;
                    v178 = 2;
                    break;
                  case 3:
                    LODWORD(v189) = v189 + 1;
                    v180 = v4[1];
                    if (v180)
                    {
                      v180(*v4, " !A");
                    }

                    else
                    {
                      printf(" !A");
                    }

                    v195 = 1;
                    v178 = 3;
                    break;
                  case 4:
                    if (*(v4 + 845) <= 1u)
                    {
                      v174 = v4[1];
                      if (v174)
                      {
                        v174(*v4, " !");
                      }

                      else
                      {
                        printf(" !");
                      }
                    }

                    ++HIDWORD(v189);
                    v195 = 1;
                    v178 = 4;
                    break;
                  default:
                    goto LABEL_305;
                }

                goto LABEL_396;
              }

              if (v196)
              {
                LODWORD(v189) = v189 + 1;
                v177 = v4[1];
                if (v177)
                {
                  v177(*v4, " !P");
                }

                else
                {
                  printf(" !P");
                }

                v195 = 1;
                v196 = 1;
              }

              else
              {
                LODWORD(v189) = v189 + 1;
                v181 = v4[1];
                if (v181)
                {
                  v181(*v4, " !N");
                }

                else
                {
                  printf(" !N");
                }

                v195 = 1;
                v196 = 0;
              }
            }

            else
            {
              if (v195 == 4 && v196 == 1)
              {
                v175 = v4[1];
                if (v175)
                {
                  v175(*v4, " !H");
                }

                else
                {
                  printf(" !H");
                }

                ++HIDWORD(v189);
                v195 = 4;
                v178 = 1;
LABEL_396:
                v196 = v178;
                goto LABEL_305;
              }

              if (v195 == 129)
              {
                if (*(v4 + 845) <= 1u)
                {
                  v176 = v4[1];
                  if (v176)
                  {
                    v176(*v4, " !");
                  }

                  else
                  {
                    printf(" !");
                  }
                }

                ++HIDWORD(v189);
                v195 = 129;
              }
            }

LABEL_305:
            v150 = v4[3];
            if (v150)
            {
              v150(v4[2], &buf);
            }

            else
            {
              fflush(*MEMORY[0x277D85E08]);
            }

            if (++v193 >= v4[428])
            {
              v182 = HIDWORD(v189) == 0;
              goto LABEL_398;
            }

            goto LABEL_165;
          }
        }

        else
        {
          v123 = *(v4 + 849);
        }

        if (v123 >= 2)
        {
          v102 = v4[1];
          if (v102)
          {
            v103 = *v4;
            v104 = "tcp_packet_ok: no match\n";
            goto LABEL_298;
          }

          puts("tcp_packet_ok: no match");
        }
      }

      else
      {
        v101 = v4[15];
        if (v95 > 7)
        {
          v106 = *v4[17];
          v4[25] = 0;
          v107 = *(v4 + 40);
          if (v107 < 0xC)
          {
            goto LABEL_225;
          }

          v108 = v4[19];
          if (!v108)
          {
            goto LABEL_225;
          }

          v109 = 0;
          v110 = 0;
          v111 = v108 + v107;
          do
          {
            if (v108[1] == 41)
            {
              v112 = v108[2];
              v113 = *v108;
              if (v112 == 47)
              {
                if (v113 == 16)
                {
                  v110 = (v108 + 3);
                }
              }

              else if (v112 == 46 && v113 == 32)
              {
                v109 = v108 + 3;
                v4[25] = v108 + 3;
              }
            }

            else
            {
              v113 = *v108;
            }

            v108 = (v108 + ((v113 + 3) & 0x1FFFFFFFCLL));
          }

          while ((v108 + 3) <= v111);
          if (v109 && v110)
          {
            v114 = *v110;
          }

          else
          {
LABEL_225:
            warnx("failed to get received hop limit or packet info", v186, v187);
            v114 = 0;
          }

          *(v4 + 845) = v114;
          v195 = *v106;
          v196 = v106[1];
          if ((v195 != 3 || v106[1]) && v195 != 1)
          {
            if (v195 == 4)
            {
              if (v196 == 1)
              {
                goto LABEL_201;
              }

LABEL_261:
              if (!*(v4 + 849))
              {
                goto LABEL_299;
              }

              if (getnameinfo(v101, v101->sa_len, v212, 0x402u, 0, 0, 2))
              {
                strcpy(v212, "invalid");
              }

              v133 = v4[1];
              if (v133)
              {
                v134 = *v4;
                v135 = v4[25];
                if (v135)
                {
                  v136 = inet_ntop(30, v135, v211, 0x2Eu);
                }

                else
                {
                  v136 = "?";
                }

                v133(v134, "\n%zd bytes from %s to %s", v95, v212, v136);
              }

              else
              {
                v137 = v4[25];
                if (v137)
                {
                  v138 = inet_ntop(30, v137, v211, 0x2Eu);
                }

                else
                {
                  v138 = "?";
                }

                printf("\n%zd bytes from %s to %s", v95, v212, v138);
              }

              v139 = v4[1];
              if (v139)
              {
                v140 = *v4;
                v141 = pr_type6(v195);
                v139(v140, ": icmp type %d (%s) code %d\n", v195, v141, v196);
              }

              else
              {
                v142 = pr_type6(v195);
                printf(": icmp type %d (%s) code %d\n", v195, v142, v196);
              }

              if (v95 >= 1)
              {
                v143 = 0;
                v144 = v106 + 8;
                do
                {
                  if ((v143 & 0xF) == 0)
                  {
                    v145 = v4[1];
                    if (v145)
                    {
                      v145(*v4, "%04x:", v143);
                    }

                    else
                    {
                      printf("%04x:", v143);
                    }
                  }

                  if ((v143 & 3) == 0)
                  {
                    v146 = v4[1];
                    if (v146)
                    {
                      v146(*v4, " ");
                    }

                    else
                    {
                      putchar(32);
                    }
                  }

                  v147 = v4[1];
                  if (v147)
                  {
                    v147(*v4, "%02x", v144[v143]);
                  }

                  else
                  {
                    printf("%02x", v144[v143]);
                  }

                  if ((v143 & 0xF) == 0xF)
                  {
                    v148 = v4[1];
                    if (v148)
                    {
                      v148(*v4, "\n");
                    }

                    else
                    {
                      putchar(10);
                    }
                  }

                  ++v143;
                }

                while (v95 != v143);
              }

              if ((v95 & 0xF) == 0)
              {
                goto LABEL_299;
              }

              v102 = v4[1];
              if (!v102)
              {
                putchar(10);
                goto LABEL_299;
              }

              v103 = *v4;
              v104 = "\n";
              goto LABEL_298;
            }

            if (v195 != 129 || *(v4 + 851) != 58 || *(v106 + 2) != *(v4 + 1683))
            {
              goto LABEL_261;
            }

            v124 = *(v106 + 3);
LABEL_249:
            if (v124 == v192)
            {
              goto LABEL_314;
            }

            goto LABEL_261;
          }

LABEL_201:
          uphdr = get_uphdr(v4, (v106 + 8), &v106[v95]);
          if (!uphdr)
          {
            if (*(v4 + 849))
            {
              warnx("failed to get upper layer header");
            }

            goto LABEL_299;
          }

          v116 = uphdr;
          if (*(v4 + 853))
          {
            v117 = (*(v106 + 2) >> 12) & 3;
            if (v117 != (*v190 & 3))
            {
              if (v117)
              {
                if (v117 != 3)
                {
                  goto LABEL_236;
                }

                v118 = v4[1];
                if (!v118)
                {
                  printf(" (ecn=mangled)");
                  goto LABEL_236;
                }

                v119 = *v4;
                v120 = " (ecn=mangled)";
              }

              else
              {
                v118 = v4[1];
                if (!v118)
                {
                  printf(" (ecn=bleached)");
                  goto LABEL_236;
                }

                v119 = *v4;
                v120 = " (ecn=bleached)";
              }

LABEL_233:
              v118(v119, v120);
              goto LABEL_236;
            }

            v118 = v4[1];
            if (v118)
            {
              v119 = *v4;
              v120 = " (ecn=passed)";
              goto LABEL_233;
            }

            printf(" (ecn=passed)");
          }

LABEL_236:
          v125 = *(v4 + 851);
          if (v125 > 57)
          {
            if (v125 == 58)
            {
              if (v116[2] != *(v4 + 1683))
              {
                goto LABEL_261;
              }

              v124 = v116[3];
              goto LABEL_249;
            }

            if (v125 == 59)
            {
              goto LABEL_314;
            }
          }

          else
          {
            if (v125 == 6)
            {
              v129 = *v116;
              if (v129 == bswap32(*(v4 + 1683)) >> 16)
              {
                v130 = v116[1];
                v131 = v194;
                if (*(v4 + 855))
                {
                  v131 = 0;
                }

                if (v130 == bswap32(v131 + *(v4 + 1682)) >> 16 && *(v116 + 1) == (v130 | (v129 << 16)))
                {
                  goto LABEL_314;
                }
              }

              goto LABEL_261;
            }

            if (v125 == 17)
            {
              v126 = *(v4 + 855);
              v127 = v194;
              if (!v126)
              {
                v127 = 0;
              }

              if (*v116 == bswap32(v127 + *(v4 + 1683)) >> 16)
              {
                v152 = v126 == 0;
                v128 = v194;
                if (!v152)
                {
                  v128 = 0;
                }

                if (v116[1] == bswap32(*(v4 + 1682) + v128) >> 16)
                {
                  goto LABEL_314;
                }
              }

              goto LABEL_261;
            }
          }

          v132 = v4[1];
          if (v132)
          {
            v132(*v4, "Unknown probe proto %d.\n", *(v4 + 851));
          }

          else
          {
            fprintf(*MEMORY[0x277D85DF8], "Unknown probe proto %d.\n", *(v4 + 851));
          }

          goto LABEL_261;
        }

        if (*(v4 + 849))
        {
          if (getnameinfo(v4[15], v101->sa_len, v213, 0x401u, 0, 0, 2))
          {
            strcpy(v213, "invalid");
          }

          v102 = v4[1];
          if (v102)
          {
            v103 = *v4;
            v186 = v95;
            v187 = v213;
            v104 = "data too short (%zd bytes) from %s\n";
LABEL_298:
            v102(v103, v104);
            goto LABEL_299;
          }

          printf("data too short (%zd bytes) from %s\n");
        }
      }

LABEL_299:
      if (deltaT(&v199, &v198) > (1000 * v4[430]))
      {
        goto LABEL_302;
      }
    }
  }

LABEL_405:
  if (*(v4 + 854))
  {
    as_shutdown(v4[431]);
  }

  v184 = otherLogHandle;
  v185 = os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v185)
  {
    LOWORD(buf.ai_flags) = 0;
    _os_log_impl(&dword_23255B000, v184, OS_LOG_TYPE_DEFAULT, "TR: end traceroute6_run\n", &buf, 2u);
LABEL_409:
    result = 0;
  }

LABEL_46:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

char *get_interface_for_ipv6_address(uint64_t a1, char *a2, size_t a3)
{
  v12 = 0;
  if (getifaddrs(&v12))
  {
    get_interface_for_ipv6_address_cold_1();
  }

  v6 = v12;
  if (!v12)
  {
    return 0;
  }

  while (1)
  {
    ifa_addr = v6->ifa_addr;
    if (ifa_addr->sa_family == 30 && *(a1 + 24) == *&ifa_addr[1].sa_data[6])
    {
      v9 = *&ifa_addr->sa_data[6];
      v8 = *&ifa_addr[1].sa_len;
      if (*(a1 + 8) == v9 && *(a1 + 16) == v8)
      {
        break;
      }
    }

    v6 = v6->ifa_next;
    if (!v6)
    {
      return 0;
    }
  }

  snprintf(a2, a3, "%s", v6->ifa_name);
  return a2;
}

pcap_t *create_pcap_on_interface_0(uint64_t a1, char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *&v8.bf_len = 0;
  v8.bf_insns = 0;
  v3 = pcap_create(a2, create_pcap_on_interface_ebuf_0);
  if (!v3)
  {
    errx(71, "pcap_open_live(%s) failed: %s");
  }

  v4 = v3;
  if (pcap_set_snaplen(v3, 0xFFFF) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_snaplen(%s, %d) failed: %s");
  }

  if (pcap_set_immediate_mode(v4, 1) < 0)
  {
    pcap_geterr(v4);
    errx(71, "pcap_set_immediate_mode(%s, %d) failed: %s");
  }

  if (pcap_setnonblock(v4, 1, create_pcap_on_interface_ebuf_0))
  {
    create_pcap_on_interface_cold_1_0();
  }

  if (pcap_set_buffer_size(v4, 0xFFFF))
  {
    create_pcap_on_interface_cold_2_0();
  }

  if (pcap_activate(v4) < 0)
  {
    create_pcap_on_interface_cold_5_0();
  }

  inet_ntop(30, (a1 + 68), v10, 0x2Eu);
  inet_ntop(30, (a1 + 40), v9, 0x2Eu);
  snprintf(create_pcap_on_interface_filter_str_0, 0x400uLL, "tcp and src %s and dst %s", v10, v9);
  if (pcap_compile(v4, &v8, create_pcap_on_interface_filter_str_0, 1, 0xFFFFFFFF))
  {
    create_pcap_on_interface_cold_3_0(v4);
  }

  if (pcap_setfilter(v4, &v8) < 0)
  {
    create_pcap_on_interface_cold_4(v4);
  }

  if (*(a1 + 3396) >= 2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v5(*a1, "# using pcap filter %s\n", create_pcap_on_interface_filter_str_0);
    }

    else
    {
      printf("# using pcap filter %s\n", create_pcap_on_interface_filter_str_0);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t send_probe6(void *a1, unsigned int a2, int a3)
{
  v22 = a3;
  if (setsockopt(*(a1 + 844), 41, 4, &v22, 4u) < 0)
  {
    perror("setsockopt IPV6_UNICAST_HOPS");
  }

  v5 = *(a1 + 851);
  if (v5 > 57)
  {
    if (v5 == 59)
    {
      goto LABEL_28;
    }

    if (v5 == 58)
    {
      v12 = a1[432];
      *v12 = 128;
      *(v12 + 4) = *(a1 + 1683);
      *(v12 + 6) = bswap32(a2) >> 16;
      goto LABEL_28;
    }
  }

  else
  {
    if (v5 == 6)
    {
      v6 = a1[432];
      v14 = *(a1 + 1683);
      *v6 = __rev16(v14);
      if (*(a1 + 855))
      {
        v15 = 0;
      }

      else
      {
        v15 = a2;
      }

      v16 = v15 + *(a1 + 1682);
      v6[1] = bswap32(v16) >> 16;
      *(v6 + 1) = bswap32(v14 | (v16 << 16));
      *(v6 + 2) = 0;
      *(v6 + 12) = v6[6] & 0xF | 0x50;
      *(v6 + 13) = 2;
      v6[8] = 0;
      v6[8] = tcp_chksum((a1 + 4), a1 + 60, a1[432], *(a1 + 842));
      if (*(a1 + 849) >= 2)
      {
        v17 = a1[1];
        if (v17)
        {
          v17(*a1, "\nTCP probe hops %d sport %u dport %u seq %u\n", v22, bswap32(*v6) >> 16, bswap32(v6[1]) >> 16, bswap32(*(v6 + 1)));
        }

        else
        {
          printf("\nTCP probe hops %d sport %u dport %u seq %u\n", v22, bswap32(*v6) >> 16, bswap32(v6[1]) >> 16, bswap32(*(v6 + 1)));
        }
      }

      goto LABEL_27;
    }

    if (v5 == 17)
    {
      v6 = a1[432];
      v7 = *(a1 + 855);
      v8 = v7 == 0;
      if (v7)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      *v6 = bswap32(v9 + *(a1 + 1683)) >> 16;
      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }

      v6[1] = bswap32(v10 + *(a1 + 1682)) >> 16;
      v11 = *(a1 + 842);
      *(v6 + 1) = bswap32(v11) >> 16;
      v6[3] = udp_cksum((a1 + 4), a1 + 60, v6, v11);
LABEL_27:
      *(a1 + 31) = v6[1];
LABEL_28:
      v19 = send(*(a1 + 844), a1[432], *(a1 + 842), 0);
      v20 = v19;
      if (v19 < 0)
      {
        perror("send");
      }

      else if (v19 == *(a1 + 842))
      {
        return 0;
      }

      v21 = a1[1];
      if (v21)
      {
        v21(*a1, "traceroute6: wrote %s %d chars, ret=%zd\n", a1[288], *(a1 + 842), v20);
      }

      else
      {
        printf("traceroute6: wrote %s %d chars, ret=%zd\n", a1[288], *(a1 + 842), v20);
      }

      fflush(*MEMORY[0x277D85E08]);
      return 0;
    }
  }

  v13 = a1[1];
  if (v13)
  {
    v13(*a1, "Unknown probe protocol %d.\n", *(a1 + 851));
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Unknown probe protocol %d.\n", *(a1 + 851));
  }

  return 0xFFFFFFFFLL;
}

ssize_t wait_for_reply6(ssize_t result, int a2, pcap_t *a3, msghdr *a4, _BYTE *a5)
{
  v9 = result;
  if (a3)
  {
    result = pcap_get_selectable_fd(a3);
    v10 = result;
  }

  else
  {
    v10 = -1;
  }

  if (v10 <= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v10;
  }

  if (v10 == -1)
  {
    v12 = a2;
  }

  else
  {
    v12 = v11;
  }

  v13 = (a2 + 1) >> 5;
  if (((a2 + 1) & 0x1F) != 0)
  {
    ++v13;
  }

  if (!v13 || (v34 = a4, v35 = a5, v14 = 4 * v13, (result = malloc_type_malloc(4 * v13, 0xF04AB1B7uLL)) == 0))
  {
    __break(1u);
    return result;
  }

  v15 = result;
  v38.tv_sec = 0;
  *&v38.tv_usec = 0;
  bzero(result, v14);
  v16 = 1 << a2;
  v17 = a2 >> 5;
  v18 = 1 << v10;
  v19 = v10 >> 5;
  while (1)
  {
    if (__darwin_check_fd_set_overflow(a2, v15, 0))
    {
      v15->fds_bits[v17] |= v16;
    }

    if (v10 != -1 && __darwin_check_fd_set_overflow(v10, v15, 0))
    {
      v15->fds_bits[v19] |= v18;
    }

    v38.tv_sec = v9[430];
    v38.tv_usec = 0;
    if (select(v12 + 1, v15, 0, 0, &v38) < 1)
    {
      goto LABEL_57;
    }

    if (__darwin_check_fd_set_overflow(a2, v15, 0) && (v15->fds_bits[v17] & v16) != 0)
    {
      v29 = recvmsg(*(v9 + 843), v34, 0);
      goto LABEL_58;
    }

    if (v10 == -1)
    {
      goto LABEL_57;
    }

    if (!__darwin_check_fd_set_overflow(v10, v15, 0))
    {
      goto LABEL_57;
    }

    if ((v15->fds_bits[v19] & v18) == 0)
    {
      goto LABEL_57;
    }

    v36 = 0;
    v37 = 0;
    if (pcap_next_ex(a3, &v37, &v36) != 1)
    {
      goto LABEL_57;
    }

    if (*(v9 + 849) >= 2)
    {
      v20 = v9[1];
      if (v20)
      {
        v20(*v9, "# got TCP packet %d bytes\n", v37->caplen);
      }

      else
      {
        printf("# got TCP packet %d bytes\n", v37->caplen);
      }

      dump_hex(v36, v37->caplen);
    }

    v21 = pcap_datalink(a3);
    if (v21 != 1)
    {
      break;
    }

    caplen = v37->caplen;
    if (caplen >= 0xE)
    {
      v25 = *(v36 + 6);
      if (v25 == 33024)
      {
        v23 = 18;
        goto LABEL_35;
      }

      if (v25 == 56710)
      {
        v23 = 14;
LABEL_35:
        if (v23 <= caplen)
        {
          goto LABEL_49;
        }

        v24 = v9[1];
        if (v24)
        {
          v24(*v9, "# hdrlen %d > caplen %u\n", v23, caplen);
        }

        else
        {
          printf("# hdrlen %d > caplen %u\n", v23, caplen);
        }
      }

      else
      {
        v26 = __rev16(v25);
        v27 = v9[1];
        if (v27)
        {
          v27(*v9, "# cannot process TCP packet with Ethernet type 0x%04x\n", v26);
        }

        else
        {
          printf("# cannot process TCP packet with Ethernet type 0x%04x\n", v26);
        }
      }
    }
  }

  if (v21 == 108)
  {
    caplen = v37->caplen;
    v23 = 4;
    goto LABEL_35;
  }

  if (v21 != 12)
  {
    v30 = v9[1];
    if (v30)
    {
      v31 = *v9;
      v32 = pcap_datalink(a3);
      v30(v31, "# cannot process TCP packet with data link %d\n", v32);
    }

    else
    {
      v33 = pcap_datalink(a3);
      printf("# cannot process TCP packet with data link %d\n", v33);
    }

LABEL_57:
    v29 = 0;
    goto LABEL_58;
  }

  v23 = 0;
  caplen = v37->caplen;
LABEL_49:
  v28 = caplen - v23;
  if (v28 >= 0xFFFF)
  {
    v29 = 0xFFFFLL;
  }

  else
  {
    v29 = v28;
  }

  memcpy(v9 + 433, &v36[v23], v29);
  *(v9 + 6) = *(v9 + 68);
  *(v9 + 44) = 7696;
  *v35 = 1;
LABEL_58:
  free(v15);
  return v29;
}

uint64_t udp_cksum(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = a4;
  v10 = 0;
  v9 = 0u;
  v8 = 0u;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  LODWORD(v10) = bswap32(a4);
  HIBYTE(v10) = 17;
  v7[1] = in_cksum(&v8, 0x28u);
  v7[0] = in_cksum(a3, v4);
  return in_cksum(v7, 4u) ^ 0xFFFF;
}

uint64_t tcp_chksum(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = a4;
  v10 = 0;
  v9 = 0u;
  v8 = 0u;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  LODWORD(v10) = bswap32(a4);
  HIBYTE(v10) = 6;
  v7[1] = in_cksum(&v8, 0x28u);
  v7[0] = in_cksum(a3, v4);
  return in_cksum(v7, 4u) ^ 0xFFFF;
}

uint64_t get_hoplim(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xC)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      do
      {
        if (v2[1] == 41)
        {
          v3 = *v2;
          if (v2[2] == 47 && v3 == 16)
          {
            return v2[3];
          }
        }

        else
        {
          v3 = *v2;
        }

        v2 = (v2 + ((v3 + 3) & 0x1FFFFFFFCLL));
      }

      while ((v2 + 3) <= *(a1 + 32) + v1);
    }
  }

  return 0xFFFFFFFFLL;
}

const char *pr_type6(unsigned __int8 a1)
{
  if (a1 <= 0x82u)
  {
    if (a1 <= 3u)
    {
      switch(a1)
      {
        case 1u:
          return "Destination Unreachable";
        case 2u:
          return "Packet Too Big";
        case 3u:
          return "Time Exceeded";
      }
    }

    else if (a1 > 0x80u)
    {
      if (a1 == 129)
      {
        return "Echo Reply";
      }

      if (a1 == 130)
      {
        return "Group Membership Query";
      }
    }

    else
    {
      if (a1 == 4)
      {
        return "Parameter Problem";
      }

      if (a1 == 128)
      {
        return "Echo Request";
      }
    }

    return "Unknown";
  }

  if (a1 <= 0x85u)
  {
    switch(a1)
    {
      case 0x83u:
        return "Group Membership Report";
      case 0x84u:
        return "Group Membership Reduction";
      case 0x85u:
        return "Router Solicitation";
    }

    return "Unknown";
  }

  if (a1 > 0x87u)
  {
    if (a1 == 136)
    {
      return "Neighbor Advertisement";
    }

    if (a1 == 137)
    {
      return "Redirect";
    }

    return "Unknown";
  }

  if (a1 == 134)
  {
    return "Router Advertisement";
  }

  else
  {
    return "Neighbor Solicitation";
  }
}

unsigned __int8 *get_uphdr(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a2 + 40);
  if (a2 + 40 <= a3)
  {
    v5 = *(a2 + 6);
    while (1)
    {
      if ((a3 - v3) < 8 * (v5 != 59))
      {
        return 0;
      }

      if (v5 <= 49)
      {
        if (v5 == 44)
        {
          v7 = 8;
          goto LABEL_20;
        }

        if (v5 == 6 || v5 == 17)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (v5 > 57)
      {
        break;
      }

      if (v5 != 51)
      {
        if (v5 == 50)
        {
          return 0;
        }

LABEL_18:
        v6 = 3;
        goto LABEL_19;
      }

      v6 = 2;
LABEL_19:
      v7 = (v3[1] << v6) + 8;
LABEL_20:
      v5 = *v3;
      v3 += v7;
    }

    if (v5 == 58)
    {
      goto LABEL_21;
    }

    if (v5 == 59)
    {
      v3 = &get_uphdr_none_hdr;
LABEL_21:
      if (*(a1 + 3404) == v5)
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    goto LABEL_18;
  }

  return 0;
}

char *inetname6(sockaddr *a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    goto LABEL_18;
  }

  if (gethostname(__s, 0x101uLL) || (v3 = strchr(__s, 46)) == 0)
  {
    __s[0] = 0;
  }

  else
  {
    strlen(v3 + 1);
    __memmove_chk();
  }

  if (getnameinfo(a1, a1->sa_len, __s1, 0x401u, 0, 0, 4))
  {
LABEL_18:
    if (getnameinfo(a1, a1->sa_len, __s1, 0x401u, 0, 0, 2))
    {
      __s1[0] = 105;
      v4 = 1u;
      do
      {
        __s1[v4] = aInvalid_0[v4];
        ++v4;
      }

      while (v4 != 8);
    }
  }

  else
  {
    v7 = strchr(__s1, 46);
    if (v7)
    {
      v8 = v7;
      if (!strcmp(v7 + 1, __s))
      {
        *v8 = 0;
      }
    }
  }

  result = strdup(__s1);
  if (!result)
  {
    __break(1u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23260413C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232605AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232606534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2326126B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2326145A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    v10 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(STACK[0x220]) = 138412290;
      STACK[0x224] = a10;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "exception caught while retrieving process hintLiveUsage: process = %@", &STACK[0x220], 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x232614548);
  }

  _Unwind_Resume(a1);
}

void sub_2326151C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23261629C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ls_application_unregistered_notification_callback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v6 = [a5 objectForKeyedSubscript:@"bundleIDs"];
    v7 = v6;
    if (v6 && [v6 count])
    {
      v8 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v19 = v7;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Unregistered bundle IDs received from kLSApplicationUnregisteredNotification: %{private}@", buf, 0xCu);
      }

      v9 = a2;
      if (v9)
      {
        v10 = dispatch_time(0, 5000000000);
        v11 = [v9 queue];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __ls_application_unregistered_notification_callback_block_invoke;
        v15[3] = &unk_27898A7D0;
        v16 = v9;
        v17 = v7;
        dispatch_after(v10, v11, v15);
      }

      else
      {
        v13 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "FlowAnalyticsEngine is nil, cannot handle kLSApplicationUnregisteredNotification", buf, 2u);
        }
      }
    }

    else
    {
      v12 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Received nil or zero bundleIDs from kLSApplicationUnregisteredNotification", buf, 2u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_23261D5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2326200F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232623860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__901(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_2326282A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_232628464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ls_application_unregistered_notification_callback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) handleLaunchServicesApplicationUnregistration:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

uint64_t InitializeDeftemplates(uint64_t a1)
{
  AllocateEnvironmentData(a1, 5u, 0x88uLL, DeallocateDeftemplateData);
  v2 = *(*(a1 + 48) + 40);
  v3 = unk_2847936F8;
  v2[5] = xmmword_2847936E8;
  v2[6] = v3;
  v2[7] = xmmword_284793708;
  v4 = unk_2847936B8;
  v2[1] = xmmword_2847936A8;
  v2[2] = v4;
  v5 = unk_2847936D8;
  v2[3] = xmmword_2847936C8;
  v2[4] = v5;
  InitializeFacts(a1);
  *(*(*(a1 + 48) + 40) + 8) = RegisterModuleItem(a1, "deftemplate", AllocateModule_0, ReturnModule_0, BloadDeftemplateModuleReference, 0, EnvFindDeftemplateInModule);
  AddPortConstructItem(a1, "deftemplate", 2);
  DeftemplateBasicCommands(a1);
  DeftemplateFunctions(a1);
  v6 = AddConstruct(a1, "deftemplate", "deftemplates", ParseDeftemplate, EnvFindDeftemplate, GetConstructNamePointer, GetConstructPPForm, GetConstructModuleItem, EnvGetNextDeftemplate, SetNextConstruct, EnvIsDeftemplateDeletable, EnvUndeftemplate, ReturnDeftemplate);
  v7 = *(a1 + 48);
  **(v7 + 40) = v6;
  v8 = *(v7 + 40) + 16;

  return InstallPrimitive(a1, v8, 63);
}

uint64_t DecrementDeftemplateBusyCount(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 48) + 336) + 4))
  {
    --*(a2 + 64);
  }

  return result;
}

uint64_t DeallocateDeftemplateData(uint64_t a1)
{
  result = Bloaded(a1);
  if (!result)
  {
    DoForAllConstructs(a1, DestroyDeftemplateAction, *(*(*(a1 + 48) + 40) + 8), 0, 0);
    result = EnvGetNextDefmodule(a1, 0);
    if (result)
    {
      v3 = result;
      do
      {
        ModuleItem = GetModuleItem(a1, v3, *(*(*(a1 + 48) + 40) + 8));
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

BOOL EnvIsDeftemplateDeletable(uint64_t a1, uint64_t a2)
{
  result = ConstructsDeletable(a1);
  if (result)
  {
    return *(a2 + 64) <= 0 && *(a2 + 72) == 0;
  }

  return result;
}

uint64_t ReturnDeftemplate(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(*(result + 48) + 40);
    *(v4 + 128) = 0;
    *(v4 + 128) = (*(a2 + 56) >> 1) & 1;
    v5 = *(a2 + 48);
    if (v5)
    {
      do
      {
        DecrementSymbolCount(v3, *v5);
        RemoveHashedExpression(v3, *(v5 + 24));
        *(v5 + 24) = 0;
        RemoveHashedExpression(v3, *(v5 + 32));
        *(v5 + 32) = 0;
        RemoveConstraint(v3, *(v5 + 16));
        *(v5 + 16) = 0;
        v5 = *(v5 + 40);
      }

      while (v5);
      v6 = *(a2 + 48);
    }

    else
    {
      v6 = 0;
    }

    ReturnSlots(v3, v6);
    result = DeinstallConstructHeader(v3, a2);
    v7 = *(v3 + 48);
    *(*(v7 + 472) + 32) = a2;
    **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 768);
    *(*(*(v7 + 472) + 40) + 768) = *(*(v7 + 472) + 32);
  }

  return result;
}

uint64_t ReturnSlots(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2[5];
      ReturnExpression(v3, v2[3]);
      ReturnExpression(v3, v2[4]);
      result = RemoveConstraint(v3, v2[2]);
      v5 = *(v3 + 48);
      *(*(v5 + 472) + 32) = v2;
      **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 384);
      *(*(*(v5 + 472) + 40) + 384) = *(*(v5 + 472) + 32);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t EnvGetNextFactInTemplate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = a2 + 80;
    return *v3;
  }

  if ((*(a3 + 64) & 1) == 0)
  {
    v3 = a3 + 96;
    return *v3;
  }

  return 0;
}

uint64_t *CreateDeftemplateScopeMap(uint64_t a1, void **a2)
{
  v12 = 0;
  v3 = (*a2)[3];
  v4 = *a2[2];
  v5 = GetNumberOfDefmodules(a1) / 8 + 1;
  v6 = gm2(a1, v5);
  ClearBitString(v6, v5);
  SaveCurrentModule(a1);
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v8 = NextDefmodule;
    do
    {
      EnvSetCurrentModule(a1, v8);
      v9 = *(v8 + 48);
      if (FindImportedConstruct(a1, "deftemplate", v4, v3, &v12, 1, 0))
      {
        *(v6 + v9 / 8) |= 1 << (v9 & 7);
      }

      v8 = EnvGetNextDefmodule(a1, v8);
    }

    while (v8);
  }

  RestoreCurrentModule(a1);
  v10 = EnvAddBitMap(a1, v6, v5);
  ++v10[1];
  rm(a1, v6, v5);
  return v10;
}

uint64_t DestroyDeftemplateAction(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 48);
    if (v4)
    {
      do
      {
        v5 = *(v4 + 40);
        v6 = *(result + 48);
        *(*(v6 + 472) + 32) = v4;
        **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 384);
        *(*(*(v6 + 472) + 40) + 384) = *(*(v6 + 472) + 32);
        v4 = v5;
      }

      while (v5);
    }

    DestroyFactPatternNetwork(result, *(a2 + 72));
    result = DeinstallConstructHeader(v3, a2);
    v7 = *(v3 + 48);
    *(*(v7 + 472) + 32) = a2;
    **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 768);
    *(*(*(v7 + 472) + 40) + 768) = *(*(v7 + 472) + 32);
  }

  return result;
}

void *AllocateModule_0(uint64_t a1)
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

uint64_t ReturnModule_0(uint64_t a1, uint64_t a2)
{
  result = FreeConstructHeaderModule(a1, a2, **(*(a1 + 48) + 40));
  v5 = *(a1 + 48);
  *(*(v5 + 472) + 32) = a2;
  **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 192);
  *(*(*(v5 + 472) + 40) + 192) = *(*(v5 + 472) + 32);
  return result;
}

void sub_23262C948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23262CCC4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    v18 = activityLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "Encountered exception when fetching NWActivity database stats: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x23262CC64);
  }

  _Unwind_Resume(a1);
}

void sub_23262E2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    v16 = activityLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *(v14 - 128) = 138412290;
      *(v14 - 124) = v15;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Encountered exception deleting all fragments: %@", (v14 - 128), 0xCu);
    }

    v17 = +[AWDAgent defaultInstance];
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2847AAC78 code:3601 userInfo:0];
    [v17 postMetricForSignificantEventWithName:@"AnalyticsEngineAllocationFailure" errorContext:3 error:v18 status:0];

    objc_end_catch();
    JUMPOUT(0x23262E248);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t InstallProcedurePrimitives(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x25u, 0x210uLL, DeallocateProceduralPrimitiveData);
  v2 = *(*(a1 + 48) + 296);
  v3 = xmmword_284793778;
  *(v2 + 120) = unk_284793788;
  v4 = unk_2847937A8;
  *(v2 + 136) = xmmword_284793798;
  *(v2 + 152) = v4;
  *(v2 + 168) = xmmword_2847937B8;
  v5 = unk_284793768;
  *(v2 + 72) = xmmword_284793758;
  *(v2 + 88) = v5;
  *(v2 + 104) = v3;
  v6 = *(*(a1 + 48) + 296);
  v7 = unk_2847937F8;
  *(v6 + 216) = xmmword_2847937E8;
  *(v6 + 232) = v7;
  v8 = unk_284793818;
  *(v6 + 248) = xmmword_284793808;
  v9 = xmmword_284793828;
  *(v6 + 264) = v8;
  *(v6 + 280) = v9;
  v10 = unk_2847937D8;
  *(v6 + 184) = xmmword_2847937C8;
  *(v6 + 200) = v10;
  v11 = (*(*(a1 + 48) + 296) + 296);
  v12 = unk_284793888;
  v11[4] = xmmword_284793878;
  v11[5] = v12;
  v11[6] = xmmword_284793898;
  v13 = unk_284793848;
  *v11 = xmmword_284793838;
  v11[1] = v13;
  v14 = unk_284793868;
  v11[2] = xmmword_284793858;
  v11[3] = v14;
  v15 = (*(*(a1 + 48) + 296) + 408);
  v16 = unk_2847938F8;
  v15[4] = xmmword_2847938E8;
  v15[5] = v16;
  v15[6] = xmmword_284793908;
  v17 = unk_2847938B8;
  *v15 = xmmword_2847938A8;
  v15[1] = v17;
  v18 = unk_2847938D8;
  v15[2] = xmmword_2847938C8;
  v15[3] = v18;
  InstallPrimitive(a1, *(*(a1 + 48) + 296) + 72, 95);
  InstallPrimitive(a1, *(*(a1 + 48) + 296) + 184, 96);
  InstallPrimitive(a1, *(*(a1 + 48) + 296) + 296, 97);
  InstallPrimitive(a1, *(*(a1 + 48) + 296) + 408, 98);
  *(*(*(a1 + 48) + 296) + 520) = -1;
  Multifield2 = CreateMultifield2(a1, 0);
  v20 = *(a1 + 48);
  **(v20 + 296) = Multifield2;
  v21 = **(v20 + 296);

  return MultifieldInstall(a1, v21);
}

uint64_t RtnProcParam(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(a1 + 48) + 296) + 8) + 48 * **(a2 + 24);
  *(a3 + 8) = *(v3 - 40);
  *(a3 + 16) = *(v3 - 32);
  *(a3 + 24) = *(v3 - 24);
  return 1;
}

uint64_t GetProcBind(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v6 = *(*(*(a1 + 48) + 296) + 56) + 48 * (*v5 >> 1);
  v7 = *(v6 - 48);
  if (v7 == EnvTrueSymbol(a1))
  {
    *(a3 + 8) = *(v6 - 40);
    *(a3 + 16) = *(v6 - 32);
    v10 = *(v6 - 24);
LABEL_5:
    *(a3 + 24) = v10;
    return 1;
  }

  v8 = *(a1 + 48);
  v9 = *(*(**(v8 + 352) + 16) + 24);
  if (v9)
  {
    EvaluateExpression(a1, v9, a3);
    return 1;
  }

  v11 = *v5;
  if (v11 >> 17)
  {
    v12 = v11 >> 17;
    if ((v11 & 0x10000) != 0)
    {
      GrabProcWildargs(a1, a3, v12);
      return 1;
    }

    v13 = *(*(v8 + 296) + 8) + 48 * v12;
    *(a3 + 8) = *(v13 - 40);
    *(a3 + 16) = *(v13 - 32);
    v10 = *(v13 - 24);
    goto LABEL_5;
  }

  PrintErrorID(a1, "PRCCODE", 5, 0);
  SetEvaluationError(a1, 1);
  EnvPrintRouter(a1, "werror", "Variable ");
  EnvPrintRouter(a1, "werror", *(*(*(**(*(a1 + 48) + 352) + 16) + 8) + 24));
  if (*(*(*(a1 + 48) + 296) + 64))
  {
    EnvPrintRouter(a1, "werror", " unbound in ");
    (*(*(*(a1 + 48) + 296) + 64))(a1);
  }

  else
  {
    EnvPrintRouter(a1, "werror", " unbound.\n");
  }

  *(a3 + 8) = 2;
  *(a3 + 16) = EnvFalseSymbol(a1);
  return 1;
}

uint64_t PutProcBind(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(*(v5 + 296) + 56) + 48 * **(a2 + 24);
  v7 = (v6 - 48);
  v8 = *(**(v5 + 352) + 16);
  if (v8)
  {
    if (*(v8 + 24))
    {
      StoreInMultifield(a1, a3, v8, 1);
    }

    else
    {
      EvaluateExpression(a1, v8, a3);
    }

    v10 = *v7;
    if (v10 == EnvTrueSymbol(a1))
    {
      ValueDeinstall(a1, v6 - 48);
    }

    *(v6 - 48) = EnvTrueSymbol(a1);
    *(v6 - 40) = *(a3 + 8);
    *(v6 - 32) = *(a3 + 16);
    *(v6 - 24) = *(a3 + 24);
    ValueInstall(a1, v6 - 48);
  }

  else
  {
    v9 = *v7;
    if (v9 == EnvTrueSymbol(a1))
    {
      ValueDeinstall(a1, v7);
    }

    *v7 = EnvFalseSymbol(a1);
    *(a3 + 8) = 2;
    *(a3 + 16) = EnvFalseSymbol(a1);
  }

  return 1;
}

uint64_t DeallocateProceduralPrimitiveData(uint64_t a1)
{
  result = ReturnMultifield(a1, **(*(a1 + 48) + 296));
  v3 = *(a1 + 48);
  v4 = *(v3 + 296);
  v5 = *(v4 + 8);
  if (v5)
  {
    result = rm(a1, v5, 48 * *(v4 + 16));
    v3 = *(a1 + 48);
    v4 = *(v3 + 296);
  }

  v6 = *(v4 + 48);
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7 != *v4)
    {
      result = ReturnMultifield(a1, v7);
      v3 = *(a1 + 48);
      v6 = *(*(v3 + 296) + 48);
    }

    *(*(v3 + 472) + 32) = v6;
    **(*(v3 + 472) + 32) = *(*(*(v3 + 472) + 40) + 384);
    *(*(*(v3 + 472) + 40) + 384) = *(*(v3 + 472) + 32);
    v4 = *(*(a1 + 48) + 296);
  }

  v8 = *(v4 + 32);
  if (v8)
  {
    result = rm(a1, v8, 32 * *(v4 + 16));
    v4 = *(*(a1 + 48) + 296);
  }

  v9 = *(v4 + 40);
  if (v9)
  {
    do
    {
      v10 = *(v9 + 40);
      if (*v9)
      {
        result = rm(a1, *v9, 48 * *(v9 + 16));
      }

      v11 = *(v9 + 8);
      if (v11)
      {
        result = rm(a1, v11, 32 * *(v9 + 16));
      }

      v12 = *(v9 + 24);
      v13 = *(a1 + 48);
      if (v12)
      {
        v14 = *(v12 + 16);
        if (v14 != **(v13 + 296))
        {
          result = ReturnMultifield(a1, v14);
          v12 = *(v9 + 24);
          v13 = *(a1 + 48);
        }

        *(*(v13 + 472) + 32) = v12;
        **(*(v13 + 472) + 32) = *(*(*(v13 + 472) + 40) + 384);
        *(*(*(v13 + 472) + 40) + 384) = *(*(v13 + 472) + 32);
        v13 = *(a1 + 48);
      }

      *(*(v13 + 472) + 32) = v9;
      **(*(v13 + 472) + 32) = *(*(*(v13 + 472) + 40) + 384);
      *(*(*(v13 + 472) + 40) + 384) = *(*(v13 + 472) + 32);
      v9 = v10;
    }

    while (v10);
  }

  return result;
}

uint64_t ParseProcParameters(char *a1, char *a2, unsigned __int16 *a3, uint64_t a4, void *a5, int *a6, int *a7, _DWORD *a8, unsigned int (*a9)(char *, void))
{
  v11 = a4;
  *a5 = 0;
  *a6 = 0;
  *a8 = 1;
  if (a4)
  {
    v15 = *a6;
    v16 = a4;
    do
    {
      v17 = v16;
      ++v15;
      v16 = *(v16 + 24);
    }

    while (v16);
    *a6 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (*a3 != 170)
  {
    goto LABEL_30;
  }

  GetToken(a1, a2, a3);
  for (i = 1; ; i = 0)
  {
    v19 = *a3;
    if ((v19 - 35) >= 2)
    {
      break;
    }

    if (v11)
    {
      v20 = v11;
      while (*(v20 + 8) != *(a3 + 1))
      {
        v20 = *(v20 + 24);
        if (!v20)
        {
          goto LABEL_13;
        }
      }

      PrintErrorID(a1, "PRCCODE", 7, 0);
      v25 = "Duplicate parameter names not allowed.\n";
      goto LABEL_24;
    }

LABEL_13:
    if (*a5)
    {
      PrintErrorID(a1, "PRCCODE", 8, 0);
      v25 = "No parameters allowed after wildcard parameter.\n";
LABEL_24:
      EnvPrintRouter(a1, "werror", v25);
      goto LABEL_31;
    }

    v21 = *(a3 + 1);
    if (a9)
    {
      if (a9(a1, *(v21 + 24)))
      {
        goto LABEL_31;
      }

      LOWORD(v19) = *a3;
      v21 = *(a3 + 1);
    }

    v22 = GenConstant(a1, v19, v21);
    v23 = v22;
    if (*a3 == 36)
    {
      *a5 = *(a3 + 1);
    }

    else
    {
      ++*a6;
    }

    v24 = v22;
    if (v17)
    {
      v17[3] = v22;
      v24 = v11;
    }

    SavePPBuffer(a1, " ");
    GetToken(a1, a2, a3);
    v11 = v24;
    v17 = v23;
  }

  if (v19 == 171)
  {
    if ((i & 1) == 0)
    {
      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, ")");
    }

    *a8 = 0;
    if (*a5)
    {
      v26 = -1;
    }

    else
    {
      v26 = *a6;
    }

    *a7 = v26;
  }

  else
  {
LABEL_30:
    SyntaxErrorMessage(a1, "parameter list");
LABEL_31:
    ReturnExpression(a1, v11);
    return 0;
  }

  return v11;
}

void *ParseProcActions(uint64_t a1, char *a2, char *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, unsigned int (*a7)(uint64_t, __int16 *, uint64_t), uint64_t (*a8)(uint64_t, void *, uint64_t), _DWORD *a9, uint64_t a10)
{
  ClearParsedBindNames(a1);
  v18 = GroupActions(a1, a3, a4, 1, 0, 0);
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  if (a8 && ReplaceProcBinds(a1, v18, a8, a10) || (*a9 = CountParsedBindNames(a1), ReplaceProcVars(a1, a2, v19, a5, a6, a7, a10)))
  {
    ClearParsedBindNames(a1);
    ReturnExpression(a1, v19);
    return 0;
  }

  v21 = *(v19 + 16);
  if (v21)
  {
    if (!*(v21 + 24))
    {
      v22 = *(a1 + 48);
      *(*(v22 + 472) + 32) = v19;
      **(*(v22 + 472) + 32) = *(*(*(v22 + 472) + 40) + 256);
      *(*(*(v22 + 472) + 40) + 256) = *(*(v22 + 472) + 32);
      v19 = v21;
    }
  }

  else
  {
    *v19 = 2;
    *(v19 + 8) = EnvFalseSymbol(a1);
  }

  v23 = PackExpression(a1, v19);
  ReturnExpression(a1, v19);
  ClearParsedBindNames(a1);
  return v23;
}

uint64_t ReplaceProcBinds(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void *, uint64_t), uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  while (1)
  {
    v8 = v6[2];
    if (v8)
    {
      if (ReplaceProcBinds(a1, v8, a3, a4))
      {
        return 1;
      }

      v9 = v6[1];
      if (v9 == FindFunction(a1, "bind"))
      {
        v10 = v6[2];
        if (*v10 == 2)
        {
          v11 = *(v10 + 8);
          v12 = a3(a1, v6, a4);
          if (v12 == 1)
          {
            RemoveParsedBindName(a1, v11);
            goto LABEL_11;
          }

          if (v12 == -1)
          {
            return 1;
          }
        }
      }
    }

LABEL_11:
    v6 = v6[3];
    if (!v6)
    {
      return 0;
    }
  }
}

uint64_t ReplaceProcVars(uint64_t a1, char *a2, __int16 *a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(uint64_t, __int16 *, uint64_t), uint64_t a7)
{
  if (!a3)
  {
    return 0;
  }

  v11 = a3;
  v35 = 0;
  v34 = 0;
  while (1)
  {
    v14 = *v11;
    if (v14 == 33)
    {
      if (!ReplaceGlobalVariable(a1, v11))
      {
        return 0xFFFFFFFFLL;
      }

LABEL_29:
      if (!a6)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (v14 != 35)
    {
      goto LABEL_29;
    }

    v15 = *(v11 + 1);
    v16 = 1;
    if (a4)
    {
      v17 = a4;
      while (*(v17 + 8) != v15)
      {
        ++v16;
        v17 = *(v17 + 24);
        if (!v17)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (v15 != a5)
      {
        v16 = 0;
      }
    }

    HIDWORD(v35) = v16;
    v18 = SearchParsedBindNames(a1, v15);
    LODWORD(v35) = v18;
    if (__PAIR64__(HIDWORD(v35), v18))
    {
      break;
    }

    if (!a6 || a6(a1, v11, a7) != 1)
    {
      v31 = 1;
      PrintErrorID(a1, "PRCCODE", 3, 1);
      EnvPrintRouter(a1, "werror", "Undefined variable ");
      EnvPrintRouter(a1, "werror", *(v15 + 24));
      EnvPrintRouter(a1, "werror", " referenced in ");
      EnvPrintRouter(a1, "werror", a2);
      EnvPrintRouter(a1, "werror", ".\n");
      return v31;
    }

LABEL_30:
    if (a6(a1, v11, a7) == -1)
    {
      return 1;
    }

LABEL_31:
    v23 = *(v11 + 2);
    if (v23)
    {
      if (ReplaceProcVars(a1, a2, v23, a4, a5, a6, a7))
      {
        return 1;
      }

      v24 = *(v11 + 1);
      if (v24 == FindFunction(a1, "bind"))
      {
        v25 = *(v11 + 2);
        if (*v25 == 2)
        {
          *v11 = 98;
          LODWORD(v35) = SearchParsedBindNames(a1, *(v25 + 8));
          *(v11 + 1) = EnvAddBitMap(a1, &v35, 4u);
          v26 = *(v11 + 2);
          v27 = *(v26 + 24);
          v28 = *(a1 + 48);
          *(*(v28 + 472) + 32) = v26;
          **(*(v28 + 472) + 32) = *(*(*(v28 + 472) + 40) + 256);
          *(*(*(v28 + 472) + 40) + 256) = *(*(v28 + 472) + 32);
          *(v11 + 2) = v27;
        }
      }
    }

    v11 = *(v11 + 3);
    if (!v11)
    {
      return 0;
    }
  }

  if (SHIDWORD(v35) >= 1 && v18 == 0)
  {
    if (v15 == a5)
    {
      v22 = 96;
    }

    else
    {
      v22 = 95;
    }

    *v11 = v22;
    *(v11 + 1) = EnvAddBitMap(a1, &v35 + 4, 4u);
    goto LABEL_29;
  }

  if (!a6)
  {
    v20 = 0;
    goto LABEL_40;
  }

  v20 = GenConstant(a1, *v11, *(v11 + 1));
  v21 = a6(a1, v20, a7);
  if (!v21)
  {
    v29 = *(a1 + 48);
    *(*(v29 + 472) + 32) = v20;
    v20 = 0;
    **(*(v29 + 472) + 32) = *(*(*(v29 + 472) + 40) + 256);
    *(*(*(v29 + 472) + 40) + 256) = *(*(v29 + 472) + 32);
LABEL_40:
    *v11 = 97;
    ClearBitString(&v34, 4u);
    v34 = v34 & 1 | (2 * (v35 & 0x7FFF)) | (HIDWORD(v35) << 17) | ((v15 == a5) << 16);
    *(v11 + 1) = EnvAddBitMap(a1, &v34, 4u);
    v30 = GenConstant(a1, 2, v15);
    *(v11 + 2) = v30;
    v30[3] = v20;
    if (!a6)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v21 != -1)
  {
    goto LABEL_40;
  }

  v32 = *(a1 + 48);
  *(*(v32 + 472) + 32) = v20;
  **(*(v32 + 472) + 32) = *(*(*(v32 + 472) + 40) + 256);
  *(*(*(v32 + 472) + 40) + 256) = *(*(v32 + 472) + 32);
  return 1;
}

void *GenProcWildcardReference(uint64_t a1, int a2)
{
  v5 = a2;
  v3 = EnvAddBitMap(a1, &v5, 4u);
  return GenConstant(a1, 96, v3);
}

uint64_t PushProcParameters(uint64_t result, uint64_t a2, int a3, char *a4, char *a5, uint64_t a6)
{
  v11 = result;
  v12 = *(result + 48);
  v13 = *(v12 + 472);
  v14 = *(*(v13 + 40) + 384);
  if (v14)
  {
    *(v13 + 32) = v14;
    *(*(*(v12 + 472) + 40) + 384) = **(*(v12 + 472) + 32);
    v15 = *(result + 48);
    v16 = *(v15[59] + 32);
  }

  else
  {
    result = genalloc(result, 0x30uLL);
    v16 = result;
    v15 = *(v11 + 48);
  }

  *v16 = *(v15[37] + 8);
  v17 = v15[37];
  *(v16 + 16) = *(v17 + 16);
  *(v16 + 32) = *(v17 + 64);
  *(v16 + 40) = *(v15[37] + 40);
  *(v15[37] + 40) = v16;
  memset(v26, 0, sizeof(v26));
  if (a3)
  {
    result = gm2(v11, 48 * a3);
    v18 = result;
    if (a2)
    {
      v19 = (result + 24);
      while (1)
      {
        result = EvaluateExpression(v11, a2, v26);
        if (result == 1 || WORD4(v26[0]) == 175)
        {
          break;
        }

        *(v19 - 8) = WORD4(v26[0]);
        *(v19 - 1) = *&v26[1];
        *v19 = *(&v26[1] + 8);
        v19 += 3;
        a2 = *(a2 + 24);
        if (!a2)
        {
          goto LABEL_10;
        }
      }

      if (WORD4(v26[0]) == 175)
      {
        PrintErrorID(v11, "PRCCODE", 2, 0);
        EnvPrintRouter(v11, "werror", "Functions without a return value are illegal as ");
        EnvPrintRouter(v11, "werror", a5);
        EnvPrintRouter(v11, "werror", " arguments.\n");
        SetEvaluationError(v11, 1);
      }

      PrintErrorID(v11, "PRCCODE", 6, 0);
      EnvPrintRouter(v11, "werror", "This error occurred while evaluating arguments ");
      EnvPrintRouter(v11, "werror", "for the ");
      EnvPrintRouter(v11, "werror", a5);
      EnvPrintRouter(v11, "werror", " ");
      EnvPrintRouter(v11, "werror", a4);
      EnvPrintRouter(v11, "werror", ".\n");
      result = rm(v11, v18, 48 * a3);
      v15 = *(v11 + 48);
    }

    else
    {
LABEL_10:
      v15 = *(v11 + 48);
      v20 = v15[37];
      *(v20 + 16) = a3;
      *(v20 + 8) = v18;
    }
  }

  else
  {
    *(v15[37] + 8) = 0;
    *(v15[37] + 16) = 0;
  }

  v21 = v15[37];
  if (*(v15[44] + 8))
  {
    v22 = *(v21 + 40);
    *(v21 + 40) = *(v22 + 40);
    *(v15[59] + 32) = v22;
    **(v15[59] + 32) = *(*(v15[59] + 40) + 384);
    v23 = v15[59];
    a6 = *(v23 + 32);
    v24 = (v23 + 40);
    v25 = 384;
  }

  else
  {
    v24 = v15 + 37;
    *(v16 + 8) = *(v21 + 32);
    *(*v24 + 32) = 0;
    *(v16 + 24) = *(*v24 + 48);
    *(*v24 + 48) = 0;
    v25 = 64;
  }

  *(*v24 + v25) = a6;
  return result;
}

uint64_t PopProcParameters(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  v3 = *(v2 + 296);
  v4 = *(v3 + 8);
  if (v4)
  {
    result = rm(result, v4, 48 * *(v3 + 16));
    v2 = *(v1 + 48);
    v3 = *(v2 + 296);
  }

  v5 = *(v3 + 32);
  if (v5)
  {
    result = rm(v1, v5, 32 * *(v3 + 16));
    v2 = *(v1 + 48);
    v3 = *(v2 + 296);
  }

  v6 = *(v3 + 40);
  *(v3 + 40) = *(v6 + 40);
  v7 = *(v6 + 8);
  *(*(v2 + 296) + 8) = *v6;
  v8 = *(v2 + 296);
  *(v8 + 16) = *(v6 + 16);
  *(v8 + 32) = v7;
  v9 = *(v2 + 296);
  v10 = *(v9 + 48);
  if (v10)
  {
    result = MultifieldDeinstall(v1, *(v10 + 16));
    v11 = *(v1 + 48);
    v12 = *(v11 + 296);
    v13 = v12[6];
    v14 = *(v13 + 16);
    if (v14 != *v12)
    {
      result = AddToMultifieldList(v1, v14);
      v11 = *(v1 + 48);
      v13 = *(*(v11 + 296) + 48);
    }

    *(*(v11 + 472) + 32) = v13;
    **(*(v11 + 472) + 32) = *(*(*(v11 + 472) + 40) + 384);
    *(*(*(v11 + 472) + 40) + 384) = *(*(v11 + 472) + 32);
    v2 = *(v1 + 48);
    v9 = *(v2 + 296);
  }

  v15 = *(v6 + 32);
  *(v9 + 48) = *(v6 + 24);
  *(*(v2 + 296) + 64) = v15;
  *(*(v2 + 472) + 32) = v6;
  **(*(v2 + 472) + 32) = *(*(*(v2 + 472) + 40) + 384);
  *(*(*(v2 + 472) + 40) + 384) = *(*(v2 + 472) + 32);
  return result;
}

uint64_t GetProcParamExpressions(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 296);
  if (*(v1 + 8))
  {
    if (!*(v1 + 32))
    {
      v3 = gm2(a1, 32 * *(v1 + 16));
      v4 = *(a1 + 48);
      *(*(v4 + 296) + 32) = v3;
      v1 = *(v4 + 296);
      if (*(v1 + 16) >= 1)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = *(v1 + 8) + v5;
          v9 = *(v8 + 8);
          v10 = *(v1 + 32);
          *(v10 + v6) = v9;
          if (v9 != 4)
          {
            v8 = *(v8 + 16);
          }

          *(v10 + v6 + 8) = v8;
          *(*(*(v4 + 296) + 32) + v6 + 16) = 0;
          ++v7;
          v11 = *(v4 + 296);
          v12 = *(v11 + 16);
          v13 = *(v11 + 32) + v6;
          if (v7 == v12)
          {
            v14 = 0;
          }

          else
          {
            v14 = v13 + 32;
          }

          *(v13 + 24) = v14;
          v1 = *(v4 + 296);
          v6 += 32;
          v5 += 48;
        }

        while (v7 < *(v1 + 16));
      }
    }
  }

  return *(v1 + 32);
}

uint64_t EvaluateProcActions(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v12 = *(*(a1 + 48) + 296);
  v13 = *(v12 + 56);
  if (a4)
  {
    v14 = gm2(a1, 48 * a4);
    v15 = *(a1 + 48);
    *(*(v15 + 296) + 56) = v14;
    v16 = AddTrackedMemory(a1, *(*(v15 + 296) + 56), 48 * a4);
    if (a4 < 1)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      do
      {
        *(*(*(*(a1 + 48) + 296) + 56) + v17) = EnvFalseSymbol(a1);
        v17 += 48;
      }

      while (48 * a4 != v17);
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0;
    *(v12 + 56) = 0;
  }

  CurrentModule = EnvGetCurrentModule(a1);
  if (CurrentModule != a2)
  {
    EnvSetCurrentModule(a1, a2);
  }

  v20 = *(*(a1 + 48) + 296);
  v21 = *(v20 + 24);
  *(v20 + 24) = a3;
  if (EvaluateExpression(a1, a3, a5))
  {
    *(a5 + 8) = 2;
    *(a5 + 16) = EnvFalseSymbol(a1);
  }

  *(*(*(a1 + 48) + 296) + 24) = v21;
  result = EnvGetCurrentModule(a1);
  if (CurrentModule != result)
  {
    result = EnvSetCurrentModule(a1, CurrentModule);
  }

  v23 = *(a1 + 48);
  if (a6 && *(*(v23 + 352) + 12))
  {
    PrintErrorID(a1, "PRCCODE", 4, 0);
    EnvPrintRouter(a1, "werror", "Execution halted during the actions of ");
    result = a6(a1);
    v23 = *(a1 + 48);
  }

  v24 = *(*(v23 + 296) + 48);
  if (v24)
  {
    v25 = *(v24 + 16);
    if (*(a5 + 16) == v25)
    {
      result = MultifieldDeinstall(a1, v25);
      v26 = *(a1 + 48);
      v27 = *(v26 + 296);
      v28 = v27[6];
      v29 = *(v28 + 16);
      if (v29 != *v27)
      {
        result = AddToMultifieldList(a1, v29);
        v26 = *(a1 + 48);
        v28 = *(*(v26 + 296) + 48);
      }

      *(*(v26 + 472) + 32) = v28;
      **(*(v26 + 472) + 32) = *(*(*(v26 + 472) + 40) + 384);
      *(*(*(v26 + 472) + 40) + 384) = *(*(v26 + 472) + 32);
      v23 = *(a1 + 48);
      *(*(v23 + 296) + 48) = 0;
    }
  }

  if (a4)
  {
    RemoveTrackedMemory(a1, v16);
    if (v18)
    {
      v30 = 0;
      do
      {
        v31 = *(*(*(*(a1 + 48) + 296) + 56) + v30);
        if (v31 == EnvTrueSymbol(a1))
        {
          ValueDeinstall(a1, *(*(*(a1 + 48) + 296) + 56) + v30);
        }

        v30 += 48;
      }

      while (48 * a4 != v30);
    }

    result = rm(a1, *(*(*(a1 + 48) + 296) + 56), 48 * a4);
    v23 = *(a1 + 48);
  }

  *(*(v23 + 296) + 56) = v13;
  return result;
}

uint64_t PrintProcParamArray(uint64_t a1, FILE *a2)
{
  EnvPrintRouter(a1, a2, " (");
  v10 = *(*(a1 + 48) + 296);
  if (*(v10 + 16) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v9.n128_f64[0] = PrintDataObject(a1, a2, *(v10 + 8) + v11, v9, v4, v5, v6, v7, v8);
      v10 = *(*(a1 + 48) + 296);
      v13 = *(v10 + 16);
      if (v12 != v13 - 1)
      {
        EnvPrintRouter(a1, a2, " ");
        v10 = *(*(a1 + 48) + 296);
        v13 = *(v10 + 16);
      }

      ++v12;
      v11 += 48;
    }

    while (v12 < v13);
  }

  return EnvPrintRouter(a1, a2, ")\n");
}

uint64_t GrabProcWildargs(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  *(a2 + 8) = 4;
  *(a2 + 24) = 0;
  v6 = *(result + 48);
  v7 = *(v6 + 296);
  v8 = *(v7 + 48);
  if (v8)
  {
    if (*(v7 + 520) == a3)
    {
      *(a2 + 32) = *(v8 + 32);
      *(a2 + 16) = *(v8 + 16);
      return result;
    }

    MultifieldDeinstall(result, *(v8 + 16));
    v11 = *(v5 + 48);
    v13 = *(v11 + 296);
    v14 = *(v13[6] + 16);
    if (v14 != *v13)
    {
      AddToMultifieldList(v5, v14);
      v11 = *(v5 + 48);
      v13 = *(v11 + 296);
    }
  }

  else
  {
    v9 = *(v6 + 472);
    v10 = *(*(v9 + 40) + 384);
    if (v10)
    {
      *(v9 + 32) = v10;
      *(*(*(v6 + 472) + 40) + 384) = **(*(v6 + 472) + 32);
      v11 = *(result + 48);
      v12 = *(*(v11 + 472) + 32);
    }

    else
    {
      v12 = genalloc(result, 0x30uLL);
      v11 = *(v5 + 48);
    }

    *(*(v11 + 296) + 48) = v12;
    v13 = *(v11 + 296);
    *(v13[6] + 24) = 0;
  }

  *(v13 + 130) = a3;
  v15 = *(v13 + 4);
  v16 = v15 - a3;
  if (v15 - a3 < 0)
  {
    v39 = v13[6];
    *(v39 + 32) = -1;
    *(a2 + 32) = -1;
    v40 = *v13;
    *(v39 + 16) = v40;
    *(a2 + 16) = v40;
    v38 = *(*(v11 + 296) + 48);
  }

  else
  {
    v17 = (v16 + 1);
    v18 = a3 - 1;
    if (v15 >= a3)
    {
      v19 = (v13[1] + 48 * v18 + 24);
      v20 = v16 + 1;
      do
      {
        if (*(v19 - 8) == 4)
        {
          v17 = v19[1] + v17 - *v19;
        }

        v19 += 6;
        --v20;
      }

      while (v20);
    }

    *(v13[6] + 32) = v17 - 1;
    *(a2 + 32) = v17 - 1;
    Multifield2 = CreateMultifield2(v5, v17);
    v22 = *(v5 + 48);
    *(*(*(v22 + 296) + 48) + 16) = Multifield2;
    *(a2 + 16) = Multifield2;
    v23 = *(v22 + 296);
    if (*(v23 + 16) >= a3)
    {
      v24 = v18;
      v25 = 1;
      do
      {
        v26 = *(v23 + 8);
        v27 = v26 + 48 * v24;
        v28 = *(v27 + 8);
        if (v28 == 4)
        {
          v30 = *(v27 + 24);
          v29 = *(v27 + 32);
          if (v30 <= v29)
          {
            v31 = 0;
            v32 = *(v27 + 16);
            v33 = &Multifield2[2 * v25];
            v34 = v29 - v30 + 1;
            v35 = v32 + 16 * v30;
            v25 = v25 + v29 - v30 + 1;
            do
            {
              v36 = &v33[v31];
              *(v36 + 4) = *(v35 + v31 * 8 + 24);
              v36[2] = *(v35 + v31 * 8 + 32);
              v31 += 2;
              --v34;
            }

            while (v34);
          }
        }

        else
        {
          v37 = &Multifield2[2 * v25 + 3];
          *(v37 - 16) = v28;
          *(v37 - 8) = *(v26 + 48 * v24 + 16);
          ++v25;
        }

        ++v24;
        v23 = *(v22 + 296);
      }

      while (v24 < *(v23 + 16));
    }

    v38 = *(v23 + 48);
  }

  v41 = *(v38 + 16);

  return MultifieldInstall(v5, v41);
}

uint64_t AWDSymptomsNetworkAnalyticsHistoricalReadFrom(uint64_t a1, void *a2)
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
        v104 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v104 & 0x7F) << v5;
        if ((v104 & 0x80) == 0)
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
          *(a1 + 124) |= 0x800u;
          while (1)
          {
            v117 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v117 & 0x7F) << v13;
            if ((v117 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_182:
              v102 = 96;
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

          goto LABEL_182;
        case 2u:
          v70 = PBReaderReadString();
          v71 = *(a1 + 112);
          *(a1 + 112) = v70;

          goto LABEL_204;
        case 3u:
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 124) |= 0x2000u;
          while (1)
          {
            v118 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v118 & 0x7F) << v50;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
            if (v11)
            {
              v56 = 0;
              goto LABEL_170;
            }
          }

          if ([a2 hasError])
          {
            v56 = 0;
          }

          else
          {
            v56 = v52;
          }

LABEL_170:
          *(a1 + 120) = v56;
          goto LABEL_204;
        case 4u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 124) |= 0x40u;
          while (1)
          {
            v116 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v116 & 0x7F) << v58;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_174;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v60;
          }

LABEL_174:
          v102 = 56;
          goto LABEL_203;
        case 5u:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 124) |= 0x1000u;
          while (1)
          {
            v115 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v115 & 0x7F) << v32;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_158;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v34;
          }

LABEL_158:
          v102 = 104;
          goto LABEL_203;
        case 6u:
          v72 = 0;
          v73 = 0;
          v74 = 0;
          *(a1 + 124) |= 0x80u;
          while (1)
          {
            v114 = 0;
            v75 = [a2 position] + 1;
            if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
            {
              v77 = [a2 data];
              [v77 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v74 |= (v114 & 0x7F) << v72;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v11 = v73++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_186;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v74;
          }

LABEL_186:
          v102 = 64;
          goto LABEL_203;
        case 7u:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          *(a1 + 124) |= 4u;
          while (1)
          {
            v113 = 0;
            v87 = [a2 position] + 1;
            if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
            {
              v89 = [a2 data];
              [v89 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v86 |= (v113 & 0x7F) << v84;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            v11 = v85++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_194;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v86;
          }

LABEL_194:
          v102 = 24;
          goto LABEL_203;
        case 8u:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 124) |= 8u;
          while (1)
          {
            v112 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v112 & 0x7F) << v64;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_178;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v66;
          }

LABEL_178:
          v102 = 32;
          goto LABEL_203;
        case 9u:
          v96 = 0;
          v97 = 0;
          v98 = 0;
          *(a1 + 124) |= 0x100u;
          while (1)
          {
            v111 = 0;
            v99 = [a2 position] + 1;
            if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
            {
              v101 = [a2 data];
              [v101 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v98 |= (v111 & 0x7F) << v96;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v96 += 7;
            v11 = v97++ >= 9;
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
            v19 = v98;
          }

LABEL_202:
          v102 = 72;
          goto LABEL_203;
        case 0xAu:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 124) |= 0x200u;
          while (1)
          {
            v110 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v110 & 0x7F) << v44;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v11 = v45++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_166;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v46;
          }

LABEL_166:
          v102 = 80;
          goto LABEL_203;
        case 0xBu:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 124) |= 1u;
          while (1)
          {
            v109 = 0;
            v93 = [a2 position] + 1;
            if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
            {
              v95 = [a2 data];
              [v95 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v92 |= (v109 & 0x7F) << v90;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v11 = v91++ >= 9;
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
            v19 = v92;
          }

LABEL_198:
          v102 = 8;
          goto LABEL_203;
        case 0xCu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 124) |= 2u;
          while (1)
          {
            v108 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v108 & 0x7F) << v26;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_154;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v28;
          }

LABEL_154:
          v102 = 16;
          goto LABEL_203;
        case 0xDu:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 124) |= 0x400u;
          while (1)
          {
            v107 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v107 & 0x7F) << v38;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_162;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v40;
          }

LABEL_162:
          v102 = 88;
          goto LABEL_203;
        case 0xEu:
          v78 = 0;
          v79 = 0;
          v80 = 0;
          *(a1 + 124) |= 0x20u;
          while (1)
          {
            v106 = 0;
            v81 = [a2 position] + 1;
            if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
            {
              v83 = [a2 data];
              [v83 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v80 |= (v106 & 0x7F) << v78;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v11 = v79++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v80;
          }

LABEL_190:
          v102 = 48;
          goto LABEL_203;
        case 0xFu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 124) |= 0x10u;
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
        v105 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v105 & 0x7F) << v20;
        if ((v105 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_150;
        }
      }

      v19 = [a2 hasError] ? 0 : v22;
LABEL_150:
      v102 = 40;
LABEL_203:
      *(a1 + v102) = v19;
LABEL_204:
      v103 = [a2 position];
    }

    while (v103 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}