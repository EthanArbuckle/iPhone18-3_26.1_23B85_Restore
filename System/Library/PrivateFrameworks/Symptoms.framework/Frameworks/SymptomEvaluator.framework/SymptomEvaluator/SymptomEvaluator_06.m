uint64_t EnvSetStrategy(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 136);
  v3 = *(v2 + 32);
  *(v2 + 32) = a2;
  if (v3 != a2)
  {
    EnvReorderAgenda(a1, 0);
  }

  return v3;
}

uint64_t *GetStrategyCommand(uint64_t a1)
{
  EnvArgCountCheck(a1, "get-strategy", 0, 0);
  StrategyName = GetStrategyName(*(*(*(a1 + 48) + 136) + 32));

  return EnvAddSymbol(a1, StrategyName);
}

const char *GetStrategyName(unsigned int a1)
{
  if (a1 > 6)
  {
    return "unknown";
  }

  else
  {
    return off_27898E410[a1];
  }
}

uint64_t *SetStrategyCommand(uint64_t a1)
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v2 = *(*(*(a1 + 48) + 136) + 32);
  if (EnvArgCountCheck(a1, "set-strategy", 0, 1) != -1)
  {
    if (!EnvArgTypeCheck(a1, "set-strategy", 1, 2, &v22))
    {
LABEL_11:
      v4 = *(*(*(a1 + 48) + 136) + 32);
LABEL_18:
      StrategyName = GetStrategyName(v4);
      return EnvAddSymbol(a1, StrategyName);
    }

    v3 = *(v23 + 24);
    if (!strcmp(v3, "depth"))
    {
      v7 = *(*(a1 + 48) + 136);
      v8 = *(v7 + 32);
      *(v7 + 32) = 0;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else if (!strcmp(v3, "breadth"))
    {
      v10 = *(*(a1 + 48) + 136);
      v11 = *(v10 + 32);
      *(v10 + 32) = 1;
      if (v11 == 1)
      {
        goto LABEL_17;
      }
    }

    else if (!strcmp(v3, "lex"))
    {
      v12 = *(*(a1 + 48) + 136);
      v13 = *(v12 + 32);
      *(v12 + 32) = 2;
      if (v13 == 2)
      {
        goto LABEL_17;
      }
    }

    else if (!strcmp(v3, "mea"))
    {
      v14 = *(*(a1 + 48) + 136);
      v15 = *(v14 + 32);
      *(v14 + 32) = 3;
      if (v15 == 3)
      {
        goto LABEL_17;
      }
    }

    else if (!strcmp(v3, "complexity"))
    {
      v16 = *(*(a1 + 48) + 136);
      v17 = *(v16 + 32);
      *(v16 + 32) = 4;
      if (v17 == 4)
      {
        goto LABEL_17;
      }
    }

    else if (!strcmp(v3, "simplicity"))
    {
      v18 = *(*(a1 + 48) + 136);
      v19 = *(v18 + 32);
      *(v18 + 32) = 5;
      if (v19 == 5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (strcmp(v3, "random"))
      {
        ExpectedTypeError1(a1, "set-strategy", 1, "symbol with value depth, breadth, lex, mea, complexity, simplicity, or random");
        goto LABEL_11;
      }

      v20 = *(*(a1 + 48) + 136);
      v21 = *(v20 + 32);
      *(v20 + 32) = 6;
      if (v21 == 6)
      {
LABEL_17:
        v4 = v2;
        goto LABEL_18;
      }
    }

    EnvReorderAgenda(a1, 0);
    goto LABEL_17;
  }

  v5 = GetStrategyName(*(*(*(a1 + 48) + 136) + 32));

  return EnvAddSymbol(a1, v5);
}

uint64_t ComparePartialMatches(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = SortPartialMatch(a1, a3[1]);
  v7 = SortPartialMatch(a1, a2[1]);
  v8 = v7;
  v9 = *(a3[1] + 2);
  v10 = *(a2[1] + 2);
  if (v10 >= v9)
  {
    v11 = *(a3[1] + 2);
  }

  else
  {
    v11 = *(a2[1] + 2);
  }

  if (v11)
  {
    v12 = 0;
    v13 = 8 * v11;
    while (1)
    {
      v14 = v6[v12 / 8];
      v15 = v7[v12 / 8];
      if (v14 < v15)
      {
        break;
      }

      if (v14 > v15)
      {
        v25 = *(a1 + 48);
        v26 = *(v25 + 472);
        *(v26 + 48) = 8 * v9;
        if (v9 > 0x3E)
        {
          genfree(a1, v6, 8 * v9);
        }

        else
        {
          *(v26 + 32) = v6;
          **(*(v25 + 472) + 32) = *(*(*(v25 + 472) + 40) + 8 * *(*(v25 + 472) + 48));
          *(*(*(v25 + 472) + 40) + 8 * *(*(v25 + 472) + 48)) = *(*(v25 + 472) + 32);
        }

        v29 = *(a1 + 48);
        v30 = *(v29 + 472);
        *(v30 + 48) = 8 * v10;
        if (v10 > 0x3E)
        {
          genfree(a1, v8, 8 * v10);
        }

        else
        {
          *(v30 + 32) = v8;
          **(*(v29 + 472) + 32) = *(*(*(v29 + 472) + 40) + 8 * *(*(v29 + 472) + 48));
          *(*(*(v29 + 472) + 40) + 8 * *(*(v29 + 472) + 48)) = *(*(v29 + 472) + 32);
        }

        return 1;
      }

      v12 += 8;
      if (v13 == v12)
      {
        goto LABEL_9;
      }
    }

    v23 = *(a1 + 48);
    v24 = *(v23 + 472);
    *(v24 + 48) = 8 * v9;
    if (v9 > 0x3E)
    {
      genfree(a1, v6, 8 * v9);
    }

    else
    {
      *(v24 + 32) = v6;
      **(*(v23 + 472) + 32) = *(*(*(v23 + 472) + 40) + 8 * *(*(v23 + 472) + 48));
      *(*(*(v23 + 472) + 40) + 8 * *(*(v23 + 472) + 48)) = *(*(v23 + 472) + 32);
    }

    v27 = *(a1 + 48);
    v28 = *(v27 + 472);
    *(v28 + 48) = 8 * v10;
    if (v10 <= 0x3E)
    {
      result = 0;
      *(v28 + 32) = v8;
      **(*(v27 + 472) + 32) = *(*(*(v27 + 472) + 40) + 8 * *(*(v27 + 472) + 48));
      *(*(*(v27 + 472) + 40) + 8 * *(*(v27 + 472) + 48)) = *(*(v27 + 472) + 32);
      return result;
    }

    genfree(a1, v8, 8 * v10);
    return 0;
  }

LABEL_9:
  v16 = *(a1 + 48);
  v17 = *(v16 + 472);
  *(v17 + 48) = 8 * v9;
  if (v9 > 0x3E)
  {
    genfree(a1, v6, 8 * v9);
  }

  else
  {
    *(v17 + 32) = v6;
    **(*(v16 + 472) + 32) = *(*(*(v16 + 472) + 40) + 8 * *(*(v16 + 472) + 48));
    *(*(*(v16 + 472) + 40) + 8 * *(*(v16 + 472) + 48)) = *(*(v16 + 472) + 32);
  }

  v18 = *(a1 + 48);
  v19 = *(v18 + 472);
  *(v19 + 48) = 8 * v10;
  if (v10 > 0x3E)
  {
    genfree(a1, v8, 8 * v10);
  }

  else
  {
    *(v19 + 32) = v8;
    **(*(v18 + 472) + 32) = *(*(*(v18 + 472) + 40) + 8 * *(*(v18 + 472) + 48));
    *(*(*(v18 + 472) + 40) + 8 * *(*(v18 + 472) + 48)) = *(*(v18 + 472) + 32);
  }

  if (v10 > v9)
  {
    return 0;
  }

  if (v9 > v10)
  {
    return 1;
  }

  v20 = *(*a3 + 56) & 0x7FF;
  v21 = *(*a2 + 56) & 0x7FF;
  if (v20 < v21)
  {
    return 0;
  }

  if (v20 > v21)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void *SortPartialMatch(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 2);
  if (v3 <= 0x3E && (v4 = *(a1 + 48), v5 = *(v4 + 472), (v6 = *(*(v5 + 40) + (v3 << 6))) != 0))
  {
    *(v5 + 32) = v6;
    *(*(*(v4 + 472) + 40) + (v3 << 6)) = **(*(v4 + 472) + 32);
    result = *(*(*(a1 + 48) + 472) + 32);
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = genalloc(a1, 8 * v3);
    LODWORD(v3) = *(a2 + 2);
    if (!*(a2 + 2))
    {
      goto LABEL_11;
    }
  }

  v8 = (a2 + 136);
  v9 = v3;
  v10 = result;
  do
  {
    v11 = *v8;
    if (*v8)
    {
      v11 = *v11;
      if (v11)
      {
        v11 = v11[3];
      }
    }

    *v10++ = v11;
    ++v8;
    --v9;
  }

  while (v9);
LABEL_11:
  v12 = v3 - 1;
  do
  {
    LODWORD(v3) = v3 - 1;
    if (!v3)
    {
      break;
    }

    v13 = 0;
    v14 = *result;
    v15 = v12;
    v16 = result + 1;
    do
    {
      if (v14 >= *v16)
      {
        v14 = *v16;
      }

      else
      {
        *(v16 - 1) = *v16;
        *v16 = v14;
        v13 = 1;
      }

      ++v16;
      --v15;
    }

    while (v15);
    --v12;
  }

  while (v13 == 1);
  return result;
}

uint64_t DeftemplateFunctions(uint64_t a1)
{
  EnvDefineFunction(a1, "modify", 117, ModifyCommand, "ModifyCommand");
  EnvDefineFunction(a1, "duplicate", 117, DuplicateCommand, "DuplicateCommand");
  EnvDefineFunction2(a1, "deftemplate-slot-names", 117, DeftemplateSlotNamesFunction, "DeftemplateSlotNamesFunction", "11z");
  EnvDefineFunction2(a1, "deftemplate-slot-default-value", 117, DeftemplateSlotDefaultValueFunction, "DeftemplateSlotDefaultValueFunction", "22w");
  EnvDefineFunction2(a1, "deftemplate-slot-cardinality", 117, DeftemplateSlotCardinalityFunction, "DeftemplateSlotCardinalityFunction", "22w");
  EnvDefineFunction2(a1, "deftemplate-slot-allowed-values", 117, DeftemplateSlotAllowedValuesFunction, "DeftemplateSlotAllowedValuesFunction", "22w");
  EnvDefineFunction2(a1, "deftemplate-slot-range", 117, DeftemplateSlotRangeFunction, "DeftemplateSlotRangeFunction", "22w");
  EnvDefineFunction2(a1, "deftemplate-slot-types", 117, DeftemplateSlotTypesFunction, "DeftemplateSlotTypesFunction", "22w");
  EnvDefineFunction2(a1, "deftemplate-slot-multip", 98, DeftemplateSlotMultiPFunction, "DeftemplateSlotMultiPFunction", "22w");
  EnvDefineFunction2(a1, "deftemplate-slot-singlep", 98, DeftemplateSlotSinglePFunction, "DeftemplateSlotSinglePFunction", "22w");
  EnvDefineFunction2(a1, "deftemplate-slot-existp", 98, DeftemplateSlotExistPFunction, "DeftemplateSlotExistPFunction", "22w");
  EnvDefineFunction2(a1, "deftemplate-slot-defaultp", 119, DeftemplateSlotDefaultPFunction, "DeftemplateSlotDefaultPFunction", "22w");
  EnvDefineFunction2(a1, "deftemplate-slot-facet-existp", 98, DeftemplateSlotFacetExistPFunction, "DeftemplateSlotFacetExistPFunction", "33w");
  EnvDefineFunction2(a1, "deftemplate-slot-facet-value", 117, DeftemplateSlotFacetValueFunction, "DeftemplateSlotFacetValueFunction", "33w");
  AddFunctionParser(a1, "modify", ModifyParse);
  AddFunctionParser(a1, "duplicate", DuplicateParse);
  FuncSeqOvlFlags(a1, "modify", 0, 0);

  return FuncSeqOvlFlags(a1, "duplicate", 0, 0);
}

uint64_t *DeftemplateSlotNamesFunction(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgCountCheck(a1, "deftemplate-slot-names", 0, 1);
  if (result != -1)
  {
    result = GetConstructName(a1, "deftemplate-slot-names", "deftemplate name");
    if (result)
    {
      v5 = result;
      Deftemplate = EnvFindDeftemplate(a1, result);
      if (Deftemplate)
      {

        return EnvDeftemplateSlotNames(a1, Deftemplate, a2);
      }

      else
      {

        return CantFindItemErrorMessage(a1, "deftemplate", v5);
      }
    }
  }

  return result;
}

uint64_t DeftemplateSlotDefaultValueFunction(char *a1, uint64_t a2)
{
  v8 = 0;
  v4 = CheckDeftemplateAndSlotArguments(a1, "deftemplate-slot-default-value", &v8, 2);
  if (v4)
  {
    v5 = v8;
    v6 = *(v4 + 24);

    return EnvDeftemplateSlotDefaultValue(a1, v5, v6, a2);
  }

  else
  {
    *(a2 + 8) = 2;
    result = EnvFalseSymbol(a1);
    *(a2 + 16) = result;
  }

  return result;
}

double DeftemplateSlotCardinalityFunction(uint64_t a1, uint64_t a2)
{
  *v8 = 0;
  v4 = CheckDeftemplateAndSlotArguments(a1, "deftemplate-slot-cardinality", v8, 2);
  if (v4)
  {
    v5 = *v8;
    v6 = *(v4 + 24);

    EnvDeftemplateSlotCardinality(a1, v5, v6, a2);
  }

  else
  {

    return EnvSetMultifieldErrorValue(a1, a2);
  }

  return result;
}

double DeftemplateSlotAllowedValuesFunction(uint64_t a1, uint64_t a2)
{
  *v8 = 0;
  v4 = CheckDeftemplateAndSlotArguments(a1, "deftemplate-slot-allowed-values", v8, 2);
  if (v4)
  {
    v5 = *v8;
    v6 = *(v4 + 24);

    EnvDeftemplateSlotAllowedValues(a1, v5, v6, a2);
  }

  else
  {

    return EnvSetMultifieldErrorValue(a1, a2);
  }

  return result;
}

double DeftemplateSlotRangeFunction(uint64_t a1, uint64_t a2)
{
  *v8 = 0;
  v4 = CheckDeftemplateAndSlotArguments(a1, "deftemplate-slot-range", v8, 2);
  if (v4)
  {
    v5 = *v8;
    v6 = *(v4 + 24);

    EnvDeftemplateSlotRange(a1, v5, v6, a2);
  }

  else
  {

    return EnvSetMultifieldErrorValue(a1, a2);
  }

  return result;
}

double DeftemplateSlotTypesFunction(uint64_t a1, uint64_t a2)
{
  *v8 = 0;
  v4 = CheckDeftemplateAndSlotArguments(a1, "deftemplate-slot-types", v8, 2);
  if (v4)
  {
    v5 = *v8;
    v6 = *(v4 + 24);

    EnvDeftemplateSlotTypes(a1, v5, v6, a2);
  }

  else
  {

    return EnvSetMultifieldErrorValue(a1, a2);
  }

  return result;
}

uint64_t DeftemplateSlotMultiPFunction(uint64_t a1)
{
  *v5 = 0;
  result = CheckDeftemplateAndSlotArguments(a1, "deftemplate-slot-multip", v5, 2);
  if (result)
  {
    v3 = *v5;
    v4 = *(result + 24);

    return EnvDeftemplateSlotMultiP(a1, v3, v4);
  }

  return result;
}

uint64_t DeftemplateSlotSinglePFunction(uint64_t a1)
{
  *v5 = 0;
  result = CheckDeftemplateAndSlotArguments(a1, "deftemplate-slot-singlep", v5, 2);
  if (result)
  {
    v3 = *v5;
    v4 = *(result + 24);

    return EnvDeftemplateSlotSingleP(a1, v3, v4);
  }

  return result;
}

uint64_t DeftemplateSlotExistPFunction(uint64_t a1)
{
  *v5 = 0;
  result = CheckDeftemplateAndSlotArguments(a1, "deftemplate-slot-existp", v5, 2);
  if (result)
  {
    v3 = *v5;
    v4 = *(result + 24);

    return EnvDeftemplateSlotExistP(a1, v3, v4);
  }

  return result;
}

uint64_t *DeftemplateSlotDefaultPFunction(uint64_t a1)
{
  *v6 = 0;
  v2 = CheckDeftemplateAndSlotArguments(a1, "deftemplate-slot-existp", v6, 2);
  if (v2)
  {
    v3 = EnvDeftemplateSlotDefaultP(a1, *v6, *(v2 + 24));
    if (v3 == 2)
    {
      v4 = "dynamic";
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v4 = "static";
LABEL_9:

      return EnvAddSymbol(a1, v4);
    }
  }

  return EnvFalseSymbol(a1);
}

uint64_t DeftemplateSlotFacetExistPFunction(uint64_t a1)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  result = CheckDeftemplateAndSlotArguments(a1, "deftemplate-slot-facet-existp", &v7, 3);
  if (result)
  {
    v3 = result;
    result = EnvArgTypeCheck(a1, "deftemplate-slot-facet-existp", 3, 2, &v4);
    if (result)
    {
      return EnvDeftemplateSlotFacetExistP(a1, v7, *(v3 + 24), *(v5 + 24));
    }
  }

  return result;
}

uint64_t DeftemplateSlotFacetValueFunction(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = CheckDeftemplateAndSlotArguments(a1, "deftemplate-slot-facet-existp", &v9, 3);
  if (result)
  {
    v5 = result;
    result = EnvArgTypeCheck(a1, "deftemplate-slot-facet-existp", 3, 2, &v6);
    if (result)
    {
      return EnvDeftemplateSlotFacetValue(a1, v9, *(v5 + 24), *(v7 + 24), a2);
    }
  }

  return result;
}

uint64_t DuplicateModifyCommand(uint64_t a1, int a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  *(a3 + 8) = 2;
  *(a3 + 16) = EnvFalseSymbol(a1);
  v6 = *(**(*(a1 + 48) + 352) + 16);
  EnvIncrementClearReadyLocks(a1);
  EvaluateExpression(a1, v6, &v44);
  result = EnvDecrementClearReadyLocks(a1);
  if (WORD4(v44) == 6)
  {
    v15 = v45;
  }

  else
  {
    if (WORD4(v44) != 1 || (v8 = *(v45 + 24), v8 < 0))
    {
      if (a2)
      {
        v16 = "modify";
      }

      else
      {
        v16 = "duplicate";
      }

      ExpectedTypeError2(a1, v16, 1);
      result = SetEvaluationError(a1, 1);
      goto LABEL_57;
    }

    result = EnvGetNextFact(a1, 0);
    if (!result)
    {
LABEL_8:
      gensprintf(v47, "f-%lld", v9, v10, v11, v12, v13, v14, v8);
      result = CantFindItemErrorMessage(a1, "fact", v47);
      goto LABEL_57;
    }

    v15 = result;
    while (*(v15 + 48) != v8)
    {
      v15 = *(v15 + 80);
      if (!v15)
      {
        goto LABEL_8;
      }
    }
  }

  v17 = *(v15 + 32);
  if ((*(v17 + 56) & 1) == 0)
  {
    CreateFactBySize(a1, *(v15 + 112));
    v19 = v18;
    v18[4] = v17;
    v20 = *(v15 + 112);
    if (v20 >= 1)
    {
      v21 = *(v15 + 112) & 0x7FFFFFFFLL;
      v22 = v18 + 17;
      v23 = (v15 + 136);
      do
      {
        v24 = *(v23 - 4);
        *(v22 - 4) = v24;
        if (v24 == 4)
        {
          v25 = 0;
        }

        else
        {
          v25 = *v23;
        }

        *v22 = v25;
        v22 += 2;
        v23 += 2;
        --v21;
      }

      while (v21);
    }

    v26 = *(v6 + 24);
    if (v26)
    {
      while (1)
      {
        if (*v26 == 1)
        {
          v27 = *(*(v26 + 8) + 24);
        }

        else
        {
          v30 = *(v17 + 48);
          if (!v30)
          {
LABEL_55:
            InvalidDeftemplateSlotMessage(a1, *(*(v26 + 8) + 24), *(*v17 + 24), 1);
            SetEvaluationError(a1, 1);
LABEL_56:
            result = ReturnFact(a1, v19);
            goto LABEL_57;
          }

          v27 = 0;
          while (*v30 != *(v26 + 8))
          {
            v30 = v30[5];
            ++v27;
            if (!v30)
            {
              goto LABEL_55;
            }
          }
        }

        v28 = &v19[2 * v27 + 16];
        if (*v28 == 4)
        {
          EnvIncrementClearReadyLocks(a1);
          StoreInMultifield(a1, &v44, *(v26 + 16), 0);
          SetEvaluationError(a1, 0);
          EnvDecrementClearReadyLocks(a1);
          v29 = WORD4(v44);
        }

        else
        {
          v31 = *(v26 + 16);
          if (!v31 || *(v31 + 24))
          {
            NthSlot = GetNthSlot(v17, v27);
            MultiIntoSingleFieldSlotError(a1, NthSlot, v17);
            goto LABEL_56;
          }

          EnvIncrementClearReadyLocks(a1);
          EvaluateExpression(a1, *(v26 + 16), &v44);
          SetEvaluationError(a1, 0);
          EnvDecrementClearReadyLocks(a1);
          v29 = WORD4(v44);
          if (WORD4(v44) == 4)
          {
            ReturnFact(a1, v19);
            v43 = GetNthSlot(v17, v27);
            result = MultiIntoSingleFieldSlotError(a1, v43, v17);
            goto LABEL_57;
          }
        }

        *v28 = v29;
        *(v28 + 8) = v45;
        v26 = *(v26 + 24);
        if (!v26)
        {
          v20 = *(v15 + 112);
          break;
        }
      }
    }

    if (v20 >= 1)
    {
      v32 = 0;
      v33 = v19 + 17;
      v34 = (v15 + 136);
      do
      {
        if (*(v33 - 4) == 4 && !*v33)
        {
          *v33 = CopyMultifield(a1, *v34);
          v20 = *(v15 + 112);
        }

        ++v32;
        v33 += 2;
        v34 += 2;
      }

      while (v32 < v20);
    }

    if (a2)
    {
      if (*(*(*(a1 + 48) + 24) + 208))
      {
        if (FactWillBeAsserted(a1, v19) || MultifieldsEqual(v15 + 104, (v19 + 13)))
        {
          v35 = *(a1 + 48);
          v36 = *(v35 + 24);
          v19[6] = *(v36 + 176);
          v19[3] = *(*(v35 + 128) + 16);
          v37 = v19;
        }

        else
        {
          v37 = 0;
          v36 = *(*(a1 + 48) + 24);
        }

        for (i = *(v36 + 208); i; i = *(i + 24))
        {
          SetEnvironmentCallbackContext(a1, *(i + 40));
          v39 = *(i + 8);
          if (*(i + 32))
          {
            v39(a1, v15, v37);
          }

          else
          {
            (v39)(v15, v37);
          }
        }
      }

      EnvRetract(a1, v15);
    }

    result = EnvAssert(a1, v19);
    if (result)
    {
      v40 = *(result + 112) - 1;
      *(a3 + 24) = 0;
      *(a3 + 32) = v40;
      *(a3 + 8) = 6;
      *(a3 + 16) = result;
    }
  }

LABEL_57:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *EnvDeftemplateSlotNames(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 56))
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
    v6 = *(a2 + 48);
    if (v6)
    {
      v7 = 0;
      do
      {
        ++v7;
        v6 = *(v6 + 40);
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    *(a3 + 8) = 4;
    *(a3 + 24) = 0;
    *(a3 + 32) = v7 - 1;
    result = EnvCreateMultifield(a1, v7);
    *(a3 + 16) = result;
    v10 = *(a2 + 48);
    if (v10)
    {
      v11 = result + 4;
      do
      {
        *(v11 - 4) = 2;
        *v11 = *v10;
        v11 += 2;
        v10 = v10[5];
      }

      while (v10);
    }
  }

  return result;
}

