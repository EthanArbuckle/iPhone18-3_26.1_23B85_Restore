uint64_t AddLogicalDependencies(void *a1, uint64_t a2, int a3)
{
  v5 = a1[6];
  v6 = *(v5 + 144);
  if (*(v6 + 16))
  {
    if (!a3 || *(a2 + 8))
    {
      v7 = *(v6 + 24);
      if (!v7 || !v7[11] && !v7[8])
      {
        return 0;
      }

      v8 = *(v5 + 472);
      v9 = *(*(v8 + 40) + 128);
      if (v9)
      {
        *(v8 + 32) = v9;
        *(*(*(v5 + 472) + 40) + 128) = **(*(v5 + 472) + 32);
        v10 = a1[6];
        v11 = *(*(v10 + 472) + 32);
      }

      else
      {
        v11 = genalloc(a1, 0x10uLL);
        v10 = a1[6];
      }

      v13 = v7[4];
      *v11 = a2;
      v11[1] = v13;
      v7[4] = v11;
      v14 = *(v10 + 472);
      v15 = *(*(v14 + 40) + 128);
      if (v15)
      {
        *(v14 + 32) = v15;
        *(*(*(v10 + 472) + 40) + 128) = **(*(v10 + 472) + 32);
        v16 = *(*(a1[6] + 472) + 32);
      }

      else
      {
        v16 = genalloc(a1, 0x10uLL);
      }

      v17 = *(a2 + 8);
      *v16 = v7;
      v16[1] = v17;
      *(a2 + 8) = v16;
    }
  }

  else if (a3)
  {
    RemoveEntityDependencies(a1, a2);
  }

  return 1;
}

void *RemoveEntityDependencies(void *result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = result;
    do
    {
      v6 = *v3;
      v5 = v3[1];
      result = DetachAssociatedDependencies(v4, *(*v3 + 32), a2);
      *(v6 + 32) = result;
      v7 = *(v4 + 48);
      *(*(v7 + 472) + 32) = v3;
      **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 128);
      *(*(*(v7 + 472) + 40) + 128) = *(*(v7 + 472) + 32);
      v3 = v5;
    }

    while (v5);
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t FindLogicalBind(uint64_t a1, uint64_t a2)
{
  for (; a2; a2 = *(a2 + 88))
  {
    if (*(a2 + 16) == a1)
    {
      break;
    }
  }

  return a2;
}

void *DetachAssociatedDependencies(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2;
  do
  {
    v5 = a2[1];
    if (*a2 == a3)
    {
      v6 = a2[1];
      if (v3)
      {
        v3[1] = v5;
        v6 = v4;
      }

      v7 = *(a1 + 48);
      *(*(v7 + 472) + 32) = a2;
      **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 128);
      *(*(*(v7 + 472) + 40) + 128) = *(*(v7 + 472) + 32);
      v4 = v6;
    }

    else
    {
      v3 = a2;
    }

    a2 = v5;
  }

  while (v5);
  return v4;
}

uint64_t ReturnEntityDependencies(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 8);
      v4 = *(result + 48);
      *(*(v4 + 472) + 32) = v2;
      **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 128);
      *(*(*(v4 + 472) + 40) + 128) = *(*(v4 + 472) + 32);
      v2 = v3;
    }

    while (v3);
  }

  *(a2 + 8) = 0;
  return result;
}

void *RemovePMDependencies(void *result, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = result;
    do
    {
      v6 = *v3;
      v5 = v3[1];
      result = DetachAssociatedDependencies(v4, *(*v3 + 8), a2);
      *(v6 + 8) = result;
      v7 = *(v4 + 48);
      *(*(v7 + 472) + 32) = v3;
      **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 128);
      *(*(*(v7 + 472) + 40) + 128) = *(*(v7 + 472) + 32);
      v3 = v5;
    }

    while (v5);
  }

  *(a2 + 32) = 0;
  return result;
}

uint64_t DestroyPMDependencies(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 8);
      v4 = *(result + 48);
      *(*(v4 + 472) + 32) = v2;
      **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 128);
      *(*(*(v4 + 472) + 40) + 128) = *(*(v4 + 472) + 32);
      v2 = v3;
    }

    while (v3);
  }

  *(a2 + 32) = 0;
  return result;
}

void *RemoveLogicalSupport(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = *v2;
      v6 = v2[1];
      result = DetachAssociatedDependencies(v4, *(*v2 + 8), a2);
      v5[1] = result;
      if (result)
      {
        v7 = *(v4 + 48);
        *(*(v7 + 472) + 32) = v2;
        **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 128);
        v8 = *(v7 + 472);
        v2 = *(v8 + 32);
        v9 = (v8 + 40);
        v10 = 128;
      }

      else
      {
        result = (*(*v5 + 64))(v4, v5);
        v11 = *(v4 + 48);
        v12 = *(v11 + 144);
        v9 = (v11 + 144);
        v2[1] = *(v12 + 32);
        v10 = 32;
      }

      *(*v9 + v10) = v2;
      v2 = v6;
    }

    while (v6);
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t ForceLogicalRetractions(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(v1 + 144);
  if (!*(v2 + 40))
  {
    v4 = (v2 + 32);
    v3 = *(v2 + 32);
    *(v2 + 40) = 1;
    if (v3)
    {
      v5 = result;
      do
      {
        v6 = *v3;
        *v4 = v3[1];
        *(*(v1 + 472) + 32) = v3;
        **(*(v1 + 472) + 32) = *(*(*(v1 + 472) + 40) + 128);
        *(*(*(v1 + 472) + 40) + 128) = *(*(v1 + 472) + 32);
        (*(*v6 + 56))(v5, v6);
        result = (*(*v6 + 32))(v5, v6);
        v1 = *(v5 + 48);
        v2 = *(v1 + 144);
        v4 = (v2 + 32);
        v3 = *(v2 + 32);
      }

      while (v3);
    }

    *(v2 + 40) = 0;
  }

  return result;
}

uint64_t Dependencies(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      result = GetHaltExecution(a1);
      if (result == 1)
      {
        break;
      }

      PrintPartialMatch(a1, "wdisplay", *v3);
      result = EnvPrintRouter(a1, "wdisplay", "\n");
      v3 = v3[1];
    }

    while (v3);
  }

  else
  {

    return EnvPrintRouter(a1, "wdisplay", "None\n");
  }

  return result;
}

uint64_t Dependents(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  GetNextPatternEntity(a1, &v8, &v9);
  v4 = "None\n";
  if (!v9)
  {
    return EnvPrintRouter(a1, "wdisplay", v4);
  }

  v5 = 0;
  while (1)
  {
    result = GetHaltExecution(a1);
    if (result == 1)
    {
      return result;
    }

    v7 = v9;
    while (1)
    {
      v7 = v7[1];
      if (!v7)
      {
        break;
      }

      result = GetHaltExecution(a1);
      if (result == 1)
      {
        return result;
      }

      if (FindEntityInPartialMatch(a2, *v7) == 1)
      {
        if (v5)
        {
          EnvPrintRouter(a1, "wdisplay", ",");
        }

        (*(*v9 + 16))(a1, "wdisplay");
        v5 = 1;
        break;
      }
    }

    GetNextPatternEntity(a1, &v8, &v9);
    if (!v9)
    {
      if (v5)
      {
        v4 = "\n";
      }

      return EnvPrintRouter(a1, "wdisplay", v4);
    }
  }
}

uint64_t DependenciesCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "dependencies", 0, 1);
  if (result != -1)
  {
    memset(v3, 0, sizeof(v3));
    result = GetFactOrInstanceArgument(a1, 1, v3, "dependencies");
    if (result)
    {
      return Dependencies(a1, result);
    }
  }

  return result;
}

uint64_t DependentsCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "dependents", 0, 1);
  if (result != -1)
  {
    memset(v3, 0, sizeof(v3));
    result = GetFactOrInstanceArgument(a1, 1, v3, "dependents");
    if (result)
    {
      return Dependents(a1, result);
    }
  }

  return result;
}

uint64_t Function0Parse(uint64_t a1, char *a2)
{
  memset(v5, 0, sizeof(v5));
  GetToken(a1, a2, v5);
  if (LOWORD(v5[0]) == 170)
  {
    return Function1Parse(a1, a2);
  }

  SyntaxErrorMessage(a1, "function calls");
  return 0;
}

uint64_t Function1Parse(uint64_t a1, char *a2)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  GetToken(a1, a2, &v5);
  if (v5 == 2)
  {
    return Function2Parse(a1, a2, *(v6 + 24));
  }

  PrintErrorID(a1, "EXPRNPSR", 1, 1);
  EnvPrintRouter(a1, "werror", "A function name must be a symbol\n");
  return 0;
}

unsigned __int16 *Function2Parse(uint64_t a1, char *a2, char *a3)
{
  ModuleSeparator = FindModuleSeparator(a3);
  if (!ModuleSeparator)
  {
    Function = FindFunction(a1, a3);
    v12 = LookupDefgenericInScope(a1, a3);
    v13 = Function == 0;
    v14 = v12 == 0;
    if (!(Function | v12))
    {
      DeffunctionInModule = LookupDeffunctionInScope(a1, a3);
      goto LABEL_11;
    }

    DefgenericInModule = v12;
LABEL_14:
    if (v14)
    {
      if (v13)
      {
        goto LABEL_28;
      }

      v18 = a1;
      v19 = 30;
      DefgenericInModule = Function;
    }

    else
    {
      v18 = a1;
      v19 = 31;
    }

    v17 = GenConstant(v18, v19, DefgenericInModule);
    goto LABEL_19;
  }

  v7 = ModuleSeparator;
  ModuleName = ExtractModuleName(a1, ModuleSeparator, a3);
  ConstructName = ExtractConstructName(a1, v7, a3);
  Function = FindFunction(a1, a3);
  if (ConstructExported(a1, "defgeneric", ModuleName, ConstructName) || (CurrentModule = EnvGetCurrentModule(a1), CurrentModule == EnvFindDefmodule(a1, ModuleName[3])))
  {
    DefgenericInModule = EnvFindDefgenericInModule(a1, a3);
  }

  else
  {
    DefgenericInModule = 0;
  }

  v13 = Function == 0;
  v14 = DefgenericInModule == 0;
  if (Function | DefgenericInModule)
  {
    goto LABEL_14;
  }

  if (!ConstructExported(a1, "deffunction", ModuleName, ConstructName))
  {
    v37 = EnvGetCurrentModule(a1);
    if (v37 != EnvFindDefmodule(a1, ModuleName[3]))
    {
      goto LABEL_28;
    }
  }

  DeffunctionInModule = EnvFindDeffunctionInModule(a1, a3);
LABEL_11:
  if (!DeffunctionInModule)
  {
LABEL_28:
    PrintErrorID(a1, "EXPRNPSR", 3, 1);
    EnvPrintRouter(a1, "werror", "Missing function declaration for ");
    EnvPrintRouter(a1, "werror", a3);
    EnvPrintRouter(a1, "werror", ".\n");
    return 0;
  }

  v17 = GenConstant(a1, 32, DeffunctionInModule);
  Function = 0;
LABEL_19:
  v20 = PushRtnBrkContexts(a1);
  *(*(*(a1 + 48) + 360) + 80) = 0;
  if (*v17 == 30)
  {
    v21 = *(Function + 32);
    if (v21)
    {
      v22 = v21(a1, v17, a2, v20);
      v23 = v22;
      v24 = *(a1 + 48);
      v25 = *(v24 + 360);
      v26 = *(v25 + 72);
      *(v25 + 80) = *v26;
      *(v25 + 72) = v26[1];
      *(*(v24 + 472) + 32) = v26;
      **(*(v24 + 472) + 32) = *(*(*(v24 + 472) + 40) + 128);
      *(*(*(v24 + 472) + 40) + 128) = *(*(v24 + 472) + 32);
      if (!v22)
      {
        return v23;
      }

      v27 = *(v22 + 16);
      v28 = FindFunction(a1, "(expansion-call)");
      v29 = FindFunction(a1, "expand$");
      if (!ReplaceSequenceExpansionOps(a1, v27, v23, v28, v29))
      {
        return v23;
      }

      goto LABEL_26;
    }
  }

  v30 = CollectArguments(a1, v17, a2);
  v23 = v30;
  v31 = *(a1 + 48);
  v32 = *(v31 + 360);
  v33 = *(v32 + 72);
  *(v32 + 80) = *v33;
  *(v32 + 72) = v33[1];
  *(*(v31 + 472) + 32) = v33;
  **(*(v31 + 472) + 32) = *(*(*(v31 + 472) + 40) + 128);
  *(*(*(v31 + 472) + 40) + 128) = *(*(v31 + 472) + 32);
  if (!v30)
  {
    return v23;
  }

  v34 = *(v30 + 16);
  v35 = FindFunction(a1, "(expansion-call)");
  v36 = FindFunction(a1, "expand$");
  if (ReplaceSequenceExpansionOps(a1, v34, v23, v35, v36))
  {
    goto LABEL_26;
  }

  v39 = *(v23 + 1);
  if (v39 == FindFunction(a1, "(expansion-call)"))
  {
    return v23;
  }

  v40 = *v23;
  if (v40 == 30)
  {
    if (EnvGetStaticConstraintChecking(a1))
    {
      if (!CheckExpressionAgainstRestrictions(a1, v23, *(Function + 40), a3))
      {
        return v23;
      }

      goto LABEL_26;
    }

    v40 = *v23;
  }

  if (v40 == 32)
  {
    v41 = *(v23 + 1);
    v42 = CountArguments(*(v23 + 2));
    if (!CheckDeffunctionCall(a1, v41, v42))
    {
LABEL_26:
      ReturnExpression(a1, v23);
      return 0;
    }
  }

  return v23;
}

double PushRtnBrkContexts(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 472);
  v4 = *(*(v3 + 40) + 128);
  if (v4)
  {
    *(v3 + 32) = v4;
    *(*(*(v2 + 472) + 40) + 128) = **(*(v2 + 472) + 32);
    v5 = *(a1 + 48);
    v6 = *(*(v5 + 472) + 32);
  }

  else
  {
    v6 = genalloc(a1, 0x10uLL);
    v5 = *(a1 + 48);
  }

  v7 = *(v5 + 360);
  result = *(v7 + 80);
  *v6 = result;
  v6[1] = *(v7 + 72);
  *(*(v5 + 360) + 72) = v6;
  return result;
}

double PopRtnBrkContexts(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 360);
  v3 = *(v2 + 72);
  result = *v3;
  *(v2 + 80) = *v3;
  *(v2 + 72) = *(v3 + 8);
  *(*(v1 + 472) + 32) = v3;
  **(*(v1 + 472) + 32) = *(*(*(v1 + 472) + 40) + 128);
  *(*(*(v1 + 472) + 40) + 128) = *(*(v1 + 472) + 32);
  return result;
}

uint64_t ReplaceSequenceExpansionOps(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v8 = a2;
  while (1)
  {
    v10 = *v8;
    if (*(*(*(a1 + 48) + 360) + 88) || v10 != 36)
    {
      if (v10 == 34 || v10 == 36)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *v8 = 35;
    }

    if (*(v8 + 1) != a5)
    {
      goto LABEL_17;
    }

LABEL_9:
    v11 = *a3;
    v12 = *(a3 + 1);
    if (v11 == 30 && !*(v12 + 50))
    {
      break;
    }

    if (v12 != a4)
    {
      v13 = GenConstant(a1, v11, v12);
      v13[2] = *(a3 + 2);
      v13[3] = 0;
      *a3 = 30;
      *(a3 + 1) = a4;
      *(a3 + 2) = v13;
    }

    v14 = *(v8 + 1);
    if (v14 != a5)
    {
      v15 = GenConstant(a1, 35, v14);
      if (*v8 == 34)
      {
        *v15 = 33;
      }

      *v8 = 30;
      *(v8 + 1) = a5;
      *(v8 + 2) = v15;
    }

LABEL_17:
    if (*(v8 + 2))
    {
      *v8;
      if (ReplaceSequenceExpansionOps(a1))
      {
        return 1;
      }
    }

    v8 = *(v8 + 3);
    if (!v8)
    {
      return 0;
    }
  }

  PrintErrorID(a1, "EXPRNPSR", 4, 0);
  EnvPrintRouter(a1, "werror", "$ Sequence operator not a valid argument for ");
  EnvPrintRouter(a1, "werror", *(**(a3 + 1) + 24));
  EnvPrintRouter(a1, "werror", ".\n");
  return 1;
}

uint64_t CollectArguments(char *a1, uint64_t a2, char *a3)
{
  SavePPBuffer(a1, " ");
  v11 = 0;
  v6 = ArgumentParse(a1, a3, &v11);
  if (v11 == 1)
  {
LABEL_8:
    ReturnExpression(a1, a2);
    return 0;
  }

  else
  {
    v7 = 0;
    while (v6)
    {
      v8 = v6;
      if (v7)
      {
        v9 = v7 + 3;
      }

      else
      {
        v9 = (a2 + 16);
      }

      *v9 = v6;
      SavePPBuffer(a1, " ");
      v11 = 0;
      v6 = ArgumentParse(a1, a3, &v11);
      v7 = v8;
      if (v11 == 1)
      {
        goto LABEL_8;
      }
    }

    PPBackup(a1);
    PPBackup(a1);
    SavePPBuffer(a1, ")");
  }

  return a2;
}

uint64_t CheckExpressionAgainstRestrictions(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a3;
  v23[1] = 0;
  if (!a3)
  {
    return v4;
  }

  v8 = CountArguments(*(a2 + 16));
  v23[0] = *v4;
  if ((v23[0] - 48) > 9)
  {
    if (v23[0] != 42)
    {
      return 0;
    }

    v9 = -1;
  }

  else
  {
    v9 = atoi(v23);
  }

  v23[0] = *(v4 + 1);
  if ((v23[0] - 48) > 9)
  {
    if (v23[0] == 42)
    {
      v10 = 10000;
      goto LABEL_10;
    }

    return 0;
  }

  v10 = atoi(v23);
LABEL_10:
  if (v9 == v10)
  {
    if (v8 != v9)
    {
      v11 = a1;
      v12 = a4;
      v13 = 0;
      v10 = v9;
LABEL_17:
      ExpectedCountError(v11, v12, v13, v10);
      return 1;
    }

LABEL_18:
    v14 = *(v4 + 2);
    if (*(v4 + 2))
    {
      if (v14 == 42)
      {
        v14 = 117;
      }

      v15 = 3;
    }

    else
    {
      v14 = 117;
      v15 = 2;
    }

    v16 = *(a2 + 16);
    if (v16)
    {
      for (i = 1; ; ++i)
      {
        v18 = *(v4 + v15);
        if (*(v4 + v15))
        {
          v19 = *(v4 + v15);
        }

        else
        {
          v19 = v14;
        }

        if (v19 == 42)
        {
          LOBYTE(v19) = v14;
        }

        v20 = v19;
        if (CheckArgumentAgainstRestriction(a1, v16, v19))
        {
          break;
        }

        if (v18)
        {
          ++v15;
        }

        v16 = *(v16 + 24);
        if (!v16)
        {
          return 0;
        }
      }

      ArgumentTypeName = GetArgumentTypeName(v20);
      ExpectedTypeError1(a1, a4, i, ArgumentTypeName);
      return 1;
    }

    return 0;
  }

  if (v8 >= v9)
  {
    if (v8 > v10)
    {
      v11 = a1;
      v12 = a4;
      v13 = 2;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v4 = 1;
  ExpectedCountError(a1, a4, 1u, v9);
  return v4;
}

void *ArgumentParse(uint64_t a1, char *a2, _DWORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  GetToken(a1, a2, &v8);
  if (v8 <= 0x24u && ((1 << v8) & 0x1E0000000FLL) != 0)
  {
    return GenConstant(a1, v8, v9);
  }

  if (v8 == 170)
  {
    result = Function1Parse(a1, a2);
    if (!result)
    {
      *a3 = 1;
    }
  }

  else
  {
    result = 0;
    if (v8 != 171)
    {
      PrintErrorID(a1, "EXPRNPSR", 2, 1);
      EnvPrintRouter(a1, "werror", "Expected a constant, variable, or expression.\n");
      result = 0;
      *a3 = 1;
    }
  }

  return result;
}

void *ParseAtomOrExpression(uint64_t a1, char *a2, unsigned __int16 *a3)
{
  v3 = a3;
  memset(v9, 0, sizeof(v9));
  if (!a3)
  {
    v3 = v9;
    GetToken(a1, a2, v9);
  }

  v6 = *v3;
  if (v6 <= 0x24 && ((1 << v6) & 0x1E0000000FLL) != 0)
  {
    return GenConstant(a1, v6, *(v3 + 1));
  }

  if (v6 == 170)
  {
    return Function1Parse(a1, a2);
  }

  PrintErrorID(a1, "EXPRNPSR", 2, 1);
  EnvPrintRouter(a1, "werror", "Expected a constant, variable, or expression.\n");
  return 0;
}

unsigned __int16 *GroupActions(char *a1, char *a2, unsigned __int16 *a3, int a4, const char *a5, int a6)
{
  Function = FindFunction(a1, "progn");
  v13 = 0;
  v14 = a6 != 0;
  v25 = GenConstant(a1, 30, Function);
  if (!a4)
  {
    goto LABEL_3;
  }

  while (1)
  {
    GetToken(a1, a2, a3);
LABEL_3:
    v15 = *a3;
    v16 = a5 && v15 == 2;
    v17 = !v16;
    if (!v14 && !v17 && !strcmp(*(*(a3 + 1) + 24), a5))
    {
      return v25;
    }

    if (v14)
    {
      v18 = Function2Parse(a1, a2, *(*(a3 + 1) + 24));
    }

    else if (v15 <= 0x24 && ((1 << v15) & 0x1E0000000FLL) != 0)
    {
      v18 = GenConstant(a1, v15, *(a3 + 1));
    }

    else
    {
      if (v15 != 170)
      {
        v23 = FindFunction(a1, "(expansion-call)");
        v24 = FindFunction(a1, "expand$");
        v21 = v25;
        if (!ReplaceSequenceExpansionOps(a1, v25, 0, v23, v24))
        {
          return v21;
        }

LABEL_23:
        ReturnExpression(a1, v21);
        return 0;
      }

      v18 = Function1Parse(a1, a2);
    }

    v19 = v18;
    if (!v18)
    {
      *a3 = 173;
      v21 = v25;
      goto LABEL_23;
    }

    v20 = (v13 + 24);
    if (!v13)
    {
      v20 = (v25 + 8);
    }

    *v20 = v18;
    PPCRAndIndent(a1);
    v14 = 0;
    v13 = v19;
  }
}

uint64_t EnvSetSequenceOperatorRecognition(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 360);
  result = *(v2 + 88);
  *(v2 + 88) = a2;
  return result;
}

uint64_t ParseConstantArguments(uint64_t a1, char *__s, _DWORD *a3)
{
  *a3 = 0;
  if (!__s)
  {
    return 0;
  }

  if (!OpenStringSource(a1, "***FNXARGS***", __s, 0))
  {
    PrintErrorID(a1, "EXPRNPSR", 6, 0);
    EnvPrintRouter(a1, "werror", "Cannot read arguments for external call.\n");
    v5 = 0;
    *a3 = 1;
    return v5;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  GetToken(a1, "***FNXARGS***", &v12);
  v5 = 0;
  for (i = 0; v12 < 4u || v12 == 8; i = v9)
  {
    v8 = GenConstant(a1, v12, v13);
    v9 = v8;
    v10 = v8;
    if (v5)
    {
      i[3] = v8;
      v10 = v5;
    }

    GetToken(a1, "***FNXARGS***", &v12);
    v5 = v10;
  }

  if (v12 != 172)
  {
    PrintErrorID(a1, "EXPRNPSR", 7, 0);
    EnvPrintRouter(a1, "werror", "Only constant arguments allowed for external function call.\n");
    ReturnExpression(a1, v5);
    *a3 = 1;
    CloseStringSource(a1, "***FNXARGS***");
    return 0;
  }

  CloseStringSource(a1, "***FNXARGS***");
  return v5;
}

uint64_t RemoveUnneededProgn(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 != 30)
  {
    return a2;
  }

  if (*(*(a2 + 8) + 24) != PrognFunction)
  {
    return a2;
  }

  v2 = *(a2 + 16);
  if (!v2 || *(v2 + 24))
  {
    return a2;
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  ReturnExpression(a1, a2);
  return v2;
}

uint64_t extractLibtraceSymptomElements(void *a1, __CFString **a2, void *a3, __CFString **a4, void *a5)
{
  v64 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if ([v9 processName] && !strcmp(objc_msgSend(v9, "processName"), "assistantd"))
  {
    v14 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "libtrace symptom dropping assistantd symptom for now";
    v15 = v14;
    v16 = OS_LOG_TYPE_DEBUG;
    goto LABEL_18;
  }

  v10 = [v9 eventData];
  if (!v10)
  {
    v12 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "libtrace symptom missing eventData";
    goto LABEL_17;
  }

  v11 = *(v10 + 4);
  if ((v11 & 1) == 0)
  {
    v12 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "libtrace symptom with no programCounter qualifier";
LABEL_17:
    v15 = v12;
    v16 = OS_LOG_TYPE_ERROR;
LABEL_18:
    _os_log_impl(&dword_23255B000, v15, v16, v13, buf, 2u);
LABEL_19:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (!a2)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((v11 & 2) == 0)
  {
    v12 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "libtrace symptom with no mach_timestamp qualifier";
    goto LABEL_17;
  }

  if ((v11 & 4) == 0)
  {
    v12 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "libtrace symptom with no activityID qualifier.";
    goto LABEL_17;
  }

  v28 = [v9 eventQualifiers];
  v57 = [v28 objectForKeyedSubscript:@"4"];

  v29 = [v9 eventQualifiers];
  v55 = [v29 objectForKeyedSubscript:@"5"];

  v30 = [v9 eventQualifiers];
  v54 = [v30 objectForKeyedSubscript:@"6"];

  v31 = [v9 eventQualifiers];
  v58 = [v31 objectForKeyedSubscript:@"7"];

  if ([v54 length])
  {
    v56 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v54, "bytes")}];
    v32 = uuid_to_pid(v56);
    if (v32 == -1)
    {
      v33 = 0;
    }

    else
    {
      v33 = pid_to_process_name(v32);
    }

    uuid_to_bundleid(v56);
    v34 = v35 = v55;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v56 = 0;
    v35 = v55;
  }

  if (v33 | v34)
  {
    v36 = v33;
  }

  else if ([v35 length])
  {
    v37 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v35, "bytes")}];

    v38 = uuid_to_pid(v37);
    if (v38 == -1)
    {
      v36 = 0;
    }

    else
    {
      v36 = pid_to_process_name(v38);
    }

    uuid_to_bundleid(v37);
    v34 = v56 = v37;
  }

  else
  {
    v36 = 0;
    v34 = 0;
  }

  v59 = 0;
  v39 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v57 options:0 error:{&v59, v34}];
  v40 = v59;
  v53 = v39;
  if (!v39 || v40)
  {
    v51 = v40;
    v44 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v45 = v44;
      v46 = [v57 description];
      *buf = 138412546;
      v61 = v46;
      v62 = 2112;
      v63 = v51;
      _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "libtrace symptom unable to create JSON object from libtrace data %@ because %@. This would be ok for older clients.", buf, 0x16u);
    }

    goto LABEL_52;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v51 = 0;
