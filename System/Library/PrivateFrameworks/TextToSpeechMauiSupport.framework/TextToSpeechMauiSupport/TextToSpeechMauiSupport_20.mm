uint64_t wgram_GetNextTrans(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, int *a6)
{
  result = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = v8 - v9;
    if (v8 <= v9)
    {
LABEL_11:
      *a3 = v9 + 1;
      v16 = -1;
      *a4 = -1;
      *a5 = -1;
    }

    else
    {
      v11 = *(a1 + 280);
      v12 = v9 << 34;
      v13 = (v11 + 16 * v9 + 8);
      v14 = ~v9;
      while (1)
      {
        v15 = *v13;
        v13 += 4;
        if (v15 == a2)
        {
          break;
        }

        v12 += 0x400000000;
        --v14;
        if (!--v10)
        {
          LODWORD(v9) = a3[1];
          goto LABEL_11;
        }
      }

      *a3 = -v14;
      v17 = (v11 + (v12 >> 30));
      *a4 = *v17;
      *a5 = v17[1];
      v16 = v17[3];
    }

    result = 0;
    *a6 = v16;
  }

  return result;
}

uint64_t wgram_GetFirstEpsTrans(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, int *a6)
{
  v6 = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v7 = (*(a1 + 312) + 4 * (a2 % *(a1 + 304)));
    v9 = *v7;
    v8 = v7[1];
    if (v9 >= v8)
    {
LABEL_11:
      *a3 = v9 + 1;
      a3[1] = v8;
      v14 = -1;
      *a4 = -1;
      *a5 = 0;
    }

    else
    {
      v10 = *(a1 + 320);
      v11 = v9 << 34;
      v12 = (v10 + 16 * v9);
      while (1)
      {
        v13 = *v12;
        v12 += 4;
        LODWORD(v9) = v9 + 1;
        if (v13 == a2)
        {
          break;
        }

        v11 += 0x400000000;
        if (v8 == v9)
        {
          LODWORD(v9) = v8;
          goto LABEL_11;
        }
      }

      *a3 = v9;
      a3[1] = v8;
      v15 = v10 + (v11 >> 30);
      v16 = *(v15 + 4);
      *a4 = v16;
      *a5 = v16 == *(a1 + 260);
      v14 = *(v15 + 12);
    }

    v6 = 0;
    *a6 = v14;
  }

  return v6;
}

uint64_t wgram_GetNextEpsTrans(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, int *a6)
{
  v6 = 2371887111;
  if (a1 && a3 && a4 && a5 && a6)
  {
    v8 = *a3;
    v7 = a3[1];
    v9 = v7 - v8;
    if (v7 <= v8)
    {
LABEL_11:
      *a3 = v8 + 1;
      v15 = -1;
      *a4 = -1;
      *a5 = 0;
    }

    else
    {
      v10 = *(a1 + 320);
      v11 = v8 << 34;
      v12 = (v10 + 16 * v8);
      v13 = ~v8;
      while (1)
      {
        v14 = *v12;
        v12 += 4;
        if (v14 == a2)
        {
          break;
        }

        v11 += 0x400000000;
        --v13;
        if (!--v9)
        {
          LODWORD(v8) = a3[1];
          goto LABEL_11;
        }
      }

      *a3 = -v13;
      v16 = v10 + (v11 >> 30);
      v17 = *(v16 + 4);
      *a4 = v17;
      *a5 = v17 == *(a1 + 260);
      v15 = *(v16 + 12);
    }

    v6 = 0;
    *a6 = v15;
  }

  return v6;
}

uint64_t mosyntkbaccphr_CheckMatchingConsFeat(uint64_t a1, int a2, unsigned __int16 *a3, int a4, unsigned __int16 *a5, char *a6)
{
  *a6 = 0;
  if (a2 == a4)
  {
    if (*a3)
    {
      return mosyntknowl_CheckUnifiable(a1, a3, a5, a6);
    }

    *a6 = 1;
  }

  return 0;
}

uint64_t mosyntkbaccphr_CheckMatchingConsFeat2(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, unsigned __int16 *a6, char *a7)
{
  v13[3] = *MEMORY[0x277D85DE8];
  memset(v13, 0, 24);
  *a7 = 0;
  GetFeat(a2, a4, v13);
  result = 0;
  if (a3 == a5)
  {
    if (LOWORD(v13[0]))
    {
      return mosyntknowl_CheckUnifiable(a1, v13, a6, a7);
    }

    else
    {
      result = 0;
      *a7 = 1;
    }
  }

  return result;
}

uint64_t GetFeat(uint64_t a1, unsigned int a2, _WORD *a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  result = accphr_getFeatList(a1, a2, v10);
  v5 = v10[0];
  if (SLODWORD(v10[0]) >= 1)
  {
    v6 = v10 + 1;
    v7 = a3 + 1;
    v8 = LODWORD(v10[0]);
    do
    {
      v9 = *v6++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  *a3 = v5;
  return result;
}

uint64_t mosyntkbaccphr_CheckMatchingConsFeat3(uint64_t a1, uint64_t a2, int a3, unsigned __int16 *a4, int a5, unsigned int a6, char *a7)
{
  v13[3] = *MEMORY[0x277D85DE8];
  memset(v13, 0, 24);
  *a7 = 0;
  GetFeat(a2, a6, v13);
  result = 0;
  if (a3 == a5)
  {
    if (*a4)
    {
      return mosyntknowl_CheckUnifiable(a1, a4, v13, a7);
    }

    else
    {
      result = 0;
      *a7 = 1;
    }
  }

  return result;
}

uint64_t mosyntkbaccphr_LookupAccPhrRule(uint64_t a1, uint64_t a2, int a3, __int16 *a4, _BYTE *a5, uint64_t a6)
{
  FirstRule = accphr_getFirstRule(a2, a3);
  v19 = 0;
  if (FirstRule == accphr_Nil())
  {
    v13 = 0;
LABEL_3:
    if (FirstRule == accphr_Nil())
    {
      *a5 = 0;
    }

    else
    {
      *a5 = 1;
      *a6 = a2;
      *(a6 + 40) = FirstRule;
      *(a6 + 8) = a3;
      return mosyntknowl_CopyFeatList(a4, (a6 + 16));
    }
  }

  else
  {
    while (1)
    {
      Rule = accphr_getRule(1, a2, FirstRule);
      Node = accphr_getNode(5, a2, Rule);
      v16 = accphr_getRule(1, a2, FirstRule);
      v17 = accphr_getNode(6, a2, v16);
      v13 = mosyntkbaccphr_CheckMatchingConsFeat2(a1, a2, Node, v17, a3, a4, &v19);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      if (!v19)
      {
        FirstRule = accphr_getRule(14, a2, FirstRule);
      }

      if (FirstRule == accphr_Nil() || v19)
      {
        goto LABEL_3;
      }
    }
  }

  return v13;
}

uint64_t mosyntkbaccphr_GetNextAccPhrEntry(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *a3 = 0;
  Rule = accphr_getRule(14, a2, *(a4 + 40));
  v15 = 0;
  if (Rule == accphr_Nil())
  {
    v9 = 0;
LABEL_3:
    if (Rule == accphr_Nil())
    {
      *a3 = 0;
    }

    else
    {
      *a3 = 1;
      *(a4 + 40) = Rule;
    }
  }

  else
  {
    while (1)
    {
      v10 = accphr_getRule(1, a2, Rule);
      Node = accphr_getNode(5, a2, v10);
      v12 = accphr_getRule(1, a2, Rule);
      v13 = accphr_getNode(6, a2, v12);
      v9 = mosyntkbaccphr_CheckMatchingConsFeat2(a1, a2, Node, v13, *(a4 + 8), (a4 + 16), &v15);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      if (!v15)
      {
        Rule = accphr_getRule(14, a2, Rule);
      }

      if (Rule == accphr_Nil() || v15)
      {
        goto LABEL_3;
      }
    }
  }

  return v9;
}

uint64_t mosyntkbaccphr_WriteAccPhrNode(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (accphr_getNodeNegated(a3, a4))
  {
    v8 = mosyntbase_Wr(a1, 126);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0;
  }

  v22 = 0;
  memset(v21, 0, sizeof(v21));
  Node = accphr_getNode(3, a3, a4);
  if (Node > 1)
  {
    if (Node == 2)
    {
      v17 = accphr_getNode(5, a3, a4);
      v18 = accphr_getNode(6, a3, a4);
      v16 = WriteConsFeat1(a1, a2, a3, v17, v18);
LABEL_21:
      v8 = v16;
      if ((v16 & 0x80000000) != 0)
      {
        return v8;
      }

      goto LABEL_22;
    }

    if (Node != 3)
    {
      goto LABEL_22;
    }

    v15 = accphr_getNode(7, a3, a4);
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v12 = "'EOS'";
        goto LABEL_18;
      }

      if (v15 == 4)
      {
        v12 = "'QOS'";
        goto LABEL_18;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v12 = "'OBR'";
        goto LABEL_18;
      }

      if (v15 == 2)
      {
        v12 = "'BOS'";
LABEL_18:
        v13 = a1;
        v14 = 0;
LABEL_19:
        v16 = mosyntbase_WString(v13, v12, v14);
        goto LABEL_21;
      }
    }

    v12 = "'(unknown property)'";
    goto LABEL_18;
  }

  if (!Node)
  {
    v12 = "?";
    goto LABEL_18;
  }

  if (Node == 1)
  {
    v10 = accphr_getNode(4, a3, a4);
    v11 = mosyntkbsymtab_AtomSymString(a1, a2, v10, v21, 100);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    v11 = mosyntbase_Wr(a1, 94);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    v12 = v21;
    v13 = a1;
    v14 = 100;
    goto LABEL_19;
  }

LABEL_22:
  if (accphr_getNodeMatchOp(a3, a4) == 6)
  {
    v19 = "*";
    return mosyntbase_WString(a1, v19, 0);
  }

  if (accphr_getNodeMatchOp(a3, a4) == 3)
  {
    v19 = "+";
    return mosyntbase_WString(a1, v19, 0);
  }

  if (accphr_getNodeMatchOp(a3, a4) == 1)
  {
    v19 = "$";
    return mosyntbase_WString(a1, v19, 0);
  }

  if (accphr_getNodeMatchOp(a3, a4) == 7)
  {
    v19 = "@";
    return mosyntbase_WString(a1, v19, 0);
  }

  return v8;
}

uint64_t WriteConsFeat1(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9[3] = *MEMORY[0x277D85DE8];
  memset(v9, 0, 24);
  GetFeat(a3, a5, v9);
  result = mosyntkbsymtab_WriteCons(a1, a2, a4);
  if ((result & 0x80000000) == 0 && SLOWORD(v9[0]) >= 1)
  {
    result = mosyntbase_WString(a1, " ", 0);
    if ((result & 0x80000000) == 0)
    {
      return mosyntkbsymtab_WriteFeatList(a1, a2, v9);
    }
  }

  return result;
}

uint64_t mosyntkbaccphr_WriteRuleHeadline(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  Rule = accphr_getRule(0, a3, a4);
  v9 = accphr_getRule(0, a3, a4);
  memset(v19, 0, 32);
  if (Rule >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  memset(&v19[2], 0, 64);
  v20 = 0;
  result = mosyntkbsymtab_AtomSymString(a1, a2, v10, v19, 100);
  if ((result & 0x80000000) == 0)
  {
    if (accphr_getRule(0, a3, a4) < 1)
    {
      result = mosyntbase_WriteMessage(a1, "^%s <== ", 0, v19, 100, "", 0, "", 0);
    }

    else
    {
      result = mosyntbase_WriteMessage(a1, "^%s <-- ", 0, v19, 100, "", 0, "", 0);
    }

    if ((result & 0x80000000) == 0)
    {
      v12 = accphr_getRule(1, a3, a4);
      Node = accphr_getNode(5, a3, v12);
      v14 = accphr_getRule(1, a3, a4);
      v15 = accphr_getNode(6, a3, v14);
      result = WriteConsFeat1(a1, a2, a3, Node, v15);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, " [ ", 0);
        if ((result & 0x80000000) == 0)
        {
          v16 = accphr_getRule(2, a3, a4);
          result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v16);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_WString(a1, ", ", 0);
            if ((result & 0x80000000) == 0)
            {
              v17 = accphr_getRule(3, a3, a4);
              result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v17);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntbase_WString(a1, ", ", 0);
                if ((result & 0x80000000) == 0)
                {
                  v18 = accphr_getRule(4, a3, a4);
                  result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v18);
                  if ((result & 0x80000000) == 0)
                  {
                    return mosyntbase_WString(a1, " ]", 0);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mosyntkbaccphr_WriteChildrenList(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4, int a5, int a6)
{
  v6 = a6;
  if (accphr_Nil() != a6)
  {
    while (1)
    {
      v13 = mosyntbase_WString(a1, a4, a5);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      v13 = mosyntbase_WString(a1, "[ ", 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      for (i = accphr_getChildren(1, a3, v6); ; i = accphr_getNode(8, a3, v15))
      {
        v15 = i;
        if (i == accphr_Nil())
        {
          break;
        }

        v13 = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v15);
        if ((v13 & 0x80000000) != 0)
        {
          return v13;
        }

        Node = accphr_getNode(8, a3, v15);
        if (Node != accphr_Nil())
        {
          v13 = mosyntbase_WString(a1, ", ", 0);
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }
        }
      }

      v13 = mosyntbase_WString(a1, " ]", 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      ChildrenOpType = accphr_getChildrenOpType(a3, v6);
      if (ChildrenOpType == 2)
      {
        v18 = a1;
        v19 = " :FC";
      }

      else
      {
        if (ChildrenOpType != 1)
        {
          goto LABEL_17;
        }

        v18 = a1;
        v19 = " :OL";
      }

      v13 = mosyntbase_WString(v18, v19, 0);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

LABEL_17:
      Children = accphr_getChildren(2, a3, v6);
      if (Children == accphr_Nil())
      {
        v21 = mosyntbase_WLn(a1);
      }

      else
      {
        v21 = mosyntbase_WStringLn(a1, "||", 0);
      }

      v12 = v21;
      if ((v21 & 0x80000000) == 0)
      {
        v6 = accphr_getChildren(2, a3, v6);
        if (v6 != accphr_Nil())
        {
          continue;
        }
      }

      return v12;
    }
  }

  return 0;
}

uint64_t mosyntkbaccphr_WriteInstruction(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v26[2] = *MEMORY[0x277D85DE8];
  accphr_getInstrType(a3, a4);
  if (accphr_getInstrType(a3, a4) > 6)
  {
    return 0;
  }

  if (accphr_getInstrTargetRange(a3, a4))
  {
    v8 = (accphr_getInstrRight(a3, a4) ? "r_" : "l_");
    v10 = mosyntbase_WString(a1, v8, 0);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }
  }

  if (accphr_getInstrTargetRange(a3, a4) == 2)
  {
    v11 = "syll_";
  }

  else
  {
    if (accphr_getInstrTargetRange(a3, a4) != 3)
    {
      goto LABEL_16;
    }

    if (accphr_getInstr(5, a3, a4) == -1)
    {
      v11 = "prsyll_";
    }

    else if (accphr_getInstr(5, a3, a4))
    {
      v11 = "flsyll_";
    }

    else
    {
      v11 = "ssyll_";
    }
  }

  v10 = mosyntbase_WString(a1, v11, 0);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

LABEL_16:
  InstrType = accphr_getInstrType(a3, a4);
  v13 = 0;
  v14 = "XL";
  v15 = "L";
  v16 = "H";
  v17 = "XH";
  if (InstrType > 3)
  {
    switch(InstrType)
    {
      case 4:
        v18 = "pitch";
        break;
      case 5:
        v18 = "volume";
        break;
      case 6:
        v18 = "stress";
        break;
      default:
        goto LABEL_33;
    }

LABEL_31:
    v10 = mosyntbase_WString(a1, v18, 0);
    if ((v10 & 0x80000000) == 0)
    {
      v13 = 0;
      goto LABEL_33;
    }

    return v10;
  }

  switch(InstrType)
  {
    case 0:
      if (accphr_getInstr(2, a3, a4))
      {
        v10 = mosyntbase_WString(a1, "br", 0);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v13 = 0;
        v14 = "XW";
        v15 = "W";
        v16 = "S";
      }

      else
      {
        v10 = mosyntbase_WString(a1, "bnd", 0);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v14 = "XW";
        v15 = "W";
        v16 = "S";
        v13 = 1;
      }

      v17 = "XS";
      break;
    case 2:
      v18 = "emph";
      goto LABEL_31;
    case 3:
      v18 = "rate";
      goto LABEL_31;
  }

LABEL_33:
  Instr = accphr_getInstr(0, a3, a4);
  if (Instr != accphr_Nil())
  {
    v20 = accphr_getInstr(0, a3, a4);
    if (accphr_getNode(3, a3, v20))
    {
      v10 = mosyntbase_WString(a1, "(", 0);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v21 = accphr_getInstr(0, a3, a4);
      v10 = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, v21);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v10 = mosyntbase_WString(a1, ")", 0);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    v25 = 0;
    v26[0] = 0;
    *(v26 + 5) = 0;
    v23 = accphr_getInstr(2, a3, a4);
    v24 = 0;
    if (v23 <= 2)
    {
      switch(v23)
      {
        case 0:
          v14 = "(no value)";
          goto LABEL_61;
        case 1:
          v14 = "default";
          goto LABEL_61;
        case 2:
          goto LABEL_61;
      }
    }

    else
    {
      if (v23 <= 4)
      {
        v14 = v15;
        if (v23 != 3)
        {
          v14 = "M";
        }

LABEL_61:
        v9 = mosyntbase_CCopy(v14, 0, &v25, 21, &v24);
        if ((v9 & 0x80000000) != 0)
        {
          return v9;
        }

        goto LABEL_62;
      }

      v14 = v16;
      if (v23 == 5)
      {
        goto LABEL_61;
      }

      if (v23 == 6)
      {
        v14 = v17;
        goto LABEL_61;
      }
    }

    v9 = 0;
LABEL_62:
    if (accphr_getInstr(2, a3, a4))
    {
      v10 = mosyntbase_WString(a1, " = ", 0);
      if ((v10 & 0x80000000) == 0)
      {
        return mosyntbase_WString(a1, &v25, 21);
      }

      return v10;
    }

    return v9;
  }

  return mosyntbase_WString(a1, " = default", 0);
}

uint64_t mosyntkbaccphr_WritePromTemplate(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  result = mosyntbase_WString(a1, "<prom =", 0);
  if ((result & 0x80000000) == 0)
  {
    Children = accphr_getChildren(1, a3, a4);
    if (Children == accphr_Nil())
    {
LABEL_6:

      return mosyntbase_WStringLn(a1, " >", 0);
    }

    else
    {
      while (1)
      {
        HIDWORD(v10) = 0;
        LODWORD(v10) = 0;
        *(&v10 + 4) = accphr_getNode(2, a3, Children);
        result = mosyntbase_WriteMessage(a1, " [%i] ", 0, "", 0, "", 0, "", v10);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        result = mosyntkbaccphr_WriteAccPhrNode(a1, a2, a3, Children);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        Children = accphr_getNode(8, a3, Children);
        if (Children == accphr_Nil())
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

uint64_t mosyntkbaccphr_PhraseTypeToString(int a1, uint64_t a2, int a3)
{
  v5 = 0;
  if ((a1 - 1) > 8)
  {
    v3 = "";
  }

  else
  {
    v3 = off_279DAC5F0[a1 - 1];
  }

  return mosyntbase_CCopy(v3, 0, a2, a3, &v5);
}

uint64_t mosyntkbaccphr_StringToPhraseType(uint64_t a1, unsigned __int8 *a2, int a3, int *a4)
{
  if (mosyntbase_CEqual(a2, a3, "P", 0))
  {
    v8 = 1;
LABEL_19:
    *a4 = v8;
    return 0;
  }

  if (mosyntbase_CEqual(a2, a3, "T", 0))
  {
    v8 = 2;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "S", 0))
  {
    v8 = 3;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "Y", 0))
  {
    v8 = 4;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "W", 0))
  {
    v8 = 5;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "AI", 0))
  {
    v8 = 6;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "AM", 0))
  {
    v8 = 7;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "AF", 0))
  {
    v8 = 8;
    goto LABEL_19;
  }

  if (mosyntbase_CEqual(a2, a3, "E", 0))
  {
    v8 = 9;
    goto LABEL_19;
  }

  return mosyntbase_WriteDevelMessage(a1, "***** illegal phrase type '%s'\\n", 0, a2, a3, "", 0, "", 0, 0, 0, 0);
}

uint64_t mosyntkbaccphr_SimplifiedPhraseType(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_26ECDAA74[a1 - 1];
  }
}

uint64_t mosyntkbfst_GetFirstSameInSymPair(__int16 *a1, __int16 a2, uint64_t a3, BOOL *a4)
{
  fst_firstSamePair(a1, a2, a3);
  *a4 = v5 != 0;
  return 0;
}

uint64_t mosyntkbfst_OutSym(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  v3 = 0;
  fst_getPair(a1, a2, &v4 + 1, &v4, &v3);
  return v4;
}