uint64_t CheckDeftemplateAndSlotArguments(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  if (EnvArgCountCheck(a1, a2, 0, a4) == -1 || EnvArgCountCheck(a1, a2, 1u, 2) == -1)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  EnvRtnUnknown(a1, 1, &v10);
  if (WORD4(v10) != 2)
  {
    ExpectedTypeError1(a1, a2, 1, "deftemplate name");
    return 0;
  }

  v7 = *(v11 + 24);
  Deftemplate = EnvFindDeftemplate(a1, v7);
  *a3 = Deftemplate;
  if (!Deftemplate)
  {
    CantFindItemErrorMessage(a1, "deftemplate", v7);
    return 0;
  }

  if (EnvArgTypeCheck(a1, a2, 2, 2, &v10))
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t EnvDeftemplateSlotDefaultP(uint64_t a1, _BYTE *a2, char *__s1)
{
  if (a2[56])
  {
    if (!strcmp(__s1, "implied"))
    {
      return 1;
    }

LABEL_10:
    SetEvaluationError(a1, 1);
    InvalidDeftemplateSlotMessage(a1, __s1, *(*a2 + 24), 0);
    return 0;
  }

  v10 = 0;
  v6 = EnvAddSymbol(a1, __s1);
  Slot = FindSlot(a2, v6, &v10);
  if (!Slot)
  {
    goto LABEL_10;
  }

  if ((Slot[1] & 8) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if ((Slot[1] & 2) != 0)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

BOOL EnvDeftemplateSlotDefaultValue(char *a1, _BYTE *a2, char *a3, uint64_t a4)
{
  memset(v13, 0, sizeof(v13));
  *(a4 + 8) = 2;
  *(a4 + 16) = EnvFalseSymbol(a1);
  if (a2[56])
  {
    if (!strcmp(a3, "implied"))
    {
      *(a4 + 8) = 4;
      Multifield = EnvCreateMultifield(a1, 0);
      result = 1;
      *(a4 + 16) = Multifield;
      *(a4 + 24) = 1;
      *(a4 + 32) = 0;
      return result;
    }

LABEL_7:
    SetEvaluationError(a1, 1);
    InvalidDeftemplateSlotMessage(a1, a3, *(*a2 + 24), 0);
    return 0;
  }

  v14 = 0;
  v8 = EnvAddSymbol(a1, a3);
  Slot = FindSlot(a2, v8, &v14);
  if (!Slot)
  {
    goto LABEL_7;
  }

  if ((Slot[1] & 2) != 0)
  {
    *(a4 + 8) = 2;
    v11 = EnvAddSymbol(a1, "?NONE");
  }

  else
  {
    result = DeftemplateSlotDefault(a1, a2, Slot, v13, 1);
    if (!result)
    {
      return result;
    }

    *(a4 + 24) = *(&v13[1] + 8);
    *(a4 + 8) = WORD4(v13[0]);
    v11 = *&v13[1];
  }

  *(a4 + 16) = v11;
  return 1;
}

void EnvDeftemplateSlotCardinality(uint64_t a1, _BYTE *a2, char *__s1, uint64_t a4)
{
  if ((a2[56] & 1) == 0)
  {
    v18 = 0;
    v8 = EnvAddSymbol(a1, __s1);
    Slot = FindSlot(a2, v8, &v18);
    if (!Slot)
    {
      EnvSetMultifieldErrorValue(a1, a4);
      SetEvaluationError(a1, 1);
      InvalidDeftemplateSlotMessage(a1, __s1, *(*a2 + 24), 0);
      return;
    }

    v10 = Slot;
    if ((Slot[1] & 1) == 0)
    {
      EnvSetMultifieldErrorValue(a1, a4);
      return;
    }

    *(a4 + 8) = 4;
    *(a4 + 24) = xmmword_232816A80;
    Multifield = EnvCreateMultifield(a1, 2);
    *(a4 + 16) = Multifield;
    v13 = v10[2];
    if (v13)
    {
      v15 = *(v13 + 40);
      v14 = *(v13 + 48);
      *(Multifield + 12) = *v15;
      Multifield[4] = *(v15 + 8);
      *(Multifield + 20) = *v14;
      v16 = *(v14 + 8);
LABEL_14:
      Multifield[6] = v16;
      return;
    }

LABEL_13:
    *(Multifield + 12) = 1;
    v17 = *(a1 + 48);
    Multifield[4] = *(*(v17 + 392) + 32);
    *(Multifield + 20) = 2;
    v16 = *(*(v17 + 392) + 16);
    goto LABEL_14;
  }

  if (!strcmp(__s1, "implied"))
  {
    *(a4 + 8) = 4;
    *(a4 + 24) = xmmword_232816A80;
    Multifield = EnvCreateMultifield(a1, 2);
    *(a4 + 16) = Multifield;
    goto LABEL_13;
  }

  EnvSetMultifieldErrorValue(a1, a4);
  SetEvaluationError(a1, 1);
  v11 = *(*a2 + 24);

  InvalidDeftemplateSlotMessage(a1, __s1, v11, 0);
}

uint64_t EnvDeftemplateSlotAllowedValues(uint64_t a1, _BYTE *a2, char *__s1, uint64_t a4)
{
  if ((a2[56] & 1) == 0)
  {
    v18 = 0;
    v8 = EnvAddSymbol(a1, __s1);
    Slot = FindSlot(a2, v8, &v18);
    if (!Slot)
    {
      EnvSetMultifieldErrorValue(a1, a4);
      SetEvaluationError(a1, 1);
      return InvalidDeftemplateSlotMessage(a1, __s1, *(*a2 + 24), 0);
    }

    v10 = Slot;
    v11 = Slot[2];
    if (v11)
    {
      v12 = *(v11 + 16);
      if (v12)
      {
        *(a4 + 8) = 4;
        *(a4 + 24) = 0;
        v13 = ExpressionSize(v12);
        *(a4 + 32) = v13 - 1;
        result = EnvCreateMultifield(a1, v13);
        *(a4 + 16) = result;
        v15 = *(v10[2] + 16);
        if (v15)
        {
          v16 = (result + 32);
          do
          {
            *(v16 - 4) = *v15;
            *v16 = *(v15 + 8);
            v16 += 2;
            v15 = *(v15 + 24);
          }

          while (v15);
        }

        return result;
      }
    }

LABEL_13:
    *(a4 + 8) = 2;
    result = EnvFalseSymbol(a1);
    *(a4 + 16) = result;
    return result;
  }

  if (!strcmp(__s1, "implied"))
  {
    goto LABEL_13;
  }

  EnvSetMultifieldErrorValue(a1, a4);
  SetEvaluationError(a1, 1);
  v17 = *(*a2 + 24);

  return InvalidDeftemplateSlotMessage(a1, __s1, v17, 0);
}

uint64_t EnvDeftemplateSlotRange(uint64_t a1, _BYTE *a2, char *__s1, uint64_t a4)
{
  if ((a2[56] & 1) == 0)
  {
    v19 = 0;
    v8 = EnvAddSymbol(a1, __s1);
    Slot = FindSlot(a2, v8, &v19);
    if (!Slot)
    {
      EnvSetMultifieldErrorValue(a1, a4);
      SetEvaluationError(a1, 1);
      return InvalidDeftemplateSlotMessage(a1, __s1, *(*a2 + 24), 0);
    }

    v10 = Slot;
    v11 = Slot[2];
    if (!v11 || (*v11 & 0x19) == 0)
    {
      *(a4 + 8) = 2;
      result = EnvFalseSymbol(a1);
      *(a4 + 16) = result;
      return result;
    }

    *(a4 + 8) = 4;
    *(a4 + 24) = xmmword_232816A80;
    result = EnvCreateMultifield(a1, 2);
    *(a4 + 16) = result;
    v13 = v10[2];
    v15 = *(v13 + 24);
    v14 = *(v13 + 32);
    *(result + 24) = *v15;
    *(result + 32) = *(v15 + 8);
    *(result + 40) = *v14;
    v16 = *(v14 + 8);
    goto LABEL_13;
  }

  if (!strcmp(__s1, "implied"))
  {
    *(a4 + 8) = 4;
    *(a4 + 24) = xmmword_232816A80;
    result = EnvCreateMultifield(a1, 2);
    *(a4 + 16) = result;
    *(result + 24) = 2;
    v18 = *(a1 + 48);
    *(result + 32) = *(*(v18 + 392) + 24);
    *(result + 40) = 2;
    v16 = *(*(v18 + 392) + 16);
LABEL_13:
    *(result + 48) = v16;
    return result;
  }

  EnvSetMultifieldErrorValue(a1, a4);
  SetEvaluationError(a1, 1);
  v17 = *(*a2 + 24);

  return InvalidDeftemplateSlotMessage(a1, __s1, v17, 0);
}

void *EnvDeftemplateSlotTypes(uint64_t a1, _BYTE *a2, char *__s1, uint64_t a4)
{
  v32 = 0;
  v8 = a2[56];
  if ((v8 & 1) == 0)
  {
    v9 = EnvAddSymbol(a1, __s1);
    Slot = FindSlot(a2, v9, &v32);
    if (!Slot)
    {
      EnvSetMultifieldErrorValue(a1, a4);
      SetEvaluationError(a1, 1);
      return InvalidDeftemplateSlotMessage(a1, __s1, *(*a2 + 24), 0);
    }

    v11 = Slot;
    if (a2[56])
    {
      goto LABEL_14;
    }

LABEL_11:
    v14 = v11[2];
    if (v14)
    {
      v15 = *v14;
      if ((v15 & 1) == 0)
      {
        v16 = vdupq_n_s32(v15);
        v17.i64[0] = 0x100000001;
        v17.i64[1] = 0x100000001;
        v18 = vaddvq_s32(vaddq_s32(vandq_s8(vshlq_u32(v16, xmmword_232816E70), v17), vandq_s8(vshlq_u32(v16, xmmword_232816E80), v17)));
        v19 = 1;
        goto LABEL_15;
      }
    }

LABEL_14:
    v19 = 0;
    v18 = 6;
LABEL_15:
    *(a4 + 8) = 4;
    *(a4 + 24) = 0;
    *(a4 + 32) = (v18 - 1);
    result = EnvCreateMultifield(a1, v18);
    *(a4 + 16) = result;
    if (v19)
    {
      v20 = *v11[2];
      if ((v20 & 8) != 0)
      {
        v21 = 2;
        *(result + 12) = 2;
        v23 = EnvAddSymbol(a1, "FLOAT");
        result = *(a4 + 16);
        result[4] = v23;
        v20 = *v11[2];
      }

      else
      {
        v21 = 1;
      }

      if ((v20 & 0x10) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v21 = 2;
      *(result + 12) = 2;
      v22 = EnvAddSymbol(a1, "FLOAT");
      result = *(a4 + 16);
      result[4] = v22;
    }

    v24 = v21 - 1;
    LOWORD(result[2 * (v21 - 1) + 3]) = 2;
    v25 = EnvAddSymbol(a1, "INTEGER");
    result = *(a4 + 16);
    ++v21;
    result[2 * v24 + 4] = v25;
    if (!v19)
    {
LABEL_24:
      v26 = v21 - 1;
      LOWORD(result[2 * (v21 - 1) + 3]) = 2;
      v27 = EnvAddSymbol(a1, "SYMBOL");
      result = *(a4 + 16);
      ++v21;
      result[2 * v26 + 4] = v27;
      if (!v19)
      {
LABEL_27:
        v28 = v21 - 1;
        LOWORD(result[2 * (v21 - 1) + 3]) = 2;
        v29 = EnvAddSymbol(a1, "STRING");
        result = *(a4 + 16);
        ++v21;
        result[2 * v28 + 4] = v29;
        if (!v19)
        {
LABEL_30:
          v30 = v21 - 1;
          LOWORD(result[2 * (v21 - 1) + 3]) = 2;
          v31 = EnvAddSymbol(a1, "EXTERNAL-ADDRESS");
          result = *(a4 + 16);
          ++v21;
          result[2 * v30 + 4] = v31;
          if (!v19)
          {
LABEL_33:
            LOWORD(result[2 * (v21 - 1) + 3]) = 2;
            result = EnvAddSymbol(a1, "FACT-ADDRESS");
            *(*(a4 + 16) + 16 * (v21 - 1) + 32) = result;
            return result;
          }

          v20 = *v11[2];
LABEL_32:
          if ((v20 & 0x100) == 0)
          {
            return result;
          }

          goto LABEL_33;
        }

        v20 = *v11[2];
LABEL_29:
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      v20 = *v11[2];
LABEL_26:
      if ((v20 & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v20 = *v11[2];
LABEL_23:
    if ((v20 & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (!strcmp(__s1, "implied"))
  {
    v11 = 0;
    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  EnvSetMultifieldErrorValue(a1, a4);
  SetEvaluationError(a1, 1);
  v12 = *(*a2 + 24);

  return InvalidDeftemplateSlotMessage(a1, __s1, v12, 0);
}

uint64_t EnvDeftemplateSlotMultiP(uint64_t a1, _BYTE *a2, char *__s1)
{
  if ((a2[56] & 1) == 0)
  {
    v9 = 0;
    v6 = EnvAddSymbol(a1, __s1);
    Slot = FindSlot(a2, v6, &v9);
    if (Slot)
    {
      return Slot[1] & 1;
    }

    goto LABEL_5;
  }

  if (strcmp(__s1, "implied"))
  {
LABEL_5:
    SetEvaluationError(a1, 1);
    InvalidDeftemplateSlotMessage(a1, __s1, *(*a2 + 24), 0);
    return 0;
  }

  return 1;
}

uint64_t EnvDeftemplateSlotSingleP(uint64_t a1, _BYTE *a2, char *__s1)
{
  if (a2[56])
  {
    result = strcmp(__s1, "implied");
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = 0;
    v6 = EnvAddSymbol(a1, __s1);
    Slot = FindSlot(a2, v6, &v9);
    if (Slot)
    {
      return (Slot[1] & 1) == 0;
    }
  }

  SetEvaluationError(a1, 1);
  InvalidDeftemplateSlotMessage(a1, __s1, *(*a2 + 24), 0);
  return 0;
}

BOOL EnvDeftemplateSlotExistP(uint64_t a1, uint64_t a2, char *__s1)
{
  if (*(a2 + 56))
  {
    return strcmp(__s1, "implied") == 0;
  }

  v6 = 0;
  v4 = EnvAddSymbol(a1, __s1);
  return FindSlot(a2, v4, &v6) != 0;
}

uint64_t EnvDeftemplateSlotFacetExistP(uint64_t a1, uint64_t a2, char *__s1, char *a4)
{
  if (*(a2 + 56))
  {
    return 0;
  }

  v12 = 0;
  v7 = EnvAddSymbol(a1, __s1);
  result = FindSlot(a2, v7, &v12);
  if (result)
  {
    v9 = result;
    SymbolHN = FindSymbolHN(a1, a4);
    v11 = *(v9 + 32);
    if (v11)
    {
      while (*(v11 + 8) != SymbolHN)
      {
        v11 = *(v11 + 24);
        if (!v11)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t EnvDeftemplateSlotFacetValue(uint64_t a1, uint64_t a2, char *__s1, char *a4, uint64_t a5)
{
  if (*(a2 + 56))
  {
    return 0;
  }

  v14 = 0;
  v9 = EnvAddSymbol(a1, __s1);
  result = FindSlot(a2, v9, &v14);
  if (result)
  {
    v11 = result;
    SymbolHN = FindSymbolHN(a1, a4);
    v13 = *(v11 + 32);
    if (v13)
    {
      while (*(v13 + 8) != SymbolHN)
      {
        v13 = *(v13 + 24);
        if (!v13)
        {
          return 0;
        }
      }

      EvaluateExpression(a1, *(v13 + 16), a5);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t UpdateModifyDuplicate(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v19 = 0;
  v4 = *(a2 + 16);
  if (*v4 != 35 || !a4)
  {
    return 1;
  }

  while (a4[1] != *(v4 + 8))
  {
    a4 = a4[25];
    if (!a4)
    {
      return 1;
    }
  }

  v7 = a4[24];
  if (*v7 != 37)
  {
    return 1;
  }

  v8 = *(v7 + 200);
  if (!v8)
  {
    return 1;
  }

  if (*v8 != 2)
  {
    return 1;
  }

  if (*(v8 + 192))
  {
    return 1;
  }

  if (*(v8 + 200))
  {
    return 1;
  }

  v11 = *(v8 + 8);
  if (!v11)
  {
    return 1;
  }

  v12 = LookupConstruct(a1, **(*(a1 + 48) + 40), *(v11 + 24), 0);
  if (!v12)
  {
    return 1;
  }

  v13 = v12;
  if (*(v12 + 56))
  {
    return 1;
  }

  v14 = *(v4 + 24);
  if (!v14)
  {
    return 1;
  }

  while (1)
  {
    Slot = FindSlot(v13, *(v14 + 8), &v19);
    if (!Slot)
    {
      break;
    }

    v16 = *(v14 + 16);
    if ((Slot[1] & 1) == 0)
    {
      if (!v16 || *(v16 + 3))
      {
LABEL_28:
        SingleFieldSlotCardinalityError(a1, *(*Slot + 24));
        return 0;
      }

      v17 = *v16;
      if (v17 == 30)
      {
        if (*(*(v16 + 1) + 16) == 109)
        {
          goto LABEL_28;
        }
      }

      else if (v17 == 36)
      {
        goto LABEL_28;
      }
    }

    if (!CheckRHSSlotTypes(a1, v16, Slot, a3))
    {
      return 0;
    }

    v9 = 1;
    *v14 = 1;
    SlotPosition = FindSlotPosition(v13, *(v14 + 8));
    *(v14 + 8) = EnvAddLong(a1, SlotPosition - 1);
    v14 = *(v14 + 24);
    if (!v14)
    {
      return v9;
    }
  }

  InvalidDeftemplateSlotMessage(a1, *(*(v14 + 8) + 24), *(*v13 + 24), 1);
  return 0;
}

uint64_t ModAndDupParse(char *a1, uint64_t a2, char *a3, char *a4)
{
  v22 = 0;
  v19 = 0;
  v20 = 0;
  __s = 0;
  v18 = 0;
  SavePPBuffer(a1, " ");
  GetToken(a1, a3, &v19);
  v8 = v19;
  if ((v19 & 0xFFFD) != 0x21)
  {
    if (v19 == 1)
    {
      if (TopLevelCommand(a1))
      {
        v8 = 1;
        goto LABEL_5;
      }

      PrintErrorID(a1, "TMPLTFUN", 1, 1);
      EnvPrintRouter(a1, "werror", "Fact-indexes can only be used by ");
      EnvPrintRouter(a1, "werror", a4);
      EnvPrintRouter(a1, "werror", " as a top level command.\n");
    }

    else
    {
      ExpectedTypeError2(a1, a4, 1);
    }

LABEL_26:
    ReturnExpression(a1, a2);
    return 0;
  }

LABEL_5:
  v9 = GenConstant(a1, v8, v20);
  v9[2] = 0;
  v9[3] = 0;
  *(a2 + 16) = v9;
  GetToken(a1, a3, &v19);
  if (v19 == 171)
  {
    return a2;
  }

  while (2)
  {
    PPBackup(a1);
    SavePPBuffer(a1, " ");
    SavePPBuffer(a1, __s);
    if (v19 != 170 || (GetToken(a1, a3, &v19), v19 != 2))
    {
      v16 = "duplicate/modify function";
LABEL_25:
      SyntaxErrorMessage(a1, v16);
      goto LABEL_26;
    }

    v10 = *(a2 + 16);
    while (1)
    {
      v10 = *(v10 + 24);
      if (!v10)
      {
        break;
      }

      if (*(v10 + 8) == v20)
      {
        AlreadyParsedErrorMessage(a1, "slot ", *(v20 + 24));
        goto LABEL_26;
      }
    }

    v11 = GenConstant(a1, 2, v20);
    v12 = 0;
    v13 = 0;
    v9[3] = v11;
    do
    {
      SavePPBuffer(a1, " ");
      AssertArgument = GetAssertArgument(a1, a3, &v19, &v22, 171, 0, &v18);
      if (v22)
      {
        if (!v18)
        {
          goto LABEL_26;
        }

        v16 = "deftemplate pattern";
        goto LABEL_25;
      }

      v15 = AssertArgument;
      if (v12)
      {
        v12[3] = AssertArgument;
        v15 = v13;
      }

      v12 = AssertArgument;
      v13 = v15;
    }

    while (AssertArgument);
    if (v19 != 171)
    {
      SyntaxErrorMessage(a1, "duplicate/modify function");
      ReturnExpression(a1, a2);
      a2 = v15;
      goto LABEL_26;
    }

    PPBackup(a1);
    PPBackup(a1);
    SavePPBuffer(a1, ")");
    v11[2] = v15;
    GetToken(a1, a3, &v19);
    v9 = v11;
    if (v19 != 171)
    {
      continue;
    }

    return a2;
  }
}

void *InitializeAtomTables(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x31u, 0xA0uLL, DeallocateSymbolData);
  *(*(*(a1 + 48) + 392) + 40) = gm3(a1, 0x320uLL);
  *(*(*(a1 + 48) + 392) + 48) = gm2(a1, 0x50uLL);
  *(*(*(a1 + 48) + 392) + 56) = gm2(a1, 0x320uLL);
  *(*(*(a1 + 48) + 392) + 64) = gm2(a1, 0x320uLL);
  v2 = gm2(a1, 0x320uLL);
  v3 = 0;
  *(*(*(a1 + 48) + 392) + 72) = v2;
  do
  {
    *(*(*(*(a1 + 48) + 392) + 40) + v3) = 0;
    v3 += 8;
  }

  while (v3 != 800);
  for (i = 0; i != 80; i += 8)
  {
    *(*(*(*(a1 + 48) + 392) + 48) + i) = 0;
  }

  for (j = 0; j != 800; j += 8)
  {
    *(*(*(*(a1 + 48) + 392) + 56) + j) = 0;
  }

  for (k = 0; k != 800; k += 8)
  {
    *(*(*(*(a1 + 48) + 392) + 64) + k) = 0;
  }

  for (m = 0; m != 800; m += 8)
  {
    *(*(*(*(a1 + 48) + 392) + 72) + m) = 0;
  }

  v8 = EnvAddSymbol(a1, "TRUE");
  v9 = *(a1 + 48);
  **(v9 + 392) = v8;
  ++*(**(v9 + 392) + 8);
  v10 = EnvAddSymbol(a1, "FALSE");
  v11 = *(a1 + 48);
  *(*(v11 + 392) + 8) = v10;
  ++*(*(*(v11 + 392) + 8) + 8);
  v12 = EnvAddSymbol(a1, "+oo");
  v13 = *(a1 + 48);
  *(*(v13 + 392) + 16) = v12;
  ++*(*(*(v13 + 392) + 16) + 8);
  v14 = EnvAddSymbol(a1, "-oo");
  v15 = *(a1 + 48);
  *(*(v15 + 392) + 24) = v14;
  ++*(*(*(v15 + 392) + 24) + 8);
  result = EnvAddLong(a1, 0);
  v17 = *(a1 + 48);
  *(*(v17 + 392) + 32) = result;
  ++*(*(*(v17 + 392) + 32) + 8);
  return result;
}

uint64_t DeallocateSymbolData(uint64_t result)
{
  v1 = *(*(result + 48) + 392);
  if (v1[5] && v1[6] && v1[7] && v1[8] && v1[9])
  {
    v2 = result;
    for (i = 0; i != 100; ++i)
    {
      v4 = *(*(*(*(v2 + 48) + 392) + 40) + 8 * i);
      if (v4)
      {
        do
        {
          v5 = *v4;
          if ((v4[2] & 1) == 0)
          {
            v6 = strlen(v4[3]);
            rm(v2, v4[3], v6 + 1);
            v7 = *(v2 + 48);
            *(*(v7 + 472) + 32) = v4;
            **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 256);
            *(*(*(v7 + 472) + 40) + 256) = *(*(v7 + 472) + 32);
          }

          v4 = v5;
        }

        while (v5);
      }
    }

    for (j = 0; j != 10; ++j)
    {
      v9 = *(*(*(*(v2 + 48) + 392) + 48) + 8 * j);
      if (v9)
      {
        do
        {
          v10 = *v9;
          if ((v9[2] & 1) == 0)
          {
            v11 = *(v2 + 48);
            *(*(v11 + 472) + 32) = v9;
            **(*(v11 + 472) + 32) = *(*(*(v11 + 472) + 40) + 256);
            *(*(*(v11 + 472) + 40) + 256) = *(*(v11 + 472) + 32);
          }

          v9 = v10;
        }

        while (v10);
      }
    }

    for (k = 0; k != 100; ++k)
    {
      v13 = *(*(*(*(v2 + 48) + 392) + 56) + 8 * k);
      if (v13)
      {
        do
        {
          v14 = *v13;
          if ((v13[2] & 1) == 0)
          {
            v15 = *(v2 + 48);
            *(*(v15 + 472) + 32) = v13;
            **(*(v15 + 472) + 32) = *(*(*(v15 + 472) + 40) + 256);
            *(*(*(v15 + 472) + 40) + 256) = *(*(v15 + 472) + 32);
          }

          v13 = v14;
        }

        while (v14);
      }
    }

    for (m = 0; m != 100; ++m)
    {
      v17 = *(*(*(*(v2 + 48) + 392) + 64) + 8 * m);
      if (v17)
      {
        do
        {
          v18 = *v17;
          if ((v17[2] & 1) == 0)
          {
            rm(v2, v17[3], *(v17 + 16));
            v19 = *(v2 + 48);
            *(*(v19 + 472) + 32) = v17;
            **(*(v19 + 472) + 32) = *(*(*(v19 + 472) + 40) + 320);
            *(*(*(v19 + 472) + 40) + 320) = *(*(v19 + 472) + 32);
          }

          v17 = v18;
        }

        while (v18);
      }
    }

    for (n = 0; n != 100; ++n)
    {
      v21 = *(*(*(*(v2 + 48) + 392) + 72) + 8 * n);
      if (v21)
      {
        do
        {
          v22 = *v21;
          if ((v21[2] & 1) == 0)
          {
            v23 = *(v2 + 48);
            *(*(v23 + 472) + 32) = v21;
            **(*(v23 + 472) + 32) = *(*(*(v23 + 472) + 40) + 320);
            *(*(*(v23 + 472) + 40) + 320) = *(*(v23 + 472) + 32);
          }

          v21 = v22;
        }

        while (v22);
      }
    }

    rm(v2, *(*(*(v2 + 48) + 392) + 40), 0x320uLL);
    genfree(v2, *(*(*(v2 + 48) + 392) + 48), 80);
    genfree(v2, *(*(*(v2 + 48) + 392) + 56), 800);
    genfree(v2, *(*(*(v2 + 48) + 392) + 64), 800);
    result = genfree(v2, *(*(*(v2 + 48) + 392) + 72), 800);
    v24 = *(*(v2 + 48) + 392);
    v25 = v24[15];
    if (v25)
    {
      result = rm(v2, v25, 8 * v24[10]);
      v24 = *(*(v2 + 48) + 392);
    }

    v26 = v24[16];
    if (v26)
    {
      result = rm(v2, v26, 8 * v24[11]);
      v24 = *(*(v2 + 48) + 392);
    }

    v27 = v24[17];
    if (v27)
    {
      result = rm(v2, v27, 8 * v24[12]);
      v24 = *(*(v2 + 48) + 392);
    }

    v28 = v24[18];
    if (v28)
    {
      v29 = 8 * v24[13];

      return rm(v2, v28, v29);
    }
  }

  return result;
}

void *EnvAddLong(uint64_t a1, uint64_t a2)
{
  if (a2 >= 0)
  {
    LODWORD(v4) = a2;
  }

  else
  {
    v4 = -a2;
  }

  v5 = v4 % 0x64;
  v6 = *(a1 + 48);
  v7 = *(*(*(v6 + 392) + 56) + 8 * v5);
  if (!v7)
  {
    v8 = 0;
LABEL_9:
    v9 = *(v6 + 472);
    v10 = *(*(v9 + 40) + 256);
    if (v10)
    {
      *(v9 + 32) = v10;
      *(*(*(v6 + 472) + 40) + 256) = **(*(v6 + 472) + 32);
      v11 = *(*(*(a1 + 48) + 472) + 32);
      if (v8)
      {
LABEL_12:
        *v8 = v11;
        v11[3] = a2;
        v12 = v11[2] & 6 | (8 * v5);
        *v11 = 0;
        v11[1] = 0;
        *(v11 + 4) = v12;
        AddEphemeralHashNode(a1, v11, (*(*(*(a1 + 48) + 440) + 112) + 32), 1);
        **(*(*(a1 + 48) + 440) + 112) = 1;
        return v11;
      }
    }

    else
    {
      v11 = genalloc(a1, 0x20uLL);
      if (v8)
      {
        goto LABEL_12;
      }
    }

    v8 = (*(*(*(a1 + 48) + 392) + 56) + 8 * v5);
    goto LABEL_12;
  }

  while (1)
  {
    v8 = v7;
    if (v7[3] == a2)
    {
      return v7;
    }

    v7 = *v7;
    if (!*v8)
    {
      goto LABEL_9;
    }
  }
}

unint64_t HashSymbol(_BYTE *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  v5 = a1 + 1;
  do
  {
    result = 127 * result + v2;
    v6 = *v5++;
    v2 = v6;
  }

  while (v6);
  if (a2)
  {
LABEL_5:
    result %= a2;
  }

  return result;
}

double *EnvAddDouble(uint64_t a1, double a2)
{
  v4 = 0;
  v5 = 0;
  v15 = a2;
  do
  {
    v5 = *(&v15 + v4++) - v5 + (v5 << 7);
  }

  while (v4 != 8);
  v6 = v5 % 0xA;
  v7 = *(a1 + 48);
  v8 = *(*(*(v7 + 392) + 48) + 8 * v6);
  if (!v8)
  {
    v9 = 0;
LABEL_8:
    v10 = *(v7 + 472);
    v11 = *(*(v10 + 40) + 256);
    if (v11)
    {
      *(v10 + 32) = v11;
      *(*(*(v7 + 472) + 40) + 256) = **(*(v7 + 472) + 32);
      v12 = *(*(*(a1 + 48) + 472) + 32);
      if (v9)
      {
LABEL_11:
        *v9 = v12;
        v12[3] = a2;
        v13 = v12[2] & 6 | (8 * v6);
        *v12 = 0.0;
        v12[1] = 0.0;
        *(v12 + 4) = v13;
        AddEphemeralHashNode(a1, v12, (*(*(*(a1 + 48) + 440) + 112) + 24), 1);
        **(*(*(a1 + 48) + 440) + 112) = 1;
        return v12;
      }
    }

    else
    {
      v12 = genalloc(a1, 0x20uLL);
      if (v9)
      {
        goto LABEL_11;
      }
    }

    v9 = (*(*(*(a1 + 48) + 392) + 48) + 8 * v6);
    goto LABEL_11;
  }

  while (1)
  {
    v9 = v8;
    if (*(v8 + 3) == a2)
    {
      return v8;
    }

    v8 = *v8;
    if (!*v9)
    {
      goto LABEL_8;
    }
  }
}

unint64_t HashFloat(unint64_t a1, double a2)
{
  v3 = 0;
  result = 0;
  v5 = a2;
  do
  {
    result = *(&v5 + v3++) - result + (result << 7);
  }

  while (v3 != 8);
  if (a1)
  {
    result %= a1;
  }

  return result;
}

unint64_t HashInteger(uint64_t a1, unint64_t a2)
{
  if (a1 >= 0)
  {
    LODWORD(v2) = a1;
  }

  else
  {
    v2 = -a1;
  }

  return v2 % a2;
}

void *FindLongHN(uint64_t a1, uint64_t a2)
{
  if (a2 >= 0)
  {
    LODWORD(v2) = a2;
  }

  else
  {
    v2 = -a2;
  }

  result = (*(*(*(a1 + 48) + 392) + 56) + 8 * (v2 % 0x64));
  do
  {
    result = *result;
  }

  while (result && result[3] != a2);
  return result;
}

uint64_t *EnvAddBitMap(uint64_t a1, char *a2, unsigned int a3)
{
  v4 = a2;
  if (!a2)
  {
    SystemError(a1, "SYMBOL", 2);
    EnvExitRouter(a1, 1);
  }

  v6 = HashBitMap(v4, 0x64uLL, a3);
  v7 = *(a1 + 48);
  v8 = *(*(*(v7 + 392) + 64) + 8 * v6);
  if (!v8)
  {
    v9 = 0;
LABEL_16:
    v12 = *(v7 + 472);
    v13 = *(*(v12 + 40) + 320);
    if (v13)
    {
      *(v12 + 32) = v13;
      *(*(*(v7 + 472) + 40) + 320) = **(*(v7 + 472) + 32);
      v11 = *(*(*(a1 + 48) + 472) + 32);
      if (v9)
      {
LABEL_19:
        *v9 = v11;
        v14 = a3;
        v15 = gm2(a1, a3);
        if (a3)
        {
          v16 = v15;
          do
          {
            v17 = *v4++;
            *v16++ = v17;
            --v14;
          }

          while (v14);
        }

        v11[3] = v15;
        *v11 = 0;
        v11[1] = 0;
        *(v11 + 4) = v11[2] & 6 | (8 * v6);
        *(v11 + 16) = a3;
        AddEphemeralHashNode(a1, v11, (*(*(*(a1 + 48) + 440) + 112) + 40), 1);
        **(*(*(a1 + 48) + 440) + 112) = 1;
        return v11;
      }
    }

    else
    {
      v11 = genalloc(a1, 0x28uLL);
      if (v9)
      {
        goto LABEL_19;
      }
    }

    v9 = (*(*(*(a1 + 48) + 392) + 64) + 8 * v6);
    goto LABEL_19;
  }

  while (1)
  {
    v9 = v8;
    if (*(v8 + 32) == a3)
    {
      if (a3)
      {
        v10 = 0;
        while (*(v9[3] + v10) == v4[v10])
        {
          if (a3 == ++v10)
          {
            return v9;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 == a3)
      {
        return v9;
      }
    }

    v8 = *v9;
    if (!*v9)
    {
      goto LABEL_16;
    }
  }
}

unint64_t HashBitMap(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v13 = 0;
  if (a3 >= 8)
  {
    result = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        *(&v13 + v8) = *(a1 + (v7 + v8));
        ++v8;
      }

      while (v8 != 8);
      result += v13;
      ++v6;
      v7 += 8;
    }

    while (v6 != a3 >> 3);
    v4 = v9 + 8;
  }

  else
  {
    v4 = 0;
    result = 0;
  }

  if (v4 < a3)
  {
    v10 = (a1 + v4);
    v11 = a3 - v4;
    do
    {
      v12 = *v10++;
      result += v12;
      --v11;
    }

    while (v11);
  }

  if (a2)
  {
    result %= a2;
  }

  return result;
}

uint64_t *EnvAddExternalAddress(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v6 = ((a2 >> 8) - 100 * ((42949673 * (a2 >> 8)) >> 32));
  v7 = *(a1 + 48);
  v8 = *(*(*(v7 + 392) + 72) + 8 * v6);
  if (!v8)
  {
    v9 = 0;
LABEL_7:
    v10 = *(v7 + 472);
    v11 = *(*(v10 + 40) + 320);
    if (v11)
    {
      *(v10 + 32) = v11;
      *(*(*(v7 + 472) + 40) + 320) = **(*(v7 + 472) + 32);
      v12 = *(*(*(a1 + 48) + 472) + 32);
      if (v9)
      {
LABEL_10:
        *v9 = v12;
        v12[3] = a2;
        *(v12 + 16) = a3;
        v13 = v12[2] & 6 | (8 * v6);
        *v12 = 0;
        v12[1] = 0;
        *(v12 + 4) = v13;
        AddEphemeralHashNode(a1, v12, (*(*(*(a1 + 48) + 440) + 112) + 48), 1);
        **(*(*(a1 + 48) + 440) + 112) = 1;
        return v12;
      }
    }

    else
    {
      v12 = genalloc(a1, 0x28uLL);
      if (v9)
      {
        goto LABEL_10;
      }
    }

    v9 = (*(*(*(a1 + 48) + 392) + 72) + 8 * v6);
    goto LABEL_10;
  }

  while (1)
  {
    v9 = v8;
    if (*(v8 + 16) == a3 && v8[3] == a2)
    {
      return v8;
    }

    v8 = *v8;
    if (!*v9)
    {
      goto LABEL_7;
    }
  }
}

unint64_t HashExternalAddress(unsigned int a1, unint64_t a2)
{
  result = a1 >> 8;
  if (a2)
  {
    result %= a2;
  }

  return result;
}

uint64_t DecrementSymbolCount(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4 < 0)
  {
    SystemError(result, "SYMBOL", 3);
    result = EnvExitRouter(v3, 1);
    v4 = *(a2 + 8);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
    goto LABEL_3;
  }

  SystemError(v3, "SYMBOL", 4);
  result = EnvExitRouter(v3, 1);
  v4 = *(a2 + 8);
LABEL_3:
  v5 = v4 - 1;
  *(a2 + 8) = v5;
  if (!v5 && (*(a2 + 16) & 2) == 0)
  {
    result = AddEphemeralHashNode(v3, a2, (*(*(*(v3 + 48) + 440) + 112) + 16), 1);
    **(*(*(v3 + 48) + 440) + 112) = 1;
  }

  return result;
}

uint64_t DecrementFloatCount(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4 <= 0)
  {
    SystemError(result, "SYMBOL", 5);
    result = EnvExitRouter(v3, 1);
    v4 = *(a2 + 8);
  }

  v5 = v4 - 1;
  *(a2 + 8) = v5;
  if (!v5 && (*(a2 + 16) & 2) == 0)
  {
    result = AddEphemeralHashNode(v3, a2, (*(*(*(v3 + 48) + 440) + 112) + 24), 1);
    **(*(*(v3 + 48) + 440) + 112) = 1;
  }

  return result;
}

uint64_t DecrementIntegerCount(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4 <= 0)
  {
    SystemError(result, "SYMBOL", 6);
    result = EnvExitRouter(v3, 1);
    v4 = *(a2 + 8);
  }

  v5 = v4 - 1;
  *(a2 + 8) = v5;
  if (!v5 && (*(a2 + 16) & 2) == 0)
  {
    result = AddEphemeralHashNode(v3, a2, (*(*(*(v3 + 48) + 440) + 112) + 32), 1);
    **(*(*(v3 + 48) + 440) + 112) = 1;
  }

  return result;
}

uint64_t DecrementBitMapCount(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4 < 0)
  {
    SystemError(result, "SYMBOL", 7);
    result = EnvExitRouter(v3, 1);
    v4 = *(a2 + 8);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
    goto LABEL_3;
  }

  SystemError(v3, "SYMBOL", 8);
  result = EnvExitRouter(v3, 1);
  v4 = *(a2 + 8);
LABEL_3:
  v5 = v4 - 1;
  *(a2 + 8) = v5;
  if (!v5 && (*(a2 + 16) & 2) == 0)
  {
    result = AddEphemeralHashNode(v3, a2, (*(*(*(v3 + 48) + 440) + 112) + 40), 1);
    **(*(*(v3 + 48) + 440) + 112) = 1;
  }

  return result;
}

uint64_t DecrementExternalAddressCount(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4 < 0)
  {
    SystemError(result, "SYMBOL", 9);
    result = EnvExitRouter(v3, 1);
    v4 = *(a2 + 8);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
    goto LABEL_3;
  }

  SystemError(v3, "SYMBOL", 10);
  result = EnvExitRouter(v3, 1);
  v4 = *(a2 + 8);
LABEL_3:
  v5 = v4 - 1;
  *(a2 + 8) = v5;
  if (!v5 && (*(a2 + 16) & 2) == 0)
  {
    result = AddEphemeralHashNode(v3, a2, (*(*(*(v3 + 48) + 440) + 112) + 48), 1);
    **(*(*(v3 + 48) + 440) + 112) = 1;
  }

  return result;
}

void *EphemerateMultifield(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      v3 = result;
      v4 = (a2 + 32);
      do
      {
        v5 = *(v4 - 4);
        v6 = *v4;
        v4 += 2;
        result = EphemerateValue(v3, v5, v6);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *EphemerateValue(void *result, int a2, uint64_t a3)
{
  v3 = result;
  if (a2 <= 1)
  {
    if (!a2)
    {
      if ((*(a3 + 16) & 2) != 0)
      {
        return result;
      }

      v4 = 24;
      goto LABEL_15;
    }

    if (a2 == 1 && (*(a3 + 16) & 2) == 0)
    {
      v4 = 32;
      goto LABEL_15;
    }
  }

  else
  {
    if ((a2 - 2) < 2)
    {
      if ((*(a3 + 16) & 2) != 0)
      {
        return result;
      }

      v4 = 16;
      goto LABEL_15;
    }

    if (a2 == 4)
    {
      if (a3)
      {
        v5 = *(a3 + 8);
        if (v5)
        {
          v6 = (a3 + 32);
          do
          {
            v7 = *(v6 - 4);
            v8 = *v6;
            v6 += 2;
            result = EphemerateValue(v3, v7, v8);
            --v5;
          }

          while (v5);
        }
      }
    }

    else if (a2 == 5 && (*(a3 + 16) & 2) == 0)
    {
      v4 = 48;
LABEL_15:
      result = AddEphemeralHashNode(result, a3, (*(*(result[6] + 440) + 112) + v4), 0);
      **(*(v3[6] + 440) + 112) = 1;
    }
  }

  return result;
}

uint64_t RefreshSpecialSymbols(uint64_t a1)
{
  SymbolHN = FindSymbolHN(a1, "TRUE");
  v3 = *(a1 + 48);
  **(v3 + 392) = SymbolHN;
  *(*(v3 + 392) + 8) = FindSymbolHN(a1, "FALSE");
  *(*(v3 + 392) + 16) = FindSymbolHN(a1, "+oo");
  result = FindSymbolHN(a1, "-oo");
  *(*(v3 + 392) + 24) = result;
  v5 = *(v3 + 392);
  v6 = *(v5 + 56);
  do
  {
    v6 = *v6;
  }

  while (v6 && v6[3]);
  *(v5 + 32) = v6;
  return result;
}

void *FindSymbolMatches(uint64_t a1, char *__s, _DWORD *a3, size_t *a4)
{
  v8 = strlen(__s);
  *a3 = 0;
  NextSymbolMatch = GetNextSymbolMatch(a1, __s, v8, 0, 0, a4);
  if (!NextSymbolMatch)
  {
    return 0;
  }

  v10 = NextSymbolMatch;
  v11 = 0;
  do
  {
    ++*a3;
    v12 = *(a1 + 48);
    v13 = *(v12 + 472);
    v14 = *(*(v13 + 40) + 128);
    if (v14)
    {
      *(v13 + 32) = v14;
      *(*(*(v12 + 472) + 40) + 128) = **(*(v12 + 472) + 32);
      v15 = *(*(*(a1 + 48) + 472) + 32);
    }

    else
    {
      v15 = genalloc(a1, 0x10uLL);
    }

    *v15 = v10;
    v15[1] = v11;
    v10 = GetNextSymbolMatch(a1, __s, v8, v10, 0, a4);
    v11 = v15;
  }

  while (v10);
  return v15;
}

uint64_t **GetNextSymbolMatch(uint64_t a1, _BYTE *a2, size_t a3, uint64_t a4, int a5, size_t *a6)
{
  if (a5 && a6)
  {
    *a6 = 0;
  }

  if (a4)
  {
    v7 = *(a4 + 16) >> 3;
    v8 = a4;
  }

  else
  {
    v7 = 0;
    v8 = *(*(*(a1 + 48) + 392) + 40);
  }

  while (1)
  {
    v9 = *v8;
    if (*v8)
    {
      break;
    }

LABEL_34:
    if (++v7 > 0x63)
    {
      return 0;
    }

    v8 = (*(*(*(a1 + 48) + 392) + 40) + 8 * v7);
  }

  while (1)
  {
    v10 = v9[3];
    if (*v10 == 40 || (v9[2] & 2) != 0)
    {
      goto LABEL_33;
    }

    if (a5)
    {
      if (*v10)
      {
        v11 = 0;
        do
        {
          if (*a2)
          {
            v12 = 0;
            v13 = *a2;
            while (*(v10 + v11 + v12) == v13)
            {
              v13 = a2[++v12];
              if (!a2[v12])
              {
                if (v12)
                {
                  return v9;
                }

                break;
              }
            }
          }

          ++v11;
        }

        while (*(v10 + v11));
      }

      goto LABEL_33;
    }

    if (a4)
    {
      v14 = *(a4 + 24);
      v15 = *v14;
      if (!*v14)
      {
        goto LABEL_31;
      }

      v16 = 0;
      v17 = 1;
      do
      {
        if (v15 != *(v10 + v16))
        {
          break;
        }

        v15 = v14[v17];
        v16 = v17++;
      }

      while (v15);
    }

    else
    {
      v18 = *a2;
      if (!*a2)
      {
LABEL_31:
        v16 = 0;
        goto LABEL_32;
      }

      v16 = 0;
      v19 = 1;
      do
      {
        if (v18 != *(v10 + v16))
        {
          break;
        }

        v18 = a2[v19];
        v16 = v19++;
      }

      while (v18);
    }

LABEL_32:
    if (v16 >= a3)
    {
      break;
    }

LABEL_33:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_34;
    }
  }

  if (a6)
  {
    if (a4)
    {
      if (v16 >= *a6)
      {
        return v9;
      }
    }

    else
    {
      v16 = strlen(v9[3]);
    }

    *a6 = v16;
  }

  return v9;
}

uint64_t ReturnSymbolMatches(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    do
    {
      v2 = *(a2 + 8);
      v3 = *(result + 48);
      *(*(v3 + 472) + 32) = a2;
      **(*(v3 + 472) + 32) = *(*(*(v3 + 472) + 40) + 128);
      *(*(*(v3 + 472) + 40) + 128) = *(*(v3 + 472) + 32);
      a2 = v2;
    }

    while (v2);
  }

  return result;
}

void ClearBitString(void *a1, unsigned int a2)
{
  if (a2)
  {
    bzero(a1, a2);
  }
}

uint64_t SetAtomicValueIndices(uint64_t result, int a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = *(*(*(result + 48) + 392) + 40);
  do
  {
    v7 = *(v6 + 8 * v4);
    if (v7)
    {
      do
      {
        v8 = *(v7 + 4);
        if (v8 & 4 | a2)
        {
          v9 = (v5 + 1);
          *(v7 + 4) = v8 & 7 | (8 * v5);
          if (v5 >> 29)
          {
            result = SystemError(v3, "SYMBOL", 13);
          }
        }

        else
        {
          v9 = v5;
        }

        v7 = *v7;
        v5 = v9;
      }

      while (v7);
    }

    else
    {
      v9 = v5;
    }

    ++v4;
    v5 = v9;
  }

  while (v4 != 100);
  v10 = 0;
  v11 = 0;
  v12 = *(*(*(v3 + 48) + 392) + 48);
  do
  {
    v13 = *(v12 + 8 * v10);
    if (v13)
    {
      do
      {
        v14 = *(v13 + 4);
        if (v14 & 4 | a2)
        {
          v15 = (v11 + 1);
          *(v13 + 4) = v14 & 7 | (8 * v11);
          if (v11 >> 29)
          {
            result = SystemError(v3, "SYMBOL", 14);
          }
        }

        else
        {
          v15 = v11;
        }

        v13 = *v13;
        v11 = v15;
      }

      while (v13);
    }

    else
    {
      v15 = v11;
    }

    ++v10;
    v11 = v15;
  }

  while (v10 != 10);
  v16 = 0;
  v17 = 0;
  v18 = *(*(*(v3 + 48) + 392) + 56);
  do
  {
    v19 = *(v18 + 8 * v16);
    if (v19)
    {
      do
      {
        v20 = *(v19 + 4);
        if (v20 & 4 | a2)
        {
          v21 = (v17 + 1);
          *(v19 + 4) = v20 & 7 | (8 * v17);
          if (v17 >> 29)
          {
            result = SystemError(v3, "SYMBOL", 15);
          }
        }

        else
        {
          v21 = v17;
        }

        v19 = *v19;
        v17 = v21;
      }

      while (v19);
    }

    else
    {
      v21 = v17;
    }

    ++v16;
    v17 = v21;
  }

  while (v16 != 100);
  v22 = 0;
  v23 = 0;
  v24 = *(*(*(v3 + 48) + 392) + 64);
  do
  {
    v25 = *(v24 + 8 * v22);
    if (v25)
    {
      do
      {
        v26 = *(v25 + 4);
        if (v26 & 4 | a2)
        {
          v27 = (v23 + 1);
          *(v25 + 4) = v26 & 7 | (8 * v23);
          if (v23 >> 29)
          {
            result = SystemError(v3, "SYMBOL", 16);
          }
        }

        else
        {
          v27 = v23;
        }

        v25 = *v25;
        v23 = v27;
      }

      while (v25);
    }

    else
    {
      v27 = v23;
    }

    ++v22;
    v23 = v27;
  }

  while (v22 != 100);
  return result;
}

uint64_t RestoreAtomicValueBuckets(uint64_t result)
{
  v1 = 0;
  v2 = *(*(*(result + 48) + 392) + 40);
  do
  {
    for (i = *(v2 + 8 * v1); i; i = *i)
    {
      *(i + 4) = i[2] & 7 | (8 * v1);
    }

    ++v1;
  }

  while (v1 != 100);
  v4 = 0;
  v5 = *(*(*(result + 48) + 392) + 48);
  do
  {
    for (j = *(v5 + 8 * v4); j; j = *j)
    {
      *(j + 4) = j[2] & 7 | (8 * v4);
    }

    ++v4;
  }

  while (v4 != 10);
  v7 = 0;
  v8 = *(*(*(result + 48) + 392) + 56);
  do
  {
    for (k = *(v8 + 8 * v7); k; k = *k)
    {
      *(k + 4) = k[2] & 7 | (8 * v7);
    }

    ++v7;
  }

  while (v7 != 100);
  v10 = 0;
  v11 = *(*(*(result + 48) + 392) + 64);
  do
  {
    for (m = *(v11 + 8 * v10); m; m = *m)
    {
      *(m + 4) = m[2] & 7 | (8 * v10);
    }

    ++v10;
  }

  while (v10 != 100);
  return result;
}

uint64_t AWDSymptomsLaunchIntervalMetricReadFrom(uint64_t a1, void *a2)
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
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v40 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v40 & 0x7F) << v27;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_56:
        *(a1 + 24) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v38 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
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

LABEL_52:
          v35 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v39 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v39 & 0x7F) << v14;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_60;
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

LABEL_60:
          v35 = 16;
        }

        *(a1 + v35) = v20;
      }

LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2326DA1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47)
{
  objc_destroyWeak((v48 + 40));
  objc_destroyWeak((v47 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v49 + 40));
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a41);
  objc_destroyWeak(&a47);
  objc_destroyWeak((v50 - 128));
  _Unwind_Resume(a1);
}

void sub_2326DE010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2326DE248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2326DE690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2326DF884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2326E1A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t receive_cpu_usage_violation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v41 = *MEMORY[0x277D85DE8];
  v17 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = "";
    if ((a10 & 0x100000000) != 0)
    {
      v18 = "(FATAL) ";
    }

    *buf = 136317186;
    v24 = v18;
    v25 = 2080;
    v26 = a2;
    v29 = 2080;
    v27 = 1024;
    v28 = a3;
    v30 = a4;
    v35 = 1024;
    v31 = 2048;
    v32 = a6 / 1000000000.0;
    v33 = 2048;
    v34 = a7 / 1000000000.0;
    v36 = 100 * a6 / a7;
    v37 = 2048;
    v38 = a8 / 1000000000.0;
    v39 = 2048;
    v40 = a9 / 0x3B9ACA00;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Received %sCPU usage trigger: \n  %s[%d] (%s) used %.2fs of CPU over %.2f seconds (averaging %d%%), violating a CPU usage limit of %.2fs over %lld seconds.", buf, 0x54u);
  }

  v19 = +[ResourceNotifyHandler sharedInstance];
  LOBYTE(v22) = BYTE4(a10) & 1;
  [v19 resourceNotifyEvent:kResourceNotifyEventCPUUsageTrigger triggeredBy:a2 pid:a3 path:a4 endTime:a5 observedValue:a6 observationWindow:a7 limitValue:a8 limitWindow:a9 fatal:v22 fatalPort:?];

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t receive_cpu_wakes_violation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v41 = *MEMORY[0x277D85DE8];
  v17 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = "";
    if ((a10 & 0x100000000) != 0)
    {
      v18 = "(FATAL) ";
    }

    *buf = 136317186;
    v24 = v18;
    v25 = 2080;
    v26 = a2;
    v29 = 2080;
    v27 = 1024;
    v28 = a3;
    v30 = a4;
    v35 = 1024;
    v31 = 2048;
    v32 = a6;
    v33 = 2048;
    v34 = a7 / 1000000000.0;
    v36 = 1000000000 * a6 / a7;
    v37 = 2048;
    v38 = a8;
    v39 = 2048;
    v40 = a9 / 0x3B9ACA00;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Received %sCPU wakes trigger:\n  %s[%d] (%s) woke the CPU %lld times over %.2f seconds (average %d/sec), violating a CPU wakes limit of %lld over %lld seconds.", buf, 0x54u);
  }

  v19 = +[ResourceNotifyHandler sharedInstance];
  LOBYTE(v22) = BYTE4(a10) & 1;
  [v19 resourceNotifyEvent:kResourceNotifyEventCPUWakesTrigger triggeredBy:a2 pid:a3 path:a4 endTime:a5 observedValue:a6 observationWindow:a7 limitValue:a8 limitWindow:a9 fatal:v22 fatalPort:?];

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t receive_port_space_violation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v29 = *MEMORY[0x277D85DE8];
  v13 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "";
    *buf = 136316162;
    if (a7)
    {
      v14 = "(FATAL) ";
    }

    v20 = v14;
    v21 = 2080;
    v22 = a2;
    v23 = 1024;
    v24 = a3;
    v25 = 2048;
    v26 = a5;
    v27 = 2048;
    v28 = a6;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Received %sport space exhaustion trigger:\n  %s[%d] allocated %lld ports violating a port space limit of %lld ports", buf, 0x30u);
  }

  v15 = +[ResourceNotifyHandler sharedInstance];
  HIDWORD(v18) = a7;
  LOBYTE(v18) = a7 != 0;
  [v15 resourceNotifyEvent:kResourceNotifyEventPortSpaceExhaustionTrigger triggeredBy:a2 pid:a3 path:0 endTime:a4 observedValue:a5 observationWindow:0 limitValue:a6 limitWindow:0 fatal:v18 fatalPort:?];

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t receive_file_descriptors_violation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v29 = *MEMORY[0x277D85DE8];
  v13 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "";
    *buf = 136316162;
    if (a7)
    {
      v14 = "(FATAL) ";
    }

    v20 = v14;
    v21 = 2080;
    v22 = a2;
    v23 = 1024;
    v24 = a3;
    v25 = 2048;
    v26 = a5;
    v27 = 2048;
    v28 = a6;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Received %sfile descriptor exhaustion trigger:\n  %s[%d] allocated %lld fds violating a limit of %lld fds", buf, 0x30u);
  }

  v15 = +[ResourceNotifyHandler sharedInstance];
  HIDWORD(v18) = a7;
  LOBYTE(v18) = a7 != 0;
  [v15 resourceNotifyEvent:kResourceNotifyEventFileDescriptorExhaustionTrigger triggeredBy:a2 pid:a3 path:0 endTime:a4 observedValue:a5 observationWindow:0 limitValue:a6 limitWindow:0 fatal:v18 fatalPort:?];

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t receive_kqworkloops_violation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v29 = *MEMORY[0x277D85DE8];
  v13 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "";
    *buf = 136316162;
    if (a7)
    {
      v14 = "(FATAL) ";
    }

    v20 = v14;
    v21 = 2080;
    v22 = a2;
    v23 = 1024;
    v24 = a3;
    v25 = 2048;
    v26 = a5;
    v27 = 2048;
    v28 = a6;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Received %skqworkloops exhaustion trigger:\n  %s[%d] allocated %lld kqworkloops violating a limit of %lld kqworkloops", buf, 0x30u);
  }

  v15 = +[ResourceNotifyHandler sharedInstance];
  HIDWORD(v18) = a7;
  LOBYTE(v18) = a7 != 0;
  [v15 resourceNotifyEvent:kResourceNotifyEventKQWorkloopsExhaustionTrigger triggeredBy:a2 pid:a3 path:0 endTime:a4 observedValue:a5 observationWindow:0 limitValue:a6 limitWindow:0 fatal:v18 fatalPort:?];

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t DeffactsBasicCommands(uint64_t a1)
{
  EnvAddResetFunction(a1, "deffacts", ResetDeffacts, 0);
  EnvAddClearFunction(a1, "deffacts", ClearDeffacts, 0);
  AddSaveFunction(a1, "deffacts", SaveDeffacts, 10);
  EnvDefineFunction2(a1, "get-deffacts-list", 109, GetDeffactsListFunction, "GetDeffactsListFunction", "01w");
  EnvDefineFunction2(a1, "undeffacts", 118, UndeffactsCommand, "UndeffactsCommand", "11w");
  EnvDefineFunction2(a1, "deffacts-module", 119, DeffactsModuleFunction, "DeffactsModuleFunction", "11w");
  EnvDefineFunction2(a1, "list-deffacts", 118, ListDeffactsCommand, "ListDeffactsCommand", "01w");
  EnvDefineFunction2(a1, "ppdeffacts", 118, PPDeffactsCommand, "PPDeffactsCommand", "11w");

  return DeffactsBinarySetup(a1);
}

uint64_t ClearDeffacts(uint64_t a1)
{
  Function = FindFunction(a1, "assert");
  v3 = GenConstant(a1, 30, Function);
  DeftemplateInModule = EnvFindDeftemplateInModule(a1, "initial-fact");
  v3[2] = GenConstant(a1, 63, DeftemplateInModule);
  ExpressionInstall(a1, v3);
  v5 = *(a1 + 48);
  v6 = *(v5 + 472);
  v7 = *(*(v6 + 40) + 448);
  if (v7)
  {
    *(v6 + 32) = v7;
    *(*(*(v5 + 472) + 40) + 448) = **(*(v5 + 472) + 32);
    v8 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v8 = genalloc(a1, 0x38uLL);
  }

  v8[2] = GetDeffactsModuleItem(a1, 0);
  v9 = EnvAddSymbol(a1, "initial-fact");
  *v8 = v9;
  ++v9[1];
  v10 = PackExpression(a1, v3);
  v8[5] = 0;
  v8[6] = v10;
  v8[1] = 0;
  v8[4] = 0;
  ReturnExpression(a1, v3);

  return AddConstructToModule(v8);
}

uint64_t ResetDeffactsAction(uint64_t result, uint64_t a2)
{
  if (*(a2 + 48))
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    SetEvaluationError(result, 0);
    return EvaluateExpression(v3, *(a2 + 48), v4);
  }

  return result;
}

