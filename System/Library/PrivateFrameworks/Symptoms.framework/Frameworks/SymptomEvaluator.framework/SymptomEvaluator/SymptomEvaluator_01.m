uint64_t EnvRefresh(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = *(v2 + 88);
      v5 = *(v4 + 56);
      if (*v5)
      {
        v6 = 0;
        do
        {
          v7 = *(v5[2] + 8 * v6);
          if (v7)
          {
            do
            {
              if (*(v7[2] + 136) && !v7[3])
              {
                AddActivation(a1, v2, v7);
              }

              v7 = v7[5];
            }

            while (v7);
            v4 = *(v2 + 88);
          }

          ++v6;
          v5 = *(v4 + 56);
        }

        while (v6 < *v5);
      }

      v2 = *(v2 + 96);
    }

    while (v2);
  }

  return 1;
}

uint64_t EnvRefreshAgenda(uint64_t a1, uint64_t a2)
{
  SaveCurrentModule(a1);
  if (a2)
  {
    v4 = a1 + 48;
    v5 = *(*(a1 + 48) + 136);
    v6 = *(v5 + 28);
    *(v5 + 28) = 1;
    v7 = a2;
  }

  else
  {
    NextDefmodule = EnvGetNextDefmodule(a1, 0);
    v4 = a1 + 48;
    v9 = *(*(a1 + 48) + 136);
    v6 = *(v9 + 28);
    *(v9 + 28) = 1;
    if (!NextDefmodule)
    {
      goto LABEL_11;
    }

    v7 = NextDefmodule;
  }

  do
  {
    EnvSetCurrentModule(a1, v7);
    ModuleItem = GetModuleItem(a1, 0, *(*(*(a1 + 48) + 128) + 8));
    if (ModuleItem)
    {
      for (i = *(ModuleItem + 32); i; i = *(i + 48))
      {
        *(i + 16) = EvaluateSalience(a1, *i);
      }
    }

    EnvReorderAgenda(a1, v7);
    if (a2)
    {
      break;
    }

    v7 = EnvGetNextDefmodule(a1, v7);
  }

  while (v7);
  v9 = *(*v4 + 136);
LABEL_11:
  *(v9 + 28) = v6;

  return RestoreCurrentModule(a1);
}

uint64_t EnvSetSalienceEvaluation(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 136);
  result = *(v2 + 28);
  *(v2 + 28) = a2;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_232590928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232591CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ParseDefgeneric(uint64_t a1, char *a2)
{
  SetPPBufferStatus(a1, 1);
  FlushPPBuffer(a1);
  SavePPBuffer(a1, "(defgeneric ");
  SetIndentDepth(a1, 3);
  v4 = Bloaded(a1);
  v5 = *(a1 + 48);
  if (v4 == 1 && !*(*(v5 + 336) + 40))
  {
    CannotLoadWithBloadMessage(a1, "defgeneric");
    return 1;
  }

  else
  {
    v6 = 1;
    ConstructNameAndComment = GetConstructNameAndComment(a1, a2, (*(v5 + 216) + 168), "defgeneric", EnvFindDefgenericInModule, 0, "^", 1, 1, 1, 0);
    if (ConstructNameAndComment)
    {
      v8 = ConstructNameAndComment;
      if (ValidGenericName(a1, ConstructNameAndComment[3]))
      {
        if (*(*(*(a1 + 48) + 216) + 168) == 171)
        {
          SavePPBuffer(a1, "\n");
          if (!*(*(*(a1 + 48) + 336) + 40))
          {
            v9 = AddGeneric(a1, v8, &v12);
            if (EnvGetConserveMemory(a1))
            {
              v10 = 0;
            }

            else
            {
              v10 = CopyPPBuffer(a1);
            }

            EnvSetDefgenericPPForm(a1, v9, v10);
          }

          return 0;
        }

        else
        {
          PrintErrorID(a1, "GENRCPSR", 1, 0);
          EnvPrintRouter(a1, "werror", "Expected ')' to complete defgeneric.\n");
        }
      }
    }
  }

  return v6;
}

uint64_t ValidGenericName(uint64_t a1, char *a2)
{
  if (FindConstruct(a1, a2))
  {
    PrintErrorID(a1, "GENRCPSR", 3, 0);
    v4 = "Defgenerics are not allowed to replace constructs.\n";
    goto LABEL_3;
  }

  v7 = LookupDeffunctionInScope(a1, a2);
  if (v7)
  {
    v8 = v7;
    v9 = *GetConstructModuleItem(v7);
    if (v9 != EnvGetCurrentModule(a1))
    {
      PrintErrorID(a1, "GENRCPSR", 4, 0);
      EnvPrintRouter(a1, "werror", "Deffunction ");
      DefruleName = EnvGetDefruleName(a1, v8);
      EnvPrintRouter(a1, "werror", DefruleName);
      EnvPrintRouter(a1, "werror", " imported from module ");
      ConstructNameString = EnvGetConstructNameString(a1, v9);
      EnvPrintRouter(a1, "werror", ConstructNameString);
      v4 = " conflicts with this defgeneric.\n";
      v5 = a1;
      goto LABEL_4;
    }

    PrintErrorID(a1, "GENRCPSR", 5, 0);
    v4 = "Defgenerics are not allowed to replace deffunctions.\n";
LABEL_3:
    v5 = a1;
LABEL_4:
    EnvPrintRouter(v5, "werror", v4);
    return 0;
  }

  DefgenericInModule = EnvFindDefgenericInModule(a1, a2);
  if (DefgenericInModule)
  {
    v13 = DefgenericInModule;
    if (MethodsExecuting(DefgenericInModule))
    {
      MethodAlterError(a1, v13);
      return 0;
    }
  }

  Function = FindFunction(a1, a2);
  if (Function && !*(Function + 24))
  {
    PrintErrorID(a1, "GENRCPSR", 16, 0);
    EnvPrintRouter(a1, "werror", "The system function ");
    EnvPrintRouter(a1, "werror", a2);
    v4 = " cannot be overloaded.\n";
    v5 = a1;
    goto LABEL_4;
  }

  return 1;
}

void *AddGeneric(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  DefgenericInModule = EnvFindDefgenericInModule(a1, *(a2 + 24));
  if (!DefgenericInModule)
  {
    *a3 = 1;
    v8 = *(a1 + 48);
    v9 = *(v8 + 472);
    v10 = *(*(v9 + 40) + 576);
    if (v10)
    {
      *(v9 + 32) = v10;
      *(*(*(v8 + 472) + 40) + 576) = **(*(v8 + 472) + 32);
      v7 = *(*(*(a1 + 48) + 472) + 32);
    }

    else
    {
      v7 = genalloc(a1, 0x48uLL);
    }

    InitializeConstructHeader(a1, "defgeneric", v7, a2);
    v7[7] = 0;
    *(v7 + 16) = 0x10000;
    v11 = *(*(*(a1 + 48) + 216) + 128);
    *(v7 + 12) = 0;
    *(v7 + 13) = v11;
    ++*(a2 + 8);
    AddImplicitMethods(a1, v7);
    goto LABEL_8;
  }

  v7 = DefgenericInModule;
  *a3 = 0;
  if (!*(*(*(a1 + 48) + 336) + 40))
  {
    RemoveConstructFromModule(a1, DefgenericInModule);
LABEL_8:
    AddConstructToModule(v7);
  }

  return v7;
}

uint64_t ParseDefmethod(uint64_t a1, char *a2)
{
  v4 = 1;
  SetPPBufferStatus(a1, 1);
  FlushPPBuffer(a1);
  SetIndentDepth(a1, 3);
  SavePPBuffer(a1, "(defmethod ");
  v5 = Bloaded(a1);
  v6 = *(a1 + 48);
  if (v5 == 1 && !*(*(v6 + 336) + 40))
  {
    CannotLoadWithBloadMessage(a1, "defmethod");
    return v4;
  }

  ConstructNameAndComment = GetConstructNameAndComment(a1, a2, (*(v6 + 216) + 168), "defgeneric", EnvFindDefgenericInModule, 0, "&", 1, 0, 1, 1);
  if (ConstructNameAndComment)
  {
    v8 = ConstructNameAndComment;
    v9 = *(*(*(a1 + 48) + 216) + 168);
    if (v9 == 1)
    {
      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, " ");
      SavePPBuffer(a1, *(*(*(a1 + 48) + 216) + 184));
      v10 = *(*(*(*(a1 + 48) + 216) + 176) + 24);
      if (v10 < 1)
      {
        PrintErrorID(a1, "GENRCPSR", 6, 0);
        EnvPrintRouter(a1, "werror", "Method index out of range.\n");
        return v4;
      }

      PPCRAndIndent(a1);
      GetToken(a1, a2, (*(*(a1 + 48) + 216) + 168));
      v9 = *(*(*(a1 + 48) + 216) + 168);
    }

    else
    {
      v10 = 0;
    }

    if (v9 == 3)
    {
      PPBackup(a1);
      PPBackup(a1);
      SavePPBuffer(a1, " ");
      SavePPBuffer(a1, *(*(*(a1 + 48) + 216) + 184));
      PPCRAndIndent(a1);
      GetToken(a1, a2, (*(*(a1 + 48) + 216) + 168));
    }

    if (ValidGenericName(a1, *(v8 + 24)))
    {
      v123 = 0;
      v124 = 0;
      v11 = AddGeneric(a1, v8, &v124);
      if (v124 && !*(*(*(a1 + 48) + 336) + 40))
      {
        CurrentModule = EnvGetCurrentModule(a1);
        ConstructNameString = EnvGetConstructNameString(a1, CurrentModule);
        DefruleName = EnvGetDefruleName(a1, v11);
        v15 = strlen(ConstructNameString);
        v16 = strlen(DefruleName);
        v17 = gm2(a1, v15 + v16 + 17);
        gensprintf(v17, "(defgeneric %s::%s)\n", v18, v19, v20, v21, v22, v23, ConstructNameString);
        EnvSetDefgenericPPForm(a1, v11, v17);
      }

      IncrementIndentDepth(a1, 1);
      v24 = *(*(a1 + 48) + 216);
      v26 = *(v24 + 168);
      v25 = (v24 + 168);
      if (v26 != 170)
      {
        PrintErrorID(a1, "GENRCPSR", 7, 0);
        v44 = "Expected a '(' to begin method parameter restrictions.\n";
        goto LABEL_28;
      }

      v125 = 0;
      GetToken(a1, a2, v25);
      v27 = *(*(a1 + 48) + 216);
      v28 = (v27 + 168);
      v29 = *(v27 + 168);
      if (v29 == 171)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        goto LABEL_17;
      }

      v31 = 0;
      v32 = 0;
      v30 = 0;
      v126 = 0;
      v122 = v11;
      v121 = v10;
LABEL_31:
      if (v31)
      {
        DeleteTempRestricts(a1, v30);
        PrintErrorID(a1, "PRCCODE", 8, 0);
        v44 = "No parameters allowed after wildcard parameter.\n";
      }

      else
      {
        if ((v29 - 35) < 2)
        {
          v45 = *(v27 + 176);
          if (!DuplicateParameters(a1, v30, &v126, v45))
          {
            v46 = *(a1 + 48);
            if (*(*(v46 + 216) + 168) == 36)
            {
              v31 = v45;
            }

            else
            {
              v31 = 0;
            }

            v47 = *(v46 + 472);
            v48 = *(*(v47 + 40) + 192);
            if (v48)
            {
              *(v47 + 32) = v48;
              *(*(*(v46 + 472) + 40) + 192) = **(*(v46 + 472) + 32);
              v49 = *(*(*(a1 + 48) + 472) + 32);
            }

            else
            {
              v49 = genalloc(a1, 0x18uLL);
            }

            v49[8] = 0;
            *v49 = 0;
            ReturnExpression(a1, 0);
            *(v49 + 1) = 0;
            v60 = v126;
            v61 = GenConstant(a1, 2, v45);
            if (v30)
            {
LABEL_107:
              *(v60 + 24) = v61;
            }

            else
            {
              v30 = v61;
            }

            goto LABEL_108;
          }

          goto LABEL_148;
        }

        if (v29 == 170)
        {
          GetToken(a1, a2, v28);
          v50 = *(*(a1 + 48) + 216);
          if (*(v50 + 168) - 35 < 2)
          {
            v51 = *(v50 + 176);
            if (DuplicateParameters(a1, v30, &v126, v51))
            {
              goto LABEL_148;
            }

            if (*(*(*(a1 + 48) + 216) + 168) == 36)
            {
              v31 = v51;
            }

            else
            {
              v31 = 0;
            }

            SavePPBuffer(a1, " ");
            GetToken(a1, a2, (*(*(a1 + 48) + 216) + 168));
            v52 = 0;
            v53 = 0;
            v54 = *(*(a1 + 48) + 216);
            v55 = *(v54 + 168);
            if (v55 == 171)
            {
              goto LABEL_46;
            }

            v53 = 0;
            v62 = 0;
            while (!v53)
            {
              if (v55 == 170)
              {
                v65 = Function1Parse(a1, a2);
                if (v65)
                {
                  v53 = v65;
                  if (!GetParsedBindNames(a1))
                  {
                    goto LABEL_76;
                  }

                  PrintErrorID(a1, "GENRCPSR", 12, 0);
                  v90 = "Binds are not allowed in query expressions.\n";
LABEL_144:
                  EnvPrintRouter(a1, "werror", v90);
                  v100 = a1;
                  v101 = v53;
LABEL_145:
                  ReturnExpression(v100, v101);
                }

                v102 = a1;
                v103 = v62;
                goto LABEL_147;
              }

              if (v55 == 33)
              {
                v53 = GenConstant(a1, 33, *(v54 + 176));
LABEL_76:
                v52 = v62;
                goto LABEL_77;
              }

              if (v55 != 2)
              {
                PrintErrorID(a1, "GENRCPSR", 13, 0);
                EnvPrintRouter(a1, "werror", "Expected a valid type name or query.\n");
                v100 = a1;
                v101 = 0;
                goto LABEL_145;
              }

              v63 = *(*(v54 + 176) + 24);
              if (!strcmp(v63, "INTEGER"))
              {
                v64 = 1;
              }

              else if (!strcmp(v63, "FLOAT"))
              {
                v64 = 0;
              }

              else if (!strcmp(v63, "SYMBOL"))
              {
                v64 = 2;
              }

              else if (!strcmp(v63, "STRING"))
              {
                v64 = 3;
              }

              else if (!strcmp(v63, "MULTIFIELD"))
              {
                v64 = 4;
              }

              else if (!strcmp(v63, "EXTERNAL-ADDRESS"))
              {
                v64 = 5;
              }

              else if (!strcmp(v63, "FACT-ADDRESS"))
              {
                v64 = 6;
              }

              else if (!strcmp(v63, "NUMBER"))
              {
                v64 = 11;
              }

              else if (!strcmp(v63, "LEXEME"))
              {
                v64 = 12;
              }

              else if (!strcmp(v63, "ADDRESS"))
              {
                v64 = 13;
              }

              else if (!strcmp(v63, "PRIMITIVE"))
              {
                v64 = 10;
              }

              else if (!strcmp(v63, "OBJECT"))
              {
                v64 = 9;
              }

              else if (!strcmp(v63, "INSTANCE"))
              {
                v64 = 14;
              }

              else if (!strcmp(v63, "INSTANCE-NAME"))
              {
                v64 = 8;
              }

              else
              {
                if (strcmp(v63, "INSTANCE-ADDRESS"))
                {
                  PrintErrorID(a1, "GENRCPSR", 14, 0);
                  EnvPrintRouter(a1, "werror", "Unknown type in method.\n");
LABEL_165:
                  ReturnExpression(a1, v62);
                  v102 = a1;
                  v103 = 0;
LABEL_147:
                  ReturnExpression(v102, v103);
LABEL_148:
                  DeleteTempRestricts(a1, v30);
LABEL_149:
                  DecrementIndentDepth(a1, 1);
                  goto LABEL_150;
                }

                v64 = 7;
              }

              v66 = EnvAddLong(a1, v64);
              v67 = GenConstant(a1, 1, v66);
              if (!v67)
              {
                goto LABEL_165;
              }

              v52 = v67;
              if (!v62)
              {
                v53 = 0;
                goto LABEL_77;
              }

              v118 = v51;
              v119 = v62;
              v68 = v62;
              while (2)
              {
                v69 = v68;
                v70 = v52;
                do
                {
                  v71 = *(v69 + 8);
                  v72 = *(v70 + 8);
                  if (v71 == v72)
                  {
                    PrintErrorID(a1, "GENRCPSR", 11, 0);
                    v87 = "Duplicate types not allowed in parameter restriction.\n";
                    v88 = a1;
                    goto LABEL_122;
                  }

                  v75 = *(v71 + 24);
                  v74 = (v71 + 24);
                  v73 = v75;
                  v77 = *(v72 + 24);
                  v76 = (v72 + 24);
                  if (SubsumeType(v73, v77))
                  {
                    v76 = v74;
LABEL_121:
                    v89 = TypeName(a1, *v76);
                    PrintErrorID(a1, "GENRCPSR", 15, 0);
                    EnvPrintRouter(a1, "werror", v89);
                    v87 = " class is redundant.\n";
                    v88 = a1;
LABEL_122:
                    EnvPrintRouter(v88, "werror", v87);
                    ReturnExpression(a1, 0);
                    ReturnExpression(a1, v119);
                    ReturnExpression(a1, v52);
                    v11 = v122;
                    goto LABEL_148;
                  }

                  if (SubsumeType(*v76, *v74))
                  {
                    goto LABEL_121;
                  }

                  v70 = *(v70 + 24);
                }

                while (v70);
                v68 = *(v69 + 24);
                if (v68)
                {
                  continue;
                }

                break;
              }

              v53 = 0;
              *(v69 + 24) = v52;
              v51 = v118;
              v52 = v119;
              v11 = v122;
LABEL_77:
              SavePPBuffer(a1, " ");
              GetToken(a1, a2, (*(*(a1 + 48) + 216) + 168));
              v54 = *(*(a1 + 48) + 216);
              v55 = *(v54 + 168);
              v62 = v52;
              if (v55 == 171)
              {
LABEL_46:
                PPBackup(a1);
                PPBackup(a1);
                SavePPBuffer(a1, ")");
                if (!(v52 | v53))
                {
                  PrintErrorID(a1, "GENRCPSR", 13, 0);
                  EnvPrintRouter(a1, "werror", "Expected a valid type name or query.\n");
                  goto LABEL_148;
                }

                v56 = v51;
                v57 = *(a1 + 48);
                v58 = *(v57 + 472);
                v59 = *(*(v58 + 40) + 192);
                if (v59)
                {
                  *(v58 + 32) = v59;
                  *(*(*(v57 + 472) + 40) + 192) = **(*(v57 + 472) + 32);
                  v49 = *(*(*(a1 + 48) + 472) + 32);
                }

                else
                {
                  v49 = genalloc(a1, 0x18uLL);
                }

                *(v49 + 1) = v53;
                PackRestrictionTypes(a1, v49, v52);
                v60 = v126;
                v61 = GenConstant(a1, 2, v56);
                if (v30)
                {
                  v10 = v121;
                  v11 = v122;
                  goto LABEL_107;
                }

                v30 = v61;
                v10 = v121;
                v11 = v122;
LABEL_108:
                v61[2] = v49;
                ++v32;
                PPCRAndIndent(a1);
                GetToken(a1, a2, (*(*(a1 + 48) + 216) + 168));
                v27 = *(*(a1 + 48) + 216);
                v28 = (v27 + 168);
                v29 = *(v27 + 168);
                if (v29 == 171)
                {
                  PPBackup(a1);
                  PPBackup(a1);
                  SavePPBuffer(a1, ")");
LABEL_17:
                  DecrementIndentDepth(a1, 1);
                  PPCRAndIndent(a1);
                  if (v30)
                  {
                    v33 = v30;
                    while (1)
                    {
                      ReplaceCurrentArgRefs(a1, *(*(v33 + 16) + 8));
                      if (ReplaceProcVars(a1, "method", *(*(v33 + 16) + 8), v30, v31, 0, 0))
                      {
                        break;
                      }

                      v33 = *(v33 + 24);
                      if (!v33)
                      {
                        goto LABEL_21;
                      }
                    }

LABEL_136:
                    DeleteTempRestricts(a1, v30);
LABEL_150:
                    if (v124)
                    {
                      RemoveConstructFromModule(a1, v11);
                      RemoveDefgeneric(a1, v11);
                    }

                    return 1;
                  }

LABEL_21:
                  MethodByRestrictions = FindMethodByRestrictions(v11, v30, v32, v31, &v125);
                  v35 = MethodByRestrictions;
                  if (MethodByRestrictions)
                  {
                    if ((MethodByRestrictions[8] & 1) == 0)
                    {
                      if (v10 && v10 != *MethodByRestrictions)
                      {
                        v36 = v11;
                        PrintErrorID(a1, "GENRCPSR", 2, 0);
                        EnvPrintRouter(a1, "werror", "New method #");
                        PrintLongInteger(a1, "werror", v10, v37, v38, v39, v40, v41);
                        v42 = " would be indistinguishable from method #";
                        v43 = a1;
                        goto LABEL_117;
                      }

LABEL_115:
                      v81 = 1;
LABEL_127:
                      v91 = *(a1 + 48);
                      *(*(v91 + 360) + 80) = 1;
                      v92 = ParseProcActions(a1, "method", a2, (*(v91 + 216) + 168), v30, v31, 0, 0, &v123, 0);
                      v93 = v92;
                      v94 = *(a1 + 48);
                      if (*(*(v94 + 216) + 168) != 171 && v92 != 0)
                      {
                        SyntaxErrorMessage(a1, "defmethod");
                        DeleteTempRestricts(a1, v30);
                        ReturnPackedExpression(a1, v93);
                        goto LABEL_150;
                      }

                      if (!v92)
                      {
                        goto LABEL_136;
                      }

                      if (*(*(v94 + 336) + 40))
                      {
                        DeleteTempRestricts(a1, v30);
                        ReturnPackedExpression(a1, v93);
                        if (v124)
                        {
                          RemoveConstructFromModule(a1, v11);
                          RemoveDefgeneric(a1, v11);
                        }
                      }

                      else
                      {
                        v120 = v81;
                        v96 = v11;
                        PPBackup(a1);
                        PPBackup(a1);
                        SavePPBuffer(a1, *(*(*(a1 + 48) + 216) + 184));
                        SavePPBuffer(a1, "\n");
                        v97 = v125;
                        v98 = v123;
                        if (EnvGetConserveMemory(a1))
                        {
                          v99 = 0;
                        }

                        else
                        {
                          v99 = CopyPPBuffer(a1);
                        }

                        v105 = AddMethod(a1, v96, v35, v97, v10, v30, v32, v98, v31, v93, v99, 0);
                        DeleteTempRestricts(a1, v30);
                        if (GetPrintWhileLoading(a1) && GetCompilationsWatch(a1) && !*(*(*(a1 + 48) + 336) + 40))
                        {
                          if (v120)
                          {
                            PrintWarningID(a1, "CSTRCPSR", 1, 1);
                            v106 = "wwarning";
                            EnvPrintRouter(a1, "wwarning", "Method #");
                            PrintLongInteger(a1, "wwarning", *v105, v107, v108, v109, v110, v111);
                            v112 = " redefined.\n";
                          }

                          else
                          {
                            v106 = "wdialog";
                            EnvPrintRouter(a1, "wdialog", "   Method #");
                            PrintLongInteger(a1, "wdialog", *v105, v113, v114, v115, v116, v117);
                            v112 = " defined.\n";
                          }

                          EnvPrintRouter(a1, v106, v112);
                        }
                      }

                      return 0;
                    }

                    v36 = v11;
                    PrintErrorID(a1, "GENRCPSR", 17, 0);
                    v42 = "Cannot replace the implicit system method #";
                    v43 = a1;
LABEL_117:
                    EnvPrintRouter(v43, "werror", v42);
                    v79 = *v35;
                  }

                  else
                  {
                    if (!v10)
                    {
                      v81 = 0;
                      goto LABEL_127;
                    }

                    v78 = v11;
                    v79 = v10;
                    MethodByIndex = FindMethodByIndex(v78, v10);
                    if (MethodByIndex == -1)
                    {
                      v81 = 0;
                      v11 = v78;
                      goto LABEL_127;
                    }

                    v36 = v78;
                    if ((*(*(v78 + 56) + 56 * MethodByIndex + 16) & 1) == 0)
                    {
                      v11 = v78;
                      goto LABEL_115;
                    }

                    PrintErrorID(a1, "GENRCPSR", 17, 0);
                    EnvPrintRouter(a1, "werror", "Cannot replace the implicit system method #");
                  }

                  PrintLongInteger(a1, "werror", v79, v82, v83, v84, v85, v86);
                  EnvPrintRouter(a1, "werror", ".\n");
                  DeleteTempRestricts(a1, v30);
                  v11 = v36;
                  goto LABEL_150;
                }

                goto LABEL_31;
              }
            }

            PrintErrorID(a1, "GENRCPSR", 10, 0);
            v90 = "Query must be last in parameter restriction.\n";
            goto LABEL_144;
          }

          DeleteTempRestricts(a1, v30);
          PrintErrorID(a1, "GENRCPSR", 8, 0);
          v44 = "Expected a variable for parameter specification.\n";
        }

        else
        {
          DeleteTempRestricts(a1, v30);
          PrintErrorID(a1, "GENRCPSR", 9, 0);
          v44 = "Expected a variable or '(' for parameter specification.\n";
        }
      }

LABEL_28:
      EnvPrintRouter(a1, "werror", v44);
      goto LABEL_149;
    }
  }

  return v4;
}

uint64_t ReplaceCurrentArgRefs(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      if (*v2 == 35)
      {
        result = strcmp(*(*(v2 + 8) + 24), "current-argument");
        if (!result)
        {
          *v2 = 30;
          result = FindFunction(v3, "(gnrc-current-arg)");
          *(v2 + 8) = result;
        }
      }

      if (*(v2 + 16))
      {
        result = ReplaceCurrentArgRefs(v3);
      }

      v2 = *(v2 + 24);
    }

    while (v2);
  }

  return result;
}