uint64_t WritePair(uint64_t a1, void *a2, int a3, uint64_t a4, _DWORD *a5, int a6)
{
  v14 = 0;
  v13 = 0;
  fst_getPair(a4, a5, &v14 + 1, &v14, &v13);
  if ((a6 | 2) == 2)
  {
    if (HIWORD(v14))
    {
      result = mosyntbase_WString(a1, "", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (a3)
      {
        result = mosyntkbsymtab_WriteGraphSym(a1, a2, SHIWORD(v14));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        result = mosyntkbsymtab_WritePhonSym(a1, a2, SHIWORD(v14));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      v11 = "";
    }

    else
    {
      v11 = "@";
    }

    result = mosyntbase_WString(a1, v11, 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
  }

  if (a6 == 2)
  {
    result = mosyntbase_WString(a1, "/", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else if ((a6 - 1) > 1)
  {
    return result;
  }

  if (!v14)
  {
    v12 = "@";
    return mosyntbase_WString(a1, v12, 0);
  }

  result = mosyntbase_WString(a1, "", 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!a3)
  {
    result = mosyntkbsymtab_WritePhonSym(a1, a2, v14);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    goto LABEL_23;
  }

  result = mosyntkbsymtab_WriteGraphSym(a1, a2, v14);
  if ((result & 0x80000000) == 0)
  {
LABEL_23:
    v12 = "";
    return mosyntbase_WString(a1, v12, 0);
  }

  return result;
}

uint64_t mosyntkbsgram_NilIter(void *a1)
{
  *a1 = 0;
  a1[1] = -1;
  return 0;
}

uint64_t mosyntkbsgram_StartCons(_DWORD *a1)
{
  v2 = 0;
  sgram_GetStartCons(a1, &v2);
  return v2;
}

uint64_t mosyntkbsgram_GetFirstEmptyRule(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 0;
  v4 = 0;
  sgram_GetFirstEmptyRule(a1, a2, a3, &v5, &v4);
  return 0;
}

uint64_t mosyntkbsgram_GetNextEmptyRule(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v5 = 0;
  v4 = 0;
  sgram_GetNextEmptyRule(a2, a3, &v5, &v4);
  return 0;
}

uint64_t mosyntkbsgram_GetRuleFeatLists(uint64_t *a1, _WORD *a2, _WORD *a3, _WORD *a4)
{
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  sgram_GetRuleFeatLists(a1, v15, v13, v11);
  v7 = v15[0];
  if (SLOWORD(v15[0]) >= 1)
  {
    memcpy(a2 + 1, v15 + 2, 2 * LOWORD(v15[0]));
  }

  *a2 = v7;
  v8 = v13[0];
  if (SLOWORD(v13[0]) >= 1)
  {
    memcpy(a3 + 1, v13 + 2, 2 * LOWORD(v13[0]));
  }

  *a3 = v8;
  v9 = v11[0];
  if (SLOWORD(v11[0]) >= 1)
  {
    memcpy(a4 + 1, v11 + 2, 2 * LOWORD(v11[0]));
  }

  *a4 = v9;
  return 0;
}

uint64_t mosyntkbsgram_GetRuleVisAndCost(_DWORD *a1, _BYTE *a2, _DWORD *a3)
{
  v5 = 0;
  sgram_GetRuleVisAndCost(a1, &v5, a3);
  *a2 = v5;
  return 0;
}

uint64_t sgram_CloseRiff(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a1)
  {
    LODWORD(result) = ssftriff_reader_ObjClose(*a1, a2, a3, a4, a5, a6, a7, a8);
    if (v8 >= 0)
    {
      result = result;
    }

    else
    {
      result = v8;
    }

    *a1 = 0;
  }

  else if (a2 < 0)
  {
    return a2;
  }

  else
  {
    return 2371887111;
  }

  return result;
}

uint64_t sgram_ReadFromRiff(uint64_t a1, uint64_t a2)
{
  v2 = -1923080188;
  if (!a2)
  {
    return 2371887111;
  }

  result = openChunk(a1, "GRAM");
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v10 = 0;
  v13 = 0;
  v11 = 0;
  *__s1 = 0;
  HashTab = ssftriff_reader_OpenChunk(a1, __s1, &v11, &v10);
  if (HashTab < 0)
  {
LABEL_18:
    v2 = HashTab;
    goto LABEL_21;
  }

  if (!cstdlib_strcmp(__s1, "GRDS") && v11 == 44)
  {
    v7 = v10;
    *a2 = *v10;
    *(a2 + 8) = v7[1];
    *(a2 + 32) = v7[2];
    *(a2 + 56) = v7[3];
    *(a2 + 80) = v7[4];
    *(a2 + 104) = v7[5];
    *(a2 + 128) = v7[6];
    *(a2 + 160) = v7[7];
    *(a2 + 136) = v7[8];
    *(a2 + 208) = v7[9];
    *(a2 + 184) = v7[10];
    HashTab = ssftriff_reader_CloseChunk(a1);
    if ((HashTab & 0x80000000) == 0)
    {
      HashTab = detachChunk(a1, "GRFL", (a2 + 16), (a2 + 24));
      if ((HashTab & 0x80000000) == 0)
      {
        HashTab = detachChunk(a1, "GRER", (a2 + 40), (a2 + 48));
        if ((HashTab & 0x80000000) == 0)
        {
          HashTab = openChunk(a1, "GRRU");
          if ((HashTab & 0x80000000) == 0)
          {
            v8 = detachChunk(a1, "GRHE", (a2 + 64), (a2 + 72));
            if ((v8 & 0x80000000) == 0)
            {
              v8 = detachChunk(a1, "GRHS", (a2 + 88), (a2 + 96));
              if ((v8 & 0x80000000) == 0)
              {
                v8 = detachChunk(a1, "GRHS", (a2 + 112), (a2 + 120));
              }
            }

            v2 = v8;
            v9 = ssftriff_reader_CloseChunk(a1);
            if (v2 >= 0)
            {
              v2 = v9;
            }

            if (v2 < 0)
            {
              goto LABEL_21;
            }

            HashTab = sgram_ReadHashTab(a1, "GRSE", a2 + 136);
            if ((HashTab & 0x80000000) == 0)
            {
              HashTab = sgram_ReadHashTab(a1, "GRRE", a2 + 184);
            }
          }
        }
      }
    }

    goto LABEL_18;
  }

  ssftriff_reader_CloseChunk(a1);
LABEL_21:
  LODWORD(result) = ssftriff_reader_CloseChunk(a1);
  if (v2 >= 0)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

uint64_t sgram_ReleaseData(uint64_t a1)
{
  if (!a1)
  {
    return 2371887111;
  }

  v2 = ssftriff_reader_ReleaseChunkData(*(a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = ssftriff_reader_ReleaseChunkData(v3);
    if (v2 >= 0)
    {
      v2 = v4;
    }
  }

  v5 = ssftriff_reader_ReleaseChunkData(*(a1 + 64));
  if (v2 >= 0)
  {
    v2 = v5;
  }

  v6 = ssftriff_reader_ReleaseChunkData(*(a1 + 88));
  if (v2 >= 0)
  {
    v2 = v6;
  }

  v7 = ssftriff_reader_ReleaseChunkData(*(a1 + 112));
  if (v2 >= 0)
  {
    v2 = v7;
  }

  v8 = sgram_ReleaseHashTab(a1 + 136);
  if (v2 >= 0)
  {
    v2 = v8;
  }

  LODWORD(result) = sgram_ReleaseHashTab(a1 + 184);
  if (v2 >= 0)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

uint64_t sgram_ReleaseHashTab(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = ssftriff_reader_ReleaseChunkData(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = ssftriff_reader_ReleaseChunkData(v4);
    if (v3 >= 0)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

uint64_t openChunk(uint64_t a1, const char *a2)
{
  v9 = 0;
  v7 = 0;
  *__s1 = 0;
  v6 = 0;
  v4 = ssftriff_reader_OpenChunk(a1, __s1, &v7, &v6);
  if ((v4 & 0x80000000) == 0 && cstdlib_strcmp(__s1, a2))
  {
    ssftriff_reader_CloseChunk(a1);
    return 2371887108;
  }

  return v4;
}

uint64_t detachChunk(uint64_t a1, const char *a2, void **a3, void *a4)
{
  v13 = 0;
  v11 = 0;
  *__s1 = 0;
  v8 = ssftriff_reader_OpenChunk(a1, __s1, &v11, a4);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (!cstdlib_strcmp(__s1, a2))
  {
    if (!v11)
    {
      return ssftriff_reader_CloseChunk(a1);
    }

    v9 = ssftriff_reader_DetachChunkData(a1, a3, a4);
    v8 = ssftriff_reader_CloseChunk(a1);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    return v8;
  }

  ssftriff_reader_CloseChunk(a1);
  return 2371887108;
}

uint64_t sgram_ReadHashTab(uint64_t a1, const char *a2, uint64_t a3)
{
  result = openChunk(a1, a2);
  if ((result & 0x80000000) == 0)
  {
    v6 = detachChunk(a1, "GRHE", (a3 + 8), (a3 + 16));
    if ((v6 & 0x80000000) == 0)
    {
      v6 = detachChunk(a1, "GRHS", (a3 + 32), (a3 + 40));
    }

    v7 = v6;
    LODWORD(result) = ssftriff_reader_CloseChunk(a1);
    if (v7 >= 0)
    {
      return result;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t wgram_CloseRiff(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a1)
  {
    LODWORD(result) = ssftriff_reader_ObjClose(*a1, a2, a3, a4, a5, a6, a7, a8);
    if (v8 < 0)
    {
      result = v8;
    }

    else
    {
      result = result;
    }

    *a1 = 0;
  }

  else if (a2 < 0)
  {
    return a2;
  }

  else
  {
    return 7;
  }

  return result;
}

uint64_t wgram_ReadFromRiff(_WORD *a1, int a2, uint64_t a3, uint64_t *a4)
{
  v14 = 0;
  inited = InitRsrcFunction(a1, a2, &v14);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = heap_Calloc(*(v14 + 8), 1, 344);
  *a4 = v7;
  if (!v7)
  {
    return 2371887114;
  }

  v8 = v7;
  v17 = 0;
  v15 = 0;
  *__s1 = 0;
  v9 = ssftriff_reader_OpenChunk(a3, __s1, &v15, 0);
  if ((v9 & 0x80000000) == 0)
  {
    if (!cstdlib_strcmp(__s1, "NFAG"))
    {
      v21 = 0;
      v19 = 0;
      *v20 = 0;
      v18 = 0;
      HashTab = ssftriff_reader_OpenChunk(a3, v20, &v19, &v18);
      if ((HashTab & 0x80000000) == 0)
      {
        if (!cstdlib_strcmp(v20, "NFAS"))
        {
          v11 = v18;
          *(v8 + 256) = *v18;
          *(v8 + 260) = v11[1];
        }

        HashTab = ssftriff_reader_CloseChunk(a3);
        if ((HashTab & 0x80000000) == 0)
        {
          HashTab = wgram_ReadHashTab(a3, v8 + 264);
          if ((HashTab & 0x80000000) == 0)
          {
            HashTab = wgram_ReadHashTab(a3, v8 + 304);
          }
        }
      }

      LODWORD(v9) = HashTab;
    }

    v12 = ssftriff_reader_CloseChunk(a3);
    if (v9 >= 0)
    {
      return v12;
    }

    else
    {
      return v9;
    }
  }

  return v9;
}

uint64_t wgram_ReleaseData(void **a1)
{
  if (!a1)
  {
    return 2371887111;
  }

  v2 = ssftriff_reader_ReleaseChunkData(a1[36]);
  v3 = ssftriff_reader_ReleaseChunkData(a1[37]);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = ssftriff_reader_ReleaseChunkData(a1[41]);
  v6 = ssftriff_reader_ReleaseChunkData(a1[42]);
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v4 >= 0)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

uint64_t wgram_ReadHashTab(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v12 = 0;
  *__s1 = 0;
  v11 = 0;
  v4 = ssftriff_reader_OpenChunk(a1, __s1, &v12, &v11);
  if ((v4 & 0x80000000) == 0)
  {
    if (!cstdlib_strcmp(__s1, "THTB"))
    {
      v18 = 0;
      v16 = 0;
      *v17 = 0;
      v15 = 0;
      v5 = ssftriff_reader_OpenChunk(a1, v17, &v16, &v15);
      if (v5 < 0)
      {
        goto LABEL_18;
      }

      if (!cstdlib_strcmp(v17, "THTD"))
      {
        v6 = v15;
        *a2 = *v15;
        *(a2 + 4) = v6[1];
      }

      v5 = ssftriff_reader_CloseChunk(a1);
      if (v5 < 0)
      {
LABEL_18:
        LODWORD(v4) = v5;
      }

      else
      {
        v18 = 0;
        v16 = 0;
        *v17 = 0;
        v15 = 0;
        LODWORD(v4) = ssftriff_reader_OpenChunk(a1, v17, &v16, &v15);
        if ((v4 & 0x80000000) == 0)
        {
          if (!cstdlib_strcmp(v17, "THTS"))
          {
            LODWORD(v4) = ssftriff_reader_DetachChunkData(a1, (a2 + 24), (a2 + 8));
          }

          v7 = ssftriff_reader_CloseChunk(a1);
          if (v4 >= 0)
          {
            LODWORD(v4) = v7;
          }

          if ((v4 & 0x80000000) == 0)
          {
            v18 = 0;
            v16 = 0;
            *v17 = 0;
            v15 = 0;
            LODWORD(v4) = ssftriff_reader_OpenChunk(a1, v17, &v16, &v15);
            if ((v4 & 0x80000000) == 0)
            {
              if (!cstdlib_strcmp(v17, "THTE"))
              {
                LODWORD(v4) = ssftriff_reader_DetachChunkData(a1, (a2 + 32), (a2 + 16));
              }

              v8 = ssftriff_reader_CloseChunk(a1);
              if (v4 >= 0)
              {
                LODWORD(v4) = v8;
              }
            }
          }
        }
      }
    }

    v9 = ssftriff_reader_CloseChunk(a1);
    if (v4 >= 0)
    {
      return v9;
    }

    else
    {
      return v4;
    }
  }

  return v4;
}

uint64_t kbaux_BuildBrokerString(uint64_t a1, const char *a2, _BYTE *a3, size_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v9);
  if ((result & 0x80000000) == 0)
  {
    auxil_strlcpy(v10, "mosynt_", 0x80uLL);
    auxil_strlcat(v10, a2, 128);
    auxil_strlcat(v10, "_", 128);
    if (auxil_strlcat(v10, v9, 128) > 0x7F)
    {
      return 2371887113;
    }

    else
    {
      LODWORD(result) = brokeraux_ComposeBrokerString(a1, v10, 0, 1, v9, 0, 0, a3, a4);
      if (result >= 0)
      {
        return result;
      }

      else
      {
        return result | 0x8D602000;
      }
    }
  }

  return result;
}

uint64_t hlp_VoiceSetup(uint64_t a1)
{
  __c_3 = 0;
  __c = 0;
  v12 = 0;
  v11 = 0;
  result = com_mosynt_UseMosynt(*(a1 + 40), *(a1 + 48), *(a1 + 56), (a1 + 88));
  if ((result & 0x80000000) == 0)
  {
    __c_1 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    *(a1 + 244) = 0;
    if (((*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "keep_stress", &v18, &v17, &v16) & 0x80000000) == 0 && v17 == 1 && v18)
    {
      v3 = cstdlib_strchr(*v18, v16);
      if (v3)
      {
        *v3 = 0;
      }

      if (!cstdlib_strcmp(*v18, "YES") || !cstdlib_strcmp(*v18, "yes"))
      {
        *(a1 + 244) = 1;
      }
    }

    *(a1 + 368) = 0;
    __c_1 = 0;
    result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "orthtrigger", &__c_3, &__c_1, &__c);
    if ((result & 0x80000000) == 0)
    {
      if (__c_1 == 1 && __c_3)
      {
        v4 = cstdlib_strchr(*__c_3, __c);
        if (v4)
        {
          *v4 = 0;
        }

        cstdlib_strcpy((a1 + 368), *__c_3);
      }

      *(a1 + 264) = 0;
      __c_1 = 0;
      if ((paramc_ParamGetUInt(*(*a1 + 40), "prmigexists", &v12) & 0x80000000) == 0 && v12 == 1)
      {
        *(a1 + 264) = 1;
      }

      *(a1 + 248) = 0;
      __c_1 = 0;
      result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "usetntag", &__c_3, &__c_1, &__c);
      if ((result & 0x80000000) == 0)
      {
        if (__c_1 == 1 && __c_3 && **__c_3 == 49)
        {
          *(a1 + 248) = 1;
        }

        *(a1 + 252) = 0;
        __c_1 = 0;
        result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "docclassmap", &__c_3, &__c_1, &__c);
        if ((result & 0x80000000) == 0)
        {
          if (__c_1 == 1 && __c_3 && !cstdlib_strncmp(*__c_3, "yes", 3uLL))
          {
            *(a1 + 252) = 1;
          }

          *(a1 + 256) = 0;
          __c_1 = 0;
          result = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "feGlobaluseFullPOS", &__c_3, &__c_1, &__c);
          if ((result & 0x80000000) == 0)
          {
            if (__c_1 == 1 && __c_3 && !cstdlib_strncmp(*__c_3, "1", 1uLL))
            {
              *(a1 + 256) = 1;
            }

            *(a1 + 260) = 0;
            if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", &v11) & 0x80000000) == 0 && v11 && *v11)
            {
              *(a1 + 260) = 1;
            }

            if ((*(*(a1 + 32) + 72))(*(a1 + 16), *(a1 + 24), "global") == 2)
            {
              *(a1 + 260) = 1;
            }

            if (*(a1 + 88) != 1 || (v18 = 0, result = com_mosynt_GetCfgParamVal(*(a1 + 40), *(a1 + 48), *(a1 + 56), "mosynt_enablegraphsymcache", "yes", &v18), (result & 0x80000000) == 0) && (v5 = cstdlib_strcmp(v18, "yes") == 0, result = kbsymtab_LoadData(*(a1 + 304), *(a1 + 312), *(a1 + 328), *(a1 + 336), (a1 + 344), v5), (result & 0x80000000) == 0) && (result = fst_LoadData(*(a1 + 304), *(a1 + 312), (a1 + 352)), (result & 0x80000000) == 0))
            {
              result = com_depes_InitLayers(*a1, a1 + 96);
              if ((result & 0x80000000) == 0)
              {
                *(a1 + 224) = 0x3000200010000;
                *(a1 + 232) = 4;
                if (*(a1 + 88) || *(a1 + 264))
                {
                  v6 = 8;
                  v7 = 7;
                  v8 = 6;
                  v9 = 5;
                }

                else
                {
                  v9 = 0;
                  v6 = 7;
                  v7 = 6;
                  v8 = 5;
                }

                *(a1 + 234) = v9;
                *(a1 + 238) = v8;
                *(a1 + 240) = v7;
                v10 = v6 - (*(a1 + 248) == 0);
                *(a1 + 236) = v10;
                *(a1 + 106) = v10 + 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_global_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  v28 = 0;
  v5 = 2316312583;
  v25 = 0;
  v26 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v28);
    if ((inited & 0x80000000) == 0)
    {
      v12 = heap_Calloc(*(v28 + 8), 1, 416);
      v17 = v28;
      if (v12)
      {
        v18 = v12;
        v19 = heap_Calloc(*(v28 + 8), 1, 1040);
        *(v18 + 320) = v19;
        if (v19)
        {
          *v19 = a3;
          v19[1] = a4;
          Object = objc_GetObject(*(v28 + 48), "LINGDB", &v27);
          if ((Object & 0x80000000) != 0 || (*(v18 + 8) = *(v27 + 8), Object = objc_GetObject(*(v28 + 48), "FE_DEPES", &v26), (Object & 0x80000000) != 0) || (v21 = v26, *(v18 + 32) = *(v26 + 8), *(v18 + 16) = *(v21 + 16), Object = objc_GetObject(*(v28 + 48), "FE_DCTLKP", &v25), (Object & 0x80000000) != 0) || (v22 = v25, *(v18 + 56) = *(v25 + 8), *(v18 + 40) = *(v22 + 16), *v18 = v28, *(v18 + 268) = 0, *(v18 + 304) = a3, *(v18 + 312) = a4, *(v18 + 328) = a1, *(v18 + 336) = a2, *(v18 + 408) = 0, *(v18 + 376) = 0u, *(v18 + 392) = 0u, Object = hlp_VoiceSetup(v18), (Object & 0x80000000) != 0) || (Object = globalbeadapt_SetFEBOOLKeyword(v18, "mdesegpos_morpheme_processing", (v18 + 272), 0), (Object & 0x80000000) != 0) || (Object = globalbeadapt_SetFEBOOLKeyword(v18, "feGlobalmergemorphemes", (v18 + 276), 1), (Object & 0x80000000) != 0) || (Object = globalbeadapt_SetFEBOOLKeyword(v18, "feGlobalmergemorphemes", (v18 + 280), 1), (Object & 0x80000000) != 0))
          {
            v5 = Object;
          }

          else
          {
            v5 = globalbeadapt_Init_LOO(v18);
            if ((v5 & 0x80000000) == 0)
            {
              v23 = 62344;
LABEL_19:
              *a5 = v18;
              *(a5 + 8) = v23;
              return v5;
            }
          }

LABEL_18:
          fe_global_ObjClose(*a5, *(a5 + 8));
          v18 = 0;
          v23 = 0;
          goto LABEL_19;
        }

        v17 = v28;
      }

      log_OutPublic(*(v17 + 32), "FE_GLOBAL", 38000, 0, v13, v14, v15, v16, v25);
      v5 = 2316312586;
      goto LABEL_18;
    }

    return inited;
  }

  return v5;
}

uint64_t fe_global_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62344, 416);
  if ((result & 0x80000000) != 0)
  {
    return 2316312584;
  }

  if (a1)
  {
    hlp_UnloadSymTabs(a1);
    if (*(a1 + 352))
    {
      fst_UnloadData(*(a1 + 304), *(a1 + 312), (a1 + 352));
      *(a1 + 352) = 0;
    }

    globalbeadapt_DeInit_LOO(a1);
    if (*(a1 + 8))
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v4 = *(a1 + 320);
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_global_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62344, 416);
  if ((result & 0x80000000) != 0)
  {
    return 2316312584;
  }

  if (a1)
  {
    result = hlp_UnloadSymTabs(a1);
    if ((result & 0x80000000) == 0)
    {
      if (!*(a1 + 352) || (result = fst_UnloadData(*(a1 + 304), *(a1 + 312), (a1 + 352)), *(a1 + 352) = 0, (result & 0x80000000) == 0))
      {
        result = hlp_VoiceSetup(a1);
        if ((result & 0x80000000) == 0)
        {
          result = globalbeadapt_SetFEBOOLKeyword(a1, "mdesegpos_morpheme_processing", (a1 + 272), 0);
          if ((result & 0x80000000) == 0)
          {
            result = globalbeadapt_SetFEBOOLKeyword(a1, "feGlobalmergemorphemes", (a1 + 276), 1);
            if ((result & 0x80000000) == 0)
            {
              result = globalbeadapt_SetFEBOOLKeyword(a1, "feGlobalmergemorphemes", (a1 + 280), 1);
              if ((result & 0x80000000) == 0)
              {
                globalbeadapt_DeInit_LOO(a1);

                return globalbeadapt_Init_LOO(a1);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_UnloadSymTabs(uint64_t a1)
{
  if (!*(a1 + 344))
  {
    return 0;
  }

  result = kbsymtab_UnloadData(*(a1 + 304), *(a1 + 312), *(a1 + 328), *(a1 + 336), (a1 + 344));
  *(a1 + 344) = 0;
  return result;
}

uint64_t fe_global_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62344, 416);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2316312584;
  }
}

uint64_t fe_global_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v93[16] = *MEMORY[0x277D85DE8];
  v77 = 0;
  __s1 = 0;
  v75 = 0;
  if ((safeh_HandleCheck(a1, a2, 62344, 416) & 0x80000000) != 0)
  {
    return 2316312584;
  }

  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  *a5 = 1;
  v9 = (*(*(a1 + 32) + 144))(*(a1 + 16), *(a1 + 24), a1 + 104);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_172;
  }

  *(a1 + 360) = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "foreignpron", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
  {
    *(a1 + 360) = 1;
  }

  *(a1 + 364) = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "nlucompatvc6be", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
  {
    *(a1 + 364) = 1;
  }

  v10 = (*(*(a1 + 8) + 104))(a3, a4, 1, 0, &v80 + 2);
  if ((v10 & 0x80000000) == 0 && ((*(*(a1 + 8) + 184))(a3, a4, HIWORD(v80), 0, &v77) & 0x80000000) == 0 && v77 == 1)
  {
    v10 = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v80), 0, &v81, &v80);
    if ((v10 & 0x80000000) == 0 && v80 >= 2u)
    {
      if (*(a1 + 88))
      {
        v11 = heap_Calloc(*(*a1 + 8), 5000, 1);
        *(a1 + 376) = v11;
        v16 = *a1;
        if (v11)
        {
          v17 = heap_Calloc(*(v16 + 8), 5000, 1);
          *(a1 + 384) = v17;
          v16 = *a1;
          if (v17)
          {
            v18 = heap_Calloc(*(v16 + 8), 5000, 1);
            *(a1 + 392) = v18;
            v16 = *a1;
            if (v18)
            {
              v19 = heap_Calloc(*(v16 + 8), 5000, 1);
              *(a1 + 400) = v19;
              v16 = *a1;
              if (v19)
              {
                v20 = heap_Calloc(*(v16 + 8), 8, 8);
                *(a1 + 408) = v20;
                if (v20)
                {
                  for (i = 0; i != 64; i += 8)
                  {
                    *(*(a1 + 408) + i) = 0;
                  }

                  v22 = 0;
                  while (1)
                  {
                    *(*(a1 + 408) + v22) = heap_Calloc(*(*a1 + 8), 5000, 1);
                    if (!*(*(a1 + 408) + v22))
                    {
                      break;
                    }

                    v22 += 8;
                    if (v22 == 64)
                    {
                      goto LABEL_27;
                    }
                  }
                }

                v16 = *a1;
              }
            }
          }
        }

        log_OutPublic(*(v16 + 32), "FE_GLOBAL", 38000, 0, v12, v13, v14, v15, v73);
        v10 = 2316312586;
        goto LABEL_173;
      }

LABEL_27:
      v91 = 0;
      v92 = 0;
      v90 = 0;
      v88 = 0;
      v93[0] = 0;
      v85 = 0;
      v86 = 0;
      __s = 0;
      v83 = 0;
      v9 = (*(*(a1 + 8) + 104))(a3, a4, 2, HIWORD(v80), &v92 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      LOWORD(v90) = 0;
      v89 = 0;
      v23 = HIWORD(v92);
      if (!HIWORD(v92))
      {
        goto LABEL_130;
      }

      v24 = 0;
LABEL_30:
      v9 = (*(*(a1 + 8) + 168))(a3, a4, v23, 0, 1, &v88, &v91 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      if (v88 - 9 >= 6 && v88 != 4)
      {
        if (v88 != 15)
        {
          goto LABEL_89;
        }

        v24 = HIWORD(v92);
        v9 = (*(*(a1 + 8) + 120))(a3, a4, HIWORD(v92), &v92 + 2);
        goto LABEL_41;
      }

      v82 = 0;
      v9 = (*(*(a1 + 8) + 168))(a3, a4, HIWORD(v92), 1, 1, &v90, &v91 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      v9 = (*(*(a1 + 8) + 168))(a3, a4, HIWORD(v92), 2, 1, &v89, &v91 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      v26 = (*(*(a1 + 8) + 184))(a3, a4, HIWORD(v92), 14, &v82);
      v27 = *(a1 + 8);
      if (v26 < 0 || !v82)
      {
        v9 = (*(v27 + 120))(a3, a4, HIWORD(v92), &v92 + 2);
        goto LABEL_41;
      }

      v9 = (*(v27 + 176))(a3, a4, HIWORD(v92), 14, &__s, &v91 + 2);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      if (*(a1 + 364) != 1)
      {
        goto LABEL_79;
      }

      v74 = v24;
      v28 = __s;
      v29 = cstdlib_strlen(__s);
      v30 = v29;
      for (j = v28; ; ++j)
      {
        if (*j == 59)
        {
          *j = 0;
        }

        else if (!*j)
        {
          v32 = &v28[v29];
          v33 = v28;
          if (!v29)
          {
            goto LABEL_78;
          }

          while (2)
          {
            if (cstdlib_strncmp(v33, "PHR:", 4uLL))
            {
              if (!cstdlib_strncmp(v33, "POS:", 4uLL))
              {
                v34 = v33 + 4;
                goto LABEL_63;
              }
            }

            else
            {
              v34 = v33 + 4;
              v35 = cstdlib_strlen(v33 + 4);
              if (v35 >= 3)
              {
                v36 = *v34 - 66;
                v37 = v36 > 0xD;
                v38 = (1 << v36) & 0x2081;
                v39 = v37 || v38 == 0;
                if (!v39 && v33[5] == 45)
                {
                  v40 = v35 - 2;
                  cstdlib_memmove(v33 + 4, v33 + 6, v35 - 2);
                  *&v34[v40] = 0;
                }
              }

LABEL_63:
              v41 = cstdlib_strchr(v34, 43);
              if (v41 && *v41)
              {
                v42 = (v41 + 1);
                do
                {
                  *(v42 - 1) = 0;
                }

                while (*v42++);
              }
            }

            if (++v33 != v32)
            {
              continue;
            }

            break;
          }

          v44 = 0;
          v45 = v28;
          do
          {
            v46 = *v45;
            if (*v45)
            {
              if (v44 == 1)
              {
                *v28++ = 59;
                v46 = *v45;
              }

              v44 = 0;
              *v28++ = v46;
            }

            else
            {
              v44 = 1;
            }

            ++v45;
            --v30;
          }

          while (v30);
LABEL_78:
          *v28 = 0;
          v24 = v74;
LABEL_79:
          hlp_NLUStrFind(__s, "BND", &v85, &v83);
          hlp_NLUStrFind(__s, "PRM", &v86, &v83 + 1);
          if (v89 && v24)
          {
            v87[0] = 0;
            if (!v86 || (v87[0] = *v86) == 0 || (v87[1] = 0, v47 = *(*(a1 + 8) + 160), v48 = HIWORD(v92), v49 = cstdlib_strlen(v87), v9 = v47(a3, a4, v48, 13, (v49 + 1), v87, &v91), (v9 & 0x80000000) == 0))
            {
              if (!v85)
              {
                goto LABEL_92;
              }

              v50 = *v85;
              if (v50 != 78 && v50 != 87)
              {
                if (v50 == 83)
                {
                  HIWORD(v90) = 200;
                  goto LABEL_91;
                }

                goto LABEL_92;
              }

              HIWORD(v90) = 0;
LABEL_91:
              v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v92), 8, 1, &v90 + 2, &v91);
              if ((v9 & 0x80000000) == 0)
              {
LABEL_92:
                v51 = HIWORD(v92);
                while (1)
                {
                  v9 = (*(*(a1 + 8) + 120))(a3, a4, v51, &v92 + 2);
                  if ((v9 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (!HIWORD(v92))
                  {
                    goto LABEL_42;
                  }

                  v9 = (*(*(a1 + 8) + 168))(a3, a4);
                  if ((v9 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v51 = HIWORD(v92);
                  if (!HIWORD(v92))
                  {
                    goto LABEL_42;
                  }

                  if (v88 <= 0xF && ((1 << v88) & 0xFE10) != 0)
                  {
                    v9 = (*(*(a1 + 8) + 168))(a3, a4);
                    if ((v9 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }

                    if (!v85)
                    {
                      goto LABEL_42;
                    }

                    v52 = *v85;
                    if (v52 == 78)
                    {
                      if (v88 != 15)
                      {
                        goto LABEL_42;
                      }

                      v9 = (*(*(a1 + 8) + 168))(a3, a4, HIWORD(v92), 2, 1, &v89, &v91 + 2);
                      if ((v9 & 0x80000000) == 0)
                      {
                        v9 = (*(*(a1 + 8) + 160))(a3, a4, v24, 2, 1, &v89, &v91);
                        if ((v9 & 0x80000000) == 0)
                        {
                          v9 = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v92), 4, v93, &v91 + 2);
                          if ((v9 & 0x80000000) == 0)
                          {
                            v53 = *(*(a1 + 8) + 160);
                            v54 = cstdlib_strlen(v93[0]);
                            v9 = v53(a3, a4, v24, 4, (v54 + 1), v93[0], &v91);
                            if ((v9 & 0x80000000) == 0)
                            {
                              v9 = (*(*(a1 + 8) + 120))(a3, a4, HIWORD(v92), &v92);
                              if ((v9 & 0x80000000) == 0)
                              {
                                v9 = (*(*(a1 + 8) + 192))(a3, a4, HIWORD(v92));
                                if ((v9 & 0x80000000) == 0)
                                {
                                  HIWORD(v92) = v92;
                                  goto LABEL_42;
                                }
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_172;
                    }

                    if (v88 != 15)
                    {
                      v9 = (*(*(a1 + 8) + 88))(a3, a4, HIWORD(v92), &v92 + 2);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v88 = 15;
                      v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v92), 0, 1, &v88, &v91);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v92), 1, 1, &v90, &v91);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 168))(a3, a4, v24, 2, 1, &v89, &v91 + 2);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v92), 2, 1, &v89, &v91);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 160))(a3, a4, v24, 2, 1, &v90, &v91);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 176))(a3, a4, v24, 4, v93, &v91 + 2);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v55 = *(*(a1 + 8) + 160);
                      v56 = HIWORD(v92);
                      v57 = cstdlib_strlen(v93[0]);
                      v9 = v55(a3, a4, v56, 4, (v57 + 1), v93[0], &v91);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v9 = (*(*(a1 + 8) + 160))(a3, a4, v24, 4, 2, "P", &v91);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      v52 = *v85;
                    }

                    if (v52 == 87)
                    {
                      HIWORD(v90) = 2;
                      v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v92), 7, 1, &v90 + 2, &v91);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      HIWORD(v90) = 0;
                    }

                    else
                    {
                      if (v52 != 83)
                      {
                        goto LABEL_42;
                      }

                      HIWORD(v90) = 1;
                      v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v92), 7, 1, &v90 + 2, &v91);
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_172;
                      }

                      HIWORD(v90) = 200;
                    }

                    v9 = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v92), 8, 1, &v90 + 2, &v91);
                    if ((v9 & 0x80000000) == 0)
                    {
                      goto LABEL_42;
                    }

                    goto LABEL_172;
                  }
                }
              }
            }

            goto LABEL_172;
          }

LABEL_89:
          v9 = (*(*(a1 + 8) + 120))(a3, a4, HIWORD(v92), &v92 + 2);
LABEL_41:
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_172;
          }

LABEL_42:
          v23 = HIWORD(v92);
          if (!HIWORD(v92))
          {
LABEL_130:
            if (*(a1 + 244))
            {
              v58 = 2;
            }

            else if (*(a1 + 88))
            {
              v58 = 98;
            }

            else
            {
              v58 = 34;
            }

            v9 = (*(*(a1 + 8) + 272))(a3, a4, v58, 3, 0, 0);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            v9 = globalbeadapt_SetupDepesInput(a1, a3, a4, HIWORD(v80), "global", 0);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            if (*(a1 + 88))
            {
              v9 = hlp_SaveLayers(a1);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }
            }

            cstdlib_strcpy(v93, "global");
            v59 = cstdlib_strlen(v93);
            if (*(a1 + 360))
            {
              v60 = v59;
              cstdlib_strcat(v93, "foreign");
              if (((*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v93) & 0x80000000) != 0)
              {
                *(v93 + v60) = 0;
                v9 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v93);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_172;
                }
              }
            }

            else
            {
              hlp_WriteDepesLayers(a1, "before cgn");
              v9 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v93);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              hlp_WriteDepesLayers(a1, "after cgn");
            }

            if (!*(a1 + 88))
            {
              goto LABEL_155;
            }

            v9 = hlp_ReconstituteLayers(a1);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            hlp_WriteDepesLayers(a1, "after realignment");
            v9 = fe_global_ApplyFSTs(a1);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            v9 = hlp_ReconstituteLayers(a1);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_172;
            }

            hlp_WriteDepesLayers(a1, "before be_adapt");
            cstdlib_strcpy(v93, "be_adapt");
            if (!(*(*(a1 + 32) + 72))(*(a1 + 16), *(a1 + 24), v93) || (v61 = (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), v93), (v61 & 0x80000000) == 0) || (v10 = v61, (v61 & 0x1FFF) == 4))
            {
              hlp_WriteDepesLayers(a1, "after be_adapt");
LABEL_155:
              v9 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, &v79, &v78);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              v79[v78] = 0;
              log_OutText(*(*a1 + 32), "FE_GLOBAL", 5, 0, "%s O1: %s", v62, v63, v64, v93);
              v9 = globalbeadapt_DoPostprocessing(a1, v81, &v79, 1);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              v9 = (*(*(a1 + 8) + 320))(a3, a4, 1);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              v65 = *(a1 + 272);
              if (!v65 || v65 == 1 && !*(a1 + 276))
              {
                goto LABEL_191;
              }

              v9 = globalbeadapt_OutputMorphemesToLingDBAsWords(a1, a3, a4, HIWORD(v80), v81, *(a1 + 120), v79, &v75);
              if ((v9 & 0x80000000) != 0)
              {
                goto LABEL_172;
              }

              if (v75 == 1)
              {
LABEL_191:
                v9 = globalbeadapt_OutputToLingDB(a1, a3, a4, HIWORD(v80), v81, v79);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_172;
                }
              }

              if (*(a1 + 272) == 1 && *(a1 + 276) == 1 && (!v75 && (v9 = globalbeadapt_SplitWordRecordsWithSpecialChar(a1, a3, a4, HIWORD(v80), v81, (a1 + 368)), (v9 & 0x80000000) != 0) || (v9 = globalbeadapt_RemoveSpecialChar(a1, a3, a4, HIWORD(v80)), (v9 & 0x80000000) != 0)))
              {
LABEL_172:
                v10 = v9;
              }

              else
              {
                v10 = (*(*(a1 + 8) + 272))(a3, a4, 4, 1, 0, 0);
                if ((v10 & 0x80000000) == 0 && *(a1 + 368))
                {
                  v9 = fe_global_CleanTriggerOrth(a1, a3, a4, HIWORD(v80));
                  goto LABEL_172;
                }
              }
            }