void sub_2326E83B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2326E867C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2326EF3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2326F3074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_3()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

uint64_t FactParseQueryNoAction(char *a1, uint64_t a2, char *a3)
{
  v4 = a2;
  memset(v10, 0, sizeof(v10));
  Restrictions = ParseQueryRestrictions(a1, a2, a3, v10);
  if (Restrictions)
  {
    v7 = Restrictions;
    IncrementIndentDepth(a1, 3);
    PPCRAndIndent(a1);
    TestExpression = ParseQueryTestExpression(a1, v4, a3);
    DecrementIndentDepth(a1, 3);
    if (TestExpression)
    {
      GetToken(a1, a3, v10);
      if (LOWORD(v10[0]) == 171)
      {
        ReplaceFactVariables(a1, v7, *(v4 + 16), 1, 0);
LABEL_8:
        ReturnExpression(a1, v7);
        return v4;
      }

      SyntaxErrorMessage(a1, "fact-set query function");
      ReturnExpression(a1, v4);
    }

    v4 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t ParseQueryRestrictions(uint64_t a1, uint64_t a2, char *a3, unsigned __int16 *a4)
{
  v25 = 0;
  SavePPBuffer(a1, " ");
  GetToken(a1, a3, a4);
  if (*a4 == 170 && (GetToken(a1, a3, a4), v8 = *a4, v8 == 170))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (a2 + 16);
    while (v8 == 170)
    {
      GetToken(a1, a3, a4);
      if (*a4 != 35)
      {
        goto LABEL_24;
      }

      v13 = *(a4 + 1);
      v14 = v9;
      if (v9)
      {
        while (*(v14 + 8) != v13)
        {
          v14 = *(v14 + 24);
          if (!v14)
          {
            v15 = GenConstant(a1, 35, v13);
            v10[3] = v15;
            goto LABEL_11;
          }
        }

        PrintErrorID(a1, "FACTQPSR", 1, 0);
        EnvPrintRouter(a1, "werror", "Duplicate fact member variable name in function ");
        EnvPrintRouter(a1, "werror", *(**(a2 + 8) + 24));
        EnvPrintRouter(a1, "werror", ".\n");
        goto LABEL_25;
      }

      v15 = GenConstant(a1, 35, v13);
      v9 = v15;
LABEL_11:
      SavePPBuffer(a1, " ");
      v16 = ArgumentParse(a1, a3, &v25);
      v17 = v16;
      if (v25)
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        goto LABEL_24;
      }

      if (!ReplaceTemplateNameWithReference(a1, v16))
      {
        goto LABEL_26;
      }

      v23 = v11;
      v24 = v12;
      SavePPBuffer(a1, " ");
      v18 = ArgumentParse(a1, a3, &v25);
      v19 = v17;
      if (v18)
      {
        v20 = v17;
        do
        {
          v19 = v18;
          if (!ReplaceTemplateNameWithReference(a1, v18))
          {
            goto LABEL_26;
          }

          *(v20 + 24) = v19;
          SavePPBuffer(a1, " ");
          v18 = ArgumentParse(a1, a3, &v25);
          v20 = v19;
        }

        while (v18);
      }

      if (v25)
      {
        goto LABEL_26;
      }

      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, ")");
      v11 = GenConstant(a1, 2, **(*(a1 + 48) + 504));
      v19[3] = v11;
      v12 = v24;
      if (*v24)
      {
        v21 = v23 + 3;
      }

      else
      {
        v21 = v24;
      }

      *v21 = v17;
      SavePPBuffer(a1, " ");
      GetToken(a1, a3, a4);
      LOWORD(v8) = *a4;
      v10 = v15;
    }

    if (v8 != 171)
    {
      goto LABEL_24;
    }

    PPBackup(a1);
    PPBackup(a1);
    SavePPBuffer(a1, ")");
  }

  else
  {
    v9 = 0;
LABEL_24:
    SyntaxErrorMessage(a1, "fact-set query function");
LABEL_25:
    v17 = 0;
LABEL_26:
    ReturnExpression(a1, v17);
    ReturnExpression(a1, a2);
    ReturnExpression(a1, v9);
    return 0;
  }

  return v9;
}

