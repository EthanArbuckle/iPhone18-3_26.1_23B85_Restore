@interface ICSParser
+ (id)entitiesFromNSData:(id)a3 options:(unint64_t)a4;
- (BOOL)_parseComponent:(id)a3;
- (BOOL)createPropertyType:(int)a3 component:(id)a4 withName:(id)a5 fatalError:(BOOL *)a6;
- (BOOL)parseParameter:(id)a3 fatalError:(BOOL *)a4;
- (BOOL)parseProperty:(id)a3 fatalError:(BOOL *)a4;
- (ICSParser)initWithData:(id)a3 options:(unint64_t)a4;
- (id)makeComponent:(const char *)a3;
- (id)parseData;
- (void)_parseComponent:(id)a3 depth:(unint64_t)a4 fatalError:(BOOL *)a5;
@end

@implementation ICSParser

- (ICSParser)initWithData:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = ICSParser;
  v7 = [(ICSParser *)&v15 init];
  if ([v6 length] < 0x1400001)
  {
    v7->_options = a4;
    v9 = [ICSTokenizer alloc];
    if ((a4 & 0x80) != 0)
    {
      v10 = [(ICSTokenizer *)v9 initWithCompressedData:v6];
    }

    else
    {
      v10 = [(ICSTokenizer *)v9 initWithData:v6];
    }

    lexer = v7->_lexer;
    v7->_lexer = v10;

    v12 = [[ICSLazyDigestUIDGenerator alloc] initWithData:v6];
    uidGenerator = v7->_uidGenerator;
    v7->_uidGenerator = v12;

    v8 = v7;
  }

  else
  {
    +[ICSLogger logAtLevel:forTokenizer:message:](ICSLogger, "logAtLevel:forTokenizer:message:", 3, 0, @"ICS file exceeds maximum supported size: %lu", [v6 length]);
    v8 = 0;
  }

  return v8;
}

- (id)makeComponent:(const char *)a3
{
  if (!strcmp(a3, "VEVENT"))
  {
    v6 = ICSEvent;
LABEL_24:
    v7 = objc_alloc_init(v6);
    goto LABEL_25;
  }

  if (!strcmp(a3, "VTODO"))
  {
    v6 = ICSTodo;
    goto LABEL_24;
  }

  if (strcmp(a3, "VCALENDAR"))
  {
    if (!strcmp(a3, "VJOURNAL"))
    {
      v6 = ICSJournal;
    }

    else if (!strcmp(a3, "VALARM"))
    {
      v6 = ICSAlarm;
    }

    else if (!strcmp(a3, "VTIMEZONE"))
    {
      v6 = ICSTimeZone;
    }

    else if (!strcmp(a3, "DAYLIGHT"))
    {
      v6 = ICSTimeZoneDaylightBlock;
    }

    else if (!strcmp(a3, "STANDARD"))
    {
      v6 = ICSTimeZoneStandardBlock;
    }

    else if (!strcmp(a3, "VAVAILABILITY"))
    {
      v6 = ICSAvailability;
    }

    else if (!strcmp(a3, "AVAILABLE"))
    {
      v6 = ICSAvailable;
    }

    else
    {
      if (strcmp(a3, "VFREEBUSY"))
      {
        v4 = objc_alloc_init(ICSComponent);
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
        [(ICSComponent *)v4 setUnrecognizedComponentName:v5];

        goto LABEL_26;
      }

      v6 = ICSFreeBusy;
    }

    goto LABEL_24;
  }

  v7 = [[ICSCalendar alloc] _init];
LABEL_25:
  v4 = v7;
LABEL_26:

  return v4;
}

