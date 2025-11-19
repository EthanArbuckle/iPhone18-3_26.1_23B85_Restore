uint64_t AddMultipleFieldsToGenericContext(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = 1;
  if (a4 && a5)
  {
    if (a5 == 1)
    {
      if (a4 <= 8)
      {
        __memmove_chk();
        return AddSingleValueToGenericContext(a1, &unk_10004A471, a2, 0);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if (a4 <= 8)
        {
          __memmove_chk();
          snprintf(__str, 0x64uLL, "%d", v10);
          __str[100] = 0;
          v5 = AddSingleValueToGenericContext(a1, a2, __str, 0) & v5;
        }

        else
        {
          v5 = 0;
        }

        v10 = ++v11;
      }

      while (v11 < a5);
    }
  }

  return v5;
}

uint64_t ASPFTLParseStatKeyBufferToCxt(uint64_t a1, unint64_t *a2, unsigned int a3)
{
  v5 = 0;
  v6 = a3 >> 3;
  *__str = 0u;
  v22 = 0u;
LABEL_2:
  v7 = -v6;
  while (v7)
  {
    v9 = *a2++;
    v8 = v9;
    ++v7;
    v10 = HIDWORD(v9);
    if (HIDWORD(v9))
    {
      if (v8 != 0xFFFF && v8 <= 0x30000000 && -v7 >= v10)
      {
        if (v8 >> 33)
        {
          snprintf(__str, 0x20uLL, "Stat_%d_");
        }

        else
        {
          snprintf(__str, 0x20uLL, "Stat_%d");
        }

        if (AddMultipleFieldsToGenericContext(a1, __str, a2, 8u, v10))
        {
          v5 = (v5 + v10);
          a2 += v10;
          v6 = -v7 - v10;
          goto LABEL_2;
        }

        SetAPIErrorMessage("ASPFTLParseBufferToCxt %d: Cannot add %d elements to context", v13, v14, v15, v16, v17, v18, v19, v8);
      }

      return v5;
    }
  }

  return v5;
}