uint64_t ParseQueryTestExpression(uint64_t a1, uint64_t a2, char *a3)
{
  v9 = 0;
  ParsedBindNames = GetParsedBindNames(a1);
  SetParsedBindNames(a1, 0);
  v7 = ArgumentParse(a1, a3, &v9);
  if (v9 == 1)
  {
    ClearParsedBindNames(a1);
    SetParsedBindNames(a1, ParsedBindNames);
  }

  else if (v7)
  {
    v7[3] = *(a2 + 16);
    *(a2 + 16) = v7;
    if (ParsedBindNamesEmpty(a1))
    {
      SetParsedBindNames(a1, ParsedBindNames);
      return 1;
    }

    ClearParsedBindNames(a1);
    SetParsedBindNames(a1, ParsedBindNames);
    PrintErrorID(a1, "FACTQPSR", 2, 0);
    EnvPrintRouter(a1, "werror", "Binds are not allowed in fact-set query in function ");
    EnvPrintRouter(a1, "werror", *(**(a2 + 8) + 24));
    EnvPrintRouter(a1, "werror", ".\n");
  }

  else
  {
    ClearParsedBindNames(a1);
    SetParsedBindNames(a1, ParsedBindNames);
    SyntaxErrorMessage(a1, "fact-set query function");
  }

  ReturnExpression(a1, a2);
  return 0;
}

unint64_t ReplaceFactVariables(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  Function = FindFunction(a1, "(query-fact)");
  result = FindFunction(a1, "(query-fact-slot)");
  v24 = result;
  if (a3)
  {
    v26 = a5;
    do
    {
      if (*a3 == 35)
      {
        if (a2)
        {
          v11 = 0;
          v12 = a2;
          while (*(v12 + 8) != *(a3 + 8))
          {
            v12 = *(v12 + 24);
            ++v11;
            if (!v12)
            {
              goto LABEL_8;
            }
          }

          *a3 = 30;
          *(a3 + 8) = Function;
          v17 = EnvAddLong(a1, v26);
          v18 = GenConstant(a1, 1, v17);
          v19 = EnvAddLong(a1, v11);
          result = GenConstant(a1, 1, v19);
          v18[3] = result;
          *(a3 + 16) = v18;
        }

        else
        {
LABEL_8:
          if (a4 == 1)
          {
            v13 = *(*(a3 + 8) + 24);
            result = strlen(v13);
            if (result >= 3)
            {
              v27 = 0;
              v28 = 0;
              v14 = result - 2;
              v29 = 0;
              while (!a2 || v13[v14] != 58)
              {
LABEL_17:
                if (!--v14)
                {
                  goto LABEL_21;
                }
              }

              v15 = 0;
              v16 = a2;
              while (1)
              {
                result = strlen(*(*(v16 + 8) + 24));
                if (v14 == result)
                {
                  result = strncmp(*(*(v16 + 8) + 24), v13, v14);
                  if (!result)
                  {
                    break;
                  }
                }

                v16 = *(v16 + 24);
                ++v15;
                if (!v16)
                {
                  goto LABEL_17;
                }
              }

              OpenStringSource(a1, "query-var", &v13[v14 + 1], 0);
              PPBufferStatus = GetPPBufferStatus(a1);
              SetPPBufferStatus(a1, 0);
              GetToken(a1, "query-var", &v27);
              SetPPBufferStatus(a1, PPBufferStatus);
              CloseStringSource(a1, "query-var");
              *a3 = 30;
              *(a3 + 8) = v24;
              v21 = EnvAddLong(a1, v26);
              *(a3 + 16) = GenConstant(a1, 1, v21);
              v22 = EnvAddLong(a1, v15);
              *(*(a3 + 16) + 24) = GenConstant(a1, 1, v22);
              result = GenConstant(a1, v27, v28);
              *(*(*(a3 + 16) + 24) + 24) = result;
            }
          }
        }
      }

LABEL_21:
      if (*(a3 + 16))
      {
        if (*a3 == 30)
        {
          v23 = *(*(a3 + 8) + 24);
        }

        result = ReplaceFactVariables(a1, a2);
      }

      a3 = *(a3 + 24);
    }

    while (a3);
  }

  return result;
}

uint64_t FactParseQueryAction(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a2;
  v16[0] = 0;
  v16[1] = 0;
  __s = 0;
  Restrictions = ParseQueryRestrictions(a1, a2, a3, v16);
  if (Restrictions)
  {
    v7 = Restrictions;
    IncrementIndentDepth(a1, 3);
    PPCRAndIndent(a1);
    if (ParseQueryTestExpression(a1, v4, a3))
    {
      PPCRAndIndent(a1);
      ParsedBindNames = GetParsedBindNames(a1);
      SetParsedBindNames(a1, 0);
      v9 = *(*(a1 + 48) + 360);
      *(v9 + 80) = **(v9 + 72);
      *(v9 + 84) = 1;
      v10 = GroupActions(a1, a3, v16, 1, 0, 0);
      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, __s);
      *(*(*(a1 + 48) + 360) + 84) = 0;
      if (v10)
      {
        v11 = *(v4 + 16);
        *(v10 + 3) = *(v11 + 24);
        *(v11 + 24) = v10;
        v12 = GetParsedBindNames(a1);
        if (v12)
        {
          while (2)
          {
            v13 = v12;
            v14 = v7;
            do
            {
              if (*(v14 + 8) == *v12)
              {
                ClearParsedBindNames(a1);
                SetParsedBindNames(a1, ParsedBindNames);
                PrintErrorID(a1, "FACTQPSR", 3, 0);
                EnvPrintRouter(a1, "werror", "Cannot rebind fact-set member variable ");
                EnvPrintRouter(a1, "werror", *(*(v14 + 8) + 24));
                EnvPrintRouter(a1, "werror", " in function ");
                EnvPrintRouter(a1, "werror", *(**(v4 + 8) + 24));
                EnvPrintRouter(a1, "werror", ".\n");
                goto LABEL_13;
              }

              v14 = *(v14 + 24);
            }

            while (v14);
            v12 = v12[2];
            if (v12)
            {
              continue;
            }

            break;
          }

          v13[2] = ParsedBindNames;
        }

        else
        {
          SetParsedBindNames(a1, ParsedBindNames);
        }

        DecrementIndentDepth(a1, 3);
        if (LOWORD(v16[0]) == 171)
        {
          ReplaceFactVariables(a1, v7, *(v4 + 16), 1, 0);
          ReplaceFactVariables(a1, v7, *(*(v4 + 16) + 24), 0, 0);
          goto LABEL_16;
        }

        SyntaxErrorMessage(a1, "fact-set query function");
        ReturnExpression(a1, v4);
LABEL_15:
        v4 = 0;
LABEL_16:
        ReturnExpression(a1, v7);
        return v4;
      }

      ClearParsedBindNames(a1);
      SetParsedBindNames(a1, ParsedBindNames);
      SyntaxErrorMessage(a1, "fact-set query function");
LABEL_13:
      ReturnExpression(a1, v4);
    }

    DecrementIndentDepth(a1, 3);
    goto LABEL_15;
  }

  return 0;
}

uint64_t ReplaceTemplateNameWithReference(uint64_t a1, uint64_t a2)
{
  if (*a2 != 2)
  {
    return 1;
  }

  v11 = v2;
  v12 = v3;
  v10 = 0;
  v6 = *(*(a2 + 8) + 24);
  ImportedConstruct = FindImportedConstruct(a1, "deftemplate", 0, v6, &v10, 1, 0);
  if (!ImportedConstruct)
  {
    CantFindItemErrorMessage(a1, "deftemplate", v6);
    return 0;
  }

  if (v10 >= 2)
  {
    AmbiguousReferenceErrorMessage(a1, "deftemplate", v6);
    return 0;
  }

  *a2 = 63;
  *(a2 + 8) = ImportedConstruct;
  v9 = *(*(a1 + 48) + 336);
  if (!*(v9 + 44))
  {
    ++*(v9 + 20);
  }

  return 1;
}