uint64_t DeleteTempRestricts(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 + 16);
      v5 = *(v3 + 48);
      *(*(v5 + 472) + 32) = v2;
      v2 = *(v2 + 24);
      **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 256);
      *(*(*(v5 + 472) + 40) + 256) = *(*(v5 + 472) + 32);
      result = ReturnExpression(v3, *(v4 + 8));
      if (*(v4 + 16))
      {
        result = rm(v3, *v4, 8 * *(v4 + 16));
      }

      v6 = *(v3 + 48);
      *(*(v6 + 472) + 32) = v4;
      **(*(v6 + 472) + 32) = *(*(*(v6 + 472) + 40) + 192);
      *(*(*(v6 + 472) + 40) + 192) = *(*(v6 + 472) + 32);
    }

    while (v2);
  }

  return result;
}

uint64_t FindMethodByRestrictions(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  v5 = (a3 - 1);
  if (a4)
  {
    v6 = a3 - 1;
  }

  else
  {
    v6 = a3;
  }

  v31 = v6;
  if (*(a1 + 64) >= 1)
  {
    v30 = a5;
    v8 = 0;
    v10 = a3 == -1 || a4 != 0;
    v36 = v10;
    v35 = a3;
    v32 = a1;
    while (1)
    {
      v11 = *(a1 + 56) + 56 * v8;
      if (a3 < 1)
      {
        break;
      }

      v12 = 0;
      v13 = 0;
      v14 = a2;
      do
      {
        v15 = *(v11 + 8);
        if (v12 >= v15)
        {
          break;
        }

        v16 = !v36;
        if (v12 != v5)
        {
          v16 = 1;
        }

        if (v16)
        {
          if (!a4 && v12 == v15 - 1 && *(v11 + 12) == -1)
          {
            goto LABEL_56;
          }
        }

        else if (*(v11 + 12) != -1)
        {
          goto LABEL_54;
        }

        v17 = *(v14 + 16);
        v18 = *(v11 + 24) + 24 * v12;
        v19 = *(v17 + 16);
        LODWORD(v20) = *(v18 + 16);
        if (*(v17 + 16))
        {
          if (!*(v18 + 16))
          {
            goto LABEL_56;
          }

          if (v19 < 1)
          {
            v25 = 0;
          }

          else
          {
            v21 = 0;
            v22 = 0;
            while (1)
            {
              v20 = *(v18 + 16);
              if (v22 >= v20)
              {
                break;
              }

              v23 = *(*v17 + 8 * v22);
              v24 = *(*v18 + 8 * v22);
              if (v23 != v24)
              {
                if (SubsumeType(*(v23 + 24), *(v24 + 24)))
                {
                  goto LABEL_56;
                }

                if (SubsumeType(*(*(*v18 + 8 * v22) + 24), *(*(*v17 + 8 * v22) + 24)))
                {
                  goto LABEL_54;
                }

                LOWORD(v19) = *(v17 + 16);
                v21 = 1;
              }

              if (++v22 >= v19)
              {
                LOWORD(v20) = *(v18 + 16);
                break;
              }
            }

            v25 = v21 != 0;
          }

          if (v19 < v20)
          {
            goto LABEL_56;
          }

          if (v19 > v20)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v25 = v20 != 0;
        }

        if (v25)
        {
          goto LABEL_54;
        }

        v26 = *(v17 + 8);
        v27 = *(v18 + 8);
        if (v26)
        {
          if (!v27)
          {
            goto LABEL_56;
          }
        }

        else if (v27)
        {
          goto LABEL_54;
        }

        if (!IdenticalExpression(v26, v27))
        {
          v13 = 1;
        }

        v14 = *(v14 + 24);
        ++v12;
      }

      while (v12 != v35);
      if (*(v11 + 8) != a3)
      {
        goto LABEL_51;
      }

      if (!v13)
      {
        goto LABEL_59;
      }

LABEL_54:
      ++v8;
      a1 = v32;
      if (v8 >= *(v32 + 64))
      {
        a5 = v30;
        goto LABEL_58;
      }
    }

    if (*(v11 + 8) == a3)
    {
LABEL_59:
      *v30 = -1;
      return *(v32 + 56) + 56 * v8;
    }

LABEL_51:
    v28 = v36;
    if (v31 > *(v11 + 10))
    {
      v28 = 0;
    }

    if (!v28)
    {
LABEL_56:
      result = 0;
      *v30 = v8;
      return result;
    }

    goto LABEL_54;
  }

  LODWORD(v8) = 0;
LABEL_58:
  result = 0;
  *a5 = v8;
  return result;
}

uint64_t AddMethod(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, __int16 a8, uint64_t a9, uint64_t *a10, uint64_t a11, int a12)
{
  *(*(*(a1 + 48) + 216) + 160) = *(a2 + 48);
  if (a3)
  {
    v18 = a3;
    ExpressionDeinstall(a1, *(a3 + 32));
    ReturnPackedExpression(a1, *(v18 + 32));
    v19 = *(v18 + 40);
    if (v19)
    {
      v20 = strlen(*(v18 + 40));
      rm(a1, v19, v20 + 1);
    }
  }

  else if (!a5 || (MethodByIndex = FindMethodByIndex(a2, a5), MethodByIndex == -1))
  {
    v58 = a8;
    v29 = gm2(a1, 56 * *(a2 + 64) + 56);
    v30 = v29;
    if (*(a2 + 64) >= 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      do
      {
        if (a4 == v33)
        {
          ++v32;
        }

        v34 = &v29[7 * v32];
        v35 = (*(a2 + 56) + v31);
        v36 = *v35;
        v37 = v35[1];
        v38 = v35[2];
        v34[6] = *(v35 + 6);
        *(v34 + 1) = v37;
        *(v34 + 2) = v38;
        *v34 = v36;
        ++v33;
        ++v32;
        v31 += 56;
      }

      while (v33 < *(a2 + 64));
    }

    if (a5)
    {
      v39 = a4;
      LOWORD(v29[7 * a4]) = a5;
      if (*(a2 + 66) <= a5)
      {
        *(a2 + 66) = a5 + 1;
      }
    }

    else
    {
      v40 = *(a2 + 66);
      *(a2 + 66) = v40 + 1;
      v39 = a4;
      LOWORD(v29[7 * a4]) = v40;
    }

    v18 = &v29[7 * v39];
    *(v18 + 4) = 0;
    v41 = *(v18 + 16) & 0xFC | (2 * (*(*(*(a1 + 48) + 216) + 132) & 1));
    *(v18 + 8) = 0;
    *(v18 + 16) = v41;
    *(v18 + 40) = 0u;
    *(v18 + 24) = 0u;
    if (*(a2 + 64))
    {
      rm(a1, *(a2 + 56), 56 * *(a2 + 64));
      v42 = *(a2 + 64) + 1;
    }

    else
    {
      v42 = 1;
    }

    *(a2 + 64) = v42;
    *(a2 + 56) = v30;
    a8 = v58;
  }

  else
  {
    v23 = MethodByIndex;
    DeleteMethodInfo(a1, a2, *(a2 + 56) + 56 * MethodByIndex);
    if (v23 >= a4)
    {
      v24 = a4;
      if (v23 > a4)
      {
        v43 = 56 * v23;
        do
        {
          --v23;
          v44 = *(a2 + 56) + v43;
          v45 = *(v44 - 40);
          *v44 = *(v44 - 56);
          *(v44 + 16) = v45;
          *(v44 + 32) = *(v44 - 24);
          *(v44 + 48) = *(v44 - 8);
          v43 -= 56;
        }

        while (v23 > a4);
      }
    }

    else
    {
      v24 = --a4;
      v25 = a4 - v23;
      if (a4 > v23)
      {
        v26 = 56 * v23;
        do
        {
          v27 = *(a2 + 56) + v26;
          v28 = *(v27 + 72);
          *v27 = *(v27 + 56);
          *(v27 + 16) = v28;
          *(v27 + 32) = *(v27 + 88);
          *(v27 + 48) = *(v27 + 104);
          v26 += 56;
          --v25;
        }

        while (v25);
      }
    }

    v18 = *(a2 + 56) + 56 * v24;
    *v18 = a5;
  }

  *(v18 + 16) &= ~1u;
  *(v18 + 32) = a10;
  ExpressionInstall(a1, a10);
  *(v18 + 40) = a11;
  if (a4 != -1)
  {
    *(v18 + 14) = a8;
    *(v18 + 8) = a7;
    if (a9)
    {
      v46 = -1;
    }

    else
    {
      v46 = a7;
    }

    *(v18 + 12) = v46;
    *(v18 + 10) = a7 - (a9 != 0);
    if (a7)
    {
      *(v18 + 24) = gm2(a1, 24 * a7);
      if (a7 >= 1)
      {
        v47 = 0;
        do
        {
          v48 = *(v18 + 24) + 24 * v47;
          v49 = *(a6 + 16);
          v50 = PackExpression(a1, *(v49 + 8));
          *(v48 + 8) = v50;
          v51 = *(v49 + 16);
          *(v48 + 16) = v51;
          v52 = *v49;
          if (a12)
          {
            if (v52)
            {
              v53 = gm2(a1, 8 * v51);
              *v48 = v53;
              memcpy(v53, *v49, 8 * *(v48 + 16));
              v50 = *(v48 + 8);
            }

            else
            {
              *v48 = 0;
            }
          }

          else
          {
            *v48 = v52;
            *(v49 + 16) = 0;
            *v49 = 0;
          }

          ExpressionInstall(a1, v50);
          v54 = *(v48 + 16);
          if (v54 >= 1)
          {
            v55 = *v48;
            do
            {
              v56 = *v55++;
              ++*(v56 + 8);
              --v54;
            }

            while (v54);
          }

          a6 = *(a6 + 24);
          ++v47;
        }

        while (v47 != a7);
      }
    }

    else
    {
      *(v18 + 24) = 0;
    }
  }

  *(a2 + 48) = *(*(*(a1 + 48) + 216) + 160);
  return v18;
}

uint64_t PackRestrictionTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 16) = 0;
  if (!a3)
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = a3;
  do
  {
    ++v6;
    v7 = *(v7 + 24);
  }

  while (v7);
  *(a2 + 16) = v6;
  if (v6)
  {
    v8 = gm2(a1, 8 * v6);
    v9 = *(a2 + 16);
    *a2 = v8;
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = a3;
      do
      {
        *(*a2 + 8 * v10++) = *(v11 + 8);
        v11 = *(v11 + 24);
      }

      while (v9 != v10);
    }
  }

  else
  {
LABEL_9:
    *a2 = 0;
  }

  return ReturnExpression(a1, a3);
}

uint64_t DuplicateParameters(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *a3 = 0;
  if (!a2)
  {
    return 0;
  }

  while (*(a2 + 8) != a4)
  {
    *a3 = a2;
    a2 = *(a2 + 24);
    if (!a2)
    {
      return 0;
    }
  }

  PrintErrorID(a1, "PRCCODE", 7, 0);
  EnvPrintRouter(a1, "werror", "Duplicate parameter names not allowed.\n");
  return 1;
}

uint64_t DeallocateDeffunctionBloadData(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 48) + 192);
  v3 = 88 * *(v2 + 8);
  if (v3)
  {
    result = genfree(result, *v2, v3);
    v2 = *(*(v1 + 48) + 192);
  }

  v4 = 24 * *(v2 + 16);
  if (v4)
  {
    v5 = *(v2 + 24);

    return genfree(v1, v5, v4);
  }

  return result;
}

uint64_t BsaveDeffunctionFind(uint64_t a1)
{
  SaveBloadCount(a1, *(*(*(a1 + 48) + 192) + 16));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 192) + 8));
  v2 = *(*(a1 + 48) + 184);
  *(*(*(a1 + 48) + 192) + 8) = 0;
  result = DoForAllConstructs(a1, MarkDeffunctionItems, *(v2 + 8), 0, 0);
  *(*(*(a1 + 48) + 192) + 16) = result;
  return result;
}

const void *BsaveStorageDeffunctions(uint64_t a1, FILE *__stream)
{
  v5 = 16;
  GenWrite(&v5, 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 192) + 16), 8uLL, __stream);
  return GenWrite((*(*(a1 + 48) + 192) + 8), 8uLL, __stream);
}

uint64_t BsaveDeffunctions(uint64_t a1, FILE *__stream)
{
  memset(v9, 0, sizeof(v9));
  v10 = 24 * *(*(*(a1 + 48) + 192) + 16) + 56 * *(*(*(a1 + 48) + 192) + 8);
  GenWrite(&v10, 8uLL, __stream);
  *(*(*(a1 + 48) + 192) + 8) = 0;
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    do
    {
      ModuleItem = FindModuleItem(a1, "deffunction");
      v7 = GetModuleItem(a1, v5, *(ModuleItem + 8));
      AssignBsaveDefmdlItemHdrVals(v9, v7);
      GenWrite(v9, 0x18uLL, __stream);
      v5 = EnvGetNextDefmodule(a1, v5);
    }

    while (v5);
  }

  DoForAllConstructs(a1, BsaveDeffunction, *(*(*(a1 + 48) + 184) + 8), 0, __stream);
  RestoreBloadCount(a1, (*(*(a1 + 48) + 192) + 16));
  return RestoreBloadCount(a1, (*(*(a1 + 48) + 192) + 8));
}

size_t BloadStorageDeffunctions(uint64_t a1)
{
  __ptr = 0;
  result = GenReadBinary(a1, &__ptr, 8uLL);
  if (__ptr)
  {
    GenReadBinary(a1, (*(*(a1 + 48) + 192) + 16), 8uLL);
    result = GenReadBinary(a1, (*(*(a1 + 48) + 192) + 8), 8uLL);
    v3 = *(a1 + 48);
    v4 = *(v3 + 192);
    v5 = *(v4 + 16);
    if (v5)
    {
      __ptr = 24 * v5;
      result = genalloc(a1, 24 * v5);
      v6 = *(a1 + 48);
      *(*(v6 + 192) + 24) = result;
      v7 = *(v6 + 192);
      v8 = v7[1];
      if (v8)
      {
        __ptr = 88 * v8;
        result = genalloc(a1, 88 * v8);
        **(*(a1 + 48) + 192) = result;
        return result;
      }
    }

    else
    {
      *(v4 + 24) = 0;
      v7 = *(v3 + 192);
    }

    *v7 = 0;
  }

  return result;
}

uint64_t BloadDeffunctions(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  BloadandRefresh(a1, *(*(*(a1 + 48) + 192) + 16), 24, UpdateDeffunctionModule);
  return BloadandRefresh(a1, *(*(*(a1 + 48) + 192) + 8), 56, UpdateDeffunction);
}

uint64_t ClearDeffunctionBload(uint64_t result)
{
  v1 = *(*(result + 48) + 192);
  v2 = 24 * *(v1 + 16);
  if (v2)
  {
    v3 = result;
    result = genfree(result, *(v1 + 24), v2);
    v4 = *(v3 + 48);
    *(*(v4 + 192) + 24) = 0;
    v5 = *(v4 + 192);
    *(v5 + 16) = 0;
    v6 = *(v5 + 8);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        result = UnmarkConstructHeader(v3, (*v5 + v7));
        ++v8;
        v5 = *(*(v3 + 48) + 192);
        v6 = *(v5 + 8);
        v7 += 88;
      }

      while (v8 < v6);
    }

    if (88 * v6)
    {
      result = genfree(v3, *v5, 88 * v6);
      v9 = *(v3 + 48);
      **(v9 + 192) = 0;
      *(*(v9 + 192) + 8) = 0;
    }
  }

  return result;
}

uint64_t MarkDeffunctionItems(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 48) + 192);
  v5 = *(v4 + 8);
  *(v4 + 8) = v5 + 1;
  MarkConstructHeaderNeededItems(a2, v5);
  *(*(*(a1 + 48) + 360) + 64) += ExpressionSize(a2[8]);
  v6 = a2[8];

  return MarkNeededItems(a1, v6);
}

const void *BsaveDeffunction(uint64_t a1, uint64_t a2, FILE *a3)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  AssignBsaveConstructHeaderVals(&v8, a2);
  *(&v9 + 1) = *(a2 + 72);
  LODWORD(v10) = *(a2 + 80);
  v6 = *(a2 + 64);
  if (v6)
  {
    v11 = *(*(*(a1 + 48) + 360) + 64);
    *(*(*(a1 + 48) + 360) + 64) += ExpressionSize(v6);
  }

  else
  {
    v11 = -1;
  }

  return GenWrite(&v8, 0x38uLL, a3);
}

double UpdateDeffunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 48) + 192);
  v6 = *v5 + 88 * a3;
  UpdateConstructHeader(a1, a2, v6, 24, v5[3], 88, *v5);
  v7 = *(a2 + 48);
  v8 = *(a1 + 48);
  if (v7 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(v8 + 360) + 56) + 32 * v7;
  }

  *(v6 + 64) = v9;
  *(v6 + 48) = 0;
  *(v6 + 56) = *(*(v8 + 184) + 128);
  result = *(a2 + 24);
  *(v6 + 72) = result;
  *(v6 + 80) = *(a2 + 32);
  return result;
}

uint64_t FactPatternMatch(uint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6)
{
  if (a3)
  {
    v9 = a3;
    v11 = result;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v12 = *(a3 + 50);
    v13 = *(result + 48);
    *(*(v13 + 24) + 400) = a2;
    *(*(v13 + 24) + 408) = a5;
    while (1)
    {
      v14 = *(v9 + 50);
      if (v12 == v14)
      {
        v15 = a4;
      }

      else
      {
        v15 = 0;
      }

      v16 = v11[6];
      if (*(*(v16 + 144) + 84))
      {
        v17 = (*(v9 + 32) & 8) == 0;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        goto LABEL_32;
      }

      if (*(v9 + 32))
      {
        break;
      }

      if ((*(v9 + 32) & 2) != 0)
      {
        ProcessMultifieldNode(v11, v9, a5, a6, v15);
        goto LABEL_32;
      }

LABEL_35:
      if (!v9)
      {
        return result;
      }
    }

    if ((*(v9 + 32) & 0x40) == 0 || (v18 = *(v16 + 24), (v19 = *(v18 + 408)) == 0) || *(v19 + 8) != v14 || (v20 = *(v18 + 400) + 16 * v14, v22 = *(v20 + 128), v21 = v20 + 128, v22 != 4) || v15 + *(v9 + 48) + *(v9 + 52) == *(*(v21 + 8) + 8))
    {
      v23 = *(v9 + 56);
      if ((*(v9 + 32) & 0x80) != 0)
      {
        if (EvaluatePatternExpression(v11, v9, *(v23 + 24)))
        {
          EvaluateExpression(v11, *(v9 + 56), &v30);
          HashedPatternNode = FindHashedPatternNode(v11, v9, WORD4(v30), v31);
          if (HashedPatternNode)
          {
            v27 = HashedPatternNode;
            if (!*(*(v11[6] + 144) + 84) || (*(HashedPatternNode + 32) & 8) != 0)
            {
              if ((*(HashedPatternNode + 32) & 4) != 0)
              {
                ProcessFactAlphaMatch(v11, a2, a5, HashedPatternNode);
              }

              v24 = v11;
              v25 = 0;
              v29 = v27;
              goto LABEL_34;
            }
          }
        }
      }

      else if (EvaluatePatternExpression(v11, v9, v23))
      {
        if ((*(v9 + 32) & 4) != 0)
        {
          ProcessFactAlphaMatch(v11, a2, a5, v9);
        }

        v24 = v11;
        v25 = 0;
        goto LABEL_33;
      }
    }

LABEL_32:
    v24 = v11;
    v25 = 1;
LABEL_33:
    v29 = v9;
LABEL_34:
    result = GetNextFactPatternNode(v24, v25, v29);
    v9 = result;
    goto LABEL_35;
  }

  return result;
}

uint64_t GetNextFactPatternNode(uint64_t a1, int a2, uint64_t a3)
{
  *(*(*(a1 + 48) + 352) + 8) = 0;
  if (a2 || (result = *(a3 + 64)) == 0)
  {
    do
    {
      result = *(a3 + 88);
      a3 = *(a3 + 72);
      if (result)
      {
        if (!a3 || (*(a3 + 32) & 0x80000000) == 0)
        {
          return result;
        }
      }

      else if (!a3)
      {
        return 0;
      }

      v4 = *(a3 + 72);
      if (v4)
      {
        if (*(v4 + 32) < 0)
        {
          a3 = *(a3 + 72);
        }
      }
    }

    while ((*(a3 + 32) & 2) == 0);
    return 0;
  }

  return result;
}

uint64_t EvaluatePatternExpression(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_26;
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v4 = *a3;
  switch(v4)
  {
    case '5':
      v9 = *(*(a1 + 48) + 352);
      v6 = *v9;
      *v9 = a3;
      result = FactSlotLength(a1, *(a3 + 1), &v29);
      goto LABEL_8;
    case '=':
      v8 = *(*(a1 + 48) + 352);
      v6 = *v8;
      *v8 = a3;
      result = FactPNConstant2(a1, *(a3 + 1));
      goto LABEL_8;
    case '<':
      v5 = *(*(a1 + 48) + 352);
      v6 = *v5;
      *v5 = a3;
      result = FactPNConstant1(a1, *(a3 + 1));
LABEL_8:
      **(*(a1 + 48) + 352) = v6;
      goto LABEL_27;
  }

  v11 = *(a3 + 1);
  v12 = *(*(a1 + 48) + 360);
  if (v11 != v12[1])
  {
    if (v11 != *v12)
    {
      if (EvaluateExpression(a1, a3, &v29))
      {
        PrintErrorID(a1, "FACTMCH", 1, 1);
        EnvPrintRouter(a1, "werror", "This error occurred in the fact pattern network\n");
        EnvPrintRouter(a1, "werror", "   Currently active fact: ");
        PrintFact(a1, "werror", *(*(*(a1 + 48) + 24) + 400), 0, 0);
        EnvPrintRouter(a1, "werror", "\n");
        v19 = *(*(*(*(a1 + 48) + 24) + 400) + 32);
        if (*(v19 + 56))
        {
          gensprintf(v32, "   Problem resides in field #%d\n", v13, v14, v15, v16, v17, v18, *(a2 + 48));
        }

        else
        {
          v20 = *(a2 + 50);
          v21 = *(v19 + 48);
          if (*(a2 + 50))
          {
            do
            {
              v21 = v21[5];
              --v20;
            }

            while (v20);
          }

          gensprintf(v32, "   Problem resides in slot %s\n", v13, v14, v15, v16, v17, v18, *(*v21 + 24));
        }

        EnvPrintRouter(a1, "werror", v32);
        TraceErrorToJoin(a1, a2, 0);
        EnvPrintRouter(a1, "werror", "\n");
        goto LABEL_36;
      }

      v27 = v30;
      result = v27 != EnvFalseSymbol(a1) || WORD4(v29) != 2;
      goto LABEL_27;
    }

    v25 = *(a3 + 2);
    if (v25)
    {
      do
      {
        result = EvaluatePatternExpression(a1, a2, v25);
        if (!result)
        {
          break;
        }

        if (*(*(*(a1 + 48) + 352) + 8))
        {
          goto LABEL_36;
        }

        v25 = *(v25 + 24);
        result = 1;
      }

      while (v25);
      goto LABEL_27;
    }

LABEL_26:
    result = 1;
    goto LABEL_27;
  }

  v22 = *(a3 + 2);
  if (!v22)
  {
LABEL_36:
    result = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v23 = EvaluatePatternExpression(a1, a2, v22);
    v24 = *(*(*(a1 + 48) + 352) + 8);
    if (v23 == 1)
    {
      break;
    }

    if (v24)
    {
      goto LABEL_36;
    }

    result = 0;
    v22 = *(v22 + 24);
    if (!v22)
    {
      goto LABEL_27;
    }
  }

  result = v24 == 0;
LABEL_27:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void *ProcessFactAlphaMatch(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = ComputeRightHashValue(a1, a4);
  AlphaMatch = CreateAlphaMatch(a1, a2, a3, a4, v8);
  *(AlphaMatch + 2) = a4;
  v10 = *(a2 + 40);
  v11 = a1[6];
  v12 = *(v11 + 472);
  v13 = *(*(v12 + 40) + 192);
  if (v13)
  {
    *(v12 + 32) = v13;
    *(*(*(v11 + 472) + 40) + 192) = **(*(v11 + 472) + 32);
    result = *(*(a1[6] + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x18uLL);
  }

  *(a2 + 40) = result;
  result[1] = AlphaMatch;
  result[2] = a4;
  *result = v10;
  for (i = a4[2]; i; i = *(i + 128))
  {
    result = NetworkAssert(a1, AlphaMatch, i);
  }

  return result;
}

void *ProcessMultifieldNode(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = a2;
  v9 = result;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v10 = result[6];
  v11 = *(a2 + 50);
  v12 = *(*(*(v10 + 24) + 400) + 16 * v11 + 136);
  v13 = *(v10 + 472);
  v14 = *(*(v13 + 40) + 320);
  if (v14)
  {
    *(v13 + 32) = v14;
    *(*(*(v10 + 472) + 40) + 320) = **(*(v10 + 472) + 32);
    v15 = *(*(result[6] + 472) + 32);
  }

  else
  {
    result = genalloc(result, 0x28uLL);
    v15 = result;
    LOWORD(v11) = *(v8 + 50);
  }

  *v15 = *(v8 + 48) - 1;
  *(v15 + 8) = v11;
  v16 = a5 + *(v8 + 48) - 1;
  *(v15 + 16) = v16;
  *(v15 + 32) = 0;
  if (a4)
  {
    v17 = (a4 + 32);
  }

  else
  {
    v17 = (*(v9[6] + 24) + 408);
  }

  *v17 = v15;
  v18 = *(v12 + 8);
  v19 = *(v8 + 52);
  if ((*(v8 + 32) & 0x40) != 0)
  {
    v24 = v18 + ~v19;
    if (v24 >= v16)
    {
      v25 = v24;
    }

    else
    {
      v25 = v16 - 1;
    }

    *(v15 + 24) = v25;
    v26 = *(v8 + 56);
    if (*(v8 + 32) < 0)
    {
      result = EvaluatePatternExpression(v9, v8, *(v26 + 24));
      if (!result)
      {
        goto LABEL_31;
      }

      EvaluateExpression(v9, *(v8 + 56), &v29);
      result = FindHashedPatternNode(v9, v8, WORD4(v29), v30);
      v8 = result;
      if (!result)
      {
        goto LABEL_31;
      }
    }

    else if (v26)
    {
      result = EvaluatePatternExpression(v9, v8, v26);
      if (!result)
      {
        goto LABEL_31;
      }
    }

    v27 = v9[6];
    if ((*(v8 + 32) & 4) != 0)
    {
      ProcessFactAlphaMatch(v9, *(*(v27 + 24) + 400), *(*(v27 + 24) + 408), v8);
      v27 = v9[6];
    }

    result = FactPatternMatch(v9, *(*(v27 + 24) + 400), *(v8 + 64), 0, *(*(v27 + 24) + 408), v15);
  }

  else
  {
    v20 = v18 - (v16 + v19);
    if ((v20 & 0x80000000) == 0)
    {
      for (i = (v20 & 0x7FFFFFFF) - 1; i != -2; --i)
      {
        *(v15 + 24) = i + *(v15 + 16);
        v22 = *(v8 + 56);
        if (*(v8 + 32) < 0)
        {
          result = EvaluatePatternExpression(v9, v8, *(v22 + 24));
          if (!result)
          {
            continue;
          }

          EvaluateExpression(v9, *(v8 + 56), &v29);
          result = FindHashedPatternNode(v9, v8, WORD4(v29), v30);
          if (!result)
          {
            continue;
          }
        }

        else
        {
          result = v8;
          if (v22)
          {
            v23 = EvaluatePatternExpression(v9, v8, v22);
            result = v8;
            if (!v23)
            {
              continue;
            }
          }
        }

        result = FactPatternMatch(v9, *(*(v9[6] + 24) + 400), result[8], (a5 + i), *(*(v9[6] + 24) + 408), v15);
      }
    }
  }

LABEL_31:
  v28 = v9[6];
  *(*(v28 + 472) + 32) = v15;
  **(*(v28 + 472) + 32) = *(*(*(v28 + 472) + 40) + 320);
  *(*(*(v28 + 472) + 40) + 320) = *(*(v28 + 472) + 32);
  if (a4)
  {
    *(a4 + 32) = 0;
  }

  *(*(v9[6] + 24) + 408) = a3;
  return result;
}

void MarkFactPatternForIncrementalReset(uint64_t a1, uint64_t a2, char a3)
{
  if ((*(a2 + 32) & 8) != 0 || (v3 = *(a2 + 16)) == 0)
  {
    do
    {
LABEL_6:
      *(a2 + 32) = *(a2 + 32) & 0xF7 | (8 * (a3 & 1));
      a2 = *(a2 + 72);
    }

    while (a2);
  }

  else
  {
    while ((*v3 & 0x20) != 0)
    {
      v3 = *(v3 + 128);
      if (!v3)
      {
        if (!a2)
        {
          return;
        }

        goto LABEL_6;
      }
    }
  }
}

uint64_t FactsIncrementalReset(uint64_t a1)
{
  result = EnvGetNextFact(a1, 0);
  if (result)
  {
    v3 = result;
    do
    {
      *(*(*(a1 + 48) + 144) + 92) = 1;
      FactPatternMatch(a1, v3, *(*(v3 + 32) + 72), 0, 0, 0);
      *(*(*(a1 + 48) + 144) + 92) = 0;
      result = EnvGetNextFact(a1, v3);
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t TraceErrorToJoin(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      if ((*(v4 + 32) & 4) != 0)
      {
        for (i = *(v4 + 16); i; i = *(i + 128))
        {
          result = TraceErrorToRule(v5, i, "      ");
        }
      }

      else
      {
        result = TraceErrorToJoin(v5, *(v4 + 64), 1);
      }

      if (!a3)
      {
        break;
      }

      v4 = *(v4 + 88);
    }

    while (v4);
  }

  return result;
}

void sub_232597588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak(&a37);
  _Block_object_dispose(&a38, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t privacyReset(uint64_t a1, void *a2)
{
  v3 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "NetDomains: location/privacy Reset", v5, 2u);
  }

  return [a2 privacyReset];
}

void sub_232598F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232599990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23259BAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void traceEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = +[TraceRecorder sharedInstance];
  [v12 vTraceTarget:a1 signature:a2 callout:0 item:0 fmt:a3 params:&a9];
}

void traceCallout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = +[TraceRecorder sharedInstance];
  [v13 vTraceTarget:a1 signature:a2 callout:a3 item:0 fmt:a4 params:&a9];
}

void traceItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = +[TraceRecorder sharedInstance];
  [v13 vTraceTarget:a1 signature:a2 callout:0 item:a3 fmt:a4 params:&a9];
}

void sub_23259E53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PrintPartialMatch(uint64_t result, FILE *__s2, uint64_t a3)
{
  if (*(a3 + 2))
  {
    v5 = result;
    v6 = 0;
    v7 = a3 + 136;
    do
    {
      v8 = *(v7 + 8 * v6);
      if (v8 && *v8)
      {
        result = (*(**v8 + 16))(v5, __s2);
      }

      else
      {
        result = EnvPrintRouter(v5, __s2, "*");
      }

      ++v6;
      v9 = *(a3 + 2);
      if (v6 < v9)
      {
        result = EnvPrintRouter(v5, __s2, ",");
        v9 = *(a3 + 2);
      }
    }

    while (v6 < v9);
  }

  return result;
}

char *CopyPartialMatch(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 2);
  if (v3 <= 0x2D && (v4 = *(a1 + 48), v5 = *(v4 + 472), (v6 = *(*(v5 + 40) + (v3 << 6) + 1088)) != 0))
  {
    *(v5 + 32) = v6;
    *(*(*(v4 + 472) + 40) + (v3 << 6) + 1088) = **(*(v4 + 472) + 32);
    result = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 8 * v3 + 136);
  }

  *(result + 120) = 0u;
  *(result + 104) = 0u;
  *(result + 88) = 0u;
  *(result + 72) = 0u;
  *(result + 56) = 0u;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *result = *result & 0xF8 | 1;
  v8 = *(a2 + 2);
  *(result + 1) = v8;
  *(result + 1) = 0;
  if (v8)
  {
    for (i = 0; i < v8; ++i)
    {
      *&result[8 * i + 136] = *(a2 + 136 + 8 * i);
    }
  }

  return result;
}

double CreateEmptyPartialMatch(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 472);
  v3 = *(*(v2 + 40) + 1152);
  if (v3)
  {
    *(v2 + 32) = v3;
    *(*(*(v1 + 472) + 40) + 1152) = **(*(v1 + 472) + 32);
    v4 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v4 = genalloc(a1, 0x90uLL);
  }

  result = 0.0;
  *(v4 + 120) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  *v4 = *v4 & 0xF8 | 1;
  *(v4 + 1) = 1;
  *(v4 + 1) = 0;
  *(v4 + 17) = 0;
  return result;
}

uint64_t UpdateBetaPMLinks(uint64_t result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v7 = result;
  v8 = *a2;
  if (a7)
  {
    v9 = *(a5 + 64);
    *a2 = v8 | 4;
    *(a2 + 1) = a6;
    v10 = *v9;
    v11 = a6 % *v9;
    v12 = *(v9 + 24);
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      *(v13 + 40) = a2;
      *(a2 + 6) = *(v12 + 8 * v11);
    }

    else
    {
      *(*(v9 + 16) + 8 * v11) = a2;
      v12 = *(v9 + 24);
    }

    v14 = (v12 + 8 * v11);
    v16 = 24;
  }

  else
  {
    v9 = *(a5 + 56);
    *a2 = v8 & 0xFB;
    *(a2 + 1) = a6;
    v10 = *v9;
    v14 = (*(v9 + 16) + 8 * (a6 % *v9));
    v15 = *v14;
    *(a2 + 5) = *v14;
    if (v15)
    {
      *(v15 + 48) = a2;
    }

    v16 = 16;
  }

  *v14 = a2;
  v17 = *(v9 + 8) + 1;
  *(v9 + 8) = v17;
  ++*(a5 + v16);
  *(a2 + 2) = a5;
  if (a4)
  {
    v18 = *(a4 + 56);
    *(a2 + 9) = v18;
    if (v18)
    {
      *(v18 + 80) = a2;
    }

    *(a4 + 56) = a2;
    *(a2 + 8) = a4;
  }

  if (a3)
  {
    v19 = *(a3 + 56);
    *(a2 + 12) = v19;
    if (v19)
    {
      *(v19 + 104) = a2;
    }

    *(a3 + 56) = a2;
    *(a2 + 11) = a3;
  }

  if (v10 >= 2 && *(*(*(result + 48) + 128) + 32) && v17 > 11 * v10)
  {
    v20 = *(v9 + 16);
    *v9 = 11 * v10;
    *(v9 + 16) = genalloc(result, 88 * v10);
    v21 = genalloc(v7, 8 * *v9);
    bzero(*(v9 + 16), 8 * *v9);
    bzero(v21, 8 * *v9);
    for (i = 0; i != v10; ++i)
    {
      v23 = v20[i];
      if (v23)
      {
        v24 = *v9;
        do
        {
          v25 = v23[5];
          v23[5] = 0;
          v26 = v23[1] % v24;
          v27 = *(v21 + v26);
          v23[6] = v27;
          if (v27)
          {
            v28 = (v27 + 40);
          }

          else
          {
            v28 = (*(v9 + 16) + 8 * v26);
          }

          *v28 = v23;
          *(v21 + v26) = v23;
          v23 = v25;
        }

        while (v25);
      }
    }

    v29 = *(v9 + 24);
    if (v29)
    {
      v30 = 8 * v10;
      genfree(v7, v29, v30);
      *(v9 + 24) = v21;
    }

    else
    {
      genfree(v7, v21, 8 * *v9);
      v30 = 8 * v10;
    }

    return genfree(v7, v20, v30);
  }

  return result;
}

uint64_t AddBlockedLink(uint64_t result, uint64_t a2)
{
  *(result + 24) = a2;
  v2 = *(a2 + 112);
  *(result + 120) = v2;
  if (v2)
  {
    *(v2 + 128) = result;
  }

  *(a2 + 112) = result;
  return result;
}

void *RemoveBlockedLink(void *result)
{
  v1 = result[16];
  if (!v1)
  {
    v2 = result[15];
    *(result[3] + 112) = v2;
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = result[15];
  *(v1 + 120) = v2;
  if (v2)
  {
LABEL_3:
    *(v2 + 128) = v1;
  }

LABEL_4:
  result[3] = 0;
  result[15] = 0;
  result[16] = 0;
  return result;
}

uint64_t UnlinkBetaPMFromNodeAndLineage(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = 64;
  if (!a4)
  {
    v5 = 56;
  }

  v6 = *(a2 + v5);
  --v6[1];
  if (a4)
  {
    ++*(a2 + 40);
    if (a4 == 1)
    {
      v7 = a3[1] % *v6;
      v8 = v6[3];
      if (*(v8 + 8 * v7) == a3)
      {
        *(v8 + 8 * v7) = a3[6];
      }
    }
  }

  else
  {
    ++*(a2 + 32);
  }

  v9 = a3[6];
  if (!v9)
  {
    v10 = a3[5];
    *(v6[2] + 8 * (a3[1] % *v6)) = v10;
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = a3[5];
  *(v9 + 40) = v10;
  if (v10)
  {
LABEL_10:
    *(v10 + 48) = a3[6];
  }

LABEL_11:
  a3[5] = 0;
  a3[6] = 0;
  result = UnlinkBetaPartialMatchfromAlphaAndBetaLineage(a3);
  if (*(*(*(a1 + 48) + 128) + 32) && !v6[1] && *v6 >= 2)
  {

    return ResetBetaMemory(a1, v6);
  }

  return result;
}

uint64_t UnlinkBetaPartialMatchfromAlphaAndBetaLineage(uint64_t result)
{
  v1 = *(result + 80);
  if (v1)
  {
    v2 = *(result + 72);
    *(v1 + 72) = v2;
  }

  else
  {
    v3 = *(result + 64);
    v2 = *(result + 72);
    if (v3)
    {
      *(v3 + 56) = v2;
    }
  }

  if (v2)
  {
    *(v2 + 80) = v1;
  }

  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  v4 = *(result + 104);
  if (v4)
  {
    v5 = *(result + 96);
    *(v4 + 96) = v5;
  }

  else
  {
    v6 = *(result + 88);
    v5 = *(result + 96);
    if (v6)
    {
      *(v6 + 56) = v5;
    }
  }

  if (v5)
  {
    *(v5 + 104) = v4;
  }

  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  v7 = *(result + 128);
  if (v7)
  {
    v8 = *(result + 120);
    *(v7 + 120) = v8;
  }

  else
  {
    v9 = *(result + 24);
    v8 = *(result + 120);
    if (v9)
    {
      *(v9 + 112) = v8;
    }
  }

  if (v8)
  {
    *(v8 + 128) = v7;
  }

  *(result + 24) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  v10 = *(result + 56);
  if (v10)
  {
    if ((*result & 4) != 0)
    {
      do
      {
        v10[8] = 0;
        v10 = v10[9];
      }

      while (v10);
    }

    else
    {
      do
      {
        v10[11] = 0;
        v10 = v10[12];
      }

      while (v10);
    }

    *(result + 56) = 0;
  }

  return result;
}

uint64_t ResetBetaMemory(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if ((*a2 | 0x10) != 0x11)
  {
    v4 = result;
    v5 = a2[2];
    *a2 = 17;
    v6 = genalloc(result, 0x88uLL);
    a2[2] = v6;
    bzero(v6, 8 * *a2);
    v7 = 8 * v2;
    result = genfree(v4, v5, v7);
    if (a2[3])
    {
      v8 = genalloc(v4, 8 * *a2);
      bzero(v8, 8 * *a2);
      result = genfree(v4, a2[3], v7);
      a2[3] = v8;
    }
  }

  return result;
}

uint64_t UnlinkNonLeftLineage(uint64_t result, uint64_t a2, void *a3, int a4)
{
  v5 = 64;
  if (!a4)
  {
    v5 = 56;
  }

  v6 = *(a2 + v5);
  v7 = v6[1] - 1;
  v6[1] = v7;
  if (a4)
  {
    ++*(a2 + 40);
    if (a4 == 1)
    {
      v8 = a3[1] % *v6;
      v9 = v6[3];
      if (*(v9 + 8 * v8) == a3)
      {
        *(v9 + 8 * v8) = a3[6];
      }
    }
  }

  else
  {
    ++*(a2 + 32);
  }

  v10 = a3[6];
  if (v10)
  {
    v11 = a3[5];
    *(v10 + 40) = v11;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = a3[5];
  *(v6[2] + 8 * (a3[1] % *v6)) = v11;
  if (v11)
  {
LABEL_10:
    *(v11 + 48) = a3[6];
  }

LABEL_11:
  v12 = a3[10];
  if (v12)
  {
    v13 = a3[9];
    *(v12 + 72) = v13;
  }

  else
  {
    v14 = a3[8];
    v13 = a3[9];
    if (v14)
    {
      *(v14 + 56) = v13;
      if (!v13)
      {
        goto LABEL_21;
      }

      *(v13 + 64) = v14;
      goto LABEL_20;
    }
  }

  if (v13)
  {
LABEL_20:
    *(v13 + 80) = v12;
  }

LABEL_21:
  v15 = a3[16];
  if (v15)
  {
    v16 = a3[15];
    *(v15 + 120) = v16;
  }

  else
  {
    v17 = a3[3];
    v16 = a3[15];
    if (v17)
    {
      *(v17 + 112) = v16;
    }
  }

  if (v16)
  {
    *(v16 + 128) = v15;
  }

  if (*(*(*(result + 48) + 128) + 32))
  {
    v18 = v7 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (v18 && *v6 >= 2)
  {
    return ResetBetaMemory(result, v6);
  }

  return result;
}

_OWORD *MergePartialMatches(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 2);
  if (v5 <= 0x2C && (v6 = *(a1 + 48), v7 = *(v6 + 472), (v8 = *(*(v7 + 40) + (v5 << 6) + 1152)) != 0))
  {
    *(v7 + 32) = v8;
    *(*(*(v6 + 472) + 40) + (v5 << 6) + 1152) = **(*(v6 + 472) + 32);
    v9 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v9 = genalloc(a1, 8 * v5 + 144);
  }

  *v9 = MergePartialMatches_mergeTemplate;
  v10 = xmmword_27DD9F1A8;
  v11 = unk_27DD9F1B8;
  v12 = unk_27DD9F1D8;
  v9[3] = xmmword_27DD9F1C8;
  v9[4] = v12;
  v9[1] = v10;
  v9[2] = v11;
  v13 = xmmword_27DD9F1E8;
  v14 = unk_27DD9F1F8;
  v15 = xmmword_27DD9F208;
  *(v9 + 16) = qword_27DD9F218;
  v9[6] = v14;
  v9[7] = v15;
  v9[5] = v13;
  *(v9 + 1) = *(a2 + 2) + 1;
  memcpy(v9 + 136, (a2 + 136), 8 * *(a2 + 2));
  if (a3)
  {
    v16 = *(a3 + 136);
  }

  else
  {
    v16 = 0;
  }

  *(v9 + *(a2 + 2) + 17) = v16;
  return v9;
}

uint64_t InitializePatternHeader(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) &= 0xF8u;
  result = EnvGetIncrementalReset(a1);
  *(a2 + 32) = *(a2 + 32) & 7 | (8 * (result & 1));
  return result;
}

char *CreateAlphaMatch(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = *(a1 + 48);
  v11 = *(v10 + 472);
  v12 = *(*(v11 + 40) + 1152);
  if (v12)
  {
    *(v11 + 32) = v12;
    *(*(*(v10 + 472) + 40) + 1152) = **(*(v10 + 472) + 32);
    v13 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v13 = genalloc(a1, 0x90uLL);
  }

  *(v13 + 120) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 24) = 0u;
  *v13 &= 0xFCu;
  *(v13 + 1) = 1;
  *(v13 + 1) = a5;
  v14 = *(a1 + 48);
  v15 = *(v14 + 472);
  v16 = *(*(v15 + 40) + 256);
  if (v16)
  {
    *(v15 + 32) = v16;
    *(*(*(v14 + 472) + 40) + 256) = **(*(v14 + 472) + 32);
    v17 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v17 = genalloc(a1, 0x20uLL);
  }

  v17[2] = 0;
  *v17 = a2;
  if (a3)
  {
    v18 = CopyMultifieldMarkers(a1, a3);
  }

  else
  {
    v18 = 0;
  }

  v17[1] = v18;
  *(v13 + 17) = v17;
  v19 = (a5 + a4) % 0x64;
  v20 = *(a1 + 48);
  v21 = *(*(*(v20 + 128) + 24) + 8 * v19);
  if (v21)
  {
    while (v21[1] != a4)
    {
      v21 = v21[6];
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v17[3] = v19;
  }

  else
  {
LABEL_13:
    v17[3] = v19;
    v22 = *(v20 + 472);
    v23 = *(*(v22 + 40) + 512);
    if (v23)
    {
      *(v22 + 32) = v23;
      *(*(*(v20 + 472) + 40) + 512) = **(*(v20 + 472) + 32);
      v24 = *(a1 + 48);
      v21 = *(*(v24 + 472) + 32);
    }

    else
    {
      v21 = genalloc(a1, 0x40uLL);
      v24 = *(a1 + 48);
    }

    *v21 = v19;
    v21[1] = a4;
    v21[3] = 0;
    v21[4] = 0;
    v21[2] = 0;
    v25 = *(*(*(v24 + 128) + 24) + 8 * v19);
    v21[6] = v25;
    if (v25)
    {
      *(v25 + 56) = v21;
    }

    v21[7] = 0;
    *(*(*(v24 + 128) + 24) + 8 * v19) = v21;
    if (*a4)
    {
      v26 = a4[1];
      *(v26 + 32) = v21;
      v21[5] = v26;
      a4[1] = v21;
    }

    else
    {
      *a4 = v21;
      a4[1] = v21;
      v21[5] = 0;
    }
  }

  v27 = v21[3];
  *(v13 + 6) = v27;
  if (v27)
  {
    v28 = (v27 + 40);
  }

  else
  {
    v28 = v21 + 2;
  }

  *v28 = v13;
  v21[3] = v13;
  return v13;
}

void *CopyMultifieldMarkers(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 48);
      v7 = *(v6 + 472);
      v8 = *(*(v7 + 40) + 320);
      if (v8)
      {
        *(v7 + 32) = v8;
        *(*(*(v6 + 472) + 40) + 320) = **(*(v6 + 472) + 32);
        v9 = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        v9 = genalloc(a1, 0x28uLL);
      }

      v9[4] = 0;
      *v9 = *v2;
      v9[1] = v2[1];
      *(v9 + 1) = *(v2 + 1);
      a2 = v9;
      if (v4)
      {
        v4[4] = v9;
        a2 = v5;
      }

      v2 = v2[4];
      v4 = v9;
      v5 = a2;
    }

    while (v2);
  }

  return a2;
}

void *FlushAlphaBetaMemory(void *result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2[5];
      UnlinkBetaPartialMatchfromAlphaAndBetaLineage(v2);
      result = ReturnPartialMatch(v3, v2);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t DestroyAlphaBetaMemory(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    do
    {
      v3 = a2[5];
      result = DestroyPartialMatch(v2, a2);
      a2 = v3;
    }

    while (v3);
  }

  return result;
}

uint64_t FindEntityInPartialMatch(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    return 0;
  }

  for (i = (a2 + 136); !*i || **i != a1; ++i)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

_DWORD *GetPatternNumberFromJoin(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    LODWORD(result) = 0;
    do
    {
      if ((*v1 & 4) != 0)
      {
        v2 = 26;
      }

      else
      {
        v2 = 30;
      }

      result = ((((*v1 & 4u) >> 2) ^ 1) + result);
      v1 = *&v1[v2];
    }

    while (v1);
  }

  return result;
}

uint64_t TraceErrorToRule(uint64_t a1, uint64_t a2, char *a3)
{
  MarkRuleNetwork(a1, 0);
  v6 = CountPriorPatterns(*(a2 + 120));
  TraceErrorToRuleDriver(a1, a2, a3, v6 + 1, 0);

  return MarkRuleNetwork(a1, 0);
}

uint64_t MarkRuleNetwork(uint64_t a1, uint64_t a2)
{
  SaveCurrentModule(a1);
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
          v8 = v7;
          do
          {
            MarkRuleJoins(*(v8 + 88), a2);
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

  return RestoreCurrentModule(a1);
}

uint64_t CountPriorPatterns(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  LODWORD(v2) = 0;
  do
  {
    if ((*v1 & 4) != 0)
    {
      v3 = CountPriorPatterns(*(v1 + 104));
    }

    else
    {
      v3 = 1;
    }

    v2 = (v3 + v2);
    v1 = *(v1 + 120);
  }

  while (v1);
  return v2;
}

uint64_t TraceErrorToRuleDriver(uint64_t result, int *a2, char *a3, int a4, int a5)
{
  v8 = result;
  v9 = 0;
  v10 = *a2;
  if (a5 && (v10 & 4) != 0)
  {
    result = CountPriorPatterns(*(a2 + 15));
    v9 = result;
  }

  if ((v10 & 0x40) == 0)
  {
    v11 = *(a2 + 17);
    *a2 = v10 | 0x40;
    if (v11)
    {
      DefruleName = EnvGetDefruleName(v8, v11);
      EnvPrintRouter(v8, "werror", a3);
      EnvPrintRouter(v8, "werror", "Of pattern #");
      PrintLongInteger(v8, "werror", v9 + a4, v13, v14, v15, v16, v17);
      EnvPrintRouter(v8, "werror", " in rule ");
      EnvPrintRouter(v8, "werror", DefruleName);

      return EnvPrintRouter(v8, "werror", "\n");
    }

    else
    {
      for (i = *(a2 + 14); i; i = *(i + 2))
      {
        result = TraceErrorToRuleDriver(v8, *(i + 1), a3, (v9 + a4), *i == 1);
      }
    }
  }

  return result;
}

uint64_t MarkRuleJoins(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = (a2 & 1) << 6;
    do
    {
      v5 = *v3;
      if ((*v3 & 4) != 0)
      {
        result = MarkRuleJoins(*(v3 + 104), a2);
        v5 = *v3;
      }

      *v3 = v5 & 0xFFFFFFBF | v4;
      v3 = *(v3 + 120);
    }

    while (v3);
  }

  return result;
}

uint64_t GetAlphaMemory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(*(a1 + 48) + 128) + 24) + 8 * ((a3 + a2) % 0x64));
  if (!v3)
  {
    return 0;
  }

  while (v3[1] != a2)
  {
    v3 = v3[6];
    if (!v3)
    {
      return 0;
    }
  }

  return v3[2];
}

uint64_t ReturnLeftMemory(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2)
  {
    v4 = result;
    result = genfree(result, *(v2 + 16), 8 * *v2);
    v5 = *(v4 + 48);
    *(*(v5 + 472) + 32) = *(a2 + 56);
    **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 256);
    *(*(*(v5 + 472) + 40) + 256) = *(*(v5 + 472) + 32);
    *(a2 + 56) = 0;
  }

  return result;
}

uint64_t ReturnRightMemory(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    v4 = result;
    genfree(result, *(v2 + 16), 8 * *v2);
    result = genfree(v4, *(*(a2 + 64) + 24), 8 * **(a2 + 64));
    v5 = *(v4 + 48);
    *(*(v5 + 472) + 32) = *(a2 + 64);
    **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 256);
    *(*(*(v5 + 472) + 40) + 256) = *(*(v5 + 472) + 32);
    *(a2 + 64) = 0;
  }

  return result;
}

uint64_t DestroyBetaMemory(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3)
  {
    v5 = *(a2 + 64);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = 0;
        do
        {
          v8 = *(v5[2] + 8 * v7);
          if (v8)
          {
            do
            {
              v9 = v8[5];
              result = DestroyPartialMatch(v4, v8);
              v8 = v9;
            }

            while (v9);
            v5 = *(a2 + 64);
            v6 = *v5;
          }

          ++v7;
        }

        while (v7 < v6);
      }
    }
  }

  else
  {
    v10 = *(a2 + 56);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v12 = 0;
        do
        {
          v13 = *(v10[2] + 8 * v12);
          if (v13)
          {
            do
            {
              v14 = v13[5];
              result = DestroyPartialMatch(v4, v13);
              v13 = v14;
            }

            while (v14);
            v10 = *(a2 + 56);
            v11 = *v10;
          }

          ++v12;
        }

        while (v12 < v11);
      }
    }
  }

  return result;
}

