uint64_t AddFieldToContext(uint64_t result, int a2, const char *a3, uint64_t *a4, unsigned int a5)
{
  v7 = result;
  v18 = *MEMORY[0x277D85DE8];
  v8 = *a4;
  if (a2 > 44)
  {
    if (a2 <= 50)
    {
      if (a2 > 48)
      {
        if (a2 == 49)
        {
          *(result + 56) = v8;
          if (!a5)
          {
            goto LABEL_65;
          }
        }

        else
        {
          *(result + 52) = v8;
          if (!a5)
          {
            goto LABEL_65;
          }
        }

        goto LABEL_59;
      }

      if (a2 == 45)
      {
        *(result + 176) = v8;
        if (!a5)
        {
          goto LABEL_65;
        }

        goto LABEL_59;
      }

      if (a2 == 48)
      {
        *(result + 80) = v8;
        if (!a5)
        {
          goto LABEL_65;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (a2 <= 52)
      {
        if (a2 == 51)
        {
          *(result + 48) = v8;
          if (!a5)
          {
            goto LABEL_65;
          }
        }

        else
        {
          *(result + 44) = v8;
          if (!a5)
          {
            goto LABEL_65;
          }
        }

        goto LABEL_59;
      }

      switch(a2)
      {
        case 53:
          *(result + 32) = v8;
          if (!a5)
          {
            goto LABEL_65;
          }

          goto LABEL_59;
        case 56:
          *(result + 160) = v8;
          if (!a5)
          {
            goto LABEL_65;
          }

          goto LABEL_59;
        case 265:
          if (!a5)
          {
            goto LABEL_65;
          }

          v9 = (result + 184);
          v10 = a5;
          v11 = a4;
          do
          {
            v12 = *v11++;
            *v9++ = v12;
            --v10;
          }

          while (v10);
          break;
      }
    }

    goto LABEL_58;
  }

  if (a2 <= 16)
  {
    if (a2 > 11)
    {
      if (a2 == 12)
      {
        *(result + 144) = v8;
        if (!a5)
        {
          goto LABEL_65;
        }

        goto LABEL_59;
      }

      if (a2 == 13)
      {
        *(result + 152) = v8;
        if (!a5)
        {
          goto LABEL_65;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (a2 == 4)
      {
        *(result + 72) = v8;
        if (!a5)
        {
          goto LABEL_65;
        }

        goto LABEL_59;
      }

      if (a2 == 7)
      {
        *(result + 64) = v8;
        if (!a5)
        {
          goto LABEL_65;
        }

        goto LABEL_59;
      }
    }

    goto LABEL_58;
  }

  if (a2 <= 18)
  {
    if (a2 != 17)
    {
      *(result + 104) = v8;
      if (!a5)
      {
        goto LABEL_65;
      }

      goto LABEL_59;
    }

    *(result + 88) = v8;
    goto LABEL_58;
  }

  if (a2 == 19)
  {
    *(result + 96) = v8;
    if (!a5)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

  if (a2 == 20)
  {
    *(result + 112) = v8;
    if (!a5)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

  if (a2 != 28)
  {
LABEL_58:
    if (a5)
    {
      goto LABEL_59;
    }

LABEL_65:
    v16 = *MEMORY[0x277D85DE8];
    return result;
  }

  *(result + 168) = v8;
  if (!a5)
  {
    goto LABEL_65;
  }

LABEL_59:
  if (a5 != 1)
  {
    v14 = 0;
    v15 = a5;
    do
    {
      snprintf(__str, 0x64uLL, "%d", v14);
      __str[100] = 0;
      result = AddSingleValue(v7, a3, __str, a4[v14++]);
    }

    while (v15 != v14);
    goto LABEL_65;
  }

  v13 = *MEMORY[0x277D85DE8];

  return AddSingleValue(result, "", a3, v8);
}

double ASPReleaseContext(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = v2[14];
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    do
    {
      v5 = v4[14];
      free(v4);
      v4 = v5;
    }

    while (v5);
  }

  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t ASPFTLParseBufferToCxt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v11 = a3 >> 3;
  *__str = 0u;
  v25 = 0u;
  do
  {
LABEL_2:
    if (!v11)
    {
      goto LABEL_2994;
    }

    v13 = *v8++;
    v12 = v13;
    --v11;
    v14 = HIDWORD(v13);
  }

  while (!HIDWORD(v13));
  if (v12 == 0xFFFF || v12 > 0x30000000 || v11 < v14)
  {
    goto LABEL_2994;
  }

  switch(v12)
  {
    case 1:
      if (AddSingleValueToGenericContext(a1, "", "version", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: version(1) cannot add 1 element to context";
      goto LABEL_161;
    case 2:
      if (AddSingleValueToGenericContext(a1, "", "hostWriteXacts", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: hostWriteXacts(2) cannot add 1 element to context";
      goto LABEL_161;
    case 3:
      if (AddSingleValueToGenericContext(a1, "", "hostReadXacts", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: hostReadXacts(3) cannot add 1 element to context";
      goto LABEL_161;
    case 4:
      if (AddSingleValueToGenericContext(a1, "", "hostWrites", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: hostWrites(4) cannot add 1 element to context";
      goto LABEL_161;
    case 5:
      if (AddSingleValueToGenericContext(a1, "", "hostWritesDyn", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: hostWritesDyn(5) cannot add 1 element to context";
      goto LABEL_161;
    case 6:
      if (AddSingleValueToGenericContext(a1, "", "hostWritesStatic", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: hostWritesStatic(6) cannot add 1 element to context";
      goto LABEL_161;
    case 7:
      if (AddSingleValueToGenericContext(a1, "", "hostReads", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: hostReads(7) cannot add 1 element to context";
      goto LABEL_161;
    case 8:
      if (AddSingleValueToGenericContext(a1, "", "validLbas", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: validLbas(8) cannot add 1 element to context";
      goto LABEL_161;
    case 9:
      if (AddSingleValueToGenericContext(a1, "", "shutdowns", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: shutdowns(9) cannot add 1 element to context";
      goto LABEL_161;
    case 10:
      if (AddSingleValueToGenericContext(a1, "", "boots", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: boots(10) cannot add 1 element to context";
      goto LABEL_161;
    case 11:
      if (AddSingleValueToGenericContext(a1, "", "uncleanBoots", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: uncleanBoots(11) cannot add 1 element to context";
      goto LABEL_161;
    case 12:
      if (AddSingleValueToGenericContext(a1, "", "IND_pool_free", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: IND_pool_free(12) cannot add 1 element to context";
      goto LABEL_161;
    case 13:
      if (AddSingleValueToGenericContext(a1, "", "IND_pool_count", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: IND_pool_count(13) cannot add 1 element to context";
      goto LABEL_161;
    case 14:
      if (v14 != 10)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWriteLogHisto(14): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
      }

      if (v14 >= 0xB)
      {
        v18 = 10;
      }

      else
      {
        v18 = v14;
      }

      if (AddMultipleFieldsToGenericContext(a1, "hostWriteLogHisto_", v8, 8u, v18))
      {
        goto LABEL_110;
      }

      v19 = "ASPFTLParseBufferToCxt: hostWriteLogHisto(14): Cannot add 10 elements to context";
      goto LABEL_2993;
    case 15:
      if (v14 != 10)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostReadLogHisto(15): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
      }

      if (v14 >= 0xB)
      {
        v18 = 10;
      }

      else
      {
        v18 = v14;
      }

      if (AddMultipleFieldsToGenericContext(a1, "hostReadLogHisto_", v8, 8u, v18))
      {
        goto LABEL_110;
      }

      v19 = "ASPFTLParseBufferToCxt: hostReadLogHisto(15): Cannot add 10 elements to context";
      goto LABEL_2993;
    case 16:
      if (AddSingleValueToGenericContext(a1, "", "gcWrites", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: gcWrites(16) cannot add 1 element to context";
      goto LABEL_161;
    case 17:
      if (AddSingleValueToGenericContext(a1, "", "wearLevMoves", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: wearLevMoves(17) cannot add 1 element to context";
      goto LABEL_161;
    case 18:
      if (AddSingleValueToGenericContext(a1, "", "nandWrites", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: nandWrites(18) cannot add 1 element to context";
      goto LABEL_161;
    case 19:
      if (AddSingleValueToGenericContext(a1, "", "nandReads", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: nandReads(19) cannot add 1 element to context";
      goto LABEL_161;
    case 20:
      if (AddSingleValueToGenericContext(a1, "", "bandErases", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: bandErases(20) cannot add 1 element to context";
      goto LABEL_161;
    case 22:
      if (AddSingleValueToGenericContext(a1, "", "numPfail", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: numPfail(22) cannot add 1 element to context";
      goto LABEL_161;
    case 23:
      if (AddSingleValueToGenericContext(a1, "", "numEfail", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: numEfail(23) cannot add 1 element to context";
      goto LABEL_161;
    case 24:
      if (AddSingleValueToGenericContext(a1, "", "numPerformanceRefreshes", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: numPerformanceRefreshes(24) cannot add 1 element to context";
      goto LABEL_161;
    case 27:
      if (AddSingleValueToGenericContext(a1, "", "hostWritesMeta", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: hostWritesMeta(27) cannot add 1 element to context";
      goto LABEL_161;
    case 28:
      if (AddSingleValueToGenericContext(a1, "", "numSleepOps", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: numSleepOps(28) cannot add 1 element to context";
      goto LABEL_161;
    case 30:
      if (AddSingleValueToGenericContext(a1, "", "cntTimeWentBackWardOnBoot", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cntTimeWentBackWardOnBoot(30) cannot add 1 element to context";
      goto LABEL_161;
    case 31:
      if (AddSingleValueToGenericContext(a1, "", "cntTimeWentBackWard", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cntTimeWentBackWard(31) cannot add 1 element to context";
      goto LABEL_161;
    case 34:
      if (AddSingleValueToGenericContext(a1, "", "powerOnHours", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: powerOnHours(34) cannot add 1 element to context";
      goto LABEL_161;
    case 36:
      if (AddSingleValueToGenericContext(a1, "", "smartCritWarnings", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: smartCritWarnings(36) cannot add 1 element to context";
      goto LABEL_161;
    case 37:
      if (AddSingleValueToGenericContext(a1, "", "numFlushes", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: numFlushes(37) cannot add 1 element to context";
      goto LABEL_161;
    case 38:
      if (AddSingleValueToGenericContext(a1, "", "numUnmap", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: numUnmap(38) cannot add 1 element to context";
      goto LABEL_161;
    case 39:
      if (AddSingleValueToGenericContext(a1, "", "numUnmapSec", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: numUnmapSec(39) cannot add 1 element to context";
      goto LABEL_161;
    case 41:
      if (AddSingleValueToGenericContext(a1, "", "clogProgram", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: clogProgram(41) cannot add 1 element to context";
      goto LABEL_161;
    case 42:
      if (AddSingleValueToGenericContext(a1, "", "clogPFail", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: clogPFail(42) cannot add 1 element to context";
      goto LABEL_161;
    case 43:
      if (AddSingleValueToGenericContext(a1, "", "clogRead", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: clogRead(43) cannot add 1 element to context";
      goto LABEL_161;
    case 44:
      if (AddSingleValueToGenericContext(a1, "", "clogRFail", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: clogRFail(44) cannot add 1 element to context";
      goto LABEL_161;
    case 45:
      if (AddSingleValueToGenericContext(a1, "", "maxHighEnduranceBlockErases", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: maxHighEnduranceBlockErases(45) cannot add 1 element to context";
      goto LABEL_161;
    case 46:
      if (AddSingleValueToGenericContext(a1, "", "numFactoryBad", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: numFactoryBad(46) cannot add 1 element to context";
      goto LABEL_161;
    case 47:
      if (AddSingleValueToGenericContext(a1, "", "numGrownBad", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: numGrownBad(47) cannot add 1 element to context";
      goto LABEL_161;
    case 48:
      if (AddSingleValueToGenericContext(a1, "", "numFreeVirtualBlocks", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: numFreeVirtualBlocks(48) cannot add 1 element to context";
      goto LABEL_161;
    case 49:
      if (AddSingleValueToGenericContext(a1, "", "bytesPerPage", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: bytesPerPage(49) cannot add 1 element to context";
      goto LABEL_161;
    case 50:
      if (AddSingleValueToGenericContext(a1, "", "pagesPerVirtualBlock", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: pagesPerVirtualBlock(50) cannot add 1 element to context";
      goto LABEL_161;
    case 51:
      if (AddSingleValueToGenericContext(a1, "", "blocksPerVirtualBlock", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: blocksPerVirtualBlock(51) cannot add 1 element to context";
      goto LABEL_161;
    case 52:
      if (AddSingleValueToGenericContext(a1, "", "numVirtualBlocks", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: numVirtualBlocks(52) cannot add 1 element to context";
      goto LABEL_161;
    case 53:
      if (AddSingleValueToGenericContext(a1, "", "exportVersion", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: exportVersion(53) cannot add 1 element to context";
      goto LABEL_161;
    case 54:
      if (v14 != 100)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: ECBins(54): (#100) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
      }

      if (v14 >= 0x65)
      {
        v18 = 100;
      }

      else
      {
        v18 = v14;
      }

      if (AddMultipleFieldsToGenericContext(a1, "ECBins_", v8, 8u, v18))
      {
        goto LABEL_110;
      }

      v19 = "ASPFTLParseBufferToCxt: ECBins(54): Cannot add 100 elements to context";
      goto LABEL_2993;
    case 55:
      if (v14 != 100)
      {
        SetAPIErrorMessage("ASPFTLParseBufferToCxt: RCBins(55): (#100) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
      }

      if (v14 >= 0x65)
      {
        v18 = 100;
      }

      else
      {
        v18 = v14;
      }

      if (AddMultipleFieldsToGenericContext(a1, "RCBins_", v8, 8u, v18))
      {
        goto LABEL_110;
      }

      v19 = "ASPFTLParseBufferToCxt: RCBins(55): Cannot add 100 elements to context";
      goto LABEL_2993;
    case 56:
      if (AddSingleValueToGenericContext(a1, "", "utilFormatTime", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: utilFormatTime(56) cannot add 1 element to context";
      goto LABEL_161;
    case 57:
      if (AddSingleValueToGenericContext(a1, "", "calendarTime", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: calendarTime(57) cannot add 1 element to context";
      goto LABEL_161;
    case 58:
      if (AddSingleValueToGenericContext(a1, "", "wallTime", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: wallTime(58) cannot add 1 element to context";
      goto LABEL_161;
    case 59:
      if (AddSingleValueToGenericContext(a1, "", "cmdq_flush_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmdq_flush_us(59) cannot add 1 element to context";
      goto LABEL_161;
    case 60:
      if (AddSingleValueToGenericContext(a1, "", "cmdq_unmap_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmdq_unmap_us(60) cannot add 1 element to context";
      goto LABEL_161;
    case 61:
      if (AddSingleValueToGenericContext(a1, "", "cmdq_pri0_r_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmdq_pri0_r_us(61) cannot add 1 element to context";
      goto LABEL_161;
    case 62:
      if (AddSingleValueToGenericContext(a1, "", "cmdq_pri0_w_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmdq_pri0_w_us(62) cannot add 1 element to context";
      goto LABEL_161;
    case 63:
      if (AddSingleValueToGenericContext(a1, "", "cmdq_pri1_r_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmdq_pri1_r_us(63) cannot add 1 element to context";
      goto LABEL_161;
    case 64:
      if (AddSingleValueToGenericContext(a1, "", "cmdq_pri1_w_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmdq_pri1_w_us(64) cannot add 1 element to context";
      goto LABEL_161;
    case 65:
      if (AddSingleValueToGenericContext(a1, "", "cmdq_pri2_r_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmdq_pri2_r_us(65) cannot add 1 element to context";
      goto LABEL_161;
    case 66:
      if (AddSingleValueToGenericContext(a1, "", "cmdq_pri2_w_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmdq_pri2_w_us(66) cannot add 1 element to context";
      goto LABEL_161;
    case 67:
      if (AddSingleValueToGenericContext(a1, "", "cmdq_pri3_r_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmdq_pri3_r_us(67) cannot add 1 element to context";
      goto LABEL_161;
    case 68:
      if (AddSingleValueToGenericContext(a1, "", "cmdq_pri3_w_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmdq_pri3_w_us(68) cannot add 1 element to context";
      goto LABEL_161;
    case 69:
      if (AddSingleValueToGenericContext(a1, "", "host_idle_ms", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: host_idle_ms(69) cannot add 1 element to context";
      goto LABEL_161;
    case 70:
      if (AddSingleValueToGenericContext(a1, "", "cmd_hysteresis_window_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmd_hysteresis_window_us(70) cannot add 1 element to context";
      goto LABEL_161;
    case 71:
      if (AddSingleValueToGenericContext(a1, "", "cmd_lowPriHoldoffDelay_us", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmd_lowPriHoldoffDelay_us(71) cannot add 1 element to context";
      goto LABEL_161;
    case 72:
      if (AddSingleValueToGenericContext(a1, "", "cmd_lowPriHoldoffEnabled", *v8))
      {
        goto LABEL_162;
      }

      v17 = "ASPFTLParseBufferToCxt: cmd_lowPriHoldoffEnabled(72) cannot add 1 element to context";
      goto LABEL_161;
    default:
      switch(v12)
      {
        case 73:
          if (AddSingleValueToGenericContext(a1, "", "cmd_expedite_num_success", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: cmd_expedite_num_success(73) cannot add 1 element to context";
          goto LABEL_161;
        case 75:
          if (AddSingleValueToGenericContext(a1, "", "cmd_expedite_num_failures", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: cmd_expedite_num_failures(75) cannot add 1 element to context";
          goto LABEL_161;
        case 76:
          if (AddSingleValueToGenericContext(a1, "", "num_trimerase", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: num_trimerase(76) cannot add 1 element to context";
          goto LABEL_161;
        case 77:
          if (AddSingleValueToGenericContext(a1, "", "staticSizeInMB", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: staticSizeInMB(77) cannot add 1 element to context";
          goto LABEL_161;
        case 80:
          if (AddSingleValueToGenericContext(a1, "", "slcInvalidations", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: slcInvalidations(80) cannot add 1 element to context";
          goto LABEL_161;
        case 81:
          if (AddSingleValueToGenericContext(a1, "", "slcGCInvalidations", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: slcGCInvalidations(81) cannot add 1 element to context";
          goto LABEL_161;
        case 82:
          if (AddSingleValueToGenericContext(a1, "", "hostSectorsDuringGCon", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: hostSectorsDuringGCon(82) cannot add 1 element to context";
          goto LABEL_161;
        case 83:
          if (AddSingleValueToGenericContext(a1, "", "highWaterMarkSLCUsed", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: highWaterMarkSLCUsed(83) cannot add 1 element to context";
          goto LABEL_161;
        case 84:
          if (AddSingleValueToGenericContext(a1, "", "intermediateBandErases", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: intermediateBandErases(84) cannot add 1 element to context";
          goto LABEL_161;
        case 85:
          if (AddSingleValueToGenericContext(a1, "", "intermediatePartitionStart", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: intermediatePartitionStart(85) cannot add 1 element to context";
          goto LABEL_161;
        case 86:
          if (AddSingleValueToGenericContext(a1, "", "userPartitionStart", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: userPartitionStart(86) cannot add 1 element to context";
          goto LABEL_161;
        case 87:
          if (AddSingleValueToGenericContext(a1, "", "iolog_lbas", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: iolog_lbas(87) cannot add 1 element to context";
          goto LABEL_161;
        case 88:
          if (v14 != 10)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBins(88): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 0xB)
          {
            v18 = 10;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bandsAgeBins_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: bandsAgeBins(88): Cannot add 10 elements to context";
          goto LABEL_2993;
        case 89:
          if (v14 != 10)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: intermediateBandsAgeBins(89): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 0xB)
          {
            v18 = 10;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "intermediateBandsAgeBins_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: intermediateBandsAgeBins(89): Cannot add 10 elements to context";
          goto LABEL_2993;
        case 90:
          if (v14 != 160)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: qosPerCmdQ(90): (#160) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 0xA1)
          {
            v18 = 160;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "qosPerCmdQ_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: qosPerCmdQ(90): Cannot add 160 elements to context";
          goto LABEL_2993;
        case 91:
          if (v14 != 10)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxQosPerCmdQ(91): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 0xB)
          {
            v18 = 10;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "maxQosPerCmdQ_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: maxQosPerCmdQ(91): Cannot add 10 elements to context";
          goto LABEL_2993;
        case 92:
          if (AddSingleValueToGenericContext(a1, "", "shutdownDuringGC", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: shutdownDuringGC(92) cannot add 1 element to context";
          goto LABEL_161;
        case 93:
          if (v14 != 3)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBandsRefreshedForAgePerTier(93): (#3) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v12 >> 34)
          {
            v18 = 3;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "numBandsRefreshedForAgePerTier_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: numBandsRefreshedForAgePerTier(93): Cannot add 3 elements to context";
          goto LABEL_2993;
        case 94:
          if (v14 != 20)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrDeltaHot(94): (#20) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 0x15)
          {
            v18 = 20;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bdrDeltaHot_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: bdrDeltaHot(94): Cannot add 20 elements to context";
          goto LABEL_2993;
        case 95:
          if (AddSingleValueToGenericContext(a1, "", "numRefreshOnClockLoss", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: numRefreshOnClockLoss(95) cannot add 1 element to context";
          goto LABEL_161;
        case 96:
          if (AddSingleValueToGenericContext(a1, "", "numRefreshOnErrNandRefreshRel", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshRel(96) cannot add 1 element to context";
          goto LABEL_161;
        case 97:
          if (AddSingleValueToGenericContext(a1, "", "numBGRefreshMoves", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: numBGRefreshMoves(97) cannot add 1 element to context";
          goto LABEL_161;
        case 98:
          if (AddSingleValueToGenericContext(a1, "", "numBGPaddingMoves", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: numBGPaddingMoves(98) cannot add 1 element to context";
          goto LABEL_161;
        case 99:
          if (AddSingleValueToGenericContext(a1, "", "hostWritesPhoto", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: hostWritesPhoto(99) cannot add 1 element to context";
          goto LABEL_161;
        case 100:
          if (AddSingleValueToGenericContext(a1, "", "INDPooldFree", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: INDPooldFree(100) cannot add 1 element to context";
          goto LABEL_161;
        case 101:
          if (AddSingleValueToGenericContext(a1, "", "INDContigCount", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: INDContigCount(101) cannot add 1 element to context";
          goto LABEL_161;
        case 102:
          if (AddSingleValueToGenericContext(a1, "", "INDValidContigCount", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: INDValidContigCount(102) cannot add 1 element to context";
          goto LABEL_161;
        case 103:
          if (AddSingleValueToGenericContext(a1, "", "INDMinContigSize", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: INDMinContigSize(103) cannot add 1 element to context";
          goto LABEL_161;
        case 104:
          if (AddSingleValueToGenericContext(a1, "", "INDMaxContigSize", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: INDMaxContigSize(104) cannot add 1 element to context";
          goto LABEL_161;
        case 105:
          if (AddSingleValueToGenericContext(a1, "", "INDAveContigSize", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: INDAveContigSize(105) cannot add 1 element to context";
          goto LABEL_161;
        case 106:
          if (AddSingleValueToGenericContext(a1, "", "INDpoolSize", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: INDpoolSize(106) cannot add 1 element to context";
          goto LABEL_161;
        case 107:
          if (AddSingleValueToGenericContext(a1, "", "pushSyncWrites", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: pushSyncWrites(107) cannot add 1 element to context";
          goto LABEL_161;
        case 109:
          if (AddSingleValueToGenericContext(a1, "", "cmd_rw_hysteresis_us", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: cmd_rw_hysteresis_us(109) cannot add 1 element to context";
          goto LABEL_161;
        case 110:
          if (AddSingleValueToGenericContext(a1, "", "photoFlowMode", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: photoFlowMode(110) cannot add 1 element to context";
          goto LABEL_161;
        case 112:
          if (AddSingleValueToGenericContext(a1, "", "numBandsPaddedForAge", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: numBandsPaddedForAge(112) cannot add 1 element to context";
          goto LABEL_161;
        case 113:
          if (v14 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsPerHostFlow(113): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 5)
          {
            v18 = 4;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bandsPerHostFlow_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: bandsPerHostFlow(113): Cannot add 4 elements to context";
          goto LABEL_2993;
        case 114:
          if (v14 != 5)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsPerSpecialFlow(114): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v12 >> 33 >= 3)
          {
            v18 = 5;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bandsPerSpecialFlow_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: bandsPerSpecialFlow(114): Cannot add 5 elements to context";
          goto LABEL_2993;
        case 115:
          if (v14 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: secsPerHostFlow(115): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 5)
          {
            v18 = 4;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "secsPerHostFlow_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: secsPerHostFlow(115): Cannot add 4 elements to context";
          goto LABEL_2993;
        case 116:
          if (v14 != 5)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: secsPerSpecialFlow(116): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v12 >> 33 >= 3)
          {
            v18 = 5;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "secsPerSpecialFlow_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: secsPerSpecialFlow(116): Cannot add 5 elements to context";
          goto LABEL_2993;
        case 118:
          if (v14 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: overWritesPerHostFlow(118): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 5)
          {
            v18 = 4;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "overWritesPerHostFlow_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: overWritesPerHostFlow(118): Cannot add 4 elements to context";
          goto LABEL_2993;
        case 119:
          if (v14 != 5)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: overWritesPerSpecialFlow(119): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v12 >> 33 >= 3)
          {
            v18 = 5;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "overWritesPerSpecialFlow_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: overWritesPerSpecialFlow(119): Cannot add 5 elements to context";
          goto LABEL_2993;
        case 120:
          if (v14 != 10)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: padSectorsPerFlow(120): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 0xB)
          {
            v18 = 10;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "padSectorsPerFlow_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: padSectorsPerFlow(120): Cannot add 10 elements to context";
          goto LABEL_2993;
        case 121:
          if (v14 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: padSizes(121): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 5)
          {
            v18 = 4;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "padSizes_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: padSizes(121): Cannot add 4 elements to context";
          goto LABEL_2993;
        case 122:
          if (v14 != 4)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: unmapsPerHostFlow(122): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 5)
          {
            v18 = 4;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "unmapsPerHostFlow_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: unmapsPerHostFlow(122): Cannot add 4 elements to context";
          goto LABEL_2993;
        case 123:
          if (v14 != 5)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: unmapsPerSpecialFlow(123): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v12 >> 33 >= 3)
          {
            v18 = 5;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "unmapsPerSpecialFlow_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: unmapsPerSpecialFlow(123): Cannot add 5 elements to context";
          goto LABEL_2993;
        case 124:
          if (v14 != 2)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: coldestCycle(124): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 3)
          {
            v18 = 2;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "coldestCycle_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: coldestCycle(124): Cannot add 2 elements to context";
          goto LABEL_2993;
        case 125:
          if (v14 != 2)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: hottestCycle(125): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 3)
          {
            v18 = 2;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "hottestCycle_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: hottestCycle(125): Cannot add 2 elements to context";
          goto LABEL_2993;
        case 126:
          if (AddSingleValueToGenericContext(a1, "", "gcLonlyWrites", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: gcLonlyWrites(126) cannot add 1 element to context";
          goto LABEL_161;
        case 127:
          if (AddSingleValueToGenericContext(a1, "", "gcPLWrites", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: gcPLWrites(127) cannot add 1 element to context";
          goto LABEL_161;
        case 129:
          if (AddSingleValueToGenericContext(a1, "", "pagesPerVirtualBlockSlc", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: pagesPerVirtualBlockSlc(129) cannot add 1 element to context";
          goto LABEL_161;
        case 130:
          if (AddSingleValueToGenericContext(a1, "", "bdrPadding", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: bdrPadding(130) cannot add 1 element to context";
          goto LABEL_161;
        case 131:
          if (v14 != 8)
          {
            SetAPIErrorMessage("ASPFTLParseBufferToCxt: errInjCounters(131): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
          }

          if (v14 >= 9)
          {
            v18 = 8;
          }

          else
          {
            v18 = v14;
          }

          if (AddMultipleFieldsToGenericContext(a1, "errInjCounters_", v8, 8u, v18))
          {
            goto LABEL_110;
          }

          v19 = "ASPFTLParseBufferToCxt: errInjCounters(131): Cannot add 8 elements to context";
          goto LABEL_2993;
        case 132:
          if (AddSingleValueToGenericContext(a1, "", "raidSuccessfulReconstructionInternal", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: raidSuccessfulReconstructionInternal(132) cannot add 1 element to context";
          goto LABEL_161;
        case 133:
          if (AddSingleValueToGenericContext(a1, "", "raidSuccessfulReconstructionHost", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: raidSuccessfulReconstructionHost(133) cannot add 1 element to context";
          goto LABEL_161;
        case 134:
          if (AddSingleValueToGenericContext(a1, "", "raidFailedReconstructionInternal", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: raidFailedReconstructionInternal(134) cannot add 1 element to context";
          goto LABEL_161;
        case 135:
          if (AddSingleValueToGenericContext(a1, "", "raidFailedReconstructionHost", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: raidFailedReconstructionHost(135) cannot add 1 element to context";
          goto LABEL_161;
        case 136:
          if (AddSingleValueToGenericContext(a1, "", "raidBandsPerHostFlow", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: raidBandsPerHostFlow(136) cannot add 1 element to context";
          goto LABEL_161;
        case 137:
          if (AddSingleValueToGenericContext(a1, "", "raidSecsPerHostFlow", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: raidSecsPerHostFlow(137) cannot add 1 element to context";
          goto LABEL_161;
        case 138:
          if (AddSingleValueToGenericContext(a1, "", "gcFreeL", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: gcFreeL(138) cannot add 1 element to context";
          goto LABEL_161;
        case 139:
          if (AddSingleValueToGenericContext(a1, "", "gcDestinations", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: gcDestinations(139) cannot add 1 element to context";
          goto LABEL_161;
        case 140:
          if (AddSingleValueToGenericContext(a1, "", "gcFragments", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: gcFragments(140) cannot add 1 element to context";
          goto LABEL_161;
        case 141:
          if (AddSingleValueToGenericContext(a1, "", "numMemChoke", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: numMemChoke(141) cannot add 1 element to context";
          goto LABEL_161;
        case 142:
          if (AddSingleValueToGenericContext(a1, "", "maxMemChokeDuration", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: maxMemChokeDuration(142) cannot add 1 element to context";
          goto LABEL_161;
        case 143:
          if (AddSingleValueToGenericContext(a1, "", "memChokeDuration", *v8))
          {
            goto LABEL_162;
          }

          v17 = "ASPFTLParseBufferToCxt: memChokeDuration(143) cannot add 1 element to context";
          goto LABEL_161;
        default:
          switch(v12)
          {
            case 144:
              if (AddSingleValueToGenericContext(a1, "", "numMemExtreme", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: numMemExtreme(144) cannot add 1 element to context";
              goto LABEL_161;
            case 145:
              if (AddSingleValueToGenericContext(a1, "", "maxMemExtremeDuration", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: maxMemExtremeDuration(145) cannot add 1 element to context";
              goto LABEL_161;
            case 146:
              if (AddSingleValueToGenericContext(a1, "", "memExtremeDuration", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: memExtremeDuration(146) cannot add 1 element to context";
              goto LABEL_161;
            case 147:
              if (AddSingleValueToGenericContext(a1, "", "bandGetsExtreme", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: bandGetsExtreme(147) cannot add 1 element to context";
              goto LABEL_161;
            case 148:
              if (AddSingleValueToGenericContext(a1, "", "bandGetsLow", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: bandGetsLow(148) cannot add 1 element to context";
              goto LABEL_161;
            case 149:
              if (AddSingleValueToGenericContext(a1, "", "numHostChoke", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: numHostChoke(149) cannot add 1 element to context";
              goto LABEL_161;
            case 152:
              if (AddSingleValueToGenericContext(a1, "", "AbortSkip_ProgramError", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: AbortSkip_ProgramError(152) cannot add 1 element to context";
              goto LABEL_161;
            case 153:
              if (AddSingleValueToGenericContext(a1, "", "AbortSkip_ReadErrorOpenBand", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: AbortSkip_ReadErrorOpenBand(153) cannot add 1 element to context";
              goto LABEL_161;
            case 154:
              if (AddSingleValueToGenericContext(a1, "", "AbortSkip_FailedRebuildingParity", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: AbortSkip_FailedRebuildingParity(154) cannot add 1 element to context";
              goto LABEL_161;
            case 155:
              if (AddSingleValueToGenericContext(a1, "", "AbortPad_OpenRefreshBand", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: AbortPad_OpenRefreshBand(155) cannot add 1 element to context";
              goto LABEL_161;
            case 156:
              if (AddSingleValueToGenericContext(a1, "", "AbortPad_CloseBands", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: AbortPad_CloseBands(156) cannot add 1 element to context";
              goto LABEL_161;
            case 157:
              if (AddSingleValueToGenericContext(a1, "", "AbortPad_SetPhoto", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: AbortPad_SetPhoto(157) cannot add 1 element to context";
              goto LABEL_161;
            case 158:
              if (AddSingleValueToGenericContext(a1, "", "AbortPad_GcNoSource", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: AbortPad_GcNoSource(158) cannot add 1 element to context";
              goto LABEL_161;
            case 159:
              if (AddSingleValueToGenericContext(a1, "", "AbortPad_Format", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: AbortPad_Format(159) cannot add 1 element to context";
              goto LABEL_161;
            case 160:
              if (AddSingleValueToGenericContext(a1, "", "nandDiscoveryDuration", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: nandDiscoveryDuration(160) cannot add 1 element to context";
              goto LABEL_161;
            case 161:
              if (AddSingleValueToGenericContext(a1, "", "coreCCEnableDuration", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: coreCCEnableDuration(161) cannot add 1 element to context";
              goto LABEL_161;
            case 163:
              if (AddSingleValueToGenericContext(a1, "", "coreOpenDuration", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: coreOpenDuration(163) cannot add 1 element to context";
              goto LABEL_161;
            case 164:
              if (AddSingleValueToGenericContext(a1, "", "coreWritableDuration", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: coreWritableDuration(164) cannot add 1 element to context";
              goto LABEL_161;
            case 165:
              if (AddSingleValueToGenericContext(a1, "", "coreClogLoadDuration", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: coreClogLoadDuration(165) cannot add 1 element to context";
              goto LABEL_161;
            case 167:
              if (AddSingleValueToGenericContext(a1, "", "bulkPFail", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: bulkPFail(167) cannot add 1 element to context";
              goto LABEL_161;
            case 169:
              if (AddSingleValueToGenericContext(a1, "", "bulkRFail", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: bulkRFail(169) cannot add 1 element to context";
              goto LABEL_161;
            case 172:
              if (AddSingleValueToGenericContext(a1, "", "raidSmartErrors", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: raidSmartErrors(172) cannot add 1 element to context";
              goto LABEL_161;
            case 182:
              if (AddSingleValueToGenericContext(a1, "", "internalUeccs", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: internalUeccs(182) cannot add 1 element to context";
              goto LABEL_161;
            case 183:
              if (AddSingleValueToGenericContext(a1, "", "e2eFail", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: e2eFail(183) cannot add 1 element to context";
              goto LABEL_161;
            case 184:
              if (AddSingleValueToGenericContext(a1, "", "TempSensorMax", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: TempSensorMax(184) cannot add 1 element to context";
              goto LABEL_161;
            case 185:
              if (AddSingleValueToGenericContext(a1, "", "TempSensorMin", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: TempSensorMin(185) cannot add 1 element to context";
              goto LABEL_161;
            case 186:
              if (AddSingleValueToGenericContext(a1, "", "powerUpFromDDR", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: powerUpFromDDR(186) cannot add 1 element to context";
              goto LABEL_161;
            case 187:
              if (AddSingleValueToGenericContext(a1, "", "numMemLow", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: numMemLow(187) cannot add 1 element to context";
              goto LABEL_161;
            case 188:
              if (AddSingleValueToGenericContext(a1, "", "maxMemLowDuration", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: maxMemLowDuration(188) cannot add 1 element to context";
              goto LABEL_161;
            case 189:
              if (AddSingleValueToGenericContext(a1, "", "memLowDuration", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: memLowDuration(189) cannot add 1 element to context";
              goto LABEL_161;
            case 190:
              if (AddSingleValueToGenericContext(a1, "", "numFences", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: numFences(190) cannot add 1 element to context";
              goto LABEL_161;
            case 191:
              if (AddSingleValueToGenericContext(a1, "", "hostPassiveIO", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: hostPassiveIO(191) cannot add 1 element to context";
              goto LABEL_161;
            case 192:
              if (AddSingleValueToGenericContext(a1, "", "odtsMax", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: odtsMax(192) cannot add 1 element to context";
              goto LABEL_161;
            case 193:
              if (AddSingleValueToGenericContext(a1, "", "defragMFromOrphans", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: defragMFromOrphans(193) cannot add 1 element to context";
              goto LABEL_161;
            case 194:
              if (AddSingleValueToGenericContext(a1, "", "defragMFromFragments", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: defragMFromFragments(194) cannot add 1 element to context";
              goto LABEL_161;
            case 195:
              if (AddSingleValueToGenericContext(a1, "", "defragMTime", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: defragMTime(195) cannot add 1 element to context";
              goto LABEL_161;
            case 196:
              if (AddSingleValueToGenericContext(a1, "", "defragMMaxTime", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: defragMMaxTime(196) cannot add 1 element to context";
              goto LABEL_161;
            case 197:
              if (AddSingleValueToGenericContext(a1, "", "raidFailedLbaMismatch", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: raidFailedLbaMismatch(197) cannot add 1 element to context";
              goto LABEL_161;
            case 198:
              if (AddSingleValueToGenericContext(a1, "", "numSyscfgWrites", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: numSyscfgWrites(198) cannot add 1 element to context";
              goto LABEL_161;
            case 199:
              if (AddSingleValueToGenericContext(a1, "", "indmbUnitsXfer", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: indmbUnitsXfer(199) cannot add 1 element to context";
              goto LABEL_161;
            case 200:
              if (AddSingleValueToGenericContext(a1, "", "indmbUnitsCache", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: indmbUnitsCache(200) cannot add 1 element to context";
              goto LABEL_161;
            case 201:
              if (AddSingleValueToGenericContext(a1, "", "indmbUnitsInd", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: indmbUnitsInd(201) cannot add 1 element to context";
              goto LABEL_161;
            case 202:
              if (AddSingleValueToGenericContext(a1, "", "wcacheFS_Mbytes", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: wcacheFS_Mbytes(202) cannot add 1 element to context";
              goto LABEL_161;
            case 203:
              if (AddSingleValueToGenericContext(a1, "", "wcacheDS_Mbytes", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: wcacheDS_Mbytes(203) cannot add 1 element to context";
              goto LABEL_161;
            case 204:
              if (AddSingleValueToGenericContext(a1, "", "powerOnSeconds", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: powerOnSeconds(204) cannot add 1 element to context";
              goto LABEL_161;
            case 205:
              if (AddSingleValueToGenericContext(a1, "", "numUnknownTokenHostRead", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: numUnknownTokenHostRead(205) cannot add 1 element to context";
              goto LABEL_161;
            case 206:
              if (AddSingleValueToGenericContext(a1, "", "numUnmmapedTokenHostRead", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: numUnmmapedTokenHostRead(206) cannot add 1 element to context";
              goto LABEL_161;
            case 207:
              if (v14 != 25)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerLevel(207): (#25) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
              }

              if (v12 >> 33 >= 0xD)
              {
                v18 = 25;
              }

              else
              {
                v18 = v14;
              }

              if (AddMultipleFieldsToGenericContext(a1, "numOfThrottlingEntriesPerLevel_", v8, 8u, v18))
              {
                goto LABEL_110;
              }

              v19 = "ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerLevel(207): Cannot add 25 elements to context";
              goto LABEL_2993;
            case 208:
              if (AddSingleValueToGenericContext(a1, "", "wcacheFS_MbytesMin", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: wcacheFS_MbytesMin(208) cannot add 1 element to context";
              goto LABEL_161;
            case 209:
              if (AddSingleValueToGenericContext(a1, "", "wcacheFS_MbytesMax", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: wcacheFS_MbytesMax(209) cannot add 1 element to context";
              goto LABEL_161;
            case 210:
              if (AddSingleValueToGenericContext(a1, "", "prepareForShutdownFailCounter", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: prepareForShutdownFailCounter(210) cannot add 1 element to context";
              goto LABEL_161;
            case 211:
              if (AddSingleValueToGenericContext(a1, "", "lpsrEntry", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: lpsrEntry(211) cannot add 1 element to context";
              goto LABEL_161;
            case 212:
              if (AddSingleValueToGenericContext(a1, "", "lpsrExit", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: lpsrExit(212) cannot add 1 element to context";
              goto LABEL_161;
            case 213:
              if (v14 != 8)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: crcInternalReadFail(213): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
              }

              if (v14 >= 9)
              {
                v18 = 8;
              }

              else
              {
                v18 = v14;
              }

              if (AddMultipleFieldsToGenericContext(a1, "crcInternalReadFail_", v8, 8u, v18))
              {
                goto LABEL_110;
              }

              v19 = "ASPFTLParseBufferToCxt: crcInternalReadFail(213): Cannot add 8 elements to context";
              goto LABEL_2993;
            case 214:
              if (AddSingleValueToGenericContext(a1, "", "wcacheFSEvictCnt", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: wcacheFSEvictCnt(214) cannot add 1 element to context";
              goto LABEL_161;
            case 215:
              if (AddSingleValueToGenericContext(a1, "", "wcacheFSEvictSize", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: wcacheFSEvictSize(215) cannot add 1 element to context";
              goto LABEL_161;
            case 216:
              if (AddSingleValueToGenericContext(a1, "", "wcacheFSWr", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: wcacheFSWr(216) cannot add 1 element to context";
              goto LABEL_161;
            case 217:
              if (AddSingleValueToGenericContext(a1, "", "wcacheDSWr", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: wcacheDSWr(217) cannot add 1 element to context";
              goto LABEL_161;
            case 218:
              if (v14 != 10)
              {
                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSEvictSizeLogDist(218): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
              }

              if (v14 >= 0xB)
              {
                v18 = 10;
              }

              else
              {
                v18 = v14;
              }

              if (AddMultipleFieldsToGenericContext(a1, "wcacheFSEvictSizeLogDist_", v8, 8u, v18))
              {
                goto LABEL_110;
              }

              v19 = "ASPFTLParseBufferToCxt: wcacheFSEvictSizeLogDist(218): Cannot add 10 elements to context";
              goto LABEL_2993;
            case 219:
              if (AddSingleValueToGenericContext(a1, "", "prepareForShutdownTimeoutCounter", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: prepareForShutdownTimeoutCounter(219) cannot add 1 element to context";
              goto LABEL_161;
            case 220:
              if (AddSingleValueToGenericContext(a1, "", "prepareForShutdownCancelCounter", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: prepareForShutdownCancelCounter(220) cannot add 1 element to context";
              goto LABEL_161;
            case 221:
              if (AddSingleValueToGenericContext(a1, "", "RD_openBandCount", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: RD_openBandCount(221) cannot add 1 element to context";
              goto LABEL_161;
            case 222:
              if (AddSingleValueToGenericContext(a1, "", "RD_openBandNops", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: RD_openBandNops(222) cannot add 1 element to context";
              goto LABEL_161;
            case 223:
              if (AddSingleValueToGenericContext(a1, "", "RD_closedBandEvictCount", *v8))
              {
                goto LABEL_162;
              }

              v17 = "ASPFTLParseBufferToCxt: RD_closedBandEvictCount(223) cannot add 1 element to context";
              goto LABEL_161;
            default:
              switch(v12)
              {
                case 224:
                  if (AddSingleValueToGenericContext(a1, "", "RD_closedBandEvictSectors", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: RD_closedBandEvictSectors(224) cannot add 1 element to context";
                  goto LABEL_161;
                case 225:
                  if (AddSingleValueToGenericContext(a1, "", "RD_closedBandFragmentCount", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: RD_closedBandFragmentCount(225) cannot add 1 element to context";
                  goto LABEL_161;
                case 226:
                  if (AddSingleValueToGenericContext(a1, "", "RD_closedBandFragmentSectors", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: RD_closedBandFragmentSectors(226) cannot add 1 element to context";
                  goto LABEL_161;
                case 227:
                  if (v14 != 10)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSOverWrLogSizeCnts(227): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 0xB)
                  {
                    v18 = 10;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "wcacheFSOverWrLogSizeCnts_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: wcacheFSOverWrLogSizeCnts(227): Cannot add 10 elements to context";
                  goto LABEL_2993;
                case 228:
                  if (v14 != 4)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheFSOverWrSizeByFlow(228): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 5)
                  {
                    v18 = 4;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "wcacheFSOverWrSizeByFlow_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: wcacheFSOverWrSizeByFlow(228): Cannot add 4 elements to context";
                  goto LABEL_2993;
                case 229:
                  if (v14 != 2)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: indmbXferCountTo(229): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 3)
                  {
                    v18 = 2;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "indmbXferCountTo_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: indmbXferCountTo(229): Cannot add 2 elements to context";
                  goto LABEL_2993;
                case 230:
                  if (v14 != 2)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: indmbAccumulatedTimeBetweenXfers(230): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 3)
                  {
                    v18 = 2;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "indmbAccumulatedTimeBetweenXfers_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: indmbAccumulatedTimeBetweenXfers(230): Cannot add 2 elements to context";
                  goto LABEL_2993;
                case 231:
                  if (AddSingleValueToGenericContext(a1, "", "maxGracefulBootTimeMs", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: maxGracefulBootTimeMs(231) cannot add 1 element to context";
                  goto LABEL_161;
                case 232:
                  if (AddSingleValueToGenericContext(a1, "", "maxUngracefulBootTimeMs", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: maxUngracefulBootTimeMs(232) cannot add 1 element to context";
                  goto LABEL_161;
                case 233:
                  if (AddSingleValueToGenericContext(a1, "", "averageGracefulBootTimeMs", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: averageGracefulBootTimeMs(233) cannot add 1 element to context";
                  goto LABEL_161;
                case 234:
                  if (AddSingleValueToGenericContext(a1, "", "averageUngracefulBootTimeMs", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: averageUngracefulBootTimeMs(234) cannot add 1 element to context";
                  goto LABEL_161;
                case 235:
                  if (v14 != 8)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: gracefulBootTimeLogMs(235): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 9)
                  {
                    v18 = 8;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "gracefulBootTimeLogMs_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: gracefulBootTimeLogMs(235): Cannot add 8 elements to context";
                  goto LABEL_2993;
                case 236:
                  if (v14 != 8)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: ungracefulBootTimeLogMs(236): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 9)
                  {
                    v18 = 8;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "ungracefulBootTimeLogMs_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: ungracefulBootTimeLogMs(236): Cannot add 8 elements to context";
                  goto LABEL_2993;
                case 237:
                  if (v14 != 4)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: CalibrationCount(237): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 5)
                  {
                    v18 = 4;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "CalibrationCount_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: CalibrationCount(237): Cannot add 4 elements to context";
                  goto LABEL_2993;
                case 238:
                  if (AddSingleValueToGenericContext(a1, "", "CalibrationLastTmp", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: CalibrationLastTmp(238) cannot add 1 element to context";
                  goto LABEL_161;
                case 239:
                  if (AddSingleValueToGenericContext(a1, "", "CalibrationMaxTmp", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: CalibrationMaxTmp(239) cannot add 1 element to context";
                  goto LABEL_161;
                case 240:
                  if (AddSingleValueToGenericContext(a1, "", "CalibrationMinTmp", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: CalibrationMinTmp(240) cannot add 1 element to context";
                  goto LABEL_161;
                case 241:
                  if (AddSingleValueToGenericContext(a1, "", "ungracefulBootWorstIndicator", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: ungracefulBootWorstIndicator(241) cannot add 1 element to context";
                  goto LABEL_161;
                case 242:
                  if (AddSingleValueToGenericContext(a1, "", "metaMismatchReread", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: metaMismatchReread(242) cannot add 1 element to context";
                  goto LABEL_161;
                case 243:
                  if (AddSingleValueToGenericContext(a1, "", "numS3SleepOps", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: numS3SleepOps(243) cannot add 1 element to context";
                  goto LABEL_161;
                case 244:
                  if (AddSingleValueToGenericContext(a1, "", "odtsCurrent", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: odtsCurrent(244) cannot add 1 element to context";
                  goto LABEL_161;
                case 245:
                  if (AddSingleValueToGenericContext(a1, "", "prefetchReads", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: prefetchReads(245) cannot add 1 element to context";
                  goto LABEL_161;
                case 246:
                  if (AddSingleValueToGenericContext(a1, "", "prefetchHits", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: prefetchHits(246) cannot add 1 element to context";
                  goto LABEL_161;
                case 247:
                  if (AddSingleValueToGenericContext(a1, "", "prefetchWritesInvalidation", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: prefetchWritesInvalidation(247) cannot add 1 element to context";
                  goto LABEL_161;
                case 248:
                  if (AddSingleValueToGenericContext(a1, "", "indmbUnitsTotal", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: indmbUnitsTotal(248) cannot add 1 element to context";
                  goto LABEL_161;
                case 249:
                  if (AddSingleValueToGenericContext(a1, "", "selfThrottlingEngage", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: selfThrottlingEngage(249) cannot add 1 element to context";
                  goto LABEL_161;
                case 250:
                  if (AddSingleValueToGenericContext(a1, "", "selfThrottlingDisengage", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: selfThrottlingDisengage(250) cannot add 1 element to context";
                  goto LABEL_161;
                case 252:
                  if (AddSingleValueToGenericContext(a1, "", "AbortSkip_WlpMode", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: AbortSkip_WlpMode(252) cannot add 1 element to context";
                  goto LABEL_161;
                case 253:
                  if (AddSingleValueToGenericContext(a1, "", "hostWritesWlpMode", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: hostWritesWlpMode(253) cannot add 1 element to context";
                  goto LABEL_161;
                case 254:
                  if (AddSingleValueToGenericContext(a1, "", "numClogDoubleUnc", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: numClogDoubleUnc(254) cannot add 1 element to context";
                  goto LABEL_161;
                case 256:
                  if (AddSingleValueToGenericContext(a1, "", "AbortPad_WlpMode", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: AbortPad_WlpMode(256) cannot add 1 element to context";
                  goto LABEL_161;
                case 257:
                  if (AddSingleValueToGenericContext(a1, "", "bonfireIntermediateBandErases", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: bonfireIntermediateBandErases(257) cannot add 1 element to context";
                  goto LABEL_161;
                case 258:
                  if (AddSingleValueToGenericContext(a1, "", "bonfireUserBandErases", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: bonfireUserBandErases(258) cannot add 1 element to context";
                  goto LABEL_161;
                case 259:
                  if (AddSingleValueToGenericContext(a1, "", "bonfireIntermediateBandProgs", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: bonfireIntermediateBandProgs(259) cannot add 1 element to context";
                  goto LABEL_161;
                case 260:
                  if (AddSingleValueToGenericContext(a1, "", "bonfireUserBandProgs", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: bonfireUserBandProgs(260) cannot add 1 element to context";
                  goto LABEL_161;
                case 261:
                  if (AddSingleValueToGenericContext(a1, "", "bonfireIntermediatePageReads", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: bonfireIntermediatePageReads(261) cannot add 1 element to context";
                  goto LABEL_161;
                case 262:
                  if (AddSingleValueToGenericContext(a1, "", "bonfireUserPageReads", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: bonfireUserPageReads(262) cannot add 1 element to context";
                  goto LABEL_161;
                case 263:
                  if (AddSingleValueToGenericContext(a1, "", "refreshUtil00", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: refreshUtil00(263) cannot add 1 element to context";
                  goto LABEL_161;
                case 264:
                  if (AddSingleValueToGenericContext(a1, "", "failToReadUtil00", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: failToReadUtil00(264) cannot add 1 element to context";
                  goto LABEL_161;
                case 265:
                  if (v14 != 5)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: readCountHisto(265): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v12 >> 33 >= 3)
                  {
                    v18 = 5;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readCountHisto_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: readCountHisto(265): Cannot add 5 elements to context";
                  goto LABEL_2993;
                case 266:
                  if (v14 != 16)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: readAmpHisto(266): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 0x11)
                  {
                    v18 = 16;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readAmpHisto_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: readAmpHisto(266): Cannot add 16 elements to context";
                  goto LABEL_2993;
                case 267:
                  if (AddSingleValueToGenericContext(a1, "", "totalReadAmp", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: totalReadAmp(267) cannot add 1 element to context";
                  goto LABEL_161;
                case 268:
                  if (v14 != 4)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: nvmeModeSelect(268): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 5)
                  {
                    v18 = 4;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nvmeModeSelect_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: nvmeModeSelect(268): Cannot add 4 elements to context";
                  goto LABEL_2993;
                case 269:
                  if (v14 != 8)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockRefreshSuccess(269): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 9)
                  {
                    v18 = 8;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "numBootBlockRefreshSuccess_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: numBootBlockRefreshSuccess(269): Cannot add 8 elements to context";
                  goto LABEL_2993;
                case 270:
                  if (v14 != 8)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockRefreshFail(270): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 9)
                  {
                    v18 = 8;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "numBootBlockRefreshFail_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: numBootBlockRefreshFail(270): Cannot add 8 elements to context";
                  goto LABEL_2993;
                case 271:
                  if (AddSingleValueToGenericContext(a1, "", "numUnsupportedAsi", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: numUnsupportedAsi(271) cannot add 1 element to context";
                  goto LABEL_161;
                case 272:
                  if (AddSingleValueToGenericContext(a1, "", "NumTerminatedProgramSegs", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: NumTerminatedProgramSegs(272) cannot add 1 element to context";
                  goto LABEL_161;
                case 273:
                  if (AddSingleValueToGenericContext(a1, "", "indParityPagesDrops", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: indParityPagesDrops(273) cannot add 1 element to context";
                  goto LABEL_161;
                case 274:
                  if (AddSingleValueToGenericContext(a1, "", "indFlowPrograms", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: indFlowPrograms(274) cannot add 1 element to context";
                  goto LABEL_161;
                case 277:
                  if (v14 != 4)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: powerBudgetSelect(277): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 5)
                  {
                    v18 = 4;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "powerBudgetSelect_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: powerBudgetSelect(277): Cannot add 4 elements to context";
                  goto LABEL_2993;
                case 279:
                  if (AddSingleValueToGenericContext(a1, "", "RxBurnNandWrites", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: RxBurnNandWrites(279) cannot add 1 element to context";
                  goto LABEL_161;
                case 280:
                  if (v14 != 12)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: E2EDPErrorCounters(280): (#12) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 0xD)
                  {
                    v18 = 12;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "E2EDPErrorCounters_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: E2EDPErrorCounters(280): Cannot add 12 elements to context";
                  goto LABEL_2993;
                case 281:
                  if (AddSingleValueToGenericContext(a1, "", "wcacheSectorsMax", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: wcacheSectorsMax(281) cannot add 1 element to context";
                  goto LABEL_161;
                case 282:
                  if (AddSingleValueToGenericContext(a1, "", "wcacheSectorsMin", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: wcacheSectorsMin(282) cannot add 1 element to context";
                  goto LABEL_161;
                case 283:
                  if (AddSingleValueToGenericContext(a1, "", "wcacheSectorsCur", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: wcacheSectorsCur(283) cannot add 1 element to context";
                  goto LABEL_161;
                case 284:
                  if (AddSingleValueToGenericContext(a1, "", "wcacheDS_SectorsMax", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: wcacheDS_SectorsMax(284) cannot add 1 element to context";
                  goto LABEL_161;
                case 285:
                  if (AddSingleValueToGenericContext(a1, "", "wcacheDS_SectorsMin", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: wcacheDS_SectorsMin(285) cannot add 1 element to context";
                  goto LABEL_161;
                case 286:
                  if (AddSingleValueToGenericContext(a1, "", "wcacheDS_SectorsCur", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: wcacheDS_SectorsCur(286) cannot add 1 element to context";
                  goto LABEL_161;
                case 287:
                  if (AddSingleValueToGenericContext(a1, "", "wcacheFS_Reads", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: wcacheFS_Reads(287) cannot add 1 element to context";
                  goto LABEL_161;
                case 288:
                  if (AddSingleValueToGenericContext(a1, "", "wcacheDS_Reads", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: wcacheDS_Reads(288) cannot add 1 element to context";
                  goto LABEL_161;
                case 289:
                  if (v14 != 32)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockReadFail(289): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 0x21)
                  {
                    v18 = 32;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "mspBootBlockReadFail_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: mspBootBlockReadFail(289): Cannot add 32 elements to context";
                  goto LABEL_2993;
                case 290:
                  if (v14 != 32)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockProgFail(290): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 0x21)
                  {
                    v18 = 32;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "mspBootBlockProgFail_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: mspBootBlockProgFail(290): Cannot add 32 elements to context";
                  goto LABEL_2993;
                case 291:
                  if (v14 != 32)
                  {
                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockEraseFail(291): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                  }

                  if (v14 >= 0x21)
                  {
                    v18 = 32;
                  }

                  else
                  {
                    v18 = v14;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "mspBootBlockEraseFail_", v8, 8u, v18))
                  {
                    goto LABEL_110;
                  }

                  v19 = "ASPFTLParseBufferToCxt: mspBootBlockEraseFail(291): Cannot add 32 elements to context";
                  goto LABEL_2993;
                case 292:
                  if (AddSingleValueToGenericContext(a1, "", "bandsRefreshedOnError", *v8))
                  {
                    goto LABEL_162;
                  }

                  v17 = "ASPFTLParseBufferToCxt: bandsRefreshedOnError(292) cannot add 1 element to context";
                  goto LABEL_161;
                default:
                  switch(v12)
                  {
                    case 298:
                      if (v14 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostReads(298): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 3)
                      {
                        v18 = 2;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostReads_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: perHostReads(298): Cannot add 2 elements to context";
                      goto LABEL_2993;
                    case 299:
                      if (v14 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostReadXacts(299): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 3)
                      {
                        v18 = 2;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostReadXacts_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: perHostReadXacts(299): Cannot add 2 elements to context";
                      goto LABEL_2993;
                    case 300:
                      if (v14 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostWrites(300): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 3)
                      {
                        v18 = 2;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostWrites_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: perHostWrites(300): Cannot add 2 elements to context";
                      goto LABEL_2993;
                    case 301:
                      if (v14 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostWriteXacts(301): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 3)
                      {
                        v18 = 2;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostWriteXacts_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: perHostWriteXacts(301): Cannot add 2 elements to context";
                      goto LABEL_2993;
                    case 302:
                      if (v14 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostNumFlushes(302): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 3)
                      {
                        v18 = 2;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostNumFlushes_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: perHostNumFlushes(302): Cannot add 2 elements to context";
                      goto LABEL_2993;
                    case 303:
                      if (v14 != 2)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: perHostNumFences(303): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 3)
                      {
                        v18 = 2;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "perHostNumFences_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: perHostNumFences(303): Cannot add 2 elements to context";
                      goto LABEL_2993;
                    case 304:
                      if (v14 != 10)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: commitPadSectorsPerFlow(304): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 0xB)
                      {
                        v18 = 10;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "commitPadSectorsPerFlow_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: commitPadSectorsPerFlow(304): Cannot add 10 elements to context";
                      goto LABEL_2993;
                    case 305:
                      if (v14 != 10)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDSOverWrLogSizeCnts(305): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 0xB)
                      {
                        v18 = 10;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "wcacheDSOverWrLogSizeCnts_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: wcacheDSOverWrLogSizeCnts(305): Cannot add 10 elements to context";
                      goto LABEL_2993;
                    case 306:
                      if (v14 != 4)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDSOverWrSizeByFlow(306): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 5)
                      {
                        v18 = 4;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "wcacheDSOverWrSizeByFlow_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: wcacheDSOverWrSizeByFlow(306): Cannot add 4 elements to context";
                      goto LABEL_2993;
                    case 307:
                      if (v14 != 10)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: CmdRaisePrioiryEvents(307): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 0xB)
                      {
                        v18 = 10;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "CmdRaisePrioiryEvents_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: CmdRaisePrioiryEvents(307): Cannot add 10 elements to context";
                      goto LABEL_2993;
                    case 308:
                      if (AddSingleValueToGenericContext(a1, "", "utilNumVerification", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: utilNumVerification(308) cannot add 1 element to context";
                      goto LABEL_161;
                    case 309:
                      if (AddSingleValueToGenericContext(a1, "", "utilRefreshes", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: utilRefreshes(309) cannot add 1 element to context";
                      goto LABEL_161;
                    case 310:
                      if (AddSingleValueToGenericContext(a1, "", "utilBDRErrors", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: utilBDRErrors(310) cannot add 1 element to context";
                      goto LABEL_161;
                    case 311:
                      if (AddSingleValueToGenericContext(a1, "", "indBandsPerFlow", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: indBandsPerFlow(311) cannot add 1 element to context";
                      goto LABEL_161;
                    case 312:
                      if (AddSingleValueToGenericContext(a1, "", "secsPerIndFlow", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: secsPerIndFlow(312) cannot add 1 element to context";
                      goto LABEL_161;
                    case 313:
                      if (AddSingleValueToGenericContext(a1, "", "indDecodedECC", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: indDecodedECC(313) cannot add 1 element to context";
                      goto LABEL_161;
                    case 314:
                      if (v14 != 8)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockValidateSuccess(314): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 9)
                      {
                        v18 = 8;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "numBootBlockValidateSuccess_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: numBootBlockValidateSuccess(314): Cannot add 8 elements to context";
                      goto LABEL_2993;
                    case 315:
                      if (v14 != 8)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: numBootBlockValidateFail(315): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 9)
                      {
                        v18 = 8;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "numBootBlockValidateFail_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: numBootBlockValidateFail(315): Cannot add 8 elements to context";
                      goto LABEL_2993;
                    case 316:
                      if (v14 != 4)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogPagesFillingPercentage(316): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 5)
                      {
                        v18 = 4;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "clogPagesFillingPercentage_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: clogPagesFillingPercentage(316): Cannot add 4 elements to context";
                      goto LABEL_2993;
                    case 317:
                      if (AddSingleValueToGenericContext(a1, "", "bdrCalTimeAccFactor", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: bdrCalTimeAccFactor(317) cannot add 1 element to context";
                      goto LABEL_161;
                    case 318:
                      if (AddSingleValueToGenericContext(a1, "", "bootChainRdError", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: bootChainRdError(318) cannot add 1 element to context";
                      goto LABEL_161;
                    case 319:
                      if (AddSingleValueToGenericContext(a1, "", "bootChainBlankError", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: bootChainBlankError(319) cannot add 1 element to context";
                      goto LABEL_161;
                    case 320:
                      if (AddSingleValueToGenericContext(a1, "", "bootChainRefreshError", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: bootChainRefreshError(320) cannot add 1 element to context";
                      goto LABEL_161;
                    case 321:
                      if (AddSingleValueToGenericContext(a1, "", "bootChainVersionError", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: bootChainVersionError(321) cannot add 1 element to context";
                      goto LABEL_161;
                    case 322:
                      if (AddSingleValueToGenericContext(a1, "", "mspBootBlockMismatch", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: mspBootBlockMismatch(322) cannot add 1 element to context";
                      goto LABEL_161;
                    case 323:
                      if (AddSingleValueToGenericContext(a1, "", "mspBootBlockMismatchErr", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: mspBootBlockMismatchErr(323) cannot add 1 element to context";
                      goto LABEL_161;
                    case 324:
                      if (v14 != 5)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bitflipAddr(324): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v12 >> 33 >= 3)
                      {
                        v18 = 5;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bitflipAddr_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: bitflipAddr(324): Cannot add 5 elements to context";
                      goto LABEL_2993;
                    case 325:
                      if (v14 != 5)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bitflipCount(325): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v12 >> 33 >= 3)
                      {
                        v18 = 5;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bitflipCount_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: bitflipCount(325): Cannot add 5 elements to context";
                      goto LABEL_2993;
                    case 326:
                      if (v14 != 5)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bitflipDupes(326): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v12 >> 33 >= 3)
                      {
                        v18 = 5;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bitflipDupes_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: bitflipDupes(326): Cannot add 5 elements to context";
                      goto LABEL_2993;
                    case 327:
                      if (v14 != 30)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsMaxTempHisto(327): (#30) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 0x1F)
                      {
                        v18 = 30;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bandsMaxTempHisto_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: bandsMaxTempHisto(327): Cannot add 30 elements to context";
                      goto LABEL_2993;
                    case 328:
                      if (v14 != 30)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsMinTempHisto(328): (#30) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 0x1F)
                      {
                        v18 = 30;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bandsMinTempHisto_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: bandsMinTempHisto(328): Cannot add 30 elements to context";
                      goto LABEL_2993;
                    case 329:
                      if (v14 != 30)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsLifeTimeTempHisto(329): (#30) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 0x1F)
                      {
                        v18 = 30;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bandsLifeTimeTempHisto_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: bandsLifeTimeTempHisto(329): Cannot add 30 elements to context";
                      goto LABEL_2993;
                    case 330:
                      if (v14 != 22)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsDeltaTempHisto(330): (#22) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 0x17)
                      {
                        v18 = 22;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bandsDeltaTempHisto_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: bandsDeltaTempHisto(330): Cannot add 22 elements to context";
                      goto LABEL_2993;
                    case 331:
                      if (v14 != 45)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsCrossTempHisto(331): (#45) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v12 >> 33 >= 0x17)
                      {
                        v18 = 45;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "bandsCrossTempHisto_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: bandsCrossTempHisto(331): Cannot add 45 elements to context";
                      goto LABEL_2993;
                    case 332:
                      if (v14 != 10)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheWaitLogMs(332): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 0xB)
                      {
                        v18 = 10;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "wcacheWaitLogMs_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: wcacheWaitLogMs(332): Cannot add 10 elements to context";
                      goto LABEL_2993;
                    case 333:
                      if (v14 != 10)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDS_segsSortedLogSize(333): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 0xB)
                      {
                        v18 = 10;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "wcacheDS_segsSortedLogSize_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: wcacheDS_segsSortedLogSize(333): Cannot add 10 elements to context";
                      goto LABEL_2993;
                    case 334:
                      if (AddSingleValueToGenericContext(a1, "", "numFirmwareWrites", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: numFirmwareWrites(334) cannot add 1 element to context";
                      goto LABEL_161;
                    case 335:
                      if (AddSingleValueToGenericContext(a1, "", "numBisWrites", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: numBisWrites(335) cannot add 1 element to context";
                      goto LABEL_161;
                    case 336:
                      if (AddSingleValueToGenericContext(a1, "", "numBootChainUpdates", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: numBootChainUpdates(336) cannot add 1 element to context";
                      goto LABEL_161;
                    case 337:
                      if (AddSingleValueToGenericContext(a1, "", "cntCalTimeWentBackWard", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: cntCalTimeWentBackWard(337) cannot add 1 element to context";
                      goto LABEL_161;
                    case 338:
                      if (AddSingleValueToGenericContext(a1, "", "indBoRecoveries", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: indBoRecoveries(338) cannot add 1 element to context";
                      goto LABEL_161;
                    case 340:
                      if (AddSingleValueToGenericContext(a1, "", "numCrossTempUecc", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: numCrossTempUecc(340) cannot add 1 element to context";
                      goto LABEL_161;
                    case 341:
                      if (AddSingleValueToGenericContext(a1, "", "latencyMonitorError", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: latencyMonitorError(341) cannot add 1 element to context";
                      goto LABEL_161;
                    case 343:
                      if (AddSingleValueToGenericContext(a1, "", "utilUeccReads", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: utilUeccReads(343) cannot add 1 element to context";
                      goto LABEL_161;
                    case 344:
                      if (AddSingleValueToGenericContext(a1, "", "numOfAvoidedGCDueToTemp", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: numOfAvoidedGCDueToTemp(344) cannot add 1 element to context";
                      goto LABEL_161;
                    case 345:
                      if (AddSingleValueToGenericContext(a1, "", "forceShutdowns", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: forceShutdowns(345) cannot add 1 element to context";
                      goto LABEL_161;
                    case 346:
                      if (AddSingleValueToGenericContext(a1, "", "gcSlcDestinations", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: gcSlcDestinations(346) cannot add 1 element to context";
                      goto LABEL_161;
                    case 347:
                      if (AddSingleValueToGenericContext(a1, "", "indReplayExtUsed", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: indReplayExtUsed(347) cannot add 1 element to context";
                      goto LABEL_161;
                    case 348:
                      if (AddSingleValueToGenericContext(a1, "", "defectsPerPackageOverflow", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: defectsPerPackageOverflow(348) cannot add 1 element to context";
                      goto LABEL_161;
                    case 349:
                      if (AddSingleValueToGenericContext(a1, "", "RxBurnIntBandsProgrammed", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: RxBurnIntBandsProgrammed(349) cannot add 1 element to context";
                      goto LABEL_161;
                    case 350:
                      if (AddSingleValueToGenericContext(a1, "", "RxBurnUsrBandsProgrammed", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: RxBurnUsrBandsProgrammed(350) cannot add 1 element to context";
                      goto LABEL_161;
                    case 351:
                      if (AddSingleValueToGenericContext(a1, "", "RxBurnIntNandWrites", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: RxBurnIntNandWrites(351) cannot add 1 element to context";
                      goto LABEL_161;
                    case 352:
                      if (AddSingleValueToGenericContext(a1, "", "RxBurnUsrNandWrites", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: RxBurnUsrNandWrites(352) cannot add 1 element to context";
                      goto LABEL_161;
                    case 353:
                      if (AddSingleValueToGenericContext(a1, "", "clogLastStripeUeccs", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: clogLastStripeUeccs(353) cannot add 1 element to context";
                      goto LABEL_161;
                    case 354:
                      if (AddSingleValueToGenericContext(a1, "", "GC_MidDestSrcSwitchSLC2TLC", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: GC_MidDestSrcSwitchSLC2TLC(354) cannot add 1 element to context";
                      goto LABEL_161;
                    case 355:
                      if (AddSingleValueToGenericContext(a1, "", "GC_MidDestSrcSwitchTLC2SLC", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: GC_MidDestSrcSwitchTLC2SLC(355) cannot add 1 element to context";
                      goto LABEL_161;
                    case 356:
                      if (AddSingleValueToGenericContext(a1, "", "nvme_stats_shutdown_count_host0_normal", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host0_normal(356) cannot add 1 element to context";
                      goto LABEL_161;
                    case 357:
                      if (AddSingleValueToGenericContext(a1, "", "nvme_stats_shutdown_count_host1_normal", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host1_normal(357) cannot add 1 element to context";
                      goto LABEL_161;
                    case 358:
                      if (AddSingleValueToGenericContext(a1, "", "nvme_stats_shutdown_count_host0_s2r", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host0_s2r(358) cannot add 1 element to context";
                      goto LABEL_161;
                    case 359:
                      if (AddSingleValueToGenericContext(a1, "", "nvme_stats_shutdown_count_host1_s2r", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: nvme_stats_shutdown_count_host1_s2r(359) cannot add 1 element to context";
                      goto LABEL_161;
                    case 360:
                      if (v14 != 16)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcPDusterIntrSrcValidityHisto(360): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 0x11)
                      {
                        v18 = 16;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "gcPDusterIntrSrcValidityHisto_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: gcPDusterIntrSrcValidityHisto(360): Cannot add 16 elements to context";
                      goto LABEL_2993;
                    case 361:
                      if (v14 != 16)
                      {
                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcPDusterUserSrcValidityHisto(361): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                      }

                      if (v14 >= 0x11)
                      {
                        v18 = 16;
                      }

                      else
                      {
                        v18 = v14;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "gcPDusterUserSrcValidityHisto_", v8, 8u, v18))
                      {
                        goto LABEL_110;
                      }

                      v19 = "ASPFTLParseBufferToCxt: gcPDusterUserSrcValidityHisto(361): Cannot add 16 elements to context";
                      goto LABEL_2993;
                    case 362:
                      if (AddSingleValueToGenericContext(a1, "", "raidFailedReadParity", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: raidFailedReadParity(362) cannot add 1 element to context";
                      goto LABEL_161;
                    case 364:
                      if (AddSingleValueToGenericContext(a1, "", "lhotNumSkipes", *v8))
                      {
                        goto LABEL_162;
                      }

                      v17 = "ASPFTLParseBufferToCxt: lhotNumSkipes(364) cannot add 1 element to context";
                      goto LABEL_161;
                    default:
                      switch(v12)
                      {
                        case 365:
                          if (AddSingleValueToGenericContext(a1, "", "lhotNumIsHotCalls", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: lhotNumIsHotCalls(365) cannot add 1 element to context";
                          goto LABEL_161;
                        case 366:
                          if (AddSingleValueToGenericContext(a1, "", "lhotFullLap", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: lhotFullLap(366) cannot add 1 element to context";
                          goto LABEL_161;
                        case 367:
                          if (AddSingleValueToGenericContext(a1, "", "lhotSkipPrecent", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: lhotSkipPrecent(367) cannot add 1 element to context";
                          goto LABEL_161;
                        case 368:
                          if (AddSingleValueToGenericContext(a1, "", "eraseSuspendEvents", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: eraseSuspendEvents(368) cannot add 1 element to context";
                          goto LABEL_161;
                        case 369:
                          if (AddSingleValueToGenericContext(a1, "", "eraseSuspendedStatuses", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: eraseSuspendedStatuses(369) cannot add 1 element to context";
                          goto LABEL_161;
                        case 370:
                          if (AddSingleValueToGenericContext(a1, "", "eraseSuspendedBands", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: eraseSuspendedBands(370) cannot add 1 element to context";
                          goto LABEL_161;
                        case 371:
                          if (AddSingleValueToGenericContext(a1, "", "eraseSuspendSituationsBelowThreshold", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: eraseSuspendSituationsBelowThreshold(371) cannot add 1 element to context";
                          goto LABEL_161;
                        case 372:
                          if (AddSingleValueToGenericContext(a1, "", "eraseSuspendSituationsAboveThreshold", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: eraseSuspendSituationsAboveThreshold(372) cannot add 1 element to context";
                          goto LABEL_161;
                        case 373:
                          if (AddSingleValueToGenericContext(a1, "", "eraseSuspendReadChainsProcessed", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: eraseSuspendReadChainsProcessed(373) cannot add 1 element to context";
                          goto LABEL_161;
                        case 374:
                          if (AddSingleValueToGenericContext(a1, "", "bdrLastDoneHr", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: bdrLastDoneHr(374) cannot add 1 element to context";
                          goto LABEL_161;
                        case 375:
                          if (AddSingleValueToGenericContext(a1, "", "bdrBackupThreshHrs", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: bdrBackupThreshHrs(375) cannot add 1 element to context";
                          goto LABEL_161;
                        case 376:
                          if (AddSingleValueToGenericContext(a1, "", "clogPortableProgBufs", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: clogPortableProgBufs(376) cannot add 1 element to context";
                          goto LABEL_161;
                        case 377:
                          if (AddSingleValueToGenericContext(a1, "", "clogPortableDropBufs", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: clogPortableDropBufs(377) cannot add 1 element to context";
                          goto LABEL_161;
                        case 378:
                          if (AddSingleValueToGenericContext(a1, "", "clogPortablePadSectors", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: clogPortablePadSectors(378) cannot add 1 element to context";
                          goto LABEL_161;
                        case 379:
                          if (AddSingleValueToGenericContext(a1, "", "numRetiredBlocks", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: numRetiredBlocks(379) cannot add 1 element to context";
                          goto LABEL_161;
                        case 381:
                          if (AddSingleValueToGenericContext(a1, "", "numRefreshOnErrNandRefreshPerf", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshPerf(381) cannot add 1 element to context";
                          goto LABEL_161;
                        case 382:
                          if (AddSingleValueToGenericContext(a1, "", "raidReconstructReads", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidReconstructReads(382) cannot add 1 element to context";
                          goto LABEL_161;
                        case 383:
                          if (AddSingleValueToGenericContext(a1, "", "gcReadsNoBlog", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: gcReadsNoBlog(383) cannot add 1 element to context";
                          goto LABEL_161;
                        case 384:
                          if (AddSingleValueToGenericContext(a1, "", "AbortSkip_MPBXReadVerifyClosedBand", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: AbortSkip_MPBXReadVerifyClosedBand(384) cannot add 1 element to context";
                          goto LABEL_161;
                        case 385:
                          if (AddSingleValueToGenericContext(a1, "", "openBandReadFail", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: openBandReadFail(385) cannot add 1 element to context";
                          goto LABEL_161;
                        case 386:
                          if (AddSingleValueToGenericContext(a1, "", "AbortSkip_MPBXReadVerifyOpenBand", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: AbortSkip_MPBXReadVerifyOpenBand(386) cannot add 1 element to context";
                          goto LABEL_161;
                        case 387:
                          if (AddSingleValueToGenericContext(a1, "", "AbortSkip_MBPXFailedRebuildingParity", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: AbortSkip_MBPXFailedRebuildingParity(387) cannot add 1 element to context";
                          goto LABEL_161;
                        case 388:
                          if (AddSingleValueToGenericContext(a1, "", "raidSuccessfulPMXReconstructionInternal", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidSuccessfulPMXReconstructionInternal(388) cannot add 1 element to context";
                          goto LABEL_161;
                        case 389:
                          if (AddSingleValueToGenericContext(a1, "", "raidSuccessfulPMXReconstructionHost", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidSuccessfulPMXReconstructionHost(389) cannot add 1 element to context";
                          goto LABEL_161;
                        case 390:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedPMXReconstructionInternal", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedPMXReconstructionInternal(390) cannot add 1 element to context";
                          goto LABEL_161;
                        case 391:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedPMXReconstructionHost", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedPMXReconstructionHost(391) cannot add 1 element to context";
                          goto LABEL_161;
                        case 392:
                          if (AddSingleValueToGenericContext(a1, "", "raidSuccessfulRMXReconstructionInternal", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidSuccessfulRMXReconstructionInternal(392) cannot add 1 element to context";
                          goto LABEL_161;
                        case 393:
                          if (AddSingleValueToGenericContext(a1, "", "raidSuccessfulRMXReconstructionHost", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidSuccessfulRMXReconstructionHost(393) cannot add 1 element to context";
                          goto LABEL_161;
                        case 394:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedRMXReconstructionInternal", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedRMXReconstructionInternal(394) cannot add 1 element to context";
                          goto LABEL_161;
                        case 395:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedRMXReconstructionHost", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedRMXReconstructionHost(395) cannot add 1 element to context";
                          goto LABEL_161;
                        case 396:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedReadParityInternal", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedReadParityInternal(396) cannot add 1 element to context";
                          goto LABEL_161;
                        case 397:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedReadQParityInternal", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedReadQParityInternal(397) cannot add 1 element to context";
                          goto LABEL_161;
                        case 398:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedReadQParity", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedReadQParity(398) cannot add 1 element to context";
                          goto LABEL_161;
                        case 399:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedReadQCopy", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedReadQCopy(399) cannot add 1 element to context";
                          goto LABEL_161;
                        case 400:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedReconstructionQParity", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedReconstructionQParity(400) cannot add 1 element to context";
                          goto LABEL_161;
                        case 401:
                          if (AddSingleValueToGenericContext(a1, "", "offlineBlocksCnt", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: offlineBlocksCnt(401) cannot add 1 element to context";
                          goto LABEL_161;
                        case 402:
                          if (AddSingleValueToGenericContext(a1, "", "bork0Revectors", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: bork0Revectors(402) cannot add 1 element to context";
                          goto LABEL_161;
                        case 403:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedReadBlog", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedReadBlog(403) cannot add 1 element to context";
                          goto LABEL_161;
                        case 404:
                          if (AddSingleValueToGenericContext(a1, "", "numReliabilityRefreshes", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: numReliabilityRefreshes(404) cannot add 1 element to context";
                          goto LABEL_161;
                        case 405:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedReadQCopyInternal", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedReadQCopyInternal(405) cannot add 1 element to context";
                          goto LABEL_161;
                        case 406:
                          if (v14 != 5)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructSuccessFlow(406): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                          }

                          if (v12 >> 33 >= 3)
                          {
                            v18 = 5;
                          }

                          else
                          {
                            v18 = v14;
                          }

                          if (AddMultipleFieldsToGenericContext(a1, "raidReconstructSuccessFlow_", v8, 8u, v18))
                          {
                            goto LABEL_110;
                          }

                          v19 = "ASPFTLParseBufferToCxt: raidReconstructSuccessFlow(406): Cannot add 5 elements to context";
                          goto LABEL_2993;
                        case 407:
                          if (v14 != 5)
                          {
                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailFlow(407): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                          }

                          if (v12 >> 33 >= 3)
                          {
                            v18 = 5;
                          }

                          else
                          {
                            v18 = v14;
                          }

                          if (AddMultipleFieldsToGenericContext(a1, "raidReconstructFailFlow_", v8, 8u, v18))
                          {
                            goto LABEL_110;
                          }

                          v19 = "ASPFTLParseBufferToCxt: raidReconstructFailFlow(407): Cannot add 5 elements to context";
                          goto LABEL_2993;
                        case 408:
                          if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailP", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidReconstructFailP(408) cannot add 1 element to context";
                          goto LABEL_161;
                        case 409:
                          if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailQ", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidReconstructFailQ(409) cannot add 1 element to context";
                          goto LABEL_161;
                        case 410:
                          if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailUECC", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidReconstructFailUECC(410) cannot add 1 element to context";
                          goto LABEL_161;
                        case 411:
                          if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailUnsupp", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidReconstructFailUnsupp(411) cannot add 1 element to context";
                          goto LABEL_161;
                        case 412:
                          if (AddSingleValueToGenericContext(a1, "", "raidUECCOpenBand", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidUECCOpenBand(412) cannot add 1 element to context";
                          goto LABEL_161;
                        case 414:
                          if (AddSingleValueToGenericContext(a1, "", "ueccReads", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: ueccReads(414) cannot add 1 element to context";
                          goto LABEL_161;
                        case 416:
                          if (AddSingleValueToGenericContext(a1, "", "raidSuccessfulVerify", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidSuccessfulVerify(416) cannot add 1 element to context";
                          goto LABEL_161;
                        case 417:
                          if (AddSingleValueToGenericContext(a1, "", "raidFailedVerify", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: raidFailedVerify(417) cannot add 1 element to context";
                          goto LABEL_161;
                        case 418:
                          if (AddSingleValueToGenericContext(a1, "", "numBandsVerified", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: numBandsVerified(418) cannot add 1 element to context";
                          goto LABEL_161;
                        case 419:
                          if (AddSingleValueToGenericContext(a1, "", "cache_heads", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: cache_heads(419) cannot add 1 element to context";
                          goto LABEL_161;
                        case 420:
                          if (AddSingleValueToGenericContext(a1, "", "AbortSkip_RMXtoMPBX", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: AbortSkip_RMXtoMPBX(420) cannot add 1 element to context";
                          goto LABEL_161;
                        case 421:
                          if (AddSingleValueToGenericContext(a1, "", "s3eFwVer", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: s3eFwVer(421) cannot add 1 element to context";
                          goto LABEL_161;
                        case 422:
                          if (AddSingleValueToGenericContext(a1, "", "readVerifyNative", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: readVerifyNative(422) cannot add 1 element to context";
                          goto LABEL_161;
                        case 423:
                          if (AddSingleValueToGenericContext(a1, "", "reducedReadVerifyNative", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: reducedReadVerifyNative(423) cannot add 1 element to context";
                          goto LABEL_161;
                        case 424:
                          if (AddSingleValueToGenericContext(a1, "", "readVerifySlc", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: readVerifySlc(424) cannot add 1 element to context";
                          goto LABEL_161;
                        case 425:
                          if (AddSingleValueToGenericContext(a1, "", "reducedReadVerifySlc", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: reducedReadVerifySlc(425) cannot add 1 element to context";
                          goto LABEL_161;
                        case 426:
                          if (AddSingleValueToGenericContext(a1, "", "RxBurnEvictions", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: RxBurnEvictions(426) cannot add 1 element to context";
                          goto LABEL_161;
                        case 427:
                          if (AddSingleValueToGenericContext(a1, "", "directToTLCBands", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: directToTLCBands(427) cannot add 1 element to context";
                          goto LABEL_161;
                        case 428:
                          if (AddSingleValueToGenericContext(a1, "", "nandDesc", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: nandDesc(428) cannot add 1 element to context";
                          goto LABEL_161;
                        case 429:
                          if (AddSingleValueToGenericContext(a1, "", "fwUpdatesPercentUsed", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: fwUpdatesPercentUsed(429) cannot add 1 element to context";
                          goto LABEL_161;
                        case 430:
                          if (AddSingleValueToGenericContext(a1, "", "slcPercentUsed", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: slcPercentUsed(430) cannot add 1 element to context";
                          goto LABEL_161;
                        case 431:
                          if (AddSingleValueToGenericContext(a1, "", "percentUsed", *v8))
                          {
                            goto LABEL_162;
                          }

                          v17 = "ASPFTLParseBufferToCxt: percentUsed(431) cannot add 1 element to context";
                          goto LABEL_161;
                        default:
                          switch(v12)
                          {
                            case 432:
                              if (AddSingleValueToGenericContext(a1, "", "hostAutoWrites", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: hostAutoWrites(432) cannot add 1 element to context";
                              goto LABEL_161;
                            case 433:
                              if (AddSingleValueToGenericContext(a1, "", "hostAutoWriteXacts", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: hostAutoWriteXacts(433) cannot add 1 element to context";
                              goto LABEL_161;
                            case 434:
                              if (AddSingleValueToGenericContext(a1, "", "gcDestDynamic", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: gcDestDynamic(434) cannot add 1 element to context";
                              goto LABEL_161;
                            case 435:
                              if (AddSingleValueToGenericContext(a1, "", "gcDestStatic", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: gcDestStatic(435) cannot add 1 element to context";
                              goto LABEL_161;
                            case 436:
                              if (AddSingleValueToGenericContext(a1, "", "gcDestWearlevel", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: gcDestWearlevel(436) cannot add 1 element to context";
                              goto LABEL_161;
                            case 437:
                              if (AddSingleValueToGenericContext(a1, "", "gcDestParity", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: gcDestParity(437) cannot add 1 element to context";
                              goto LABEL_161;
                            case 438:
                              if (AddSingleValueToGenericContext(a1, "", "AbortSkip_Format", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: AbortSkip_Format(438) cannot add 1 element to context";
                              goto LABEL_161;
                            case 440:
                              if (AddSingleValueToGenericContext(a1, "", "raidSLCPadding", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: raidSLCPadding(440) cannot add 1 element to context";
                              goto LABEL_161;
                            case 441:
                              if (AddSingleValueToGenericContext(a1, "", "raidGCBands", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: raidGCBands(441) cannot add 1 element to context";
                              goto LABEL_161;
                            case 442:
                              if (AddSingleValueToGenericContext(a1, "", "raidGCSectors", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: raidGCSectors(442) cannot add 1 element to context";
                              goto LABEL_161;
                            case 443:
                              if (AddSingleValueToGenericContext(a1, "", "raidGCPadding", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: raidGCPadding(443) cannot add 1 element to context";
                              goto LABEL_161;
                            case 444:
                              if (AddSingleValueToGenericContext(a1, "", "raidSLCBandsPerHostFlow", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: raidSLCBandsPerHostFlow(444) cannot add 1 element to context";
                              goto LABEL_161;
                            case 445:
                              if (AddSingleValueToGenericContext(a1, "", "raidSLCSecsPerHostFlow", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: raidSLCSecsPerHostFlow(445) cannot add 1 element to context";
                              goto LABEL_161;
                            case 446:
                              if (AddSingleValueToGenericContext(a1, "", "rxBurnMinCycleRuns", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: rxBurnMinCycleRuns(446) cannot add 1 element to context";
                              goto LABEL_161;
                            case 447:
                              if (AddSingleValueToGenericContext(a1, "", "clogNumFastCxt", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: clogNumFastCxt(447) cannot add 1 element to context";
                              goto LABEL_161;
                            case 448:
                              if (AddSingleValueToGenericContext(a1, "", "clogNumRapidReboots", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: clogNumRapidReboots(448) cannot add 1 element to context";
                              goto LABEL_161;
                            case 449:
                              if (AddSingleValueToGenericContext(a1, "", "clogFastCxtAbvThr", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: clogFastCxtAbvThr(449) cannot add 1 element to context";
                              goto LABEL_161;
                            case 450:
                              if (AddSingleValueToGenericContext(a1, "", "rxBurnDiffModeRuns", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: rxBurnDiffModeRuns(450) cannot add 1 element to context";
                              goto LABEL_161;
                            case 452:
                              if (AddSingleValueToGenericContext(a1, "", "indReadVerifyFail", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: indReadVerifyFail(452) cannot add 1 element to context";
                              goto LABEL_161;
                            case 453:
                              if (v14 != 25)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerReadLevel(453): (#25) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v12 >> 33 >= 0xD)
                              {
                                v18 = 25;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "numOfThrottlingEntriesPerReadLevel_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerReadLevel(453): Cannot add 25 elements to context";
                              goto LABEL_2993;
                            case 454:
                              if (v14 != 25)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerWriteLevel(454): (#25) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v12 >> 33 >= 0xD)
                              {
                                v18 = 25;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "numOfThrottlingEntriesPerWriteLevel_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: numOfThrottlingEntriesPerWriteLevel(454): Cannot add 25 elements to context";
                              goto LABEL_2993;
                            case 456:
                              if (v14 != 10)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcFifoDepth(456): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 0xB)
                              {
                                v18 = 10;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "slcFifoDepth_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: slcFifoDepth(456): Cannot add 10 elements to context";
                              goto LABEL_2993;
                            case 457:
                              if (AddSingleValueToGenericContext(a1, "", "wcacheSectorsDirtyIdle", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: wcacheSectorsDirtyIdle(457) cannot add 1 element to context";
                              goto LABEL_161;
                            case 458:
                              if (AddSingleValueToGenericContext(a1, "", "wcacheDS_SectorsDirtyIdle", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: wcacheDS_SectorsDirtyIdle(458) cannot add 1 element to context";
                              goto LABEL_161;
                            case 459:
                              if (AddSingleValueToGenericContext(a1, "", "wcacheFS_MbytesDirtyIdle", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: wcacheFS_MbytesDirtyIdle(459) cannot add 1 element to context";
                              goto LABEL_161;
                            case 460:
                              if (v14 != 256)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: CacheDepthVsThroughput(460): (#256) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 0x101)
                              {
                                v18 = 256;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "CacheDepthVsThroughput_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: CacheDepthVsThroughput(460): Cannot add 256 elements to context";
                              goto LABEL_2993;
                            case 461:
                              if (AddSingleValueToGenericContext(a1, "", "directToTLCSectors", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: directToTLCSectors(461) cannot add 1 element to context";
                              goto LABEL_161;
                            case 462:
                              if (AddSingleValueToGenericContext(a1, "", "fallbackToWaterfall", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: fallbackToWaterfall(462) cannot add 1 element to context";
                              goto LABEL_161;
                            case 463:
                              if (v14 != 11)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: balanceProportionBucketsHistogram(463): (#11) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v12 >> 34 >= 3)
                              {
                                v18 = 11;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "balanceProportionBucketsHistogram_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: balanceProportionBucketsHistogram(463): Cannot add 11 elements to context";
                              goto LABEL_2993;
                            case 464:
                              if (AddSingleValueToGenericContext(a1, "", "lockToTlc", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: lockToTlc(464) cannot add 1 element to context";
                              goto LABEL_161;
                            case 465:
                              if (v14 != 10)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: burstSizeHistogram(465): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 0xB)
                              {
                                v18 = 10;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "burstSizeHistogram_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: burstSizeHistogram(465): Cannot add 10 elements to context";
                              goto LABEL_2993;
                            case 466:
                              if (v14 != 64)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: qosDirectToTLC(466): (#64) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 0x41)
                              {
                                v18 = 64;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "qosDirectToTLC_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: qosDirectToTLC(466): Cannot add 64 elements to context";
                              goto LABEL_2993;
                            case 467:
                              if (v14 != 4)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: maxQosDirectToTLC(467): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 5)
                              {
                                v18 = 4;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "maxQosDirectToTLC_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: maxQosDirectToTLC(467): Cannot add 4 elements to context";
                              goto LABEL_2993;
                            case 468:
                              if (v14 != 16)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcacheDirtyAtFlush(468): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 0x11)
                              {
                                v18 = 16;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "wcacheDirtyAtFlush_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: wcacheDirtyAtFlush(468): Cannot add 16 elements to context";
                              goto LABEL_2993;
                            case 469:
                              if (v14 != 2)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructSuccessPartition(469): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 3)
                              {
                                v18 = 2;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "raidReconstructSuccessPartition_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: raidReconstructSuccessPartition(469): Cannot add 2 elements to context";
                              goto LABEL_2993;
                            case 470:
                              if (v14 != 2)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructFailPartition(470): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 3)
                              {
                                v18 = 2;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "raidReconstructFailPartition_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: raidReconstructFailPartition(470): Cannot add 2 elements to context";
                              goto LABEL_2993;
                            case 471:
                              if (AddSingleValueToGenericContext(a1, "", "raidUncleanBootBandFail", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: raidUncleanBootBandFail(471) cannot add 1 element to context";
                              goto LABEL_161;
                            case 472:
                              if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailBandFlowHost", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: raidReconstructFailBandFlowHost(472) cannot add 1 element to context";
                              goto LABEL_161;
                            case 473:
                              if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailBandFlowGC", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: raidReconstructFailBandFlowGC(473) cannot add 1 element to context";
                              goto LABEL_161;
                            case 476:
                              if (v14 != 2)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulRecoLbaRange(476): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 3)
                              {
                                v18 = 2;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "raidSuccessfulRecoLbaRange_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: raidSuccessfulRecoLbaRange(476): Cannot add 2 elements to context";
                              goto LABEL_2993;
                            case 477:
                              if (v14 != 2)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedRecoLbaRange(477): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 3)
                              {
                                v18 = 2;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "raidFailedRecoLbaRange_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: raidFailedRecoLbaRange(477): Cannot add 2 elements to context";
                              goto LABEL_2993;
                            case 481:
                              if (v14 != 32)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: skinnyBandErases_481(481): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 0x21)
                              {
                                v18 = 32;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "skinnyBandErases_481_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: skinnyBandErases_481(481): Cannot add 32 elements to context";
                              goto LABEL_2993;
                            case 483:
                              if (AddSingleValueToGenericContext(a1, "", "tlcOverHeatWaterfall", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: tlcOverHeatWaterfall(483) cannot add 1 element to context";
                              goto LABEL_161;
                            case 484:
                              if (AddSingleValueToGenericContext(a1, "", "skinnyCyclesConvert", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: skinnyCyclesConvert(484) cannot add 1 element to context";
                              goto LABEL_161;
                            case 485:
                              if (AddSingleValueToGenericContext(a1, "", "non_proportional_directToTLCSectors", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: non_proportional_directToTLCSectors(485) cannot add 1 element to context";
                              goto LABEL_161;
                            case 486:
                              if (AddSingleValueToGenericContext(a1, "", "maxFailedFastCxtSync", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: maxFailedFastCxtSync(486) cannot add 1 element to context";
                              goto LABEL_161;
                            case 487:
                              if (AddSingleValueToGenericContext(a1, "", "numFormatUserArea", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: numFormatUserArea(487) cannot add 1 element to context";
                              goto LABEL_161;
                            case 488:
                              if (AddSingleValueToGenericContext(a1, "", "clogFastCxtSyncAborted", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: clogFastCxtSyncAborted(488) cannot add 1 element to context";
                              goto LABEL_161;
                            case 489:
                              if (v14 != 5)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogOccupationSectors(489): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v12 >> 33 >= 3)
                              {
                                v18 = 5;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "clogOccupationSectors_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: clogOccupationSectors(489): Cannot add 5 elements to context";
                              goto LABEL_2993;
                            case 490:
                              if (v14 != 64)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: bdrTmpHist(490): (#64) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 0x41)
                              {
                                v18 = 64;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "bdrTmpHist_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: bdrTmpHist(490): Cannot add 64 elements to context";
                              goto LABEL_2993;
                            case 491:
                              if (AddSingleValueToGenericContext(a1, "", "numFWUpdates", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: numFWUpdates(491) cannot add 1 element to context";
                              goto LABEL_161;
                            case 492:
                              if (AddSingleValueToGenericContext(a1, "", "numClogLoadFails", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: numClogLoadFails(492) cannot add 1 element to context";
                              goto LABEL_161;
                            case 493:
                              if (AddSingleValueToGenericContext(a1, "", "rxBurnNumForcedDiffMode", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: rxBurnNumForcedDiffMode(493) cannot add 1 element to context";
                              goto LABEL_161;
                            case 494:
                              if (AddSingleValueToGenericContext(a1, "", "RD_numSaves", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: RD_numSaves(494) cannot add 1 element to context";
                              goto LABEL_161;
                            case 495:
                              if (AddSingleValueToGenericContext(a1, "", "eanCompressWrites", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: eanCompressWrites(495) cannot add 1 element to context";
                              goto LABEL_161;
                            case 496:
                              if (AddSingleValueToGenericContext(a1, "", "eanHostWrites", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: eanHostWrites(496) cannot add 1 element to context";
                              goto LABEL_161;
                            case 497:
                              if (AddSingleValueToGenericContext(a1, "", "bandPreErases", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: bandPreErases(497) cannot add 1 element to context";
                              goto LABEL_161;
                            case 498:
                              if (AddSingleValueToGenericContext(a1, "", "eanHostUnmaps", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: eanHostUnmaps(498) cannot add 1 element to context";
                              goto LABEL_161;
                            case 499:
                              if (AddSingleValueToGenericContext(a1, "", "eanHostFlushes", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: eanHostFlushes(499) cannot add 1 element to context";
                              goto LABEL_161;
                            case 500:
                              if (AddSingleValueToGenericContext(a1, "", "eanFastWrites", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: eanFastWrites(500) cannot add 1 element to context";
                              goto LABEL_161;
                            case 501:
                              if (AddSingleValueToGenericContext(a1, "", "autowriteDS2FSCollisions", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: autowriteDS2FSCollisions(501) cannot add 1 element to context";
                              goto LABEL_161;
                            case 502:
                              if (AddSingleValueToGenericContext(a1, "", "autowriteWaitTransferTaskBlocks", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: autowriteWaitTransferTaskBlocks(502) cannot add 1 element to context";
                              goto LABEL_161;
                            case 503:
                              if (v14 != 2)
                              {
                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: avgCycle(503): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                              }

                              if (v14 >= 3)
                              {
                                v18 = 2;
                              }

                              else
                              {
                                v18 = v14;
                              }

                              if (AddMultipleFieldsToGenericContext(a1, "avgCycle_", v8, 8u, v18))
                              {
                                goto LABEL_110;
                              }

                              v19 = "ASPFTLParseBufferToCxt: avgCycle(503): Cannot add 2 elements to context";
                              goto LABEL_2993;
                            case 504:
                              if (AddSingleValueToGenericContext(a1, "", "RD_DeferredClearsOverflowCnt", *v8))
                              {
                                goto LABEL_162;
                              }

                              v17 = "ASPFTLParseBufferToCxt: RD_DeferredClearsOverflowCnt(504) cannot add 1 element to context";
                              goto LABEL_161;
                            default:
                              switch(v12)
                              {
                                case 505:
                                  if (AddSingleValueToGenericContext(a1, "", "maxVerticsInBand", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: maxVerticsInBand(505) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 506:
                                  if (AddSingleValueToGenericContext(a1, "", "numVertics", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: numVertics(506) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 507:
                                  if (AddSingleValueToGenericContext(a1, "", "exceededCVertics", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: exceededCVertics(507) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 510:
                                  if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailMismatch", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: raidReconstructFailMismatch(510) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 511:
                                  if (v14 != 32)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspbootBlockRefreshCnt(511): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                  }

                                  if (v14 >= 0x21)
                                  {
                                    v18 = 32;
                                  }

                                  else
                                  {
                                    v18 = v14;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "mspbootBlockRefreshCnt_", v8, 8u, v18))
                                  {
                                    goto LABEL_110;
                                  }

                                  v19 = "ASPFTLParseBufferToCxt: mspbootBlockRefreshCnt(511): Cannot add 32 elements to context";
                                  goto LABEL_2993;
                                case 516:
                                  if (v14 != 32)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: mspBootBlockRefreshTime(516): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                  }

                                  if (v14 >= 0x21)
                                  {
                                    v18 = 32;
                                  }

                                  else
                                  {
                                    v18 = v14;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "mspBootBlockRefreshTime_", v8, 8u, v18))
                                  {
                                    goto LABEL_110;
                                  }

                                  v19 = "ASPFTLParseBufferToCxt: mspBootBlockRefreshTime(516): Cannot add 32 elements to context";
                                  goto LABEL_2993;
                                case 517:
                                  if (AddSingleValueToGenericContext(a1, "", "mspBootBlockCountPerMsp", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: mspBootBlockCountPerMsp(517) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 518:
                                  if (AddSingleValueToGenericContext(a1, "", "skinnyRevectorSLC", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: skinnyRevectorSLC(518) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 519:
                                  if (AddSingleValueToGenericContext(a1, "", "skinnyRevectorTLC", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: skinnyRevectorTLC(519) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 520:
                                  if (AddSingleValueToGenericContext(a1, "", "perfSetupAttempts", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: perfSetupAttempts(520) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 521:
                                  if (AddSingleValueToGenericContext(a1, "", "perfSetupSuccesses", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: perfSetupSuccesses(521) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 522:
                                  if (AddSingleValueToGenericContext(a1, "", "perfWriteAttempts", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: perfWriteAttempts(522) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 523:
                                  if (AddSingleValueToGenericContext(a1, "", "perfWriteSuccesses", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: perfWriteSuccesses(523) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 524:
                                  if (AddSingleValueToGenericContext(a1, "", "perfReadAttempts", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: perfReadAttempts(524) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 525:
                                  if (AddSingleValueToGenericContext(a1, "", "perfReadSuccesses", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: perfReadSuccesses(525) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 526:
                                  if (AddSingleValueToGenericContext(a1, "", "perfCleanupAttempts", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: perfCleanupAttempts(526) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 527:
                                  if (AddSingleValueToGenericContext(a1, "", "perfCleanupSuccesses", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: perfCleanupSuccesses(527) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 530:
                                  if (AddSingleValueToGenericContext(a1, "", "firstFailedDieId", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: firstFailedDieId(530) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 531:
                                  if (AddSingleValueToGenericContext(a1, "", "numDieFailures", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: numDieFailures(531) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 532:
                                  if (AddSingleValueToGenericContext(a1, "", "spareAvailablePercent", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: spareAvailablePercent(532) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 533:
                                  if (AddSingleValueToGenericContext(a1, "", "dataFabricErr", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: dataFabricErr(533) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 534:
                                  if (AddSingleValueToGenericContext(a1, "", "downlinkFabricErr", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: downlinkFabricErr(534) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 535:
                                  if (AddSingleValueToGenericContext(a1, "", "prpAccTimeoutErr", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: prpAccTimeoutErr(535) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 537:
                                  if (AddSingleValueToGenericContext(a1, "", "uplinkFabricErr", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: uplinkFabricErr(537) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 538:
                                  if (AddSingleValueToGenericContext(a1, "", "skinnyBandsGBB", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: skinnyBandsGBB(538) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 539:
                                  if (AddSingleValueToGenericContext(a1, "", "AbortPad_GcMustPadBand", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: AbortPad_GcMustPadBand(539) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 540:
                                  if (AddSingleValueToGenericContext(a1, "", "AbortPad_GcMustPadSkinny", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: AbortPad_GcMustPadSkinny(540) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 541:
                                  if (AddSingleValueToGenericContext(a1, "", "bdrHostPingInitial", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: bdrHostPingInitial(541) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 542:
                                  if (AddSingleValueToGenericContext(a1, "", "bdrHostPingMoreNeeded", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: bdrHostPingMoreNeeded(542) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 543:
                                  if (AddSingleValueToGenericContext(a1, "", "bandParityAllocationFailed", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: bandParityAllocationFailed(543) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 544:
                                  if (AddSingleValueToGenericContext(a1, "", "fastHwBurstToSlc", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: fastHwBurstToSlc(544) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 545:
                                  if (AddSingleValueToGenericContext(a1, "", "slowHwToTlc", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: slowHwToTlc(545) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 546:
                                  if (v14 != 10)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstSizeDetected(546): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                  }

                                  if (v14 >= 0xB)
                                  {
                                    v18 = 10;
                                  }

                                  else
                                  {
                                    v18 = v14;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "slcDemandBurstSizeDetected_", v8, 8u, v18))
                                  {
                                    goto LABEL_110;
                                  }

                                  v19 = "ASPFTLParseBufferToCxt: slcDemandBurstSizeDetected(546): Cannot add 10 elements to context";
                                  goto LABEL_2993;
                                case 547:
                                  if (v14 != 10)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstDur(547): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                  }

                                  if (v14 >= 0xB)
                                  {
                                    v18 = 10;
                                  }

                                  else
                                  {
                                    v18 = v14;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "slcDemandBurstDur_", v8, 8u, v18))
                                  {
                                    goto LABEL_110;
                                  }

                                  v19 = "ASPFTLParseBufferToCxt: slcDemandBurstDur(547): Cannot add 10 elements to context";
                                  goto LABEL_2993;
                                case 548:
                                  if (AddSingleValueToGenericContext(a1, "", "fastHwToTlcBurst", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: fastHwToTlcBurst(548) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 549:
                                  if (v14 != 10)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: slcDemandBurstSizeSlc(549): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                  }

                                  if (v14 >= 0xB)
                                  {
                                    v18 = 10;
                                  }

                                  else
                                  {
                                    v18 = v14;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "slcDemandBurstSizeSlc_", v8, 8u, v18))
                                  {
                                    goto LABEL_110;
                                  }

                                  v19 = "ASPFTLParseBufferToCxt: slcDemandBurstSizeSlc(549): Cannot add 10 elements to context";
                                  goto LABEL_2993;
                                case 551:
                                  if (v14 != 11)
                                  {
                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: balanceProportionBucketsHistogramTlc(551): (#11) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                  }

                                  if (v12 >> 34 >= 3)
                                  {
                                    v18 = 11;
                                  }

                                  else
                                  {
                                    v18 = v14;
                                  }

                                  if (AddMultipleFieldsToGenericContext(a1, "balanceProportionBucketsHistogramTlc_", v8, 8u, v18))
                                  {
                                    goto LABEL_110;
                                  }

                                  v19 = "ASPFTLParseBufferToCxt: balanceProportionBucketsHistogramTlc(551): Cannot add 11 elements to context";
                                  goto LABEL_2993;
                                case 553:
                                  if (AddSingleValueToGenericContext(a1, "", "slowHwFlushToSlc", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: slowHwFlushToSlc(553) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 557:
                                  if (AddSingleValueToGenericContext(a1, "", "slowHwToSlc", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: slowHwToSlc(557) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 558:
                                  if (AddSingleValueToGenericContext(a1, "", "flushNwToSlc", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: flushNwToSlc(558) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 559:
                                  if (AddSingleValueToGenericContext(a1, "", "flushNwToTlc", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: flushNwToTlc(559) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 560:
                                  if (AddSingleValueToGenericContext(a1, "", "oslcHw", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: oslcHw(560) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 561:
                                  if (AddSingleValueToGenericContext(a1, "", "oslcTransitions", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: oslcTransitions(561) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 563:
                                  if (AddSingleValueToGenericContext(a1, "", "slcDemandFlushCount", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: slcDemandFlushCount(563) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 564:
                                  if (AddSingleValueToGenericContext(a1, "", "slcDemandBurstCount", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: slcDemandBurstCount(564) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 565:
                                  if (AddSingleValueToGenericContext(a1, "", "oslcBaseAvgPE", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: oslcBaseAvgPE(565) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 566:
                                  if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailNoSPBX", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: raidReconstructFailNoSPBX(566) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 567:
                                  if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailDouble", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: raidReconstructFailDouble(567) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 568:
                                  if (AddSingleValueToGenericContext(a1, "", "oslcFastWAmpUOnOff", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: oslcFastWAmpUOnOff(568) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 569:
                                  if (AddSingleValueToGenericContext(a1, "", "oslcSlowWAmpUOnOff", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: oslcSlowWAmpUOnOff(569) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 570:
                                  if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailInvalid", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: raidReconstructFailInvalid(570) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 572:
                                  if (AddSingleValueToGenericContext(a1, "", "oslcLastWAmpUx10", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: oslcLastWAmpUx10(572) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 573:
                                  if (AddSingleValueToGenericContext(a1, "", "raidFailedReadNoBlog", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: raidFailedReadNoBlog(573) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 574:
                                  if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailBlank", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: raidReconstructFailBlank(574) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 575:
                                  if (AddSingleValueToGenericContext(a1, "", "oslcHotTLCOnOff", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: oslcHotTLCOnOff(575) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 576:
                                  if (AddSingleValueToGenericContext(a1, "", "gcVPackDestinations", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: gcVPackDestinations(576) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 581:
                                  if (AddSingleValueToGenericContext(a1, "", "averageTLCPECycles", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: averageTLCPECycles(581) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 582:
                                  if (AddSingleValueToGenericContext(a1, "", "averageSLCPECycles", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: averageSLCPECycles(582) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 583:
                                  if (AddSingleValueToGenericContext(a1, "", "numAtomicBoots", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: numAtomicBoots(583) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 584:
                                  if (AddSingleValueToGenericContext(a1, "", "clogMinorMismatch", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: clogMinorMismatch(584) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 586:
                                  if (AddSingleValueToGenericContext(a1, "", "raidExpectedFailRMXReconstructionInternal", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: raidExpectedFailRMXReconstructionInternal(586) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 587:
                                  if (AddSingleValueToGenericContext(a1, "", "raidExpectedFailRMXReconstructionHost", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: raidExpectedFailRMXReconstructionHost(587) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 588:
                                  if (AddSingleValueToGenericContext(a1, "", "oslcGCinvalidations", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: oslcGCinvalidations(588) cannot add 1 element to context";
                                  goto LABEL_161;
                                case 589:
                                  if (AddSingleValueToGenericContext(a1, "", "oslcGCActivateReason", *v8))
                                  {
                                    goto LABEL_162;
                                  }

                                  v17 = "ASPFTLParseBufferToCxt: oslcGCActivateReason(589) cannot add 1 element to context";
                                  goto LABEL_161;
                                default:
                                  switch(v12)
                                  {
                                    case 590:
                                      if (AddSingleValueToGenericContext(a1, "", "oslcLowCleanBandsUOnOff", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: oslcLowCleanBandsUOnOff(590) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 591:
                                      if (AddSingleValueToGenericContext(a1, "", "oslcTooManyGCMustOnOff", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: oslcTooManyGCMustOnOff(591) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 592:
                                      if (AddSingleValueToGenericContext(a1, "", "oslcBaseHostWrites", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: oslcBaseHostWrites(592) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 593:
                                      if (AddSingleValueToGenericContext(a1, "", "oslcBaseBandErases", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: oslcBaseBandErases(593) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 594:
                                      if (AddSingleValueToGenericContext(a1, "", "oslcBdrBands", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: oslcBdrBands(594) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 595:
                                      if (AddSingleValueToGenericContext(a1, "", "oslcBdrValid", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: oslcBdrValid(595) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 596:
                                      if (AddSingleValueToGenericContext(a1, "", "unexpectedBlanksInternal", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: unexpectedBlanksInternal(596) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 597:
                                      if (AddSingleValueToGenericContext(a1, "", "unexpectedBlanksOnRV", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: unexpectedBlanksOnRV(597) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 601:
                                      if (AddSingleValueToGenericContext(a1, "", "waterfallLockSectors", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: waterfallLockSectors(601) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 602:
                                      if (AddSingleValueToGenericContext(a1, "", "oslcGCActiveWrites", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: oslcGCActiveWrites(602) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 603:
                                      if (AddSingleValueToGenericContext(a1, "", "chipIdTemperatureSample", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: chipIdTemperatureSample(603) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 604:
                                      if (AddSingleValueToGenericContext(a1, "", "gcVPackWrites", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: gcVPackWrites(604) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 605:
                                      if (v14 != 10)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcActiveReasons(605): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                      }

                                      if (v14 >= 0xB)
                                      {
                                        v18 = 10;
                                      }

                                      else
                                      {
                                        v18 = v14;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "gcActiveReasons_", v8, 8u, v18))
                                      {
                                        goto LABEL_110;
                                      }

                                      v19 = "ASPFTLParseBufferToCxt: gcActiveReasons(605): Cannot add 10 elements to context";
                                      goto LABEL_2993;
                                    case 606:
                                      if (AddSingleValueToGenericContext(a1, "", "eanMaxInitTimeMs", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: eanMaxInitTimeMs(606) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 607:
                                      if (AddSingleValueToGenericContext(a1, "", "eanMinToFirstReadTimeMs", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: eanMinToFirstReadTimeMs(607) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 608:
                                      if (AddSingleValueToGenericContext(a1, "", "skinnyAPGMRetire", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: skinnyAPGMRetire(608) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 609:
                                      if (AddSingleValueToGenericContext(a1, "", "unexpectedBlanksHost", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: unexpectedBlanksHost(609) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 610:
                                      if (v14 != 64)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: pcieAerCounters(610): (#64) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                      }

                                      if (v14 >= 0x41)
                                      {
                                        v18 = 64;
                                      }

                                      else
                                      {
                                        v18 = v14;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "pcieAerCounters_", v8, 8u, v18))
                                      {
                                        goto LABEL_110;
                                      }

                                      v19 = "ASPFTLParseBufferToCxt: pcieAerCounters(610): Cannot add 64 elements to context";
                                      goto LABEL_2993;
                                    case 611:
                                      if (AddSingleValueToGenericContext(a1, "", "fastHwToTlcBalance", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: fastHwToTlcBalance(611) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 612:
                                      if (AddSingleValueToGenericContext(a1, "", "perfOSLCRuns", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: perfOSLCRuns(612) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 613:
                                      if (AddSingleValueToGenericContext(a1, "", "slcDemandBurstWritesInGC", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: slcDemandBurstWritesInGC(613) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 614:
                                      if (AddSingleValueToGenericContext(a1, "", "slcDemandBurstWritesInTT", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: slcDemandBurstWritesInTT(614) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 615:
                                      if (AddSingleValueToGenericContext(a1, "", "slcDemandBurstWritesInNRP", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: slcDemandBurstWritesInNRP(615) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 616:
                                      if (AddSingleValueToGenericContext(a1, "", "perfTotalDmaMb", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: perfTotalDmaMb(616) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 617:
                                      if (AddSingleValueToGenericContext(a1, "", "eanAvgInitTimeMs", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: eanAvgInitTimeMs(617) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 618:
                                      if (AddSingleValueToGenericContext(a1, "", "eanAvgToFirstReadTimeMs", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: eanAvgToFirstReadTimeMs(618) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 619:
                                      if (AddSingleValueToGenericContext(a1, "", "eanMaxBootReadTimeMs", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: eanMaxBootReadTimeMs(619) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 620:
                                      if (AddSingleValueToGenericContext(a1, "", "eanAvgBootReadTimeMs", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: eanAvgBootReadTimeMs(620) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 621:
                                      if (v14 != 10)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanBootReadsHist(621): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                      }

                                      if (v14 >= 0xB)
                                      {
                                        v18 = 10;
                                      }

                                      else
                                      {
                                        v18 = v14;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "eanBootReadsHist_", v8, 8u, v18))
                                      {
                                        goto LABEL_110;
                                      }

                                      v19 = "ASPFTLParseBufferToCxt: eanBootReadsHist(621): Cannot add 10 elements to context";
                                      goto LABEL_2993;
                                    case 622:
                                      if (AddSingleValueToGenericContext(a1, "", "maxBgInitTimeMs", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: maxBgInitTimeMs(622) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 623:
                                      if (AddSingleValueToGenericContext(a1, "", "avgBgInitTimeMs", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: avgBgInitTimeMs(623) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 624:
                                      if (v14 != 16)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogFailReason(624): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                      }

                                      if (v14 >= 0x11)
                                      {
                                        v18 = 16;
                                      }

                                      else
                                      {
                                        v18 = v14;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "clogFailReason_", v8, 8u, v18))
                                      {
                                        goto LABEL_110;
                                      }

                                      v19 = "ASPFTLParseBufferToCxt: clogFailReason(624): Cannot add 16 elements to context";
                                      goto LABEL_2993;
                                    case 625:
                                      if (AddSingleValueToGenericContext(a1, "", "eanMinBootReadMBPerSec", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: eanMinBootReadMBPerSec(625) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 626:
                                      if (AddSingleValueToGenericContext(a1, "", "eanAvgBootReadMBPerSec", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: eanAvgBootReadMBPerSec(626) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 627:
                                      if (AddSingleValueToGenericContext(a1, "", "minSkinnyPECycles", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: minSkinnyPECycles(627) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 628:
                                      if (AddSingleValueToGenericContext(a1, "", "maxSkinnyPECycles", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: maxSkinnyPECycles(628) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 629:
                                      if (AddSingleValueToGenericContext(a1, "", "averageSkinnyPECycles", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: averageSkinnyPECycles(629) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 630:
                                      if (v14 != 6)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidSuccessfulRecoEAN(630): (#6) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                      }

                                      if (v14 >= 7)
                                      {
                                        v18 = 6;
                                      }

                                      else
                                      {
                                        v18 = v14;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "raidSuccessfulRecoEAN_", v8, 8u, v18))
                                      {
                                        goto LABEL_110;
                                      }

                                      v19 = "ASPFTLParseBufferToCxt: raidSuccessfulRecoEAN(630): Cannot add 6 elements to context";
                                      goto LABEL_2993;
                                    case 631:
                                      if (v14 != 6)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidFailedRecoEAN(631): (#6) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                      }

                                      if (v14 >= 7)
                                      {
                                        v18 = 6;
                                      }

                                      else
                                      {
                                        v18 = v14;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "raidFailedRecoEAN_", v8, 8u, v18))
                                      {
                                        goto LABEL_110;
                                      }

                                      v19 = "ASPFTLParseBufferToCxt: raidFailedRecoEAN(631): Cannot add 6 elements to context";
                                      goto LABEL_2993;
                                    case 632:
                                      if (v14 != 6)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanFirstReadMode(632): (#6) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                      }

                                      if (v14 >= 7)
                                      {
                                        v18 = 6;
                                      }

                                      else
                                      {
                                        v18 = v14;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "eanFirstReadMode_", v8, 8u, v18))
                                      {
                                        goto LABEL_110;
                                      }

                                      v19 = "ASPFTLParseBufferToCxt: eanFirstReadMode(632): Cannot add 6 elements to context";
                                      goto LABEL_2993;
                                    case 635:
                                      if (AddSingleValueToGenericContext(a1, "", "oslcHwGC", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: oslcHwGC(635) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 636:
                                      if (AddSingleValueToGenericContext(a1, "", "oslcHwTT", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: oslcHwTT(636) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 637:
                                      if (AddSingleValueToGenericContext(a1, "", "oslcHwNRP", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: oslcHwNRP(637) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 638:
                                      if (v14 != 10)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcDemandBurstSize(638): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                      }

                                      if (v14 >= 0xB)
                                      {
                                        v18 = 10;
                                      }

                                      else
                                      {
                                        v18 = v14;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "oslcDemandBurstSize_", v8, 8u, v18))
                                      {
                                        goto LABEL_110;
                                      }

                                      v19 = "ASPFTLParseBufferToCxt: oslcDemandBurstSize(638): Cannot add 10 elements to context";
                                      goto LABEL_2993;
                                    case 639:
                                      if (AddSingleValueToGenericContext(a1, "", "raidReconstructSuccessBandFlowOslc", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: raidReconstructSuccessBandFlowOslc(639) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 640:
                                      if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailBandFlowOslc", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: raidReconstructFailBandFlowOslc(640) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 641:
                                      if (AddSingleValueToGenericContext(a1, "", "raidFailSectors", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: raidFailSectors(641) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 642:
                                      if (AddSingleValueToGenericContext(a1, "", "eanFailSectors", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: eanFailSectors(642) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 643:
                                      if (AddSingleValueToGenericContext(a1, "", "bdrTimeMode", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: bdrTimeMode(643) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 644:
                                      if (AddSingleValueToGenericContext(a1, "", "raidParityNotSavedP", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: raidParityNotSavedP(644) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 645:
                                      if (AddSingleValueToGenericContext(a1, "", "raidParityNotSavedQ", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: raidParityNotSavedQ(645) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 646:
                                      if (AddSingleValueToGenericContext(a1, "", "raidParityInvalid", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: raidParityInvalid(646) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 647:
                                      if (AddSingleValueToGenericContext(a1, "", "raidParityUnknown", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: raidParityUnknown(647) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 648:
                                      if (AddSingleValueToGenericContext(a1, "", "raidParityUnmapped", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: raidParityUnmapped(648) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 649:
                                      if (AddSingleValueToGenericContext(a1, "", "raidParityGCUnc", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: raidParityGCUnc(649) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 657:
                                      if (AddSingleValueToGenericContext(a1, "", "AbortSkip_MPBXProbational", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: AbortSkip_MPBXProbational(657) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 659:
                                      if (AddSingleValueToGenericContext(a1, "", "raidVerificationReads", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: raidVerificationReads(659) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 666:
                                      if (AddSingleValueToGenericContext(a1, "", "nofDies", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: nofDies(666) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 671:
                                      if (AddSingleValueToGenericContext(a1, "", "skinnyBandsNum", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: skinnyBandsNum(671) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 672:
                                      if (AddSingleValueToGenericContext(a1, "", "skinnyBandsNumDips", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: skinnyBandsNumDips(672) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 674:
                                      if (v14 != 8)
                                      {
                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: oslcNoVotesHw(674): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                      }

                                      if (v14 >= 9)
                                      {
                                        v18 = 8;
                                      }

                                      else
                                      {
                                        v18 = v14;
                                      }

                                      if (AddMultipleFieldsToGenericContext(a1, "oslcNoVotesHw_", v8, 8u, v18))
                                      {
                                        goto LABEL_110;
                                      }

                                      v19 = "ASPFTLParseBufferToCxt: oslcNoVotesHw(674): Cannot add 8 elements to context";
                                      goto LABEL_2993;
                                    case 675:
                                      if (AddSingleValueToGenericContext(a1, "", "totalLbas", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: totalLbas(675) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 676:
                                      if (AddSingleValueToGenericContext(a1, "", "bdrHostPingExtra", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: bdrHostPingExtra(676) cannot add 1 element to context";
                                      goto LABEL_161;
                                    case 677:
                                      if (AddSingleValueToGenericContext(a1, "", "magazineInstanceMeta", *v8))
                                      {
                                        goto LABEL_162;
                                      }

                                      v17 = "ASPFTLParseBufferToCxt: magazineInstanceMeta(677) cannot add 1 element to context";
                                      goto LABEL_161;
                                    default:
                                      switch(v12)
                                      {
                                        case 680:
                                          if (v14 != 3)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: magazineFWVersion(680): (#3) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v12 >> 34)
                                          {
                                            v18 = 3;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "magazineFWVersion_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: magazineFWVersion(680): Cannot add 3 elements to context";
                                          goto LABEL_2993;
                                        case 681:
                                          if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailPMXUnsup", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: raidReconstructFailPMXUnsup(681) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 682:
                                          if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailBMXUnsup", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: raidReconstructFailBMXUnsup(682) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 683:
                                          if (AddSingleValueToGenericContext(a1, "", "iBootNANDResets", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: iBootNANDResets(683) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 684:
                                          if (AddSingleValueToGenericContext(a1, "", "pcieClkreqHighTimeout", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: pcieClkreqHighTimeout(684) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 687:
                                          if (v14 != 3)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrInitSent(687): (#3) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v12 >> 34)
                                          {
                                            v18 = 3;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrInitSent_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: cbdrInitSent(687): Cannot add 3 elements to context";
                                          goto LABEL_2993;
                                        case 688:
                                          if (AddSingleValueToGenericContext(a1, "", "cbdrPauseSent", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: cbdrPauseSent(688) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 689:
                                          if (AddSingleValueToGenericContext(a1, "", "cbdrResumeSent", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: cbdrResumeSent(689) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 690:
                                          if (AddSingleValueToGenericContext(a1, "", "cbdrGetResultSent", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: cbdrGetResultSent(690) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 691:
                                          if (AddSingleValueToGenericContext(a1, "", "cbdrEarlyExits", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: cbdrEarlyExits(691) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 694:
                                          if (v14 != 10)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshGrades(694): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v14 >= 0xB)
                                          {
                                            v18 = 10;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrRefreshGrades_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: cbdrRefreshGrades(694): Cannot add 10 elements to context";
                                          goto LABEL_2993;
                                        case 695:
                                          if (AddSingleValueToGenericContext(a1, "", "cbdrNotEnoughReads", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: cbdrNotEnoughReads(695) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 696:
                                          if (AddSingleValueToGenericContext(a1, "", "cbdrAborts", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: cbdrAborts(696) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 697:
                                          if (AddSingleValueToGenericContext(a1, "", "TurboRaidHostClassifications", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: TurboRaidHostClassifications(697) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 698:
                                          if (AddSingleValueToGenericContext(a1, "", "TurboRaidInternalClassifications", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: TurboRaidInternalClassifications(698) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 699:
                                          if (AddSingleValueToGenericContext(a1, "", "cbdrFullyDone", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: cbdrFullyDone(699) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 702:
                                          if (v14 != 32)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: vcurve(702): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v14 >= 0x21)
                                          {
                                            v18 = 32;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "vcurve_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: vcurve(702): Cannot add 32 elements to context";
                                          goto LABEL_2993;
                                        case 703:
                                          if (v14 != 12)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: injDepth(703): (#12) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v14 >= 0xD)
                                          {
                                            v18 = 12;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "injDepth_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: injDepth(703): Cannot add 12 elements to context";
                                          goto LABEL_2993;
                                        case 704:
                                          if (AddSingleValueToGenericContext(a1, "", "logical_disk_occupied_promiles", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: logical_disk_occupied_promiles(704) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 711:
                                          if (AddSingleValueToGenericContext(a1, "", "raidPrevFailedReconstructSkip", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: raidPrevFailedReconstructSkip(711) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 712:
                                          if (AddSingleValueToGenericContext(a1, "", "TurboRaidSuccessfulHostAuxReads", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: TurboRaidSuccessfulHostAuxReads(712) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 713:
                                          if (AddSingleValueToGenericContext(a1, "", "TurboRaidSuccessfulInternalAuxReads", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: TurboRaidSuccessfulInternalAuxReads(713) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 714:
                                          if (AddSingleValueToGenericContext(a1, "", "turboRaidClassificationReliabilityHost", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: turboRaidClassificationReliabilityHost(714) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 715:
                                          if (AddSingleValueToGenericContext(a1, "", "turboRaidClassificationReliabilityInternal", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: turboRaidClassificationReliabilityInternal(715) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 716:
                                          if (AddSingleValueToGenericContext(a1, "", "turboRaidClassificationQualityHost", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: turboRaidClassificationQualityHost(716) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 717:
                                          if (AddSingleValueToGenericContext(a1, "", "turboRaidClassificationQualityInternal", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: turboRaidClassificationQualityInternal(717) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 719:
                                          if (AddSingleValueToGenericContext(a1, "", "skinnyBandErases", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: skinnyBandErases(719) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 721:
                                          if (AddSingleValueToGenericContext(a1, "", "gcPDusterDestinations", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: gcPDusterDestinations(721) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 722:
                                          if (AddSingleValueToGenericContext(a1, "", "gcPDusterWrites", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: gcPDusterWrites(722) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 730:
                                          if (AddSingleValueToGenericContext(a1, "", "rvFails", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: rvFails(730) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 737:
                                          if (AddSingleValueToGenericContext(a1, "", "TurboRaidFailedHostAuxReads", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: TurboRaidFailedHostAuxReads(737) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 738:
                                          if (AddSingleValueToGenericContext(a1, "", "TurboRaidFailedInternalAuxReads", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: TurboRaidFailedInternalAuxReads(738) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 741:
                                          if (AddSingleValueToGenericContext(a1, "", "autoSkipTriggers", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: autoSkipTriggers(741) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 742:
                                          if (AddSingleValueToGenericContext(a1, "", "autoSkipPlanes", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: autoSkipPlanes(742) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 744:
                                          if (v14 != 8)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidReconstructDurationHisto(744): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v14 >= 9)
                                          {
                                            v18 = 8;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "raidReconstructDurationHisto_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: raidReconstructDurationHisto(744): Cannot add 8 elements to context";
                                          goto LABEL_2993;
                                        case 745:
                                          if (v14 != 8)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: failsOnReconstructHisto(745): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v14 >= 9)
                                          {
                                            v18 = 8;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "failsOnReconstructHisto_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: failsOnReconstructHisto(745): Cannot add 8 elements to context";
                                          goto LABEL_2993;
                                        case 746:
                                          if (AddSingleValueToGenericContext(a1, "", "bandKill_userFlattenExcessive", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: bandKill_userFlattenExcessive(746) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 747:
                                          if (AddSingleValueToGenericContext(a1, "", "bandKill_IntFlattenExcessive", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: bandKill_IntFlattenExcessive(747) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 748:
                                          if (AddSingleValueToGenericContext(a1, "", "bandKill_userFlattenBalance", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: bandKill_userFlattenBalance(748) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 749:
                                          if (AddSingleValueToGenericContext(a1, "", "bandKill_intFlattenBalance", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: bandKill_intFlattenBalance(749) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 750:
                                          if (AddSingleValueToGenericContext(a1, "", "bandKill_formatVertExcessive", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: bandKill_formatVertExcessive(750) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 751:
                                          if (AddSingleValueToGenericContext(a1, "", "bandKill_formatVertBalance", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: bandKill_formatVertBalance(751) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 753:
                                          if (AddSingleValueToGenericContext(a1, "", "cbdrNumSlowRefreshes", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: cbdrNumSlowRefreshes(753) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 754:
                                          if (AddSingleValueToGenericContext(a1, "", "cbdrNumFastRefreshes", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: cbdrNumFastRefreshes(754) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 755:
                                          if (AddSingleValueToGenericContext(a1, "", "cbdrTotalRefreshValidity", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: cbdrTotalRefreshValidity(755) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 756:
                                          if (v14 != 9)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshedAges(756): (#9) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v12 >> 33 >= 5)
                                          {
                                            v18 = 9;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrRefreshedAges_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: cbdrRefreshedAges(756): Cannot add 9 elements to context";
                                          goto LABEL_2993;
                                        case 758:
                                          if (AddSingleValueToGenericContext(a1, "", "cbdrSkippedBlocks", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: cbdrSkippedBlocks(758) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 759:
                                          if (v14 != 5)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrScanPct(759): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v12 >> 33 >= 3)
                                          {
                                            v18 = 5;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrScanPct_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: cbdrScanPct(759): Cannot add 5 elements to context";
                                          goto LABEL_2993;
                                        case 760:
                                          if (AddSingleValueToGenericContext(a1, "", "raidSuccessfulBMXReconstructionInternal", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: raidSuccessfulBMXReconstructionInternal(760) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 761:
                                          if (AddSingleValueToGenericContext(a1, "", "raidSuccessfulBMXReconstructionHost", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: raidSuccessfulBMXReconstructionHost(761) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 762:
                                          if (AddSingleValueToGenericContext(a1, "", "raidFailedBMXReconstructionInternal", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: raidFailedBMXReconstructionInternal(762) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 763:
                                          if (AddSingleValueToGenericContext(a1, "", "raidFailedBMXReconstructionHost", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: raidFailedBMXReconstructionHost(763) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 764:
                                          if (AddSingleValueToGenericContext(a1, "", "ricSPRVFail", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: ricSPRVFail(764) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 765:
                                          if (AddSingleValueToGenericContext(a1, "", "ricMPRVFail", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: ricMPRVFail(765) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 767:
                                          if (v14 != 10)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshGradesSLC(767): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v14 >= 0xB)
                                          {
                                            v18 = 10;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrRefreshGradesSLC_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: cbdrRefreshGradesSLC(767): Cannot add 10 elements to context";
                                          goto LABEL_2993;
                                        case 768:
                                          if (v14 != 9)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrRefreshedAgesSLC(768): (#9) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v12 >> 33 >= 5)
                                          {
                                            v18 = 9;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrRefreshedAgesSLC_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: cbdrRefreshedAgesSLC(768): Cannot add 9 elements to context";
                                          goto LABEL_2993;
                                        case 769:
                                          if (v14 != 5)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cbdrScanPctSLC(769): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v12 >> 33 >= 3)
                                          {
                                            v18 = 5;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cbdrScanPctSLC_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: cbdrScanPctSLC(769): Cannot add 5 elements to context";
                                          goto LABEL_2993;
                                        case 770:
                                          if (v14 != 8)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: cpuBurstLength(770): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v14 >= 9)
                                          {
                                            v18 = 8;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "cpuBurstLength_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: cpuBurstLength(770): Cannot add 8 elements to context";
                                          goto LABEL_2993;
                                        case 771:
                                          if (AddSingleValueToGenericContext(a1, "", "autoSkipRaidRecoFail", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: autoSkipRaidRecoFail(771) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 772:
                                          if (v14 != 32)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc(772): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v14 >= 0x21)
                                          {
                                            v18 = 32;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "dmReasonsSlc_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: dmReasonsSlc(772): Cannot add 32 elements to context";
                                          goto LABEL_2993;
                                        case 773:
                                          if (v14 != 32)
                                          {
                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc(773): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                          }

                                          if (v14 >= 0x21)
                                          {
                                            v18 = 32;
                                          }

                                          else
                                          {
                                            v18 = v14;
                                          }

                                          if (AddMultipleFieldsToGenericContext(a1, "dmReasonsTlc_", v8, 8u, v18))
                                          {
                                            goto LABEL_110;
                                          }

                                          v19 = "ASPFTLParseBufferToCxt: dmReasonsTlc(773): Cannot add 32 elements to context";
                                          goto LABEL_2993;
                                        case 774:
                                          if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailBMXAbort", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: raidReconstructFailBMXAbort(774) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 775:
                                          if (AddSingleValueToGenericContext(a1, "", "bandKill_fatBindingNoBlocks", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: bandKill_fatBindingNoBlocks(775) cannot add 1 element to context";
                                          goto LABEL_161;
                                        case 776:
                                          if (AddSingleValueToGenericContext(a1, "", "bandKill_fatBindingFewBlocks", *v8))
                                          {
                                            goto LABEL_162;
                                          }

                                          v17 = "ASPFTLParseBufferToCxt: bandKill_fatBindingFewBlocks(776) cannot add 1 element to context";
                                          goto LABEL_161;
                                        default:
                                          switch(v12)
                                          {
                                            case 777:
                                              if (AddSingleValueToGenericContext(a1, "", "numBadBootBlocks", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: numBadBootBlocks(777) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 778:
                                              if (AddSingleValueToGenericContext(a1, "", "snapshotCPUHigh", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: snapshotCPUHigh(778) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 779:
                                              if (AddSingleValueToGenericContext(a1, "", "snapshotCPULow", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: snapshotCPULow(779) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 780:
                                              if (AddSingleValueToGenericContext(a1, "", "gcWithoutBMs", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: gcWithoutBMs(780) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 781:
                                              if (v14 != 10)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcSearchTimeHistory(781): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0xB)
                                              {
                                                v18 = 10;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "gcSearchTimeHistory_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: gcSearchTimeHistory(781): Cannot add 10 elements to context";
                                              goto LABEL_2993;
                                            case 785:
                                              if (v14 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcSearchPortion(785): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x11)
                                              {
                                                v18 = 16;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "gcSearchPortion_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: gcSearchPortion(785): Cannot add 16 elements to context";
                                              goto LABEL_2993;
                                            case 786:
                                              if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailBmxMp", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: raidReconstructFailBmxMp(786) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 787:
                                              if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailBmx", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: raidReconstructFailBmx(787) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 788:
                                              if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailBMXUECC", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: raidReconstructFailBMXUECC(788) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 789:
                                              if (AddSingleValueToGenericContext(a1, "", "raidReconstructFailBMXBlank", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: raidReconstructFailBMXBlank(789) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 790:
                                              if (AddSingleValueToGenericContext(a1, "", "raidPrevFailedReconstructBmxMpSkip", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: raidPrevFailedReconstructBmxMpSkip(790) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 792:
                                              if (AddSingleValueToGenericContext(a1, "", "numTLCFatBands", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: numTLCFatBands(792) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 793:
                                              if (AddSingleValueToGenericContext(a1, "", "fatValidity", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: fatValidity(793) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 794:
                                              if (AddSingleValueToGenericContext(a1, "", "fatTotal", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: fatTotal(794) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 798:
                                              if (v14 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailP(798): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 5)
                                              {
                                                v18 = 4;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailP_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: raidBMXFailP(798): Cannot add 4 elements to context";
                                              goto LABEL_2993;
                                            case 799:
                                              if (v14 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailUECC(799): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 5)
                                              {
                                                v18 = 4;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailUECC_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: raidBMXFailUECC(799): Cannot add 4 elements to context";
                                              goto LABEL_2993;
                                            case 804:
                                              if (v14 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailNoSPBX(804): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 5)
                                              {
                                                v18 = 4;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailNoSPBX_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: raidBMXFailNoSPBX(804): Cannot add 4 elements to context";
                                              goto LABEL_2993;
                                            case 806:
                                              if (v14 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailBlank(806): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 5)
                                              {
                                                v18 = 4;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailBlank_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: raidBMXFailBlank(806): Cannot add 4 elements to context";
                                              goto LABEL_2993;
                                            case 809:
                                              if (v14 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailUnsup(809): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 5)
                                              {
                                                v18 = 4;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailUnsup_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: raidBMXFailUnsup(809): Cannot add 4 elements to context";
                                              goto LABEL_2993;
                                            case 811:
                                              if (v14 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailMpSkip(811): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 5)
                                              {
                                                v18 = 4;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailMpSkip_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: raidBMXFailMpSkip(811): Cannot add 4 elements to context";
                                              goto LABEL_2993;
                                            case 812:
                                              if (v14 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailAbort(812): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 5)
                                              {
                                                v18 = 4;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailAbort_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: raidBMXFailAbort(812): Cannot add 4 elements to context";
                                              goto LABEL_2993;
                                            case 813:
                                              if (AddSingleValueToGenericContext(a1, "", "TurboRaidIsEnabled", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: TurboRaidIsEnabled(813) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 814:
                                              if (v14 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXFailOther(814): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 5)
                                              {
                                                v18 = 4;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXFailOther_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: raidBMXFailOther(814): Cannot add 4 elements to context";
                                              goto LABEL_2993;
                                            case 815:
                                              if (v14 != 4)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: raidBMXSuccess(815): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 5)
                                              {
                                                v18 = 4;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "raidBMXSuccess_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: raidBMXSuccess(815): Cannot add 4 elements to context";
                                              goto LABEL_2993;
                                            case 816:
                                              if (AddSingleValueToGenericContext(a1, "", "skinnyBandsExtraDip", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: skinnyBandsExtraDip(816) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 821:
                                              if (AddSingleValueToGenericContext(a1, "", "writeAmp", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: writeAmp(821) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 822:
                                              if (AddSingleValueToGenericContext(a1, "", "ricMaxClogOnlyPages", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: ricMaxClogOnlyPages(822) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 823:
                                              if (v14 != 3)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: readClassifyStatusesHisto(823): (#3) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v12 >> 34)
                                              {
                                                v18 = 3;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "readClassifyStatusesHisto_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: readClassifyStatusesHisto(823): Cannot add 3 elements to context";
                                              goto LABEL_2993;
                                            case 824:
                                              if (v14 != 10)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: readWithAuxStatusesHisto(824): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0xB)
                                              {
                                                v18 = 10;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "readWithAuxStatusesHisto_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: readWithAuxStatusesHisto(824): Cannot add 10 elements to context";
                                              goto LABEL_2993;
                                            case 825:
                                              if (v14 != 10)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: readReconstructStatusesHisto(825): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0xB)
                                              {
                                                v18 = 10;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "readReconstructStatusesHisto_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: readReconstructStatusesHisto(825): Cannot add 10 elements to context";
                                              goto LABEL_2993;
                                            case 826:
                                              if (AddSingleValueToGenericContext(a1, "", "bdrBackupChecks", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: bdrBackupChecks(826) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 827:
                                              if (AddSingleValueToGenericContext(a1, "", "ricExceedClogOnlyPagesTH", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: ricExceedClogOnlyPagesTH(827) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 828:
                                              if (AddSingleValueToGenericContext(a1, "", "numDipFailures", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: numDipFailures(828) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 831:
                                              if (AddSingleValueToGenericContext(a1, "", "prefetchNextRange", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: prefetchNextRange(831) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 862:
                                              if (AddSingleValueToGenericContext(a1, "", "raidSuccessfulSkip", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: raidSuccessfulSkip(862) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 863:
                                              if (AddSingleValueToGenericContext(a1, "", "raidFailedSkip", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: raidFailedSkip(863) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 864:
                                              if (AddSingleValueToGenericContext(a1, "", "raidSkipAttempts", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: raidSkipAttempts(864) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 865:
                                              if (v14 != 25)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: timeOfThrottlingPerLevel(865): (#25) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v12 >> 33 >= 0xD)
                                              {
                                                v18 = 25;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "timeOfThrottlingPerLevel_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: timeOfThrottlingPerLevel(865): Cannot add 25 elements to context";
                                              goto LABEL_2993;
                                            case 866:
                                              if (v14 != 25)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: timeOfThrottlingPerReadLevel(866): (#25) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v12 >> 33 >= 0xD)
                                              {
                                                v18 = 25;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "timeOfThrottlingPerReadLevel_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: timeOfThrottlingPerReadLevel(866): Cannot add 25 elements to context";
                                              goto LABEL_2993;
                                            case 867:
                                              if (v14 != 25)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: timeOfThrottlingPerWriteLevel(867): (#25) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v12 >> 33 >= 0xD)
                                              {
                                                v18 = 25;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "timeOfThrottlingPerWriteLevel_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: timeOfThrottlingPerWriteLevel(867): Cannot add 25 elements to context";
                                              goto LABEL_2993;
                                            case 868:
                                              if (v14 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc_1bc(868): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x21)
                                              {
                                                v18 = 32;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsSlc_1bc_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: dmReasonsSlc_1bc(868): Cannot add 32 elements to context";
                                              goto LABEL_2993;
                                            case 869:
                                              if (v14 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc_1bc(869): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x21)
                                              {
                                                v18 = 32;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsTlc_1bc_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: dmReasonsTlc_1bc(869): Cannot add 32 elements to context";
                                              goto LABEL_2993;
                                            case 870:
                                              if (v14 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc_1bc_he(870): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x21)
                                              {
                                                v18 = 32;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsSlc_1bc_he_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: dmReasonsSlc_1bc_he(870): Cannot add 32 elements to context";
                                              goto LABEL_2993;
                                            case 871:
                                              if (v14 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc_1bc_he(871): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x21)
                                              {
                                                v18 = 32;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsTlc_1bc_he_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: dmReasonsTlc_1bc_he(871): Cannot add 32 elements to context";
                                              goto LABEL_2993;
                                            case 876:
                                              if (v14 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsSlc_mbc(876): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x21)
                                              {
                                                v18 = 32;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsSlc_mbc_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: dmReasonsSlc_mbc(876): Cannot add 32 elements to context";
                                              goto LABEL_2993;
                                            case 877:
                                              if (v14 != 32)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: dmReasonsTlc_mbc(877): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x21)
                                              {
                                                v18 = 32;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "dmReasonsTlc_mbc_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: dmReasonsTlc_mbc(877): Cannot add 32 elements to context";
                                              goto LABEL_2993;
                                            case 883:
                                              if (AddSingleValueToGenericContext(a1, "", "clogEmptyProgramms", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: clogEmptyProgramms(883) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 884:
                                              if (AddSingleValueToGenericContext(a1, "", "oslcHwCloseBand", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: oslcHwCloseBand(884) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 891:
                                              if (v14 != 2)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidSuccessAuxPartition(891): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 3)
                                              {
                                                v18 = 2;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidSuccessAuxPartition_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: turboRaidSuccessAuxPartition(891): Cannot add 2 elements to context";
                                              goto LABEL_2993;
                                            case 892:
                                              if (v14 != 2)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidFailAuxPartition(892): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 3)
                                              {
                                                v18 = 2;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidFailAuxPartition_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: turboRaidFailAuxPartition(892): Cannot add 2 elements to context";
                                              goto LABEL_2993;
                                            case 893:
                                              if (v14 != 2)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidClassifyQualPartition(893): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 3)
                                              {
                                                v18 = 2;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidClassifyQualPartition_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: turboRaidClassifyQualPartition(893): Cannot add 2 elements to context";
                                              goto LABEL_2993;
                                            case 894:
                                              if (v14 != 2)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidClassifyRelPartition(894): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 3)
                                              {
                                                v18 = 2;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidClassifyRelPartition_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: turboRaidClassifyRelPartition(894): Cannot add 2 elements to context";
                                              goto LABEL_2993;
                                            case 895:
                                              if (AddSingleValueToGenericContext(a1, "", "IND_pool_freeMinSilo", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: IND_pool_freeMinSilo(895) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 896:
                                              if (AddSingleValueToGenericContext(a1, "", "autoSweepBlocks", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: autoSweepBlocks(896) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 897:
                                              if (v14 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: wcWrFragSizes(897): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x11)
                                              {
                                                v18 = 16;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "wcWrFragSizes_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: wcWrFragSizes(897): Cannot add 16 elements to context";
                                              goto LABEL_2993;
                                            case 898:
                                              if (v14 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: indStateAcrossGcDidNoL(898): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x11)
                                              {
                                                v18 = 16;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "indStateAcrossGcDidNoL_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: indStateAcrossGcDidNoL(898): Cannot add 16 elements to context";
                                              goto LABEL_2993;
                                            case 899:
                                              if (v14 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: indStateAcrossGcDidL(899): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x11)
                                              {
                                                v18 = 16;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "indStateAcrossGcDidL_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: indStateAcrossGcDidL(899): Cannot add 16 elements to context";
                                              goto LABEL_2993;
                                            case 900:
                                              if (AddSingleValueToGenericContext(a1, "", "turboRaidNoClassifyDueToWasRetire", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: turboRaidNoClassifyDueToWasRetire(900) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 901:
                                              if (AddSingleValueToGenericContext(a1, "", "turboRaidNoClassifyDueToOpenBand", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: turboRaidNoClassifyDueToOpenBand(901) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 902:
                                              if (AddSingleValueToGenericContext(a1, "", "turboRaidNoClassifyDueToQualityBlock", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: turboRaidNoClassifyDueToQualityBlock(902) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 903:
                                              if (AddSingleValueToGenericContext(a1, "", "turboRaidGbbOpenBand", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: turboRaidGbbOpenBand(903) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 904:
                                              if (AddSingleValueToGenericContext(a1, "", "turboRaidGbbShouldRetireOnRefresh", *v8))
                                              {
                                                goto LABEL_162;
                                              }

                                              v17 = "ASPFTLParseBufferToCxt: turboRaidGbbShouldRetireOnRefresh(904) cannot add 1 element to context";
                                              goto LABEL_161;
                                            case 905:
                                              if (v14 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidRelPerBlock(905): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x11)
                                              {
                                                v18 = 16;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidRelPerBlock_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: turboRaidRelPerBlock(905): Cannot add 16 elements to context";
                                              goto LABEL_2993;
                                            case 906:
                                              if (v14 != 16)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidRelBetweenRefreshesPerBlock(906): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x11)
                                              {
                                                v18 = 16;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "turboRaidRelBetweenRefreshesPerBlock_", v8, 8u, v18))
                                              {
                                                goto LABEL_110;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: turboRaidRelBetweenRefreshesPerBlock(906): Cannot add 16 elements to context";
                                              goto LABEL_2993;
                                            default:
                                              if (v12 <= 997)
                                              {
                                                switch(v12)
                                                {
                                                  case 907:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMaxRelBetweenRefreshesPerBlock(907): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMaxRelBetweenRefreshesPerBlock_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidMaxRelBetweenRefreshesPerBlock(907): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 908:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMinRelBetweenRefreshesPerBlock(908): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMinRelBetweenRefreshesPerBlock_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidMinRelBetweenRefreshesPerBlock(908): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 909:
                                                  case 910:
                                                  case 911:
                                                  case 912:
                                                  case 913:
                                                  case 914:
                                                  case 915:
                                                  case 916:
                                                  case 917:
                                                  case 924:
                                                  case 925:
                                                  case 926:
                                                  case 927:
                                                  case 928:
                                                  case 929:
                                                  case 936:
                                                  case 941:
                                                  case 945:
                                                  case 946:
                                                  case 947:
                                                  case 949:
                                                  case 950:
                                                  case 952:
                                                  case 954:
                                                  case 955:
                                                  case 956:
                                                  case 957:
                                                  case 958:
                                                  case 959:
                                                  case 960:
                                                  case 963:
                                                  case 966:
                                                  case 968:
                                                  case 969:
                                                  case 970:
                                                    goto LABEL_2529;
                                                  case 918:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenRel(918): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMaxCyclesBetweenRel_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenRel(918): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 919:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenRel(919): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMinCyclesBetweenRel_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenRel(919): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 920:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidAuxPerBlock(920): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidAuxPerBlock_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidAuxPerBlock(920): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 921:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidAuxBetweenRefreshesPerBlock(921): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidAuxBetweenRefreshesPerBlock_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidAuxBetweenRefreshesPerBlock(921): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 922:
                                                    if (AddSingleValueToGenericContext(a1, "", "turboRaidRelLockMark", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: turboRaidRelLockMark(922) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 923:
                                                    if (AddSingleValueToGenericContext(a1, "", "turboRaidAuxLockMark", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: turboRaidAuxLockMark(923) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 930:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenAux(930): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMaxCyclesBetweenAux_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidMaxCyclesBetweenAux(930): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 931:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenAux(931): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidMinCyclesBetweenAux_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidMinCyclesBetweenAux(931): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 932:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidLastRelPECycles(932): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidLastRelPECycles_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidLastRelPECycles(932): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 933:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidRelQualPECycles(933): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidRelQualPECycles_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidRelQualPECycles(933): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 934:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidLastAuxPECycles(934): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidLastAuxPECycles_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidLastAuxPECycles(934): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 935:
                                                    if (v14 != 16)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: turboRaidAuxQualPECycles(935): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x11)
                                                    {
                                                      v18 = 16;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "turboRaidAuxQualPECycles_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: turboRaidAuxQualPECycles(935): Cannot add 16 elements to context";
                                                    goto LABEL_2993;
                                                  case 937:
                                                    if (AddSingleValueToGenericContext(a1, "", "turboRaidPEFailAfterRel", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: turboRaidPEFailAfterRel(937) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 938:
                                                    if (AddSingleValueToGenericContext(a1, "", "turboRaidPEFailAfterAux", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: turboRaidPEFailAfterAux(938) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 939:
                                                    if (AddSingleValueToGenericContext(a1, "", "dvfmVotesCPU", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: dvfmVotesCPU(939) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 940:
                                                    if (AddSingleValueToGenericContext(a1, "", "dvfmVotesBandwidth", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: dvfmVotesBandwidth(940) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 942:
                                                    if (AddSingleValueToGenericContext(a1, "", "maxSLCEndurance", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: maxSLCEndurance(942) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 943:
                                                    if (AddSingleValueToGenericContext(a1, "", "maxMixedEndurance", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: maxMixedEndurance(943) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 944:
                                                    if (AddSingleValueToGenericContext(a1, "", "maxNativeEndurance", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: maxNativeEndurance(944) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 948:
                                                    if (v14 != 40)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: assertHistory(948): (#40) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x29)
                                                    {
                                                      v18 = 40;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "assertHistory_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: assertHistory(948): Cannot add 40 elements to context";
                                                    goto LABEL_2993;
                                                  case 951:
                                                    if (AddSingleValueToGenericContext(a1, "", "asp3Support", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: asp3Support(951) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 953:
                                                    if (AddSingleValueToGenericContext(a1, "", "numCrossTempRaidUecc", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: numCrossTempRaidUecc(953) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 961:
                                                    if (AddSingleValueToGenericContext(a1, "", "osBuildStr", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: osBuildStr(961) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 962:
                                                    if (AddSingleValueToGenericContext(a1, "", "raidConfig", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: raidConfig(962) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 964:
                                                    if (AddSingleValueToGenericContext(a1, "", "raidBlkParityBands", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: raidBlkParityBands(964) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 965:
                                                    if (AddSingleValueToGenericContext(a1, "", "raidBlkParitySecs", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: raidBlkParitySecs(965) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 967:
                                                    if (v14 != 12)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: indTrimFrags(967): (#12) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0xD)
                                                    {
                                                      v18 = 12;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "indTrimFrags_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: indTrimFrags(967): Cannot add 12 elements to context";
                                                    goto LABEL_2993;
                                                  case 971:
                                                    if (v14 != 12)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: indUsedFrags(971): (#12) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0xD)
                                                    {
                                                      v18 = 12;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "indUsedFrags_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: indUsedFrags(971): Cannot add 12 elements to context";
                                                    goto LABEL_2993;
                                                  default:
                                                    if (v12 != 996)
                                                    {
                                                      if (v12 != 997)
                                                      {
                                                        goto LABEL_2529;
                                                      }

                                                      if ((AddSingleValueToGenericContext(a1, "", "clogFindBlank", *v8) & 1) == 0)
                                                      {
                                                        v17 = "ASPFTLParseBufferToCxt: clogFindBlank(997) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      }

                                                      goto LABEL_162;
                                                    }

                                                    if (AddSingleValueToGenericContext(a1, "", "clogFindFail", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: clogFindFail(996) cannot add 1 element to context";
                                                    break;
                                                }

                                                goto LABEL_161;
                                              }

                                              if (v12 <= 1137)
                                              {
                                                if (v12 > 1039)
                                                {
                                                  if (v12 > 1104)
                                                  {
                                                    if (v12 > 1115)
                                                    {
                                                      if (v12 == 1116)
                                                      {
                                                        if (v14 != 32)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcwamp(1116): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 0x21)
                                                        {
                                                          v18 = 32;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if ((AddMultipleFieldsToGenericContext(a1, "gcwamp_", v8, 8u, v18) & 1) == 0)
                                                        {
                                                          v19 = "ASPFTLParseBufferToCxt: gcwamp(1116): Cannot add 32 elements to context";
                                                          goto LABEL_2993;
                                                        }

                                                        goto LABEL_110;
                                                      }

                                                      if (v12 == 1137)
                                                      {
                                                        if (AddSingleValueToGenericContext(a1, "", "numOfToUnhappySwitches", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: numOfToUnhappySwitches(1137) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (v12 == 1105)
                                                      {
                                                        if (v14 != 14)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostReadSequential(1105): (#14) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 0xF)
                                                        {
                                                          v18 = 14;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if ((AddMultipleFieldsToGenericContext(a1, "hostReadSequential_", v8, 8u, v18) & 1) == 0)
                                                        {
                                                          v19 = "ASPFTLParseBufferToCxt: hostReadSequential(1105): Cannot add 14 elements to context";
                                                          goto LABEL_2993;
                                                        }

                                                        goto LABEL_110;
                                                      }

                                                      if (v12 == 1106)
                                                      {
                                                        if (v14 != 14)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: GCReadSequential(1106): (#14) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 0xF)
                                                        {
                                                          v18 = 14;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if ((AddMultipleFieldsToGenericContext(a1, "GCReadSequential_", v8, 8u, v18) & 1) == 0)
                                                        {
                                                          v19 = "ASPFTLParseBufferToCxt: GCReadSequential(1106): Cannot add 14 elements to context";
                                                          goto LABEL_2993;
                                                        }

                                                        goto LABEL_110;
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v12 <= 1041)
                                                    {
                                                      v23 = v12 >> 37;
                                                      if (v12 == 1040)
                                                      {
                                                        if (v14 != 31)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBinsV2(1040): (#31) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v23)
                                                        {
                                                          v18 = 31;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if ((AddMultipleFieldsToGenericContext(a1, "bandsAgeBinsV2_", v8, 8u, v18) & 1) == 0)
                                                        {
                                                          v19 = "ASPFTLParseBufferToCxt: bandsAgeBinsV2(1040): Cannot add 31 elements to context";
                                                          goto LABEL_2993;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (v14 != 31)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBinsSnapshot(1041): (#31) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v23)
                                                        {
                                                          v18 = 31;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if ((AddMultipleFieldsToGenericContext(a1, "bandsAgeBinsSnapshot_", v8, 8u, v18) & 1) == 0)
                                                        {
                                                          v19 = "ASPFTLParseBufferToCxt: bandsAgeBinsSnapshot(1041): Cannot add 31 elements to context";
                                                          goto LABEL_2993;
                                                        }
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v12 == 1042)
                                                    {
                                                      if (v14 != 15)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsAgeBinsReadSectors(1042): (#15) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                      }

                                                      if (v12 >> 36)
                                                      {
                                                        v18 = 15;
                                                      }

                                                      else
                                                      {
                                                        v18 = v14;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "bandsAgeBinsReadSectors_", v8, 8u, v18) & 1) == 0)
                                                      {
                                                        v19 = "ASPFTLParseBufferToCxt: bandsAgeBinsReadSectors(1042): Cannot add 15 elements to context";
                                                        goto LABEL_2993;
                                                      }

                                                      goto LABEL_110;
                                                    }

                                                    if (v12 == 1080)
                                                    {
                                                      if (AddSingleValueToGenericContext(a1, "", "raidForceClogLoad", *v8))
                                                      {
                                                        goto LABEL_162;
                                                      }

                                                      v17 = "ASPFTLParseBufferToCxt: raidForceClogLoad(1080) cannot add 1 element to context";
                                                      goto LABEL_161;
                                                    }
                                                  }

                                                  goto LABEL_2529;
                                                }

                                                if (v12 > 1002)
                                                {
                                                  if (v12 > 1015)
                                                  {
                                                    if (v12 == 1016)
                                                    {
                                                      if (AddSingleValueToGenericContext(a1, "", "eanEarlyBootNumUeccPages", *v8))
                                                      {
                                                        goto LABEL_162;
                                                      }

                                                      v17 = "ASPFTLParseBufferToCxt: eanEarlyBootNumUeccPages(1016) cannot add 1 element to context";
                                                      goto LABEL_161;
                                                    }

                                                    if (v12 == 1017)
                                                    {
                                                      if (AddSingleValueToGenericContext(a1, "", "eanEarlyBootUeccMultiplane", *v8))
                                                      {
                                                        goto LABEL_162;
                                                      }

                                                      v17 = "ASPFTLParseBufferToCxt: eanEarlyBootUeccMultiplane(1017) cannot add 1 element to context";
                                                      goto LABEL_161;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v12 == 1003)
                                                    {
                                                      if (AddSingleValueToGenericContext(a1, "", "clogReplaySpfError", *v8))
                                                      {
                                                        goto LABEL_162;
                                                      }

                                                      v17 = "ASPFTLParseBufferToCxt: clogReplaySpfError(1003) cannot add 1 element to context";
                                                      goto LABEL_161;
                                                    }

                                                    if (v12 == 1015)
                                                    {
                                                      if (v14 != 4)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: eanEarlyBootUeccPage(1015): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                      }

                                                      if (v14 >= 5)
                                                      {
                                                        v18 = 4;
                                                      }

                                                      else
                                                      {
                                                        v18 = v14;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "eanEarlyBootUeccPage_", v8, 8u, v18) & 1) == 0)
                                                      {
                                                        v19 = "ASPFTLParseBufferToCxt: eanEarlyBootUeccPage(1015): Cannot add 4 elements to context";
                                                        goto LABEL_2993;
                                                      }

                                                      goto LABEL_110;
                                                    }
                                                  }

                                                  goto LABEL_2529;
                                                }

                                                if (v12 <= 1000)
                                                {
                                                  if (v12 == 998)
                                                  {
                                                    if (AddSingleValueToGenericContext(a1, "", "clogFindUnc", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: clogFindUnc(998) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  }

                                                  if (v12 == 999)
                                                  {
                                                    if (AddSingleValueToGenericContext(a1, "", "clogFindUnexpected", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: clogFindUnexpected(999) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  }

                                                  goto LABEL_2529;
                                                }

                                                if (v12 == 1001)
                                                {
                                                  if (v14 != 8)
                                                  {
                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: clogReplayFailReason(1001): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                  }

                                                  if (v14 >= 9)
                                                  {
                                                    v18 = 8;
                                                  }

                                                  else
                                                  {
                                                    v18 = v14;
                                                  }

                                                  if ((AddMultipleFieldsToGenericContext(a1, "clogReplayFailReason_", v8, 8u, v18) & 1) == 0)
                                                  {
                                                    v19 = "ASPFTLParseBufferToCxt: clogReplayFailReason(1001): Cannot add 8 elements to context";
                                                    goto LABEL_2993;
                                                  }

                                                  goto LABEL_110;
                                                }

                                                if ((AddSingleValueToGenericContext(a1, "", "clogReplayTransientError", *v8) & 1) == 0)
                                                {
                                                  v17 = "ASPFTLParseBufferToCxt: clogReplayTransientError(1002) cannot add 1 element to context";
LABEL_161:
                                                  SetAPIErrorMessage(v17, a2, a3, a4, a5, a6, a7, a8, v22);
                                                }

LABEL_162:
                                                v10 = (v10 + 1);
LABEL_163:
                                                v8 += v14;
                                                v11 -= v14;
                                                goto LABEL_2;
                                              }

                                              if (v12 > 1170)
                                              {
                                                if (v12 > 1180)
                                                {
                                                  if (v12 <= 1182)
                                                  {
                                                    if (v12 == 1181)
                                                    {
                                                      if (v14 != 4)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_cur_dw_gc3(1181): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                      }

                                                      if (v14 >= 5)
                                                      {
                                                        v18 = 4;
                                                      }

                                                      else
                                                      {
                                                        v18 = v14;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "gc_cur_dw_gc3_", v8, 8u, v18) & 1) == 0)
                                                      {
                                                        v19 = "ASPFTLParseBufferToCxt: gc_cur_dw_gc3(1181): Cannot add 4 elements to context";
                                                        goto LABEL_2993;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (v14 != 4)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_tot_dw_gc1(1182): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                      }

                                                      if (v14 >= 5)
                                                      {
                                                        v18 = 4;
                                                      }

                                                      else
                                                      {
                                                        v18 = v14;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "gc_tot_dw_gc1_", v8, 8u, v18) & 1) == 0)
                                                      {
                                                        v19 = "ASPFTLParseBufferToCxt: gc_tot_dw_gc1(1182): Cannot add 4 elements to context";
                                                        goto LABEL_2993;
                                                      }
                                                    }

                                                    goto LABEL_110;
                                                  }

                                                  if (v12 == 1183)
                                                  {
                                                    if (v14 != 4)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_tot_dw_gc2(1183): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 5)
                                                    {
                                                      v18 = 4;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if ((AddMultipleFieldsToGenericContext(a1, "gc_tot_dw_gc2_", v8, 8u, v18) & 1) == 0)
                                                    {
                                                      v19 = "ASPFTLParseBufferToCxt: gc_tot_dw_gc2(1183): Cannot add 4 elements to context";
                                                      goto LABEL_2993;
                                                    }

                                                    goto LABEL_110;
                                                  }

                                                  if (v12 == 1184)
                                                  {
                                                    if (AddSingleValueToGenericContext(a1, "", "unhappy_state", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: unhappy_state(1184) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  }
                                                }

                                                else
                                                {
                                                  if (v12 > 1178)
                                                  {
                                                    if (v12 == 1179)
                                                    {
                                                      if (v14 != 4)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_cur_dw_gc1(1179): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                      }

                                                      if (v14 >= 5)
                                                      {
                                                        v18 = 4;
                                                      }

                                                      else
                                                      {
                                                        v18 = v14;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "gc_cur_dw_gc1_", v8, 8u, v18) & 1) == 0)
                                                      {
                                                        v19 = "ASPFTLParseBufferToCxt: gc_cur_dw_gc1(1179): Cannot add 4 elements to context";
                                                        goto LABEL_2993;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (v14 != 4)
                                                      {
                                                        SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_cur_dw_gc2(1180): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                      }

                                                      if (v14 >= 5)
                                                      {
                                                        v18 = 4;
                                                      }

                                                      else
                                                      {
                                                        v18 = v14;
                                                      }

                                                      if ((AddMultipleFieldsToGenericContext(a1, "gc_cur_dw_gc2_", v8, 8u, v18) & 1) == 0)
                                                      {
                                                        v19 = "ASPFTLParseBufferToCxt: gc_cur_dw_gc2(1180): Cannot add 4 elements to context";
                                                        goto LABEL_2993;
                                                      }
                                                    }

                                                    goto LABEL_110;
                                                  }

                                                  if (v12 == 1171)
                                                  {
                                                    if (v14 != 10)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalAge(1171): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0xB)
                                                    {
                                                      v18 = 10;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if ((AddMultipleFieldsToGenericContext(a1, "poDetectEmptySpotRemovalAge_", v8, 8u, v18) & 1) == 0)
                                                    {
                                                      v19 = "ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalAge(1171): Cannot add 10 elements to context";
                                                      goto LABEL_2993;
                                                    }

                                                    goto LABEL_110;
                                                  }

                                                  if (v12 == 1172)
                                                  {
                                                    if (v14 != 3)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectGBBedMostSevereCost(1172): (#3) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v12 >> 34)
                                                    {
                                                      v18 = 3;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if ((AddMultipleFieldsToGenericContext(a1, "poDetectGBBedMostSevereCost_", v8, 8u, v18) & 1) == 0)
                                                    {
                                                      v19 = "ASPFTLParseBufferToCxt: poDetectGBBedMostSevereCost(1172): Cannot add 3 elements to context";
                                                      goto LABEL_2993;
                                                    }

                                                    goto LABEL_110;
                                                  }
                                                }

                                                goto LABEL_2529;
                                              }

                                              if (v12 > 1156)
                                              {
                                                if (v12 > 1167)
                                                {
                                                  if (v12 == 1168)
                                                  {
                                                    if (v14 != 2)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectPERemovalTotalCost(1168): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 3)
                                                    {
                                                      v18 = 2;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if ((AddMultipleFieldsToGenericContext(a1, "poDetectPERemovalTotalCost_", v8, 8u, v18) & 1) == 0)
                                                    {
                                                      v19 = "ASPFTLParseBufferToCxt: poDetectPERemovalTotalCost(1168): Cannot add 2 elements to context";
                                                      goto LABEL_2993;
                                                    }

                                                    goto LABEL_110;
                                                  }

                                                  if (v12 == 1169)
                                                  {
                                                    if (v14 != 2)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalTotalCost(1169): (#2) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 3)
                                                    {
                                                      v18 = 2;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if ((AddMultipleFieldsToGenericContext(a1, "poDetectEmptySpotRemovalTotalCost_", v8, 8u, v18) & 1) == 0)
                                                    {
                                                      v19 = "ASPFTLParseBufferToCxt: poDetectEmptySpotRemovalTotalCost(1169): Cannot add 2 elements to context";
                                                      goto LABEL_2993;
                                                    }

                                                    goto LABEL_110;
                                                  }
                                                }

                                                else
                                                {
                                                  if (v12 == 1157)
                                                  {
                                                    if (AddSingleValueToGenericContext(a1, "", "eanMaxForceROTimeMs", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: eanMaxForceROTimeMs(1157) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  }

                                                  if (v12 == 1158)
                                                  {
                                                    if (AddSingleValueToGenericContext(a1, "", "eanMaxForceRORecoTimeMs", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: eanMaxForceRORecoTimeMs(1158) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  }
                                                }

                                                goto LABEL_2529;
                                              }

                                              if (v12 <= 1147)
                                              {
                                                if (v12 == 1138)
                                                {
                                                  if (AddSingleValueToGenericContext(a1, "", "numOfToHappySwitches", *v8))
                                                  {
                                                    goto LABEL_162;
                                                  }

                                                  v17 = "ASPFTLParseBufferToCxt: numOfToHappySwitches(1138) cannot add 1 element to context";
                                                  goto LABEL_161;
                                                }

                                                if (v12 == 1147)
                                                {
                                                  if (v14 != 24)
                                                  {
                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc12(1147): (#24) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                  }

                                                  if (v14 >= 0x19)
                                                  {
                                                    v18 = 24;
                                                  }

                                                  else
                                                  {
                                                    v18 = v14;
                                                  }

                                                  if ((AddMultipleFieldsToGenericContext(a1, "gc_concurrent_dw_gc12_", v8, 8u, v18) & 1) == 0)
                                                  {
                                                    v19 = "ASPFTLParseBufferToCxt: gc_concurrent_dw_gc12(1147): Cannot add 24 elements to context";
                                                    goto LABEL_2993;
                                                  }

                                                  goto LABEL_110;
                                                }

LABEL_2529:
                                                switch(v12)
                                                {
                                                  case 1185:
                                                    if (AddSingleValueToGenericContext(a1, "", "unhappy_level", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: unhappy_level(1185) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1186:
                                                  case 1187:
                                                  case 1188:
                                                  case 1191:
                                                  case 1192:
                                                  case 1193:
                                                  case 1194:
                                                  case 1195:
                                                  case 1200:
                                                  case 1203:
                                                  case 1204:
                                                  case 1205:
                                                  case 1206:
                                                  case 1207:
                                                  case 1208:
                                                  case 1209:
                                                  case 1210:
                                                  case 1212:
                                                  case 1213:
                                                  case 1214:
                                                  case 1219:
                                                  case 1220:
                                                  case 1235:
                                                  case 1236:
                                                  case 1237:
                                                  case 1238:
                                                  case 1239:
                                                  case 1240:
                                                  case 1242:
                                                  case 1243:
                                                  case 1245:
                                                  case 1247:
                                                  case 1248:
                                                  case 1249:
                                                  case 1250:
                                                  case 1251:
                                                  case 1252:
                                                  case 1253:
                                                  case 1254:
                                                  case 1255:
                                                  case 1256:
                                                  case 1257:
                                                  case 1258:
                                                  case 1259:
                                                  case 1260:
                                                  case 1261:
                                                  case 1262:
                                                  case 1263:
LABEL_2686:
                                                    if (v12 <= 1447)
                                                    {
                                                      switch(v12)
                                                      {
                                                        case 1354:
                                                          if (AddSingleValueToGenericContext(a1, "", "numOfThrottlingLevels", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: numOfThrottlingLevels(1354) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1355:
                                                          if (AddSingleValueToGenericContext(a1, "", "crossTempColdEvict", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: crossTempColdEvict(1355) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1356:
                                                          if (AddSingleValueToGenericContext(a1, "", "crossTempHotEvict", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: crossTempHotEvict(1356) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1357:
                                                          if (AddSingleValueToGenericContext(a1, "", "crossTempColdHotEvict", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: crossTempColdHotEvict(1357) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1358:
                                                          if (v14 != 13)
                                                          {
                                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: tempChangedHisto(1358): (#13) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                          }

                                                          if (v12 >> 33 >= 7)
                                                          {
                                                            v18 = 13;
                                                          }

                                                          else
                                                          {
                                                            v18 = v14;
                                                          }

                                                          if (AddMultipleFieldsToGenericContext(a1, "tempChangedHisto_", v8, 8u, v18))
                                                          {
                                                            goto LABEL_110;
                                                          }

                                                          v19 = "ASPFTLParseBufferToCxt: tempChangedHisto(1358): Cannot add 13 elements to context";
                                                          goto LABEL_2993;
                                                        case 1359:
                                                          if (v14 != 13)
                                                          {
                                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: tempChangedEnterETHisto(1359): (#13) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                          }

                                                          if (v12 >> 33 >= 7)
                                                          {
                                                            v18 = 13;
                                                          }

                                                          else
                                                          {
                                                            v18 = v14;
                                                          }

                                                          if (AddMultipleFieldsToGenericContext(a1, "tempChangedEnterETHisto_", v8, 8u, v18))
                                                          {
                                                            goto LABEL_110;
                                                          }

                                                          v19 = "ASPFTLParseBufferToCxt: tempChangedEnterETHisto(1359): Cannot add 13 elements to context";
                                                          goto LABEL_2993;
                                                        case 1362:
                                                          if (v14 != 20)
                                                          {
                                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcMustReasons(1362): (#20) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                          }

                                                          if (v14 >= 0x15)
                                                          {
                                                            v18 = 20;
                                                          }

                                                          else
                                                          {
                                                            v18 = v14;
                                                          }

                                                          if (AddMultipleFieldsToGenericContext(a1, "gcMustReasons_", v8, 8u, v18))
                                                          {
                                                            goto LABEL_110;
                                                          }

                                                          v19 = "ASPFTLParseBufferToCxt: gcMustReasons(1362): Cannot add 20 elements to context";
                                                          goto LABEL_2993;
                                                        case 1367:
                                                          if (v14 != 32)
                                                          {
                                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: asyncMessageHisto(1367): (#32) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                          }

                                                          if (v14 >= 0x21)
                                                          {
                                                            v18 = 32;
                                                          }

                                                          else
                                                          {
                                                            v18 = v14;
                                                          }

                                                          if (AddMultipleFieldsToGenericContext(a1, "asyncMessageHisto_", v8, 8u, v18))
                                                          {
                                                            goto LABEL_110;
                                                          }

                                                          v19 = "ASPFTLParseBufferToCxt: asyncMessageHisto(1367): Cannot add 32 elements to context";
                                                          goto LABEL_2993;
                                                        case 1368:
                                                          if (AddSingleValueToGenericContext(a1, "", "massScanIgnoredTooFrequent", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: massScanIgnoredTooFrequent(1368) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1369:
                                                          if (v14 != 8)
                                                          {
                                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: realGBBPerDipOfFailingDie(1369): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                          }

                                                          if (v14 >= 9)
                                                          {
                                                            v18 = 8;
                                                          }

                                                          else
                                                          {
                                                            v18 = v14;
                                                          }

                                                          if (AddMultipleFieldsToGenericContext(a1, "realGBBPerDipOfFailingDie_", v8, 8u, v18))
                                                          {
                                                            goto LABEL_110;
                                                          }

                                                          v19 = "ASPFTLParseBufferToCxt: realGBBPerDipOfFailingDie(1369): Cannot add 8 elements to context";
                                                          goto LABEL_2993;
                                                        case 1379:
                                                          if (AddSingleValueToGenericContext(a1, "", "boffOrderedReadBlank", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: boffOrderedReadBlank(1379) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1380:
                                                          if (AddSingleValueToGenericContext(a1, "", "boffOrderedRaidSuccessValidLba", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: boffOrderedRaidSuccessValidLba(1380) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1381:
                                                          if (AddSingleValueToGenericContext(a1, "", "unexpectedRaidFailures", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: unexpectedRaidFailures(1381) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1382:
                                                          if (AddSingleValueToGenericContext(a1, "", "boffOrderedUnexpectedBlankValid", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: boffOrderedUnexpectedBlankValid(1382) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1383:
                                                          if (AddSingleValueToGenericContext(a1, "", "raidExpectedFailPMXReconstructionInternal", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: raidExpectedFailPMXReconstructionInternal(1383) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1384:
                                                          if (AddSingleValueToGenericContext(a1, "", "raidExpectedFailPMXReconstructionHost", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: raidExpectedFailPMXReconstructionHost(1384) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1385:
                                                          if (AddSingleValueToGenericContext(a1, "", "raidExpectedFailBMXReconstructionInternal", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: raidExpectedFailBMXReconstructionInternal(1385) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1386:
                                                          if (AddSingleValueToGenericContext(a1, "", "raidExpectedFailBMXReconstructionHost", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: raidExpectedFailBMXReconstructionHost(1386) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1392:
                                                          if (AddSingleValueToGenericContext(a1, "", "cbdrHPScanHP", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: cbdrHPScanHP(1392) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1393:
                                                          if (AddSingleValueToGenericContext(a1, "", "cbdrMPScanMP", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: cbdrMPScanMP(1393) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1394:
                                                          if (AddSingleValueToGenericContext(a1, "", "cbdrMPScanHP", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: cbdrMPScanHP(1394) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1401:
                                                          if (AddSingleValueToGenericContext(a1, "", "ldefragFailedMemBalancer", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: ldefragFailedMemBalancer(1401) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1409:
                                                          if (AddSingleValueToGenericContext(a1, "", "BP_readThrottleEngagedCnt", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: BP_readThrottleEngagedCnt(1409) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        case 1410:
                                                          if (AddSingleValueToGenericContext(a1, "", "BP_readThrottleActualSize", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: BP_readThrottleActualSize(1410) cannot add 1 element to context";
                                                          goto LABEL_161;
                                                        default:
                                                          goto LABEL_2987;
                                                      }
                                                    }

                                                    if (v12 > 1535)
                                                    {
                                                      if (v12 > 1542)
                                                      {
                                                        if (v12 <= 1544)
                                                        {
                                                          if (v12 == 1543)
                                                          {
                                                            if (v14 != 10)
                                                            {
                                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowNoDIPingIntervals(1543): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                            }

                                                            if (v14 >= 0xB)
                                                            {
                                                              v18 = 10;
                                                            }

                                                            else
                                                            {
                                                              v18 = v14;
                                                            }

                                                            if ((AddMultipleFieldsToGenericContext(a1, "istkLowNoDIPingIntervals_", v8, 8u, v18) & 1) == 0)
                                                            {
                                                              v19 = "ASPFTLParseBufferToCxt: istkLowNoDIPingIntervals(1543): Cannot add 10 elements to context";
                                                              goto LABEL_2993;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            if (v14 != 10)
                                                            {
                                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowNoSUIPingIntervals(1544): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                            }

                                                            if (v14 >= 0xB)
                                                            {
                                                              v18 = 10;
                                                            }

                                                            else
                                                            {
                                                              v18 = v14;
                                                            }

                                                            if ((AddMultipleFieldsToGenericContext(a1, "istkLowNoSUIPingIntervals_", v8, 8u, v18) & 1) == 0)
                                                            {
                                                              v19 = "ASPFTLParseBufferToCxt: istkLowNoSUIPingIntervals(1544): Cannot add 10 elements to context";
                                                              goto LABEL_2993;
                                                            }
                                                          }

                                                          goto LABEL_110;
                                                        }

                                                        if (v12 == 1545)
                                                        {
                                                          if (v14 != 6)
                                                          {
                                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowAfterMedIntervals(1545): (#6) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                          }

                                                          if (v14 >= 7)
                                                          {
                                                            v18 = 6;
                                                          }

                                                          else
                                                          {
                                                            v18 = v14;
                                                          }

                                                          if ((AddMultipleFieldsToGenericContext(a1, "istkLowAfterMedIntervals_", v8, 8u, v18) & 1) == 0)
                                                          {
                                                            v19 = "ASPFTLParseBufferToCxt: istkLowAfterMedIntervals(1545): Cannot add 6 elements to context";
                                                            goto LABEL_2993;
                                                          }

                                                          goto LABEL_110;
                                                        }

                                                        if (v12 == 1547)
                                                        {
                                                          if (v14 != 5)
                                                          {
                                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkHWBetweenMed(1547): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                          }

                                                          if (v12 >> 33 >= 3)
                                                          {
                                                            v18 = 5;
                                                          }

                                                          else
                                                          {
                                                            v18 = v14;
                                                          }

                                                          if ((AddMultipleFieldsToGenericContext(a1, "istkHWBetweenMed_", v8, 8u, v18) & 1) == 0)
                                                          {
                                                            v19 = "ASPFTLParseBufferToCxt: istkHWBetweenMed(1547): Cannot add 5 elements to context";
                                                            goto LABEL_2993;
                                                          }

                                                          goto LABEL_110;
                                                        }

                                                        if (v12 != 1570)
                                                        {
                                                          goto LABEL_2987;
                                                        }

                                                        if (AddSingleValueToGenericContext(a1, "", "uptimeSeconds", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: uptimeSeconds(1570) cannot add 1 element to context";
                                                      }

                                                      else if (v12 <= 1537)
                                                      {
                                                        if (v12 == 1536)
                                                        {
                                                          if (AddSingleValueToGenericContext(a1, "", "istkLowPings", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: istkLowPings(1536) cannot add 1 element to context";
                                                        }

                                                        else
                                                        {
                                                          if (AddSingleValueToGenericContext(a1, "", "istkLowNoDIPings", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: istkLowNoDIPings(1537) cannot add 1 element to context";
                                                        }
                                                      }

                                                      else
                                                      {
                                                        switch(v12)
                                                        {
                                                          case 0x602:
                                                            if (AddSingleValueToGenericContext(a1, "", "istkLowNoSUIPings", *v8))
                                                            {
                                                              goto LABEL_162;
                                                            }

                                                            v17 = "ASPFTLParseBufferToCxt: istkLowNoSUIPings(1538) cannot add 1 element to context";
                                                            break;
                                                          case 0x603:
                                                            if (AddSingleValueToGenericContext(a1, "", "istkMedPings", *v8))
                                                            {
                                                              goto LABEL_162;
                                                            }

                                                            v17 = "ASPFTLParseBufferToCxt: istkMedPings(1539) cannot add 1 element to context";
                                                            break;
                                                          case 0x604:
                                                            if (AddSingleValueToGenericContext(a1, "", "istkHighPings", *v8))
                                                            {
                                                              goto LABEL_162;
                                                            }

                                                            v17 = "ASPFTLParseBufferToCxt: istkHighPings(1540) cannot add 1 element to context";
                                                            break;
                                                          default:
                                                            goto LABEL_2987;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if (v12 > 1462)
                                                      {
                                                        if (v12 > 1532)
                                                        {
                                                          if (v12 == 1533)
                                                          {
                                                            if (v14 != 12)
                                                            {
                                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkLowPingIntervals(1533): (#12) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                            }

                                                            if (v14 >= 0xD)
                                                            {
                                                              v18 = 12;
                                                            }

                                                            else
                                                            {
                                                              v18 = v14;
                                                            }

                                                            if ((AddMultipleFieldsToGenericContext(a1, "istkLowPingIntervals_", v8, 8u, v18) & 1) == 0)
                                                            {
                                                              v19 = "ASPFTLParseBufferToCxt: istkLowPingIntervals(1533): Cannot add 12 elements to context";
                                                              goto LABEL_2993;
                                                            }
                                                          }

                                                          else if (v12 == 1534)
                                                          {
                                                            if (v14 != 10)
                                                            {
                                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkMedPingIntervals(1534): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                            }

                                                            if (v14 >= 0xB)
                                                            {
                                                              v18 = 10;
                                                            }

                                                            else
                                                            {
                                                              v18 = v14;
                                                            }

                                                            if ((AddMultipleFieldsToGenericContext(a1, "istkMedPingIntervals_", v8, 8u, v18) & 1) == 0)
                                                            {
                                                              v19 = "ASPFTLParseBufferToCxt: istkMedPingIntervals(1534): Cannot add 10 elements to context";
                                                              goto LABEL_2993;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            if (v14 != 10)
                                                            {
                                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: istkHighPingIntervals(1535): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                            }

                                                            if (v14 >= 0xB)
                                                            {
                                                              v18 = 10;
                                                            }

                                                            else
                                                            {
                                                              v18 = v14;
                                                            }

                                                            if ((AddMultipleFieldsToGenericContext(a1, "istkHighPingIntervals_", v8, 8u, v18) & 1) == 0)
                                                            {
                                                              v19 = "ASPFTLParseBufferToCxt: istkHighPingIntervals(1535): Cannot add 10 elements to context";
                                                              goto LABEL_2993;
                                                            }
                                                          }

                                                          goto LABEL_110;
                                                        }

                                                        if (v12 == 1463)
                                                        {
                                                          if (v14 != 6)
                                                          {
                                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: nandReadsByMode(1463): (#6) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                          }

                                                          if (v14 >= 7)
                                                          {
                                                            v18 = 6;
                                                          }

                                                          else
                                                          {
                                                            v18 = v14;
                                                          }

                                                          if ((AddMultipleFieldsToGenericContext(a1, "nandReadsByMode_", v8, 8u, v18) & 1) == 0)
                                                          {
                                                            v19 = "ASPFTLParseBufferToCxt: nandReadsByMode(1463): Cannot add 6 elements to context";
                                                            goto LABEL_2993;
                                                          }

                                                          goto LABEL_110;
                                                        }

                                                        if (v12 == 1494)
                                                        {
                                                          if (v14 != 20)
                                                          {
                                                            SetAPIErrorMessage("ASPFTLParseBufferToCxt: throttlingSecPerTTPerMW(1494): (#20) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                          }

                                                          if (v14 >= 0x15)
                                                          {
                                                            v18 = 20;
                                                          }

                                                          else
                                                          {
                                                            v18 = v14;
                                                          }

                                                          if ((AddMultipleFieldsToGenericContext(a1, "throttlingSecPerTTPerMW_", v8, 8u, v18) & 1) == 0)
                                                          {
                                                            v19 = "ASPFTLParseBufferToCxt: throttlingSecPerTTPerMW(1494): Cannot add 20 elements to context";
                                                            goto LABEL_2993;
                                                          }

                                                          goto LABEL_110;
                                                        }

                                                        goto LABEL_2987;
                                                      }

                                                      if (v12 <= 1449)
                                                      {
                                                        if (v12 == 1448)
                                                        {
                                                          if (AddSingleValueToGenericContext(a1, "", "deviceTempMaxValue", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: deviceTempMaxValue(1448) cannot add 1 element to context";
                                                        }

                                                        else
                                                        {
                                                          if (AddSingleValueToGenericContext(a1, "", "deviceTempHighValue", *v8))
                                                          {
                                                            goto LABEL_162;
                                                          }

                                                          v17 = "ASPFTLParseBufferToCxt: deviceTempHighValue(1449) cannot add 1 element to context";
                                                        }
                                                      }

                                                      else
                                                      {
                                                        switch(v12)
                                                        {
                                                          case 0x5AA:
                                                            if (AddSingleValueToGenericContext(a1, "", "deviceTempLowValue", *v8))
                                                            {
                                                              goto LABEL_162;
                                                            }

                                                            v17 = "ASPFTLParseBufferToCxt: deviceTempLowValue(1450) cannot add 1 element to context";
                                                            break;
                                                          case 0x5AC:
                                                            if (AddSingleValueToGenericContext(a1, "", "selfPanicEnabled", *v8))
                                                            {
                                                              goto LABEL_162;
                                                            }

                                                            v17 = "ASPFTLParseBufferToCxt: selfPanicEnabled(1452) cannot add 1 element to context";
                                                            break;
                                                          case 0x5B6:
                                                            if (v14 != 6)
                                                            {
                                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt: nandWritesByMode(1462): (#6) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                            }

                                                            if (v14 >= 7)
                                                            {
                                                              v18 = 6;
                                                            }

                                                            else
                                                            {
                                                              v18 = v14;
                                                            }

                                                            if ((AddMultipleFieldsToGenericContext(a1, "nandWritesByMode_", v8, 8u, v18) & 1) == 0)
                                                            {
                                                              v19 = "ASPFTLParseBufferToCxt: nandWritesByMode(1462): Cannot add 6 elements to context";
                                                              goto LABEL_2993;
                                                            }

                                                            goto LABEL_110;
                                                          default:
LABEL_2987:
                                                            if (v12 >> 33)
                                                            {
                                                              snprintf(__str, 0x20uLL, "Stat_%d_");
                                                            }

                                                            else
                                                            {
                                                              snprintf(__str, 0x20uLL, "Stat_%d");
                                                            }

                                                            if ((AddMultipleFieldsToGenericContext(a1, __str, v8, 8u, v14) & 1) == 0)
                                                            {
                                                              SetAPIErrorMessage("ASPFTLParseBufferToCxt %d: Cannot add %d elements to context", a2, a3, a4, a5, a6, a7, a8, v12);
                                                              goto LABEL_2994;
                                                            }

                                                            v10 = (v10 + v14);
                                                            goto LABEL_163;
                                                        }
                                                      }
                                                    }

                                                    break;
                                                  case 1189:
                                                    if (AddSingleValueToGenericContext(a1, "", "lastLbaFormatTime", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: lastLbaFormatTime(1189) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1190:
                                                    if (v14 != 11)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: powerDownTime(1190): (#11) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v12 >> 34 >= 3)
                                                    {
                                                      v18 = 11;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "powerDownTime_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: powerDownTime(1190): Cannot add 11 elements to context";
                                                    goto LABEL_2993;
                                                  case 1196:
                                                    if (v14 != 5)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectGBBedTotalCost(1196): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v12 >> 33 >= 3)
                                                    {
                                                      v18 = 5;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "poDetectGBBedTotalCost_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: poDetectGBBedTotalCost(1196): Cannot add 5 elements to context";
                                                    goto LABEL_2993;
                                                  case 1197:
                                                    if (v14 != 10)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectGBBedAge(1197): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0xB)
                                                    {
                                                      v18 = 10;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "poDetectGBBedAge_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: poDetectGBBedAge(1197): Cannot add 10 elements to context";
                                                    goto LABEL_2993;
                                                  case 1198:
                                                    if (v14 != 3)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: poDetectPERemovalMostSevereCost(1198): (#3) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v12 >> 34)
                                                    {
                                                      v18 = 3;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "poDetectPERemovalMostSevereCost_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: poDetectPERemovalMostSevereCost(1198): Cannot add 3 elements to context";
                                                    goto LABEL_2993;
                                                  case 1199:
                                                    if (AddSingleValueToGenericContext(a1, "", "poDetectCurrentSize", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: poDetectCurrentSize(1199) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1201:
                                                    if (v14 != 4)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcVerticalSuccssfulAlignments(1201): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 5)
                                                    {
                                                      v18 = 4;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "gcVerticalSuccssfulAlignments_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: gcVerticalSuccssfulAlignments(1201): Cannot add 4 elements to context";
                                                    goto LABEL_2993;
                                                  case 1202:
                                                    if (v14 != 4)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: gcVerticalNoAlignmentDueToMissingSegs(1202): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 5)
                                                    {
                                                      v18 = 4;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "gcVerticalNoAlignmentDueToMissingSegs_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: gcVerticalNoAlignmentDueToMissingSegs(1202): Cannot add 4 elements to context";
                                                    goto LABEL_2993;
                                                  case 1211:
                                                    if (v14 != 24)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: forcedAllocationSmallEraseQ(1211): (#24) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x19)
                                                    {
                                                      v18 = 24;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "forcedAllocationSmallEraseQ_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: forcedAllocationSmallEraseQ(1211): Cannot add 24 elements to context";
                                                    goto LABEL_2993;
                                                  case 1215:
                                                    if (v14 != 5)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: hostWritesPerThrottleZone(1215): (#5) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v12 >> 33 >= 3)
                                                    {
                                                      v18 = 5;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "hostWritesPerThrottleZone_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: hostWritesPerThrottleZone(1215): Cannot add 5 elements to context";
                                                    goto LABEL_2993;
                                                  case 1216:
                                                    if (v14 != 24)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: tlcWLPerDipAvgPEC(1216): (#24) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x19)
                                                    {
                                                      v18 = 24;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "tlcWLPerDipAvgPEC_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: tlcWLPerDipAvgPEC(1216): Cannot add 24 elements to context";
                                                    goto LABEL_2993;
                                                  case 1217:
                                                    if (v14 != 24)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: tlcWLPerDipMaxPEC(1217): (#24) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x19)
                                                    {
                                                      v18 = 24;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "tlcWLPerDipMaxPEC_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: tlcWLPerDipMaxPEC(1217): Cannot add 24 elements to context";
                                                    goto LABEL_2993;
                                                  case 1218:
                                                    if (v14 != 24)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: tlcWLPerDipMinPEC(1218): (#24) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x19)
                                                    {
                                                      v18 = 24;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "tlcWLPerDipMinPEC_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: tlcWLPerDipMinPEC(1218): Cannot add 24 elements to context";
                                                    goto LABEL_2993;
                                                  case 1221:
                                                    if (AddSingleValueToGenericContext(a1, "", "RD_openBandEvictBlocks", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: RD_openBandEvictBlocks(1221) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1222:
                                                    if (AddSingleValueToGenericContext(a1, "", "RD_closedBandEvictBlocks", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: RD_closedBandEvictBlocks(1222) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1223:
                                                    if (v14 != 10)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: RD_closedBlocksTHHist(1223): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0xB)
                                                    {
                                                      v18 = 10;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "RD_closedBlocksTHHist_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: RD_closedBlocksTHHist(1223): Cannot add 10 elements to context";
                                                    goto LABEL_2993;
                                                  case 1224:
                                                    if (v14 != 20)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: apfsValidLbaOvershoot(1224): (#20) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0x15)
                                                    {
                                                      v18 = 20;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "apfsValidLbaOvershoot_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: apfsValidLbaOvershoot(1224): Cannot add 20 elements to context";
                                                    goto LABEL_2993;
                                                  case 1225:
                                                    if (AddSingleValueToGenericContext(a1, "", "HUPolicySwitchPeMinSlc", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: HUPolicySwitchPeMinSlc(1225) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1226:
                                                    if (AddSingleValueToGenericContext(a1, "", "HUPolicySwitchPeInt", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: HUPolicySwitchPeInt(1226) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1227:
                                                    if (AddSingleValueToGenericContext(a1, "", "HUPolicySwitchPeGap", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: HUPolicySwitchPeGap(1227) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1228:
                                                    if (v14 != 6)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: HUPolicyWidthDown(1228): (#6) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 7)
                                                    {
                                                      v18 = 6;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "HUPolicyWidthDown_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: HUPolicyWidthDown(1228): Cannot add 6 elements to context";
                                                    goto LABEL_2993;
                                                  case 1229:
                                                    if (v14 != 6)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: HUPolicyWidthUp(1229): (#6) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 7)
                                                    {
                                                      v18 = 6;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "HUPolicyWidthUp_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: HUPolicyWidthUp(1229): Cannot add 6 elements to context";
                                                    goto LABEL_2993;
                                                  case 1230:
                                                    if (AddSingleValueToGenericContext(a1, "", "HUPolicyPrevPeSlc", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: HUPolicyPrevPeSlc(1230) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1231:
                                                    if (AddSingleValueToGenericContext(a1, "", "HUPolicyPrevPeTlc", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: HUPolicyPrevPeTlc(1231) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1232:
                                                    if (AddSingleValueToGenericContext(a1, "", "eanFastSize", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: eanFastSize(1232) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1233:
                                                    if (AddSingleValueToGenericContext(a1, "", "eanNumSlcEvictions", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: eanNumSlcEvictions(1233) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1234:
                                                    if (AddSingleValueToGenericContext(a1, "", "eanNumForcedCompress", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: eanNumForcedCompress(1234) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1241:
                                                    if (v14 != 10)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: s2rTimeHisto(1241): (#10) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 0xB)
                                                    {
                                                      v18 = 10;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "s2rTimeHisto_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: s2rTimeHisto(1241): Cannot add 10 elements to context";
                                                    goto LABEL_2993;
                                                  case 1244:
                                                    if (AddSingleValueToGenericContext(a1, "", "calendarTimeWentBackward", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: calendarTimeWentBackward(1244) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  case 1246:
                                                    if (v14 != 8)
                                                    {
                                                      SetAPIErrorMessage("ASPFTLParseBufferToCxt: bandsUeccCrossTempHisto(1246): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                    }

                                                    if (v14 >= 9)
                                                    {
                                                      v18 = 8;
                                                    }

                                                    else
                                                    {
                                                      v18 = v14;
                                                    }

                                                    if (AddMultipleFieldsToGenericContext(a1, "bandsUeccCrossTempHisto_", v8, 8u, v18))
                                                    {
                                                      goto LABEL_110;
                                                    }

                                                    v19 = "ASPFTLParseBufferToCxt: bandsUeccCrossTempHisto(1246): Cannot add 8 elements to context";
                                                    goto LABEL_2993;
                                                  case 1264:
                                                    if (AddSingleValueToGenericContext(a1, "", "numRefreshOnErrNandRefreshPerfOpt", *v8))
                                                    {
                                                      goto LABEL_162;
                                                    }

                                                    v17 = "ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshPerfOpt(1264) cannot add 1 element to context";
                                                    goto LABEL_161;
                                                  default:
                                                    switch(v12)
                                                    {
                                                      case 1271:
                                                        if (AddSingleValueToGenericContext(a1, "", "deviceTempMax", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: deviceTempMax(1271) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1272:
                                                        if (AddSingleValueToGenericContext(a1, "", "deviceTempHigh", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: deviceTempHigh(1272) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1273:
                                                        if (AddSingleValueToGenericContext(a1, "", "deviceTempLow", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: deviceTempLow(1273) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1282:
                                                        if (AddSingleValueToGenericContext(a1, "", "cbdrScanHP", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: cbdrScanHP(1282) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1283:
                                                        if (AddSingleValueToGenericContext(a1, "", "cbdrScanMP", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: cbdrScanMP(1283) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1285:
                                                        if (AddSingleValueToGenericContext(a1, "", "bitsPerCell", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: bitsPerCell(1285) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1289:
                                                        if (AddSingleValueToGenericContext(a1, "", "numRefreshOnErrNandRefreshPerfOptOpen", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: numRefreshOnErrNandRefreshPerfOptOpen(1289) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1293:
                                                        if (v14 != 16)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryTime(1293): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 0x11)
                                                        {
                                                          v18 = 16;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if (AddMultipleFieldsToGenericContext(a1, "bpZone2EntryTime_", v8, 8u, v18))
                                                        {
                                                          goto LABEL_110;
                                                        }

                                                        v19 = "ASPFTLParseBufferToCxt: bpZone2EntryTime(1293): Cannot add 16 elements to context";
                                                        goto LABEL_2993;
                                                      case 1294:
                                                        if (v14 != 16)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitTime(1294): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 0x11)
                                                        {
                                                          v18 = 16;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if (AddMultipleFieldsToGenericContext(a1, "bpZone2ExitTime_", v8, 8u, v18))
                                                        {
                                                          goto LABEL_110;
                                                        }

                                                        v19 = "ASPFTLParseBufferToCxt: bpZone2ExitTime(1294): Cannot add 16 elements to context";
                                                        goto LABEL_2993;
                                                      case 1295:
                                                        if (v14 != 8)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpHostChokeTime(1295): (#8) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 9)
                                                        {
                                                          v18 = 8;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if (AddMultipleFieldsToGenericContext(a1, "bpHostChokeTime_", v8, 8u, v18))
                                                        {
                                                          goto LABEL_110;
                                                        }

                                                        v19 = "ASPFTLParseBufferToCxt: bpHostChokeTime(1295): Cannot add 8 elements to context";
                                                        goto LABEL_2993;
                                                      case 1296:
                                                        if (v14 != 16)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryHW(1296): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 0x11)
                                                        {
                                                          v18 = 16;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if (AddMultipleFieldsToGenericContext(a1, "bpZone2EntryHW_", v8, 8u, v18))
                                                        {
                                                          goto LABEL_110;
                                                        }

                                                        v19 = "ASPFTLParseBufferToCxt: bpZone2EntryHW(1296): Cannot add 16 elements to context";
                                                        goto LABEL_2993;
                                                      case 1298:
                                                        if (v14 != 16)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitHW(1298): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 0x11)
                                                        {
                                                          v18 = 16;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if (AddMultipleFieldsToGenericContext(a1, "bpZone2ExitHW_", v8, 8u, v18))
                                                        {
                                                          goto LABEL_110;
                                                        }

                                                        v19 = "ASPFTLParseBufferToCxt: bpZone2ExitHW(1298): Cannot add 16 elements to context";
                                                        goto LABEL_2993;
                                                      case 1302:
                                                        if (v14 != 16)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryHostTP(1302): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 0x11)
                                                        {
                                                          v18 = 16;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if (AddMultipleFieldsToGenericContext(a1, "bpZone2EntryHostTP_", v8, 8u, v18))
                                                        {
                                                          goto LABEL_110;
                                                        }

                                                        v19 = "ASPFTLParseBufferToCxt: bpZone2EntryHostTP(1302): Cannot add 16 elements to context";
                                                        goto LABEL_2993;
                                                      case 1303:
                                                        if (v14 != 16)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2EntryGCTP(1303): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 0x11)
                                                        {
                                                          v18 = 16;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if (AddMultipleFieldsToGenericContext(a1, "bpZone2EntryGCTP_", v8, 8u, v18))
                                                        {
                                                          goto LABEL_110;
                                                        }

                                                        v19 = "ASPFTLParseBufferToCxt: bpZone2EntryGCTP(1303): Cannot add 16 elements to context";
                                                        goto LABEL_2993;
                                                      case 1304:
                                                        if (v14 != 16)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitHostTP(1304): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 0x11)
                                                        {
                                                          v18 = 16;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if (AddMultipleFieldsToGenericContext(a1, "bpZone2ExitHostTP_", v8, 8u, v18))
                                                        {
                                                          goto LABEL_110;
                                                        }

                                                        v19 = "ASPFTLParseBufferToCxt: bpZone2ExitHostTP(1304): Cannot add 16 elements to context";
                                                        goto LABEL_2993;
                                                      case 1305:
                                                        if (v14 != 16)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: bpZone2ExitGCTP(1305): (#16) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 0x11)
                                                        {
                                                          v18 = 16;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if (AddMultipleFieldsToGenericContext(a1, "bpZone2ExitGCTP_", v8, 8u, v18))
                                                        {
                                                          goto LABEL_110;
                                                        }

                                                        v19 = "ASPFTLParseBufferToCxt: bpZone2ExitGCTP(1305): Cannot add 16 elements to context";
                                                        goto LABEL_2993;
                                                      case 1323:
                                                        if (AddSingleValueToGenericContext(a1, "", "prefetchNofHits", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: prefetchNofHits(1323) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1326:
                                                        if (AddSingleValueToGenericContext(a1, "", "massScanFullRounds", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: massScanFullRounds(1326) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1327:
                                                        if (AddSingleValueToGenericContext(a1, "", "massScanEarlyExits", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: massScanEarlyExits(1327) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1328:
                                                        if (AddSingleValueToGenericContext(a1, "", "massScanMspFullScanRequests", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: massScanMspFullScanRequests(1328) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1329:
                                                        if (AddSingleValueToGenericContext(a1, "", "massScanMspEarlyExitRequests", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: massScanMspEarlyExitRequests(1329) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1333:
                                                        if (AddSingleValueToGenericContext(a1, "", "gcBoffOrderedRecoverableErrorGbbs", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: gcBoffOrderedRecoverableErrorGbbs(1333) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1334:
                                                        if (AddSingleValueToGenericContext(a1, "", "gcBoffOrderedUnrecoverableErrorGbbs", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: gcBoffOrderedUnrecoverableErrorGbbs(1334) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1335:
                                                        if (AddSingleValueToGenericContext(a1, "", "gcBoffOrderedBandOrphansNumBands", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: gcBoffOrderedBandOrphansNumBands(1335) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1336:
                                                        if (AddSingleValueToGenericContext(a1, "", "gcBoffOrderedBandOrphansNumSectors", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: gcBoffOrderedBandOrphansNumSectors(1336) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1337:
                                                        if (AddSingleValueToGenericContext(a1, "", "gcBoffOrderedDefragEvents", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: gcBoffOrderedDefragEvents(1337) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1338:
                                                        if (AddSingleValueToGenericContext(a1, "", "gcBoffOrderedDefragIterations", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: gcBoffOrderedDefragIterations(1338) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1339:
                                                        if (AddSingleValueToGenericContext(a1, "", "gcBoffOrderedDefragSectors", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: gcBoffOrderedDefragSectors(1339) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1344:
                                                        if (v14 != 4)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: unhappyWideGC1(1344): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 5)
                                                        {
                                                          v18 = 4;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if (AddMultipleFieldsToGenericContext(a1, "unhappyWideGC1_", v8, 8u, v18))
                                                        {
                                                          goto LABEL_110;
                                                        }

                                                        v19 = "ASPFTLParseBufferToCxt: unhappyWideGC1(1344): Cannot add 4 elements to context";
                                                        goto LABEL_2993;
                                                      case 1345:
                                                        if (v14 != 4)
                                                        {
                                                          SetAPIErrorMessage("ASPFTLParseBufferToCxt: unhappyVertGC(1345): (#4) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                        }

                                                        if (v14 >= 5)
                                                        {
                                                          v18 = 4;
                                                        }

                                                        else
                                                        {
                                                          v18 = v14;
                                                        }

                                                        if (AddMultipleFieldsToGenericContext(a1, "unhappyVertGC_", v8, 8u, v18))
                                                        {
                                                          goto LABEL_110;
                                                        }

                                                        v19 = "ASPFTLParseBufferToCxt: unhappyVertGC(1345): Cannot add 4 elements to context";
                                                        goto LABEL_2993;
                                                      case 1348:
                                                        if (AddSingleValueToGenericContext(a1, "", "thermalSelfThrottlingSupported", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: thermalSelfThrottlingSupported(1348) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      case 1349:
                                                        if (AddSingleValueToGenericContext(a1, "", "thermalSelfThrottlingEnabled", *v8))
                                                        {
                                                          goto LABEL_162;
                                                        }

                                                        v17 = "ASPFTLParseBufferToCxt: thermalSelfThrottlingEnabled(1349) cannot add 1 element to context";
                                                        goto LABEL_161;
                                                      default:
                                                        goto LABEL_2686;
                                                    }
                                                }

                                                goto LABEL_161;
                                              }

                                              if (v12 != 1148)
                                              {
                                                if (v12 == 1149)
                                                {
                                                  if (v14 != 24)
                                                  {
                                                    SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc2(1149): (#24) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                                  }

                                                  if (v14 >= 0x19)
                                                  {
                                                    v18 = 24;
                                                  }

                                                  else
                                                  {
                                                    v18 = v14;
                                                  }

                                                  if ((AddMultipleFieldsToGenericContext(a1, "gc_concurrent_dw_gc2_", v8, 8u, v18) & 1) == 0)
                                                  {
                                                    v19 = "ASPFTLParseBufferToCxt: gc_concurrent_dw_gc2(1149): Cannot add 24 elements to context";
                                                    goto LABEL_2993;
                                                  }

                                                  goto LABEL_110;
                                                }

                                                goto LABEL_2529;
                                              }

                                              if (v14 != 24)
                                              {
                                                SetAPIErrorMessage("ASPFTLParseBufferToCxt: gc_concurrent_dw_gc1(1148): (#24) cfg elements != (%d) buffer elements", a2, a3, a4, a5, a6, a7, a8, v14);
                                              }

                                              if (v14 >= 0x19)
                                              {
                                                v18 = 24;
                                              }

                                              else
                                              {
                                                v18 = v14;
                                              }

                                              if (AddMultipleFieldsToGenericContext(a1, "gc_concurrent_dw_gc1_", v8, 8u, v18))
                                              {
LABEL_110:
                                                v10 = v18 + v10;
                                                goto LABEL_163;
                                              }

                                              v19 = "ASPFTLParseBufferToCxt: gc_concurrent_dw_gc1(1148): Cannot add 24 elements to context";
LABEL_2993:
                                              SetAPIErrorMessage(v19, a2, a3, a4, a5, a6, a7, a8, v22);
LABEL_2994:
                                              v20 = *MEMORY[0x277D85DE8];
                                              return v10;
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