uint64_t ASPMSPParseBufferToCxt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v9 = "ASPMSPParseBufferToCxt: Passed in invalid buffer or empty buffer";
  if (!a2)
  {
    goto LABEL_2105;
  }

  v10 = a3;
  if (!a3)
  {
    goto LABEL_2105;
  }

  v11 = a2;
  v8 = 0;
  v13 = "avg_rd_window_size";
  v9 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): Error adding 5 elements to context";
  v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
  v15 = "num_zq_failures";
  v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
  v17 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes";
  v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
  while (1)
  {
    do
    {
      if (!v10)
      {
        return v8;
      }

      v19 = v11;
      v20 = *(v11 + 2);
      v11 += 4;
      v10 -= 4;
    }

    while (!v20);
    v21 = *v19;
    if (v21 != 12286)
    {
      if (v21 == 12287 || v10 < v20)
      {
        return v8;
      }

      switch(v21)
      {
        case 4097:
          v23 = v16;
          v24 = v14;
          v25 = v13;
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: passWithTmodeFS1_2b(4097): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v26 = 1;
          }

          else
          {
            v26 = v20 >> 2;
          }

          if (!AddMultipleFieldsToGenericContext(a1, "passWithTmodeFS1_2b", v11, 4u, v26))
          {
            v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_2b(4097): Error adding 1 elements to context";
            goto LABEL_2105;
          }

          v8 = v8 + v26;
          v13 = v25;
          v14 = v24;
          v16 = v23;
          goto LABEL_20;
        case 4098:
          v28 = v18;
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: passWithTmodeFS1_4b(4098): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v29 = 1;
          }

          else
          {
            v29 = v20 >> 2;
          }

          if (!AddMultipleFieldsToGenericContext(a1, "passWithTmodeFS1_4b", v11, 4u, v29))
          {
            v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_4b(4098): Error adding 1 elements to context";
            goto LABEL_2105;
          }

          v8 = v8 + v29;
          v13 = "avg_rd_window_size";
          v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
          v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
          v18 = v28;
          break;
        case 4100:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: passWithTmodeFS1_2b_fast(4100): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "passWithTmodeFS1_2b_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_2b_fast(4100): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4101:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: passWithTmodeFS1_4b_fast(4101): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "passWithTmodeFS1_4b_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_4b_fast(4101): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4102:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_EOL(4102): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "numOfCwFailedInTmodeFS2_EOL", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_EOL(4102): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4103:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_DSP_EOL(4103): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "numOfCwFailedInTmodeFS2_DSP_EOL", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_DSP_EOL(4103): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4104:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterAcq(4104): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassWithHardAfterAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterAcq(4104): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4105:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDBFastRead(4105): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "firstReadWasHardWithDefaultBDBFastRead", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDBFastRead(4105): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4110:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: firstReadWasHardWithAcq(4110): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "firstReadWasHardWithAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasHardWithAcq(4110): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4117:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDB(4117): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "firstReadWasHardWithDefaultBDB", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDB(4117): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4118:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassedThroughSyndSumAcquisition(4118): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassedThroughSyndSumAcquisition", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughSyndSumAcquisition(4118): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4119:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip(4119): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassedThroughSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip(4119): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4123:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip_fast(4123): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassWithHardAfterSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip_fast(4123): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4124:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip_fast(4124): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassWithFS12BitAfterSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip_fast(4124): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4125:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip_fast(4125): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassWithFS14BitAfterSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip_fast(4125): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4126:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassWithFS3_fast(4126): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassWithFS3_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS3_fast(4126): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4128:
          if (v20 != 40)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: deepSoft2Decoded(4128): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x2C)
          {
            v27 = 10;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "deepSoft2Decoded", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: deepSoft2Decoded(4128): Error adding 10 elements to context";
          goto LABEL_2105;
        case 4131:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip_fast(4131): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassedThroughSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip_fast(4131): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4132:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3_fast(4132): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassedThroughFS3_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3_fast(4132): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4135:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readZeroPage(4135): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readZeroPage", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readZeroPage(4135): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4136:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readErasedPage(4136): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readErasedPage", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readErasedPage(4136): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4137:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readFail(4137): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readFail", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readFail(4137): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4140:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: bdbDefaultMoveFastToNormal(4140): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bdbDefaultMoveFastToNormal", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: bdbDefaultMoveFastToNormal(4140): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4141:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: bdbDefaultMoveNormalToFast(4141): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "bdbDefaultMoveNormalToFast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: bdbDefaultMoveNormalToFast(4141): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4145:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: firstReadWasFS2EOL_DSP(4145): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "firstReadWasFS2EOL_DSP", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasFS2EOL_DSP(4145): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4146:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: firstReadWasFS2EOL(4146): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "firstReadWasFS2EOL", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasFS2EOL(4146): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4150:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3(4150): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassedThroughFS3", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3(4150): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4153:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip(4153): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassWithHardAfterSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip(4153): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4154:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip(4154): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassWithFS12BitAfterSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip(4154): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4155:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip(4155): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassWithFS14BitAfterSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip(4155): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4156:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassWithFS3(4156): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassWithFS3", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS3(4156): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4158:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterAcq(4158): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassWithFS12BitAfterAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterAcq(4158): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4159:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterAcq(4159): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readAlgoPassWithFS14BitAfterAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterAcq(4159): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4164:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: syndSumAcqConvergedToStaticWalls(4164): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "syndSumAcqConvergedToStaticWalls", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: syndSumAcqConvergedToStaticWalls(4164): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4196:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails100(4196): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails100(4196): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4197:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails101(4197): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails101(4197): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4198:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage100(4198): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStage100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage100(4198): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4199:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage101(4199): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStage101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage101(4199): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4200:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage100(4200): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "initialReadStage100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage100(4200): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4201:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage102(4201): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStage102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage102(4201): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4202:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage101(4202): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "initialReadStage101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage101(4202): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4203:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife100(4203): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife100(4203): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4204:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife101(4204): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife101(4204): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4205:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails102(4205): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails102(4205): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4206:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage102(4206): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "initialReadStage102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage102(4206): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4207:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage103(4207): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStage103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage103(4207): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4208:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage104(4208): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStage104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage104(4208): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4209:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage105(4209): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStage105", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage105(4209): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4210:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage106(4210): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStage106", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage106(4210): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4211:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter100(4211): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter100(4211): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4212:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter101(4212): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter101(4212): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4213:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage103(4213): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "initialReadStage103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage103(4213): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4214:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage104(4214): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "initialReadStage104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage104(4214): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4215:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage107(4215): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStage107", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage107(4215): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4216:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage108(4216): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "readStage108", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage108(4216): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4217:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife102(4217): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife102(4217): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4218:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife103(4218): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife103(4218): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4219:
          if (v20 != 4)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife104(4219): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife104(4219): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4220:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter102(4220): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter102(4220): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4221:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter103(4221): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter103(4221): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4222:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter104(4222): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter104(4222): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4223:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter105(4223): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter105", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter105(4223): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4224:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter106(4224): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter106", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter106(4224): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4225:
          if (v20 != 16)
          {
            SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter107(4225): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter107", v11, 4u, v27))
          {
LABEL_462:
            v8 = v8 + v27;
            v13 = "avg_rd_window_size";
            v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
            v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
            v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
            break;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter107(4225): Error adding 4 elements to context";
LABEL_2105:
          SetAPIErrorMessage(v9, a2, a3, a4, a5, a6, a7, a8, v39);
          return v8;
        default:
          switch(v21)
          {
            case 4226:
              v30 = v15;
              v31 = v16;
              v32 = v13;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter108(4226): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v33 = 4;
              }

              else
              {
                v33 = v20 >> 2;
              }

              if (!AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter108", v11, 4u, v33))
              {
                v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter108(4226): Error adding 4 elements to context";
                goto LABEL_2105;
              }

              v8 = v8 + v33;
              v13 = v32;
              v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
              v16 = v31;
              v15 = v30;
              goto LABEL_21;
            case 4227:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter109(4227): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter109", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter109(4227): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4228:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter110(4228): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter110", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter110(4228): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4229:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter111(4229): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter111", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter111(4229): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4230:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter112(4230): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter112", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter112(4230): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4231:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter113(4231): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter113", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter113(4231): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4232:
              v34 = v17;
              v35 = v16;
              if (v20 != 256)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails108(4232): cfg 64 elements; (64*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x104)
              {
                v36 = 64;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails108", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails108(4232): Error adding 64 elements to context";
              goto LABEL_2105;
            case 4233:
              v34 = v17;
              v35 = v16;
              if (v20 != 256)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails103(4233): cfg 64 elements; (64*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x104)
              {
                v36 = 64;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails103", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails103(4233): Error adding 64 elements to context";
              goto LABEL_2105;
            case 4234:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails104(4234): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails104", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails104(4234): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4235:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails105(4235): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails105", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails105(4235): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4236:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails106(4236): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails106", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails106(4236): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4237:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails107(4237): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails107", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails107(4237): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4238:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage109(4238): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "readStage109", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStage109(4238): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4239:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage110(4239): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "readStage110", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStage110(4239): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4240:
              v34 = v17;
              v35 = v16;
              if (v20 != 80)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfErrorsBin100(4240): cfg 20 elements; (20*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x54)
              {
                v36 = 20;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "readStageNumOfErrorsBin100", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfErrorsBin100(4240): Error adding 20 elements to context";
              goto LABEL_2105;
            case 4241:
              v34 = v17;
              v35 = v16;
              if (v20 != 80)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter114(4241): cfg 20 elements; (20*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x54)
              {
                v36 = 20;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter114", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter114(4241): Error adding 20 elements to context";
              goto LABEL_2105;
            case 4242:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter115(4242): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter115", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter115(4242): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4243:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter116(4243): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter116", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter116(4243): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4244:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter117(4244): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter117", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter117(4244): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4245:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter118(4245): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter118", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter118(4245): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4246:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter119(4246): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter119", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter119(4246): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4247:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter120(4247): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter120", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter120(4247): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4248:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter121(4248): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter121", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter121(4248): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4249:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: cbdr_ref_1(4249): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "cbdr_ref_1", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_ref_1(4249): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4250:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: cbdr_ref_2(4250): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "cbdr_ref_2", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_ref_2(4250): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4251:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: cbdr_outlier(4251): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "cbdr_outlier", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_outlier(4251): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4252:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: cbdr_step_1(4252): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "cbdr_step_1", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_1(4252): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4253:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: cbdr_step_2(4253): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "cbdr_step_2", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_2(4253): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4254:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: cbdr_step_3(4254): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "cbdr_step_3", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_3(4254): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4255:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: cbdr_step_4(4255): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "cbdr_step_4", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_4(4255): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4256:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: cbdr_step_5(4256): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "cbdr_step_5", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_5(4256): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4257:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: cbdr_step_6(4257): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "cbdr_step_6", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_6(4257): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4258:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: cbdr_step_7(4258): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "cbdr_step_7", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_7(4258): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4259:
              v34 = v17;
              v35 = v16;
              if (v20 != 80)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter122(4259): cfg 20 elements; (20*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x54)
              {
                v36 = 20;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter122", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter122(4259): Error adding 20 elements to context";
              goto LABEL_2105;
            case 4260:
              v34 = v17;
              v35 = v16;
              if (v20 != 32)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter123(4260): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x24)
              {
                v36 = 8;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter123", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter123(4260): Error adding 8 elements to context";
              goto LABEL_2105;
            case 4261:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter124(4261): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter124", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter124(4261): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4262:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter125(4262): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter125", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter125(4262): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4263:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter126(4263): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter126", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter126(4263): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4264:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter127(4264): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter127", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter127(4264): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4265:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter128(4265): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter128", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter128(4265): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4266:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter129(4266): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter129", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter129(4266): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4267:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter130(4267): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter130", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter130(4267): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4268:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter131(4268): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter131", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter131(4268): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4269:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter132(4269): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter132", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter132(4269): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4270:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter133(4270): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter133", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter133(4270): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4271:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter134(4271): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter134", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter134(4271): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4272:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter135(4272): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter135", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter135(4272): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4273:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter136(4273): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter136", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter136(4273): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4274:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter137(4274): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter137", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter137(4274): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4275:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter138(4275): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter138", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter138(4275): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4276:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter139(4276): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter139", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter139(4276): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4277:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter140(4277): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter140", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter140(4277): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4278:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter141(4278): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter141", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter141(4278): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4279:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: fs1_4b_fail(4279): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "fs1_4b_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: fs1_4b_fail(4279): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4280:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: fs1_4b_fast_fail(4280): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "fs1_4b_fast_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: fs1_4b_fast_fail(4280): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4281:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: dyce_decoded_bit_flips(4281): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "dyce_decoded_bit_flips_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dyce_decoded_bit_flips(4281): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4282:
              v34 = v17;
              v35 = v16;
              if (v20 != 60)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: slip_bch(4282): cfg 15 elements; (15*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x40)
              {
                v36 = 15;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "slip_bch_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: slip_bch(4282): Error adding 15 elements to context";
              goto LABEL_2105;
            case 4283:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: read_fail(4283): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "read_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: read_fail(4283): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4284:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: tr_read_fail(4284): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "tr_read_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_read_fail(4284): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4285:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: tr_aux_bfs_percent(4285): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "tr_aux_bfs_percent_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_aux_bfs_percent(4285): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4286:
              v34 = v17;
              v35 = v16;
              if (v20 != 20)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: tr_reconstruct_pass_step(4286): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x18)
              {
                v36 = 5;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "tr_reconstruct_pass_step_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_reconstruct_pass_step(4286): Error adding 5 elements to context";
              goto LABEL_2105;
            case 4287:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: tr_reconstruct_num(4287): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "tr_reconstruct_num", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_reconstruct_num(4287): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4301:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife105(4301): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife105", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: nandStageOfLife105(4301): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4302:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife106(4302): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (!AddMultipleFieldsToGenericContext(a1, "nandStageOfLife106", v11, 4u, v36))
              {
                v9 = "ASPMSPParseBufferToCxt: nandStageOfLife106(4302): Error adding 1 elements to context";
                goto LABEL_2105;
              }

LABEL_912:
              v8 = v8 + v36;
              v13 = "avg_rd_window_size";
              v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
              v16 = v35;
              v17 = v34;
              goto LABEL_913;
            default:
              a3 = 12297;
              a2 = 12294;
              a5 = 12295;
              a8 = 12290;
              a7 = 12289;
              a6 = 12292;
              switch(v21)
              {
                case 4303:
                  if (v20 != 8)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter145(4303): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter145_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter145(4303): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4304:
                  if (v20 != 8)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter146(4304): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter146_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter146(4304): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4305:
                  if (v20 != 8)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter147(4305): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter147_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter147(4305): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4306:
                  if (v20 != 8)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter148(4306): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter148_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter148(4306): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4307:
                  if (v20 != 32)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter149(4307): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter149_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter149(4307): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4308:
                  if (v20 != 24)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter150(4308): cfg 6 elements; (6*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x1C)
                  {
                    v37 = 6;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter150_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter150(4308): Error adding 6 elements to context";
                  goto LABEL_2105;
                case 4309:
                  if (v20 != 20)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter151(4309): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter151_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter151(4309): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4310:
                  if (v20 != 20)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife107(4310): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife107_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife107(4310): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4311:
                  if (v20 != 20)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife108(4311): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife108_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife108(4311): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4312:
                  if (v20 != 20)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife109(4312): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife109_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife109(4312): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4313:
                  if (v20 != 20)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife110(4313): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife110_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife110(4313): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4314:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife111(4314): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife111", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife111(4314): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4315:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter152(4315): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter152", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter152(4315): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4316:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter153(4316): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter153", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter153(4316): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4317:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter154(4317): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter154", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter154(4317): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4318:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife112(4318): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife112", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife112(4318): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4319:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife113(4319): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife113", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife113(4319): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4320:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife114(4320): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife114", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife114(4320): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4321:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter155(4321): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter155", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter155(4321): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4322:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter156(4322): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter156", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter156(4322): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4323:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter157(4323): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter157", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter157(4323): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4324:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage111(4324): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readStage111", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage111(4324): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4325:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife115(4325): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife115", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife115(4325): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4326:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife116(4326): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife116", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife116(4326): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4327:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife117(4327): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife117", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife117(4327): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4328:
LABEL_930:
                  if (v21 < 12288)
                  {
                    switch(v21)
                    {
                      case 8208:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_block_read_failures(8208): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_block_read_failures", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_read_failures(8208): Error adding 1 elements to context";
                        break;
                      case 8209:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_block_refresh(8209): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_block_refresh", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_refresh(8209): Error adding 1 elements to context";
                        break;
                      case 8210:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_block_convert_to_main(8210): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_block_convert_to_main", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_convert_to_main(8210): Error adding 1 elements to context";
                        break;
                      case 8211:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_block_read_source_changed(8211): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_block_read_source_changed", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_read_source_changed(8211): Error adding 1 elements to context";
                        break;
                      case 8219:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: number_of_dcc_failures(8219): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "number_of_dcc_failures", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: number_of_dcc_failures(8219): Error adding 1 elements to context";
                        break;
                      case 8234:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: msp_number_sram_flips(8234): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "msp_number_sram_flips", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: msp_number_sram_flips(8234): Error adding 1 elements to context";
                        break;
                      case 8250:
                        if (v20 != 120)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: lower_die_temperature(8250): cfg 30 elements; (30*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x7C)
                        {
                          v37 = 30;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "lower_die_temperature", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: lower_die_temperature(8250): Error adding 30 elements to context";
                        break;
                      case 8251:
                        if (v20 != 120)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: higher_die_temperature(8251): cfg 30 elements; (30*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x7C)
                        {
                          v37 = 30;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "higher_die_temperature", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: higher_die_temperature(8251): Error adding 30 elements to context";
                        break;
                      case 8258:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: msp_number_hw_sram_flips(8258): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "msp_number_hw_sram_flips", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: msp_number_hw_sram_flips(8258): Error adding 1 elements to context";
                        break;
                      case 8259:
                        if (v20 != 12)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_rd_training_failure(8259): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 3;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_rd_training_failure_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_training_failure(8259): Error adding 3 elements to context";
                        break;
                      case 8260:
                        if (v20 != 12)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_wr_training_failure(8260): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 3;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_wr_training_failure_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_training_failure(8260): Error adding 3 elements to context";
                        break;
                      case 8261:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_rd_sdl_overflow(8261): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_rd_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_sdl_overflow(8261): Error adding 1 elements to context";
                        break;
                      case 8262:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_wr_sdl_overflow(8262): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_wr_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_sdl_overflow(8262): Error adding 1 elements to context";
                        break;
                      case 8263:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_all_dies(8263): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_rd_pos_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_all_dies(8263): Error adding 5 elements to context";
                        break;
                      case 8264:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_all_dies(8264): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_rd_neg_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_all_dies(8264): Error adding 5 elements to context";
                        break;
                      case 8265:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_wr_win_hist_all_dies(8265): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_wr_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_win_hist_all_dies(8265): Error adding 5 elements to context";
                        break;
                      case 8266:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_ch0_die0(8266): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_rd_pos_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_ch0_die0(8266): Error adding 5 elements to context";
                        break;
                      case 8267:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_ch0_die0(8267): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_rd_neg_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_ch0_die0(8267): Error adding 5 elements to context";
                        break;
                      case 8268:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_wr_win_hist_ch0_die0(8268): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_wr_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_win_hist_ch0_die0(8268): Error adding 5 elements to context";
                        break;
                      case 8269:
                        if (v20 != 64)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_p_c0d0_hist(8269): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pts_vs_boot_mid_rd_p_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_p_c0d0_hist(8269): Error adding 16 elements to context";
                        break;
                      case 8270:
                        if (v20 != 64)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_n_c0d0_hist(8270): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pts_vs_boot_mid_rd_n_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_n_c0d0_hist(8270): Error adding 16 elements to context";
                        break;
                      case 8271:
                        if (v20 != 64)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pts_vs_boot_mid_wr_c0d0_hist(8271): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pts_vs_boot_mid_wr_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pts_vs_boot_mid_wr_c0d0_hist(8271): Error adding 16 elements to context";
                        break;
                      case 8272:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_rd_training_failure(8272): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_rd_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_training_failure(8272): Error adding 1 elements to context";
                        break;
                      case 8273:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_wr_training_failure(8273): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_wr_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_training_failure(8273): Error adding 1 elements to context";
                        break;
                      case 8274:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_rd_sdl_overflow(8274): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_rd_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_sdl_overflow(8274): Error adding 1 elements to context";
                        break;
                      case 8275:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_wr_sdl_overflow(8275): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_wr_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_sdl_overflow(8275): Error adding 1 elements to context";
                        break;
                      case 8276:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_all_dies(8276): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_rd_pos_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_all_dies(8276): Error adding 5 elements to context";
                        break;
                      case 8277:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_all_dies(8277): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_rd_neg_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_all_dies(8277): Error adding 5 elements to context";
                        break;
                      case 8278:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_wr_win_hist_all_dies(8278): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_wr_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_win_hist_all_dies(8278): Error adding 5 elements to context";
                        break;
                      case 8279:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_ch0_die0(8279): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_rd_pos_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_ch0_die0(8279): Error adding 5 elements to context";
                        break;
                      case 8280:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_ch0_die0(8280): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_rd_neg_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_ch0_die0(8280): Error adding 5 elements to context";
                        break;
                      case 8281:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_wr_win_hist_ch0_die0(8281): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_wr_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_win_hist_ch0_die0(8281): Error adding 5 elements to context";
                        break;
                      case 8282:
                        if (v20 != 64)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_vs_pge_rd_p_c0d0_hist(8282): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_vs_pge_rd_p_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_vs_pge_rd_p_c0d0_hist(8282): Error adding 16 elements to context";
                        break;
                      case 8283:
                        if (v20 != 64)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_vs_pge_rd_n_c0d0_hist(8283): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_vs_pge_rd_n_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_vs_pge_rd_n_c0d0_hist(8283): Error adding 16 elements to context";
                        break;
                      case 8284:
                        if (v20 != 64)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_vs_pge_wr_c0d0_hist(8284): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "boot_vs_pge_wr_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_vs_pge_wr_c0d0_hist(8284): Error adding 16 elements to context";
                        break;
                      case 8285:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: periodic_rd_training_failure(8285): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "periodic_rd_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_training_failure(8285): Error adding 1 elements to context";
                        break;
                      case 8286:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: periodic_wr_training_failure(8286): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "periodic_wr_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_training_failure(8286): Error adding 1 elements to context";
                        break;
                      case 8287:
                        if (v20 != 64)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_vs_periodic_rd_p_c0d0_hist(8287): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_vs_periodic_rd_p_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_vs_periodic_rd_p_c0d0_hist(8287): Error adding 16 elements to context";
                        break;
                      case 8288:
                        if (v20 != 64)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_vs_periodic_rd_n_c0d0_hist(8288): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_vs_periodic_rd_n_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_vs_periodic_rd_n_c0d0_hist(8288): Error adding 16 elements to context";
                        break;
                      case 8289:
                        if (v20 != 64)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: pge_vs_periodic_wr_c0d0_hist(8289): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "pge_vs_periodic_wr_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_vs_periodic_wr_c0d0_hist(8289): Error adding 16 elements to context";
                        break;
                      case 8290:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: periodic_rd_sdl_overflow(8290): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "periodic_rd_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_sdl_overflow(8290): Error adding 1 elements to context";
                        break;
                      case 8291:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: periodic_wr_sdl_overflow(8291): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "periodic_wr_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_sdl_overflow(8291): Error adding 1 elements to context";
                        break;
                      case 8292:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: too_frequent_temp_change_rd(8292): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "too_frequent_temp_change_rd", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: too_frequent_temp_change_rd(8292): Error adding 1 elements to context";
                        break;
                      case 8293:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: too_frequent_temp_change_wr(8293): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "too_frequent_temp_change_wr", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: too_frequent_temp_change_wr(8293): Error adding 1 elements to context";
                        break;
                      case 8294:
                        if (v20 != 28)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: periodic_rd_training_hist(8294): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "periodic_rd_training_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_training_hist(8294): Error adding 7 elements to context";
                        break;
                      case 8295:
                        if (v20 != 28)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: periodic_wr_training_hist(8295): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "periodic_wr_training_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_training_hist(8295): Error adding 7 elements to context";
                        break;
                      case 8296:
                        if (v20 != 28)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: periodic_rd_training_latency(8296): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "periodic_rd_training_latency_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_training_latency(8296): Error adding 7 elements to context";
                        break;
                      case 8297:
                        if (v20 != 28)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: periodic_wr_training_latency(8297): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "periodic_wr_training_latency_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_training_latency(8297): Error adding 7 elements to context";
                        break;
                      case 8298:
                        if (v20 != 48)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: system_temp(8298): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x34)
                        {
                          v37 = 12;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "system_temp_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: system_temp(8298): Error adding 12 elements to context";
                        break;
                      case 8299:
                        if (v20 != 48)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: temp_diff_150ms(8299): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x34)
                        {
                          v37 = 12;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "temp_diff_150ms_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: temp_diff_150ms(8299): Error adding 12 elements to context";
                        break;
                      case 8300:
                        if (v20 != 48)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: temp_diff_1s(8300): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x34)
                        {
                          v37 = 12;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "temp_diff_1s_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: temp_diff_1s(8300): Error adding 12 elements to context";
                        break;
                      case 8301:
                        if (v20 != 28)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: num_of_steps_bigger_win(8301): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "num_of_steps_bigger_win_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: num_of_steps_bigger_win(8301): Error adding 7 elements to context";
                        break;
                      case 8302:
                        if (v20 != 28)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: num_of_steps_smaller_win(8302): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "num_of_steps_smaller_win_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: num_of_steps_smaller_win(8302): Error adding 7 elements to context";
                        break;
                      default:
                        goto LABEL_1826;
                    }

                    goto LABEL_2105;
                  }

                  if (v21 <= 12292)
                  {
                    if (v21 <= 12289)
                    {
                      if (v21 == 12288)
                      {
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails200(12288): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 3;
                        }

                        if (!AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails200", v11, 8u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails200(12288): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }

                      else
                      {
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage200(12289): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 3;
                        }

                        if (!AddMultipleFieldsToGenericContext(a1, "initialReadStage200", v11, 8u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: initialReadStage200(12289): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }
                    }

                    else if (v21 == 12290)
                    {
                      if (v20 != 8)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage201(12290): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "initialReadStage201", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage201(12290): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else if (v21 == 12291)
                    {
                      if (v20 != 8)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails201(12291): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails201", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails201(12291): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else
                    {
                      if (v20 != 8)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage202(12292): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "initialReadStage202", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage202(12292): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    goto LABEL_1372;
                  }

                  if (v21 <= 12295)
                  {
                    if (v21 == 12293)
                    {
                      if (v20 != 8)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage203(12293): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "initialReadStage203", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage203(12293): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else if (v21 == 12294)
                    {
                      if (v20 != 8)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails202(12294): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails202", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails202(12294): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else
                    {
                      if (v20 != 8)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageNumOfFails203(12295): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "readStageNumOfFails203", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails203(12295): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    goto LABEL_1372;
                  }

                  switch(v21)
                  {
                    case 12296:
                      if (v20 != 8)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage204(12296): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "initialReadStage204", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage204(12296): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    case 12297:
                      if (v20 != 8)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage205(12297): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "initialReadStage205", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage205(12297): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    case 12298:
                      if (v20 != 8)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage206(12298): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "initialReadStage206", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage206(12298): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                  }

LABEL_1826:
                  if (v21 < 0x4000)
                  {
                    v13 = "avg_rd_window_size";
                    v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
                    v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
                    v15 = "num_zq_failures";
                    v17 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes";
                    v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
                    switch(v21)
                    {
                      case 12299:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage207(12299): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStage207", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage207(12299): Error adding 1 elements to context";
                        break;
                      case 12300:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage208(12300): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStage208", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage208(12300): Error adding 1 elements to context";
                        break;
                      case 12301:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage209(12301): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStage209", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage209(12301): Error adding 1 elements to context";
                        break;
                      case 12302:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage200(12302): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage200", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage200(12302): Error adding 1 elements to context";
                        break;
                      case 12303:
                        if (v20 != 32)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage201(12303): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage201", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage201(12303): Error adding 4 elements to context";
                        break;
                      case 12304:
                        if (v20 != 32)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage202(12304): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage202", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage202(12304): Error adding 4 elements to context";
                        break;
                      case 12305:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage210(12305): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStage210", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage210(12305): Error adding 1 elements to context";
                        break;
                      case 12306:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage211(12306): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStage211", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage211(12306): Error adding 1 elements to context";
                        break;
                      case 12307:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage203(12307): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage203", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage203(12307): Error adding 1 elements to context";
                        break;
                      case 12308:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage204(12308): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage204", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage204(12308): Error adding 1 elements to context";
                        break;
                      case 12309:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage205(12309): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage205", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage205(12309): Error adding 1 elements to context";
                        break;
                      case 12310:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage206(12310): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage206", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage206(12310): Error adding 1 elements to context";
                        break;
                      case 12311:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage207(12311): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage207", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage207(12311): Error adding 1 elements to context";
                        break;
                      case 12312:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage208(12312): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage208", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage208(12312): Error adding 1 elements to context";
                        break;
                      case 12313:
                        if (v20 != 32)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage209(12313): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage209", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage209(12313): Error adding 4 elements to context";
                        break;
                      case 12314:
                        if (v20 != 32)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage210(12314): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage210", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage210(12314): Error adding 4 elements to context";
                        break;
                      case 12315:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage212(12315): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStage212", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage212(12315): Error adding 1 elements to context";
                        break;
                      case 12316:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage213(12316): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStage213", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage213(12316): Error adding 1 elements to context";
                        break;
                      case 12317:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage211(12317): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage211", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage211(12317): Error adding 1 elements to context";
                        break;
                      case 12318:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage212(12318): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage212", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage212(12318): Error adding 1 elements to context";
                        break;
                      case 12319:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage213(12319): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage213", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage213(12319): Error adding 1 elements to context";
                        break;
                      case 12320:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage214(12320): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage214", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage214(12320): Error adding 1 elements to context";
                        break;
                      case 12321:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage215(12321): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "readStage215", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage215(12321): Error adding 1 elements to context";
                        break;
                      case 12322:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter142(12322): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter142", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter142(12322): Error adding 1 elements to context";
                        break;
                      case 12323:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter143(12323): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter143", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter143(12323): Error adding 1 elements to context";
                        break;
                      case 12324:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter144(12324): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter144", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter144(12324): Error adding 1 elements to context";
                        break;
                      case 12325:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStageParameter1(12325): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStageParameter1", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStageParameter1(12325): Error adding 1 elements to context";
                        break;
                      case 12326:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStageParameter2(12326): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStageParameter2", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStageParameter2(12326): Error adding 1 elements to context";
                        break;
                      case 12331:
                        if (v20 != 20)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage11(12331): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v27 = 5;
                        }

                        else
                        {
                          v27 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStage11_", v11, 4u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage11(12331): Error adding 5 elements to context";
                        break;
                      case 12332:
                        if (v20 != 32)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage12(12332): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x24)
                        {
                          v27 = 8;
                        }

                        else
                        {
                          v27 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStage12_", v11, 4u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage12(12332): Error adding 8 elements to context";
                        break;
                      case 12333:
                        if (v20 != 24)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: initialReadStage13(12333): cfg 6 elements; (6*4) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x1C)
                        {
                          v27 = 6;
                        }

                        else
                        {
                          v27 = v20 >> 2;
                        }

                        if (AddMultipleFieldsToGenericContext(a1, "initialReadStage13_", v11, 4u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage13(12333): Error adding 6 elements to context";
                        break;
                      default:
                        goto LABEL_463;
                    }

                    goto LABEL_2105;
                  }

                  if (v21 <= 16395)
                  {
                    switch(v21)
                    {
                      case 16384:
                        if (v20 != 8)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: fw_version_identifier(16384): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 3;
                        }

                        if (!AddMultipleFieldsToGenericContext(a1, "fw_version_identifier", v11, 8u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: fw_version_identifier(16384): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }

                        goto LABEL_1372;
                      case 16394:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: coge_cache_hit_read(16394): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!AddMultipleFieldsToGenericContext(a1, "coge_cache_hit_read", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_hit_read(16394): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }

                        goto LABEL_1372;
                      case 16395:
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: coge_cache_miss_read(16395): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!AddMultipleFieldsToGenericContext(a1, "coge_cache_miss_read", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_miss_read(16395): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }

                        goto LABEL_1372;
                    }
                  }

                  else
                  {
                    if (v21 <= 16397)
                    {
                      if (v21 == 16396)
                      {
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: coge_cache_hit_program(16396): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!AddMultipleFieldsToGenericContext(a1, "coge_cache_hit_program", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_hit_program(16396): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }

                      else
                      {
                        if (v20 != 4)
                        {
                          SetAPIErrorMessage("ASPMSPParseBufferToCxt: coge_cache_miss_program(16397): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!AddMultipleFieldsToGenericContext(a1, "coge_cache_miss_program", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_miss_program(16397): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }

                      goto LABEL_1372;
                    }

                    if (v21 == 16398)
                    {
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: coge_lru_num_of_replacement(16398): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "coge_lru_num_of_replacement", v11, 4u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: coge_lru_num_of_replacement(16398): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

LABEL_1372:
                      v8 = v8 + v37;
                      goto LABEL_1373;
                    }

                    if (v21 == 16399)
                    {
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: coge_lru_num_of_searches(16399): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "coge_lru_num_of_searches", v11, 4u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: coge_lru_num_of_searches(16399): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    }
                  }

LABEL_1373:
                  v13 = "avg_rd_window_size";
                  v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
                  v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
LABEL_20:
                  v15 = "num_zq_failures";
LABEL_21:
                  v17 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes";
LABEL_913:
                  v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
                  break;
                case 4329:
                  if (v20 != 32)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter158(4329): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter158_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter158(4329): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4330:
                  if (v20 != 20)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter159(4330): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter159_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter159(4330): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4331:
                  if (v20 != 24)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage112(4331): cfg 6 elements; (6*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x1C)
                  {
                    v37 = 6;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readStage112_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage112(4331): Error adding 6 elements to context";
                  goto LABEL_2105;
                case 4332:
                  if (v20 != 32)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageFail0(4332): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readStageFail0_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStageFail0(4332): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4333:
                  if (v20 != 16)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage113(4333): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x14)
                  {
                    v37 = 4;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readStage113_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage113(4333): Error adding 4 elements to context";
                  goto LABEL_2105;
                case 4334:
                  if (v20 != 16)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage114(4334): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x14)
                  {
                    v37 = 4;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readStage114_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage114(4334): Error adding 4 elements to context";
                  goto LABEL_2105;
                case 4335:
                  if (v20 != 48)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter160(4335): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x34)
                  {
                    v37 = 12;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter160_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter160(4335): Error adding 12 elements to context";
                  goto LABEL_2105;
                case 4336:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife118(4336): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife118", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife118(4336): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4337:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: nandStageOfLife119(4337): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "nandStageOfLife119", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife119(4337): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4338:
                  if (v20 != 40)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage115(4338): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readStage115_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage115(4338): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4339:
                  if (v20 != 40)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageFail1(4339): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readStageFail1_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStageFail1(4339): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4340:
                  if (v20 != 12)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStageFail2(4340): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x10)
                  {
                    v37 = 3;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readStageFail2_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStageFail2(4340): Error adding 3 elements to context";
                  goto LABEL_2105;
                case 4341:
                  if (v20 != 16)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage116(4341): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x14)
                  {
                    v37 = 4;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readStage116_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage116(4341): Error adding 4 elements to context";
                  goto LABEL_2105;
                case 4342:
                  if (v20 != 40)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage117(4342): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readStage117_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage117(4342): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4343:
                  if (v20 != 20)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter161(4343): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter161_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter161(4343): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4344:
                  if (v20 != 12)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter162(4344): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x10)
                  {
                    v37 = 3;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter162_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter162(4344): Error adding 3 elements to context";
                  goto LABEL_2105;
                case 4345:
                  if (v20 != 40)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: readStage118(4345): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "readStage118_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage118(4345): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4346:
                  if (v20 != 32)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter163(4346): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter163_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter163(4346): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4347:
                  if (v20 != 32)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter164(4347): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter164_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter164(4347): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4348:
                  if (v20 != 32)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter165(4348): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter165_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter165(4348): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4349:
                  if (v20 != 20)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter166(4349): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter166_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter166(4349): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4350:
                  if (v20 != 20)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter167(4350): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter167_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter167(4350): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4351:
                  if (v20 != 12)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter168(4351): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x10)
                  {
                    v37 = 3;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter168_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter168(4351): Error adding 3 elements to context";
                  goto LABEL_2105;
                case 4352:
                  if (v20 != 4)
                  {
                    SetAPIErrorMessage("ASPMSPParseBufferToCxt: dspExceptionParameter169(4352): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (AddMultipleFieldsToGenericContext(a1, "dspExceptionParameter169", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter169(4352): Error adding 1 elements to context";
                  goto LABEL_2105;
                default:
                  switch(v21)
                  {
                    case 8193:
                      if (v20 != 20)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x18)
                      {
                        v37 = 5;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (!AddMultipleFieldsToGenericContext(a1, "avg_rd_window_size", v11, 4u, v37))
                      {
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    case 8194:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "num_zq_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
                      break;
                    case 8195:
                      if (v20 != 64)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: lower_die_temperature(8195): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x44)
                      {
                        v37 = 16;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "lower_die_temperature", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
                      break;
                    case 8196:
                      if (v20 != 64)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: higher_die_temperature(8196): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x44)
                      {
                        v37 = 16;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "higher_die_temperature", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: higher_die_temperature(8196): Error adding 16 elements to context";
                      break;
                    case 8197:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: number_of_sram_flips(8197): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "number_of_sram_flips", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: number_of_sram_flips(8197): Error adding 1 elements to context";
                      break;
                    case 8198:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: number_of_reset_failures(8198): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "number_of_reset_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: number_of_reset_failures(8198): Error adding 1 elements to context";
                      break;
                    case 8199:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: device_config(8199): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "device_config", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: device_config(8199): Error adding 1 elements to context";
                      break;
                    case 8200:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: number_of_throttling_events(8200): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "number_of_throttling_events", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: number_of_throttling_events(8200): Error adding 1 elements to context";
                      break;
                    case 8201:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: link_speed_recoveries(8201): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "link_speed_recoveries", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: link_speed_recoveries(8201): Error adding 1 elements to context";
                      break;
                    case 8202:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: fw_updates(8202): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "fw_updates", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: fw_updates(8202): Error adding 1 elements to context";
                      break;
                    case 8203:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: maintenance_backup_to_main(8203): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "maintenance_backup_to_main", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: maintenance_backup_to_main(8203): Error adding 1 elements to context";
                      break;
                    case 8204:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: maintenance_main_to_backup(8204): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "maintenance_main_to_backup", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: maintenance_main_to_backup(8204): Error adding 1 elements to context";
                      break;
                    case 8205:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_block_erase_failures(8205): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "boot_block_erase_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: boot_block_erase_failures(8205): Error adding 1 elements to context";
                      break;
                    case 8206:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_block_program_failures(8206): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "boot_block_program_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: boot_block_program_failures(8206): Error adding 1 elements to context";
                      break;
                    case 8207:
                      if (v20 != 4)
                      {
                        SetAPIErrorMessage("ASPMSPParseBufferToCxt: boot_block_read_verify_failures(8207): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (AddMultipleFieldsToGenericContext(a1, "boot_block_read_verify_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: boot_block_read_verify_failures(8207): Error adding 1 elements to context";
                      break;
                    default:
                      goto LABEL_930;
                  }

                  goto LABEL_2105;
              }

              break;
          }

          break;
      }
    }

LABEL_463:
    v11 += v20;
    v10 -= v20;
  }
}

uint64_t AddSingleValueToGenericContext(uint64_t result, const char *a2, const char *a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    v8 = malloc_type_calloc(1uLL, 0x78uLL, 0x102004060B2607BuLL);
    v9 = malloc_type_calloc(1uLL, 0x78uLL, 0x102004060B2607BuLL);
    v10 = v9;
    if (v8 && v9)
    {
      v11 = v7[1];
      if (v11 && (v12 = v7[3]) != 0)
      {
        *(v11 + 112) = v9;
        v13 = (v12 + 112);
      }

      else
      {
        *v7 = v9;
        v13 = (v7 + 2);
      }

      *v13 = v8;
      v7[1] = v9;
      v7[3] = v8;
      *(v8 + 14) = 0;
      *(v9 + 14) = 0;
      snprintf(v9, 0x63uLL, "%s%s", a2, a3);
      v10[99] = 0;
      snprintf(v8, 0x63uLL, "%llu", a4);
      v8[99] = 0;
      *(v8 + 13) = a4;
      return 1;
    }

    else
    {
      if (v8)
      {
        free(v8);
      }

      if (v10)
      {
        free(v10);
      }

      return 0;
    }
  }

  return result;
}

double ReleaseGenericParserCxt(uint64_t a1)
{
  if (a1)
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
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10001D01C(void *a1, const char *a2, const char *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x78uLL, 0x102004060B2607BuLL);
  v9 = malloc_type_malloc(0x78uLL, 0x102004060B2607BuLL);
  v10 = v9;
  v11 = a1[1];
  if (v11 && (v12 = a1[3]) != 0)
  {
    *(v11 + 112) = v9;
    v13 = (v12 + 112);
  }

  else
  {
    *a1 = v9;
    v13 = (a1 + 2);
  }

  *v13 = v8;
  a1[1] = v9;
  a1[3] = v8;
  *(v8 + 14) = 0;
  v9[14] = 0;
  snprintf(v9, 0x63uLL, "%s%s", a2, a3);
  *(v10 + 99) = 0;
  result = snprintf(v8, 0x63uLL, "%llu", a4);
  v8[99] = 0;
  *(v8 + 13) = a4;
  return result;
}

void SetAPIErrorMessage(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__str, 0x400uLL);
  if (!GlobalAPIErrorMessage)
  {
    GlobalAPIErrorMessage = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
    vsnprintf(__str, 0x400uLL, a1, &a9);
    snprintf(GlobalAPIErrorMessage, 0x400uLL, "%s", __str);
  }
}

const char *GetAPIErrorMessage()
{
  if (GlobalAPIErrorMessage)
  {
    return GlobalAPIErrorMessage;
  }

  else
  {
    return "NA";
  }
}

unint64_t roundSig(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = log10(a1) + 1.0;
    v5 = v4 - a2;
    if (v4 > a2)
    {
      if (v5 > 0x12)
      {
        return 0;
      }

      else
      {
        v6 = qword_10004A800[v5];
        v7 = v2 / v6;
        if (v2 % v6 >= v6 >> 1)
        {
          ++v7;
        }

        return v7 * v6;
      }
    }
  }

  return v2;
}

int main(int argc, const char **argv, const char **envp)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "start nand_task_scheduler", v19, 2u);
  }

  if (!NSClassFromString(@"BGSystemTaskScheduler"))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    *v19 = 0;
    v3 = "BGST not available - skipping idleStack registrations.\n";
    goto LABEL_35;
  }

  v4 = [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")];
  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    *v19 = 0;
    v6 = "Successfully registered idleStack_low task (BGST)";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    *v19 = 0;
    v6 = "ERROR: Failed to register idleStack_low task (BGST)";
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, v19, 2u);
LABEL_12:
  v7 = [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler sharedScheduler];
  v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    *v19 = 0;
    v9 = "Successfully registered idleStack_lowNoDI task (BGST)";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    *v19 = 0;
    v9 = "ERROR: Failed to register idleStack_lowNoDI task (BGST)";
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, v19, 2u);
LABEL_18:
  v10 = [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler sharedScheduler];
  v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_24;
    }

    *v19 = 0;
    v12 = "Successfully registered idleStack_lowNoSUI task (BGST)";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_24;
    }

    *v19 = 0;
    v12 = "ERROR: Failed to register idleStack_lowNoSUI task (BGST)";
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v12, v19, 2u);
LABEL_24:
  v13 = [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler sharedScheduler];
  v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (!v14)
    {
      goto LABEL_30;
    }

    *v19 = 0;
    v15 = "Successfully registered idleStack_med task (BGST)";
  }

  else
  {
    if (!v14)
    {
      goto LABEL_30;
    }

    *v19 = 0;
    v15 = "ERROR: Failed to register idleStack_med task (BGST)";
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v15, v19, 2u);
LABEL_30:
  v16 = [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler sharedScheduler];
  v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_36;
    }

    *v19 = 0;
    v3 = "Successfully registered idleStack_high task (BGST)";
  }

  else
  {
    if (!v17)
    {
      goto LABEL_36;
    }

    *v19 = 0;
    v3 = "ERROR: Failed to register idleStack_high task (BGST)";
  }

LABEL_35:
  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v3, v19, 2u);
LABEL_36:
  xpc_activity_register("com.apple.nand_task_scheduler", XPC_ACTIVITY_CHECK_IN, &stru_10004C250);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "End nand_task_scheduler", v19, 2u);
  }

  dispatch_main();
}

void sub_10001D624(id a1, BGRepeatingSystemTask *a2)
{
  outputStruct = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "running idleStack_low task (BGST)", v3, 2u);
  }

  if ((getTunnelOutputThroughSizeOnlyHandling(0, 782, 0, &outputStruct) & 1) == 0)
  {
    fwrite("IDSTK ping failed to send.\n", 0x1BuLL, 1uLL, __stderrp);
  }

  [(BGRepeatingSystemTask *)a2 setTaskCompleted];
}

void sub_10001D6D0(id a1, BGRepeatingSystemTask *a2)
{
  outputStruct = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "running idleStack_lowNoDI task (BGST)", v3, 2u);
  }

  if ((getTunnelOutputThroughSizeOnlyHandling(0, 782, 1, &outputStruct) & 1) == 0)
  {
    fwrite("IDSTK ping failed to send.\n", 0x1BuLL, 1uLL, __stderrp);
  }

  [(BGRepeatingSystemTask *)a2 setTaskCompleted];
}

void sub_10001D77C(id a1, BGRepeatingSystemTask *a2)
{
  outputStruct = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "running idleStack_lowNoSUI task (BGST)", v3, 2u);
  }

  if ((getTunnelOutputThroughSizeOnlyHandling(0, 782, 2, &outputStruct) & 1) == 0)
  {
    fwrite("IDSTK ping failed to send.\n", 0x1BuLL, 1uLL, __stderrp);
  }

  [(BGRepeatingSystemTask *)a2 setTaskCompleted];
}

void sub_10001D828(id a1, BGRepeatingSystemTask *a2)
{
  outputStruct = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "running idleStack_med task (BGST)", v3, 2u);
  }

  if ((getTunnelOutputThroughSizeOnlyHandling(0, 782, 8, &outputStruct) & 1) == 0)
  {
    fwrite("IDSTK ping failed to send.\n", 0x1BuLL, 1uLL, __stderrp);
  }

  [(BGRepeatingSystemTask *)a2 setTaskCompleted];
}

void sub_10001D8D4(id a1, BGRepeatingSystemTask *a2)
{
  outputStruct = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "running idleStack_high task (BGST)", v3, 2u);
  }

  if ((getTunnelOutputThroughSizeOnlyHandling(0, 782, 16, &outputStruct) & 1) == 0)
  {
    fwrite("IDSTK ping failed to send.\n", 0x1BuLL, 1uLL, __stderrp);
  }

  [(BGRepeatingSystemTask *)a2 setTaskCompleted];
}

