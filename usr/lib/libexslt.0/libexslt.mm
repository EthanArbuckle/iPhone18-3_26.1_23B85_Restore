void exsltCommonRegister(void)
{
  xsltRegisterExtModuleFunction("node-set", "http://exslt.org/common", exsltNodeSetFunction);
  xsltRegisterExtModuleFunction("object-type", "http://exslt.org/common", exsltObjectTypeFunction);
  v0 = MEMORY[0x29EDC97D0];
  v1 = MEMORY[0x29EDC97D8];

  xsltRegisterExtModuleElement("document", "http://exslt.org/common", v0, v1);
}

void exsltNodeSetFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    value = ctxt->value;
    if (value && (value->type | 8) == 9)
    {

      xsltFunctionNodeSet(ctxt, 1);
    }

    else
    {
      TransformContext = xsltXPathGetTransformContext(ctxt);
      RVT = xsltCreateRVT(TransformContext);
      if (RVT)
      {
        v6 = RVT;
        xsltRegisterLocalRVT(TransformContext, RVT);
        v7 = xmlXPathPopString(ctxt);
        v8 = xmlNewDocText(v6, v7);
        xmlAddChild(v6, v8);
        v9 = xmlXPathNewNodeSet(v8);
        if (!v9)
        {
          xsltTransformError(TransformContext, 0, TransformContext->inst, "exsltNodeSetFunction: Failed to create a node set object.\n");
          TransformContext->state = XSLT_STATE_STOPPED;
        }

        if (v7)
        {
          free(v7);
        }

        valuePush(ctxt, v9);
      }

      else
      {
        xsltTransformError(TransformContext, 0, TransformContext->inst, "exsltNodeSetFunction: Failed to create a tree fragment.\n");
        TransformContext->state = XSLT_STATE_STOPPED;
      }
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/common.c", 20, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltObjectTypeFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    v3 = valuePop(ctxt);
    v4 = v3->type - 1;
    if (v4 < 9 && ((0x18Fu >> v4) & 1) != 0)
    {
      v5 = xmlXPathNewCString((&off_29EEABF88)[v4]);
      xmlXPathFreeObject(v3);

      valuePush(ctxt, v5);
    }

    else
    {
      (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "object-type() invalid arg\n");
      ctxt->error = 11;

      xmlXPathFreeObject(v3);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/common.c", 69, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltDateRegister(void)
{
  xsltRegisterExtModuleFunction("add", "http://exslt.org/dates-and-times", exsltDateAddFunction);
  xsltRegisterExtModuleFunction("add-duration", "http://exslt.org/dates-and-times", exsltDateAddDurationFunction);
  xsltRegisterExtModuleFunction("date", "http://exslt.org/dates-and-times", exsltDateDateFunction);
  xsltRegisterExtModuleFunction("date-time", "http://exslt.org/dates-and-times", exsltDateDateTimeFunction);
  xsltRegisterExtModuleFunction("day-abbreviation", "http://exslt.org/dates-and-times", exsltDateDayAbbreviationFunction);
  xsltRegisterExtModuleFunction("day-in-month", "http://exslt.org/dates-and-times", exsltDateDayInMonthFunction);
  xsltRegisterExtModuleFunction("day-in-week", "http://exslt.org/dates-and-times", exsltDateDayInWeekFunction);
  xsltRegisterExtModuleFunction("day-in-year", "http://exslt.org/dates-and-times", exsltDateDayInYearFunction);
  xsltRegisterExtModuleFunction("day-name", "http://exslt.org/dates-and-times", exsltDateDayNameFunction);
  xsltRegisterExtModuleFunction("day-of-week-in-month", "http://exslt.org/dates-and-times", exsltDateDayOfWeekInMonthFunction);
  xsltRegisterExtModuleFunction("difference", "http://exslt.org/dates-and-times", exsltDateDifferenceFunction);
  xsltRegisterExtModuleFunction("duration", "http://exslt.org/dates-and-times", exsltDateDurationFunction);
  xsltRegisterExtModuleFunction("hour-in-day", "http://exslt.org/dates-and-times", exsltDateHourInDayFunction);
  xsltRegisterExtModuleFunction("leap-year", "http://exslt.org/dates-and-times", exsltDateLeapYearFunction);
  xsltRegisterExtModuleFunction("minute-in-hour", "http://exslt.org/dates-and-times", exsltDateMinuteInHourFunction);
  xsltRegisterExtModuleFunction("month-abbreviation", "http://exslt.org/dates-and-times", exsltDateMonthAbbreviationFunction);
  xsltRegisterExtModuleFunction("month-in-year", "http://exslt.org/dates-and-times", exsltDateMonthInYearFunction);
  xsltRegisterExtModuleFunction("month-name", "http://exslt.org/dates-and-times", exsltDateMonthNameFunction);
  xsltRegisterExtModuleFunction("second-in-minute", "http://exslt.org/dates-and-times", exsltDateSecondInMinuteFunction);
  xsltRegisterExtModuleFunction("seconds", "http://exslt.org/dates-and-times", exsltDateSecondsFunction);
  xsltRegisterExtModuleFunction("sum", "http://exslt.org/dates-and-times", exsltDateSumFunction);
  xsltRegisterExtModuleFunction("time", "http://exslt.org/dates-and-times", exsltDateTimeFunction);
  xsltRegisterExtModuleFunction("week-in-month", "http://exslt.org/dates-and-times", exsltDateWeekInMonthFunction);
  xsltRegisterExtModuleFunction("week-in-year", "http://exslt.org/dates-and-times", exsltDateWeekInYearFunction);

  xsltRegisterExtModuleFunction("year", "http://exslt.org/dates-and-times", exsltDateYearFunction);
}

void exsltDateAddFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  v87 = *MEMORY[0x29EDCA608];
  if (a2 != 2)
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3629, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }

    goto LABEL_9;
  }

  v3 = xmlXPathPopString(ctxt);
  if (ctxt->error)
  {
LABEL_9:
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  v4 = v3;
  v5 = xmlXPathPopString(ctxt);
  if (!ctxt->error)
  {
    v8 = v5;
    v9 = 0;
    if (!v4 || !v5 || (v10 = exsltDateParse(v5), (v9 = v10) == 0))
    {
LABEL_32:
      free(v4);
      free(v8);
      if (v9)
      {
        v28 = xmlXPathWrapString(v9);
      }

      else
      {
        v28 = xmlXPathNewCString(&unk_29878660E);
      }

      valuePush(ctxt, v28);
      goto LABEL_9;
    }

    if ((*v10 & 0xFFFFFFF8) != 8 || (exsltDateParseDuration(v4, v11), !v12))
    {
      free(v9);
LABEL_31:
      v9 = 0;
      goto LABEL_32;
    }

    v13 = v12;
    Date = exsltDateCreateDate(*v9);
    v15 = Date;
    if (Date)
    {
      v16 = *v13 / 12;
      v17 = *v13 % 12 + (*(v9 + 4) & 0xF);
      v18 = v17 - 12;
      if (v17 < 0xD)
      {
        v19 = *v13 / 12;
      }

      else
      {
        v19 = v16 + 1;
      }

      if (v17 < 0xD)
      {
        v18 = *v13 % 12 + (*(v9 + 4) & 0xF);
      }

      v20 = v17 + 12;
      v21 = v16 - 1;
      v22 = v17 <= 0;
      v23 = v17 <= 0 ? v21 : v19;
      v24 = v22 ? v20 : v18;
      v25 = Date[2] & 0xFFFFFFF0 | v24;
      *(Date + 4) = v25;
      v26 = v23 + 400 * (*(v13 + 1) / 146097);
      if (v26 < 1)
      {
        v27 = *(v9 + 1);
        if (v26)
        {
          v29 = v27 < (0x8000000000000002 - v26);
        }

        else
        {
          v29 = 0;
        }

        if (v29)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v27 = *(v9 + 1);
        if (v27 > (v26 ^ 0x7FFFFFFFFFFFFFFFLL))
        {
LABEL_85:
          free(v15);
          v15 = 0;
          goto LABEL_96;
        }
      }

      v30 = v27 + v26;
      Date[1] = v27 + v26;
      v31 = Date[4] & 0xE001 | (2 * ((v9[16] >> 1) & 0xFFF));
      *(Date + 16) = v31;
      *(Date + 16) = v31 & 0xFFFE | v9[16] & 1;
      v32 = *(v9 + 3) + v13[2];
      v33 = fmod(v32, 60.0);
      *(v15 + 3) = v33;
      v34 = (v32 / 60.0);
      v35 = v34 / 60;
      v36 = v34 % 60 + ((*(v9 + 4) >> 14) & 0x3F);
      if (v36 > 59)
      {
        ++v35;
        LOBYTE(v36) = v36 - 60;
      }

      v37 = v25 & 0xFFF03FFF | ((v36 & 0x3F) << 14);
      *(v15 + 4) = v37;
      v38 = v35 % 24 + ((*(v9 + 4) >> 9) & 0x1F);
      if (v38 <= 23)
      {
        v39 = v35 / 24;
      }

      else
      {
        v39 = v35 / 24 + 1;
      }

      if (v38 > 23)
      {
        LOBYTE(v38) = v38 - 24;
      }

      v40 = v37 & 0xFFFFC1FF | ((v38 & 0x1F) << 9);
      *(v15 + 4) = v40;
      v41 = (*(v9 + 4) >> 4) & 0x1F;
      if ((v30 & 3) != 0)
      {
        v42 = daysInMonth[v24 - 1];
      }

      else
      {
        v43 = v24 - 1;
        if ((0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v30) <= 0xA3D70A3D70A3D70 && (v30 & 0xC) != 0)
        {
          v42 = daysInMonth[v43];
        }

        else
        {
          v42 = daysInMonthLeap[v43];
        }
      }

      if (v42 >= v41)
      {
        if (v41)
        {
          v42 = (*(v9 + 4) >> 4) & 0x1F;
        }

        else
        {
          v42 = 1;
        }
      }

      v44 = v39 + v42 + *(v13 + 1) % 146097;
LABEL_58:
      v45 = (v30 & 0xC) == 0 || (0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v30) > 0xA3D70A3D70A3D70;
      v46 = v45;
      while (1)
      {
        if (v44 <= 0)
        {
          if ((v40 & 0xE) != 0)
          {
            v40 = v40 & 0xFFFFFFF0 | (v40 - 1) & 0xF;
            *(v15 + 4) = v40;
          }

          else
          {
            if (v30 == 0x8000000000000002)
            {
              goto LABEL_85;
            }

            v40 = v40 & 0xFFFFFFF0 | 0xC;
            *(v15 + 4) = v40;
            v15[1] = --v30;
          }

          if ((v30 & 3) != 0 || ((0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v30) <= 0xA3D70A3D70A3D70 ? (v49 = (v30 & 0xC) == 0) : (v49 = 1), v50 = daysInMonthLeap, !v49))
          {
            v50 = daysInMonth;
          }

          v44 += v50[(v40 & 0xF) - 1];
          goto LABEL_58;
        }

        v47 = (v40 & 0xF) - 1;
        if ((v30 & 3) != 0 || !v46)
        {
          v48 = daysInMonth[v47];
        }

        else
        {
          v48 = daysInMonthLeap[v47];
        }

        if (v44 <= v48)
        {
          break;
        }

        v44 -= v48;
        if ((~v40 & 0xC) == 0)
        {
          if (v30 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_85;
          }

          v40 = v40 & 0xFFFFFFF0 | 1;
          *(v15 + 4) = v40;
          v15[1] = ++v30;
          goto LABEL_58;
        }

        v40 = v40 & 0xFFFFFFF0 | (v40 + 1) & 0xF;
        *(v15 + 4) = v40;
      }

      *(v15 + 4) = v40 & 0xFFFFFE0F | (16 * (v44 & 0x1F));
      v51 = *v15;
      if (*v15 != 15)
      {
        if ((v40 & 0xFFE00) != 0 || v33 != 0.0)
        {
          v52 = 15;
          goto LABEL_95;
        }

        if (v51 == 14)
        {
          goto LABEL_96;
        }

        if ((v44 & 0x1F) != 1)
        {
          v52 = 14;
          goto LABEL_95;
        }

        if (v51 != 12 && (v40 & 0xF) != 1)
        {
          v52 = 12;
LABEL_95:
          *v15 = v52;
        }
      }
    }

LABEL_96:
    free(v9);
    free(v13);
    if (v15)
    {
      v53 = *v15;
      if (*v15 == 1)
      {
        v54 = exsltDateFormatTime(v15);
        goto LABEL_160;
      }

      if (v53 == 14)
      {
        v54 = exsltDateFormatDate(v15);
        goto LABEL_160;
      }

      if (v53 == 15)
      {
        v54 = exsltDateFormatDateTime(v15);
LABEL_160:
        v9 = v54;
        goto LABEL_161;
      }

      if ((v53 & 8) == 0)
      {
        v9 = 0;
LABEL_161:
        free(v15);
        goto LABEL_32;
      }

      v86 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      *cur = 0u;
      v81 = 0u;
      v55 = v15[1];
      if (v55 <= 0)
      {
        v57 = &cur[1];
        cur[0] = 45;
        v56 = 1;
      }

      else
      {
        v56 = 0;
        v57 = cur;
      }

      v79 = 0;
      v58 = 1 - v55;
      if (v55 >= 1)
      {
        v58 = v55;
      }

      memset(v78, 0, sizeof(v78));
      if (v58 < 1)
      {
        v62 = v78;
      }

      else
      {
        v59 = 0;
        do
        {
          v60 = v59 + 1;
          *(v78 + v59) = (v58 % 0xA) | 0x30;
          if (v58 < 0xA)
          {
            break;
          }

          v58 /= 0xAuLL;
        }

        while (v59++ < 0x62);
        v62 = v78 + v60;
      }

      v63 = v62 - v78;
      if (v62 - v78 <= 3)
      {
        memset(v62, 48, v78 + 4 - v62);
        v62 = v78 + 4;
      }

      if (v62 <= v78)
      {
        if (v53 != 12)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v64 = 4;
        if (v63 > 4)
        {
          v64 = v63;
        }

        v65 = v78 + v64 - 1;
        do
        {
          v66 = v56++;
          v22 = v65 > v78;
          v67 = *v65--;
          *v57 = v67;
          if (!v22)
          {
            break;
          }

          v57 = &cur[v56];
        }

        while (v66 < 0x62);
        if (v53 != 12)
        {
LABEL_141:
          v72 = &cur[v56];
          v73 = *(v15 + 16);
          if ((v73 & 0x1FFF) != 0)
          {
            if ((8 * v73) <= 0xFu)
            {
              if (v56 <= 98)
              {
                *v72++ = 90;
              }

              goto LABEL_159;
            }

            v74 = (8 * v73) >> 4;
            if (v74 < 0)
            {
              v74 = -v74;
            }

            if (v56 <= 98)
            {
              if ((v15[4] & 0x1000) != 0)
              {
                v75 = 45;
              }

              else
              {
                v75 = 43;
              }

              cur[v56] = v75;
              if (v56 != 98)
              {
                v72[1] = (v74 / 0x258u) | 0x30;
                if (v56 <= 96)
                {
                  v76 = v74 / 0x3Cu;
                  v72[2] = (v76 % 0xAu) | 0x30;
                  if (v56 != 96)
                  {
                    v72[3] = 58;
                    if (v56 < 95)
                    {
                      v77 = v74 - 60 * v76;
                      v72[4] = (v77 / 0xAu) | 0x30;
                      if (v56 == 94)
                      {
                        v72 += 5;
                      }

                      else
                      {
                        v72[5] = (v77 % 0xAu) | 0x30;
                        v72 += 6;
                      }

                      goto LABEL_159;
                    }
                  }
                }
              }

              v56 = 99;
            }

            v72 = &cur[v56];
          }

LABEL_159:
          *v72 = 0;
          v54 = xmlStrdup(cur);
          goto LABEL_160;
        }

        if (v66 > 0x61)
        {
LABEL_131:
          if (v56 <= 98)
          {
            v68 = &cur[v56];
            v69 = *(v15 + 4);
            if ((v69 & 0xEu) <= 9)
            {
              v70 = 48;
            }

            else
            {
              v70 = 49;
            }

            *v68 = v70;
            if (v56 == 98)
            {
              v56 = 99;
            }

            else
            {
              v71 = v69 & 0xF;
              if (v71 >= 0xA)
              {
                LOBYTE(v71) = v71 - 10;
              }

              v56 += 2;
              v68[1] = v71 | 0x30;
            }
          }

          goto LABEL_141;
        }

        v57 = &cur[v56];
      }

      ++v56;
      *v57 = 45;
      goto LABEL_131;
    }

    goto LABEL_31;
  }

  v6 = *MEMORY[0x29EDCA608];

  free(v4);
}

void exsltDateAddDurationFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 2)
  {
    v3 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      return;
    }

    v4 = v3;
    v5 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {

      free(v4);
      return;
    }

    v7 = v5;
    v8 = 0;
    if (!v4 || !v5)
    {
      goto LABEL_21;
    }

    v10 = exsltDateParseDuration(v5, v6);
    if (v9)
    {
      v11 = v9;
      exsltDateParseDuration(v4, v10);
      v8 = v12;
      if (!v12)
      {
LABEL_19:
        free(v11);
LABEL_21:
        free(v4);
        free(v7);
        if (v8)
        {
          v15 = xmlXPathWrapString(v8);
        }

        else
        {
          v15 = xmlXPathNewCString(&unk_29878660E);
        }

        valuePush(ctxt, v15);
        return;
      }

      Duration = exsltDateCreateDuration();
      v14 = Duration;
      if (Duration && !_exsltDateAddDurCalc(Duration, v11, v8))
      {
        free(v14);
        v14 = 0;
      }

      free(v11);
      free(v8);
      if (v14)
      {
        v8 = exsltDateFormatDuration(v14);
        v11 = v14;
        goto LABEL_19;
      }
    }

    v8 = 0;
    goto LABEL_21;
  }

  xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3666, 12);
  if (ctxt)
  {
    ctxt->error = 12;
  }
}

void exsltDateDateFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3183, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 != 1)
  {
    goto LABEL_12;
  }

  v4 = xmlXPathPopString(ctxt);
  if (ctxt->error)
  {
    v3 = 11;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3189, 11);
    goto LABEL_7;
  }

  v5 = v4;
  if (!v4)
  {
LABEL_12:
    v7 = exsltDateCurrent();
    v5 = 0;
    v8 = 1;
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v6 = exsltDateParse(v4);
  if (!v6)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  if ((*v6 & 0xFFFFFFFE) != 0xE)
  {
    free(v6);
    goto LABEL_16;
  }

  v8 = 0;
LABEL_13:
  v9 = exsltDateFormatDate(v7);
  free(v7);
  if (v9)
  {
    v10 = xmlXPathWrapString(v9);
    goto LABEL_18;
  }

LABEL_17:
  (*MEMORY[0x29EDC97E0])(*MEMORY[0x29EDC97E8], "{http://exslt.org/dates-and-times}date: invalid date or format %s\n", v5);
  v10 = xmlXPathNewCString(&unk_29878660E);
LABEL_18:
  valuePush(ctxt, v10);
  if ((v8 & 1) == 0)
  {

    free(v5);
  }
}

void exsltDateDateTimeFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2)
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3158, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }

  else
  {
    v3 = exsltDateCurrent();
    if (v3 && (v4 = v3, v5 = exsltDateFormatDateTime(v3), free(v4), v5))
    {
      v6 = xmlXPathWrapString(v5);
    }

    else
    {
      v6 = xmlXPathNewCString(&unk_29878660E);
    }

    valuePush(ctxt, v6);
  }
}

void exsltDateDayAbbreviationFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3532, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3539, 11);
      goto LABEL_7;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = exsltDateDayInWeek(v5);
  if (xmlXPathIsNaN(v6))
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 < 1.0;
  }

  LODWORD(v8) = v6;
  v9 = v7 || v6 > 7.0;
  v8 = v8;
  if (v9)
  {
    v8 = 0;
  }

  v10 = &exsltDateDayAbbreviation_dayAbbreviations + 4 * v8;
  if (v5)
  {
    free(v5);
  }

  v11 = xmlStrdup(v10);
  v12 = xmlXPathWrapString(v11);

  valuePush(ctxt, v12);
}

void exsltDateDayInMonthFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3461, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3461, 11);
      goto LABEL_7;
    }

    v5 = v4;
    if (v4)
    {
      v6 = exsltDateParse(v4);
      if (v6)
      {
        if (*v6 <= 0xFu && ((1 << *v6) & 0xC044) != 0)
        {
          v8 = 0;
          goto LABEL_17;
        }

        free(v6);
      }

      v9 = *MEMORY[0x29EDC97C8];
LABEL_22:
      free(v5);
      goto LABEL_23;
    }
  }

  v6 = exsltDateCurrent();
  if (v6)
  {
    v5 = 0;
    v8 = 1;
LABEL_17:
    v9 = ((v6[4] >> 4) & 0x1F);
    free(v6);
    if (v8)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = *MEMORY[0x29EDC97C8];
LABEL_23:
  v10 = xmlXPathNewFloat(v9);

  valuePush(ctxt, v10);
}

void exsltDateDayInWeekFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3479, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3479, 11);
      goto LABEL_7;
    }

    v7 = v4;
    v5 = exsltDateDayInWeek(v4);
    if (v7)
    {
      free(v7);
    }
  }

  else
  {
    v5 = exsltDateDayInWeek(0);
  }

  v6 = xmlXPathNewFloat(v5);

  valuePush(ctxt, v6);
}

void exsltDateDayInYearFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3452, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3452, 11);
      goto LABEL_7;
    }

    v5 = v4;
    if (v4)
    {
      v6 = exsltDateParse(v4);
      if (v6)
      {
        if ((*v6 & 0xFFFFFFFE) == 0xE)
        {
          v7 = 0;
LABEL_14:
          v8 = *(v6 + 1);
          if ((v8 & 3) == 0 && (0x8F5C28F5C28F5C29 * v8 + 0x51EB851EB851EB8 <= 0xA3D70A3D70A3D70 ? (v9 = (*(v6 + 1) & 0xCLL) == 0) : (v9 = 1), v9))
          {
            v10 = &dayInLeapYearByMonth;
          }

          else
          {
            v10 = &dayInYearByMonth;
          }

          v11 = v10[(v6[4] & 0xF) - 1] + ((v6[4] >> 4) & 0x1F);
          free(v6);
          v12 = v11;
          if (v7)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

        free(v6);
      }

      v12 = *MEMORY[0x29EDC97C8];
LABEL_27:
      free(v5);
      goto LABEL_28;
    }
  }

  v6 = exsltDateCurrent();
  if (v6)
  {
    v5 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  v12 = *MEMORY[0x29EDC97C8];
LABEL_28:
  v13 = xmlXPathNewFloat(v12);

  valuePush(ctxt, v13);
}

void exsltDateDayNameFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3495, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3502, 11);
      goto LABEL_7;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = exsltDateDayInWeek(v5);
  if (xmlXPathIsNaN(v6))
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 < 1.0;
  }

  v8 = v7 || v6 > 7.0;
  v9 = v6;
  if (v8)
  {
    v9 = 0;
  }

  v10 = &exsltDateDayName_dayNames + 10 * v9;
  if (v5)
  {
    free(v5);
  }

  v11 = xmlStrdup(v10);
  v12 = xmlXPathWrapString(v11);

  valuePush(ctxt, v12);
}

void exsltDateDayOfWeekInMonthFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3470, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3470, 11);
      goto LABEL_7;
    }

    v5 = v4;
    if (v4)
    {
      v6 = exsltDateParse(v4);
      if (v6)
      {
        if ((*v6 & 0xFFFFFFFE) == 0xE)
        {
          v7 = 0;
          goto LABEL_14;
        }

        free(v6);
      }

      v9 = *MEMORY[0x29EDC97C8];
LABEL_19:
      free(v5);
      goto LABEL_20;
    }
  }

  v6 = exsltDateCurrent();
  if (v6)
  {
    v5 = 0;
    v7 = 1;
LABEL_14:
    v8 = ((((147 * (((v6[4] >> 4) & 0x1F) - 1)) >> 8) >> 2) + ((((147 * (((v6[4] >> 4) & 0x1F) - 1)) >> 8) & 0x80) >> 7) + 1);
    free(v6);
    v9 = v8;
    if (v7)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v9 = *MEMORY[0x29EDC97C8];
LABEL_20:
  v10 = xmlXPathNewFloat(v9);

  valuePush(ctxt, v10);
}

void exsltDateDifferenceFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 2)
  {
    v3 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      return;
    }

    v4 = v3;
    v5 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {

      free(v4);
      return;
    }

    v6 = v5;
    v7 = 0;
    if (!v4 || !v5)
    {
      goto LABEL_22;
    }

    v8 = exsltDateParse(v5);
    if (v8)
    {
      v9 = v8;
      v10 = exsltDateParse(v4);
      if (!v10)
      {
        v7 = 0;
        v11 = v9;
        goto LABEL_21;
      }

      v11 = v10;
      if ((*v9 & 0xFFFFFFF8) != 8 || (*v10 & 0xFFFFFFF8) != 8)
      {
        free(v9);
        v7 = 0;
        goto LABEL_21;
      }

      v12 = _exsltDateDifference(v9, v10, 0);
      free(v9);
      free(v11);
      if (v12)
      {
        v7 = exsltDateFormatDuration(v12);
        v11 = v12;
LABEL_21:
        free(v11);
        goto LABEL_22;
      }
    }

    v7 = 0;
LABEL_22:
    free(v4);
    free(v6);
    if (v7)
    {
      v13 = xmlXPathWrapString(v7);
    }

    else
    {
      v13 = xmlXPathNewCString(&unk_29878660E);
    }

    valuePush(ctxt, v13);
    return;
  }

  xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3703, 12);
  if (ctxt)
  {
    ctxt->error = 12;
  }
}

void exsltDateDurationFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3741, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 != 1)
  {
    goto LABEL_10;
  }

  v4 = xmlXPathPopString(ctxt);
  if (ctxt->error)
  {
    v3 = 11;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3748, 11);
    goto LABEL_7;
  }

  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x29C2929B0](v4);
    v7 = 0;
  }

  else
  {
LABEL_10:
    v6 = exsltDateSeconds(0);
    v5 = 0;
    v7 = 1;
  }

  if (!xmlXPathIsNaN(v6))
  {
    v8 = floor(v6 / 86400.0);
    if (fabs(v8) < 9.22337204e18)
    {
      Duration = exsltDateCreateDuration();
      if (Duration)
      {
        v10 = Duration;
        Duration[1] = v8;
        *(Duration + 2) = v6 + v8 * -86400.0;
        v11 = exsltDateFormatDuration(Duration);
        free(v10);
        if (v7)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }
  }

  v11 = 0;
  if ((v7 & 1) == 0)
  {
LABEL_17:
    free(v5);
  }

LABEL_18:
  if (v11)
  {
    v12 = xmlXPathWrapString(v11);
  }

  else
  {
    v12 = xmlXPathNewCString(&unk_29878660E);
  }

  valuePush(ctxt, v12);
}

void exsltDateHourInDayFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3563, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 != 1)
  {
    goto LABEL_14;
  }

  v4 = xmlXPathPopString(ctxt);
  if (ctxt->error)
  {
    v3 = 11;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3563, 11);
    goto LABEL_7;
  }

  v5 = v4;
  if (v4)
  {
    v6 = exsltDateParse(v4);
    if (!v6)
    {
LABEL_13:
      v8 = *MEMORY[0x29EDC97C8];
LABEL_17:
      free(v5);
      goto LABEL_19;
    }

    v7 = 0;
    if (*v6 != 1 && *v6 != 15)
    {
      free(v6);
      goto LABEL_13;
    }
  }

  else
  {
LABEL_14:
    v6 = exsltDateCurrent();
    if (!v6)
    {
      v8 = *MEMORY[0x29EDC97C8];
      goto LABEL_19;
    }

    v5 = 0;
    v7 = 1;
  }

  v8 = ((v6[4] >> 9) & 0x1F);
  free(v6);
  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v9 = xmlXPathNewFloat(v8);

  valuePush(ctxt, v9);
}

void exsltDateLeapYearFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3296, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3303, 11);
      goto LABEL_7;
    }

    v5 = v4;
    if (v4)
    {
      v6 = exsltDateParse(v4);
      if (v6)
      {
        v7 = v6;
        if (*v6 <= 0xF && ((1 << *v6) & 0xD100) != 0)
        {
          v9 = 0;
          goto LABEL_17;
        }

        free(v6);
      }

      v14 = xmlXPathNewFloat(*MEMORY[0x29EDC97C8]);
LABEL_28:
      free(v5);
      goto LABEL_29;
    }
  }

  v10 = exsltDateCurrent();
  if (v10)
  {
    v7 = v10;
    v5 = 0;
    v9 = 1;
LABEL_17:
    v11 = *(v7 + 1);
    v12 = 0x8F5C28F5C28F5C29 * v11 + 0x51EB851EB851EB8 > 0xA3D70A3D70A3D70 || (*(v7 + 1) & 0xCLL) == 0;
    v13 = (v11 & 3) == 0 && v12;
    v14 = xmlXPathNewBoolean(v13);
    free(v7);
    if (v9)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v14 = xmlXPathNewFloat(*MEMORY[0x29EDC97C8]);
LABEL_29:

  valuePush(ctxt, v14);
}

void exsltDateMinuteInHourFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3572, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 != 1)
  {
    goto LABEL_14;
  }

  v4 = xmlXPathPopString(ctxt);
  if (ctxt->error)
  {
    v3 = 11;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3572, 11);
    goto LABEL_7;
  }

  v5 = v4;
  if (v4)
  {
    v6 = exsltDateParse(v4);
    if (!v6)
    {
LABEL_13:
      v8 = *MEMORY[0x29EDC97C8];
LABEL_17:
      free(v5);
      goto LABEL_19;
    }

    v7 = 0;
    if (*v6 != 1 && *v6 != 15)
    {
      free(v6);
      goto LABEL_13;
    }
  }

  else
  {
LABEL_14:
    v6 = exsltDateCurrent();
    if (!v6)
    {
      v8 = *MEMORY[0x29EDC97C8];
      goto LABEL_19;
    }

    v5 = 0;
    v7 = 1;
  }

  v8 = ((v6[4] >> 14) & 0x3F);
  free(v6);
  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v9 = xmlXPathNewFloat(v8);

  valuePush(ctxt, v9);
}

void exsltDateMonthAbbreviationFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3404, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3411, 11);
      goto LABEL_7;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = exsltDateMonthInYear(v5);
  if (xmlXPathIsNaN(v6))
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 < 1.0;
  }

  LODWORD(v8) = v6;
  v9 = v7 || v6 > 12.0;
  v8 = v8;
  if (v9)
  {
    v8 = 0;
  }

  v10 = &exsltDateMonthAbbreviation_monthAbbreviations + 4 * v8;
  if (v5)
  {
    free(v5);
  }

  v11 = xmlStrdup(v10);
  v12 = xmlXPathWrapString(v11);

  valuePush(ctxt, v12);
}

void exsltDateMonthInYearFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3351, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3351, 11);
      goto LABEL_7;
    }

    v7 = v4;
    v5 = exsltDateMonthInYear(v4);
    if (v7)
    {
      free(v7);
    }
  }

  else
  {
    v5 = exsltDateMonthInYear(0);
  }

  v6 = xmlXPathNewFloat(v5);

  valuePush(ctxt, v6);
}

void exsltDateMonthNameFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3367, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3374, 11);
      goto LABEL_7;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = exsltDateMonthInYear(v5);
  if (xmlXPathIsNaN(v6))
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 < 1.0;
  }

  v8 = v7 || v6 > 12.0;
  v9 = v6;
  if (v8)
  {
    v9 = 0;
  }

  v10 = &exsltDateMonthName_monthNames + 10 * v9;
  if (v5)
  {
    free(v5);
  }

  v11 = xmlStrdup(v10);
  v12 = xmlXPathWrapString(v11);

  valuePush(ctxt, v12);
}

void exsltDateSecondInMinuteFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3581, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3581, 11);
      goto LABEL_7;
    }

    v5 = v4;
    if (v4)
    {
      v6 = exsltDateParse(v4);
      if (v6)
      {
        if (*v6 == 1 || *v6 == 15)
        {
          v7 = *(v6 + 3);
          free(v6);
LABEL_18:
          v8 = v5;
          goto LABEL_19;
        }

        free(v6);
      }

      v7 = *MEMORY[0x29EDC97C8];
      goto LABEL_18;
    }
  }

  v8 = exsltDateCurrent();
  if (v8)
  {
    v7 = v8[3];
LABEL_19:
    free(v8);
    goto LABEL_20;
  }

  v7 = *MEMORY[0x29EDC97C8];
LABEL_20:
  v9 = xmlXPathNewFloat(v7);

  valuePush(ctxt, v9);
}

void exsltDateSecondsFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3597, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3604, 11);
      goto LABEL_7;
    }

    v7 = v4;
    v5 = exsltDateSeconds(v4);
    if (v7)
    {
      free(v7);
    }
  }

  else
  {
    v5 = exsltDateSeconds(0);
  }

  v6 = xmlXPathNewFloat(v5);

  valuePush(ctxt, v6);
}

void exsltDateSumFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 != 1)
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 2855, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }

    return;
  }

  value = ctxt->value;
  if (value && value->BOOLval)
  {
    user = value->user;
    value->BOOLval = 0;
    value->user = 0;
  }

  else
  {
    user = 0;
  }

  v5 = xmlXPathPopNodeSet(ctxt);
  if (ctxt->error)
  {
    return;
  }

  v6 = v5;
  if (!v5)
  {
    goto LABEL_32;
  }

  if (!v5->nodeNr)
  {
    v18 = xmlXPathNewCString(&unk_29878660E);
    valuePush(ctxt, v18);
    goto LABEL_24;
  }

  Duration = exsltDateCreateDuration();
  if (!Duration)
  {
LABEL_24:

    xmlXPathFreeNodeSet(v6);
    return;
  }

  v8 = Duration;
  if (v6->nodeNr < 1)
  {
LABEL_19:
    v16 = exsltDateFormatDuration(v8);
    free(v8);
    xmlXPathFreeNodeSet(v6);
    if (user)
    {
      xmlFreeNodeList(user);
    }

    if (v16)
    {
      v17 = xmlXPathWrapString(v16);
LABEL_33:

      valuePush(ctxt, v17);
      return;
    }

LABEL_32:
    v17 = xmlXPathNewCString(&unk_29878660E);
    goto LABEL_33;
  }

  v9 = 0;
  while (1)
  {
    v10 = xmlXPathCastNodeToString(v6->nodeTab[v9]);
    if (!v10)
    {
      break;
    }

    v12 = v10;
    exsltDateParseDuration(v10, v11);
    if (!v13)
    {
      free(v12);
LABEL_31:
      free(v8);
      xmlXPathFreeNodeSet(v6);
      goto LABEL_32;
    }

    v14 = v13;
    v15 = _exsltDateAddDurCalc(v8, v8, v13);
    free(v14);
    free(v12);
    if (!v15)
    {
      goto LABEL_31;
    }

    if (++v9 >= v6->nodeNr)
    {
      goto LABEL_19;
    }
  }

  xmlXPathFreeNodeSet(v6);

  free(v8);
}

void exsltDateTimeFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3222, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 != 1)
  {
    goto LABEL_14;
  }

  v4 = xmlXPathPopString(ctxt);
  if (ctxt->error)
  {
    v3 = 11;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3228, 11);
    goto LABEL_7;
  }

  v5 = v4;
  if (v4)
  {
    v6 = exsltDateParse(v4);
    if (!v6)
    {
LABEL_13:
      v8 = 0;
      goto LABEL_17;
    }

    v7 = v6;
    v8 = 0;
    if (*v6 != 1 && *v6 != 15)
    {
      free(v6);
      goto LABEL_13;
    }
  }

  else
  {
LABEL_14:
    v7 = exsltDateCurrent();
    v5 = 0;
    v8 = 1;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v9 = exsltDateFormatTime(v7);
  free(v7);
  if (v9)
  {
    v10 = xmlXPathWrapString(v9);
    goto LABEL_18;
  }

LABEL_17:
  (*MEMORY[0x29EDC97E0])(*MEMORY[0x29EDC97E8], "{http://exslt.org/dates-and-times}time: invalid date or format %s\n", v5);
  v10 = xmlXPathNewCString(&unk_29878660E);
LABEL_18:
  valuePush(ctxt, v10);
  if ((v8 & 1) == 0)
  {

    free(v5);
  }
}

void exsltDateWeekInMonthFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3443, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3443, 11);
      goto LABEL_7;
    }

    v5 = v4;
    if (v4)
    {
      v6 = exsltDateParse(v4);
      if (v6)
      {
        v7 = v6;
        if ((*v6 & 0xFFFFFFFE) == 0xE)
        {
          v8 = 0;
LABEL_14:
          v10 = *(v7 + 1);
          if ((v10 & 3) == 0 && (0x8F5C28F5C28F5C29 * v10 + 0x51EB851EB851EB8 <= 0xA3D70A3D70A3D70 ? (v11 = (*(v7 + 1) & 0xCLL) == 0) : (v11 = 1), v11))
          {
            v12 = &dayInLeapYearByMonth;
          }

          else
          {
            v12 = &dayInYearByMonth;
          }

          v13 = v7[4];
          v14 = _exsltDateDayInWeek(v12[(v13 & 0xF) - 1] + 1, v10);
          v15 = v14 + 6;
          if ((v14 + 6) >= 7)
          {
            v15 = v14 - 1;
          }

          v16 = ((((v13 >> 4) & 0x1F) + v15 - 1) * 0x4924924924924925) >> 64;
          v17 = (v16 >> 1) + (v16 >> 63) + 1;
          free(v7);
          v18 = v17;
          if (v8)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        free(v6);
      }

      v18 = *MEMORY[0x29EDC97C8];
LABEL_29:
      free(v5);
      goto LABEL_30;
    }
  }

  v9 = exsltDateCurrent();
  if (v9)
  {
    v7 = v9;
    v5 = 0;
    v8 = 1;
    goto LABEL_14;
  }

  v18 = *MEMORY[0x29EDC97C8];
LABEL_30:
  v19 = xmlXPathNewFloat(v18);

  valuePush(ctxt, v19);
}

void exsltDateWeekInYearFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3434, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3434, 11);
      goto LABEL_7;
    }

    v5 = v4;
    if (v4)
    {
      v6 = exsltDateParse(v4);
      if (v6)
      {
        v7 = v6;
        if ((*v6 & 0xFFFFFFFE) == 0xE)
        {
          v8 = 0;
LABEL_14:
          v10 = *(v7 + 1);
          if ((v10 & 3) == 0 && (0x8F5C28F5C28F5C29 * v10 + 0x51EB851EB851EB8 <= 0xA3D70A3D70A3D70 ? (v11 = (*(v7 + 1) & 0xCLL) == 0) : (v11 = 1), v11))
          {
            v12 = &dayInLeapYearByMonth;
          }

          else
          {
            v12 = &dayInYearByMonth;
          }

          v13 = v12[(v7[4] & 0xF) - 1] + ((v7[4] >> 4) & 0x1F);
          v14 = _exsltDateDayInWeek(v13, *(v7 + 1));
          v15 = v14 + 6;
          if ((v14 + 6) >= 7)
          {
            v15 = v14 - 1;
          }

          v16 = v13 - v15 + 3;
          if (v16 <= 0)
          {
            v19 = v10 - 1;
            if (v10 == 1)
            {
              v19 = -1;
            }

            v20 = (v19 & 0xC) == 0 || 0x8F5C28F5C28F5C29 * v19 + 0x51EB851EB851EB8 > 0xA3D70A3D70A3D70;
            v21 = 365;
            if (v20)
            {
              v21 = 366;
            }

            v11 = (v19 & 3) == 0;
            v17 = 365;
            if (v11)
            {
              v17 = v21;
            }
          }

          else if ((v10 & 3) != 0)
          {
            if (v16 <= 0x16D)
            {
              goto LABEL_51;
            }

            v17 = -365;
          }

          else
          {
            v22 = v10 % 25;
            v23 = 365;
            if ((v10 & 0xC) == 0)
            {
              v23 = 366;
            }

            if (v22)
            {
              v23 = 366;
            }

            if (v16 <= v23)
            {
LABEL_51:
              v25 = ((v16 - 1) * 0x4924924924924925) >> 64;
              v26 = (v25 >> 1) + (v25 >> 63) + 1;
              free(v7);
              v18 = v26;
              if (v8)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if ((v10 & 0xC) != 0)
            {
              v24 = -365;
            }

            else
            {
              v24 = -366;
            }

            if (v22)
            {
              v17 = -366;
            }

            else
            {
              v17 = v24;
            }
          }

          v16 += v17;
          goto LABEL_51;
        }

        free(v6);
      }

      v18 = *MEMORY[0x29EDC97C8];
LABEL_55:
      free(v5);
      goto LABEL_56;
    }
  }

  v9 = exsltDateCurrent();
  if (v9)
  {
    v7 = v9;
    v5 = 0;
    v8 = 1;
    goto LABEL_14;
  }

  v18 = *MEMORY[0x29EDC97C8];
LABEL_56:
  v27 = xmlXPathNewFloat(v18);

  valuePush(ctxt, v27);
}

void exsltDateYearFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 >= 2)
  {
    v3 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3262, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_7:
    ctxt->error = v3;
    return;
  }

  if (a2 == 1)
  {
    v4 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v3 = 11;
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/date.c", 3269, 11);
      goto LABEL_7;
    }

    v5 = v4;
    if (v4)
    {
      v6 = exsltDateParse(v4);
      if (v6)
      {
        if (*v6 <= 0xFu && ((1 << *v6) & 0xD100) != 0)
        {
          v8 = 0;
          goto LABEL_17;
        }

        free(v6);
      }

      v9 = *MEMORY[0x29EDC97C8];
LABEL_22:
      free(v5);
      goto LABEL_23;
    }
  }

  v6 = exsltDateCurrent();
  if (v6)
  {
    v5 = 0;
    v8 = 1;
LABEL_17:
    v9 = (v6[1] - (v6[1] < 1));
    free(v6);
    if (v8)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = *MEMORY[0x29EDC97C8];
LABEL_23:
  v10 = xmlXPathNewFloat(v9);

  valuePush(ctxt, v10);
}