uint64_t ProceduralFunctionParsers(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0xCu, 8uLL, DeallocateProceduralFunctionData);
  AddFunctionParser(a1, "bind", BindParse);
  AddFunctionParser(a1, "progn", PrognParse);
  AddFunctionParser(a1, "if", IfParse);
  AddFunctionParser(a1, "while", WhileParse);
  AddFunctionParser(a1, "loop-for-count", LoopForCountParse);
  AddFunctionParser(a1, "return", ReturnParse);
  AddFunctionParser(a1, "break", BreakParse);

  return AddFunctionParser(a1, "switch", SwitchParse);
}

uint64_t DeallocateProceduralFunctionData(uint64_t result)
{
  for (i = *(result + 48); ; **(i + 96) = v3)
  {
    v2 = **(i + 96);
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 16);
    *(*(i + 472) + 32) = v2;
    **(*(i + 472) + 32) = *(*(*(i + 472) + 40) + 192);
    *(*(*(i + 472) + 40) + 192) = *(*(i + 472) + 32);
    i = *(result + 48);
  }

  return result;
}

uint64_t BindParse(uint64_t a1, uint64_t a2, char *a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  SavePPBuffer(a1, " ");
  GetToken(a1, a3, &v26);
  if ((v26 & 0xFFFD) != 0x21 && (v26 != 36 || *(*(*(a1 + 48) + 360) + 88)))
  {
    SyntaxErrorMessage(a1, "bind function");
LABEL_17:
    ReturnExpression(a1, a2);
    return 0;
  }

  *(a2 + 16) = GenConstant(a1, 2, v27);
  v6 = v27;
  if (v26 == 33)
  {
    ImportedConstruct = FindImportedConstruct(a1, "defglobal", 0, *(v27 + 24), &v25, 1, 0);
    if (ImportedConstruct)
    {
      v8 = *(a2 + 16);
      *v8 = 90;
      *(v8 + 8) = ImportedConstruct;
    }

    else if (v26 == 33)
    {
      GlobalReferenceErrorMessage(a1, *(v6 + 24));
      goto LABEL_17;
    }
  }

  v9 = *(a1 + 48);
  v10 = *(v9 + 472);
  v11 = *(*(v10 + 40) + 256);
  if (v11)
  {
    *(v10 + 32) = v11;
    *(*(*(v9 + 472) + 40) + 256) = **(*(v9 + 472) + 32);
    v12 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v12 = genalloc(a1, 0x20uLL);
  }

  v12[2] = 0;
  v12[3] = 0;
  if (!CollectArguments(a1, v12, a3))
  {
    goto LABEL_17;
  }

  *(*(a2 + 16) + 24) = v12[2];
  v13 = *(a1 + 48);
  *(*(v13 + 472) + 32) = v12;
  **(*(v13 + 472) + 32) = *(*(*(v13 + 472) + 40) + 256);
  *(*(*(v13 + 472) + 40) + 256) = *(*(v13 + 472) + 32);
  v14 = *(a2 + 16);
  if (*v14 != 90)
  {
    v15 = *(v14 + 24);
    if (v15)
    {
      v16 = ExpressionToConstraintRecord(a1, v15);
    }

    else
    {
      v16 = 0;
    }

    v18 = *(a1 + 48);
    v19 = **(v18 + 96);
    if (v19)
    {
      while (1)
      {
        v20 = v19;
        if (*v19 == v6)
        {
          break;
        }

        v19 = v19[2];
        if (!v19)
        {
          goto LABEL_25;
        }
      }

      if (v16)
      {
        v24 = v19[1];
        v19[1] = UnionConstraints(a1, v16, v24);
        RemoveConstraint(a1, v24);
        RemoveConstraint(a1, v16);
      }
    }

    else
    {
      v20 = 0;
LABEL_25:
      v21 = *(v18 + 472);
      v22 = *(*(v21 + 40) + 192);
      if (v22)
      {
        *(v21 + 32) = v22;
        *(*(*(v18 + 472) + 40) + 192) = **(*(v18 + 472) + 32);
        v23 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v23 = genalloc(a1, 0x18uLL);
      }

      *v23 = v6;
      v23[1] = v16;
      v23[2] = 0;
      if (v20)
      {
        v20[2] = v23;
      }

      else
      {
        **(*(a1 + 48) + 96) = v23;
      }
    }
  }

  return a2;
}

unsigned __int16 *PrognParse(uint64_t a1, uint64_t a2, char *a3)
{
  v7[0] = 0;
  v7[1] = 0;
  __s = 0;
  ReturnExpression(a1, a2);
  *(*(*(a1 + 48) + 360) + 80) = **(*(*(a1 + 48) + 360) + 72);
  IncrementIndentDepth(a1, 3);
  PPCRAndIndent(a1);
  v5 = GroupActions(a1, a3, v7, 1, 0, 0);
  DecrementIndentDepth(a1, 3);
  PPBackup(a1);
  PPBackup(a1);
  SavePPBuffer(a1, __s);
  return v5;
}

uint64_t IfParse(uint64_t a1, uint64_t a2, char *a3)
{
  SavePPBuffer(a1, " ");
  v6 = ParseAtomOrExpression(a1, a3, 0);
  *(a2 + 16) = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  v14 = 0;
  v15 = 0;
  __s = 0;
  IncrementIndentDepth(a1, 3);
  PPCRAndIndent(a1);
  GetToken(a1, a3, &v14);
  if (v14 == 2 && !strcmp(*(v15 + 24), "then"))
  {
    PPCRAndIndent(a1);
    v8 = *(*(a1 + 48) + 360);
    v9 = *(v8 + 72);
    if (*v9 == 1)
    {
      *(v8 + 80) = 1;
    }

    if (v9[1] == 1)
    {
      *(v8 + 84) = 1;
    }

    v10 = GroupActions(a1, a3, &v14, 1, "else", 0);
    *(*(a2 + 16) + 24) = v10;
    if (!v10)
    {
      goto LABEL_5;
    }

    *(*(a2 + 16) + 24) = RemoveUnneededProgn(a1, v10);
    if (v14 == 2)
    {
      if (!strcmp(*(v15 + 24), "else"))
      {
        PPCRAndIndent(a1);
        v11 = GroupActions(a1, a3, &v14, 1, 0, 0);
        v12 = *(a2 + 16);
        *(*(v12 + 24) + 24) = v11;
        v13 = *(*(v12 + 24) + 24);
        if (!v13)
        {
          goto LABEL_5;
        }

        *(*(*(a2 + 16) + 24) + 24) = RemoveUnneededProgn(a1, v13);
        if (v14 == 171)
        {
          PPBackup(a1);
          PPBackup(a1);
          SavePPBuffer(a1, ")");
          DecrementIndentDepth(a1, 3);
          return a2;
        }
      }
    }

    else if (v14 == 171)
    {
      DecrementIndentDepth(a1, 3);
      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, __s);
      return a2;
    }
  }

  SyntaxErrorMessage(a1, "if function");
LABEL_5:
  ReturnExpression(a1, a2);
  return 0;
}

uint64_t WhileParse(uint64_t a1, uint64_t a2, char *a3)
{
  SavePPBuffer(a1, " ");
  v6 = ParseAtomOrExpression(a1, a3, 0);
  *(a2 + 16) = v6;
  if (!v6)
  {
    goto LABEL_15;
  }

  v12 = 0;
  v13 = 0;
  __s = 0;
  GetToken(a1, a3, &v12);
  if (v12 == 170)
  {
    PPBackup(a1);
    IncrementIndentDepth(a1, 3);
    PPCRAndIndent(a1);
    SavePPBuffer(a1, __s);
    v8 = 0;
  }

  else
  {
    if (v12 != 2 || (v7 = *(v13 + 24), *v7 != 100) || v7[1] != 111 || v7[2])
    {
LABEL_14:
      SyntaxErrorMessage(a1, "while function");
LABEL_15:
      ReturnExpression(a1, a2);
      return 0;
    }

    PPBackup(a1);
    SavePPBuffer(a1, " ");
    SavePPBuffer(a1, __s);
    IncrementIndentDepth(a1, 3);
    PPCRAndIndent(a1);
    v8 = 1;
  }

  v9 = *(*(a1 + 48) + 360);
  if (**(v9 + 72) == 1)
  {
    *(v9 + 80) = 1;
  }

  *(v9 + 84) = 1;
  v10 = GroupActions(a1, a3, &v12, v8, 0, 0);
  *(*(a2 + 16) + 24) = v10;
  if (!v10)
  {
    goto LABEL_15;
  }

  PPBackup(a1);
  PPBackup(a1);
  SavePPBuffer(a1, __s);
  if (v12 != 171)
  {
    goto LABEL_14;
  }

  DecrementIndentDepth(a1, 3);
  return a2;
}

uint64_t LoopForCountParse(uint64_t a1, uint64_t a2, char *a3)
{
  v28 = 0;
  v29 = 0;
  __s = 0;
  SavePPBuffer(a1, " ");
  GetToken(a1, a3, &v28);
  if (v28 == 170)
  {
    GetToken(a1, a3, &v28);
    if (v28 == 35)
    {
      v10 = v29;
      SavePPBuffer(a1, " ");
      v12 = ParseAtomOrExpression(a1, a3, 0);
      *(a2 + 16) = v12;
      if (!v12)
      {
        goto LABEL_10;
      }

      if (CheckArgumentAgainstRestriction(a1, v12, 105))
      {
        goto LABEL_9;
      }

      SavePPBuffer(a1, " ");
      GetToken(a1, a3, &v28);
      if (v28 == 171)
      {
        PPBackup(a1);
        PPBackup(a1);
        SavePPBuffer(a1, __s);
        v13 = EnvAddLong(a1, 1);
        v14 = GenConstant(a1, 1, v13);
        v14[3] = *(a2 + 16);
        *(a2 + 16) = v14;
      }

      else
      {
        v27 = ParseAtomOrExpression(a1, a3, &v28);
        *(*(a2 + 16) + 24) = v27;
        if (!v27)
        {
          goto LABEL_10;
        }

        GetToken(a1, a3, &v28);
        if (v28 != 171)
        {
          goto LABEL_9;
        }
      }

      SavePPBuffer(a1, " ");
      v9 = *(*(a2 + 16) + 24);
LABEL_8:
      if (!CheckArgumentAgainstRestriction(a1, v9, 105))
      {
        GetToken(a1, a3, &v28);
        if (v28 == 170)
        {
          PPBackup(a1);
          IncrementIndentDepth(a1, 3);
          PPCRAndIndent(a1);
          SavePPBuffer(a1, __s);
          v16 = 0;
        }

        else
        {
          if (v28 != 2)
          {
            goto LABEL_9;
          }

          v15 = *(v29 + 24);
          if (*v15 != 100 || v15[1] != 111 || v15[2])
          {
            goto LABEL_9;
          }

          PPBackup(a1);
          SavePPBuffer(a1, " ");
          SavePPBuffer(a1, __s);
          IncrementIndentDepth(a1, 3);
          PPCRAndIndent(a1);
          v16 = 1;
        }

        v17 = *(a1 + 48);
        v18 = *(v17 + 360);
        if (**(v18 + 72) == 1)
        {
          *(v18 + 80) = 1;
        }

        *(v18 + 84) = 1;
        v19 = *(v17 + 96);
        v20 = *v19;
        *v19 = 0;
        v21 = GroupActions(a1, a3, &v28, v16, 0, 0);
        v22 = *(a2 + 16);
        *(*(v22 + 24) + 24) = v21;
        v23 = *(*(v22 + 24) + 24);
        v24 = *(*(a1 + 48) + 96);
        if (!v23)
        {
          *v24 = v20;
          goto LABEL_10;
        }

        v25 = *v24;
        if (*v24)
        {
          while (1)
          {
            v26 = v25;
            if (v10)
            {
              if (!strcmp(*(*v25 + 24), *(v10 + 24)))
              {
                break;
              }
            }

            v25 = *(v26 + 16);
            if (!v25)
            {
              v24 = (v26 + 16);
              goto LABEL_31;
            }
          }

          ClearParsedBindNames(a1);
          **(*(a1 + 48) + 96) = v20;
          PrintErrorID(a1, "PRCDRPSR", 1, 1);
          EnvPrintRouter(a1, "werror", "Cannot rebind loop variable in function loop-for-count.\n");
          goto LABEL_10;
        }

LABEL_31:
        *v24 = v20;
        if (v10)
        {
          ReplaceLoopCountVars(a1, v10, v23, 0);
        }

        PPBackup(a1);
        PPBackup(a1);
        SavePPBuffer(a1, __s);
        if (v28 == 171)
        {
          DecrementIndentDepth(a1, 3);
          return a2;
        }
      }

LABEL_9:
      SyntaxErrorMessage(a1, "loop-for-count function");
      goto LABEL_10;
    }

    if (v28 != 2)
    {
      goto LABEL_9;
    }

    v6 = EnvAddLong(a1, 1);
    *(a2 + 16) = GenConstant(a1, 1, v6);
    v7 = Function2Parse(a1, a3, *(v29 + 24));
  }

  else
  {
    v8 = EnvAddLong(a1, 1);
    *(a2 + 16) = GenConstant(a1, 1, v8);
    v7 = ParseAtomOrExpression(a1, a3, &v28);
  }

  *(*(a2 + 16) + 24) = v7;
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    goto LABEL_8;
  }

LABEL_10:
  ReturnExpression(a1, a2);
  return 0;
}

uint64_t ReturnParse(uint64_t a1, uint64_t a2, char *a3)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = *(*(a1 + 48) + 360);
  if (**(v6 + 72) != 1 && !*(v6 + 80))
  {
    PrintErrorID(a1, "PRCDRPSR", 2, 1);
    EnvPrintRouter(a1, "werror", "The return function is not valid in this context.\n");
    goto LABEL_9;
  }

  *(v6 + 80) = 0;
  SavePPBuffer(a1, " ");
  v7 = ArgumentParse(a1, a3, &v10);
  *(a2 + 16) = v7;
  if (v10)
  {
LABEL_9:
    ReturnExpression(a1, a2);
    return 0;
  }

  if (v7)
  {
    SavePPBuffer(a1, " ");
    GetToken(a1, a3, v9);
    if (LOWORD(v9[0]) != 171)
    {
      SyntaxErrorMessage(a1, "return function");
      goto LABEL_9;
    }
  }

  PPBackup(a1);
  PPBackup(a1);
  SavePPBuffer(a1, ")");
  return a2;
}

uint64_t BreakParse(uint64_t a1, uint64_t a2, char *a3)
{
  memset(v7, 0, sizeof(v7));
  if (!*(*(*(*(a1 + 48) + 360) + 72) + 4))
  {
    PrintErrorID(a1, "PRCDRPSR", 2, 1);
    EnvPrintRouter(a1, "werror", "The break function not valid in this context.\n");
LABEL_6:
    ReturnExpression(a1, a2);
    return 0;
  }

  SavePPBuffer(a1, " ");
  GetToken(a1, a3, v7);
  if (LOWORD(v7[0]) != 171)
  {
    SyntaxErrorMessage(a1, "break function");
    goto LABEL_6;
  }

  PPBackup(a1);
  PPBackup(a1);
  SavePPBuffer(a1, ")");
  return a2;
}

uint64_t SwitchParse(uint64_t a1, uint64_t a2, char *a3)
{
  v16 = 0;
  v17 = 0;
  __s = 0;
  IncrementIndentDepth(a1, 3);
  SavePPBuffer(a1, " ");
  v6 = ParseAtomOrExpression(a1, a3, 0);
  *(a2 + 16) = v6;
  if (!v6)
  {
LABEL_30:
    ReturnExpression(a1, a2);
    a2 = 0;
    goto LABEL_31;
  }

  v7 = v6;
  GetToken(a1, a3, &v16);
  if (v16 != 171)
  {
    v8 = 0;
    while (1)
    {
      PPBackup(a1);
      PPCRAndIndent(a1);
      SavePPBuffer(a1, __s);
      if (v16 != 170)
      {
        break;
      }

      GetToken(a1, a3, &v16);
      SavePPBuffer(a1, " ");
      if (v16 != 2)
      {
        break;
      }

      v9 = *(v17 + 24);
      if (!strcmp(v9, "case"))
      {
        if (!v8)
        {
          v7[3] = ParseAtomOrExpression(a1, a3, 0);
          SavePPBuffer(a1, " ");
          v11 = v7[3];
          if (!v11)
          {
            goto LABEL_30;
          }

          for (i = *(*(a2 + 16) + 24); i != v11; i = *(i + 3))
          {
            if (*i == *v11 && *(i + 1) == *(v11 + 1))
            {
              if (IdenticalExpression(*(i + 2), *(v11 + 2)))
              {
                PrintErrorID(a1, "PRCDRPSR", 3, 1);
                EnvPrintRouter(a1, "werror", "Duplicate case found in switch function.\n");
                goto LABEL_30;
              }

              v11 = v7[3];
            }
          }

          GetToken(a1, a3, &v16);
          if (v16 == 2 && !strcmp(*(v17 + 24), "then"))
          {
            v8 = 0;
            v10 = v7[3];
            goto LABEL_21;
          }
        }

        break;
      }

      if (strcmp(v9, "default") | v8)
      {
        break;
      }

      v10 = GenConstant(a1, 175, 0);
      v7[3] = v10;
      v8 = 1;
LABEL_21:
      v13 = *(*(a1 + 48) + 360);
      v14 = *(v13 + 72);
      if (*v14 == 1)
      {
        *(v13 + 80) = 1;
      }

      if (v14[1] == 1)
      {
        *(v13 + 84) = 1;
      }

      IncrementIndentDepth(a1, 3);
      PPCRAndIndent(a1);
      v10[3] = GroupActions(a1, a3, &v16, 1, 0, 0);
      DecrementIndentDepth(a1, 3);
      *(*(*(a1 + 48) + 360) + 80) = 0;
      v7 = v10[3];
      if (!v7)
      {
        goto LABEL_30;
      }

      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, __s);
      GetToken(a1, a3, &v16);
      if (v16 == 171)
      {
        goto LABEL_31;
      }
    }

    SyntaxErrorMessage(a1, "switch function");
    goto LABEL_30;
  }

LABEL_31:
  DecrementIndentDepth(a1, 3);
  return a2;
}

uint64_t ClearParsedBindNames(uint64_t result)
{
  v1 = **(*(result + 48) + 96);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = *(v1 + 16);
      result = RemoveConstraint(v2, *(v1 + 8));
      v4 = *(v2 + 48);
      *(*(v4 + 472) + 32) = **(v4 + 96);
      **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 192);
      *(*(*(v4 + 472) + 40) + 192) = *(*(v4 + 472) + 32);
      v5 = *(v2 + 48);
      **(v5 + 96) = v3;
      v1 = **(v5 + 96);
    }

    while (v1);
  }

  return result;
}

uint64_t SearchParsedBindNames(uint64_t a1, uint64_t a2)
{
  v2 = **(*(a1 + 48) + 96);
  if (!v2)
  {
    return 0;
  }

  result = 1;
  while (*v2 != a2)
  {
    result = (result + 1);
    v2 = v2[2];
    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FindBindConstraints(uint64_t a1, uint64_t a2)
{
  v2 = **(*(a1 + 48) + 96);
  if (!v2)
  {
    return 0;
  }

  while (*v2 != a2)
  {
    v2 = v2[2];
    if (!v2)
    {
      return 0;
    }
  }

  return v2[1];
}

uint64_t CountParsedBindNames(uint64_t a1)
{
  v1 = **(*(a1 + 48) + 96);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + 1);
    v1 = *(v1 + 16);
  }

  while (v1);
  return result;
}

uint64_t RemoveParsedBindName(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 48) + 96);
  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    if (*v3 == a2)
    {
      v5 = 0;
LABEL_7:
      if (v5)
      {
        v2 = (v5 + 2);
      }

      *v2 = v3[2];
      result = RemoveConstraint(result, v3[1]);
      v6 = *(v4 + 48);
      *(*(v6 + 472) + 32) = v3;
      **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 192);
      *(*(*(v6 + 472) + 40) + 192) = *(*(v6 + 472) + 32);
    }

    else
    {
      while (1)
      {
        v5 = v3;
        v3 = v3[2];
        if (!v3)
        {
          break;
        }

        if (*v3 == a2)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t ReplaceLoopCountVars(uint64_t result, uint64_t a2, unsigned __int16 *a3, int a4)
{
  if (a3)
  {
    v4 = a3;
    v6 = result;
    v7 = a4;
    while (1)
    {
      v8 = *v4;
      if (v8 == 35)
      {
        break;
      }

      if (*(v4 + 2))
      {
        if (v8 != 30)
        {
          goto LABEL_10;
        }

        v9 = *(v4 + 1);
        Function = FindFunction(v6, "loop-for-count");
        v11 = *(v4 + 2);
        if (v9 != Function)
        {
          goto LABEL_10;
        }

        v12 = v6;
        v13 = a2;
LABEL_11:
        result = ReplaceLoopCountVars(v12, v13);
      }

LABEL_13:
      v4 = *(v4 + 3);
      if (!v4)
      {
        return result;
      }
    }

    result = strcmp(*(*(v4 + 1) + 24), *(a2 + 24));
    if (!result)
    {
      *v4 = 30;
      *(v4 + 1) = FindFunction(v6, "(get-loop-count)");
      v14 = EnvAddLong(v6, v7);
      result = GenConstant(v6, 1, v14);
      *(v4 + 2) = result;
      goto LABEL_13;
    }

    if (!*(v4 + 2))
    {
      goto LABEL_13;
    }

LABEL_10:
    v12 = v6;
    v13 = a2;
    goto LABEL_11;
  }

  return result;
}

void sub_2326F61D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232702DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2327040D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t DeallocateDefruleBloadData(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 160);
  if (*(v3 + 16) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      DestroyBetaMemory(a1, *(v3 + 64) + v4, 0);
      DestroyBetaMemory(a1, *(*(*(a1 + 48) + 160) + 64) + v4, 1);
      ReturnLeftMemory(a1, *(*(*(a1 + 48) + 160) + 64) + v4);
      ReturnRightMemory(a1, *(*(*(a1 + 48) + 160) + 64) + v4);
      ++v5;
      v2 = *(a1 + 48);
      v3 = *(v2 + 160);
      v4 += 144;
    }

    while (v5 < *(v3 + 16));
  }

  v6 = *v3;
  if (*v3 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(v3 + 48) + 40 * v7;
      v9 = *(v8 + 32);
      if (v9)
      {
        do
        {
          v10 = *(v9 + 48);
          v11 = *(a1 + 48);
          *(*(v11 + 472) + 32) = v9;
          **(*(v11 + 472) + 32) = *(*(*(v11 + 472) + 40) + 448);
          *(*(*(v11 + 472) + 40) + 448) = *(*(v11 + 472) + 32);
          v9 = v10;
        }

        while (v10);
      }

      v12 = *(v8 + 24);
      if (v12)
      {
        do
        {
          v13 = *(v12 + 24);
          v14 = *(a1 + 48);
          *(*(v14 + 472) + 32) = v12;
          **(*(v14 + 472) + 32) = *(*(*(v14 + 472) + 40) + 320);
          *(*(*(v14 + 472) + 40) + 320) = *(*(v14 + 472) + 32);
          v12 = v13;
        }

        while (v13);
      }

      ++v7;
      v2 = *(a1 + 48);
      v3 = *(v2 + 160);
      v6 = *v3;
    }

    while (v7 < *v3);
  }

  if (40 * v6)
  {
    genfree(a1, *(v3 + 48), 40 * v6);
    v2 = *(a1 + 48);
  }

  v15 = *(v2 + 160);
  v16 = 104 * *(v15 + 8);
  if (v16)
  {
    genfree(a1, *(v15 + 56), v16);
    v15 = *(*(a1 + 48) + 160);
  }

  v17 = 144 * *(v15 + 16);
  if (v17)
  {
    genfree(a1, *(v15 + 64), v17);
    v15 = *(*(a1 + 48) + 160);
  }

  v18 = 32 * *(v15 + 24);
  if (v18)
  {
    genfree(a1, *(v15 + 72), v18);
  }

  result = Bloaded(a1);
  if (result)
  {
    v20 = *(*(*(a1 + 48) + 128) + 24);

    return rm(a1, v20, 0x320uLL);
  }

  return result;
}

