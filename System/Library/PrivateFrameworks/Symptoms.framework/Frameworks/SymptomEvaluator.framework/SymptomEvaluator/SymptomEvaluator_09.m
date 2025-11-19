uint64_t PostPatternAnalysis(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  while (1)
  {
    if (*v2 == 150)
    {
      v4 = *(v2 + 48);
      if (v4)
      {
        v5 = *(v4 + 40);
        if (v5)
        {
          if (v5(a1, v2))
          {
            break;
          }
        }
      }
    }

    v2 = *(v2 + 200);
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

unsigned __int16 *RestrictionParse(uint64_t a1, char *a2, unsigned __int16 *a3, int a4, uint64_t a5, unsigned __int16 a6, uint64_t a7, int a8)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a2;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v80 = 0;
  v69 = a8;
LABEL_2:
  for (i = v14; ; i = v19)
  {
    v17 = *a3;
    v79 = a8;
    if ((v17 - 37) < 2)
    {
      GetLHSParseNode(a1);
      v19 = v18;
      *v18 = *a3;
      *(v18 + 4) &= 0xFFFFFFFC;
      GetToken(a1, v12, a3);
      goto LABEL_5;
    }

    if (v17 == 171)
    {
      break;
    }

    v76 = v15;
    v21 = LiteralRestrictionParse(a1, v12, a3, &v80);
    if (v80 == 1)
    {
      goto LABEL_78;
    }

    v22 = v21;
    GetToken(a1, v12, a3);
    v23 = *v22;
    if (v23 - 35) > 1 || (v24 = *(v22 + 4), (v24) || *a3 == 162)
    {
      GetLHSParseNode(a1);
      v19 = v25;
      if (*v22 == 36)
      {
        v23 = 38;
      }

      else
      {
        v23 = 37;
      }

      *v25 = v23;
      *(v25 + 4) &= ~1u;
      *(v25 + 25) = v22;
    }

    else
    {
      *(v22 + 4) = v24 | 0x20;
      v19 = v22;
      v22 = 0;
    }

    v26 = *a3;
    v75 = v16;
    if ((v26 - 161) <= 1)
    {
      v27 = v19;
      v28 = v19 + 100;
      v29 = v22;
      while (1)
      {
        GetToken(a1, a2, a3);
        v30 = LiteralRestrictionParse(a1, a2, a3, &v80);
        if (v80 == 1)
        {
          goto LABEL_77;
        }

        v31 = v30;
        v32 = (v22 + 96);
        if (v22)
        {
          v33 = v29;
        }

        else
        {
          v32 = v28;
          v33 = v30;
        }

        v34 = (v29 + 100);
        if (!v29)
        {
          v34 = v28;
        }

        if (v26 == 162)
        {
          v32 = v34;
          v29 = v30;
        }

        else
        {
          v29 = v33;
        }

        *v32 = v30;
        GetToken(a1, a2, a3);
        v26 = *a3;
        v22 = v31;
        if ((v26 - 161) >= 2)
        {
          v19 = v27;
          v23 = *v27;
          v16 = v75;
          v8 = a6;
          break;
        }
      }
    }

    if (v23 == 35)
    {
      v36 = 0;
      v35 = 1;
      v12 = a2;
    }

    else
    {
      v12 = a2;
      if (v23 == 36)
      {
        v35 = 0;
        v36 = 1;
      }

      else
      {
        v36 = 0;
        v35 = 0;
      }
    }

    v37 = *(v19 + 25);
    if (v37)
    {
      v71 = v19;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      do
      {
        v41 = v37;
        do
        {
          v42 = *v41;
          if (v42 == 35)
          {
            v35 = 1;
          }

          else if (v42 == 36)
          {
            v36 = 1;
          }

          else if (ConstantType(v42))
          {
            v40 = 1;
          }

          else if (*v41 == 164)
          {
            v43 = FunctionCallToConstraintRecord(a1, *(*(v41 + 21) + 8));
            v44 = *v43;
            if ((*v43 & 0x20000) != 0)
            {
              v45 = 1;
            }

            else
            {
              v45 = v38;
            }

            if ((v44 & 0x20001) == 0)
            {
              v39 = 1;
            }

            if ((v44 & 1) == 0)
            {
              v38 = v45;
            }

            RemoveConstraint(a1, v43);
          }

          v41 = *(v41 + 24);
        }

        while (v41);
        v37 = *(v37 + 25);
      }

      while (v37);
      v46 = v40 != 0;
      v47 = v39 != 0;
      v48 = v38 != 0;
      v8 = a6;
      v16 = v75;
      v19 = v71;
      v12 = a2;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
    }

    v49 = v35 != 0 || v46 || v47;
    v50 = v36 != 0;
    v9 = a5;
    v10 = a4;
    if (v49)
    {
      v15 = v76;
      if (v50 || v48)
      {
        v27 = v19;
        PrintErrorID(a1, "PATTERN", 2, 1);
        EnvPrintRouter(a1, "werror", "Single and multifield constraints cannot be mixed in a field constraint\n");
LABEL_77:
        ReturnLHSParseNodes(a1, v27);
LABEL_78:
        ReturnLHSParseNodes(a1, v14);
        return 0;
      }
    }

    else
    {
      v15 = v76;
    }

LABEL_5:
    if (v10 == 1 && *a3 != 171)
    {
      PPBackup(a1);
      SavePPBuffer(a1, " ");
      SavePPBuffer(a1, *(a3 + 2));
    }

    v20 = *v19;
    if (v20 == 37 || v20 == 35)
    {
      v15 = (v15 + 1);
    }

    else
    {
      ++v16;
    }

    *(v19 + 8) = v9;
    v19[36] = v8;
    v19[29] = v79;
    if (!v10)
    {
      if (a7)
      {
        *(v19 + 4) = a7;
      }

      else if (v20 == 35)
      {
        *(v19 + 4) = GetConstraintRecord(a1);
      }

      else
      {
        *(v19 + 4) = 0;
      }

      return v19;
    }

    a8 = v79 + 1;
    if (!i)
    {
      v14 = v19;
      goto LABEL_2;
    }

    *(i + 24) = v19;
  }

  if (!v10 && !v14)
  {
    SyntaxErrorMessage(a1, "defrule");
    return 0;
  }

  if (v14)
  {
    v52 = v16;
    v53 = v15;
    v54 = v14;
    while (!a7)
    {
      if (*v54 == 35)
      {
        ConstraintRecord = GetConstraintRecord(a1);
LABEL_87:
        *(v54 + 4) = ConstraintRecord;
        ReturnExpression(a1, ConstraintRecord[5]);
        ReturnExpression(a1, *(*(v54 + 4) + 48));
        *(*(v54 + 4) + 40) = GenConstant(a1, 2, *(*(*(a1 + 48) + 392) + 24));
        *(*(v54 + 4) + 48) = GenConstant(a1, 2, *(*(*(a1 + 48) + 392) + 16));
        *(v54 + 4) |= 0x40u;
        if ((*v54 | 2) == 0x26)
        {
          v56 = GetConstraintRecord(a1);
          SetConstraintType(4, v56);
          *v56 &= ~0x40000u;
          *(v56 + 7) = *(v54 + 4);
          *(v54 + 4) = v56;
          if (*(*(a7 + 48) + 8) != *(*(*(a1 + 48) + 392) + 16))
          {
            ReturnExpression(a1, *(v56 + 6));
            v57 = EnvAddLong(a1, *(*(*(a7 + 48) + 8) + 24) - v53);
            *(v56 + 6) = GenConstant(a1, 1, v57);
          }

          if (v52 == 1 && *(*(a7 + 40) + 8) != *(*(*(a1 + 48) + 392) + 24))
          {
            ReturnExpression(a1, *(v56 + 5));
            v58 = EnvAddLong(a1, *(*(*(a7 + 40) + 8) + 24) - v53);
            *(v56 + 5) = GenConstant(a1, 1, v58);
          }
        }
      }

      v54 = *(v54 + 24);
      if (!v54)
      {
        goto LABEL_94;
      }
    }

    ConstraintRecord = CopyConstraintRecord(a1, a7);
    goto LABEL_87;
  }

LABEL_94:
  if (!v10)
  {
    return v14;
  }

  GetLHSParseNode(a1);
  *v59 = 38;
  *(v59 + 4) |= 0x10u;
  *(v59 + 25) = v14;
  *(v59 + 8) = v9;
  v59[36] = v8;
  v59[29] = v69;
  *(v59 + 4) = a7;
  v19 = v59;
  if (v14)
  {
    v60 = 0;
    v61 = 0;
    v62 = v14;
    do
    {
      v63 = *v62;
      if (v63 == 37 || v63 == 35)
      {
        ++v61;
      }

      else
      {
        ++v60;
      }

      v62 = *(v62 + 24);
    }

    while (v62);
    v64 = 0;
    do
    {
      v14[12] = v64;
      v14[10] = v62;
      *(v14 + 4) |= 0x10000u;
      v65 = *v14;
      if (v65 == 37 || v65 == 35)
      {
        v14[13] = v61 + ~v64;
        v66 = v60 - v62;
      }

      else
      {
        v14[13] = v61 - v64;
        v66 = v60 + ~v62;
      }

      v14[11] = v66;
      v67 = *(v14 + 25);
      if (v67)
      {
        do
        {
          v68 = v67;
          do
          {
            *(v68 + 20) = *(v14 + 10);
            *(v68 + 16) |= 0x10000u;
            v68 = *(v68 + 192);
          }

          while (v68);
          v67 = *(v67 + 200);
        }

        while (v67);
        v65 = *v14;
      }

      if (v65 == 37 || v65 == 35)
      {
        ++v64;
      }

      else
      {
        LOWORD(v62) = v62 + 1;
      }

      v14 = *(v14 + 24);
    }

    while (v14);
  }

  return v19;
}

uint64_t LiteralRestrictionParse(uint64_t a1, char *a2, unsigned __int16 *a3, _DWORD *a4)
{
  GetLHSParseNode(a1);
  v9 = v8;
  if (*a3 == 160)
  {
    GetToken(a1, a2, a3);
    v10 = *(v9 + 16) | 1;
  }

  else
  {
    v10 = *(v8 + 16) & 0xFFFFFFFE;
  }

  *(v9 + 16) = v10;
  v11 = *a3;
  *v9 = v11;
  if (v11 > 0x24)
  {
    goto LABEL_15;
  }

  if (((1 << v11) & 0x180000010BLL) == 0)
  {
    if (v11 == 2)
    {
      v12 = *(a3 + 1);
      v14 = *(v12 + 24);
      v15 = *v14;
      if (v15 == 58)
      {
        if (v14[1])
        {
          goto LABEL_7;
        }

        v19 = Function0Parse(a1, a2);
        if (v19)
        {
          v17 = v19;
          v18 = 163;
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 != 61 || v14[1])
        {
          goto LABEL_7;
        }

        v16 = Function0Parse(a1, a2);
        if (v16)
        {
          v17 = v16;
          v18 = 164;
LABEL_20:
          *v9 = v18;
          *(v9 + 168) = ExpressionToLHSParseNodes(a1, v17);
          ReturnExpression(a1, v17);
          return v9;
        }
      }

LABEL_16:
      *a4 = 1;
      ReturnLHSParseNodes(a1, v9);
      return 0;
    }

LABEL_15:
    SyntaxErrorMessage(a1, "defrule");
    goto LABEL_16;
  }

  v12 = *(a3 + 1);
LABEL_7:
  *(v9 + 8) = v12;
  return v9;
}

uint64_t ConstructProfilingFunctionDefinitions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0xFu, 0x60uLL, 0);
  v2 = *(*(a1 + 48) + 120);
  *(v2 + 40) = xmmword_284794ED8;
  *(v2 + 56) = off_284794EE8;
  v3 = *(*(a1 + 48) + 120);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 88) = "%-40s %7ld %15.6f  %8.2f%%  %15.6f  %8.2f%%\n";
  EnvDefineFunction2(a1, "profile", 118, ProfileCommand, "ProfileCommand", "11w");
  EnvDefineFunction2(a1, "profile-info", 118, ProfileInfoCommand, "ProfileInfoCommand", "01w");
  EnvDefineFunction2(a1, "profile-reset", 118, ProfileResetCommand, "ProfileResetCommand", "00");
  EnvDefineFunction2(a1, "set-profile-percent-threshold", 100, SetProfilePercentThresholdCommand, "SetProfilePercentThresholdCommand", "11n");
  EnvDefineFunction2(a1, "get-profile-percent-threshold", 100, GetProfilePercentThresholdCommand, "GetProfilePercentThresholdCommand", "00");
  *(*(*(a1 + 48) + 120) + 64) = InstallUserDataRecord(a1, (*(*(a1 + 48) + 120) + 40));

  return EnvAddClearFunction(a1, "profile", ProfileClearFunction, 0);
}

void *CreateProfileData(uint64_t a1)
{
  result = genalloc(a1, 0x38uLL);
  result[2] = 0;
  *(result + 24) &= ~1u;
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  return result;
}

uint64_t ProfileCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "profile", 0, 1);
  if (result != -1)
  {
    v4 = 0u;
    v5 = 0u;
    v3 = 0u;
    result = EnvArgTypeCheck(a1, "profile", 1, 2, &v3);
    if (result)
    {
      result = Profile(a1, *(v4 + 24));
      if (!result)
      {
        return ExpectedTypeError1(a1, "profile", 1, "symbol with value constructs, user-functions, or off");
      }
    }
  }

  return result;
}

void ProfileInfoCommand(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  memset(v44, 0, sizeof(v44));
  v2 = EnvArgCountCheck(a1, "profile", 2u, 1);
  if (v2 != -1 && (v2 != 1 || EnvArgTypeCheck(a1, "profile", 1, 2, v44)))
  {
    v9 = *(*(a1 + 48) + 120);
    if (*(v9 + 68) || *(v9 + 72))
    {
      v10 = gentime();
      v9 = *(*(a1 + 48) + 120);
      v11 = *(v9 + 16) + v10 - *v9;
      *(v9 + 8) = v10;
      *(v9 + 16) = v11;
    }

    if (*(v9 + 24))
    {
      gensprintf(v46, "Profile elapsed time = %g seconds\n", v3, v4, v5, v6, v7, v8, *(v9 + 16));
      EnvPrintRouter(a1, "wdisplay", v46);
      v12 = *(*(*(a1 + 48) + 120) + 24);
      if (v12 == 1)
      {
        v13 = "Function Name                            ";
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_13;
        }

        v13 = "Construct Name                           ";
      }

      EnvPrintRouter(a1, "wdisplay", v13);
LABEL_13:
      EnvPrintRouter(a1, "wdisplay", "Entries         Time           %          Time+Kids     %+Kids\n");
      v14 = *(*(*(a1 + 48) + 120) + 24);
      if (v14 == 1)
      {
        v15 = "-------------                            ";
      }

      else
      {
        if (v14 != 2)
        {
LABEL_18:
          EnvPrintRouter(a1, "wdisplay", "-------        ------        -----        ---------     ------\n");
          v16 = *(*(*(a1 + 48) + 120) + 24);
          if (v16 == 1)
          {
            FunctionList = GetFunctionList(a1);
            if (FunctionList)
            {
              v18 = FunctionList;
              do
              {
                v19 = *(*v18 + 24);
                v20 = TestUserData(*(*(*(a1 + 48) + 120) + 64), *(v18 + 64));
                OutputProfileInfo(a1, v19, v20, 0, 0, 0, 0);
                v18 = *(v18 + 56);
              }

              while (v18);
            }

            for (i = 24; i != 1224; i += 8)
            {
              v22 = *(a1 + 48);
              v23 = *(*(v22 + 352) + i);
              if (v23)
              {
                v24 = *v23;
                v25 = TestUserData(*(*(v22 + 120) + 64), *(v23 + 104));
                OutputProfileInfo(a1, v24, v25, 0, 0, 0, 0);
              }
            }

            v16 = *(*(*(a1 + 48) + 120) + 24);
          }

          if (v16 == 2)
          {
            v45 = "\n*** Deffunctions ***\n\n";
            NextDeffunction = EnvGetNextDeffunction(a1, 0);
            if (NextDeffunction)
            {
              v27 = NextDeffunction;
              do
              {
                DefruleName = EnvGetDefruleName(a1, v27);
                v29 = TestUserData(*(*(*(a1 + 48) + 120) + 64), *(v27 + 40));
                OutputProfileInfo(a1, DefruleName, v29, 0, 0, 0, &v45);
                v27 = EnvGetNextDeffunction(a1, v27);
              }

              while (v27);
            }

            v45 = "\n*** Defgenerics ***\n";
            NextDefgeneric = EnvGetNextDefgeneric(a1, 0);
            if (NextDefgeneric)
            {
              v31 = NextDefgeneric;
              do
              {
                v32 = EnvGetDefruleName(a1, v31);
                NextDefmethod = EnvGetNextDefmethod(a1, v31, 0);
                if (NextDefmethod)
                {
                  v34 = NextDefmethod;
                  v35 = "\n";
                  v36 = "\n";
                  do
                  {
                    DefmethodPointer = GetDefmethodPointer(v31, v34);
                    EnvGetDefmethodDescription(a1, __s, 0x1FEuLL, v31, v34);
                    v38 = TestUserData(*(*(*(a1 + 48) + 120) + 64), *(DefmethodPointer + 48));
                    if (OutputProfileInfo(a1, __s, v38, v36, v32, v35, &v45))
                    {
                      v32 = 0;
                      v36 = 0;
                      v35 = 0;
                    }

                    v34 = EnvGetNextDefmethod(a1, v31, v34);
                  }

                  while (v34);
                }

                v31 = EnvGetNextDefgeneric(a1, v31);
              }

              while (v31);
            }

            v45 = "\n*** Defrules ***\n\n";
            NextDefrule = EnvGetNextDefrule(a1, 0);
            if (NextDefrule)
            {
              v40 = NextDefrule;
              do
              {
                v41 = EnvGetDefruleName(a1, v40);
                v42 = TestUserData(*(*(*(a1 + 48) + 120) + 64), *(v40 + 40));
                OutputProfileInfo(a1, v41, v42, 0, 0, 0, &v45);
                v40 = EnvGetNextDefrule(a1, v40);
              }

              while (v40);
            }
          }

          goto LABEL_42;
        }

        v15 = "--------------                           ";
      }

      EnvPrintRouter(a1, "wdisplay", v15);
      goto LABEL_18;
    }
  }

LABEL_42:
  v43 = *MEMORY[0x277D85DE8];
}

uint64_t ProfileResetCommand(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 120);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  FunctionList = GetFunctionList(a1);
  if (FunctionList)
  {
    v4 = FunctionList;
    do
    {
      v5 = TestUserData(*(*(*(a1 + 48) + 120) + 64), *(v4 + 64));
      if (v5)
      {
        *(v5 + 2) = 0;
        v5[24] &= ~1u;
        *(v5 + 5) = 0;
        *(v5 + 6) = 0;
        *(v5 + 4) = 0;
      }

      v4 = *(v4 + 56);
    }

    while (v4);
  }

  for (i = 24; i != 1224; i += 8)
  {
    v7 = *(a1 + 48);
    v8 = *(*(v7 + 352) + i);
    if (v8)
    {
      v9 = TestUserData(*(*(v7 + 120) + 64), *(v8 + 104));
      if (v9)
      {
        *(v9 + 2) = 0;
        v9[24] &= ~1u;
        *(v9 + 5) = 0;
        *(v9 + 6) = 0;
        *(v9 + 4) = 0;
      }
    }
  }

  NextDeffunction = EnvGetNextDeffunction(a1, 0);
  if (NextDeffunction)
  {
    v11 = NextDeffunction;
    do
    {
      v12 = TestUserData(*(*(*(a1 + 48) + 120) + 64), *(v11 + 40));
      if (v12)
      {
        *(v12 + 2) = 0;
        v12[24] &= ~1u;
        *(v12 + 5) = 0;
        *(v12 + 6) = 0;
        *(v12 + 4) = 0;
      }

      v11 = EnvGetNextDeffunction(a1, v11);
    }

    while (v11);
  }

  NextDefrule = EnvGetNextDefrule(a1, 0);
  if (NextDefrule)
  {
    v14 = NextDefrule;
    do
    {
      v15 = TestUserData(*(*(*(a1 + 48) + 120) + 64), *(v14 + 40));
      if (v15)
      {
        *(v15 + 2) = 0;
        v15[24] &= ~1u;
        *(v15 + 5) = 0;
        *(v15 + 6) = 0;
        *(v15 + 4) = 0;
      }

      v14 = EnvGetNextDefrule(a1, v14);
    }

    while (v14);
  }

  result = EnvGetNextDefgeneric(a1, 0);
  if (result)
  {
    v17 = result;
    do
    {
      v18 = TestUserData(*(*(*(a1 + 48) + 120) + 64), *(v17 + 40));
      if (v18)
      {
        *(v18 + 2) = 0;
        v18[24] &= ~1u;
        *(v18 + 5) = 0;
        *(v18 + 6) = 0;
        *(v18 + 4) = 0;
      }

      NextDefmethod = EnvGetNextDefmethod(a1, v17, 0);
      if (NextDefmethod)
      {
        v20 = NextDefmethod;
        do
        {
          DefmethodPointer = GetDefmethodPointer(v17, v20);
          v22 = TestUserData(*(*(*(a1 + 48) + 120) + 64), *(DefmethodPointer + 48));
          if (v22)
          {
            *(v22 + 2) = 0;
            v22[24] &= ~1u;
            *(v22 + 5) = 0;
            *(v22 + 6) = 0;
            *(v22 + 4) = 0;
          }

          v20 = EnvGetNextDefmethod(a1, v17, v20);
        }

        while (v20);
      }

      result = EnvGetNextDefgeneric(a1, v17);
      v17 = result;
    }

    while (result);
  }

  return result;
}

double SetProfilePercentThresholdCommand(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  if (EnvArgCountCheck(a1, "set-profile-percent-threshold", 0, 1) == -1 || !EnvArgTypeCheck(a1, "set-profile-percent-threshold", 1, 180, &v6))
  {
    return *(*(*(a1 + 48) + 120) + 32);
  }

  if (WORD4(v6) == 1)
  {
    v2 = *(v7 + 24);
  }

  else
  {
    v2 = *(v7 + 24);
  }

  if (v2 >= 0.0 && v2 <= 100.0)
  {
    v5 = *(*(a1 + 48) + 120);
    result = *(v5 + 32);
    *(v5 + 32) = v2;
  }

  else
  {
    ExpectedTypeError1(a1, "set-profile-percent-threshold", 1, "number in the range 0 to 100");
    return -1.0;
  }

  return result;
}

uint64_t ProfileClearFunction(uint64_t a1)
{
  result = GetFunctionList(a1);
  if (result)
  {
    v3 = result;
    do
    {
      result = DeleteUserData(a1, *(*(*(a1 + 48) + 120) + 64), *(v3 + 64));
      *(v3 + 64) = result;
      v3 = *(v3 + 56);
    }

    while (v3);
  }

  v4 = *(a1 + 48);
  for (i = 24; i != 1224; i += 8)
  {
    v6 = *(*(v4 + 352) + i);
    if (v6)
    {
      result = DeleteUserData(a1, *(*(v4 + 120) + 64), *(v6 + 104));
      v4 = *(a1 + 48);
      *(*(*(v4 + 352) + i) + 104) = result;
    }
  }

  return result;
}

uint64_t Profile(uint64_t a1, char *__s1)
{
  if (!strcmp(__s1, "user-functions"))
  {
    v5 = gentime();
    v6 = *(*(a1 + 48) + 120);
    *v6 = v5;
    result = 1;
    *(v6 + 68) = 1;
    *(v6 + 24) = 1;
  }

  else
  {
    if (!strcmp(__s1, "constructs"))
    {
      v7 = gentime();
      v8 = *(*(a1 + 48) + 120);
      *v8 = v7;
      *(v8 + 68) = 0x100000000;
      *(v8 + 24) = 2;
    }

    else
    {
      if (strcmp(__s1, "off"))
      {
        return 0;
      }

      v9 = gentime();
      v10 = *(*(a1 + 48) + 120);
      v11 = *(v10 + 16) + v9 - *v10;
      *(v10 + 8) = v9;
      *(v10 + 16) = v11;
      *(v10 + 68) = 0;
      *(v10 + 72) = 0;
    }

    return 1;
  }

  return result;
}

void StartProfile(uint64_t a1, uint64_t a2, unsigned __int8 **a3, int a4)
{
  if (a4)
  {
    UserData = FetchUserData(a1, *(*(*(a1 + 48) + 120) + 64), a3);
    *a2 = *a2 & 0xFC | 2;
    v7 = gentime();
    v8 = *(a1 + 48);
    *(a2 + 16) = *(*(v8 + 120) + 80);
    v9 = *(v8 + 120);
    v10 = *(v9 + 80);
    if (v10)
    {
      *(v10 + 40) = *(v10 + 40) + v7 - *(v10 + 32);
    }

    *(v9 + 80) = UserData;
    v11 = *(*(v8 + 120) + 80);
    ++*(v11 + 16);
    *(v11 + 32) = v7;
    if ((*(v11 + 24) & 1) == 0)
    {
      *a2 |= 1u;
      *(a2 + 8) = v7;
      v12 = *(*(*(a1 + 48) + 120) + 80);
      *(v12 + 24) |= 1u;
    }
  }

  else
  {
    *a2 &= ~2u;
  }
}

void EndProfile(uint64_t a1, uint64_t a2)
{
  if ((*a2 & 2) != 0)
  {
    v4 = gentime();
    if (*a2)
    {
      v5 = *(*(*(a1 + 48) + 120) + 80);
      *(v5 + 48) = v4 - *(a2 + 8) + *(v5 + 48);
      *(v5 + 24) &= ~1u;
    }

    v6 = *(*(a1 + 48) + 120);
    *(*(v6 + 80) + 40) = *(*(v6 + 80) + 40) + v4 - *(*(v6 + 80) + 32);
    v7 = *(a2 + 16);
    if (v7)
    {
      *(v7 + 32) = v4;
    }

    *(v6 + 80) = v7;
  }
}

uint64_t ResetProfileInfo(uint64_t result)
{
  if (result)
  {
    *(result + 16) = 0;
    *(result + 24) &= ~1u;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 32) = 0;
  }

  return result;
}

double SetProfilePercentThreshold(uint64_t a1, double a2)
{
  v2 = -1.0;
  if (a2 >= 0.0 && a2 <= 100.0)
  {
    v4 = *(*(a1 + 48) + 120);
    v2 = *(v4 + 32);
    *(v4 + 32) = a2;
  }

  return v2;
}

uint64_t SetProfileOutputString(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 120);
  result = *(v2 + 88);
  if (a2)
  {
    *(v2 + 88) = a2;
  }

  return result;
}