int exsltDateXpathCtxtRegister(xmlXPathContextPtr ctxt, const xmlChar *prefix)
{
  if (!ctxt)
  {
    return -1;
  }

  if (!prefix)
  {
    return -1;
  }

  if (xmlXPathRegisterNs(ctxt, prefix, "http://exslt.org/dates-and-times"))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "add", "http://exslt.org/dates-and-times", exsltDateAddFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "add-duration", "http://exslt.org/dates-and-times", exsltDateAddDurationFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "date", "http://exslt.org/dates-and-times", exsltDateDateFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "date-time", "http://exslt.org/dates-and-times", exsltDateDateTimeFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "day-abbreviation", "http://exslt.org/dates-and-times", exsltDateDayAbbreviationFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "day-in-month", "http://exslt.org/dates-and-times", exsltDateDayInMonthFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "day-in-week", "http://exslt.org/dates-and-times", exsltDateDayInWeekFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "day-in-year", "http://exslt.org/dates-and-times", exsltDateDayInYearFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "day-name", "http://exslt.org/dates-and-times", exsltDateDayNameFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "day-of-week-in-month", "http://exslt.org/dates-and-times", exsltDateDayOfWeekInMonthFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "difference", "http://exslt.org/dates-and-times", exsltDateDifferenceFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "duration", "http://exslt.org/dates-and-times", exsltDateDurationFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "hour-in-day", "http://exslt.org/dates-and-times", exsltDateHourInDayFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "leap-year", "http://exslt.org/dates-and-times", exsltDateLeapYearFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "minute-in-hour", "http://exslt.org/dates-and-times", exsltDateMinuteInHourFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "month-abbreviation", "http://exslt.org/dates-and-times", exsltDateMonthAbbreviationFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "month-in-year", "http://exslt.org/dates-and-times", exsltDateMonthInYearFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "month-name", "http://exslt.org/dates-and-times", exsltDateMonthNameFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "second-in-minute", "http://exslt.org/dates-and-times", exsltDateSecondInMinuteFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "seconds", "http://exslt.org/dates-and-times", exsltDateSecondsFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "sum", "http://exslt.org/dates-and-times", exsltDateSumFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "time", "http://exslt.org/dates-and-times", exsltDateTimeFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "week-in-month", "http://exslt.org/dates-and-times", exsltDateWeekInMonthFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "week-in-year", "http://exslt.org/dates-and-times", exsltDateWeekInYearFunction))
  {
    return -1;
  }

  result = xmlXPathRegisterFuncNS(ctxt, "year", "http://exslt.org/dates-and-times", exsltDateYearFunction);
  if (result)
  {
    return -1;
  }

  return result;
}