uint64_t BsaveFind_1(uint64_t a1)
{
  SaveBloadCount(a1, **(*(a1 + 48) + 160));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 160) + 8));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 160) + 16));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 160) + 24));
  TagRuleNetwork(a1, *(*(a1 + 48) + 160), (*(*(a1 + 48) + 160) + 8), (*(*(a1 + 48) + 160) + 16), (*(*(a1 + 48) + 160) + 24));
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v3 = NextDefmodule;
    do
    {
      EnvSetCurrentModule(a1, v3);
      NextDefrule = EnvGetNextDefrule(a1, 0);
      if (NextDefrule)
      {
        v5 = NextDefrule;
        do
        {
          MarkConstructHeaderNeededItems(v5, v5[3]);
          *(*(*(a1 + 48) + 360) + 64) += ExpressionSize(v5[8]);
          MarkNeededItems(a1, v5[8]);
          v6 = v5;
          do
          {
            *(*(*(a1 + 48) + 360) + 64) += ExpressionSize(v6[9]);
            MarkNeededItems(a1, v6[9]);
            v6 = v6[12];
          }

          while (v6);
          v5 = EnvGetNextDefrule(a1, v5);
        }

        while (v5);
      }

      v3 = EnvGetNextDefmodule(a1, v3);
    }

    while (v3);
  }

  return MarkRuleNetwork(a1, 1);
}

uint64_t BsaveExpressions(void *a1, FILE *a2)
{
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    do
    {
      EnvSetCurrentModule(a1, v5);
      NextDefrule = EnvGetNextDefrule(a1, 0);
      if (NextDefrule)
      {
        v7 = NextDefrule;
        do
        {
          BsaveExpression(a1, *(v7 + 64), a2);
          v8 = v7;
          do
          {
            BsaveExpression(a1, *(v8 + 72), a2);
            v8 = *(v8 + 96);
          }

          while (v8);
          v7 = EnvGetNextDefrule(a1, v7);
        }

        while (v7);
      }

      v5 = EnvGetNextDefmodule(a1, v5);
    }

    while (v5);
  }

  return MarkRuleNetwork(a1, 1);
}

const void *BsaveStorage_1(uint64_t a1, FILE *__stream)
{
  v10 = 40;
  GenWrite(&v10, 8uLL, __stream);
  GenWrite(*(*(a1 + 48) + 160), 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 160) + 8), 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 160) + 16), 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 160) + 24), 8uLL, __stream);
  v4 = *(*(*(a1 + 48) + 128) + 40);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = -1;
  }

  v9 = v5;
  GenWrite(&v9, 8uLL, __stream);
  v6 = *(*(*(a1 + 48) + 128) + 48);
  if (v6)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = -1;
  }

  v9 = v7;
  return GenWrite(&v9, 8uLL, __stream);
}

uint64_t BsaveBinaryItem_0(void *a1, FILE *__stream)
{
  memset(v36, 0, sizeof(v36));
  v37 = 80 * (*(*(a1[6] + 160) + 16) + *(*(a1[6] + 160) + 8)) + 24 * (**(a1[6] + 160) + *(*(a1[6] + 160) + 24));
  GenWrite(&v37, 8uLL, __stream);
  *(*(a1[6] + 160) + 8) = 0;
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    do
    {
      EnvSetCurrentModule(a1, v5);
      ModuleItem = FindModuleItem(a1, "defrule");
      v7 = GetModuleItem(a1, 0, *(ModuleItem + 8));
      AssignBsaveDefmdlItemHdrVals(v36, v7);
      GenWrite(v36, 0x18uLL, __stream);
      v5 = EnvGetNextDefmodule(a1, v5);
    }

    while (v5);
  }

  v8 = EnvGetNextDefmodule(a1, 0);
  if (v8)
  {
    v9 = v8;
    do
    {
      EnvSetCurrentModule(a1, v9);
      NextDefrule = EnvGetNextDefrule(a1, 0);
      if (NextDefrule)
      {
        v11 = NextDefrule;
        do
        {
          v12 = 0;
          v13 = 0;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v14 = v11;
          v38 = 0u;
          do
          {
            ++*(*(a1[6] + 160) + 8);
            AssignBsaveConstructHeaderVals(&v38, v14);
            *(&v39 + 1) = *(v14 + 48);
            LOWORD(v40) = v40 & 0xE000 | *(v14 + 56) & 0x7FF | (*(v14 + 56) >> 2) & 0x1000;
            v15 = *(v14 + 64);
            if (v15)
            {
              if (v12)
              {
                *(&v40 + 1) = v13;
              }

              else
              {
                v13 = *(*(a1[6] + 360) + 64);
                *(&v40 + 1) = v13;
                *(*(a1[6] + 360) + 64) += ExpressionSize(v15);
              }
            }

            else
            {
              *(&v40 + 1) = -1;
            }

            v16 = *(v14 + 72);
            if (v16)
            {
              *&v41 = *(*(a1[6] + 360) + 64);
              *(*(a1[6] + 360) + 64) += ExpressionSize(v16);
            }

            else
            {
              *&v41 = -1;
            }

            v17 = *(v14 + 80);
            if (v17)
            {
              v18 = *(v17 + 8);
            }

            else
            {
              v18 = -1;
            }

            *(&v41 + 1) = v18;
            v19 = *(v14 + 88);
            if (v19)
            {
              v20 = *(v19 + 8);
            }

            else
            {
              v20 = -1;
            }

            *&v42 = v20;
            if (*(v14 + 96))
            {
              v21 = *(*(a1[6] + 160) + 8);
            }

            else
            {
              v21 = -1;
            }

            *(&v42 + 1) = v21;
            GenWrite(&v38, 0x50uLL, __stream);
            v14 = *(v14 + 96);
            v12 = 1;
          }

          while (v14);
          v11 = EnvGetNextDefrule(a1, v11);
        }

        while (v11);
      }

      v9 = EnvGetNextDefmodule(a1, v9);
    }

    while (v9);
  }

  MarkRuleNetwork(a1, 1);
  v22 = EnvGetNextDefmodule(a1, 0);
  if (v22)
  {
    v23 = v22;
    do
    {
      EnvSetCurrentModule(a1, v23);
      v24 = EnvGetNextDefrule(a1, 0);
      if (v24)
      {
        v25 = v24;
        do
        {
          v26 = v25;
          do
          {
            BsaveTraverseJoins(a1, __stream, *(v26 + 88));
            v26 = *(v26 + 96);
          }

          while (v26);
          v25 = EnvGetNextDefrule(a1, v25);
        }

        while (v25);
      }

      v23 = EnvGetNextDefmodule(a1, v23);
    }

    while (v23);
  }

  MarkRuleNetwork(a1, 1);
  v27 = *(a1[6] + 128);
  v28 = *(v27 + 48);
  if (v28)
  {
    do
    {
      BsaveLink(__stream, v28);
      v28 = *(v28 + 16);
    }

    while (v28);
    v27 = *(a1[6] + 128);
  }

  for (i = *(v27 + 40); i; i = *(i + 16))
  {
    BsaveLink(__stream, i);
  }

  v30 = EnvGetNextDefmodule(a1, 0);
  if (v30)
  {
    v31 = v30;
    do
    {
      EnvSetCurrentModule(a1, v31);
      v32 = EnvGetNextDefrule(a1, 0);
      if (v32)
      {
        v33 = v32;
        do
        {
          v34 = v33;
          do
          {
            BsaveTraverseLinks(__stream, *(v34 + 88));
            v34 = *(v34 + 96);
          }

          while (v34);
          v33 = EnvGetNextDefrule(a1, v33);
        }

        while (v33);
      }

      v31 = EnvGetNextDefmodule(a1, v31);
    }

    while (v31);
  }

  RestoreBloadCount(a1, *(a1[6] + 160));
  RestoreBloadCount(a1, (*(a1[6] + 160) + 8));
  RestoreBloadCount(a1, (*(a1[6] + 160) + 16));
  return RestoreBloadCount(a1, (*(a1[6] + 160) + 24));
}

void *BloadStorage_1(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  GenReadBinary(a1, *(*(a1 + 48) + 160), 8uLL);
  GenReadBinary(a1, (*(*(a1 + 48) + 160) + 8), 8uLL);
  GenReadBinary(a1, (*(*(a1 + 48) + 160) + 16), 8uLL);
  GenReadBinary(a1, (*(*(a1 + 48) + 160) + 24), 8uLL);
  GenReadBinary(a1, (*(*(a1 + 48) + 160) + 32), 8uLL);
  GenReadBinary(a1, (*(*(a1 + 48) + 160) + 40), 8uLL);
  v2 = *(a1 + 48);
  v3 = *(v2 + 160);
  v4 = *v3;
  if (!*v3)
  {
    v3[6] = 0;
    *(*(v2 + 160) + 56) = 0;
    *(*(v2 + 160) + 64) = 0;
    v4 = **(v2 + 160);
  }

  __ptr = 40 * v4;
  v5 = genalloc(a1, 40 * v4);
  v6 = *(a1 + 48);
  v8 = *(v6 + 160);
  v7 = v6 + 160;
  *(v8 + 48) = v5;
  v9 = *(*v7 + 8);
  if (v9)
  {
    __ptr = 104 * v9;
    v10 = genalloc(a1, 104 * v9);
    v11 = *(a1 + 48);
    *(*(v11 + 160) + 56) = v10;
    __ptr = 144 * *(*(v11 + 160) + 16);
    v12 = genalloc(a1, __ptr);
    v13 = *(a1 + 48);
    *(*(v13 + 160) + 64) = v12;
    __ptr = 32 * *(*(v13 + 160) + 24);
    result = genalloc(a1, __ptr);
    v7 = *(a1 + 48) + 160;
    v15 = 72;
  }

  else
  {
    result = 0;
    *(*v7 + 56) = 0;
    v15 = 64;
  }

  *(*v7 + v15) = result;
  return result;
}

uint64_t BloadBinaryItem_1(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  BloadandRefresh(a1, **(*(a1 + 48) + 160), 24, UpdateDefruleModule);
  BloadandRefresh(a1, *(*(*(a1 + 48) + 160) + 8), 80, UpdateDefrule);
  BloadandRefresh(a1, *(*(*(a1 + 48) + 160) + 16), 80, UpdateJoin);
  result = BloadandRefresh(a1, *(*(*(a1 + 48) + 160) + 24), 24, UpdateLink);
  v3 = *(a1 + 48);
  v4 = *(v3 + 160);
  v5 = *(v4 + 32);
  if (v5 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 72) + 32 * v5;
  }

  *(*(v3 + 128) + 40) = v6;
  v7 = *(v3 + 160);
  v8 = *(v7 + 40);
  if (v8 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v7 + 72) + 32 * v8;
  }

  *(*(v3 + 128) + 48) = v9;
  return result;
}

uint64_t ClearBload_2(uint64_t a1)
{
  v1 = a1;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    GetNextPatternEntity(a1, &v17, &v16);
    if (!v16)
    {
      break;
    }

    (*(*v16 + 32))(v1);
    v16 = 0;
    a1 = v1;
  }

  SaveCurrentModule(v1);
  NextDefmodule = EnvGetNextDefmodule(v1, 0);
  if (NextDefmodule)
  {
    v3 = NextDefmodule;
    do
    {
      EnvSetCurrentModule(v1, v3);
      RemoveAllActivations(v1);
      v3 = EnvGetNextDefmodule(v1, v3);
    }

    while (v3);
  }

  RestoreCurrentModule(v1);
  result = EnvClearFocusStack(v1);
  v5 = v1[6];
  v6 = *(v5 + 160);
  if (*(v6 + 16) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      FlushBetaMemory(v1, *(v6 + 64) + v7, 0);
      ReturnLeftMemory(v1, *(*(v1[6] + 160) + 64) + v7);
      FlushBetaMemory(v1, *(*(v1[6] + 160) + 64) + v7, 1);
      result = ReturnRightMemory(v1, *(*(v1[6] + 160) + 64) + v7);
      ++v8;
      v5 = v1[6];
      v6 = *(v5 + 160);
      v7 += 144;
    }

    while (v8 < *(v6 + 16));
  }

  if (*(v6 + 8) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      result = UnmarkConstructHeader(v1, (*(v6 + 56) + v9));
      ++v10;
      v5 = v1[6];
      v6 = *(v5 + 160);
      v9 += 104;
    }

    while (v10 < *(v6 + 8));
  }

  v11 = 40 * *v6;
  if (v11)
  {
    result = genfree(v1, *(v6 + 48), v11);
    v5 = v1[6];
  }

  v12 = *(v5 + 160);
  *v12 = 0;
  v13 = 104 * *(v12 + 8);
  if (v13)
  {
    result = genfree(v1, *(v12 + 56), v13);
    v5 = v1[6];
    v12 = *(v5 + 160);
  }

  *(v12 + 8) = 0;
  v14 = 144 * *(v12 + 16);
  if (v14)
  {
    result = genfree(v1, *(v12 + 64), v14);
    v5 = v1[6];
    v12 = *(v5 + 160);
  }

  *(v12 + 16) = 0;
  v15 = 32 * *(v12 + 24);
  if (v15)
  {
    result = genfree(v1, *(v12 + 72), v15);
    v5 = v1[6];
    v12 = *(v5 + 160);
  }

  *(v12 + 24) = 0;
  *(*(v5 + 128) + 40) = 0;
  *(*(v5 + 128) + 48) = 0;
  return result;
}

uint64_t AssignBsavePatternHeaderValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 16) = *(a2 + 16) & 0xFFFD | *(a3 + 32) & 2;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = -1;
  }

  *a2 = v6;
  result = HashedExpressionIndex(a1, *(a3 + 24));
  *(a2 + 8) = result;
  v8 = *(a2 + 16) & 0xFFFE | *(a3 + 32) & 1;
  *(a2 + 16) = v8;
  v9 = v8 & 0xFFFFFFFB | (4 * ((*(a3 + 32) >> 2) & 1));
  *(a2 + 16) = v9;
  v10 = v9 & 0xFFFFFFBF | (((*(a3 + 32) >> 5) & 1) << 6);
  *(a2 + 16) = v10;
  v11 = v10 & 0xFFFFFF7F | (((*(a3 + 32) >> 6) & 1) << 7);
  *(a2 + 16) = v11;
  *(a2 + 16) = v11 & 0xFEFF | (2 * *(a3 + 32)) & 0x100;
  return result;
}

uint64_t UpdatePatternNodeHeader(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32) & 0xFE | *(a3 + 16) & 1;
  *(a2 + 32) = v3;
  v4 = v3 & 0xFFFFFFFD | (2 * ((*(a3 + 16) >> 1) & 1));
  *(a2 + 32) = v4;
  v5 = v4 & 0xFFFFFFFB | (4 * ((*(a3 + 16) >> 2) & 1));
  *(a2 + 32) = v5;
  v6 = v5 & 0xFFFFFFDF | (32 * ((*(a3 + 16) >> 6) & 1));
  *(a2 + 32) = v6;
  v7 = v6 & 0xFFFFFFBF | (((*(a3 + 16) >> 7) & 1) << 6);
  *(a2 + 32) = v7;
  *(a2 + 32) = v7 & 0x67 | (*(a3 + 16) >> 1) & 0x80;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *(a3 + 8);
  if (v8 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(*(result + 48) + 360) + 56) + 32 * v8;
  }

  *(a2 + 24) = v9;
  if (*a3 == -1)
  {
    *(a2 + 16) = 0;
  }

  else
  {
    v10 = *(*(*(result + 48) + 160) + 64);
    v11 = v10 + 144 * *a3;
    *(a2 + 16) = v11;
    if (v10)
    {
      do
      {
        *(v11 + 104) = a2;
        v11 = *(v11 + 128);
      }

      while (v11);
    }
  }

  return result;
}

const void *BsaveTraverseJoins(const void *result, FILE *a2, int *a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *v3;
      if ((*v3 & 0x40) != 0)
      {
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        v7 = *v3;
        *v3 &= ~0x40u;
        LOWORD(v18) = (v7 >> 2) & 0xE0 | v7 & 0x1F | (v7 >> 2) & 0x7F00;
        if ((v7 & 4) != 0 && (v8 = *(v3 + 13)) != 0)
        {
          v9 = *(v8 + 8);
        }

        else
        {
          v9 = -1;
        }

        *(&v20 + 1) = v9;
        v10 = *(v3 + 15);
        if (v10)
        {
          v11 = *(v10 + 8);
        }

        else
        {
          v11 = -1;
        }

        v22 = v11;
        v12 = *(v3 + 14);
        if (v12)
        {
          v13 = *(v12 + 24);
        }

        else
        {
          v13 = -1;
        }

        v21 = v13;
        v14 = *(v3 + 16);
        if (v14)
        {
          v15 = *(v14 + 8);
        }

        else
        {
          v15 = -1;
        }

        v23 = v15;
        *(&v18 + 1) = HashedExpressionIndex(v5, *(v3 + 9));
        *&v19 = HashedExpressionIndex(v5, *(v3 + 10));
        *(&v19 + 1) = HashedExpressionIndex(v5, *(v3 + 11));
        *&v20 = HashedExpressionIndex(v5, *(v3 + 12));
        v16 = *(v3 + 17);
        if (v16)
        {
          v17 = *(v16 + 24);
        }

        else
        {
          v17 = -1;
        }

        v24 = v17;
        result = GenWrite(&v18, 0x50uLL, a2);
        v6 = *v3;
      }

      if ((v6 & 4) != 0)
      {
        result = BsaveTraverseJoins(v5, a2, *(v3 + 13));
      }

      v3 = *(v3 + 15);
    }

    while (v3);
  }

  return result;
}

const void *BsaveLink(FILE *__stream, uint64_t a2)
{
  v7[0] = 0;
  LOBYTE(v7[0]) = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = -1;
  }

  v7[1] = v3;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = -1;
  }

  v7[2] = v5;
  return GenWrite(v7, 0x18uLL, __stream);
}

FILE *BsaveTraverseLinks(FILE *result, int *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *v2;
      if ((*v2 & 0x40) != 0)
      {
        v5 = *(v2 + 14);
        if (v5)
        {
          do
          {
            result = BsaveLink(v3, v5);
            v5 = *(v5 + 16);
          }

          while (v5);
          v4 = *v2;
        }

        v4 &= ~0x40u;
        *v2 = v4;
      }

      if ((v4 & 4) != 0)
      {
        result = BsaveTraverseLinks(v3, *(v2 + 13));
      }

      v2 = *(v2 + 15);
    }

    while (v2);
  }

  return result;
}

uint64_t UpdateDefruleModule(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = 5 * a3;
  result = UpdateDefmoduleItemHeader(a1, a2, (*(*(*(a1 + 48) + 160) + 48) + 40 * a3), 104, *(*(*(a1 + 48) + 160) + 56));
  v6 = *(a1 + 48);
  *(*(*(v6 + 160) + 48) + 8 * v4 + 32) = 0;
  *(*(*(v6 + 160) + 48) + 8 * v4 + 24) = 0;
  return result;
}

double UpdateDefrule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UpdateConstructHeader(a1, a2, (*(*(*(a1 + 48) + 160) + 56) + 104 * a3), 40, *(*(*(a1 + 48) + 160) + 48), 104, *(*(*(a1 + 48) + 160) + 56));
  v6 = *(a2 + 40);
  v7 = *(a1 + 48);
  if (v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(*(v7 + 360) + 56) + 32 * v6;
  }

  *(*(*(v7 + 160) + 56) + 104 * a3 + 64) = v8;
  v9 = *(a2 + 48);
  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(*(v7 + 360) + 56) + 32 * v9;
  }

  *(*(*(v7 + 160) + 56) + 104 * a3 + 72) = v10;
  v11 = *(a2 + 56);
  v12 = *(v7 + 160);
  if (v11 == -1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 64) + 144 * v11;
  }

  *(*(v12 + 56) + 104 * a3 + 80) = v13;
  v14 = *(a2 + 64);
  v15 = *(v7 + 160);
  if (v14 == -1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 + 64) + 144 * v14;
  }

  v17 = *(v15 + 56);
  v18 = 104 * a3;
  *(v17 + 104 * a3 + 88) = v16;
  v19 = *(a2 + 72);
  v20 = *(*(v7 + 160) + 56);
  if (v19 == -1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20 + 104 * v19;
  }

  *(v20 + v18 + 96) = v21;
  v22 = *(*(v7 + 160) + 56) + v18;
  result = *(a2 + 24);
  *(v22 + 48) = result;
  *(v22 + 56) = *(v22 + 56) & 0xF800 | *(a2 + 32) & 0x7FF;
  v24 = *(*(*(a1 + 48) + 160) + 56) + v18;
  *(v24 + 56) = *(v24 + 56) & 0xBFFF | (4 * *(a2 + 32)) & 0x4000;
  v25 = *(*(*(a1 + 48) + 160) + 56) + v18;
  *(v25 + 56) &= ~0x8000u;
  v26 = *(*(*(a1 + 48) + 160) + 56) + v18;
  *(v26 + 56) &= ~0x800u;
  v27 = *(a1 + 48);
  LOBYTE(v24) = **(v27 + 136);
  v28 = *(*(v27 + 160) + 56) + v18;
  *(v28 + 56) = *(v28 + 56) & 0xEFFF | ((v24 & 1) << 12);
  v29 = *(a1 + 48);
  LOBYTE(v24) = *(*(v29 + 128) + 56);
  v30 = *(*(v29 + 160) + 56) + v18;
  *(v30 + 56) = *(v30 + 56) & 0xDFFF | ((v24 & 1) << 13);
  return result;
}