LABEL_173:
            com_depes_FreeLayers(*a1, a1 + 96);
            if (*(a1 + 88))
            {
              v66 = *(a1 + 376);
              if (v66)
              {
                heap_Free(*(*a1 + 8), v66);
                *(a1 + 376) = 0;
              }

              v67 = *(a1 + 384);
              if (v67)
              {
                heap_Free(*(*a1 + 8), v67);
                *(a1 + 384) = 0;
              }

              v68 = *(a1 + 392);
              if (v68)
              {
                heap_Free(*(*a1 + 8), v68);
                *(a1 + 392) = 0;
              }

              v69 = *(a1 + 400);
              if (v69)
              {
                heap_Free(*(*a1 + 8), v69);
                *(a1 + 400) = 0;
              }

              if (*(a1 + 408))
              {
                for (k = 0; k != 64; k += 8)
                {
                  v71 = *(*(a1 + 408) + k);
                  if (v71)
                  {
                    heap_Free(*(*a1 + 8), v71);
                    *(*(a1 + 408) + k) = 0;
                  }
                }

                heap_Free(*(*a1 + 8), *(a1 + 408));
                *(a1 + 408) = 0;
              }
            }

            return v10;
          }

          goto LABEL_30;
        }
      }
    }
  }

  return v10;
}

uint64_t hlp_SaveLayers(uint64_t a1)
{
  __src = 0;
  if (!*(a1 + 104))
  {
    return 0;
  }

  v2 = 0;
  v7 = 0;
  do
  {
    v3 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), v2, &__src, &v7);
    if ((v3 & 0x80000000) != 0)
    {
      break;
    }

    v4 = __src[v7];
    __src[v7] = 0;
    cstdlib_strncpy(*(*(a1 + 408) + 8 * v2), __src, 0x1387uLL);
    *(*(*(a1 + 408) + 8 * v2) + 4999) = 0;
    __src[v7] = v4;
    ++v2;
  }

  while (v2 < *(a1 + 104));
  return v3;
}

uint64_t hlp_WriteDepesLayers(uint64_t result, char *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (*(result + 88))
  {
    v3 = result;
    result = mosynt_TraceString(*(result + 320), "\n", 1u);
    if ((result & 0x80000000) == 0)
    {
      v13 = 0;
      v12 = 0;
      result = (*(*(v3 + 32) + 128))(*(v3 + 16), *(v3 + 24), 0, &v13, &v12);
      if ((result & 0x80000000) == 0)
      {
        result = Utf8_LengthInUtf8chars(v13, v12);
        v14[0] = 0;
        v14[1] = 0;
        v4 = result;
        if (result)
        {
          v5 = "\n";
          while (1)
          {
            v6 = v4 <= 0x32 ? result : 50;
            if (*(v3 + 104))
            {
              break;
            }

LABEL_24:
            result = mosynt_TraceString(*(v3 + 320), v5, 1u);
            if ((result & 0x80000000) == 0)
            {
              result = v4 - v6;
              v4 = (v4 - v6);
              if (v4)
              {
                continue;
              }
            }

            return result;
          }

          v7 = 0;
          while (1)
          {
            result = (*(*(v3 + 32) + 128))(*(v3 + 16), *(v3 + 24), v7, &v13, &v12);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceString(*(v3 + 320), a2, 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceString(*(v3 + 320), " L", 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceInt(*(v3 + 320), v7 + 1, 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            result = mosynt_TraceString(*(v3 + 320), ": ", 1u);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            if (v6)
            {
              v8 = v5;
              v9 = 0;
              v10 = *(v14 + v7);
              while (1)
              {
                result = utf8_getUTF8Char(v13, v10, __s);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                result = mosynt_TraceString(*(v3 + 320), __s, 1u);
                if ((result & 0x80000000) != 0)
                {
                  break;
                }

                v10 += cstdlib_strlen(__s);
                if (++v9 >= v6)
                {
                  *(v14 + v7) = v10;
                  v5 = v8;
                  goto LABEL_22;
                }
              }

              *(v14 + v7) = v10;
              return result;
            }

LABEL_22:
            result = mosynt_TraceString(*(v3 + 320), v5, 1u);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (++v7 >= *(v3 + 104))
            {
              goto LABEL_24;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_ReconstituteLayers(uint64_t a1)
{
  v12 = 0;
  __src = 0;
  v2 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, &__src, &v12);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = __src[v12];
    __src[v12] = 0;
    cstdlib_strncpy(**(a1 + 408), __src, 0x1387uLL);
    *(**(a1 + 408) + 4999) = 0;
    __src[v12] = v3;
    if (*(a1 + 104) >= 2u)
    {
      v4 = 1;
      while (1)
      {
        v5 = v4 == 1 ? 126 : 0;
        v6 = mosynt_AlignFieldsWithRef(**(a1 + 408), *(*(a1 + 408) + 8 * v4), *(a1 + 392), 0x1388u, v5);
        if ((v6 & 0x80000000) != 0)
        {
          break;
        }

        cstdlib_strcpy(*(*(a1 + 408) + 8 * v4), *(a1 + 392));
        v7 = *(*(a1 + 32) + 120);
        v8 = *(a1 + 392);
        v9 = cstdlib_strlen(v8);
        v2 = v7(*(a1 + 16), *(a1 + 24), v4, v8, v9);
        if ((v2 & 0x80000000) == 0 && ++v4 < *(a1 + 104))
        {
          continue;
        }

        return v2;
      }

      return v6;
    }
  }

  return v2;
}

uint64_t fe_global_ApplyFSTs(uint64_t a1)
{
  v23 = 0;
  v20 = 0;
  result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v23);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v3 = *v23;
  result = mosynt_NormalizeSpaceFields(**(a1 + 408), *(a1 + 392), 0x1388u);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v4 = 0;
  LOWORD(v5) = 0;
  while (1)
  {
    v6 = *(a1 + 392);
    v7 = v6[v4];
    if (v7 == 32)
    {
      if (v5 >= v4)
      {
        LOBYTE(v7) = 32;
      }

      else
      {
        v5 = v5;
        do
        {
          *(*(a1 + 392) + v5++) = 126;
        }

        while (v4 != v5);
        v6 = *(a1 + 392);
        LOBYTE(v7) = v6[v4];
        LOWORD(v5) = v4;
      }

      goto LABEL_13;
    }

    if (v7 == 126)
    {
      goto LABEL_14;
    }

    if (!v6[v4])
    {
      break;
    }

LABEL_13:
    v6[v5] = v7;
    LOWORD(v5) = v5 + 1;
LABEL_14:
    ++v4;
  }

  if (v5 < v4)
  {
    v8 = v5;
    do
    {
      *(*(a1 + 392) + v8++) = 126;
    }

    while (v4 != v8);
    v6 = *(a1 + 392);
  }

  mosynt_SubstAllSubstrOcc(v6, "~", " ", *(a1 + 400), 5000);
  result = mosynt_SubstAllSubstrOcc(*(a1 + 400), "¡", "~", *(a1 + 392), 5000);
  if ((result & 0x80000000) == 0)
  {
    v21 = 0;
    v19 = 95;
    v9 = *(a1 + 392);
    if (*v9)
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        utf8_getUTF8Char(v9, v11, __s);
        v12 = *(*(*(a1 + 408) + 32) + v10);
        if (v12 < 33 || v3 < 33 || v12 == v3)
        {
          v13 = __s;
        }

        else
        {
          v13 = &v19;
        }

        result = mosynt_App(*(a1 + 400), 5000, &v21, v13, &v20);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v11 += cstdlib_strlen(__s);
        ++v10;
        v9 = *(a1 + 392);
        if (!v9[v11])
        {
          v14 = v21;
          goto LABEL_31;
        }
      }
    }

    else
    {
      v14 = 0;
LABEL_31:
      *(*(a1 + 400) + v14) = 0;
      result = mosynt_SentPhono(*(a1 + 320), *(a1 + 344), *(a1 + 352), *(a1 + 400), *(*(a1 + 408) + 40), *(a1 + 376), 5000);
      if ((result & 0x80000000) == 0)
      {
        result = mosynt_SubstAllSubstrOcc(*(a1 + 376), "~", "¡", *(a1 + 400), 5000);
        if ((result & 0x80000000) == 0)
        {
          cstdlib_strcpy(*(a1 + 376), *(a1 + 400));
          v19 = 95;
          v18 = 123;
          result = mosynt_SubstAllSubstrOcc(*(a1 + 376), &v19, &v18, *(a1 + 392), 5000);
          if ((result & 0x80000000) == 0)
          {
            result = mosynt_ReplaceNonSpaceFields(**(a1 + 408), *(a1 + 392), *(a1 + 384), 0x1388u, 126, 1);
            if ((result & 0x80000000) == 0)
            {
              v15 = *(*(a1 + 32) + 120);
              v16 = *(a1 + 384);
              v17 = cstdlib_strlen(v16);
              return v15(*(a1 + 16), *(a1 + 24), 0, v16, v17);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t fe_global_CleanTriggerOrth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = 0;
  v29 = 0;
  v27 = 0;
  __s1 = 0;
  v26 = 0;
  v24 = 0;
  v8 = (*(*(a1 + 8) + 176))(a2, a3, a4, 0, &__s1, &v28);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(*(a1 + 8) + 176))(a2, a3, a4, 1, &v26, &v24);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = cstdlib_strstr(__s1, (a1 + 368));
    if (v10)
    {
      v11 = v10;
LABEL_5:
      v12 = cstdlib_strlen((a1 + 368));
      v13 = cstdlib_strlen(v11);
      v14 = cstdlib_strlen((a1 + 368));
      cstdlib_memmove(v11, &v11[v12], v13 - v14 + 1);
      v15 = v24;
      if (v24)
      {
        v16 = 0;
        v17 = v26;
        v18 = 12;
        do
        {
          if (*(v17 + v18) - *(v17 + 12) > (v11 - __s1))
          {
            v19 = cstdlib_strlen((a1 + 368));
            v17 = v26;
            *(v26 + v18) -= v19;
            v15 = v24;
          }

          ++v16;
          v18 += 32;
        }

        while (v16 < v15);
      }

      for (i = (*(*(a1 + 8) + 104))(a2, a3, 2, a4, &v29 + 2); ; i = (*(*(a1 + 8) + 120))(a2, a3, HIWORD(v29), &v29 + 2))
      {
        v9 = i;
        if ((i & 0x80000000) != 0)
        {
          break;
        }

        if (!HIWORD(v29))
        {
          v11 = cstdlib_strstr(__s1, (a1 + 368));
          if (v11)
          {
            goto LABEL_5;
          }

          return v9;
        }

        v8 = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v29), 1, 1, &v29, &v28);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }

        if (v11 - __s1 < v29)
        {
          v21 = cstdlib_strlen((a1 + 368));
          LOWORD(v29) = v29 - v21;
          v8 = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v29), 1, 1, &v29, &v27);
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }
        }

        v8 = (*(*(a1 + 8) + 168))(a2, a3, HIWORD(v29), 2, 1, &v28 + 2, &v28);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }

        if (v11 - __s1 < HIWORD(v28))
        {
          v22 = cstdlib_strlen((a1 + 368));
          HIWORD(v28) -= v22;
          v8 = (*(*(a1 + 8) + 160))(a2, a3, HIWORD(v29), 2, 1, &v28 + 2, &v27);
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t fe_global_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62344, 416);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2316312584;
  }
}

uint64_t fe_global_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2316312577;
  }

  result = 0;
  *a2 = &IFeGlobal;
  return result;
}

uint64_t fe_global_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2316312583;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t get_ner_brokerstring(uint64_t a1, _BYTE *a2, size_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = 0;
  __s2 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__s1 = 0u;
  v10 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v7);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "ner_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v7);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, a3);
    }
  }

  return result;
}

uint64_t updateNLUNE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v29 = 0;
  v28 = 0;
  __s = 0;
  v14 = (*(a4 + 184))(a2, a3, a5, 14, &v29 + 2);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  if (!HIWORD(v29))
  {
LABEL_5:
    v15 = "";
    __s = "";
    goto LABEL_8;
  }

  v14 = (*(a4 + 176))(a2, a3, a5, 14, &__s, &v29);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  if (v29 < 2u)
  {
    goto LABEL_5;
  }

  v15 = __s;
LABEL_8:
  v17 = cstdlib_strlen(v15);
  v18 = cstdlib_strlen(";NE:");
  v19 = heap_Calloc(*(a1 + 8), v17 + v18 + 3, 1);
  if (!v19)
  {
    return 2314215434;
  }

  v20 = v19;
  cstdlib_strcpy(v19, __s);
  hlp_NLUStrSet(v20, "NE", (*(a7 + 8) + 40 * a6 + 30));
  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", v21, v22, v23, a5);
  v24 = *(a4 + 160);
  v25 = cstdlib_strlen(v20);
  v16 = v24(a2, a3, a5, 14, (v25 + 1), v20, &v28);
  heap_Free(*(a1 + 8), v20);
  return v16;
}

uint64_t ner_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v17 = (*(a5 + 104))(a3, a4, 1, 0, &v41 + 2);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v18 = (*(a5 + 184))(a3, a4, HIWORD(v41), 0, &v41);
  if ((v18 & 0x80000000) == 0 && v41 == 1)
  {
    v18 = (*(a5 + 176))(a3, a4, HIWORD(v41), 0, &v37, &v40);
    if ((v18 & 0x80000000) == 0 && v40 >= 2u)
    {
      v19 = a9 || *(a2 + 36) != 1 ? ner_getSentenceData(a1, a3, a4, a5, HIWORD(v41), v37, a2, a6, a7, a8, &v39) : ner_getSentenceData(a1, a3, a4, a5, HIWORD(v41), v37, a2, *(a2 + 48), *(a2 + 72), *(a2 + 80), &v39);
      v18 = v19;
      if ((v19 & 0x80000000) == 0)
      {
        if (*(a2 + 16))
        {
          v18 = fi_predict(*a2, &v39, *(a2 + 18), &v38, v20, v21, v22, v23);
          if ((v18 & 0x80000000) != 0)
          {
            log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "FI NER Prediction Failed", v25, v26, v27, 0);
            return v18;
          }

          if (*(a2 + 16))
          {
            v28 = 0;
            v29 = 0;
            v30 = v38;
            v31 = *(a2 + 8);
            v32 = 78;
            do
            {
              v33 = v31 + 40 * v28;
              if (!*(v33 + 24))
              {
                goto LABEL_26;
              }

              v34 = 0;
              v35 = (v30 + 8 * v29);
              while (!v34)
              {
                v32 = **v35;
                *(v33 + 30) = v32;
                *(*(a2 + 8) + 40 * v28 + 31) = 0;
                v31 = *(a2 + 8);
LABEL_25:
                ++v34;
                v33 = v31 + 40 * v28;
                if (v34 >= *(v33 + 24))
                {
                  goto LABEL_26;
                }
              }

              v36 = *v35[v34];
              if (v32 == v36 || v36 == 78 || v32 == 78)
              {
                goto LABEL_25;
              }

              v32 = 78;
              *(v33 + 30) = 78;
              *(*(a2 + 8) + 40 * v28 + 31) = 0;
              v31 = *(a2 + 8);
LABEL_26:
              v29 += *(v31 + 40 * v28++ + 24);
            }

            while (v28 < *(a2 + 16));
          }
        }
      }
    }
  }

  return v18;
}

uint64_t ner_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v18 = a1;
  v84 = 0;
  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "ner: processing=%s", a6, a7, a8, a6);
  *(a7 + 18) = 0;
  *(a7 + 8) = 0;
  if (!a6)
  {
    *(a7 + 16) = 0;
LABEL_11:
    *(a7 + 8) = 0;
    log_OutText(*(v18 + 32), "FE_HMOGRPH", 5, 0, "ner: no words found", v19, v20, v21, v77);
    return 0;
  }

  v22 = cstdlib_strlen(a6);
  v23 = 1;
  v24 = v22;
  if (v22)
  {
    v25 = a6;
    do
    {
      v27 = *v25++;
      v26 = v27;
      if (v27 == 95 || v26 == 32)
      {
        ++v23;
      }

      --v24;
    }

    while (v24);
    *(a7 + 16) = v23;
    if (!v23)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a7 + 16) = 1;
  }

  v28 = 2314215434;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v83 = 0;
  v29 = heap_Calloc(*(v18 + 8), v23, 40);
  *(a7 + 8) = v29;
  if (!v29)
  {
    goto LABEL_87;
  }

  v30 = (*(a4 + 104))(a2, a3, 2, a5, &v88);
  if ((v30 & 0x80000000) != 0)
  {
LABEL_67:
    v28 = v30;
    goto LABEL_87;
  }

  v31 = v88;
  if (!v88)
  {
LABEL_76:
    *(a7 + 16) = 0;
    heap_Free(*(v18 + 8), *(a7 + 8));
    *(a7 + 8) = 0;
    return v30;
  }

  v80 = a8;
  v32 = 0;
  v82 = 0;
  do
  {
    while (1)
    {
      v33 = (*(a4 + 168))(a2, a3, v31, 0, 1, &v87, &v86 + 2);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_77;
      }

      if (v87 > 0xA || ((1 << v87) & 0x610) == 0)
      {
        break;
      }

      v33 = (*(a4 + 168))(a2, a3, v88, 1, 1, &v86, &v86 + 2);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_77;
      }

      v33 = (*(a4 + 168))(a2, a3, v88, 2, 1, &v85, &v86 + 2);
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_77;
      }

      v38 = v86;
      if (v86 >= v85)
      {
        log_OutText(*(v18 + 32), "FE_HMOGRPH", 5, 0, "ner: out of memory", v35, v36, v37, v77);
        v66 = 16049;
LABEL_86:
        v28 = v66 | 0x89F00000;
        goto LABEL_87;
      }

      ++v32;
      v39 = *(a7 + 8);
      v40 = v82;
      if (!v82 || (v41 = v39 + 40 * v82, v86 != *(v41 - 14)) || v85 != *(v41 - 12))
      {
        if (*(a7 + 16) <= v82)
        {
          *(a7 + 16) = v82 + 1;
          v42 = heap_Realloc(*(v18 + 8), v39, 40 * (v82 + 1));
          *(a7 + 8) = v42;
          if (!v42)
          {
            goto LABEL_87;
          }

          v39 = v42;
          v38 = v86;
          v40 = v82;
        }

        v43 = 5 * v40;
        v44 = v39 + 40 * v40;
        *(v44 + 26) = v38;
        v45 = v85;
        *(v44 + 28) = v85;
        v46 = v45 - v86;
        *v44 = 0;
        v47 = v46;
        v48 = heap_Alloc(*(v18 + 8), v46 + 1);
        *(*(a7 + 8) + 8 * v43) = v48;
        if (!v48)
        {
          goto LABEL_87;
        }

        cstdlib_strncpy(v48, &a6[v86], v47);
        *(*(*(a7 + 8) + 8 * v43) + v47) = 0;
        v49 = *(a7 + 8) + 8 * v43;
        v90 = 0;
        *__s = 0;
        *(v49 + 16) = 0;
        v50 = Utf8_Utf8NbrOfSymbols(*v49);
        if (v50 == 1)
        {
          v63 = 0;
        }

        else
        {
          v51 = 0;
          v52 = 0;
          v78 = v50 - 1;
          v79 = (v50 - 1);
          v81 = v18;
          while (1)
          {
            v53 = v52;
            UTF8Char = utf8_getUTF8Char(*v49, v52, __s);
            if ((UTF8Char & 0x80000000) != 0)
            {
              v28 = UTF8Char;
              v18 = v81;
              goto LABEL_87;
            }

            IsChineseLetter = utf8_IsChineseLetter(__s);
            if (cstdlib_strlen(__s) > 1 || (__s[0] - 33 <= 0x3E ? (v56 = ((1 << (__s[0] - 33)) & 0x7400000056003D8DLL) == 0) : (v56 = 1), v56 && __s[0] != 124))
            {
              if (!v51 && !IsChineseLetter)
              {
                break;
              }
            }

            if (!v51)
            {
              *(v49 + 32) = 0;
              v57 = heap_Calloc(*(v81 + 8), v79, 8);
              *(v49 + 16) = v57;
              if (!v57)
              {
                v18 = v81;
LABEL_85:
                v66 = 8202;
                goto LABEL_86;
              }
            }

            v58 = *(v81 + 8);
            v59 = cstdlib_strlen(__s);
            *(*(v49 + 16) + v51) = heap_Calloc(v58, v59 + 1, 1);
            v60 = *(*(v49 + 16) + v51);
            if (!v60)
            {
              v73 = 0;
              v18 = v81;
              do
              {
                v74 = *(v49 + 16);
                v75 = *(v74 + v73);
                if (v75)
                {
                  heap_Free(*(v81 + 8), v75);
                  v74 = *(v49 + 16);
                }

                *(v74 + v73) = 0;
                v73 += 8;
              }

              while (8 * v78 != v73);
              heap_Free(*(v81 + 8), *(v49 + 16));
              *(v49 + 16) = 0;
              goto LABEL_85;
            }

            cstdlib_strcpy(v60, __s);
            v52 = v53 + cstdlib_strlen(__s);
            v51 += 8;
            if (8 * v79 == v51)
            {
              v18 = v81;
              v61 = v82;
              v62 = v82;
              v63 = v78;
              goto LABEL_55;
            }
          }

          if ((__s[0] & 0xDFu) - 65 < 0x1A)
          {
            v65 = 1;
          }

          else
          {
            v65 = 3;
          }

          if (__s[0] - 48 < 0xA)
          {
            v65 = 2;
          }

          *(v49 + 32) = v65;
          v63 = 1;
          v18 = v81;
        }

        v61 = v82;
        v62 = v82;
LABEL_55:
        *(v49 + 24) = v63;
        v64 = *(a7 + 8);
        *(a7 + 18) += *(v64 + 40 * v61 + 24);
        if (*(a7 + 32))
        {
          (*(a4 + 176))(a2, a3, v88, 5, v64 + 40 * v61 + 8, &v86 + 2);
          v62 = v82;
        }

        v82 = v62 + 1;
        v28 = 2314215434;
        break;
      }

      v30 = (*(a4 + 120))(a2, a3, v88, &v88);
      if ((v30 & 0x80000000) != 0)
      {
        goto LABEL_67;
      }

      v31 = v88;
      if (!v88)
      {
        goto LABEL_69;
      }
    }

    v30 = (*(a4 + 120))(a2, a3, v88, &v88);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_67;
    }

    v31 = v88;
  }

  while (v88);
LABEL_69:
  if (!v32)
  {
    goto LABEL_76;
  }

  v33 = (*(v80 + 40))(a9, a10, &v83);
  if ((v33 & 0x80000000) != 0)
  {
LABEL_77:
    v28 = v33;
    goto LABEL_87;
  }

  v67 = v83;
  if (*(a7 + 32))
  {
    v67 = v83 + *(a7 + 40);
  }

  v68 = heap_Calloc(*(v18 + 8), v67 * *(a7 + 18), 4);
  v84 = v68;
  if (v68)
  {
    v69 = v68;
    v70 = *(a7 + 8);
    v71 = *(a7 + 16);
    if (*(a7 + 32))
    {
      CharEmbeddingWithPOS = getCharEmbeddingWithPOS(v18, v80, a9, a10, &v84, v83, v70, v71, *(a7 + 40));
    }

    else
    {
      CharEmbeddingWithPOS = getCharEmbedding(v18, v80, a9, a10, &v84, v83, v70, v71);
    }

    v28 = CharEmbeddingWithPOS;
    if ((CharEmbeddingWithPOS & 0x80000000) != 0)
    {
      ner_freeNEData(v18, a7);
      heap_Free(*(v18 + 8), v69);
    }

    else
    {
      *a11 = v69;
    }

    return v28;
  }

LABEL_87:
  ner_freeNEData(v18, a7);
  return v28;
}

uint64_t ner_freeNEData(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      if (*(a2 + 16))
      {
        v5 = 0;
        do
        {
          if (*(v3 + 40 * v5))
          {
            heap_Free(*(a1 + 8), *(v3 + 40 * v5));
            v3 = *(a2 + 8);
            *(v3 + 40 * v5) = 0;
          }

          v6 = *(v3 + 40 * v5 + 16);
          if (v6)
          {
            if (*(v3 + 40 * v5 + 24))
            {
              v7 = 0;
              do
              {
                if (*(*(v3 + 40 * v5 + 16) + 8 * v7))
                {
                  heap_Free(*(a1 + 8), *(*(v3 + 40 * v5 + 16) + 8 * v7));
                  *(*(*(a2 + 8) + 40 * v5 + 16) + 8 * v7) = 0;
                  v3 = *(a2 + 8);
                }

                ++v7;
              }

              while (v7 < *(v3 + 40 * v5 + 24));
              v6 = *(v3 + 40 * v5 + 16);
            }

            *(v3 + 40 * v5 + 24) = 0;
            heap_Free(*(a1 + 8), v6);
            v3 = *(a2 + 8);
            *(v3 + 40 * v5 + 16) = 0;
          }

          ++v5;
        }

        while (v5 < *(a2 + 16));
      }

      heap_Free(*(a1 + 8), v3);
      *(a2 + 16) = 0;
      *(a2 + 8) = 0;
    }
  }

  return 0;
}