LABEL_52:
    v18 = 0;
    v20 = 0;
    goto LABEL_53;
  }

  v20 = [v39 objectForKeyedSubscript:@"name"];
  v41 = [v53 objectForKeyedSubscript:@"interfaceType"];
  v42 = v41;
  if (v41)
  {
    v43 = stringFromPayloadInterfaceType(v41);
  }

  else
  {
    v43 = @"Other";
  }

  v18 = v43;

  v51 = 0;
LABEL_53:
  v47 = v36;
  if (!v36)
  {
    v47 = [v9 processName];
    if (v47)
    {
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v9, "processName")}];
    }
  }

  if (!v20)
  {
    v20 = @"SYMPTOM_LIBTRACE_OS_LOG";
  }

  v52 = v47;
  if ([v47 length])
  {
    v19 = v52;
  }

  else
  {
    v19 = 0;
  }

  if ([v58 length])
  {
    v48 = objc_alloc(MEMORY[0x277CCACA8]);
    v49 = v58;
    v17 = [v48 initWithBytes:objc_msgSend(v58 length:"bytes") encoding:{objc_msgSend(v58, "length"), 4}];
  }

  else
  {
    v17 = 0;
  }

  v21 = 1;
  if (a2)
  {
LABEL_20:
    v22 = v20;
    *a2 = v20;
  }

LABEL_21:
  if (a3)
  {
    v23 = v19;
    *a3 = v19;
  }

  if (a4)
  {
    v24 = v18;
    *a4 = v18;
  }

  if (a5)
  {
    v25 = v17;
    *a5 = v17;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v21;
}

__CFString *stringFromPayloadInterfaceType(void *a1)
{
  v1 = a1;
  v2 = @"Other";
  v3 = @"WiFi";
  if (![v1 caseInsensitiveCompare:@"WiFi"] || (v3 = @"Cellular", !objc_msgSend(v1, "caseInsensitiveCompare:", @"Cellular")) || (v3 = @"Loopback", !objc_msgSend(v1, "caseInsensitiveCompare:", @"Loopback")) || (v3 = @"WiredEthernet", !objc_msgSend(v1, "caseInsensitiveCompare:", @"WiredEthernet")) || (v3 = @"CompanionLink", !objc_msgSend(v1, "caseInsensitiveCompare:", @"CompanionLink")))
  {
    v4 = v3;

    v2 = v4;
  }

  return v2;
}

void sub_232684D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AWDSymptomsDiagnosticNotificationTokenReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *DefmoduleBasicCommands(uint64_t a1)
{
  EnvAddClearFunction(a1, "defmodule", ClearDefmodules, 2000);
  AddSaveFunction(a1, "defmodule", SaveDefmodules, 1100);
  EnvDefineFunction2(a1, "get-defmodule-list", 109, EnvGetDefmoduleList, "EnvGetDefmoduleList", "00");
  EnvDefineFunction2(a1, "list-defmodules", 118, ListDefmodulesCommand, "ListDefmodulesCommand", "00");
  EnvDefineFunction2(a1, "ppdefmodule", 118, PPDefmoduleCommand, "PPDefmoduleCommand", "11w");

  return DefmoduleBinarySetup(a1);
}

uint64_t ClearDefmodules(uint64_t a1)
{
  result = Bloaded(a1);
  if (result != 1)
  {
    RemoveAllDefmodules(a1);
    result = CreateMainModule(a1);
    *(*(*(a1 + 48) + 32) + 80) = 1;
  }

  return result;
}

uint64_t SaveDefmodules(uint64_t a1, uint64_t a2, FILE *a3)
{
  result = EnvGetActivationBasis(a1, a2);
  if (result)
  {
    PrintInChunks(a1, a3, result);

    return EnvPrintRouter(a1, a3, "\n");
  }

  return result;
}

double EnvGetDefmoduleList(uint64_t a1, uint64_t a2)
{
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    v6 = 0;
    do
    {
      ++v6;
      v5 = EnvGetNextDefmodule(a1, v5);
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 8) = 4;
  *(a2 + 24) = 0;
  *(a2 + 32) = v6 - 1;
  Multifield = EnvCreateMultifield(a1, v6);
  *(a2 + 16) = Multifield;
  v8 = EnvGetNextDefmodule(a1, 0);
  if (v8)
  {
    v10 = v8;
    v11 = (Multifield + 4);
    while (*(*(*(a1 + 48) + 352) + 12) != 1)
    {
      *(v11 - 4) = 2;
      ConstructNameString = EnvGetConstructNameString(a1, v10);
      *v11 = EnvAddSymbol(a1, ConstructNameString);
      v11 += 2;
      v10 = EnvGetNextDefmodule(a1, v10);
      if (!v10)
      {
        return result;
      }
    }

    return EnvSetMultifieldErrorValue(a1, a2);
  }

  return result;
}

uint64_t ListDefmodulesCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "list-defmodules", 0, 0);
  if (result != -1)
  {

    return EnvListDefmodules(a1, "wdisplay");
  }

  return result;
}

char *PPDefmoduleCommand(uint64_t a1)
{
  result = GetConstructName(a1, "ppdefmodule", "defmodule name");
  if (result)
  {

    return PPDefmodule(a1, result, "wdisplay");
  }

  return result;
}

uint64_t PPDefmodule(uint64_t a1, char *a2, uint64_t a3)
{
  Defmodule = EnvFindDefmodule(a1, a2);
  if (Defmodule)
  {
    v7 = Defmodule;
    if (EnvGetActivationBasis(a1, Defmodule))
    {
      ActivationBasis = EnvGetActivationBasis(a1, v7);
      PrintInChunks(a1, a3, ActivationBasis);
    }

    return 1;
  }

  else
  {
    CantFindItemErrorMessage(a1, "defmodule", a2);
    return 0;
  }
}

uint64_t EnvListDefmodules(uint64_t a1, FILE *a2)
{
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    v6 = 0;
    do
    {
      ConstructNameString = EnvGetConstructNameString(a1, v5);
      EnvPrintRouter(a1, a2, ConstructNameString);
      EnvPrintRouter(a1, a2, "\n");
      v5 = EnvGetNextDefmodule(a1, v5);
      ++v6;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return PrintTally(a1, a2, v6, "defmodule", "defmodules");
}

uint64_t SortFunctionDefinitions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 7u, 8uLL, DeallocateSortFunctionData);

  return EnvDefineFunction2(a1, "sort", 117, SortFunction, "SortFunction", "1**w");
}

uint64_t SortFunction(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgCountCheck(a1, "sort", 1u, 1);
  if (result == -1)
  {
    return result;
  }

  v5 = result;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  result = EnvArgTypeCheck(a1, "sort", 1, 2, &v47);
  if (!result)
  {
    return result;
  }

  v6 = FunctionReferenceExpression(a1, *(v48 + 24));
  if (!v6)
  {
    return ExpectedTypeError1(a1, "sort", 1, "function name, deffunction name, or defgeneric name");
  }

  v7 = v6;
  v8 = *v6;
  if (v8 == 30)
  {
    v9 = *(v6 + 1);
    if (GetMinimumArgs(v9) > 2 || !GetMaximumArgs(v9) || GetMaximumArgs(v9) == 1)
    {
      v10 = "function name expecting two arguments";
LABEL_15:
      ExpectedTypeError1(a1, "sort", 1, v10);
      return ReturnExpression(a1, v7);
    }

    v8 = *v7;
  }

  if (v8 == 32)
  {
    v11 = *(v7 + 1);
    if (*(v11 + 72) > 2 || *(v11 + 76) <= 1u)
    {
      v10 = "deffunction name expecting two arguments";
      goto LABEL_15;
    }
  }

  v12 = v5;
  if (v5 == 1)
  {
LABEL_40:
    EnvSetMultifieldErrorValue(a1, a2);
    return ReturnExpression(a1, v7);
  }

  v13 = 48 * v5 - 48;
  v14 = genalloc(a1, v13);
  v15 = v14;
  if (v5 < 2)
  {
    goto LABEL_39;
  }

  v16 = 0;
  v17 = v5 - 1;
  v18 = 2;
  v19 = v14;
  do
  {
    EnvRtnUnknown(a1, v18, v19);
    if (*(v19 + 8) == 4)
    {
      v16 += *(v19 + 32) - *(v19 + 24) + 1;
    }

    else
    {
      ++v16;
    }

    ++v18;
    v19 += 48;
    --v17;
  }

  while (v17);
  if (!v16)
  {
LABEL_39:
    genfree(a1, v15, v13);
    goto LABEL_40;
  }

  v20 = v16;
  v21 = genalloc(a1, 48 * v16);
  v22 = v21;
  v23 = 0;
  v24 = 2;
  do
  {
    v25 = &v15[48 * v24];
    v26 = *(v25 - 44);
    if (v26 == 4)
    {
      v28 = *(v25 - 9);
      v27 = *(v25 - 8);
      if (v28 <= v27)
      {
        v29 = *(v25 - 10);
        v30 = v23 + v27 - v28 + 1;
        v31 = &v21[48 * v23 + 16];
        v32 = v27 - v28 + 1;
        v33 = (v29 + 16 * v28 + 32);
        do
        {
          *(v31 - 4) = *(v33 - 4);
          v34 = *v33;
          v33 += 2;
          *v31 = v34;
          v31 += 48;
          --v32;
        }

        while (v32);
        v23 = v30;
      }
    }

    else
    {
      v35 = &v21[48 * v23];
      *(v35 + 4) = v26;
      *(v35 + 2) = *(v25 - 10);
      ++v23;
    }
  }

  while (v24++ != v12);
  genfree(a1, v15, v13);
  v37 = *(a1 + 48);
  *(v7 + 3) = **(v37 + 56);
  **(v37 + 56) = v7;
  if (v16 < 1)
  {
    MergeSort(a1, v16, v22, DefaultCompareSwapFunction);
  }

  else
  {
    v38 = v22;
    v39 = v16;
    do
    {
      ValueInstall(a1, v38);
      v38 += 48;
      --v39;
    }

    while (v39);
    MergeSort(a1, v16, v22, DefaultCompareSwapFunction);
    v40 = v22;
    v41 = v16;
    do
    {
      ValueDeinstall(a1, v40);
      v40 += 48;
      --v41;
    }

    while (v41);
  }

  **(*(a1 + 48) + 56) = *(**(*(a1 + 48) + 56) + 24);
  *(v7 + 3) = 0;
  ReturnExpression(a1, v7);
  Multifield = EnvCreateMultifield(a1, v16);
  v43 = Multifield;
  if (v16 >= 1)
  {
    v44 = Multifield + 4;
    v45 = v22 + 2;
    do
    {
      *(v44 - 4) = *(v45 - 4);
      v46 = *v45;
      v45 += 6;
      *v44 = v46;
      v44 += 2;
      --v20;
    }

    while (v20);
  }

  result = genfree(a1, v22, 48 * v16);
  *(a2 + 8) = 4;
  *(a2 + 24) = 0;
  *(a2 + 32) = v16 - 1;
  *(a2 + 16) = v43;
  return result;
}

uint64_t MergeSort(uint64_t result, unint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 >= 2)
  {
    v8 = result;
    v9 = 48 * a2;
    v10 = genalloc(result, 48 * a2);
    DoMergeSort(v8, a3, v10, 0, ((a2 + 1) >> 1) - 1, (a2 + 1) >> 1, a2 - 1, a4);

    return genfree(v8, v10, v9);
  }

  return result;
}

BOOL DefaultCompareSwapFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  *(**(*(a1 + 48) + 56) + 16) = GenConstant(a1, *(a2 + 8), *(a2 + 16));
  v5 = GenConstant(a1, *(a3 + 8), *(a3 + 16));
  v6 = *(a1 + 48);
  *(*(**(v6 + 56) + 16) + 24) = v5;
  ExpressionInstall(a1, **(v6 + 56));
  EvaluateExpression(a1, **(*(a1 + 48) + 56), &v9);
  ExpressionDeinstall(a1, **(*(a1 + 48) + 56));
  ReturnExpression(a1, *(**(*(a1 + 48) + 56) + 16));
  *(**(*(a1 + 48) + 56) + 16) = 0;
  result = 1;
  if (WORD4(v9) == 2)
  {
    v7 = v10;
    if (v7 == EnvFalseSymbol(a1))
    {
      return 0;
    }
  }

  return result;
}

void DoMergeSort(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unsigned int (*a8)(uint64_t, uint64_t, uint64_t))
{
  v11 = a4;
  memset(v22, 0, sizeof(v22));
  if (a5 != a4)
  {
    if (a4 + 1 == a5)
    {
      if (a8(a1, a2 + 48 * a4, a2 + 48 * a5))
      {
        TransferDataObjectValues(v22, a2 + 48 * v11);
        TransferDataObjectValues(a2 + 48 * v11, a2 + 48 * a5);
        TransferDataObjectValues(a2 + 48 * a5, v22);
      }
    }

    else
    {
      DoMergeSort(a1, a2, a3, a4, a4 + ((a5 - a4 + 2) >> 1) - 1, a4 + ((a5 - a4 + 2) >> 1), a5, a8);
    }
  }

  if (a7 != a6)
  {
    if (a6 + 1 == a7)
    {
      if (a8(a1, a2 + 48 * a6, a2 + 48 * a7))
      {
        TransferDataObjectValues(v22, a2 + 48 * a6);
        TransferDataObjectValues(a2 + 48 * a6, a2 + 48 * a7);
        TransferDataObjectValues(a2 + 48 * a7, v22);
      }
    }

    else
    {
      DoMergeSort(a1, a2, a3, a6, a6 + ((a7 - a6 + 2) >> 1) - 1, a6 + ((a7 - a6 + 2) >> 1), a7, a8);
    }
  }

  if (v11 <= a7)
  {
    v19 = a3;
    v14 = a3 + 48 * v11;
    v15 = v11;
    v16 = v11;
    do
    {
      if (v16 > a5 || a6 <= a7 && a8(a1, a2 + 48 * v16, a2 + 48 * a6))
      {
        TransferDataObjectValues(v14, a2 + 48 * a6++);
      }

      else
      {
        TransferDataObjectValues(v14, a2 + 48 * v16++);
      }

      ++v15;
      v14 += 48;
    }

    while (v15 <= a7);
    if (v11 <= a7)
    {
      v17 = v19 + 48 * v11;
      v18 = a2 + 48 * v11;
      do
      {
        TransferDataObjectValues(v18, v17);
        ++v11;
        v17 += 48;
        v18 += 48;
      }

      while (v11 <= a7);
    }
  }
}

uint64_t DeallocateBsaveData(uint64_t result)
{
  v1 = **(*(result + 48) + 312);
  if (v1)
  {
    do
    {
      v2 = *(v1 + 72);
      v3 = *(result + 48);
      *(*(v3 + 472) + 32) = v1;
      **(*(v3 + 472) + 32) = *(*(*(v3 + 472) + 40) + 640);
      *(*(*(v3 + 472) + 40) + 640) = *(*(v3 + 472) + 32);
      v1 = v2;
    }

    while (v2);
  }

  return result;
}