void UpdateJoin(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(*(*(a1 + 48) + 160) + 64);
  v4 = 144 * a3;
  *(v3 + v4) = *(v3 + 144 * a3) & 0xFFFFFFFE | *a2 & 1;
  v5 = *(*(*(a1 + 48) + 160) + 64);
  *(v5 + v4) = *(v5 + 144 * a3) & 0xFFFFFFFD | (2 * ((*a2 >> 1) & 1));
  v6 = *(*(*(a1 + 48) + 160) + 64);
  *(v6 + v4) = *(v6 + 144 * a3) & 0xFFFFFFFB | (4 * ((*a2 >> 2) & 1));
  v7 = *(*(*(a1 + 48) + 160) + 64);
  *(v7 + v4) = *(v7 + 144 * a3) & 0xFFFFFFF7 | (8 * ((*a2 >> 3) & 1));
  v8 = *(*(*(a1 + 48) + 160) + 64);
  *(v8 + v4) = *(v8 + 144 * a3) & 0xFFFFFFEF | (16 * ((*a2 >> 4) & 1));
  v9 = *(*(*(a1 + 48) + 160) + 64);
  *(v9 + v4) = *(v9 + 144 * a3) & 0xFC0003FF | ((*(a2 + 1) & 0x7F) << 10);
  v10 = *(*(*(a1 + 48) + 160) + 64);
  *(v10 + v4) = *(v10 + 144 * a3) & 0xFFFFFC7F | (((*a2 >> 5) & 7) << 7);
  v11 = *(a2 + 1);
  v12 = *(a1 + 48);
  if (v11 == -1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(*(v12 + 360) + 56) + 32 * v11;
  }

  *(*(*(v12 + 160) + 64) + 144 * a3 + 72) = v13;
  v14 = *(a2 + 2);
  if (v14 == -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(*(v12 + 360) + 56) + 32 * v14;
  }

  *(*(*(v12 + 160) + 64) + 144 * a3 + 80) = v15;
  v16 = *(a2 + 3);
  if (v16 == -1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(*(v12 + 360) + 56) + 32 * v16;
  }

  *(*(*(v12 + 160) + 64) + 144 * a3 + 88) = v17;
  v18 = *(a2 + 4);
  if (v18 == -1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(*(v12 + 360) + 56) + 32 * v18;
  }

  *(*(*(v12 + 160) + 64) + 144 * a3 + 96) = v19;
  v20 = *(a2 + 6);
  v21 = *(v12 + 160);
  if (v20 == -1)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v21 + 72) + 32 * v20;
  }

  *(*(v21 + 64) + 144 * a3 + 112) = v22;
  v23 = *(a2 + 7);
  v24 = *(*(v12 + 160) + 64);
  if (v23 == -1)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24 + 144 * v23;
  }

  *(v24 + 144 * a3 + 120) = v25;
  if ((*a2 & 4) != 0)
  {
    v28 = *(a2 + 5);
    v27 = *(*(v12 + 160) + 64);
    if (v28 == -1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v27 + 144 * v28;
    }
  }

  else
  {
    v26 = 0;
    v27 = *(*(v12 + 160) + 64);
  }

  *(v27 + 144 * a3 + 104) = v26;
  v29 = *(*(v12 + 160) + 64);
  v31 = *(a2 + 8);
  v30 = *(a2 + 9);
  v32 = v29 + 144 * v31;
  if (v31 == -1)
  {
    v32 = 0;
  }

  *(v29 + 144 * a3 + 128) = v32;
  v33 = *(v12 + 160);
  if (v30 == -1)
  {
    v34 = 0;
  }

  else
  {
    v34 = *(v33 + 56) + 104 * v30;
  }

  *(*(v33 + 64) + 144 * a3 + 136) = v34;
  *(*(*(v12 + 160) + 64) + 144 * a3) &= ~0x20u;
  v35 = *(*(*(a1 + 48) + 160) + 64);
  *(v35 + 144 * a3) &= ~0x40u;
  v36 = *(a1 + 48);
  v37 = *(*(v36 + 160) + 64) + 144 * a3;
  *(v37 + 8) = 0;
  *(v37 + 56) = 0;
  *(*(*(v36 + 160) + 64) + 144 * a3 + 64) = 0;
  AddBetaMemoriesToJoin(a1, (*(*(v36 + 160) + 64) + 144 * a3));
}

uint64_t UpdateLink(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 48);
  v4 = *(*(v3 + 160) + 72);
  v5 = v4 + 32 * a3;
  *v5 = *a2;
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = v4 + 32 * v6;
  if (v6 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  *(v5 + 16) = v9;
  v10 = *(v3 + 160);
  if (v7 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 64) + 144 * v7;
  }

  *(*(v10 + 72) + 32 * a3 + 8) = v11;
  return result;
}

char *prefs_store_init(int a1, const void *a2)
{
  result = malloc_type_calloc(1uLL, 0xB0uLL, 0xA4E76A9AuLL);
  if (result)
  {
    v5 = result;
    *result = 267312299;
    pthread_mutex_init((result + 8), 0);
    if (a2)
    {
      *(v5 + 15) = _Block_copy(a2);
    }

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    *(v5 + 19) = dispatch_queue_create("com.apple.symptoms.settings", v6);
    *(v5 + 36) = a1;
    os_state_add_handler();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __prefs_store_init_block_invoke()
{
  dump_prefs_file("/Library/Preferences/com.apple.symptoms.plist");
  dump_prefs_file("/Library/Managed Preferences/mobile/com.apple.symptoms.plist");
  return 0;
}

void prefs_start_monitoring(uint64_t a1, void (**aBlock)(void *, uint64_t))
{
  values[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 72) != 1)
  {
    out_token = 0;
    *(a1 + 72) = 1;
    if (aBlock)
    {
      *(a1 + 112) = _Block_copy(aBlock);
    }

    v5 = *(a1 + 144);
    if (v5 == 1)
    {
      v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v10 = dispatch_queue_create("com.apple.symptoms.settings.notify", v9);
      *(a1 + 168) = v10;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __prefs_start_monitoring_block_invoke;
      handler[3] = &__block_descriptor_tmp_12;
      handler[4] = a1;
      notify_register_dispatch(symptoms_settings_notify_key, &out_token, v10, handler);
    }

    else
    {
      if (v5)
      {
LABEL_13:
        v11 = *MEMORY[0x277D85DE8];
        return;
      }

      values[0] = @"/Library/Preferences/com.apple.symptoms.plist";
      values[1] = @"/Library/Managed Preferences/mobile/com.apple.symptoms.plist";
      v6 = *MEMORY[0x277CBECE8];
      v7 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 2, MEMORY[0x277CBF128]);
      context.version = 0;
      memset(&context.retain, 0, 24);
      context.info = a1;
      CurrentEventId = FSEventsGetCurrentEventId();
      prefs_start_monitoring_fsevt = FSEventStreamCreate(v6, fs_settings_changed, &context, v7, CurrentEventId, 0.1, 0x14u);
      FSEventStreamSetDispatchQueue(prefs_start_monitoring_fsevt, MEMORY[0x277D85CD0]);
      FSEventStreamStart(prefs_start_monitoring_fsevt);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    get_settings(a1);
    goto LABEL_13;
  }

  v3 = aBlock[2];
  v4 = *MEMORY[0x277D85DE8];

  v3(aBlock, a1);
}

void get_settings(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 144);
  if (v2 == 1)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_uint64(v5, symptoms_helper_key_type, 0x64uLL);
      v17 = 0;
      v18 = &v17;
      v19 = 0x2000000000;
      v20 = 0;
      v7 = *(a1 + 152);
      block = MEMORY[0x277D85DD0];
      v24 = 0x40000000;
      v25 = __get_connection_block_invoke;
      v26 = &unk_27898EF48;
      v27 = &v17;
      v28 = a1;
      dispatch_sync(v7, &block);
      v8 = *(v18 + 24);
      _Block_object_dispose(&v17, 8);
      if (v8)
      {
        xpc_connection_send_message(v8, v6);
        xpc_release(v8);
      }

      xpc_release(v6);
    }
  }

  else if (!v2)
  {
    v3 = open("/Library/Preferences/com.apple.symptoms.plist", 0);
    if (v3 == -1)
    {
      if (*__error() != 2)
      {
        v9 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          v10 = *__error();
          *buf = 67109120;
          v30 = v10;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "symptom settings file open failed %d", buf, 8u);
        }
      }

      v11 = open("/Library/Managed Preferences/mobile/com.apple.symptoms.plist", 0);
      if (v11 != -1)
      {
        v12 = *(a1 + 152);
        v17 = MEMORY[0x277D85DD0];
        v18 = 0x40000000;
        v19 = __get_settings_from_file_block_invoke;
        v20 = &__block_descriptor_tmp_17;
        v22 = v11;
        v21 = a1;
LABEL_21:
        xpc_create_from_plist_descriptor();
        goto LABEL_22;
      }
    }

    else
    {
      v4 = open("/Library/Managed Preferences/mobile/com.apple.symptoms.plist", 0);
      if (v4 != -1)
      {
LABEL_20:
        v15 = *(a1 + 152);
        block = MEMORY[0x277D85DD0];
        v24 = 0x40000000;
        v25 = __get_settings_from_file_block_invoke_2;
        v26 = &__block_descriptor_tmp_19;
        v28 = __PAIR64__(v4, v3);
        v27 = a1;
        goto LABEL_21;
      }
    }

    if (*__error() != 2)
    {
      v13 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = *__error();
        *buf = 67109120;
        v30 = v14;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "symptom settings profile file open failed %d", buf, 8u);
      }
    }

    if (v3 == -1)
    {
      update_prefs(a1, 0, 0, 0, 0);
      signal_initialized(a1);
      goto LABEL_22;
    }

    v4 = -1;
    goto LABEL_20;
  }

LABEL_22:
  v16 = *MEMORY[0x277D85DE8];
}

void __prefs_start_monitoring_block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  if (!notify_get_state(token, &state64) && state64 != symptoms_helper_key_settings_hash_block_invoke_sLastRequest)
  {
    get_settings(*(a1 + 32));
    symptoms_helper_key_settings_hash_block_invoke_sLastRequest = state64;
  }
}

void update_client(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    return;
  }

  v5 = *(a2 + 88);
  if (!v5 || (value = xpc_dictionary_get_value(v5, v3)) == 0)
  {
    v7 = *(a2 + 80);
    if (!v7)
    {
      value = 0;
      v9 = (a1 + 32);
      v8 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    value = xpc_dictionary_get_value(v7, *(a1 + 24));
  }

  v9 = (a1 + 32);
  v8 = *(a1 + 32);
  if (v8)
  {
    if (value)
    {
      v10 = xpc_equal(v8, value);
      v8 = *v9;
      if (v10)
      {
        if (!v8)
        {
          goto LABEL_20;
        }

LABEL_15:
        if (*(a1 + 40))
        {
          return;
        }

        goto LABEL_21;
      }

      if (!v8)
      {
LABEL_19:
        *v9 = 0;
        v11 = 1;
        if (value)
        {
          goto LABEL_20;
        }

LABEL_12:
        if (v11)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }
    }

LABEL_18:
    xpc_release(v8);
    *v9 = 0;
    goto LABEL_19;
  }

  v11 = 0;
  if (!value)
  {
    goto LABEL_12;
  }

LABEL_20:
  xpc_retain(value);
  *v9 = value;
LABEL_21:
  ++*(a1 + 40);
  v12 = *(*(a1 + 16) + 16);

  v12();
}

void start_monitor_mdm_profile(const char *a1, void *aBlock)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a1 && aBlock)
  {
    mdm_callback = _Block_copy(aBlock);
    Default = CFAllocatorGetDefault();
    v4 = CFStringCreateWithCString(Default, a1, 0x600u);
    v11[0] = v4;
    v5 = CFArrayCreate(0, v11, 1, MEMORY[0x277CBF128]);
    v6 = *MEMORY[0x277CBECE8];
    CurrentEventId = FSEventsGetCurrentEventId();
    v8 = FSEventStreamCreate(v6, fs_changed, 0, v5, CurrentEventId, 0.1, 0x10u);
    if (v8)
    {
      v9 = v8;
      FSEventStreamSetDispatchQueue(v8, MEMORY[0x277D85CD0]);
      FSEventStreamStart(v9);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t fs_changed()
{
  result = mdm_callback;
  if (mdm_callback)
  {
    return (*(mdm_callback + 16))();
  }

  return result;
}

uint64_t dump_prefs_file(const char *a1)
{
  result = open(a1, 0);
  if (result != -1)
  {
    return xpc_create_from_plist_descriptor();
  }

  return result;
}

void __dump_prefs_file_block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  close(*(a1 + 40));
  if (!a2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v7 = *(a1 + 32);
    v12 = 136315138;
    v13 = v7;
    v8 = MEMORY[0x277D86220];
    v9 = "Configuration file %s appears to be corrupt";
LABEL_10:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, v9, &v12, 0xCu);
    goto LABEL_11;
  }

  v4 = MEMORY[0x238389020](a2);
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v10 = *(a1 + 32);
    v12 = 136315138;
    v13 = v10;
    v8 = MEMORY[0x277D86220];
    v9 = "Configuration file %s has unreadable contents";
    goto LABEL_10;
  }

  v5 = v4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v12 = 136315394;
    v13 = v6;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_23255B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Configuration file %s contents %s", &v12, 0x16u);
  }

  free(v5);
LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t update_prefs(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  pthread_mutex_lock((a1 + 8));
  if (a2)
  {
    xpc_retain(a2);
  }

  if (a4)
  {
    xpc_retain(a4);
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    xpc_release(v10);
    *(a1 + 80) = 0;
  }

  v11 = *(a1 + 88);
  if (v11)
  {
    xpc_release(v11);
  }

  *(a1 + 80) = a2;
  *(a1 + 88) = a4;
  *(a1 + 96) = a3;
  *(a1 + 104) = a5;
  for (i = *(a1 + 128); i; i = *(i + 48))
  {
    update_client(i, a1);
  }

  return pthread_mutex_unlock((a1 + 8));
}

void signal_initialized(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    (*(v2 + 16))(v2, a1);
    v3 = *(a1 + 112);
    if (v3)
    {
      xpc_release(v3);
    }

    *(a1 + 112) = 0;
  }
}

void __get_settings_from_file_block_invoke(uint64_t a1, void *a2)
{
  close(*(a1 + 40));
  if (a2)
  {
    v4 = xpc_hash(a2);
  }

  else
  {
    v4 = 0;
  }

  update_prefs(*(a1 + 32), 0, 0, a2, v4);
  v5 = *(a1 + 32);

  signal_initialized(v5);
}

void __get_settings_from_file_block_invoke_2(uint64_t a1, void *a2)
{
  close(*(a1 + 40));
  if (a2)
  {
    v4 = xpc_hash(a2);
    if (*(a1 + 44) != -1)
    {
      xpc_retain(a2);
      v5 = *(a1 + 44);
LABEL_5:
      v6 = *(*(a1 + 32) + 152);
      xpc_create_from_plist_descriptor();
      return;
    }
  }

  else
  {
    v4 = 0;
    if (*(a1 + 44) != -1)
    {
      goto LABEL_5;
    }
  }

  update_prefs(*(a1 + 32), a2, v4, 0, 0);
  v7 = *(a1 + 32);

  signal_initialized(v7);
}

void __get_settings_from_file_block_invoke_3(uint64_t a1, void *a2)
{
  close(*(a1 + 56));
  if (a2)
  {
    v4 = xpc_hash(a2);
  }

  else
  {
    v4 = 0;
  }

  update_prefs(*(a1 + 32), *(a1 + 40), *(a1 + 48), a2, v4);
  signal_initialized(*(a1 + 32));
  v5 = *(a1 + 40);
  if (v5)
  {

    xpc_release(v5);
  }
}

_xpc_connection_s *__get_connection_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(v2 + 160);
  if (result)
  {
    goto LABEL_2;
  }

  *(*(a1 + 40) + 160) = xpc_connection_create_mach_service(symptoms_helper_service, *(v2 + 152), 2uLL);
  v5 = *(a1 + 40);
  result = *(v5 + 160);
  if (!result)
  {
    goto LABEL_5;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __get_connection_block_invoke_2;
  handler[3] = &__block_descriptor_tmp_20;
  handler[4] = v5;
  xpc_connection_set_event_handler(result, handler);
  xpc_connection_resume(*(*(a1 + 40) + 160));
  result = *(*(a1 + 40) + 160);
  if (result)
  {
LABEL_2:
    result = xpc_retain(result);
    v4 = *(*(a1 + 40) + 160);
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

void __get_connection_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x238389170](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v8 = *(*(a1 + 32) + 160);
    if (v8)
    {
      xpc_connection_cancel(v8);
      v9 = *(a1 + 32);
      v10 = *(v9 + 160);
      if (v10)
      {
        xpc_release(v10);
        *(*(a1 + 32) + 160) = 0;
        v9 = *(a1 + 32);
      }

      *(v9 + 160) = 0;
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v5 = *(a1 + 32);
    if (xpc_dictionary_get_uint64(a2, symptoms_helper_key_type) == 100)
    {
      value = xpc_dictionary_get_value(a2, symptoms_helper_key_settings);
      uint64 = xpc_dictionary_get_uint64(a2, symptoms_helper_key_settings_hash);

      update_prefs(v5, value, uint64, 0, 0);
    }
  }
}

uint64_t AWDSymptomsCellularSDMAdviceChangeReadFrom(_WORD *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v118[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v118[0] & 0x7F) << v5;
      if ((v118[0] & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        a1[52] |= 0x10u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v118[0] & 0x7F) << v13;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_199:
            v114 = 20;
            goto LABEL_228;
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

        goto LABEL_199;
      case 2u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        a1[52] |= 0x200u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v118[0] & 0x7F) << v71;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v11 = v72++ >= 9;
          if (v11)
          {
            v52 = 0;
            goto LABEL_203;
          }
        }

        if ([a2 hasError])
        {
          v52 = 0;
        }

        else
        {
          v52 = v73;
        }

LABEL_203:
        v115 = 44;
        goto LABEL_219;
      case 3u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        a1[52] |= 0x400u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v118[0] & 0x7F) << v46;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            v52 = 0;
            goto LABEL_185;
          }
        }

        if ([a2 hasError])
        {
          v52 = 0;
        }

        else
        {
          v52 = v48;
        }

LABEL_185:
        v115 = 46;
        goto LABEL_219;
      case 4u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        a1[52] |= 8u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v118[0] & 0x7F) << v59;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v11 = v60++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_191;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v61;
        }

LABEL_191:
        v114 = 16;
        goto LABEL_228;
      case 5u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        a1[52] |= 1u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v118[0] & 0x7F) << v34;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_177;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v36;
        }

LABEL_177:
        v114 = 4;
        goto LABEL_228;
      case 6u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        a1[52] |= 0x20u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v118[0] & 0x7F) << v83;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v11 = v84++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_211;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v85;
        }

LABEL_211:
        v114 = 24;
        goto LABEL_228;
      case 7u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        a1[52] |= 0x80u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v118[0] & 0x7F) << v95;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            v52 = 0;
            goto LABEL_218;
          }
        }

        if ([a2 hasError])
        {
          v52 = 0;
        }

        else
        {
          v52 = v97;
        }

LABEL_218:
        v115 = 36;
        goto LABEL_219;
      case 8u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        a1[52] |= 0x100u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v118[0] & 0x7F) << v65;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            v52 = 0;
            goto LABEL_195;
          }
        }

        if ([a2 hasError])
        {
          v52 = 0;
        }

        else
        {
          v52 = v67;
        }

LABEL_195:
        v115 = 38;
        goto LABEL_219;
      case 9u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        a1[52] |= 4u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v118[0] & 0x7F) << v107;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v11 = v108++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_227;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v109;
        }

LABEL_227:
        v114 = 12;
        goto LABEL_228;
      case 0xAu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        a1[52] |= 2u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v118[0] & 0x7F) << v40;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_181;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v42;
        }

LABEL_181:
        v114 = 8;
        goto LABEL_228;
      case 0xBu:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        a1[52] |= 0x40u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v118[0] & 0x7F) << v101;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v11 = v102++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_223;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v103;
        }

LABEL_223:
        v114 = 28;
LABEL_228:
        *&a1[v114] = v19;
        goto LABEL_229;
      case 0xCu:
        v33 = PBReaderReadString();
        if (v33)
        {
          [a1 addAdviceInitiatingNames:v33];
        }

        goto LABEL_59;
      case 0xDu:
        v33 = objc_alloc_init(AWDSymptomsSDMParticipant);
        [a1 addOldAdvicePartipants:v33];
        v118[0] = 0;
        v118[1] = 0;
        if (PBReaderPlaceMark() && AWDSymptomsSDMParticipantReadFrom(v33, a2))
        {
          PBReaderRecallMark();
LABEL_59:

LABEL_229:
          v116 = [a2 position];
          if (v116 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 0xEu:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        a1[52] |= 0x4000u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v92 = [a2 position] + 1;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
          {
            v94 = [a2 data];
            [v94 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v91 |= (v118[0] & 0x7F) << v89;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v11 = v90++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_213;
          }
        }

        v26 = (v91 != 0) & ~[a2 hasError];
LABEL_213:
        v113 = 102;
        goto LABEL_214;
      case 0xFu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        a1[52] |= 0x8000u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v118[0] & 0x7F) << v27;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_173;
          }
        }

        v26 = (v29 != 0) & ~[a2 hasError];
LABEL_173:
        v113 = 103;
        goto LABEL_214;
      case 0x10u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        a1[52] |= 0x1000u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v118[0] & 0x7F) << v53;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v11 = v54++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_187;
          }
        }

        v26 = (v55 != 0) & ~[a2 hasError];
LABEL_187:
        v113 = 100;
        goto LABEL_214;
      case 0x11u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        a1[52] |= 0x2000u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v118[0] & 0x7F) << v20;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_171;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_171:
        v113 = 101;
LABEL_214:
        *(a1 + v113) = v26;
        goto LABEL_229;
      case 0x12u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        a1[52] |= 0x800u;
        while (1)
        {
          LOBYTE(v118[0]) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v118[0] & 0x7F) << v77;
          if ((v118[0] & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            v52 = 0;
            goto LABEL_207;
          }
        }

        if ([a2 hasError])
        {
          v52 = 0;
        }

        else
        {
          v52 = v79;
        }

LABEL_207:
        v115 = 48;
LABEL_219:
        *&a1[v115] = v52;
        goto LABEL_229;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_229;
    }
  }
}

__CFString *stringForResourceNotifyTrigger(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown ResourceNotify Trigger";
  }

  else
  {
    return *(&off_27898EFB8 + a1 - 1);
  }
}

void _scheduleNotificationForCarrierSeedUser(int a1, int a2, CFStringRef theString1)
{
  v3 = CFStringCompare(theString1, @"com.apple.purplebuddy.setupdone", 0);
  v4 = debuggabilityLogHandle;
  if (v3)
  {
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "Unexpected Auto Bug Capture UI notification name!", v6, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "SetupAssistant has finished", buf, 2u);
    }

    v5 = +[ArbitratorExpertSystemHandler sharedInstance];
    [v5 setupAssistantFinished];
  }
}

uint64_t HashFact(uint64_t a1)
{
  v2 = *(**(a1 + 32) + 16) >> 3;
  result = HashMultifield(a1 + 104, 0) + 73981 * v2;
  *(a1 + 56) = result;
  return result;
}

void *AddHashedFact(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 48);
  v7 = *(v6 + 24);
  v8 = v7[48];
  if (v7[23] > v8)
  {
    v9 = v7[47];
    v10 = (2 * v8) | 1;
    FactHashTable = CreateFactHashTable(a1, v10);
    v12 = FactHashTable;
    v13 = *(a1 + 48);
    if (*(*(v13 + 24) + 384))
    {
      v14 = 0;
      do
      {
        v15 = v9[v14];
        if (v15)
        {
          do
          {
            v16 = v15[1];
            v17 = *(*v15 + 56) % v10;
            v15[1] = FactHashTable[v17];
            FactHashTable[v17] = v15;
            v15 = v16;
          }

          while (v16);
          v13 = *(a1 + 48);
        }

        ++v14;
        v18 = *(*(v13 + 24) + 384);
      }

      while (v14 < v18);
      v19 = 8 * v18;
    }

    else
    {
      v19 = 0;
    }

    rm(a1, v9, v19);
    v6 = *(a1 + 48);
    v20 = *(v6 + 24);
    *(v20 + 376) = v12;
    *(v20 + 384) = v10;
  }

  v21 = *(v6 + 472);
  v22 = *(*(v21 + 40) + 128);
  if (v22)
  {
    *(v21 + 32) = v22;
    *(*(*(v6 + 472) + 40) + 128) = **(*(v6 + 472) + 32);
    v23 = *(a1 + 48);
    result = *(*(v23 + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x10uLL);
    v23 = *(a1 + 48);
  }

  *result = a2;
  v25 = (*(v23 + 24) + 376);
  v26 = a3 % v25[1];
  v27 = *(*v25 + 8 * v26);
  *(*v25 + 8 * v26) = result;
  result[1] = v27;
  return result;
}