uint64_t getCharEmbeddingWithPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  if (a8)
  {
    v12 = 0;
    v13 = 0;
    v14 = *a5;
    v26 = a6;
    v27 = a8;
    v15 = 4 * a6;
    v16 = v15 + 4 * a9;
    while (1)
    {
      v17 = a7 + 40 * v12;
      if (*(v17 + 24))
      {
        if (*(v17 + 24) != 1)
        {
          v20 = 0;
          do
          {
            v13 = (*(a2 + 56))(a3, a4, *(*(v17 + 16) + 8 * v20), v14);
            if ((v13 & 0x1FFF) == 0x14)
            {
              log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", v21, v22, v23, *(*(v17 + 16) + 8 * v20));
              v13 = (*(a2 + 56))(a3, a4, "</s>", v14);
            }

            v30 = v14 + v15;
            getPOSFeature(*(v17 + 8), &v30);
            v14 += v16;
            v30 = v14;
            ++v20;
          }

          while (v20 < *(v17 + 24));
          goto LABEL_21;
        }

        v18 = *(v17 + 32);
        switch(v18)
        {
          case 1:
            v19 = (*(a2 + 56))(a3, a4, "ENG", v14);
            break;
          case 2:
            v19 = (*(a2 + 56))(a3, a4, "NUM", v14);
            break;
          case 3:
            v19 = (*(a2 + 56))(a3, a4, "</s>", v14);
            break;
          default:
            v24 = 0;
            do
            {
              v13 = (*(a2 + 56))(a3, a4, *(*(v17 + 16) + 8 * v24), v14);
              if ((v13 & 0x1FFF) == 0x14)
              {
                v13 = (*(a2 + 56))(a3, a4, "</s>", v14);
              }

              v30 = v14 + v15;
              getPOSFeature(*(v17 + 8), &v30);
              v14 += v16;
              v30 = v14;
              ++v24;
            }

            while (v24 < *(v17 + 24));
            goto LABEL_21;
        }

        v13 = v19;
        v14 += 4 * v26;
        v30 = v14;
      }

LABEL_21:
      if (++v12 == v27)
      {
        return v13;
      }
    }
  }

  return 0;
}

uint64_t getCharEmbedding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, unsigned int a8)
{
  if (!a8)
  {
    return 0;
  }

  v12 = 0;
  result = 0;
  v14 = *a5;
  v15 = 4 * a6;
  v23 = a6;
  v24 = a8;
  do
  {
    v16 = a7 + 40 * v12;
    if (*(v16 + 24))
    {
      if (*(v16 + 24) == 1)
      {
        v17 = *(v16 + 32) - 1;
        if (v17 >= 3)
        {
          v22 = 0;
          do
          {
            result = (*(a2 + 56))(a3, a4, *(*(v16 + 16) + 8 * v22), v14);
            if ((result & 0x1FFF) == 0x14)
            {
              result = (*(a2 + 56))(a3, a4, "</s>", v14);
            }

            ++v22;
            v14 += v15;
          }

          while (v22 < *(v16 + 24));
        }

        else
        {
          result = (*(a2 + 56))(a3, a4, off_279DAC638[v17], v14);
          v14 += 4 * v23;
        }
      }

      else
      {
        v18 = 0;
        do
        {
          result = (*(a2 + 56))(a3, a4, *(*(v16 + 16) + 8 * v18), v14);
          if ((result & 0x1FFF) == 0x14)
          {
            log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", v19, v20, v21, *(*(v16 + 16) + 8 * v18));
            result = (*(a2 + 56))(a3, a4, "</s>", v14);
          }

          ++v18;
          v14 += v15;
        }

        while (v18 < *(v16 + 24));
      }
    }

    ++v12;
  }

  while (v12 != v24);
  return result;
}

BOOL getPOSFeature(const char *a1, uint64_t *a2)
{
  v2 = *a2;
  result = utf8_ToLower(a1, 0, v5);
  if (v5[0] - 99 > 0x16)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_26ECDAAE8[(v5[0] - 99)];
  }

  *(v2 + 4 * v4) = 1065353216;
  return result;
}

uint64_t hlp_loadOptions(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    a1[15] = 0;
  }

  v3 = heap_Alloc(*(*a1 + 8), 128);
  a1[13] = v3;
  if (v3)
  {
    a1[15] = 128;
    v8 = a1[14];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
      a1[16] = 0;
    }

    v9 = heap_Alloc(*(*a1 + 8), 128);
    a1[14] = v9;
    if (v9)
    {
      a1[16] = 128;
      v10 = a1[19];
      if (v10)
      {
        heap_Free(*(*a1 + 8), v10);
      }

      v11 = heap_Alloc(*(*a1 + 8), 128);
      a1[19] = v11;
      if (v11)
      {
        v12 = a1[20];
        if (v12)
        {
          heap_Free(*(*a1 + 8), v12);
        }

        v13 = heap_Alloc(*(*a1 + 8), 128);
        a1[20] = v13;
        if (v13)
        {
          v14 = a1[21];
          if (v14)
          {
            heap_Free(*(*a1 + 8), v14);
          }

          v15 = heap_Alloc(*(*a1 + 8), 128);
          a1[21] = v15;
          if (v15)
          {
            v16 = a1[22];
            if (v16)
            {
              heap_Free(*(*a1 + 8), v16);
            }

            v17 = heap_Alloc(*(*a1 + 8), 128);
            a1[22] = v17;
            if (v17)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v4, v5, v6, v7, v19);
  return 2314215434;
}

uint64_t hlp_loadNNOptions(uint64_t a1)
{
  v2 = 2314216452;
  v61 = 0;
  v60 = -1;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  __b = 0u;
  v55 = 0u;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_chars", &v61, &v60, &v59) & 0x80000000) != 0 || !v60)
  {
    return v2;
  }

  v3 = cstdlib_strchr(*v61, v59);
  if (v3)
  {
    *v3 = 0;
  }

  v4 = *(*a1 + 8);
  v5 = cstdlib_strlen(*v61);
  v6 = heap_Alloc(v4, v5 + 1);
  if (!v6)
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v7, v8, v9, v10, v51);
    return 2314215434;
  }

  v11 = v6;
  v12 = *v61;
  v13 = cstdlib_strlen(*v61);
  cstdlib_strncpy(v11, v12, v13);
  v11[cstdlib_strlen(*v61)] = 0;
  v60 = -1;
  v14 = 0;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_default_phones", &v61, &v60, &v59) & 0x80000000) != 0 || !v60)
  {
    goto LABEL_38;
  }

  v15 = cstdlib_strchr(*v61, v59);
  if (v15)
  {
    *v15 = 0;
  }

  v16 = *(*a1 + 8);
  v17 = cstdlib_strlen(*v61);
  v14 = heap_Alloc(v16, v17 + 1);
  if (!v14)
  {
    goto LABEL_36;
  }

  v22 = *v61;
  v23 = cstdlib_strlen(*v61);
  cstdlib_strncpy(v14, v22, v23);
  v14[cstdlib_strlen(*v61)] = 0;
  cstdlib_memset(&__b, 0, 0x28uLL);
  *&__b = ssftmap_ElemCopyString;
  *(&v55 + 1) = ssftmap_ElemCopyString;
  *(&__b + 1) = ssftmap_ElemFreeString;
  v56 = ssftmap_ElemFreeString;
  *&v55 = ssftmap_ElemCompareKeysString;
  v24 = *(*a1 + 8);
  v52[0] = __b;
  v52[1] = v55;
  v53 = ssftmap_ElemFreeString;
  v25 = ssftmap_ObjOpen(v24, 0, v52, (a1 + 248));
  if ((v25 & 0x80000000) != 0)
  {
LABEL_18:
    v2 = v25;
    goto LABEL_38;
  }

  v26 = extstdlib_strtok_r(v11, "|", &v58);
  for (i = v14; ; i = 0)
  {
    v28 = extstdlib_strtok_r(i, "|", &v57);
    if (!v26 || !v28)
    {
      break;
    }

    v25 = ssftmap_Insert(*(a1 + 248), v26, v28);
    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_18;
    }

    v26 = extstdlib_strtok_r(0, "|", &v58);
  }

  if (v26 || v28)
  {
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "NN chars amount and default phones amount do not match!", v29, v30, v31, 0);
    v2 = 2314215439;
    goto LABEL_38;
  }

  v60 = -1;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_step", &v61, &v60, &v59) & 0x80000000) == 0)
  {
    if (v60)
    {
      *(a1 + 256) = 0;
      *(a1 + 256) = LH_atou(*v61);
      v60 = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_vect", &v61, &v60, &v59) & 0x80000000) == 0)
      {
        if (v60)
        {
          *(a1 + 260) = 0;
          *(a1 + 260) = LH_atou(*v61);
          v60 = -1;
          if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_nn_null_fea", &v61, &v60, &v59) & 0x80000000) == 0)
          {
            if (v60)
            {
              *(a1 + 272) = 0;
              v32 = cstdlib_strchr(*v61, v59);
              if (v32)
              {
                *v32 = 0;
              }

              v33 = *(*a1 + 8);
              v34 = cstdlib_strlen(*v61);
              v35 = heap_Alloc(v33, v34 + 1);
              *(a1 + 272) = v35;
              if (v35)
              {
                v36 = v35;
                v37 = *v61;
                v38 = cstdlib_strlen(*v61);
                cstdlib_strncpy(v36, v37, v38);
                v39 = *(a1 + 272);
                *(v39 + cstdlib_strlen(*v61)) = 0;
                v60 = -1;
                v40 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_embed_type", &v61, &v60, &v59);
                if ((v40 & 0x80000000) == 0 && v60)
                {
                  v41 = v40;
                  *(a1 + 264) = 0;
                  v42 = cstdlib_strchr(*v61, v59);
                  if (v42)
                  {
                    *v42 = 0;
                  }

                  v43 = *(*a1 + 8);
                  v44 = cstdlib_strlen(*v61);
                  v45 = heap_Alloc(v43, v44 + 1);
                  *(a1 + 264) = v45;
                  if (v45)
                  {
                    v46 = v45;
                    v47 = *v61;
                    v48 = cstdlib_strlen(*v61);
                    cstdlib_strncpy(v46, v47, v48);
                    v49 = *(a1 + 264);
                    *(v49 + cstdlib_strlen(*v61)) = 0;
                    v2 = v41;
                    goto LABEL_38;
                  }

                  goto LABEL_36;
                }

                goto LABEL_38;
              }

LABEL_36:
              log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v18, v19, v20, v21, v51);
              v2 = 2314215434;
            }
          }
        }
      }
    }
  }

LABEL_38:
  heap_Free(*(*a1 + 8), v11);
  if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
  }

  return v2;
}

uint64_t hlp_loadStatWordOptions(uint64_t a1)
{
  *&__c[3] = 0;
  __c[0] = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 320) = 0;
  if (*&__c[1])
  {
    *(a1 + 320) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_vect", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 324) = 0;
  if (*&__c[1])
  {
    *(a1 + 324) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_thresholdpercent", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  *(a1 + 328) = 0;
  if (*&__c[1])
  {
    *(a1 + 328) = LH_atou(**&__c[3]);
  }

  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_list", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  if (*&__c[1])
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    v8 = *(*a1 + 8);
    v9 = cstdlib_strlen(**&__c[3]);
    v10 = heap_Alloc(v8, v9 + 1);
    *(a1 + 336) = v10;
    if (v10)
    {
      cstdlib_strcpy(v10, **&__c[3]);
      cstdlib_strcpy((a1 + 364), "$MEANW2V$");
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_fbck", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v15 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v15)
        {
          *v15 = 0;
        }

        cstdlib_strcpy((a1 + 364), **&__c[3]);
      }

      cstdlib_strcpy((a1 + 344), ",;!.?:-");
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_punc", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v16 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v16)
        {
          *v16 = 0;
        }

        cstdlib_strcpy((a1 + 344), **&__c[3]);
      }

      cstdlib_strcpy((a1 + 354), "0033400");
      *&__c[1] = -1;
      if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_mappunc", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1])
      {
        v17 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v17)
        {
          *v17 = 0;
        }

        cstdlib_strcpy((a1 + 354), **&__c[3]);
      }

      *(a1 + 376) = 0;
      *&__c[1] = -1;
      v18 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_nnlkpcaseconv", &__c[3], &__c[1], __c);
      if ((v18 & 0x80000000) == 0 && *&__c[1])
      {
        v19 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v19)
        {
          *v19 = 0;
        }

        if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
        {
          *(a1 + 376) = 1;
        }
      }

      *(a1 + 264) = 0;
    }

    else
    {
      v18 = 2314215434;
      log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v11, v12, v13, v14, v21);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v3, v4, v5, v6, v21);
    return 2314215444;
  }

  return v18;
}

uint64_t fe_hmogrph_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v58 = 0;
  v5 = 2314215431;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v50 = 0;
  v51 = 0;
  memset(v59, 0, sizeof(v59));
  if (!a5)
  {
    return v5;
  }

  __s = 0;
  v49 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a1, a2, &v57);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(a3, a4, &v58);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v58[6], "LINGDB", &v56);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v58[6], "FE_DCTLKP", &v54);
  v13 = v58[6];
  if ((Object & 0x80000000) != 0)
  {
    v32 = "LINGDB";
LABEL_25:
    objc_ReleaseObject(v13, v32);
    return Object;
  }

  v14 = objc_GetObject(v13, "FE_DEPES", &v55);
  if ((v14 & 0x80000000) != 0)
  {
    Object = v14;
    objc_ReleaseObject(v58[6], "LINGDB");
    v13 = v58[6];
    v32 = "FE_DCTLKP";
    goto LABEL_25;
  }

  v15 = heap_Alloc(v58[1], 488);
  if (!v15)
  {
    log_OutPublic(v58[4], "FE_HMOGRPH", 37000, 0, v16, v17, v18, v19, v44);
    objc_ReleaseObject(v58[6], "LINGDB");
    objc_ReleaseObject(v58[6], "FE_DEPES");
    objc_ReleaseObject(v58[6], "FE_DCTLKP");
    return 2314215434;
  }

  v20 = v15;
  *v15 = v58;
  *(v15 + 8) = a3;
  v21 = v56;
  v22 = v57;
  *(v15 + 16) = a4;
  *(v15 + 24) = v22;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = *(v21 + 8);
  v23 = v54;
  v24 = v55;
  *(v15 + 72) = *(v55 + 8);
  *(v15 + 56) = *(v24 + 16);
  *(v15 + 96) = *(v23 + 8);
  *(v15 + 80) = *(v23 + 16);
  *(v15 + 104) = 0u;
  *(v15 + 120) = 0u;
  *(v15 + 136) = 0;
  *(v15 + 152) = 0u;
  *(v15 + 168) = 0u;
  cstdlib_memset((v15 + 200), 0, 0xB8uLL);
  cstdlib_memset((v20 + 392), 0, 0x58uLL);
  *(v20 + 188) = 0;
  *(v20 + 192) = 0;
  *(v20 + 384) = 0;
  *(v20 + 480) = 0;
  *(v20 + 280) = 0;
  OptionalHmogrphModels = (*(*(v20 + 96) + 88))(*(v20 + 80), *(v20 + 88), &v51 + 4, &v51);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v26 = v51 == 1 && HIDWORD(v51) == 1;
  v27 = v26;
  *(v20 + 184) = v27;
  OptionalHmogrphModels = hlp_loadOptionalHmogrphModels(v20);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  OptionalHmogrphModels = hlp_loadNerOptions(v20);
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v28 = *v20;
  *(v20 + 200) = *v20;
  v29 = paramc_ParamGet(*(v28 + 40), "numberoutputtranscriptions", &__s, 0);
  v30 = 0;
  if ((v29 & 0x80000000) == 0 && __s)
  {
    v30 = cstdlib_atoi(__s);
  }

  *(v20 + 138) = v30;
  v31 = (paramc_ParamGet(*(*v20 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && cstdlib_strlen(__s) > 3;
  *(v20 + 140) = v31;
  OptionalHmogrphModels = checkSkipCrosstoken(*(v20 + 80), *(v20 + 88), *(v20 + 96), (v20 + 144));
  if ((OptionalHmogrphModels & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  if (*(v20 + 144))
  {
    OptionalHmogrphModels = hlp_loadOptions(v20);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }
  }

  if (!*(v20 + 188))
  {
    goto LABEL_49;
  }

  if (*(v20 + 480))
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    OptionalHmogrphModels = hlp_loadStatWordOptions(v20);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    OptionalHmogrphModels = nn_word_lkp_GetInterface(1u, &v49);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    *(v20 + 280) = v49;
    *(v20 + 288) = safeh_GetNullHandle();
    *(v20 + 296) = v33;
    *(v20 + 304) = safeh_GetNullHandle();
    *(v20 + 312) = v34;
    OptionalHmogrphModels = (*(v49 + 16))(*(v20 + 288), *(v20 + 296), "word", a3, a4, v20 + 304);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v47 = *(v20 + 304);
    *(&v46 + 1) = v49;
    OptionalHmogrphModels = objc_RegisterObject(v58[6], "NNWRDLKP", &v46);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  if (*(v20 + 192))
  {
    OptionalHmogrphModels = hlp_loadNNOptions(v20);
    if ((OptionalHmogrphModels & 0x80000000) != 0)
    {
LABEL_53:
      v5 = OptionalHmogrphModels;
      fe_hmogrph_ObjClose(*a5, *(a5 + 8));
      return v5;
    }

    v35 = cstdlib_strcmp(*(v20 + 264), "albert");
    if ((objc_GetObject(v58[6], "NNCHRLKP", &v53) & 0x80000000) != 0 || !v35)
    {
      OptionalHmogrphModels = nn_word_lkp_GetInterface(1u, &v49);
      if ((OptionalHmogrphModels & 0x80000000) != 0)
      {
        goto LABEL_53;
      }

      *(v20 + 280) = v49;
      *(v20 + 288) = safeh_GetNullHandle();
      *(v20 + 296) = v37;
      *(v20 + 304) = safeh_GetNullHandle();
      *(v20 + 312) = v38;
      OptionalHmogrphModels = (*(v49 + 16))(*(v20 + 288), *(v20 + 296), *(v20 + 264), a3, a4, v20 + 304);
      if ((OptionalHmogrphModels & 0x80000000) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(v20 + 280) = *(v53 + 8);
      *(v20 + 288) = safeh_GetNullHandle();
      *(v20 + 296) = v36;
      *(v20 + 304) = *(v53 + 16);
    }

LABEL_46:
    inited = fi_model_getBrokerString(*v20, v59);
    if ((inited & 0x80000000) == 0)
    {
      v39 = fi_init(a3, a4, a1, a2, &v50, 0, v59, "FINN", 1, 0);
      if ((v39 & 0x80000000) != 0)
      {
        v5 = v39;
        log_OutText(*(*v20 + 32), "FE_HMOGRPH", 5, 0, "create FI model failed", v40, v41, v42, v45);
        return v5;
      }

      *(v20 + 240) = v50;
      goto LABEL_49;
    }

    return inited;
  }

  *(v20 + 240) = 0;
LABEL_49:
  v5 = init_ner_struct(v20, (v20 + 392));
  if ((v5 & 0x80000000) == 0)
  {
    *a5 = v20;
    *(a5 + 8) = 62342;
  }

  return v5;
}

uint64_t hlp_loadOptionalHmogrphModels(uint64_t a1)
{
  if ((com_useStatHmogrph(*a1, (a1 + 188)) & 0x80000000) == 0)
  {
    *(a1 + 232) = 0;
    *(a1 + 200) = 0;
    if (*(a1 + 188))
    {
      if ((stat_hmogrph_ModelInit(*(a1 + 8), *(a1 + 16), *a1, *(a1 + 96), *(a1 + 80), *(a1 + 88), (a1 + 224), (a1 + 232), (a1 + 234)) & 0x80000000) == 0)
      {
        *(a1 + 200) = *a1;
      }
    }
  }

  *&__c[3] = 0;
  __c[0] = 0;
  *(a1 + 480) = 0;
  *&__c[1] = -1;
  if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c) & 0x80000000) == 0 && *&__c[1] == 1)
  {
    *(a1 + 188) = 1;
    *(a1 + 480) = 1;
  }

  *(a1 + 192) = 0;
  *&__c[1] = -1;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "stathmogrph_enable_nnets", &__c[3], &__c[1], __c);
  if ((v2 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3])
  {
    v3 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v3)
    {
      *v3 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      *(a1 + 192) = 1;
    }
  }

  return v2;
}

uint64_t hlp_loadNerOptions(uint64_t a1)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v10 = -1;
  v9 = 0;
  v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_enable_ner", &v13, &v10, &v9);
  if ((v2 & 0x80000000) == 0)
  {
    if (v10 && v13)
    {
      v3 = *v13;
      v3[cstdlib_strlen(*v13) - 1] = 0;
      v4 = cstdlib_strcmp(*v13, "yes");
      *(a1 + 384) = v4 == 0;
      if (!v4)
      {
        v10 = -1;
        v9 = 0;
        *(a1 + 428) = 0;
        if (((*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_embed_type", &v12, &v10, &v9) & 0x80000000) == 0 && v10 && v12)
        {
          v5 = *v12;
          v5[cstdlib_strlen(*v12) - 1] = 0;
          *(a1 + 428) = cstdlib_strcmp(*v12, "char") == 0;
        }

        v10 = -1;
        v9 = 0;
        v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_enable_pos", &v12, &v10, &v9);
        if ((v2 & 0x80000000) == 0)
        {
          if (v10 && v12)
          {
            v6 = *v12;
            v6[cstdlib_strlen(*v12) - 1] = 0;
            v7 = cstdlib_strcmp(*v12, "yes");
            *(a1 + 424) = v7 == 0;
            if (!v7)
            {
              v10 = -1;
              v9 = 0;
              v2 = (*(*(a1 + 96) + 96))(*(a1 + 80), *(a1 + 88), "fecfg", "ner_pos_dimension", &v11, &v10, &v9);
              if ((v2 & 0x80000000) == 0)
              {
                *(a1 + 432) = LH_atou(*v11);
              }
            }
          }

          else
          {
            *(a1 + 424) = 0;
          }
        }
      }
    }

    else
    {
      *(a1 + 384) = 0;
    }
  }

  return v2;
}

uint64_t checkSkipCrosstoken(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "feoneword_skipcrosstoken", &__c[3], &__c[1], __c);
  if ((v5 & 0x80000000) == 0 && *&__c[1] == 1 && *&__c[3] != 0)
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (!cstdlib_strcmp("yes", **&__c[3]) || !cstdlib_strcmp("YES", **&__c[3]))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t fi_model_getBrokerString(uint64_t a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = 0;
  __s2 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__s1 = 0u;
  v8 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v5);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "nnhmogrph_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v5);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t init_ner_struct(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  *a2 = 0;
  if (!*(a1 + 384))
  {
    return 0;
  }

  *(a1 + 440) = 0;
  *(a1 + 448) = safeh_GetNullHandle();
  *(a1 + 456) = v4;
  *(a1 + 464) = safeh_GetNullHandle();
  *(a1 + 472) = v5;
  v6 = *(a1 + 264);
  if (v6)
  {
    if (cstdlib_strcmp(v6, "char"))
    {
      if (*(a1 + 428) == 1)
      {
        Interface = nn_word_lkp_GetInterface(1u, (a1 + 440));
        if ((Interface & 0x80000000) != 0)
        {
          return Interface;
        }

        Interface = (*(*(a1 + 440) + 16))(*(a1 + 448), *(a1 + 456), "char", *(a1 + 8), *(a1 + 16), a1 + 464);
        if ((Interface & 0x80000000) != 0)
        {
          return Interface;
        }
      }
    }
  }

  get_ner_brokerstring(*a1, v15, 0x100uLL);
  v11 = fi_init(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), &v14, 0, v15, "FINN", 1, 0);
  if ((v11 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Init NER FI model failed", v8, v9, v10, v13);
  }

  else
  {
    *a2 = v14;
  }

  return v11;
}

uint64_t fe_hmogrph_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62342, 488);
  if ((result & 0x80000000) != 0)
  {
    return 2314215432;
  }

  if (!a1)
  {
    return result;
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    heap_Free(*(*a1 + 8), v4);
  }

  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  v5 = *(a1 + 112);
  if (v5)
  {
    heap_Free(*(*a1 + 8), v5);
  }

  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  v6 = *(a1 + 152);
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  *(a1 + 152) = 0;
  v7 = *(a1 + 160);
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
  }

  *(a1 + 160) = 0;
  v8 = *(a1 + 168);
  if (v8)
  {
    heap_Free(*(*a1 + 8), v8);
  }

  *(a1 + 168) = 0;
  v9 = *(a1 + 176);
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
  }

  *(a1 + 176) = 0;
  v10 = *(a1 + 280);
  if (v10)
  {
    if (*(a1 + 480))
    {
      if (((*(v10 + 24))(*(a1 + 304), *(a1 + 312)) & 0x80000000) == 0)
      {
        objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
      }
    }

    else if (*(a1 + 192) && (objc_ReleaseObject(*(*a1 + 48), "NNCHRLKP") & 0x80000000) != 0)
    {
      (*(*(a1 + 280) + 24))(*(a1 + 304), *(a1 + 312));
    }

    *(a1 + 280) = 0;
  }

  if (*(a1 + 188))
  {
    if (*(a1 + 480))
    {
      v11 = *(a1 + 336);
      if (v11)
      {
        heap_Free(*(*a1 + 8), v11);
        *(a1 + 336) = 0;
      }
    }

    else
    {
      if (!*(a1 + 192))
      {
LABEL_37:
        if (*(a1 + 232))
        {
          stat_hmogrph_ModelDeinit(*a1, (a1 + 224), *(a1 + 232));
        }

        goto LABEL_39;
      }

      v12 = *(a1 + 272);
      if (v12)
      {
        heap_Free(*(*a1 + 8), v12);
        *(a1 + 272) = 0;
      }

      v13 = *(a1 + 248);
      if (v13)
      {
        ssftmap_ObjClose(v13);
        *(a1 + 248) = 0;
      }

      v14 = *(a1 + 264);
      if (v14)
      {
        heap_Free(*(*a1 + 8), v14);
        *(a1 + 264) = 0;
      }
    }

    v15 = *(a1 + 240);
    if (v15)
    {
      fi_deinit(*a1, *(a1 + 24), v15);
      *(a1 + 240) = 0;
    }

    goto LABEL_37;
  }