uint64_t OutputProfileInfo(uint64_t a1, char *__s, double *a3, char *a4, char *a5, char *a6, char **a7)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a3 && *(a3 + 2) && ((v14 = *(*(a1 + 48) + 120), v15 = *(v14 + 16), v15 == 0.0) ? (v16 = 0.0) : (a3[5] * 100.0 / v15 >= 0.005 ? (v16 = a3[5] * 100.0 / v15) : (v16 = 0.0), v17 = a3[6] * 100.0 / v15), v16 >= *(v14 + 32)))
  {
    if (a7 && *a7)
    {
      EnvPrintRouter(a1, "wdisplay", *a7);
      *a7 = 0;
    }

    if (a4)
    {
      EnvPrintRouter(a1, "wdisplay", a4);
    }

    if (a5)
    {
      EnvPrintRouter(a1, "wdisplay", a5);
    }

    if (a6)
    {
      EnvPrintRouter(a1, "wdisplay", a6);
    }

    if (strlen(__s) >= 0x28)
    {
      EnvPrintRouter(a1, "wdisplay", __s);
      EnvPrintRouter(a1, "wdisplay", "\n");
      __s = "";
    }

    v28 = *(a3 + 6);
    v27 = *(a3 + 5);
    v26 = *(a3 + 2);
    gensprintf(v29, *(*(*(a1 + 48) + 120) + 88), v20, v21, v22, v23, v24, v25, __s);
    EnvPrintRouter(a1, "wdisplay", v29);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void browserCallBack(int a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a1 <= 2)
      {
        if (a1 == 1)
        {
          if (v6 && [v5 isRunning])
          {
            v7 = [v6 objectForKeyedSubscript:@"dnsName"];
            v25 = [v5 allDiscoveredServices];
            v26 = [v25 objectForKeyedSubscript:v7];

            v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
            v27 = [v5 allDiscoveredServices];
            [v27 setObject:v9 forKey:v7];

            v28 = [v5 currentlyDiscoveredServices];
            [v28 setObject:v9 forKey:v7];

            if ([v7 length])
            {
              if (v26)
              {
                v29 = [v5 resolvers];
                [v29 removeObjectForKey:v7];
              }

              v30 = *MEMORY[0x277CBED00];
              v31 = _CFNetServiceCreateFromServiceName();
              if (v31 && (v32 = v31, Addressing = CFNetServiceGetAddressing(v31), CFRelease(v32), Addressing) && CFArrayGetCount(Addressing))
              {
                [v9 setObject:Addressing forKeyedSubscript:@"addresses"];
              }

              else
              {
                v41 = [v5 resolvers];
                v42 = [v41 objectForKey:v7];

                if (!v42)
                {
                  v43 = [DNSResolverProbe alloc];
                  v44 = [v5 scanQueue];
                  v45 = [(DNSResolverProbe *)v43 initWithQueue:v44];

                  v46 = [v5 resolvers];
                  [v46 setObject:v45 forKey:v7];

                  v47 = [v5 delegate];
                  [(DNSResolverProbe *)v45 setBonjourDelegate:v47];

                  [(DNSResolverProbe *)v45 setErrorDelegate:v5];
                  -[DNSResolverProbe setSharedDNSRef:](v45, "setSharedDNSRef:", [v5 dnsRef]);
                  -[DNSResolverProbe startDNSResolveFor:includeAWDL:](v45, "startDNSResolveFor:includeAWDL:", v9, [v5 includeAWDL]);
                }
              }

              v48 = [v5 delegate];
              v49 = objc_opt_respondsToSelector();

              if (v49)
              {
                v50 = [v5 delegate];
                [v50 bonjourServiceAdded:v9 isUpdatedService:v26 != 0];
              }
            }

            goto LABEL_58;
          }

          v37 = [v5 isRunning];
          v35 = debuggabilityLogHandle;
          v38 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
          if (v37)
          {
            if (!v38)
            {
              goto LABEL_17;
            }

            LOWORD(v51) = 0;
            v16 = "Bonjour Browser Add/Update Event with a nil event dict";
          }

          else
          {
            if (!v38)
            {
              goto LABEL_17;
            }

            LOWORD(v51) = 0;
            v16 = "Bonjour Browser Add/Update Event but not running";
          }

LABEL_53:
          v17 = v35;
          v18 = OS_LOG_TYPE_INFO;
          goto LABEL_15;
        }

        if (a1 == 2)
        {
          if (v6 && [v5 isRunning])
          {
            v7 = [v6 objectForKeyedSubscript:@"dnsName"];
            if (v7)
            {
              v8 = [v5 resolvers];
              v9 = [v8 objectForKey:v7];

              if (v9)
              {
                [v9 stopTest];
                v10 = [v5 resolvers];
                [v10 removeObjectForKey:v7];
              }

              v11 = [v5 currentlyDiscoveredServices];
              [v11 removeObjectForKey:v7];

              v12 = [v5 delegate];
              v13 = objc_opt_respondsToSelector();

              if (v13)
              {
                v14 = [v5 delegate];
                [v14 bonjourServiceRemoved:v6];
              }

LABEL_58:
            }

LABEL_59:

            goto LABEL_17;
          }

          v34 = [v5 isRunning];
          v35 = debuggabilityLogHandle;
          v36 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
          if (v34)
          {
            if (!v36)
            {
              goto LABEL_17;
            }

            LOWORD(v51) = 0;
            v16 = "Bonjour Browser Remove Event with a nil event dict";
          }

          else
          {
            if (!v36)
            {
              goto LABEL_17;
            }

            LOWORD(v51) = 0;
            v16 = "Bonjour Browser Remove Event but not running";
          }

          goto LABEL_53;
        }

LABEL_25:
        v24 = debuggabilityLogHandle;
        if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        LODWORD(v51) = 67109120;
        HIDWORD(v51) = a1;
        v16 = "Unknown Event Type: %u";
        v17 = v24;
        v18 = OS_LOG_TYPE_ERROR;
        v19 = 8;
        goto LABEL_16;
      }

      if (a1 == 3)
      {
        if (![v5 isRunning])
        {
          v22 = debuggabilityLogHandle;
          if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            goto LABEL_47;
          }

          LOWORD(v51) = 0;
          v23 = "Bonjour Browser Stop Event but already not running";
LABEL_46:
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, v23, &v51, 2u);
LABEL_47:
          v39 = [v5 delegate];
          v40 = objc_opt_respondsToSelector();

          if (v40)
          {
            v7 = [v5 delegate];
            [v7 bonjourProbeComplete:v5 status:3];
            goto LABEL_59;
          }

          goto LABEL_17;
        }
      }

      else
      {
        if (a1 != 4)
        {
          goto LABEL_25;
        }

        v21 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
        {
          LOWORD(v51) = 0;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "kBonjourBrowserEventType_Restarted", &v51, 2u);
        }

        if (![v5 isRunning])
        {
          v22 = debuggabilityLogHandle;
          if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            goto LABEL_47;
          }

          LOWORD(v51) = 0;
          v23 = "Bonjour Browser Restart Event but already not running";
          goto LABEL_46;
        }
      }

      [v5 stopTest];
      goto LABEL_47;
    }
  }

  v15 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v51) = 0;
    v16 = "browserCallBack context is NULL or unknown object";
    v17 = v15;
    v18 = OS_LOG_TYPE_ERROR;
LABEL_15:
    v19 = 2;
LABEL_16:
    _os_log_impl(&dword_23255B000, v17, v18, v16, &v51, v19);
  }

LABEL_17:

  v20 = *MEMORY[0x277D85DE8];
}

void resolveCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a10)
  {
    v12 = a10;
    v13 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v30 = v12;
      v31 = 2080;
      v32 = a6;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Resolve Callback Myself is %p for %s", buf, 0x16u);
    }

    if (a4)
    {
      v14 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v30) = a4;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "RESOLVE ERROR %d", buf, 8u);
      }

      [v12 stopTest];
      v15 = [v12 errorDelegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [v12 errorDelegate];
        [v17 dnsResolver:v12 encounteredDNSError:a4];
      }

      goto LABEL_17;
    }

    if ([v12 resolveDNSRef])
    {
      DNSServiceRefDeallocate([v12 resolveDNSRef]);
      [v12 setResolveDNSRef:0];
    }

    if ([v12 getAddrInfoDNSRef])
    {
      v19 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v30 = v12;
        v20 = "%p Why are we thinking of calling DNSServiceGetAddrInfo() again?";
        v21 = v19;
        v22 = 12;
LABEL_16:
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
      }
    }

    else
    {
      if (![v12 sharedDNSRef])
      {
        v27 = debuggabilityLogHandle;
        if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        *buf = 0;
        v20 = "The shared DNS Ref for DNSServiceGetAddrInfo() is NULL";
        v21 = v27;
        v22 = 2;
        goto LABEL_16;
      }

      sdRef = [v12 sharedDNSRef];
      AddrInfo = DNSServiceGetAddrInfo(&sdRef, 0x105000u, 0, 3u, a6, addrinfo_reply, v12);
      v25 = debuggabilityLogHandle;
      if (!AddrInfo)
      {
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v30 = v12;
          v31 = 2048;
          v32 = sdRef;
          _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "%p After calling DNSServiceGetAddrInfo() _getAddrInfoDNSRef is %p", buf, 0x16u);
        }

        [v12 setGetAddrInfoDNSRef:sdRef];
        goto LABEL_17;
      }

      v26 = AddrInfo;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = a6;
        v31 = 1024;
        LODWORD(v32) = v26;
        v20 = "Starting DNSServiceGetAddrInfo for %s failed %d";
        v21 = v25;
        v22 = 18;
        goto LABEL_16;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  v18 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Resolver callback occurred on a deallocated DNSResolverProbe object.", buf, 2u);
  }

LABEL_18:
  v23 = *MEMORY[0x277D85DE8];
}

void addrinfo_reply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v12 = a8;
    v16 = v12;
    if (a4 == -65554)
    {
LABEL_45:

      goto LABEL_46;
    }

    if (a4)
    {
      v23 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = a4;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "Error from DNSServiceGetAddrInfo callback %d!", &buf, 8u);
      }

      v24 = [v16 errorDelegate];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        v26 = [v16 errorDelegate];
        [v26 dnsResolver:v16 encounteredDNSError:a4];
      }

      goto LABEL_45;
    }

    MEMORY[0x28223BE20](v12, v13, v14, v15);
    memset(v41, 0, 46);
    if (!a6)
    {
      goto LABEL_32;
    }

    v17 = *(a6 + 1);
    if (v17 == 30)
    {
      if (*(a6 + 8) || *(a6 + 12) || *(a6 + 16) || *(a6 + 20))
      {
        inet_ntop(30, (a6 + 8), v41, 0x2Eu);
        if (*(a6 + 8) == 254 && (*(a6 + 9) & 0xC0) == 0x80)
        {
          v20 = @"IPv6LinkLocalAddress";
        }

        else
        {
          v20 = @"IPv6Address";
        }

        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%%%d", v41, a3];
        goto LABEL_27;
      }

      v27 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = a5;
      v28 = "We got zeroed IPv6 here for %s!";
    }

    else
    {
      if (v17 != 2)
      {
        goto LABEL_31;
      }

      v19 = *(a6 + 4);
      v18 = (a6 + 4);
      if (v19)
      {
        inet_ntop(2, v18, v41, 0x2Eu);
        if (*v18 == -343)
        {
          v20 = @"IPv4LinkLocalAddress";
        }

        else
        {
          v20 = @"IPv4Address";
        }

        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:v41];
LABEL_27:
        a6 = v21;
LABEL_33:
        v29 = [v16 serviceDict];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:a5];
        v31 = [v30 rangeOfString:@".local." options:4];
        if (v32)
        {
          v33 = [v30 substringToIndex:v31];

          v30 = v33;
        }

        [v29 setObject:v30 forKeyedSubscript:@"hostName"];
        if (v20 && a6)
        {
          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
          [v29 setObject:v34 forKeyedSubscript:@"ifindex"];

          v35 = [v29 objectForKeyedSubscript:@"addresses"];
          if (!v35)
          {
            v35 = [MEMORY[0x277CBEB38] dictionary];
            [v29 setObject:v35 forKeyedSubscript:@"addresses"];
          }

          v36 = [v35 objectForKeyedSubscript:v20];

          if (!v36)
          {
            [v35 setObject:a6 forKeyedSubscript:v20];
          }

          v37 = [v16 bonjourDelegate];
          v38 = objc_opt_respondsToSelector();

          if (v38)
          {
            v39 = [v16 bonjourDelegate];
            [v39 bonjourServiceAdded:v29 isUpdatedService:1];
          }
        }

        goto LABEL_45;
      }

      v27 = debuggabilityLogHandle;
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = a5;
      v28 = "We got zeroed IPv4 here for %s!";
    }

    _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, v28, &buf, 0xCu);
LABEL_31:
    a6 = 0;
LABEL_32:
    v20 = 0;
    goto LABEL_33;
  }

  v22 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Address info callback occurred on a deallocated DNSResolverProbe object.", &buf, 2u);
  }

LABEL_46:
  v40 = *MEMORY[0x277D85DE8];
}

uint64_t _readBOOLFromCFType(uint64_t a1, void *cf)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    goto LABEL_10;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFBooleanGetTypeID())
  {
    result = *MEMORY[0x277CBED28] == cf;
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v4 != CFNumberGetTypeID())
  {
    v7 = systemSettingsLogHandle;
    result = os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_11;
    }

    v8 = v7;
    v11 = 136315907;
    v12 = a1;
    v13 = 2048;
    v14 = v4;
    v15 = 2112;
    v16 = CFCopyTypeIDDescription(v4);
    v17 = 2113;
    v18 = cf;
    v9 = v16;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "SCPreferences key %s returned Unexpected type %lu (%@): %{private}@", &v11, 0x2Au);

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  v6 = *MEMORY[0x277D85DE8];

  return [cf BOOLValue];
}

void _preferencesChanged(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a2 & 2) != 0 && sharedInstance_8)
  {
    if ([a3 isEqualToString:@"AirplaneMode"])
    {
      Value = SCPreferencesGetValue(sAirplane, @"AirplaneMode");
      [sharedInstance_8 _setAirplaneModeSwitchEnabled:{_readBOOLFromCFType("AirplaneMode", Value)}];
      SCPreferencesSynchronize(sAirplane);
    }

    if ([a3 isEqualToString:@"WiFi"])
    {
      v5 = systemSettingsLogHandle;
      if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi Prefs changed", &v11, 2u);
      }

      v6 = SCPreferencesGetValue(sWifi, @"AllowEnable");
      BOOLFromCFType = _readBOOLFromCFType("AllowEnable", v6);
      v8 = systemSettingsLogHandle;
      if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "OFF";
        if (BOOLFromCFType)
        {
          v9 = "ON";
        }

        v11 = 136315138;
        v12 = v9;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Wi-Fi is %s", &v11, 0xCu);
      }

      [sharedInstance_8 _setWifiEnabled:BOOLFromCFType];
      SCPreferencesSynchronize(sWifi);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void _autoBugCaptureConfigurationNotification(uint64_t a1, void *a2, const __CFString *a3)
{
  v4 = a2;
  if (CFStringCompare(a3, @"com.apple.autobugcapture.configurationchanged", 0))
  {
    v5 = systemSettingsLogHandle;
    if (os_log_type_enabled(systemSettingsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unexpected Auto Bug Capture configuration notification name!", v6, 2u);
    }
  }

  else
  {
    [v4 getAutoBugCaptureConfiguration];
  }
}

void sub_2327873EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

const void *WriteNeededConstraints(uint64_t a1, FILE *a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v7 = **(*(a1 + 48) + 344);
  do
  {
    v8 = *(v7 + 8 * v4);
    if (v8)
    {
      do
      {
        v9 = (v5 + 1);
        *(v8 + 4) = v5;
        ++v6;
        v8 = *(v8 + 64);
        LODWORD(v5) = v5 + 1;
      }

      while (v8);
    }

    else
    {
      v9 = v5;
    }

    ++v4;
    v5 = v9;
  }

  while (v4 != 167);
  v17 = v6;
  if (!EnvGetDynamicConstraintChecking(a1) && v6)
  {
    v17 = 0;
    PrintWarningID(a1, "CSTRNBIN", 1, 0);
    EnvPrintRouter(a1, "wwarning", "Constraints are not saved with a binary image\n");
    EnvPrintRouter(a1, "wwarning", "  when dynamic constraint checking is disabled.\n");
  }

  result = GenWrite(&v17, 8uLL, a2);
  if (v17)
  {
    for (i = 0; i != 167; ++i)
    {
      for (j = *(**(*(a1 + 48) + 344) + 8 * i); j; j = *(j + 64))
      {
        LODWORD(v13) = v13 & 0xFFFFFFFE | *j & 1;
        LODWORD(v13) = v13 & 0xFFFFFFFD | (2 * ((*j >> 1) & 1));
        LODWORD(v13) = v13 & 0xFFFFFFFB | (4 * ((*j >> 2) & 1));
        LODWORD(v13) = v13 & 0xFFFFFFF7 | (8 * ((*j >> 3) & 1));
        LODWORD(v13) = v13 & 0xFFFFFFEF | (16 * ((*j >> 4) & 1));
        LODWORD(v13) = v13 & 0xFFFFFFDF | (32 * ((*j >> 5) & 1));
        LODWORD(v13) = v13 & 0xFFFFFFBF | (((*j >> 6) & 1) << 6);
        LODWORD(v13) = v13 & 0xFFFFFF7F | (((*j >> 7) & 1) << 7);
        LODWORD(v13) = v13 & 0xFFFDFFFF | (((*j >> 17) & 1) << 17);
        LODWORD(v13) = v13 & 0xFFFBFFFF | (((*j >> 18) & 1) << 18);
        LODWORD(v13) = v13 & 0xFFFFFEFF | (((*j >> 8) & 1) << 8);
        LODWORD(v13) = v13 & 0xFFFFFDFF | (((*j >> 10) & 1) << 9);
        LODWORD(v13) = v13 & 0xFFFFFBFF | (((*j >> 11) & 1) << 10);
        LODWORD(v13) = v13 & 0xFFFFF7FF | (((*j >> 12) & 1) << 11);
        LODWORD(v13) = v13 & 0xFFFFDFFF | (((*j >> 13) & 1) << 13);
        LODWORD(v13) = v13 & 0xFFFFBFFF | (((*j >> 14) & 1) << 14);
        LODWORD(v13) = v13 & 0xFFFF7FFF | (((*j >> 15) & 1) << 15);
        LODWORD(v13) = v13 & 0xFFFEFFFF | ((HIWORD(*j) & 1) << 16);
        *&v14 = HashedExpressionIndex(a1, *(j + 16));
        *(&v13 + 1) = HashedExpressionIndex(a1, *(j + 8));
        *(&v14 + 1) = HashedExpressionIndex(a1, *(j + 24));
        *&v15 = HashedExpressionIndex(a1, *(j + 32));
        *(&v15 + 1) = HashedExpressionIndex(a1, *(j + 40));
        v16 = HashedExpressionIndex(a1, *(j + 48));
        result = GenWrite(&v13, 0x38uLL, a2);
      }
    }
  }

  return result;
}

size_t ReadNeededConstraints(uint64_t a1)
{
  result = GenReadBinary(a1, (*(*(a1 + 48) + 344) + 24), 8uLL);
  v3 = *(*(*(a1 + 48) + 344) + 24);
  if (v3)
  {
    v4 = genalloc(a1, 80 * v3);
    v5 = *(a1 + 48);
    *(*(v5 + 344) + 16) = v4;
    v6 = *(*(v5 + 344) + 24);

    return BloadandRefresh(a1, v6, 56, CopyFromBsaveConstraintRecord);
  }

  return result;
}

uint64_t CopyFromBsaveConstraintRecord(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(result + 48) + 344) + 16) + 80 * a3;
  v4 = *v3 & 0xFFFFFFFE | *a2 & 1;
  *v3 = v4;
  v5 = v4 & 0xFFFFFFFD | (2 * ((*a2 >> 1) & 1));
  *v3 = v5;
  v6 = v5 & 0xFFFFFFFB | (4 * ((*a2 >> 2) & 1));
  *v3 = v6;
  v7 = v6 & 0xFFFFFFF7 | (8 * ((*a2 >> 3) & 1));
  *v3 = v7;
  v8 = v7 & 0xFFFFFFEF | (16 * ((*a2 >> 4) & 1));
  *v3 = v8;
  v9 = v8 & 0xFFFFFFDF | (32 * ((*a2 >> 5) & 1));
  *v3 = v9;
  v10 = v9 & 0xFFFFFFBF | (((*a2 >> 6) & 1) << 6);
  *v3 = v10;
  v11 = v10 & 0xFFFFFD7F | *a2 & 0x80;
  *v3 = v11;
  v12 = v11 & 0xFFFDFDFF | *a2 & 0x20000;
  *v3 = v12;
  v13 = v12 & 0xFFFBFFFF | *a2 & 0x40000;
  *v3 = v13;
  v14 = v13 & 0xFFFFFCFF | *a2 & 0x100;
  *v3 = v14;
  v15 = v14 & 0xFFFFF9FF | (((*a2 >> 9) & 1) << 10);
  *v3 = v15;
  v16 = v15 & 0xFFFFF7FF | (2 * *a2) & 0x800;
  *v3 = v16;
  v17 = v16 & 0xFFFFEFFF | (2 * *a2) & 0x1000;
  *v3 = v17;
  v18 = v17 & 0xFFFFDFFF | *a2 & 0x2000;
  *v3 = v18;
  v19 = v18 & 0xFFFFBFFF | *a2 & 0x4000;
  *v3 = v19;
  v20 = v19 & 0xFFFF7FFF | *a2 & 0x8000;
  *v3 = v20;
  *v3 = v20 & 0xFFFEFDFF | *a2 & 0x10000;
  v21 = *(a2 + 16);
  if (v21 == -1)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(*(*(result + 48) + 360) + 56) + 32 * v21;
  }

  *(v3 + 16) = v22;
  v23 = *(a2 + 8);
  if (v23 == -1)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(*(*(result + 48) + 360) + 56) + 32 * v23;
  }

  *(v3 + 8) = v24;
  v25 = *(a2 + 24);
  if (v25 == -1)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(*(*(result + 48) + 360) + 56) + 32 * v25;
  }

  *(v3 + 24) = v26;
  v27 = *(a2 + 32);
  if (v27 == -1)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(*(*(result + 48) + 360) + 56) + 32 * v27;
  }

  *(v3 + 32) = v28;
  v29 = *(a2 + 40);
  if (v29 == -1)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(*(*(result + 48) + 360) + 56) + 32 * v29;
  }

  *(v3 + 40) = v30;
  v31 = *(a2 + 48);
  if (v31 == -1)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(*(*(result + 48) + 360) + 56) + 32 * v31;
  }

  *(v3 + 48) = v32;
  *(v3 + 56) = 0;
  return result;
}

uint64_t ClearBloadedConstraints(uint64_t result)
{
  v1 = *(*(result + 48) + 344);
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = result;
    result = genfree(result, *(v1 + 16), 80 * v2);
    *(*(*(v3 + 48) + 344) + 24) = 0;
  }

  return result;
}

void sub_23278A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _pollingQueue()
{
  v0 = gPolledFlowQueue;
  if (!gPolledFlowQueue)
  {
    v1 = SFGetAnalyticsQueue(1);
    v2 = gPolledFlowQueue;
    gPolledFlowQueue = v1;

    v0 = gPolledFlowQueue;
  }

  return v0;
}

const void *WriteNeededAtomicValues(uint64_t a1, FILE *a2)
{
  WriteNeededSymbols(a1, a2);
  WriteNeededFloats(a1, a2);
  WriteNeededIntegers(a1, a2);
  BitMapTable = GetBitMapTable(a1);
  v5 = BitMapTable;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    for (i = *(BitMapTable + 8 * v6); i; i = *i)
    {
      if ((i[2] & 4) != 0)
      {
        ++v7;
        v8 += *(i + 16) + 2;
      }
    }

    ++v6;
  }

  while (v6 != 100);
  v14 = v8;
  v15 = v7;
  GenWrite(&v15, 8uLL, a2);
  result = GenWrite(&v14, 8uLL, a2);
  for (j = 0; j != 100; ++j)
  {
    for (k = *(v5 + 8 * j); k; k = *k)
    {
      if ((k[2] & 4) != 0)
      {
        v13 = *(k + 16);
        GenWrite(&v13, 2uLL, a2);
        result = GenWrite(k[3], *(k + 16), a2);
      }
    }
  }

  return result;
}

const void *WriteNeededSymbols(uint64_t a1, FILE *a2)
{
  SymbolTable = GetSymbolTable(a1);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = *(SymbolTable + 8 * v4); i; i = *i)
    {
      if ((i[2] & 4) != 0)
      {
        ++v5;
        v6 += strlen(i[3]) + 1;
      }
    }

    ++v4;
  }

  while (v4 != 100);
  v12 = v6;
  v13 = v5;
  GenWrite(&v13, 8uLL, a2);
  result = GenWrite(&v12, 8uLL, a2);
  for (j = 0; j != 100; ++j)
  {
    for (k = *(SymbolTable + 8 * j); k; k = *k)
    {
      if ((k[2] & 4) != 0)
      {
        v11 = strlen(k[3]);
        result = GenWrite(k[3], v11 + 1, a2);
      }
    }
  }

  return result;
}

const void *WriteNeededFloats(uint64_t a1, FILE *a2)
{
  FloatTable = GetFloatTable(a1);
  v4 = FloatTable;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = *(FloatTable + 8 * v5); i; i = *i)
    {
      v6 += (*(i + 4) >> 2) & 1;
    }

    ++v5;
  }

  while (v5 != 10);
  v11 = v6;
  result = GenWrite(&v11, 8uLL, a2);
  for (j = 0; j != 10; ++j)
  {
    for (k = *(v4 + 8 * j); k; k = *k)
    {
      if ((k[2] & 4) != 0)
      {
        result = GenWrite(k + 3, 8uLL, a2);
      }
    }
  }

  return result;
}

const void *WriteNeededIntegers(uint64_t a1, FILE *a2)
{
  IntegerTable = GetIntegerTable(a1);
  v4 = IntegerTable;
  v5 = 0;
  v6 = 0;
  do
  {
    for (i = *(IntegerTable + 8 * v5); i; i = *i)
    {
      v6 += (*(i + 4) >> 2) & 1;
    }

    ++v5;
  }

  while (v5 != 100);
  v11 = v6;
  result = GenWrite(&v11, 8uLL, a2);
  for (j = 0; j != 100; ++j)
  {
    for (k = *(v4 + 8 * j); k; k = *k)
    {
      if ((k[2] & 4) != 0)
      {
        result = GenWrite(k + 3, 8uLL, a2);
      }
    }
  }

  return result;
}

uint64_t InitAtomicValueNeededFlags(uint64_t a1)
{
  SymbolTable = GetSymbolTable(a1);
  for (i = 0; i != 100; ++i)
  {
    for (j = *(SymbolTable + 8 * i); j; j = *j)
    {
      *(j + 4) &= ~4u;
    }
  }

  FloatTable = GetFloatTable(a1);
  for (k = 0; k != 10; ++k)
  {
    for (m = *(FloatTable + 8 * k); m; m = *m)
    {
      *(m + 4) &= ~4u;
    }
  }

  IntegerTable = GetIntegerTable(a1);
  for (n = 0; n != 100; ++n)
  {
    for (ii = *(IntegerTable + 8 * n); ii; ii = *ii)
    {
      *(ii + 4) &= ~4u;
    }
  }

  result = GetBitMapTable(a1);
  for (jj = 0; jj != 100; ++jj)
  {
    for (kk = *(result + 8 * jj); kk; kk = *kk)
    {
      *(kk + 4) &= ~4u;
    }
  }

  return result;
}

size_t ReadNeededAtomicValues(uint64_t a1)
{
  ReadNeededSymbols(a1);
  ReadNeededFloats(a1);
  ReadNeededIntegers(a1);
  __ptr = 0;
  GenReadBinary(a1, (*(*(a1 + 48) + 392) + 104), 8uLL);
  result = GenReadBinary(a1, &__ptr, 8uLL);
  v3 = *(*(a1 + 48) + 392);
  if (*(v3 + 104))
  {
    v4 = gm3(a1, __ptr);
    GenReadBinary(a1, v4, __ptr);
    v5 = gm3(a1, 8 * *(*(*(a1 + 48) + 392) + 104));
    v6 = *(a1 + 48);
    *(*(v6 + 392) + 144) = v5;
    if (*(*(v6 + 392) + 104) >= 1)
    {
      v7 = 0;
      v8 = v4;
      do
      {
        *(*(*(*(a1 + 48) + 392) + 144) + 8 * v7) = EnvAddBitMap(a1, v8 + 2, *v8);
        v8 += *v8 + 2;
        ++v7;
      }

      while (v7 < *(*(*(a1 + 48) + 392) + 104));
    }

    return rm(a1, v4, __ptr);
  }

  else
  {
    *(v3 + 144) = 0;
  }

  return result;
}

size_t ReadNeededSymbols(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, (*(*(a1 + 48) + 392) + 80), 8uLL);
  result = GenReadBinary(a1, &__ptr, 8uLL);
  v3 = *(*(a1 + 48) + 392);
  if (*(v3 + 80))
  {
    v4 = gm3(a1, __ptr);
    GenReadBinary(a1, v4, __ptr);
    v5 = gm3(a1, 8 * *(*(*(a1 + 48) + 392) + 80));
    v6 = *(a1 + 48);
    *(*(v6 + 392) + 120) = v5;
    if (*(*(v6 + 392) + 80) >= 1)
    {
      v7 = 0;
      v8 = v4;
      do
      {
        *(*(*(*(a1 + 48) + 392) + 120) + 8 * v7) = EnvAddSymbol(a1, v8);
        v8 += strlen(v8) + 1;
        ++v7;
      }

      while (v7 < *(*(*(a1 + 48) + 392) + 80));
    }

    return rm(a1, v4, __ptr);
  }

  else
  {
    *(v3 + 120) = 0;
  }

  return result;
}