void sub_10001D980(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2) != 2)
  {
    goto LABEL_41;
  }

  outputStruct = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "running nand_task_scheduler", buf, 2u);
  }

  v3 = 1;
LABEL_5:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "iter# %u - BEGIN", buf, 8u);
  }

  v4 = populateTunnelOutputBufferWithoutSizeQuery_withFlags(0, 39, 1025, 0, &outputStruct, 4uLL, 0, 0);
  if (v4)
  {
    v5 = outputStruct;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error: BDR tunnel cmd failed", buf, 2u);
    }

    v5 = 0;
    outputStruct = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v6 = "fail";
    if (v4)
    {
      v6 = "pass";
    }

    v14 = v3;
    v7 = "NO";
    if (!v5)
    {
      v7 = "YES";
    }

    v15 = 2080;
    *v16 = v6;
    *&v16[8] = 2080;
    v17 = v7;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "iter# %u - ASP status %s - is BDR done: %s (%u)", buf, 0x22u);
    v5 = outputStruct;
  }

  if (v5)
  {
    v8 = 0;
    while (1)
    {
      should_defer = xpc_activity_should_defer(a2);
      v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (should_defer)
      {
        break;
      }

      ++v8;
      if (v10)
      {
        *buf = 67109632;
        v14 = v8;
        v15 = 1024;
        *v16 = 6;
        *&v16[4] = 1024;
        *&v16[6] = 5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "  - defer chck %u/%u - sleeping for %us", buf, 0x14u);
      }

      sleep(5u);
      if (v8 == 6)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v14 = v3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "iter# %u - DONE sleeping - more BDR", buf, 8u);
        }

        ++v3;
        goto LABEL_5;
      }
    }

    if (v10)
    {
      *buf = 67109376;
      v14 = v8 + 1;
      v15 = 1024;
      *v16 = 6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "  - defer chck %u/%u - deferring!!!!", buf, 0xEu);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v3;
      v11 = "iter# %u - DONE for now - more BDR";
      goto LABEL_31;
    }
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    *buf = 67109120;
    v14 = v3;
    v11 = "iter# %u - DONE - no more BDR";