void *FlushBetaMemory(void *result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3)
  {
    v5 = *(a2 + 64);
    if (v5 && *v5)
    {
      v6 = 0;
      do
      {
        result = FlushAlphaBetaMemory(v4, *(v5[2] + 8 * v6++));
        v5 = *(a2 + 64);
      }

      while (v6 < *v5);
    }
  }

  else
  {
    v7 = *(a2 + 56);
    if (v7 && *v7)
    {
      v8 = 0;
      do
      {
        result = FlushAlphaBetaMemory(v4, *(v7[2] + 8 * v8++));
        v7 = *(a2 + 56);
      }

      while (v8 < *v7);
    }
  }

  return result;
}

BOOL BetaMemoryNotEmpty(uint64_t a1)
{
  v1 = *(a1 + 56);
  result = 1;
  if (!v1 || !*(v1 + 8))
  {
    v2 = *(a1 + 64);
    if (!v2 || !*(v2 + 8))
    {
      return 0;
    }
  }

  return result;
}

uint64_t RemoveAlphaMemoryMatches(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 48);
  if (v4)
  {
    v5 = *(a3 + 40);
    if (v5)
    {
      i = 0;
LABEL_8:
      *(v4 + 40) = v5;
      v5 = *(a3 + 40);
      goto LABEL_10;
    }
  }

  for (i = *(*(*(*(result + 48) + 128) + 24) + 8 * *(a4 + 24)); i; i = i[6])
  {
    if (i[1] == a2)
    {
      break;
    }
  }

  v5 = *(a3 + 40);
  if (v4)
  {
    goto LABEL_8;
  }

  i[2] = v5;
LABEL_10:
  if (v5)
  {
    v7 = (v5 + 48);
  }

  else
  {
    v7 = i + 3;
  }

  *v7 = v4;
  v8 = *(result + 48);
  *(a3 + 40) = *(*(v8 + 144) + 120);
  *(*(v8 + 144) + 120) = a3;
  if (i && !i[2])
  {
    v9 = i[6];
    v10 = i[7];
    if (v10)
    {
      v11 = (v10 + 48);
    }

    else
    {
      v11 = (*(*(v8 + 128) + 24) + 8 * *i);
    }

    *v11 = v9;
    if (v9)
    {
      *(v9 + 56) = i[7];
    }

    if (*a2 == i)
    {
      *a2 = i[4];
    }

    v12 = i[5];
    if (a2[1] == i)
    {
      a2[1] = v12;
    }

    v13 = i[4];
    if (v12)
    {
      *(v12 + 32) = v13;
    }

    if (v13)
    {
      *(v13 + 40) = v12;
    }

    v14 = *(result + 48);
    *(*(v14 + 472) + 32) = i;
    **(*(v14 + 472) + 32) = *(*(*(v14 + 472) + 40) + 512);
    *(*(*(v14 + 472) + 40) + 512) = *(*(v14 + 472) + 32);
  }

  return result;
}

uint64_t DestroyAlphaMemory(uint64_t result, void *a2, int a3)
{
  v4 = *a2;
  if (*a2)
  {
    v6 = result;
    do
    {
      v7 = v4;
      v4 = v4[4];
      v8 = v7[2];
      if (v8)
      {
        do
        {
          v9 = v8[5];
          result = DestroyPartialMatch(v6, v8);
          v8 = v9;
        }

        while (v9);
      }

      if (a3)
      {
        v10 = v7[7];
        if (v10)
        {
          v11 = (v10 + 48);
        }

        else
        {
          v11 = (*(*(*(v6 + 48) + 128) + 24) + 8 * *v7);
        }

        v12 = v7[6];
        *v11 = v12;
        if (v12)
        {
          *(v12 + 56) = v7[7];
        }
      }

      v13 = *(v6 + 48);
      *(*(v13 + 472) + 32) = v7;
      **(*(v13 + 472) + 32) = *(*(*(v13 + 472) + 40) + 512);
      *(*(*(v13 + 472) + 40) + 512) = *(*(v13 + 472) + 32);
    }

    while (v4);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void *FlushAlphaMemory(void *result, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = result;
    do
    {
      v5 = *(v3 + 32);
      result = FlushAlphaBetaMemory(v4, *(v3 + 16));
      v6 = *(v3 + 56);
      if (v6)
      {
        v7 = (v6 + 48);
      }

      else
      {
        v7 = (*(*(v4[6] + 128) + 24) + 8 * *v3);
      }

      v8 = *(v3 + 48);
      *v7 = v8;
      if (v8)
      {
        *(v8 + 56) = *(v3 + 56);
      }

      v9 = v4[6];
      *(*(v9 + 472) + 32) = v3;
      **(*(v9 + 472) + 32) = *(*(*(v9 + 472) + 40) + 512);
      *(*(*(v9 + 472) + 40) + 512) = *(*(v9 + 472) + 32);
      v3 = v5;
    }

    while (v5);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t ComputeRightHashValue(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = 0;
    v5 = *(a1 + 48);
    for (i = 1; ; i *= 509)
    {
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      v7 = *(v5 + 352);
      v8 = *v7;
      *v7 = v2;
      (*(*(*(v5 + 352) + 8 * *v2 + 24) + 40))(a1, *(v2 + 1), &v11);
      v5 = *(a1 + 48);
      **(v5 + 352) = v8;
      if (WORD4(v11) <= 4u)
      {
        break;
      }

      switch(WORD4(v11))
      {
        case 5u:
          v9 = *(v12 + 24);
          goto LABEL_11;
        case 6u:
          v9 = v12;
          goto LABEL_11;
        case 8u:
          goto LABEL_10;
      }

LABEL_12:
      v2 = *(v2 + 3);
      if (!v2)
      {
        return v4;
      }
    }

    if (WORD4(v11) - 2 >= 2 && WORD4(v11) >= 2u)
    {
      goto LABEL_12;
    }

LABEL_10:
    v9 = *(v12 + 16) >> 3;
LABEL_11:
    v4 += i * v9;
    goto LABEL_12;
  }

  return 0;
}

uint64_t PrintBetaMemory(uint64_t a1, FILE *a2, unint64_t *a3, int a4, char *a5, int a6)
{
  if (GetHaltExecution(a1) == 1)
  {
    return 0;
  }

  v12 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(a3[2] + 8 * v14);
    if (v15)
    {
      break;
    }

LABEL_13:
    if (++v14 >= v12)
    {
      return v13;
    }
  }

  while (GetHaltExecution(a1) != 1)
  {
    if (!a6)
    {
      if (a4)
      {
        EnvPrintRouter(a1, a2, a5);
      }

      else
      {
        a4 = 1;
      }

      PrintPartialMatch(a1, a2, v15);
      EnvPrintRouter(a1, a2, "\n");
    }

    ++v13;
    v15 = *(v15 + 40);
    if (!v15)
    {
      v12 = *a3;
      goto LABEL_13;
    }
  }

  return v13;
}

uint64_t TagRuleNetwork(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  MarkRuleNetwork(a1, 0);
  v10 = *(*(a1 + 48) + 128);
  v11 = *(v10 + 48);
  if (v11)
  {
    v12 = *a5;
    do
    {
      *(v11 + 24) = v12;
      v12 = *a5 + 1;
      *a5 = v12;
      v11 = *(v11 + 16);
    }

    while (v11);
  }

  v13 = *(v10 + 40);
  if (v13)
  {
    v14 = *a5;
    do
    {
      *(v13 + 24) = v14;
      v14 = *a5 + 1;
      *a5 = v14;
      v13 = *(v13 + 16);
    }

    while (v13);
  }

  result = EnvGetNextDefmodule(a1, 0);
  if (result)
  {
    v16 = result;
    do
    {
      ++*a2;
      EnvSetCurrentModule(a1, v16);
      NextDefrule = EnvGetNextDefrule(a1, 0);
      if (NextDefrule)
      {
        v18 = NextDefrule;
        do
        {
          v19 = v18;
          do
          {
            v20 = *a3;
            v19[3] = *a3;
            *a3 = v20 + 1;
            TagNetworkTraverseJoins(a4, a5, v19[11]);
            v19 = v19[12];
          }

          while (v19);
          v18 = EnvGetNextDefrule(a1, v18);
        }

        while (v18);
      }

      result = EnvGetNextDefmodule(a1, v16);
      v16 = result;
    }

    while (result);
  }

  return result;
}

uint64_t TagNetworkTraverseJoins(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      if ((*v3 & 0x40) == 0)
      {
        *v3 |= 0x40u;
        v6 = *v5;
        *(v3 + 8) = *v5;
        *v5 = v6 + 1;
        v7 = *(v3 + 112);
        if (v7)
        {
          v8 = *a2;
          do
          {
            *(v7 + 24) = v8;
            v8 = *a2 + 1;
            *a2 = v8;
            v7 = *(v7 + 16);
          }

          while (v7);
        }
      }

      if ((*v3 & 4) != 0)
      {
        result = TagNetworkTraverseJoins(v5, a2, *(v3 + 104));
      }

      v3 = *(v3 + 120);
    }

    while (v3);
  }

  return result;
}

uint64_t AWDSymptomsSDMParticipantReadFrom(uint64_t a1, void *a2)
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
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              v53 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v53 & 0x7F) << v33;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_79;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v35;
            }

LABEL_79:
            v48 = 16;
            break;
          case 5:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 56) |= 0x10u;
            while (1)
            {
              v52 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v52 & 0x7F) << v42;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v44;
            }

LABEL_91:
            v48 = 40;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              v51 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v51 & 0x7F) << v21;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
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

LABEL_87:
            v48 = 8;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_93;
        }

        goto LABEL_92;
      }

      if (v13 == 1)
      {
        break;
      }

      if (v13 != 2)
      {
        if (v13 != 3)
        {
          goto LABEL_60;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 56) |= 8u;
        while (1)
        {
          v54 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v54 & 0x7F) << v14;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_83;
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

LABEL_83:
        v48 = 32;
        goto LABEL_92;
      }

      v40 = PBReaderReadString();
      v41 = *(a1 + 48);
      *(a1 + 48) = v40;

LABEL_93:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    *(a1 + 56) |= 4u;
    while (1)
    {
      v55 = 0;
      v30 = [a2 position] + 1;
      if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
      {
        v32 = [a2 data];
        [v32 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v29 |= (v55 & 0x7F) << v27;
      if ((v55 & 0x80) == 0)
      {
        break;
      }

      v27 += 7;
      v11 = v28++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_75;
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

LABEL_75:
    v48 = 24;
LABEL_92:
    *(a1 + v48) = v20;
    goto LABEL_93;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ProcessConnectedConstraints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 200);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if ((v10[8] & 1) == 0)
        {
          v11 = *v10;
          if (v11 == 164)
          {
            v12 = *(v10 + 21);
            if (*v12 == 30)
            {
              v13 = FunctionCallToConstraintRecord(a1, *(v12 + 8));
              v14 = IntersectConstraints(a1, v9, v13);
              RemoveConstraint(a1, v9);
              RemoveConstraint(a1, v13);
              v9 = v14;
            }
          }

          else if (ConstantType(v11))
          {
            v15 = GenConstant(a1, *v10, *(v10 + 1));
            v16 = ExpressionToConstraintRecord(a1, v15);
            v17 = IntersectConstraints(a1, v9, v16);
            RemoveConstraint(a1, v9);
            RemoveConstraint(a1, v16);
            ReturnExpression(a1, v15);
            v9 = v17;
          }

          else
          {
            v18 = *(v10 + 4);
            if (v18)
            {
              v19 = IntersectConstraints(a1, v9, v18);
              RemoveConstraint(a1, v9);
              v9 = v19;
            }
          }
        }

        v10 = *(v10 + 24);
      }

      while (v10);
      v20 = IntersectConstraints(a1, v9, *(a2 + 32));
      RemoveConstraint(a1, v9);
      v21 = v7;
      do
      {
        if ((v21[8] & 1) != 0 && ConstantType(*v21))
        {
          RemoveConstantFromConstraint(a1, *v21, *(v21 + 1), v20);
        }

        v21 = *(v21 + 24);
      }

      while (v21);
      v22 = UnionConstraints(a1, v8, v20);
      RemoveConstraint(a1, v8);
      RemoveConstraint(a1, v20);
      v7 = *(v7 + 25);
      v8 = v22;
    }

    while (v7);
    if (v22)
    {
      v23 = *(a2 + 16);
      if ((v23 & 0x40) != 0)
      {
        RemoveConstraint(a1, *(a2 + 32));
        v23 = *(a2 + 16);
      }

      *(a2 + 32) = v22;
      *(a2 + 16) = v23 | 0x40;
    }
  }

  v24 = *(a4 + 16);
  if (EnvGetStaticConstraintChecking(a1) && UnmatchableConstraint(*(a2 + 32)))
  {
    v25 = (v24 >> 8) & 0x7F;
    v26 = *(a2 + 8);
    v27 = *(a2 + 58);
    v28 = *(a2 + 64);
    PrintErrorID(a1, "RULECSTR", 1, 1);
    if (v26)
    {
      EnvPrintRouter(a1, "werror", "Variable ?");
      EnvPrintRouter(a1, "werror", *(v26 + 24));
      v29 = " in CE #";
    }

    else
    {
      v29 = "Pattern #";
    }

    EnvPrintRouter(a1, "werror", v29);
    PrintLongInteger(a1, "werror", v25, v42, v43, v44, v45, v46);
    if (v28)
    {
      EnvPrintRouter(a1, "werror", " slot ");
      EnvPrintRouter(a1, "werror", *(v28 + 24));
    }

    else
    {
      EnvPrintRouter(a1, "werror", " field #");
      PrintLongInteger(a1, "werror", v27, v47, v48, v49, v50, v51);
    }

    EnvPrintRouter(a1, "werror", "\nhas constraint conflicts which make the pattern unmatchable.\n");
    return 1;
  }

  else
  {
    if (!a3 || *(a2 + 192) || (*(a3 + 16) & 0x10) == 0)
    {
      return 0;
    }

    v30 = *(a3 + 200);
    if (v30)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = *v30;
        if (v34 == 37 || v34 == 35)
        {
          ++v33;
          ++v32;
        }

        else
        {
          v35 = *(v30 + 4);
          if (!v35)
          {
            goto LABEL_42;
          }

          v36 = *(*(v35 + 40) + 8);
          v37 = *(*(a1 + 48) + 392);
          if (v36 != *(v37 + 24))
          {
            v33 += *(v36 + 24);
          }

          v38 = *(v35 + 48);
          do
          {
            v39 = v38;
            v38 = *(v38 + 24);
          }

          while (v38);
          v40 = *(v39 + 8);
          if (v40 == *(v37 + 16))
          {
LABEL_42:
            v31 = 1;
          }

          else
          {
            v32 += *(v40 + 24);
          }
        }

        v30 = *(v30 + 24);
      }

      while (v30);
      v41 = v31 == 0;
    }

    else
    {
      v33 = 0;
      v32 = 0;
      v41 = 1;
    }

    v53 = *(a3 + 32);
    if (v53)
    {
      ConstraintRecord = CopyConstraintRecord(a1, v53);
    }

    else
    {
      ConstraintRecord = GetConstraintRecord(a1);
    }

    v55 = ConstraintRecord;
    ReturnExpression(a1, ConstraintRecord[5]);
    ReturnExpression(a1, *(v55 + 48));
    v56 = EnvAddLong(a1, v33);
    *(v55 + 40) = GenConstant(a1, 1, v56);
    if (v41)
    {
      v57 = EnvAddLong(a1, v32);
      v58 = a1;
      v59 = 1;
    }

    else
    {
      v57 = *(*(*(a1 + 48) + 392) + 16);
      v58 = a1;
      v59 = 2;
    }

    *(v55 + 48) = GenConstant(v58, v59, v57);
    v60 = IntersectConstraints(a1, *(a3 + 32), v55);
    if ((*(a3 + 16) & 0x40) != 0)
    {
      RemoveConstraint(a1, *(a3 + 32));
    }

    RemoveConstraint(a1, v55);
    *(a3 + 32) = v60;
    *(a3 + 16) |= 0x40u;
    if (EnvGetStaticConstraintChecking(a1) && UnmatchableConstraint(v60))
    {
      v61 = (*(a4 + 16) >> 8) & 0x7F;
      v52 = 1;
      ConstraintViolationErrorMessage(a1, "The group of restrictions", 0, 0, v61, *(a3 + 64), *(a3 + 58), 5, *(a3 + 32), 1);
    }

    else
    {
      return 0;
    }
  }

  return v52;
}

uint64_t ConstraintReferenceErrorMessage(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  PrintErrorID(a1, "RULECSTR", 2, 1);
  EnvPrintRouter(a1, "werror", "Previous variable bindings of ?");
  EnvPrintRouter(a1, "werror", *(a2 + 24));
  EnvPrintRouter(a1, "werror", " caused the type restrictions");
  EnvPrintRouter(a1, "werror", "\nfor argument #");
  PrintLongInteger(a1, "werror", a4, v13, v14, v15, v16, v17);
  EnvPrintRouter(a1, "werror", " of the expression ");
  v18 = LHSParseNodesToExpression(a1, a3);
  ReturnExpression(a1, v18[3]);
  v18[3] = 0;
  PrintExpression(a1, "werror", v18, v24, v19, v20, v21, v22, v23);
  EnvPrintRouter(a1, "werror", "\n");
  ReturnExpression(a1, v18);
  EnvPrintRouter(a1, "werror", "found in CE #");
  PrintLongInteger(a1, "werror", (*(a3 + 16) >> 8) & 0x7F, v25, v26, v27, v28, v29);
  if (a6)
  {
    EnvPrintRouter(a1, "werror", " slot ");
    EnvPrintRouter(a1, "werror", *(a6 + 24));
  }

  else if (a7 >= 1)
  {
    EnvPrintRouter(a1, "werror", " field #");
    PrintLongInteger(a1, "werror", a7, v30, v31, v32, v33, v34);
  }

  return EnvPrintRouter(a1, "werror", " to be violated.\n");
}

void *GetExpressionVarConstraints(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  do
  {
    if (*(v2 + 192))
    {
      ExpressionVarConstraints = GetExpressionVarConstraints(a1);
      v4 = AddToVariableConstraints(a1, ExpressionVarConstraints, v4);
    }

    if (*v2 == 35)
    {
      GetLHSParseNode(a1);
      v7 = v6;
      v8 = *(v2 + 40);
      if (v8)
      {
        v9 = *v8;
      }

      else
      {
        v9 = 35;
      }

      *v6 = v9;
      *(v6 + 8) = *(v2 + 8);
      *(v6 + 16) |= 0x40u;
      *(v6 + 32) = CopyConstraintRecord(a1, *(v2 + 32));
      v4 = AddToVariableConstraints(a1, v7, v4);
    }

    v2 = *(v2 + 200);
  }

  while (v2);
  return v4;
}

void *AddToVariableConstraints(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = v4[24];
      v4[24] = 0;
      if (a2)
      {
        v7 = a2;
        while (v7[1] != v4[1])
        {
          v7 = v7[24];
          if (!v7)
          {
            goto LABEL_7;
          }
        }

        v8 = IntersectConstraints(a1, v7[4], v4[4]);
        RemoveConstraint(a1, v7[4]);
        v7[4] = v8;
        ReturnLHSParseNodes(a1, v4);
      }

      else
      {
LABEL_7:
        v4[24] = a2;
        a2 = v4;
      }

      v4 = v6;
    }

    while (v6);
  }

  return a2;
}

void *DeriveVariableConstraints(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 200);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = 0;
    v7 = v2;
    do
    {
      if (*v7 - 163 <= 1)
      {
        ExpressionVarConstraints = GetExpressionVarConstraints(a1, *(v7 + 21));
        v6 = AddToVariableConstraints(a1, v6, ExpressionVarConstraints);
      }

      v7 = *(v7 + 24);
    }

    while (v7);
    if (v4)
    {
      v9 = 0;
      if (v5)
      {
        do
        {
          if (v6)
          {
            v10 = v6;
            while (v5[1] != v10[1])
            {
              v10 = v10[24];
              if (!v10)
              {
                goto LABEL_15;
              }
            }

            GetLHSParseNode(a1);
            v12 = v11;
            *(v11 + 16) |= 0x40u;
            *(v11 + 8) = v5[1];
            *(v11 + 32) = UnionConstraints(a1, v5[4], v10[4]);
            v12[24] = v9;
            v9 = v12;
          }

LABEL_15:
          v13 = v5[24];
          v5[24] = 0;
          ReturnLHSParseNodes(a1, v5);
          v5 = v13;
        }

        while (v13);
      }

      ReturnLHSParseNodes(a1, v6);
      v6 = v9;
    }

    v2 = *(v2 + 25);
    v4 = 1;
    v5 = v6;
  }

  while (v2);
  return v6;
}

uint64_t CheckRHSForConstraintErrors(uint64_t a1, uint64_t *a2, unsigned __int16 *a3)
{
  if (a2)
  {
    v4 = a2;
    v33 = 0;
    do
    {
      if (*v4 == 30)
      {
        v6 = v4[1];
        v33 = v4;
      }

      else
      {
        v6 = 0;
      }

      v7 = v4[2];
      if (v7)
      {
        v8 = 1;
        do
        {
          if (v6 && *v7 == 35)
          {
            NthRestriction = GetNthRestriction(v6, v8);
            v10 = ArgumentTypeToConstraintRecord(a1, NthRestriction);
            Variable = FindVariable(*(v7 + 8), a3);
            if (Variable)
            {
              if (*Variable == 36)
              {
                ConstraintRecord = GetConstraintRecord(a1);
                SetConstraintType(4, ConstraintRecord);
              }

              else
              {
                v13 = *(Variable + 4);
                if (v13)
                {
                  v14 = CopyConstraintRecord(a1, v13);
                }

                else
                {
                  v14 = GetConstraintRecord(a1);
                }

                ConstraintRecord = v14;
              }
            }

            else
            {
              ConstraintRecord = 0;
            }

            BindConstraints = FindBindConstraints(a1, *(v7 + 8));
            v16 = UnionConstraints(a1, BindConstraints, ConstraintRecord);
            v17 = IntersectConstraints(a1, v16, v10);
            if (UnmatchableConstraint(v17) && EnvGetStaticConstraintChecking(a1))
            {
              v19 = 1;
              PrintErrorID(a1, "RULECSTR", 3, 1);
              EnvPrintRouter(a1, "werror", "Previous variable bindings of ?");
              EnvPrintRouter(a1, "werror", *(*(v7 + 8) + 24));
              EnvPrintRouter(a1, "werror", " caused the type restrictions");
              EnvPrintRouter(a1, "werror", "\nfor argument #");
              PrintLongInteger(a1, "werror", v8, v20, v21, v22, v23, v24);
              EnvPrintRouter(a1, "werror", " of the expression ");
              v25 = v33[3];
              v33[3] = 0;
              PrintExpression(a1, "werror", v33, v31, v26, v27, v28, v29, v30);
              v33[3] = v25;
              EnvPrintRouter(a1, "werror", "\nfound in the rule's RHS to be violated.\n");
              RemoveConstraint(a1, v10);
              RemoveConstraint(a1, ConstraintRecord);
              RemoveConstraint(a1, v16);
              RemoveConstraint(a1, v17);
              return v19;
            }

            RemoveConstraint(a1, v10);
            RemoveConstraint(a1, ConstraintRecord);
            RemoveConstraint(a1, v16);
            RemoveConstraint(a1, v17);
          }

          v18 = *(v7 + 24);
          *(v7 + 24) = 0;
          if (CheckRHSForConstraintErrors(a1, v7, a3))
          {
            *(v7 + 24) = v18;
            return 1;
          }

          *(v7 + 24) = v18;
          ++v8;
          v7 = v18;
        }

        while (v18);
      }

      v4 = v4[3];
    }

    while (v4);
  }

  return 0;
}

uint64_t InitializePrettyPrintData(uint64_t a1)
{
  result = AllocateEnvironmentData(a1, 0x34u, 0x38uLL, DeallocatePrettyPrintData);
  *(*(*(a1 + 48) + 416) + 4) = 1;
  return result;
}

uint64_t DeallocatePrettyPrintData(uint64_t result)
{
  v1 = *(*(result + 48) + 416);
  v2 = *(v1 + 48);
  if (v2)
  {
    return rm(result, v2, *(v1 + 24));
  }

  return result;
}

uint64_t FlushPPBuffer(uint64_t result)
{
  v1 = *(*(result + 48) + 416);
  v2 = v1[6];
  if (v2)
  {
    v1[2] = 0;
    v1[4] = 0;
    v1[5] = 0;
    *v2 = 0;
  }

  return result;
}

uint64_t DestroyPPBuffer(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(v1 + 416);
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v3 = v2[6];
  if (v3)
  {
    v4 = result;
    result = rm(result, v3, v2[3]);
    v1 = *(v4 + 48);
    v2 = *(v1 + 416);
  }

  v2[6] = 0;
  *(*(v1 + 416) + 24) = 0;
  return result;
}

char *SavePPBuffer(char *result, char *__s)
{
  v2 = *(*(result + 6) + 416);
  if (*v2 && *(v2 + 4))
  {
    v4 = result;
    v5 = *(v2 + 16);
    v6 = strlen(__s);
    v7 = *(v2 + 24);
    if (v5 + v6 + 1 >= v7)
    {
      if (v5 <= 0x200)
      {
        v8 = 512;
      }

      else
      {
        v8 = 3 * v5;
      }

      v9 = genrealloc(v4, *(v2 + 48), v7, v7 + v8);
      v10 = *(v4 + 48);
      *(*(v10 + 416) + 48) = v9;
      v2 = *(v10 + 416);
      v5 = *(v2 + 16);
      *(v2 + 24) += v8;
    }

    v11 = *(v2 + 32);
    *(v2 + 32) = v5;
    *(v2 + 40) = v11;
    result = AppendToString(v4, __s, *(v2 + 48), (v2 + 16), (v2 + 24));
    *(*(*(v4 + 48) + 416) + 48) = result;
  }

  return result;
}