LABEL_39:
  if (*(a1 + 384))
  {
    v16 = *(a1 + 392);
    if (v16)
    {
      fi_deinit(*a1, *(a1 + 24), v16);
      *(a1 + 392) = 0;
    }

    v17 = *(a1 + 440);
    if (v17)
    {
      (*(v17 + 24))(*(a1 + 464), *(a1 + 472));
      *(a1 + 440) = 0;
    }
  }

  objc_ReleaseObject(*(*a1 + 48), "LINGDB");
  objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
  objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t fe_hmogrph_ObjReopen(uint64_t a1, int a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v38 = 0;
  v39 = 0;
  memset(v43, 0, sizeof(v43));
  Options = safeh_HandleCheck(a1, a2, 62342, 488);
  if ((Options & 0x80000000) == 0)
  {
    if (!a1)
    {
      return Options;
    }

    __s = 0;
    v40 = 0;
    Options = (*(*(a1 + 96) + 88))(*(a1 + 80), *(a1 + 88), &v41 + 4, &v41);
    if ((Options & 0x80000000) != 0)
    {
      return Options;
    }

    v5 = v41 == 1 && HIDWORD(v41) == 1;
    *(a1 + 184) = v5;
    v6 = *(a1 + 104);
    if (v6)
    {
      heap_Free(*(*a1 + 8), v6);
    }

    *(a1 + 104) = 0;
    *(a1 + 120) = 0;
    v7 = *(a1 + 112);
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
    }

    *(a1 + 112) = 0;
    *(a1 + 128) = 0;
    v8 = *(a1 + 152);
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
    }

    *(a1 + 152) = 0;
    v9 = *(a1 + 160);
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
    }

    *(a1 + 160) = 0;
    v10 = *(a1 + 168);
    if (v10)
    {
      heap_Free(*(*a1 + 8), v10);
    }

    *(a1 + 168) = 0;
    v11 = *(a1 + 176);
    if (v11)
    {
      heap_Free(*(*a1 + 8), v11);
    }

    *(a1 + 176) = 0;
    v12 = *(a1 + 280);
    if (v12)
    {
      if (*(a1 + 480))
      {
        v40 = *(a1 + 280);
        if (((*(v12 + 24))(*(a1 + 304), *(a1 + 312)) & 0x80000000) == 0)
        {
          objc_UnregisterObject(*(*a1 + 48), "NNWRDLKP");
        }
      }

      else if (*(a1 + 192) && (objc_ReleaseObject(*(*a1 + 48), "NNCHRLKP") & 0x80000000) != 0)
      {
        v40 = *(a1 + 280);
        (*(v40 + 24))(*(a1 + 304), *(a1 + 312));
      }

      *(a1 + 280) = 0;
    }

    if (!*(a1 + 188))
    {
LABEL_51:
      Options = checkSkipCrosstoken(*(a1 + 80), *(a1 + 88), *(a1 + 96), (a1 + 144));
      if ((Options & 0x80000000) != 0)
      {
        return Options;
      }

      if (*(a1 + 144))
      {
        Options = hlp_loadOptions(a1);
        if ((Options & 0x80000000) != 0)
        {
          return Options;
        }
      }

      Options = hlp_loadOptionalHmogrphModels(a1);
      if ((Options & 0x80000000) != 0)
      {
        return Options;
      }

      Options = hlp_loadNerOptions(a1);
      if ((Options & 0x80000000) != 0)
      {
        return Options;
      }

      *(a1 + 200) = *a1;
      if (*(a1 + 188))
      {
        if (*(a1 + 480))
        {
          v37 = 0;
          v35 = 0u;
          v36 = 0u;
          Options = hlp_loadStatWordOptions(a1);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          Options = nn_word_lkp_GetInterface(1u, &v40);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          *(a1 + 280) = v40;
          *(a1 + 288) = safeh_GetNullHandle();
          *(a1 + 296) = v21;
          *(a1 + 304) = safeh_GetNullHandle();
          *(a1 + 312) = v22;
          Options = (*(v40 + 16))(*(a1 + 288), *(a1 + 296), "word", *(a1 + 8), *(a1 + 16), a1 + 304);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          v36 = *(a1 + 304);
          *(&v35 + 1) = v40;
          Options = objc_RegisterObject(*(*a1 + 48), "NNWRDLKP", &v35);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          goto LABEL_67;
        }

        if (*(a1 + 192))
        {
          Options = hlp_loadNNOptions(a1);
          if ((Options & 0x80000000) != 0)
          {
            return Options;
          }

          if ((objc_GetObject(*(*a1 + 48), "NNCHRLKP", &v39) & 0x80000000) != 0)
          {
            Options = nn_word_lkp_GetInterface(1u, &v40);
            if ((Options & 0x80000000) != 0)
            {
              return Options;
            }

            *(a1 + 280) = v40;
            *(a1 + 288) = safeh_GetNullHandle();
            *(a1 + 296) = v32;
            *(a1 + 304) = safeh_GetNullHandle();
            *(a1 + 312) = v33;
            Options = (*(v40 + 16))(*(a1 + 288), *(a1 + 296), *(a1 + 264), *(a1 + 8), *(a1 + 16), a1 + 304);
            if ((Options & 0x80000000) != 0)
            {
              return Options;
            }
          }

          else
          {
            *(a1 + 280) = *(v39 + 8);
            *(a1 + 288) = safeh_GetNullHandle();
            *(a1 + 296) = v23;
            *(a1 + 304) = *(v39 + 16);
          }

LABEL_67:
          Options = fi_model_getBrokerString(*a1, v43);
          if ((Options & 0x80000000) == 0)
          {
            v24 = fi_init(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), &v38, 0, v43, "FINN", 1, 0);
            if ((v24 & 0x80000000) != 0)
            {
              v13 = v24;
              log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "create FI model failed", v25, v26, v27, v34);
              return v13;
            }

            *(a1 + 240) = v38;
            goto LABEL_71;
          }

          return Options;
        }

        *(a1 + 240) = 0;
      }

LABEL_71:
      v28 = paramc_ParamGet(*(*a1 + 40), "numberoutputtranscriptions", &__s, 0);
      v29 = 0;
      if ((v28 & 0x80000000) == 0 && __s)
      {
        v29 = cstdlib_atoi(__s);
      }

      *(a1 + 138) = v29;
      v30 = (paramc_ParamGet(*(*a1 + 40), "mlset", &__s, 0) & 0x80000000) == 0 && cstdlib_strlen(__s) > 3;
      *(a1 + 140) = v30;
      return init_ner_struct(a1, (a1 + 392));
    }

    if (*(a1 + 480))
    {
      v14 = *(a1 + 336);
      if (v14)
      {
        heap_Free(*(*a1 + 8), v14);
        *(a1 + 336) = 0;
      }
    }

    else
    {
      if (!*(a1 + 192))
      {
LABEL_44:
        if (*(a1 + 384))
        {
          v19 = *(a1 + 392);
          if (v19)
          {
            fi_deinit(*a1, *(a1 + 24), v19);
            *(a1 + 392) = 0;
          }

          v20 = *(a1 + 440);
          if (v20)
          {
            v40 = *(a1 + 440);
            (*(v20 + 24))(*(a1 + 464), *(a1 + 472));
            *(a1 + 440) = 0;
          }
        }

        if (*(a1 + 232))
        {
          stat_hmogrph_ModelDeinit(*a1, (a1 + 224), *(a1 + 232));
        }

        goto LABEL_51;
      }

      v15 = *(a1 + 272);
      if (v15)
      {
        heap_Free(*(*a1 + 8), v15);
        *(a1 + 272) = 0;
      }

      v16 = *(a1 + 248);
      if (v16)
      {
        ssftmap_ObjClose(v16);
        *(a1 + 248) = 0;
      }

      v17 = *(a1 + 264);
      if (v17)
      {
        heap_Free(*(*a1 + 8), v17);
        *(a1 + 264) = 0;
      }
    }

    v18 = *(a1 + 240);
    if (v18)
    {
      fi_deinit(*a1, *(a1 + 24), v18);
      *(a1 + 240) = 0;
    }

    goto LABEL_44;
  }

  return 2314215432;
}

uint64_t fe_hmogrph_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 488);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2314215432;
  }
}

uint64_t fe_hmogrph_Process_StatHmogrph(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 1;
  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "BEGIN fe_hmogrph_Process_StatHmogrph()", a6, a7, a8, 0);
  if (*(a1 + 480) == 1)
  {
    SentenceData = stat_hmogrph_disambiguateWords(a1, *(a1 + 48), a2, a3, a1 + 200);
LABEL_13:
    v18 = SentenceData;
    v19 = 0;
    goto LABEL_14;
  }

  if (!*(a1 + 384))
  {
    *(a1 + 400) = 0;
    goto LABEL_10;
  }

  v15 = *(a1 + 264);
  v16 = v15 && !cstdlib_strcmp(v15, "char");
  v17 = ner_process(*a1, a1 + 392, a2, a3, *(a1 + 48), *(a1 + 280), *(a1 + 304), *(a1 + 312), v16);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_10:
    SentenceData = stat_hmogrph_getSentenceData(a1, *(a1 + 48), a2, a3, a1 + 200);
    if ((SentenceData & 0x80000000) == 0)
    {
      SentenceData = stat_hmogrph_disambiguatePhons(a1, a1 + 200);
      if ((SentenceData & 0x80000000) == 0)
      {
        SentenceData = stat_hmogrph_updateLingdb(a1, *(a1 + 48), a2, a3, a1 + 200, a1 + 392);
      }
    }

    goto LABEL_13;
  }

  v18 = v17;
  v19 = 1;
LABEL_14:
  if (!(*(a1 + 480) | v19))
  {
    v20 = stat_hmogrph_freeSentenceData(a1 + 200);
    if (v18 > -1 && v20 < 0)
    {
      v18 = v20;
    }

    else
    {
      v18 = v18;
    }
  }

  if (*(a1 + 384))
  {
    v22 = ner_freeNEData(*a1, a1 + 392);
    if (v18 > -1 && v22 < 0)
    {
      v18 = v22;
    }

    else
    {
      v18 = v18;
    }
  }

  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "END fe_hmogrph_Process_StatHmogrph()", v12, v13, v14, 0);
  return v18;
}

uint64_t checkCRFMDE(_WORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  __s2 = 0;
  v35 = 0;
  v36 = "";
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *__s1 = 0u;
  v39 = 0u;
  if ((paramc_ParamGetStr(*(a3 + 40), "langcode", &__s2) & 0x80000000) == 0 && (paramc_ParamGetStr(*(a3 + 40), "fecfg", &v36) & 0x80000000) == 0)
  {
    cstdlib_strcat(__s1, "crf_mde_seg_");
    cstdlib_strcat(__s1, __s2);
    cstdlib_strcat(__s1, "_");
    cstdlib_strcat(__s1, v36);
    v8 = heap_Calloc(*(a3 + 8), 1, 1024);
    if (v8)
    {
      v13 = v8;
      v14 = brokeraux_ComposeBrokerString(a3, __s1, 1, 1, __s2, 0, 0, v8, 0x400uLL);
      v15 = *(a3 + 8);
      v16 = cstdlib_strlen(__s2);
      v17 = heap_Calloc(v15, 1, v16 + 1);
      if (v17)
      {
        v22 = v17;
        cstdlib_strcpy(v17, __s2);
        if ((v14 & 0x80000000) == 0 && (ssftriff_reader_ObjOpen(a1, a2, 2, v13, "CRPH", 1031, &v35) & 0x80000000) == 0)
        {
          ssftriff_reader_ObjClose(v35, v23, v24, v25, v26, v27, v28, v29);
          *a4 = 1;
        }

        heap_Free(*(a3 + 8), v13);
        v30 = *(a3 + 8);
        v31 = v22;
      }

      else
      {
        log_OutPublic(*(a3 + 32), "FE_HMOGRPH", 37000, 0, v18, v19, v20, v21, v34);
        v30 = *(a3 + 8);
        v31 = v13;
      }

      heap_Free(v30, v31);
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_HMOGRPH", 37000, 0, v9, v10, v11, v12, v33);
    }
  }

  return 0;
}

uint64_t fe_hmogrph_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v96 = *MEMORY[0x277D85DE8];
  v88 = 0;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  if ((safeh_HandleCheck(a1, a2, 62342, 488) & 0x80000000) != 0)
  {
    return 2314215432;
  }

  __s = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v87 = 0;
  *a5 = 1;
  checkCRFMDE(*(a1 + 8), *(a1 + 16), *a1, &v84);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 80);
  *__dst = 0;
  LOWORD(__s2) = -1;
  LOBYTE(__c[0]) = 0;
  v12 = (*(v10 + 96))(v11, v9, "fecfg", "usecompound", __dst, &__s2, __c);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = 0;
  v14 = 1;
  if (__s2 == 1 && *__dst)
  {
    v15 = cstdlib_strchr(**__dst, LOBYTE(__c[0]));
    if (v15)
    {
      *v15 = 0;
    }

    if (cstdlib_strcmp("yes", **__dst) && cstdlib_strcmp("YES", **__dst))
    {
      v13 = 0;
    }

    else
    {
      v14 = 0;
      v13 = 1;
    }
  }

  v16 = com_mosynt_UseMosynt(*(a1 + 80), *(a1 + 88), *(a1 + 96), &v85);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v20 = v85 ? v14 : 0;
  if (v20 == 1 && !*(a1 + 188))
  {
    return v16;
  }

  v21 = *(a1 + 188);
  if ((v85 & ~v13) != 0)
  {
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else if (!v21)
  {
    goto LABEL_24;
  }

  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph Enabled", v17, v18, v19, 0);
  v16 = fe_hmogrph_Process_StatHmogrph(a1, a3, a4, a5, v22, v23, v24, v25);
  if ((v16 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph Processing Failed", v26, v27, v28, 0);
    return v16;
  }

LABEL_23:
  if (!*(a1 + 480))
  {
    return v16;
  }

LABEL_24:
  v16 = (*(*(a1 + 48) + 104))(a3, a4, 1, 0, &v93 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  if (((*(*(a1 + 48) + 184))(a3, a4, HIWORD(v93), 0, &v88) & 0x80000000) != 0)
  {
    return v16;
  }

  if (v88 != 1)
  {
    return v16;
  }

  v16 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v93), 0, &__s, &v92 + 2);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v29 = HIWORD(v92);
  if (HIWORD(v92) < 2u)
  {
    return v16;
  }

  *(a1 + 136) = 0;
  v12 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v93), 1, &v87, &v86);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v30 = *(v87 + 12);
  v12 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v93), &v93);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v79 = v30;
  v80 = 0;
  v31 = 0;
  v32 = v29 - 1;
  v33 = 1;
  while (1)
  {
    v34 = *(a1 + 48);
    if (!v93)
    {
      break;
    }

    v12 = (*(v34 + 168))(a3, a4);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    if (v90 == 4)
    {
      v12 = (*(*(a1 + 48) + 168))(a3, a4, v93, 1, 1, &v92, &v92 + 2);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v35 = v92;
      if (!v33 && v92 == v80)
      {
        v12 = (*(*(a1 + 48) + 168))(a3, a4, v93, 2, 1, &v91, &v92 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v36 = v92;
        v37 = __s;
        if (!v92)
        {
          goto LABEL_52;
        }

        v38 = 0;
        do
        {
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v37, v36);
          v37 = __s;
          v40 = &__s[PreviousUtf8Offset];
          v41 = *v40;
          if (v41 == 95 || v41 == 32)
          {
            v42 = v40[1];
            if (v42 != 32 && v42 != 95)
            {
              ++v38;
            }
          }

          v36 = PreviousUtf8Offset;
        }

        while (v38 <= 3u && PreviousUtf8Offset);
        if (PreviousUtf8Offset)
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(__s, PreviousUtf8Offset);
          v37 = __s;
        }

        else
        {
LABEL_52:
          NextUtf8Offset = 0;
        }

        v45 = v91;
        if (v91 >= v32)
        {
          v51 = v91;
        }

        else
        {
          v46 = 0;
          do
          {
            v45 = utf8_GetNextUtf8Offset(v37, v45);
            v37 = __s;
            v47 = &__s[v45];
            v48 = *v47;
            if (v48 == 95 || v48 == 32)
            {
              v49 = *(v47 - 1);
              if (v49 != 32 && v49 != 95)
              {
                ++v46;
              }
            }
          }

          while (v46 <= 2u && v32 > v45);
          v51 = v45;
          v45 = v91;
        }

        v52 = v92;
        if (v31)
        {
          v12 = hlp_Disambiguate(a1, a3, a4, v37, v31, NextUtf8Offset, v51, v92, v45);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          v37 = __s;
          v52 = v92;
          v45 = v91;
        }

        v12 = hlp_Disambiguate(a1, a3, a4, v37, v93, NextUtf8Offset, v51, v52, v45);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v31 = 0;
        v35 = v92;
      }

      if (v35 != v80 || v33 == 1)
      {
        v31 = v93;
      }

      v80 = v35;
      v33 = 0;
    }

    v16 = (*(*(a1 + 48) + 120))(a3, a4);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }
  }

  v16 = (*(v34 + 104))(a3, a4, 2, HIWORD(v93), &v93);
  if ((v16 & 0x80000000) == 0)
  {
    v54 = v93;
    if (v93)
    {
      v55 = 0;
      v56 = 0;
      v76 = 0;
      v57 = 0;
      v77 = 1;
      v78 = 0;
      v81 = v84;
      v74 = 1;
      v75 = 0;
      v58 = 1;
      while (1)
      {
        v12 = (*(*(a1 + 48) + 168))(a3, a4, v54, 0, 1, &v90, &v92 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v12 = (*(*(a1 + 48) + 168))(a3, a4, v93, 1, 1, &v92, &v92 + 2);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        if (v92 != v57 || v58 == 1)
        {
          v55 = 0;
        }

        if (v56 < v86)
        {
          v60 = v56;
          v61 = v87 + 32 * v56 + 12;
          while ((v92 + 1) > (*v61 - v79))
          {
            if (*(v61 - 12) == 14 && *(v61 + 12) == 64)
            {
              v55 = 1;
            }

            ++v60;
            v61 += 32;
            if (v86 == v60)
            {
              v56 = v86;
              goto LABEL_101;
            }
          }

          v56 = v60;
        }

LABEL_101:
        if (v90 == 4)
        {
          goto LABEL_102;
        }

        v67 = v90 == 9;
        if (v90 == 9)
        {
          v68 = v13;
        }

        else
        {
          v68 = 0;
        }

        if (!v85)
        {
          v68 = 0;
        }

        if (v81 != 1)
        {
          v67 = 0;
        }

        if ((v68 & 1) != 0 || v67)
        {
LABEL_102:
          v12 = (*(*(a1 + 48) + 168))(a3, a4, v93, 7, 1, &v89, &v92 + 2);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          if (v85)
          {
            v62 = v13;
          }

          else
          {
            v62 = 0;
          }

          if ((v62 & 1) != 0 || v81 == 1)
          {
            *__dst = 0;
            v88 = 0;
            if (((*(*(a1 + 48) + 184))(a3, a4, v93, 17, &v88) & 0x80000000) == 0 && v88 == 1)
            {
              v12 = (*(*(a1 + 48) + 168))(a3, a4, v93, 17, 1, __dst, &v92 + 2);
              if ((v12 & 0x80000000) != 0)
              {
                return v12;
              }
            }

            if (*__dst)
            {
              v63 = 0;
            }

            else
            {
              v63 = ~v89;
            }

            v89 = v63;
          }

          if (*(a1 + 480))
          {
            *__c = 0;
            __s2 = 0;
            v12 = (*(*(a1 + 48) + 176))(a3, a4, v93, 5, &__s2, &v92 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            v12 = (*(*(a1 + 48) + 176))(a3, a4, v93, 14, __c, &v92 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            cstdlib_strcpy(__dst, "POS:");
            cstdlib_strcat(__dst, __s2);
            cstdlib_strcat(__dst, ";");
            v64 = cstdlib_strstr(*__c, __dst);
            if (v64 && (v64 == *__c || *(v64 - 1) == 59))
            {
              v89 += 100;
            }
          }

          v88 = 0;
          if (((*(*(a1 + 48) + 184))(a3, a4, v93, 9, &v88) & 0x80000000) == 0 && v88 == 1)
          {
            *__dst = 0;
            v12 = (*(*(a1 + 48) + 176))(a3, a4, v93, 9, __dst, &v92 + 2);
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            v78 = **__dst;
          }

          if (v58 || v92 != v57)
          {
            v66 = 0;
            v58 = 0;
            v70 = v77;
            v69 = v78;
            if (!v78)
            {
              v69 = v77;
            }

            v75 = v78 == v77;
            LOWORD(v76) = v93;
            v57 = v92;
            HIDWORD(v76) = v89;
            v77 = v69;
            v74 = v70;
            goto LABEL_152;
          }

          if (v89 > HIDWORD(v76) || v89 == HIDWORD(v76) && !v75 && (v74 == 101 || v78 != 101))
          {
            v65 = v93;
            if (!v55)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v65 = v93;
            if (v55)
            {
LABEL_149:
              v58 = 0;
              v71 = v78;
              if ((v78 & 0xFE) == 0)
              {
                v71 = 1;
              }

              HIDWORD(v76) = v89;
              v77 = v71;
              v66 = v76;
              v75 = v78 == v74;
              LOWORD(v76) = v65;
              goto LABEL_152;
            }
          }

          v58 = 0;
          v66 = v65;
        }

        else
        {
          v66 = 0;
        }

LABEL_152:
        v16 = (*(*(a1 + 48) + 120))(a3, a4);
        if ((v16 & 0x80000000) == 0)
        {
          if (!v66 || (*(a1 + 138) < 2u || !*(a1 + 140) ? (v72 = (*(*(a1 + 48) + 192))(a3, a4, v66)) : (*__dst = 0, v90 = 16, v72 = (*(*(a1 + 48) + 160))(a3, a4, v66, 0, 1, &v90, __dst)), v16 = v72, (v72 & 0x80000000) == 0))
          {
            v54 = v93;
            if (v93)
            {
              continue;
            }
          }
        }

        return v16;
      }
    }
  }

  return v16;
}

uint64_t hlp_Disambiguate(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, unsigned __int16 a9)
{
  LODWORD(NextUtf8Offset) = a8;
  v84 = *MEMORY[0x277D85DE8];
  v80 = xmmword_26ECDAC22;
  v81 = unk_26ECDAC32;
  v82 = xmmword_26ECDAC42;
  v83 = unk_26ECDAC52;
  strcpy(v76, "disambiguate_homographs");
  v77 = unk_26ECDABFA;
  v78 = xmmword_26ECDAC02;
  v79 = unk_26ECDAC12;
  v75 = 0;
  __s1 = 0;
  v73 = 0;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v17 = (*(*(a1 + 48) + 104))(a2, a3, 1, 0, &v70);
  if ((v17 & 0x80000000) == 0 && ((*(*(a1 + 48) + 184))(a2, a3, a5, 4, &v75) & 0x80000000) == 0)
  {
    v67 = a7;
    v68 = a2;
    v69 = a3;
    if (v75 == 1)
    {
      v17 = (*(*(a1 + 48) + 176))(a2, a3, a5, 4, &__s1, &v71);
      if ((v17 & 0x80000000) == 0)
      {
        if (cstdlib_strcmp(__s1, ""))
        {
          v18 = (a7 - a6 + 14);
          if (v18 > *(a1 + 136))
          {
            v19 = heap_Realloc(*(*a1 + 8), *(a1 + 104), (a7 - a6 + 14));
            if (!v19 || (*(a1 + 104) = v19, (v24 = heap_Realloc(*(*a1 + 8), *(a1 + 112), v18)) == 0))
            {
              v17 = 2314215434;
              log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v20, v21, v22, v23, v64);
              return v17;
            }

            *(a1 + 112) = v24;
            *(a1 + 136) = a7 - a6 + 14;
          }

          cstdlib_strcpy(*(a1 + 104), "");
          cstdlib_strcpy(*(a1 + 112), "");
          v25 = (*(*(a1 + 48) + 104))(v68, a3, 2, v70, &v73 + 2);
          if ((v25 & 0x80000000) != 0)
          {
            return v25;
          }

          v29 = 0;
          LODWORD(PreviousUtf8Offset) = a9;
          v66 = a5;
          while (1)
          {
            v31 = HIWORD(v73);
            if (!HIWORD(v73))
            {
              break;
            }

            if (HIWORD(v73) == a5)
            {
              v32 = &a4[NextUtf8Offset];
              for (i = (*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), v32); i == 1; i = (*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), &a4[NextUtf8Offset]))
              {
                NextUtf8Offset = utf8_GetNextUtf8Offset(a4, NextUtf8Offset);
                v32 = &a4[NextUtf8Offset];
              }

              do
              {
                PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a4, PreviousUtf8Offset);
              }

              while ((*(*(a1 + 96) + 128))(*(a1 + 80), *(a1 + 88), &a4[PreviousUtf8Offset]) == 1);
              v34 = utf8_GetNextUtf8Offset(a4, PreviousUtf8Offset);
              v35 = &a4[a6];
              v36 = NextUtf8Offset - a6;
              cstdlib_strncat(*(a1 + 104), v35, v36);
              for (j = Utf8_LengthInUtf8chars(v35, v36); j; --j)
              {
                cstdlib_strcat(*(a1 + 112), " ");
              }

              a6 = v34;
              cstdlib_strcat(*(a1 + 104), "§");
              cstdlib_strncat(*(a1 + 104), v32, v34 - NextUtf8Offset);
              v38 = Utf8_LengthInUtf8chars(v32, v34 - NextUtf8Offset);
              if (cstdlib_strlen(__s1) <= v38 || (cstdlib_strlen(__s1) != v38 ? (v39 = v29 > 9) : (v39 = 1), v39))
              {
                v40 = v29;
              }

              else
              {
                v41 = 1;
                do
                {
                  cstdlib_strcat(*(a1 + 104), "~");
                  v40 = (v29 + 1);
                  v39 = cstdlib_strlen(__s1) - v38 > v41++;
                  v42 = !v39 || v29 >= 9;
                  LODWORD(v29) = v29 + 1;
                }

                while (!v42);
              }

              cstdlib_strcat(*(a1 + 104), "§");
              cstdlib_strcat(*(a1 + 112), "§");
              cstdlib_strcat(*(a1 + 112), __s1);
              if (cstdlib_strlen(__s1) < v38 && cstdlib_strlen(__s1) != v38)
              {
                v43 = 0;
                do
                {
                  cstdlib_strcat(*(a1 + 112), "~");
                  ++v43;
                }

                while (v38 - cstdlib_strlen(__s1) > v43);
              }

              cstdlib_strcat(*(a1 + 112), "§");
              v31 = HIWORD(v73);
              LODWORD(PreviousUtf8Offset) = a6;
              v29 = v40;
              LODWORD(a5) = v66;
            }

            v17 = (*(*(a1 + 48) + 120))(v68, v69, v31, &v73 + 2);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }
          }

          if (a6 < v67)
          {
            v44 = &a4[a6];
            v45 = v67 - a6;
            cstdlib_strncat(*(a1 + 104), v44, v45);
            for (k = Utf8_LengthInUtf8chars(v44, v45); k; --k)
            {
              cstdlib_strcat(*(a1 + 112), " ");
            }
          }

          v47 = *(*a1 + 32);
          if (v29 > 9)
          {
            log_OutText(v47, "FE_HMOGRPH", 5, 0, "Homograph validation not OK", v26, v27, v28, v64);
            LOWORD(v73) = 0;
            return (*(*(a1 + 48) + 160))(v68, v69, v66, 7, 1, &v73, &v70 + 2);
          }

          log_OutText(v47, "FE_HMOGRPH", 5, 0, "%s L1: %s", v26, v27, v28, v76);
          v48 = *(*(a1 + 72) + 120);
          v49 = *(a1 + 104);
          v50 = cstdlib_strlen(v49);
          v25 = v48(*(a1 + 56), *(a1 + 64), 0, v49, v50);
          if ((v25 & 0x80000000) != 0)
          {
            return v25;
          }

          log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L2: %s", v51, v52, v53, v76);
          v54 = *(*(a1 + 72) + 120);
          v55 = *(a1 + 112);
          v56 = cstdlib_strlen(v55);
          v25 = v54(*(a1 + 56), *(a1 + 64), 1, v55, v56);
          if ((v25 & 0x80000000) != 0)
          {
            return v25;
          }

          v25 = (*(*(a1 + 72) + 80))(*(a1 + 56), *(a1 + 64), v76);
          if ((v25 & 0x80000000) != 0)
          {
            return v25;
          }

          v17 = (*(*(a1 + 72) + 128))(*(a1 + 56), *(a1 + 64), 0, &v72, &v71 + 2);
          if ((v17 & 0x80000000) == 0)
          {
            v72[HIWORD(v71)] = 0;
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O1: %s", v57, v58, v59, v76);
            if (cstdlib_strstr(v72, "§"))
            {
              log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "Homograph validation not OK", v60, v61, v62, v65);
              LOWORD(v73) = 0;
              return (*(*(a1 + 48) + 160))(v68, v69, v66, 7, 1, &v73, &v70 + 2);
            }
          }
        }
      }
    }
  }

  return v17;
}

uint64_t fe_hmogrph_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 488);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2314215432;
  }
}

uint64_t fe_hmogrph_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2314215425;
  }

  result = 0;
  *a2 = &IFeHmogrph;
  return result;
}

uint64_t fe_hmogrph_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2314215431;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t com_useStatHmogrph(uint64_t a1, _DWORD *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v9, 0, sizeof(v9));
  *a2 = 0;
  result = stat_hmogrph_getBrokerString(a1, v9, 0x100uLL);
  if ((result & 0x80000000) == 0)
  {
    if ((brk_DataOpenEx(*(a1 + 24), v9, 1, &v8) & 0x80000000) != 0)
    {
      log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph data not found", v5, v6, v7, 0);
    }

    else
    {
      *a2 = 1;
      result = brk_DataClose(*(a1 + 24), v8);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t stat_hmogrph_getBrokerString(uint64_t a1, _BYTE *a2, size_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = 0;
  __s2 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__s1 = 0u;
  v11 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v8);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "stathmogrph_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v8);
      v7 = brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, a3);
      return v7 & (v7 >> 31);
    }
  }

  return result;
}

uint64_t com_getUnicodeOrth(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  cstdlib_strcpy(__dst, "stathmogrph_");
  cstdlib_strcat(__dst, a4);
  v10 = (*(a1 + 96))(a2, a3, "fecfg", __dst, &__c[3], &__c[1], __c);
  result = 0;
  if ((v10 & 0x80000000) == 0 && *&__c[1])
  {
    v12 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
    }

    *a5 = **&__c[3];
    return 1;
  }

  return result;
}