LABEL_31:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, buf, 8u);
  }

  if (outputStruct && xpc_activity_should_defer(a2))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "deferring nand_task_scheduler daemon\n", buf, 2u);
    }

    xpc_activity_set_state(a2, 3);
    goto LABEL_41;
  }

LABEL_39:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "stopping nand_task_scheduler daemon\n", buf, 2u);
  }

LABEL_41:
  xpc_transaction_exit_clean();
}

uint64_t FindServiceUsingIterator(const char *a1)
{
  iterator = 0;
  RootEntry = IORegistryGetRootEntry(kIOMainPortDefault);
  if (!RootEntry)
  {
    return 0;
  }

  v3 = RootEntry;
  if (IORegistryEntryCreateIterator(RootEntry, "IOService", 1u, &iterator))
  {
    v4 = 0;
  }

  else
  {
    while (1)
    {
      v5 = IOIteratorNext(iterator);
      v4 = v5;
      if (!v5 || IOObjectConformsTo(v5, a1))
      {
        break;
      }

      IOObjectRelease(v4);
    }
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
    iterator = 0;
  }

  IOObjectRelease(v3);
  return v4;
}

uint64_t findNandExporter(char ***a1)
{
  v2 = nand_exporters_tunnel;
  if (nand_exporters_tunnel)
  {
    v3 = &nand_exporters_tunnel;
    v4 = "NANDInfo: findNandExporter: Controller found: %s\n";
    do
    {
      v5 = IOServiceMatching(v2);
      if (v5)
      {
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
        if (MatchingService)
        {
          goto LABEL_11;
        }
      }

      v7 = v3[21];
      v3 += 21;
      v2 = v7;
    }

    while (v7);
  }

  v3 = &nand_exporters_tunnel;
  fwrite("Failed to find matching service with IOServiceGetMatchingService, trying iterator...\n", 0x55uLL, 1uLL, __stderrp);
  v8 = nand_exporters_tunnel;
  if (nand_exporters_tunnel)
  {
    v4 = "Find service for class %s\n";
    while (1)
    {
      MatchingService = FindServiceUsingIterator(v8);
      if (MatchingService)
      {
        break;
      }

      v9 = v3[21];
      v3 += 21;
      v8 = v9;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    v10 = MatchingService;
    syslog(5, v4, *v3);
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_12:
  *a1 = v3;
  return v10;
}

char *findNandExporter_tunnel(char ***a1)
{
  connect = 0;
  *a1 = 0;
  v2 = pthread_mutex_trylock(&serializeAccess);
  if (v2)
  {
    if (v2 != 16 || (syslog(4, "Warning: NANDInfo: NANDExporter: serializeAccess already locked. waiting for lock !\n"), pthread_mutex_lock(&serializeAccess)))
    {
      v3 = __error();
      syslog(3, "Error: NANDInfo: NANDExporter: pthread_mutex_trylock() (%d) failed \n", *v3);
      return 0;
    }
  }

  syslog(5, "NANDInfo: NANDExporter object locked ! \n");
  v5 = &nand_exporters_tunnel;
  result = nand_exporters_tunnel;
  if (!nand_exporters_tunnel)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  while (1)
  {
    v6 = IOServiceMatching(result);
    if (!v6)
    {
      goto LABEL_10;
    }

    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
    if (!MatchingService)
    {
      goto LABEL_10;
    }

    v8 = MatchingService;
    if (!IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      break;
    }

    IOServiceClose(connect);
    connect = 0;
    IOObjectRelease(v8);
LABEL_10:
    v9 = v5[21];
    v5 += 21;
    result = v9;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  syslog(5, "NANDInfo: findNandExporter_tunnel: Controller found: %s\n", *v5);
  result = 1;
LABEL_12:
  *(v5 + 4) = connect;
  *(v5 + 5) = v8;
  *a1 = v5;
  return result;
}

uint64_t ReleaseIOInterfaces(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    IOServiceClose(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 20);
  if (v3)
  {
    IOObjectRelease(v3);
    *(a1 + 20) = 0;
  }

  syslog(5, "NANDInfo: NANDExporter object unlocked ! \n");

  return pthread_mutex_unlock(&serializeAccess);
}