uint64_t PPBackup(uint64_t result)
{
  v1 = *(*(result + 48) + 416);
  if (*v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      if (*(v1 + 4))
      {
        v3 = *(v1 + 32);
        v4 = *(v1 + 40);
        *(v1 + 16) = v3;
        *(v1 + 32) = v4;
        *(v2 + v3) = 0;
      }
    }
  }

  return result;
}

char *CopyPPBuffer(uint64_t a1)
{
  v2 = strlen(*(*(*(a1 + 48) + 416) + 48));
  v3 = gm2(a1, v2 + 1);
  genstrcpy(v3, *(*(*(a1 + 48) + 416) + 48));
  return v3;
}

char *PPCRAndIndent(char *result)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(result + 6) + 416);
  if (*v1 && v1[1])
  {
    v7[0] = 10;
    v2 = v1[2];
    if (v2 < 1)
    {
      v5 = 1;
    }

    else
    {
      v3 = 1;
      do
      {
        v4 = v3;
        v7[v3++] = 32;
      }

      while (v4 < v2);
      v5 = v3;
    }

    v7[v5] = 0;
    result = SavePPBuffer(result, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SetPPBufferEnabled(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 416);
  result = *(v2 + 4);
  *(v2 + 4) = a2;
  return result;
}

void sub_2325A98B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _loisChangedNotification(uint64_t a1, void *a2, const __CFString *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = CFStringCompare(a3, @"RTLocationsOfInterestDidChangeNotification", 0);
  v6 = outrankLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a3;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Unexpected CR notification name: %@", &v8, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "COSM: Received a CR LOI Changed notification", &v8, 2u);
    }

    [v4 queryHomeLOIRefresh:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2325AAD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

_OWORD *GetConstraintRecord(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 472);
  v4 = *(*(v3 + 40) + 640);
  if (v4)
  {
    *(v3 + 32) = v4;
    *(*(*(v2 + 472) + 40) + 640) = **(*(v2 + 472) + 32);
    v5 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v5 = genalloc(a1, 0x50uLL);
  }

  *(v5 + 4) = 0u;
  *(v5 + 20) = 0u;
  v5[4] = 0u;
  *(v5 + 52) = 0u;
  *(v5 + 36) = 0u;
  *v5 = 262145;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = GenConstant(a1, 2, *(*(*(a1 + 48) + 392) + 24));
  *(v5 + 4) = GenConstant(a1, 2, *(*(*(a1 + 48) + 392) + 16));
  *(v5 + 5) = GenConstant(a1, 1, *(*(*(a1 + 48) + 392) + 32));
  v6 = GenConstant(a1, 2, *(*(*(a1 + 48) + 392) + 16));
  *(v5 + 9) = 0xFFFFFFFFLL;
  *(v5 + 7) = 0;
  *(v5 + 8) = 0;
  *(v5 + 6) = v6;
  return v5;
}

unsigned __int32 *SetAnyAllowedFlags(unsigned __int32 *result, int a2)
{
  v2 = vandq_s8(vcgezq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(a2 != 0)), 0x1FuLL)), xmmword_232816960);
  v3 = vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  if (a2)
  {
    v4 = (*result & 0xFFFFFC00) + 1;
  }

  else
  {
    v4 = *result & 0xFFFFFC00;
  }

  *result = v3.i32[0] | v3.i32[1] | ((a2 == 0) << 8) | v4;
  return result;
}

void *CopyConstraintRecord(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(v4 + 472);
  v6 = *(*(v5 + 40) + 640);
  if (v6)
  {
    *(v5 + 32) = v6;
    *(*(*(v4 + 472) + 40) + 640) = **(*(v4 + 472) + 32);
    v7 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v7 = genalloc(a1, 0x50uLL);
  }

  v8 = *v7 & 0xFFFFFFFE | *a2 & 1;
  *v7 = v8;
  v9 = v8 & 0xFFFFFFFD | (2 * ((*a2 >> 1) & 1));
  *v7 = v9;
  v10 = v9 & 0xFFFFFFFB | (4 * ((*a2 >> 2) & 1));
  *v7 = v10;
  v11 = v10 & 0xFFFFFFF7 | (8 * ((*a2 >> 3) & 1));
  *v7 = v11;
  v12 = v11 & 0xFFFFFFEF | (16 * ((*a2 >> 4) & 1));
  *v7 = v12;
  v13 = v12 & 0xFFFFFFDF | (32 * ((*a2 >> 5) & 1));
  *v7 = v13;
  v14 = v13 & 0xFFFFFFBF | (((*a2 >> 6) & 1) << 6);
  *v7 = v14;
  v15 = v14 & 0xFFFFFF7F | (((*a2 >> 7) & 1) << 7);
  *v7 = v15;
  v16 = v15 & 0xFFFFFDFF | (((*a2 >> 9) & 1) << 9);
  *v7 = v16;
  v17 = v16 & 0xFFFDFFFF | (((*a2 >> 17) & 1) << 17);
  *v7 = v17;
  v18 = v17 & 0xFFFBFFFF | (((*a2 >> 18) & 1) << 18);
  *v7 = v18;
  v19 = v18 & 0xFFFFFEFF | (((*a2 >> 8) & 1) << 8);
  *v7 = v19;
  v20 = v19 & 0xFFFFFBFF | (((*a2 >> 10) & 1) << 10);
  *v7 = v20;
  v21 = v20 & 0xFFFFF7FF | (((*a2 >> 11) & 1) << 11);
  *v7 = v21;
  v22 = v21 & 0xFFFFEFFF | (((*a2 >> 12) & 1) << 12);
  *v7 = v22;
  v23 = v22 & 0xFFFFDFFF | (((*a2 >> 13) & 1) << 13);
  *v7 = v23;
  v24 = v23 & 0xFFFFBFFF | (((*a2 >> 14) & 1) << 14);
  *v7 = v24;
  v25 = v24 & 0xFFFF7FFF | (((*a2 >> 15) & 1) << 15);
  *v7 = v25;
  *v7 = v25 & 0xFFFEFFFF | ((HIWORD(*a2) & 1) << 16);
  v7[1] = CopyExpression(a1, *(a2 + 8));
  v7[2] = CopyExpression(a1, *(a2 + 16));
  v7[3] = CopyExpression(a1, *(a2 + 24));
  v7[4] = CopyExpression(a1, *(a2 + 32));
  v7[5] = CopyExpression(a1, *(a2 + 40));
  v7[6] = CopyExpression(a1, *(a2 + 48));
  v7[9] = 0xFFFFFFFFLL;
  v7[7] = CopyConstraintRecord(a1, *(a2 + 56));
  v7[8] = 0;
  return v7;
}

unsigned int *SetAnyRestrictionFlags(unsigned int *result, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 96256;
  }

  *result = v2 | *result & 0xFFFE83FF;
  return result;
}

uint64_t SetConstraintType(int a1, int *a2)
{
  v3 = *a2;
  result = 1;
  if (a1 <= 6)
  {
    if (a1 <= 2)
    {
      v17 = (v3 >> 3) & 1;
      v18 = v3 | 8;
      v19 = (v3 >> 4) & 1;
      v20 = v3 | 0x10;
      v21 = (v3 >> 1) & 1;
      if (a1 == 2)
      {
        v3 |= 2u;
      }

      else
      {
        v21 = 1;
      }

      if (a1 == 1)
      {
        v3 = v20;
      }

      else
      {
        v19 = v21;
      }

      if (a1)
      {
        result = v19;
      }

      else
      {
        v3 = v18;
        result = v17;
      }

      goto LABEL_44;
    }

    v5 = (v3 >> 7) & 1;
    v6 = v3 | 0x80;
    v7 = (v3 >> 8) & 1;
    v8 = v3 | 0x100;
    if (a1 != 6)
    {
      v8 = *a2;
      v7 = 1;
    }

    if (a1 != 5)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = (v3 >> 2) & 1;
    v10 = v3 | 4;
    v11 = (v3 >> 17) & 1;
    if (a1 == 4)
    {
      v3 |= 0x20000u;
    }

    else
    {
      v11 = 1;
    }

    if (a1 == 3)
    {
      v3 = v10;
    }

    else
    {
      v9 = v11;
    }

    v12 = a1 <= 4;
    goto LABEL_26;
  }

  if (a1 > 174)
  {
    v5 = (*a2 & 6) != 0;
    v6 = v3 | 6;
    v13 = (*a2 & 0x60) != 0;
    v14 = v3 | 0x60;
    if (a1 != 182)
    {
      v14 = *a2;
      v13 = 1;
    }

    if (a1 != 181)
    {
      v6 = v14;
      v5 = v13;
    }

    v9 = (v3 >> 9) & 1;
    v15 = v3 | 0x200;
    v16 = (*a2 & 0x18) != 0;
    if (a1 == 180)
    {
      v3 |= 0x18u;
    }

    else
    {
      v16 = 1;
    }

    if (a1 == 175)
    {
      v3 = v15;
    }

    else
    {
      v9 = v16;
    }

    v12 = a1 <= 180;
LABEL_26:
    if (v12)
    {
      result = v9;
    }

    else
    {
      v3 = v6;
      result = v5;
    }

    goto LABEL_44;
  }

  if (a1 == 7)
  {
    result = (v3 >> 6) & 1;
    v3 |= 0x40u;
    goto LABEL_44;
  }

  if (a1 == 8)
  {
    result = (v3 >> 5) & 1;
    v3 |= 0x20u;
    goto LABEL_44;
  }

  if (a1 != 173)
  {
LABEL_44:
    v22 = v3 & 0xFFFFFFFE;
    goto LABEL_45;
  }

  result = v3 & 1;
  v22 = v3 | 1;
LABEL_45:
  *a2 = v22;
  return result;
}

uint64_t CompareNumbers(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a3 == a5)
  {
    return 2;
  }

  v5 = *(*(a1 + 48) + 392);
  v6 = *(v5 + 16);
  if (v6 == a3)
  {
    return 1;
  }

  v7 = *(v5 + 24);
  if (v6 == a5 || v7 == a3)
  {
    return 0;
  }

  if (v7 == a5)
  {
    return 1;
  }

  if (a2 != 1 || a4 != 1)
  {
    if (a4 | a2)
    {
      if (a2 == 1 && !a4)
      {
        v14 = *(a3 + 24);
        v15 = *(a5 + 24);
        if (v15 <= v14)
        {
          if (v15 < v14)
          {
            return 1;
          }

          else
          {
            return 2;
          }
        }

        return 0;
      }

      result = 0xFFFFFFFFLL;
      if (a2 || a4 != 1)
      {
        return result;
      }

      v16 = *(a3 + 24);
      v17 = *(a5 + 24);
    }

    else
    {
      v16 = *(a3 + 24);
      v17 = *(a5 + 24);
    }

    if (v16 >= v17)
    {
      if (v16 > v17)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    return 0;
  }

  v10 = *(a3 + 24);
  v11 = *(a5 + 24);
  v12 = v10 < v11;
  if (v10 > v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (v12)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

_OWORD *ExpressionToConstraintRecord(uint64_t a1, unsigned __int16 *a2)
{
  if (!a2)
  {
    ConstraintRecord = GetConstraintRecord(a1);
    v6 = ConstraintRecord;
    v7 = *ConstraintRecord & 0xFFFFFFFE;
    goto LABEL_5;
  }

  v4 = *a2;
  if ((v4 - 31) < 6)
  {
    ConstraintRecord = GetConstraintRecord(a1);
    v6 = ConstraintRecord;
    v7 = *ConstraintRecord | 0x20000;
LABEL_5:
    *ConstraintRecord = v7;
    return v6;
  }

  if (v4 != 30)
  {
    v10 = GetConstraintRecord(a1);
    v6 = v10;
    v11 = *v10;
    v12 = *v10 & 0xFFFFFFFE;
    *v10 = v12;
    v13 = *a2;
    if (v13 <= 8 && ((0x18Fu >> v13) & 1) != 0)
    {
      v12 = v11 & dword_232816970[v13] | dword_232816994[v13];
      *v10 = v12;
    }

    if ((v12 & 0x3E) != 0)
    {
      *(v10 + 2) = GenConstant(a1, *a2, *(a2 + 1));
    }

    return v6;
  }

  v9 = *(a2 + 1);

  return FunctionCallToConstraintRecord(a1, v9);
}

_OWORD *FunctionCallToConstraintRecord(uint64_t a1, uint64_t a2)
{
  result = GetConstraintRecord(a1);
  v4 = *result;
  v5 = *result & 0xFFFFFFFE;
  *result = v5;
  switch(*(a2 + 16))
  {
    case 'a':
      v6 = v4 & 0xFFFFFF7E | 0x80;
      goto LABEL_17;
    case 'b':
    case 'c':
    case 'w':
      v6 = v5 | 2;
      goto LABEL_17;
    case 'd':
    case 'f':
      v6 = v5 | 8;
      goto LABEL_17;
    case 'g':
    case 'i':
    case 'l':
      v6 = v5 | 0x10;
      goto LABEL_17;
    case 'j':
      v4 &= 0xFFFFFFF8;
      v7 = 38;
      goto LABEL_14;
    case 'k':
      v6 = v4 & 0xFFFFFFF8 | 6;
      goto LABEL_17;
    case 'm':
      v6 = v4 & 0xFFF9FFFE | 0x20000;
      goto LABEL_17;
    case 'n':
      v6 = v4 & 0xFFFFFFE6 | 0x18;
      goto LABEL_17;
    case 'o':
      v6 = v4 & 0xFFFFFFDE | 0x20;
      goto LABEL_17;
    case 's':
      v6 = v4 & 0xFFFFFFFA | 4;
      goto LABEL_17;
    case 'u':
      v7 = 131073;
LABEL_14:
      v6 = v4 | v7;
      goto LABEL_17;
    case 'v':
      v6 = v4 & 0xFFFFFDFE | 0x200;
      goto LABEL_17;
    case 'x':
      v6 = v4 & 0xFFFFFFBE | 0x40;
      goto LABEL_17;
    case 'y':
      v6 = v4 & 0xFFFFFEFE | 0x100;
LABEL_17:
      *result = v6;
      break;
    default:
      return result;
  }

  return result;
}

_OWORD *ArgumentTypeToConstraintRecord(uint64_t a1, int a2)
{
  result = GetConstraintRecord(a1);
  v4 = *result;
  v5 = *result & 0xFFFFFFFE;
  *result = v5;
  switch(a2)
  {
    case 'a':
      v6 = v4 & 0xFFFFFF7E | 0x80;
      goto LABEL_22;
    case 'd':
    case 'f':
      v6 = v5 | 8;
      goto LABEL_22;
    case 'e':
      v4 &= 0xFFFFFFFC;
      v7 = 98;
      goto LABEL_21;
    case 'g':
      v4 &= 0xFFFFFFFC;
      v7 = 26;
      goto LABEL_21;
    case 'h':
      v4 &= 0xFFFFFFFC;
      v7 = 370;
      goto LABEL_21;
    case 'i':
    case 'l':
      v6 = v5 | 0x10;
      goto LABEL_22;
    case 'j':
      v4 &= 0xFFFFFFF8;
      v7 = 38;
      goto LABEL_21;
    case 'k':
      v6 = v4 & 0xFFFFFFF8 | 6;
      goto LABEL_22;
    case 'm':
      v6 = v4 & 0xFFF9FFFE | 0x20000;
      goto LABEL_22;
    case 'n':
      v6 = v4 & 0xFFFFFFE6 | 0x18;
      goto LABEL_22;
    case 'o':
      v6 = v4 & 0xFFFFFFDE | 0x20;
      goto LABEL_22;
    case 'p':
      v4 &= 0xFFFFFFFC;
      v7 = 34;
      goto LABEL_21;
    case 'q':
      v6 = (v4 & 0xFFFDFFF8 | 0x20001) + 5;
      goto LABEL_22;
    case 's':
      v6 = v4 & 0xFFFFFFFA | 4;
      goto LABEL_22;
    case 'u':
      v7 = 131073;
      goto LABEL_21;
    case 'v':
      v6 = v4 & 0xFFFFFDFE | 0x200;
      goto LABEL_22;
    case 'w':
      v6 = v4 & 0xFFFFFFFC | 2;
      goto LABEL_22;
    case 'x':
      v6 = v4 & 0xFFFFFFBE | 0x40;
      goto LABEL_22;
    case 'y':
      v6 = v4 & 0xFFFFFEFE | 0x100;
      goto LABEL_22;
    case 'z':
      v4 &= 0xFFFFFFFC;
      v7 = 274;
LABEL_21:
      v6 = v4 | v7;
LABEL_22:
      *result = v6;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t DeftemplateBasicCommands(uint64_t a1)
{
  EnvAddClearFunction(a1, "deftemplate", ClearDeftemplates, 0);
  AddSaveFunction(a1, "deftemplate", SaveDeftemplates, 10);
  EnvDefineFunction2(a1, "get-deftemplate-list", 109, GetDeftemplateListFunction, "GetDeftemplateListFunction", "01w");
  EnvDefineFunction2(a1, "undeftemplate", 118, UndeftemplateCommand, "UndeftemplateCommand", "11w");
  EnvDefineFunction2(a1, "deftemplate-module", 119, DeftemplateModuleFunction, "DeftemplateModuleFunction", "11w");
  EnvDefineFunction2(a1, "list-deftemplates", 118, ListDeftemplatesCommand, "ListDeftemplatesCommand", "01w");
  EnvDefineFunction2(a1, "ppdeftemplate", 118, PPDeftemplateCommand, "PPDeftemplateCommand", "11w");

  return DeftemplateBinarySetup(a1);
}

void *ClearDeftemplates(uint64_t a1)
{
  v2 = EnvAddSymbol(a1, "initial-fact");

  return CreateImpliedDeftemplate(a1, v2, 0);
}

char *DeriveDefaultFromConstraints(char *result, void *a2, uint64_t a3, int a4, int a5)
{
  v8 = result;
  if (!a2)
  {
    if (a4)
    {
      *(a3 + 8) = 4;
      *(a3 + 24) = xmmword_2328169C0;
      if (a5)
      {
        result = EnvCreateMultifield(result, 0);
      }

      else
      {
        result = CreateMultifield2(result, 0);
      }
    }

    else
    {
      *(a3 + 8) = 2;
      result = EnvAddSymbol(result, "nil");
    }

    *(a3 + 16) = result;
    return result;
  }

  v10 = *a2;
  if ((*a2 & 3) != 0)
  {
    result = EnvAddSymbol(result, "nil");
    v11 = result;
    v12 = a2[2];
    if (v12)
    {
      while (*v12 != 2)
      {
        v12 = *(v12 + 24);
        if (!v12)
        {
          goto LABEL_18;
        }
      }

      v11 = *(v12 + 8);
    }

    goto LABEL_18;
  }

  if ((v10 & 4) != 0)
  {
    result = EnvAddSymbol(result, "");
    v11 = result;
    v14 = a2[2];
    if (v14)
    {
      while (*v14 != 3)
      {
        v14 = *(v14 + 24);
        if (!v14)
        {
          goto LABEL_27;
        }
      }

      v11 = *(v14 + 8);
    }

LABEL_27:
    v13 = 3;
    goto LABEL_28;
  }

  if ((v10 & 0x10) != 0)
  {
    v15 = EnvAddLong(result, 0);
    v13 = 1;
    result = FindDefaultValue(v8, 1, a2, v15);
    v11 = result;
  }

  else if ((v10 & 8) != 0)
  {
    v20 = EnvAddDouble(result, 0.0);
    result = FindDefaultValue(v8, 0, a2, v20);
    v11 = result;
    v13 = 0;
  }

  else if ((v10 & 0x100) != 0)
  {
    v11 = (*(*(result + 6) + 24) + 8);
    v13 = 6;
  }

  else
  {
    if ((v10 & 0x80) == 0)
    {
      result = EnvAddSymbol(result, "nil");
      v11 = result;
LABEL_18:
      v13 = 2;
      goto LABEL_28;
    }

    result = EnvAddExternalAddress(result, 0, 0);
    v11 = result;
    v13 = 5;
  }

LABEL_28:
  if (a4)
  {
    v16 = a2[5];
    if (!v16 || (v17 = *(v16 + 8), v17 == *(*(v8[6] + 392) + 24)))
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 24);
    }

    *(a3 + 8) = 4;
    *(a3 + 24) = 0;
    *(a3 + 32) = v18 - 1;
    if (a5)
    {
      result = EnvCreateMultifield(v8, v18);
    }

    else
    {
      result = CreateMultifield2(v8, v18);
    }

    *(a3 + 16) = result;
    if (v18)
    {
      v19 = &result[16 * v18 + 16];
      do
      {
        *(v19 - 4) = v13;
        *v19 = v11;
        v19 -= 16;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    *(a3 + 8) = v13;
    *(a3 + 16) = v11;
  }

  return result;
}

double *FindDefaultValue(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 3);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    return *(v4 + 1);
  }

LABEL_4:
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = a3[3];
      if (!*v4)
      {
        return EnvAddLong(a1, *(*(v4 + 1) + 24));
      }

      if (*v4 != 1)
      {
        v4 = a3[4];
        if (*v4)
        {
          if (*v4 != 1)
          {
            return a4;
          }

          return *(v4 + 1);
        }

        return EnvAddLong(a1, *(*(v4 + 1) + 24));
      }

      return *(v4 + 1);
    }

    return a4;
  }

  v4 = a3[3];
  if (*v4 != 1)
  {
    if (!*v4)
    {
      return *(v4 + 1);
    }

    v4 = a3[4];
    if (*v4 != 1)
    {
      if (!*v4)
      {
        return *(v4 + 1);
      }

      return a4;
    }
  }

  return EnvAddDouble(a1, *(*(v4 + 1) + 24));
}

uint64_t ParseDefault(char *a1, char *a2, int a3, int a4, int a5, _DWORD *a6, _DWORD *a7, int *a8)
{
  v36[0] = 0;
  v36[1] = 0;
  __s = 0;
  memset(v35, 0, sizeof(v35));
  *a6 = 0;
  *a7 = 0;
  SavePPBuffer(a1, " ");
  GetToken(a1, a2, v36);
  v13 = 0;
  if (LOWORD(v36[0]) == 171)
  {
LABEL_2:
    PPBackup(a1);
    PPBackup(a1);
    SavePPBuffer(a1, ")");
    if (a3)
    {
      goto LABEL_3;
    }

    if (v13 && !*(v13 + 24))
    {
      v29 = ExpressionToConstraintRecord(a1, v13);
      *v29 &= ~0x20000u;
      if (UnmatchableConstraint(v29))
      {
        *a8 = 1;
      }

      RemoveConstraint(a1, v29);
      if (!*a8)
      {
LABEL_3:
        if (a4 || !a5 || !v13)
        {
          return v13;
        }

        appended = 0;
        v15 = v13;
        while (1)
        {
          SetEvaluationError(a1, 0);
          if (EvaluateExpression(a1, v15, v35))
          {
            *a8 = 1;
          }

          v16 = *a8;
          if (!a3 && WORD4(v35[0]) == 4)
          {
            break;
          }

          if (v16)
          {
            goto LABEL_33;
          }

          v17 = ConvertValueToExpression(a1, v35);
          appended = AppendExpressions(appended, v17);
          v15 = *(v15 + 24);
          if (!v15)
          {
            ReturnExpression(a1, v13);
            return appended;
          }
        }

        if (!v16)
        {
          PrintErrorID(a1, "DEFAULT", 1, 1);
          EnvPrintRouter(a1, "werror", "The default value for a single field slot must be a single field value\n");
          *a8 = 1;
        }

LABEL_33:
        ReturnExpression(a1, v13);
        v27 = a1;
        v28 = appended;
LABEL_43:
        ReturnExpression(v27, v28);
        appended = 0;
        *a8 = 1;
        return appended;
      }
    }

    else
    {
      *a8 = 1;
    }

    PrintErrorID(a1, "DEFAULT", 1, 1);
    EnvPrintRouter(a1, "werror", "The default value for a single field slot must be a single field value\n");
    ReturnExpression(a1, v13);
    return 0;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = ParseAtomOrExpression(a1, a2, v36);
    if (!v20)
    {
      goto LABEL_42;
    }

    v21 = v20;
    v22 = *v20;
    if ((v22 - 35) <= 1)
    {
      v23 = *(v20[1] + 24);
      v24 = strcmp(v23, "NONE");
      if (v24)
      {
        v25 = strcmp(v23, "DERIVE") != 0;
      }

      else
      {
        v25 = 0;
      }

      if (a4)
      {
        v30 = "default-dynamic attribute";
      }

      else
      {
        if (v22 == 36)
        {
          v25 = 1;
        }

        v30 = "default attribute";
        if (!v25 && !v19)
        {
          ReturnExpression(a1, v21);
          GetToken(a1, a2, v36);
          if (LOWORD(v36[0]) != 171)
          {
            SyntaxErrorMessage(a1, "default attribute");
            PPBackup(a1);
            SavePPBuffer(a1, " ");
            SavePPBuffer(a1, __s);
            *a8 = 1;
          }

          appended = 0;
          if (v24)
          {
            *a7 = 1;
          }

          else
          {
            *a6 = 1;
          }

          return appended;
        }
      }

      SyntaxErrorMessage(a1, v30);
      ReturnExpression(a1, v21);
LABEL_42:
      v27 = a1;
      v28 = v19;
      goto LABEL_43;
    }

    if (ExpressionContainsVariables(v20, 0) == 1)
    {
      break;
    }

    v13 = v21;
    if (v18)
    {
      *(v18 + 24) = v21;
      v13 = v19;
    }

    SavePPBuffer(a1, " ");
    GetToken(a1, a2, v36);
    v18 = v21;
    v19 = v13;
    if (LOWORD(v36[0]) == 171)
    {
      goto LABEL_2;
    }
  }

  ReturnExpression(a1, v19);
  ReturnExpression(a1, v21);
  *a8 = 1;
  if (a4)
  {
    v26 = "default-dynamic attribute";
  }

  else
  {
    v26 = "default attribute";
  }

  SyntaxErrorMessage(a1, v26);
  return 0;
}

uint64_t DeallocateScannerData(uint64_t result)
{
  v1 = *(*(result + 48) + 456);
  v2 = *(v1 + 8);
  if (v2)
  {
    return genfree(result, *v1, v2);
  }

  return result;
}