uint64_t hlp_addWord(uint64_t a1, const char *a2, int a3, int a4, const char *a5, const char *a6, char *a7, unsigned int a8, const char *a9, uint64_t *a10, const char *a11, const char *a12, uint64_t a13)
{
  v16 = a4;
  v17 = a3;
  v19 = a1;
  v20 = a10;
  if (!*(a13 + 8))
  {
LABEL_6:
    v23 = *(a13 + 10);
    if (*(a13 + 10))
    {
      v24 = *a13;
      if (*(a13 + 8) + 2 <= v23)
      {
        __src = a7;
      }

      else
      {
        v25 = heap_Realloc(*(a1 + 8), v24, (v23 << 6) + 1280);
        if (!v25)
        {
          goto LABEL_57;
        }

        __src = a7;
        *a13 = v25;
        cstdlib_memset((v25 + (*(a13 + 8) << 6)), 0, 0x540uLL);
        *(a13 + 10) += 20;
        v24 = *a13;
      }
    }

    else
    {
      v30 = heap_Calloc(*(a1 + 8), 1, 3201);
      *a13 = v30;
      if (!v30)
      {
        goto LABEL_57;
      }

      v24 = v30;
      __src = a7;
      *(a13 + 10) = 50;
    }

    v31 = v24 + (*(a13 + 8) << 6);
    v32 = *(v19 + 8);
    v33 = cstdlib_strlen(a2);
    v34 = heap_Calloc(v32, 1, (v33 + 4));
    *v31 = v34;
    if (v34)
    {
      cstdlib_strcpy(v34, a2);
      *(v31 + 32) = 0;
      *(v31 + 36) = hlp_doesWordEndInComma(a2);
      v35 = *(v19 + 8);
      v36 = cstdlib_strlen(a2);
      v37 = heap_Calloc(v35, 1, (v36 + 4));
      *(v31 + 40) = v37;
      if (v37)
      {
        v38 = v37;
        v39 = *v31;
        if (*(v31 + 36) == 1)
        {
          v40 = cstdlib_strlen(*v31);
          cstdlib_strncpy(v38, v39, (v40 - 1));
        }

        else
        {
          cstdlib_strcpy(v37, *v31);
        }

        v72 = *(v19 + 8);
        v73 = cstdlib_strlen(a5);
        v74 = heap_Calloc(v72, 1, (v73 + 1));
        *(v31 + 16) = v74;
        if (v74)
        {
          cstdlib_strcpy(v74, a5);
          v75 = heap_Calloc(*(v19 + 8), 1, a8 + 1);
          *(v31 + 24) = v75;
          if (v75)
          {
            cstdlib_strncpy(v75, __src, a8);
            v76 = *(a10 + 4);
            *(v31 + 56) = v76;
            v77 = heap_Calloc(*(v19 + 8), v76, 16);
            *(v31 + 48) = v77;
            if (v77)
            {
              v78 = a9;
              if (!*(a10 + 4))
              {
LABEL_56:
                v71 = 0;
                *(v31 + 8) = v17;
                *(v31 + 10) = v16;
                ++*(a13 + 8);
                return v71;
              }

              v79 = 0;
              v80 = *a10;
              while (1)
              {
                v81 = v80 + 32 * v79;
                v82 = *(v81 + 8);
                v83 = *(v31 + 48) + 16 * v79;
                *(v83 + 8) = v82;
                *(v83 + 10) = *(v81 + 24);
                if (!v82)
                {
                  return 0;
                }

                v84 = heap_Calloc(*(v19 + 8), v82, 56);
                __srcb = (16 * v79);
                *(*(v31 + 48) + 16 * v79) = v84;
                if (!v84)
                {
                  break;
                }

                v80 = *a10;
                v85 = *a10 + 32 * v79;
                if (*(v85 + 8))
                {
                  v86 = 0;
                  v87 = 0;
                  v107 = 32 * v79;
                  v109 = v79;
                  do
                  {
                    v88 = *(v19 + 8);
                    v89 = cstdlib_strlen(*(*v85 + 8 * v87));
                    v90 = heap_Calloc(v88, 1, (v89 + 1));
                    *(*&__srcb[*(v31 + 48)] + v86) = v90;
                    if (!v90)
                    {
                      goto LABEL_57;
                    }

                    cstdlib_strcpy(v90, *(*(*a10 + v107) + 8 * v87));
                    *(*&__srcb[*(v31 + 48)] + v86 + 8) = *(*(*a10 + 32 * v109 + 16) + 2 * v87);
                    v91 = *(v19 + 8);
                    v92 = cstdlib_strlen(v78);
                    v93 = heap_Calloc(v91, 1, (v92 + 1));
                    *(*&__srcb[*(v31 + 48)] + v86 + 16) = v93;
                    if (!v93)
                    {
                      goto LABEL_57;
                    }

                    cstdlib_strcpy(v93, v78);
                    v94 = *(v19 + 8);
                    v95 = cstdlib_strlen(a11);
                    v96 = heap_Calloc(v94, 1, (v95 + 1));
                    *(*&__srcb[*(v31 + 48)] + v86 + 24) = v96;
                    if (!v96)
                    {
                      goto LABEL_57;
                    }

                    cstdlib_strcpy(v96, a11);
                    v97 = *(v19 + 8);
                    v98 = cstdlib_strlen(a12);
                    v99 = heap_Calloc(v97, 1, (v98 + 1));
                    *(*&__srcb[*(v31 + 48)] + v86 + 32) = v99;
                    if (!v99)
                    {
                      goto LABEL_57;
                    }

                    cstdlib_strcpy(v99, a12);
                    v100 = *(v19 + 8);
                    v101 = cstdlib_strlen(a6);
                    v102 = heap_Calloc(v100, 1, (v101 + 1));
                    *(*&__srcb[*(v31 + 48)] + v86 + 40) = v102;
                    if (!v102)
                    {
                      goto LABEL_57;
                    }

                    cstdlib_strcpy(v102, a6);
                    ++v87;
                    v80 = *a10;
                    v79 = v109;
                    v85 = *a10 + 32 * v109;
                    v86 += 56;
                    v78 = a9;
                  }

                  while (v87 < *(v85 + 8));
                }

                if (++v79 >= *(a10 + 4))
                {
                  goto LABEL_56;
                }
              }
            }
          }
        }
      }
    }

LABEL_57:
    v71 = 2314215434;
    v103 = *(v19 + 32);
    goto LABEL_58;
  }

  v21 = *a13 + 48;
  v22 = *(a13 + 8);
  while (*(v21 - 40) != a3 || *(v21 - 38) != a4)
  {
    v21 += 64;
    if (!--v22)
    {
      goto LABEL_6;
    }
  }

  if (!*(v21 + 8))
  {
    return 0;
  }

  v41 = 0;
  v42 = *v21;
  v105 = a10;
  while (1)
  {
    v43 = v42 + 16 * v41;
    v44 = *v20 + 32 * v41;
    v45 = *(v44 + 8);
    v46 = *(v44 + 24);
    if (*(v43 + 10) > v46)
    {
      *(v43 + 10) = v46;
    }

    v47 = *(v43 + 8);
    v48 = v45 + v47;
    __srca = (v45 + v47);
    v49 = heap_Realloc(*(a1 + 8), *v43, 56 * __srca);
    if (!v49)
    {
      break;
    }

    v42 = *v21;
    *(*v21 + 16 * v41) = v49;
    if (v47 < v48)
    {
      v50 = 56 * v47;
      v51 = v47;
      v106 = v47;
      do
      {
        v52 = (v51 - v47);
        if (v47)
        {
          v53 = 0;
          while (cstdlib_strcmp(*(*(*v21 + 16 * v41) + v53), *(*(*v20 + 32 * v41) + 8 * v52)))
          {
            v53 += 56;
            if (v50 == v53)
            {
              goto LABEL_28;
            }
          }

          v42 = *v21;
          v69 = *(*v21 + 16 * v41) + v53;
          v70 = *(*(*v20 + 32 * v41 + 16) + 2 * v52);
          if (*(v69 + 8) > v70)
          {
            *(v69 + 8) = v70;
          }
        }

        else
        {
LABEL_28:
          v54 = *(a1 + 8);
          v55 = cstdlib_strlen(*(*(*v20 + 32 * v41) + 8 * v52));
          v56 = heap_Calloc(v54, 1, (v55 + 1));
          *(*(*v21 + 16 * v41) + 56 * *(*v21 + 16 * v41 + 8)) = v56;
          if (!v56)
          {
            v71 = 2314215434;
            v103 = *(a1 + 32);
            goto LABEL_58;
          }

          cstdlib_strcpy(v56, *(*(*v20 + 32 * v41) + 8 * v52));
          *(*(*v21 + 16 * v41) + 56 * *(*v21 + 16 * v41 + 8) + 8) = *(*(*v20 + 32 * v41 + 16) + 2 * v52);
          v57 = *(a1 + 8);
          v58 = cstdlib_strlen(a9);
          v59 = heap_Calloc(v57, 1, (v58 + 1));
          *(*(*v21 + 16 * v41) + 56 * *(*v21 + 16 * v41 + 8) + 16) = v59;
          v19 = a1;
          if (!v59)
          {
            goto LABEL_57;
          }

          cstdlib_strcpy(v59, a9);
          v60 = *(a1 + 8);
          v61 = cstdlib_strlen(a11);
          v62 = heap_Calloc(v60, 1, (v61 + 1));
          *(*(*v21 + 16 * v41) + 56 * *(*v21 + 16 * v41 + 8) + 24) = v62;
          if (!v62)
          {
            goto LABEL_57;
          }

          cstdlib_strcpy(v62, a11);
          v63 = *(a1 + 8);
          v64 = cstdlib_strlen(a12);
          v65 = heap_Calloc(v63, 1, (v64 + 1));
          *(*(*v21 + 16 * v41) + 56 * *(*v21 + 16 * v41 + 8) + 32) = v65;
          if (!v65)
          {
            goto LABEL_57;
          }

          cstdlib_strcpy(v65, a12);
          v66 = *(a1 + 8);
          v67 = cstdlib_strlen(a6);
          v68 = heap_Calloc(v66, 1, (v67 + 1));
          *(*(*v21 + 16 * v41) + 56 * *(*v21 + 16 * v41 + 8) + 40) = v68;
          if (!v68)
          {
            goto LABEL_57;
          }

          cstdlib_strcpy(v68, a6);
          v42 = *v21;
          ++*(*v21 + 16 * v41 + 8);
          v20 = a10;
          v47 = v106;
        }

        ++v51;
      }

      while (v51 != __srca);
    }

    v71 = 0;
    if (++v41 >= *(v21 + 8))
    {
      return v71;
    }
  }

  v71 = 2314215434;
  v103 = *(a1 + 32);
LABEL_58:
  log_OutPublic(v103, "FE_HMOGRPH", 37000, 0, v26, v27, v28, v29, v105);
  return v71;
}

BOOL hlp_doesWordEndInComma(const char *a1)
{
  result = 0;
  if (a1)
  {
    if (cstdlib_strlen(a1))
    {
      v2 = cstdlib_strlen(a1);
      if (cstdlib_strstr(",.:?!;()", &a1[v2 - 1]))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t hlp_do_add(uint64_t *a1, uint64_t a2, const char *a3, int a4, int a5, const char *a6, const char *a7, const char *a8, const char *a9, char *a10, unsigned __int16 a11)
{
  if (!*(a2 + 8))
  {
    return 166731781;
  }

  v15 = heap_Calloc(*(*a1 + 8), 1, 16);
  if (v15)
  {
    v20 = v15;
    v21 = *(a2 + 8);
    *(v15 + 10) = v21;
    *(v15 + 8) = v21;
    v22 = heap_Calloc(*(*a1 + 8), v21, 32);
    *v20 = v22;
    if (v22)
    {
      v53 = a5;
      v54 = a6;
      if (!*(a2 + 8))
      {
LABEL_22:
        hlp_addWord(*a1, a3, a4, v53, a9, v54, a10, a11, a9, v20, a7, a8, (a1 + 1));
LABEL_26:
        stat_hmogrph_freeCandidatePhons(*a1, v20);
        heap_Free(*(*a1 + 8), v20);
        return 0;
      }

      v27 = 0;
      while (1)
      {
        v28 = *a2 + (v27 << 6);
        v31 = *(v28 + 48);
        v30 = (v28 + 48);
        v29 = v31;
        v32 = *(v31 + 10);
        v33 = (v22 + 32 * v27);
        v33[12] = v32;
        v34 = *(v31 + 8);
        if (*(v31 + 8))
        {
          v35 = 0;
          v36 = (*v29 + 8);
          do
          {
            v37 = *v36;
            v36 += 28;
            if (v37 == v32)
            {
              ++v35;
            }

            --v34;
          }

          while (v34);
        }

        else
        {
          v35 = 0;
        }

        v33[4] = v35;
        v33[5] = v35;
        v38 = heap_Calloc(*(*a1 + 8), v35, 8);
        v39 = *v20;
        *(*v20 + 32 * v27) = v38;
        v40 = *a1;
        if (!v38)
        {
          break;
        }

        v41 = heap_Calloc(*(v40 + 8), *(v39 + 32 * v27 + 10), 2);
        v22 = *v20;
        *(*v20 + 32 * v27 + 16) = v41;
        if (!v41)
        {
          goto LABEL_24;
        }

        v42 = *v30;
        if (*(*v30 + 4))
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = *v42;
          do
          {
            if (*(v46 + v43 + 8) == *(v22 + 32 * v27 + 24))
            {
              v47 = *(*a1 + 8);
              v48 = cstdlib_strlen(*(v46 + v43));
              *(*(*v20 + 32 * v27) + 8 * v45) = heap_Alloc(v47, (v48 + 1));
              v49 = *(*(*v20 + 32 * v27) + 8 * v45);
              if (!v49)
              {
                goto LABEL_24;
              }

              cstdlib_strcpy(v49, *(**v30 + v43));
              v42 = *v30;
              v46 = **v30;
              v22 = *v20;
              *(*(*v20 + 32 * v27 + 16) + 2 * v45++) = *(v46 + v43 + 8);
            }

            ++v44;
            v43 += 56;
          }

          while (v44 < *(v42 + 4));
        }

        if (++v27 >= *(a2 + 8))
        {
          goto LABEL_22;
        }
      }

      v51 = *(v40 + 32);
    }

    else
    {
LABEL_24:
      v51 = *(*a1 + 32);
    }

    log_OutPublic(v51, "FE_HMOGRPH", 37000, 0, v23, v24, v25, v26, v52);
    goto LABEL_26;
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0, v16, v17, v18, v19, v52);
  return 2314215434;
}

void *stat_hmogrph_freeCandidatePhons(void *result, uint64_t a2)
{
  v3 = *a2;
  if (v3)
  {
    v4 = result;
    if (*(a2 + 8))
    {
      v5 = 0;
      do
      {
        v6 = v3 + 32 * v5;
        v7 = *v6;
        if (*v6)
        {
          if (*(v6 + 8))
          {
            v8 = 0;
            do
            {
              if (*(*v6 + 8 * v8))
              {
                heap_Free(v4[1], *(*v6 + 8 * v8));
                *(*(*a2 + 32 * v5) + 8 * v8) = 0;
                v3 = *a2;
              }

              ++v8;
              v6 = v3 + 32 * v5;
            }

            while (v8 < *(v6 + 8));
            v7 = *v6;
          }

          heap_Free(v4[1], v7);
          v3 = *a2;
          *(*a2 + 32 * v5) = 0;
        }

        if (*(v3 + 32 * v5 + 16))
        {
          heap_Free(v4[1], *(v3 + 32 * v5 + 16));
          v3 = *a2;
          *(*a2 + 32 * v5 + 16) = 0;
        }

        ++v5;
      }

      while (v5 < *(a2 + 8));
    }

    result = heap_Free(v4[1], v3);
    *a2 = 0;
  }

  return result;
}

uint64_t hlp_prepare_phons(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, const char *a6, uint64_t a7, const char *a8, const char *a9, const char *a10, unsigned __int16 a11, unsigned __int16 a12, unsigned __int16 a13, const char *a14, char *a15, unsigned __int16 a16)
{
  v102 = 0;
  v103 = 0;
  v99 = 0;
  v105[0] = 0;
  v24 = heap_Calloc(*(*a4 + 8), 1, 16);
  if (!v24)
  {
    v79 = 2314215434;
    log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0, v25, v26, v27, v28, v88);
    return v79;
  }

  v29 = v24;
  v104 = 0;
  v101 = 0;
  v100 = 0;
  *(v24 + 8) = 65537;
  v30 = heap_Calloc(*(*a4 + 8), 1, 32);
  *v29 = v30;
  if (!v30 || (*(v30 + 8) = 0, v35 = *(*a4 + 8), v36 = cstdlib_strlen(a6), (v37 = heap_Calloc(v35, 1, v36 + 1)) == 0))
  {
    v79 = 2314215434;
    log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0, v31, v32, v33, v34, v88);
    v38 = 0;
    goto LABEL_67;
  }

  v38 = v37;
  v94 = a6;
  v39 = (*(*(a1 + 48) + 136))(a2, a3, a13, v105);
  if ((v39 & 0x80000000) != 0)
  {
    v79 = v39;
LABEL_67:
    if (*v29)
    {
      heap_Free(*(*a4 + 8), *v29);
    }

    heap_Free(*(*a4 + 8), v29);
    if (v38)
    {
      goto LABEL_92;
    }

    return v79;
  }

  v40 = v105[0];
  HIWORD(v101) = v105[0];
  if (!v105[0])
  {
    v79 = 0;
    v80 = 0;
    goto LABEL_76;
  }

  v97 = 0;
  v95 = 0;
  v96 = 0;
  v98 = 0;
  v41 = a7 - 8;
  v92 = 1;
  v93 = 1;
  v89 = a5;
  v90 = v38;
  v91 = v41;
  while (1)
  {
    v42 = (*(*(a1 + 48) + 168))(a2, a3, v40, 0, 1, &v104, &v100);
    if ((v42 & 0x80000000) != 0)
    {
LABEL_73:
      v79 = v42;
      goto LABEL_74;
    }

    if (v104 == 17)
    {
      break;
    }

    if (v102)
    {
      v45 = v98 == 1;
    }

    else
    {
      v45 = 0;
    }

    if (v45)
    {
      v42 = hlp_addWord(*a4, v38, HIWORD(v99), v99, v102, a8, a15, a16, a14, v29, a9, a10, a5);
      if ((v42 & 0x80000000) != 0)
      {
        goto LABEL_73;
      }

      v98 = 0;
    }

    v42 = (*(*(a1 + 48) + 136))(a2, a3, HIWORD(v101), &v101 + 2);
    if ((v42 & 0x80000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_62:
    v40 = HIWORD(v101);
    if (!HIWORD(v101))
    {
      goto LABEL_63;
    }
  }

  v42 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v101), 1, 1, &v99 + 2, &v100);
  if ((v42 & 0x80000000) != 0)
  {
    goto LABEL_73;
  }

  v42 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v101), 2, 1, &v99, &v100);
  if ((v42 & 0x80000000) != 0)
  {
    goto LABEL_73;
  }

  v44 = v95;
  v43 = v96;
  if (HIWORD(v99) != v96 || v99 != v95)
  {
    if (v92)
    {
      v44 = v99;
      v43 = HIWORD(v99);
    }

    else
    {
      v42 = hlp_addWord(*a4, v38, v96, v95, v102, a8, a15, a16, a14, v29, a9, a10, a5);
      if ((v42 & 0x80000000) != 0)
      {
        goto LABEL_73;
      }

      ++v93;
      v43 = HIWORD(v99);
      v44 = v99;
    }

    v92 = 0;
    v46 = *v29;
    *(v46 + 8) = 0;
    *(v46 + 24) = -1;
    v98 = 1;
  }

  v96 = v43;
  cstdlib_strncpy(v38, &v94[v43], v44 - v43);
  v38[v99 - HIWORD(v99)] = 0;
  if (HIWORD(v99) >= a11 && v99 <= a12)
  {
    v95 = v44;
    v47 = *(*v29 + 8);
    *(*v29 + 8) = v47 + 1;
    v42 = (*(*(a1 + 48) + 176))(a2, a3, HIWORD(v101), 3, &v103, &v100);
    if ((v42 & 0x80000000) != 0)
    {
      goto LABEL_73;
    }

    v42 = (*(*(a1 + 48) + 176))(a2, a3, HIWORD(v101), 5, &v102, &v100);
    if ((v42 & 0x80000000) != 0)
    {
      goto LABEL_73;
    }

    v42 = (*(*(a1 + 48) + 168))(a2, a3, HIWORD(v101), 7, 1, &v101, &v100);
    if ((v42 & 0x80000000) != 0)
    {
      goto LABEL_73;
    }

    v48 = *v29;
    v49 = *(*v29 + 10);
    if (*(*v29 + 10))
    {
      if (v47 + 1 < v49)
      {
        v50 = *(v48 + 16);
        goto LABEL_41;
      }

      v58 = heap_Realloc(*(*a4 + 8), *v48, 8 * v49 + 80);
      if (v58)
      {
        v59 = *v29;
        *v59 = v58;
        v50 = heap_Realloc(*(*a4 + 8), *(v59 + 16), 2 * *(v59 + 10) + 20);
        if (v50)
        {
          v48 = *v29;
          *(v48 + 16) = v50;
          *(v48 + 10) += 10;
          goto LABEL_41;
        }
      }

LABEL_94:
      v79 = 2314215434;
      v57 = *a4;
LABEL_97:
      log_OutPublic(*(v57 + 32), "FE_HMOGRPH", 37000, 0, v52, v53, v54, v55, v88);
LABEL_74:
      v80 = v97;
      goto LABEL_76;
    }

    *(v48 + 10) = 10;
    v51 = heap_Calloc(*(*a4 + 8), 10, 8);
    v56 = *v29;
    **v29 = v51;
    v57 = *a4;
    if (!v51)
    {
      v79 = 2314215434;
      goto LABEL_97;
    }

    v50 = heap_Calloc(*(v57 + 8), *(v56 + 10), 2);
    v48 = *v29;
    *(*v29 + 16) = v50;
    if (!v50)
    {
      goto LABEL_94;
    }

LABEL_41:
    if (v97 <= *(v48 + 8))
    {
      v60 = *(v48 + 8);
    }

    else
    {
      v60 = v97;
    }

    v97 = v60;
    v61 = v101;
    *(v50 + 2 * v47) = v101;
    if (*(v48 + 24) > v61)
    {
      *(v48 + 24) = v61;
    }

    v62 = *(v41 + 8 * v93);
    v63 = *(*v48 + 8 * v47);
    if (v62)
    {
      if (v63)
      {
        v64 = cstdlib_strlen(v63);
        v65 = v91;
        if (v64 >= cstdlib_strlen(*(v91 + 8 * v93)))
        {
LABEL_56:
          cstdlib_strcpy(*(**v29 + 8 * v47), *(v65 + 8 * v93));
          v38 = v90;
          v41 = v65;
          goto LABEL_61;
        }

        v66 = *(**v29 + 8 * v47);
        v62 = *(v91 + 8 * v93);
      }

      else
      {
        v66 = 0;
      }

      v69 = *(*a4 + 8);
      v70 = cstdlib_strlen(v62);
      v71 = heap_Realloc(v69, v66, (v70 + 1));
      if (!v71)
      {
        v79 = 2314215434;
        log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0, v72, v73, v74, v75, v88);
        v80 = v97;
        v38 = v90;
        goto LABEL_76;
      }

      *(**v29 + 8 * v47) = v71;
      v65 = v91;
      goto LABEL_56;
    }

    if (v63)
    {
      v67 = cstdlib_strlen(v63);
      v38 = v90;
      if (v67 >= cstdlib_strlen(v103))
      {
LABEL_60:
        cstdlib_strcpy(*(**v29 + 8 * v47), v103);
        v41 = v91;
LABEL_61:
        v42 = (*(*(a1 + 48) + 136))(a2, a3, HIWORD(v101), &v101 + 2);
        a5 = v89;
        if ((v42 & 0x80000000) != 0)
        {
          goto LABEL_73;
        }

        goto LABEL_62;
      }

      v68 = *(**v29 + 8 * v47);
    }

    else
    {
      v68 = 0;
      v38 = v90;
    }

    v76 = *(*a4 + 8);
    v77 = cstdlib_strlen(v103);
    v78 = heap_Realloc(v76, v68, (v77 + 1));
    if (!v78)
    {
      goto LABEL_94;
    }

    *(**v29 + 8 * v47) = v78;
    goto LABEL_60;
  }

LABEL_63:
  v79 = 0;
  if (!v102)
  {
    goto LABEL_74;
  }

  v80 = v97;
  if (v98 == 1)
  {
    v79 = hlp_addWord(*a4, v38, HIWORD(v99), v99, v102, a8, a15, a16, a14, v29, a9, a10, a5);
  }

LABEL_76:
  v81 = *a4;
  v82 = *v29;
  if (*v29)
  {
    if (*(v29 + 8))
    {
      v83 = 0;
      do
      {
        v84 = *(v82 + 32 * v83);
        if (v84)
        {
          if (v80)
          {
            v85 = 0;
            do
            {
              v86 = *(*(*v29 + 32 * v83) + v85);
              if (v86)
              {
                heap_Free(*(v81 + 8), v86);
                *(*(*v29 + 32 * v83) + v85) = 0;
              }

              v85 += 8;
            }

            while (8 * v80 != v85);
            v84 = *(*v29 + 32 * v83);
          }

          heap_Free(*(v81 + 8), v84);
          v82 = *v29;
          *(*v29 + 32 * v83) = 0;
        }

        if (*(v82 + 32 * v83 + 16))
        {
          heap_Free(*(v81 + 8), *(v82 + 32 * v83 + 16));
          v82 = *v29;
          *(*v29 + 32 * v83 + 16) = 0;
        }

        ++v83;
      }

      while (v83 < *(v29 + 8));
    }

    heap_Free(*(v81 + 8), v82);
    *v29 = 0;
    v81 = *a4;
  }

  heap_Free(*(v81 + 8), v29);
LABEL_92:
  heap_Free(*(*a4 + 8), v38);
  return v79;
}