- (BOOL)parseParameter:(id)a3 fatalError:(BOOL *)a4
{
  v6 = a3;
  v7 = [(ICSTokenizer *)self->_lexer currentToken];
  if ([v7 length] <= 0x80000)
  {
    v9 = [(ICSTokenizer *)self->_lexer nextToken];
    if ([v9 length] <= 0x80000)
    {
      if (v9)
      {
        [v6 addParameter:v7 withRawValue:v9 options:self->_options];
        v8 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      +[ICSLogger logAtLevel:forTokenizer:message:](ICSLogger, "logAtLevel:forTokenizer:message:", 3, 0, @"ICS parameter value exceeds maximum supported length: %lu", [v9 length]);
      if (a4)
      {
        v8 = 0;
        *a4 = 1;
LABEL_10:

        goto LABEL_11;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  +[ICSLogger logAtLevel:forTokenizer:message:](ICSLogger, "logAtLevel:forTokenizer:message:", 3, 0, @"ICS parameter name exceeds maximum supported length: %lu", [v7 length]);
  v8 = 0;
  if (a4)
  {
    *a4 = 1;
  }

LABEL_11:

  return v8;
}

- (BOOL)createPropertyType:(int)a3 component:(id)a4 withName:(id)a5 fatalError:(BOOL *)a6
{
  v97[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 0;
  if (a3 <= 7)
  {
    if (a3 > 3)
    {
      if ((a3 - 4) < 2)
      {
        if (@"TRIGGER" == v11)
        {
          v14 = off_27A64B6C0;
        }

        else
        {
          v14 = off_27A64B568;
        }

        goto LABEL_31;
      }

      if ((a3 - 6) >= 2)
      {
        goto LABEL_32;
      }
    }

    else if (a3 >= 2)
    {
      if (a3 == 2)
      {
        v14 = off_27A64B6D0;
        goto LABEL_31;
      }

      if (a3 == 3)
      {
        v14 = off_27A64B500;
LABEL_31:
        v13 = objc_alloc_init(*v14);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

LABEL_22:
    v14 = off_27A64B610;
    goto LABEL_31;
  }

  if (a3 > 11)
  {
    if (a3 <= 13)
    {
      if (a3 == 12)
      {
        v14 = off_27A64B6B8;
      }

      else
      {
        v14 = off_27A64B6B0;
      }

      goto LABEL_31;
    }

    if (a3 != 14)
    {
      if (a3 == 15)
      {
        if (([(__CFString *)v11 isEqualToString:@"TRIGGER"]& 1) != 0)
        {
          v14 = off_27A64B6C0;
        }

        else
        {
          v15 = [(__CFString *)v12 isEqualToString:@"ATTACH"];
          v14 = off_27A64B5E8;
          if (v15)
          {
            v14 = off_27A64B4F8;
          }
        }

        goto LABEL_31;
      }

      goto LABEL_32;
    }

    goto LABEL_22;
  }

  if ((a3 - 10) < 2)
  {
    goto LABEL_22;
  }

  if (a3 == 8)
  {
    v14 = off_27A64B660;
    goto LABEL_31;
  }

  if (a3 == 9)
  {
    v14 = off_27A64B560;
    goto LABEL_31;
  }

LABEL_32:
  v16 = [(ICSTokenizer *)self->_lexer nextToken];
  if (!v16)
  {
    LOBYTE(v18) = 0;
    goto LABEL_147;
  }

  v17 = v16;
  while (1)
  {
    if (![v17 length] || -[ICSTokenizer tokenType](self->_lexer, "tokenType") != 2)
    {
      v97[0] = @"ATTACH";
      v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:1];
      if (([v76 containsObject:v12] & 1) == 0 && objc_msgSend(v17, "length") > 0x80000)
      {
        +[ICSLogger logAtLevel:forTokenizer:message:](ICSLogger, "logAtLevel:forTokenizer:message:", 3, 0, @"ICS property value exceeds maximum supported size (%@): %lu", v12, [v17 length]);
        LOBYTE(v18) = 0;
        *a6 = 1;
LABEL_145:

        goto LABEL_146;
      }

      v85 = v13;
      switch(a3)
      {
        case 0:
          v94 = 0;
          if (sscanf([v17 UTF8String], "%d", &v94) != 1)
          {
            goto LABEL_119;
          }

          v18 = [MEMORY[0x277CCABB0] numberWithInt:v94];
          v19 = v13;
          v20 = v18;
          v21 = 5008;
          goto LABEL_142;
        case 1:
          goto LABEL_71;
        case 2:
          v18 = [MEMORY[0x277CBEBC0] URLWithString:v17 encodingInvalidCharacters:0];
          if (v18)
          {
            [v13 setValue:v18 type:5021];
            v38 = @"VALUE";
            v39 = v13;
            goto LABEL_92;
          }

          [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid address property:%@", v17];
          goto LABEL_145;
        case 3:
          v18 = v17;
          if (![v18 length])
          {
            goto LABEL_133;
          }

          v30 = v18;
          goto LABEL_131;
        case 4:
          v58 = [ICSDateValue dateFromICSString:v17];
          v18 = v58;
          if (v58)
          {
            [v13 setValue:v58 type:{objc_msgSend(v58, "dateType")}];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v59 = [v13 parameterValueForName:@"TZID"];

              if (v59)
              {
                v39 = v13;
                v38 = @"TZID";
LABEL_92:
                [v39 removeParameterValueForName:v38];
              }
            }
          }

          else
          {
            if (@"TRIGGER" != v12 && @"X-WR-OCCTRIGGER" != v12)
            {
              [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Date validation error:%@ = '%@'", v12, v17];
              goto LABEL_134;
            }

            v30 = v17;
LABEL_131:
            [v13 setValueAsProperty:v12 withRawValue:objc_msgSend(v30 options:{"UTF8String"), self->_options}];
          }

          goto LABEL_143;
        case 5:
          v84 = v12;
          v40 = v17;
          [v40 componentsSeparatedByString:{@", "}];
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          obja = v93 = 0u;
          v61 = [obja countByEnumeratingWithState:&v90 objects:v96 count:16];
          if (v61)
          {
            v62 = v61;
            v80 = v40;
            v63 = *v91;
            while (1)
            {
              for (i = 0; i != v62; ++i)
              {
                if (*v91 != v63)
                {
                  objc_enumerationMutation(obja);
                }

                v65 = *(*(&v90 + 1) + 8 * i);
                v66 = objc_alloc_init(ICSDate);
                v67 = [v85 parameters];
                [(ICSProperty *)v66 setParameters:v67];

                v68 = +[ICSDateValue dateFromICSUTF8String:](ICSDateValue, "dateFromICSUTF8String:", [v65 UTF8String]);
                v18 = v68;
                if (!v68)
                {
                  v40 = v80;
                  v12 = v84;
                  [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Date validation error:%@ = '%@'", v84, v80];

                  v13 = v85;
                  goto LABEL_136;
                }

                -[ICSProperty setValue:type:](v66, "setValue:type:", v68, [v68 dateType]);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v69 = [(ICSProperty *)v66 parameterValueForName:@"TZID"];

                  if (v69)
                  {
                    [(ICSProperty *)v66 removeParameterValueForName:@"TZID"];
                  }
                }

                [v10 addProperty:v84 withValue:v66];
              }

              v62 = [obja countByEnumeratingWithState:&v90 objects:v96 count:16];
              if (!v62)
              {
                LOBYTE(v18) = 1;
                v12 = v84;
                v13 = v85;
                v40 = v80;
                goto LABEL_136;
              }
            }
          }

          LOBYTE(v18) = 1;
LABEL_136:

LABEL_137:
          goto LABEL_145;
        case 6:
          v40 = v17;
          v41 = [v40 length];
          LOBYTE(v18) = v41 != 0;
          if (v41)
          {
            v83 = v12;
            v78 = v10;
            v75 = v40;
            [v40 componentsSeparatedByString:{@", "}];
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            obj = v89 = 0u;
            v42 = [obj countByEnumeratingWithState:&v86 objects:v95 count:16];
            if (v42)
            {
              v43 = v42;
              v44 = *v87;
              v77 = v17;
              do
              {
                v45 = 0;
                v79 = v43;
                do
                {
                  if (*v87 != v44)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v46 = [*(*(&v86 + 1) + 8 * v45) componentsSeparatedByString:@"/"];
                  if ([v46 count] == 2)
                  {
                    v47 = [v46 objectAtIndex:0];
                    v48 = [ICSDateValue dateFromICSString:v47];

                    v49 = [v46 objectAtIndex:1];
                    v50 = [ICSDateValue dateFromICSString:v49];

                    v51 = [ICSPeriod alloc];
                    v52 = v51;
                    if (v50)
                    {
                      v53 = [(ICSPeriod *)v51 initWithStart:v48 end:v50];
                    }

                    else
                    {
                      v54 = [v46 objectAtIndex:1];
                      v55 = [ICSDuration durationFromICSString:v54];
                      v53 = [(ICSPeriod *)v52 initWithStart:v48 duration:v55];
                    }

                    v56 = [[ICSFreeBusyTime alloc] initWithPeriod:v53];
                    v57 = [v85 parameters];
                    [(ICSProperty *)v56 setParameters:v57];

                    [v78 addProperty:v83 withValue:v56];
                    v13 = v85;

                    v17 = v77;
                    v43 = v79;
                  }

                  ++v45;
                }

                while (v43 != v45);
                v43 = [obj countByEnumeratingWithState:&v86 objects:v95 count:16];
              }

              while (v43);
            }

            v10 = v78;
            v12 = v83;
            LOBYTE(v18) = 1;
            v40 = v75;
          }

          goto LABEL_137;
        case 7:
          v94 = 0;
          if (sscanf([v17 UTF8String], "%d", &v94) != 1)
          {
            goto LABEL_119;
          }

          if (v94 >= 1)
          {
            v71 = v94 % 0x64 + 60 * (v94 / 0x64);
          }

          else
          {
            v71 = v94 + 100 * (-v94 / 0x64) - 60 * (-v94 / 0x64);
          }

          v94 = v71;
          v18 = [MEMORY[0x277CCABB0] numberWithInt:60 * v71];
          v19 = v13;
          v20 = v18;
          v21 = 5018;
          goto LABEL_142;
        case 8:
          v32 = v17;
          if ([v32 length] >= 2 && objc_msgSend(v32, "characterAtIndex:", 0) == 34 && objc_msgSend(v32, "characterAtIndex:", objc_msgSend(v32, "length") - 1) == 34)
          {
            v33 = [v32 substringWithRange:{1, objc_msgSend(v32, "length") - 2}];

            v32 = v33;
          }

          v34 = [v32 stringByReplacingOccurrencesOfString:@"\\"" withString:&stru_28841D818];

          v18 = [MEMORY[0x277CBEBC0] URLWithString:v34 encodingInvalidCharacters:0];
          if (v18)
          {
            goto LABEL_113;
          }

          [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid location property:%@", v34];
          goto LABEL_139;
        case 9:
          v34 = v17;
          if ([v34 length] >= 2 && objc_msgSend(v34, "characterAtIndex:", 0) == 34 && objc_msgSend(v34, "characterAtIndex:", objc_msgSend(v34, "length") - 1) == 34)
          {
            v70 = [v34 substringWithRange:{1, objc_msgSend(v34, "length") - 2}];

            v34 = v70;
          }

          v18 = [MEMORY[0x277CBEBC0] _lp_URLWithUserTypedString:v34 relativeToURL:0];
          if (v18)
          {
LABEL_113:
            [v13 setValue:v18 type:5013];
            [v13 removeParameterValueForName:@"VALUE"];

            goto LABEL_144;
          }

          [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid conference property:%@", v34];
LABEL_139:

          goto LABEL_145;
        case 10:
          v18 = v17;
          v25 = [MEMORY[0x277CBEBC0] URLWithString:v18 encodingInvalidCharacters:0];
          if (v25)
          {
            v26 = v25;
            v27 = v13;
            v28 = v26;
            v29 = 5013;
            goto LABEL_56;
          }

          [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid activity property:%@", v18];
          goto LABEL_133;
        case 11:
          v18 = v17;
          v31 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v18 options:1];
          if (!v31)
          {
            [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid app link data property:%@", v18];
            goto LABEL_133;
          }

          v26 = v31;
          v27 = v13;
          v28 = v26;
          v29 = 5026;
LABEL_56:
          [v27 setValue:v28 type:v29];
          [v13 removeParameterValueForName:@"VALUE"];
          goto LABEL_95;
        case 12:
          v18 = v17;
          v60 = [ICSDuration durationFromICSString:v18];
          if (!v60)
          {
            [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid travel duration property:%@", v18];
            goto LABEL_133;
          }

          v26 = v60;
          [v13 removeParameterValueForName:@"VALUE"];
          [v13 setValue:v26 type:5011];
LABEL_95:

          goto LABEL_143;
        case 13:
LABEL_119:
          v22 = v13;
          v23 = v17;
          v24 = 5007;
          goto LABEL_120;
        case 14:
          v22 = v13;
          v23 = v17;
          v24 = 5015;
LABEL_120:
          [v22 setValue:v23 type:v24];
          goto LABEL_144;
        case 15:
          if (([(__CFString *)v12 isEqualToString:@"RRULE"]& 1) != 0 || [(__CFString *)v12 isEqualToString:@"EXRULE"])
          {
            v18 = +[ICSRecurrenceRule recurrenceRuleFromICSCString:withTokenizer:](ICSRecurrenceRule, "recurrenceRuleFromICSCString:withTokenizer:", [v17 UTF8String], self->_lexer);
            if ([v18 freq])
            {
              if ([v18 freq] == 5)
              {
                [v18 setBymonthday:0];
              }

              v35 = [v10 dtstart];

              if (v35)
              {
                v36 = [v10 dtstart];
                v37 = [v36 value];
                [v18 cleanUpForStartDate:v37];

                v13 = v85;
              }

              v19 = v13;
              v20 = v18;
              v21 = 5029;
            }

            else
            {
              if ((self->_options & 1) == 0)
              {
LABEL_133:

LABEL_134:
                LOBYTE(v18) = 0;
                goto LABEL_145;
              }

              v19 = v13;
              v20 = v17;
              v21 = 5007;
            }

LABEL_142:
            [v19 setValue:v20 type:v21];
LABEL_143:
          }

          else
          {
LABEL_71:
            [v13 setValueAsProperty:v12 withRawValue:objc_msgSend(v17 options:{"UTF8String"), self->_options}];
          }

LABEL_144:
          [v10 addProperty:v12 withValue:v13];
          LOBYTE(v18) = 1;
          goto LABEL_145;
        default:
          goto LABEL_144;
      }
    }

    LOBYTE(v94) = 0;
    [(ICSParser *)self parseParameter:v13 fatalError:&v94];
    if (v94 == 1)
    {
      break;
    }

    v18 = [(ICSTokenizer *)self->_lexer nextToken];

    v17 = v18;
    if (!v18)
    {
      goto LABEL_147;
    }
  }

  if (a6)
  {
    *a6 = 1;
  }

  LOBYTE(v18) = 0;
LABEL_146:

LABEL_147:
  v73 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)parseProperty:(id)a3 fatalError:(BOOL *)a4
{
  v6 = a3;
  v7 = [(ICSTokenizer *)self->_lexer currentToken];
  v8 = [(__CFString *)v7 UTF8String];
  if (!strcmp(v8, "SEQUENCE"))
  {
    v14 = kICSSTR_sequence_prop;
LABEL_52:
    v13 = *v14;
    v10 = self;
    v11 = 0;
LABEL_53:
    v12 = v6;
    goto LABEL_54;
  }

  if (!strcmp(v8, "PRIORITY"))
  {
    v14 = kICSSTR_priority_prop;
    goto LABEL_52;
  }

  if (!strcmp(v8, "X-APPLE-SORT-ORDER"))
  {
    v14 = kICSSTR_XAPPLE_sort_order_prop;
    goto LABEL_52;
  }

  if (!strcmp(v8, "PERCENT-COMPLETE"))
  {
    v14 = kICSSTR_percentcomplete_prop;
    goto LABEL_52;
  }

  if (!strcmp(v8, "DESCRIPTION"))
  {
    v17 = kICSSTR_description_prop;
LABEL_65:
    v13 = *v17;
    v10 = self;
    v11 = 1;
    goto LABEL_53;
  }

  if (!strcmp(v8, "SUMMARY"))
  {
    v17 = kICSSTR_summary_prop;
    goto LABEL_65;
  }

  if (!strcmp(v8, "X-APPLE-CONTACT-IDENTIFIERS"))
  {
    v17 = kICSSTR_XAPPLE_contact_identifiers;
    goto LABEL_65;
  }

  if (!strcmp(v8, "X-APPLE-EXTERNAL-REFERENCE-ID"))
  {
    v17 = kICSSTR_external_reference_id;
    goto LABEL_65;
  }

  if (!strcmp(v8, "X-APPLE-UNIVERSAL-ID"))
  {
    v17 = kICSSTR_XAPPLE_universal_id;
    goto LABEL_65;
  }

  if (!strcmp(v8, "X-APPLE-SPECIAL-DAY"))
  {
    v17 = kICSSTR_XAPPLE_special_day_prop;
    goto LABEL_65;
  }

  if (!strcmp(v8, "X-APPLE-CREATOR-IDENTITY"))
  {
    v17 = kICSSTR_XAPPLE_creator_identity_prop;
    goto LABEL_65;
  }

  if (!strcmp(v8, "X-APPLE-CREATOR-TEAM-IDENTITY"))
  {
    v17 = kICSSTR_XAPPLE_creator_team_identity_prop;
    goto LABEL_65;
  }

  v9 = @"X-APPLE-LANGUAGE";
  if (!strcmp(v8, [@"X-APPLE-LANGUAGE" UTF8String]) || (v9 = @"X-APPLE-REGION", !strcmp(v8, objc_msgSend(@"X-APPLE-REGION", "UTF8String"))))
  {
    v10 = self;
    v11 = 1;
LABEL_63:
    v12 = v6;
    v13 = v9;
    goto LABEL_54;
  }

  if (!strcmp(v8, "DTSTART"))
  {
    v18 = kICSSTR_dtstart_prop;
LABEL_77:
    v13 = *v18;
    v10 = self;
    v11 = 4;
    goto LABEL_53;
  }

  if (!strcmp(v8, "DTEND"))
  {
    v18 = kICSSTR_dtend_prop;
    goto LABEL_77;
  }

  if (!strcmp(v8, "DTSTAMP"))
  {
    v18 = kICSSTR_dtstamp_prop;
    goto LABEL_77;
  }

  if (!strcmp(v8, "CREATED"))
  {
    v18 = kICSSTR_created_prop;
    goto LABEL_77;
  }

  if (!strcmp(v8, "LAST-MODIFIED"))
  {
    v18 = kICSSTR_lastmodified_prop;
    goto LABEL_77;
  }

  if (!strcmp(v8, "COMPLETED"))
  {
    v18 = kICSSTR_completed_prop;
    goto LABEL_77;
  }

  if (!strcmp(v8, "DUE"))
  {
    v18 = kICSSTR_due_prop;
    goto LABEL_77;
  }

  if (!strcmp(v8, "RDATE"))
  {
    v18 = kICSSTR_rdate_prop;
    goto LABEL_77;
  }

  if (!strcmp(v8, "RECURRENCE-ID"))
  {
    v18 = kICSSTR_recurrenceid_prop;
    goto LABEL_77;
  }

  if (!strcmp(v8, "ACKNOWLEDGED"))
  {
    v18 = kICSSTR_acknowledged_prop;
    goto LABEL_77;
  }

  if (!strcmp(v8, "TRIGGER"))
  {
    v18 = kICSSTR_trigger_prop;
    goto LABEL_77;
  }

  v9 = @"X-APPLE-ALTERNATIVE-DUE-DATE-FOR-CALENDAR";
  if (!strcmp(v8, [@"X-APPLE-ALTERNATIVE-DUE-DATE-FOR-CALENDAR" UTF8String]))
  {
    v10 = self;
    v11 = 4;
    goto LABEL_63;
  }

  if (!strcmp(v8, "EXDATE"))
  {
    v13 = @"EXDATE";
    v10 = self;
    v11 = 5;
    goto LABEL_53;
  }

  if (!strcmp(v8, "ORGANIZER"))
  {
    v19 = kICSSTR_organizer_prop;
LABEL_83:
    v13 = *v19;
    v10 = self;
    v11 = 2;
    goto LABEL_53;
  }

  if (!strcmp(v8, "ATTENDEE"))
  {
    v19 = kICSSTR_attendee_prop;
    goto LABEL_83;
  }

  if (!strcmp(v8, "X-WR-ATTENDEE"))
  {
    v19 = kICSSTR_XWR_attendee_prop;
    goto LABEL_83;
  }

  if (!strcmp(v8, "TZOFFSETFROM"))
  {
    v20 = kICSSTR_tzoffsetfrom_prop;
LABEL_86:
    v13 = *v20;
    v10 = self;
    v11 = 7;
    goto LABEL_53;
  }

  if (!strcmp(v8, "TZOFFSETTO"))
  {
    v20 = kICSSTR_tzoffsetto_prop;
    goto LABEL_86;
  }

  if (!strcmp(v8, "X-APPLE-STRUCTURED-LOCATION"))
  {
    v21 = kICSSTR_XAPPLE_structured_location_prop;
LABEL_90:
    v13 = *v21;
    v10 = self;
    v11 = 8;
    goto LABEL_53;
  }

  if (!strcmp(v8, "X-APPLE-TRAVEL-START"))
  {
    v21 = kICSSTR_XAPPLE_travel_start;
    goto LABEL_90;
  }

  if (!strcmp(v8, "X-APPLE-END-LOCATION"))
  {
    v21 = kICSSTR_XAPPLE_end_location;
    goto LABEL_90;
  }

  if (!strcmp(v8, "X-APPLE-SUGGESTION-INFO-CHANGED-FIELDS"))
  {
    v14 = kICSSTR_XAPPLE_suggestion_info_changed_fields_prop;
    goto LABEL_52;
  }

  if (!strcmp(v8, "X-APPLE-SUGGESTION-INFO-TIMESTAMP"))
  {
    v18 = kICSSTR_XAPPLE_suggestion_info_timestamp_prop;
    goto LABEL_77;
  }

  if (!strcmp(v8, "X-CALENDARSERVER-ATTENDEE-COMMENT"))
  {
    v13 = @"X-CALENDARSERVER-ATTENDEE-COMMENT";
    v10 = self;
    v11 = 3;
    goto LABEL_53;
  }

  if (!strcmp(v8, "FREEBUSY"))
  {
    v13 = @"FREEBUSY";
    v10 = self;
    v11 = 6;
    goto LABEL_53;
  }

  if (!strcmp(v8, "CONFERENCE"))
  {
    v13 = @"CONFERENCE";
    v10 = self;
    v11 = 9;
    goto LABEL_53;
  }

  if (!strcmp(v8, "X-APPLE-ACTIVITY"))
  {
    v13 = @"X-APPLE-ACTIVITY";
    v10 = self;
    v11 = 10;
    goto LABEL_53;
  }

  if (!strcmp(v8, "X-APPLE-APP-LINK-DATA"))
  {
    v22 = kICSSTR_XAPPLE_app_link_data_prop;
LABEL_98:
    v13 = *v22;
    v10 = self;
    v11 = 11;
    goto LABEL_53;
  }

  if (!strcmp(v8, "GEO"))
  {
    v13 = @"GEO";
    v10 = self;
    v11 = 14;
    goto LABEL_53;
  }

  if (!strcmp(v8, "X-APPLE-TRAVEL-DURATION"))
  {
    v13 = @"X-APPLE-TRAVEL-DURATION";
    v10 = self;
    v11 = 12;
    goto LABEL_53;
  }

  if (!strcmp(v8, "X-APPLE-TRAVEL-ADVISORY-BEHAVIOR"))
  {
    v13 = @"X-APPLE-TRAVEL-ADVISORY-BEHAVIOR";
    v10 = self;
    v11 = 13;
    goto LABEL_53;
  }

  if (!strcmp(v8, "X-APPLE-STRUCTURED-DATA"))
  {
    v22 = kICSSTR_XAPPLE_structured_data_prop;
    goto LABEL_98;
  }

  v10 = self;
  v11 = 15;
  v12 = v6;
  v13 = v7;
LABEL_54:
  v15 = [(ICSParser *)v10 createPropertyType:v11 component:v12 withName:v13 fatalError:a4];

  return v15;
}

- (BOOL)_parseComponent:(id)a3
{
  v4 = 0;
  [(ICSParser *)self _parseComponent:a3 depth:0 fatalError:&v4];
  return (v4 & 1) == 0;
}

- (void)_parseComponent:(id)a3 depth:(unint64_t)a4 fatalError:(BOOL *)a5
{
  v8 = a3;
  if (a4 >= 0x65)
  {
    [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Reached maximum component depth. Aborting parser."];
    *a5 = 1;
    goto LABEL_30;
  }

  v9 = [(ICSTokenizer *)self->_lexer nextToken];
  if (!v9)
  {
    [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Expected component name but got NULL"];
    goto LABEL_30;
  }

  v10 = v9;
  v22 = v8;
  v23 = -[ICSParser makeComponent:](self, "makeComponent:", [v9 UTF8String]);
  v11 = [(ICSTokenizer *)self->_lexer nextToken];
  do
  {
    if (!v11)
    {
      v8 = v22;
      goto LABEL_28;
    }

    v12 = objc_autoreleasePoolPush();
    if (-[ICSTokenizer tokenType](self->_lexer, "tokenType") || ![v11 length])
    {
      [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Unexpected token %@ for PropertyName.", v11];
LABEL_8:
      [(ICSTokenizer *)self->_lexer nextToken];
      v13 = 0;
      v11 = v14 = v11;
      goto LABEL_9;
    }

    if ([v11 isEqualToString:@"BEGIN"])
    {
      [(ICSParser *)self _parseComponent:v23 depth:a4 + 1 fatalError:a5];
      if (*a5)
      {
        goto LABEL_33;
      }

      goto LABEL_8;
    }

    if (![v11 isEqualToString:@"END"])
    {
      v24 = 0;
      [(ICSParser *)self parseProperty:v23 fatalError:&v24];
      if (v24 == 1)
      {
        if (a5)
        {
          *a5 = 1;
        }

LABEL_33:
        objc_autoreleasePoolPop(v12);
        v8 = v22;
LABEL_25:
        v19 = v23;
        goto LABEL_29;
      }

      goto LABEL_8;
    }

    v15 = [(ICSTokenizer *)self->_lexer nextToken];
    v14 = v15;
    if (v15)
    {
      if ([v15 isEqualToString:v10])
      {
        v13 = 3;
        goto LABEL_9;
      }

      lexer = self->_lexer;
      v20 = v10;
      v21 = v14;
      v17 = @"BEGIN (%@) END (%@) mismatch!";
    }

    else
    {
      lexer = self->_lexer;
      v17 = @"No END value!";
    }

    [ICSLogger logAtLevel:3 forTokenizer:lexer message:v17, v20, v21];
    v13 = 1;
LABEL_9:

    objc_autoreleasePoolPop(v12);
  }

  while (!v13);
  v18 = v13 == 3;
  v8 = v22;
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_28:
  v19 = v23;
  [v8 addComponent:v23 withUIDGenerator:self->_uidGenerator];
LABEL_29:

LABEL_30:
}

- (id)parseData
{
  v3 = objc_alloc_init(ICSComponent);
  v4 = [(ICSTokenizer *)self->_lexer nextToken];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = objc_autoreleasePoolPush();
      if ([v5 isEqualToString:@"BEGIN"])
      {
        if (![(ICSParser *)self _parseComponent:v3])
        {
          objc_autoreleasePoolPop(v6);

          v8 = 0;
          goto LABEL_9;
        }
      }

      else
      {
        [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid ICS format, no VCALENDAR"];
      }

      v7 = [(ICSTokenizer *)self->_lexer nextToken];

      objc_autoreleasePoolPop(v6);
      v5 = v7;
    }

    while (v7);
  }

  v8 = v3;
LABEL_9:

  return v8;
}

+ (id)entitiesFromNSData:(id)a3 options:(unint64_t)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [[ICSParser alloc] initWithData:v5 options:a4];
  v7 = v6;
  if (v6)
  {
    v8 = [(ICSParser *)v6 parseData];
    v9 = [v8 components];
    v10 = [v9 count];

    if (v10)
    {
      v35 = v5;
      v36 = [MEMORY[0x277CBEB18] array];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v34 = v8;
      v11 = [v8 components];
      v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = v12;
      v14 = *v38;
      v15 = 0x27A64B000uLL;
      while (1)
      {
        v16 = 0;
        do
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v37 + 1) + 8 * v16);
          v18 = *(v15 + 1320);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = [(ICSParser *)v7 lexer];
            [ICSLogger logAtLevel:3 forTokenizer:v20 message:@"ICS: Cal not a ICSCalendar %@", v17];
            goto LABEL_16;
          }

          v19 = v17;
          v20 = v19;
          if (a4)
          {
            [v19 fixPropertiesInheritance];
            goto LABEL_15;
          }

          v21 = v11;
          v22 = v7;
          v23 = a4;
          v24 = [v19 version];

          if (!v24 || ([v20 version], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"2.0"), v25, (v26 & 1) != 0))
          {
            [v20 fixPropertiesInheritance];
            [v20 fixEntities];
            a4 = v23;
            v7 = v22;
            v11 = v21;
            v15 = 0x27A64B000;
LABEL_15:
            [v36 addObject:v20];
            goto LABEL_16;
          }

          v27 = [(ICSParser *)v22 lexer];
          v28 = [v20 version];
          [ICSLogger logAtLevel:3 forTokenizer:v27 message:@"Bad version of iCalendar %@", v28];

          a4 = v23;
          v7 = v22;
          v11 = v21;
          v15 = 0x27A64B000;
LABEL_16:

          ++v16;
        }

        while (v13 != v16);
        v29 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
        v13 = v29;
        if (!v29)
        {
LABEL_20:

          v8 = v34;
          v5 = v35;
          goto LABEL_23;
        }
      }
    }

    v31 = [(ICSParser *)v7 lexer];
    [ICSLogger logAtLevel:3 forTokenizer:v31 message:@"No components found"];

    v36 = 0;
LABEL_23:
  }

  else
  {
    v30 = [0 lexer];
    [ICSLogger logAtLevel:3 forTokenizer:v30 message:@"Failed to create ICSParser"];

    v36 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v36;
}

@end