BOOL BsaveCommand(void *a1)
{
  result = 0;
  if (EnvArgCountCheck(a1, "bsave", 0, 1) != -1)
  {
    FileName = GetFileName(a1, "bsave", 1);
    if (FileName)
    {
      if (EnvBsave(a1, FileName))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t EnvBsave(void *a1, char *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (Bloaded(a1))
  {
    PrintErrorID(a1, "BSAVE", 1, 0);
    EnvPrintRouter(a1, "werror", "Cannot perform a binary save while a binary load is in effect.\n");
LABEL_3:
    result = 0;
    goto LABEL_47;
  }

  v5 = GenOpen(a1, a2, "wb");
  if (!v5)
  {
    OpenErrorMessage(a1, "bsave", a2);
    goto LABEL_3;
  }

  v6 = v5;
  SaveCurrentModule(a1);
  v7 = strlen(**(a1[6] + 304));
  GenWrite(**(a1[6] + 304), v7 + 1, v6);
  v8 = strlen(*(*(a1[6] + 304) + 8));
  GenWrite(*(*(a1[6] + 304) + 8), v8 + 1, v6);
  *(*(a1[6] + 360) + 64) = 0;
  for (i = GetFunctionList(a1); i; i = *(i + 56))
  {
    *(i + 54) = 0;
  }

  InitAtomicValueNeededFlags(a1);
  FindHashedExpressions(a1);
  for (j = **(a1[6] + 312); j; j = *(j + 72))
  {
    v11 = *(j + 8);
    if (v11)
    {
      v11(a1);
    }
  }

  SetAtomicValueIndices(a1, 0);
  FunctionList = GetFunctionList(a1);
  if (FunctionList)
  {
    v13 = 0;
    do
    {
      if (*(FunctionList + 54))
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = v13;
      }

      if (!*(FunctionList + 54))
      {
        LOWORD(v13) = -1;
      }

      *(FunctionList + 54) = v13;
      FunctionList = *(FunctionList + 56);
      v13 = v14;
    }

    while (FunctionList);
  }

  else
  {
    v14 = 0;
  }

  *v28 = v14;
  GenWrite(v28, 8uLL, v6);
  if (*v28)
  {
    v15 = GetFunctionList(a1);
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      do
      {
        if ((*(v16 + 54) & 0x80000000) == 0)
        {
          v17 += strlen(*(*v16 + 24)) + 1;
        }

        v16 = *(v16 + 56);
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    *__dst = v17;
    GenWrite(__dst, 8uLL, v6);
    v18 = GetFunctionList(a1);
    if (v18)
    {
      v19 = v18;
      do
      {
        if ((*(v19 + 54) & 0x80000000) == 0)
        {
          v20 = strlen(*(*v19 + 24));
          GenWrite(*(*v19 + 24), v20 + 1, v6);
        }

        v19 = *(v19 + 56);
      }

      while (v19);
    }
  }

  else
  {
    GenWrite(v28, 8uLL, v6);
  }

  WriteNeededAtomicValues(a1, v6);
  GenWrite((*(a1[6] + 360) + 64), 8uLL, v6);
  v21 = a1[6];
  v22 = **(v21 + 312);
  if (v22)
  {
    do
    {
      if (*(v22 + 48))
      {
        genstrncpy(__dst, *v22, 0x14uLL);
        GenWrite(__dst, 0x14uLL, v6);
        (*(v22 + 48))(a1, v6);
      }

      v22 = *(v22 + 72);
    }

    while (v22);
    v21 = a1[6];
  }

  genstrncpy(v28, **(v21 + 304), 0x14uLL);
  GenWrite(v28, 0x14uLL, v6);
  *(*(a1[6] + 360) + 64) = 0;
  BsaveHashedExpressions(a1, v6);
  v23 = *(*(a1[6] + 360) + 64);
  BsaveConstructExpressions(a1, v6);
  *(*(a1[6] + 360) + 64) = v23;
  WriteNeededConstraints(a1, v6);
  v24 = a1[6];
  v25 = **(v24 + 312);
  if (v25)
  {
    do
    {
      if (*(v25 + 56))
      {
        genstrncpy(__dst, *v25, 0x14uLL);
        GenWrite(__dst, 0x14uLL, v6);
        (*(v25 + 56))(a1, v6);
      }

      v25 = *(v25 + 72);
    }

    while (v25);
    v24 = a1[6];
  }

  genstrncpy(v28, **(v24 + 304), 0x14uLL);
  GenWrite(v28, 0x14uLL, v6);
  RestoreAtomicValueBuckets(a1);
  GenClose(a1, v6);
  RestoreCurrentModule(a1);
  result = 1;
LABEL_47:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void *SaveBloadCount(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 472);
  v6 = *(*(v5 + 40) + 128);
  if (v6)
  {
    *(v5 + 32) = v6;
    *(*(*(v4 + 472) + 40) + 128) = **(*(v4 + 472) + 32);
    v7 = *(a1 + 48);
    result = *(*(v7 + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x10uLL);
    v7 = *(a1 + 48);
  }

  *result = a2;
  result[1] = 0;
  v9 = *(v7 + 312);
  v12 = *(v9 + 8);
  v10 = (v9 + 8);
  v11 = v12;
  if (v12)
  {
    do
    {
      v13 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
    v10 = (v13 + 8);
  }

  *v10 = result;
  return result;
}

uint64_t RestoreBloadCount(uint64_t result, void *a2)
{
  v2 = *(result + 48);
  v3 = *(v2 + 312);
  v4 = *(v3 + 8);
  v5 = v4[1];
  *a2 = *v4;
  *(v3 + 8) = v5;
  *(*(v2 + 472) + 32) = v4;
  **(*(v2 + 472) + 32) = *(*(*(v2 + 472) + 40) + 128);
  *(*(*(v2 + 472) + 40) + 128) = *(*(v2 + 472) + 32);
  return result;
}

uint64_t MarkNeededItems(uint64_t result, unsigned __int16 *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *v2;
      if (v4 > 0x21)
      {
        goto LABEL_11;
      }

      if (((1 << v4) & 0x20000010CLL) != 0 || v4 == 1)
      {
LABEL_12:
        *(*(v2 + 1) + 16) |= 4u;
        goto LABEL_13;
      }

      if (v4 == 30)
      {
        *(*(v2 + 1) + 54) = 1;
      }

      else
      {
LABEL_11:
        if (!*v2)
        {
          goto LABEL_12;
        }

        if (v4 != 175)
        {
          v5 = *(*(*(v3 + 48) + 352) + 8 * v4 + 24);
          if (v5)
          {
            if ((*(v5 + 8) & 0x4000) != 0)
            {
              goto LABEL_12;
            }
          }
        }
      }

LABEL_13:
      if (*(v2 + 2))
      {
        result = MarkNeededItems(v3);
      }

      v2 = *(v2 + 3);
    }

    while (v2);
  }

  return result;
}

uint64_t AddBinaryItem(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a1 + 48);
  v19 = *(v18 + 472);
  v20 = *(*(v19 + 40) + 640);
  if (v20)
  {
    *(v19 + 32) = v20;
    *(*(*(v18 + 472) + 40) + 640) = **(*(v18 + 472) + 32);
    v21 = *(a1 + 48);
    v22 = *(*(v21 + 472) + 32);
  }

  else
  {
    v22 = genalloc(a1, 0x50uLL);
    v21 = *(a1 + 48);
  }

  *v22 = a2;
  v22[1] = a4;
  v22[6] = a6;
  v22[7] = a7;
  v22[2] = a8;
  v22[3] = a9;
  v22[4] = a10;
  v22[5] = a5;
  *(v22 + 16) = a3;
  v23 = **(v21 + 312);
  if (!v23)
  {
    v22[9] = 0;
LABEL_14:
    v26 = *(v21 + 312);
    goto LABEL_15;
  }

  if (*(v23 + 64) <= a3)
  {
    v27 = **(v21 + 312);
LABEL_13:
    v22[9] = v23;
    goto LABEL_14;
  }

  v24 = **(v21 + 312);
  while (1)
  {
    v25 = v24;
    v24 = *(v24 + 72);
    if (!v24)
    {
      break;
    }

    if (*(v24 + 64) <= a3)
    {
      if (!v25)
      {
        goto LABEL_13;
      }

      break;
    }
  }

  v22[9] = v24;
  v26 = (v25 + 72);
LABEL_15:
  *v26 = v22;
  return 1;
}

void *IntersectConstraints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a2 | a3))
  {
    ConstraintRecord = GetConstraintRecord(a1);
    *ConstraintRecord |= 0x20000u;
    return ConstraintRecord;
  }

  v6 = a2;
  if (a2)
  {
    if (a3)
    {
      v7 = GetConstraintRecord(a1);
      ConstraintRecord = v7;
      if ((~(*a3 ^ *v6) & 0x60000) == 0)
      {
        v8 = *v7 & 0xFFFFFFFE;
LABEL_117:
        *ConstraintRecord = v8;
        return ConstraintRecord;
      }

      v10 = *v7 & 0xFFFDFFFF | ((((*v6 & *a3) >> 17) & 1) << 17);
      *v7 = v10;
      if ((*(v6 + 2) & 4) != 0 && (*(a3 + 2) & 4) != 0)
      {
        v11 = v10 | 0x40000;
      }

      else
      {
        v11 = v10 & 0xFFFBFFFF;
      }

      *v7 = v11;
      v12 = *v6;
      v13 = *a3;
      if (*v6)
      {
        v14 = v6;
        if (v13)
        {
          *ConstraintRecord = v11 | 1;
          goto LABEL_55;
        }
      }

      else
      {
        v14 = a3;
        if ((v13 & 1) == 0)
        {
          v15 = 1;
LABEL_21:
          v16 = *ConstraintRecord;
          *ConstraintRecord &= ~1u;
          if ((*v6 & 2) != 0)
          {
            v17 = *a3 & 2;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17 | v16 & 0xFFFFFFFC;
          *ConstraintRecord = v18;
          if ((*v6 & 4) != 0)
          {
            v19 = *a3 & 4;
          }

          else
          {
            v19 = 0;
          }

          v20 = v19 | v18 & 0xFFFFFFFA;
          *ConstraintRecord = v20;
          if ((*v6 & 8) != 0)
          {
            v21 = *a3 & 8;
          }

          else
          {
            v21 = 0;
          }

          v22 = v21 | v20 & 0xFFFFFFF6;
          *ConstraintRecord = v22;
          if ((*v6 & 0x10) != 0)
          {
            v23 = *a3 & 0x10;
          }

          else
          {
            v23 = 0;
          }

          v24 = v23 | v22 & 0xFFFFFFEE;
          *ConstraintRecord = v24;
          if ((*v6 & 0x20) != 0)
          {
            v25 = *a3 & 0x20;
          }

          else
          {
            v25 = 0;
          }

          v26 = v25 | v24 & 0xFFFFFFDE;
          *ConstraintRecord = v26;
          if ((*v6 & 0x40) != 0)
          {
            v27 = *a3 & 0x40;
          }

          else
          {
            v27 = 0;
          }

          v28 = v27 | v26 & 0xFFFFFFBE;
          *ConstraintRecord = v28;
          if ((*v6 & 0x80) != 0)
          {
            v29 = *a3 & 0x80;
          }

          else
          {
            v29 = 0;
          }

          v30 = v29 | v28 & 0xFFFFFF7E;
          *ConstraintRecord = v30;
          if ((*(v6 + 1) & 2) != 0)
          {
            v31 = *a3 & 0x200;
          }

          else
          {
            v31 = 0;
          }

          v32 = v31 | v30 & 0xFFFFFDFE;
          *ConstraintRecord = v32;
          if ((*(v6 + 2) & 2) != 0)
          {
            v33 = *a3 & 0x20000;
          }

          else
          {
            v33 = 0;
          }

          v34 = v33 | v32 & 0xFFFDFFFE;
          *ConstraintRecord = v34;
          if (*(v6 + 1))
          {
            v35 = *a3 & 0x100;
          }

          else
          {
            v35 = 0;
          }

          *ConstraintRecord = v35 | v34 & 0xFFFFFEFE;
          if (v12)
          {
            SetAnyAllowedFlags(v6, 1);
          }

          if ((v15 & 1) == 0)
          {
            SetAnyAllowedFlags(a3, 1);
          }

LABEL_55:
          if ((*(v6 + 1) & 4) != 0)
          {
            v36 = *ConstraintRecord;
          }

          else
          {
            v36 = *ConstraintRecord;
            if ((*(a3 + 1) & 4) == 0)
            {
              *ConstraintRecord = v36 & 0xFFFFFBFF;
              if ((*(v6 + 1) & 8) != 0)
              {
                v37 = 2048;
              }

              else
              {
                v37 = *a3 & 0x800;
              }

              v39 = v37 | v36 & 0xFFFFF3FF;
              *ConstraintRecord = v39;
              if ((*(v6 + 1) & 0x10) != 0)
              {
                v40 = 4096;
              }

              else
              {
                v40 = *a3 & 0x1000;
              }

              v41 = v40 | v39 & 0xFFFFEBFF;
              *ConstraintRecord = v41;
              if ((*(v6 + 1) & 0x20) != 0)
              {
                v42 = 0x2000;
              }

              else
              {
                v42 = *a3 & 0x2000;
              }

              v43 = v42 | v41 & 0xFFFFDBFF;
              *ConstraintRecord = v43;
              if ((*(v6 + 1) & 0x40) != 0)
              {
                v44 = 0x4000;
              }

              else
              {
                v44 = *a3 & 0x4000;
              }

              v45 = v44 | v43 & 0xFFFFBBFF;
              *ConstraintRecord = v45;
              if ((*(v6 + 1) & 0x80) != 0)
              {
                v46 = 0x8000;
              }

              else
              {
                v46 = *a3 & 0x8000;
              }

              v47 = v46 | v45 & 0xFFFF7BFF;
              *ConstraintRecord = v47;
              if (*(v6 + 2))
              {
                v48 = 0x10000;
              }

              else
              {
                v48 = *a3 & 0x10000;
              }

              v38 = v48 | v47 & 0xFFFEFBFF;
              goto LABEL_78;
            }
          }

          v38 = v36 | 0x400;
LABEL_78:
          *ConstraintRecord = v38;
          v49 = *(v6 + 16);
          if (v49)
          {
            v50 = 0;
            do
            {
              if (CheckAllowedValuesConstraint(*v49, *(v49 + 1), v6) && CheckAllowedValuesConstraint(*v49, *(v49 + 1), a3))
              {
                v51 = GenConstant(a1, *v49, *(v49 + 1));
                *(v51 + 3) = v50;
                v50 = v51;
              }

              v49 = *(v49 + 3);
            }

            while (v49);
          }

          else
          {
            v50 = 0;
          }

          for (i = *(a3 + 16); i; i = *(i + 3))
          {
            v53 = *i;
            v54 = *(i + 1);
            if (v50)
            {
              v55 = v50;
              while (*v55 != v53 || *(v55 + 1) != v54)
              {
                v55 = *(v55 + 3);
                if (!v55)
                {
                  goto LABEL_92;
                }
              }
            }

            else
            {
LABEL_92:
              if (CheckAllowedValuesConstraint(v53, v54, v6) && CheckAllowedValuesConstraint(*i, *(i + 1), a3))
              {
                v56 = GenConstant(a1, *i, *(i + 1));
                *(v56 + 3) = v50;
                v50 = v56;
              }
            }
          }

          *(ConstraintRecord + 2) = v50;
          v57 = *(v6 + 8);
          if (v57)
          {
            v58 = 0;
            do
            {
              v59 = *v57;
              v60 = *(v57 + 1);
              if (CheckAllowedClassesConstraint())
              {
                v61 = *v57;
                v62 = *(v57 + 1);
                if (CheckAllowedClassesConstraint())
                {
                  v63 = GenConstant(a1, *v57, *(v57 + 1));
                  *(v63 + 3) = v58;
                  v58 = v63;
                }
              }

              v57 = *(v57 + 3);
            }

            while (v57);
          }

          else
          {
            v58 = 0;
          }

          for (j = *(a3 + 8); j; j = *(j + 3))
          {
            if (v58)
            {
              v65 = v58;
              while (*v65 != *j || *(v65 + 1) != *(j + 1))
              {
                v65 = *(v65 + 3);
                if (!v65)
                {
                  goto LABEL_110;
                }
              }
            }

            else
            {
LABEL_110:
              if (CheckAllowedClassesConstraint())
              {
                v66 = *j;
                v67 = *(j + 1);
                if (CheckAllowedClassesConstraint())
                {
                  v68 = GenConstant(a1, *j, *(j + 1));
                  *(v68 + 3) = v58;
                  v58 = v68;
                }
              }
            }
          }

          *(ConstraintRecord + 1) = v58;
          IntersectNumericExpressions(a1, v6, a3, ConstraintRecord, 1);
          IntersectNumericExpressions(a1, v6, a3, ConstraintRecord, 0);
          UpdateRestrictionFlags(ConstraintRecord);
          if ((*(ConstraintRecord + 2) & 2) == 0)
          {
            return ConstraintRecord;
          }

          v69 = IntersectConstraints(a1, *(v6 + 56), *(a3 + 56));
          *(ConstraintRecord + 7) = v69;
          if (!UnmatchableConstraint(v69))
          {
            return ConstraintRecord;
          }

          v8 = *ConstraintRecord & 0xFFFDFFFF;
          goto LABEL_117;
        }
      }

      v15 = v12 & 1;
      SetAnyAllowedFlags(v14, 0);
      goto LABEL_21;
    }
  }

  else
  {
    a2 = a3;
  }

  return CopyConstraintRecord(a1, a2);
}

uint64_t IntersectNumericExpressions(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v5 = a4;
  v6 = 24;
  if (!a5)
  {
    v6 = 40;
  }

  v30 = v6;
  v7 = *(a2 + v6);
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = result;
  v9 = 0;
  v10 = 0;
  v31 = 0;
  v32 = 0;
  v26 = a5;
  v11 = 48;
  if (a5)
  {
    v11 = 32;
  }

  v12 = (a2 + v11);
  v28 = (a3 + v11);
  v29 = a3;
  do
  {
    v13 = *v12;
    v14 = *(a3 + v30);
    if (v14)
    {
      v15 = v28;
      do
      {
        v16 = *v15;
        v17 = CompareNumbers(v8, *v13, *(v13 + 1), **v15, *(*v15 + 1));
        v18 = CompareNumbers(v8, *v7, *(v7 + 1), *v14, *(v14 + 1));
        v19 = CompareNumbers(v8, *v13, *(v13 + 1), *v14, *(v14 + 1));
        v20 = CompareNumbers(v8, *v7, *(v7 + 1), *v16, *(v16 + 1));
        if (!v19 || v20 == 1)
        {
          v22 = v10;
          result = v9;
        }

        else
        {
          if (v18 == 1)
          {
            v21 = v7;
          }

          else
          {
            v21 = v14;
          }

          v22 = GenConstant(v8, *v21, *(v21 + 1));
          if (v17)
          {
            v23 = v16;
          }

          else
          {
            v23 = v13;
          }

          result = GenConstant(v8, *v23, *(v23 + 1));
          if (v10)
          {
            v10[3] = v22;
            *(v9 + 24) = result;
          }

          else
          {
            v31 = result;
            v32 = v22;
          }
        }

        v15 = (v16 + 12);
        v14 = *(v14 + 3);
        v9 = result;
        v10 = v22;
      }

      while (v14);
    }

    else
    {
      v22 = v10;
      result = v9;
    }

    v12 = (v13 + 12);
    v7 = *(v7 + 3);
    v9 = result;
    v10 = v22;
    a3 = v29;
  }

  while (v7);
  v5 = a4;
  a5 = v26;
  if (v32)
  {
    if (v26)
    {
      ReturnExpression(v8, a4[3]);
      result = ReturnExpression(v8, a4[4]);
      a4[3] = v32;
      a4[4] = v31;
    }

    else
    {
      ReturnExpression(v8, a4[5]);
      result = ReturnExpression(v8, a4[6]);
      a4[5] = v32;
      a4[6] = v31;
    }
  }

  else
  {
LABEL_28:
    if (a5)
    {
      v24 = *v5;
      if (*v5)
      {
        result = SetAnyAllowedFlags(v5, 0);
        v24 = *v5;
      }

      v25 = v24 & 0xFFFFFFE7;
    }

    else
    {
      result = SetAnyAllowedFlags(v5, 1);
      v25 = *v5 & 0xFFF9FFFE;
    }

    *v5 = v25;
  }

  return result;
}

unsigned __int32 *UpdateRestrictionFlags(unsigned __int32 *result)
{
  v1 = result;
  v2 = *result;
  if ((*result & 0x400) != 0 && !*(result + 2))
  {
    result = SetAnyAllowedFlags(result, 1);
    v2 = *v1 & 0xFFFFFFFE;
    *v1 = v2;
  }

  if ((~v2 & 0x802) == 0)
  {
    v3 = *(v1 + 2);
    if (v3)
    {
      while (*v3 != 2)
      {
        v3 = *(v3 + 24);
        if (!v3)
        {
          goto LABEL_10;
        }
      }

      LODWORD(v3) = 2;
    }

LABEL_10:
    v2 = v3 | v2 & 0xFFFFFFFD;
    *v1 = v2;
  }

  if ((~v2 & 0x1004) == 0)
  {
    v4 = *(v1 + 2);
    if (v4)
    {
      while (*v4 != 3)
      {
        v4 = *(v4 + 24);
        if (!v4)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v4) = 4;
    }

LABEL_17:
    v2 = v4 | v2 & 0xFFFFFFFB;
    *v1 = v2;
  }

  if ((~v2 & 0x2008) == 0)
  {
    v5 = *(v1 + 2);
    if (v5)
    {
      while (*v5)
      {
        v5 = *(v5 + 24);
        if (!v5)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v5) = 8;
    }

LABEL_24:
    v2 = v5 | v2 & 0xFFFFFFF7;
    *v1 = v2;
  }

  if ((~v2 & 0x4010) == 0)
  {
    v6 = *(v1 + 2);
    if (v6)
    {
      while (*v6 != 1)
      {
        v6 = *(v6 + 24);
        if (!v6)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v6) = 16;
    }

LABEL_31:
    v2 = v6 | v2 & 0xFFFFFFEF;
    *v1 = v2;
  }

  if ((~v2 & 0x10020) == 0)
  {
    v7 = *(v1 + 2);
    if (v7)
    {
      while (*v7 != 8)
      {
        v7 = *(v7 + 24);
        if (!v7)
        {
          goto LABEL_38;
        }
      }

      LODWORD(v7) = 32;
    }

LABEL_38:
    *v1 = v7 | v2 & 0xFFFFFFDF;
  }

  return result;
}

void *UnionConstraints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a2 | a3))
  {

    return GetConstraintRecord(a1);
  }

  v6 = a2;
  if (a2)
  {
    if (a3)
    {
      ConstraintRecord = GetConstraintRecord(a1);
      v8 = ConstraintRecord;
      v9 = *v6;
      if ((*v6 & 0x20000) != 0 || (*(a3 + 2) & 2) != 0)
      {
        *ConstraintRecord |= 0x20000u;
        v9 = *v6;
      }

      if ((v9 & 0x40000) != 0 || (*(a3 + 2) & 4) != 0)
      {
        *ConstraintRecord |= 0x40000u;
        v9 = *v6;
      }

      if (v9)
      {
        v10 = *ConstraintRecord;
      }

      else
      {
        v10 = *ConstraintRecord;
        if ((*a3 & 1) == 0)
        {
          *ConstraintRecord = v10 & 0xFFFFFFFE;
          if ((*v6 & 2) != 0)
          {
            v11 = 2;
          }

          else
          {
            v11 = *a3 & 2;
          }

          v13 = v11 | v10 & 0xFFFFFFFC;
          *ConstraintRecord = v13;
          if ((*v6 & 4) != 0)
          {
            v14 = 4;
          }

          else
          {
            v14 = *a3 & 4;
          }

          v15 = v14 | v13 & 0xFFFFFFFA;
          *ConstraintRecord = v15;
          if ((*v6 & 8) != 0)
          {
            v16 = 8;
          }

          else
          {
            v16 = *a3 & 8;
          }

          v17 = v16 | v15 & 0xFFFFFFF6;
          *ConstraintRecord = v17;
          if ((*v6 & 0x10) != 0)
          {
            v18 = 16;
          }

          else
          {
            v18 = *a3 & 0x10;
          }

          v19 = v18 | v17 & 0xFFFFFFEE;
          *ConstraintRecord = v19;
          if ((*v6 & 0x20) != 0)
          {
            v20 = 32;
          }

          else
          {
            v20 = *a3 & 0x20;
          }

          v21 = v20 | v19 & 0xFFFFFFDE;
          *ConstraintRecord = v21;
          if ((*v6 & 0x40) != 0)
          {
            v22 = 64;
          }

          else
          {
            v22 = *a3 & 0x40;
          }

          v23 = v22 | v21 & 0xFFFFFFBE;
          *ConstraintRecord = v23;
          if ((*v6 & 0x80) != 0)
          {
            v24 = 128;
          }

          else
          {
            v24 = *a3 & 0x80;
          }

          v25 = v24 | v23 & 0xFFFFFF7E;
          *ConstraintRecord = v25;
          if ((*(v6 + 1) & 2) != 0)
          {
            v26 = 512;
          }

          else
          {
            v26 = *a3 & 0x200;
          }

          v27 = v26 | v25 & 0xFFFFFDFE;
          *ConstraintRecord = v27;
          if (*(v6 + 1))
          {
            v28 = 256;
          }

          else
          {
            v28 = *a3 & 0x100;
          }

          v12 = v28 | v27 & 0xFFFFFEFE;
LABEL_49:
          *ConstraintRecord = v12;
          v29 = *v6;
          v30 = *a3;
          if ((*v6 & 0x400) != 0)
          {
            v31 = v6;
            if ((v30 & 0x400) != 0)
            {
              *v8 = v12 | 0x400;
LABEL_78:
              v46 = AddToUnionList(a1, *(v6 + 16), 0, v8);
              *(v8 + 16) = AddToUnionList(a1, *(a3 + 16), v46, v8);
              v47 = AddToUnionList(a1, *(v6 + 8), 0, v8);
              *(v8 + 8) = AddToUnionList(a1, *(a3 + 8), v47, v8);
              UnionNumericExpressions(a1, v6, a3, v8, 1);
              UnionNumericExpressions(a1, v6, a3, v8, 0);
              if ((*(v8 + 2) & 2) != 0)
              {
                *(v8 + 56) = UnionConstraints(a1, *(v6 + 56), *(a3 + 56));
              }

              return v8;
            }
          }

          else
          {
            v31 = a3;
            if ((v30 & 0x400) == 0)
            {
              LOBYTE(v32) = 1;
              goto LABEL_55;
            }
          }

          v32 = (v29 >> 10) & 1;
          SetAnyRestrictionFlags(v31, 0);
LABEL_55:
          v33 = *v8;
          *v8 &= ~0x400u;
          if ((*(v6 + 1) & 8) != 0)
          {
            v34 = *a3 & 0x800;
          }

          else
          {
            v34 = 0;
          }

          v35 = v34 | v33 & 0xFFFFF3FF;
          *v8 = v35;
          if ((*(v6 + 1) & 0x10) != 0)
          {
            v36 = *a3 & 0x1000;
          }

          else
          {
            v36 = 0;
          }

          v37 = v36 | v35 & 0xFFFFEBFF;
          *v8 = v37;
          if ((*(v6 + 1) & 0x20) != 0)
          {
            v38 = *a3 & 0x2000;
          }

          else
          {
            v38 = 0;
          }

          v39 = v38 | v37 & 0xFFFFDBFF;
          *v8 = v39;
          if ((*(v6 + 1) & 0x40) != 0)
          {
            v40 = *a3 & 0x4000;
          }

          else
          {
            v40 = 0;
          }

          v41 = v40 | v39 & 0xFFFFBBFF;
          *v8 = v41;
          if ((*(v6 + 1) & 0x80) != 0)
          {
            v42 = *a3 & 0x8000;
          }

          else
          {
            v42 = 0;
          }

          v43 = v42 | v41 & 0xFFFF7BFF;
          *v8 = v43;
          if (*(v6 + 2))
          {
            v44 = *a3 & 0x10000;
          }

          else
          {
            v44 = 0;
          }

          *v8 = v44 | v43 & 0xFFFEFBFF;
          if ((v29 & 0x400) != 0)
          {
            v45 = v6;
          }

          else
          {
            if (v32)
            {
              goto LABEL_78;
            }

            v45 = a3;
          }

          SetAnyRestrictionFlags(v45, 0);
          goto LABEL_78;
        }
      }

      v12 = v10 | 1;
      goto LABEL_49;
    }
  }

  else
  {
    a2 = a3;
  }

  return CopyConstraintRecord(a1, a2);
}