uint64_t hlp_merge_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, const char *a7, const char *a8, const char *a9, unsigned __int16 a10, const char *a11, char *a12, unsigned __int16 a13)
{
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v73 = 0;
  v21 = (*(*(a1 + 48) + 168))(a2, a3, a10, 1, 1, &v74, &v74 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v21 = (*(*(a1 + 48) + 168))(a2, a3, a10, 2, 1, &v73, &v74 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v21 = (*(*(a1 + 48) + 176))(a2, a3, a10, 3, &v76, &v74 + 2);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  __s = a6;
  ChineseUTFCharNum = utf8_GetChineseUTFCharNum(a5, v73);
  v68 = utf8_GetChineseUTFCharNum(a5, v74);
  v22 = heap_Calloc(*(*a4 + 8), 1, 16);
  v27 = *a4;
  if (v22)
  {
    v28 = v22;
    v67 = a7;
    v29 = *(v27 + 8);
    v30 = cstdlib_strlen(__s);
    v31 = heap_Calloc(v29, 1, (v30 + 4));
    v36 = *a4;
    if (v31)
    {
      v37 = v31;
      v65 = a8;
      v38 = (ChineseUTFCharNum - v68);
      v72 = heap_Calloc(*(v36 + 8), 1, 8 * v38);
      if (!v72)
      {
        v58 = 2314215434;
        log_OutPublic(*(*a4 + 32), "FE_HMOGRPH", 37000, 0, v39, v40, v41, v42, v61);
        v54 = 0;
        goto LABEL_23;
      }

      __dst = v37;
      v71 = a4;
      v64 = v28;
      v43 = extstdlib_strtok_r(v76, ".", &v75);
      if (v43)
      {
        v44 = v43;
        v45 = 0;
        do
        {
          if (cstdlib_strcmp(v44, "*"))
          {
            v46 = a5;
            v47 = *(*v71 + 8);
            v48 = cstdlib_strlen(v44);
            v49 = heap_Calloc(v47, 1, (v48 + 1));
            v54 = v72;
            *(v72 + 8 * v45) = v49;
            if (!v49)
            {
              v58 = 2314215434;
              a4 = v71;
              log_OutPublic(*(*v71 + 32), "FE_HMOGRPH", 37000, 0, v50, v51, v52, v53, v61);
              v28 = v64;
LABEL_22:
              v37 = __dst;
              goto LABEL_23;
            }

            cstdlib_strcpy(v49, v44);
            v55 = *(v72 + 8 * v45);
            *(v55 + cstdlib_strlen(v44)) = 0;
            a5 = v46;
          }

          v44 = extstdlib_strtok_r(0, ".", &v75);
          ++v45;
        }

        while (v44);
      }

      cstdlib_strcpy(__dst, __s);
      v62 = v73;
      v63 = v74;
      a4 = v71;
      v56 = a5;
      v54 = v72;
      v57 = hlp_prepare_phons(a1, a2, a3, v71, v64, v56, v72, v67, v65, a9, v74, v73, a10, a11, a12, a13);
      if ((v57 & 0x80000000) != 0)
      {
        v58 = v57;
        v28 = v64;
        goto LABEL_22;
      }

      v37 = __dst;
      v58 = hlp_do_add(v71, v64, __dst, v63, v62, v67, v65, a9, a11, a12, a13);
      v28 = v64;
LABEL_23:
      heap_Free(*(*a4 + 8), v37);
      if (v54)
      {
        if (ChineseUTFCharNum != v68)
        {
          v60 = v54;
          do
          {
            if (*v60)
            {
              heap_Free(*(*a4 + 8), *v60);
              *v60 = 0;
            }

            ++v60;
            --v38;
          }

          while (v38);
        }

        heap_Free(*(*a4 + 8), v54);
      }
    }

    else
    {
      v58 = 2314215434;
      log_OutPublic(*(v36 + 32), "FE_HMOGRPH", 37000, 0, v32, v33, v34, v35, v61);
    }

    stat_hmogrph_freeNewSentData(a4, v28);
    heap_Free(*(*a4 + 8), v28);
  }

  else
  {
    v58 = 2314215434;
    log_OutPublic(*(v27 + 32), "FE_HMOGRPH", 37000, 0, v23, v24, v25, v26, v61);
  }

  return v58;
}

uint64_t stat_hmogrph_freeNewSentData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 10))
  {
    v4 = 0;
    do
    {
      v5 = *a2 + (v4 << 6);
      if (*v5)
      {
        heap_Free(*(*a1 + 8), *v5);
        *v5 = 0;
      }

      v6 = *(v5 + 16);
      if (v6)
      {
        heap_Free(*(*a1 + 8), v6);
        *(v5 + 16) = 0;
      }

      v7 = *(v5 + 24);
      if (v7)
      {
        heap_Free(*(*a1 + 8), v7);
        *(v5 + 24) = 0;
      }

      v8 = *(v5 + 40);
      if (v8)
      {
        heap_Free(*(*a1 + 8), v8);
        *(v5 + 40) = 0;
      }

      v9 = *(v5 + 48);
      if (v9)
      {
        v10 = *(v5 + 56);
        if (v10)
        {
          for (i = 0; i < v10; ++i)
          {
            v12 = v9 + 16 * i;
            v13 = *v12;
            if (*v12)
            {
              if (*(v12 + 8))
              {
                v14 = 0;
                v15 = 0;
                do
                {
                  v16 = *(v13 + v14);
                  if (v16)
                  {
                    heap_Free(*(*a1 + 8), v16);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14) = 0;
                  }

                  v17 = *(v13 + v14 + 16);
                  if (v17)
                  {
                    heap_Free(*(*a1 + 8), v17);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 16) = 0;
                  }

                  v18 = *(v13 + v14 + 24);
                  if (v18)
                  {
                    heap_Free(*(*a1 + 8), v18);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 24) = 0;
                  }

                  v19 = *(v13 + v14 + 32);
                  if (v19)
                  {
                    heap_Free(*(*a1 + 8), v19);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 32) = 0;
                  }

                  v20 = *(v13 + v14 + 40);
                  if (v20)
                  {
                    heap_Free(*(*a1 + 8), v20);
                    v9 = *(v5 + 48);
                    v13 = *(v9 + 16 * i);
                    *(v13 + v14 + 40) = 0;
                  }

                  ++v15;
                  v14 += 56;
                }

                while (v15 < *(v9 + 16 * i + 8));
              }

              heap_Free(*(*a1 + 8), v13);
              v9 = *(v5 + 48);
              *(v9 + 16 * i) = 0;
              v10 = *(v5 + 56);
            }
          }
        }

        heap_Free(*(*a1 + 8), v9);
        *(v5 + 48) = 0;
      }

      ++v4;
    }

    while (v4 < *(a2 + 10));
  }

  if (*a2)
  {
    heap_Free(*(*a1 + 8), *a2);
    *a2 = 0;
  }

  return 0;
}

uint64_t stat_hmogrph_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v8 = a2;
  v123 = 0;
  *v124 = 0;
  v122 = 0;
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v118 = 0;
  v116 = 0;
  v117 = 0;
  v114 = 0;
  v115 = 0;
  v112 = 0;
  v113 = 0;
  v111 = 0;
  v109 = 0;
  *(a5 + 8) = 0;
  v10 = a5 + 8;
  *(a5 + 16) = 0;
  v11 = (*(a2 + 104))(a3, a4, 1, 0, &v124[1]);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = v11;
    goto LABEL_107;
  }

  v12 = (*(v8 + 184))(a3, a4, v124[1], 0, &v123);
  if ((v12 & 0x80000000) != 0 || v123 != 1 || (v12 = (*(v8 + 176))(a3, a4, v124[1], 0, &v122, &v123 + 2), (v12 & 0x80000000) != 0) || HIWORD(v123) < 2u)
  {
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_107;
    }

    return v12;
  }

  log_OutText(*(*v5 + 32), "FE_HMOGRPH", 5, 0, "Stathmogrph: processing=%s", v13, v14, v15, v122);
  v16 = heap_Calloc(*(*v5 + 8), 1, 1024);
  if (!v16)
  {
    v12 = 2314215434;
    log_OutPublic(*(*v5 + 32), "FE_HMOGRPH", 37000, 0, v17, v18, v19, v20, v90);
    goto LABEL_107;
  }

  v21 = v16;
  v22 = cstdlib_strlen(v122);
  v27 = heap_Calloc(*(*v5 + 8), 1, (v22 + 1));
  if (!v27)
  {
    v12 = 2314215434;
    log_OutPublic(*(*v5 + 32), "FE_HMOGRPH", 37000, 0, v23, v24, v25, v26, v90);
    v106 = 0;
    v107 = 0;
    v28 = 0;
    v105 = 0;
    goto LABEL_141;
  }

  v12 = (*(v8 + 104))(a3, a4, 2, v124[1], v124);
  v28 = 0;
  v107 = 0;
  if ((v12 & 0x80000000) != 0)
  {
    v105 = 0;
    v106 = 0;
    goto LABEL_141;
  }

  v29 = v124[0];
  v105 = 0;
  v106 = 0;
  if (!v124[0])
  {
    goto LABEL_141;
  }

  v103 = 0;
  v105 = 0;
  v94 = 0;
  v28 = 0;
  v106 = 0;
  __s = v27;
  v96 = v21;
  while (1)
  {
    v108 = 0;
    v30 = (*(v8 + 168))(a3, a4, v29, 0, 1, &v120, &v123 + 2);
    if ((v30 & 0x80000000) != 0)
    {
      v107 = 0;
      goto LABEL_115;
    }

    if (v120 <= 0xA && ((1 << v120) & 0x610) != 0)
    {
      break;
    }

LABEL_94:
    v12 = (*(v8 + 120))(a3, a4, v124[0], v124);
    if ((v12 & 0x80000000) == 0)
    {
      v29 = v124[0];
      if (v124[0])
      {
        continue;
      }
    }

    v107 = 0;
    goto LABEL_139;
  }

  v30 = (*(v8 + 168))(a3, a4, v124[0], 1, 1, &v119 + 2, &v123 + 2);
  if ((v30 & 0x80000000) != 0 || (v30 = (*(v8 + 168))(a3, a4, v124[0], 2, 1, &v119, &v123 + 2), (v30 & 0x80000000) != 0))
  {
LABEL_112:
    v107 = 0;
    v28 = 0;
LABEL_113:
    v105 = 0;
LABEL_114:
    v106 = 0;
LABEL_115:
    v12 = v30;
    goto LABEL_139;
  }

  if (HIWORD(v119) > v119)
  {
    v106 = 0;
    v107 = 0;
    v28 = 0;
    v105 = 0;
    v88 = 16049;
    goto LABEL_138;
  }

  cstdlib_strncpy(v27, &v122[HIWORD(v119)], v119 - HIWORD(v119));
  v27[v119 - HIWORD(v119)] = 0;
  v30 = (*(v8 + 184))(a3, a4, v124[0], 14, &v123);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_112;
  }

  if (v123 != 1)
  {
    goto LABEL_28;
  }

  v30 = (*(v8 + 176))(a3, a4, v124[0], 14, &v117, &v123 + 2);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_112;
  }

  hlp_NLUStrFind(v117, "POS", &v113, &v121 + 1);
  if (cstdlib_strstr(v117, "POI"))
  {
    LOWORD(v121) = 0;
    hlp_NLUStrFind(v117, "S_POI", &v112, &v121);
    if (v121 || (hlp_NLUStrFind(v117, "I_POI", &v112, &v121), v121))
    {
      v32 = v112;
      v33 = "_";
    }

    else
    {
      hlp_NLUStrFind(v117, "E_POI", &v112, &v121);
      if (v121)
      {
        v33 = "_";
      }

      else
      {
        v33 = "";
      }

      if (v121)
      {
        v32 = v112;
      }

      else
      {
        v32 = "";
      }
    }

    v112 = v32;
    v34 = cstdlib_strlen("poi");
    v35 = cstdlib_strlen(v33);
    v100 = v121 + v35 + v34 + 1;
    v36 = heap_Calloc(*(*v5 + 8), 1, v100);
    if (!v36)
    {
      v106 = 0;
      v107 = 0;
      v28 = 0;
      v105 = 0;
      v12 = 2314215434;
      v21 = v96;
      goto LABEL_139;
    }

    v37 = v36;
    *v36 = 0;
    cstdlib_strcat(v36, "poi");
    cstdlib_strcat(v37, v33);
    cstdlib_strncat(v37, v112, v121);
    v21 = v96;
  }

  else
  {
LABEL_28:
    v100 = 0;
    v37 = 0;
  }

  v99 = v113;
  if (v113)
  {
    v28 = 0;
    if (!v37)
    {
LABEL_34:
      v39 = heap_Calloc(*(*v5 + 8), 1, 2);
      if (v39)
      {
        v37 = v39;
        LOWORD(v121) = 1;
        *v39 = 61;
        goto LABEL_36;
      }

      v107 = 0;
LABEL_132:
      v105 = 0;
LABEL_135:
      v106 = 0;
LABEL_137:
      v88 = 8202;
LABEL_138:
      v12 = v88 | 0x89F00000;
      goto LABEL_139;
    }
  }

  else
  {
    v28 = 1;
    v38 = heap_Calloc(*(*v5 + 8), 1, 2);
    v113 = v38;
    if (!v38)
    {
      v107 = v37;
      goto LABEL_132;
    }

    *v38 = 61;
    v113[1] = 0;
    v28 = 1;
    if (!v37)
    {
      goto LABEL_34;
    }
  }

LABEL_36:
  v30 = (*(*(a1 + 48) + 176))(a3, a4, v124[0], 6, &v115, &v123 + 2);
  v107 = v37;
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_113;
  }

  v30 = (*(*(a1 + 48) + 176))(a3, a4, v124[0], 9, &v114, &v123 + 2);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_113;
  }

  v30 = (*(v8 + 184))(a3, a4, v124[0], 4, &v123);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_113;
  }

  if (v123 == 1)
  {
    v30 = (*(v8 + 176))(a3, a4, v124[0], 4, &v116, &v123 + 2);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_113;
    }
  }

  v93 = v116;
  if (v116)
  {
    v105 = 0;
    v40 = v103;
  }

  else
  {
    v41 = heap_Calloc(*(*v5 + 8), 1, 2);
    v116 = v41;
    v40 = v103;
    if (!v41)
    {
      v105 = 1;
      goto LABEL_135;
    }

    *v41 = 61;
    v116[1] = 0;
    v105 = 1;
  }

  v30 = (*(v8 + 176))(a3, a4, v124[0], 5, &v109, &v123 + 2);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_114;
  }

  v92 = v109;
  if (v109)
  {
    v106 = 0;
  }

  else
  {
    v42 = heap_Calloc(*(*v5 + 8), 1, 2);
    v109 = v42;
    if (!v42)
    {
      v106 = 1;
      goto LABEL_137;
    }

    *v42 = 61;
    v109[1] = 0;
    v106 = 1;
  }

  if (*(a1 + 144) && v120 == 9 && utf8_IsChineseLetter(v27))
  {
    v30 = hlp_merge_add(a1, a3, a4, v5, v122, v27, v116, v115, v114, v124[0], v109, v107, v100);
    if ((v30 & 0x80000000) != 0)
    {
      goto LABEL_115;
    }

LABEL_87:
    if (!v99)
    {
      heap_Free(*(*v5 + 8), v113);
      v113 = 0;
    }

    heap_Free(*(*v5 + 8), v107);
    if (!v93)
    {
      heap_Free(*(*v5 + 8), v116);
      v116 = 0;
    }

    v103 = v40;
    if (v92)
    {
      v106 = 0;
    }

    else
    {
      heap_Free(*(*v5 + 8), v109);
      v109 = 0;
      v106 = 1;
    }

    goto LABEL_94;
  }

  v91 = a1;
  v43 = heap_Calloc(*(*v5 + 8), 1, 16);
  if (!v43)
  {
    log_OutPublic(*(*v5 + 32), "FE_HMOGRPH", 37000, 0, v44, v45, v46, v47, v90);
    goto LABEL_137;
  }

  v48 = v43;
  *(v43 + 8) = 655360;
  v49 = heap_Calloc(*(*v5 + 8), 10, 32);
  *v48 = v49;
  if (!v49)
  {
    v102 = 0;
    goto LABEL_126;
  }

  v54 = (*(v8 + 176))(a3, a4, v124[0], 3, &v111, &v123 + 2);
  if ((v54 & 0x80000000) == 0)
  {
    v55 = cstdlib_strstr(v111, "[SVOX]");
    v56 = v111;
    v97 = v28;
    if (v55)
    {
      v56 = v111 + 6;
      v111 += 6;
    }

    v57 = *(*v5 + 8);
    v58 = cstdlib_strlen(v56);
    v59 = heap_Alloc(v57, v58 + 1);
    if (v59)
    {
      v102 = v59;
      cstdlib_strcpy(v59, v111);
      v28 = v97;
      if (cstdlib_strlen(v111) >= v94)
      {
        v60 = (cstdlib_strlen(v111) + 1);
        if (v60 <= 4)
        {
          v61 = 4;
        }

        else
        {
          v61 = v60;
        }

        v94 = v61;
        v62 = heap_Realloc(*(*v5 + 8), v40, v61);
        if (!v62)
        {
          goto LABEL_126;
        }

        v40 = v62;
      }

      v54 = (*(v8 + 168))(a3, a4, v124[0], 7, 1, &v118, &v123 + 2);
      if ((v54 & 0x80000000) != 0)
      {
        goto LABEL_124;
      }

      v63 = 0;
      if (cstdlib_strlen(v27))
      {
        NextUtf8Offset = 0;
        v98 = v5;
        v95 = v8;
        while ((utf8_getUTF8Char(v27, NextUtf8Offset, v110) & 0x80000000) == 0)
        {
          v65 = *(v48 + 10);
          if (*(v48 + 8) >= v65)
          {
            v66 = heap_Realloc(*(*v5 + 8), *v48, 32 * v65 + 320);
            if (!v66)
            {
              goto LABEL_116;
            }

            *v48 = v66;
            *(v48 + 10) += 10;
          }

          if (!hlp_getPhonFromPhonStr(v27, NextUtf8Offset, v102, v40, &v108))
          {
            break;
          }

          *(*v48 + 32 * *(v48 + 8) + 8) = 65537;
          v67 = heap_Calloc(*(*v5 + 8), 1, 2);
          v68 = *v48;
          *(*v48 + 32 * *(v48 + 8) + 16) = v67;
          if (!v67 || (v69 = v118, *v67 = v118, *(v68 + 32 * *(v48 + 8) + 24) = v69, v70 = heap_Alloc(*(*v5 + 8), 8), (*(*v48 + 32 * *(v48 + 8)) = v70) == 0))
          {
LABEL_116:
            v21 = v96;
            v28 = v97;
            goto LABEL_126;
          }

          v71 = NextUtf8Offset;
          v72 = cstdlib_strlen(v40);
          v73 = v48;
          v74 = *(*v5 + 8);
          v75 = cstdlib_strlen(v40) + 1;
          v76 = v74;
          v48 = v73;
          v77 = heap_Alloc(v76, v75);
          v78 = 32 * *(v73 + 8);
          **(*v73 + v78) = v77;
          v79 = **(*v73 + v78);
          if (!v79)
          {
            v21 = v96;
            v28 = v97;
            v27 = __s;
            v5 = v98;
            goto LABEL_126;
          }

          v63 += v72 + 1;
          cstdlib_strcpy(v79, v40);
          v80 = *(v73 + 8) + 1;
          *(v73 + 8) = v80;
          if (v108 == 1)
          {
            v27 = __s;
            v5 = v98;
            v8 = v95;
            goto LABEL_81;
          }

          v27 = __s;
          NextUtf8Offset = utf8_GetNextUtf8Offset(__s, v71);
          v5 = v98;
          v8 = v95;
          if (NextUtf8Offset >= cstdlib_strlen(__s))
          {
            break;
          }
        }
      }

      v80 = *(v48 + 8);
LABEL_81:
      if (!v80 || v63 >= cstdlib_strlen(v111) + 1)
      {
        goto LABEL_85;
      }

      v81 = cstdlib_strlen(**(*v48 + 32 * *(v48 + 8) - 32));
      v104 = *(*v5 + 8);
      v82 = **(*v48 + 32 * *(v48 + 8) - 32);
      v83 = cstdlib_strlen(v111);
      v84 = heap_Realloc(v104, v82, v81 - v63 + v83 + 2);
      if (v84)
      {
        v85 = *(v48 + 8);
        **(*v48 + 32 * v85 - 32) = v84;
        cstdlib_strcat(**(*v48 + 32 * v85 - 32), &v111[v63 - 1]);
        v27 = __s;
LABEL_85:
        v86 = hlp_addWord(*v5, v27, HIWORD(v119), v119, v113, v116, v107, v100, v109, v48, v115, v114, v10);
        stat_hmogrph_freeCandidatePhons(*v5, v48);
        heap_Free(*(*v5 + 8), v48);
        heap_Free(*(*v5 + 8), v102);
        if ((v86 & 0x80000000) != 0)
        {
          v103 = v40;
          v12 = v86;
          v21 = v96;
          v28 = v97;
          goto LABEL_139;
        }

        v21 = v96;
        v28 = v97;
        a1 = v91;
        goto LABEL_87;
      }

      v21 = v96;
      v28 = v97;
      v27 = __s;
    }

    else
    {
      v102 = 0;
      v28 = v97;
    }

LABEL_126:
    log_OutPublic(*(*v5 + 32), "FE_HMOGRPH", 37000, 0, v50, v51, v52, v53, v90);
    v89 = 2314215434;
    goto LABEL_127;
  }

  v102 = 0;
LABEL_124:
  v89 = v54;
LABEL_127:
  v103 = v40;
  stat_hmogrph_freeCandidatePhons(*v5, v48);
  heap_Free(*(*v5 + 8), v48);
  if (v102)
  {
    heap_Free(*(*v5 + 8), v102);
  }

  v12 = v89;
LABEL_139:
  if (v103)
  {
    heap_Free(*(*v5 + 8), v103);
  }

LABEL_141:
  heap_Free(*(*v5 + 8), v21);
  if (v27)
  {
    heap_Free(*(*v5 + 8), v27);
  }

  if ((v12 & 0x80000000) != 0)
  {
    if (v28 == 1)
    {
      heap_Free(*(*v5 + 8), v113);
      v113 = 0;
    }

    if (v107)
    {
      heap_Free(*(*v5 + 8), v107);
    }

    if (v105 == 1)
    {
      heap_Free(*(*v5 + 8), v116);
      v116 = 0;
    }

    if (v106 == 1)
    {
      heap_Free(*(*v5 + 8), v109);
      v109 = 0;
    }

LABEL_107:
    stat_hmogrph_freeSentenceData(v5);
  }

  return v12;
}

uint64_t hlp_getPhonFromPhonStr(char *a1, unsigned int a2, char *a3, char *a4, _DWORD *a5)
{
  result = 0;
  v13 = a2;
  if (a4 && a5)
  {
    v12 = 0;
    *a5 = 0;
    if (utf8_Utf8CharTo16bit(a1, &v12) && v12 - 40960 <= 0xFFFFADFF)
    {
      cstdlib_strcpy(a4, a3);
      result = 1;
      *a5 = 1;
    }

    else
    {
      utf8_GetPreviousValidUtf8Offset(a1, &v13);
      if (v13)
      {
        NextUtf8Offset = 0;
        while (1)
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(a1, NextUtf8Offset);
          result = cstdlib_strstr(a3, ".");
          if (!result)
          {
            break;
          }

          if (*result == 46)
          {
            a3 = (result + 1);
          }

          else
          {
            a3 = result;
          }

          if (NextUtf8Offset == v13)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        for (NextUtf8Offset = 0; ; ++NextUtf8Offset)
        {
          v11 = a3[NextUtf8Offset];
          if (!a3[NextUtf8Offset] || v11 == 46)
          {
            break;
          }

          a4[NextUtf8Offset] = v11;
          if (NextUtf8Offset && v11 == 125 && a4[NextUtf8Offset - 1] - 48 <= 9)
          {
            a3[NextUtf8Offset++] = 46;
            break;
          }
        }

        result = 1;
      }

      a4[NextUtf8Offset] = 0;
    }
  }

  return result;
}

uint64_t stat_hmogrph_freeSentenceData(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v2 = 0;
      do
      {
        v3 = *(a1 + 8) + (v2 << 6);
        if (*v3)
        {
          heap_Free(*(*a1 + 8), *v3);
          *v3 = 0;
        }

        v4 = *(v3 + 16);
        if (v4)
        {
          heap_Free(*(*a1 + 8), v4);
          *(v3 + 16) = 0;
        }

        v5 = *(v3 + 24);
        if (v5)
        {
          heap_Free(*(*a1 + 8), v5);
          *(v3 + 24) = 0;
        }

        v6 = *(v3 + 40);
        if (v6)
        {
          heap_Free(*(*a1 + 8), v6);
          *(v3 + 40) = 0;
        }

        v7 = *(v3 + 48);
        if (v7)
        {
          v8 = *(v3 + 56);
          if (v8)
          {
            for (i = 0; i < v8; ++i)
            {
              v10 = v7 + 16 * i;
              v11 = *v10;
              if (*v10)
              {
                if (*(v10 + 8))
                {
                  v12 = 0;
                  v13 = 0;
                  do
                  {
                    v14 = *(v11 + v12);
                    if (v14)
                    {
                      heap_Free(*(*a1 + 8), v14);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12) = 0;
                    }

                    v15 = *(v11 + v12 + 16);
                    if (v15)
                    {
                      heap_Free(*(*a1 + 8), v15);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 16) = 0;
                    }

                    v16 = *(v11 + v12 + 24);
                    if (v16)
                    {
                      heap_Free(*(*a1 + 8), v16);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 24) = 0;
                    }

                    v17 = *(v11 + v12 + 32);
                    if (v17)
                    {
                      heap_Free(*(*a1 + 8), v17);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 32) = 0;
                    }

                    v18 = *(v11 + v12 + 40);
                    if (v18)
                    {
                      heap_Free(*(*a1 + 8), v18);
                      v7 = *(v3 + 48);
                      v11 = *(v7 + 16 * i);
                      *(v11 + v12 + 40) = 0;
                    }

                    ++v13;
                    v12 += 56;
                  }

                  while (v13 < *(v7 + 16 * i + 8));
                }

                heap_Free(*(*a1 + 8), v11);
                v7 = *(v3 + 48);
                *(v7 + 16 * i) = 0;
                v8 = *(v3 + 56);
              }
            }
          }

          heap_Free(*(*a1 + 8), v7);
          *(v3 + 48) = 0;
        }

        ++v2;
      }

      while (v2 < *(a1 + 16));
    }

    v19 = *(a1 + 8);
    if (v19)
    {
      heap_Free(*(*a1 + 8), v19);
      *(a1 + 8) = 0;
    }

    cstdlib_memset((a1 + 8), 0, 0x10uLL);
  }

  return 0;
}

uint64_t hlp_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 65);
    *a2 = v6;
    if (!v6)
    {
      break;
    }

    cstdlib_strcpy(v6, "=");
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v7, v8, v9, v10, v12);
  return 2314215434;
}

uint64_t hlp_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames[a3];
  v8 = (a2 - 1);
  while (cstdlib_strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t hlp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v20 = -1;
  result = hlp_isFeatureRequired(a2, a3, a4, &v20);
  if (result)
  {
    if (cstdlib_strcmp(a6, ""))
    {
      v10 = cstdlib_strlen(a6);
      v11 = v20;
      if (v10 <= 0x40)
      {
        v13 = *(a5 + 8 * v20);
      }

      else
      {
        v12 = cstdlib_strlen(a6);
        v13 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v11), (v12 + 1));
        if (!v13)
        {
          log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v14, v15, v16, v17, v19);
          return 2314215434;
        }

        *(a5 + 8 * v11) = v13;
      }

      v18 = a6;
    }

    else
    {
      v13 = *(a5 + 8 * v20);
      v18 = "=";
    }

    cstdlib_strcpy(v13, v18);
    return 0;
  }

  return result;
}

uint64_t hlp_wordStrLowerCase(char *a1, char *a2)
{
  *&__s[3] = 0;
  *__s = 0;
  *a2 = 0;
  if ((utf8_getUTF8Char(a1, 0, __s) & 0x80000000) == 0)
  {
    NextUtf8Offset = 0;
    do
    {
      if (cstdlib_strlen(a1) <= NextUtf8Offset)
      {
        break;
      }

      if (cstdlib_strlen(__s) == 1 && __s[0] - 65 <= 0x19)
      {
        a2[NextUtf8Offset] = __s[0] | 0x20;
      }

      else
      {
        cstdlib_strcat(a2, __s);
      }

      NextUtf8Offset = utf8_GetNextUtf8Offset(a1, NextUtf8Offset);
    }

    while ((utf8_getUTF8Char(a1, NextUtf8Offset, __s) & 0x80000000) == 0);
  }

  return 0;
}

uint64_t feat_character(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, const char *a6, char *a7)
{
  v12 = a3;
  v13 = cstdlib_strlen(*(*a2 + (a3 << 6)));
  v35 = v12;
  if (a3)
  {
    v14 = 0;
    v15 = 0;
    v16 = v12 << 6;
    do
    {
      v15 += cstdlib_strlen(*(*a2 + v14));
      v14 += 64;
    }

    while (v16 != v14);
  }

  else
  {
    v15 = 0;
  }

  if (*(a2 + 8) <= (a3 + 1))
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = (a3 + 1);
    v19 = v18 << 6;
    do
    {
      v17 += cstdlib_strlen(*(*a2 + v19));
      ++v18;
      v19 += 64;
    }

    while (v18 < *(a2 + 8));
  }

  v20 = heap_Calloc(*(a1 + 8), 1, (v13 + v15 + v17 + 1));
  if (!v20)
  {
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v21, v22, v23, v24, v34);
    return 2314215434;
  }

  v25 = v20;
  if (!*(a2 + 8))
  {
    goto LABEL_28;
  }

  v26 = 0;
  v27 = 0;
  NextUtf8Offset = v15 + a4;
  do
  {
    cstdlib_strcat(v25, *(*a2 + v26));
    ++v27;
    v29 = *(a2 + 8);
    v26 += 64;
  }

  while (v27 < v29);
  if (v29 <= a3 || cstdlib_strlen(*(*a2 + (v35 << 6))) <= a4)
  {
    goto LABEL_28;
  }

  if (a5 < 0)
  {
    if (!NextUtf8Offset)
    {
      goto LABEL_28;
    }

    do
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v25, NextUtf8Offset);
      NextUtf8Offset = PreviousUtf8Offset;
      v33 = ~a5 == 0;
      LOWORD(a5) = a5 + 1;
    }

    while (!v33 && PreviousUtf8Offset);
    if (a5)
    {
      goto LABEL_28;
    }
  }

  else if (a5)
  {
    while (NextUtf8Offset != cstdlib_strlen(v25))
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(v25, NextUtf8Offset);
      v30 = a5--;
      if (v30 <= 1)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_28;
  }

LABEL_27:
  if ((utf8_getUTF8Char(v25, NextUtf8Offset, a7) & 0x80000000) != 0)
  {
LABEL_28:
    cstdlib_strcpy(a7, a6);
  }

  heap_Free(*(a1 + 8), v25);
  return 0;
}