uint64_t GetToken(uint64_t a1, char *a2, unsigned __int16 *a3)
{
  *a3 = 173;
  *(a3 + 1) = 0;
  *(a3 + 2) = "unknown";
  v6 = *(*(a1 + 48) + 456);
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  while (1)
  {
    v7 = EnvGetcRouter(a1, a2);
    v8 = v7;
    if (v7 > 0x3B)
    {
      break;
    }

    if (((1 << v7) & 0x100003600) == 0)
    {
      if (v7 != 59)
      {
        break;
      }

      do
      {
        v9 = EnvGetcRouter(a1, a2);
      }

      while ((v9 + 1) > 0xE || ((1 << (v9 + 1)) & 0x4801) == 0);
    }
  }

  if (v7 > 0x7F)
  {
    v11 = __maskrune(v7, 0x100uLL);
  }

  else
  {
    v11 = *(MEMORY[0x277D85DE0] + 4 * v7 + 60) & 0x100;
  }

  v40 = 0;
  if (v11 || (v8 & 0xF8) - 192 <= 0x37)
  {
    *a3 = 2;
LABEL_16:
    EnvUngetcRouter(a1, v8, a2);
LABEL_17:
    v12 = ScanSymbol(a1, a2, &v40);
    v13 = v12[3];
LABEL_18:
    *(a3 + 1) = v12;
LABEL_19:
    *(a3 + 2) = v13;
LABEL_20:
    v14 = *a3;
    goto LABEL_21;
  }

  if ((v8 - 48) <= 9)
  {
LABEL_28:
    EnvUngetcRouter(a1, v8, a2);
    ScanNumber(a1, a2, a3);
    goto LABEL_20;
  }

  if (v8 <= 40)
  {
    if (v8 <= 35)
    {
      if ((v8 + 1) < 2 || v8 == 3)
      {
        *a3 = 172;
        v12 = EnvAddSymbol(a1, "stop");
        v13 = "";
        goto LABEL_18;
      }

      if (v8 != 34)
      {
        goto LABEL_53;
      }

      v20 = ScanString(a1, a2);
      *(a3 + 1) = v20;
      *a3 = 3;
      appended = StringPrintForm(a1, v20[3]);
LABEL_87:
      *(a3 + 2) = appended;
      goto LABEL_20;
    }

    if (v8 != 36)
    {
      if (v8 == 38)
      {
        *a3 = 161;
        v25 = "&";
      }

      else
      {
        if (v8 != 40)
        {
          goto LABEL_53;
        }

        *a3 = 170;
        v25 = "(";
      }

      goto LABEL_59;
    }

    v27 = EnvGetcRouter(a1, a2);
    if (v27 != 63)
    {
      v8 = v27;
      *a3 = 2;
      **(*(a1 + 48) + 456) = ExpandStringWithChar(a1, 36, **(*(a1 + 48) + 456), (*(*(a1 + 48) + 456) + 16), (*(*(a1 + 48) + 456) + 8), *(*(*(a1 + 48) + 456) + 8) + 80);
      goto LABEL_16;
    }

    v28 = EnvGetcRouter(a1, a2);
    v23 = v28;
    if (v28 > 0x7F)
    {
      v29 = __maskrune(v28, 0x100uLL);
    }

    else
    {
      v29 = *(MEMORY[0x277D85DE0] + 4 * v28 + 60) & 0x100;
    }

    if (v29)
    {
LABEL_80:
      EnvUngetcRouter(a1, v23, a2);
      v37 = ScanSymbol(a1, a2, &v40);
      *(a3 + 1) = v37;
      *a3 = 36;
      v33 = v37[3];
      if (*v33 == 42)
      {
        v38 = strlen(v37[3]);
        if (v38 >= 2 && v33[v38 - 1] == 42)
        {
          *a3 = 34;
          v35 = "$?";
          goto LABEL_84;
        }
      }

      v36 = "$?";
      goto LABEL_86;
    }

    if (v23 < 0xC0u)
    {
      if (v23 == 42)
      {
        goto LABEL_80;
      }
    }

    else if (v23 < 0xF8u)
    {
      goto LABEL_80;
    }

    *a3 = 38;
    *(a3 + 1) = EnvAddSymbol(a1, "$?");
    *(a3 + 2) = "$?";
    EnvUngetcRouter(a1, v23, a2);
    goto LABEL_20;
  }

  if (v8 > 59)
  {
    if (v8 <= 123)
    {
      if (v8 == 60)
      {
        *a3 = 2;
        **(*(a1 + 48) + 456) = ExpandStringWithChar(a1, 60, **(*(a1 + 48) + 456), (*(*(a1 + 48) + 456) + 16), (*(*(a1 + 48) + 456) + 8), *(*(*(a1 + 48) + 456) + 8) + 80);
        goto LABEL_17;
      }

      if (v8 != 63)
      {
        goto LABEL_53;
      }

      v22 = EnvGetcRouter(a1, a2);
      v23 = v22;
      if (v22 > 0x7F)
      {
        v24 = __maskrune(v22, 0x100uLL);
      }

      else
      {
        v24 = *(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x100;
      }

      if (v24)
      {
        goto LABEL_68;
      }

      if (v23 < 0xC0u)
      {
        if (v23 != 42)
        {
LABEL_89:
          *a3 = 37;
          *(a3 + 1) = EnvAddSymbol(a1, "?");
          EnvUngetcRouter(a1, v23, a2);
          *(a3 + 2) = "?";
          goto LABEL_20;
        }
      }

      else if (v23 >= 0xF8u)
      {
        goto LABEL_89;
      }

LABEL_68:
      EnvUngetcRouter(a1, v23, a2);
      v32 = ScanSymbol(a1, a2, &v40);
      *(a3 + 1) = v32;
      *a3 = 35;
      v33 = v32[3];
      if (*v33 == 42)
      {
        v34 = strlen(v32[3]);
        if (v34 >= 2 && v33[v34 - 1] == 42)
        {
          *a3 = 33;
          v35 = "?";
LABEL_84:
          *(a3 + 2) = AppendStrings(a1, v35, v33);
          v39 = strlen(**(*(a1 + 48) + 456)) - 1;
          *(**(*(a1 + 48) + 456) + v39) = 0;
          *(a3 + 1) = EnvAddSymbol(a1, (**(*(a1 + 48) + 456) + 1));
          *(**(*(a1 + 48) + 456) + v39) = v23;
          goto LABEL_20;
        }
      }

      v36 = "?";
LABEL_86:
      appended = AppendStrings(a1, v36, v33);
      goto LABEL_87;
    }

    if (v8 == 124)
    {
      *a3 = 162;
      v25 = "|";
    }

    else
    {
      if (v8 != 126)
      {
        goto LABEL_53;
      }

      *a3 = 160;
      v25 = "~";
    }

LABEL_59:
    *(a3 + 1) = EnvAddSymbol(a1, v25);
    *(a3 + 2) = v25;
    goto LABEL_20;
  }

  if ((v8 - 45) < 2)
  {
    goto LABEL_28;
  }

  if (v8 == 41)
  {
    *a3 = 171;
    v25 = ")";
    goto LABEL_59;
  }

  if (v8 == 43)
  {
    goto LABEL_28;
  }

LABEL_53:
  if (v8 > 0x7F)
  {
    v26 = __maskrune(v8, 0x40000uLL);
  }

  else
  {
    v26 = *(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x40000;
  }

  if (!v26)
  {
    v13 = "<<<unprintable character>>>";
    goto LABEL_19;
  }

  EnvUngetcRouter(a1, v8, a2);
  v30 = ScanSymbol(a1, a2, &v40);
  v14 = v40;
  *a3 = v40;
  v31 = v30[3];
  *(a3 + 1) = v30;
  *(a3 + 2) = v31;
LABEL_21:
  if (v14 == 8)
  {
    SavePPBuffer(a1, "[");
    SavePPBuffer(a1, *(a3 + 2));
    v15 = "]";
  }

  else
  {
    v15 = *(a3 + 2);
  }

  result = SavePPBuffer(a1, v15);
  v17 = *(*(a1 + 48) + 456);
  if (*v17)
  {
    result = rm(a1, *v17, *(v17 + 8));
    v18 = *(a1 + 48);
    **(v18 + 456) = 0;
    v19 = *(v18 + 456);
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
  }

  return result;
}

uint64_t *ScanSymbol(uint64_t a1, char *a2, _WORD *a3)
{
  v6 = EnvGetcRouter(a1, a2);
  v7 = MEMORY[0x277D85DE0];
  while ((v6 > 0x3C || ((1 << v6) & 0x1800034500000000) == 0) && v6 != 124 && v6 != 126)
  {
    if (v6 > 0x7F)
    {
      if (__maskrune(v6, 0x40000uLL))
      {
        goto LABEL_12;
      }
    }

    else if ((*(v7 + 4 * v6 + 60) & 0x40000) != 0)
    {
      goto LABEL_12;
    }

    if ((v6 & 0xC0) != 0x80 && (v6 & 0xF8) - 192 > 0x37)
    {
      break;
    }

LABEL_12:
    **(*(a1 + 48) + 456) = ExpandStringWithChar(a1, v6, **(*(a1 + 48) + 456), (*(*(a1 + 48) + 456) + 16), (*(*(a1 + 48) + 456) + 8), *(*(*(a1 + 48) + 456) + 8) + 80);
    v6 = EnvGetcRouter(a1, a2);
  }

  EnvUngetcRouter(a1, v6, a2);
  *a3 = 2;
  v8 = **(*(a1 + 48) + 456);

  return EnvAddSymbol(a1, v8);
}

uint64_t ScanNumber(uint64_t a1, char *a2, uint64_t a3)
{
  v35 = 0;
  v6 = EnvGetcRouter(a1, a2);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = -1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v11 = v8;
        if (v10 >= 2)
        {
          break;
        }

        if (v10 == -1)
        {
          if ((v6 - 48) < 0xA)
          {
            goto LABEL_29;
          }

          v10 = 0;
          if (v6 == 43 || v6 == 45)
          {
LABEL_43:
            **(*(a1 + 48) + 456) = ExpandStringWithChar(a1, v6, **(*(a1 + 48) + 456), (*(*(a1 + 48) + 456) + 16), (*(*(a1 + 48) + 456) + 8), *(*(*(a1 + 48) + 456) + 8) + 80);
            ++v7;
            v6 = EnvGetcRouter(a1, a2);
            v8 = v11;
          }

          else
          {
            if (v6 == 46)
            {
              goto LABEL_41;
            }

            if ((v6 & 0xFFFFFFDF) == 0x45)
            {
              goto LABEL_47;
            }

            v10 = 5;
            if ((v6 > 0x3C || ((1 << v6) & 0x1800034500000000) == 0) && v6 != 124 && v6 != 126)
            {
              v13 = v6 > 0x7F ? __maskrune(v6, 0x40000uLL) : *(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x40000;
              v8 = v11;
              if (v13)
              {
LABEL_68:
                **(*(a1 + 48) + 456) = ExpandStringWithChar(a1, v6, **(*(a1 + 48) + 456), (*(*(a1 + 48) + 456) + 16), (*(*(a1 + 48) + 456) + 8), *(*(*(a1 + 48) + 456) + 8) + 80);
                ++v7;
                v10 = 9;
                v8 = v11;
              }
            }
          }
        }

        else
        {
          if (!v10)
          {
            if ((v6 - 48) < 0xA)
            {
LABEL_29:
              v10 = 0;
              v11 = 1;
              goto LABEL_43;
            }

            if (v6 == 46)
            {
LABEL_41:
              v9 = 1;
              goto LABEL_42;
            }

            if ((v6 & 0xFFFFFFDF) != 0x45)
            {
              goto LABEL_48;
            }

LABEL_47:
            v10 = 2;
            v9 = 1;
            goto LABEL_43;
          }

          if ((v6 - 48) < 0xA)
          {
            v11 = 1;
LABEL_42:
            v10 = 1;
            goto LABEL_43;
          }

          if ((v6 & 0xFFFFFFDF) == 0x45)
          {
            v10 = 2;
            goto LABEL_43;
          }

LABEL_48:
          v10 = 5;
          if ((v6 > 0x3C || ((1 << v6) & 0x1800034500000000) == 0) && v6 != 124 && v6 != 126)
          {
            if (v6 > 0x7F)
            {
              if (__maskrune(v6, 0x40000uLL))
              {
                goto LABEL_68;
              }
            }

            else if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x40000) != 0)
            {
              goto LABEL_68;
            }

            v14 = (v6 & 0xF8) - 192;
            v8 = v11;
            goto LABEL_67;
          }
        }
      }

      if (v10 > 2)
      {
        break;
      }

      if ((v6 - 48) < 0xA)
      {
        goto LABEL_16;
      }

      v8 = 0;
      v10 = 5;
      if (v6 > 0x3C)
      {
        goto LABEL_33;
      }

      if (((1 << v6) & 0x1800034500000000) == 0)
      {
        if (((1 << v6) & 0x280000000000) != 0)
        {
LABEL_16:
          v10 = 3;
          goto LABEL_43;
        }

LABEL_33:
        if (v6 != 124 && v6 != 126)
        {
          if (v6 > 0x7F)
          {
            if (__maskrune(v6, 0x40000uLL))
            {
              goto LABEL_68;
            }
          }

          else if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x40000) != 0)
          {
            goto LABEL_68;
          }

          v8 = 0;
          v14 = (v6 & 0xF8) - 192;
LABEL_67:
          if (v14 <= 0x37)
          {
            goto LABEL_68;
          }
        }
      }
    }

    if (v10 != 3)
    {
      break;
    }

    if ((v6 - 48) < 0xA)
    {
      goto LABEL_16;
    }

    if ((v6 > 0x3C || ((1 << v6) & 0x1800034500000000) == 0) && v6 != 124 && v6 != 126)
    {
      if (v6 > 0x7F)
      {
        if (__maskrune(v6, 0x40000uLL))
        {
          goto LABEL_68;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x40000) != 0)
      {
        goto LABEL_68;
      }

      if ((v6 & 0xF8) - 192 < 0x38)
      {
        goto LABEL_68;
      }
    }

    v12 = *(**(*(a1 + 48) + 456) + v7 - 1);
    if (v12 != 45)
    {
      v10 = 5;
      v8 = v11;
      if (v12 != 43)
      {
        continue;
      }
    }

    v8 = 0;
    v10 = 5;
  }

  if (v10 != 5)
  {
    v26 = ScanSymbol(a1, a2, &v35);
    *(a3 + 8) = v26;
    *a3 = v35;
    goto LABEL_76;
  }

  EnvUngetcRouter(a1, v6, a2);
  if (v11)
  {
    if (v9)
    {
      v15 = atof(**(*(a1 + 48) + 456));
      *a3 = 0;
      v16 = EnvAddDouble(a1, v15);
      *(a3 + 8) = v16;
      v17.n128_f64[0] = v16[3];
      result = FloatToString(a1, v17, v18, v19, v20, v21, v22, v23, v24);
    }

    else
    {
      *__error() = 0;
      v27 = strtoll(**(*(a1 + 48) + 456), 0, 10);
      if (*__error())
      {
        PrintWarningID(a1, "SCANNER", 1, 0);
        EnvPrintRouter(a1, "wwarning", "Over or underflow of long long integer.\n");
      }

      *a3 = 1;
      v28 = EnvAddLong(a1, v27);
      *(a3 + 8) = v28;
      result = LongIntegerToString(a1, v28[3], v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    *a3 = 2;
    v26 = EnvAddSymbol(a1, **(*(a1 + 48) + 456));
    *(a3 + 8) = v26;
LABEL_76:
    result = v26[3];
  }

  *(a3 + 16) = result;
  return result;
}

uint64_t *ScanString(uint64_t a1, char *a2)
{
  v8 = 0;
  v9 = 0;
  v4 = EnvGetcRouter(a1, a2);
  v5 = 0;
  while (1)
  {
    if (v4 == 92)
    {
      v4 = EnvGetcRouter(a1, a2);
      goto LABEL_7;
    }

    if (v4 == -1)
    {
      break;
    }

    if (v4 == 34)
    {
      goto LABEL_9;
    }

LABEL_7:
    v5 = ExpandStringWithChar(a1, v4, v5, &v9, &v8, v8 + 80);
    v4 = EnvGetcRouter(a1, a2);
  }

  if (*(*(*(a1 + 48) + 456) + 32))
  {
LABEL_9:
    if (v5)
    {
LABEL_10:
      v6 = EnvAddSymbol(a1, v5);
      rm(a1, v5, v8);
      return v6;
    }
  }

  else
  {
    PrintErrorID(a1, "SCANNER", 1, 1);
    EnvPrintRouter(a1, "werror", "Encountered End-Of-File while scanning a string\n");
    if (v5)
    {
      goto LABEL_10;
    }
  }

  return EnvAddSymbol(a1, "");
}

__n128 CopyToken(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t SetLineCount(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 456);
  result = *(v2 + 24);
  *(v2 + 24) = a2;
  return result;
}

const char *currentUsageString(unsigned int a1)
{
  if (a1 > 5)
  {
    return "unknown";
  }

  else
  {
    return off_27898B730[a1];
  }
}

void sub_2325B0AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t BasicMathFunctionDefinitions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 6u, 4uLL, 0);
  **(*(a1 + 48) + 48) = 1;
  EnvDefineFunction2(a1, "+", 110, AdditionFunction, "AdditionFunction", "2*n");
  EnvDefineFunction2(a1, "*", 110, MultiplicationFunction, "MultiplicationFunction", "2*n");
  EnvDefineFunction2(a1, "-", 110, SubtractionFunction, "SubtractionFunction", "2*n");
  EnvDefineFunction2(a1, "/", 110, DivisionFunction, "DivisionFunction", "2*n");
  EnvDefineFunction2(a1, "div", 103, DivFunction, "DivFunction", "2*n");
  EnvDefineFunction2(a1, "set-auto-float-dividend", 98, SetAutoFloatDividendCommand, "SetAutoFloatDividendCommand", "11");
  EnvDefineFunction2(a1, "get-auto-float-dividend", 98, GetAutoFloatDividendCommand, "GetAutoFloatDividendCommand", "00");
  EnvDefineFunction2(a1, "integer", 103, IntegerFunction, "IntegerFunction", "11n");
  EnvDefineFunction2(a1, "float", 100, FloatFunction, "FloatFunction", "11n");
  EnvDefineFunction2(a1, "abs", 110, AbsFunction, "AbsFunction", "11n");
  EnvDefineFunction2(a1, "min", 110, MinFunction, "MinFunction", "2*n");

  return EnvDefineFunction2(a1, "max", 110, MaxFunction, "MaxFunction", "2*n");
}

void *AdditionFunction(uint64_t a1, uint64_t a2)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v4 = *(**(*(a1 + 48) + 352) + 16);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0.0;
  v8 = 1;
  do
  {
    if (GetNumericArgument(a1, v4, "+", &v11, v5, v8))
    {
      v4 = *(v4 + 24);
      if (v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = 0;
      if (v5)
      {
LABEL_5:
        v9 = 0;
        v7 = v7 + *(v12 + 24);
        goto LABEL_10;
      }
    }

    if (WORD4(v11) == 1)
    {
      v5 = 0;
      v6 += *(v12 + 24);
      v9 = 1;
      goto LABEL_11;
    }

    v9 = 0;
    v7 = *(v12 + 24) + v6;
LABEL_10:
    v5 = 1;
LABEL_11:
    ++v8;
  }

  while (v4);
  if (v9)
  {
LABEL_15:
    *(a2 + 8) = 1;
    result = EnvAddLong(a1, v6);
    goto LABEL_16;
  }

  *(a2 + 8) = 0;
  result = EnvAddDouble(a1, v7);
LABEL_16:
  *(a2 + 16) = result;
  return result;
}

void *MultiplicationFunction(uint64_t a1, uint64_t a2)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v4 = *(**(*(a1 + 48) + 352) + 16);
  if (!v4)
  {
    v8 = 1;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = 1.0;
  v7 = 1;
  v8 = 1;
  do
  {
    if (GetNumericArgument(a1, v4, "*", &v11, v5, v7))
    {
      v4 = *(v4 + 24);
      if (v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = 0;
      if (v5)
      {
LABEL_5:
        v9 = 0;
        v6 = v6 * *(v12 + 24);
        goto LABEL_10;
      }
    }

    if (WORD4(v11) == 1)
    {
      v5 = 0;
      v8 *= *(v12 + 24);
      v9 = 1;
      goto LABEL_11;
    }

    v9 = 0;
    v6 = *(v12 + 24) * v8;
LABEL_10:
    v5 = 1;
LABEL_11:
    ++v7;
  }

  while (v4);
  if (v9)
  {
LABEL_15:
    *(a2 + 8) = 1;
    result = EnvAddLong(a1, v8);
    goto LABEL_16;
  }

  *(a2 + 8) = 0;
  result = EnvAddDouble(a1, v6);
LABEL_16:
  *(a2 + 16) = result;
  return result;
}

void *SubtractionFunction(uint64_t a1, uint64_t a2)
{
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v4 = **(*(a1 + 48) + 352);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_21;
  }

  if (GetNumericArgument(a1, *(v4 + 16), "-", &v11, 0, 1))
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  if (WORD4(v11) != 1)
  {
    v5 = 0;
    v8 = *(v12 + 24);
    v7 = 1;
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v5 = *(v12 + 24);
  v8 = 0.0;
  if (v6)
  {
LABEL_9:
    v9 = 2;
    do
    {
      if (GetNumericArgument(a1, v6, "-", &v11, v7, v9))
      {
        v6 = *(v6 + 24);
        if (v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 0;
        if (v7)
        {
LABEL_12:
          v8 = v8 - *(v12 + 24);
LABEL_17:
          v7 = 1;
          goto LABEL_18;
        }
      }

      if (WORD4(v11) != 1)
      {
        v8 = v5 - *(v12 + 24);
        goto LABEL_17;
      }

      v7 = 0;
      v5 -= *(v12 + 24);
LABEL_18:
      ++v9;
    }

    while (v6);
  }

LABEL_19:
  if (!v7)
  {
LABEL_21:
    *(a2 + 8) = 1;
    result = EnvAddLong(a1, v5);
    goto LABEL_22;
  }

  *(a2 + 8) = 0;
  result = EnvAddDouble(a1, v8);
LABEL_22:
  *(a2 + 16) = result;
  return result;
}

void *DivisionFunction(uint64_t a1, uint64_t a2)
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v4 = *(a1 + 48);
  v5 = **(v4 + 48);
  v6 = **(v4 + 352);
  v7 = *(v6 + 16);
  if (v7)
  {
    if (GetNumericArgument(a1, *(v6 + 16), "/", &v17, v5, 1))
    {
      v8 = *(v7 + 24);
    }

    else
    {
      v8 = 0;
    }

    if (WORD4(v17) == 1)
    {
      v10 = *(v18 + 24);
      v9 = 1.0;
      if (!v8)
      {
        goto LABEL_26;
      }

      goto LABEL_10;
    }

    v9 = *(v18 + 24);
    v10 = 1;
    v5 = 1;
    if (v8)
    {
LABEL_10:
      v11 = 2;
      do
      {
        if (GetNumericArgument(a1, v8, "/", &v17, v5, v11))
        {
          v8 = *(v8 + 24);
        }

        else
        {
          v8 = 0;
        }

        if (WORD4(v17))
        {
          if (WORD4(v17) == 1)
          {
            v12 = *(v18 + 24);
            if (!v12)
            {
              goto LABEL_31;
            }

            if (!v5)
            {
              v10 /= v12;
              goto LABEL_25;
            }

            v13 = *(v18 + 24);
          }

          else
          {
            v13 = *(v18 + 24);
            if (!v5)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          v13 = *(v18 + 24);
          if (v13 == 0.0)
          {
LABEL_31:
            DivideByZeroErrorMessage(a1, "/");
            SetHaltExecution(a1, 1);
            SetEvaluationError(a1, 1);
            *(a2 + 8) = 0;
            v15 = 1.0;
            v14 = a1;
LABEL_28:
            result = EnvAddDouble(v14, v15);
            goto LABEL_30;
          }

          if (!v5)
          {
LABEL_23:
            v9 = v10 / v13;
            v5 = 1;
            goto LABEL_25;
          }
        }

        v9 = v9 / v13;
LABEL_25:
        ++v11;
      }

      while (v8);
    }
  }

  else
  {
    v9 = 1.0;
    v10 = 1;
  }

LABEL_26:
  if (v5)
  {
    *(a2 + 8) = 0;
    v14 = a1;
    v15 = v9;
    goto LABEL_28;
  }

  *(a2 + 8) = 1;
  result = EnvAddLong(a1, v10);
LABEL_30:
  *(a2 + 16) = result;
  return result;
}

uint64_t DivFunction(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v1 = **(*(a1 + 48) + 352);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  if (GetNumericArgument(a1, *(v1 + 16), "div", &v9, 0, 1))
  {
    v4 = *(v2 + 24);
  }

  else
  {
    v4 = 0;
  }

  if (WORD4(v9) == 1)
  {
    v5 = *(v10 + 24);
    if (!v4)
    {
      return v5;
    }

    goto LABEL_10;
  }

  v5 = *(v10 + 24);
  if (v4)
  {
LABEL_10:
    v6 = 2;
    do
    {
      if (GetNumericArgument(a1, v4, "div", &v9, 0, v6))
      {
        v4 = *(v4 + 24);
      }

      else
      {
        v4 = 0;
      }

      if (WORD4(v9))
      {
        if (WORD4(v9) == 1)
        {
          v7 = *(v10 + 24);
          if (!v7)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v7 = *(v10 + 24);
        }
      }

      else
      {
        v7 = *(v10 + 24);
        if (!v7)
        {
LABEL_23:
          DivideByZeroErrorMessage(a1, "div");
          v5 = 1;
          SetHaltExecution(a1, 1);
          SetEvaluationError(a1, 1);
          return v5;
        }
      }

      ++v6;
      v5 /= v7;
    }

    while (v4);
  }

  return v5;
}

uint64_t SetAutoFloatDividendCommand(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v2 = **(*(a1 + 48) + 48);
  if (EnvArgCountCheck(a1, "set-auto-float-dividend", 0, 1) != -1)
  {
    EnvRtnUnknown(a1, 1, &v7);
    v3 = v8;
    v5 = v3 != EnvFalseSymbol(a1) || WORD4(v7) != 2;
    **(*(a1 + 48) + 48) = v5;
  }

  return v2;
}

uint64_t IntegerFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "integer", 0, 1) == -1)
  {
    return 0;
  }

  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  if (!EnvArgTypeCheck(a1, "integer", 1, 1, &v3))
  {
    return 0;
  }

  else
  {
    return *(v4 + 24);
  }
}