uint64_t UnionNumericExpressions(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = result;
  v22 = 0;
  v23 = 0;
  if (a5)
  {
    v9 = 24;
  }

  else
  {
    v9 = 40;
  }

  if (a5)
  {
    v10 = 32;
  }

  else
  {
    v10 = 48;
  }

  v11 = *(a2 + v9);
  if (v11)
  {
    v12 = (a2 + v10);
    do
    {
      v13 = *v12;
      result = UnionRangeMinMaxValueWithList(v8, v11, *v12, &v23, &v22);
      v12 = (v13 + 12);
      v11 = *(v11 + 24);
    }

    while (v11);
  }

  v14 = *(a3 + v9);
  if (v14)
  {
    v15 = (a3 + v10);
    do
    {
      v16 = *v15;
      result = UnionRangeMinMaxValueWithList(v8, v14, *v15, &v23, &v22);
      v15 = (v16 + 12);
      v14 = *(v14 + 24);
    }

    while (v14);
  }

  v17 = v23;
  if (v23)
  {
    if (a5)
    {
      ReturnExpression(v8, *(a4 + 24));
      result = ReturnExpression(v8, *(a4 + 32));
      v18 = v22;
      *(a4 + 24) = v17;
      *(a4 + 32) = v18;
    }

    else
    {
      ReturnExpression(v8, *(a4 + 40));
      result = ReturnExpression(v8, *(a4 + 48));
      v21 = v22;
      *(a4 + 40) = v17;
      *(a4 + 48) = v21;
    }
  }

  else
  {
    if (a5)
    {
      v19 = *a4;
      if (*a4)
      {
        result = SetAnyAllowedFlags(a4, 0);
        v19 = *a4;
      }

      v20 = v19 & 0xFFFFFFE7;
    }

    else
    {
      result = SetAnyAllowedFlags(a4, 1);
      v20 = *a4 | 1;
    }

    *a4 = v20;
  }

  return result;
}

unsigned __int32 *RemoveConstantFromConstraint(unsigned __int32 *result, int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = (a4 + 16);
    v6 = *(a4 + 16);
    *(a4 + 16) = 0;
    if (v6)
    {
      v9 = result;
      v10 = 0;
      do
      {
        if (*v6 == a2 && *(v6 + 1) == a3)
        {
          v12 = *(v6 + 3);
          *(v6 + 3) = 0;
          ReturnExpression(v9, v6);
        }

        else
        {
          v11 = v10 + 12;
          if (!v10)
          {
            v11 = v7;
          }

          *v11 = v6;
          v12 = *(v6 + 3);
          *(v6 + 3) = 0;
          v10 = v6;
        }

        v6 = v12;
      }

      while (v12);
    }

    return UpdateRestrictionFlags(a4);
  }

  return result;
}

uint64_t UnionRangeMinMaxValueWithList(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 **a4, uint64_t *a5)
{
  v10 = *a4;
  if (*a4)
  {
    v11 = a5;
    while (1)
    {
      v12 = *v11;
      v13 = CompareNumbers(a1, *a3, *(a3 + 1), **v11, *(*v11 + 8));
      v14 = CompareNumbers(a1, *a2, *(a2 + 1), *v10, *(v10 + 1));
      v15 = CompareNumbers(a1, *a3, *(a3 + 1), *v10, *(v10 + 1));
      result = CompareNumbers(a1, *a2, *(a2 + 1), *v12, *(v12 + 1));
      if ((v13 & 0xFFFFFFFD) == 0 && (v14 - 1) < 2)
      {
        break;
      }

      if (v13 == 1 && (result & 0xFFFFFFFD) == 0)
      {
        *v12 = *a3;
        *(v12 + 1) = *(a3 + 1);
      }

      if (v14 || (v15 - 1) > 1)
      {
        if (!v15)
        {
          v25 = GenConstant(a1, *a2, *(a2 + 1));
          result = GenConstant(a1, *a3, *(a3 + 1));
          *(v25 + 3) = *a4;
          *(result + 24) = *a5;
          *a4 = v25;
          goto LABEL_29;
        }
      }

      else
      {
        *v10 = *a2;
        *(v10 + 1) = *(a2 + 1);
      }

      v10 = *(v10 + 3);
      v11 = (v12 + 12);
      if (!v10)
      {
        v19 = *a4;
        if (v19)
        {
          v20 = *a5;
          do
          {
            v21 = *(v19 + 3);
            if (!v21)
            {
              break;
            }

            v22 = *(v20 + 3);
            result = CompareNumbers(a1, *v20, *(v20 + 1), *v21, *(v21 + 1));
            if ((result - 1) > 1)
            {
              v19 = *(v19 + 3);
              v20 = *(v20 + 3);
            }

            else
            {
              *v20 = *v22;
              *(v20 + 1) = *(v22 + 1);
              *(v20 + 3) = *(v22 + 3);
              *(v19 + 3) = *(v21 + 3);
              v23 = *(a1 + 48);
              *(*(v23 + 472) + 32) = v21;
              **(*(v23 + 472) + 32) = *(*(*(v23 + 472) + 40) + 256);
              *(*(*(v23 + 472) + 40) + 256) = *(*(v23 + 472) + 32);
              v24 = *(a1 + 48);
              *(*(v24 + 472) + 32) = v22;
              **(*(v24 + 472) + 32) = *(*(*(v24 + 472) + 40) + 256);
              *(*(*(v24 + 472) + 40) + 256) = *(*(v24 + 472) + 32);
            }
          }

          while (v19);
        }

        return result;
      }
    }
  }

  else
  {
    *a4 = GenConstant(a1, *a2, *(a2 + 1));
    result = GenConstant(a1, *a3, *(a3 + 1));
LABEL_29:
    *a5 = result;
  }

  return result;
}

unsigned __int16 *AddToUnionList(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, int *a4)
{
  if (a2)
  {
    v6 = a2;
    do
    {
      v8 = *v6;
      if (a3)
      {
        v9 = a3;
        while (v8 != *v9 || *(v6 + 1) != *(v9 + 1))
        {
          v9 = *(v9 + 3);
          if (!v9)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        if (a4)
        {
          v10 = *a4;
          if ((*a4 & 0x400) != 0 || (v8 == 2 ? (v11 = (*a4 & 0x800) == 0) : (v11 = 1), !v11 || v8 == 3 && (v10 & 0x1000) != 0 || !*v6 && (v10 & 0x2000) != 0 || v8 == 1 && (v10 & 0x4000) != 0 || (v8 - 7) <= 1 && (v10 & 0x8000) != 0 || v8 == 8 && (v10 & 0x10000) != 0))
          {
            v12 = GenConstant(a1, v8, *(v6 + 1));
            *(v12 + 3) = a3;
            a3 = v12;
          }
        }
      }

      v6 = *(v6 + 3);
    }

    while (v6);
  }

  return a3;
}

uint64_t DeallocateFactBloadData(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 48) + 496);
  v3 = v2[1];
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      result = DestroyAlphaMemory(v1, *v2 + v4, 0);
      ++v5;
      v2 = *(*(v1 + 48) + 496);
      v3 = v2[1];
      v4 += 96;
    }

    while (v3 > v5);
  }

  if (96 * v3)
  {
    v6 = *v2;

    return genfree(v1, v6, 96 * v3);
  }

  return result;
}

uint64_t BsaveFind_0(uint64_t a1)
{
  SaveBloadCount(a1, *(*(*(a1 + 48) + 496) + 8));
  *(*(*(a1 + 48) + 496) + 8) = 0;
  result = EnvGetNextDefmodule(a1, 0);
  if (result)
  {
    v3 = result;
    do
    {
      EnvSetCurrentModule(a1, v3);
      NextDeftemplate = EnvGetNextDeftemplate(a1, 0);
      if (NextDeftemplate)
      {
        v5 = NextDeftemplate;
        do
        {
          v6 = *(v5 + 72);
          if (v6)
          {
            v7 = *(*(a1 + 48) + 496);
            v8 = *(v7 + 8);
            do
            {
LABEL_7:
              v9 = v6;
              *(v6 + 40) = v8++;
              v6 = *(v6 + 64);
            }

            while (v6);
            do
            {
              v6 = *(v9 + 88);
              if (v6)
              {
                goto LABEL_7;
              }

              v9 = *(v9 + 72);
            }

            while (v9);
            *(v7 + 8) = v8;
          }

          v5 = EnvGetNextDeftemplate(a1, v5);
        }

        while (v5);
      }

      result = EnvGetNextDefmodule(a1, v3);
      v3 = result;
    }

    while (result);
  }

  return result;
}

const void *BsaveStorage_0(uint64_t a1, FILE *__stream)
{
  v5 = 8;
  GenWrite(&v5, 8uLL, __stream);
  return GenWrite((*(*(a1 + 48) + 496) + 8), 8uLL, __stream);
}

uint64_t BsaveFactPatterns(void *a1, FILE *__stream)
{
  v9 = 72 * *(*(a1[6] + 496) + 8);
  GenWrite(&v9, 8uLL, __stream);
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    do
    {
      EnvSetCurrentModule(a1, v5);
      NextDeftemplate = EnvGetNextDeftemplate(a1, 0);
      if (NextDeftemplate)
      {
        v7 = NextDeftemplate;
        do
        {
          BsaveDriver(a1, 1, __stream, *(v7 + 72));
          v7 = EnvGetNextDeftemplate(a1, v7);
        }

        while (v7);
      }

      v5 = EnvGetNextDefmodule(a1, v5);
    }

    while (v5);
  }

  return RestoreBloadCount(a1, (*(a1[6] + 496) + 8));
}

size_t BloadStorage_0(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  result = GenReadBinary(a1, (*(*(a1 + 48) + 496) + 8), 8uLL);
  v3 = *(*(a1 + 48) + 496);
  v4 = v3[1];
  if (v4)
  {
    __ptr = 96 * v4;
    result = genalloc(a1, 96 * v4);
    **(*(a1 + 48) + 496) = result;
  }

  else
  {
    *v3 = 0;
  }

  return result;
}

uint64_t BloadBinaryItem_0(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  result = BloadandRefresh(a1, *(*(*(a1 + 48) + 496) + 8), 72, UpdateFactPatterns);
  v3 = *(a1 + 48);
  v4 = *(v3 + 496);
  if (v4[1] >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *v4;
      v8 = *(v7 + v5 + 72);
      if (v8)
      {
        if (*(v8 + 32) < 0)
        {
          result = AddHashedPatternNode(a1, v8, v7 + v5, **(v7 + v5 + 56), *(*(v7 + v5 + 56) + 8));
          v3 = *(a1 + 48);
        }
      }

      ++v6;
      v4 = *(v3 + 496);
      v5 += 96;
    }

    while (v6 < v4[1]);
  }

  return result;
}

uint64_t ClearBload_0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  v3 = *(v2 + 496);
  v4 = v3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *v3;
      v8 = *&v7[v5 + 72];
      if (v8 && *(v8 + 32) < 0)
      {
        result = RemoveHashedPatternNode(v1, v8, &v7[v5], **&v7[v5 + 56], *(*&v7[v5 + 56] + 8));
        v2 = *(v1 + 48);
      }

      ++v6;
      v3 = *(v2 + 496);
      v4 = v3[1];
      v5 += 96;
    }

    while (v6 < v4);
  }

  if (96 * v4)
  {
    result = genfree(v1, *v3, 96 * v4);
    v2 = *(v1 + 48);
  }

  *(*(v2 + 496) + 8) = 0;
  return result;
}

const void *BsaveDriver(const void *result, int a2, FILE *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    while (1)
    {
      do
      {
        v7 = a4;
        if (a2)
        {
          v22 = 0;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          AssignBsavePatternHeaderValues(v6, &v18, a4);
          WORD5(v19) = *(v7 + 48);
          WORD6(v19) = *(v7 + 52);
          WORD4(v19) = *(v7 + 50);
          *&v20 = HashedExpressionIndex(v6, *(v7 + 56));
          v8 = *(v7 + 64);
          if (v8)
          {
            v9 = *(v8 + 40);
          }

          else
          {
            v9 = -1;
          }

          *(&v20 + 1) = v9;
          v12 = *(v7 + 72);
          if (v12)
          {
            v13 = *(v12 + 40);
          }

          else
          {
            v13 = -1;
          }

          *&v21 = v13;
          v14 = *(v7 + 80);
          if (v14)
          {
            v15 = *(v14 + 40);
          }

          else
          {
            v15 = -1;
          }

          *(&v21 + 1) = v15;
          v16 = *(v7 + 88);
          if (v16)
          {
            v17 = *(v16 + 40);
          }

          else
          {
            v17 = -1;
          }

          v22 = v17;
          result = GenWrite(&v18, 0x48uLL, a3);
        }

        else
        {
          v10 = *(*(v6 + 48) + 496);
          v11 = *(v10 + 8);
          *(v10 + 8) = v11 + 1;
          *(a4 + 40) = v11;
        }

        a4 = *(v7 + 64);
      }

      while (a4);
      while (1)
      {
        a4 = *(v7 + 88);
        if (a4)
        {
          break;
        }

        v7 = *(v7 + 72);
        if (!v7)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t UpdateFactPatterns(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 3 * a3;
  result = UpdatePatternNodeHeader(a1, **(*(a1 + 48) + 496) + 96 * a3, a2);
  v7 = *(a1 + 48);
  v8 = **(v7 + 496) + 32 * v5;
  *(v8 + 40) = 0;
  *(v8 + 48) = *(a2 + 26);
  *(v8 + 52) = *(a2 + 28);
  *(v8 + 50) = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(*(v7 + 360) + 56) + 32 * v9;
  }

  *(v8 + 56) = v10;
  v11 = **(v7 + 496);
  v13 = *(a2 + 56);
  v12 = *(a2 + 64);
  v14 = v12 == -1;
  v15 = v11 + 96 * v12;
  if (v14)
  {
    v15 = 0;
  }

  *(v11 + 32 * v5 + 88) = v15;
  v16 = **(v7 + 496);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v14 = v17 == -1;
  v19 = v16 + 96 * v17;
  if (v14)
  {
    v19 = 0;
  }

  *(v16 + 32 * v5 + 64) = v19;
  v20 = **(v7 + 496);
  v21 = v20 + 96 * v18;
  if (v18 == -1)
  {
    v21 = 0;
  }

  *(v20 + 32 * v5 + 72) = v21;
  v22 = **(v7 + 496);
  v23 = v22 + 96 * v13;
  if (v13 == -1)
  {
    v23 = 0;
  }

  *(v22 + 32 * v5 + 80) = v23;
  return result;
}

void __libnetcoreSymptomTrampoline_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 88);
  v8 = *(a1 + 92);
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (a3)
  {
    (*(v4 + 16))(v4, v7, v6, v9, v8, v11, v10, v5, 0, *(a1 + 96), *(a1 + 104), *(a1 + 64));
  }

  else
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    (*(v4 + 16))(v4, v7, v6, v9, v8, v11, v10, v5, v12, *(a1 + 96), *(a1 + 104), *(a1 + 64));
  }
}

void cell_server_connection_callback(const void *a1, void *a2, void *a3, uint64_t a4)
{
  v86 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (CFEqual(a1, *MEMORY[0x277CC3BB8]))
  {
    if (a2)
    {
      v8 = a2;
      v9 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v81 = v8;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "eLQM: CT payload containing eLQM supported metrics: %@", buf, 0xCu);
      }

      if (v7)
      {
        v10 = [v7 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __cell_server_connection_callback_block_invoke;
        block[3] = &unk_27898A7D0;
        v78 = v7;
        v79 = v8;
        dispatch_async(v10, block);
      }

      else
      {
        v14 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "eLQM: NetworkAnalyticsEngine not initialized yet when CT notification came for eLQM supported metrics", buf, 2u);
        }
      }

      goto LABEL_17;
    }

LABEL_18:
    v15 = 0;
    v16 = 0;
    goto LABEL_19;
  }

  if (CFEqual(a1, *MEMORY[0x277CC3BE8]))
  {
    if (!a2)
    {
      goto LABEL_18;
    }

    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v81 = a2;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "eLQM: RegistrationCell notification: %@", buf, 0xCu);
    }

    if (!v7)
    {
      goto LABEL_17;
    }

    v12 = [v7 queue];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __cell_server_connection_callback_block_invoke_175;
    v75[3] = &unk_27898A0C8;
    v76 = v7;
    dispatch_async(v12, v75);

    v13 = v76;
LABEL_13:

LABEL_17:
    a2 = 0;
    goto LABEL_18;
  }

  if (CFEqual(a1, *MEMORY[0x277CC3CB0]))
  {
    if (!a2)
    {
      goto LABEL_18;
    }

    v21 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v81 = a2;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "eLQM: RegistrationDataStatus notification: %@", buf, 0xCu);
    }

    Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC3C30]);
    if (!Value)
    {
      goto LABEL_17;
    }

    v23 = Value;
    v87.length = CFArrayGetCount(Value);
    v87.location = 0;
    if (!CFArrayContainsValue(v23, v87, *MEMORY[0x277CC39E0]))
    {
      goto LABEL_17;
    }

    v24 = CFDictionaryGetValue(a2, *MEMORY[0x277CC3C20]);
    if (!v24)
    {
      goto LABEL_17;
    }

    v25 = v24;
    v26 = CFGetTypeID(v24);
    if (v26 != CFBooleanGetTypeID())
    {
      goto LABEL_17;
    }

    v27 = CFBooleanGetValue(v25);
    valuePtr = 0;
    v28 = CFDictionaryGetValue(a2, *MEMORY[0x277CC3C38]);
    if (!v28 || (v29 = v28, v30 = CFGetTypeID(v28), v30 != CFNumberGetTypeID()) || !CFNumberGetValue(v29, kCFNumberIntType, &valuePtr))
    {
      v15 = 0;
      v16 = 0;
LABEL_91:
      a2 = 0;
      goto LABEL_19;
    }

    v31 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v81 = v27;
      *&v81[4] = 1024;
      *&v81[6] = valuePtr;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "CIS: Notification status = %d, PDP context id = %d", buf, 0xEu);
    }

    if ([v7 _getCellSPIType] == 3)
    {
      if (!v27)
      {
        v15 = dword_2814D3014 != -2;
        if (dword_2814D3014 != -2)
        {
          cellLqmState = -2;
        }

        if (cellRrcState)
        {
          cellRrcState = 0;
          v16 = 1;
          goto LABEL_103;
        }

LABEL_102:
        v16 = 0;
        goto LABEL_103;
      }

      if (dword_2814D3014 == -2)
      {
        if (cellLqmState == 254)
        {
          v16 = 0;
          if (a4)
          {
            v32 = 100;
          }

          else
          {
            v32 = -1;
          }

          cellLqmState = v32;
        }

        else
        {
          v16 = 0;
        }

        v15 = 1;
LABEL_103:
        if (v7)
        {
          v61 = [v7 queue];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __cell_server_connection_callback_block_invoke_177;
          v70[3] = &unk_27898D8C8;
          v71 = v7;
          v73 = v27;
          v72 = valuePtr;
          dispatch_async(v61, v70);
        }

        goto LABEL_91;
      }
    }

    v15 = 0;
    goto LABEL_102;
  }

  if (CFEqual(a1, *MEMORY[0x277CC3BA0]))
  {
    valuePtr = 0;
    if (a2)
    {
      v33 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v81 = a2;
        _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "eLQM: EnhancedLinkQuality notification: %@", buf, 0xCu);
      }

      v34 = CFDictionaryGetValue(a2, *MEMORY[0x277CC3BB0]);
      if (v34)
      {
        v35 = v34;
        v36 = CFGetTypeID(v34);
        if (v36 == CFNumberGetTypeID())
        {
          if (CFNumberGetValue(v35, kCFNumberIntType, &valuePtr))
          {
            v37 = CFDictionaryGetValue(a2, *MEMORY[0x277CC3BA8]);
            a2 = v37;
            buffer = 0;
            if (v37 && (v38 = CFGetTypeID(v37), v38 == CFDataGetTypeID()))
            {
              v88.location = 0;
              v88.length = 1;
              CFDataGetBytes(a2, v88, &buffer);
              if (buffer - 1 <= 1)
              {
                v39 = a2;
                if (valuePtr > 19)
                {
                  if (valuePtr <= 21)
                  {
                    if (valuePtr == 20)
                    {
                      [v7 processCellDataTransferTimeEnabledNotification:v39];
                    }

                    else
                    {
                      [v7 processCellLinkPowerCostNotification:v39];
                    }

                    goto LABEL_127;
                  }

                  if (valuePtr == 22)
                  {
                    [v7 processCellDataStallNotification:v39];
                    goto LABEL_127;
                  }

                  if (valuePtr == 23)
                  {
                    v63 = +[CoreTelephonyShim sharedInstance];
                    v64 = [v63 processEnhancedLinkQualityHighThroughputNotification:v39];
                    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v64];
                    [v7 processCellHighThroughputState:v65];

                    goto LABEL_127;
                  }
                }

                else
                {
                  if (valuePtr > 17)
                  {
                    if (valuePtr == 18)
                    {
                      [v7 processCellTrafficClassNotification:v39];
                    }

                    else
                    {
                      [v7 processCellDataTransferTimeNotification:v39];
                    }

                    goto LABEL_127;
                  }

                  if (valuePtr == 16)
                  {
                    [v7 processCellLinkStateNotification:v39];
                    goto LABEL_127;
                  }

                  if (valuePtr == 17)
                  {
                    [v7 processCellLinkFingerprintNotification:v39];
LABEL_127:

                    goto LABEL_18;
                  }
                }

                v66 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *v81 = valuePtr;
                  _os_log_impl(&dword_23255B000, v66, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB notification with unknown type, ntype = %u", buf, 8u);
                }

                goto LABEL_127;
              }

              v62 = netepochsLogHandle;
              if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_18;
              }

              *buf = 67109378;
              *v81 = buffer;
              *&v81[4] = 2112;
              *&v81[6] = a2;
              v57 = "eLQM: Received BB notification with unknown version = %d, payload = %@";
              v58 = v62;
              v59 = 18;
            }

            else
            {
              v56 = netepochsLogHandle;
              if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_18;
              }

              *buf = 0;
              v57 = "eLQM: Received BB notification with payload nil";
              v58 = v56;
              v59 = 2;
            }

            _os_log_impl(&dword_23255B000, v58, OS_LOG_TYPE_DEFAULT, v57, buf, v59);
            goto LABEL_18;
          }
        }
      }
    }
  }

  if (!CFEqual(a1, *MEMORY[0x277CC39A0]))
  {
    if (!CFEqual(a1, *MEMORY[0x277CC3EC8]))
    {
      goto LABEL_17;
    }

    if (a2)
    {
      v49 = CFDictionaryGetValue(a2, *MEMORY[0x277CC3EC0]);
      if (v49)
      {
        v50 = CFGetTypeID(v49);
        if (v50 != CFNullGetTypeID())
        {
          if (!v7)
          {
            goto LABEL_17;
          }

          v60 = [v7 queue];
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __cell_server_connection_callback_block_invoke_183;
          v67[3] = &unk_27898A0C8;
          v68 = v7;
          dispatch_async(v60, v67);

          v13 = v68;
          goto LABEL_13;
        }
      }

      v51 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 138412290;
      *v81 = a2;
      v46 = "kCTSIMSupportSIMStatusChangeNotification notificationInfo = %@";
      v47 = v51;
      v48 = OS_LOG_TYPE_ERROR;
      goto LABEL_82;
    }

    v55 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v46 = "kCTSIMSupportSIMStatusChangeNotification with no info";
    v47 = v55;
    v48 = OS_LOG_TYPE_ERROR;
LABEL_94:
    v52 = 2;
    goto LABEL_95;
  }

  v40 = netepochsLogHandle;
  v41 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (!v41)
    {
      goto LABEL_17;
    }

    *buf = 0;
    v46 = "Invalid CT notification for key kCTCellularTransmitStateNotification, no info";
    v47 = v40;
    v48 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_94;
  }

  if (v41)
  {
    *buf = 138412290;
    *v81 = a2;
    _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "eLQM: CellularTransmitState notification: %@", buf, 0xCu);
  }

  v42 = CFDictionaryGetValue(a2, *MEMORY[0x277CC43B0]);
  if (!v42 || (v43 = v42, v44 = CFGetTypeID(v42), v44 == CFNullGetTypeID()))
  {
    v45 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    *v81 = a2;
    v46 = "Unexpected format in CT notification for key kCTCellularTransmitStateNotification, info: %@";
    v47 = v45;
    v48 = OS_LOG_TYPE_DEFAULT;
LABEL_82:
    v52 = 12;
LABEL_95:
    _os_log_impl(&dword_23255B000, v47, v48, v46, buf, v52);
    goto LABEL_17;
  }

  v53 = v43;
  v54 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v81 = v53;
    _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_DEFAULT, "Received CT notification for key kCTCellularTransmitStateNotification, cellTransmitState = %@", buf, 0xCu);
  }

  v16 = v7 != 0;
  if (v7)
  {
    cellRrcState = [v53 isEqualToString:@"CTCellularTransmitStarted"];
  }

  a2 = 0;
  v15 = 0;
LABEL_19:
  if (v15 || v16)
  {
    v17 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *v81 = a2;
      *&v81[8] = 1024;
      *&v81[10] = cellLqmState;
      v82 = 1024;
      v83 = cellRrcState;
      v84 = 1024;
      v85 = cellInterfaceState;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "eLQM: Updated cell states (payload = %@): (LQM = %d, RRC = %d, INTF = %d)", buf, 0x1Eu);
    }
  }

  v18 = !v16;
  if (!v7)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    [v7 handleRRCChange];
  }

  v19 = !v15;
  if (!v7)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    [v7 handleLQMChange];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __cell_server_connection_callback_block_invoke_175(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [NetworkStateRelay getStateRelayFor:5];
  v3 = [v2 interfaceName];

  if (v3)
  {
    if ([*(a1 + 32) _getCellInternetStatus])
    {
      v4 = [v2 interfaceName];
      v5 = [*(a1 + 32) _getCellInternetPDPContext];
      v6 = [v4 isEqualToString:v5];

      if (v6)
      {
        v7 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
          v9 = [v2 interfaceName];
          v13 = 138412290;
          v14 = v9;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "CT cell change notification on interface = %@, roaming = 1", &v13, 0xCu);
        }

        v10 = *(a1 + 32);
        v11 = [v2 interfaceName];
        [v10 _cellNetworkChangeForInterface:v11 roamingEvent:1];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void resync_tether_state(const __SCDynamicStore *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = SCDynamicStoreCopyValue(a1, @"com.apple.MobileInternetSharing");
  if (v1)
  {
    v2 = v1;
    v3 = [v2 objectForKeyedSubscript:@"State"];
    v4 = [v3 intValue];

    v5 = [v2 objectForKeyedSubscript:@"Hosts"];
    v6 = [v5 objectForKeyedSubscript:@"Type"];

    v7 = [v6 objectForKeyedSubscript:@"Wifi-NAN"];
    v8 = [v7 unsignedIntValue];

    v9 = [v6 objectForKeyedSubscript:@"AirPort"];
    v10 = [v9 unsignedIntValue];

    CFRelease(v2);
    v11 = +[PersonalHotspotRelay sharedInstance];
    [v11 updateWithState:v4 softAPClientCount:v10 wifiNanClientCount:v8];
    v16 = @"State";
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v4 == 1023];
    v17[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"kNotificationOfTetheringState" object:_SCDynamicStoreCaller userInfo:v13];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __config_callback_block_invoke_205(uint64_t a1)
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Received SCDynamicStore notification for DNS key, coalesced", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __config_callback_block_invoke_206;
    block[3] = &unk_27898A0C8;
    v6 = *(a1 + 32);
    dispatch_async(v4, block);
  }

  config_callback_pendingConfigChange = 0;
}

void __config_callback_block_invoke_206(uint64_t a1)
{
  v3 = [*(a1 + 32) _epochForInterfaceType:3];
  v2 = [*(a1 + 32) _epochForInterfaceType:5];
  if (v3)
  {
    [*(a1 + 32) _retrieveDNSServersForEpoch:v3];
  }

  if (v2)
  {
    [*(a1 + 32) _retrieveDNSServersForEpoch:v2];
  }
}

void __config_callback_block_invoke_207(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _epochForInterfaceType:*(a1 + 56)];
  if (v2)
  {
    v3 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      v5 = *(a1 + 48);
      v6 = *(a1 + 52);
      v12 = 134218496;
      v13 = v4;
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Computing loaded LQM upon DS notification on interface type %ld, LQM(old/new) = (%d/%d)", &v12, 0x18u);
    }

    [*(a1 + 32) _computeAndApplyLoadedLqmFrom:**(a1 + 40) oldLqm:*(a1 + 48) onInterfaceType:*(a1 + 56)];
  }

  else
  {
    pendedLqm[*(a1 + 56)] = *(a1 + 48);
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 56);
      v9 = *(a1 + 48);
      v10 = *(a1 + 52);
      v12 = 134218496;
      v13 = v8;
      v14 = 1024;
      v15 = v9;
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Epoch is nil upon DS notification, defer computing loaded LQM on interface type %ld, LQM(pended/new) = (%d/%d)", &v12, 0x18u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __config_callback_block_invoke_208(uint64_t a1)
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 52);
  if (v2 != 7)
  {
    goto LABEL_4;
  }

  v3 = [NetworkStateRelay getStateRelayFor:7];
  v4 = [v3 interfaceName];
  if ([v4 isEqualToString:*(a1 + 32)])
  {

    v2 = *(a1 + 52);
LABEL_4:
    v5 = *(&realTimeLqm + v2);
    *(&realTimeLqm + v2) = *(a1 + 48);
    [*(a1 + 40) _trackRealTimeLqmLastUpdatedOnInterfaceType:*(a1 + 52)];
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 52);
      v8 = *(a1 + 48);
      v12 = 134218496;
      v13 = v7;
      v14 = 1024;
      *v15 = v5;
      v15[2] = 1024;
      *&v15[3] = v8;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Computing loaded LQM upon DS notification on interface type %ld, LQM(old/new) = (%d/%d)", &v12, 0x18u);
    }

    [*(a1 + 40) _computeAndApplyLoadedLqmFrom:*(&realTimeLqm + v2) oldLqm:v5 onInterfaceType:*(a1 + 52)];
    goto LABEL_10;
  }

  v9 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    *v15 = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Companion link interface name %@ doesn't match, ignoring LQM notification for %@", &v12, 0x16u);
  }

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
}

unint64_t combinedStats(void *a1, double *a2, double *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (v6)
  {
    v10 = v6;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        [v13 epochs];
        v8 = v8 + v14;
        [v13 overallStay];
        v9 = v9 + v15;
      }

      v10 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  v16 = v9 / v8;
  *a2 = v9 / v8;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    v7 = 0.0;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * j);
        [v22 overallStay];
        v24 = v23;
        [v22 epochs];
        v26 = v24 / v25;
        [v22 overallStayM2];
        v28 = v27;
        [v22 epochs];
        v7 = v7 + v28 + v26 * v29 * v26;
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v19);
  }

  *a3 = (v7 + -(v8 * v16) * v16) / (v8 + -1.0);
  v30 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_232698358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_232698DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23269984C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t primary_key_has_bssid(void *a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = [a1 componentsSeparatedByString:@"-"];
    if ([v3 count] >= 2)
    {
      v4 = [v3 lastObject];
      v2 = bssidFromString(v4) == v2;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t bssidFromString(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && CFStringGetCString(v1, buffer, 19, 0) && (v3 = ether_aton(buffer)) != 0)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v3->octet[0];
      v3 = (v3 + 1);
      v5 |= v6 << v4;
      v4 += 8;
    }

    while (v4 != 48);
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_23269F690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v39 + 48));
  _Block_object_dispose((v40 - 144), 8);
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2326A2A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2326AA0DC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3C0], 8);
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Unwind_Resume(a1);
}

void sub_2326ADD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2326AF168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2326B42B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2326B76EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t InitializeBloadData(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x26u, 0x40uLL, 0);
  AddEnvironmentCleanupFunction(a1, "bload", DeallocateBloadData, -1500);
  result = EnvAddClearFunction(a1, "bload", ClearBload_1, 10000);
  v3 = *(a1 + 48);
  **(v3 + 304) = "\x01\x02\x03\x04CLIPS";
  *(*(v3 + 304) + 8) = "V6.30";
  return result;
}

uint64_t DeallocateBloadData(uint64_t a1)
{
  DeallocateCallList(a1, *(*(*(a1 + 48) + 304) + 32));
  DeallocateCallList(a1, *(*(*(a1 + 48) + 304) + 40));
  DeallocateCallList(a1, *(*(*(a1 + 48) + 304) + 48));
  v2 = *(*(*(a1 + 48) + 304) + 56);

  return DeallocateCallList(a1, v2);
}

uint64_t ClearBload_1(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 304);
  if (!*(v1 + 24))
  {
    return 1;
  }

  v3 = *(v1 + 48);
  if (!v3)
  {
LABEL_15:
    for (i = **(*(a1 + 48) + 312); i; i = *(i + 72))
    {
      v9 = *(i + 32);
      if (v9)
      {
        v9(a1);
      }
    }

    ClearBloadedExpressions(a1);
    ClearBloadedConstraints(a1);
    *(*(*(a1 + 48) + 304) + 24) = 0;
    return 1;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    while (1)
    {
      v6 = *(v3 + 8);
      if (!*(v3 + 32))
      {
        break;
      }

      if ((v6)(a1))
      {
        goto LABEL_6;
      }

LABEL_9:
      if (v5)
      {
        PrintErrorID(a1, "BLOAD", 5, 0);
        EnvPrintRouter(a1, "werror", "Some constructs are still in use by the current binary image:\n");
      }

      EnvPrintRouter(a1, "werror", "   ");
      EnvPrintRouter(a1, "werror", *v3);
      EnvPrintRouter(a1, "werror", "\n");
      v5 = 0;
      v3 = *(v3 + 24);
      v4 = 1;
      if (!v3)
      {
        goto LABEL_14;
      }
    }

    if (!v6())
    {
      goto LABEL_9;
    }

LABEL_6:
    v3 = *(v3 + 24);
  }

  while (v3);
  if ((v4 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  EnvPrintRouter(a1, "werror", "Binary clear cannot continue.\n");
  return 0;
}

uint64_t EnvBload(uint64_t a1, char *__filename)
{
  v44 = *MEMORY[0x277D85DE8];
  result = GenOpenReadBinary(a1, "bload", __filename);
  if (!result)
  {
    goto LABEL_9;
  }

  v40 = 0;
  __ptr = 0;
  v5 = strlen(**(*(a1 + 48) + 304));
  GenReadBinary(a1, __s1, v5 + 1);
  v6 = *(*(a1 + 48) + 304);
  if (strcmp(__s1, *v6))
  {
    PrintErrorID(a1, "BLOAD", 2, 0);
    EnvPrintRouter(a1, "werror", "File ");
    EnvPrintRouter(a1, "werror", __filename);
    v7 = " is not a binary construct file.\n";
LABEL_6:
    EnvPrintRouter(a1, "werror", v7);
LABEL_7:
    GenCloseBinary(a1);
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v8 = strlen(v6[1]);
  GenReadBinary(a1, __s1, v8 + 1);
  v9 = *(*(a1 + 48) + 304);
  if (strcmp(__s1, *(v9 + 8)))
  {
    PrintErrorID(a1, "BLOAD", 3, 0);
    EnvPrintRouter(a1, "werror", "File ");
    EnvPrintRouter(a1, "werror", __filename);
    v7 = " is an incompatible binary construct file.\n";
    goto LABEL_6;
  }

  if (*(v9 + 24) && !ClearBload_1(a1))
  {
    goto LABEL_7;
  }

  if (!ClearReady(a1))
  {
    GenCloseBinary(a1);
    EnvPrintRouter(a1, "werror", "The ");
    EnvPrintRouter(a1, "werror", "CLIPS");
    EnvPrintRouter(a1, "werror", " environment could not be cleared.\n");
    EnvPrintRouter(a1, "werror", "Binary load cannot continue.\n");
    goto LABEL_8;
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 336);
  *(v12 + 4) = 1;
  v13 = *(*(v11 + 304) + 32);
  if (v13)
  {
    do
    {
      v14 = *(v13 + 8);
      if (*(v13 + 32))
      {
        (v14)(a1);
      }

      else
      {
        v14();
      }

      v13 = *(v13 + 24);
    }

    while (v13);
    v12 = *(*(a1 + 48) + 336);
  }

  *(v12 + 4) = 0;
  *__s2 = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  GenReadBinary(a1, __s2, 8uLL);
  if (!__ptr)
  {
    v17 = 0;
LABEL_45:
    *(*(*(a1 + 48) + 304) + 16) = v17;
    ReadNeededAtomicValues(a1);
    AllocateExpressions(a1);
    GenReadBinary(a1, __s2, 0x14uLL);
    for (i = *(a1 + 48); strncmp(__s2, **(i + 304), 0x14uLL); i = *(a1 + 48))
    {
      v28 = **(i + 312);
      if (!v28)
      {
        goto LABEL_52;
      }

      while (strncmp(*v28, __s2, 0x14uLL))
      {
        v28 = *(v28 + 72);
        if (!v28)
        {
          goto LABEL_52;
        }
      }

      v29 = *(v28 + 16);
      if (v29)
      {
        v29(a1);
      }

      else
      {
LABEL_52:
        GenReadBinary(a1, &v40, 8uLL);
        GetSeekCurBinary(a1, v40);
        if (v40)
        {
          EnvPrintRouter(a1, "wdialog", "\nSkipping ");
          EnvPrintRouter(a1, "wdialog", __s2);
          EnvPrintRouter(a1, "wdialog", " constructs because of unavailability\n");
        }
      }

      GenReadBinary(a1, __s2, 0x14uLL);
    }

    RefreshExpressions(a1);
    ReadNeededConstraints(a1);
    while (1)
    {
      GenReadBinary(a1, __s2, 0x14uLL);
      v30 = *(a1 + 48);
      if (!strncmp(__s2, **(v30 + 304), 0x14uLL))
      {
        break;
      }

      v31 = **(v30 + 312);
      if (!v31)
      {
        goto LABEL_63;
      }

      while (strncmp(*v31, __s2, 0x14uLL))
      {
        v31 = *(v31 + 72);
        if (!v31)
        {
          goto LABEL_63;
        }
      }

      v32 = *(v31 + 24);
      if (v32)
      {
        v32(a1);
      }

      else
      {
LABEL_63:
        GenReadBinary(a1, &v40, 8uLL);
        GetSeekCurBinary(a1, v40);
      }
    }

    GenCloseBinary(a1);
    v33 = *(*(*(a1 + 48) + 304) + 16);
    if (v33)
    {
      genfree(a1, v33, 8 * __ptr);
    }

    v34.n128_f64[0] = FreeAtomicValueStorage(a1);
    v35 = *(*(a1 + 48) + 304);
    v36 = *(v35 + 40);
    if (v36)
    {
      do
      {
        v37 = *(v36 + 8);
        if (*(v36 + 32))
        {
          (v37)(a1, v34);
        }

        else
        {
          v37(v34);
        }

        v36 = *(v36 + 24);
      }

      while (v36);
      v35 = *(*(a1 + 48) + 304);
    }

    result = 1;
    *(v35 + 24) = 1;
    goto LABEL_9;
  }

  v15 = genalloc(a1, *__s2);
  GenReadBinary(a1, v15, *__s2);
  v16 = 8 * __ptr;
  v17 = genalloc(a1, 8 * __ptr);
  if (__ptr < 1)
  {
    genfree(a1, v15, *__s2);
    goto LABEL_45;
  }

  v38 = v16;
  ptr = v15;
  v18 = 0;
  v19 = 0;
  for (j = 0; j < __ptr; ++j)
  {
    FunctionList = GetFunctionList(a1);
    if (FunctionList)
    {
      v22 = FunctionList;
      if (v19)
      {
        v23 = v19[7];
      }

      else
      {
        v23 = FunctionList;
      }

      while (strcmp(v15, *(*v23 + 24)))
      {
        v24 = v23[7];
        if (v24 == v19)
        {
          goto LABEL_31;
        }

        if (v24)
        {
          v23 = v23[7];
        }

        else
        {
          v23 = v22;
        }
      }
    }

    else
    {
LABEL_31:
      if (!v18)
      {
        PrintErrorID(a1, "BLOAD", 6, 0);
        EnvPrintRouter(a1, "werror", "The following undefined functions are ");
        EnvPrintRouter(a1, "werror", "referenced by this binary image:\n");
      }

      EnvPrintRouter(a1, "werror", "   ");
      EnvPrintRouter(a1, "werror", v15);
      EnvPrintRouter(a1, "werror", "\n");
      v23 = 0;
      v18 = 1;
    }

    v17[j] = v23;
    v15 += strlen(v15) + 1;
    v19 = v23;
  }

  genfree(a1, ptr, *__s2);
  if (!v18)
  {
    goto LABEL_45;
  }

  genfree(a1, v17, v38);
  *(*(*(a1 + 48) + 304) + 16) = 0;
  result = GenCloseBinary(a1);
  v25 = *(*(*(a1 + 48) + 304) + 56);
  if (!v25)
  {
    goto LABEL_8;
  }

  do
  {
    v26 = *(v25 + 8);
    if (*(v25 + 32))
    {
      v26(a1);
    }

    else
    {
      v26(result);
    }

    result = 0;
    v25 = *(v25 + 24);
  }

  while (v25);
LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BloadandRefresh(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *, uint64_t))
{
  if (!a2)
  {
    return result;
  }

  v7 = result;
  v8 = EnvSetOutOfMemoryFunction(result, BloadOutOfMemoryFunction);
  v9 = a2 * a3;
  v10 = genalloc(v7, a2 * a3);
  if (!v10)
  {
    v12 = a2;
    while (1)
    {
      if ((v12 + 1) > 2)
      {
        v12 /= 2;
      }

      else if (v8(v7, v9) == 1)
      {

        return EnvSetOutOfMemoryFunction(v7, v8);
      }

      v9 = v12 * a3;
      v13 = genalloc(v7, v12 * a3);
      if (v13)
      {
        v11 = v13;
        goto LABEL_12;
      }
    }
  }

  v11 = v10;
  v12 = a2;
LABEL_12:
  EnvSetOutOfMemoryFunction(v7, v8);
  v14 = 0;
  do
  {
    if (v12 >= a2 - v14)
    {
      v15 = a2 - v14;
    }

    else
    {
      v15 = v12;
    }

    GenReadBinary(v7, v11, v15 * a3);
    if (v15 >= 1)
    {
      v16 = v11;
      do
      {
        a4(v7, v16, v14++);
        v16 += a3;
        --v15;
      }

      while (v15);
    }
  }

  while (v14 < a2);

  return genfree(v7, v11, v9);
}

void *AddBeforeBloadFunction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = AddFunctionToCallList(a1, a2, a4, a3, *(*(*(a1 + 48) + 304) + 32), 1);
  *(*(*(a1 + 48) + 304) + 32) = result;
  return result;
}

void *AddAfterBloadFunction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = AddFunctionToCallList(a1, a2, a4, a3, *(*(*(a1 + 48) + 304) + 40), 1);
  *(*(*(a1 + 48) + 304) + 40) = result;
  return result;
}