size_t ReadNeededFloats(uint64_t a1)
{
  result = GenReadBinary(a1, (*(*(a1 + 48) + 392) + 88), 8uLL);
  v3 = *(*(a1 + 48) + 392);
  v4 = *(v3 + 88);
  if (v4)
  {
    v5 = gm3(a1, 8 * v4);
    GenReadBinary(a1, v5, 8 * *(*(*(a1 + 48) + 392) + 88));
    v6 = gm3(a1, 8 * *(*(*(a1 + 48) + 392) + 88));
    v7 = *(a1 + 48);
    *(*(v7 + 392) + 128) = v6;
    v8 = *(*(v7 + 392) + 88);
    if (v8 >= 1)
    {
      for (i = 0; i < v8; ++i)
      {
        *(*(*(*(a1 + 48) + 392) + 128) + 8 * i) = EnvAddDouble(a1, *&v5[i]);
        v8 = *(*(*(a1 + 48) + 392) + 88);
      }
    }

    return rm(a1, v5, 8 * v8);
  }

  else
  {
    *(v3 + 128) = 0;
  }

  return result;
}

size_t ReadNeededIntegers(uint64_t a1)
{
  result = GenReadBinary(a1, (*(*(a1 + 48) + 392) + 96), 8uLL);
  v3 = *(*(a1 + 48) + 392);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = gm3(a1, 8 * v4);
    GenReadBinary(a1, v5, 8 * *(*(*(a1 + 48) + 392) + 96));
    v6 = gm3(a1, 8 * *(*(*(a1 + 48) + 392) + 96));
    v7 = *(a1 + 48);
    *(*(v7 + 392) + 136) = v6;
    v8 = *(*(v7 + 392) + 96);
    if (v8 >= 1)
    {
      for (i = 0; i < v8; ++i)
      {
        *(*(*(*(a1 + 48) + 392) + 136) + 8 * i) = EnvAddLong(a1, v5[i]);
        v8 = *(*(*(a1 + 48) + 392) + 96);
      }
    }

    return rm(a1, v5, 8 * v8);
  }

  else
  {
    *(v3 + 136) = 0;
  }

  return result;
}

double FreeAtomicValueStorage(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 392);
  v4 = v3[15];
  if (v4)
  {
    rm(a1, v4, 8 * v3[10]);
    v2 = *(a1 + 48);
    v3 = *(v2 + 392);
  }

  v5 = v3[16];
  if (v5)
  {
    rm(a1, v5, 8 * v3[11]);
    v2 = *(a1 + 48);
    v3 = *(v2 + 392);
  }

  v6 = v3[17];
  if (v6)
  {
    rm(a1, v6, 8 * v3[12]);
    v2 = *(a1 + 48);
    v3 = *(v2 + 392);
  }

  v7 = v3[18];
  if (v7)
  {
    rm(a1, v7, 8 * v3[13]);
    v2 = *(a1 + 48);
    v3 = *(v2 + 392);
  }

  v3[15] = 0;
  *(*(v2 + 392) + 128) = 0;
  *(*(v2 + 392) + 136) = 0;
  *(*(v2 + 392) + 144) = 0;
  v8 = *(v2 + 392);
  result = 0.0;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  return result;
}

uint64_t InitializeConstraints(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x2Bu, 0x20uLL, DeallocateConstraintData);
  *(*(*(a1 + 48) + 344) + 8) = 1;
  v2 = gm2(a1, 0x538uLL);
  v3 = *(a1 + 48);
  **(v3 + 344) = v2;
  if (!**(v3 + 344))
  {
    EnvExitRouter(a1, 1);
  }

  for (i = 0; i != 1336; i += 8)
  {
    *(**(*(a1 + 48) + 344) + i) = 0;
  }

  EnvDefineFunction2(a1, "get-dynamic-constraint-checking", 98, GDCCommand, "GDCCommand", "00");
  EnvDefineFunction2(a1, "set-dynamic-constraint-checking", 98, SDCCommand, "SDCCommand", "11");
  EnvDefineFunction2(a1, "get-static-constraint-checking", 98, GSCCommand, "GSCCommand", "00");

  return EnvDefineFunction2(a1, "set-static-constraint-checking", 98, SSCCommand, "SSCCommand", "11");
}

uint64_t DeallocateConstraintData(uint64_t a1)
{
  for (i = 0; i != 167; ++i)
  {
    v3 = *(**(*(a1 + 48) + 344) + 8 * i);
    if (v3)
    {
      do
      {
        v4 = *(v3 + 64);
        ReturnConstraintRecord(a1, v3);
        v3 = v4;
      }

      while (v4);
    }
  }

  result = rm(a1, **(*(a1 + 48) + 344), 0x538uLL);
  v6 = *(*(a1 + 48) + 344);
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = *(v6 + 16);

    return genfree(a1, v8, 80 * v7);
  }

  return result;
}

uint64_t GDCCommand(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 344) + 12);
  EnvArgCountCheck(a1, "get-dynamic-constraint-checking", 0, 0);
  return v1;
}

uint64_t SDCCommand(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v2 = *(*(*(a1 + 48) + 344) + 12);
  if (EnvArgCountCheck(a1, "set-dynamic-constraint-checking", 0, 1) != -1)
  {
    EnvRtnUnknown(a1, 1, &v7);
    v3 = v8;
    v5 = v3 != EnvFalseSymbol(a1) || WORD4(v7) != 2;
    *(*(*(a1 + 48) + 344) + 12) = v5;
  }

  return v2;
}

uint64_t GSCCommand(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 344) + 8);
  EnvArgCountCheck(a1, "get-static-constraint-checking", 0, 0);
  return v1;
}

uint64_t SSCCommand(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v2 = *(*(*(a1 + 48) + 344) + 8);
  if (EnvArgCountCheck(a1, "set-static-constraint-checking", 0, 1) != -1)
  {
    EnvRtnUnknown(a1, 1, &v7);
    v3 = v8;
    v5 = v3 != EnvFalseSymbol(a1) || WORD4(v7) != 2;
    *(*(*(a1 + 48) + 344) + 8) = v5;
  }

  return v2;
}

uint64_t RemoveConstraint(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  v4 = *(a2 + 72);
  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  v5 = (**(*(result + 48) + 344) + 8 * v4);
  v6 = *v5;
  if (!*v5)
  {
    return result;
  }

  if (v6 != a2)
  {
    while (1)
    {
      v7 = v6;
      v6 = *(v6 + 64);
      if (!v6)
      {
        return result;
      }

      if (v6 == a2)
      {
        goto LABEL_9;
      }
    }
  }

  v7 = 0;
LABEL_9:
  v8 = *(a2 + 76) - 1;
  *(a2 + 76) = v8;
  if (!v8)
  {
    if (v7)
    {
      v5 = (v7 + 64);
    }

    *v5 = *(a2 + 64);
    v9 = a2;
    do
    {
      v10 = *(v9 + 8);
      if ((*(v9 + 72) & 0x80000000) != 0)
      {
        ExpressionDeinstall(v3, v10);
        ExpressionDeinstall(v3, *(v9 + 16));
        ExpressionDeinstall(v3, *(v9 + 32));
        ExpressionDeinstall(v3, *(v9 + 24));
        ExpressionDeinstall(v3, *(v9 + 40));
        ExpressionDeinstall(v3, *(v9 + 48));
      }

      else
      {
        RemoveHashedExpression(v3, v10);
        RemoveHashedExpression(v3, *(v9 + 16));
        RemoveHashedExpression(v3, *(v9 + 32));
        RemoveHashedExpression(v3, *(v9 + 24));
        RemoveHashedExpression(v3, *(v9 + 40));
        RemoveHashedExpression(v3, *(v9 + 48));
      }

      v9 = *(v9 + 56);
    }

    while (v9);
LABEL_18:

    return ReturnConstraintRecord(v3, a2);
  }

  return result;
}

uint64_t ReturnConstraintRecord(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if ((*(a2 + 72) & 0x80000000) != 0)
    {
      ReturnExpression(result, *(a2 + 8));
      ReturnExpression(v3, *(a2 + 16));
      ReturnExpression(v3, *(a2 + 32));
      ReturnExpression(v3, *(a2 + 24));
      ReturnExpression(v3, *(a2 + 40));
      ReturnExpression(v3, *(a2 + 48));
    }

    result = ReturnConstraintRecord(v3, *(a2 + 56));
    v4 = *(v3 + 48);
    *(*(v4 + 472) + 32) = a2;
    **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 640);
    *(*(*(v4 + 472) + 40) + 640) = *(*(v4 + 472) + 32);
  }

  return result;
}

unint64_t HashConstraint(uint64_t a1)
{
  v2 = *a1;
  v3 = 17;
  if ((*a1 & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 37;
  if ((v2 & 0x2000) == 0)
  {
    v4 = 0;
  }

  v5 = vdupq_n_s32(v2);
  v6 = vandq_s8(v5, xmmword_2328170D0);
  v7 = vandq_s8(v5, xmmword_2328170E0);
  v8 = vandq_s8(v5, xmmword_2328170F0);
  v9 = vceqzq_s32(vandq_s8(v5, xmmword_232817100));
  v10.i64[0] = v9.u32[2];
  v10.i64[1] = v9.u32[3];
  v11 = v10;
  v12 = vceqzq_s32(v8);
  v10.i64[0] = v12.u32[2];
  v10.i64[1] = v12.u32[3];
  v13 = v10;
  v14 = vceqzq_s32(v7);
  v10.i64[0] = v14.u32[2];
  v10.i64[1] = v14.u32[3];
  v15 = v10;
  v16 = vceqzq_s32(v6);
  v10.i64[0] = v16.u32[2];
  v10.i64[1] = v16.u32[3];
  v17 = v10;
  v10.i64[0] = v9.u32[0];
  v10.i64[1] = v9.u32[1];
  v18 = v10;
  v10.i64[0] = v12.u32[0];
  v10.i64[1] = v12.u32[1];
  v19 = v10;
  v10.i64[0] = v14.u32[0];
  v10.i64[1] = v14.u32[1];
  v20 = v10;
  v10.i64[0] = v16.u32[0];
  v10.i64[1] = v16.u32[1];
  v21 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vbicq_s8(xmmword_232817120, v20), vbicq_s8(xmmword_232817110, v10)), vaddq_s64(vbicq_s8(vdupq_n_s64(0x1DuLL), v18), vbicq_s8(xmmword_232817130, v19))), vaddq_s64(vaddq_s64(vbicq_s8(xmmword_232817150, v15), vbicq_s8(xmmword_232817140, v17)), vaddq_s64(vbicq_s8(xmmword_232817170, v11), vbicq_s8(xmmword_232817160, v13))))) + v4 + v3;
  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = 0;
    do
    {
      v24 = v23 + 1;
      v21 += GetAtomicHashValue(*v22, *(v22 + 1), v23);
      v22 = *(v22 + 3);
      v23 = v24;
    }

    while (v22);
  }

  else
  {
    v24 = 0;
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    do
    {
      v26 = v24 + 1;
      v21 += GetAtomicHashValue(*v25, *(v25 + 1), v24);
      v25 = *(v25 + 3);
      ++v24;
    }

    while (v25);
  }

  else
  {
    v26 = v24;
  }

  v27 = *(a1 + 24);
  if (v27)
  {
    do
    {
      v28 = v26 + 1;
      v21 += GetAtomicHashValue(*v27, *(v27 + 1), v26);
      v27 = *(v27 + 3);
      ++v26;
    }

    while (v27);
  }

  else
  {
    v28 = v26;
  }

  v29 = *(a1 + 32);
  if (v29)
  {
    do
    {
      v30 = v28 + 1;
      v21 += GetAtomicHashValue(*v29, *(v29 + 1), v28);
      v29 = *(v29 + 3);
      ++v28;
    }

    while (v29);
  }

  else
  {
    v30 = v28;
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    do
    {
      v32 = v30 + 1;
      v21 += GetAtomicHashValue(*v31, *(v31 + 1), v30);
      v31 = *(v31 + 3);
      ++v30;
    }

    while (v31);
  }

  else
  {
    v32 = v30;
  }

  for (i = *(a1 + 48); i; ++v32)
  {
    v21 += GetAtomicHashValue(*i, *(i + 1), v32);
    i = *(i + 3);
  }

  if (*(a1 + 56))
  {
    v21 += HashConstraint();
  }

  return v21 % 0xA7;
}

uint64_t AddConstraint(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = HashConstraint(a2);
  v5 = *(**(*(a1 + 48) + 344) + 8 * v4);
  if (v5)
  {
    while (2)
    {
      v6 = a2;
      v7 = v5;
      while (((*v7 ^ *v6) & 0x7FFFF) == 0)
      {
        v8 = *(v7 + 1);
        for (i = *(v6 + 1); i && v8 != 0; i = *(i + 3))
        {
          if (*i != *v8 || *(i + 1) != *(v8 + 1))
          {
            goto LABEL_67;
          }

          v8 = *(v8 + 3);
        }

        if (i != v8)
        {
          break;
        }

        v11 = *(v7 + 2);
        v12 = *(v6 + 2);
        if (v12 && v11)
        {
          while (*v12 == *v11 && *(v12 + 1) == *(v11 + 1))
          {
            v11 = *(v11 + 3);
            v12 = *(v12 + 3);
            if (v12)
            {
              v13 = v11 == 0;
            }

            else
            {
              v13 = 1;
            }

            if (v13)
            {
              goto LABEL_23;
            }
          }

          break;
        }

LABEL_23:
        if (v12 != v11)
        {
          break;
        }

        v14 = v6;
        v15 = v7;
        while (1)
        {
          v15 = *(v15 + 3);
          v14 = *(v14 + 3);
          if (!v14 || v15 == 0)
          {
            break;
          }

          if (*v14 != *v15 || *(v14 + 1) != *(v15 + 1))
          {
            goto LABEL_67;
          }
        }

        if (v14 != v15)
        {
          break;
        }

        v17 = *(v7 + 4);
        for (j = *(v6 + 4); j && v17 != 0; j = *(j + 3))
        {
          if (*j != *v17 || *(j + 1) != *(v17 + 1))
          {
            goto LABEL_67;
          }

          v17 = *(v17 + 3);
        }

        if (j != v17)
        {
          break;
        }

        v20 = *(v7 + 5);
        v21 = *(v6 + 5);
        if (v21 && v20)
        {
          while (*v21 == *v20 && *(v21 + 1) == *(v20 + 1))
          {
            v20 = *(v20 + 3);
            v21 = *(v21 + 3);
            if (v21)
            {
              v22 = v20 == 0;
            }

            else
            {
              v22 = 1;
            }

            if (v22)
            {
              goto LABEL_51;
            }
          }

          break;
        }

LABEL_51:
        if (v21 != v20)
        {
          break;
        }

        v23 = *(v7 + 6);
        v24 = *(v6 + 6);
        if (v24 && v23)
        {
          while (*v24 == *v23 && *(v24 + 1) == *(v23 + 1))
          {
            v23 = *(v23 + 3);
            v24 = *(v24 + 3);
            if (v24)
            {
              v25 = v23 == 0;
            }

            else
            {
              v25 = 1;
            }

            if (v25)
            {
              goto LABEL_61;
            }
          }

          break;
        }

LABEL_61:
        if (v24 != v23)
        {
          break;
        }

        v6 = *(v6 + 7);
        v7 = *(v7 + 7);
        if (!v6)
        {
          if (!v7)
          {
LABEL_73:
            ++*(v5 + 19);
            ReturnConstraintRecord(a1, a2);
            return v5;
          }

          break;
        }

        if (!v7)
        {
          break;
        }

        if (v6 == v7)
        {
          goto LABEL_73;
        }
      }

LABEL_67:
      v5 = *(v5 + 8);
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v26 = a2;
  do
  {
    v27 = AddHashedExpression(a1, *(v26 + 8));
    ReturnExpression(a1, *(v26 + 8));
    *(v26 + 8) = v27;
    v28 = AddHashedExpression(a1, *(v26 + 16));
    ReturnExpression(a1, *(v26 + 16));
    *(v26 + 16) = v28;
    v29 = AddHashedExpression(a1, *(v26 + 32));
    ReturnExpression(a1, *(v26 + 32));
    *(v26 + 32) = v29;
    v30 = AddHashedExpression(a1, *(v26 + 24));
    ReturnExpression(a1, *(v26 + 24));
    *(v26 + 24) = v30;
    v31 = AddHashedExpression(a1, *(v26 + 40));
    ReturnExpression(a1, *(v26 + 40));
    *(v26 + 40) = v31;
    v32 = AddHashedExpression(a1, *(v26 + 48));
    ReturnExpression(a1, *(v26 + 48));
    *(v26 + 48) = v32;
    v26 = *(v26 + 56);
  }

  while (v26);
  *(a2 + 72) = v4;
  *(a2 + 76) = 1;
  v33 = *(a1 + 48);
  *(a2 + 64) = *(**(v33 + 344) + 8 * v4);
  *(**(v33 + 344) + 8 * v4) = a2;
  return a2;
}

uint64_t EnvSetDynamicConstraintChecking(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 344);
  result = *(v2 + 12);
  *(v2 + 12) = a2;
  return result;
}

uint64_t EnvSetStaticConstraintChecking(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 48) + 344);
  result = *(v2 + 8);
  *(v2 + 8) = a2;
  return result;
}

uint64_t InitializeFacts(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  HIBYTE(v12) = 0;
  AllocateEnvironmentData(a1, 3u, 0x1A8uLL, DeallocateFactData);
  v2 = *(*(a1 + 48) + 24);
  v3 = *&off_284794F80;
  *(v2 + 216) = xmmword_284794F70;
  *(v2 + 232) = v3;
  v4 = *&off_284794FA0;
  *(v2 + 248) = xmmword_284794F90;
  v6 = xmmword_284794FB0;
  v5 = unk_284794FC0;
  *(v2 + 264) = v4;
  *(v2 + 280) = v6;
  v7 = *&off_284794FF0;
  v8 = xmmword_284794FD0;
  *(v2 + 328) = xmmword_284794FE0;
  *(v2 + 344) = v7;
  *(v2 + 360) = off_284795000;
  *(v2 + 296) = v5;
  *(v2 + 312) = v8;
  v9 = *(*(a1 + 48) + 24);
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 73) = 0u;
  *(v9 + 89) = v12;
  *(v9 + 116) = 0u;
  *(v9 + 8) = v9 + 216;
  *(v9 + 48) = 0;
  *(v9 + 56) = -1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 1;
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 132) = 0u;
  *(v9 + 148) = 0;
  *(*(*(a1 + 48) + 24) + 416) = -1;
  InitializeFactHashTable(a1);
  EnvAddResetFunction(a1, "facts", ResetFacts, 60);
  AddClearReadyFunction(a1, "facts", ClearFactsReady, 0);
  AddCleanupFunction(a1, "facts", RemoveGarbageFacts, 0);
  InitializeFactPatterns(a1);
  AddWatchItem(a1, "facts", 0, *(*(a1 + 48) + 24) + 4, 80, DeftemplateWatchAccess, DeftemplateWatchPrint);
  FactCommandDefinitions(a1);
  FactFunctionDefinitions(a1);
  SetupFactQuery(a1);
  v10 = *MEMORY[0x277D85DE8];

  return FactBinarySetup(a1);
}

uint64_t PrintFactIdentifier(uint64_t a1, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x277D85DE8];
  gensprintf(v12, "f-%lld", a3, a4, a5, a6, a7, a8, *(a3 + 48));
  result = EnvPrintRouter(a1, a2, v12);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PrintFactIdentifierInLongForm(uint64_t a1, FILE *__s2, uint64_t a3)
{
  v6 = *(a1 + 48);
  if (*(*(v6 + 424) + 4))
  {
    EnvPrintRouter(a1, __s2, "");
    v6 = *(a1 + 48);
  }

  if (*(v6 + 24) + 8 == a3)
  {
    v12 = "<Dummy Fact>";
  }

  else
  {
    EnvPrintRouter(a1, __s2, "<Fact-");
    PrintLongInteger(a1, __s2, *(a3 + 48), v7, v8, v9, v10, v11);
    v12 = ">";
  }

  result = EnvPrintRouter(a1, __s2, v12);
  if (*(*(*(a1 + 48) + 424) + 4))
  {

    return EnvPrintRouter(a1, __s2, "");
  }

  return result;
}

uint64_t EnvRetract(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (*(*(v3 + 144) + 92))
  {
    PrintErrorID(a1, "FACTMNGR", 1, 1);
    EnvPrintRouter(a1, "werror", "Facts may not be retracted during pattern-matching\n");
    return 0;
  }

  if (*(a2 + 64))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  v6 = *(*(v3 + 24) + 200);
  v7 = v5;
  if (v6)
  {
    do
    {
      SetEnvironmentCallbackContext(a1, *(v6 + 40));
      v8 = *(v6 + 8);
      if (*(v6 + 32))
      {
        v8(a1, a2);
      }

      else
      {
        (v8)(a2);
      }

      v6 = *(v6 + 24);
    }

    while (v6);
    v7 = *(a2 + 32);
  }

  if ((*(v7 + 56) & 2) != 0)
  {
    EnvPrintRouter(a1, "wtrace", "<== ");
    PrintFactWithIdentifier(a1, "wtrace", a2, v9, v10, v11, v12, v13);
    EnvPrintRouter(a1, "wtrace", "\n");
  }

  **(*(a1 + 48) + 24) = 1;
  RemoveEntityDependencies(a1, a2);
  RemoveHashedFact(a1, a2);
  v14 = *(a2 + 88);
  if (*(v5 + 88) != a2)
  {
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_18:
    v15 = *(*(v5 + 80) + 96);
    *(v5 + 80) = v15;
    if (!v15)
    {
      goto LABEL_21;
    }

    v14 = 0;
    goto LABEL_20;
  }

  *(v5 + 88) = v14;
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_14:
  v15 = *(a2 + 96);
  *(v14 + 96) = v15;
  if (v15)
  {
LABEL_20:
    *(v15 + 88) = v14;
  }

LABEL_21:
  v17 = *(a1 + 48);
  v18 = *(v17 + 24);
  v19 = *(a2 + 72);
  if (*(v18 + 160) == a2)
  {
    *(v18 + 160) = v19;
    if (v19)
    {
LABEL_23:
      v20 = *(a2 + 80);
      *(v19 + 80) = v20;
      if (!v20)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if (v19)
  {
    goto LABEL_23;
  }

  *(*(v17 + 24) + 168) = *(*(*(v17 + 24) + 168) + 80);
  v20 = *(*(v17 + 24) + 168);
  if (v20)
  {
    v19 = 0;
LABEL_28:
    *(v20 + 72) = v19;
  }

LABEL_29:
  *(a2 + 80) = *(*(v17 + 24) + 152);
  *(*(v17 + 24) + 152) = a2;
  *(a2 + 64) |= 1u;
  **(*(*(a1 + 48) + 440) + 112) = 1;
  SetEvaluationError(a1, 0);
  *(*(*(a1 + 48) + 144) + 92) = 1;
  NetworkRetract(a1, *(a2 + 40));
  v21 = *(*(a1 + 48) + 144);
  *(v21 + 92) = 0;
  if (!*v21)
  {
    FlushGarbagePartialMatches(a1);
  }

  ForceLogicalRetractions(a1);
  v22 = *(a1 + 48);
  v23 = *(v22 + 440);
  if (*(*(v23 + 112) + 2) && !**(v22 + 320) && !**(v22 + 352) && !*(v23 + 16))
  {
    CleanCurrentGarbageFrame(a1, 0);
  }

  FactDeinstall(a1, a2);
  return 1;
}

uint64_t DecrementFactBasisCount(uint64_t result, uint64_t a2)
{
  --*(a2 + 16);
  if (*(a2 + 112) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = (a2 + 136);
    do
    {
      v6 = *(v5 - 4);
      v7 = *v5;
      v5 += 2;
      result = AtomDeinstall(v3, v6, v7);
      ++v4;
    }

    while (v4 < *(a2 + 112));
  }

  return result;
}

uint64_t IncrementFactBasisCount(uint64_t result, uint64_t a2)
{
  ++*(a2 + 16);
  if (*(a2 + 112) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = (a2 + 136);
    do
    {
      v6 = *(v5 - 4);
      v7 = *v5;
      v5 += 2;
      result = AtomInstall(v3, v6, v7);
      ++v4;
    }

    while (v4 < *(a2 + 112));
  }

  return result;
}

uint64_t DeallocateFactData(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 24);
  if (*(v3 + 384))
  {
    v4 = 0;
    do
    {
      v5 = *(*(v3 + 376) + 8 * v4);
      if (v5)
      {
        do
        {
          v6 = *(v5 + 8);
          v7 = *(a1 + 48);
          *(*(v7 + 472) + 32) = v5;
          **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 128);
          *(*(*(v7 + 472) + 40) + 128) = *(*(v7 + 472) + 32);
          v5 = v6;
        }

        while (v6);
        v2 = *(a1 + 48);
      }

      ++v4;
      v3 = *(v2 + 24);
      v8 = *(v3 + 384);
    }

    while (v4 < v8);
    v9 = 8 * v8;
  }

  else
  {
    v9 = 0;
  }

  rm(a1, *(v3 + 376), v9);
  v10 = *(*(a1 + 48) + 24);
  v11 = v10[21];
  if (v11)
  {
    do
    {
      v12 = v11[10];
      v13 = v11[5];
      if (v13)
      {
        do
        {
          v14 = *v13;
          v15 = *(a1 + 48);
          *(*(v15 + 472) + 32) = v13;
          **(*(v15 + 472) + 32) = *(*(*(v15 + 472) + 40) + 192);
          *(*(*(v15 + 472) + 40) + 192) = *(*(v15 + 472) + 32);
          v13 = v14;
        }

        while (v14);
      }

      ReturnEntityDependencies(a1, v11);
      ReturnFact(a1, v11);
      v11 = v12;
    }

    while (v12);
    v10 = *(*(a1 + 48) + 24);
  }

  v16 = v10[19];
  if (v16)
  {
    do
    {
      v17 = v16[10];
      ReturnFact(a1, v16);
      v16 = v17;
    }

    while (v17);
    v10 = *(*(a1 + 48) + 24);
  }

  DeallocateCallList(a1, v10[24]);
  DeallocateCallList(a1, *(*(*(a1 + 48) + 24) + 200));
  v18 = *(*(*(a1 + 48) + 24) + 208);

  return DeallocateCallList(a1, v18);
}

BOOL ClearFactsReady(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(*(v1 + 144) + 92))
  {
    return 0;
  }

  *(*(v1 + 24) + 176) = 0;
  RemoveAllFacts(a1);
  return *(*(*(a1 + 48) + 24) + 168) == 0;
}

uint64_t RemoveAllFacts(uint64_t result)
{
  v1 = *(*(*(result + 48) + 24) + 168);
  if (v1)
  {
    v2 = result;
    do
    {
      result = EnvRetract(v2, v1);
      v1 = *(*(*(v2 + 48) + 24) + 168);
    }

    while (v1);
  }

  return result;
}

uint64_t FactDeinstall(uint64_t result, uint64_t a2)
{
  --*(*(*(result + 48) + 24) + 184);
  --*(*(a2 + 32) + 64);
  if (*(a2 + 112) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = (a2 + 136);
    do
    {
      v6 = *(v5 - 4);
      v7 = *v5;
      v5 += 2;
      result = AtomDeinstall(v3, v6, v7);
      ++v4;
    }

    while (v4 < *(a2 + 112));
  }

  --*(a2 + 16);
  return result;
}