double FloatFunction(uint64_t a1)
{
  v2 = 0.0;
  if (EnvArgCountCheck(a1, "float", 0, 1) != -1)
  {
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    if (EnvArgTypeCheck(a1, "float", 1, 0, &v4))
    {
      return *(v5 + 24);
    }
  }

  return v2;
}

double AbsFunction(uint64_t a1, uint64_t a2)
{
  if (EnvArgCountCheck(a1, "abs", 0, 1) == -1 || !EnvArgTypeCheck(a1, "abs", 1, 180, a2))
  {
    *(a2 + 8) = 1;
    v8 = a1;
    v7 = 0;
LABEL_7:
    v9 = EnvAddLong(v8, v7);
LABEL_8:
    *(a2 + 16) = v9;
    return result;
  }

  v5 = *(a2 + 16);
  if (*(a2 + 8) == 1)
  {
    v6 = *(v5 + 24);
    if ((v6 & 0x8000000000000000) == 0)
    {
      return result;
    }

    v7 = -v6;
    v8 = a1;
    goto LABEL_7;
  }

  result = *(v5 + 24);
  if (result < 0.0)
  {
    v9 = EnvAddDouble(a1, -result);
    goto LABEL_8;
  }

  return result;
}

uint64_t MinFunction(uint64_t a1, uint64_t a2)
{
  v4 = EnvArgCountCheck(a1, "min", 1u, 1);
  if (v4 == -1 || (v5 = v4, result = EnvArgTypeCheck(a1, "min", 1, 180, a2), !result))
  {
    *(a2 + 8) = 1;
    result = EnvAddLong(a1, 0);
    *(a2 + 16) = result;
  }

  else if (v5 >= 2)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v7 = v5 - 1;
    for (i = 2; ; ++i)
    {
      result = EnvArgTypeCheck(a1, "min", i, 180, &v14);
      if (!result)
      {
        return result;
      }

      v9 = WORD4(v14);
      v10 = *(a2 + 16);
      if (*(a2 + 8) == 1)
      {
        break;
      }

      v13 = *(v10 + 24);
      v12 = v15;
      if (WORD4(v14) == 1)
      {
        if (v13 > *(v15 + 24))
        {
          goto LABEL_12;
        }
      }

      else if (v13 > *(v15 + 24))
      {
        goto LABEL_16;
      }

LABEL_17:
      if (!--v7)
      {
        return result;
      }
    }

    v11 = *(v10 + 24);
    if (WORD4(v14) == 1)
    {
      v12 = v15;
      if (v11 <= *(v15 + 24))
      {
        goto LABEL_17;
      }

LABEL_12:
      v9 = 1;
    }

    else
    {
      v12 = v15;
      if (*(v15 + 24) >= v11)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    *(a2 + 8) = v9;
    *(a2 + 16) = v12;
    goto LABEL_17;
  }

  return result;
}

uint64_t MaxFunction(uint64_t a1, uint64_t a2)
{
  v4 = EnvArgCountCheck(a1, "max", 1u, 1);
  if (v4 == -1 || (v5 = v4, result = EnvArgTypeCheck(a1, "max", 1, 180, a2), !result))
  {
    *(a2 + 8) = 1;
    result = EnvAddLong(a1, 0);
    *(a2 + 16) = result;
  }

  else if (v5 >= 2)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v7 = v5 - 1;
    for (i = 2; ; ++i)
    {
      result = EnvArgTypeCheck(a1, "max", i, 180, &v14);
      if (!result)
      {
        return result;
      }

      v9 = WORD4(v14);
      v10 = *(a2 + 16);
      if (*(a2 + 8) == 1)
      {
        break;
      }

      v13 = *(v10 + 24);
      v12 = v15;
      if (WORD4(v14) == 1)
      {
        if (v13 < *(v15 + 24))
        {
          goto LABEL_12;
        }
      }

      else if (v13 < *(v15 + 24))
      {
        goto LABEL_16;
      }

LABEL_17:
      if (!--v7)
      {
        return result;
      }
    }

    v11 = *(v10 + 24);
    if (WORD4(v14) == 1)
    {
      v12 = v15;
      if (v11 >= *(v15 + 24))
      {
        goto LABEL_17;
      }

LABEL_12:
      v9 = 1;
    }

    else
    {
      v12 = v15;
      if (*(v15 + 24) <= v11)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    *(a2 + 8) = v9;
    *(a2 + 16) = v12;
    goto LABEL_17;
  }

  return result;
}

uint64_t EnvSetAutoFloatDividend(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 48);
  result = *v2;
  *v2 = a2;
  return result;
}

uint64_t DeallocateDefgenericBinaryData(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 48) + 224);
  v3 = 72 * *(v2 + 16);
  if (v3)
  {
    result = genfree(result, *v2, v3);
    v2 = *(*(v1 + 48) + 224);
  }

  v4 = 56 * *(v2 + 24);
  if (v4)
  {
    result = genfree(v1, *(v2 + 56), v4);
    v2 = *(*(v1 + 48) + 224);
  }

  v5 = 24 * *(v2 + 32);
  if (v5)
  {
    result = genfree(v1, *(v2 + 64), v5);
    v2 = *(*(v1 + 48) + 224);
  }

  v6 = 8 * *(v2 + 40);
  if (v6)
  {
    result = genfree(v1, *(v2 + 72), v6);
    v2 = *(*(v1 + 48) + 224);
  }

  v7 = 24 * *(v2 + 8);
  if (v7)
  {
    v8 = *(v2 + 48);

    return genfree(v1, v8, v7);
  }

  return result;
}

uint64_t BsaveGenericsFind(uint64_t a1)
{
  SaveBloadCount(a1, *(*(*(a1 + 48) + 224) + 8));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 224) + 16));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 224) + 24));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 224) + 32));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 224) + 40));
  v2 = *(a1 + 48);
  v3 = *(v2 + 224);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  result = DoForAllConstructs(a1, MarkDefgenericItems, *(*(v2 + 216) + 8), 0, 0);
  *(*(*(a1 + 48) + 224) + 8) = result;
  return result;
}

uint64_t BsaveGenericsExpressions(uint64_t a1, uint64_t a2)
{
  DoForAllConstructs(a1, BsaveMethodExpressions, *(*(*(a1 + 48) + 216) + 8), 0, a2);
  v4 = *(*(*(a1 + 48) + 216) + 8);

  return DoForAllConstructs(a1, BsaveRestrictionExpressions, v4, 0, a2);
}

const void *BsaveStorageGenerics(uint64_t a1, FILE *__stream)
{
  v5 = 40;
  GenWrite(&v5, 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 224) + 8), 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 224) + 16), 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 224) + 24), 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 224) + 32), 8uLL, __stream);
  return GenWrite((*(*(a1 + 48) + 224) + 40), 8uLL, __stream);
}

uint64_t BsaveGenerics(uint64_t a1, FILE *__stream)
{
  memset(v13, 0, sizeof(v13));
  v4 = *(*(a1 + 48) + 224);
  v14 = 40 * v4[2] + 32 * v4[3] + 8 * v4[5] + 24 * (v4[4] + v4[1]);
  GenWrite(&v14, 8uLL, __stream);
  *(*(*(a1 + 48) + 224) + 16) = 0;
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v6 = NextDefmodule;
    do
    {
      ModuleItem = FindModuleItem(a1, "defgeneric");
      v8 = GetModuleItem(a1, v6, *(ModuleItem + 8));
      AssignBsaveDefmdlItemHdrVals(v13, v8);
      GenWrite(v13, 0x18uLL, __stream);
      v6 = EnvGetNextDefmodule(a1, v6);
    }

    while (v6);
  }

  v9 = *(*(a1 + 48) + 216);
  *(*(*(a1 + 48) + 224) + 24) = 0;
  DoForAllConstructs(a1, BsaveDefgenericHeader, *(v9 + 8), 0, __stream);
  v10 = *(*(a1 + 48) + 216);
  *(*(*(a1 + 48) + 224) + 32) = 0;
  DoForAllConstructs(a1, BsaveMethods, *(v10 + 8), 0, __stream);
  v11 = *(*(a1 + 48) + 216);
  *(*(*(a1 + 48) + 224) + 40) = 0;
  DoForAllConstructs(a1, BsaveMethodRestrictions, *(v11 + 8), 0, __stream);
  DoForAllConstructs(a1, BsaveRestrictionTypes, *(*(*(a1 + 48) + 216) + 8), 0, __stream);
  RestoreBloadCount(a1, (*(*(a1 + 48) + 224) + 8));
  RestoreBloadCount(a1, (*(*(a1 + 48) + 224) + 16));
  RestoreBloadCount(a1, (*(*(a1 + 48) + 224) + 24));
  RestoreBloadCount(a1, (*(*(a1 + 48) + 224) + 32));
  return RestoreBloadCount(a1, (*(*(a1 + 48) + 224) + 40));
}

size_t BloadStorageGenerics(uint64_t a1)
{
  v15[5] = *MEMORY[0x277D85DE8];
  __ptr = 0;
  result = GenReadBinary(a1, &__ptr, 8uLL);
  if (__ptr)
  {
    result = GenReadBinary(a1, v15, __ptr);
    v3 = v15[0];
    v4 = *(*(a1 + 48) + 224);
    v4[1] = v15[0];
    v4[2] = v15[1];
    v4[3] = v15[2];
    v4[4] = v15[3];
    v4[5] = v15[4];
    if (v3)
    {
      __ptr = 24 * v3;
      result = genalloc(a1, 24 * v3);
      v5 = *(a1 + 48);
      *(*(v5 + 224) + 48) = result;
      v6 = *(*(v5 + 224) + 16);
      if (v6)
      {
        __ptr = 72 * v6;
        result = genalloc(a1, 72 * v6);
        v7 = *(a1 + 48);
        **(v7 + 224) = result;
        v8 = *(*(v7 + 224) + 24);
        if (v8)
        {
          __ptr = 56 * v8;
          result = genalloc(a1, 56 * v8);
          v9 = *(a1 + 48);
          *(*(v9 + 224) + 56) = result;
          v10 = *(*(v9 + 224) + 32);
          if (v10)
          {
            __ptr = 24 * v10;
            result = genalloc(a1, 24 * v10);
            v11 = *(a1 + 48);
            *(*(v11 + 224) + 64) = result;
            v12 = *(*(v11 + 224) + 40);
            if (v12)
            {
              __ptr = 8 * v12;
              result = genalloc(a1, 8 * v12);
              *(*(*(a1 + 48) + 224) + 72) = result;
            }
          }
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BloadGenerics(uint64_t a1)
{
  __ptr = 0;
  result = GenReadBinary(a1, &__ptr, 8uLL);
  v3 = *(*(*(a1 + 48) + 224) + 8);
  if (v3)
  {
    result = BloadandRefresh(a1, v3, 24, UpdateGenericModule);
    v4 = *(*(*(a1 + 48) + 224) + 16);
    if (v4)
    {
      BloadandRefresh(a1, v4, 40, UpdateGeneric);
      BloadandRefresh(a1, *(*(*(a1 + 48) + 224) + 24), 32, UpdateMethod);
      BloadandRefresh(a1, *(*(*(a1 + 48) + 224) + 32), 24, UpdateRestriction);
      return BloadandRefresh(a1, *(*(*(a1 + 48) + 224) + 40), 8, UpdateType);
    }
  }

  return result;
}

uint64_t ClearBloadGenerics(uint64_t result)
{
  v1 = *(*(result + 48) + 224);
  v2 = 24 * *(v1 + 8);
  if (v2)
  {
    v3 = result;
    result = genfree(result, *(v1 + 48), v2);
    v4 = *(v3 + 48);
    *(*(v4 + 224) + 48) = 0;
    v5 = *(v4 + 224);
    *(v5 + 8) = 0;
    v6 = *(v5 + 16);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        result = UnmarkConstructHeader(v3, (*v5 + v7));
        ++v8;
        v5 = *(*(v3 + 48) + 224);
        v6 = *(v5 + 16);
        v7 += 72;
      }

      while (v8 < v6);
    }

    if (72 * v6)
    {
      result = genfree(v3, *v5, 72 * v6);
      v9 = *(v3 + 48);
      **(v9 + 224) = 0;
      v10 = *(v9 + 224);
      *(v10 + 16) = 0;
      v11 = 56 * *(v10 + 24);
      if (v11)
      {
        result = genfree(v3, *(v10 + 56), v11);
        v12 = *(v3 + 48);
        *(*(v12 + 224) + 56) = 0;
        v13 = *(v12 + 224);
        *(v13 + 24) = 0;
        v14 = 24 * *(v13 + 32);
        if (v14)
        {
          result = genfree(v3, *(v13 + 64), v14);
          v15 = *(v3 + 48);
          *(*(v15 + 224) + 64) = 0;
          v16 = *(v15 + 224);
          *(v16 + 32) = 0;
          v17 = *(v16 + 40);
          if (v17 >= 1)
          {
            for (i = 0; i < v17; ++i)
            {
              result = DecrementIntegerCount(v3, *(*(v16 + 72) + 8 * i));
              v16 = *(*(v3 + 48) + 224);
              v17 = *(v16 + 40);
            }
          }

          if (8 * v17)
          {
            result = genfree(v3, *(v16 + 72), 8 * v17);
            v19 = *(v3 + 48);
            *(*(v19 + 224) + 72) = 0;
            *(*(v19 + 224) + 40) = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t MarkDefgenericItems(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 48) + 224);
  v5 = *(v4 + 16);
  *(v4 + 16) = v5 + 1;
  result = MarkConstructHeaderNeededItems(a2, v5);
  v7 = *(a2 + 64);
  *(*(*(a1 + 48) + 224) + 24) += v7;
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(a2 + 56) + 56 * v8;
      *(*(*(a1 + 48) + 360) + 64) += ExpressionSize(*(v9 + 32));
      result = MarkNeededItems(a1, *(v9 + 32));
      v10 = *(v9 + 8);
      *(*(*(a1 + 48) + 224) + 32) += v10;
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = *(v9 + 24) + v11;
          *(*(*(a1 + 48) + 360) + 64) += ExpressionSize(*(v13 + 8));
          result = MarkNeededItems(a1, *(v13 + 8));
          *(*(*(a1 + 48) + 224) + 40) += *(v13 + 16);
          ++v12;
          v11 += 24;
        }

        while (v12 < *(v9 + 8));
      }

      ++v8;
    }

    while (v8 < *(a2 + 64));
  }

  return result;
}

void *BsaveMethodExpressions(void *result, uint64_t a2, FILE *a3)
{
  if (*(a2 + 64) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = 32;
    do
    {
      result = BsaveExpression(v5, *(*(a2 + 56) + v7), a3);
      ++v6;
      v7 += 56;
    }

    while (v6 < *(a2 + 64));
  }

  return result;
}

void *BsaveRestrictionExpressions(void *result, uint64_t a2, FILE *a3)
{
  v3 = *(a2 + 64);
  if (v3 >= 1)
  {
    v6 = result;
    v7 = 0;
    do
    {
      v8 = *(a2 + 56) + 56 * v7;
      if (*(v8 + 8) >= 1)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          result = BsaveExpression(v6, *(*(v8 + 24) + v10), a3);
          ++v9;
          v10 += 24;
        }

        while (v9 < *(v8 + 8));
        LOWORD(v3) = *(a2 + 64);
      }

      ++v7;
    }

    while (v7 < v3);
  }

  return result;
}

const void *BsaveDefgenericHeader(uint64_t a1, uint64_t a2, FILE *a3)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  AssignBsaveConstructHeaderVals(&v10, a2);
  v6 = *(a2 + 64);
  LOWORD(v12) = *(a2 + 64);
  if (*(a2 + 56))
  {
    v7 = *(*(a1 + 48) + 224);
    v8 = *(v7 + 24);
    *(v7 + 24) = v8 + v6;
  }

  else
  {
    v8 = -1;
  }

  *(&v11 + 1) = v8;
  return GenWrite(&v10, 0x28uLL, a3);
}

void *BsaveMethods(void *result, uint64_t a2, FILE *a3)
{
  if (*(a2 + 64) >= 1)
  {
    v16 = v3;
    v17 = v4;
    v7 = result;
    v8 = 0;
    v9 = 0;
    v14 = 0u;
    v15 = 0u;
    do
    {
      v10 = *(a2 + 56);
      LOWORD(v14) = *(v10 + v8);
      v11 = *(v10 + v8 + 8);
      *(&v14 + 2) = v11;
      HIDWORD(v14) = *(v10 + v8 + 16) & 1;
      if (*(v10 + v8 + 24))
      {
        v12 = *(v7[6] + 224);
        *&v15 = *(v12 + 32);
        *(v12 + 32) = v15 + v11;
      }

      else
      {
        *&v15 = -1;
      }

      v13 = *(v10 + v8 + 32);
      if (v13)
      {
        *(&v15 + 1) = *(*(v7[6] + 360) + 64);
        *(*(v7[6] + 360) + 64) += ExpressionSize(v13);
      }

      else
      {
        *(&v15 + 1) = -1;
      }

      result = GenWrite(&v14, 0x20uLL, a3);
      ++v9;
      v8 += 56;
    }

    while (v9 < *(a2 + 64));
  }

  return result;
}

void *BsaveMethodRestrictions(void *result, uint64_t a2, FILE *a3)
{
  v5 = *(a2 + 64);
  if (v5 >= 1)
  {
    v21 = v3;
    v22 = v4;
    v8 = result;
    v9 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v10 = *(a2 + 56);
    do
    {
      if (*(v10 + 56 * v9 + 8) >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = *(v10 + 56 * v9 + 24) + v11;
          v14 = *(v13 + 16);
          LOWORD(v20) = *(v13 + 16);
          if (*v13)
          {
            v15 = *(v8[6] + 224);
            v16 = *(v15 + 40);
            *(v15 + 40) = v16 + v14;
          }

          else
          {
            v16 = -1;
          }

          v18 = v16;
          v17 = *(v13 + 8);
          if (v17)
          {
            v19 = *(*(v8[6] + 360) + 64);
            *(*(v8[6] + 360) + 64) += ExpressionSize(v17);
          }

          else
          {
            v19 = -1;
          }

          result = GenWrite(&v18, 0x18uLL, a3);
          ++v12;
          v10 = *(a2 + 56);
          v11 += 24;
        }

        while (v12 < *(v10 + 56 * v9 + 8));
        LOWORD(v5) = *(a2 + 64);
      }

      ++v9;
    }

    while (v9 < v5);
  }

  return result;
}

const void *BsaveRestrictionTypes(int a1, uint64_t a2, FILE *__stream)
{
  v5 = *(a2 + 64);
  if (v5 >= 1)
  {
    v14[9] = v3;
    v14[10] = v4;
    v8 = 0;
    v14[0] = 0;
    v9 = *(a2 + 56);
    do
    {
      if (*(v9 + 56 * v8 + 8) >= 1)
      {
        v10 = 0;
        do
        {
          v11 = *(v9 + 56 * v8 + 24) + 24 * v10;
          if (*(v11 + 16) >= 1)
          {
            v12 = 0;
            do
            {
              v14[0] = *(*(*v11 + 8 * v12) + 24);
              result = GenWrite(v14, 8uLL, __stream);
              ++v12;
            }

            while (v12 < *(v11 + 16));
            v9 = *(a2 + 56);
          }

          ++v10;
        }

        while (v10 < *(v9 + 56 * v8 + 8));
        LOWORD(v5) = *(a2 + 64);
      }

      ++v8;
    }

    while (v8 < v5);
  }

  return result;
}

uint64_t UpdateGeneric(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 9 * a3;
  result = UpdateConstructHeader(a1, a2, (**(*(a1 + 48) + 224) + 72 * a3), 24, *(*(*(a1 + 48) + 224) + 48), 72, **(*(a1 + 48) + 224));
  v7 = *(a1 + 48);
  v8 = *(v7 + 224);
  v9 = *v8 + 8 * v5;
  v10 = *(*(v7 + 216) + 128);
  *(v9 + 48) = 0;
  *(v9 + 52) = v10;
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8[7] + 56 * v11;
  }

  *(v9 + 56) = v12;
  *(**(v7 + 224) + 8 * v5 + 64) = *(a2 + 32);
  return result;
}

uint64_t UpdateMethod(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 48);
  v4 = *(v3 + 216);
  v5 = *(*(v3 + 224) + 56);
  v6 = 56 * a3;
  v7 = v5 + 56 * a3;
  *v7 = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = (2 * (*(v4 + 132) & 1)) | *(v7 + 16) & 0xFD;
  v8 = *(*(*(result + 48) + 224) + 56) + 56 * a3;
  *(v8 + 8) = *(a2 + 2);
  *(v8 + 16) = *(v8 + 16) & 0xFE | *(a2 + 12) & 1;
  v9 = *(a2 + 16);
  v10 = *(result + 48);
  v11 = *(v10 + 224);
  if (v9 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 64) + 24 * v9;
  }

  *(*(v11 + 56) + 56 * a3 + 24) = v12;
  v13 = *(a2 + 24);
  if (v13 == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(*(v10 + 360) + 56) + 32 * v13;
  }

  *(*(*(v10 + 224) + 56) + v6 + 32) = v14;
  *(*(*(v10 + 224) + 56) + v6 + 40) = 0;
  *(*(*(v10 + 224) + 56) + v6 + 48) = 0;
  return result;
}

uint64_t UpdateRestriction(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 48);
  v4 = *(v3 + 224);
  v5 = *(v4 + 64);
  *(v5 + 24 * a3 + 16) = *(a2 + 16);
  if (*a2 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 72) + 8 * *a2;
  }

  *(v5 + 24 * a3) = v6;
  v7 = *(a2 + 8);
  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(*(v3 + 360) + 56) + 32 * v7;
  }

  *(*(*(v3 + 224) + 64) + 24 * a3 + 8) = v8;
  return result;
}

void *UpdateType(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (v5 >= 15)
  {
    PrintWarningID(a1, "GENRCBIN", 1, 0);
    EnvPrintRouter(a1, "wwarning", "COOL not installed!  User-defined class\n");
    EnvPrintRouter(a1, "wwarning", "  in method restriction substituted with OBJECT.\n");
    v5 = 9;
  }

  result = EnvAddLong(a1, v5);
  *(*(*(*(a1 + 48) + 224) + 72) + 8 * a3) = result;
  v7 = *(*(*(*(a1 + 48) + 224) + 72) + 8 * a3);
  ++*(v7 + 8);
  return result;
}

void sub_2325B5D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2325B615C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

char *daemonFunctionalGroupingForProcName(char *result)
{
  v10 = result;
  if (result)
  {
    v1 = result;
    sBsdNameToBundleName();
    v2 = qword_27DDA0CF8;
    if (!qword_27DDA0CF8)
    {
      goto LABEL_12;
    }

    v3 = &qword_27DDA0CF8;
    do
    {
      if (v4)
      {
        v5 = 8;
      }

      else
      {
        v5 = 0;
      }

      if (!v4)
      {
        v3 = v2;
      }

      v2 = *(v2 + v5);
    }

    while (v2);
    {
LABEL_12:
      sBsdNameToBundleName();
      if (strlen(v1) < 0x10)
      {
        return 0;
      }

      sBsdNameToBundleName();
      v3 = sBsdNameToBundleName(void)::map;
      if (sBsdNameToBundleName(void)::map == &qword_27DDA0CF8)
      {
        return 0;
      }

      v6 = strlen(v1);
      while (strncmp(v3[4], v1, v6))
      {
        v7 = v3[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v3[2];
            v9 = *v8 == v3;
            v3 = v8;
          }

          while (!v9);
        }

        v3 = v8;
        if (v8 == &qword_27DDA0CF8)
        {
          return 0;
        }
      }
    }

    else
    {
      sBsdNameToBundleName();
    }

    return v3[5];
  }

  return result;
}