void *AddClearBloadReadyFunction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = AddFunctionToCallList(a1, a2, a4, a3, *(*(*(a1 + 48) + 304) + 48), 1);
  *(*(*(a1 + 48) + 304) + 48) = result;
  return result;
}

void *AddAbortBloadFunction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = AddFunctionToCallList(a1, a2, a4, a3, *(*(*(a1 + 48) + 304) + 56), 1);
  *(*(*(a1 + 48) + 304) + 56) = result;
  return result;
}

uint64_t CannotLoadWithBloadMessage(uint64_t a1, char *a2)
{
  PrintErrorID(a1, "BLOAD", 1, 1);
  EnvPrintRouter(a1, "werror", "Cannot load ");
  EnvPrintRouter(a1, "werror", a2);

  return EnvPrintRouter(a1, "werror", " construct with binary load in effect.\n");
}

uint64_t BloadCommand(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "bload", 0, 1) == -1)
  {
    return 0;
  }

  FileName = GetFileName(a1, "bload", 1);
  if (!FileName)
  {
    return 0;
  }

  return EnvBload(a1, FileName);
}

uint64_t AWDSymptomsAdvisoryAppCanUseAlternateNetworkReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v76 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v76 & 0x7F) << v5;
        if ((v76 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 80) |= 8u;
          while (1)
          {
            v82 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v82 & 0x7F) << v36;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_121;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v38;
          }

LABEL_121:
          v73 = 32;
LABEL_151:
          *(a1 + v73) = v27;
          goto LABEL_152;
        }

        if (v13 != 2)
        {
          goto LABEL_112;
        }

        v28 = PBReaderReadString();
        v29 = *(a1 + 64);
        *(a1 + 64) = v28;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 80) |= 0x40u;
            while (1)
            {
              v85 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v85 & 0x7F) << v48;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_129;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v50;
            }

LABEL_129:
            v74 = 56;
            break;
          case 4:
            v60 = 0;
            v61 = 0;
            v62 = 0;
            *(a1 + 80) |= 0x80u;
            while (1)
            {
              v84 = 0;
              v63 = [a2 position] + 1;
              if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
              {
                v65 = [a2 data];
                [v65 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v62 |= (v84 & 0x7F) << v60;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v11 = v61++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_145;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v62;
            }

LABEL_145:
            v74 = 72;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 80) |= 0x100u;
            while (1)
            {
              v83 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v83 & 0x7F) << v14;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_137;
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

LABEL_137:
            v74 = 76;
            break;
          default:
            goto LABEL_112;
        }

        *(a1 + v74) = v20;
      }

LABEL_152:
      v75 = [a2 position];
      if (v75 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 80) |= 0x20u;
        while (1)
        {
          v81 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v81 & 0x7F) << v42;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_125;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v44;
        }

LABEL_125:
        v73 = 48;
      }

      else
      {
        if (v13 != 7)
        {
LABEL_112:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_152;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 80) |= 0x10u;
        while (1)
        {
          v80 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v80 & 0x7F) << v30;
          if ((v80 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_117;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v32;
        }

LABEL_117:
        v73 = 40;
      }
    }

    else
    {
      switch(v13)
      {
        case 8:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            v79 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v79 & 0x7F) << v54;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_133;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v56;
          }

LABEL_133:
          v73 = 16;
          break;
        case 9:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            v78 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              v71 = [a2 data];
              [v71 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v68 |= (v78 & 0x7F) << v66;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v11 = v67++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_150;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v68;
          }

LABEL_150:
          v73 = 8;
          break;
        case 0xA:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 80) |= 4u;
          while (1)
          {
            v77 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v77 & 0x7F) << v21;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_141;
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

LABEL_141:
          v73 = 24;
          break;
        default:
          goto LABEL_112;
      }
    }

    goto LABEL_151;
  }

  return [a2 hasError] ^ 1;
}

void *BuildRHSAssert(uint64_t a1, char *a2, unsigned __int16 *a3, int *a4, int a5, int a6, char *a7)
{
  v10 = a1;
  *a4 = 0;
  if (!a6 && *a3 == 171)
  {
    if (a5)
    {
      *a4 = 1;
      v11 = a7;
LABEL_21:
      SyntaxErrorMessage(a1, v11);
      return 0;
    }

    return 0;
  }

  RHSPattern = GetRHSPattern(a1, a2, a3, a4, 0, a6, 1, 171);
  if (RHSPattern)
  {
    v13 = RHSPattern;
    v14 = 0;
    v15 = 0;
    do
    {
      PPCRAndIndent(v10);
      Function = FindFunction(v10, "assert");
      v17 = GenConstant(v10, 30, Function);
      v18 = v17;
      v17[2] = v13;
      v19 = v17;
      if (v15)
      {
        v15[3] = v17;
        v19 = v14;
      }

      v13 = GetRHSPattern(v10, a2, a3, a4, 0, 1, 1, 171);
      v14 = v19;
      v15 = v18;
    }

    while (v13);
  }

  else
  {
    v19 = 0;
  }

  if (*a4)
  {
    ReturnExpression(v10, v19);
    return 0;
  }

  if (*a3 == 171)
  {
    PPBackup(v10);
    PPBackup(v10);
    SavePPBuffer(v10, ")");
  }

  if (!v19)
  {
    if (a5)
    {
      *a4 = 1;
      a1 = v10;
      v11 = a7;
      goto LABEL_21;
    }

    return 0;
  }

  if (*(v19 + 24))
  {
    v20 = FindFunction(v10, "progn");
    v21 = GenConstant(v10, 30, v20);
    v21[2] = v19;
    return v21;
  }

  return v19;
}

void *GetRHSPattern(uint64_t a1, char *a2, unsigned __int16 *a3, int *a4, int a5, int a6, int a7, int a8)
{
  *a4 = 0;
  if (a6)
  {
    GetToken(a1, a2, a3);
  }

  if (a7)
  {
    v15 = *a3;
    if (v15 == a8)
    {
      return 0;
    }

    if (v15 != 170)
    {
      v20 = "RHS patterns";
      goto LABEL_15;
    }
  }

  GetToken(a1, a2, a3);
  if (*a3 != 2 || ((v36 = 0, v17 = *(a3 + 1), v18 = *(v17 + 24), v19 = *v18, v19 == 58) || v19 == 61) && !v18[1])
  {
    v20 = "first field of a RHS pattern";
LABEL_15:
    SyntaxErrorMessage(a1, v20);
    goto LABEL_16;
  }

  if (ReservedPatternSymbol(a1, v18, 0))
  {
    ReservedPatternSymbolErrorMsg(a1, *(v17 + 24), "a relation name");
LABEL_16:
    v16 = 0;
    *a4 = 1;
    return v16;
  }

  if (FindModuleSeparator(*(v17 + 24)))
  {
    IllegalModuleSpecifierMessage(a1);
    goto LABEL_16;
  }

  ImportedConstruct = FindImportedConstruct(a1, "deftemplate", 0, *(v17 + 24), &v36, 1, 0);
  if (v36 >= 2)
  {
    AmbiguousReferenceErrorMessage(a1, "deftemplate", *(v17 + 24));
    v16 = 0;
    *a4 = 1;
    return v16;
  }

  ImpliedDeftemplate = ImportedConstruct;
  if (!ImportedConstruct)
  {
    if (Bloaded(a1) && !*(*(*(a1 + 48) + 336) + 40))
    {
      NoSuchTemplateError(a1, *(v17 + 24));
      goto LABEL_16;
    }

    CurrentModule = EnvGetCurrentModule(a1);
    if (FindImportExportConflict(a1, "deftemplate", CurrentModule, *(v17 + 24)))
    {
      ImportExportConflictMessage(a1, "implied deftemplate", *(v17 + 24), 0, 0);
      goto LABEL_16;
    }

    if (*(*(*(a1 + 48) + 336) + 40))
    {
      ImpliedDeftemplate = 0;
      goto LABEL_34;
    }

    ImpliedDeftemplate = CreateImpliedDeftemplate(a1, v17, 1);
    if (!ImpliedDeftemplate)
    {
      goto LABEL_34;
    }
  }

  if (ImpliedDeftemplate[7])
  {
LABEL_34:
    v37 = 0;
    v16 = GenConstant(a1, 63, ImpliedDeftemplate);
    v28 = *(*(a1 + 48) + 336);
    if (!*(v28 + 44))
    {
      ++*(v28 + 20);
    }

    SavePPBuffer(a1, " ");
    AssertArgument = GetAssertArgument(a1, a2, a3, a4, a8, a5, &v37);
    if (AssertArgument)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = AssertArgument;
        v33 = AssertArgument;
        if (v30)
        {
          v31[3] = AssertArgument;
          v33 = v30;
        }

        SavePPBuffer(a1, " ");
        AssertArgument = GetAssertArgument(a1, a2, a3, a4, a8, a5, &v37);
        v30 = v33;
        v31 = v32;
      }

      while (AssertArgument);
    }

    else
    {
      v33 = 0;
    }

    if (!*a4)
    {
      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, *(a3 + 2));
      v34 = EnvAddBitMap(a1, byte_232816E10, 1u);
      v35 = GenConstant(a1, 62, v34);
      v16[3] = v35;
      v35[2] = v33;
      return v16;
    }

    if (v37)
    {
      SyntaxErrorMessage(a1, "RHS patterns");
    }

    ReturnExpression(a1, v16);
    v25 = a1;
    v26 = v33;
    goto LABEL_47;
  }

  v16 = GenConstant(a1, 63, ImpliedDeftemplate);
  v16[3] = ParseAssertTemplate(a1, a2, a3, a4, a8, a5, ImpliedDeftemplate);
  v24 = *(*(a1 + 48) + 336);
  if (!*(v24 + 44))
  {
    ++*(v24 + 20);
  }

  if (*a4)
  {
    v25 = a1;
    v26 = v16;
LABEL_47:
    ReturnExpression(v25, v26);
    return 0;
  }

  return v16;
}

uint64_t NoSuchTemplateError(uint64_t a1, char *a2)
{
  PrintErrorID(a1, "FACTRHS", 1, 0);
  EnvPrintRouter(a1, "werror", "Template ");
  EnvPrintRouter(a1, "werror", a2);

  return EnvPrintRouter(a1, "werror", " does not exist for assert.\n");
}

void *GetAssertArgument(uint64_t a1, char *a2, unsigned __int16 *a3, _DWORD *a4, int a5, int a6, _DWORD *a7)
{
  *a7 = 1;
  GetToken(a1, a2, a3);
  v14 = *a3;
  if (v14 == a5)
  {
    return 0;
  }

  if (v14 > 0x24)
  {
    goto LABEL_16;
  }

  if (((1 << v14) & 0x1E00000000) != 0)
  {
    if (a6)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (((1 << v14) & 0xB) != 0)
  {
    goto LABEL_12;
  }

  if (v14 != 2)
  {
LABEL_16:
    if (v14 == 170 && !a6)
    {
      v17 = Function1Parse(a1, a2);
      goto LABEL_21;
    }

LABEL_17:
    v15 = 0;
LABEL_18:
    *a4 = 1;
    return v15;
  }

  v16 = *(*(a3 + 1) + 24);
  if (*v16 == 61 && !v16[1])
  {
    if (!a6)
    {
      v17 = Function0Parse(a1, a2);
LABEL_21:
      v15 = v17;
      if (v17)
      {
        *a3 = 171;
        *(a3 + 1) = EnvAddSymbol(a1, ")");
        *(a3 + 2) = ")";
        return v15;
      }

      *a7 = 0;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_12:
  v18 = *(a3 + 1);

  return GenConstant(a1, v14, v18);
}

uint64_t StringToFact(uint64_t a1, char *a2)
{
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  SetEvaluationError(a1, 0);
  OpenStringSource(a1, "assert_str", a2, 0);
  RHSPattern = GetRHSPattern(a1, "assert_str", v19, &v18, 0, 1, 1, 171);
  CloseStringSource(a1, "assert_str");
  if (!RHSPattern && !v18)
  {
    SyntaxErrorMessage(a1, "RHS patterns");
    v5 = a1;
    v6 = 0;
LABEL_8:
    ReturnExpression(v5, v6);
    return 0;
  }

  if (v18)
  {
LABEL_7:
    v5 = a1;
    v6 = RHSPattern;
    goto LABEL_8;
  }

  if (ExpressionContainsVariables(RHSPattern, 0))
  {
    LocalVariableErrorMessage(a1, "the assert-string function");
    SetEvaluationError(a1, 1);
    goto LABEL_7;
  }

  v9 = RHSPattern[3];
  if (v9)
  {
    v10 = 0;
    do
    {
      ++v10;
      v9 = *(v9 + 24);
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  CreateFactBySize(a1, v10);
  v7 = v11;
  *(v11 + 32) = RHSPattern[1];
  EnvIncrementClearReadyLocks(a1);
  ExpressionInstall(a1, RHSPattern);
  v12 = RHSPattern[3];
  if (v12)
  {
    v13 = 0;
    do
    {
      EvaluateExpression(a1, v12, &v15);
      v14 = v7 + 128 + 16 * v13;
      *v14 = WORD4(v15);
      *(v14 + 8) = v16;
      ++v13;
      v12 = *(v12 + 24);
    }

    while (v12);
  }

  ExpressionDeinstall(a1, RHSPattern);
  ReturnExpression(a1, RHSPattern);
  EnvDecrementClearReadyLocks(a1);
  return v7;
}

void sub_2326C31A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL pid_is_valid(int a1)
{
  v4 = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  result = proc_pidinfo(a1, 13, 1uLL, v3, 64) == 64;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t uuid_to_pid(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  *v15 = 0x600000001;
  *count = 0;
  v11 = 4;
  if (sysctl(v15, 2u, count, &v11, 0, 0) < 0)
  {
    v8 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *&count[4] = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "KERN_MAXPROC failed", &count[4], 2u);
    }

    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    if (!*count || (*count & 0x80000000) != 0 || (v2 = malloc_type_calloc(*count, 4uLL, 0xCA2799E8uLL)) == 0)
    {
      __break(1u);
    }

    v3 = v2;
    *uu2 = 0;
    v14 = 0;
    [v1 getUUIDBytes:uu2];
    v4 = proc_listallpids(v3, 4 * *count);
    if (v4 < 1)
    {
LABEL_10:
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = v4;
      v6 = v3;
      while (1)
      {
        memset(&count[4], 0, 56);
        if (proc_pidinfo(*v6, 17, 1uLL, &count[4], 56) == 56 && !uuid_compare(&count[4], uu2))
        {
          break;
        }

        ++v6;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }

      v7 = *v6;
    }

    free(v3);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t pid_to_coalitionid(int a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  if (proc_pidinfo(a1, 20, 1uLL, v2, 40) == 40)
  {
    return *&v2[0];
  }

  else
  {
    return 1;
  }
}

id pid_to_coalition_bundleid(int a1)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v1 = 0;
  if (proc_pidinfo(a1, 20, 1uLL, v9, 40) == 40)
  {
    v2 = *&v9[0];
  }

  else
  {
    v2 = 1;
  }

  if (v2 >= 2)
  {
    v3 = xpc_coalition_copy_info();
    v4 = v3;
    if (v3 && MEMORY[0x238389170](v3) == MEMORY[0x277D86468])
    {
      string = xpc_dictionary_get_string(v4, *MEMORY[0x277D863D0]);
      if (string)
      {
        v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        goto LABEL_8;
      }

      v7 = xpc_dictionary_get_string(v4, *MEMORY[0x277D863D8]);
      if (v7)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
        v1 = stringByRemovingTrailingUUIDsAndLaunchServicesStuff(v8);

        goto LABEL_8;
      }
    }

    v1 = 0;
LABEL_8:
  }

  return v1;
}

id stringByRemovingTrailingUUIDsAndLaunchServicesStuff(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || (v3 = [v1 length]) == 0)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v4 = v3;
  v5 = [v2 characterAtIndex:v3 - 1];
  v6 = [@"com.apple.xpc.launchd.oneshot" length];
  if ((v5 - 48) < 0xA || (v5 - 65) <= 5)
  {
    if (stringByRemovingTrailingUUIDsAndLaunchServicesStuff_pred != -1)
    {
      stringByRemovingTrailingUUIDsAndLaunchServicesStuff_cold_1();
    }

    v8 = [stringByRemovingTrailingUUIDsAndLaunchServicesStuff_regex stringByReplacingMatchesInString:v2 options:0 range:0 withTemplate:{objc_msgSend(v2, "length"), &stru_2847966D8}];
    goto LABEL_18;
  }

  if (v4 <= v6 || [v2 characterAtIndex:v6 - 1] != 116 || !objc_msgSend(v2, "hasPrefix:", @"com.apple.xpc.launchd.oneshot"))
  {
    v8 = v2;
LABEL_18:
    v9 = v8;
    goto LABEL_19;
  }

  v10 = [v2 componentsSeparatedByString:@"."];
  if ([v10 count] == 7 && (objc_msgSend(v10, "objectAtIndexedSubscript:", 5), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hasPrefix:", @"0x"), v11, v12))
  {
    v13 = [v10 mutableCopy];
    [v13 removeObjectAtIndex:5];
    v9 = [v13 componentsJoinedByString:@"."];
  }

  else
  {
    v9 = v2;
  }

LABEL_19:

  return v9;
}

void __stringByRemovingTrailingUUIDsAndLaunchServicesStuff_block_invoke()
{
  v3 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\.[A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12}\\Z|\\.[0-9]+\\Z|\\A\\[0x[a-fA-F0-9]+-0x[a-fA-F0-9]+\\]\\.)" options:0 error:&v3];
  v1 = v3;
  v2 = stringByRemovingTrailingUUIDsAndLaunchServicesStuff_regex;
  stringByRemovingTrailingUUIDsAndLaunchServicesStuff_regex = v0;
}

id pid_to_coalitionID(int a1)
{
  v1 = pid_to_coalition_bundleid(a1);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v1];
  if (!v2 || (v3 = v2, [v2 containingBundle], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "bundleIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v4, v3, !v5))
  {
LABEL_4:
    v5 = v1;
  }

  return v5;
}

id uuid_to_bundleid(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 UUIDString];
  v3 = [v2 length];

  if (!v3)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = [MEMORY[0x277CBEB98] setWithObject:v1];
  v19 = 0;
  v6 = [v4 bundleIdentifiersForMachOUUIDs:v5 error:&v19];
  v7 = v19;

  if (v7)
  {
    v8 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v21 = v1;
      v22 = 2112;
      v23 = v7;
      v9 = "bundleIdentifiersForMachOUUIDs failed for %@ [%@]";
      v10 = v8;
      v11 = 22;
LABEL_5:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, v9, buf, v11);
    }
  }

  else
  {
    if ([v6 count])
    {
      v13 = [v6 objectForKeyedSubscript:v1];
      if ([v13 count])
      {
        v14 = [v13 allObjects];
        v12 = [v14 objectAtIndex:0];
      }

      else
      {
        v16 = attributionLogHandle;
        if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = v1;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "no bundleID for %@", buf, 0xCu);
        }

        v12 = 0;
      }

      goto LABEL_17;
    }

    v15 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v1;
      v9 = "no bundleID for %@";
      v10 = v15;
      v11 = 12;
      goto LABEL_5;
    }
  }

  v12 = 0;
LABEL_17:

LABEL_18:
  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

id bundleid_to_uuids(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (![v1 length])
  {
    v10 = 0;
    goto LABEL_11;
  }

  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [MEMORY[0x277CBEB98] setWithObject:v1];
  v14 = 0;
  v4 = [v2 machOUUIDsForBundleIdentifiers:v3 error:&v14];
  v5 = v14;

  if (v5)
  {
    v6 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v16 = v1;
      v17 = 2112;
      v18 = v5;
      v7 = "machOUUIDsForBundleIdentifiers failed for %@ [%@]";
      v8 = v6;
      v9 = 22;
LABEL_5:
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, v7, buf, v9);
    }
  }

  else
  {
    if ([v4 count])
    {
      v10 = [v4 objectForKeyedSubscript:v1];
      goto LABEL_10;
    }

    v13 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v1;
      v7 = "no uuids for %@";
      v8 = v13;
      v9 = 12;
      goto LABEL_5;
    }
  }

  v10 = 0;