uint64_t feat_colloc(unsigned __int16 *a1, unsigned int a2, char *__s1)
{
  v4 = a2;
  if (!a2)
  {
LABEL_10:
    v10 = 78;
    v9 = 82;
    goto LABEL_12;
  }

  if (!cstdlib_strcmp(__s1, *(*a1 + 40)))
  {
    v10 = 76;
    v9 = 66;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 104;
  do
  {
    if (v4 - 1 == v6)
    {
      goto LABEL_10;
    }

    v8 = cstdlib_strcmp(__s1, *(*a1 + v7));
    v7 += 64;
    ++v6;
  }

  while (v8);
  if (v6 >= v4)
  {
    v9 = 82;
  }

  else
  {
    v9 = 66;
  }

  v10 = 76;
LABEL_12:
  while (1)
  {
    LOWORD(v4) = v4 + 1;
    if (a1[4] <= v4)
    {
      break;
    }

    if (!cstdlib_strcmp(__s1, *(*a1 + (v4 << 6) + 40)))
    {
      return v9;
    }
  }

  return v10;
}

uint64_t feat_word(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4 = (a3 + a2);
  if (a3 + a2 >= 0 && v4 < *(a1 + 8))
  {
    return *(*a1 + (v4 << 6) + 40);
  }

  return a4;
}

uint64_t feat_wordne(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v5 = a1 + 40 * (a4 + a3) + 30;
  if (a4 + a3 >= a2)
  {
    v5 = a5;
  }

  if (a1)
  {
    return v5;
  }

  else
  {
    return a5;
  }
}

char *feat_wordbeg(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  v5 = (a3 + a2);
  if (a3 + a2 < 0 || v5 >= *(a1 + 8))
  {
    return cstdlib_strcpy(__dst, __src);
  }

  else
  {
    return utf8_getUTF8Char(*(*a1 + (v5 << 6) + 40), 0, __dst);
  }
}

char *feat_wordend(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  v6 = (a3 + a2);
  if (a3 + a2 < 0 || v6 >= *(a1 + 8))
  {

    return cstdlib_strcpy(__dst, __src);
  }

  else
  {
    v8 = cstdlib_strlen(*(*a1 + (v6 << 6) + 40));
    v9 = *(*a1 + (v6 << 6) + 40);

    return utf8_GetUtf8Symbol(v9, v8 - 1, v8, __dst);
  }
}

char *feat_wordlc(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  *__dst = 0;
  v5 = (a3 + a2);
  if (a3 + a2 < 0 || v5 >= *(a1 + 8))
  {
    return cstdlib_strcpy(__dst, __src);
  }

  else
  {
    return hlp_wordStrLowerCase(*(*a1 + (v5 << 6) + 40), __dst);
  }
}

char *feat_wordlen(uint64_t a1, int a2, int a3, char *__src, char *__dst)
{
  *__dst = 0;
  v6 = (a3 + a2);
  if (a3 + a2 < 0 || v6 >= *(a1 + 8))
  {

    return cstdlib_strcpy(__dst, __src);
  }

  else
  {
    v7 = Utf8_Utf8NbrOfSymbols(*(*a1 + (v6 << 6) + 40));
    return sprintf(__dst, "%d", v7 - 1);
  }
}

uint64_t feat_pos(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = a3 + a2;
  if (a3 <= 0)
  {
    v9 = a3 + a2;
  }

  else
  {
    v9 = a2;
  }

  LOWORD(v10) = v9;
  if (a3 <= 0)
  {
    v8 = a2;
  }

  v11 = v8 - 1;
  if (v9 > v11)
  {
LABEL_12:
    v13 = (a3 + a2);
    if (a3 + a2 >= 0 && v13 < *(a1 + 8))
    {
      return *(*a1 + (v13 << 6) + 16);
    }
  }

  else
  {
    v12 = v11;
    while ((v10 & 0x8000) != 0 || *(a1 + 8) <= v10 || !hlp_doesWordEndInComma(*(*a1 + (v10 << 6))))
    {
      v10 = (v10 + 1);
      if (v10 > v12)
      {
        goto LABEL_12;
      }
    }
  }

  return a4;
}

uint64_t feat_matchprevpos(void *a1, unsigned int a2, char *__s2, uint64_t a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = a2 - 1;
    while (1)
    {
      v9 = *a1 + (v7 << 6);
      if (!cstdlib_strcmp(*(v9 + 16), __s2))
      {
        break;
      }

      --v7;
      if (!v8--)
      {
        return a4;
      }
    }

    return *(v9 + 40);
  }

  return a4;
}

uint64_t feat_matchnextpos(uint64_t a1, unsigned __int16 a2, char *__s2, uint64_t a4)
{
  while (*(a1 + 8) > ++a2)
  {
    v8 = *a1 + (a2 << 6);
    if (!cstdlib_strcmp(*(v8 + 16), __s2))
    {
      return *(v8 + 40);
    }
  }

  return a4;
}

uint64_t feat_mosyntpos(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4 = (a3 + a2);
  if (a3 + a2 >= 0 && v4 < *(a1 + 8))
  {
    v5 = *a1 + (v4 << 6);
    v6 = *(v5 + 56);
    if (*(v5 + 56))
    {
      for (i = (*(v5 + 48) + 8); *i != 1; i += 8)
      {
        if (!--v6)
        {
          return a4;
        }
      }

      return *(*(i - 1) + 16);
    }
  }

  return a4;
}

const char *feat_sentbeg(int a1, int a2)
{
  if ((a2 + 1) < 2 && a1 == 0)
  {
    return "SB";
  }

  else
  {
    return "SI";
  }
}

uint64_t hlp_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, unsigned int a6, unsigned int a7, char **a8, unsigned __int16 a9, uint64_t a10)
{
  v138 = 0;
  v18 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v18)
  {
    v23 = v18;
    v136 = a6;
    v137 = a7;
    v135 = a8;
    if (a4 < 2)
    {
      v26 = 0;
LABEL_9:
      if (!hlp_isFeatureRequired(a3, a4, 11, &v138) || (!a6 || (v27 = a6 - 1, v27 >= a5[4]) ? (v28 = "=") : (v28 = *(*a5 + (v27 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 11, a2, v28), (v26 & 0x80000000) == 0))
      {
        if (!hlp_isFeatureRequired(a3, a4, 10, &v138) || ((v35 = a6 - 2, a6 < 2) || v35 >= a5[4] ? (v36 = "=") : (v36 = *(*a5 + (v35 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 10, a2, v36), (v26 & 0x80000000) == 0))
        {
          if (!hlp_isFeatureRequired(a3, a4, 9, &v138) || ((v37 = a6 - 3, a6 < 3) || v37 >= a5[4] ? (v38 = "=") : (v38 = *(*a5 + (v37 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 9, a2, v38), (v26 & 0x80000000) == 0))
          {
            if (!hlp_isFeatureRequired(a3, a4, 8, &v138) || ((v39 = a6 - 4, a6 < 4) || v39 >= a5[4] ? (v40 = "=") : (v40 = *(*a5 + (v39 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 8, a2, v40), (v26 & 0x80000000) == 0))
            {
              if (!hlp_isFeatureRequired(a3, a4, 7, &v138) || ((v41 = a6 - 5, a6 < 5) || v41 >= a5[4] ? (v42 = "=") : (v42 = *(*a5 + (v41 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 7, a2, v42), (v26 & 0x80000000) == 0))
              {
                if (!hlp_isFeatureRequired(a3, a4, 15, &v138) || ((v50 = a6 + 1, v50 >= a5[4]) ? (v51 = "=") : (v51 = *(*a5 + (v50 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 15, a2, v51), (v26 & 0x80000000) == 0))
                {
                  if (!hlp_isFeatureRequired(a3, a4, 16, &v138) || ((v64 = a6 + 2, v64 >= a5[4]) ? (v65 = "=") : (v65 = *(*a5 + (v64 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 16, a2, v65), (v26 & 0x80000000) == 0))
                  {
                    if (!hlp_isFeatureRequired(a3, a4, 17, &v138) || ((v72 = a6 + 3, v72 >= a5[4]) ? (v73 = "=") : (v73 = *(*a5 + (v72 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 17, a2, v73), (v26 & 0x80000000) == 0))
                    {
                      if (!hlp_isFeatureRequired(a3, a4, 18, &v138) || ((v80 = a6 + 4, v80 >= a5[4]) ? (v81 = "=") : (v81 = *(*a5 + (v80 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 18, a2, v81), (v26 & 0x80000000) == 0))
                      {
                        if (!hlp_isFeatureRequired(a3, a4, 19, &v138) || ((v88 = a6 + 5, v88 >= a5[4]) ? (v89 = "=") : (v89 = *(*a5 + (v88 << 6) + 40)), v26 = hlp_setFeature(a1, a3, a4, 19, a2, v89), (v26 & 0x80000000) == 0))
                        {
                          if (!hlp_isFeatureRequired(a3, a4, 23, &v138) || (v92 = feat_pos(a5, a6, 0, "="), v26 = hlp_setFeature(a1, a3, a4, 23, a2, v92), (v26 & 0x80000000) == 0))
                          {
                            if (!hlp_isFeatureRequired(a3, a4, 22, &v138) || (v93 = feat_pos(a5, a6, -1, "="), v26 = hlp_setFeature(a1, a3, a4, 22, a2, v93), (v26 & 0x80000000) == 0))
                            {
                              if (!hlp_isFeatureRequired(a3, a4, 21, &v138) || (v94 = feat_pos(a5, a6, -2, "="), v26 = hlp_setFeature(a1, a3, a4, 21, a2, v94), (v26 & 0x80000000) == 0))
                              {
                                if (!hlp_isFeatureRequired(a3, a4, 20, &v138) || (v95 = feat_pos(a5, a6, -3, "="), v26 = hlp_setFeature(a1, a3, a4, 20, a2, v95), (v26 & 0x80000000) == 0))
                                {
                                  if (!hlp_isFeatureRequired(a3, a4, 24, &v138) || (v96 = feat_pos(a5, a6, 1, "="), v26 = hlp_setFeature(a1, a3, a4, 24, a2, v96), (v26 & 0x80000000) == 0))
                                  {
                                    if (!hlp_isFeatureRequired(a3, a4, 25, &v138) || (v97 = feat_pos(a5, a6, 2, "="), v26 = hlp_setFeature(a1, a3, a4, 25, a2, v97), (v26 & 0x80000000) == 0))
                                    {
                                      if (!hlp_isFeatureRequired(a3, a4, 26, &v138) || (v98 = feat_pos(a5, a6, 3, "="), v26 = hlp_setFeature(a1, a3, a4, 26, a2, v98), (v26 & 0x80000000) == 0))
                                      {
                                        if (!hlp_isFeatureRequired(a3, a4, 27, &v138) || (v99 = feat_mosyntpos(a5, a6, -1, "="), v26 = hlp_setFeature(a1, a3, a4, 27, a2, v99), (v26 & 0x80000000) == 0))
                                        {
                                          if (!hlp_isFeatureRequired(a3, a4, 28, &v138) || (v100 = feat_mosyntpos(a5, a6, 1, "="), v26 = hlp_setFeature(a1, a3, a4, 28, a2, v100), (v26 & 0x80000000) == 0))
                                          {
                                            if (!hlp_isFeatureRequired(a3, a4, 29, &v138) || (v101 = feat_matchprevpos(a5, a6, "n", "="), v26 = hlp_setFeature(a1, a3, a4, 29, a2, v101), (v26 & 0x80000000) == 0))
                                            {
                                              if (!hlp_isFeatureRequired(a3, a4, 30, &v138))
                                              {
                                                goto LABEL_259;
                                              }

                                              v102 = "=";
                                              while (1)
                                              {
                                                LOWORD(a6) = a6 + 1;
                                                if (a5[4] <= a6)
                                                {
                                                  break;
                                                }

                                                v103 = *a5 + (a6 << 6);
                                                if (!cstdlib_strcmp(*(v103 + 16), "n"))
                                                {
                                                  v102 = *(v103 + 40);
                                                  break;
                                                }
                                              }

                                              v26 = hlp_setFeature(a1, a3, a4, 30, a2, v102);
                                              a6 = v136;
                                              if ((v26 & 0x80000000) == 0)
                                              {
LABEL_259:
                                                if (!hlp_isFeatureRequired(a3, a4, 31, &v138) || (v104 = feat_matchprevpos(a5, a6, "v", "="), v26 = hlp_setFeature(a1, a3, a4, 31, a2, v104), (v26 & 0x80000000) == 0))
                                                {
                                                  if (!hlp_isFeatureRequired(a3, a4, 32, &v138))
                                                  {
                                                    goto LABEL_260;
                                                  }

                                                  v105 = "=";
                                                  while (1)
                                                  {
                                                    LOWORD(a6) = a6 + 1;
                                                    if (a5[4] <= a6)
                                                    {
                                                      break;
                                                    }

                                                    v106 = *a5 + (a6 << 6);
                                                    if (!cstdlib_strcmp(*(v106 + 16), "v"))
                                                    {
                                                      v105 = *(v106 + 40);
                                                      break;
                                                    }
                                                  }

                                                  v26 = hlp_setFeature(a1, a3, a4, 32, a2, v105);
                                                  a6 = v136;
                                                  if ((v26 & 0x80000000) == 0)
                                                  {
LABEL_260:
                                                    if (!hlp_isFeatureRequired(a3, a4, 33, &v138))
                                                    {
                                                      goto LABEL_261;
                                                    }

                                                    v107 = a6;
                                                    v108 = a2;
                                                    *v23 = 0;
                                                    v109 = 0xFFFF;
                                                    do
                                                    {
                                                      v110 = cstdlib_strlen(v23);
                                                      v111 = v109;
                                                      feat_wordlen(a5, v107, v109++, "=", &v23[v110]);
                                                    }

                                                    while (v111 < 1);
                                                    a2 = v108;
                                                    v26 = hlp_setFeature(a1, a3, a4, 33, v108, v23);
                                                    a6 = v107;
                                                    if ((v26 & 0x80000000) == 0)
                                                    {
LABEL_261:
                                                      if (!hlp_isFeatureRequired(a3, a4, 34, &v138))
                                                      {
                                                        goto LABEL_262;
                                                      }

                                                      *v23 = 0;
                                                      v112 = v135;
                                                      if (a9)
                                                      {
                                                        v113 = 0;
                                                        for (i = a9 - 1; ; --i)
                                                        {
                                                          v115 = a2;
                                                          if (v113)
                                                          {
                                                            cstdlib_strcat(v23, " ");
                                                          }

                                                          v116 = cstdlib_strlen(v23);
                                                          v117 = feat_colloc(a5, v136, *v112);
                                                          v118 = &v23[v116];
                                                          *v118 = v117;
                                                          v118[1] = 0;
                                                          a2 = v115;
                                                          if (!i)
                                                          {
                                                            break;
                                                          }

                                                          v113 = *v23;
                                                          ++v112;
                                                        }
                                                      }

                                                      v26 = hlp_setFeature(a1, a3, a4, 34, a2, v23);
                                                      a6 = v136;
                                                      if ((v26 & 0x80000000) == 0)
                                                      {
LABEL_262:
                                                        if (!hlp_isFeatureRequired(a3, a4, 35, &v138) || (v137 + 1 < 2 ? (v121 = a6 == 0) : (v121 = 0), !v121 ? (v122 = "SI") : (v122 = "SB"), v26 = hlp_setFeature(a1, a3, a4, 35, a2, v122), (v26 & 0x80000000) == 0))
                                                        {
                                                          if (!hlp_isFeatureRequired(a3, a4, 38, &v138) || (feat_wordbeg(a5, a6, 0, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 38, a2, v23), (v26 & 0x80000000) == 0))
                                                          {
                                                            if (!hlp_isFeatureRequired(a3, a4, 43, &v138) || (feat_wordend(a5, a6, 0, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 43, a2, v23), (v26 & 0x80000000) == 0))
                                                            {
                                                              if (!hlp_isFeatureRequired(a3, a4, 37, &v138) || (feat_wordbeg(a5, a6, -1, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 37, a2, v23), (v26 & 0x80000000) == 0))
                                                              {
                                                                if (!hlp_isFeatureRequired(a3, a4, 42, &v138) || (feat_wordend(a5, a6, -1, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 42, a2, v23), (v26 & 0x80000000) == 0))
                                                                {
                                                                  if (!hlp_isFeatureRequired(a3, a4, 39, &v138) || (feat_wordbeg(a5, a6, 1, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 39, a2, v23), (v26 & 0x80000000) == 0))
                                                                  {
                                                                    if (!hlp_isFeatureRequired(a3, a4, 44, &v138) || (feat_wordend(a5, a6, 1, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 44, a2, v23), (v26 & 0x80000000) == 0))
                                                                    {
                                                                      if (!hlp_isFeatureRequired(a3, a4, 36, &v138) || (feat_wordbeg(a5, a6, -2, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 36, a2, v23), (v26 & 0x80000000) == 0))
                                                                      {
                                                                        if (!hlp_isFeatureRequired(a3, a4, 41, &v138) || (feat_wordend(a5, a6, -2, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 41, a2, v23), (v26 & 0x80000000) == 0))
                                                                        {
                                                                          if (!hlp_isFeatureRequired(a3, a4, 40, &v138) || (feat_wordbeg(a5, a6, 2, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 40, a2, v23), (v26 & 0x80000000) == 0))
                                                                          {
                                                                            if (!hlp_isFeatureRequired(a3, a4, 45, &v138) || (feat_wordend(a5, a6, 2, "=", v23), v26 = hlp_setFeature(a1, a3, a4, 45, a2, v23), (v26 & 0x80000000) == 0))
                                                                            {
                                                                              if (!hlp_isFeatureRequired(a3, a4, 46, &v138) || (v26 = hlp_setFeature(a1, a3, a4, 46, a2, "="), (v26 & 0x80000000) == 0))
                                                                              {
                                                                                if (!hlp_isFeatureRequired(a3, a4, 47, &v138) || (v26 = hlp_setFeature(a1, a3, a4, 47, a2, "="), (v26 & 0x80000000) == 0))
                                                                                {
                                                                                  if (!hlp_isFeatureRequired(a3, a4, 48, &v138) || (v26 = hlp_setFeature(a1, a3, a4, 48, a2, "="), (v26 & 0x80000000) == 0))
                                                                                  {
                                                                                    if (!hlp_isFeatureRequired(a3, a4, 49, &v138) || ((v123 = *(a10 + 8)) == 0 || v136 - 2 >= *(a10 + 16) ? (v124 = "=") : (v124 = (v123 + 40 * (v136 - 2) + 30)), v26 = hlp_setFeature(a1, a3, a4, 49, a2, v124), (v26 & 0x80000000) == 0))
                                                                                    {
                                                                                      if (!hlp_isFeatureRequired(a3, a4, 50, &v138) || ((v125 = *(a10 + 8)) == 0 || v136 - 1 >= *(a10 + 16) ? (v126 = "=") : (v126 = (v125 + 40 * (v136 - 1) + 30)), v26 = hlp_setFeature(a1, a3, a4, 50, a2, v126), (v26 & 0x80000000) == 0))
                                                                                      {
                                                                                        if (!hlp_isFeatureRequired(a3, a4, 51, &v138) || ((v127 = *(a10 + 8)) == 0 || *(a10 + 16) <= v136 ? (v128 = "=") : (v128 = (v127 + 40 * v136 + 30)), v26 = hlp_setFeature(a1, a3, a4, 51, a2, v128), (v26 & 0x80000000) == 0))
                                                                                        {
                                                                                          if (!hlp_isFeatureRequired(a3, a4, 52, &v138) || ((v129 = *(a10 + 8)) == 0 || v136 + 1 >= *(a10 + 16) ? (v130 = "=") : (v130 = (v129 + 40 * (v136 + 1) + 30)), v26 = hlp_setFeature(a1, a3, a4, 52, a2, v130), (v26 & 0x80000000) == 0))
                                                                                          {
                                                                                            if (hlp_isFeatureRequired(a3, a4, 53, &v138))
                                                                                            {
                                                                                              v131 = *(a10 + 8);
                                                                                              if (v131 && v136 + 2 < *(a10 + 16))
                                                                                              {
                                                                                                v132 = (v131 + 40 * (v136 + 2) + 30);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v132 = "=";
                                                                                              }

                                                                                              v31 = hlp_setFeature(a1, a3, a4, 53, a2, v132);
LABEL_254:
                                                                                              v26 = v31;
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v24 = 0;
      v25 = (a4 - 1);
      while (cstdlib_strcmp(*(a3 + 8 * v24), "char0"))
      {
        if (v25 == ++v24)
        {
          v26 = 0;
LABEL_42:
          v43 = 0;
          if (v25 <= 1)
          {
            v44 = 1;
          }

          else
          {
            v44 = (a4 - 1);
          }

          while (cstdlib_strcmp(*(a3 + 8 * v43), "lchar"))
          {
            if (v44 == ++v43)
            {
              goto LABEL_58;
            }
          }

          v138 = v43;
          v45 = "=";
          v46 = a1;
          if (v137 == -1)
          {
            v48 = a3;
            v49 = a4;
            v47 = a2;
          }

          else
          {
            v31 = feat_character(a1, a5, v136, v137, -1, "=", v23);
            if ((v31 & 0x80000000) != 0)
            {
              goto LABEL_254;
            }

            v47 = a2;
            v46 = a1;
            v48 = a3;
            v49 = a4;
            v45 = v23;
          }

          v26 = hlp_setFeature(v46, v48, v49, 3, v47, v45);
          if ((v26 & 0x80000000) == 0)
          {
LABEL_58:
            v52 = 0;
            while (cstdlib_strcmp(*(a3 + 8 * v52), "llchar"))
            {
              if (v44 == ++v52)
              {
                goto LABEL_67;
              }
            }

            v138 = v52;
            v53 = "=";
            v54 = a1;
            if (v137 == -1)
            {
              v56 = a3;
              v57 = a4;
              v55 = a2;
            }

            else
            {
              v31 = feat_character(a1, a5, v136, v137, -2, "=", v23);
              if ((v31 & 0x80000000) != 0)
              {
                goto LABEL_254;
              }

              v55 = a2;
              v54 = a1;
              v56 = a3;
              v57 = a4;
              v53 = v23;
            }

            v26 = hlp_setFeature(v54, v56, v57, 2, v55, v53);
            if ((v26 & 0x80000000) == 0)
            {
LABEL_67:
              v58 = 0;
              while (cstdlib_strcmp(*(a3 + 8 * v58), "l3char"))
              {
                if (v44 == ++v58)
                {
                  goto LABEL_81;
                }
              }

              v138 = v58;
              v59 = "=";
              v60 = a1;
              if (v137 == -1)
              {
                v62 = a3;
                v63 = a4;
                v61 = a2;
              }

              else
              {
                v31 = feat_character(a1, a5, v136, v137, -3, "=", v23);
                if ((v31 & 0x80000000) != 0)
                {
                  goto LABEL_254;
                }

                v61 = a2;
                v60 = a1;
                v62 = a3;
                v63 = a4;
                v59 = v23;
              }

              v26 = hlp_setFeature(v60, v62, v63, 1, v61, v59);
              if ((v26 & 0x80000000) == 0)
              {
LABEL_81:
                v66 = 0;
                while (cstdlib_strcmp(*(a3 + 8 * v66), "rchar"))
                {
                  if (v44 == ++v66)
                  {
                    goto LABEL_95;
                  }
                }

                v138 = v66;
                v67 = "=";
                v68 = a1;
                if (v137 == -1)
                {
                  v70 = a3;
                  v71 = a4;
                  v69 = a2;
                }

                else
                {
                  v31 = feat_character(a1, a5, v136, v137, 1, "=", v23);
                  if ((v31 & 0x80000000) != 0)
                  {
                    goto LABEL_254;
                  }

                  v69 = a2;
                  v68 = a1;
                  v70 = a3;
                  v71 = a4;
                  v67 = v23;
                }

                v26 = hlp_setFeature(v68, v70, v71, 4, v69, v67);
                if ((v26 & 0x80000000) == 0)
                {
LABEL_95:
                  v74 = 0;
                  while (cstdlib_strcmp(*(a3 + 8 * v74), "rrchar"))
                  {
                    if (v44 == ++v74)
                    {
                      goto LABEL_109;
                    }
                  }

                  v138 = v74;
                  v75 = "=";
                  v76 = a1;
                  if (v137 == -1)
                  {
                    v78 = a3;
                    v79 = a4;
                    v77 = a2;
                  }

                  else
                  {
                    v31 = feat_character(a1, a5, v136, v137, 2, "=", v23);
                    if ((v31 & 0x80000000) != 0)
                    {
                      goto LABEL_254;
                    }

                    v77 = a2;
                    v76 = a1;
                    v78 = a3;
                    v79 = a4;
                    v75 = v23;
                  }

                  v26 = hlp_setFeature(v76, v78, v79, 5, v77, v75);
                  if ((v26 & 0x80000000) == 0)
                  {
LABEL_109:
                    v82 = 0;
                    while (cstdlib_strcmp(*(a3 + 8 * v82), "r3char"))
                    {
                      if (v44 == ++v82)
                      {
                        goto LABEL_123;
                      }
                    }

                    v138 = v82;
                    v83 = "=";
                    v84 = a1;
                    if (v137 == -1)
                    {
                      v86 = a3;
                      v87 = a4;
                      v85 = a2;
                    }

                    else
                    {
                      v31 = feat_character(a1, a5, v136, v137, 3, "=", v23);
                      if ((v31 & 0x80000000) != 0)
                      {
                        goto LABEL_254;
                      }

                      v85 = a2;
                      v84 = a1;
                      v86 = a3;
                      v87 = a4;
                      v83 = v23;
                    }

                    v26 = hlp_setFeature(v84, v86, v87, 6, v85, v83);
                    if ((v26 & 0x80000000) != 0)
                    {
                      goto LABEL_255;
                    }

LABEL_123:
                    v90 = 0;
                    while (cstdlib_strcmp(*(a3 + 8 * v90), "word"))
                    {
                      if (v44 == ++v90)
                      {
                        goto LABEL_178;
                      }
                    }

                    v138 = v90;
                    if (a5[4] <= v136)
                    {
                      v91 = "=";
                    }

                    else
                    {
                      v91 = *(*a5 + (v136 << 6) + 40);
                    }

                    v26 = hlp_setFeature(a1, a3, a4, 12, a2, v91);
                    if ((v26 & 0x80000000) != 0)
                    {
                      goto LABEL_255;
                    }

LABEL_178:
                    v119 = 0;
                    while (cstdlib_strcmp(*(a3 + 8 * v119), "wordnocase"))
                    {
                      if (v44 == ++v119)
                      {
                        goto LABEL_183;
                      }
                    }

                    v138 = v119;
                    feat_wordlc(a5, v136, 0, "=", v23);
                    v26 = hlp_setFeature(a1, a3, a4, 13, a2, v23);
                    if ((v26 & 0x80000000) != 0)
                    {
                      goto LABEL_255;
                    }

LABEL_183:
                    v120 = 0;
                    while (cstdlib_strcmp(*(a3 + 8 * v120), "wordlen"))
                    {
                      if (v44 == ++v120)
                      {
                        a6 = v136;
                        goto LABEL_9;
                      }
                    }

                    v138 = v120;
                    a6 = v136;
                    feat_wordlen(a5, v136, 0, "=", v23);
                    v26 = hlp_setFeature(a1, a3, a4, 14, a2, v23);
                    if ((v26 & 0x80000000) == 0)
                    {
                      goto LABEL_9;
                    }

                    goto LABEL_255;
                  }

                  goto LABEL_255;
                }

                goto LABEL_255;
              }

              goto LABEL_255;
            }

            goto LABEL_255;
          }

          goto LABEL_255;
        }
      }

      v138 = v24;
      v29 = "=";
      v30 = a1;
      if (v137 == -1)
      {
        v32 = a3;
        v33 = a4;
        v34 = a2;
      }

      else
      {
        v31 = feat_character(a1, a5, v136, v137, 0, "=", v23);
        if ((v31 & 0x80000000) != 0)
        {
          goto LABEL_254;
        }

        v30 = a1;
        v32 = a3;
        v33 = a4;
        v34 = a2;
        v29 = v23;
      }

      v26 = hlp_setFeature(v30, v32, v33, 0, v34, v29);
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_255:
    heap_Free(*(a1 + 8), v23);
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0, v19, v20, v21, v22, v134);
    return 2314215434;
  }

  return v26;
}