void *EnvAssert(char *a1, void *ptr)
{
  v2 = ptr;
  if (*(*(*(a1 + 6) + 144) + 92))
  {
    ReturnFact(a1, ptr);
    PrintErrorID(a1, "FACTMNGR", 2, 1);
    v4 = "werror";
    v5 = "Facts may not be asserted during pattern-matching\n";
LABEL_10:
    EnvPrintRouter(a1, v4, v5);
    return 0;
  }

  v6 = ptr[14];
  if (v6)
  {
    v7 = (ptr + 16);
    do
    {
      if (*v7 == 175)
      {
        *v7 = 2;
        *(v7 + 1) = EnvAddSymbol(a1, "nil");
      }

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  v31 = 0;
  v8 = HandleFactDuplication(a1, v2, &v31);
  if (v31)
  {
    v4 = "wtrace";
    v5 = "This duplicate fact will not be asserted\n";
    goto LABEL_10;
  }

  v10 = v8;
  if (!AddLogicalDependencies(a1, v2, 0))
  {
    ReturnFact(a1, v2);
    return 0;
  }

  AddHashedFact(a1, v2, v10);
  v2[10] = 0;
  v2[5] = 0;
  v11 = *(a1 + 6);
  v2[9] = *(*(v11 + 24) + 160);
  v12 = *(v11 + 24);
  v13 = *(v12 + 160);
  v14 = (v12 + 168);
  if (v13)
  {
    v14 = (v13 + 80);
  }

  *v14 = v2;
  *(*(v11 + 24) + 160) = v2;
  v15 = v2[4];
  v16 = *(v15 + 88);
  v2[11] = v16;
  v2[12] = 0;
  if (v16)
  {
    v17 = (v16 + 96);
  }

  else
  {
    v17 = (v15 + 80);
  }

  *v17 = v2;
  *(v15 + 88) = v2;
  v18 = *(v11 + 24);
  v19 = *(v18 + 176);
  *(v18 + 176) = v19 + 1;
  v2[6] = v19;
  v20 = *(v11 + 128);
  v21 = *(v20 + 16);
  *(v20 + 16) = v21 + 1;
  v2[3] = v21;
  FactInstall(a1, v2);
  for (i = *(*(*(a1 + 6) + 24) + 192); i; i = *(i + 24))
  {
    SetEnvironmentCallbackContext(a1, *(i + 40));
    v23 = *(i + 8);
    if (*(i + 32))
    {
      (v23)(a1, v2);
    }

    else
    {
      v23(v2);
    }
  }

  if ((*(v2[4] + 56) & 2) != 0)
  {
    EnvPrintRouter(a1, "wtrace", "==> ");
    PrintFactWithIdentifier(a1, "wtrace", v2, v24, v25, v26, v27, v28);
    EnvPrintRouter(a1, "wtrace", "\n");
  }

  **(*(a1 + 6) + 24) = 1;
  CheckTemplateFact(a1, v2);
  SetEvaluationError(a1, 0);
  *(*(*(a1 + 6) + 144) + 92) = 1;
  FactPatternMatch(a1, v2, *(v2[4] + 72), 0, 0, 0);
  *(*(*(a1 + 6) + 144) + 92) = 0;
  ForceLogicalRetractions(a1);
  v29 = *(a1 + 6);
  if (!**(v29 + 144))
  {
    FlushGarbagePartialMatches(a1);
    v29 = *(a1 + 6);
  }

  v30 = *(v29 + 440);
  if (*(*(v30 + 112) + 2) && !**(v29 + 320) && !**(v29 + 352) && !*(v30 + 16))
  {
    CleanCurrentGarbageFrame(a1, 0);
    CallPeriodicTasks(a1);
  }

  return v2;
}

uint64_t ReturnFact(uint64_t result, void *ptr)
{
  v3 = result;
  v4 = ptr[14];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = (ptr + 17);
    do
    {
      if (*(v6 - 4) == 4)
      {
        v7 = *v6;
        if (**v6)
        {
          result = AddToMultifieldList(v3, v7);
        }

        else
        {
          result = ReturnMultifield(v3, v7);
        }
      }

      ++v5;
      v4 = ptr[14];
      v6 += 2;
    }

    while (v5 < v4);
  }

  if (v4)
  {
    v8 = 16 * v4 + 128;
  }

  else
  {
    v8 = 144;
  }

  v9 = *(v3 + 48);
  v10 = *(v9 + 472);
  *(v10 + 48) = v8;
  if (v8 > 0x1F3)
  {

    return genfree(v3, ptr, v8);
  }

  else
  {
    *(v10 + 32) = ptr;
    **(*(v9 + 472) + 32) = *(*(*(v9 + 472) + 40) + 8 * *(*(v9 + 472) + 48));
    *(*(*(v9 + 472) + 40) + 8 * *(*(v9 + 472) + 48)) = *(*(v9 + 472) + 32);
  }

  return result;
}

uint64_t FactInstall(uint64_t result, uint64_t a2)
{
  ++*(*(*(result + 48) + 24) + 184);
  ++*(*(a2 + 32) + 64);
  if (*(a2 + 112) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = (a2 + 136);
    do
    {
      v6 = *(v5 - 4);
      v7 = *v5;
      v5 += 2;
      result = AtomInstall(v3, v6, v7);
      ++v4;
    }

    while (v4 < *(a2 + 112));
  }

  ++*(a2 + 16);
  return result;
}

uint64_t EnvCreateFact(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 56))
  {
    CreateFactBySize(a1, 1u);
    v5 = v17;
    *(v17 + 128) = 4;
    *(v17 + 136) = CreateMultifield2(a1, 0);
  }

  else
  {
    CreateFactBySize(a1, *(a2 + 58));
    v5 = v4;
    v6 = *(a2 + 58);
    if (*(a2 + 58))
    {
      v7 = (v6 + 7) & 0x1FFF8;
      v8 = vdupq_n_s64(v6 - 1);
      v9 = xmmword_232817180;
      v10 = xmmword_232817190;
      v11 = xmmword_232817070;
      v12 = xmmword_232816A80;
      v13 = (v4 + 240);
      v14 = vdupq_n_s64(8uLL);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v8, v12));
        if (vuzp1_s8(vuzp1_s16(v15, *v8.i8), *v8.i8).u8[0])
        {
          *(v13 - 56) = 175;
        }

        if (vuzp1_s8(vuzp1_s16(v15, *&v8), *&v8).i8[1])
        {
          *(v13 - 48) = 175;
        }

        if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v11))), *&v8).i8[2])
        {
          *(v13 - 40) = 175;
          *(v13 - 32) = 175;
        }

        v16 = vmovn_s64(vcgeq_u64(v8, v10));
        if (vuzp1_s8(*&v8, vuzp1_s16(v16, *&v8)).i32[1])
        {
          *(v13 - 24) = 175;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(v16, *&v8)).i8[5])
        {
          *(v13 - 16) = 175;
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9)))).i8[6])
        {
          *(v13 - 8) = 175;
          *v13 = 175;
        }

        v10 = vaddq_s64(v10, v14);
        v11 = vaddq_s64(v11, v14);
        v12 = vaddq_s64(v12, v14);
        v13 += 64;
        v9 = vaddq_s64(v9, v14);
        v7 -= 8;
      }

      while (v7);
    }
  }

  *(v5 + 32) = a2;
  return v5;
}

double CreateFactBySize(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v4 = 16 * (a2 - 1) + 144;
  }

  else
  {
    v4 = 144;
  }

  if (v4 <= 0x1F3 && (v5 = *(a1 + 48), v6 = *(v5 + 472), (v7 = *(*(v6 + 40) + 8 * v4)) != 0))
  {
    *(v6 + 32) = v7;
    *(*(*(v5 + 472) + 40) + 8 * v4) = **(*(v5 + 472) + 32);
    v8 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v8 = genalloc(a1, v4);
  }

  v8[64] &= ~1u;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  *v8 = *(*(a1 + 48) + 24) + 216;
  *(v8 + 1) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  result = 0.0;
  *(v8 + 88) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 14) = a2;
  *(v8 + 26) = 0;
  return result;
}

uint64_t EnvGetFactSlot(uint64_t a1, uint64_t a2, char *__s1, uint64_t a4)
{
  v6 = *(a2 + 32);
  if (*(v6 + 56))
  {
    if (__s1)
    {
      return 0;
    }

    else
    {
      *(a4 + 8) = *(a2 + 128);
      v13 = *(a2 + 136);
      *(a4 + 16) = v13;
      *(a4 + 24) = 0;
      *(a4 + 32) = *(v13 + 8) - 1;
      return 1;
    }
  }

  else
  {
    v14 = 0;
    v7 = EnvAddSymbol(a1, __s1);
    result = FindSlot(v6, v7, &v14);
    if (result)
    {
      v9 = a2 + 16 * v14;
      v10 = *(v9 + 112);
      *(a4 + 8) = v10;
      v11 = *(v9 + 120);
      *(a4 + 16) = v11;
      if (v10 == 4)
      {
        v12 = *(v11 + 8) - 1;
        *(a4 + 24) = 0;
        *(a4 + 32) = v12;
      }

      return v10 != 175;
    }
  }

  return result;
}

uint64_t EnvPutFactSlot(uint64_t a1, uint64_t a2, char *__s1, uint64_t a4)
{
  v7 = *(a2 + 32);
  if (*(v7 + 56))
  {
    if (__s1 || *(a4 + 8) != 4)
    {
      return 0;
    }

    if (*(a2 + 128) == 4)
    {
      ReturnMultifield(a1, *(a2 + 136));
      v11 = *(a4 + 8);
    }

    else
    {
      v11 = 4;
    }

    *(a2 + 128) = v11;
    *(a2 + 136) = DOToMultifield(a1, a4);
  }

  else
  {
    v16 = 0;
    v8 = EnvAddSymbol(a1, __s1);
    result = FindSlot(v7, v8, &v16);
    if (!result)
    {
      return result;
    }

    v10 = *(a4 + 8);
    if (*(result + 8))
    {
      if (v10 != 4)
      {
        return 0;
      }
    }

    else if (v10 == 4)
    {
      return 0;
    }

    v12 = a2 + 128;
    v13 = v16 - 1;
    v14 = v12 + 16 * v13;
    if (*v14 == 4)
    {
      ReturnMultifield(a1, *(v14 + 8));
      v10 = *(a4 + 8);
      v13 = v16 - 1;
    }

    *(v12 + 16 * v13) = v10;
    if (v10 == 4)
    {
      v15 = DOToMultifield(a1, a4);
      *(v12 + 16 * v16 - 8) = v15;
    }

    else
    {
      *(v12 + 16 * v13 + 8) = *(a4 + 16);
    }
  }

  return 1;
}

uint64_t EnvAssignFactSlotDefaults(char *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if ((*(v2 + 56) & 1) == 0 && *(v2 + 58))
  {
    v4 = 0;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v5 = (v2 + 48);
    v6 = a2 + 128;
    do
    {
      v7 = *v5;
      if (*v6 == 175 && DeftemplateSlotDefault(a1, v2, v7, &v9, 0))
      {
        *v6 = WORD4(v9);
        *(v6 + 8) = v10;
      }

      ++v4;
      v5 = (v7 + 40);
      v6 += 16;
    }

    while (v4 < *(v2 + 58));
  }

  return 1;
}

BOOL DeftemplateSlotDefault(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a2 + 56))
  {
    return 0;
  }

  v5 = *(a3 + 8);
  if ((v5 & 2) != 0)
  {
    return 0;
  }

  if ((*(a3 + 8) & 4) != 0)
  {
    v7 = *(a3 + 24);
    if (v5)
    {
      StoreInMultifield(a1, a4, v7, a5);
    }

    else
    {
      *(a4 + 8) = *v7;
      *(a4 + 16) = *(v7 + 8);
    }

    return 1;
  }

  if ((*(a3 + 8) & 8) == 0)
  {
    DeriveDefaultFromConstraints(a1, *(a3 + 16), a4, v5 & 1, a5);
    return 1;
  }

  result = EvaluateAndStoreInDataObject(a1, v5 & 1, *(a3 + 24), a4, a5);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t CopyFactSlotValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (*(a2 + 32) != v3)
  {
    return 0;
  }

  v5 = *(v3 + 58);
  if (*(v3 + 58))
  {
    v7 = 0;
    v8 = (a2 + 136);
    v9 = (a3 + 136);
    do
    {
      v10 = *(v9 - 4);
      *(v8 - 4) = v10;
      v11 = *v9;
      if (v10 == 4)
      {
        v11 = CopyMultifield(a1, v11);
        v5 = *(v3 + 58);
      }

      *v8 = v11;
      v8 += 2;
      ++v7;
      v9 += 2;
    }

    while (v7 < v5);
  }

  return 1;
}

uint64_t GetNextFactInScope(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 64))
    {
      return 0;
    }

    v2 = *(a2 + 80);
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(v4 + 24);
    v2 = *(v5 + 168);
    if (*(v5 + 416) != *(*(v4 + 32) + 72))
    {
      UpdateDeftemplateScope(a1);
      *(*(*(a1 + 48) + 24) + 416) = *(*(*(a1 + 48) + 32) + 72);
    }
  }

  for (; v2; v2 = *(v2 + 80))
  {
    if ((*(*(v2 + 32) + 56) & 4) != 0)
    {
      break;
    }
  }

  return v2;
}

uint64_t EnvGetFactPPForm(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OpenStringDestination(a1, "FactPPForm", a2, a3);
  PrintFactWithIdentifier(a1, "FactPPForm", a4, v6, v7, v8, v9, v10);

  return CloseStringDestination(a1, "FactPPForm");
}

void *EnvAssertString(uint64_t a1, char *a2)
{
  v3 = *(*(*(a1 + 48) + 336) + 20);
  result = StringToFact(a1, a2);
  if (result)
  {
    v5 = *(a1 + 48);
    if (!**(v5 + 320) && !**(v5 + 352))
    {
      *(*(v5 + 336) + 20) = v3;
    }

    return EnvAssert(a1, result);
  }

  return result;
}

uint64_t FindIndexedFact(uint64_t a1, uint64_t a2)
{
  result = *(*(*(a1 + 48) + 24) + 168);
  if (result)
  {
    while (*(result + 48) != a2)
    {
      if (*(result + 64))
      {
        return 0;
      }

      result = *(result + 80);
      if (!result)
      {
        return result;
      }
    }
  }

  return result;
}

BOOL EnvRemoveAssertFunction(uint64_t a1, char *a2)
{
  v3 = 0;
  *(*(*(a1 + 48) + 24) + 192) = RemoveFunctionFromCallList(a1, a2, *(*(*(a1 + 48) + 24) + 192), &v3);
  return v3 != 0;
}

BOOL EnvRemoveRetractFunction(uint64_t a1, char *a2)
{
  v3 = 0;
  *(*(*(a1 + 48) + 24) + 200) = RemoveFunctionFromCallList(a1, a2, *(*(*(a1 + 48) + 24) + 200), &v3);
  return v3 != 0;
}

BOOL EnvRemoveModifyFunction(uint64_t a1, char *a2)
{
  v3 = 0;
  *(*(*(a1 + 48) + 24) + 208) = RemoveFunctionFromCallList(a1, a2, *(*(*(a1 + 48) + 24) + 208), &v3);
  return v3 != 0;
}

void *InitExpressionData(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x2Du, 0x60uLL, DeallocateExpressionData);
  InitExpressionPointers(a1);
  result = gm2(a1, 0xFB8uLL);
  v3 = 0;
  *(*(*(a1 + 48) + 360) + 40) = result;
  do
  {
    *(*(*(*(a1 + 48) + 360) + 40) + v3) = 0;
    v3 += 8;
  }

  while (v3 != 4024);
  return result;
}

uint64_t DeallocateExpressionData(uint64_t a1)
{
  if (!Bloaded(a1))
  {
    for (i = 0; i != 503; ++i)
    {
      v3 = *(*(*(*(a1 + 48) + 360) + 40) + 8 * i);
      if (v3)
      {
        do
        {
          v4 = *(v3 + 16);
          ReturnPackedExpression(a1, *(v3 + 8));
          v5 = *(a1 + 48);
          *(*(v5 + 472) + 32) = v3;
          **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 256);
          *(*(*(v5 + 472) + 40) + 256) = *(*(v5 + 472) + 32);
          v3 = v4;
        }

        while (v4);
      }
    }
  }

  result = rm(a1, *(*(*(a1 + 48) + 360) + 40), 0xFB8uLL);
  if (*(*(*(a1 + 48) + 360) + 48))
  {
    result = Bloaded(a1);
    if (result)
    {
      v7 = *(*(*(a1 + 48) + 360) + 56);
      v8 = 32 * *(*(*(a1 + 48) + 360) + 48);

      return genfree(a1, v7, v8);
    }
  }

  return result;
}

void *InitExpressionPointers(uint64_t a1)
{
  **(*(a1 + 48) + 360) = FindFunction(a1, "and");
  *(*(*(a1 + 48) + 360) + 8) = FindFunction(a1, "or");
  *(*(*(a1 + 48) + 360) + 16) = FindFunction(a1, "eq");
  *(*(*(a1 + 48) + 360) + 24) = FindFunction(a1, "neq");
  result = FindFunction(a1, "not");
  v3 = *(a1 + 48);
  *(*(v3 + 360) + 32) = result;
  v4 = *(v3 + 360);
  if (!*v4 || !v4[1] || !v4[2] || !v4[3] || !v4[4])
  {
    SystemError(a1, "EXPRESSN", 1);

    return EnvExitRouter(a1, 1);
  }

  return result;
}

uint64_t ExpressionInstall(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      AtomInstall(v3, *v2, v2[1]);
      result = ExpressionInstall(v3, v2[2]);
      v2 = v2[3];
    }

    while (v2);
  }

  return result;
}

uint64_t ExpressionDeinstall(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      AtomDeinstall(v3, *v2, v2[1]);
      result = ExpressionDeinstall(v3, v2[2]);
      v2 = v2[3];
    }

    while (v2);
  }

  return result;
}

void *PackExpression(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = ExpressionSize(a2);
  v5 = gm3(a1, 32 * v4);
  ListToPacked(a2, v5, 0);
  return v5;
}

uint64_t ListToPacked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return a3;
  }

  v4 = a1;
  do
  {
    v5 = a3 + 1;
    v6 = a2 + 32 * a3;
    *v6 = *v4;
    v7 = *(v4 + 16);
    *(v6 + 8) = *(v4 + 8);
    if (v7)
    {
      *(v6 + 16) = a2 + 32 * v5;
      v5 = ListToPacked(*(v4 + 16), a2, a3 + 1);
    }

    else
    {
      *(v6 + 16) = 0;
    }

    if (*(v4 + 24))
    {
      v8 = a2 + 32 * v5;
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 24) = v8;
    v4 = *(v4 + 24);
    a3 = v5;
  }

  while (v4);
  return v5;
}

uint64_t ReturnPackedExpression(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = 32 * ExpressionSize(a2);

    return rm(v3, a2, v4);
  }

  return result;
}

uint64_t ReturnExpression(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      if (*(v2 + 16))
      {
        result = ReturnExpression(v3);
      }

      v4 = *(v2 + 24);
      v5 = *(v3 + 48);
      *(*(v5 + 472) + 32) = v2;
      **(*(v5 + 472) + 32) = *(*(*(v5 + 472) + 40) + 256);
      *(*(*(v5 + 472) + 40) + 256) = *(*(v5 + 472) + 32);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t RemoveHashedExpression(uint64_t a1, unsigned __int16 *a2)
{
  v9 = 0;
  v8 = 0;
  result = FindHashedExpression(a1, a2, &v8, &v9);
  if (result)
  {
    v4 = result;
    v5 = *(result + 4) - 1;
    *(result + 4) = v5;
    if (!v5)
    {
      if (v9)
      {
        v6 = (v9 + 16);
      }

      else
      {
        v6 = (*(*(*(a1 + 48) + 360) + 40) + 8 * v8);
      }

      *v6 = *(result + 16);
      ExpressionDeinstall(a1, *(result + 8));
      result = ReturnPackedExpression(a1, *(v4 + 8));
      v7 = *(a1 + 48);
      *(*(v7 + 472) + 32) = v4;
      **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 256);
      *(*(*(v7 + 472) + 40) + 256) = *(*(v7 + 472) + 32);
    }
  }

  return result;
}

uint64_t FindHashedExpression(uint64_t a1, unsigned __int16 *a2, unsigned int *a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = HashExpression(a2);
  *a3 = v8;
  *a4 = 0;
  for (i = *(*(*(*(a1 + 48) + 360) + 40) + 8 * v8); i; i = *(i + 16))
  {
    if (IdenticalExpression(*(i + 8), a2))
    {
      break;
    }

    *a4 = i;
  }

  return i;
}

uint64_t AddHashedExpression(uint64_t a1, unsigned __int16 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v14 = 0;
  HashedExpression = FindHashedExpression(a1, a2, &v14, &v15);
  if (HashedExpression)
  {
    ++*(HashedExpression + 4);
    v5 = (HashedExpression + 8);
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(v7 + 472);
    v9 = *(*(v8 + 40) + 256);
    if (v9)
    {
      *(v8 + 32) = v9;
      *(*(*(v7 + 472) + 40) + 256) = **(*(v7 + 472) + 32);
      v10 = *(*(*(a1 + 48) + 472) + 32);
    }

    else
    {
      v10 = genalloc(a1, 0x20uLL);
    }

    *v10 = v14;
    v10[1] = 1;
    v11 = PackExpression(a1, a2);
    *(v10 + 1) = v11;
    v5 = v10 + 2;
    ExpressionInstall(a1, v11);
    v12 = *(a1 + 48);
    v13 = *v10;
    *(v10 + 2) = *(*(*(v12 + 360) + 40) + 8 * v13);
    *(*(*(v12 + 360) + 40) + 8 * v13) = v10;
    *(v10 + 3) = 0;
  }

  return *v5;
}

uint64_t HashedExpressionIndex(uint64_t a1, unsigned __int16 *a2)
{
  if (!a2)
  {
    return -1;
  }

  HashedExpression = FindHashedExpression(a1, a2, &v4, &v5);
  if (HashedExpression)
  {
    return *(HashedExpression + 24);
  }

  else
  {
    return -1;
  }
}

unint64_t HashExpression(unsigned __int16 *a1)
{
  v1 = a1;
  if (*(a1 + 2))
  {
    v2 = 257 * HashExpression() + 269;
  }

  else
  {
    v2 = 269;
  }

  do
  {
    v2 += 263 * *v1 + *(v1 + 1);
    v1 = *(v1 + 3);
  }

  while (v1);
  return v2 % 0x1F7;
}

uint64_t MiscFunctionDefinitions(uint64_t a1)
{
  AllocateEnvironmentData(a1, 9u, 8uLL, 0);
  **(*(a1 + 48) + 72) = 1;
  EnvDefineFunction2(a1, "gensym", 119, GensymFunction, "GensymFunction", "00");
  EnvDefineFunction2(a1, "gensym*", 119, GensymStarFunction, "GensymStarFunction", "00");
  EnvDefineFunction2(a1, "setgen", 103, SetgenFunction, "SetgenFunction", "11i");
  EnvDefineFunction2(a1, "length", 103, LengthFunction, "LengthFunction", "11q");
  EnvDefineFunction2(a1, "length$", 103, LengthFunction, "LengthFunction", "11q");
  EnvDefineFunction2(a1, "time", 100, TimeFunction, "TimeFunction", "00");
  EnvDefineFunction2(a1, "random", 103, RandomFunction, "RandomFunction", "02i");
  EnvDefineFunction2(a1, "seed", 118, SeedFunction, "SeedFunction", "11i");
  EnvDefineFunction2(a1, "conserve-mem", 118, ConserveMemCommand, "ConserveMemCommand", "11w");
  EnvDefineFunction2(a1, "release-mem", 103, ReleaseMemCommand, "ReleaseMemCommand", "00");
  EnvDefineFunction2(a1, "mem-used", 103, MemUsedCommand, "MemUsedCommand", "00");
  EnvDefineFunction2(a1, "mem-requests", 103, MemRequestsCommand, "MemRequestsCommand", "00");
  EnvDefineFunction2(a1, "options", 118, OptionsCommand, "OptionsCommand", "00");
  EnvDefineFunction2(a1, "operating-system", 119, OperatingSystemFunction, "OperatingSystemFunction", "00");
  EnvDefineFunction2(a1, "(expansion-call)", 117, ExpandFuncCall, "ExpandFuncCall", 0);
  EnvDefineFunction2(a1, "expand$", 117, DummyExpandFuncMultifield, "DummyExpandFuncMultifield", "11m");
  FuncSeqOvlFlags(a1, "expand$", 0, 0);
  EnvDefineFunction2(a1, "(set-evaluation-error)", 119, CauseEvaluationError, "CauseEvaluationError", 0);
  EnvDefineFunction2(a1, "set-sequence-operator-recognition", 98, SetSORCommand, "SetSORCommand", "11w");
  EnvDefineFunction2(a1, "get-sequence-operator-recognition", 98, EnvGetSequenceOperatorRecognition, "EnvGetSequenceOperatorRecognition", "00");
  EnvDefineFunction2(a1, "get-function-restrictions", 115, GetFunctionRestrictions, "GetFunctionRestrictions", "11w");
  EnvDefineFunction2(a1, "create$", 109, CreateFunction, "CreateFunction", 0);
  EnvDefineFunction2(a1, "mv-append", 109, CreateFunction, "CreateFunction", 0);
  EnvDefineFunction2(a1, "apropos", 118, AproposCommand, "AproposCommand", "11w");
  EnvDefineFunction2(a1, "get-function-list", 109, GetFunctionListFunction, "GetFunctionListFunction", "00");
  EnvDefineFunction2(a1, "funcall", 117, FuncallFunction, "FuncallFunction", "1**k");
  EnvDefineFunction2(a1, "new", 117, NewFunction, "NewFunction", "1*uw");
  EnvDefineFunction2(a1, "call", 117, CallFunction, "CallFunction", "1*u");

  return EnvDefineFunction2(a1, "timer", 100, TimerFunction, "TimerFunction", "**");
}

uint64_t *GensymFunction(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  EnvArgCountCheck(a1, "gensym", 0, 0);
  gensprintf(__s1, "gen%lld", v2, v3, v4, v5, v6, v7, **(*(a1 + 48) + 72));
  ++**(*(a1 + 48) + 72);
  result = EnvAddSymbol(a1, __s1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *GensymStarFunction(uint64_t a1)
{
  EnvArgCountCheck(a1, "gensym*", 0, 0);

  return GensymStar(a1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t SetgenFunction(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  if (EnvArgCountCheck(a1, "setgen", 0, 1) != -1 && EnvArgTypeCheck(a1, "setgen", 1, 1, &v3))
  {
    result = *(v4 + 24);
    if (result > 0)
    {
      **(*(a1 + 48) + 72) = result;
      return result;
    }

    ExpectedTypeError1(a1, "setgen", 1, "number (greater than or equal to 1)");
  }

  return **(*(a1 + 48) + 72);
}

size_t LengthFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "length$", 0, 1) != -1)
  {
    v4 = 0u;
    v5 = 0u;
    v3 = 0u;
    EnvRtnUnknown(a1, 1, &v3);
    if ((WORD4(v3) & 0xFFFE) == 2)
    {
      return strlen(*(v4 + 24));
    }

    if (WORD4(v3) == 4)
    {
      return v5 - *(&v4 + 1) + 1;
    }

    SetEvaluationError(a1, 1);
    ExpectedTypeError2(a1, "length$", 1);
  }

  return -1;
}

double TimeFunction(uint64_t a1)
{
  EnvArgCountCheck(a1, "time", 0, 0);

  return gentime();
}

uint64_t RandomFunction(uint64_t a1)
{
  v2 = EnvRtnArgCount(a1);
  if ((v2 & 0xFFFFFFFD) != 0)
  {
    PrintErrorID(a1, "MISCFUN", 2, 0);
    EnvPrintRouter(a1, "werror", "Function random expected either 0 or 2 arguments\n");
  }

  v3 = genrand();
  if (v2 == 2)
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    if (EnvArgTypeCheck(a1, "random", 1, 1, &v9))
    {
      v4 = *(v10 + 24);
      if (EnvArgTypeCheck(a1, "random", 2, 1, &v9))
      {
        v5 = *(v10 + 24);
        v6 = v5 < v4;
        v7 = v5 - v4;
        if (v6)
        {
          PrintErrorID(a1, "MISCFUN", 3, 0);
          EnvPrintRouter(a1, "werror", "Function random expected argument #1 to be less than argument #2\n");
        }

        else
        {
          return v3 % (v7 + 1) + v4;
        }
      }
    }
  }

  return v3;
}

void SeedFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "seed", 0, 1) != -1)
  {
    v3 = 0u;
    v4 = 0u;
    v2 = 0u;
    if (EnvArgTypeCheck(a1, "seed", 1, 1, &v2))
    {
      genseed(*(v3 + 24));
    }
  }
}

uint64_t ConserveMemCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "conserve-mem", 0, 1);
  if (result != -1)
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    result = EnvArgTypeCheck(a1, "conserve-mem", 1, 2, &v6);
    if (result)
    {
      v3 = *(v7 + 24);
      if (*v3 == 111 && *(v3 + 1) == 110 && !*(v3 + 2))
      {
        v4 = a1;
        v5 = 1;
      }

      else
      {
        if (strcmp(v3, "off"))
        {
          return ExpectedTypeError1(a1, "conserve-mem", 1, "symbol with value on or off");
        }

        v4 = a1;
        v5 = 0;
      }

      return EnvSetConserveMemory(v4, v5);
    }
  }

  return result;
}

uint64_t ReleaseMemCommand(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "release-mem", 0, 0) == -1)
  {
    return 0;
  }

  return EnvReleaseMem(a1, -1);
}

uint64_t MemUsedCommand(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "mem-used", 0, 0) == -1)
  {
    return 0;
  }

  return EnvMemUsed(a1);
}

uint64_t MemRequestsCommand(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "mem-requests", 0, 0) == -1)
  {
    return 0;
  }

  return EnvMemRequests(a1);
}

uint64_t OptionsCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "options", 0, 0);
  if (result != -1)
  {
    EnvPrintRouter(a1, "wdisplay", "Machine type: ");
    EnvPrintRouter(a1, "wdisplay", "Apple Macintosh with Xcode");
    EnvPrintRouter(a1, "wdisplay", "\n");
    EnvPrintRouter(a1, "wdisplay", "Defrule construct is ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "Defmodule construct is ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "Deftemplate construct is ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "  Fact-set queries are ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "  Deffacts construct is ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "Defglobal construct is ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "Deffunction construct is ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "Defgeneric/Defmethod constructs are ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "Object System is ");
    EnvPrintRouter(a1, "wdisplay", "OFF\n");
    EnvPrintRouter(a1, "wdisplay", "Extended math function package is ");
    EnvPrintRouter(a1, "wdisplay", "OFF\n");
    EnvPrintRouter(a1, "wdisplay", "Text processing function package is ");
    EnvPrintRouter(a1, "wdisplay", "OFF\n");
    EnvPrintRouter(a1, "wdisplay", "Bload capability is ");
    EnvPrintRouter(a1, "wdisplay", "BLOAD AND BSAVE");
    EnvPrintRouter(a1, "wdisplay", "\n");
    EnvPrintRouter(a1, "wdisplay", "Construct compiler is ");
    EnvPrintRouter(a1, "wdisplay", "OFF\n");
    EnvPrintRouter(a1, "wdisplay", "I/O function package is ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "String function package is ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "Multifield function package is ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "Debugging function package is ");
    EnvPrintRouter(a1, "wdisplay", "ON\n");
    EnvPrintRouter(a1, "wdisplay", "Window Interface flag is ");
    EnvPrintRouter(a1, "wdisplay", "OFF\n");
    EnvPrintRouter(a1, "wdisplay", "Developer flag is ");
    EnvPrintRouter(a1, "wdisplay", "OFF\n");
    EnvPrintRouter(a1, "wdisplay", "Run time module is ");

    return EnvPrintRouter(a1, "wdisplay", "OFF\n");
  }

  return result;
}

uint64_t *OperatingSystemFunction(uint64_t a1)
{
  EnvArgCountCheck(a1, "operating-system", 0, 0);

  return EnvAddSymbol(a1, "MAC-OS-X");
}

uint64_t ExpandFuncCall(uint64_t a1, uint64_t a2)
{
  v19 = CopyExpression(a1, *(*(**(*(a1 + 48) + 352) + 16) + 16));
  Function = FindFunction(a1, "expand$");
  ExpandFuncMultifield(a1, a2, v19, &v19, Function);
  v5 = *(a1 + 48);
  v6 = *(v5 + 472);
  v7 = *(*(v6 + 40) + 256);
  if (v7)
  {
    *(v6 + 32) = v7;
    *(*(*(v5 + 472) + 40) + 256) = **(*(v5 + 472) + 32);
    v8 = *(a1 + 48);
    v9 = *(*(v8 + 472) + 32);
  }

  else
  {
    v9 = genalloc(a1, 0x20uLL);
    v8 = *(a1 + 48);
  }

  v10 = *(**(v8 + 352) + 16);
  v11 = *v10;
  *v9 = v11;
  v12 = *(v10 + 1);
  v13 = v19;
  *(v9 + 1) = v12;
  *(v9 + 2) = v13;
  *(v9 + 3) = 0;
  if (v11 != 32)
  {
    if (v11 == 30)
    {
      v14 = *(*v12 + 24);
      v15 = v12[5];
      v16 = CountArguments(v13);
      if (!CheckFunctionArgCount(a1, v14, v15, v16))
      {
        *(a2 + 8) = 2;
        *(a2 + 16) = EnvFalseSymbol(a1);
LABEL_10:

        return ReturnExpression(a1, v9);
      }
    }

LABEL_9:
    EvaluateExpression(a1, v9, a2);
    goto LABEL_10;
  }

  v17 = CountArguments(v13);
  if (CheckDeffunctionCall(a1, v12, v17))
  {
    goto LABEL_9;
  }

  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  ReturnExpression(a1, v9);

  return SetEvaluationError(a1, 1);
}

uint64_t DummyExpandFuncMultifield(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  SetEvaluationError(a1, 1);
  PrintErrorID(a1, "MISCFUN", 1, 0);

  return EnvPrintRouter(a1, "werror", "expand$ must be used in the argument list of a function call.\n");
}

uint64_t CauseEvaluationError(uint64_t a1)
{
  SetEvaluationError(a1, 1);

  return EnvFalseSymbol(a1);
}

uint64_t SetSORCommand(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  if (!EnvArgTypeCheck(a1, "set-sequence-operator-recognition", 1, 2, &v5))
  {
    return *(*(*(a1 + 48) + 360) + 88);
  }

  v2 = v6;
  v3 = v2 != EnvFalseSymbol(a1);
  return EnvSetSequenceOperatorRecognition(a1, v3);
}

uint64_t *GetFunctionRestrictions(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  if (!EnvArgTypeCheck(a1, "get-function-restrictions", 1, 2, &v5))
  {
    goto LABEL_7;
  }

  Function = FindFunction(a1, *(v6 + 24));
  if (!Function)
  {
    CantFindItemErrorMessage(a1, "function", *(v6 + 24));
    SetEvaluationError(a1, 1);
LABEL_7:
    v3 = "";
    return EnvAddSymbol(a1, v3);
  }

  if (Function[5])
  {
    v3 = Function[5];
  }

  else
  {
    v3 = "0**";
  }

  return EnvAddSymbol(a1, v3);
}