LABEL_10:

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t ParseDeftemplate(uint64_t a1, char *a2)
{
  *(*(*(a1 + 48) + 40) + 132) = 0;
  SetPPBufferStatus(a1, 1);
  FlushPPBuffer(a1);
  SavePPBuffer(a1, "(deftemplate ");
  v4 = Bloaded(a1);
  v5 = *(a1 + 48);
  if (v4 == 1 && !*(*(v5 + 336) + 40))
  {
    CannotLoadWithBloadMessage(a1, "deftemplate");
    return 1;
  }

  v45 = 0;
  v46 = 0;
  __s = 0;
  *(*(v5 + 40) + 128) = 0;
  v6 = 1;
  ConstructNameAndComment = GetConstructNameAndComment(a1, a2, &v45, "deftemplate", EnvFindDeftemplateInModule, EnvUndeftemplate, "%", 1, 1, 1, 0);
  if (ConstructNameAndComment)
  {
    v8 = ConstructNameAndComment;
    if (ReservedPatternSymbol(a1, ConstructNameAndComment[3], "deftemplate"))
    {
      ReservedPatternSymbolErrorMsg(a1, v8[3], "a deftemplate name");
      return v6;
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (v45 != 170)
      {
        if (v45 == 171)
        {
          SavePPBuffer(a1, "\n");
          goto LABEL_76;
        }

LABEL_69:
        SyntaxErrorMessage(a1, "deftemplate");
        ReturnSlots(a1, v9);
        ReturnSlots(a1, 0);
        v9 = 0;
        *(*(*(a1 + 48) + 40) + 132) = 1;
        goto LABEL_76;
      }

      GetToken(a1, a2, &v45);
      if (v45 != 2)
      {
        goto LABEL_69;
      }

      v44 = v10;
      v11 = *(v46 + 24);
      if (strcmp(v11, "field") && strcmp(v11, "multifield") && strcmp(v11, "slot") && strcmp(v11, "multislot") || (!strcmp(v11, "multifield") ? (v12 = 1) : (v12 = strcmp(v11, "multislot") == 0), SavePPBuffer(a1, " "), GetToken(a1, a2, &v45), v45 != 2))
      {
        SyntaxErrorMessage(a1, "deftemplate");
        goto LABEL_74;
      }

      v13 = v46;
      if (v9)
      {
        v14 = v9;
        do
        {
          if (*v14 == v46)
          {
            AlreadyParsedErrorMessage(a1, "slot ", *(*v14 + 24));
            goto LABEL_74;
          }

          v14 = v14[5];
        }

        while (v14);
      }

      v15 = *(a1 + 48);
      v16 = *(v15 + 472);
      v17 = *(*(v16 + 40) + 384);
      if (v17)
      {
        *(v16 + 32) = v17;
        *(*(*(v15 + 472) + 40) + 384) = **(*(v15 + 472) + 32);
        v18 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v18 = genalloc(a1, 0x30uLL);
      }

      v49 = 0;
      v48 = 0;
      *v18 = v13;
      *(v18 + 3) = 0;
      *(v18 + 4) = 0;
      ConstraintRecord = GetConstraintRecord(a1);
      *(v18 + 2) = ConstraintRecord;
      if (v12)
      {
        *ConstraintRecord |= 0x20000u;
      }

      *(v18 + 8) = *(v18 + 8) & 0xF0 | v12;
      *(v18 + 5) = 0;
      InitializeConstraintParseRecord(&v48);
      GetToken(a1, a2, &v45);
      if (v45 != 171)
      {
        break;
      }

LABEL_27:
      if (!CheckConstraintParseConflicts(a1, *(v18 + 2)))
      {
        goto LABEL_73;
      }

      if ((*(v18 + 8) & 0xC) != 0)
      {
        v20 = ConstraintCheckExpressionChain(a1, *(v18 + 3), *(v18 + 2));
        if (v20)
        {
          v21 = v20;
          if (EnvGetStaticConstraintChecking(a1))
          {
            if ((*(v18 + 8) & 8) != 0)
            {
              v43 = "the default-dynamic attribute";
            }

            else
            {
              v43 = "the default attribute";
            }

            ConstraintViolationErrorMessage(a1, "An expression", v43, 0, 0, *v18, 0, v21, *(v18 + 2), 1);
            goto LABEL_73;
          }
        }
      }

      if (*(*(*(a1 + 48) + 40) + 132) == 1)
      {
        goto LABEL_75;
      }

      v22 = v18;
      if (v44)
      {
        v44[5] = v18;
        v22 = v9;
      }

      GetToken(a1, a2, &v45);
      v9 = v22;
      v10 = v18;
      if (v45 != 171)
      {
        PPBackup(a1);
        SavePPBuffer(a1, "\n   ");
        SavePPBuffer(a1, __s);
        v9 = v22;
        v10 = v18;
      }
    }

    v23 = 0;
    while (1)
    {
      PPBackup(a1);
      SavePPBuffer(a1, " ");
      SavePPBuffer(a1, __s);
      if (v45 != 170 || (GetToken(a1, a2, &v45), v45 != 2))
      {
        v34 = "deftemplate";
LABEL_65:
        SyntaxErrorMessage(a1, v34);
LABEL_66:
        ReturnSlots(a1, v18);
        *(*(*(a1 + 48) + 40) + 132) = 1;
        goto LABEL_74;
      }

      v24 = StandardConstraint(*(v46 + 24));
      v25 = *(v46 + 24);
      if (v24)
      {
        if (!ParseStandardConstraint(a1, a2, *(v46 + 24), *(v18 + 2), &v48, v12))
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (!strcmp(*(v46 + 24), "default") || !strcmp(v25, "default-dynamic"))
        {
          if (v23)
          {
            AlreadyParsedErrorMessage(a1, "default attribute", 0);
LABEL_72:
            *(*(*(a1 + 48) + 40) + 132) = 1;
LABEL_73:
            ReturnSlots(a1, v18);
LABEL_74:
            v18 = 0;
            *(*(*(a1 + 48) + 40) + 132) = 1;
LABEL_75:
            ReturnSlots(a1, v18);
            ReturnSlots(a1, v9);
            ReturnSlots(a1, 0);
            v9 = 0;
LABEL_76:
            v35 = *(a1 + 48);
            if (*(v35[5] + 132) == 1)
            {
              return 1;
            }

            if (*(v35[42] + 40))
            {
              ReturnSlots(a1, v9);
            }

            else
            {
              v36 = v35[59];
              v37 = *(*(v36 + 40) + 768);
              if (v37)
              {
                *(v36 + 32) = v37;
                *(*(v35[59] + 40) + 768) = **(v35[59] + 32);
                v38 = *(*(*(a1 + 48) + 472) + 32);
              }

              else
              {
                v38 = genalloc(a1, 0x60uLL);
              }

              *v38 = v8;
              v38[4] = 0;
              v38[5] = 0;
              v38[6] = v9;
              v39 = *(v38 + 56);
              *(v38 + 29) = 0;
              v38[8] = 0;
              v38[9] = 0;
              *(v38 + 56) = v39 & 0xF8 | 4;
              v38[10] = 0;
              v38[11] = 0;
              v38[2] = GetModuleItem(a1, 0, *(*(*(a1 + 48) + 40) + 8));
              if (v9)
              {
                v40 = *(v38 + 29);
                do
                {
                  ++v40;
                  v9 = v9[5];
                }

                while (v9);
                *(v38 + 29) = v40;
              }

              if (EnvGetConserveMemory(a1) == 1)
              {
                v41 = 0;
              }

              else
              {
                v41 = CopyPPBuffer(a1);
              }

              v38[1] = v41;
              if ((*(*(*(a1 + 48) + 40) + 128) & 1) != 0 || EnvGetWatchItem(a1, "facts"))
              {
                EnvSetDeftemplateWatch(a1, 1, v38);
              }

              AddConstructToModule(v38);
              InstallDeftemplate(a1, v38);
            }

            return 0;
          }

          v30 = *(v18 + 8);
          *(v18 + 8) = v30 & 0xFD;
          if (!strcmp(*(v46 + 24), "default"))
          {
            v31 = 4;
          }

          else
          {
            v31 = 8;
          }

          *(v18 + 8) = v31 | v30 & 0xF1;
          v32 = ParseDefault(a1, a2, v12, v31 >> 3, 1, &v49 + 1, &v49, (*(*(a1 + 48) + 40) + 132));
          if (*(*(*(a1 + 48) + 40) + 132) == 1)
          {
            goto LABEL_73;
          }

          if (v49)
          {
            v33 = *(v18 + 8) & 0xFB;
            goto LABEL_56;
          }

          if (HIDWORD(v49))
          {
            v33 = *(v18 + 8) & 0xF9 | 2;
LABEL_56:
            *(v18 + 8) = v33;
          }

          *(v18 + 3) = v32;
          v23 = 1;
          goto LABEL_60;
        }

        if (!strcmp(v25, "facet"))
        {
          v26 = a1;
          v27 = a2;
          v28 = v18;
          v29 = 0;
        }

        else
        {
          if (strcmp(v25, "multifacet"))
          {
            v34 = "slot attributes";
            goto LABEL_65;
          }

          v26 = a1;
          v27 = a2;
          v28 = v18;
          v29 = 1;
        }

        if (!ParseFacetAttribute(v26, v27, v28, v29))
        {
          goto LABEL_66;
        }
      }

LABEL_60:
      GetToken(a1, a2, &v45);
      if (v45 == 171)
      {
        goto LABEL_27;
      }
    }
  }

  return v6;
}

uint64_t InstallDeftemplate(uint64_t result, void *a2)
{
  ++*(*a2 + 8);
  v2 = a2[6];
  if (v2)
  {
    v3 = result;
    do
    {
      ++*(*v2 + 8);
      v4 = AddHashedExpression(v3, *(v2 + 24));
      ReturnExpression(v3, *(v2 + 24));
      *(v2 + 24) = v4;
      v5 = AddHashedExpression(v3, *(v2 + 32));
      ReturnExpression(v3, *(v2 + 32));
      *(v2 + 32) = v5;
      result = AddConstraint(v3, *(v2 + 16));
      *(v2 + 16) = result;
      v2 = *(v2 + 40);
    }

    while (v2);
  }

  return result;
}

uint64_t ParseFacetAttribute(char *a1, char *a2, uint64_t a3, int a4)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  SavePPBuffer(a1, " ");
  GetToken(a1, a2, &v25);
  if (v25 != 2)
  {
    if (a4)
    {
      v18 = "multifacet attribute";
LABEL_20:
      SyntaxErrorMessage(a1, v18);
      return 0;
    }

LABEL_19:
    v18 = "facet attribute";
    goto LABEL_20;
  }

  v8 = v26;
  v9 = *(a3 + 32);
  if (v9)
  {
    while (*(v9 + 8) != v26)
    {
      v9 = *(v9 + 24);
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    if (a4)
    {
      v19 = "multifacet ";
    }

    else
    {
      v19 = "facet ";
    }

    AlreadyParsedErrorMessage(a1, v19, *(v26 + 24));
    return 0;
  }

LABEL_5:
  SavePPBuffer(a1, " ");
  GetToken(a1, a2, &v25);
  v10 = 0;
  v11 = 0;
  v12 = v25;
  while (v12 != 171)
  {
    if (!ConstantType(v12))
    {
      if (a4)
      {
        v20 = "multifacet attribute";
      }

      else
      {
        v20 = "facet attribute";
      }

      SyntaxErrorMessage(a1, v20);
      v16 = a1;
      v17 = v10;
      goto LABEL_25;
    }

    v13 = GenConstant(a1, v25, v26);
    v14 = v13;
    v15 = v13;
    if (v11)
    {
      v11[3] = v13;
      v15 = v10;
    }

    SavePPBuffer(a1, " ");
    GetToken(a1, a2, &v25);
    v12 = v25;
    v10 = v15;
    v11 = v14;
    if (!a4)
    {
      v10 = v15;
      v11 = v14;
      if (v25 != 171)
      {
        SyntaxErrorMessage(a1, "facet attribute");
        v16 = a1;
        v17 = v15;
LABEL_25:
        ReturnExpression(v16, v17);
        return 0;
      }
    }
  }

  PPBackup(a1);
  PPBackup(a1);
  SavePPBuffer(a1, ")");
  if (!a4 && !v10)
  {
    goto LABEL_19;
  }

  v22 = GenConstant(a1, 2, v8);
  v23 = v22;
  if (a4)
  {
    Function = FindFunction(a1, "create$");
    v22 = GenConstant(a1, 30, Function);
    v23[2] = v22;
  }

  v22[2] = v10;
  v23[3] = *(a3 + 32);
  *(a3 + 32) = v23;
  return 1;
}

void sub_2326CACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ParseDeffunction(uint64_t a1, char *a2)
{
  v33 = 0;
  SetPPBufferStatus(a1, 1);
  FlushPPBuffer(a1);
  SetIndentDepth(a1, 3);
  SavePPBuffer(a1, "(deffunction ");
  v4 = Bloaded(a1);
  v5 = *(a1 + 48);
  if (v4 == 1 && !*(*(v5 + 336) + 40))
  {
    CannotLoadWithBloadMessage(a1, "deffunctions");
    return 1;
  }

  v6 = 1;
  ConstructNameAndComment = GetConstructNameAndComment(a1, a2, (*(v5 + 184) + 152), "deffunction", EnvFindDeffunctionInModule, 0, "!", 1, 1, 1, 0);
  if (ConstructNameAndComment)
  {
    v8 = ConstructNameAndComment;
    v9 = ConstructNameAndComment[3];
    if (FindConstruct(a1, v9))
    {
      PrintErrorID(a1, "DFFNXPSR", 1, 0);
      v10 = "Deffunctions are not allowed to replace constructs.\n";
LABEL_8:
      EnvPrintRouter(a1, "werror", v10);
      return 1;
    }

    if (FindFunction(a1, v9))
    {
      PrintErrorID(a1, "DFFNXPSR", 2, 0);
      v10 = "Deffunctions are not allowed to replace external functions.\n";
      goto LABEL_8;
    }

    v36 = 0;
    v12 = LookupDefgenericInScope(a1, v9);
    if (v12)
    {
      v13 = v12;
      v14 = *GetConstructModuleItem(v12);
      if (v14 == EnvGetCurrentModule(a1))
      {
        PrintErrorID(a1, "DFFNXPSR", 3, 0);
        v10 = "Deffunctions are not allowed to replace generic functions.\n";
      }

      else
      {
        PrintErrorID(a1, "DFFNXPSR", 5, 0);
        EnvPrintRouter(a1, "werror", "Defgeneric ");
        DefruleName = EnvGetDefruleName(a1, v13);
        EnvPrintRouter(a1, "werror", DefruleName);
        EnvPrintRouter(a1, "werror", " imported from module ");
        ConstructNameString = EnvGetConstructNameString(a1, v14);
        EnvPrintRouter(a1, "werror", ConstructNameString);
        v10 = " conflicts with this deffunction.\n";
      }

      goto LABEL_8;
    }

    DeffunctionInModule = EnvFindDeffunctionInModule(a1, v9);
    if (DeffunctionInModule)
    {
      v18 = DeffunctionInModule;
      if (*(DeffunctionInModule + 52))
      {
        PrintErrorID(a1, "DFNXPSR", 4, 0);
        EnvPrintRouter(a1, "werror", "Deffunction ");
        v19 = EnvGetDefruleName(a1, v18);
        EnvPrintRouter(a1, "werror", v19);
        v10 = " may not be redefined while it is executing.\n";
        goto LABEL_8;
      }
    }

    v35 = 0;
    v34 = 0;
    v20 = ParseProcParameters(a1, a2, (*(*(a1 + 48) + 184) + 152), 0, &v36, &v35 + 1, &v35, &v33, 0);
    if (v33)
    {
      return 1;
    }

    v21 = v20;
    if (*(*(*(a1 + 48) + 336) + 40) && (v22 = EnvFindDeffunctionInModule(a1, *(v8 + 24))) != 0)
    {
      v23 = v22;
      v24 = 0;
      v25 = v35;
      v26 = *(v22 + 72);
      *(v22 + 72) = HIDWORD(v35);
      *(v22 + 76) = v25;
      v32 = vshr_n_s32(vshl_n_s32(v26, 0x10uLL), 0x10uLL);
      v27 = 1;
    }

    else
    {
      v23 = AddDeffunction(a1, v8, 0, SHIDWORD(v35), v35, 0, 1);
      if (!v23)
      {
        ReturnExpression(a1, v21);
        return 1;
      }

      v27 = 0;
      v32 = 0;
      v24 = 1;
    }

    PPCRAndIndent(a1);
    v28 = *(a1 + 48);
    *(*(v28 + 360) + 80) = 1;
    v29 = ParseProcActions(a1, "deffunction", a2, (*(v28 + 184) + 152), v21, v36, 0, 0, &v34, 0);
    v30 = v29;
    v31 = *(a1 + 48);
    if (*(*(v31 + 184) + 152) != 171 && v29)
    {
      SyntaxErrorMessage(a1, "deffunction");
      ReturnExpression(a1, v21);
      ReturnPackedExpression(a1, v30);
      if (v27)
      {
LABEL_28:
        v23[9] = v32;
        return 1;
      }

LABEL_35:
      if (!*(v23 + 12))
      {
        RemoveConstructFromModule(a1, v23);
        RemoveDeffunction(a1, v23);
      }

      return 1;
    }

    if (!v29)
    {
      ReturnExpression(a1, v21);
      if (v27)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }

    if (*(*(v31 + 336) + 40))
    {
      ReturnExpression(a1, v21);
      ReturnPackedExpression(a1, v30);
      if (v24)
      {
        RemoveConstructFromModule(a1, v23);
        RemoveDeffunction(a1, v23);
        return 0;
      }

      else
      {
        v6 = 0;
        v23[9] = v32;
      }
    }

    else
    {
      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, *(*(*(a1 + 48) + 184) + 168));
      SavePPBuffer(a1, "\n");
      AddDeffunction(a1, v8, v30, SHIDWORD(v35), v35, v34, 0);
      ReturnExpression(a1, v21);
      return v33;
    }
  }

  return v6;
}

void *AddDeffunction(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5, int a6, int a7)
{
  DeffunctionInModule = EnvFindDeffunctionInModule(a1, *(a2 + 24));
  if (DeffunctionInModule)
  {
    v15 = DeffunctionInModule;
    DeffunctionWatch = EnvGetDeffunctionWatch(a1, DeffunctionInModule);
    *(v15 + 18) = a4;
    *(v15 + 19) = a5;
    *(v15 + 20) = a6;
    v17 = *(v15 + 12);
    ExpressionDeinstall(a1, v15[8]);
    *(v15 + 12) = v17;
    ReturnPackedExpression(a1, v15[8]);
    v15[8] = 0;
    EnvSetDefgenericPPForm(a1, v15, 0);
    RemoveConstructFromModule(a1, v15);
    v18 = DeffunctionWatch == 0;
  }

  else
  {
    v19 = *(a1 + 48);
    v20 = *(v19 + 472);
    v21 = *(*(v20 + 40) + 704);
    if (v21)
    {
      *(v20 + 32) = v21;
      *(*(*(v19 + 472) + 40) + 704) = **(*(v19 + 472) + 32);
      v15 = *(*(*(a1 + 48) + 472) + 32);
    }

    else
    {
      v15 = genalloc(a1, 0x58uLL);
    }

    InitializeConstructHeader(a1, "deffunction", v15, a2);
    ++*(a2 + 8);
    v15[8] = 0;
    *(v15 + 18) = a4;
    *(v15 + 19) = a5;
    *(v15 + 20) = a6;
    v15[6] = 0;
    v18 = 1;
  }

  AddConstructToModule(v15);
  if (a3)
  {
    v22 = *(v15 + 12);
    ExpressionInstall(a1, a3);
    *(v15 + 12) = v22;
    v15[8] = a3;
  }

  if (v18)
  {
    v23 = *(*(*(a1 + 48) + 184) + 128);
  }

  else
  {
    LOWORD(v23) = 1;
  }

  EnvSetDeffunctionWatch(a1, v23, v15);
  if (!(EnvGetConserveMemory(a1) | a7))
  {
    v24 = CopyPPBuffer(a1);
    EnvSetDefgenericPPForm(a1, v15, v24);
  }

  return v15;
}

uint64_t FactFunctionDefinitions(uint64_t a1)
{
  EnvDefineFunction2(a1, "fact-existp", 98, FactExistpFunction, "FactExistpFunction", "11z");
  EnvDefineFunction2(a1, "fact-relation", 119, FactRelationFunction, "FactRelationFunction", "11z");
  EnvDefineFunction2(a1, "fact-slot-value", 117, FactSlotValueFunction, "FactSlotValueFunction", "22*zw");
  EnvDefineFunction2(a1, "fact-slot-names", 117, FactSlotNamesFunction, "FactSlotNamesFunction", "11z");
  EnvDefineFunction2(a1, "get-fact-list", 109, GetFactListFunction, "GetFactListFunction", "01w");

  return EnvDefineFunction2(a1, "ppfact", 118, PPFactFunction, "PPFactFunction", "13*z");
}

uint64_t FactExistpFunction(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "fact-existp", 0, 1);
  if (result != -1)
  {
    result = GetFactAddressOrIndexArgument(a1, "fact-existp", 1, 0);
    if (result)
    {
      return (*(result + 64) & 1) == 0;
    }
  }

  return result;
}

uint64_t FactRelationFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "fact-relation", 0, 1) != -1)
  {
    FactAddressOrIndexArgument = GetFactAddressOrIndexArgument(a1, "fact-relation", 1, 0);
    if (FactAddressOrIndexArgument)
    {
      return **(FactAddressOrIndexArgument + 32);
    }
  }

  return EnvFalseSymbol(a1);
}

uint64_t FactSlotValueFunction(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgCountCheck(a1, "fact-slot-value", 0, 2);
  if (result != -1)
  {
    result = GetFactAddressOrIndexArgument(a1, "fact-slot-value", 1, 1);
    if (result)
    {
      v5 = result;
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
      result = EnvArgTypeCheck(a1, "fact-slot-value", 2, 2, &v6);
      if (result)
      {
        return FactSlotValue(a1, v5, *(v7 + 24), a2);
      }
    }
  }

  return result;
}

uint64_t *FactSlotNamesFunction(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgCountCheck(a1, "fact-slot-names", 0, 1);
  if (result != -1)
  {
    result = GetFactAddressOrIndexArgument(a1, "fact-slot-names", 1, 1);
    if (result)
    {

      return EnvFactSlotNames(a1, result, a2);
    }
  }

  return result;
}

void GetFactListFunction(uint64_t a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v4 = EnvArgCountCheck(a1, "get-fact-list", 2u, 1);
  if (v4 == 1)
  {
    EnvRtnUnknown(a1, 1, &v8);
    if (WORD4(v8) == 2)
    {
      Defmodule = EnvFindDefmodule(a1, *(v9 + 24));
      if (Defmodule)
      {
LABEL_12:
        EnvGetFactList(a1, a2, Defmodule);
        return;
      }

      v6 = *(v9 + 24);
      v7 = *v6;
      if (v7 == 42)
      {
        if (v6[1])
        {
          goto LABEL_10;
        }
      }

      else if (42 != v7)
      {
        goto LABEL_10;
      }

      Defmodule = 0;
      goto LABEL_12;
    }

LABEL_10:
    EnvSetMultifieldErrorValue(a1, a2);
    ExpectedTypeError1(a1, "get-fact-list", 1, "defmodule name");
    return;
  }

  if (v4 != -1)
  {
    Defmodule = EnvGetCurrentModule(a1);
    goto LABEL_12;
  }

  EnvSetMultifieldErrorValue(a1, a2);
}