void sBsdNameToBundleName(void)
{
  MEMORY[0x28223BE20]();
  v2[676] = *MEMORY[0x277D85DE8];
  {
    v2[0] = "ABDatabaseDoctor";
    v2[1] = "contact";
    v2[2] = "aosnotifyd";
    v2[3] = "findmyiphone";
    v2[4] = "findmydeviced";
    v2[5] = "findmyiphone";
    v2[6] = "com.apple.icloud.FindMyDevice";
    v2[7] = "findmyiphone";
    v2[8] = "fmfd";
    v2[9] = "findmyiphone";
    v2[10] = "fmflocatord";
    v2[11] = "findmyiphone";
    v2[12] = "searchpartyd";
    v2[13] = "findmyiphone";
    v2[14] = "com.apple.icloud.findmydeviced";
    v2[15] = "findmyiphone";
    v2[16] = "com.apple.icloud.fmfd";
    v2[17] = "findmyiphone";
    v2[18] = "com.apple.icloud.fmflocatord";
    v2[19] = "findmyiphone";
    v2[20] = "atwakeup";
    v2[21] = "wifi";
    v2[22] = "corecaptured";
    v2[23] = "wifi";
    v2[24] = "wifid";
    v2[25] = "wifi";
    v2[26] = "hostapd";
    v2[27] = "wifi";
    v2[28] = "wapic";
    v2[29] = "wifi";
    v2[30] = "wifiFirmwareLoader";
    v2[31] = "wifi";
    v2[32] = "BTAvrcp";
    v2[33] = "bluetooth";
    v2[34] = "BTLEServer";
    v2[35] = "bluetooth";
    v2[36] = "BTMap";
    v2[37] = "bluetooth";
    v2[38] = "BTServer";
    v2[39] = "bluetooth";
    v2[40] = "BlueTool";
    v2[41] = "bluetooth";
    v2[42] = "wirelessproxd";
    v2[43] = "bluetooth";
    v2[44] = "com.apple.bluetoothd";
    v2[45] = "bluetooth";
    v2[46] = "bluetoothd";
    v2[47] = "bluetooth";
    v2[48] = "CommCenter";
    v2[49] = "telephony";
    v2[50] = "coretelephony";
    v2[51] = "telephony";
    v2[52] = "DMHelper";
    v2[53] = "telephony";
    v2[54] = "sosd";
    v2[55] = "telephony";
    v2[56] = "callservicesd";
    v2[57] = "telephony";
    v2[58] = "CallHistorySyncHelper";
    v2[59] = "telephony";
    v2[60] = "locationd";
    v2[61] = "location";
    v2[62] = "timed";
    v2[63] = "location";
    v2[64] = "tzd";
    v2[65] = "location";
    v2[66] = "pipelined";
    v2[67] = "location";
    v2[68] = "com.apple.corelocation.CoreLocationRepromptAlwaysAuthPromptPlugin";
    v2[69] = "location";
    v2[70] = "com.apple.corelocation.CLWatchOSWhenInUseAuthPromptBundle";
    v2[71] = "location";
    v2[72] = "com.apple.corelocation.CLWatchOSTemporaryPreciseAuthPromptBundle";
    v2[73] = "location";
    v2[74] = "com.apple.corelocation.CoreLocationVanillaWhenInUseAuthPromptPlugin";
    v2[75] = "location";
    v2[76] = "com.apple.corelocation.CoreLocationTemporaryPreciseAuthPromptPlugin";
    v2[77] = "location";
    v2[78] = "com.apple.corelocation.CoreLocationAdvisorySubIdentityAuthPromptPlugin";
    v2[79] = "location";
    v2[80] = "com.apple.nearbyd";
    v2[81] = "location";
    v2[82] = "clouddbd";
    v2[83] = "icloud";
    v2[84] = "securebackupd";
    v2[85] = "icloud";
    v2[86] = "com.apple.sbd";
    v2[87] = "icloud";
    v2[88] = "com.apple.protectedcloudstorage.protectedcloudkeysyncing";
    v2[89] = "icloud";
    v2[90] = "familycircled";
    v2[91] = "icloud";
    v2[92] = "com.apple.CloudKit.ShareBear";
    v2[93] = "icloud";
    v2[94] = "cloudd";
    v2[95] = "icloud";
    v2[96] = "cloudpaird";
    v2[97] = "icloud";
    v2[98] = "softwareupdated";
    v2[99] = "softwareupdate";
    v2[100] = "com.apple.mobile.softwareupdated";
    v2[101] = "softwareupdate";
    v2[102] = "softwareupdateservicesd";
    v2[103] = "softwareupdate";
    v2[104] = "CommCenterMobile";
    v2[105] = "softwareupdate";
    v2[106] = "CommCenterMobileHelper";
    v2[107] = "softwareupdate";
    v2[108] = "softwarebehaviorservicesd";
    v2[109] = "softwareupdate";
    v2[110] = "softwareupdateservicesd";
    v2[111] = "softwareupdate";
    v2[112] = "mobileassetd";
    v2[113] = "softwareupdate";
    v2[114] = "softwareupdated";
    v2[115] = "softwareupdate";
    v2[116] = "installd";
    v2[117] = "softwareupdate";
    v2[118] = "mobile_installation_proxy";
    v2[119] = "softwareupdate";
    v2[120] = "deleted";
    v2[121] = "softwareupdate";
    v2[122] = "checkpointd";
    v2[123] = "softwareupdate";
    v2[124] = "com.apple.MobileSoftwareUpdate.UpdateBrainService";
    v2[125] = "softwareupdate";
    v2[126] = "com.apple.NRD.UpdateBrainService";
    v2[127] = "softwareupdate";
    v2[128] = "AssetCacheLocatorService";
    v2[129] = "softwareupdate";
    v2[130] = "awdd";
    v2[131] = "diagnostics";
    v2[132] = "aggregated";
    v2[133] = "diagnostics";
    v2[134] = "CrashHousekeeping";
    v2[135] = "diagnostics";
    v2[136] = "DumpBasebandCrash";
    v2[137] = "diagnostics";
    v2[138] = "DumpPanic";
    v2[139] = "diagnostics";
    v2[140] = "ReportCrash";
    v2[141] = "diagnostics";
    v2[142] = "OTACrashCopier";
    v2[143] = "diagnostics";
    v2[144] = "OTATaskingAgent";
    v2[145] = "diagnostics";
    v2[146] = "addaily";
    v2[147] = "diagnostics";
    v2[148] = "AirPlayDiagnosticsServer";
    v2[149] = "diagnostics";
    v2[150] = "cplogd";
    v2[151] = "diagnostics";
    v2[152] = "aslmanager";
    v2[153] = "diagnostics";
    v2[154] = "coresymbolicationd";
    v2[155] = "diagnostics";
    v2[156] = "crash_mover";
    v2[157] = "diagnostics";
    v2[158] = "afcd";
    v2[159] = "diagnostics";
    v2[160] = "syslog_relay";
    v2[161] = "diagnostics";
    v2[162] = "syslogd";
    v2[163] = "diagnostics";
    v2[164] = "powerlog";
    v2[165] = "diagnostics";
    v2[166] = "powerd";
    v2[167] = "diagnostics";
    v2[168] = "daily";
    v2[169] = "diagnostics";
    v2[170] = "prdaily";
    v2[171] = "diagnostics";
    v2[172] = "RemoteLager";
    v2[173] = "diagnostics";
    v2[174] = "IMLoggingAgent";
    v2[175] = "diagnostics";
    v2[176] = "system.diagnostics";
    v2[177] = "diagnostics";
    v2[178] = "rtcreportingd";
    v2[179] = "diagnostics";
    v2[180] = "com.apple.diagnosticextensionsd";
    v2[181] = "diagnostics";
    v2[182] = "com.apple.symptomsd-diag";
    v2[183] = "diagnostics";
    v2[184] = "com.apple.dprivacyd";
    v2[185] = "diagnostics";
    v2[186] = "UserEventAgent";
    v2[187] = "diagnostics";
    v2[188] = "DPSubmissionService";
    v2[189] = "diagnostics";
    v2[190] = "AppleCredentialManagerDaemon";
    v2[191] = "diagnostics";
    v2[192] = "com.apple.AppleCredentialManagerDaemon";
    v2[193] = "diagnostics";
    v2[194] = "com.apple.psid";
    v2[195] = "diagnostics";
    v2[196] = "mapspushd";
    v2[197] = "maps";
    v2[198] = "geod";
    v2[199] = "maps";
    v2[200] = "routined";
    v2[201] = "maps";
    v2[202] = "geocorrectiond";
    v2[203] = "maps";
    v2[204] = "nanomapscd";
    v2[205] = "maps";
    v2[206] = "DuetHeuristic-HIP";
    v2[207] = "general";
    v2[208] = "DuetLMT";
    v2[209] = "general";
    v2[210] = "DuetLST";
    v2[211] = "general";
    v2[212] = "nlcd";
    v2[213] = "general";
    v2[214] = "WirelessCoexManagerd";
    v2[215] = "general";
    v2[216] = "DeviceOMatic";
    v2[217] = "general";
    v2[218] = "MobileGestaltHelper";
    v2[219] = "general";
    v2[220] = "notification_proxy";
    v2[221] = "general";
    v2[222] = "MobileStorageMounter";
    v2[223] = "general";
    v2[224] = "fud";
    v2[225] = "general";
    v2[226] = "accessory_device_arbitrator";
    v2[228] = "mobile_assertion_agent";
    v2[230] = "librariand";
    v2[232] = "transitd";
    v2[234] = "lsd";
    v2[236] = "dfadaptd";
    v2[238] = "dictationd";
    v2[240] = "nsurlsessiond";
    v2[242] = "languageassetd";
    v2[244] = "CategoriesServic";
    v2[246] = "com.apple.nanobuddy";
    v2[248] = "kbd";
    v2[250] = "appstored";
    v2[272] = "nanoregistryd";
    v2[276] = "fitcored";
    v2[280] = "nanoweatherprefs";
    v2[284] = "networkservicepr";
    v2[288] = "translationd";
    v2[292] = "ndoagent";
    v2[296] = "psid";
    v2[300] = "_personalhotspot_";
    v2[301] = "personalhotspot";
    v2[392] = "com.apple.swcd";
    v2[416] = "watchlistd";
    v2[420] = "adid";
    v2[419] = "itunesmedia";
    v2[227] = "general";
    v2[418] = "com.apple.watchlistd";
    v2[415] = "itunesmedia";
    v2[417] = "itunesmedia";
    v2[229] = "general";
    v2[412] = "atc";
    v2[414] = "atc";
    v2[413] = "itunesmedia";
    v2[406] = "medialibraryd";
    v2[409] = "itunesmedia";
    v2[410] = "itunescloudd";
    v2[411] = "itunesmedia";
    v2[408] = "mediaremoted";
    v2[407] = "itunesmedia";
    v2[404] = "storebookkeeperd";
    v2[405] = "itunesmedia";
    v2[398] = "itunesstored";
    v2[401] = "itunesaccount";
    v2[402] = "StoreKitUIService";
    v2[403] = "itunesaccount";
    v2[400] = "touchsetupd";
    v2[399] = "itunesaccount";
    v2[231] = "general";
    v2[396] = "accountsd";
    v2[395] = "safari";
    v2[397] = "itunesaccount";
    v2[394] = "clipserviced";
    v2[393] = "safari";
    v2[384] = "vsassetd";
    v2[389] = "safari";
    v2[390] = "swcd";
    v2[391] = "safari";
    v2[387] = "safari";
    v2[388] = "webinspectord";
    v2[386] = "webbookmarksd";
    v2[385] = "accessibility";
    v2[376] = "exchangesyncd";
    v2[381] = "accessibility";
    v2[382] = "scrod";
    v2[383] = "accessibility";
    v2[379] = "accessibility";
    v2[380] = "assistivetouchd";
    v2[378] = "vot";
    v2[377] = "docsandsync";
    v2[370] = "com.apple.DocumentManagerUICore.RecentsAppPopover";
    v2[373] = "docsandsync";
    v2[374] = "dataaccess.activesync";
    v2[375] = "docsandsync";
    v2[372] = "com.apple.DocumentManagerUICore.RecentsAvocado";
    v2[371] = "docsandsync";
    v2[364] = "com.apple.ContactsSync";
    v2[367] = "docsandsync";
    v2[368] = "com.apple.CloudDocsUI.CloudSharing";
    v2[369] = "docsandsync";
    v2[366] = "SharedDocs";
    v2[365] = "docsandsync";
    v2[358] = "ubd";
    v2[361] = "docsandsync";
    v2[362] = "bird";
    v2[363] = "docsandsync";
    v2[360] = "dataaccessd";
    v2[359] = "docsandsync";
    v2[356] = "syncdefaultsd";
    v2[357] = "docsandsync";
    v2[348] = "NEIKEv2Provider";
    v2[353] = "homescreen";
    v2[354] = "CMFSyncAgent";
    v2[355] = "homescreen";
    v2[351] = "homescreen";
    v2[352] = "backboardd";
    v2[350] = "SpringBoard";
    v2[349] = "vpnservices";
    v2[342] = "vpnagent";
    v2[345] = "vpnservices";
    v2[346] = "sbslauncher";
    v2[347] = "vpnservices";
    v2[344] = "pppd";
    v2[343] = "vpnservices";
    v2[340] = "racoon";
    v2[341] = "vpnservices";
    v2[334] = "certui_relay";
    v2[337] = "security";
    v2[338] = "passwordbreachd";
    v2[339] = "security";
    v2[336] = "securityuploadd";
    v2[335] = "security";
    v2[328] = "com.apple.Safari.SafeBrowsing.Service";
    v2[331] = "security";
    v2[332] = "transparencyd";
    v2[333] = "security";
    v2[330] = "online-auth-agent";
    v2[329] = "security";
    v2[322] = "mobileactivationd";
    v2[325] = "security";
    v2[326] = "trustd";
    v2[327] = "security";
    v2[324] = "sharingd";
    v2[323] = "security";
    v2[316] = "lockbot";
    v2[319] = "security";
    v2[320] = "lskdd";
    v2[321] = "security";
    v2[318] = "tccd";
    v2[317] = "security";
    v2[310] = "securityd";
    v2[313] = "security";
    v2[314] = "lockdownd";
    v2[315] = "security";
    v2[312] = "keybagd";
    v2[311] = "security";
    v2[304] = "absd";
    v2[307] = "security";
    v2[308] = "CloudKeychainProxy";
    v2[309] = "security";
    v2[306] = "CircleJoinRequested";
    v2[305] = "security";
    v2[302] = "OTAPKIAssetTool";
    v2[303] = "security";
    v2[233] = "general";
    v2[298] = "mobilerepaird";
    v2[297] = "general";
    v2[299] = "general";
    v2[235] = "general";
    v2[294] = "AppStoreService";
    v2[293] = "general";
    v2[295] = "general";
    v2[237] = "general";
    v2[290] = "proactiveeventtrackerd";
    v2[289] = "general";
    v2[291] = "general";
    v2[239] = "general";
    v2[286] = "ScreenshotService";
    v2[285] = "general";
    v2[287] = "general";
    v2[241] = "general";
    v2[282] = "nanoweatherprefsd";
    v2[281] = "general";
    v2[283] = "general";
    v2[243] = "general";
    v2[278] = "photoanalysisd";
    v2[277] = "general";
    v2[279] = "general";
    v2[245] = "general";
    v2[274] = "rapportd";
    v2[273] = "general";
    v2[275] = "general";
    v2[247] = "general";
    v2[270] = "terminusd";
    v2[269] = "general";
    v2[271] = "general";
    v2[249] = "general";
    v2[266] = "com.apple.WebKit";
    v2[267] = "general";
    v2[268] = "newsd";
    v2[262] = "accessoryd";
    v2[263] = "general";
    v2[264] = "cloudphotod";
    v2[265] = "general";
    v2[251] = "general";
    v2[259] = "general";
    v2[260] = "remindd";
    v2[261] = "general";
    v2[257] = "general";
    v2[258] = "healthd";
    v2[252] = "bookassetd";
    v2[254] = "destinationd";
    v2[255] = "general";
    v2[256] = "healthappd";
    v2[253] = "general";
    v2[421] = "iad";
    v2[422] = "aitd";
    v2[423] = "iad";
    v2[424] = "adtrackingd";
    v2[425] = "iad";
    v2[426] = "adservicesd";
    v2[427] = "iad";
    v2[428] = "adprivacyd";
    v2[429] = "iad";
    v2[430] = "promotedcontentd";
    v2[431] = "iad";
    v2[432] = "EnforcementService";
    v2[433] = "iad";
    v2[434] = "apsd";
    v2[435] = "applepushservice";
    v2[436] = "assistant_analyzer";
    v2[437] = "siri";
    v2[438] = "assistant_service";
    v2[439] = "siri";
    v2[440] = "assistantd";
    v2[441] = "siri";
    v2[442] = "assistant.assistantd";
    v2[443] = "siri";
    v2[444] = "parsecd";
    v2[445] = "siri";
    v2[446] = "parsec-fbf";
    v2[447] = "siri";
    v2[448] = "siriknowledged";
    v2[449] = "siri";
    v2[450] = "AssistantServices";
    v2[451] = "siri";
    v2[452] = "voiced";
    v2[453] = "siri";
    v2[454] = "intents_helper";
    v2[455] = "siri";
    v2[456] = "suggestd";
    v2[457] = "siri";
    v2[458] = "backupd";
    v2[459] = "backup";
    v2[460] = "calaccessd";
    v2[461] = "ical";
    v2[462] = "AuthBrokerAgent";
    v2[463] = "networking";
    v2[464] = "CFNetworkAgent";
    v2[465] = "networking";
    v2[466] = "configd";
    v2[467] = "networking";
    v2[468] = "SCHelper";
    v2[469] = "networking";
    v2[470] = "networkd";
    v2[471] = "networking";
    v2[472] = "networkd_privileged";
    v2[473] = "networking";
    v2[474] = "proxy";
    v2[475] = "networking";
    v2[476] = "mount_nfs";
    v2[477] = "networking";
    v2[478] = "pfd";
    v2[479] = "networking";
    v2[480] = "nsnetworkd";
    v2[481] = "networking";
    v2[482] = "misd";
    v2[483] = "networking";
    v2[484] = "kernel_task";
    v2[485] = "networking";
    v2[486] = "neagent";
    v2[487] = "networking";
    v2[488] = "nesessionmanager";
    v2[489] = "networking";
    v2[490] = "networkserviceproxy";
    v2[491] = "networking";
    v2[492] = "AppleIDAuthAgent";
    v2[493] = "appleid";
    v2[494] = "identityservicesd";
    v2[495] = "appleid";
    v2[496] = "akd";
    v2[497] = "appleid";
    v2[498] = "passd";
    v2[499] = "appleid";
    v2[500] = "PassbookUIService";
    v2[501] = "appleid";
    v2[502] = "seld";
    v2[503] = "appleid";
    v2[504] = "com.apple.coreidv.coreidvd";
    v2[505] = "appleid";
    v2[506] = "coreidvd";
    v2[507] = "appleid";
    v2[508] = "com.apple.AuthKitUI.AKLocationSignInAlert";
    v2[509] = "appleid";
    v2[510] = "com.apple.AuthKit";
    v2[511] = "appleid";
    v2[512] = "com.apple.progressd";
    v2[513] = "appleid";
    v2[514] = "ind";
    v2[515] = "appleid";
    v2[516] = "NPKCompanionAgent";
    v2[517] = "appleid";
    v2[518] = "com.apple.appleaccountd";
    v2[519] = "appleid";
    v2[520] = "gamed";
    v2[521] = "gamecenter";
    v2[522] = "iap2d";
    v2[523] = "accessory";
    v2[524] = "iapauthd";
    v2[525] = "accessory";
    v2[526] = "iapd";
    v2[527] = "accessory";
    v2[528] = "iaptransportd";
    v2[529] = "accessory";
    v2[530] = "MFAANetwork";
    v2[531] = "accessory";
    v2[532] = "mDNSResponder";
    v2[533] = "dns";
    v2[534] = "mDNSResponderHelper";
    v2[535] = "dns";
    v2[536] = "dmd";
    v2[537] = "corporateaccounts";
    v2[538] = "mdmd";
    v2[539] = "corporateaccounts";
    v2[540] = "profiled";
    v2[541] = "corporateaccounts";
    v2[542] = "teslad";
    v2[543] = "corporateaccounts";
    v2[544] = "mstreamd";
    v2[545] = "com.apple.mobileslideshow";
    v2[546] = "assetsd";
    v2[547] = "com.apple.mobileslideshow";
    v2[548] = "nptocompaniond";
    v2[549] = "com.apple.mobileslideshow";
    v2[550] = "mediaserverd";
    v2[551] = "media";
    v2[552] = "mediaplaybackd";
    v2[553] = "media";
    v2[554] = "audiomxd";
    v2[555] = "media";
    v2[556] = "airplayd";
    v2[557] = "media";
    v2[558] = "avconferenced";
    v2[559] = "media";
    v2[560] = "amsaccountsd";
    v2[561] = "media";
    v2[562] = "amsengagementd";
    v2[563] = "media";
    v2[564] = "proximitycontrol";
    v2[565] = "media";
    v2[566] = "recentsd";
    v2[567] = "mail";
    v2[568] = "maild";
    v2[569] = "mail";
    v2[570] = "nanomaild";
    v2[571] = "mail";
    v2[572] = "printd";
    v2[573] = "print";
    v2[574] = "vmd";
    v2[575] = "voicemail";
    v2[576] = "IMRemoteURLConne";
    v2[577] = "messages";
    v2[578] = "IMRemoteURLConnectionAgent";
    v2[579] = "messages";
    v2[580] = "IMTransferAgent";
    v2[581] = "messages";
    v2[582] = "HashtagImagesExtension";
    v2[583] = "messages";
    v2[584] = "imtransferagent";
    v2[585] = "messages";
    v2[586] = "imtranscoderagent";
    v2[587] = "messages";
    v2[588] = "imagent";
    v2[589] = "messages";
    v2[590] = "com.apple.ids.idsremoteurlconnectionagent";
    v2[591] = "messages";
    v2[592] = "IMAutomaticHistoryDeletionAgent";
    v2[593] = "messages";
    v2[594] = "com.apple.Safari.SocialHelper";
    v2[595] = "com.apple.mobilesafari";
    v2[596] = "MobileSafari";
    v2[597] = "com.apple.mobilesafari";
    v2[598] = "MailCompositionService";
    v2[599] = "com.apple.mobilemail";
    v2[600] = "com.apple.facebook";
    v2[601] = "sharing.facebook";
    v2[602] = "com.apple.twitter";
    v2[603] = "sharing.twitter";
    v2[604] = "com.apple.weibo";
    v2[605] = "sharing.sinaweibo";
    v2[606] = "com.apple.tencentweibo";
    v2[607] = "sharing.tencentweibo";
    v2[608] = "com.apple.vimeo";
    v2[609] = "sharing.vimeo";
    v2[610] = "com.apple.flickr";
    v2[611] = "sharing.flickr";
    v2[612] = "willowd";
    v2[613] = "homekit";
    v2[614] = "homed";
    v2[615] = "homekit";
    v2[616] = "mediasetupd";
    v2[617] = "homekit";
    v2[618] = "ScreenTimeAgent";
    v2[619] = "screentime";
    v2[620] = "AppIndexer";
    v2[621] = "search";
    v2[622] = "searchd";
    v2[623] = "search";
    v2[624] = "demod";
    v2[625] = "hidden";
    v2[626] = "MIDIServer";
    v2[627] = "hidden";
    v2[628] = "curl";
    v2[629] = "hidden";
    v2[630] = "airplayutil";
    v2[631] = "hidden";
    v2[632] = "imtool";
    v2[633] = "hidden";
    v2[634] = "com.apple.sandboxd";
    v2[635] = "hidden";
    v2[636] = "com.apple.kinsale";
    v2[637] = "hidden";
    v2[638] = "sandboxd";
    v2[639] = "hidden";
    v2[640] = "dmon";
    v2[641] = "hidden";
    v2[642] = "nc";
    v2[643] = "hidden";
    v2[644] = "network_test";
    v2[645] = "hidden";
    v2[646] = "WirelessRadioManagerd";
    v2[647] = "hidden";
    v2[648] = "StreamPerf";
    v2[649] = "hidden";
    v2[650] = "iperf3";
    v2[651] = "hidden";
    v2[652] = "iperf";
    v2[653] = "hidden";
    v2[654] = "itesterd.mobile";
    v2[655] = "hidden";
    v2[656] = "ssh";
    v2[657] = "hidden";
    v2[658] = "com.apple.proactiveeventtrackerd";
    v2[659] = "hidden";
    v2[660] = "coreautomationd";
    v2[661] = "hidden";
    v2[662] = "com.apple.livabilityd";
    v2[663] = "hidden";
    v2[664] = "activate";
    v2[665] = "hidden";
    v2[666] = "WirelessStress";
    v2[667] = "hidden";
    v2[668] = "taptoradard";
    v2[669] = "hidden";
    v2[670] = "com.apple.TranslationUIServices.TranslationUIService";
    v2[671] = "translation";
    v2[672] = "com.apple.tipsd";
    v2[673] = "usereducation";
    v2[674] = "tipsd";
    v2[675] = "usereducation";
    v1[0] = v2;
    v1[1] = 338;
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t ctu::NeverDestroyed<std::map<char const* const,char const* const,anonymous namespace::CmpByContent,std::allocator<std::pair<char const* const,char const* const>>>>::NeverDestroyed<std::initializer_list<std::pair<char const* const,char const* const>>>(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  qword_27DDA0D00 = 0;
  qword_27DDA0CF8 = 0;
  sBsdNameToBundleName(void)::map = &qword_27DDA0CF8;
  if (v1)
  {
    v3 = 0;
    v4 = &v2[2 * v1];
    v5 = &qword_27DDA0CF8;
    while (v5 != &qword_27DDA0CF8)
    {
      if (v3)
      {
        do
        {
          v6 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
      }

      else
      {
        v7 = &qword_27DDA0CF8;
        do
        {
          v6 = v7[2];
          v8 = *v6 == v7;
          v7 = v6;
        }

        while (v8);
      }

      v3 = qword_27DDA0CF8;
      if (result)
      {
        goto LABEL_11;
      }

      if (!qword_27DDA0CF8)
      {
LABEL_22:
        operator new();
      }

      v9 = &qword_27DDA0CF8;
      while (1)
      {
        while (1)
        {
          v10 = v3;
          {
            break;
          }

          v3 = *v10;
          v9 = v10;
          if (!*v10)
          {
            goto LABEL_22;
          }
        }

        if (!result)
        {
          break;
        }

        v9 = (v10 + 8);
        v3 = *(v10 + 8);
        if (!v3)
        {
          goto LABEL_22;
        }
      }

LABEL_13:
      if (!*v9)
      {
        goto LABEL_22;
      }

      v2 += 2;
      if (v2 == v4)
      {
        return result;
      }

      v5 = sBsdNameToBundleName(void)::map;
      v3 = qword_27DDA0CF8;
    }

    v6 = &qword_27DDA0CF8;
LABEL_11:
    if (!v3)
    {
      goto LABEL_22;
    }

    v9 = v6 + 1;
    goto LABEL_13;
  }

  return result;
}

BOOL std::__map_value_compare<char const* const,std::__value_type<char const* const,char const* const>,anonymous namespace::CmpByContent,true>::operator()[abi:ne200100](char **a1, char **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a1);
  std::string::basic_string[abi:ne200100]<0>(v13, *a2);
  v3 = v14;
  v4 = v13[0];
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = __p[1];
  }

  if ((v16 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v14 >= 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v13[1];
  }

  if (v14 >= 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = v13[0];
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = memcmp(v7, v9, v10);
  if (v3 < 0)
  {
    operator delete(v4);
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__p[0]);
LABEL_18:
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v6 < v8;
  }
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, *a1);
  std::string::basic_string[abi:ne200100]<0>(v13, *a2);
  v3 = v14;
  v4 = v13[0];
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = __p[1];
  }

  if ((v16 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v14 >= 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v13[1];
  }

  if (v14 >= 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = v13[0];
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = memcmp(v7, v9, v10);
  if (v3 < 0)
  {
    operator delete(v4);
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__p[0]);
LABEL_18:
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v6 < v8;
  }
}

void sub_2325B9168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2325B9258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278989ED0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}