uint64_t AproposCommand(uint64_t a1)
{
  result = EnvArgCountCheck(a1, "apropos", 0, 1);
  if (result != -1)
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    result = EnvArgTypeCheck(a1, "apropos", 1, 2, &v6);
    if (result)
    {
      v3 = *(v7 + 24);
      v4 = strlen(v3);
      result = GetNextSymbolMatch(a1, v3, v4, 0, 1, 0);
      if (result)
      {
        v5 = result;
        do
        {
          EnvPrintRouter(a1, "wdisplay", *(v5 + 24));
          EnvPrintRouter(a1, "wdisplay", "\n");
          result = GetNextSymbolMatch(a1, v3, v4, v5, 1, 0);
          v5 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

double GetFunctionListFunction(uint64_t a1, uint64_t a2)
{
  if (EnvArgCountCheck(a1, "get-function-list", 0, 0) == -1)
  {

    return EnvSetMultifieldErrorValue(a1, a2);
  }

  else
  {
    FunctionList = GetFunctionList(a1);
    for (i = 0; FunctionList; FunctionList = *(FunctionList + 56))
    {
      ++i;
    }

    *(a2 + 8) = 4;
    *(a2 + 24) = 0;
    *(a2 + 32) = i - 1;
    Multifield = EnvCreateMultifield(a1, i);
    *(a2 + 16) = Multifield;
    v7 = GetFunctionList(a1);
    if (v7)
    {
      v9 = Multifield + 4;
      do
      {
        *(v9 - 4) = 2;
        *v9 = *v7;
        v9 += 2;
        v7 = v7[7];
      }

      while (v7);
    }
  }

  return result;
}

uint64_t FuncallFunction(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgCountCheck(a1, "funcall", 1u, 1);
  if (result != -1)
  {
    v5 = result;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    result = EnvArgTypeCheck(a1, "funcall", 1, 181, &v31);
    if (result)
    {
      v6 = *(v32 + 24);
      if (!GetFunctionReference(a1, v6, &v29))
      {
        v7 = "function, deffunction, or generic function name";
        return ExpectedTypeError1(a1, "funcall", 1, v7);
      }

      if (v29 == 30 && FindFunction(a1, v6)[4])
      {
        v7 = "function without specialized parser";
        return ExpectedTypeError1(a1, "funcall", 1, v7);
      }

      v8 = v5;
      ExpressionInstall(a1, &v29);
      if (v5 < 2)
      {
LABEL_23:
        if (v29 == 32 && (v25 = *(&v29 + 1), v26 = CountArguments(v30), !CheckDeffunctionCall(a1, v25, v26)))
        {
          PrintErrorID(a1, "MISCFUN", 4, 0);
          EnvPrintRouter(a1, "werror", "Function funcall called with the wrong number of arguments for deffunction ");
          DefruleName = EnvGetDefruleName(a1, *(&v29 + 1));
          EnvPrintRouter(a1, "werror", DefruleName);
          EnvPrintRouter(a1, "werror", "\n");
        }

        else
        {
          EvaluateExpression(a1, &v29, a2);
        }

        ExpressionDeinstall(a1, &v29);
        return ReturnExpression(a1, v30);
      }

      else
      {
        v9 = 0;
        v10 = &v30;
        v11 = 2;
        v12 = "create$";
        v28 = v8;
        while (1)
        {
          EnvRtnUnknown(a1, v11, &v31);
          if (GetEvaluationError(a1))
          {
            return ExpressionDeinstall(a1, &v29);
          }

          if (v9)
          {
            v13 = (v9 + 3);
          }

          else
          {
            v13 = v10;
          }

          if (WORD4(v31) == 4)
          {
            Function = FindFunction(a1, v12);
            v9 = GenConstant(a1, 30, Function);
            *v13 = v9;
            if (*(&v32 + 1) <= v33)
            {
              v15 = v10;
              v16 = v12;
              v17 = 0;
              v18 = *(&v32 + 1) - 1;
              v19 = (v32 + 16 * *(&v32 + 1) + 32);
              do
              {
                v20 = *(v19 - 4);
                v21 = *v19;
                v19 += 2;
                v22 = GenConstant(a1, v20, v21);
                v23 = v17 + 3;
                if (!v17)
                {
                  v23 = v9 + 2;
                }

                *v23 = v22;
                ++v18;
                v17 = v22;
              }

              while (v18 < v33);
              v12 = v16;
              v10 = v15;
              v8 = v28;
            }
          }

          else
          {
            v9 = GenConstant(a1, SWORD4(v31), v32);
            *v13 = v9;
          }

          ExpressionInstall(a1, v9);
          if (v11++ == v8)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  return result;
}

uint64_t NewFunction(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgCountCheck(a1, "new", 1u, 1);
  if (result != -1)
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    result = EnvArgTypeCheck(a1, "new", 1, 2, &v7);
    if (result)
    {
      result = FindLanguageType(a1, *(v8 + 24));
      if (result == -1)
      {
        return ExpectedTypeError1(a1, "new", 1, "external language");
      }

      else
      {
        v5 = *(*(*(a1 + 48) + 352) + 8 * result + 1224);
        if (v5)
        {
          v6 = *(v5 + 32);
          if (v6)
          {
            return v6(a1, a2);
          }
        }
      }
    }
  }

  return result;
}

uint64_t CallFunction(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgCountCheck(a1, "call", 1u, 1);
  if (result != -1)
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    result = EnvRtnUnknown(a1, 1, &v8);
    if (WORD4(v8) == 5)
    {
      v5 = *(*(a1 + 48) + 352) + 8 * *(v9 + 32);
    }

    else
    {
      if (WORD4(v8) != 2)
      {
        return ExpectedTypeError1(a1, "call", 1, "external language symbol or external address");
      }

      result = FindLanguageType(a1, *(v9 + 24));
      if (result == -1)
      {
        return ExpectedTypeError1(a1, "call", 1, "external language symbol or external address");
      }

      v5 = *(*(a1 + 48) + 352) + 8 * result;
    }

    v6 = *(v5 + 1224);
    if (v6)
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        return v7(a1, &v8, a2);
      }
    }
  }

  return result;
}

double TimerFunction(uint64_t a1)
{
  memset(v7, 0, sizeof(v7));
  v2 = gentime();
  v3 = EnvRtnArgCount(a1);
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = 1;
    do
    {
      if (GetHaltExecution(a1) == 1)
      {
        break;
      }

      EnvRtnUnknown(a1, v5++, v7);
      --v4;
    }

    while (v4);
  }

  return gentime() - v2;
}

uint64_t *GensymStar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x277D85DE8];
  do
  {
    gensprintf(__s1, "gen%lld", a3, a4, a5, a6, a7, a8, **(*(a1 + 48) + 72));
    ++**(*(a1 + 48) + 72);
  }

  while (FindSymbolHN(a1, __s1));
  result = EnvAddSymbol(a1, __s1);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ExpandFuncMultifield(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    return result;
  }

  v7 = a3;
  v9 = result;
  while (1)
  {
    v10 = *(v7 + 16);
    if (*(v7 + 8) == a5)
    {
      break;
    }

    if (v10)
    {
      result = ExpandFuncMultifield(v9, a2, v10, v7 + 16, a5);
    }

    a4 = (v7 + 24);
LABEL_19:
    v7 = *a4;
    if (!*a4)
    {
      return result;
    }
  }

  EvaluateExpression(v9, *(v7 + 16), a2);
  result = ReturnExpression(v9, *(v7 + 16));
  v11 = *(v9 + 48);
  if (!*(*(v11 + 352) + 8) && *(a2 + 8) == 4)
  {
    v12 = *(a2 + 24);
    if (v12 <= *(a2 + 32))
    {
      v14 = 0;
      v15 = 0;
      v16 = v12 - 1;
      v17 = 16 * v12;
      do
      {
        v18 = *(v9 + 48);
        v19 = *(v18 + 472);
        v20 = *(*(v19 + 40) + 256);
        if (v20)
        {
          *(v19 + 32) = v20;
          *(*(*(v18 + 472) + 40) + 256) = **(*(v18 + 472) + 32);
          v21 = *(*(*(v9 + 48) + 472) + 32);
        }

        else
        {
          v21 = genalloc(v9, 0x20uLL);
        }

        v22 = *(a2 + 16) + v17;
        *v21 = *(v22 + 24);
        v21[1] = *(v22 + 32);
        v21[2] = 0;
        v21[3] = 0;
        v23 = v21;
        if (v15)
        {
          v14[3] = v21;
          v23 = v15;
        }

        ++v16;
        v17 += 16;
        v14 = v21;
        v15 = v23;
      }

      while (v16 < *(a2 + 32));
      v21[3] = *(v7 + 24);
      result = (v21 + 3);
      *a4 = v23;
      v24 = *(v9 + 48);
      *(*(v24 + 472) + 32) = v7;
      **(*(v24 + 472) + 32) = *(*(*(v24 + 472) + 40) + 256);
      *(*(*(v24 + 472) + 40) + 256) = *(*(v24 + 472) + 32);
      a4 = result;
    }

    else
    {
      *a4 = *(v7 + 24);
      v13 = *(v9 + 48);
      *(*(v13 + 472) + 32) = v7;
      **(*(v13 + 472) + 32) = *(*(*(v13 + 472) + 40) + 256);
      *(*(*(v13 + 472) + 40) + 256) = *(*(v13 + 472) + 32);
    }

    goto LABEL_19;
  }

  *(v7 + 16) = 0;
  if (!*(*(v11 + 352) + 8) && *(a2 + 8) != 4)
  {
    ExpectedTypeError2(v9, "expand$", 1);
  }

  result = FindFunction(v9, "(set-evaluation-error)");
  *(v7 + 8) = result;
  *(*(*(v9 + 48) + 352) + 8) = 0;
  return result;
}

uint64_t FindLanguageType(uint64_t a1, char *__s2)
{
  v2 = *(*(a1 + 48) + 352);
  v3 = *(v2 + 20);
  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = v2 + 1224;
  while (strcmp(**(v6 + 8 * v5), __s2))
  {
    if (v3 == ++v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t PrintErrorID(uint64_t a1, char *a2, char a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  FlushParsingMessages(a1);
  ParsingFileName = EnvGetParsingFileName(a1);
  EnvSetErrorFileName(a1, ParsingFileName);
  *(*(*(a1 + 48) + 336) + 88) = GetLineCount(a1);
  if (a4)
  {
    EnvPrintRouter(a1, "werror", "\n");
  }

  EnvPrintRouter(a1, "werror", "[");
  EnvPrintRouter(a1, "werror", a2);
  gensprintf(v17, "%lld", v9, v10, v11, v12, v13, v14, a3);
  EnvPrintRouter(a1, "werror", v17);
  result = EnvPrintRouter(a1, "werror", "] ");
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PrintWarningID(uint64_t a1, char *a2, char a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  FlushParsingMessages(a1);
  ParsingFileName = EnvGetParsingFileName(a1);
  EnvSetWarningFileName(a1, ParsingFileName);
  *(*(*(a1 + 48) + 336) + 96) = GetLineCount(a1);
  if (a4)
  {
    EnvPrintRouter(a1, "wwarning", "\n");
  }

  EnvPrintRouter(a1, "wwarning", "[");
  EnvPrintRouter(a1, "wwarning", a2);
  gensprintf(v17, "%lld", v9, v10, v11, v12, v13, v14, a3);
  EnvPrintRouter(a1, "wwarning", v17);
  result = EnvPrintRouter(a1, "wwarning", "] WARNING: ");
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CantFindItemErrorMessage(uint64_t a1, char *a2, char *a3)
{
  PrintErrorID(a1, "PRNTUTIL", 1, 0);
  EnvPrintRouter(a1, "werror", "Unable to find ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " ");
  EnvPrintRouter(a1, "werror", a3);

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t CantFindItemInFunctionErrorMessage(uint64_t a1, char *a2, char *a3, char *a4)
{
  PrintErrorID(a1, "PRNTUTIL", 1, 0);
  EnvPrintRouter(a1, "werror", "Unable to find ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " ");
  EnvPrintRouter(a1, "werror", a3);
  EnvPrintRouter(a1, "werror", " in function ");
  EnvPrintRouter(a1, "werror", a4);

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t CantDeleteItemErrorMessage(uint64_t a1, char *a2, char *a3)
{
  PrintErrorID(a1, "PRNTUTIL", 4, 0);
  EnvPrintRouter(a1, "werror", "Unable to delete ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " ");
  EnvPrintRouter(a1, "werror", a3);

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t AlreadyParsedErrorMessage(uint64_t a1, char *a2, char *a3)
{
  PrintErrorID(a1, "PRNTUTIL", 5, 1);
  EnvPrintRouter(a1, "werror", "The ");
  if (a2)
  {
    EnvPrintRouter(a1, "werror", a2);
  }

  if (a3)
  {
    EnvPrintRouter(a1, "werror", a3);
  }

  return EnvPrintRouter(a1, "werror", " has already been parsed.\n");
}

uint64_t SyntaxErrorMessage(uint64_t a1, char *a2)
{
  PrintErrorID(a1, "PRNTUTIL", 2, 1);
  EnvPrintRouter(a1, "werror", "Syntax Error");
  if (a2)
  {
    EnvPrintRouter(a1, "werror", ":  Check appropriate syntax for ");
    EnvPrintRouter(a1, "werror", a2);
  }

  EnvPrintRouter(a1, "werror", ".\n");

  return SetEvaluationError(a1, 1);
}

uint64_t LocalVariableErrorMessage(uint64_t a1, char *a2)
{
  PrintErrorID(a1, "PRNTUTIL", 6, 1);
  EnvPrintRouter(a1, "werror", "Local variables can not be accessed by ");
  EnvPrintRouter(a1, "werror", a2);

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t SystemError(uint64_t a1, char *a2, char a3)
{
  v15 = *MEMORY[0x277D85DE8];
  PrintErrorID(a1, "PRNTUTIL", 3, 1);
  EnvPrintRouter(a1, "werror", "\n*** ");
  EnvPrintRouter(a1, "werror", "CLIPS");
  EnvPrintRouter(a1, "werror", " SYSTEM ERROR ***\n");
  EnvPrintRouter(a1, "werror", "ID = ");
  EnvPrintRouter(a1, "werror", a2);
  gensprintf(v14, "%lld", v6, v7, v8, v9, v10, v11, a3);
  EnvPrintRouter(a1, "werror", v14);
  EnvPrintRouter(a1, "werror", "\n");
  EnvPrintRouter(a1, "werror", "CLIPS");
  EnvPrintRouter(a1, "werror", " data structures are in an inconsistent or corrupted state.\n");
  EnvPrintRouter(a1, "werror", "This error may have occurred from errors in user defined code.\n");
  result = EnvPrintRouter(a1, "werror", "**************************\n");
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DivideByZeroErrorMessage(uint64_t a1, char *a2)
{
  PrintErrorID(a1, "PRNTUTIL", 7, 0);
  EnvPrintRouter(a1, "werror", "Attempt to divide by zero in ");
  EnvPrintRouter(a1, "werror", a2);

  return EnvPrintRouter(a1, "werror", " function.\n");
}

uint64_t LongIntegerToString(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x277D85DE8];
  gensprintf(__s1, "%lld", a3, a4, a5, a6, a7, a8, a2);
  result = EnvAddSymbol(a1, __s1)[3];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

const char *DataObjectToString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 8);
  if (v10 > 3)
  {
    if (*(a2 + 8) <= 5u)
    {
      if (v10 == 4)
      {
        v12 = ImplodeMultifield(a1);
        v14 = ")";
        v13 = "(";
        goto LABEL_25;
      }

      if (v10 != 5)
      {
        goto LABEL_26;
      }

      v15 = *(a2 + 16);
      v23 = *(v15 + 24);
      gensprintf(__s1, "<Pointer-%d-%p>", a3, a4, a5, a6, a7, a8, *(v15 + 32));
    }

    else
    {
      if (v10 != 6)
      {
        if (v10 != 8)
        {
          if (v10 == 175)
          {
            result = "";
LABEL_28:
            v22 = *MEMORY[0x277D85DE8];
            return result;
          }

          goto LABEL_26;
        }

        v12 = *(a2 + 16);
        v14 = "]";
        v13 = "[";
        goto LABEL_25;
      }

      v17 = *(a2 + 16);
      if (v17 == *(*(a1 + 48) + 24) + 8)
      {
        result = "<Dummy Fact>";
        goto LABEL_28;
      }

      gensprintf(__s1, "<Fact-%lld>", a3, a4, a5, a6, a7, a8, *(v17 + 48));
    }

LABEL_22:
    result = EnvAddSymbol(a1, __s1)[3];
    goto LABEL_28;
  }

  if (*(a2 + 8) > 1u)
  {
    if (v10 == 2)
    {
      result = *(*(a2 + 16) + 24);
      goto LABEL_28;
    }

    if (v10 != 3)
    {
LABEL_26:
      result = "UNK";
      goto LABEL_28;
    }

    v12 = *(a2 + 16);
    v13 = "";
    v14 = "";
LABEL_25:
    v18 = *(v12 + 24);
    v19 = strlen(v18);
    v20 = genalloc(a1, v19 + 3);
    *v20 = 0;
    genstrcat(v20, v13);
    genstrcat(v20, v18);
    genstrcat(v20, v14);
    v21 = EnvAddSymbol(a1, v20);
    genfree(a1, v20, v19 + 3);
    result = v21[3];
    goto LABEL_28;
  }

  if (*(a2 + 8))
  {
    gensprintf(__s1, "%lld", a3, a4, a5, a6, a7, a8, *(*(a2 + 16) + 24));
    goto LABEL_22;
  }

  a9.n128_u64[0] = *(*(a2 + 16) + 24);
  v16 = *MEMORY[0x277D85DE8];

  return FloatToString(a1, a9, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t SalienceInformationError(uint64_t a1, char *a2, char *a3)
{
  PrintErrorID(a1, "PRNTUTIL", 8, 1);
  EnvPrintRouter(a1, "werror", "This error occurred while evaluating the salience");
  if (a3)
  {
    EnvPrintRouter(a1, "werror", " for ");
    EnvPrintRouter(a1, "werror", a2);
    EnvPrintRouter(a1, "werror", " ");
    EnvPrintRouter(a1, "werror", a3);
  }

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t SalienceRangeError(uint64_t a1, char a2, char a3)
{
  v21 = *MEMORY[0x277D85DE8];
  PrintErrorID(a1, "PRNTUTIL", 9, 1);
  EnvPrintRouter(a1, "werror", "Salience value out of range ");
  gensprintf(v20, "%lld", v6, v7, v8, v9, v10, v11, a2);
  EnvPrintRouter(a1, "werror", v20);
  EnvPrintRouter(a1, "werror", " to ");
  gensprintf(v20, "%lld", v12, v13, v14, v15, v16, v17, a3);
  EnvPrintRouter(a1, "werror", v20);
  result = EnvPrintRouter(a1, "werror", ".\n");
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SalienceNonIntegerError(uint64_t a1)
{
  PrintErrorID(a1, "PRNTUTIL", 10, 1);

  return EnvPrintRouter(a1, "werror", "Salience value must be an integer value.\n");
}

uint64_t SlotExistError(uint64_t a1, char *a2, char *a3)
{
  PrintErrorID(a1, "INSFUN", 3, 0);
  EnvPrintRouter(a1, "werror", "No such slot ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " in function ");
  EnvPrintRouter(a1, "werror", a3);
  EnvPrintRouter(a1, "werror", ".\n");

  return SetEvaluationError(a1, 1);
}

uint64_t VariableAnalysis(uint64_t a1, unsigned __int16 *a2)
{
  v42 = 0;
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = *(v2 + 19);
    if (v6 <= v5)
    {
      v10 = v4;
    }

    else
    {
      do
      {
        v7 = *(a1 + 48);
        v8 = *(v7 + 472);
        v9 = *(*(v8 + 40) + 192);
        if (v9)
        {
          *(v8 + 32) = v9;
          *(*(*(v7 + 472) + 40) + 192) = **(*(v7 + 472) + 32);
          v10 = *(*(*(a1 + 48) + 472) + 32);
        }

        else
        {
          v10 = genalloc(a1, 0x18uLL);
          v6 = *(v2 + 19);
        }

        *v10 = v5;
        v10[1] = v2;
        v10[2] = v4;
        ++v5;
        v4 = v10;
      }

      while (v6 > v5);
    }

    v11 = *v2;
    if (v11 == 154)
    {
      break;
    }

    if (v11 == 150)
    {
      if (*(v2 + 1))
      {
        v12 = *(v2 + 5);
        if (v12)
        {
          v13 = *(v12 + 58) == 0xFFFF;
          v42 = 1;
          if (v13)
          {
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          if (v13)
          {
            v15 = "Duplicate pattern-address ?";
          }

          else
          {
            v15 = "Pattern-address ?";
          }

          if (v13)
          {
            v16 = " found in CE #";
          }

          else
          {
            v16 = " used in CE #";
          }

          if (v13)
          {
            v17 = ".\n";
          }

          else
          {
            v17 = " was previously bound within a pattern CE.\n";
          }

          PrintErrorID(a1, "ANALYSIS", v14, 1);
          EnvPrintRouter(a1, "werror", v15);
          EnvPrintRouter(a1, "werror", *(*(v2 + 1) + 24));
          EnvPrintRouter(a1, "werror", v16);
          PrintLongInteger(a1, "werror", (*(v2 + 4) >> 8) & 0x7F, v18, v19, v20, v21, v22);
          EnvPrintRouter(a1, "werror", v17);
        }
      }

      v23 = 0;
      v24 = v2;
      while ((v24[8] & 0x10) != 0)
      {
        v25 = *(v24 + 25);
        v23 = v24;
        if (v25)
        {
          goto LABEL_31;
        }

LABEL_51:
        v24 = *(v24 + 24);
        if (!v24)
        {
          if (TestCEAnalysis(a1, v2, *(v2 + 21), 0, &v42, v10))
          {
            if (!v10)
            {
              return 1;
            }

            result = 1;
            do
            {
              v38 = v10[2];
              v39 = *(a1 + 48);
              *(*(v39 + 472) + 32) = v10;
              **(*(v39 + 472) + 32) = *(*(*(v39 + 472) + 40) + 192);
              *(*(*(v39 + 472) + 40) + 192) = *(*(v39 + 472) + 32);
              v10 = v38;
            }

            while (v38);
          }

          else
          {
            if (!TestCEAnalysis(a1, v2, *(v2 + 22), 1, &v42, v10))
            {
              goto LABEL_56;
            }

            if (v10)
            {
              result = 1;
              do
              {
                v40 = v10[2];
                v41 = *(a1 + 48);
                *(*(v41 + 472) + 32) = v10;
                **(*(v41 + 472) + 32) = *(*(*(v41 + 472) + 40) + 192);
                *(*(*(v41 + 472) + 40) + 192) = *(*(v41 + 472) + 32);
                v10 = v40;
              }

              while (v40);
              return result;
            }

            return 1;
          }

          return result;
        }
      }

      v25 = v24;
LABEL_31:
      v26 = *v25;
      if ((v26 - 35) >= 2)
      {
        if (v26 != 150 || (v27 = *(v25 + 1)) == 0)
        {
          if (ProcessField(a1, v25, v23, v2, v10))
          {
LABEL_61:
            if (v10)
            {
              do
              {
                v34 = v10[2];
                v35 = *(a1 + 48);
                *(*(v35 + 472) + 32) = v10;
                **(*(v35 + 472) + 32) = *(*(*(v35 + 472) + 40) + 192);
                *(*(*(v35 + 472) + 40) + 192) = *(*(v35 + 472) + 32);
                v10 = v34;
              }

              while (v34);
            }

            return 1;
          }

          goto LABEL_43;
        }

        if ((v25[8] & 0x40) != 0)
        {
          RemoveConstraint(a1, *(v25 + 4));
        }

        ConstraintRecord = GetConstraintRecord(a1);
        *(v25 + 4) = ConstraintRecord;
        *ConstraintRecord &= ~1u;
        **(v25 + 4) |= 0x40u;
        **(v25 + 4) |= 0x100u;
        *(v25 + 4) |= 0x40u;
        v26 = 35;
        if (*v25 == 150)
        {
LABEL_34:
          if (PropagateVariableDriver(a1, v2, v25, v23, v26, v27, v25, 1, 150))
          {
            goto LABEL_61;
          }

LABEL_43:
          v29 = *(v25 + 24);
          if (v23)
          {
            v30 = v29 == 0;
          }

          else
          {
            v30 = 0;
          }

          if (v30)
          {
            v24 = v23;
          }

          else
          {
            v24 = v25;
          }

          if (!v29)
          {
            v23 = 0;
          }

          goto LABEL_51;
        }
      }

      else
      {
        v27 = *(v25 + 1);
      }

      PropagateVariableToNodes(a1, *(v25 + 25), v26, v27, v25, *(v2 + 19), 1, 0);
      if (ProcessField(a1, v25, v23, v2, v10))
      {
        goto LABEL_61;
      }

      goto LABEL_34;
    }

LABEL_56:
    v31 = *(v2 + 20);
    if (v31 < v5)
    {
      do
      {
        v32 = *(a1 + 48);
        *(*(v32 + 472) + 32) = v10;
        v10 = v10[2];
        **(*(v32 + 472) + 32) = *(*(*(v32 + 472) + 40) + 192);
        *(*(*(v32 + 472) + 40) + 192) = *(*(v32 + 472) + 32);
        --v5;
      }

      while (v31 < v5);
      v5 = v31;
    }

    v2 = *(v2 + 25);
    v4 = v10;
    if (!v2)
    {
      return v42;
    }
  }

  if (!TestCEAnalysis(a1, v2, *(v2 + 21), 0, &v42, v10))
  {
    goto LABEL_56;
  }

  if (!v10)
  {
    return 1;
  }

  result = 1;
  do
  {
    v36 = v10[2];
    v37 = *(a1 + 48);
    *(*(v37 + 472) + 32) = v10;
    **(*(v37 + 472) + 32) = *(*(*(v37 + 472) + 40) + 192);
    *(*(*(v37 + 472) + 40) + 192) = *(*(v37 + 472) + 32);
    v10 = v36;
  }

  while (v36);
  return result;
}

uint64_t TestCEAnalysis(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, _DWORD *a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v11 = CheckExpression(a1, a3, 0, (*(a2 + 16) >> 8) & 0x7F, 0, 0);
  v12 = *(a2 + 192);
  *(a2 + 192) = 0;
  ExpressionVarConstraints = GetExpressionVarConstraints(a1, a3);
  v14 = ExpressionVarConstraints;
  if (ExpressionVarConstraints)
  {
    v15 = ExpressionVarConstraints;
    while (!PropagateVariableDriver(a1, a2, a2, 0, 35, *(v15 + 8), v15, 0, 154))
    {
      v15 = *(v15 + 192);
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    ReturnLHSParseNodes(a1, v14);
    *(a2 + 192) = v12;
    return 1;
  }

  else
  {
LABEL_6:
    ReturnLHSParseNodes(a1, v14);
    *(a2 + 192) = v12;
    if (v11)
    {
      result = 0;
      *a5 = 1;
    }

    else if (a4)
    {
      v17 = *(a2 + 104);
      v18 = GetvarReplace(a1, a3, 0, a6);
      v19 = CombineExpressions(a1, v17, v18);
      result = 0;
      *(a2 + 104) = v19;
    }

    else
    {
      v20 = *(a2 + 88);
      v21 = GetvarReplace(a1, a3, 0, a6);
      v22 = CombineExpressions(a1, v20, v21);
      result = 0;
      *(a2 + 88) = v22;
    }
  }

  return result;
}

unsigned __int16 *CheckExpression(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v12 = 1;
    do
    {
      v13 = *v6;
      if (v13 > 0x20)
      {
        switch(v13)
        {
          case '!':
            v17 = 0;
            if (!FindImportedConstruct(a1, "defglobal", 0, *(*(v6 + 1) + 24), &v17, 1, 0))
            {
              goto LABEL_20;
            }

            break;
          case '$':
            if (!*(v6 + 5))
            {
LABEL_20:
              VariableReferenceErrorMessage(a1, *(v6 + 1), a3, a4, a5, a6);
              return v6;
            }

            break;
          case '#':
            if (!*(v6 + 5))
            {
              goto LABEL_20;
            }

            if (UnmatchableConstraint(*(v6 + 4)) && EnvGetStaticConstraintChecking(a1))
            {
              ConstraintReferenceErrorMessage(a1, *(v6 + 1), a3, v12, a4, a5, a6);
              return v6;
            }

            break;
        }
      }

      else if (v13 - 30 < 3)
      {
        v14 = *(v6 + 25);
        if (v14)
        {
          v15 = CheckExpression(a1, v14, v6, a4, a5, a6);
          if (v15)
          {
            return v15;
          }
        }
      }

      ++v12;
      v6 = *(v6 + 24);
    }

    while (v6);
  }

  return v6;
}

uint64_t PropagateVariableDriver(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a4 && PropagateVariableToNodes(a1, *(a4 + 192), a5, a6, a7, *(a2 + 19), a8, 0) || PropagateVariableToNodes(a1, *(a3 + 192), a5, a6, a7, *(a2 + 19), a8, 0))
  {
LABEL_4:
    VariableMixingErrorMessage(a1, a6);
    return 1;
  }

  v16 = 1;
  if (!PropagateVariableToNodes(a1, *(a2 + 21), a5, a6, a7, *(a2 + 19), a8, 1) && !PropagateVariableToNodes(a1, *(a2 + 22), a5, a6, a7, *(a2 + 19), a8, 1))
  {
    v18 = *a2;
    if (v18 != 154 && v18 != 150)
    {
      return 0;
    }

    if ((a2[8] & 3) != 0)
    {
      return 0;
    }

    v19 = *(a2 + 19);
    if (v19 > *(a2 + 20) || !PropagateVariableToNodes(a1, *(a2 + 25), a5, a6, a7, v19, a8, a9 == 154))
    {
      return 0;
    }

    goto LABEL_4;
  }

  return v16;
}

uint64_t VariableReferenceErrorMessage(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  PrintErrorID(a1, "ANALYSIS", 4, 1);
  EnvPrintRouter(a1, "werror", "Variable ?");
  EnvPrintRouter(a1, "werror", *(a2 + 24));
  EnvPrintRouter(a1, "werror", " ");
  if (a3)
  {
    a4 = (*(a3 + 16) >> 8) & 0x7F;
    v12 = LHSParseNodesToExpression(a1, a3);
    ReturnExpression(a1, v12[3]);
    v12[3] = 0;
    EnvPrintRouter(a1, "werror", "found in the expression ");
    PrintExpression(a1, "werror", v12, v18, v13, v14, v15, v16, v17);
    EnvPrintRouter(a1, "werror", "\n");
    ReturnExpression(a1, v12);
  }

  EnvPrintRouter(a1, "werror", "was referenced in CE #");
  PrintLongInteger(a1, "werror", a4, v19, v20, v21, v22, v23);
  if (a5)
  {
    EnvPrintRouter(a1, "werror", " slot ");
    EnvPrintRouter(a1, "werror", *(a5 + 24));
  }

  else if (a6 >= 1)
  {
    EnvPrintRouter(a1, "werror", " field #");
    PrintLongInteger(a1, "werror", a6, v24, v25, v26, v27, v28);
  }

  return EnvPrintRouter(a1, "werror", " before being defined.\n");
}

uint64_t PropagateVariableToNodes(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v14 = a2;
    while (1)
    {
      v16 = *(v14 + 21);
      if (v16)
      {
        PropagateVariableToNodes(a1, v16, a3, a4, a5, a6, a7, 1);
      }

      v17 = *(v14 + 22);
      if (v17)
      {
        PropagateVariableToNodes(a1, v17, a3, a4, a5, a6, a7, 1);
      }

      else
      {
        v20 = *v14;
        if ((v20 - 35) > 1)
        {
          if (v20 != 150 || a7 != 1 || *(v14 + 1) != a4)
          {
            goto LABEL_7;
          }

          if (a3 == 36)
          {
            return 1;
          }
        }

        else
        {
          if (*(v14 + 1) != a4)
          {
            goto LABEL_7;
          }

          if (!a8)
          {
            if (a3 == 36)
            {
              if (v20 == 35)
              {
                return 1;
              }
            }

            else if (a3 == 35 && v20 == 36)
            {
              return 1;
            }
          }

          v21 = *(a5 + 32);
          if (v21 && (v14[8] & 1) == 0)
          {
            v22 = *(v14 + 4);
            *(v14 + 4) = IntersectConstraints(a1, v21, v22);
            v23 = *(v14 + 4);
            if ((v23 & 0x40) != 0)
            {
              RemoveConstraint(a1, v22);
              v23 = *(v14 + 4);
            }

            *(v14 + 4) = v23 | 0x40;
          }

          if (!a7 || *(v14 + 5) && *(a5 + 56) != v14[28] && *(a5 + 48) != *(v14 + 6))
          {
            goto LABEL_7;
          }
        }

        *(v14 + 5) = a5;
      }

LABEL_7:
      v18 = *(v14 + 24);
      if (v18 && PropagateVariableToNodes(a1, v18, a3, a4, a5, a6, a7, a8))
      {
        return 1;
      }

      v19 = *v14;
      if (v19 != 154 && v19 != 150 || *(v14 + 20) >= a6)
      {
        v14 = *(v14 + 25);
        if (v14)
        {
          continue;
        }
      }

      return 0;
    }
  }

  return 0;
}

uint64_t VariableMixingErrorMessage(uint64_t a1, uint64_t a2)
{
  PrintErrorID(a1, "ANALYSIS", 3, 1);
  EnvPrintRouter(a1, "werror", "Variable ?");
  EnvPrintRouter(a1, "werror", *(a2 + 24));

  return EnvPrintRouter(a1, "werror", " is used as both a single and multifield variable in the LHS\n");
}

uint64_t ProcessField(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == 150)
  {
    return 0;
  }

  v11 = DeriveVariableConstraints(a1, a2);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    while (!PropagateVariableDriver(a1, a4, a2, a3, *v13, *(v13 + 1), v13, 0, 150))
    {
      v13 = *(v13 + 24);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    ReturnLHSParseNodes(a1, v12);
  }

  else
  {
LABEL_7:
    ReturnLHSParseNodes(a1, v12);
    if (!UnboundVariablesInPattern(a1, a2, (*(a4 + 16) >> 8) & 0x7F) && !ProcessConnectedConstraints(a1, a2, a3, a4))
    {
      FieldConversion(a1, a2, a4, a5);
      return 0;
    }
  }

  return 1;
}

uint64_t UnboundVariablesInPattern(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 16) & 0x10) == 0)
  {
    v5 = *(a2 + 200);
    if (v5)
    {
      v6 = *(a2 + 64);
      v7 = *(a2 + 58);
      v8 = *(a2 + 32);
      while (2)
      {
        v9 = v5;
        do
        {
          v10 = *v9;
          if (v10 - 35 <= 1 && !*(v9 + 40))
          {
            VariableReferenceErrorMessage(a1, *(v9 + 8), 0, a3, v6, v7);
            return 1;
          }

          if (v10 > 8 || ((1 << v10) & 0x10F) == 0)
          {
            if (v10 - 163 < 2 && CheckExpression(a1, *(v9 + 168), 0, a3, v6, v7))
            {
              return 1;
            }
          }

          else if (EnvGetStaticConstraintChecking(a1))
          {
            v12 = ConstraintCheckValue(a1, *v9, *(v9 + 8), v8);
            if (v12)
            {
              v9 = 1;
              ConstraintViolationErrorMessage(a1, "A literal restriction value", 0, 0, a3, v6, v7, v12, v8, 1);
              return v9;
            }
          }

          v9 = *(v9 + 192);
        }

        while (v9);
        v5 = *(v5 + 200);
        if (v5)
        {
          continue;
        }

        break;
      }

      return v9;
    }

    return 0;
  }

  v13 = *(a2 + 200);
  if (!v13)
  {
    return 0;
  }

  while (!UnboundVariablesInPattern(a1, v13, a3))
  {
    v13 = *(v13 + 192);
    if (!v13)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t StringFunctionDefinitions(uint64_t a1)
{
  EnvDefineFunction2(a1, "str-cat", 107, StrCatFunction, "StrCatFunction", "1*");
  EnvDefineFunction2(a1, "sym-cat", 107, SymCatFunction, "SymCatFunction", "1*");
  EnvDefineFunction2(a1, "str-length", 103, StrLengthFunction, "StrLengthFunction", "11j");
  EnvDefineFunction2(a1, "str-compare", 103, StrCompareFunction, "StrCompareFunction", "23*jji");
  EnvDefineFunction2(a1, "upcase", 106, UpcaseFunction, "UpcaseFunction", "11j");
  EnvDefineFunction2(a1, "lowcase", 106, LowcaseFunction, "LowcaseFunction", "11j");
  EnvDefineFunction2(a1, "sub-string", 115, SubStringFunction, "SubStringFunction", "33*iij");
  EnvDefineFunction2(a1, "str-index", 117, StrIndexFunction, "StrIndexFunction", "22j");
  EnvDefineFunction2(a1, "eval", 117, EvalFunction, "EvalFunction", "11k");
  EnvDefineFunction2(a1, "build", 98, BuildFunction, "BuildFunction", "11k");

  return EnvDefineFunction2(a1, "string-to-field", 117, StringToFieldFunction, "StringToFieldFunction", "11j");
}

uint64_t StrLengthFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "str-length", 0, 1) == -1)
  {
    return -1;
  }

  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  if (!EnvArgTypeCheck(a1, "str-length", 1, 181, &v3))
  {
    return -1;
  }

  else
  {
    return UTF8Length(*(v4 + 24));
  }
}

uint64_t StrCompareFunction(uint64_t a1)
{
  v2 = EnvArgRangeCheck(a1, "str-compare", 2, 3);
  if (v2 == -1)
  {
    return 0;
  }

  v3 = v2;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  if (!EnvArgTypeCheck(a1, "str-compare", 1, 181, &v13) || !EnvArgTypeCheck(a1, "str-compare", 2, 181, &v10))
  {
    return 0;
  }

  if (v3 == 3)
  {
    if (EnvArgTypeCheck(a1, "str-compare", 3, 1, &v7))
    {
      if (WORD4(v7) == 1)
      {
        v4 = *(v8 + 24);
      }

      else
      {
        v4 = *(v8 + 24);
      }

      v6 = strncmp(*(v14 + 24), *(v11 + 24), v4);
      goto LABEL_13;
    }

    return 0;
  }

  v6 = strcmp(*(v14 + 24), *(v11 + 24));
LABEL_13:
  if (v6 < 0)
  {
    return -1;
  }

  else
  {
    return v6 != 0;
  }
}

uint64_t *UpcaseFunction(uint64_t a1, uint64_t a2)
{
  if (EnvArgCountCheck(a1, "upcase", 0, 1) != -1)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    if (EnvArgTypeCheck(a1, "upcase", 1, 181, &v15))
    {
      v4 = *(v16 + 24);
      v5 = strlen(v4);
      v6 = v5 + 1;
      v7 = v5 == -1;
      v8 = gm2(a1, v5 + 1);
      if (v7)
      {
LABEL_4:
        *(a2 + 8) = WORD4(v15);
        *(a2 + 16) = EnvAddSymbol(a1, v8);
        return rm(a1, v8, v6);
      }

      v10 = 0;
      v11 = 1;
      v12 = MEMORY[0x277D85DE0];
      while (1)
      {
        v13 = v4[v10];
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v12 + 4 * v13 + 60) & 0x1000) != 0)
        {
          goto LABEL_9;
        }

LABEL_10:
        v8[v10] = v13;
        v10 = v11;
        if (v6 <= v11++)
        {
          goto LABEL_4;
        }
      }

      if (!__maskrune(v4[v10], 0x1000uLL))
      {
        goto LABEL_10;
      }

LABEL_9:
      LOBYTE(v13) = __toupper(v13);
      goto LABEL_10;
    }
  }

  *(a2 + 8) = 3;
  result = EnvAddSymbol(a1, "");
  *(a2 + 16) = result;
  return result;
}

uint64_t *LowcaseFunction(uint64_t a1, uint64_t a2)
{
  if (EnvArgCountCheck(a1, "lowcase", 0, 1) != -1)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    if (EnvArgTypeCheck(a1, "lowcase", 1, 181, &v15))
    {
      v4 = *(v16 + 24);
      v5 = strlen(v4);
      v6 = v5 + 1;
      v7 = v5 == -1;
      v8 = gm2(a1, v5 + 1);
      if (v7)
      {
LABEL_4:
        *(a2 + 8) = WORD4(v15);
        *(a2 + 16) = EnvAddSymbol(a1, v8);
        return rm(a1, v8, v6);
      }

      v10 = 0;
      v11 = 1;
      v12 = MEMORY[0x277D85DE0];
      while (1)
      {
        v13 = v4[v10];
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v12 + 4 * v13 + 60) & 0x8000) != 0)
        {
          goto LABEL_9;
        }

LABEL_10:
        v8[v10] = v13;
        v10 = v11;
        if (v6 <= v11++)
        {
          goto LABEL_4;
        }
      }

      if (!__maskrune(v4[v10], 0x8000uLL))
      {
        goto LABEL_10;
      }

LABEL_9:
      LOBYTE(v13) = __tolower(v13);
      goto LABEL_10;
    }
  }

  *(a2 + 8) = 3;
  result = EnvAddSymbol(a1, "");
  *(a2 + 16) = result;
  return result;
}

uint64_t *SubStringFunction(uint64_t a1)
{
  if (EnvArgCountCheck(a1, "sub-string", 0, 3) != -1)
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    if (!EnvArgTypeCheck(a1, "sub-string", 1, 1, &v18))
    {
      return EnvAddSymbol(a1, "");
    }

    v2 = WORD4(v18) == 1 ? *(v19 + 24) : *(v19 + 24);
    v4 = v2 < 1 ? 0 : v2 - 1;
    if (!EnvArgTypeCheck(a1, "sub-string", 2, 1, &v18))
    {
      return EnvAddSymbol(a1, "");
    }

    if (WORD4(v18) == 1)
    {
      v5 = *(v19 + 24);
      if (v5 < 1)
      {
        return EnvAddSymbol(a1, "");
      }
    }

    else
    {
      v5 = *(v19 + 24);
      if (v5 <= 0)
      {
        return EnvAddSymbol(a1, "");
      }
    }

    if (EnvArgTypeCheck(a1, "sub-string", 3, 181, &v18))
    {
      v6 = v5 - 1;
      v7 = *(v19 + 24);
      v8 = UTF8Length(v7);
      v9 = v6 >= v8 ? v8 : v6;
      if (v8 && v4 <= v9)
      {
        v10 = UTF8Offset(v7, v4);
        v11 = UTF8Offset(v7, v9 + 1);
        v12 = v11 - 1;
        v13 = (v11 - v10 + 1);
        v14 = gm2(a1, v13);
        v15 = v14;
        if (v10 <= v12)
        {
          v16 = 0;
          do
          {
            v14[v16] = v7[v10 + v16];
            ++v16;
          }

          while (v10 + v16 <= v12);
        }

        else
        {
          v16 = 0;
        }

        v14[v16] = 0;
        v17 = EnvAddSymbol(a1, v14);
        rm(a1, v15, v13);
        return v17;
      }
    }

    return EnvAddSymbol(a1, "");
  }

  return EnvAddSymbol(a1, "");
}

_BYTE *StrIndexFunction(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 2;
  *(a2 + 16) = EnvFalseSymbol(a1);
  result = EnvArgCountCheck(a1, "str-index", 0, 2);
  if (result != -1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    result = EnvArgTypeCheck(a1, "str-index", 1, 181, &v17);
    if (result)
    {
      result = EnvArgTypeCheck(a1, "str-index", 2, 181, &v14);
      if (result)
      {
        v5 = *(v18 + 24);
        result = *(v15 + 24);
        v6 = *v5;
        if (*v5)
        {
          if (*result)
          {
            v7 = v5 + 1;
            v8 = 1;
            v9 = *(v15 + 24);
            do
            {
              v10 = 0;
              v11 = v6;
              while (v11 == *(v9 + v10))
              {
                v11 = v7[v10++];
                if (!v11)
                {
                  *(a2 + 8) = 1;
                  v13 = UTF8CharNum(result, v8);
                  goto LABEL_14;
                }
              }

              ++v8;
            }

            while (*++v9);
          }
        }

        else
        {
          *(a2 + 8) = 1;
          v13 = UTF8Length(result) + 1;
LABEL_14:
          result = EnvAddLong(a1, v13);
          *(a2 + 16) = result;
        }
      }
    }
  }

  return result;
}

uint64_t EvalFunction(uint64_t a1, uint64_t a2)
{
  if (EnvArgCountCheck(a1, "eval", 0, 1) != -1)
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    if (EnvArgTypeCheck(a1, "eval", 1, 181, &v10))
    {
      return EnvEval(a1, *(v11 + 24), a2, v4, v5, v6, v7, v8);
    }
  }

  *(a2 + 8) = 2;
  result = EnvFalseSymbol(a1);
  *(a2 + 16) = result;
  return result;
}

uint64_t BuildFunction(void *a1)
{
  if (EnvArgCountCheck(a1, "build", 0, 1) == -1)
  {
    return 0;
  }

  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  result = EnvArgTypeCheck(a1, "build", 1, 181, &v3);
  if (result)
  {
    return EnvBuild(a1, *(v4 + 24));
  }

  return result;
}

uint64_t *StringToFieldFunction(uint64_t a1, uint64_t a2)
{
  if (EnvArgCountCheck(a1, "string-to-field", 0, 1) != -1)
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    if (EnvArgTypeCheck(a1, "string-to-field", 1, 181, &v5))
    {
      return StringToField(a1, *(v6 + 24), a2);
    }
  }

  *(a2 + 8) = 3;
  result = EnvAddSymbol(a1, "*** ERROR ***");
  *(a2 + 16) = result;
  return result;
}

uint64_t StrOrSymCatFunction(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 8) = a3;
  if (a3 == 3)
  {
    v5 = "";
  }

  else
  {
    v5 = "nil";
  }

  if (a3 == 3)
  {
    v6 = "str-cat";
  }

  else
  {
    v6 = "sym-cat";
  }

  *(a2 + 16) = EnvAddSymbol(a1, v5);
  result = EnvRtnArgCount(a1);
  if (result)
  {
    v8 = result;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    v9 = gm1(a1, 8 * result);
    v10 = v9;
    v11 = v8;
    if (v8 > 0)
    {
      v44 = 8 * v8;
      bzero(v9, v44);
      v12 = 0;
      v13 = 1;
      while (1)
      {
        EnvRtnUnknown(a1, v12 + 1, &v46);
        if (WORD4(v46) - 2 < 2)
        {
          v23 = v47;
          v10[v12] = v47;
          ++*(v23 + 8);
          goto LABEL_18;
        }

        if (!WORD4(v46))
        {
          break;
        }

        if (WORD4(v46) == 1)
        {
          v22 = LongIntegerToString(a1, *(v47 + 24), v15, v16, v17, v18, v19, v20);
LABEL_16:
          v24 = EnvAddSymbol(a1, v22);
          v10[v12] = v24;
          ++v24[1];
          goto LABEL_18;
        }

        ExpectedTypeError1(a1, v6, v12 + 1, "string, instance name, symbol, float, or integer");
        SetEvaluationError(a1, 1);
LABEL_18:
        if (*(*(*(a1 + 48) + 352) + 8))
        {
          v41 = 0;
          v42 = 8 * v8;
          do
          {
            v43 = v10[v41 / 8];
            if (v43)
            {
              DecrementSymbolCount(a1, v43);
            }

            v41 += 8;
          }

          while (v42 != v41);
          v39 = a1;
          v40 = v10;
          v38 = v44;
          return rm(v39, v40, v38);
        }

        v13 += strlen(*(v10[v12++] + 24));
        if ((v8 + 1) - 1 == v12)
        {
          v45 = v13;
          v31 = gm2(a1, v13);
          v32 = 0;
          v33 = v8;
          v34 = v10;
          do
          {
            gensprintf(&v31[v32], "%s", v25, v26, v27, v28, v29, v30, *(*v34 + 24));
            v35 = *v34++;
            v32 += strlen(*(v35 + 24));
            --v33;
          }

          while (v33);
          v36 = v45;
          goto LABEL_24;
        }
      }

      v21.n128_u64[0] = *(v47 + 24);
      v22 = FloatToString(a1, v21, v14, v15, v16, v17, v18, v19, v20);
      goto LABEL_16;
    }

    v36 = 1;
    v31 = gm2(a1, 1uLL);
LABEL_24:
    *(a2 + 16) = EnvAddSymbol(a1, v31);
    rm(a1, v31, v36);
    if (v8 >= 1)
    {
      v37 = v10;
      do
      {
        if (*v37)
        {
          DecrementSymbolCount(a1, *v37);
        }

        ++v37;
        --v11;
      }

      while (v11);
    }

    v38 = 8 * v8;
    v39 = a1;
    v40 = v10;
    return rm(v39, v40, v38);
  }

  return result;
}