uint64_t PPFactFunction(char *a1)
{
  result = EnvArgRangeCheck(a1, "ppfact", 1, 3);
  if (result == -1)
  {
    return result;
  }

  v3 = result;
  result = GetFactAddressOrIndexArgument(a1, "ppfact", 1, 1);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if (v3 == 1)
  {
    v5 = 0;
    v6 = "stdout";
LABEL_17:
    result = strcmp(v6, "nil");
    if (result)
    {
      if (QueryRouters(a1, v6))
      {
        return EnvPPFact(a1, v4, v6, v5);
      }

      else
      {
        return UnrecognizedRouterMessage(a1, v6);
      }
    }

    return result;
  }

  LogicalName = GetLogicalName(a1, 2, "stdout");
  if (LogicalName)
  {
    v6 = LogicalName;
    if (v3 == 3)
    {
      EnvRtnUnknown(a1, 3, &v10);
      v8 = v11;
      v5 = v8 != EnvFalseSymbol(a1) || WORD4(v10) != 2;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_17;
  }

  IllegalLogicalNameMessage(a1, "ppfact");
  SetHaltExecution(a1, 1);

  return SetEvaluationError(a1, 1);
}

uint64_t GetFactAddressOrIndexArgument(uint64_t a1, char *a2, int a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  EnvRtnUnknown(a1, a3, &v17);
  if (WORD4(v17) != 1)
  {
    if (WORD4(v17) == 6)
    {
      if (*(v18 + 64))
      {
        result = 0;
      }

      else
      {
        result = v18;
      }

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v9 = *(v18 + 24);
  if (v9 < 0)
  {
LABEL_10:
    ExpectedTypeError1(a1, a2, a3, "fact-address or fact-index");
    goto LABEL_11;
  }

  result = FindIndexedFact(a1, *(v18 + 24));
  if (a4 && !result)
  {
    gensprintf(v20, "f-%lld", v10, v11, v12, v13, v14, v15, v9);
    CantFindItemErrorMessage(a1, "fact", v20);
LABEL_11:
    result = 0;
  }

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FactSlotValue(uint64_t a1, uint64_t a2, char *__s1, uint64_t a4)
{
  v14 = 0;
  v8 = *(a2 + 32);
  v9 = *(v8 + 56);
  if ((v9 & 1) == 0)
  {
    v10 = EnvAddSymbol(a1, __s1);
    if (!FindSlot(v8, v10, &v14))
    {
      SetEvaluationError(a1, 1);
      return InvalidDeftemplateSlotMessage(a1, __s1, *(**(a2 + 32) + 24), 0);
    }

    v9 = *(*(a2 + 32) + 56);
    goto LABEL_8;
  }

  if (!strcmp(__s1, "implied"))
  {
LABEL_8:
    if (v9)
    {
      v13 = 0;
    }

    else
    {
      v13 = __s1;
    }

    return EnvGetFactSlot(a1, a2, v13, a4);
  }

  SetEvaluationError(a1, 1);
  v11 = *(**(a2 + 32) + 24);

  return InvalidDeftemplateSlotMessage(a1, __s1, v11, 0);
}

uint64_t *EnvFactSlotNames(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (*(v5 + 56))
  {
    *(a3 + 8) = 4;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    Multifield = EnvCreateMultifield(a1, 1);
    *(Multifield + 12) = 2;
    result = EnvAddSymbol(a1, "implied");
    Multifield[4] = result;
    *(a3 + 16) = Multifield;
  }

  else
  {
    v7 = *(v5 + 48);
    if (v7)
    {
      v8 = 0;
      do
      {
        ++v8;
        v7 = *(v7 + 40);
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    *(a3 + 8) = 4;
    *(a3 + 24) = 0;
    *(a3 + 32) = v8 - 1;
    result = EnvCreateMultifield(a1, v8);
    *(a3 + 16) = result;
    v11 = *(*(a2 + 32) + 48);
    if (v11)
    {
      v12 = result + 4;
      do
      {
        *(v12 - 4) = 2;
        *v12 = *v11;
        v12 += 2;
        v11 = v11[5];
      }

      while (v11);
    }
  }

  return result;
}

uint64_t EnvGetFactList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SaveCurrentModule(a1);
  if (a3)
  {
    EnvSetCurrentModule(a1, a3);
    UpdateDeftemplateScope(a1);
    NextFactInScope = GetNextFactInScope(a1, 0);
    if (NextFactInScope)
    {
      v7 = NextFactInScope;
      v8 = 0;
      do
      {
        v7 = GetNextFactInScope(a1, v7);
        ++v8;
      }

      while (v7);
      goto LABEL_11;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  NextFact = EnvGetNextFact(a1, 0);
  if (!NextFact)
  {
    goto LABEL_10;
  }

  v10 = NextFact;
  v8 = 0;
  do
  {
    v10 = EnvGetNextFact(a1, v10);
    ++v8;
  }

  while (v10);
LABEL_11:
  *(a2 + 8) = 4;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8 - 1;
  Multifield = EnvCreateMultifield(a1, v8);
  *(a2 + 16) = Multifield;
  if (a3)
  {
    v12 = GetNextFactInScope(a1, 0);
    if (v12)
    {
      v13 = v12;
      v14 = Multifield + 4;
      do
      {
        *(v14 - 4) = 6;
        *v14 = v13;
        v14 += 2;
        v13 = GetNextFactInScope(a1, v13);
      }

      while (v13);
    }
  }

  else
  {
    v15 = EnvGetNextFact(a1, 0);
    if (v15)
    {
      v16 = v15;
      v17 = Multifield + 4;
      do
      {
        *(v17 - 4) = 6;
        *v17 = v16;
        v17 += 2;
        v16 = EnvGetNextFact(a1, v16);
      }

      while (v16);
    }
  }

  RestoreCurrentModule(a1);

  return UpdateDeftemplateScope(a1);
}

char *EnvPPFact(char *result, uint64_t a2, FILE *__s2, int a4)
{
  if (a2 && (*(a2 + 64) & 1) == 0)
  {
    v5 = result;
    PrintFact(result, __s2, a2, 1, a4);

    return EnvPrintRouter(v5, __s2, "\n");
  }

  return result;
}

uint64_t InstallUserDataRecord(uint64_t a1, _BYTE *a2)
{
  v2 = *(*(a1 + 48) + 448);
  v3 = *(v2 + 800);
  *a2 = v3;
  *(v2 + 8 * v3) = a2;
  v4 = *(*(a1 + 48) + 448);
  result = *(v4 + 800);
  *(v4 + 800) = result + 1;
  return result;
}

unsigned __int8 *FetchUserData(uint64_t a1, unsigned int a2, unsigned __int8 **a3)
{
  v4 = a2;
  result = *a3;
  if (*a3)
  {
    while (*result != a2)
    {
      result = *(result + 1);
      if (!result)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = (*(*(*(*(a1 + 48) + 448) + 8 * a2) + 8))(a1);
    *result = v4;
    *(result + 1) = *a3;
    *a3 = result;
  }

  return result;
}

unsigned __int8 *TestUserData(int a1, unsigned __int8 *a2)
{
  for (; a2; a2 = *(a2 + 1))
  {
    if (*a2 == a1)
    {
      break;
    }
  }

  return a2;
}

uint64_t ClearUserDataList(uint64_t result, unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = result;
    do
    {
      v3 = *(a2 + 1);
      result = (*(*(*(*(v2 + 48) + 448) + 8 * *a2) + 16))(v2);
      a2 = v3;
    }

    while (v3);
  }

  return result;
}

unsigned __int8 *DeleteUserData(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  v3 = a3;
  if (a3)
  {
    if (*a3 == a2)
    {
      v4 = 0;
      v5 = a3;
LABEL_7:
      if (v4)
      {
        *(v4 + 1) = *(v5 + 1);
      }

      else
      {
        v3 = *(v5 + 1);
      }

      (*(*(*(*(a1 + 48) + 448) + 8 * a2) + 16))();
    }

    else
    {
      v6 = a3;
      while (1)
      {
        v5 = *(v6 + 1);
        if (!v5)
        {
          break;
        }

        v4 = v6;
        v6 = *(v6 + 1);
        if (*v5 == a2)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return v3;
}

uint64_t scaleFromString(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isEqualToString:@"VeryLow"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Low"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"MediumLow"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Medium"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"MediumHigh"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"High"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"VeryHigh"])
  {
    v2 = 7;
  }

  else
  {
    if (([v1 isEqualToString:@"Undefined"] & 1) == 0)
    {
      v3 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        v6 = 138412290;
        v7 = v1;
        _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Unknown flow property string %@", &v6, 0xCu);
      }
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t dispositionFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"TRACKING_DISPOSITION_ALT_LARGE"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_TC_BK_SYS"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_TC_BK"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_TC_RD"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_TC_OAM"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_TC_AV"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_TC_RV"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_TC_VI"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_TC_VO"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_TC_CTL"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_LARGE_DL"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_LARGE_UL"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_LARGE"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_BURST"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_SIRI"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_PUSH"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_KNOWN_OTHER"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_MAIL"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_MAPS"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_MEDIASERVERD"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_MUSIC"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_NEWS"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_NSURLSESSIOND"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_PODCASTS"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_RTCREPORTINGD"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_SAFARI"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_STOCKS"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_WEATHER"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_WEBKIT"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_UNKNOWN_OTHER"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_DROP"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"TRACKING_DISPOSITION_NOTE"])
  {
    v2 = 41;
  }

  else
  {
    v2 = 42;
  }

  return v2;
}

uint64_t AWDSymptomsNoBackhaulPopUpMetricReadFrom(uint64_t a1, void *a2)
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
        v61 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61 & 0x7F) << v5;
        if ((v61 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v62 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v62 & 0x7F) << v33;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v39 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_94:
            *(a1 + 8) = v39;
            goto LABEL_120;
          case 2:
            v53 = 0;
            v54 = 0;
            v55 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              v64 = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                v58 = [a2 data];
                [v58 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v64 & 0x7F) << v53;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v11 = v54++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_118;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v55;
            }

LABEL_118:
            v59 = 20;
            break;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 40) |= 0x10u;
            while (1)
            {
              v68 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v68 & 0x7F) << v21;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_114;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_114:
            v59 = 28;
            break;
          default:
            goto LABEL_62;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 40) |= 8u;
          while (1)
          {
            v65 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v65 & 0x7F) << v47;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v49;
          }

LABEL_102:
          v59 = 24;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_62:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_120;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v63 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v63 & 0x7F) << v27;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_110;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_110:
          v59 = 16;
        }
      }

      else if (v13 == 4)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 40) |= 0x20u;
        while (1)
        {
          v67 = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v67 & 0x7F) << v41;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v43;
        }

LABEL_98:
        v59 = 32;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_62;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 0x40u;
        while (1)
        {
          v66 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v66 & 0x7F) << v14;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_106;
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

LABEL_106:
        v59 = 36;
      }

      *(a1 + v59) = v20;
LABEL_120:
      v60 = [a2 position];
    }

    while (v60 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t DeftemplateLHSParse(char *a1, char *a2, uint64_t a3)
{
  v22 = 0;
  v23 = 0;
  __s = 0;
  GetToken(a1, a2, &v22);
  if (v22 - 161 <= 1)
  {
    SyntaxErrorMessage(a1, "deftemplate patterns");
    return 0;
  }

  GetLHSParseNode(a1);
  v7 = v6;
  *v6 = 37;
  *(v6 + 16) &= 0xFFFFFFFC;
  *(v6 + 58) = 0;
  *(v6 + 72) = 1;
  GetLHSParseNode(a1);
  *(v7 + 200) = v8;
  *v8 = 2;
  *(v8 + 16) &= ~1u;
  *(*(v7 + 200) + 16) &= ~2u;
  *(*(v7 + 200) + 8) = *a3;
  if (v22 == 171)
  {
    v9 = 0;
LABEL_5:
    *(v7 + 192) = v9;
    return v7;
  }

  v10 = 0;
  v11 = 0;
  v25 = 0;
  while (1)
  {
    PPBackup(a1);
    SavePPBuffer(a1, " ");
    SavePPBuffer(a1, __s);
    if (v22 != 170 || (GetToken(a1, a2, &v22), v22 != 2))
    {
      SyntaxErrorMessage(a1, "deftemplate patterns");
LABEL_29:
      v19 = a1;
      v20 = v11;
      goto LABEL_30;
    }

    Slot = FindSlot(a3, v23, &v25);
    v13 = v23;
    if (!Slot)
    {
      InvalidDeftemplateSlotMessage(a1, *(v23 + 24), *(*a3 + 24), 1);
      goto LABEL_29;
    }

    v14 = Slot;
    if (v11)
    {
      v15 = v11;
      while (*(v15 + 64) != v23)
      {
        v15 = *(v15 + 192);
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      AlreadyParsedErrorMessage(a1, "slot ", *(v23 + 24));
      goto LABEL_29;
    }

LABEL_14:
    v16 = v25;
    SavePPBuffer(a1, " ");
    GetToken(a1, a2, &v22);
    if ((v14[1] & 1) == 0)
    {
      break;
    }

    v18 = RestrictionParse(a1, a2, &v22, 1, v13, v16, v14[2], 1);
    if (!v18)
    {
      goto LABEL_37;
    }

LABEL_19:
    if (v22 != 171)
    {
      PPBackup(a1);
      SavePPBuffer(a1, " ");
      SavePPBuffer(a1, __s);
      SyntaxErrorMessage(a1, "deftemplate patterns");
      goto LABEL_36;
    }

    if (!*(v18 + 25) && (v14[1] & 1) != 0)
    {
      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, ")");
    }

    v9 = v18;
    if (v10)
    {
      *(v10 + 24) = v18;
      v9 = v11;
    }

    do
    {
      v10 = v18;
      v18 = *(v18 + 24);
    }

    while (v18);
    GetToken(a1, a2, &v22);
    v11 = v9;
    if (v22 == 171)
    {
      goto LABEL_5;
    }
  }

  v17 = RestrictionParse(a1, a2, &v22, 0, *v14, v16, v14[2], 0);
  if (!v17)
  {
    goto LABEL_37;
  }

  v18 = v17;
  if ((*v17 | 0x20) != 0x24)
  {
    goto LABEL_19;
  }

  SingleFieldSlotCardinalityError(a1, *(*v14 + 24));
LABEL_36:
  ReturnLHSParseNodes(a1, v18);
LABEL_37:
  ReturnLHSParseNodes(a1, v11);
  v19 = a1;
  v20 = 0;
LABEL_30:
  ReturnLHSParseNodes(v19, v20);
  ReturnLHSParseNodes(a1, 0);
  ReturnLHSParseNodes(a1, v7);
  return 0;
}

uint64_t PlaceActivation(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  result = EnvSetAgendaChanged(a1, 1);
  if (!*a2)
  {
    *(a4 + 8) = a3;
    *(a4 + 16) = a3;
    goto LABEL_146;
  }

  v9 = *(*(*(a1 + 48) + 136) + 32);
  if (v9 > 2)
  {
    if (v9 > 4)
    {
      if (v9 == 5)
      {
        v10 = *(a4 + 32);
        if (v10)
        {
          v11 = *(v10 + 16);
        }

        else
        {
          v11 = 0;
        }

        v39 = *(a4 + 8);
        if (v39)
        {
          v40 = *(*a3 + 56) & 0x7FF;
          while (1)
          {
            v15 = v39;
            v41 = *(*v39 + 56) & 0x7FF;
            if (v40 <= v41 && (v40 < v41 || a3[3] <= v15[3]))
            {
              break;
            }

            if (v15 != *(a4 + 16))
            {
              v39 = v15[6];
              v11 = v15;
              if (v39)
              {
                continue;
              }
            }

            goto LABEL_117;
          }
        }
      }

      else
      {
        if (v9 != 6)
        {
          goto LABEL_146;
        }

        v10 = *(a4 + 32);
        if (v10)
        {
          v11 = *(v10 + 16);
        }

        else
        {
          v11 = 0;
        }

        v45 = *(a4 + 8);
        if (v45)
        {
          v46 = *(a3 + 8);
          while (1)
          {
            v15 = v45;
            v47 = *(v45 + 32);
            if (v46 <= v47 && (v46 < v47 || a3[3] <= v15[3]))
            {
              break;
            }

            if (v15 != *(a4 + 16))
            {
              v45 = v15[6];
              v11 = v15;
              if (v45)
              {
                continue;
              }
            }

            goto LABEL_117;
          }
        }
      }

LABEL_116:
      v15 = v11;
      if (v11)
      {
LABEL_117:
        if (!v10 || *(v10 + 16) != v15)
        {
LABEL_120:
          v17 = *(a4 + 16);
          v18 = (a4 + 16);
          if (!v17)
          {
            goto LABEL_145;
          }

          goto LABEL_140;
        }
      }

      *(a4 + 8) = a3;
      goto LABEL_120;
    }

    if (v9 != 3)
    {
      v10 = *(a4 + 32);
      if (v10)
      {
        v11 = *(v10 + 16);
      }

      else
      {
        v11 = 0;
      }

      v42 = *(a4 + 8);
      if (v42)
      {
        v43 = *(*a3 + 56) & 0x7FF;
        while (1)
        {
          v15 = v42;
          v44 = *(*v42 + 56) & 0x7FF;
          if (v43 >= v44 && (v43 > v44 || a3[3] <= v15[3]))
          {
            break;
          }

          if (v15 != *(a4 + 16))
          {
            v42 = v15[6];
            v11 = v15;
            if (v42)
            {
              continue;
            }
          }

          goto LABEL_117;
        }
      }

      goto LABEL_116;
    }

    v16 = *(a4 + 32);
    if (v16)
    {
      v13 = *(v16 + 16);
    }

    else
    {
      v13 = 0;
    }

    v26 = a3[3];
    v18 = (a4 + 16);
    v15 = *(a4 + 16);
    if (!v15)
    {
      goto LABEL_68;
    }

    v27 = *(a3[1] + 136);
    if (v27 && (v27 = *v27) != 0)
    {
      v28 = 0;
      v27 = v27[3];
    }

    else
    {
      v28 = 1;
    }

    v29 = *(v15[1] + 136);
    if (v29 && (v30 = *v29) != 0)
    {
      if (v28)
      {
        goto LABEL_145;
      }

      v31 = *(v30 + 24);
      if (v31 < v27)
      {
        goto LABEL_68;
      }

      if (v31 > v27)
      {
        goto LABEL_145;
      }
    }

    else if ((v28 & 1) == 0)
    {
      goto LABEL_68;
    }

    result = ComparePartialMatches(a1, *(a4 + 16), a3);
    if (result && (result != 2 || v26 <= v15[3]))
    {
LABEL_68:
      v32 = *(a4 + 8);
      if (v32)
      {
        while (1)
        {
          v15 = v32;
          v33 = *(a3[1] + 136);
          if (v33 && (v34 = *v33) != 0)
          {
            v35 = *(v34 + 24);
          }

          else
          {
            v35 = -1;
          }

          v36 = *(v15[1] + 136);
          if (v36 && (v37 = *v36) != 0)
          {
            v38 = *(v37 + 24);
          }

          else
          {
            v38 = -1;
          }

          if (v38 >= v35)
          {
            if (v38 <= v35)
            {
              result = ComparePartialMatches(a1, v15, a3);
              if (result && (result == 1 || v26 <= v15[3]))
              {
                goto LABEL_134;
              }
            }

            else if (v38 <= 0)
            {
              goto LABEL_134;
            }
          }

          else if (v35 > 0)
          {
            goto LABEL_134;
          }

          if (v15 != *v18)
          {
            v32 = v15[6];
            v13 = v15;
            if (v32)
            {
              continue;
            }
          }

          goto LABEL_135;
        }
      }

      goto LABEL_134;
    }

LABEL_145:
    *v18 = a3;
    if (!v15)
    {
      goto LABEL_146;
    }

LABEL_142:
    v51 = v15[6];
    a3[5] = v15;
    a3[6] = v51;
    v15[6] = a3;
    goto LABEL_147;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        goto LABEL_146;
      }

      v12 = *(a4 + 32);
      if (v12)
      {
        v13 = *(v12 + 16);
      }

      else
      {
        v13 = 0;
      }

      v48 = a3[3];
      v18 = (a4 + 16);
      v15 = *(a4 + 16);
      if (!v15 || (result = ComparePartialMatches(a1, *(a4 + 16), a3), result) && (result != 2 || v48 <= v15[3]))
      {
        v49 = *(a4 + 8);
        if (v49)
        {
          while (1)
          {
            v15 = v49;
            result = ComparePartialMatches(a1, v49, a3);
            if (result)
            {
              if (result == 1 || v48 <= v15[3])
              {
                break;
              }
            }

            if (v15 != *v18)
            {
              v49 = v15[6];
              v13 = v15;
              if (v49)
              {
                continue;
              }
            }

            goto LABEL_135;
          }
        }

LABEL_134:
        v15 = v13;
        if (v13)
        {
LABEL_135:
          v50 = *(a4 + 32);
          if (!v50 || *(v50 + 16) != v15)
          {
            goto LABEL_138;
          }
        }

        *(a4 + 8) = a3;
LABEL_138:
        v17 = *v18;
        goto LABEL_139;
      }

      goto LABEL_145;
    }

    v18 = (a4 + 16);
    v17 = *(a4 + 16);
    if (v17)
    {
      v15 = *(a4 + 16);
      while (a3[3] < v15[3])
      {
        if (v15 == *(a4 + 8))
        {
          goto LABEL_31;
        }

        v15 = v15[5];
        if (!v15)
        {
          v15 = *(a4 + 16);
          break;
        }
      }

      v19 = *(a4 + 32);
      if (!v19)
      {
LABEL_139:
        if (!v17)
        {
          goto LABEL_145;
        }

LABEL_140:
        if (v17 == v15)
        {
          goto LABEL_145;
        }

        goto LABEL_141;
      }
    }

    else
    {
LABEL_31:
      v19 = *(a4 + 32);
      if (!v19)
      {
        v15 = 0;
        goto LABEL_144;
      }

      v15 = *(v19 + 16);
      if (!v15)
      {
        goto LABEL_144;
      }
    }

    if (*(v19 + 16) != v15)
    {
      goto LABEL_139;
    }

LABEL_144:
    *(a4 + 8) = a3;
    if (!v17)
    {
      goto LABEL_145;
    }

    goto LABEL_140;
  }

  v14 = *(a4 + 32);
  if (v14)
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v15 = 0;
  }

  v20 = *(a4 + 8);
  if (v20)
  {
    v21 = a3[3];
    if (v21 < v20[3])
    {
      do
      {
        v15 = v20;
        if (v20 == *(a4 + 16))
        {
          break;
        }

        v20 = v20[6];
        if (!v20)
        {
          break;
        }
      }

      while (v21 < v20[3]);
LABEL_43:
      if (!v14 || *(v14 + 16) != v15)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }
  }

  if (v15)
  {
    goto LABEL_43;
  }

LABEL_45:
  *(a4 + 8) = a3;
LABEL_46:
  v24 = *(a4 + 16);
  v23 = (a4 + 16);
  v22 = v24;
  if (v24)
  {
    v25 = v22 == v15;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v18 = v23;
    goto LABEL_145;
  }

LABEL_141:
  if (v15)
  {
    goto LABEL_142;
  }

LABEL_146:
  a3[6] = *a2;
  *a2 = a3;
LABEL_147:
  v52 = a3[6];
  if (v52)
  {
    *(v52 + 40) = a3;
  }

  return result;
}