uint64_t RemoveHashedFact(uint64_t a1, uint64_t a2)
{
  v4 = *(**(a2 + 32) + 16) >> 3;
  v5 = HashMultifield(a2 + 104, 0) + 73981 * v4;
  *(a2 + 56) = v5;
  v6 = *(a1 + 48);
  v7 = *(*(v6 + 24) + 376);
  v8 = v5 % *(*(v6 + 24) + 384);
  v9 = *(v7 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  if (*v9 != a2)
  {
    v10 = *(v7 + 8 * v8);
    while (1)
    {
      v9 = *(v10 + 8);
      if (!v9)
      {
        return 0;
      }

      v11 = v10;
      v10 = *(v10 + 8);
      if (*v9 == a2)
      {
        goto LABEL_9;
      }
    }
  }

  v11 = 0;
LABEL_9:
  v13 = v9[1];
  if (v11)
  {
    *(v11 + 8) = v13;
  }

  else
  {
    *(v7 + 8 * v8) = v13;
    v6 = *(a1 + 48);
  }

  *(*(v6 + 472) + 32) = v9;
  **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 128);
  *(*(*(v6 + 472) + 40) + 128) = *(*(v6 + 472) + 32);
  if (*(*(*(a1 + 48) + 24) + 184) == 1)
  {
    ResetFactHashTable(a1);
  }

  return 1;
}

uint64_t ResetFactHashTable(uint64_t result)
{
  if (*(*(*(result + 48) + 24) + 384) != 100)
  {
    v1 = result;
    FactHashTable = CreateFactHashTable(result, 100);
    result = rm(v1, *(*(*(v1 + 48) + 24) + 376), 8 * *(*(*(v1 + 48) + 24) + 384));
    v3 = *(*(v1 + 48) + 24);
    *(v3 + 376) = FactHashTable;
    *(v3 + 384) = 100;
  }

  return result;
}

BOOL FactWillBeAsserted(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 48) + 24) + 392))
  {
    return 1;
  }

  v5 = *(**(a2 + 32) + 16) >> 3;
  v6 = HashMultifield(a2 + 104, 0) + 73981 * v5;
  *(a2 + 56) = v6;
  return FactExists(a1, a2, v6) == 0;
}

uint64_t FactExists(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(*(*(*(a1 + 48) + 24) + 376) + 8 * (a3 % *(*(*(a1 + 48) + 24) + 384)));
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v5 = *v3;
    if (*(a2 + 56) == *(*v3 + 56) && *(a2 + 32) == *(v5 + 32) && MultifieldsEqual(a2 + 104, v5 + 104))
    {
      break;
    }

    v3 = v3[1];
    if (!v3)
    {
      return 0;
    }
  }

  return *v3;
}

unint64_t HandleFactDuplication(void *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v6 = *(**(a2 + 32) + 16) >> 3;
  v7 = HashMultifield(a2 + 104, 0) + 73981 * v6;
  *(a2 + 56) = v7;
  if (!*(*(a1[6] + 24) + 392))
  {
    v8 = FactExists(a1, a2, v7);
    if (v8)
    {
      v9 = v8;
      ReturnFact(a1, a2);
      AddLogicalDependencies(a1, v9, 1);
      v7 = 0;
      *a3 = 1;
    }
  }

  return v7;
}

uint64_t EnvSetFactDuplication(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 24);
  result = *(v2 + 392);
  *(v2 + 392) = a2;
  return result;
}

void *InitializeFactHashTable(uint64_t a1)
{
  result = CreateFactHashTable(a1, 100);
  v3 = *(a1 + 48);
  *(*(v3 + 24) + 376) = result;
  *(*(v3 + 24) + 384) = 100;
  return result;
}

void *CreateFactHashTable(uint64_t a1, uint64_t a2)
{
  v4 = 8 * a2;
  v5 = gm3(a1, 8 * a2);
  if (!v5)
  {
    EnvExitRouter(a1, 1);
  }

  if (a2)
  {
    bzero(v5, v4);
  }

  return v5;
}

uint64_t AWDSymptomsNetworkAnalyticsScoringReadFrom(uint64_t a1, void *a2)
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
        v86 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v86 & 0x7F) << v5;
        if ((v86 & 0x80) == 0)
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
        if (v13 > 8)
        {
          switch(v13)
          {
            case 9:
              v76 = 0;
              v77 = 0;
              v78 = 0;
              *(a1 + 88) |= 0x10u;
              while (1)
              {
                v89 = 0;
                v79 = [a2 position] + 1;
                if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
                {
                  v81 = [a2 data];
                  [v81 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v78 |= (v89 & 0x7F) << v76;
                if ((v89 & 0x80) == 0)
                {
                  break;
                }

                v76 += 7;
                v11 = v77++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_176;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v78;
              }

LABEL_176:
              v83 = 40;
              break;
            case 0xA:
              v58 = 0;
              v59 = 0;
              v60 = 0;
              *(a1 + 88) |= 8u;
              while (1)
              {
                v88 = 0;
                v61 = [a2 position] + 1;
                if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                {
                  v63 = [a2 data];
                  [v63 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v60 |= (v88 & 0x7F) << v58;
                if ((v88 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v11 = v59++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_152;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v60;
              }

LABEL_152:
              v83 = 32;
              break;
            case 0xB:
              v27 = 0;
              v28 = 0;
              v29 = 0;
              *(a1 + 88) |= 4u;
              while (1)
              {
                v87 = 0;
                v30 = [a2 position] + 1;
                if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
                {
                  v32 = [a2 data];
                  [v32 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v29 |= (v87 & 0x7F) << v27;
                if ((v87 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                v11 = v28++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_168;
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

LABEL_168:
              v83 = 24;
              break;
            default:
              goto LABEL_130;
          }
        }

        else
        {
          switch(v13)
          {
            case 6:
              v70 = 0;
              v71 = 0;
              v72 = 0;
              *(a1 + 88) |= 0x40u;
              while (1)
              {
                v92 = 0;
                v73 = [a2 position] + 1;
                if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                {
                  v75 = [a2 data];
                  [v75 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v72 |= (v92 & 0x7F) << v70;
                if ((v92 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                v11 = v71++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_172;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v72;
              }

LABEL_172:
              v83 = 56;
              break;
            case 7:
              v52 = 0;
              v53 = 0;
              v54 = 0;
              *(a1 + 88) |= 1u;
              while (1)
              {
                v91 = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v91 & 0x7F) << v52;
                if ((v91 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v11 = v53++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_148;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v54;
              }

LABEL_148:
              v83 = 8;
              break;
            case 8:
              v14 = 0;
              v15 = 0;
              v16 = 0;
              *(a1 + 88) |= 2u;
              while (1)
              {
                v90 = 0;
                v17 = [a2 position] + 1;
                if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                {
                  v19 = [a2 data];
                  [v19 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v90 & 0x7F) << v14;
                if ((v90 & 0x80) == 0)
                {
                  break;
                }

                v14 += 7;
                v11 = v15++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_164;
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

LABEL_164:
              v83 = 16;
              break;
            default:
              goto LABEL_130;
          }
        }

        goto LABEL_177;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 88) |= 0x100u;
          while (1)
          {
            v95 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v95 & 0x7F) << v40;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_135;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v42;
          }

LABEL_135:
          v83 = 72;
          goto LABEL_177;
        }

        if (v13 != 2)
        {
LABEL_130:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_178;
        }

        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 88) |= 0x200u;
        while (1)
        {
          v97 = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v97 & 0x7F) << v33;
          if ((v97 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_139;
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

LABEL_139:
        v84 = 80;
      }

      else
      {
        if (v13 == 3)
        {
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 88) |= 0x80u;
          while (1)
          {
            v94 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v94 & 0x7F) << v64;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_160;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v66;
          }

LABEL_160:
          v83 = 64;
LABEL_177:
          *(a1 + v83) = v20;
          goto LABEL_178;
        }

        if (v13 != 4)
        {
          if (v13 != 5)
          {
            goto LABEL_130;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 88) |= 0x20u;
          while (1)
          {
            v93 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v93 & 0x7F) << v21;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_156;
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

LABEL_156:
          v83 = 48;
          goto LABEL_177;
        }

        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 88) |= 0x400u;
        while (1)
        {
          v96 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v96 & 0x7F) << v46;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_143;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v48;
        }

LABEL_143:
        v84 = 84;
      }

      *(a1 + v84) = v39;
LABEL_178:
      v85 = [a2 position];
    }

    while (v85 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AllocateEnvironmentData(uint64_t a1, unsigned int a2, size_t size, uint64_t a4)
{
  if (!size)
  {
    printf("\n[ENVRNMNT1] Environment data position %d allocated with size of 0 or less.\n");
    return 0;
  }

  if (a2 >= 0x64)
  {
    printf("\n[ENVRNMNT2] Environment data position %d exceeds the maximum allowed.\n");
    return 0;
  }

  if (*(*(a1 + 48) + 8 * a2))
  {
    printf("\n[ENVRNMNT3] Environment data position %d already allocated.\n");
    return 0;
  }

  *(*(a1 + 48) + 8 * a2) = EnvironmentZoneMalloc(size);
  v9 = *(*(a1 + 48) + 8 * a2);
  if (!v9)
  {
    printf("\n[ENVRNMNT4] Environment data position %d could not be allocated.\n");
    return 0;
  }

  bzero(v9, size);
  *(*(a1 + 56) + 8 * a2) = a4;
  return 1;
}

void *EnvironmentZoneMalloc(size_t size)
{
  if (clips_malloc_zone)
  {
    if (!size)
    {
      EnvironmentZoneMalloc_cold_2(&v3);
    }

    result = malloc_type_zone_malloc(clips_malloc_zone, size, 0x8529A459uLL);
    if (!result)
    {
      EnvironmentZoneMalloc_cold_1(size, &v3);
    }
  }

  else
  {
    if (!size)
    {
      EnvironmentZoneMalloc_cold_2(&v3);
    }

    result = malloc_type_malloc(size, 0x1DDBC81BuLL);
    if (!result)
    {
      [NetworkAnalyticsEngine _createJournalRecordOfType:? forInterface:? fromDict:?];
    }
  }

  return result;
}

char *CreateEnvironmentDriver()
{
  zone = malloc_create_zone(0x200000uLL, 0);
  clips_malloc_zone = zone;
  if (zone)
  {
    malloc_set_zone_name(zone, "CLIPS_malloc_zone");
  }

  else
  {
    puts("\n[ENVRNMNT9] malloc_create_zone() failed.");
  }

  v1 = EnvironmentZoneMalloc(0x50uLL);
  v2 = EnvironmentZoneMalloc(0x320uLL);
  bzero(v2, 0x320uLL);
  *v1 &= ~1u;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 5) = 0;
  *(v1 + 6) = v2;
  *(v1 + 8) = 0;
  *(v1 + 9) = 0;
  v3 = EnvironmentZoneMalloc(0x320uLL);
  bzero(v3, 0x320uLL);
  *(v1 + 7) = v3;
  EnvInitializeEnvironment(v1);
  return v1;
}

uint64_t SetEnvironmentContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  return v2;
}

uint64_t SetEnvironmentFunctionContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = a2;
  return v2;
}

uint64_t SetEnvironmentCallbackContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = a2;
  return v2;
}

uint64_t DestroyEnvironment(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 472);
  EnvReleaseMem(a1, -1);
  for (i = 0; i != 800; i += 8)
  {
    v4 = *(*(a1 + 56) + i);
    if (v4)
    {
      v4(a1);
    }
  }

  EnvironmentZoneFree(*(a1 + 56));
  v5 = *(a1 + 64);
  if (v5)
  {
    do
    {
      (*(v5 + 8))(a1);
      v5 = *(v5 + 24);
    }

    while (v5);
    v6 = *(a1 + 64);
    if (v6)
    {
      do
      {
        v7 = v6[3];
        EnvironmentZoneFree(v6);
        *(a1 + 64) = v7;
        v6 = v7;
      }

      while (v7);
    }
  }

  EnvReleaseMem(a1, -1);
  if (*v2 || *(v2 + 8))
  {
    puts("\n[ENVRNMNT8] Environment data not fully deallocated.");
    printf("\n[ENVRNMNT8] MemoryAmount = %ld.\n", *v2);
    printf("\n[ENVRNMNT8] MemoryCalls = %ld.\n", *(v2 + 8));
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  EnvironmentZoneFree(*(v2 + 40));
  for (j = 0; j != 800; j += 8)
  {
    v10 = *(*(a1 + 48) + j);
    if (v10)
    {
      EnvironmentZoneFree(v10);
      *(*(a1 + 48) + j) = 0;
    }
  }

  EnvironmentZoneFree(*(a1 + 48));
  EnvironmentZoneFree(a1);
  if (clips_malloc_zone)
  {
    malloc_destroy_zone(clips_malloc_zone);
    clips_malloc_zone = 0;
  }

  return v8;
}

void EnvironmentZoneFree(void *ptr)
{
  if (clips_malloc_zone && (v2 = malloc_zone_from_ptr(ptr), v3 = clips_malloc_zone, v2 == clips_malloc_zone))
  {
    if (ptr)
    {

      malloc_zone_free(v3, ptr);
    }
  }

  else if (ptr)
  {

    free(ptr);
  }
}

uint64_t AddEnvironmentCleanupFunction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = EnvironmentZoneMalloc(0x20uLL);
  *v8 = a2;
  v8[1] = a3;
  *(v8 + 4) = a4;
  v11 = *(a1 + 64);
  v10 = (a1 + 64);
  v9 = v11;
  if (v11)
  {
    if (*(v9 + 16) <= a4)
    {
LABEL_9:
      v8[3] = v9;
    }

    else
    {
      v12 = v9;
      while (1)
      {
        v13 = v12;
        v12 = *(v12 + 24);
        if (!v12)
        {
          break;
        }

        if (*(v12 + 16) <= a4)
        {
          if (!v13)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      v8[3] = v12;
      v10 = (v13 + 24);
    }
  }

  else
  {
    v8[3] = 0;
  }

  *v10 = v8;
  return 1;
}

uint64_t NetworkRetract(uint64_t result, uint64_t **a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v5 = *v2;
      v4 = v2[1];
      if (v4[7])
      {
        PosEntryRetractAlpha(v3, v2[1], 1);
        v4 = v2[1];
      }

      if (v4[14])
      {
        NegEntryRetractAlpha(v3, v4, 1);
        v4 = v2[1];
      }

      result = RemoveAlphaMemoryMatches(v3, v2[2], v4, v4[17]);
      v6 = v3[6];
      *(*(v6 + 472) + 32) = v2;
      **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 192);
      *(*(*(v6 + 472) + 40) + 192) = *(*(v6 + 472) + 32);
      v2 = v5;
    }

    while (v5);
  }

  return result;
}

void *PosEntryRetractAlpha(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    v5 = result;
    do
    {
      v6 = v3[2];
      v7 = v3[7];
      if (v7)
      {
        PosEntryRetractBeta(v5, v3, v7, a3);
      }

      if ((*v3 & 4) != 0)
      {
        NegEntryRetractAlpha(v5, v3, a3);
      }

      if (*(v6 + 136))
      {
        v8 = v3[3];
        if (v8)
        {
          RemoveActivation(v5, v8, 1, 1);
        }
      }

      v9 = v3[9];
      UnlinkBetaPMFromNodeAndLineage(v5, v6, v3, (*v3 >> 2) & 1);
      result = DeletePartialMatches(v5, v3);
      v3 = v9;
    }

    while (v9);
  }

  return result;
}

uint64_t NegEntryRetractAlpha(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (a2 + 112);
  v4 = *(a2 + 112);
  if (!v4)
  {
    return result;
  }

  v7 = result;
  v26 = (a2 + 112);
  do
  {
    v8 = v4[2];
    if ((*v8 & 0x1C) == 0)
    {
      result = SystemError(v7, "RETRACT", 117);
      v21 = (v4 + 15);
      goto LABEL_40;
    }

    result = RemoveBlockedLink(v4);
    v9 = *(a2 + 40);
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = *(v7 + 48);
    v11 = *(v10 + 144);
    v12 = v11[12];
    v13 = v11[13];
    v27 = v11[14];
    v11[12] = v4;
    *(*(v10 + 144) + 112) = v8;
    while (1)
    {
      ++*(v8 + 48);
      if (v9 == a2)
      {
        goto LABEL_20;
      }

      v14 = *(v9 + 2);
      if (v14)
      {
        for (i = 0; i < v14; ++i)
        {
          v16 = *(v9 + 136 + 8 * i);
          if (v16)
          {
            if (*v16)
            {
              v17 = *(**v16 + 136);
              if (v17)
              {
                result = v17(v7);
                if (!result)
                {
                  goto LABEL_20;
                }

                v14 = *(v9 + 2);
              }
            }
          }
        }
      }

      if (a3 == 1)
      {
        result = PartialMatchWillBeDeleted(v7, v9);
        if (result)
        {
          goto LABEL_20;
        }
      }

      v18 = *(v8 + 72);
      if (!v18)
      {
        goto LABEL_24;
      }

      *(*(*(v7 + 48) + 144) + 104) = v9;
      result = EvaluateJoinExpression(v7, v18, v8);
      v19 = *(*(v7 + 48) + 352);
      if (*(v19 + 8))
      {
        break;
      }

      if (result)
      {
        goto LABEL_24;
      }

LABEL_20:
      v9 = *(v9 + 40);
      if (!v9)
      {
        v20 = 1;
        goto LABEL_25;
      }
    }

    *(v19 + 8) = 0;
LABEL_24:
    result = AddBlockedLink(v4, v9);
    v20 = 0;
LABEL_25:
    v22 = *(v7 + 48);
    *(*(v22 + 144) + 96) = v12;
    *(*(v22 + 144) + 104) = v13;
    v3 = v26;
    *(*(v22 + 144) + 112) = v27;
    v21 = v26;
    if (!v20)
    {
      goto LABEL_40;
    }

LABEL_26:
    v23 = *v8;
    if ((*v8 & 0x10) != 0)
    {
      v25 = v4[7];
      v21 = v3;
      if (!v25)
      {
        goto LABEL_40;
      }

      result = PosEntryRetractBeta(v7, v4, v25, a3);
      goto LABEL_39;
    }

    v24 = *(v8 + 80);
    if ((v23 & 1) == 0 || (v23 & 0xC) == 0)
    {
      if (v24)
      {
        result = EvaluateSecondaryNetworkTest(v7, v4, v8);
        v21 = v3;
        if (!result)
        {
          goto LABEL_40;
        }
      }

      if (a3 == 1)
      {
        result = PartialMatchWillBeDeleted(v7, v4);
        v21 = v3;
        if (result)
        {
          goto LABEL_40;
        }
      }

      result = PPDrive(v7, v4, 0, v8, a3);
LABEL_39:
      v21 = v3;
      goto LABEL_40;
    }

    if (!v24 || (result = EvaluateSecondaryNetworkTest(v7, v4, v8), v21 = v3, result))
    {
      result = EPMDrive(v7, v4, v8, a3);
      goto LABEL_39;
    }

LABEL_40:
    v4 = *v21;
  }

  while (*v21);
  return result;
}

void *PosEntryRetractBeta(void *result, void *a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v7 = result;
    do
    {
      do
      {
        v8 = v5;
        v5 = v5[7];
      }

      while (v5);
      v5 = v8[12];
      if (!v5)
      {
        v5 = v8[11];
        v5[7] = 0;
      }

      if (v8[14])
      {
        NegEntryRetractAlpha(v7, v8, a4);
      }

      else if (*(v8[2] + 136))
      {
        v9 = v8[3];
        if (v9)
        {
          RemoveActivation(v7, v9, 1, 1);
        }
      }

      UnlinkNonLeftLineage(v7, v8[2], v8, (*v8 >> 2) & 1);
      if (v8[4])
      {
        RemoveLogicalSupport(v7, v8);
      }

      result = ReturnPartialMatch(v7, v8);
    }

    while (v5 != a2);
  }

  return result;
}

void *DeletePartialMatches(void *result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2[5];
      if (v2[4])
      {
        RemoveLogicalSupport(v3, v2);
      }

      result = ReturnPartialMatch(v3, v2);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

void *ReturnPartialMatch(void *result, void *ptr)
{
  v3 = result;
  if ((*ptr & 2) != 0)
  {
    v12 = result[6];
    ptr[5] = *(*(v12 + 144) + 120);
    *(*(v12 + 144) + 120) = ptr;
  }

  else
  {
    if ((*ptr & 1) == 0)
    {
      v4 = ptr[17];
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = *(v5 + 32);
          v7 = result[6];
          *(*(v7 + 472) + 32) = v5;
          **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 320);
          *(*(*(v7 + 472) + 40) + 320) = *(*(v7 + 472) + 32);
          v5 = v6;
        }

        while (v6);
        v4 = ptr[17];
      }

      result = rm(result, v4, 0x20uLL);
    }

    if (ptr[4])
    {
      result = RemovePMDependencies(v3, ptr);
    }

    v8 = *(ptr + 1);
    v9 = 8 * v8 + 136;
    v10 = v3[6];
    v11 = *(v10 + 472);
    *(v11 + 48) = v9;
    if (v8 > 0x2D)
    {

      return genfree(v3, ptr, v9);
    }

    else
    {
      *(v11 + 32) = ptr;
      **(*(v10 + 472) + 32) = *(*(*(v10 + 472) + 40) + 8 * *(*(v10 + 472) + 48));
      *(*(*(v10 + 472) + 40) + 8 * *(*(v10 + 472) + 48)) = *(*(v10 + 472) + 32);
    }
  }

  return result;
}

uint64_t PartialMatchWillBeDeleted(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(a2 + 136 + 8 * v5);
    if (!v6)
    {
      goto LABEL_9;
    }

    if (!*v6)
    {
      goto LABEL_9;
    }

    v7 = *(**v6 + 144);
    if (!v7)
    {
      goto LABEL_9;
    }

    if (v7(a1))
    {
      return 1;
    }

    v3 = *(a2 + 2);
LABEL_9:
    if (++v5 >= v3)
    {
      return 0;
    }
  }
}

uint64_t DestroyPartialMatch(uint64_t result, void *ptr)
{
  v3 = result;
  if ((*ptr & 1) == 0)
  {
    v4 = ptr[17];
    v5 = v4[1];
    if (v5)
    {
      do
      {
        v6 = *(v5 + 32);
        v7 = *(result + 48);
        *(*(v7 + 472) + 32) = v5;
        **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 320);
        *(*(*(v7 + 472) + 40) + 320) = *(*(v7 + 472) + 32);
        v5 = v6;
      }

      while (v6);
      v4 = ptr[17];
    }

    result = rm(result, v4, 0x20uLL);
  }

  if (ptr[4])
  {
    result = DestroyPMDependencies(v3, ptr);
  }

  v8 = *(ptr + 1);
  v9 = 8 * v8 + 136;
  v10 = *(v3 + 48);
  v11 = *(v10 + 472);
  *(v11 + 48) = v9;
  if (v8 > 0x2D)
  {

    return genfree(v3, ptr, v9);
  }

  else
  {
    *(v11 + 32) = ptr;
    **(*(v10 + 472) + 32) = *(*(*(v10 + 472) + 40) + 8 * *(*(v10 + 472) + 48));
    *(*(*(v10 + 472) + 40) + 8 * *(*(v10 + 472) + 48)) = *(*(v10 + 472) + 32);
  }

  return result;
}

void *FlushGarbagePartialMatches(void *result)
{
  v1 = result;
  for (i = result[6]; ; *(*(i + 144) + 128) = v5)
  {
    v3 = *(i + 144);
    v4 = *(v3 + 128);
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 16);
    *(*(i + 472) + 32) = v4;
    **(*(i + 472) + 32) = *(*(*(i + 472) + 40) + 256);
    *(*(*(i + 472) + 40) + 256) = *(*(i + 472) + 32);
    i = result[6];
  }

  for (j = *(v3 + 120); j; j = *(*(v8 + 144) + 120))
  {
    v7 = *(j + 40);
    *j &= ~2u;
    result = ReturnPartialMatch(v1, *(*(v1[6] + 144) + 120));
    v8 = v1[6];
    *(*(v8 + 144) + 120) = v7;
  }

  return result;
}