uint64_t *StringToField(uint64_t a1, char *__s, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  __s1 = 0;
  OpenStringSource(a1, "string-to-field-str", __s, 0);
  GetToken(a1, "string-to-field-str", &v8);
  CloseStringSource(a1, "string-to-field-str");
  v5 = v8;
  *(a3 + 8) = v8;
  if (v5 >= 4)
  {
    if (v5 == 172)
    {
      *(a3 + 8) = 2;
      v7 = "EOF";
    }

    else
    {
      *(a3 + 8) = 3;
      if (v5 == 173)
      {
        v7 = "*** ERROR ***";
      }

      else
      {
        v7 = __s1;
      }
    }

    result = EnvAddSymbol(a1, v7);
  }

  else
  {
    result = v9;
  }

  *(a3 + 16) = result;
  return result;
}

BOOL EnvEval(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  gensprintf(v22, "Eval-%d", a3, a4, a5, a6, a7, a8, ++EnvEval_depth);
  if (OpenStringSource(a1, v22, a2, 0))
  {
    PPBufferStatus = GetPPBufferStatus(a1);
    SetPPBufferStatus(a1, 0);
    ParsedBindNames = GetParsedBindNames(a1);
    SetParsedBindNames(a1, 0);
    v13 = *(*(*(a1 + 48) + 336) + 20);
    v14 = ParseAtomOrExpression(a1, v22, 0);
    SetPPBufferStatus(a1, PPBufferStatus);
    ClearParsedBindNames(a1);
    SetParsedBindNames(a1, ParsedBindNames);
    if (!v14)
    {
      SetEvaluationError(a1, 1);
      CloseStringSource(a1, v22);
      *(a3 + 8) = 2;
      v18 = EnvFalseSymbol(a1);
      result = 0;
      *(a3 + 16) = v18;
LABEL_11:
      --EnvEval_depth;
      *(*(*(a1 + 48) + 336) + 20) = v13;
      goto LABEL_12;
    }

    v15 = *v14;
    if (v15 == 36 || v15 == 34)
    {
      PrintErrorID(a1, "MISCFUN", 1, 0);
      EnvPrintRouter(a1, "werror", "expand$ must be used in the argument list of a function call.\n");
      SetEvaluationError(a1, 1);
      CloseStringSource(a1, v22);
      *(a3 + 8) = 2;
LABEL_10:
      *(a3 + 16) = EnvFalseSymbol(a1);
      ReturnExpression(a1, v14);
      result = 0;
      goto LABEL_11;
    }

    if (ExpressionContainsVariables(v14, 0))
    {
      PrintErrorID(a1, "STRNGFUN", 2, 0);
      EnvPrintRouter(a1, "werror", "Some variables could not be accessed by the eval function.\n");
      SetEvaluationError(a1, 1);
      CloseStringSource(a1, v22);
      *(a3 + 8) = 2;
      goto LABEL_10;
    }

    ExpressionInstall(a1, v14);
    EvaluateExpression(a1, v14, a3);
    ExpressionDeinstall(a1, v14);
    --EnvEval_depth;
    ReturnExpression(a1, v14);
    CloseStringSource(a1, v22);
    v20 = *(a1 + 48);
    if (!**(v20 + 320) && !**(v20 + 352))
    {
      *(*(v20 + 336) + 20) = v13;
      v21 = *(v20 + 440);
      if (*(*(v21 + 112) + 2))
      {
        if (!*(v21 + 16))
        {
          CleanCurrentGarbageFrame(a1, a3);
          CallPeriodicTasks(a1);
        }
      }
    }

    result = GetEvaluationError(a1) == 0;
  }

  else
  {
    *(a3 + 8) = 2;
    v16 = EnvFalseSymbol(a1);
    result = 0;
    *(a3 + 16) = v16;
    --EnvEval_depth;
  }

LABEL_12:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EnvBuild(void *a1, char *__s)
{
  if (*(*(a1[6] + 144) + 92))
  {
    return 0;
  }

  result = OpenStringSource(a1, "build", __s, 0);
  if (!result)
  {
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  GetToken(a1, "build", &v8);
  if (v8 != 170 || (GetToken(a1, "build", &v8), v8 != 2))
  {
    CloseStringSource(a1, "build");
    return 0;
  }

  v4 = ParseConstruct(a1, *(v9 + 24), "build");
  CloseStringSource(a1, "build");
  if (v4 == 1)
  {
    EnvPrintRouter(a1, "werror", "\nERROR:\n");
    PPBuffer = GetPPBuffer(a1);
    PrintInChunks(a1, "werror", PPBuffer);
    EnvPrintRouter(a1, "werror", "\n");
  }

  DestroyPPBuffer(a1);
  v6 = a1[6];
  v7 = *(v6 + 440);
  if (*(*(v7 + 112) + 2) && !**(v6 + 320) && !**(v6 + 352) && !*(v7 + 16))
  {
    CleanCurrentGarbageFrame(a1, 0);
    CallPeriodicTasks(a1);
  }

  return v4 == 0;
}

uint64_t SequenceRestrictionParse(char *a1, char *a2, unsigned __int16 *a3)
{
  GetLHSParseNode(a1);
  v7 = v6;
  *v6 = 37;
  *(v6 + 16) &= 0xFFFFFFFC;
  *(v6 + 58) = -1;
  *(v6 + 72) = 1;
  GetLHSParseNode(a1);
  *(v7 + 200) = v8;
  *v8 = 2;
  *(v8 + 16) &= ~1u;
  *(*(v7 + 200) + 16) &= ~2u;
  *(*(v7 + 200) + 8) = *(a3 + 1);
  SavePPBuffer(a1, " ");
  GetToken(a1, a2, a3);
  if (*a3 - 161 <= 1)
  {
    ReturnLHSParseNodes(a1, v7);
    SyntaxErrorMessage(a1, "the first field of a pattern");
    return 0;
  }

  v9 = RestrictionParse(a1, a2, a3, 1, 0, 1u, 0, 1);
  if (!v9)
  {
LABEL_8:
    ReturnLHSParseNodes(a1, v7);
    return 0;
  }

  *(v7 + 192) = v9;
  if (*a3 != 171)
  {
    PPBackup(a1);
    SavePPBuffer(a1, " ");
    SavePPBuffer(a1, *(a3 + 2));
    SyntaxErrorMessage(a1, "fact patterns");
    goto LABEL_8;
  }

  if (!*(v9 + 25))
  {
    PPBackup(a1);
    PPBackup(a1);
    SavePPBuffer(a1, ")");
  }

  return v7;
}

_WORD *CreateInitialFactPattern(uint64_t a1)
{
  v9 = 0;
  if (!FindImportedConstruct(a1, "deftemplate", 0, "initial-fact", &v9, 1, 0))
  {
    PrintWarningID(a1, "FACTLHS", 1, 0);
    EnvPrintRouter(a1, "wwarning", "Creating implied initial-fact deftemplate in module ");
    CurrentModule = EnvGetCurrentModule(a1);
    ConstructNameString = EnvGetConstructNameString(a1, CurrentModule);
    EnvPrintRouter(a1, "wwarning", ConstructNameString);
    EnvPrintRouter(a1, "wwarning", ".\n");
    EnvPrintRouter(a1, "wwarning", "  You probably want to import this deftemplate from the MAIN module.\n");
    v4 = EnvAddSymbol(a1, "initial-fact");
    CreateImpliedDeftemplate(a1, v4, 0);
  }

  GetLHSParseNode(a1);
  v6 = v5;
  *v5 = 37;
  v5[29] = 0;
  v5[36] = 1;
  GetLHSParseNode(a1);
  *(v6 + 25) = v7;
  *v7 = 2;
  *(*(v6 + 25) + 8) = EnvAddSymbol(a1, "initial-fact");
  return v6;
}

uint64_t FactPatternParse(uint64_t a1, char *a2, uint64_t a3)
{
  if (FindModuleSeparator(*(*(a3 + 8) + 24)))
  {
    IllegalModuleSpecifierMessage(a1);
    return 0;
  }

  v10 = 0;
  ImportedConstruct = FindImportedConstruct(a1, "deftemplate", 0, *(*(a3 + 8) + 24), &v10, 1, 0);
  if (v10 >= 2)
  {
    AmbiguousReferenceErrorMessage(a1, "deftemplate", *(*(a3 + 8) + 24));
    return 0;
  }

  ImpliedDeftemplate = ImportedConstruct;
  if (!ImportedConstruct)
  {
    CurrentModule = EnvGetCurrentModule(a1);
    if (FindImportExportConflict(a1, "deftemplate", CurrentModule, *(*(a3 + 8) + 24)))
    {
      ImportExportConflictMessage(a1, "implied deftemplate", *(*(a3 + 8) + 24), 0, 0);
      return 0;
    }

    if (*(*(*(a1 + 48) + 336) + 40))
    {
      return SequenceRestrictionParse(a1, a2, a3);
    }

    ImpliedDeftemplate = CreateImpliedDeftemplate(a1, *(a3 + 8), 1);
    if (!ImpliedDeftemplate)
    {
      return SequenceRestrictionParse(a1, a2, a3);
    }
  }

  if (ImpliedDeftemplate[7])
  {
    return SequenceRestrictionParse(a1, a2, a3);
  }

  else
  {
    return DeftemplateLHSParse(a1, a2, ImpliedDeftemplate);
  }
}

uint64_t FindModuleSeparator(uint64_t a1)
{
  result = 0;
  v3 = 0;
  while (*(a1 + result) == 58)
  {
    if (v3)
    {
      return result;
    }

    v3 = 1;
LABEL_7:
    result = (result + 1);
  }

  if (*(a1 + result))
  {
    v3 = 0;
    goto LABEL_7;
  }

  return 0;
}

uint64_t *ExtractModuleName(uint64_t a1, unsigned int a2, const char *a3)
{
  if (a2 < 2)
  {
    return 0;
  }

  v7 = a2;
  v8 = gm2(a1, a2);
  genstrncpy(v8, a3, v7 - 1);
  v8[a2 - 1] = 0;
  v9 = EnvAddSymbol(a1, v8);
  rm(a1, v8, v7);
  return v9;
}

uint64_t *ExtractConstructName(uint64_t a1, unsigned int a2, char *__s1)
{
  if (a2)
  {
    v6 = strlen(__s1);
    v7 = a2 + 1;
    if (v6 <= v7)
    {
      return 0;
    }

    else
    {
      v8 = v6 - a2;
      v9 = gm2(a1, v8);
      genstrncpy(v9, &__s1[v7], v8);
      v10 = EnvAddSymbol(a1, v9);
      rm(a1, v9, v8);
      return v10;
    }
  }

  else
  {

    return EnvAddSymbol(a1, __s1);
  }
}

char *ExtractModuleAndConstructName(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = 0;
  v5 = 0;
  while (a2[v4] != 58)
  {
    if (!a2[v4])
    {
      return v2;
    }

    v5 = 0;
LABEL_7:
    ++v4;
  }

  if (!v5)
  {
    v5 = 1;
    goto LABEL_7;
  }

  if (v4)
  {
    ModuleName = ExtractModuleName(a1, v4, a2);
    if (ModuleName && (Defmodule = EnvFindDefmodule(a1, ModuleName[3])) != 0 && (EnvSetCurrentModule(a1, Defmodule), (ConstructName = ExtractConstructName(a1, v4, v2)) != 0))
    {
      return ConstructName[3];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t FindImportedConstruct(uint64_t a1, char *a2, uint64_t a3, char *a4, _DWORD *a5, int a6, uint64_t a7)
{
  v14 = 0;
  v15 = 0;
  *a5 = 0;
  while (a4[v14] != 58)
  {
    if (!a4[v14])
    {
      goto LABEL_10;
    }

    v15 = 0;
LABEL_7:
    ++v14;
  }

  if (!v15)
  {
    v15 = 1;
    goto LABEL_7;
  }

  if (v14)
  {
    return 0;
  }

LABEL_10:
  SaveCurrentModule(a1);
  ModuleItem = FindModuleItem(a1, a2);
  if (ModuleItem && (v18 = ModuleItem, *(ModuleItem + 48)))
  {
    MarkModulesAsUnvisited(a1);
    v19 = EnvAddSymbol(a1, a2);
    v20 = EnvAddSymbol(a1, a4);
    v16 = SearchImportedConstructModules(a1, v19, a3, v18, v20, a5, a6, a7);
  }

  else
  {
    v16 = 0;
  }

  RestoreCurrentModule(a1);
  return v16;
}

uint64_t MarkModulesAsUnvisited(uint64_t a1)
{
  *(*(*(*(a1 + 48) + 32) + 40) + 40) = 0;
  result = EnvGetNextDefmodule(a1, 0);
  if (result)
  {
    v3 = result;
    do
    {
      *(v3 + 40) = 0;
      result = EnvGetNextDefmodule(a1, v3);
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t SearchImportedConstructModules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, int a7, uint64_t a8)
{
  CurrentModule = EnvGetCurrentModule(a1);
  if (*(CurrentModule + 40))
  {
    return 0;
  }

  v18 = CurrentModule;
  if (a7 && (!a3 || CurrentModule == a3))
  {
    v33 = (*(a4 + 48))(a1, *(a5 + 24));
    v17 = v33;
    if (v18 == a8 || v33 && **(v33 + 16) == v18)
    {
      ++*a6;
    }
  }

  else
  {
    v17 = 0;
  }

  *(v18 + 40) = 1;
  for (i = *(EnvGetCurrentModule(a1) + 24); i; i = i[3])
  {
    v20 = i[1];
    if (v20)
    {
      v21 = v20 == a2;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = i[2];
      if (!v22 || v22 == a5)
      {
        Defmodule = EnvFindDefmodule(a1, *(*i + 24));
        if (Defmodule)
        {
          v25 = Defmodule[4];
          if (v25)
          {
            do
            {
              while (1)
              {
                v26 = v25[1];
                if (!v26 || v26 == a2)
                {
                  break;
                }

                v25 = v25[3];
                if (!v25)
                {
                  goto LABEL_39;
                }
              }

              v28 = v25[2];
              v25 = v25[3];
              if (v28)
              {
                v29 = v28 == a5;
              }

              else
              {
                v29 = 1;
              }

              v30 = !v29;
            }

            while (v25 && (v30 & 1) != 0);
            if ((v30 & 1) == 0)
            {
              EnvSetCurrentModule(a1, Defmodule);
              v31 = SearchImportedConstructModules(a1, a2, a3, a4, a5, a6, 1, a8);
              if (v31)
              {
                v17 = v31;
              }
            }
          }
        }
      }
    }

LABEL_39:
    ;
  }

  return v17;
}

uint64_t AmbiguousReferenceErrorMessage(uint64_t a1, char *a2, char *a3)
{
  EnvPrintRouter(a1, "werror", "Ambiguous reference to ");
  EnvPrintRouter(a1, "werror", a2);
  EnvPrintRouter(a1, "werror", " ");
  EnvPrintRouter(a1, "werror", a3);

  return EnvPrintRouter(a1, "werror", ".\nIt is imported from more than one module.\n");
}

uint64_t ConstructExported(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  SymbolHN = FindSymbolHN(a1, a2);
  Defmodule = EnvFindDefmodule(a1, *(a3 + 24));
  result = 0;
  if (a4 && SymbolHN && Defmodule)
  {
    v10 = Defmodule[4];
    if (v10)
    {
      while (1)
      {
        v11 = v10[1];
        if (!v11 || v11 == SymbolHN)
        {
          v13 = v10[2];
          if (!v13 || v13 == a4)
          {
            break;
          }
        }

        v10 = v10[3];
        if (!v10)
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

uint64_t AllImportedModulesVisited(uint64_t a1, void *a2)
{
  while (1)
  {
    a2 = a2[3];
    if (!a2)
    {
      break;
    }

    if (!*(EnvFindDefmodule(a1, *(*a2 + 24)) + 10))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ListItemsDriver(uint64_t a1, FILE *a2, uint64_t a3, char *a4, char *a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t), void (*a8)(uint64_t, FILE *, uint64_t), unsigned int (*a9)(uint64_t, uint64_t))
{
  SaveCurrentModule(a1);
  NextDefmodule = a3;
  if (a3 || (NextDefmodule = EnvGetNextDefmodule(a1, 0)) != 0)
  {
    v15 = 0;
    while (1)
    {
      if (!a3)
      {
        ConstructNameString = EnvGetConstructNameString(a1, NextDefmodule);
        EnvPrintRouter(a1, a2, ConstructNameString);
        EnvPrintRouter(a1, a2, ":\n");
      }

      EnvSetCurrentModule(a1, NextDefmodule);
      result = a6(a1, 0);
      if (result)
      {
        break;
      }

LABEL_22:
      if (!a3)
      {
        NextDefmodule = EnvGetNextDefmodule(a1, NextDefmodule);
        if (NextDefmodule)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    v18 = result;
    while (1)
    {
      if (*(*(*(a1 + 48) + 352) + 12) == 1)
      {
        return result;
      }

      if (!a9 || a9(a1, v18))
      {
        if (a7)
        {
          v19 = a7(v18);
          if (v19)
          {
            v20 = v19;
            if (!a3)
            {
              EnvPrintRouter(a1, a2, "   ");
            }

            EnvPrintRouter(a1, a2, v20);
LABEL_20:
            EnvPrintRouter(a1, a2, "\n");
          }
        }

        else if (a8)
        {
          if (!a3)
          {
            EnvPrintRouter(a1, a2, "   ");
          }

          a8(a1, a2, v18);
          goto LABEL_20;
        }
      }

      result = a6(a1, v18);
      v18 = result;
      ++v15;
      if (!result)
      {
        goto LABEL_22;
      }
    }
  }

  v15 = 0;
LABEL_27:
  if (a4)
  {
    PrintTally(a1, a2, v15, a4, a5);
  }

  return RestoreCurrentModule(a1);
}

uint64_t DoForAllModules(uint64_t a1, void (*a2)(uint64_t, uint64_t), int a3, uint64_t a4)
{
  SaveCurrentModule(a1);
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v9 = NextDefmodule;
    v10 = 0;
    while (1)
    {
      EnvSetCurrentModule(a1, v9);
      if (a3)
      {
        if (GetHaltExecution(a1))
        {
          break;
        }
      }

      a2(v9, a4);
      v9 = EnvGetNextDefmodule(a1, v9);
      ++v10;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  RestoreCurrentModule(a1);
  return v10;
}

double timeIntervalFromMachAbsoluteTime(unint64_t a1, double a2, double a3, double a4)
{
  if (getMachTimeBaseInfo_onceToken != -1)
  {
    timeIntervalFromMachAbsoluteTime_cold_1();
  }

  LODWORD(a4) = HIDWORD(getMachTimeBaseInfo_machTimeInfoData);
  LODWORD(a3) = getMachTimeBaseInfo_machTimeInfoData;
  return *&a3 / *&a4 * a1 / 1000000000.0;
}

unint64_t nanosecondsFromMachAbsoluteTime(uint64_t a1)
{
  if (getMachTimeBaseInfo_onceToken != -1)
  {
    timeIntervalFromMachAbsoluteTime_cold_1();
  }

  return getMachTimeBaseInfo_machTimeInfoData * a1 / HIDWORD(getMachTimeBaseInfo_machTimeInfoData);
}

unint64_t microsecondsFromMachAbsoluteTime(uint64_t a1)
{
  if (getMachTimeBaseInfo_onceToken != -1)
  {
    timeIntervalFromMachAbsoluteTime_cold_1();
  }

  return getMachTimeBaseInfo_machTimeInfoData * a1 / HIDWORD(getMachTimeBaseInfo_machTimeInfoData) / 0x3E8;
}

unint64_t millisecondsFromMachAbsoluteTime(uint64_t a1)
{
  if (getMachTimeBaseInfo_onceToken != -1)
  {
    timeIntervalFromMachAbsoluteTime_cold_1();
  }

  return getMachTimeBaseInfo_machTimeInfoData * a1 / HIDWORD(getMachTimeBaseInfo_machTimeInfoData) / 0xF4240;
}

unint64_t secondsFromMachAbsoluteTime(uint64_t a1)
{
  if (getMachTimeBaseInfo_onceToken != -1)
  {
    timeIntervalFromMachAbsoluteTime_cold_1();
  }

  return getMachTimeBaseInfo_machTimeInfoData * a1 / HIDWORD(getMachTimeBaseInfo_machTimeInfoData) / 0x3B9ACA00;
}

uint64_t machAbsoluteTime_secs()
{
  if (getMachTimeBaseInfo_onceToken != -1)
  {
    timeIntervalFromMachAbsoluteTime_cold_1();
  }

  return mach_absolute_time() * getMachTimeBaseInfo_machTimeInfoData / HIDWORD(getMachTimeBaseInfo_machTimeInfoData) / 0x3B9ACA00;
}

uint64_t machContinuousTime_secs()
{
  if (getMachTimeBaseInfo_onceToken != -1)
  {
    timeIntervalFromMachAbsoluteTime_cold_1();
  }

  return mach_continuous_time() * getMachTimeBaseInfo_machTimeInfoData / HIDWORD(getMachTimeBaseInfo_machTimeInfoData) / 0x3B9ACA00;
}

double __getMachTimeBaseInfo_block_invoke()
{
  if (mach_timebase_info(&getMachTimeBaseInfo_machTimeInfoData))
  {
    _os_assumes_log();
  }

  else if (HIDWORD(getMachTimeBaseInfo_machTimeInfoData))
  {
    return result;
  }

  *&result = 0x100000001;
  getMachTimeBaseInfo_machTimeInfoData = 0x100000001;
  return result;
}

uint64_t IncrementalReset(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  v3 = *(v2 + 144);
  if (*(v3 + 88))
  {
    v4 = a2;
    v5 = result;
    if (a2)
    {
      v6 = a2;
      do
      {
        result = MarkJoinsForIncrementalReset(v5, *(v6 + 88), 1);
        v6 = *(v6 + 96);
      }

      while (v6);
      v2 = *(v5 + 48);
      *(*(v2 + 144) + 84) = 1;
      if (v4)
      {
        v7 = v4;
        do
        {
          result = CheckForPrimableJoins(v5, *(v7 + 88));
          v7 = *(v7 + 96);
        }

        while (v7);
        v2 = *(v5 + 48);
      }
    }

    else
    {
      *(v3 + 84) = 1;
    }

    v8 = **(v2 + 152);
    if (v8)
    {
      do
      {
        v9 = *(v8 + 152);
        if (v9)
        {
          result = v9(v5);
        }

        v8 = *(v8 + 184);
      }

      while (v8);
      v2 = *(v5 + 48);
    }

    for (*(*(v2 + 144) + 84) = 0; v4; v4 = *(v4 + 96))
    {
      result = MarkJoinsForIncrementalReset(v5, *(v4 + 88), 0);
    }
  }

  return result;
}

uint64_t CheckForPrimableJoins(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *v2;
      if ((*v2 & 0x60) == 0x20)
      {
        if (v4)
        {
          if ((v4 & 4) != 0)
          {
            goto LABEL_14;
          }

          if ((v4 & 8) != 0 || (v5 = *(v2 + 104)) == 0 || (*(v5 + 32) & 8) == 0)
          {
LABEL_6:
            result = PrimeJoinFromLeftMemory(v3, v2);
LABEL_15:
            v4 = *v2 | 0x40;
            *v2 = v4;
          }
        }

        else
        {
          if ((**(v2 + 120) & 0x20) == 0)
          {
            goto LABEL_6;
          }

          if ((v4 & 4) != 0 && (**(v2 + 104) & 0x20) == 0)
          {
LABEL_14:
            result = PrimeJoinFromRightMemory(v3, v2);
            goto LABEL_15;
          }
        }
      }

      if ((v4 & 4) != 0)
      {
        result = CheckForPrimableJoins(v3, *(v2 + 104));
      }

      v2 = *(v2 + 120);
    }

    while (v2);
  }

  return result;
}

uint64_t EnvSetIncrementalReset(uint64_t a1, int a2)
{
  SaveCurrentModule(a1);
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    while (1)
    {
      EnvSetCurrentModule(a1, v5);
      if (EnvGetNextDefrule(a1, 0))
      {
        break;
      }

      v5 = EnvGetNextDefmodule(a1, v5);
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    RestoreCurrentModule(a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
LABEL_5:
    RestoreCurrentModule(a1);
    v6 = *(*(a1 + 48) + 144);
    result = *(v6 + 88);
    *(v6 + 88) = a2;
  }

  return result;
}

uint64_t SetIncrementalResetCommand(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 144) + 88);
  if (EnvArgCountCheck(a1, "set-incremental-reset", 0, 1) != -1)
  {
    SaveCurrentModule(a1);
    NextDefmodule = EnvGetNextDefmodule(a1, 0);
    if (NextDefmodule)
    {
      v4 = NextDefmodule;
      while (1)
      {
        EnvSetCurrentModule(a1, v4);
        if (EnvGetNextDefrule(a1, 0))
        {
          break;
        }

        v4 = EnvGetNextDefmodule(a1, v4);
        if (!v4)
        {
          goto LABEL_6;
        }
      }

      RestoreCurrentModule(a1);
      PrintErrorID(a1, "INCRRSET", 1, 0);
      EnvPrintRouter(a1, "werror", "The incremental reset behavior cannot be changed with rules loaded.\n");
      SetEvaluationError(a1, 1);
    }

    else
    {
LABEL_6:
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
      RestoreCurrentModule(a1);
      EnvRtnUnknown(a1, 1, &v9);
      v5 = v10;
      if (v5 == EnvFalseSymbol(a1) && WORD4(v9) == 2)
      {
        v6 = a1;
        v7 = 0;
      }

      else
      {
        v6 = a1;
        v7 = 1;
      }

      EnvSetIncrementalReset(v6, v7);
    }
  }

  return v2;
}

uint64_t GetIncrementalResetCommand(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 144) + 88);
  EnvArgCountCheck(a1, "get-incremental-reset", 0, 0);
  return v1;
}

uint64_t MarkJoinsForIncrementalReset(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    v6 = 32 * (a3 & 1);
    do
    {
      v7 = *v4;
      if (*(v4 + 17))
      {
        *v4 = v7 & 0xFFFFFF9F | v6;
      }

      else
      {
        if ((v7 & 4) != 0)
        {
          result = MarkJoinsForIncrementalReset(v5, *(v4 + 13), a3);
          v7 = *v4;
        }

        *v4 = v7 & 0xFFFFFFBF;
        if ((v7 & 0x20) != 0)
        {
          *v4 = v7 & 0xFFFFFF9F | v6;
          if ((v7 & 4) == 0)
          {
            v8 = *(v4 + 13);
            if (v8)
            {
              result = GetPatternParser(v5, (v7 >> 7) & 7);
              if (result)
              {
                v9 = *(result + 144);
                if (v9)
                {
                  result = v9(v5, v8, a3);
                }
              }
            }
          }
        }
      }

      v4 = *(v4 + 15);
    }

    while (v4);
  }

  return result;
}

void *PrimeJoinFromLeftMemory(void *result, uint64_t a2)
{
  v3 = result;
  if (*a2)
  {
    v6 = *(a2 + 104);
    if (v6)
    {
      if ((*a2 & 8) != 0)
      {
        v10 = **(*(a2 + 56) + 16);
        if (*(a2 + 80))
        {
          result = EvaluateSecondaryNetworkTest(result, **(*(a2 + 56) + 16), a2);
          if (!result)
          {
            return result;
          }

          v6 = *(a2 + 104);
        }

        v11 = *v6;
        if (v11)
        {
          while (1)
          {
            v12 = *(v11 + 16);
            if (v12)
            {
              break;
            }

            v11 = *(v11 + 32);
            if (!v11)
            {
              goto LABEL_23;
            }
          }

          return AddBlockedLink(v10, v12);
        }

        else
        {
LABEL_23:

          return EPMDrive(v3, v10, a2, 0);
        }
      }

      else
      {
        for (i = *v6; i; i = *(i + 32))
        {
          for (j = *(i + 16); j; j = *(j + 40))
          {
            result = NetworkAssert(v3, j, a2);
          }
        }
      }
    }

    else
    {
      v9 = **(*(a2 + 64) + 16);

      return NetworkAssert(result, v9, a2);
    }
  }

  else
  {
    v4 = *(*(a2 + 120) + 112);
    if (v4)
    {
      while (1)
      {
        v5 = *(v4 + 8);
        if (v5 != a2 && (*v5 & 0x20) == 0)
        {
          break;
        }

        v4 = *(v4 + 16);
        if (!v4)
        {
          return result;
        }
      }

      v13 = *v4 == 0;
      v14 = 64;
      if (v13)
      {
        v14 = 56;
      }

      v15 = *&v5[v14];
      v16 = *v15;
      if (*v15)
      {
        v17 = 0;
        do
        {
          v18 = *(v15[2] + 8 * v17);
          if (v18)
          {
            do
            {
              v19 = CopyPartialMatch(v3, v18);
              v20 = *(a2 + 88);
              if (v20)
              {
                v21 = BetaMemoryHashValue(v3, v20, v19, 0, a2);
              }

              else
              {
                v21 = 0;
              }

              UpdateBetaPMLinks(v3, v19, v18[11], v18[8], a2, v21, 0);
              result = NetworkAssertLeft(v3, v19, a2, 0);
              v18 = v18[5];
            }

            while (v18);
            v16 = *v15;
          }

          ++v17;
        }

        while (v17 < v16);
      }
    }
  }

  return result;
}

uint64_t PrimeJoinFromRightMemory(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  if ((*a2 & 4) != 0)
  {
    v4 = result;
    v5 = *(*(a2 + 104) + 112);
    if (v5)
    {
      while (1)
      {
        v6 = *(v5 + 8);
        if (v6 != a2 && (*v6 & 0x20) == 0)
        {
          break;
        }

        v5 = *(v5 + 16);
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      v7 = *v5 == 0;
      v8 = 64;
      if (v7)
      {
        v8 = 56;
      }

      v9 = *&v6[v8];
      v10 = *v9;
      if (*v9)
      {
        v11 = 0;
        do
        {
          v12 = *(v9[2] + 8 * v11);
          if (v12)
          {
            do
            {
              v13 = CopyPartialMatch(v4, v12);
              v14 = *(a2 + 96);
              if (v14)
              {
                v15 = BetaMemoryHashValue(v4, v14, v13, 0, a2);
              }

              else
              {
                v15 = 0;
              }

              UpdateBetaPMLinks(v4, v13, v12[11], v12[8], a2, v15, 1);
              result = NetworkAssert(v4, v13, a2);
              v12 = v12[5];
            }

            while (v12);
            v10 = *v9;
          }

          ++v11;
        }

        while (v11 < v10);
        v2 = *a2;
      }
    }

LABEL_19:
    if ((v2 & 1) != 0 && (v2 & 0x10) == 0 && !**(*(a2 + 64) + 16))
    {
      v16 = **(*(a2 + 56) + 16);
      if (!*(a2 + 80) || (result = EvaluateSecondaryNetworkTest(v4, **(*(a2 + 56) + 16), a2), result))
      {

        return EPMDrive(v4, v16, a2, 0);
      }
    }
  }

  return result;
}

BOOL CheckCardinalityConstraint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a3)
  {
    v3 = *(a3 + 40);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4 != *(*(*(a1 + 48) + 392) + 24) && *(v4 + 24) > a2)
      {
        return 0;
      }
    }

    v5 = *(a3 + 48);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6 != *(*(*(a1 + 48) + 392) + 16) && *(v6 + 24) < a2)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CheckAllowedValuesConstraint(int a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = 1;
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 != 2)
      {
        return v3;
      }

      if ((*(a3 + 1) & 0xC) == 0)
      {
        return 1;
      }

      goto LABEL_14;
    }

    v4 = *(a3 + 1);
    v5 = 20;
    goto LABEL_13;
  }

  if (!a1)
  {
    v4 = *(a3 + 1);
    v5 = 36;
LABEL_13:
    if ((v4 & v5) == 0)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (a1 != 1)
  {
    return v3;
  }

  if ((*(a3 + 1) & 0x44) == 0)
  {
    return 1;
  }

LABEL_14:
  v3 = *(a3 + 16);
  if (v3)
  {
    while (*v3 != a1 || *(v3 + 8) != a2)
    {
      v3 = *(v3 + 24);
      if (!v3)
      {
        return v3;
      }
    }

    return 1;
  }

  return v3;
}

uint64_t ConstraintViolationErrorMessage(uint64_t a1, char *a2, char *a3, int a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9, int a10)
{
  if (!a10)
  {
    goto LABEL_13;
  }

  if (a8 == 4)
  {
    PrintErrorID(a1, "CSTRNCHK", 1, 1);
    v17 = "The function return value ";
LABEL_6:
    EnvPrintRouter(a1, "werror", v17);
    goto LABEL_7;
  }

  if (a2)
  {
    PrintErrorID(a1, "CSTRNCHK", 1, 1);
    EnvPrintRouter(a1, "werror", a2);
    v17 = " ";
    goto LABEL_6;
  }

LABEL_7:
  if (a3)
  {
    EnvPrintRouter(a1, "werror", "found in ");
    if (a4)
    {
      EnvPrintRouter(a1, "werror", "the ");
      EnvPrintRouter(a1, "werror", a3);
      a3 = " command";
    }

    EnvPrintRouter(a1, "werror", a3);
  }

  if (a5 >= 1)
  {
    EnvPrintRouter(a1, "werror", "found in CE #");
    PrintLongInteger(a1, "werror", a5, v19, v20, v21, v22, v23);
  }

LABEL_13:
  if (a8 > 3)
  {
    if (a8 == 6)
    {
      v24 = "\ndoes not match the allowed classes";
      goto LABEL_32;
    }

    if (a8 == 5)
    {
      v24 = "\ndoes not satisfy the cardinality restrictions";
      goto LABEL_32;
    }

    if (a8 != 4)
    {
      goto LABEL_29;
    }

LABEL_21:
    v24 = "\ndoes not match the allowed types";
    goto LABEL_32;
  }

  if (a8 == 1)
  {
    goto LABEL_21;
  }

  if (a8 != 2)
  {
    if (a8 == 3)
    {
      v24 = "\ndoes not match the allowed values";
      goto LABEL_32;
    }

LABEL_29:
    if (!a6)
    {
      goto LABEL_33;
    }

LABEL_30:
    EnvPrintRouter(a1, "werror", " for slot ");
    EnvPrintRouter(a1, "werror", *(a6 + 24));
    goto LABEL_35;
  }

  EnvPrintRouter(a1, "werror", "\ndoes not fall in the allowed range ");
  v31 = *(a9 + 24);
  v32 = *(*(*(a1 + 48) + 392) + 24);
  if (v31[1] == v32)
  {
    EnvPrintRouter(a1, "werror", *(v32 + 24));
  }

  else
  {
    PrintExpression(a1, "werror", v31, v30, v25, v26, v27, v28, v29);
  }

  EnvPrintRouter(a1, "werror", " to ");
  v39 = *(a9 + 32);
  v40 = *(*(*(a1 + 48) + 392) + 16);
  if (v39[1] != v40)
  {
    PrintExpression(a1, "werror", v39, v38, v33, v34, v35, v36, v37);
    goto LABEL_29;
  }

  v24 = *(v40 + 24);
LABEL_32:
  EnvPrintRouter(a1, "werror", v24);
  if (a6)
  {
    goto LABEL_30;
  }

LABEL_33:
  if (a7 >= 1)
  {
    EnvPrintRouter(a1, "werror", " for field #");
    PrintLongInteger(a1, "werror", a7, v41, v42, v43, v44, v45);
  }

LABEL_35:

  return EnvPrintRouter(a1, "werror", ".\n");
}

uint64_t ConstraintCheckDataObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  if (v6 != 4)
  {
    if (CheckCardinalityConstraint(a1, 1, a3))
    {
      v12 = *(a2 + 16);

      return ConstraintCheckValue(a1, v6, v12, a3);
    }

    return 5;
  }

  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (!CheckCardinalityConstraint(a1, v7 - v8 + 1, a3))
  {
    return 5;
  }

  if (v8 > v7)
  {
    return 0;
  }

  v9 = v8 - 1;
  for (i = (*(a2 + 16) + 16 * v8 + 32); ; i += 2)
  {
    result = ConstraintCheckValue(a1, *(i - 4), *i, a3);
    if (result)
    {
      break;
    }

    if (++v9 >= *(a2 + 32))
    {
      return 0;
    }
  }

  return result;
}

uint64_t ConstraintCheckValue(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 175)
  {
    return 1;
  }

  if (a4)
  {
    v9 = *a4;
    if ((*a4 & 1) == 0)
    {
      if (a2 == 2 && (v9 & 2) == 0)
      {
        return 1;
      }

      if (a2 > 2)
      {
        if (a2 == 6)
        {
          if ((v9 & 0x100) != 0)
          {
            goto LABEL_23;
          }
        }

        else if (a2 == 5)
        {
          if ((v9 & 0x80) != 0)
          {
            goto LABEL_23;
          }
        }

        else if (a2 != 3 || (v9 & 4) != 0)
        {
          goto LABEL_23;
        }

        return 1;
      }

      if (!a2)
      {
        if ((v9 & 8) != 0)
        {
          goto LABEL_23;
        }

        return 1;
      }

      if (a2 == 1 && (v9 & 0x10) == 0)
      {
        return 1;
      }
    }
  }

LABEL_23:
  if (!CheckAllowedValuesConstraint(a2, a3, a4))
  {
    return 3;
  }

  if (a2 <= 1 && a4)
  {
    v10 = *(a4 + 24);
    if (!v10)
    {
      return 2;
    }

    v11 = (a4 + 32);
    while (1)
    {
      v12 = *v11;
      if (CompareNumbers(a1, a2, a3, *v10, *(v10 + 1)))
      {
        if (CompareNumbers(a1, a2, a3, *v12, *(v12 + 1)) != 1)
        {
          break;
        }
      }

      v11 = (v12 + 12);
      v10 = *(v10 + 3);
      if (!v10)
      {
        return 2;
      }
    }
  }

  if (a2 != 30)
  {
    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  v13 = *a4;
  if (*a4)
  {
    return 0;
  }

  switch(*(a3 + 16))
  {
    case 'a':
      v14 = (v13 >> 7) & 1;
      break;
    case 'b':
    case 'c':
    case 'w':
      v14 = (v13 >> 1) & 1;
      break;
    case 'd':
    case 'f':
      v14 = (v13 >> 3) & 1;
      break;
    case 'i':
    case 'l':
      v14 = (v13 >> 4) & 1;
      break;
    case 'j':
      v15 = (*a4 & 0x26) == 0;
      goto LABEL_49;
    case 'k':
      v15 = (*a4 & 6) == 0;
      goto LABEL_49;
    case 'm':
      v14 = (v13 >> 17) & 1;
      break;
    case 'n':
      v15 = (*a4 & 0x18) == 0;
LABEL_49:
      v14 = !v15;
      break;
    case 'o':
      v14 = (v13 >> 5) & 1;
      break;
    case 's':
      v14 = (v13 >> 2) & 1;
      break;
    case 'x':
      v14 = (v13 >> 6) & 1;
      break;
    case 'y':
      v14 = (v13 >> 8) & 1;
      break;
    default:
      return 0;
  }

  if (!v14)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t ConstraintCheckExpressionChain(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2;
    do
    {
      if (ConstantType(*v8))
      {
        ++v7;
      }

      else if (*v8 == 30)
      {
        v9 = *(*(v8 + 1) + 16);
        if (v9 == 117)
        {
          v10 = v7;
        }

        else
        {
          v10 = v7 + 1;
        }

        if (v9 == 117)
        {
          v11 = -1;
        }

        else
        {
          v11 = v6;
        }

        if (v9 == 109)
        {
          v6 = -1;
        }

        else
        {
          v7 = v10;
          v6 = v11;
        }
      }

      else
      {
        v6 = -1;
      }

      v8 = *(v8 + 3);
    }

    while (v8);
    if (v6)
    {
      v12 = -1;
    }

    else
    {
      v12 = v7;
    }

    v13 = v7;
    if (!a3)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    if (!a3)
    {
LABEL_39:
      if (v4)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v14 = *(a3 + 48);
  if (v14)
  {
    v15 = *(v14 + 8);
    if (v15 != *(*(*(a1 + 48) + 392) + 16) && *(v15 + 24) < v13)
    {
      return 5;
    }
  }

  if (v12 == -1)
  {
    goto LABEL_39;
  }

  v17 = *(a3 + 40);
  if (!v17)
  {
    goto LABEL_39;
  }

  v18 = *(v17 + 8);
  if (v18 == *(*(*(a1 + 48) + 392) + 24))
  {
    goto LABEL_39;
  }

  if (*(v18 + 24) <= v12)
  {
    result = 0;
  }

  else
  {
    result = 5;
  }

  if (*(v18 + 24) <= v12 && v4 != 0)
  {
LABEL_40:
    while (1)
    {
      result = ConstraintCheckValue(a1, *v4, *(v4 + 1), a3);
      if (result)
      {
        break;
      }

      v4 = *(v4 + 3);
      if (!v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ConstraintCheckExpression(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = 0;
  if (a3)
  {
    v5 = a2;
    if (a2)
    {
      while (1)
      {
        result = ConstraintCheckValue(a1, *v5, v5[1], a3);
        if (result)
        {
          break;
        }

        result = ConstraintCheckExpression(a1, v5[2], a3);
        if (result)
        {
          break;
        }

        v5 = v5[3];
        if (!v5)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

_DWORD *UnmatchableConstraint(_DWORD *result)
{
  if (result)
  {
    return ((*result & 0x203FF) == 0);
  }

  return result;
}

uint64_t ParseDefglobal(uint64_t a1, char *a2)
{
  SetPPBufferStatus(a1, 1);
  FlushPPBuffer(a1);
  SetIndentDepth(a1, 3);
  SavePPBuffer(a1, "(defglobal ");
  if (Bloaded(a1) == 1 && !*(*(*(a1 + 48) + 336) + 40))
  {
    CannotLoadWithBloadMessage(a1, "defglobal");
    return 1;
  }

  v32 = 0;
  v33 = 0;
  __s = 0;
  GetToken(a1, a2, &v32);
  if (v32 != 2)
  {
    PPBackup(a1);
    CurrentModule = EnvGetCurrentModule(a1);
    ConstructNameString = EnvGetConstructNameString(a1, CurrentModule);
    SavePPBuffer(a1, ConstructNameString);
    SavePPBuffer(a1, " ");
    SavePPBuffer(a1, __s);
    goto LABEL_11;
  }

  if (FindModuleSeparator(*(v33 + 24)))
  {
LABEL_36:
    SyntaxErrorMessage(a1, "defglobal");
    return 1;
  }

  Defmodule = EnvFindDefmodule(a1, *(v33 + 24));
  if (!Defmodule)
  {
    CantFindItemErrorMessage(a1, "defmodule", *(v33 + 24));
    return 1;
  }

  v5 = Defmodule;
  SavePPBuffer(a1, " ");
  EnvSetCurrentModule(a1, v5);
  while (1)
  {
    GetToken(a1, a2, &v32);
LABEL_11:
    if (v32 != 33)
    {
      break;
    }

    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v8 = v33;
    SavePPBuffer(a1, " ");
    if (EnvGetWatchItem(a1, "compilations") == 1 && GetPrintWhileLoading(a1))
    {
      if (QFindDefglobal(a1, v8))
      {
        PrintWarningID(a1, "CSTRCPSR", 1, 1);
        v9 = "wwarning";
        v10 = "Redefining defglobal: ";
      }

      else
      {
        v9 = "wdialog";
        v10 = "Defining defglobal: ";
      }

      EnvPrintRouter(a1, v9, v10);
      EnvPrintRouter(a1, v9, *(v8 + 24));
      v12 = "\n";
      v13 = a1;
      v11 = v9;
    }

    else
    {
      if (!GetPrintWhileLoading(a1))
      {
        goto LABEL_21;
      }

      v11 = "wdialog";
      v12 = ":";
      v13 = a1;
    }

    EnvPrintRouter(v13, v11, v12);
LABEL_21:
    v14 = EnvGetCurrentModule(a1);
    if (FindImportExportConflict(a1, "defglobal", v14, *(v8 + 24)))
    {
      ImportExportConflictMessage(a1, "defglobal", *(v8 + 24), 0, 0);
      return 1;
    }

    GetToken(a1, a2, &v32);
    if (*__s != 61 || __s[1])
    {
      goto LABEL_36;
    }

    SavePPBuffer(a1, " ");
    v15 = ParseAtomOrExpression(a1, a2, 0);
    if (!v15)
    {
      return 1;
    }

    v16 = v15;
    if (*(*(*(a1 + 48) + 336) + 40))
    {
      ReturnExpression(a1, v15);
    }

    else
    {
      SetEvaluationError(a1, 0);
      if (EvaluateExpression(a1, v16, &v35))
      {
        ReturnExpression(a1, v16);
        return 1;
      }
    }

    SavePPBuffer(a1, ")");
    if (!*(*(*(a1 + 48) + 336) + 40))
    {
      v17 = QFindDefglobal(a1, v8);
      if (v17)
      {
        DeinstallConstructHeader(a1, v17);
        v18 = (v17[6] & 1) == 0;
        ValueDeinstall(a1, (v17 + 8));
        if (*(v17 + 36) == 4)
        {
          ReturnMultifield(a1, v17[10]);
        }

        RemoveHashedExpression(a1, v17[14]);
        v19 = v17;
      }

      else
      {
        v20 = *(a1 + 48);
        v21 = *(v20 + 472);
        v22 = *(*(v21 + 40) + 960);
        if (v22)
        {
          *(v21 + 32) = v22;
          *(*(*(v20 + 472) + 40) + 960) = **(*(v20 + 472) + 32);
          v19 = *(*(*(a1 + 48) + 472) + 32);
        }

        else
        {
          v19 = genalloc(a1, 0x78uLL);
        }

        v18 = 1;
      }

      v24 = WORD4(v35);
      v19[36] = WORD4(v35);
      if (v24 == 4)
      {
        DuplicateMultifield(a1, (v19 + 32), &v35);
      }

      else
      {
        *(v19 + 10) = v36;
      }

      ValueInstall(a1, (v19 + 32));
      *(v19 + 14) = AddHashedExpression(a1, v16);
      ReturnExpression(a1, v16);
      v25 = *(*(a1 + 48) + 8);
      v26 = 1;
      *(v25 + 12) = 1;
      if (v18)
      {
        v26 = *(v25 + 16) & 1;
      }

      *(v19 + 48) = v19[24] & 0xFE | v26;
      *v19 = v8;
      *(v19 + 5) = 0;
      ++*(v8 + 8);
      SavePPBuffer(a1, "\n");
      ConserveMemory = EnvGetConserveMemory(a1);
      v28 = 0;
      if (ConserveMemory != 1)
      {
        v28 = CopyPPBuffer(a1);
      }

      *(v19 + 1) = v28;
      *(v19 + 48) |= 2u;
      if (!v17)
      {
        *(v19 + 7) = 0;
        ModuleItem = FindModuleItem(a1, "defglobal");
        *(v19 + 2) = GetModuleItem(a1, 0, *(ModuleItem + 8));
        AddConstructToModule(v19);
      }
    }

    FlushPPBuffer(a1);
    SavePPBuffer(a1, "(defglobal ");
    v30 = EnvGetCurrentModule(a1);
    v31 = EnvGetConstructNameString(a1, v30);
    SavePPBuffer(a1, v31);
    SavePPBuffer(a1, " ");
  }

  if (v32 != 171)
  {
    goto LABEL_36;
  }

  return 0;
}

uint64_t ReplaceGlobalVariable(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  ImportedConstruct = FindImportedConstruct(a1, "defglobal", 0, *(*(a2 + 8) + 24), &v6, 1, 0);
  if (!ImportedConstruct)
  {
    GlobalReferenceErrorMessage(a1, *(*(a2 + 8) + 24));
    return 0;
  }

  if (v6 >= 2)
  {
    AmbiguousReferenceErrorMessage(a1, "defglobal", *(*(a2 + 8) + 24));
    return 0;
  }

  *a2 = 90;
  *(a2 + 8) = ImportedConstruct;
  return 1;
}

uint64_t GlobalReferenceErrorMessage(uint64_t a1, char *a2)
{
  PrintErrorID(a1, "GLOBLPSR", 1, 1);
  EnvPrintRouter(a1, "werror", "\nGlobal variable ?*");
  EnvPrintRouter(a1, "werror", a2);

  return EnvPrintRouter(a1, "werror", "* was referenced, but is not defined.\n");
}

void sub_2327A0B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2327A15F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t InitializeCommandLineData(uint64_t a1)
{
  result = AllocateEnvironmentData(a1, 0x28u, 0x48uLL, DeallocateCommandLineData);
  v3 = *(a1 + 48);
  *(*(v3 + 320) + 40) = "         CLIPS (6.30 3/17/15)\n";
  *(*(v3 + 320) + 48) = DefaultGetNextEvent;
  return result;
}

uint64_t DeallocateCommandLineData(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 48) + 320);
  v3 = v2[2];
  if (v3)
  {
    result = rm(result, v3, v2[3]);
    v2 = *(*(v1 + 48) + 320);
  }

  v4 = v2[1];
  if (v4)
  {

    return ReturnExpression(v1, v4);
  }

  return result;
}

uint64_t DefaultGetNextEvent(uint64_t a1)
{
  v2 = EnvGetcRouter(a1, "stdin");
  if (v2 == -1)
  {
    v3 = 10;
  }

  else
  {
    v3 = v2;
  }

  ExpandCommandString(a1, v3);
  return 0;
}

BOOL ExpandCommandString(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 368);
  v5 = *v4;
  v6 = ExpandStringWithChar(a1, a2, *(*(v3 + 320) + 16), v4, (*(v3 + 320) + 24), *(*(v3 + 320) + 24) + 80);
  v7 = *(a1 + 48);
  *(*(v7 + 320) + 16) = v6;
  return **(v7 + 368) != v5;
}

uint64_t FlushCommandString(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(v1 + 320);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    result = rm(result, v3, *(v2 + 24));
    v1 = *(v4 + 48);
    v2 = *(v1 + 320);
  }

  *(v2 + 16) = 0;
  *(*(v1 + 320) + 24) = 0;
  v5 = *(v1 + 368);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

char *SetCommandString(uint64_t a1, const char *a2)
{
  FlushCommandString(a1);
  v4 = strlen(a2);
  v5 = v4;
  v6 = v4 + 1;
  v7 = genrealloc(a1, *(*(*(a1 + 48) + 320) + 16), *(*(*(a1 + 48) + 320) + 24), v4 + 1 + *(*(*(a1 + 48) + 320) + 24));
  v8 = *(a1 + 48);
  *(*(v8 + 320) + 16) = v7;
  result = genstrcpy(*(*(v8 + 320) + 16), a2);
  v10 = *(a1 + 48);
  *(*(v10 + 320) + 24) += v6;
  **(v10 + 368) += v5;
  return result;
}

char *SetNCommandString(uint64_t a1, const char *a2, unsigned int a3)
{
  FlushCommandString(a1);
  v6 = a3 + 1;
  v7 = genrealloc(a1, *(*(*(a1 + 48) + 320) + 16), *(*(*(a1 + 48) + 320) + 24), v6 + *(*(*(a1 + 48) + 320) + 24));
  v8 = *(a1 + 48);
  *(*(v8 + 320) + 16) = v7;
  result = genstrncpy(*(*(v8 + 320) + 16), a2, a3);
  *(*(*(*(a1 + 48) + 320) + 16) + *(*(*(a1 + 48) + 320) + 24) + a3) = 0;
  v10 = *(a1 + 48);
  *(*(v10 + 320) + 24) += v6;
  **(v10 + 368) += a3;
  return result;
}

char *AppendCommandString(uint64_t a1, char *a2)
{
  result = AppendToString(a1, a2, *(*(*(a1 + 48) + 320) + 16), *(*(a1 + 48) + 368), (*(*(a1 + 48) + 320) + 24));
  *(*(*(a1 + 48) + 320) + 16) = result;
  return result;
}

char *InsertCommandString(uint64_t a1, char *a2, unsigned int a3)
{
  result = InsertInString(a1, a2, a3, *(*(*(a1 + 48) + 320) + 16), *(*(a1 + 48) + 368), (*(*(a1 + 48) + 320) + 24));
  *(*(*(a1 + 48) + 320) + 16) = result;
  return result;
}

char *AppendNCommandString(uint64_t a1, char *a2, size_t __n)
{
  result = AppendNToString(a1, a2, *(*(*(a1 + 48) + 320) + 16), __n, *(*(a1 + 48) + 368), (*(*(a1 + 48) + 320) + 24));
  *(*(*(a1 + 48) + 320) + 16) = result;
  return result;
}

uint64_t CompleteCommand(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  LODWORD(v2) = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = MEMORY[0x277D85DE0];
  while (1)
  {
LABEL_3:
    while (1)
    {
      result = *(v1 + v2);
      v2 = (v2 + 1);
      if (result > 31)
      {
        break;
      }

      if (result > 11)
      {
        if (result == 12)
        {
          goto LABEL_39;
        }

        if (result != 13)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (result == 9)
        {
          goto LABEL_39;
        }

        if (result != 10)
        {
          if (!result)
          {
            return result;
          }

          goto LABEL_46;
        }
      }

      if (v5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v4 && !v3)
      {
        return 1;
      }

      v13 = (v1 + v2);
      while (1)
      {
        v14 = *v13++;
        v15 = (1 << v14) & 0x100001200;
        if (v14 > 0x20 || v15 == 0)
        {
          break;
        }

        LODWORD(v2) = v2 + 1;
      }

      v5 = 0;
    }

    if (result <= 39)
    {
      break;
    }

    if (result == 40)
    {
      if (v3 > 0 || !v4)
      {
        ++v3;
      }

      v4 = 1;
      continue;
    }

    if (result == 41)
    {
      if (v4)
      {
        v23 = v5;
      }

      else
      {
        v23 = 1;
      }

      if (v3 < 1)
      {
        v4 = v4;
        v5 = v23;
      }

      else
      {
        --v3;
      }

      continue;
    }

    if (result != 59)
    {
      goto LABEL_46;
    }

    v7 = v2 << 32;
    v8 = (v1 + v2);
    while (1)
    {
      v9 = *v8++;
      v10 = (1 << v9) & 0x2401;
      if (v9 <= 0xD && v10 != 0)
      {
        break;
      }

      v7 += 0x100000000;
      LODWORD(v2) = v2 + 1;
    }

    v24 = v7 >> 32;
    if (v4 && !v3 && *(v1 + v24))
    {
LABEL_80:
      if (v5)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

    if (*(v1 + v24))
    {
      LODWORD(v2) = v2 + 1;
    }
  }

  if (result == 32)
  {
LABEL_39:
    v17 = (v1 + v2);
    while (1)
    {
      v18 = *v17++;
      v19 = (1 << v18) & 0x100001200;
      if (v18 > 0x20 || v19 == 0)
      {
        break;
      }

      LODWORD(v2) = v2 + 1;
    }

    goto LABEL_3;
  }

  if (result == 34)
  {
    while (1)
    {
      v12 = *(v1 + v2);
      if (v12 == 92)
      {
        v2 = v2 + 1;
        LOBYTE(v12) = *(v1 + v2);
        if (!v12)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v12 == 34)
        {
          LODWORD(v2) = v2 + 1;
          LOBYTE(v12) = 1;
LABEL_68:
          if (((v3 == 0) & v12) != 0)
          {
            v4 = 1;
          }

          goto LABEL_3;
        }

        if (!*(v1 + v2))
        {
          goto LABEL_68;
        }
      }

      LODWORD(v2) = v2 + 1;
    }
  }

LABEL_46:
  if (v3)
  {
    goto LABEL_3;
  }

  v21 = result;
  v22 = result < 0 ? __maskrune(result, 0x40000uLL) : *(v6 + 4 * result + 60) & 0x40000;
  if ((v21 + 64) >= 0x38)
  {
    v3 = 0;
    if (!v22)
    {
      goto LABEL_3;
    }
  }

  v26 = (v1 + v2);
  while (1)
  {
    v28 = *v26++;
    v27 = v28;
    if (!v28)
    {
      return 0;
    }

    if (v27 == 13 || v27 == 10)
    {
      goto LABEL_80;
    }
  }
}