int *exsltDateParse(unsigned __int8 *a1)
{
  v40 = a1;
  Date = exsltDateCreateDate(0);
  v3 = Date;
  if (Date)
  {
    v4 = *a1;
    if (v4 == 45)
    {
      if (a1[1] == 45)
      {
        v5 = a1[2];
        v40 = a1 + 2;
        if (v5 == 45)
        {
          v40 = a1 + 3;
          if (!_exsltDateParseGDay(Date, &v40))
          {
            v6 = *v40;
            v7 = (v6 - 43) > 0x2F || ((1 << (v6 - 43)) & 0x800000000005) == 0;
            v8 = !v7 || v6 == 0;
            if (v8 && !_exsltDateParseTimeZone(v3, &v40) && !*v40)
            {
              v9 = 2;
LABEL_101:
              *v3 = v9;
              return v3;
            }
          }
        }

        else if (!_exsltDateParseGMonth(Date, &v40))
        {
          v34 = v40;
          if (*v40 == 45)
          {
            ++v40;
            if (v34[1] == 45)
            {
              v40 = v34 + 2;
              v35 = v34[2];
              v37 = (v35 - 43) <= 0x2F && ((1 << (v35 - 43)) & 0x800000000005) != 0 || v35 == 0;
              if (v37 && !_exsltDateParseTimeZone(v3, &v40) && !*v40)
              {
                v9 = 4;
                goto LABEL_101;
              }
            }

            else if (!_exsltDateParseGDay(v3, &v40))
            {
              if ((v38 = *v40 - 43, v38 <= 0x2F) && ((1 << v38) & 0x800000000005) != 0 || !*v40)
              {
                if (!_exsltDateParseTimeZone(v3, &v40) && !*v40)
                {
                  v9 = 6;
                  goto LABEL_101;
                }
              }
            }
          }
        }

LABEL_110:
        free(v3);
        return 0;
      }
    }

    else
    {
      if ((v4 - 48) > 9)
      {
        goto LABEL_29;
      }

      if (!_exsltDateParseTime(Date, &v40))
      {
        v10 = *v40;
        v11 = (v10 - 43) > 0x2F || ((1 << (v10 - 43)) & 0x800000000005) == 0;
        v12 = !v11 || v10 == 0;
        if (v12 && !_exsltDateParseTimeZone(v3, &v40))
        {
          if (!*v40)
          {
            v9 = 1;
            goto LABEL_101;
          }

          goto LABEL_110;
        }
      }
    }

    v4 = *a1;
LABEL_29:
    if ((v4 - 58) > 0xFFFFFFF5 || v4 == 45 || v4 == 43)
    {
      v13 = v4 == 45 ? a1 + 1 : a1;
      v14 = *v13;
      if ((v14 - 48) <= 9)
      {
        v15 = *(v3 + 1);
        v16 = -1;
        v17 = v13;
        while (v15 <= 0xCCCCCCCCCCCCCCBLL)
        {
          v15 = (v14 & 0xF) + 10 * v15;
          *(v3 + 1) = v15;
          v18 = *++v17;
          v14 = v18;
          ++v16;
          if ((v18 - 48) >= 0xA)
          {
            if (v16 < 3 || v16 != 3 && *v13 == 48 || !v15)
            {
              goto LABEL_110;
            }

            if (v4 == 45)
            {
              *(v3 + 1) = 1 - v15;
              v14 = *v17;
            }

            v40 = v17;
            if ((v14 - 43) > 0x2F || ((1 << (v14 - 43)) & 0x800000000005) == 0)
            {
              if (v14)
              {
                goto LABEL_110;
              }
            }

            if (_exsltDateParseTimeZone(v3, &v40))
            {
              if (*v40 != 45)
              {
                goto LABEL_110;
              }

              ++v40;
              if (_exsltDateParseGMonth(v3, &v40))
              {
                goto LABEL_110;
              }

              v19 = *v40 - 43;
              if (v19 > 0x2F || ((1 << v19) & 0x800000000005) == 0)
              {
                if (*v40)
                {
                  goto LABEL_110;
                }
              }

              if (_exsltDateParseTimeZone(v3, &v40))
              {
                if (*v40 != 45)
                {
                  goto LABEL_110;
                }

                ++v40;
                if (_exsltDateParseGDay(v3, &v40))
                {
                  goto LABEL_110;
                }

                v20 = v3[4];
                v21 = (v3[4] & 0xF) - 1;
                if (v21 > 0xB)
                {
                  goto LABEL_110;
                }

                v22 = *(v3 + 1);
                if ((v22 & 3) != 0 || 0x8F5C28F5C28F5C29 * v22 + 0x51EB851EB851EB8 <= 0xA3D70A3D70A3D70 && (v22 & 0xC) != 0)
                {
                  v23 = (v20 >> 4) & 0x1F;
                  v24 = &daysInMonth;
                }

                else
                {
                  v23 = (v20 >> 4) & 0x1F;
                  v24 = &daysInMonthLeap;
                }

                if (v24[v21] < v23)
                {
                  goto LABEL_110;
                }

                v25 = v40;
                v26 = *v40;
                if (((v26 - 43) > 0x2F || ((1 << (v26 - 43)) & 0x800000000005) == 0) && *v40 || (v27 = _exsltDateParseTimeZone(v3, &v40), v25 = v40, v26 = *v40, v27))
                {
                  if (v26 == 84)
                  {
                    v40 = v25 + 1;
                    if (!_exsltDateParseTime(v3, &v40) && !_exsltDateParseTimeZone(v3, &v40) && !*v40)
                    {
                      v28 = v3[4];
                      v29 = (v3[4] & 0xF) - 1;
                      if (v29 <= 0xB)
                      {
                        v30 = *(v3 + 1);
                        if ((v30 & 3) != 0 || 0x8F5C28F5C28F5C29 * v30 + 0x51EB851EB851EB8 <= 0xA3D70A3D70A3D70 && (v30 & 0xC) != 0)
                        {
                          v31 = (v28 >> 4) & 0x1F;
                          v32 = &daysInMonth;
                        }

                        else
                        {
                          v31 = (v28 >> 4) & 0x1F;
                          v32 = &daysInMonthLeap;
                        }

                        if (v32[v29] >= v31 && (~v28 & 0x3000) != 0 && (v28 & 0xF0000) != 0xF0000)
                        {
                          v33 = *(v3 + 3);
                          if (v33 >= 0.0 && v33 < 60.0 && ((*(v3 + 16) << 19 >> 20) + 1439) <= 0xB3E)
                          {
                            v9 = 15;
                            goto LABEL_101;
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_110;
                }

                if (*v40)
                {
                  goto LABEL_110;
                }

                v9 = 14;
              }

              else
              {
                if (*v40)
                {
                  goto LABEL_110;
                }

                v9 = 12;
              }
            }

            else
            {
              if (*v40)
              {
                goto LABEL_110;
              }

              v9 = 8;
            }

            goto LABEL_101;
          }
        }
      }
    }

    goto LABEL_110;
  }

  return v3;
}

double exsltDateParseDuration(unsigned __int8 *a1, double result)
{
  v2 = *a1;
  if (v2 == 45)
  {
    v3 = a1 + 1;
  }

  else
  {
    v3 = a1;
  }

  v5 = *v3;
  v4 = v3 + 1;
  if (v5 == 80)
  {
    if (*v4)
    {
      Duration = exsltDateCreateDuration();
      if (Duration)
      {
        v7 = *v4;
        v8 = 0;
        if (*v4)
        {
          v9 = 0u;
          v10 = 0.0;
          while (1)
          {
            if (v9 > 5)
            {
              goto LABEL_63;
            }

            if (v7 == 84)
            {
              if (v9 > 3)
              {
                goto LABEL_63;
              }

              v11 = *++v4;
              v7 = v11;
              v9 = 3u;
            }

            else if (v9 == 3)
            {
              goto LABEL_63;
            }

            if ((v7 - 48) <= 9)
            {
              v12 = 0;
              while (v12 <= 0xCCCCCCCCCCCCCCCLL)
              {
                v13 = v7 & 0xF;
                v14 = 10 * v12;
                if (v14 > (v13 ^ 0x7FFFFFFFFFFFFFFFLL))
                {
                  break;
                }

                v12 = v14 + v13;
                v15 = *++v4;
                v7 = v15;
                if ((v15 - 48) >= 0xA)
                {
                  v16 = 1;
                  goto LABEL_21;
                }
              }

              goto LABEL_63;
            }

            v12 = 0;
            v16 = 0;
LABEL_21:
            if (v7 == 46)
            {
              v18 = *++v4;
              v17 = v18;
              if ((v18 - 48) <= 9)
              {
                v19 = 1.0;
                do
                {
                  v19 = v19 / 10.0;
                  v10 = v10 + (v17 - 48) * v19;
                  v20 = *++v4;
                  v17 = v20;
                }

                while ((v20 - 48) < 0xA);
                v16 = 1;
              }
            }

            else
            {
              v17 = v7;
            }

            while (v17 != byte_298787420[v9])
            {
              if (v9 != 2)
              {
                v21 = v9++ == 5;
                if (!v21)
                {
                  continue;
                }
              }

              goto LABEL_63;
            }

            v21 = v7 != 46 || v9 == 5;
            v22 = !v21;
            if (!v16 || (v22 & 1) != 0)
            {
              goto LABEL_63;
            }

            if (v9 > 2)
            {
              switch(v9)
              {
                case 3:
                  v25 = Duration[1];
                  if (v25 > ((v12 / 24) ^ 0x7FFFFFFFFFFFFFFFLL))
                  {
                    goto LABEL_63;
                  }

                  Duration[1] = v25 + v12 / 24;
                  v8 = 3600 * (v12 % 24);
                  break;
                case 4:
                  v26 = Duration[1];
                  if (v26 > ((v12 / 1440) ^ 0x7FFFFFFFFFFFFFFFLL))
                  {
                    goto LABEL_63;
                  }

                  Duration[1] = v26 + v12 / 1440;
                  v8 += 60 * (v12 % 1440);
                  break;
                case 5:
                  v23 = Duration[1];
                  if (v23 > ((v12 / 86400) ^ 0x7FFFFFFFFFFFFFFFLL))
                  {
                    goto LABEL_63;
                  }

                  Duration[1] = v23 + v12 / 86400;
                  v8 += v12 % 86400;
                  break;
              }

              goto LABEL_59;
            }

            if (v9)
            {
              if (v9 != 1)
              {
                if (v9 == 2)
                {
                  Duration[1] = v12;
                }

                goto LABEL_59;
              }

              if (*Duration > (v12 ^ 0x7FFFFFFFFFFFFFFFLL))
              {
                goto LABEL_63;
              }

              v24 = *Duration + v12;
            }

            else
            {
              if (v12 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_63;
              }

              v24 = 12 * v12;
            }

            *Duration = v24;
LABEL_59:
            ++v9;
            v27 = *++v4;
            v7 = v27;
            if (!v27)
            {
              goto LABEL_62;
            }
          }
        }

        v10 = 0.0;
LABEL_62:
        v28 = Duration[1];
        if (v28 <= ((v8 / 86400) ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          v29 = v28 + v8 / 86400;
          Duration[1] = v29;
          result = v10 + (v8 % 86400);
          *(Duration + 2) = result;
          if (v2 == 45)
          {
            *Duration = -*Duration;
            Duration[1] = -v29;
            if (result != 0.0)
            {
              result = 86400.0 - result;
              *(Duration + 2) = result;
              Duration[1] = ~v29;
            }
          }
        }

        else
        {
LABEL_63:
          free(Duration);
        }
      }
    }
  }

  return result;
}

void *exsltDateCreateDate(int a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x1000040EE9DD594uLL);
  v3 = v2;
  if (v2)
  {
    v2[4] = 0;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 4) = 17;
    if (a1)
    {
      *v2 = a1;
    }
  }

  else
  {
    (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltDateCreateDate: out of memory\n");
  }

  return v3;
}

uint64_t _exsltDateParseGDay(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if ((v3 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v4 = *(v2 + 1);
  if ((v4 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v6 = v4 + 10 * v3;
  if ((v6 - 529) > 0x1E)
  {
    return 2;
  }

  result = 0;
  *(a1 + 16) = (*(a1 + 16) & 0xFFFFFE0F | (16 * (v6 & 0x1F))) ^ 0x100;
  *a2 = (v2 + 2);
  return result;
}

uint64_t _exsltDateParseTimeZone(uint64_t a1, unsigned __int8 **a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a2;
  v3 = **a2;
  v4 = 1;
  if (v3 <= 0x2C)
  {
    if (!**a2)
    {
      *(a1 + 32) &= 0xE000u;
      goto LABEL_14;
    }

    if (v3 != 43)
    {
      return v4;
    }

    goto LABEL_10;
  }

  if (v3 == 45)
  {
LABEL_10:
    v5 = v2[1];
    if ((v5 - 58) < 0xFFFFFFF6)
    {
      return 1;
    }

    v6 = v2[2];
    if ((v6 - 58) < 0xFFFFFFF6)
    {
      return 1;
    }

    v8 = v6 + 10 * v5;
    if (v8 > 0x227)
    {
      return 2;
    }

    if (v2[3] != 58)
    {
      return 1;
    }

    v9 = (120 * v8 + 2176) & 0x1FF8;
    v10 = *(a1 + 32) & 0xE001;
    v11 = v10 | v9;
    *(a1 + 32) = *(a1 + 32) & 0xE001 | v9;
    v12 = v2[4];
    if ((v12 - 58) < 0xFFFFFFF6)
    {
      return 1;
    }

    v13 = v2[5];
    if ((v13 - 58) < 0xFFFFFFF6)
    {
      return 1;
    }

    v14 = v13 + 10 * v12;
    if (v14 > 0x24B)
    {
      return 2;
    }

    v15 = v11 + 2 * v14 - 1056;
    v16 = v3 == 45 ? -(v15 & 0x1FFE) : v15;
    *(a1 + 32) = v16 & 0x1FFE | v10;
    if (((v16 << 19 >> 20) + 1439) > 0xB3E)
    {
      return 2;
    }

    v2 += 6;
LABEL_14:
    v4 = 0;
    *a2 = v2;
    return v4;
  }

  if (v3 == 90)
  {
    *(a1 + 32) = *(a1 + 32) & 0xE000 | 1;
    ++v2;
    goto LABEL_14;
  }

  return v4;
}

uint64_t _exsltDateParseGMonth(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if ((v3 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v4 = *(v2 + 1);
  if ((v4 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v6 = v4 + 10 * v3;
  if ((v6 - 529) > 0xB)
  {
    return 2;
  }

  result = 0;
  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFF0 | v6 & 0xF;
  *a2 = (v2 + 2);
  return result;
}

uint64_t _exsltDateParseTime(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if ((v3 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v4 = v2[1];
  if ((v4 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v7 = v4 + 10 * v3;
  if (v7 > 0x227)
  {
    return 2;
  }

  if (v2[2] != 58)
  {
    return 1;
  }

  v8 = (*(a1 + 16) & 0xFFFFC1FF | ((v7 & 0x1F) << 9)) ^ 0x2000;
  *(a1 + 16) = v8;
  v9 = v2[3];
  if ((v9 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v10 = v2[4];
  if ((v10 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v11 = v10 + 10 * v9;
  if (v11 > 0x24B)
  {
    return 2;
  }

  v12 = (v11 << 14) + 786432;
  *(a1 + 16) = v8 & 0xFFF03FFF | (((v12 >> 14) & 0x3F) << 14);
  if (v2[5] != 58)
  {
    return 1;
  }

  v13 = v2[6];
  if ((v13 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v14 = v2[7];
  if ((v14 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v15 = (v14 + 10 * v13 - 528);
  *(a1 + 24) = v15;
  v16 = v2 + 8;
  if (v2[8] == 46)
  {
    v19 = v2[9];
    v17 = v2 + 9;
    v18 = v19;
    v20 = v19 - 48;
    if ((v19 - 48) > 9)
    {
      return 1;
    }

    v21 = 1.0;
    v16 = v17;
    do
    {
      v21 = v21 / 10.0;
      v15 = v15 + (v18 - 48) * v21;
      *(a1 + 24) = v15;
      v22 = *++v16;
      v18 = v22;
    }

    while ((v22 - 48) < 0xA);
    if (v20 > 9)
    {
      return 1;
    }
  }

  v5 = 2;
  if ((~v8 & 0x3000) != 0 && (v12 & 0xF0000) != 0xF0000)
  {
    v23 = v15 >= 0.0 && v15 < 60.0;
    if (v23 && ((*(a1 + 32) << 19 >> 20) + 1439) <= 0xB3E)
    {
      v5 = 0;
      *a2 = v16;
      return v5;
    }

    return 2;
  }

  return v5;
}

void *exsltDateCreateDuration()
{
  v0 = malloc_type_malloc(0x18uLL, 0x1000040504FFAC1uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
  }

  else
  {
    (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltDateCreateDuration: out of memory\n");
  }

  return v1;
}

xmlChar *exsltDateFormatDateTime(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 16);
  v2 = (*(a1 + 16) & 0xF) - 1;
  if (v2 > 0xB)
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 8);
  if ((v4 & 3) == 0 && (0x8F5C28F5C28F5C29 * v4 + 0x51EB851EB851EB8 <= 0xA3D70A3D70A3D70 ? (v5 = (*(a1 + 8) & 0xCLL) == 0) : (v5 = 1), v5))
  {
    v6 = (v1 >> 4) & 0x1F;
    v7 = &daysInMonthLeap;
  }

  else
  {
    v6 = (v1 >> 4) & 0x1F;
    v7 = &daysInMonth;
  }

  if (v7[v2] < v6)
  {
    goto LABEL_11;
  }

  result = 0;
  if ((~v1 & 0x3000) != 0 && (v1 & 0xF0000) != 0xF0000)
  {
    v10 = *(a1 + 24);
    v11 = v10 >= 0.0 && v10 < 60.0;
    if (!v11 || ((*(a1 + 32) << 19 >> 20) + 1439) > 0xB3E)
    {
LABEL_11:
      result = 0;
      goto LABEL_12;
    }

    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    *cur = 0u;
    v44 = 0u;
    if (v4 <= 0)
    {
      v13 = &cur[1];
      cur[0] = 45;
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v13 = cur;
    }

    v42 = 0;
    v14 = 1 - v4;
    if (v4 >= 1)
    {
      v14 = v4;
    }

    memset(v41, 0, sizeof(v41));
    if (v14 < 1)
    {
      v18 = v41;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = v15 + 1;
        *(v41 + v15) = (v14 % 0xA) | 0x30;
        if (v14 < 0xA)
        {
          break;
        }

        v14 /= 0xAuLL;
        v17 = v15++ >= 0x62;
      }

      while (!v17);
      v18 = v41 + v16;
    }

    v19 = v18 - v41;
    if (v18 - v41 <= 3)
    {
      memset(v18, 48, v41 + 4 - v18);
      v18 = v41 + 4;
    }

    if (v18 > v41)
    {
      v20 = 4;
      if (v19 > 4)
      {
        v20 = v19;
      }

      v21 = v41 + v20 - 1;
      do
      {
        v22 = v12++;
        v23 = v21 > v41;
        v24 = *v21--;
        *v13 = v24;
        if (!v23)
        {
          break;
        }

        v13 = &cur[v12];
      }

      while (v22 < 0x62);
      if (v22 > 0x61)
      {
LABEL_45:
        if (v12 <= 98)
        {
          v25 = &cur[v12];
          if ((v1 & 0xE) <= 9)
          {
            v26 = 48;
          }

          else
          {
            v26 = 49;
          }

          *v25 = v26;
          if (v12 == 98)
          {
            goto LABEL_60;
          }

          v25[1] = ((v1 & 0xF) % 0xA) | 0x30;
          if (v12 > 96)
          {
            goto LABEL_60;
          }

          v25[2] = 45;
          if (v12 == 96)
          {
            goto LABEL_60;
          }

          v25[3] = ((26 * ((v1 >> 4) & 0x1E)) >> 8) | 0x30;
          if (v12 > 94 || (v25[4] = (((v1 >> 4) & 0x1F) - 10 * ((26 * ((v1 >> 4) & 0x1F)) >> 8)) | 0x30, v12 == 94) || (v25[5] = 84, v12 > 92) || (v25[6] = ((26 * ((v1 >> 9) & 0x1E)) >> 8) | 0x30, v12 == 92) || (v25[7] = (((v1 >> 9) & 0x1F) - 10 * ((26 * ((v1 >> 9) & 0x1F)) >> 8)) | 0x30, v12 > 90) || (v25[8] = 58, v12 == 90) || (v25[9] = ((26 * ((v1 >> 14) & 0x3E)) >> 8) | 0x30, v12 > 88) || (v25[10] = (((v1 >> 14) & 0x3F) - 10 * ((26 * ((v1 >> 14) & 0x3F)) >> 8)) | 0x30, v12 == 88))
          {
LABEL_60:
            v12 = 99;
          }

          else
          {
            v40 = v12 + 12;
            v25[11] = 58;
            if (v10 >= 10.0 || v12 > 86)
            {
              v12 += 12;
            }

            else
            {
              v12 += 13;
              cur[v40] = 48;
            }
          }
        }

        v27 = xmlXPathCastNumberToString(v10);
        v28 = &cur[v12];
        v29 = *v27;
        v30 = v12 < 99;
        if (*v27 && v12 <= 98)
        {
          v31 = v27 + 1;
          do
          {
            v32 = v12 + 1;
            *v28++ = v29;
            v33 = *v31++;
            v29 = v33;
            v30 = v12 < 0x62;
            if (!v33)
            {
              break;
            }

            v17 = v12++ >= 0x62;
          }

          while (!v17);
        }

        else
        {
          v32 = v12;
        }

        free(v27);
        v34 = *(a1 + 32);
        if ((8 * v34) <= 0xFu)
        {
          if (v30)
          {
            *v28++ = 90;
          }

          goto LABEL_86;
        }

        v35 = (8 * v34) >> 4;
        if (v35 < 0)
        {
          v35 = -v35;
        }

        if (v30)
        {
          if ((*(a1 + 32) & 0x1000) != 0)
          {
            v36 = 45;
          }

          else
          {
            v36 = 43;
          }

          *v28 = v36;
          if (v32 != 98)
          {
            v37 = &cur[v32];
            cur[v32 + 1] = (v35 / 0x258u) | 0x30;
            if (v32 <= 96)
            {
              v38 = v35 / 0x3Cu;
              v37[2] = (v38 % 0xAu) | 0x30;
              if (v32 != 96)
              {
                v37[3] = 58;
                if (v32 < 95)
                {
                  v39 = v35 - 60 * v38;
                  v37[4] = (v39 / 0xAu) | 0x30;
                  if (v32 == 94)
                  {
                    v28 = v37 + 5;
                  }

                  else
                  {
                    v28 = v37 + 6;
                    v37[5] = (v39 % 0xAu) | 0x30;
                  }

                  goto LABEL_86;
                }
              }
            }
          }

          v32 = 99;
        }

        v28 = &cur[v32];
LABEL_86:
        *v28 = 0;
        result = xmlStrdup(cur);
        goto LABEL_12;
      }

      v13 = &cur[v12];
    }

    ++v12;
    *v13 = 45;
    goto LABEL_45;
  }

LABEL_12:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

xmlChar *exsltDateFormatDate(uint64_t a1)
{
  v42 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 16);
  v2 = (*(a1 + 16) & 0xF) - 1;
  if (v2 > 0xB)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 8);
  if ((v3 & 3) == 0 && (0x8F5C28F5C28F5C29 * v3 + 0x51EB851EB851EB8 <= 0xA3D70A3D70A3D70 ? (v4 = (*(a1 + 8) & 0xCLL) == 0) : (v4 = 1), v4))
  {
    v5 = (v1 >> 4) & 0x1F;
    v6 = &daysInMonthLeap;
  }

  else
  {
    v5 = (v1 >> 4) & 0x1F;
    v6 = &daysInMonth;
  }

  if (v6[v2] < v5)
  {
    goto LABEL_11;
  }

  v7 = 0;
  if ((~v1 & 0x3000) != 0 && (v1 & 0xF0000) != 0xF0000)
  {
    v10 = *(a1 + 24);
    v11 = v10 >= 0.0 && v10 < 60.0;
    if (!v11 || (v12 = *(a1 + 32), v13 = v12 << 19 >> 20, (v13 + 1439) > 0xB3E))
    {
LABEL_11:
      v7 = 0;
      goto LABEL_12;
    }

    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *cur = 0u;
    v36 = 0u;
    if (v3 <= 0)
    {
      v15 = &cur[1];
      cur[0] = 45;
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v15 = cur;
    }

    v34 = 0;
    v16 = 1 - v3;
    if (v3 >= 1)
    {
      v16 = v3;
    }

    memset(v33, 0, sizeof(v33));
    if (v16 < 1)
    {
      v20 = v33;
    }

    else
    {
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        *(v33 + v17) = (v16 % 0xA) | 0x30;
        if (v16 < 0xA)
        {
          break;
        }

        v16 /= 0xAuLL;
      }

      while (v17++ < 0x62);
      v20 = v33 + v18;
    }

    v21 = v20 - v33;
    if (v20 - v33 <= 3)
    {
      memset(v20, 48, v33 + 4 - v20);
      v20 = v33 + 4;
    }

    if (v20 > v33)
    {
      v22 = 4;
      if (v21 > 4)
      {
        v22 = v21;
      }

      v23 = v33 + v22 - 1;
      do
      {
        v24 = v14++;
        v25 = v23 > v33;
        v26 = *v23--;
        *v15 = v26;
        if (!v25)
        {
          break;
        }

        v15 = &cur[v14];
      }

      while (v24 < 0x62);
      if (v24 > 0x61)
      {
LABEL_45:
        if (v14 <= 98)
        {
          v27 = &cur[v14];
          if ((v1 & 0xE) <= 9)
          {
            v28 = 48;
          }

          else
          {
            v28 = 49;
          }

          *v27 = v28;
          if (v14 == 98 || (v27[1] = ((v1 & 0xF) % 0xA) | 0x30, v14 > 96) || (v27[2] = 45, v14 == 96) || (v27[3] = ((26 * ((v1 >> 4) & 0x1E)) >> 8) | 0x30, v14 > 94))
          {
            v14 = 99;
          }

          else
          {
            v14 += 5;
            v27[4] = (((v1 >> 4) & 0x1F) - 10 * ((26 * ((v1 >> 4) & 0x1F)) >> 8)) | 0x30;
          }
        }

        v29 = &cur[v14];
        if ((v12 & 0x1FFF) == 0)
        {
          goto LABEL_74;
        }

        if ((8 * v12) <= 0xFu)
        {
          if (v14 <= 98)
          {
            *v29++ = 90;
          }

          goto LABEL_74;
        }

        if (v13 >= 0)
        {
          LOWORD(v30) = (8 * v12) >> 4;
        }

        else
        {
          v30 = -v13;
        }

        if (v14 <= 98)
        {
          if ((v12 & 0x1000) != 0)
          {
            v31 = 45;
          }

          else
          {
            v31 = 43;
          }

          cur[v14] = v31;
          if (v14 != 98)
          {
            v29[1] = (v30 / 0x258u - 10 * ((103 * (v30 / 0x258u)) >> 10)) | 0x30;
            if (v14 <= 96)
            {
              v29[2] = (v30 / 0x3Cu - 10 * ((6554 * (v30 / 0x3Cu)) >> 16)) | 0x30;
              if (v14 != 96)
              {
                v29[3] = 58;
                if (v14 < 95)
                {
                  v32 = v30 % 0x3Cu;
                  v29[4] = (v32 / 0xAu) | 0x30;
                  if (v14 == 94)
                  {
                    v29 += 5;
                  }

                  else
                  {
                    v29[5] = (v32 % 0xAu) | 0x30;
                    v29 += 6;
                  }

                  goto LABEL_74;
                }
              }
            }
          }

          v14 = 99;
        }

        v29 = &cur[v14];
LABEL_74:
        *v29 = 0;
        v7 = xmlStrdup(cur);
        goto LABEL_12;
      }

      v15 = &cur[v14];
    }

    ++v14;
    *v15 = 45;
    goto LABEL_45;
  }

LABEL_12:
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

xmlChar *exsltDateFormatTime(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 16);
  v2 = (v1 >> 9) & 0x1F;
  if ((~v1 & 0xF0000) != 0 && v2 <= 0x17)
  {
    v5 = *(a1 + 24);
    v6 = v5 >= 0.0 && v5 < 60.0;
    if (v6 && ((*(a1 + 32) << 19 >> 20) + 1439) <= 0xB3E)
    {
      memset(v30, 0, sizeof(v30));
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v7 = (205 * ((v1 >> 9) & 0x1F)) >> 11;
      cur[0] = v7 | 0x30;
      cur[1] = (v2 - 10 * v7) | 0x30;
      cur[2] = 58;
      cur[3] = ((26 * ((v1 >> 14) & 0x3E)) >> 8) | 0x30;
      cur[4] = (((v1 >> 14) & 0x3F) - 10 * ((26 * ((v1 >> 14) & 0x3F)) >> 8)) | 0x30;
      cur[5] = 58;
      if (v5 >= 10.0)
      {
        v8 = 6;
      }

      else
      {
        LOBYTE(v26) = 48;
        v8 = 7;
      }

      v11 = xmlXPathCastNumberToString(v5);
      v12 = *v11;
      if (*v11)
      {
        v13 = v11 + 1;
        v14 = v8;
        do
        {
          v8 = v14 + 1;
          cur[v14] = v12;
          v15 = *v13++;
          v12 = v15;
          v16 = v14 < 0x62;
          if (!v15)
          {
            break;
          }
        }

        while (v14++ < 0x62);
      }

      else
      {
        v16 = 1;
      }

      v18 = &cur[v8];
      free(v11);
      v19 = *(a1 + 32);
      if ((v19 & 0x1FFF) == 0)
      {
        goto LABEL_40;
      }

      if ((8 * v19) <= 0xFu)
      {
        if (v16)
        {
          *v18++ = 90;
        }

        goto LABEL_40;
      }

      v20 = (8 * v19) >> 4;
      if (v20 < 0)
      {
        v20 = -v20;
      }

      if (v16)
      {
        if ((*(a1 + 32) & 0x1000) != 0)
        {
          v21 = 45;
        }

        else
        {
          v21 = 43;
        }

        cur[v8++] = v21;
      }

      if (v8 <= 0x62)
      {
        v22 = &cur[v8];
        cur[v8] = (v20 / 0x258u) | 0x30;
        if (v8 != 98)
        {
          v23 = v20 / 0x3Cu;
          v22[1] = (v23 % 0xAu) | 0x30;
          if (v8 <= 0x60)
          {
            v22[2] = 58;
            if (v8 != 96)
            {
              v24 = v20 - 60 * v23;
              v22[3] = (v24 / 0xAu) | 0x30;
              if (v8 > 0x5E)
              {
                v18 = v22 + 4;
              }

              else
              {
                v18 = v22 + 5;
                v22[4] = (v24 % 0xAu) | 0x30;
              }

              goto LABEL_40;
            }
          }
        }

        v8 = 99;
      }

      v18 = &cur[v8];
LABEL_40:
      *v18 = 0;
      result = xmlStrdup(cur);
      goto LABEL_14;
    }
  }

  result = 0;
LABEL_14:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

xmlChar *exsltDateFormatDuration(uint64_t a1)
{
  v63 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v1 != 0.0 || v3 != 0)
  {
    v5 = v3;
    if (v3 < 0)
    {
      v7 = v5 + 1.0;
      if (v1 == 0.0)
      {
        v7 = v3;
      }

      else
      {
        v1 = 86400.0 - v1;
      }

      v5 = -v7;
      v6 = 45;
    }

    else
    {
      v6 = 0;
    }

LABEL_13:
    v8 = (v2 / 12);
    v9 = v2 % 12;
    memset(v62, 0, sizeof(v62));
    if (v2 >= -11)
    {
      v10 = v9 < 0;
    }

    else
    {
      v8 = -v8;
      v10 = 1;
    }

    if (v10)
    {
      v11 = 45;
    }

    else
    {
      v11 = v6;
    }

    if (v9 >= 0)
    {
      v12 = (v2 % 12);
    }

    else
    {
      v12 = -(v2 % 12);
    }

    cur = v11;
    p_cur = &cur;
    if (v11 == 45)
    {
      p_cur = v62;
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    *p_cur = 80;
    if ((v2 - 12) <= 0xFFFFFFFFFFFFFFE8 && v8 >= 1.0)
    {
      v15 = xmlXPathCastNumberToString(floor(v8));
      if (v11 == 45)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      v17 = &v62[v16 - 1];
      v18 = *v15;
      if (!*v15)
      {
        free(v15);
        goto LABEL_40;
      }

      v19 = 1;
      do
      {
        v20 = v14++;
        *v17 = v18;
        v18 = v15[v19];
        if (!v18)
        {
          break;
        }

        v17 = &v62[v14 - 1];
        ++v19;
      }

      while (v20 < 0x62);
      free(v15);
      if (v20 <= 0x61)
      {
        v17 = &v62[v14 - 1];
LABEL_40:
        ++v14;
        *v17 = 89;
        goto LABEL_42;
      }

      v14 = 99;
    }

LABEL_42:
    if (v12 >= 1.0)
    {
      v23 = xmlXPathCastNumberToString(floor(v12));
      v24 = &v62[v14 - 1];
      v25 = *v23;
      v26 = v14 < 0x63;
      if (*v23 && v14 <= 0x62)
      {
        v27 = v23 + 1;
        do
        {
          v28 = v14 + 1;
          *v24++ = v25;
          v29 = *v27++;
          v25 = v29;
          v26 = v14 < 0x62;
          if (!v29)
          {
            break;
          }

          v30 = v14++ >= 0x62;
        }

        while (!v30);
      }

      else
      {
        v28 = v14;
      }

      free(v23);
      if (v26)
      {
        v14 = v28 + 1;
        *v24 = 77;
      }

      else
      {
        v14 = 99;
      }
    }

    if (v5 >= 1.0)
    {
      v31 = xmlXPathCastNumberToString(floor(v5));
      v32 = &v62[v14 - 1];
      v33 = *v31;
      v34 = v14 < 0x63;
      if (*v31 && v14 <= 0x62)
      {
        v35 = v31 + 1;
        do
        {
          v36 = v14 + 1;
          *v32++ = v33;
          v37 = *v35++;
          v33 = v37;
          v34 = v14 < 0x62;
          if (!v37)
          {
            break;
          }

          v30 = v14++ >= 0x62;
        }

        while (!v30);
      }

      else
      {
        v36 = v14;
      }

      free(v31);
      if (!v34)
      {
        v14 = 99;
LABEL_69:
        if (v1 >= 3600.0)
        {
          v38 = floor(v1 / 3600.0);
          v39 = xmlXPathCastNumberToString(v38);
          v40 = &v62[v14 - 1];
          v41 = *v39;
          v42 = v14 < 0x63;
          if (*v39 && v14 <= 0x62)
          {
            v43 = v39 + 1;
            do
            {
              v44 = v14 + 1;
              *v40++ = v41;
              v45 = *v43++;
              v41 = v45;
              v42 = v14 < 0x62;
              if (!v45)
              {
                break;
              }

              v30 = v14++ >= 0x62;
            }

            while (!v30);
          }

          else
          {
            v44 = v14;
          }

          free(v39);
          if (v42)
          {
            v14 = v44 + 1;
            *v40 = 72;
          }

          else
          {
            v14 = 99;
          }

          v1 = v1 + v38 * -3600.0;
        }

        if (v1 >= 60.0)
        {
          v46 = floor(v1 / 60.0);
          v47 = xmlXPathCastNumberToString(v46);
          v48 = &v62[v14 - 1];
          v49 = *v47;
          v50 = v14 < 0x63;
          if (*v47 && v14 <= 0x62)
          {
            v51 = v47 + 1;
            do
            {
              v52 = v14 + 1;
              *v48++ = v49;
              v53 = *v51++;
              v49 = v53;
              v50 = v14 < 0x62;
              if (!v53)
              {
                break;
              }

              v30 = v14++ >= 0x62;
            }

            while (!v30);
          }

          else
          {
            v52 = v14;
          }

          free(v47);
          if (v50)
          {
            v14 = v52 + 1;
            *v48 = 77;
          }

          else
          {
            v14 = 99;
          }

          v1 = v1 + v46 * -60.0;
        }

        v54 = &v62[v14 - 1];
        if (v1 > 0.0)
        {
          v55 = xmlXPathCastNumberToString(v1);
          v56 = *v55;
          v57 = v14 < 0x63;
          if (*v55 && v14 <= 0x62)
          {
            v58 = v55 + 1;
            do
            {
              *v54++ = v56;
              v59 = *v58++;
              v56 = v59;
              v57 = v14 < 0x62;
              if (!v59)
              {
                break;
              }

              v30 = v14++ >= 0x62;
            }

            while (!v30);
          }

          free(v55);
          if (v57)
          {
            *v54++ = 83;
          }
        }

        *v54 = 0;
        result = xmlStrdup(&cur);
        v60 = *MEMORY[0x29EDCA608];
        return result;
      }

      v14 = v36 + 1;
      *v32 = 68;
    }

    if (v1 > 0.0 && v14 <= 0x62)
    {
      v62[v14++ - 1] = 84;
    }

    goto LABEL_69;
  }

  if (v2)
  {
    v6 = 0;
    v5 = 0.0;
    goto LABEL_13;
  }

  v21 = *MEMORY[0x29EDCA608];

  return xmlStrdup("P0D");
}

BOOL _exsltDateAddDurCalc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 < 1)
  {
    v4 = *a3;
    if (v3)
    {
      v5 = v4 <= (0x8000000000000000 - v3);
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      return 0;
    }
  }

  else
  {
    v4 = *a3;
    if (*a3 > (v3 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      return 0;
    }
  }

  v6 = v4 + v3;
  *a1 = v6;
  v7 = *(a2 + 8);
  if (v7 < 1)
  {
    v8 = *(a3 + 8);
    if (v7 && v8 <= (0x8000000000000000 - v7))
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a3 + 8);
    if (v8 > (v7 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      return 0;
    }
  }

  v9 = v8 + v7;
  *(a1 + 8) = v9;
  v10 = *(a2 + 16) + *(a3 + 16);
  *(a1 + 16) = v10;
  if (v10 >= 86400.0)
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v10 = v10 + -86400.0;
    *(a1 + 16) = v10;
    *(a1 + 8) = ++v9;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    return !v9 && v10 <= 0.0 || (v6 & 0x8000000000000000) == 0;
  }

  return v6 <= 0;
}

void *exsltDateCurrent()
{
  Date = exsltDateCreateDate(15);
  if (Date)
  {
    memset(&v11, 0, sizeof(v11));
    memset(&v10, 0, sizeof(v10));
    v9 = 0;
    v1 = getenv("SOURCE_DATE_EPOCH");
    if (!v1 || (v2 = v1, *__error() = 0, v9 = strtol(v2, 0, 10), *__error()) || !gmtime_r(&v9, &v11))
    {
      v9 = time(0);
      localtime_r(&v9, &v11);
    }

    tm_mon = v11.tm_mon;
    Date[1] = v11.tm_year + 1900;
    tm_sec = v11.tm_sec;
    *(Date + 4) = Date[2] & 0xFFF00000 | (tm_mon + 1) & 0xF | (16 * (v11.tm_mday & 0x1F)) & 0x1FF | ((v11.tm_hour & 0x1F) << 9) & 0x3FFF | ((v11.tm_min & 0x3F) << 14);
    *(Date + 3) = tm_sec;
    gmtime_r(&v9, &v10);
    v5 = 3600 * v11.tm_hour + 60 * v11.tm_min + v11.tm_sec;
    if (v11.tm_year < v10.tm_year)
    {
      goto LABEL_6;
    }

    if (v11.tm_year <= v10.tm_year)
    {
      if (v11.tm_mon < v10.tm_mon)
      {
LABEL_6:
        v6 = v5 - 86400;
LABEL_9:
        *(Date + 16) = Date[4] & 0xE000 | (2 * (((v6 - (3600 * v10.tm_hour + 60 * v10.tm_min + v10.tm_sec)) / 60) & 0xFFF));
        return Date;
      }

      if (v11.tm_mon <= v10.tm_mon)
      {
        v8 = v5 + 86400;
        if (v11.tm_mday <= v10.tm_mday)
        {
          v8 = 3600 * v11.tm_hour + 60 * v11.tm_min + v11.tm_sec;
        }

        v6 = v5 - 86400;
        if (v11.tm_mday >= v10.tm_mday)
        {
          v6 = v8;
        }

        goto LABEL_9;
      }
    }

    v6 = v5 + 86400;
    goto LABEL_9;
  }

  return Date;
}

double exsltDateDayInWeek(unsigned __int8 *a1)
{
  if (a1)
  {
    v1 = exsltDateParse(a1);
    if (!v1)
    {
      return *MEMORY[0x29EDC97C8];
    }

    v2 = v1;
    if ((*v1 & 0xFFFFFFFE) != 0xE)
    {
      free(v1);
      return *MEMORY[0x29EDC97C8];
    }
  }

  else
  {
    v2 = exsltDateCurrent();
    if (!v2)
    {
      return *MEMORY[0x29EDC97C8];
    }
  }

  v3 = v2[1];
  if ((v3 & 3) == 0 && (0x8F5C28F5C28F5C29 * v3 + 0x51EB851EB851EB8 <= 0xA3D70A3D70A3D70 ? (v4 = (v2[1] & 0xCLL) == 0) : (v4 = 1), v4))
  {
    v5 = &dayInLeapYearByMonth;
  }

  else
  {
    v5 = &dayInYearByMonth;
  }

  v7 = _exsltDateDayInWeek(v5[(v2[2] & 0xF) - 1] + ((*(v2 + 4) >> 4) & 0x1F), v3) + 1;
  free(v2);
  return v7;
}

uint64_t _exsltDateDayInWeek(uint64_t a1, uint64_t a2)
{
  v2 = (-a2 * 0x2492492492492493uLL) >> 64;
  v3 = (a1 - (-a2 / 0x190uLL + (-a2 >> 2)) - (-7 * ((v2 + ((-a2 - v2) >> 1)) >> 2) - a2) + -a2 / 0x64uLL - 2) % 7;
  v4 = v3 + (v3 < 0 ? 7uLL : 0);
  if (a2 <= 0)
  {
    return v4;
  }

  else
  {
    return (~((a2 - 1) / 0x64uLL) + a1 + a2 - 7 * (a2 / 7uLL) + ((a2 - 1) >> 2) + (a2 - 1) / 0x190uLL) % 7;
  }
}

double *_exsltDateDifference(unsigned int *a1, uint64_t a2, int a3)
{
  v4 = *a1;
  if ((*a1 & 0xFFFFFFF8) != 8)
  {
    return 0;
  }

  v5 = *a2;
  if ((*a2 & 0xFFFFFFF8) != 8)
  {
    return 0;
  }

  v7 = a1;
  if (v4 != v5)
  {
    if (v4 >= v5)
    {
      v4 = *a2;
    }

    else
    {
      a1 = a2;
    }

    _exsltDateTruncateDate(a1, v4);
  }

  Duration = exsltDateCreateDuration();
  v9 = Duration;
  if (Duration)
  {
    if (*v7 == 8)
    {
      if (!a3)
      {
        goto LABEL_14;
      }
    }

    else if (!a3 && *v7 == 12)
    {
LABEL_14:
      v10 = *(v7 + 8);
      if ((v10 - 0x555555555555555) >= 0xF555555555555557)
      {
        v11 = *(a2 + 8);
        if ((v11 - 0x555555555555555) >= 0xF555555555555557)
        {
          *Duration = (*(a2 + 16) & 0xF) - (*(v7 + 16) & 0xF) + 12 * (v11 - v10);
          return v9;
        }
      }

      goto LABEL_19;
    }

    if ((*(v7 + 8) - 0x2CD38620EB5681) >= 0xFFA658F3BE2952FFLL && (*(a2 + 8) - 0x2CD38620EB5681) >= 0xFFA658F3BE2952FFLL)
    {
      v13 = *(a2 + 24) + (60 * ((*(a2 + 16) >> 14) & 0x3F) + 3600 * ((*(a2 + 16) >> 9) & 0x1Fu)) - (*(v7 + 24) + (60 * ((*(v7 + 16) >> 14) & 0x3F) + 3600 * ((*(v7 + 16) >> 9) & 0x1Fu)));
      Duration[2] = v13;
      v14 = v13 + (60 * ((*(v7 + 32) << 19 >> 20) - ((8 * *(a2 + 32)) >> 4)));
      v15 = vcvtmd_s64_f64(v14 / 86400.0);
      Duration[2] = v14 - (86400 * v15);
      v16 = _exsltDateCastYMToDays(a2);
      v17 = _exsltDateCastYMToDays(v7);
      *(v9 + 1) = v16 - v17;
      *(v9 + 1) = v16 - v17 + ((*(a2 + 16) >> 4) & 0x1F) - ((*(v7 + 16) >> 4) & 0x1F) + v15;
      return v9;
    }

LABEL_19:
    free(Duration);
    return 0;
  }

  return v9;
}

uint64_t _exsltDateTruncateDate(uint64_t result, int a2)
{
  if (a2)
  {
    if ((a2 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(result + 16) = *(result + 16) & 0xFFFFFE0F | 0x10;
    if ((a2 & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(result + 16) &= 0xFFF001FF;
  *(result + 24) = 0;
  if ((a2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a2 & 4) == 0)
  {
LABEL_4:
    *(result + 16) = *(result + 16) & 0xFFFFFFF0 | 1;
  }

LABEL_5:
  *result = a2;
  return result;
}

uint64_t _exsltDateCastYMToDays(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 0)
  {
    v6 = 365 * v1;
    v7 = -v1 >> 2;
    v8 = -v1 / 0x64uLL;
    v9 = -v1 / 0x190uLL;
    if ((v1 & 3) == 0 && ((0x70A3D70A3D70A3D7 * v1) <= 0xA3D70A3D70A3D70 ? (v10 = (*(a1 + 8) & 0xCLL) == 0) : (v10 = 1), v10))
    {
      v11 = &dayInLeapYearByMonth;
    }

    else
    {
      v11 = &dayInYearByMonth;
    }

    return v6 - v7 - v9 + v8 + v11[(*(a1 + 16) & 0xF) - 1] - 366;
  }

  else
  {
    v2 = (v1 - 1) / 0x190uLL - (v1 - 1) / 0x64uLL + ((v1 - 1) >> 2) + 365 * (v1 - 1);
    if ((v1 & 3) == 0 && (0x8F5C28F5C28F5C29 * v1 <= 0xA3D70A3D70A3D70 ? (v3 = (*(a1 + 8) & 0xCLL) == 0) : (v3 = 1), v3))
    {
      v4 = &dayInLeapYearByMonth;
    }

    else
    {
      v4 = &dayInYearByMonth;
    }

    return v2 + v4[(*(a1 + 16) & 0xF) - 1];
  }
}

double exsltDateSeconds(unsigned __int8 *a1)
{
  v1 = MEMORY[0x29EDC97C8];
  v2 = *MEMORY[0x29EDC97C8];
  if (!a1)
  {
    v4 = exsltDateCurrent();
    if (!v4)
    {
      return *v1;
    }

    goto LABEL_7;
  }

  v4 = exsltDateParse(a1);
  if (v4)
  {
LABEL_7:
    v7 = v4;
    if (*v4 >= 8u)
    {
      Date = exsltDateCreateDate(15);
      if (Date)
      {
        v9 = Date;
        Date[1] = 1970;
        *(Date + 4) = Date[2] & 0xFFFFFE00 | 0x11;
        *(Date + 16) |= 1u;
        v10 = _exsltDateDifference(Date, v7, 1);
        if (v10)
        {
          v2 = v10[2] + *(v10 + 1) * 86400.0;
          free(v10);
        }

        free(v9);
      }
    }

    v6 = v7;
    goto LABEL_13;
  }

  exsltDateParseDuration(a1, v5);
  if (v6)
  {
    if (!*v6)
    {
      v2 = v6[2] + *(v6 + 1) * 86400.0;
    }

LABEL_13:
    free(v6);
  }

  return v2;
}

double exsltDateMonthInYear(unsigned __int8 *a1)
{
  if (a1)
  {
    v1 = exsltDateParse(a1);
    if (v1)
    {
      if (*v1 <= 0xFu && ((1 << *v1) & 0xD050) != 0)
      {
        goto LABEL_10;
      }

      free(v1);
    }

    return *MEMORY[0x29EDC97C8];
  }

  v1 = exsltDateCurrent();
  if (!v1)
  {
    return *MEMORY[0x29EDC97C8];
  }

LABEL_10:
  v3 = (v1[4] & 0xF);
  free(v1);
  return v3;
}

void exsltDynRegister(void)
{
  xsltRegisterExtModuleFunction("evaluate", "http://exslt.org/dynamic", exsltDynEvaluateFunction);

  xsltRegisterExtModuleFunction("map", "http://exslt.org/dynamic", exsltDynMapFunction);
}

void exsltDynEvaluateFunction(xmlXPathParserContext *a1, int a2)
{
  if (!a1)
  {
    return;
  }

  if (a2 != 1)
  {
    TransformContext = xsltXPathGetTransformContext(a1);
    xsltPrintErrorContext(TransformContext, 0, 0);
    (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "dyn:evalute() : invalid number of args %d\n", a2);
    a1->error = 12;
    return;
  }

  v4 = xmlXPathPopString(a1);
  if (v4)
  {
    v5 = v4;
    if (xmlStrlen(v4))
    {
      v6 = xmlXPathEval(v5, a1->context);
      if (!v6)
      {
        (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "dyn:evaluate() : unable to evaluate expression '%s'\n", v5);
        v6 = xmlXPathNewNodeSet(0);
      }

      valuePush(a1, v6);

      free(v5);
      return;
    }

    free(v5);
  }

  v8 = xmlXPathNewNodeSet(0);

  valuePush(a1, v8);
}

void exsltDynMapFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 2)
  {
    v3 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      v4 = 0;
LABEL_11:
      if (v3)
      {
        free(v3);
      }

      valuePush(ctxt, v4);
      return;
    }

    v5 = xmlXPathPopNodeSet(ctxt);
    if (ctxt->error)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v4 = xmlXPathNewNodeSet(0);
    if (v4)
    {
      TransformContext = xsltXPathGetTransformContext(ctxt);
      if (TransformContext)
      {
        if (v3)
        {
          v7 = TransformContext;
          if (xmlStrlen(v3))
          {
            v8 = xmlXPathCtxtCompile(v7->xpathCtxt, v3);
            if (v8)
            {
              v9 = v8;
              context = ctxt->context;
              doc = context->doc;
              node = context->node;
              contextSize = context->contextSize;
              proximityPosition = context->proximityPosition;
              RVT = xsltCreateRVT(v7);
              if (RVT)
              {
                parent = RVT;
                xsltRegisterLocalRVT(v7, RVT);
                if (v5 && v5->nodeNr >= 1)
                {
                  xmlXPathNodeSetSort(v5);
                  nodeNr = v5->nodeNr;
                  v15 = ctxt->context;
                  *&v15->contextSize = v5->nodeNr;
                  if (nodeNr >= 1)
                  {
                    v16 = 0;
                    v32 = contextSize;
                    while (1)
                    {
                      v17 = v5->nodeTab[v16];
                      v18 = ctxt->context;
                      ++v18->proximityPosition;
                      v18->node = v17;
                      if (v17->type != XML_NAMESPACE_DECL || (v17 = v17->_private) != 0 && v17->type == XML_ELEMENT_NODE)
                      {
                        v18->doc = v17->doc;
                        v19 = xmlXPathCompiledEval(v9, v18);
                        if (v19)
                        {
                          v20 = v19;
                          type = v19->type;
                          if (v19->type > XPATH_BOOLEAN)
                          {
                            if (type == 3)
                            {
                              v29 = proximityPosition;
                              v30 = xmlXPathCastNumberToString(v19->floatval);
                              v26 = xmlNewTextChild(parent, 0, "number", v30);
                              if (v30)
                              {
                                free(v30);
                              }

                              proximityPosition = v29;
                              contextSize = v32;
                              if (v26)
                              {
LABEL_51:
                                v26->ns = xmlNewNs(v26, "http://exslt.org/common", "exsl");
                                xmlXPathNodeSetAddUnique(v4->nodesetval, v26);
                              }
                            }

                            else if (type == 4)
                            {
                              stringval = v19->stringval;
                              v23 = parent;
                              v24 = "string";
                              goto LABEL_41;
                            }
                          }

                          else if (type == 1)
                          {
                            p_nodeNr = &v19->nodesetval->nodeNr;
                            if (p_nodeNr && *p_nodeNr >= 1)
                            {
                              v28 = 0;
                              do
                              {
                                xmlXPathNodeSetAdd(v4->nodesetval, *(*(p_nodeNr + 1) + 8 * v28++));
                                p_nodeNr = &v20->nodesetval->nodeNr;
                              }

                              while (v28 < *p_nodeNr);
                            }
                          }

                          else if (type == 2)
                          {
                            stringval = v19->BOOLval ? "true" : &unk_29878660E;
                            v23 = parent;
                            v24 = "BOOLean";
LABEL_41:
                            v25 = xmlNewTextChild(v23, 0, v24, stringval);
                            if (v25)
                            {
                              v26 = v25;
                              goto LABEL_51;
                            }
                          }

                          xmlXPathFreeObject(v20);
                        }
                      }

                      else
                      {
                        (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "Internal error in exsltDynMapFunction: Cannot retrieve the doc of a namespace node.\n");
                      }

                      if (++v16 >= v5->nodeNr)
                      {
                        goto LABEL_54;
                      }
                    }
                  }
                }

                else
                {
LABEL_54:
                  v15 = ctxt->context;
                }

                v15->doc = doc;
                v15->node = node;
                v15->contextSize = contextSize;
                v15->proximityPosition = proximityPosition;
              }

              else
              {
                xsltTransformError(v7, 0, 0, "dyn:map : internal error container == NULL\n");
              }

              xmlXPathFreeCompExpr(v9);
            }
          }
        }
      }

      else
      {
        v31 = xsltXPathGetTransformContext(ctxt);
        xsltTransformError(v31, 0, 0, "dyn:map : internal error tctxt == NULL\n");
      }
    }

    else
    {
      (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltDynMapFunction: ret == NULL\n");
    }

LABEL_9:
    if (v5)
    {
      xmlXPathFreeNodeSet(v5);
    }

    goto LABEL_11;
  }

  xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/dynamic.c", 105, 12);
  if (ctxt)
  {
    ctxt->error = 12;
  }
}

void exsltRegisterAll(void)
{
  xsltInitGlobals();
  exsltCommonRegister();
  exsltMathRegister();
  exsltSetsRegister();
  exsltFuncRegister();
  exsltStrRegister();
  exsltDateRegister();
  exsltSaxonRegister();

  exsltDynRegister();
}

void exsltFuncRegister(void)
{
  xsltRegisterExtModuleFull("http://exslt.org/functions", exsltFuncInit, exsltFuncShutdown, exsltFuncStyleInit, exsltFuncStyleShutdown);
  xsltRegisterExtModuleTopLevel("function", "http://exslt.org/functions", exsltFuncFunctionComp);

  xsltRegisterExtModuleElement("result", "http://exslt.org/functions", exsltFuncResultComp, exsltFuncResultElem);
}

xmlHashTable **exsltFuncInit(xsltStylesheetPtr *a1, const xmlChar *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x102004055CCDE27uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0u;
    *(v4 + 1) = 0u;
    ExtData = xsltStyleGetExtData(*a1, a2);
    v12[1] = ExtData;
    *v5 = ExtData;
    xmlHashScanFull(ExtData, exsltFuncRegisterFunc, a1);
    v7 = *a1;
    v12[0] = a1;
    Import = xsltNextImport(v7);
    if (Import)
    {
      v9 = Import;
      do
      {
        ExtInfo = xsltGetExtInfo(v9, a2);
        if (ExtInfo)
        {
          xmlHashScanFull(ExtInfo, exsltFuncRegisterImportFunc, v12);
        }

        v9 = xsltNextImport(v9);
      }

      while (v9);
    }
  }

  else
  {
    (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltFuncInit: not enough memory\n");
  }

  return v5;
}

void exsltFuncShutdown(int a1, int a2, void *a3)
{
  v4 = a3[1];
  if (v4)
  {
    xmlXPathFreeObject(v4);
  }

  free(a3);
}

void exsltFuncFunctionComp(xsltStylesheet *a1, xmlNode *node)
{
  if (a1 && node && node->type == XML_ELEMENT_NODE)
  {
    prefix = 0;
    Prop = xmlGetProp(node, "name");
    v5 = xmlSplitQName2(Prop, &prefix);
    free(Prop);
    if (v5 && prefix)
    {
      v6 = xmlSearchNs(node->doc, node, prefix);
      if (!v6)
      {
        (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "func:function: undeclared prefix %s\n", prefix);
        free(v5);
        v13 = prefix;
        goto LABEL_21;
      }

      v7 = v6;
      free(prefix);
      xsltParseTemplateContent(a1, node);
      v8 = exsltFuncNewFunctionData();
      if (v8)
      {
        v9 = v8;
        children = node->children;
        for (*(v8 + 1) = children; children; ++*v9)
        {
          if (children->type != XML_ELEMENT_NODE)
          {
            break;
          }

          ns = children->ns;
          if (!ns)
          {
            break;
          }

          if (!xmlStrEqual(ns->href, "http://www.w3.org/1999/XSL/Transform"))
          {
            break;
          }

          if (!xmlStrEqual(*(*(v9 + 1) + 16), "param"))
          {
            break;
          }

          children = *(*(v9 + 1) + 48);
          *(v9 + 1) = children;
        }

        ExtData = xsltStyleGetExtData(a1, "http://exslt.org/functions");
        if (!ExtData)
        {
          (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltFuncFunctionComp: no stylesheet data\n");
          free(v5);
          v13 = v9;
          goto LABEL_21;
        }

        if (xmlHashAddEntry2(ExtData, v7->href, v5, v9) < 0)
        {
          xsltTransformError(0, a1, node, "Failed to register function {%s}%s\n", v7->href, v5);
          ++a1->errors;
          free(v9);
        }

        else
        {
          (*MEMORY[0x29EDC97E0])(*MEMORY[0x29EDC97E8], "exsltFuncFunctionComp: register {%s}%s\n", v7->href, v5);
        }
      }
    }

    else
    {
      (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "func:function: not a QName\n");
      if (!v5)
      {
        return;
      }
    }

    v13 = v5;
LABEL_21:
    free(v13);
  }
}

_OWORD *exsltFuncResultComp(xsltStylesheet *a1, uint64_t a2, void (__cdecl *a3)(xsltTransformContextPtr, xmlNodePtr, xmlNodePtr, xsltElemPreCompPtr))
{
  v3 = 0;
  if (a1 && a2)
  {
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 48);
      if (v7)
      {
        while (1)
        {
          if (*(v7 + 8) == 1)
          {
            v8 = *(v7 + 72);
            if (!v8 || !xmlStrEqual(*(v8 + 16), "http://www.w3.org/1999/XSL/Transform") || !xmlStrEqual(*(v7 + 16), "fallback"))
            {
              break;
            }
          }

          v7 = *(v7 + 48);
          if (!v7)
          {
            goto LABEL_10;
          }
        }

        (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltFuncResultElem: only xsl:fallback is allowed to follow func:result\n");
        goto LABEL_40;
      }

LABEL_10:
      v9 = *(a2 + 40);
      if (v9)
      {
        while (1)
        {
          v10 = *(v9 + 8);
          if (v10 == 1)
          {
            v11 = *(v9 + 72);
            if (v11 && xmlStrEqual(*(v11 + 16), "http://www.w3.org/1999/XSL/Transform") && xmlStrEqual(*(v9 + 16), "stylesheet"))
            {
LABEL_37:
              (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "func:result element not a descendant of a func:function\n");
              goto LABEL_40;
            }
          }

          else if (v10 == 9)
          {
            goto LABEL_37;
          }

          v12 = *(v9 + 72);
          if (v12 && xmlStrEqual(*(v12 + 16), "http://exslt.org/functions"))
          {
            if (xmlStrEqual(*(v9 + 16), "function"))
            {
              goto LABEL_27;
            }

            if (xmlStrEqual(*(v9 + 16), "result"))
            {
              (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "func:result element not allowed within another func:result element\n");
              goto LABEL_40;
            }
          }

          if (*(v9 + 8) == 1)
          {
            v13 = *(v9 + 72);
            if (v13)
            {
              if (xmlStrEqual(*(v13 + 16), "http://www.w3.org/1999/XSL/Transform") && (xmlStrEqual(*(v9 + 16), "variable") || xmlStrEqual(*(v9 + 16), "param")))
              {
                break;
              }
            }
          }

          v9 = *(v9 + 40);
          if (!v9)
          {
            goto LABEL_27;
          }
        }

        (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "func:result element not allowed within a variable binding element\n");
LABEL_40:
        v3 = 0;
        goto LABEL_41;
      }

LABEL_27:
      v14 = malloc_type_malloc(0x40uLL, 0x10A004071107A36uLL);
      v3 = v14;
      if (!v14)
      {
        xsltPrintErrorContext(0, 0, 0);
        (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltFuncResultComp : malloc failed\n");
LABEL_41:
        ++a1->errors;
        return v3;
      }

      v14[2] = 0u;
      v14[3] = 0u;
      *v14 = 0u;
      v14[1] = 0u;
      xsltInitElemPreComp(v14, a1, a2, a3, exsltFreeFuncResultPreComp);
      *(v3 + 5) = 0;
      NsProp = xmlGetNsProp(a2, "select", 0);
      if (NsProp)
      {
        v16 = NsProp;
        *(v3 + 5) = xsltXPathCompileFlags(a1, NsProp, 0);
        free(v16);
      }

      NsList = xmlGetNsList(*(a2 + 64), a2);
      *(v3 + 6) = NsList;
      if (NsList)
      {
        v18 = -1;
        do
        {
          v19 = *NsList++;
          ++v18;
        }

        while (v19);
        *(v3 + 14) = v18;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t exsltFuncResultElem(xsltTransformContext *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ExtData = xsltGetExtData(a1, "http://exslt.org/functions");
  if (ExtData)
  {
    v8 = ExtData;
    if (ExtData[1])
    {
      result = (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "func:result already instanciated\n");
LABEL_4:
      *(v8 + 6) = 1;
      return result;
    }

    a1->contextVariable = ExtData[2];
    v13 = *(a4 + 40);
    v14 = *(a3 + 24);
    if (!v13)
    {
      if (v14)
      {
        RVT = xsltCreateRVT(a1);
        if (!RVT)
        {
          result = (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltFuncResultElem: out of memory\n");
          goto LABEL_4;
        }

        v16 = RVT;
        xsltRegisterLocalRVT(a1, RVT);
        if (linkedOnOrAfterFall2023OSVersions())
        {
          v16->compression = 2;
        }

        else
        {
          v16->psvi = 2;
        }

        insert = a1->insert;
        a1->insert = v16;
        xsltApplyOneTemplate(a1, a1->node, *(a3 + 24), 0, 0);
        a1->insert = insert;
        result = xmlXPathNewValueTree(v16);
        v23 = result;
        if (result)
        {
          *(result + 16) = 0;
        }

        else
        {
          result = (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltFuncResultElem: ret == NULL\n");
          *(v8 + 6) = 1;
        }
      }

      else
      {
        result = xmlXPathNewCString(&unk_29878660E);
        v23 = result;
      }

      goto LABEL_25;
    }

    if (v14)
    {
      result = (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "func:result content must be empty if the function has a select attribute\n");
      goto LABEL_4;
    }

    xpathCtxt = a1->xpathCtxt;
    namespaces = xpathCtxt->namespaces;
    nsNr = xpathCtxt->nsNr;
    node = xpathCtxt->node;
    xpathCtxt->namespaces = *(a4 + 48);
    xpathCtxt->nsNr = *(a4 + 56);
    xpathCtxt->node = a1->node;
    v21 = xmlXPathCompiledEval(v13, xpathCtxt);
    v22 = a1->xpathCtxt;
    v22->node = node;
    v22->nsNr = nsNr;
    v22->namespaces = namespaces;
    if (v21)
    {
      v23 = v21;
      result = xsltFlagRVTs(a1, v21, 2);
LABEL_25:
      v8[1] = v23;
      return result;
    }

    v10 = *MEMORY[0x29EDC97F0];
    v11 = *MEMORY[0x29EDC97F8];
    v12 = "exsltFuncResultElem: ret == NULL\n";
  }

  else
  {
    v10 = *MEMORY[0x29EDC97F0];
    v11 = *MEMORY[0x29EDC97F8];
    v12 = "exsltFuncReturnElem: data == NULL\n";
  }

  return v10(v11, v12);
}

uint64_t exsltFuncRegisterFunc(uint64_t result, xsltTransformContext *a2, const char *a3, const char *a4)
{
  if (result && a2 && a3 && a4)
  {
    (*MEMORY[0x29EDC97E0])(*MEMORY[0x29EDC97E8], "exsltFuncRegisterFunc: register {%s}%s\n", a3, a4);

    return xsltRegisterExtFunction(a2, a4, a3, exsltFuncFunctionFunction);
  }

  return result;
}

xmlHashTable *exsltFuncRegisterImportFunc(xmlHashTable *result, uint64_t a2, xmlChar *name, xmlChar *name2)
{
  if (result)
  {
    if (a2)
    {
      if (name)
      {
        if (name2)
        {
          if (*a2)
          {
            v7 = result;
            result = *(a2 + 8);
            if (result)
            {
              result = xmlHashLookup2(result, name, name2);
              if (!result)
              {
                result = exsltFuncNewFunctionData();
                if (result)
                {
                  *result = *v7;
                  if (xmlHashAddEntry2(*(a2 + 8), name, name2, result) < 0)
                  {
                    return (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "Failed to register function {%s}%s\n", name, name2);
                  }

                  else
                  {
                    (*MEMORY[0x29EDC97E0])(*MEMORY[0x29EDC97E8], "exsltFuncRegisterImportFunc: register {%s}%s\n", name, name2);
                    v8 = *a2;

                    return xsltRegisterExtFunction(v8, name2, name, exsltFuncFunctionFunction);
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

void exsltFuncFunctionFunction(xmlXPathParserContext *a1, int a2)
{
  TransformContext = xsltXPathGetTransformContext(a1);
  ExtData = xsltGetExtData(TransformContext, "http://exslt.org/functions");
  v6 = *ExtData;
  v7 = *(ExtData + 1);
  *(ExtData + 1) = 0;
  v8 = xmlHashLookup2(v6, a1->context->functionURI, a1->context->function);
  if (!v8)
  {
    (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "{%s}%s: not found\n", a1->context->functionURI, a1->context->function);
    v10 = 9;
    goto LABEL_5;
  }

  v9 = *v8;
  if (*v8 < a2)
  {
    (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "{%s}%s: called with too many arguments\n", a1->context->functionURI, a1->context->function);
    v10 = 12;
LABEL_5:
    a1->error = v10;
    return;
  }

  v11 = *(v8 + 1);
  if (v11 && (v12 = *(v11 + 56)) != 0)
  {
    v13 = 0;
  }

  else
  {
    if (v9)
    {
      v14 = *MEMORY[0x29EDC97F0];
      v15 = *MEMORY[0x29EDC97F8];

      v14(v15, "exsltFuncFunctionFunction: nargs != 0 and param == NULL\n");
      return;
    }

    v12 = 0;
    v13 = 1;
  }

  depth = TransformContext->depth;
  if (depth >= TransformContext->maxTemplateDepth)
  {
    xsltTransformError(TransformContext, 0, 0, "exsltFuncFunctionFunction: Potentially infinite recursion detected in function {%s}%s.\n", a1->context->functionURI, a1->context->function);
    TransformContext->state = XSLT_STATE_STOPPED;
  }

  else
  {
    TransformContext->depth = depth + 1;
    node = TransformContext->xpathCtxt->node;
    v35 = v7;
    varsBase = TransformContext->varsBase;
    TransformContext->varsBase = TransformContext->varsNr;
    v36 = v8;
    if (v13)
    {
      v17 = 0;
    }

    else
    {
      if (a2 < 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        v19 = a2;
        do
        {
          v20 = v18;
          v18 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
          *v18 = v20;
          v18[1] = valuePop(a1);
          --v19;
        }

        while (v19);
        v9 = *v36;
      }

      if (v9 < 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = 1;
        while (1)
        {
          prev = v12->prev;
          if (!prev)
          {
            break;
          }

          ++v21;
          v12 = v12->prev;
          if (v21 - v9 == 1)
          {
            v12 = prev;
            v21 = v9 + 1;
            break;
          }
        }
      }

      v23 = 0;
      v24 = v9 - a2;
      do
      {
        v25 = xsltParseStylesheetCallerParam(TransformContext, v12);
        v17 = v25;
        if (v21 > v24)
        {
          v25->computed = 1;
          value = v25->value;
          if (value)
          {
            xmlXPathFreeObject(value);
          }

          v27 = *v18;
          v17->value = v18[1];
          free(v18);
          v18 = v27;
        }

        xsltLocalVariablePush(TransformContext, v17, -1);
        v17->next = v23;
        v12 = v12->next;
        v23 = v17;
        v28 = __OFSUB__(v21--, 1);
      }

      while (!((v21 < 0) ^ v28 | (v21 == 0)));
    }

    v29 = xmlNewDocNode(TransformContext->output, 0, "fake", 0);
    insert = TransformContext->insert;
    v31 = *(ExtData + 2);
    *(ExtData + 2) = TransformContext->contextVariable;
    TransformContext->insert = v29;
    TransformContext->contextVariable = 0;
    xsltApplyOneTemplate(TransformContext, TransformContext->node, *(v36 + 1), 0, 0);
    xsltLocalVariablePop(TransformContext, TransformContext->varsBase, -2);
    TransformContext->insert = insert;
    TransformContext->contextVariable = *(ExtData + 2);
    TransformContext->varsBase = varsBase;
    *(ExtData + 2) = v31;
    if (v17)
    {
      xsltFreeStackElemList(v17);
    }

    TransformContext->xpathCtxt->node = node;
    if (!*(ExtData + 6))
    {
      v32 = *(ExtData + 1);
      if (v32)
      {
        xsltFlagRVTs(TransformContext, *(ExtData + 1), 1);
      }

      else
      {
        v32 = xmlXPathNewCString(&unk_29878660E);
      }

      *(ExtData + 1) = v35;
      if (v29->children)
      {
        xmlDebugDumpNode(*MEMORY[0x29EDCA610], v29, 1);
        (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "{%s}%s: cannot write to result tree while executing a function\n", a1->context->functionURI, a1->context->function);
        xmlFreeNode(v29);
        xmlXPathFreeObject(v32);
      }

      else
      {
        xmlFreeNode(v29);
        valuePush(a1, v32);
      }
    }

    --TransformContext->depth;
  }
}

void *exsltFuncNewFunctionData()
{
  v0 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
    v0[1] = 0;
  }

  else
  {
    (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltFuncNewFunctionData: not enough memory\n");
  }

  return v1;
}

void exsltFreeFuncResultPreComp(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      xmlXPathFreeCompExpr(v2);
    }

    v3 = a1[6];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

void exsltMathRegister(void)
{
  xsltRegisterExtModuleFunction("min", "http://exslt.org/math", exsltMathMinFunction);
  xsltRegisterExtModuleFunction("max", "http://exslt.org/math", exsltMathMaxFunction);
  xsltRegisterExtModuleFunction("highest", "http://exslt.org/math", exsltMathHighestFunction);
  xsltRegisterExtModuleFunction("lowest", "http://exslt.org/math", exsltMathLowestFunction);
  xsltRegisterExtModuleFunction("constant", "http://exslt.org/math", exsltMathConstantFunction);
  xsltRegisterExtModuleFunction("random", "http://exslt.org/math", exsltMathRandomFunction);
  xsltRegisterExtModuleFunction("abs", "http://exslt.org/math", exsltMathAbsFunction);
  xsltRegisterExtModuleFunction("sqrt", "http://exslt.org/math", exsltMathSqrtFunction);
  xsltRegisterExtModuleFunction("power", "http://exslt.org/math", exsltMathPowerFunction);
  xsltRegisterExtModuleFunction("log", "http://exslt.org/math", exsltMathLogFunction);
  xsltRegisterExtModuleFunction("sin", "http://exslt.org/math", exsltMathSinFunction);
  xsltRegisterExtModuleFunction("cos", "http://exslt.org/math", exsltMathCosFunction);
  xsltRegisterExtModuleFunction("tan", "http://exslt.org/math", exsltMathTanFunction);
  xsltRegisterExtModuleFunction("asin", "http://exslt.org/math", exsltMathAsinFunction);
  xsltRegisterExtModuleFunction("acos", "http://exslt.org/math", exsltMathAcosFunction);
  xsltRegisterExtModuleFunction("atan", "http://exslt.org/math", exsltMathAtanFunction);
  xsltRegisterExtModuleFunction("atan2", "http://exslt.org/math", exsltMathAtan2Function);

  xsltRegisterExtModuleFunction("exp", "http://exslt.org/math", exsltMathExpFunction);
}

xmlNodeSetPtr exsltMathMinFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 != 1)
  {
    result = (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "math:min: invalid number of arguments\n");
    ctxt->error = 12;
    return result;
  }

  value = ctxt->value;
  if (value && value->BOOLval)
  {
    user = value->user;
    value->BOOLval = 0;
    value->user = 0;
  }

  else
  {
    user = 0;
  }

  result = xmlXPathPopNodeSet(ctxt);
  if (!ctxt->error)
  {
    v6 = result;
    if (result)
    {
      if (result->nodeNr)
      {
        v7 = xmlXPathCastNodeToNumber(*result->nodeTab);
        if (!xmlXPathIsNaN(v7))
        {
          if (v6->nodeNr < 2)
          {
            goto LABEL_12;
          }

          v9 = 1;
          while (1)
          {
            v10 = xmlXPathCastNodeToNumber(v6->nodeTab[v9]);
            if (xmlXPathIsNaN(v10))
            {
              break;
            }

            if (v10 < v7)
            {
              v7 = v10;
            }

            if (++v9 >= v6->nodeNr)
            {
              goto LABEL_12;
            }
          }
        }
      }
    }

    v7 = *MEMORY[0x29EDC97C8];
LABEL_12:
    xmlXPathFreeNodeSet(v6);
    if (user)
    {
      xmlFreeNodeList(user);
    }

    v8 = xmlXPathNewFloat(v7);

    return valuePush(ctxt, v8);
  }

  return result;
}

void exsltMathMaxFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    value = ctxt->value;
    if (value && value->BOOLval)
    {
      user = value->user;
      value->BOOLval = 0;
      value->user = 0;
    }

    else
    {
      user = 0;
    }

    v5 = xmlXPathPopNodeSet(ctxt);
    if (ctxt->error)
    {
      return;
    }

    v6 = v5;
    if (v5)
    {
      if (v5->nodeNr)
      {
        v7 = xmlXPathCastNodeToNumber(*v5->nodeTab);
        if (!xmlXPathIsNaN(v7))
        {
          if (v6->nodeNr < 2)
          {
            goto LABEL_14;
          }

          v9 = 1;
          while (1)
          {
            v10 = xmlXPathCastNodeToNumber(v6->nodeTab[v9]);
            if (xmlXPathIsNaN(v10))
            {
              break;
            }

            if (v10 > v7)
            {
              v7 = v10;
            }

            if (++v9 >= v6->nodeNr)
            {
              goto LABEL_14;
            }
          }
        }
      }
    }

    v7 = *MEMORY[0x29EDC97C8];
LABEL_14:
    xmlXPathFreeNodeSet(v6);
    if (user)
    {
      xmlFreeNodeList(user);
    }

    v8 = xmlXPathNewFloat(v7);

    valuePush(ctxt, v8);
    return;
  }

  xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 136, 12);
  if (ctxt)
  {
    ctxt->error = 12;
  }
}

void exsltMathHighestFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    value = ctxt->value;
    if (value && value->BOOLval)
    {
      user = value->user;
      value->BOOLval = 0;
      value->user = 0;
    }

    else
    {
      user = 0;
    }

    v5 = xmlXPathPopNodeSet(ctxt);
    if (!ctxt->error)
    {
      v6 = v5;
      v7 = xmlXPathNodeSetCreate(0);
      if (v6)
      {
        if (v6->nodeNr)
        {
          v8 = xmlXPathCastNodeToNumber(*v6->nodeTab);
          if (!xmlXPathIsNaN(v8))
          {
            xmlXPathNodeSetAddUnique(v7, *v6->nodeTab);
            if (v6->nodeNr >= 2)
            {
              v9 = 1;
              while (1)
              {
                v10 = xmlXPathCastNodeToNumber(v6->nodeTab[v9]);
                if (xmlXPathIsNaN(v10))
                {
                  break;
                }

                if (v10 >= v8)
                {
                  if (v10 <= v8)
                  {
                    xmlXPathNodeSetAddUnique(v7, v6->nodeTab[v9]);
                  }

                  else
                  {
                    nodeNr = v7->nodeNr;
                    if (nodeNr >= 1)
                    {
                      v12 = nodeNr - 1;
                      do
                      {
                        v7->nodeTab[v12] = 0;
                        v13 = v12-- + 1;
                      }

                      while (v13 > 1);
                      v7->nodeNr = 0;
                    }

                    xmlXPathNodeSetAddUnique(v7, v6->nodeTab[v9]);
                    v8 = v10;
                  }
                }

                if (++v9 >= v6->nodeNr)
                {
                  goto LABEL_30;
                }
              }

              v14 = v7->nodeNr;
              if (v14 >= 1)
              {
                v15 = v14 - 1;
                do
                {
                  v7->nodeTab[v15] = 0;
                  v16 = v15-- + 1;
                }

                while (v16 > 1);
                v7->nodeNr = 0;
              }
            }
          }
        }
      }

LABEL_30:
      xmlXPathFreeNodeSet(v6);
      if (user)
      {
        xmlFreeNodeList(user);
      }

      v17 = xmlXPathWrapNodeSet(v7);

      valuePush(ctxt, v17);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 216, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathLowestFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    value = ctxt->value;
    if (value && value->BOOLval)
    {
      user = value->user;
      value->BOOLval = 0;
      value->user = 0;
    }

    else
    {
      user = 0;
    }

    v5 = xmlXPathPopNodeSet(ctxt);
    if (!ctxt->error)
    {
      v6 = v5;
      v7 = xmlXPathNodeSetCreate(0);
      if (v6)
      {
        if (v6->nodeNr)
        {
          v8 = xmlXPathCastNodeToNumber(*v6->nodeTab);
          if (!xmlXPathIsNaN(v8))
          {
            xmlXPathNodeSetAddUnique(v7, *v6->nodeTab);
            if (v6->nodeNr >= 2)
            {
              v9 = 1;
              while (1)
              {
                v10 = xmlXPathCastNodeToNumber(v6->nodeTab[v9]);
                if (xmlXPathIsNaN(v10))
                {
                  break;
                }

                if (v10 <= v8)
                {
                  if (v10 < v8)
                  {
                    nodeNr = v7->nodeNr;
                    if (nodeNr >= 1)
                    {
                      v12 = nodeNr - 1;
                      do
                      {
                        v7->nodeTab[v12] = 0;
                        v13 = v12-- + 1;
                      }

                      while (v13 > 1);
                      v7->nodeNr = 0;
                    }

                    xmlXPathNodeSetAddUnique(v7, v6->nodeTab[v9]);
                    v8 = v10;
                  }

                  else
                  {
                    xmlXPathNodeSetAddUnique(v7, v6->nodeTab[v9]);
                  }
                }

                if (++v9 >= v6->nodeNr)
                {
                  goto LABEL_30;
                }
              }

              v14 = v7->nodeNr;
              if (v14 >= 1)
              {
                v15 = v14 - 1;
                do
                {
                  v7->nodeTab[v15] = 0;
                  v16 = v15-- + 1;
                }

                while (v16 > 1);
                v7->nodeNr = 0;
              }
            }
          }
        }
      }

LABEL_30:
      xmlXPathFreeNodeSet(v6);
      if (user)
      {
        xmlFreeNodeList(user);
      }

      v17 = xmlXPathWrapNodeSet(v7);

      valuePush(ctxt, v17);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 297, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathConstantFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 2)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (ctxt->error)
    {
      return;
    }

    v4 = v3;
    v5 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      return;
    }

    v6 = v5;
    if (!v5)
    {
      v9 = *MEMORY[0x29EDC97C8];
LABEL_32:
      v14 = xmlXPathNewFloat(v9);

      valuePush(ctxt, v14);
      return;
    }

    IsNaN = xmlXPathIsNaN(v4);
    if (v4 < 1.0 || IsNaN)
    {
      goto LABEL_30;
    }

    if (xmlStrEqual(v6, "PI"))
    {
      v8 = "3.1415926535897932384626433832795028841971693993751";
    }

    else if (xmlStrEqual(v6, "E"))
    {
      v8 = "2.71828182845904523536028747135266249775724709369996";
    }

    else if (xmlStrEqual(v6, "SQRRT2"))
    {
      v8 = "1.41421356237309504880168872420969807856967187537694";
    }

    else if (xmlStrEqual(v6, "LN2"))
    {
      v8 = "0.69314718055994530941723212145817656807550013436025";
    }

    else if (xmlStrEqual(v6, "LN10"))
    {
      v8 = "2.30258509299404568402";
    }

    else if (xmlStrEqual(v6, "LOG2E"))
    {
      v8 = "1.4426950408889634074";
    }

    else
    {
      if (!xmlStrEqual(v6, "SQRT1_2"))
      {
        goto LABEL_30;
      }

      v8 = "0.70710678118654752440";
    }

    v10 = xmlStrlen(v8);
    if (v4 <= v10)
    {
      v11 = v4;
    }

    else
    {
      v11 = v10;
    }

    v12 = xmlStrsub(v8, 0, v11);
    if (v12)
    {
      v13 = v12;
      v9 = MEMORY[0x29C2929B0]();
      free(v13);
LABEL_31:
      free(v6);
      goto LABEL_32;
    }

LABEL_30:
    v9 = *MEMORY[0x29EDC97C8];
    goto LABEL_31;
  }

  xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 438, 12);
  if (ctxt)
  {
    ctxt->error = 12;
  }
}

void exsltMathRandomFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2)
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 488, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }

  else
  {
    v3 = rand();
    v4 = xmlXPathNewFloat(v3 / 2147483650.0);

    valuePush(ctxt, v4);
  }
}

void exsltMathAbsFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      IsNaN = xmlXPathIsNaN(v3);
      v6 = *MEMORY[0x29EDC97C8];
      v7 = fabs(v4);
      if (!IsNaN)
      {
        v6 = v7;
      }

      v8 = xmlXPathNewFloat(v6);

      valuePush(ctxt, v8);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 532, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathSqrtFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      IsNaN = xmlXPathIsNaN(v3);
      v6 = *MEMORY[0x29EDC97C8];
      v7 = sqrt(v4);
      if (!IsNaN)
      {
        v6 = v7;
      }

      v8 = xmlXPathNewFloat(v6);

      valuePush(ctxt, v8);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 575, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathPowerFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 2)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      v5 = xmlXPathPopNumber(ctxt);
      if (!ctxt->error)
      {
        v6 = v5;
        if (xmlXPathIsNaN(v5) || xmlXPathIsNaN(v4))
        {
          v7 = *MEMORY[0x29EDC97C8];
        }

        else
        {
          v7 = pow(v6, v4);
        }

        v8 = xmlXPathNewFloat(v7);

        valuePush(ctxt, v8);
      }
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 620, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathLogFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      if (xmlXPathIsNaN(v3))
      {
        v5 = *MEMORY[0x29EDC97C8];
      }

      else
      {
        v5 = log(v4);
      }

      v6 = xmlXPathNewFloat(v5);

      valuePush(ctxt, v6);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 668, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathSinFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      if (xmlXPathIsNaN(v3))
      {
        v5 = *MEMORY[0x29EDC97C8];
      }

      else
      {
        v5 = sin(v4);
      }

      v6 = xmlXPathNewFloat(v5);

      valuePush(ctxt, v6);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 711, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathCosFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      if (xmlXPathIsNaN(v3))
      {
        v5 = *MEMORY[0x29EDC97C8];
      }

      else
      {
        v5 = cos(v4);
      }

      v6 = xmlXPathNewFloat(v5);

      valuePush(ctxt, v6);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 754, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathTanFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      if (xmlXPathIsNaN(v3))
      {
        v5 = *MEMORY[0x29EDC97C8];
      }

      else
      {
        v5 = tan(v4);
      }

      v6 = xmlXPathNewFloat(v5);

      valuePush(ctxt, v6);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 797, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathAsinFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      if (xmlXPathIsNaN(v3))
      {
        v5 = *MEMORY[0x29EDC97C8];
      }

      else
      {
        v5 = asin(v4);
      }

      v6 = xmlXPathNewFloat(v5);

      valuePush(ctxt, v6);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 840, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathAcosFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      if (xmlXPathIsNaN(v3))
      {
        v5 = *MEMORY[0x29EDC97C8];
      }

      else
      {
        v5 = acos(v4);
      }

      v6 = xmlXPathNewFloat(v5);

      valuePush(ctxt, v6);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 883, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathAtanFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      if (xmlXPathIsNaN(v3))
      {
        v5 = *MEMORY[0x29EDC97C8];
      }

      else
      {
        v5 = atan(v4);
      }

      v6 = xmlXPathNewFloat(v5);

      valuePush(ctxt, v6);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 926, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathAtan2Function(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 2)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      v5 = xmlXPathPopNumber(ctxt);
      if (!ctxt->error)
      {
        v6 = v5;
        if (xmlXPathIsNaN(v5) || xmlXPathIsNaN(v4))
        {
          v7 = *MEMORY[0x29EDC97C8];
        }

        else
        {
          v7 = atan2(v6, v4);
        }

        v8 = xmlXPathNewFloat(v7);

        valuePush(ctxt, v8);
      }
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 971, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltMathExpFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    v3 = xmlXPathPopNumber(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      if (xmlXPathIsNaN(v3))
      {
        v5 = *MEMORY[0x29EDC97C8];
      }

      else
      {
        v5 = exp(v4);
      }

      v6 = xmlXPathNewFloat(v5);

      valuePush(ctxt, v6);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/math.c", 1020, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

int exsltMathXpathCtxtRegister(xmlXPathContextPtr ctxt, const xmlChar *prefix)
{
  if (!ctxt)
  {
    return -1;
  }

  if (!prefix)
  {
    return -1;
  }

  if (xmlXPathRegisterNs(ctxt, prefix, "http://exslt.org/math"))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "min", "http://exslt.org/math", exsltMathMinFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "max", "http://exslt.org/math", exsltMathMaxFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "highest", "http://exslt.org/math", exsltMathHighestFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "lowest", "http://exslt.org/math", exsltMathLowestFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "random", "http://exslt.org/math", exsltMathRandomFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "abs", "http://exslt.org/math", exsltMathAbsFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "sqrt", "http://exslt.org/math", exsltMathSqrtFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "power", "http://exslt.org/math", exsltMathPowerFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "log", "http://exslt.org/math", exsltMathLogFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "sin", "http://exslt.org/math", exsltMathSinFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "cos", "http://exslt.org/math", exsltMathCosFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "tan", "http://exslt.org/math", exsltMathTanFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "asin", "http://exslt.org/math", exsltMathAsinFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "acos", "http://exslt.org/math", exsltMathAcosFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "atan", "http://exslt.org/math", exsltMathAtanFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "atan2", "http://exslt.org/math", exsltMathAtan2Function))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "exp", "http://exslt.org/math", exsltMathExpFunction))
  {
    return -1;
  }

  result = xmlXPathRegisterFuncNS(ctxt, "constant", "http://exslt.org/math", exsltMathConstantFunction);
  if (result)
  {
    return -1;
  }

  return result;
}

void exsltSaxonRegister(void)
{
  xsltRegisterExtModule("http://icl.com/saxon", exsltSaxonInit, exsltSaxonShutdown);
  xsltRegisterExtModuleFunction("expression", "http://icl.com/saxon", exsltSaxonExpressionFunction);
  xsltRegisterExtModuleFunction("eval", "http://icl.com/saxon", exsltSaxonEvalFunction);
  xsltRegisterExtModuleFunction("evaluate", "http://icl.com/saxon", exsltSaxonEvaluateFunction);
  xsltRegisterExtModuleFunction("line-number", "http://icl.com/saxon", exsltSaxonLineNumberFunction);

  xsltRegisterExtModuleFunction("systemId", "http://icl.com/saxon", exsltSaxonSystemIdFunction);
}

void exsltSaxonExpressionFunction(xmlXPathParserContext *a1, int a2)
{
  TransformContext = xsltXPathGetTransformContext(a1);
  if (a2 != 1)
  {
    v8 = 12;
    xmlXPatherror(a1, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/saxon.c", 85, 12);
    if (!a1)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = TransformContext;
  v6 = xmlXPathPopString(a1);
  if (a1->error)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (v7)
  {
    v8 = 11;
    v9 = a1;
    v10 = 91;
    v11 = 11;
LABEL_8:
    xmlXPatherror(v9, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/saxon.c", v10, v11);
LABEL_10:
    a1->error = v8;
    return;
  }

  v12 = v6;
  ExtData = xsltGetExtData(v5, a1->context->functionURI);
  v14 = xmlHashLookup(ExtData, v12);
  v15 = v14;
  if (!v14)
  {
    v16 = xmlXPathCtxtCompile(v5->xpathCtxt, v12);
    if (v16)
    {
      v15 = v16;
      xmlHashAddEntry(ExtData, v12, v16);
      goto LABEL_15;
    }

    free(v12);
    v8 = 7;
    v9 = a1;
    v10 = 104;
    v11 = 7;
    goto LABEL_8;
  }

LABEL_15:
  free(v12);
  v17 = xmlXPathWrapExternal(v15);

  valuePush(a1, v17);
}

void exsltSaxonEvalFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  v2 = ctxt;
  if (a2 != 1)
  {
    v6 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/saxon.c", 136, 12);
    if (!v2)
    {
      return;
    }

LABEL_12:
    v2->error = v6;
    return;
  }

  value = ctxt->value;
  if (!value || value->type != XPATH_USERS)
  {
    v6 = 11;
    v7 = 141;
    v8 = 11;
LABEL_11:
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/saxon.c", v7, v8);
    goto LABEL_12;
  }

  v4 = xmlXPathPopExternal(ctxt);
  v5 = xmlXPathCompiledEval(v4, v2->context);
  if (!v5)
  {
    v6 = 7;
    ctxt = v2;
    v7 = 149;
    v8 = 7;
    goto LABEL_11;
  }

  valuePush(v2, v5);
}

void exsltSaxonEvaluateFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    exsltSaxonExpressionFunction(ctxt, 1);

    exsltSaxonEvalFunction(ctxt, 1);
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/saxon.c", 176, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltSaxonLineNumberFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 != 1)
  {
    if (!a2)
    {
      v4 = 0;
      node = ctxt->context->node;
LABEL_4:
      LineNo = -1.0;
      if (node)
      {
        if (node->type != XML_NAMESPACE_DECL || (node = node->_private) != 0 && node->type == XML_ELEMENT_NODE)
        {
          LineNo = xmlGetLineNo(node);
        }

        else
        {
          (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "Internal error in exsltSaxonLineNumberFunction: Cannot retrieve the doc of a namespace node.\n");
        }
      }

      goto LABEL_23;
    }

    TransformContext = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(TransformContext, 0, 0, "saxon:line-number() : invalid number of args %d\n", a2);
    v11 = 12;
LABEL_21:
    ctxt->error = v11;
    return;
  }

  value = ctxt->value;
  if (!value || value->type != XPATH_NODESET)
  {
    v12 = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(v12, 0, 0, "saxon:line-number() : invalid arg expecting a node-set\n");
    v11 = 11;
    goto LABEL_21;
  }

  v4 = valuePop(ctxt);
  p_nodeNr = &v4->nodesetval->nodeNr;
  LineNo = -1.0;
  if (p_nodeNr && *p_nodeNr >= 1)
  {
    node = **(p_nodeNr + 1);
    if (*p_nodeNr != 1)
    {
      v9 = 1;
      do
      {
        if (xmlXPathCmpNodes(node, *(*(p_nodeNr + 1) + 8 * v9)) == -1)
        {
          node = *(*(p_nodeNr + 1) + 8 * v9);
        }

        ++v9;
      }

      while (v9 < *p_nodeNr);
    }

    goto LABEL_4;
  }

LABEL_23:
  v13 = xmlXPathNewFloat(LineNo);
  valuePush(ctxt, v13);

  xmlXPathFreeObject(v4);
}

void exsltSaxonSystemIdFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (ctxt)
  {
    if (a2)
    {
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/saxon.c", 199, 12);
      ctxt->error = 12;
    }

    else
    {
      context = ctxt->context;
      if (!context || (doc = context->doc) == 0 || (URL = doc->URL) == 0)
      {
        URL = &unk_29878660E;
      }

      v6 = xmlXPathNewString(URL);

      valuePush(ctxt, v6);
    }
  }
}

void exsltSetsRegister(void)
{
  xsltRegisterExtModuleFunction("difference", "http://exslt.org/sets", exsltSetsDifferenceFunction);
  xsltRegisterExtModuleFunction("intersection", "http://exslt.org/sets", exsltSetsIntersectionFunction);
  xsltRegisterExtModuleFunction("distinct", "http://exslt.org/sets", exsltSetsDistinctFunction);
  xsltRegisterExtModuleFunction("has-same-node", "http://exslt.org/sets", exsltSetsHasSameNodesFunction);
  xsltRegisterExtModuleFunction("leading", "http://exslt.org/sets", exsltSetsLeadingFunction);

  xsltRegisterExtModuleFunction("trailing", "http://exslt.org/sets", exsltSetsTrailingFunction);
}

void exsltSetsDifferenceFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 2)
  {
    v3 = xmlXPathPopNodeSet(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      v5 = xmlXPathPopNodeSet(ctxt);
      if (ctxt->error)
      {

        xmlXPathFreeNodeSet(v4);
      }

      else
      {
        v6 = v5;
        v7 = xmlXPathDifference(v5, v4);
        if (v7 != v6)
        {
          xmlXPathFreeNodeSet(v6);
        }

        xmlXPathFreeNodeSet(v4);
        v8 = xmlXPathWrapNodeSet(v7);

        valuePush(ctxt, v8);
      }
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/sets.c", 26, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltSetsIntersectionFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 2)
  {
    v3 = xmlXPathPopNodeSet(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      v5 = xmlXPathPopNodeSet(ctxt);
      if (ctxt->error)
      {

        xmlXPathFreeNodeSet(v4);
      }

      else
      {
        v6 = v5;
        v7 = xmlXPathIntersection(v5, v4);
        xmlXPathFreeNodeSet(v6);
        xmlXPathFreeNodeSet(v4);
        v8 = xmlXPathWrapNodeSet(v7);

        valuePush(ctxt, v8);
      }
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/sets.c", 61, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltSetsDistinctFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 1)
  {
    value = ctxt->value;
    if (value)
    {
      BOOLval = value->BOOLval;
      user = value->user;
      value->BOOLval = 0;
      value->user = 0;
    }

    else
    {
      BOOLval = 0;
      user = 0;
    }

    v6 = xmlXPathPopNodeSet(ctxt);
    if (!ctxt->error)
    {
      v7 = v6;
      v8 = xmlXPathDistinctSorted(v6);
      if (v8 != v7)
      {
        xmlXPathFreeNodeSet(v7);
      }

      v9 = xmlXPathWrapNodeSet(v8);
      v9->user = user;
      v9->BOOLval = BOOLval;

      valuePush(ctxt, v9);
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/sets.c", 98, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltSetsHasSameNodesFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 2)
  {
    v3 = xmlXPathPopNodeSet(ctxt);
    if (!ctxt->error)
    {
      v4 = v3;
      v5 = xmlXPathPopNodeSet(ctxt);
      if (ctxt->error)
      {

        xmlXPathFreeNodeSet(v4);
      }

      else
      {
        v6 = v5;
        HasSameNodes = xmlXPathHasSameNodes(v5, v4);
        xmlXPathFreeNodeSet(v6);
        xmlXPathFreeNodeSet(v4);
        v8 = xmlXPathNewBoolean(HasSameNodes);

        valuePush(ctxt, v8);
      }
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/sets.c", 138, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltSetsLeadingFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 2)
  {
    v3 = xmlXPathPopNodeSet(ctxt);
    if (ctxt->error)
    {
      return;
    }

    v4 = v3;
    v5 = xmlXPathPopNodeSet(ctxt);
    if (!ctxt->error)
    {
      v6 = v5;
      if (v4)
      {
        if (v4->nodeNr)
        {
          nodeTab = v4->nodeTab;
          if (nodeTab)
          {
            if (v4->nodeNr < 1)
            {
              v8 = 0;
            }

            else
            {
              v8 = *nodeTab;
            }

            v10 = xmlXPathNodeLeadingSorted(v5, v8);
            xmlXPathFreeNodeSet(v6);
            xmlXPathFreeNodeSet(v4);
            v11 = xmlXPathWrapNodeSet(v10);

            valuePush(ctxt, v11);
            return;
          }
        }
      }

      v9 = xmlXPathWrapNodeSet(v5);
      valuePush(ctxt, v9);
    }

    xmlXPathFreeNodeSet(v4);
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/sets.c", 172, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltSetsTrailingFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 == 2)
  {
    v3 = xmlXPathPopNodeSet(ctxt);
    if (ctxt->error)
    {
      return;
    }

    v4 = v3;
    v5 = xmlXPathPopNodeSet(ctxt);
    if (!ctxt->error)
    {
      v6 = v5;
      if (v4)
      {
        if (v4->nodeNr)
        {
          nodeTab = v4->nodeTab;
          if (nodeTab)
          {
            if (v4->nodeNr < 1)
            {
              v8 = 0;
            }

            else
            {
              v8 = *nodeTab;
            }

            v10 = xmlXPathNodeTrailingSorted(v5, v8);
            xmlXPathFreeNodeSet(v6);
            xmlXPathFreeNodeSet(v4);
            v11 = xmlXPathWrapNodeSet(v10);

            valuePush(ctxt, v11);
            return;
          }
        }
      }

      v9 = xmlXPathWrapNodeSet(v5);
      valuePush(ctxt, v9);
    }

    xmlXPathFreeNodeSet(v4);
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/sets.c", 217, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

int exsltSetsXpathCtxtRegister(xmlXPathContextPtr ctxt, const xmlChar *prefix)
{
  if (!ctxt)
  {
    return -1;
  }

  if (!prefix)
  {
    return -1;
  }

  if (xmlXPathRegisterNs(ctxt, prefix, "http://exslt.org/sets"))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "difference", "http://exslt.org/sets", exsltSetsDifferenceFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "intersection", "http://exslt.org/sets", exsltSetsIntersectionFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "distinct", "http://exslt.org/sets", exsltSetsDistinctFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "has-same-node", "http://exslt.org/sets", exsltSetsHasSameNodesFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "leading", "http://exslt.org/sets", exsltSetsLeadingFunction))
  {
    return -1;
  }

  result = xmlXPathRegisterFuncNS(ctxt, "trailing", "http://exslt.org/sets", exsltSetsTrailingFunction);
  if (result)
  {
    return -1;
  }

  return result;
}

void exsltStrRegister(void)
{
  xsltRegisterExtModuleFunction("tokenize", "http://exslt.org/strings", exsltStrTokenizeFunction);
  xsltRegisterExtModuleFunction("split", "http://exslt.org/strings", exsltStrSplitFunction);
  xsltRegisterExtModuleFunction("encode-uri", "http://exslt.org/strings", exsltStrEncodeUriFunction);
  xsltRegisterExtModuleFunction("decode-uri", "http://exslt.org/strings", exsltStrDecodeUriFunction);
  xsltRegisterExtModuleFunction("padding", "http://exslt.org/strings", exsltStrPaddingFunction);
  xsltRegisterExtModuleFunction("align", "http://exslt.org/strings", exsltStrAlignFunction);
  xsltRegisterExtModuleFunction("concat", "http://exslt.org/strings", exsltStrConcatFunction);

  xsltRegisterExtModuleFunction("replace", "http://exslt.org/strings", exsltStrReplaceFunction);
}

void exsltStrTokenizeFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if ((a2 - 3) > 0xFFFFFFFD)
  {
    if (a2 == 2)
    {
      v3 = xmlXPathPopString(ctxt);
      if (ctxt->error)
      {
        return;
      }
    }

    else
    {
      v3 = xmlStrdup("\t\r\n ");
    }

    v4 = v3;
    if (v3)
    {
      v5 = xmlXPathPopString(ctxt);
      if (ctxt->error || (v6 = v5) == 0)
      {

        free(v4);
      }

      else
      {
        TransformContext = xsltXPathGetTransformContext(ctxt);
        v8 = TransformContext;
        if (TransformContext)
        {
          RVT = xsltCreateRVT(TransformContext);
          if (RVT)
          {
            v10 = RVT;
            xsltRegisterLocalRVT(v8, RVT);
            v8 = xmlXPathNewNodeSet(0);
            if (v8 && *v6)
            {
              v11 = v6;
              v12 = v6;
              do
              {
                v13 = xmlUTF8Strsize(v12, 1);
                v14 = v13;
                v15 = v4;
                if (*v4)
                {
                  while (xmlUTF8Charcmp(v12, v15))
                  {
                    v15 += xmlUTF8Strsize(v15, 1);
                    if (!*v15)
                    {
                      v16 = v14;
                      goto LABEL_24;
                    }
                  }

                  if (v12 == v11)
                  {
                    v16 = v14;
                    v11 += v14;
                  }

                  else
                  {
                    *v12 = 0;
                    v19 = xmlNewDocRawNode(v10, 0, "token", v11);
                    xmlAddChild(v10, v19);
                    xmlXPathNodeSetAddUnique(v8->nodesetval, v19);
                    *v12 = *v15;
                    v16 = v14;
                    v11 = &v12[v14];
                  }
                }

                else
                {
                  v16 = v13;
                  v11 = &v12[v13];
                  v17 = *v11;
                  *v11 = 0;
                  v18 = xmlNewDocRawNode(v10, 0, "token", v12);
                  xmlAddChild(v10, v18);
                  xmlXPathNodeSetAddUnique(v8->nodesetval, v18);
                  *v11 = v17;
                }

LABEL_24:
                v12 += v16;
              }

              while (*v12);
              if (v11 != v12)
              {
                v20 = xmlNewDocRawNode(v10, 0, "token", v11);
                xmlAddChild(v10, v20);
                xmlXPathNodeSetAddUnique(v8->nodesetval, v20);
              }
            }
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v21 = xsltXPathGetTransformContext(ctxt);
          xsltTransformError(v21, 0, 0, "exslt:tokenize : internal error tctxt == NULL\n");
        }

        free(v6);
        free(v4);
        if (v8)
        {
          v22 = ctxt;
          v23 = v8;
        }

        else
        {
          v23 = xmlXPathNewNodeSet(0);
          v22 = ctxt;
        }

        valuePush(v22, v23);
      }
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 37, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltStrSplitFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if ((a2 - 3) > 0xFFFFFFFD)
  {
    if (a2 == 2)
    {
      v3 = xmlXPathPopString(ctxt);
      if (ctxt->error)
      {
        return;
      }
    }

    else
    {
      v3 = xmlStrdup(" ");
    }

    v4 = v3;
    if (v3)
    {
      v5 = xmlStrlen(v3);
      v6 = xmlXPathPopString(ctxt);
      if (ctxt->error || (v7 = v6) == 0)
      {

        free(v4);
      }

      else
      {
        TransformContext = xsltXPathGetTransformContext(ctxt);
        v9 = TransformContext;
        if (TransformContext)
        {
          RVT = xsltCreateRVT(TransformContext);
          if (RVT)
          {
            v11 = RVT;
            xsltRegisterLocalRVT(v9, RVT);
            v9 = xmlXPathNewNodeSet(0);
            if (v9)
            {
              v12 = *v7;
              if (*v7)
              {
                v13 = v7;
                v14 = v7;
                do
                {
                  if (v5)
                  {
                    if (!xmlStrncasecmp(v14, v4, v5))
                    {
                      if (v14 == v13)
                      {
                        v13 += v5;
                      }

                      else
                      {
                        *v14 = 0;
                        v15 = xmlNewDocRawNode(v11, 0, "token", v13);
                        xmlAddChild(v11, v15);
                        xmlXPathNodeSetAddUnique(v9->nodesetval, v15);
                        *v14 = *v4;
                        v13 = &v14[v5];
                      }

                      v14 = (v13 - 1);
                    }
                  }

                  else if (v14 == v13)
                  {
                    v14 = v13;
                  }

                  else
                  {
                    *v14 = 0;
                    v16 = xmlNewDocRawNode(v11, 0, "token", v13);
                    xmlAddChild(v11, v16);
                    xmlXPathNodeSetAddUnique(v9->nodesetval, v16);
                    *v14 = v12;
                    ++v13;
                  }

                  v17 = *++v14;
                  v12 = v17;
                }

                while (v17);
                if (v13 != v14)
                {
                  v18 = xmlNewDocRawNode(v11, 0, "token", v13);
                  xmlAddChild(v11, v18);
                  xmlXPathNodeSetAddUnique(v9->nodesetval, v18);
                }
              }
            }
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v19 = xsltXPathGetTransformContext(ctxt);
          xsltTransformError(v19, 0, 0, "exslt:tokenize : internal error tctxt == NULL\n");
        }

        free(v7);
        free(v4);
        if (v9)
        {
          v20 = ctxt;
          v21 = v9;
        }

        else
        {
          v21 = xmlXPathNewNodeSet(0);
          v20 = ctxt;
        }

        valuePush(v20, v21);
      }
    }
  }

  else
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 140, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }
  }
}

void exsltStrEncodeUriFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 - 4 <= 0xFFFFFFFD)
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 240, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }

    return;
  }

  if (a2 >= 3)
  {
    v3 = xmlXPathPopString(ctxt);
    if (xmlUTF8Strlen(v3) != 5 || xmlStrcmp("UTF-8", v3))
    {
      goto LABEL_17;
    }

    free(v3);
  }

  v4 = xmlXPathPopBoolean(ctxt);
  v3 = xmlXPathPopString(ctxt);
  v5 = xmlUTF8Strlen(v3);
  if (v5 > 0)
  {
    if (v4)
    {
      v6 = "-_.!~*'()";
    }

    else
    {
      v6 = "-_.!~*'();/?:@&=+$,[]";
    }

    v7 = xmlURIEscapeStr(v3, v6);
    v8 = xmlXPathWrapString(v7);
    valuePush(ctxt, v8);
    if (!v3)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v5 < 0)
  {
    (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltStrEncodeUriFunction: invalid UTF-8\n");
  }

LABEL_17:
  v9 = xmlXPathNewCString(&unk_29878660E);
  valuePush(ctxt, v9);
LABEL_18:

  free(v3);
}

void exsltStrDecodeUriFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  if (a2 - 3 <= 0xFFFFFFFD)
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 290, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }

    return;
  }

  if (a2 >= 2)
  {
    v3 = xmlXPathPopString(ctxt);
    if (xmlUTF8Strlen(v3) != 5 || xmlStrcmp("UTF-8", v3))
    {
LABEL_15:
      v7 = xmlXPathNewCString(&unk_29878660E);
      valuePush(ctxt, v7);
      goto LABEL_16;
    }

    free(v3);
  }

  v3 = xmlXPathPopString(ctxt);
  v4 = xmlUTF8Strlen(v3);
  if (v4 <= 0)
  {
    if (v4 < 0)
    {
      (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltStrDecodeUriFunction: invalid UTF-8\n");
    }

    goto LABEL_15;
  }

  v5 = xmlURIUnescapeString(v3, 0, 0);
  if (!xmlCheckUTF8(v5))
  {
    v9 = xmlXPathNewCString(&unk_29878660E);
    valuePush(ctxt, v9);
    free(v3);
    v8 = v5;
    goto LABEL_17;
  }

  v6 = xmlXPathWrapString(v5);
  valuePush(ctxt, v6);
  if (!v3)
  {
    return;
  }

LABEL_16:
  v8 = v3;
LABEL_17:

  free(v8);
}

void exsltStrPaddingFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 349, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }

    return;
  }

  if (a2 != 2)
  {
    v6 = xmlXPathPopNumber(ctxt);
LABEL_11:
    v3 = xmlStrdup(" ");
    v4 = 1;
    v5 = 1;
    goto LABEL_12;
  }

  v3 = xmlXPathPopString(ctxt);
  v4 = xmlUTF8Strlen(v3);
  v5 = xmlStrlen(v3);
  v6 = xmlXPathPopNumber(ctxt);
  if (v4 <= 0)
  {
    if (v4 < 0)
    {
      (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltStrPaddingFunction: invalid UTF-8\n");
LABEL_28:
      v14 = xmlXPathNewCString(&unk_29878660E);
      valuePush(ctxt, v14);
      goto LABEL_29;
    }

    if (v3)
    {
      free(v3);
    }

    goto LABEL_11;
  }

LABEL_12:
  IsNaN = xmlXPathIsNaN(v6);
  if (v6 < 0.0 || IsNaN)
  {
    goto LABEL_28;
  }

  if (v6 >= 100000.0)
  {
    v8 = 100000;
  }

  else
  {
    v8 = v6;
    if (v6 <= 0)
    {
      goto LABEL_28;
    }
  }

  Size = xmlBufferCreateSize(v8);
  if (!Size)
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 392, 15);
    if (ctxt)
    {
      ctxt->error = 15;
    }

    goto LABEL_29;
  }

  v10 = Size;
  xmlBufferSetAllocationScheme(Size, XML_BUFFER_ALLOC_DOUBLEIT);
  if (v8 < v4)
  {
    goto LABEL_22;
  }

  do
  {
    xmlBufferAdd(v10, v3, v5);
    v8 -= v4;
  }

  while (v8 >= v4);
  if (v8 >= 1)
  {
LABEL_22:
    v11 = xmlUTF8Strsize(v3, v8);
    xmlBufferAdd(v10, v3, v11);
  }

  v12 = xmlBufferDetach(v10);
  v13 = xmlXPathWrapString(v12);
  valuePush(ctxt, v13);
  xmlBufferFree(v10);
  if (v3)
  {
LABEL_29:

    free(v3);
  }
}

void exsltStrAlignFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if ((a2 - 4) <= 0xFFFFFFFD)
  {
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 427, 12);
    if (ctxt)
    {
      ctxt->error = 12;
    }

    return;
  }

  if (a2 == 3)
  {
    v3 = xmlXPathPopString(ctxt);
  }

  else
  {
    v3 = 0;
  }

  v4 = xmlXPathPopString(ctxt);
  v5 = xmlXPathPopString(ctxt);
  v6 = xmlUTF8Strlen(v5);
  v7 = xmlUTF8Strlen(v4);
  if ((v6 & 0x80000000) != 0 || (v7 & 0x80000000) != 0)
  {
    (*MEMORY[0x29EDC97F0])(*MEMORY[0x29EDC97F8], "exsltStrAlignFunction: invalid UTF-8\n");
    v10 = xmlXPathNewCString(&unk_29878660E);
LABEL_22:
    valuePush(ctxt, v10);
    free(v5);
    goto LABEL_23;
  }

  v8 = v7 - v6;
  if (v7 != v6)
  {
    if (v7 >= v6)
    {
      if (xmlStrEqual(v3, "right"))
      {
        v12 = xmlUTF8Strndup(v4, v8);
        v13 = v5;
      }

      else if (xmlStrEqual(v3, "center"))
      {
        v14 = v8;
        v15 = xmlUTF8Strndup(v4, v8 / 2);
        v16 = xmlStrcat(v15, v5);
        v13 = &v4[xmlUTF8Strsize(v4, v6 + v14 / 2)];
        v12 = v16;
      }

      else
      {
        v17 = xmlUTF8Strsize(v4, v6);
        v12 = xmlStrdup(v5);
        v13 = &v4[v17];
      }

      v11 = xmlStrcat(v12, v13);
    }

    else
    {
      v11 = xmlUTF8Strndup(v5, v7);
    }

    v10 = xmlXPathWrapString(v11);
    goto LABEL_22;
  }

  v9 = xmlXPathWrapString(v5);
  valuePush(ctxt, v9);
LABEL_23:
  free(v4);

  free(v3);
}

void exsltStrConcatFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (a2 != 1)
  {
    v14 = 12;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 506, 12);
    if (!ctxt)
    {
      return;
    }

LABEL_17:
    ctxt->error = v14;
    return;
  }

  value = ctxt->value;
  if (!value || (value->type | 8) != 9)
  {
    v14 = 11;
    xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 511, 11);
    goto LABEL_17;
  }

  v4 = valuePop(ctxt);
  v5 = v4;
  nodesetval = v4->nodesetval;
  if (nodesetval && nodesetval->nodeNr && nodesetval->nodeTab)
  {
    v7 = xmlBufferCreate();
    if (v7)
    {
      v8 = v7;
      xmlBufferSetAllocationScheme(v7, XML_BUFFER_ALLOC_DOUBLEIT);
      p_nodeNr = &v5->nodesetval->nodeNr;
      if (*p_nodeNr >= 1)
      {
        v10 = 0;
        do
        {
          v11 = xmlXPathCastNodeToString(*(*(p_nodeNr + 1) + 8 * v10));
          xmlBufferCat(v8, v11);
          free(v11);
          ++v10;
          p_nodeNr = &v5->nodesetval->nodeNr;
        }

        while (v10 < *p_nodeNr);
      }

      xmlXPathFreeObject(v5);
      v12 = xmlBufferDetach(v8);
      v13 = xmlXPathWrapString(v12);
      valuePush(ctxt, v13);

      xmlBufferFree(v8);
    }

    else
    {
      xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 525, 15);
      ctxt->error = 15;

      xmlXPathFreeObject(v5);
    }
  }

  else
  {
    xmlXPathFreeObject(v4);
    v15 = xmlXPathNewCString(&unk_29878660E);

    valuePush(ctxt, v15);
  }
}

void exsltStrReplaceFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  v53 = 0;
  v54 = 0;
  str = 0;
  if (a2 == 3)
  {
    value = ctxt->value;
    if (value && (value->type | 8) == 9)
    {
      v4 = xmlXPathPopNodeSet(ctxt);
    }

    else
    {
      v4 = 0;
      str = xmlXPathPopString(ctxt);
    }

    if (ctxt->error)
    {
      return;
    }

    v5 = ctxt->value;
    if (v5 && (v5->type | 8) == 9)
    {
      v6 = xmlXPathPopNodeSet(ctxt);
      v7 = v6;
      if (v6)
      {
        nodeNr = v6->nodeNr;
      }

      else
      {
        nodeNr = 0;
      }
    }

    else
    {
      v7 = 0;
      v53 = xmlXPathPopString(ctxt);
      nodeNr = 1;
    }

    if (ctxt->error)
    {
LABEL_103:
      if (!v4)
      {
        goto LABEL_108;
      }

      goto LABEL_104;
    }

    v9 = xmlXPathPopString(ctxt);
    if (ctxt->error)
    {
      goto LABEL_101;
    }

    v10 = v9;
    v11 = nodeNr;
    if (nodeNr <= 0)
    {
      v16 = xmlStrlen(v9);
      exsltStrReturnString(ctxt, v10, v16);
      goto LABEL_100;
    }

    if (nodeNr == 1)
    {
      v45 = 0;
      str1 = v9;
      p_str = &str;
      v13 = &v53;
      v14 = &v54;
      v15 = (&v54 + 4);
    }

    else
    {
      v17 = malloc_type_malloc(24 * nodeNr, 0x50040EE9192B6uLL);
      if (!v17)
      {
        xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 660, 15);
        ctxt->error = 15;
        goto LABEL_100;
      }

      v45 = v17;
      str1 = v10;
      p_str = &v17[8 * nodeNr];
      v15 = &p_str[nodeNr];
      v14 = v15 + 4 * nodeNr;
      v13 = v17;
    }

    v18 = 0;
    v19 = -1;
    while (1)
    {
      if (v7)
      {
        v20 = xmlXPathCastNodeToString(v7->nodeTab[v18]);
        v13[v18] = v20;
        if (!v20)
        {
          LODWORD(v11) = v18;
          goto LABEL_88;
        }
      }

      else
      {
        v20 = v13[v18];
      }

      v21 = xmlStrlen(v20);
      *(v15 + v18) = v21;
      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = (v19 & 0x80000000) != 0;
      }

      if (v22)
      {
        v19 = v18;
      }

      if (v4)
      {
        break;
      }

      if (v18)
      {
        goto LABEL_39;
      }

      v23 = str;
      *p_str = str;
      if (v23)
      {
        goto LABEL_41;
      }

LABEL_42:
      *&v14[4 * v18++] = v23;
      if (v11 == v18)
      {
        if ((v19 & 0x80000000) == 0 && !*&v14[4 * v19])
        {
          v19 = -1;
        }

        v24 = xmlBufferCreate();
        if (v24)
        {
          buf = v24;
          xmlBufferSetAllocationScheme(v24, XML_BUFFER_ALLOC_DOUBLEIT);
          if (*str1)
          {
            v25 = str1;
            v51 = str1;
            v48 = v7;
            v49 = v4;
            v47 = v14;
            do
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              do
              {
                v29 = v13[v26];
                if (*v25 == *v29)
                {
                  v30 = *(v15 + v26);
                  if (v30 > v28 && !xmlStrncmp(v25, v29, v30))
                  {
                    v28 = *(v15 + v26);
                    v27 = v26;
                  }
                }

                ++v26;
              }

              while (v11 != v26);
              v7 = v48;
              v31 = v51;
              if (v28)
              {
                if (v51 < v25 && (v25 - v51 >= 0x7FFFFFFF ? (v32 = 0x7FFFFFFF) : (v32 = v25 - v51), xmlBufferAdd(buf, v51, v32)) || (v33 = *&v47[4 * v27]) != 0 && xmlBufferAdd(buf, p_str[v27], v33))
                {
                  xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 758, 15);
                  v4 = v49;
                  if (!ctxt)
                  {
                    goto LABEL_87;
                  }

                  goto LABEL_86;
                }

                v25 += *(v15 + v27);
                v51 = v25;
                v4 = v49;
              }

              else
              {
                if ((v19 & 0x80000000) != 0)
                {
                  v4 = v49;
                }

                else
                {
                  v4 = v49;
                  if (v51 < v25)
                  {
                    v34 = v25 - v51 >= 0x7FFFFFFF ? 0x7FFFFFFF : v25 - v51;
                    if (xmlBufferAdd(buf, v51, v34) || (v35 = xmlBufferAdd(buf, p_str[v19], *&v47[4 * v19]), v31 = v25, v35))
                    {
                      v37 = ctxt;
                      v38 = 743;
                      goto LABEL_112;
                    }
                  }
                }

                v51 = v31;
                v25 += xmlUTF8Strsize(v25, 1);
              }
            }

            while (*v25);
            if (v51 >= v25)
            {
              goto LABEL_84;
            }

            v36 = v25 - v51 >= 0x7FFFFFFF ? 0x7FFFFFFF : v25 - v51;
            if (!xmlBufferAdd(buf, v51, v36))
            {
              goto LABEL_84;
            }

            v37 = ctxt;
            v38 = 769;
LABEL_112:
            xmlXPatherror(v37, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", v38, 15);
            if (ctxt)
            {
LABEL_86:
              ctxt->error = 15;
            }
          }

          else
          {
LABEL_84:
            v39 = xmlBufferContent(buf);
            v40 = xmlBufferLength(buf);
            exsltStrReturnString(ctxt, v39, v40);
          }

LABEL_87:
          xmlBufferFree(buf);
        }

        else
        {
          xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 717, 15);
          if (ctxt)
          {
            ctxt->error = 15;
          }
        }

LABEL_88:
        v10 = str1;
        if (v7 && v11 >= 1)
        {
          v41 = v11;
          do
          {
            v42 = *v13++;
            free(v42);
            --v41;
          }

          while (v41);
        }

        if (v4 && v11 >= 1)
        {
          v43 = v11;
          do
          {
            if (*p_str)
            {
              free(*p_str);
            }

            ++p_str;
            --v43;
          }

          while (v43);
        }

        if (v45)
        {
          free(v45);
        }

LABEL_100:
        free(v10);
LABEL_101:
        if (v7)
        {
          xmlXPathFreeNodeSet(v7);
          goto LABEL_103;
        }

        free(v53);
        if (!v4)
        {
LABEL_108:
          v44 = str;

          free(v44);
          return;
        }

LABEL_104:

        xmlXPathFreeNodeSet(v4);
        return;
      }
    }

    if (v18 < v4->nodeNr)
    {
      v23 = xmlXPathCastNodeToString(v4->nodeTab[v18]);
      p_str[v18] = v23;
      if (!v23)
      {
        LODWORD(v11) = v18 + 1;
        goto LABEL_88;
      }

LABEL_41:
      LODWORD(v23) = xmlStrlen(v23);
      goto LABEL_42;
    }

LABEL_39:
    LODWORD(v23) = 0;
    p_str[v18] = 0;
    goto LABEL_42;
  }

  xmlXPatherror(ctxt, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", 608, 12);
  if (ctxt)
  {
    ctxt->error = 12;
  }
}

int exsltStrXpathCtxtRegister(xmlXPathContextPtr ctxt, const xmlChar *prefix)
{
  if (!ctxt)
  {
    return -1;
  }

  if (!prefix)
  {
    return -1;
  }

  if (xmlXPathRegisterNs(ctxt, prefix, "http://exslt.org/strings"))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "encode-uri", "http://exslt.org/strings", exsltStrEncodeUriFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "decode-uri", "http://exslt.org/strings", exsltStrDecodeUriFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "padding", "http://exslt.org/strings", exsltStrPaddingFunction))
  {
    return -1;
  }

  if (xmlXPathRegisterFuncNS(ctxt, "align", "http://exslt.org/strings", exsltStrAlignFunction))
  {
    return -1;
  }

  result = xmlXPathRegisterFuncNS(ctxt, "concat", "http://exslt.org/strings", exsltStrConcatFunction);
  if (result)
  {
    return -1;
  }

  return result;
}

void exsltStrReturnString(xmlXPathParserContext *a1, const xmlChar *a2, int a3)
{
  TransformContext = xsltXPathGetTransformContext(a1);
  RVT = xsltCreateRVT(TransformContext);
  if (RVT)
  {
    v8 = RVT;
    xsltRegisterLocalRVT(TransformContext, RVT);
    v9 = xmlNewTextLen(a2, a3);
    if (v9)
    {
      v10 = v9;
      xmlAddChild(v8, v9);
      v11 = xmlXPathNewNodeSet(v10);
      if (v11)
      {

        valuePush(a1, v11);
        return;
      }

      v12 = a1;
      v13 = 579;
    }

    else
    {
      v12 = a1;
      v13 = 572;
    }
  }

  else
  {
    v12 = a1;
    v13 = 565;
  }

  xmlXPatherror(v12, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libexslt/strings.c", v13, 15);
  if (a1)
  {
    a1->error = 15;
  }
}