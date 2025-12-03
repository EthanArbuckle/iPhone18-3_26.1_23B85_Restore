@interface ICSParser
+ (id)entitiesFromNSData:(id)data options:(unint64_t)options;
- (BOOL)_parseComponent:(id)component;
- (BOOL)createPropertyType:(int)type component:(id)component withName:(id)name fatalError:(BOOL *)error;
- (BOOL)parseParameter:(id)parameter fatalError:(BOOL *)error;
- (BOOL)parseProperty:(id)property fatalError:(BOOL *)error;
- (ICSParser)initWithData:(id)data options:(unint64_t)options;
- (id)makeComponent:(const char *)component;
- (id)parseData;
- (void)_parseComponent:(id)component depth:(unint64_t)depth fatalError:(BOOL *)error;
@end

@implementation ICSParser

- (ICSParser)initWithData:(id)data options:(unint64_t)options
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = ICSParser;
  v7 = [(ICSParser *)&v15 init];
  if ([dataCopy length] < 0x1400001)
  {
    v7->_options = options;
    v9 = [ICSTokenizer alloc];
    if ((options & 0x80) != 0)
    {
      v10 = [(ICSTokenizer *)v9 initWithCompressedData:dataCopy];
    }

    else
    {
      v10 = [(ICSTokenizer *)v9 initWithData:dataCopy];
    }

    lexer = v7->_lexer;
    v7->_lexer = v10;

    v12 = [[ICSLazyDigestUIDGenerator alloc] initWithData:dataCopy];
    uidGenerator = v7->_uidGenerator;
    v7->_uidGenerator = v12;

    v8 = v7;
  }

  else
  {
    +[ICSLogger logAtLevel:forTokenizer:message:](ICSLogger, "logAtLevel:forTokenizer:message:", 3, 0, @"ICS file exceeds maximum supported size: %lu", [dataCopy length]);
    v8 = 0;
  }

  return v8;
}

- (id)makeComponent:(const char *)component
{
  if (!strcmp(component, "VEVENT"))
  {
    v6 = ICSEvent;
LABEL_24:
    _init = objc_alloc_init(v6);
    goto LABEL_25;
  }

  if (!strcmp(component, "VTODO"))
  {
    v6 = ICSTodo;
    goto LABEL_24;
  }

  if (strcmp(component, "VCALENDAR"))
  {
    if (!strcmp(component, "VJOURNAL"))
    {
      v6 = ICSJournal;
    }

    else if (!strcmp(component, "VALARM"))
    {
      v6 = ICSAlarm;
    }

    else if (!strcmp(component, "VTIMEZONE"))
    {
      v6 = ICSTimeZone;
    }

    else if (!strcmp(component, "DAYLIGHT"))
    {
      v6 = ICSTimeZoneDaylightBlock;
    }

    else if (!strcmp(component, "STANDARD"))
    {
      v6 = ICSTimeZoneStandardBlock;
    }

    else if (!strcmp(component, "VAVAILABILITY"))
    {
      v6 = ICSAvailability;
    }

    else if (!strcmp(component, "AVAILABLE"))
    {
      v6 = ICSAvailable;
    }

    else
    {
      if (strcmp(component, "VFREEBUSY"))
      {
        v4 = objc_alloc_init(ICSComponent);
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:component];
        [(ICSComponent *)v4 setUnrecognizedComponentName:v5];

        goto LABEL_26;
      }

      v6 = ICSFreeBusy;
    }

    goto LABEL_24;
  }

  _init = [[ICSCalendar alloc] _init];
LABEL_25:
  v4 = _init;
LABEL_26:

  return v4;
}

- (BOOL)parseParameter:(id)parameter fatalError:(BOOL *)error
{
  parameterCopy = parameter;
  currentToken = [(ICSTokenizer *)self->_lexer currentToken];
  if ([currentToken length] <= 0x80000)
  {
    nextToken = [(ICSTokenizer *)self->_lexer nextToken];
    if ([nextToken length] <= 0x80000)
    {
      if (nextToken)
      {
        [parameterCopy addParameter:currentToken withRawValue:nextToken options:self->_options];
        v8 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      +[ICSLogger logAtLevel:forTokenizer:message:](ICSLogger, "logAtLevel:forTokenizer:message:", 3, 0, @"ICS parameter value exceeds maximum supported length: %lu", [nextToken length]);
      if (error)
      {
        v8 = 0;
        *error = 1;
LABEL_10:

        goto LABEL_11;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  +[ICSLogger logAtLevel:forTokenizer:message:](ICSLogger, "logAtLevel:forTokenizer:message:", 3, 0, @"ICS parameter name exceeds maximum supported length: %lu", [currentToken length]);
  v8 = 0;
  if (error)
  {
    *error = 1;
  }

LABEL_11:

  return v8;
}

- (BOOL)createPropertyType:(int)type component:(id)component withName:(id)name fatalError:(BOOL *)error
{
  v97[1] = *MEMORY[0x277D85DE8];
  componentCopy = component;
  nameCopy = name;
  v12 = nameCopy;
  v13 = 0;
  if (type <= 7)
  {
    if (type > 3)
    {
      if ((type - 4) < 2)
      {
        if (@"TRIGGER" == nameCopy)
        {
          v14 = off_27A64B6C0;
        }

        else
        {
          v14 = off_27A64B568;
        }

        goto LABEL_31;
      }

      if ((type - 6) >= 2)
      {
        goto LABEL_32;
      }
    }

    else if (type >= 2)
    {
      if (type == 2)
      {
        v14 = off_27A64B6D0;
        goto LABEL_31;
      }

      if (type == 3)
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

  if (type > 11)
  {
    if (type <= 13)
    {
      if (type == 12)
      {
        v14 = off_27A64B6B8;
      }

      else
      {
        v14 = off_27A64B6B0;
      }

      goto LABEL_31;
    }

    if (type != 14)
    {
      if (type == 15)
      {
        if (([(__CFString *)nameCopy isEqualToString:@"TRIGGER"]& 1) != 0)
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

  if ((type - 10) < 2)
  {
    goto LABEL_22;
  }

  if (type == 8)
  {
    v14 = off_27A64B660;
    goto LABEL_31;
  }

  if (type == 9)
  {
    v14 = off_27A64B560;
    goto LABEL_31;
  }

LABEL_32:
  nextToken = [(ICSTokenizer *)self->_lexer nextToken];
  if (!nextToken)
  {
    LOBYTE(nextToken2) = 0;
    goto LABEL_147;
  }

  v17 = nextToken;
  while (1)
  {
    if (![v17 length] || -[ICSTokenizer tokenType](self->_lexer, "tokenType") != 2)
    {
      v97[0] = @"ATTACH";
      v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:1];
      if (([v76 containsObject:v12] & 1) == 0 && objc_msgSend(v17, "length") > 0x80000)
      {
        +[ICSLogger logAtLevel:forTokenizer:message:](ICSLogger, "logAtLevel:forTokenizer:message:", 3, 0, @"ICS property value exceeds maximum supported size (%@): %lu", v12, [v17 length]);
        LOBYTE(nextToken2) = 0;
        *error = 1;
LABEL_145:

        goto LABEL_146;
      }

      v85 = v13;
      switch(type)
      {
        case 0:
          v94 = 0;
          if (sscanf([v17 UTF8String], "%d", &v94) != 1)
          {
            goto LABEL_119;
          }

          nextToken2 = [MEMORY[0x277CCABB0] numberWithInt:v94];
          v19 = v13;
          v20 = nextToken2;
          v21 = 5008;
          goto LABEL_142;
        case 1:
          goto LABEL_71;
        case 2:
          nextToken2 = [MEMORY[0x277CBEBC0] URLWithString:v17 encodingInvalidCharacters:0];
          if (nextToken2)
          {
            [v13 setValue:nextToken2 type:5021];
            v38 = @"VALUE";
            v39 = v13;
            goto LABEL_92;
          }

          [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid address property:%@", v17];
          goto LABEL_145;
        case 3:
          nextToken2 = v17;
          if (![nextToken2 length])
          {
            goto LABEL_133;
          }

          v30 = nextToken2;
          goto LABEL_131;
        case 4:
          v58 = [ICSDateValue dateFromICSString:v17];
          nextToken2 = v58;
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
                parameters = [v85 parameters];
                [(ICSProperty *)v66 setParameters:parameters];

                v68 = +[ICSDateValue dateFromICSUTF8String:](ICSDateValue, "dateFromICSUTF8String:", [v65 UTF8String]);
                nextToken2 = v68;
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

                [componentCopy addProperty:v84 withValue:v66];
              }

              v62 = [obja countByEnumeratingWithState:&v90 objects:v96 count:16];
              if (!v62)
              {
                LOBYTE(nextToken2) = 1;
                v12 = v84;
                v13 = v85;
                v40 = v80;
                goto LABEL_136;
              }
            }
          }

          LOBYTE(nextToken2) = 1;
LABEL_136:

LABEL_137:
          goto LABEL_145;
        case 6:
          v40 = v17;
          v41 = [v40 length];
          LOBYTE(nextToken2) = v41 != 0;
          if (v41)
          {
            v83 = v12;
            v78 = componentCopy;
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
                    parameters2 = [v85 parameters];
                    [(ICSProperty *)v56 setParameters:parameters2];

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

            componentCopy = v78;
            v12 = v83;
            LOBYTE(nextToken2) = 1;
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
          nextToken2 = [MEMORY[0x277CCABB0] numberWithInt:60 * v71];
          v19 = v13;
          v20 = nextToken2;
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

          nextToken2 = [MEMORY[0x277CBEBC0] URLWithString:v34 encodingInvalidCharacters:0];
          if (nextToken2)
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

          nextToken2 = [MEMORY[0x277CBEBC0] _lp_URLWithUserTypedString:v34 relativeToURL:0];
          if (nextToken2)
          {
LABEL_113:
            [v13 setValue:nextToken2 type:5013];
            [v13 removeParameterValueForName:@"VALUE"];

            goto LABEL_144;
          }

          [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid conference property:%@", v34];
LABEL_139:

          goto LABEL_145;
        case 10:
          nextToken2 = v17;
          v25 = [MEMORY[0x277CBEBC0] URLWithString:nextToken2 encodingInvalidCharacters:0];
          if (v25)
          {
            v26 = v25;
            v27 = v13;
            v28 = v26;
            v29 = 5013;
            goto LABEL_56;
          }

          [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid activity property:%@", nextToken2];
          goto LABEL_133;
        case 11:
          nextToken2 = v17;
          v31 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:nextToken2 options:1];
          if (!v31)
          {
            [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid app link data property:%@", nextToken2];
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
          nextToken2 = v17;
          v60 = [ICSDuration durationFromICSString:nextToken2];
          if (!v60)
          {
            [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Invalid travel duration property:%@", nextToken2];
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
            nextToken2 = +[ICSRecurrenceRule recurrenceRuleFromICSCString:withTokenizer:](ICSRecurrenceRule, "recurrenceRuleFromICSCString:withTokenizer:", [v17 UTF8String], self->_lexer);
            if ([nextToken2 freq])
            {
              if ([nextToken2 freq] == 5)
              {
                [nextToken2 setBymonthday:0];
              }

              dtstart = [componentCopy dtstart];

              if (dtstart)
              {
                dtstart2 = [componentCopy dtstart];
                value = [dtstart2 value];
                [nextToken2 cleanUpForStartDate:value];

                v13 = v85;
              }

              v19 = v13;
              v20 = nextToken2;
              v21 = 5029;
            }

            else
            {
              if ((self->_options & 1) == 0)
              {
LABEL_133:

LABEL_134:
                LOBYTE(nextToken2) = 0;
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
          [componentCopy addProperty:v12 withValue:v13];
          LOBYTE(nextToken2) = 1;
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

    nextToken2 = [(ICSTokenizer *)self->_lexer nextToken];

    v17 = nextToken2;
    if (!nextToken2)
    {
      goto LABEL_147;
    }
  }

  if (error)
  {
    *error = 1;
  }

  LOBYTE(nextToken2) = 0;
LABEL_146:

LABEL_147:
  v73 = *MEMORY[0x277D85DE8];
  return nextToken2;
}

- (BOOL)parseProperty:(id)property fatalError:(BOOL *)error
{
  propertyCopy = property;
  currentToken = [(ICSTokenizer *)self->_lexer currentToken];
  uTF8String = [(__CFString *)currentToken UTF8String];
  if (!strcmp(uTF8String, "SEQUENCE"))
  {
    v14 = kICSSTR_sequence_prop;
LABEL_52:
    v13 = *v14;
    selfCopy18 = self;
    v11 = 0;
LABEL_53:
    v12 = propertyCopy;
    goto LABEL_54;
  }

  if (!strcmp(uTF8String, "PRIORITY"))
  {
    v14 = kICSSTR_priority_prop;
    goto LABEL_52;
  }

  if (!strcmp(uTF8String, "X-APPLE-SORT-ORDER"))
  {
    v14 = kICSSTR_XAPPLE_sort_order_prop;
    goto LABEL_52;
  }

  if (!strcmp(uTF8String, "PERCENT-COMPLETE"))
  {
    v14 = kICSSTR_percentcomplete_prop;
    goto LABEL_52;
  }

  if (!strcmp(uTF8String, "DESCRIPTION"))
  {
    v17 = kICSSTR_description_prop;
LABEL_65:
    v13 = *v17;
    selfCopy18 = self;
    v11 = 1;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "SUMMARY"))
  {
    v17 = kICSSTR_summary_prop;
    goto LABEL_65;
  }

  if (!strcmp(uTF8String, "X-APPLE-CONTACT-IDENTIFIERS"))
  {
    v17 = kICSSTR_XAPPLE_contact_identifiers;
    goto LABEL_65;
  }

  if (!strcmp(uTF8String, "X-APPLE-EXTERNAL-REFERENCE-ID"))
  {
    v17 = kICSSTR_external_reference_id;
    goto LABEL_65;
  }

  if (!strcmp(uTF8String, "X-APPLE-UNIVERSAL-ID"))
  {
    v17 = kICSSTR_XAPPLE_universal_id;
    goto LABEL_65;
  }

  if (!strcmp(uTF8String, "X-APPLE-SPECIAL-DAY"))
  {
    v17 = kICSSTR_XAPPLE_special_day_prop;
    goto LABEL_65;
  }

  if (!strcmp(uTF8String, "X-APPLE-CREATOR-IDENTITY"))
  {
    v17 = kICSSTR_XAPPLE_creator_identity_prop;
    goto LABEL_65;
  }

  if (!strcmp(uTF8String, "X-APPLE-CREATOR-TEAM-IDENTITY"))
  {
    v17 = kICSSTR_XAPPLE_creator_team_identity_prop;
    goto LABEL_65;
  }

  v9 = @"X-APPLE-LANGUAGE";
  if (!strcmp(uTF8String, [@"X-APPLE-LANGUAGE" UTF8String]) || (v9 = @"X-APPLE-REGION", !strcmp(uTF8String, objc_msgSend(@"X-APPLE-REGION", "UTF8String"))))
  {
    selfCopy18 = self;
    v11 = 1;
LABEL_63:
    v12 = propertyCopy;
    v13 = v9;
    goto LABEL_54;
  }

  if (!strcmp(uTF8String, "DTSTART"))
  {
    v18 = kICSSTR_dtstart_prop;
LABEL_77:
    v13 = *v18;
    selfCopy18 = self;
    v11 = 4;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "DTEND"))
  {
    v18 = kICSSTR_dtend_prop;
    goto LABEL_77;
  }

  if (!strcmp(uTF8String, "DTSTAMP"))
  {
    v18 = kICSSTR_dtstamp_prop;
    goto LABEL_77;
  }

  if (!strcmp(uTF8String, "CREATED"))
  {
    v18 = kICSSTR_created_prop;
    goto LABEL_77;
  }

  if (!strcmp(uTF8String, "LAST-MODIFIED"))
  {
    v18 = kICSSTR_lastmodified_prop;
    goto LABEL_77;
  }

  if (!strcmp(uTF8String, "COMPLETED"))
  {
    v18 = kICSSTR_completed_prop;
    goto LABEL_77;
  }

  if (!strcmp(uTF8String, "DUE"))
  {
    v18 = kICSSTR_due_prop;
    goto LABEL_77;
  }

  if (!strcmp(uTF8String, "RDATE"))
  {
    v18 = kICSSTR_rdate_prop;
    goto LABEL_77;
  }

  if (!strcmp(uTF8String, "RECURRENCE-ID"))
  {
    v18 = kICSSTR_recurrenceid_prop;
    goto LABEL_77;
  }

  if (!strcmp(uTF8String, "ACKNOWLEDGED"))
  {
    v18 = kICSSTR_acknowledged_prop;
    goto LABEL_77;
  }

  if (!strcmp(uTF8String, "TRIGGER"))
  {
    v18 = kICSSTR_trigger_prop;
    goto LABEL_77;
  }

  v9 = @"X-APPLE-ALTERNATIVE-DUE-DATE-FOR-CALENDAR";
  if (!strcmp(uTF8String, [@"X-APPLE-ALTERNATIVE-DUE-DATE-FOR-CALENDAR" UTF8String]))
  {
    selfCopy18 = self;
    v11 = 4;
    goto LABEL_63;
  }

  if (!strcmp(uTF8String, "EXDATE"))
  {
    v13 = @"EXDATE";
    selfCopy18 = self;
    v11 = 5;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "ORGANIZER"))
  {
    v19 = kICSSTR_organizer_prop;
LABEL_83:
    v13 = *v19;
    selfCopy18 = self;
    v11 = 2;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "ATTENDEE"))
  {
    v19 = kICSSTR_attendee_prop;
    goto LABEL_83;
  }

  if (!strcmp(uTF8String, "X-WR-ATTENDEE"))
  {
    v19 = kICSSTR_XWR_attendee_prop;
    goto LABEL_83;
  }

  if (!strcmp(uTF8String, "TZOFFSETFROM"))
  {
    v20 = kICSSTR_tzoffsetfrom_prop;
LABEL_86:
    v13 = *v20;
    selfCopy18 = self;
    v11 = 7;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "TZOFFSETTO"))
  {
    v20 = kICSSTR_tzoffsetto_prop;
    goto LABEL_86;
  }

  if (!strcmp(uTF8String, "X-APPLE-STRUCTURED-LOCATION"))
  {
    v21 = kICSSTR_XAPPLE_structured_location_prop;
LABEL_90:
    v13 = *v21;
    selfCopy18 = self;
    v11 = 8;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "X-APPLE-TRAVEL-START"))
  {
    v21 = kICSSTR_XAPPLE_travel_start;
    goto LABEL_90;
  }

  if (!strcmp(uTF8String, "X-APPLE-END-LOCATION"))
  {
    v21 = kICSSTR_XAPPLE_end_location;
    goto LABEL_90;
  }

  if (!strcmp(uTF8String, "X-APPLE-SUGGESTION-INFO-CHANGED-FIELDS"))
  {
    v14 = kICSSTR_XAPPLE_suggestion_info_changed_fields_prop;
    goto LABEL_52;
  }

  if (!strcmp(uTF8String, "X-APPLE-SUGGESTION-INFO-TIMESTAMP"))
  {
    v18 = kICSSTR_XAPPLE_suggestion_info_timestamp_prop;
    goto LABEL_77;
  }

  if (!strcmp(uTF8String, "X-CALENDARSERVER-ATTENDEE-COMMENT"))
  {
    v13 = @"X-CALENDARSERVER-ATTENDEE-COMMENT";
    selfCopy18 = self;
    v11 = 3;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "FREEBUSY"))
  {
    v13 = @"FREEBUSY";
    selfCopy18 = self;
    v11 = 6;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "CONFERENCE"))
  {
    v13 = @"CONFERENCE";
    selfCopy18 = self;
    v11 = 9;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "X-APPLE-ACTIVITY"))
  {
    v13 = @"X-APPLE-ACTIVITY";
    selfCopy18 = self;
    v11 = 10;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "X-APPLE-APP-LINK-DATA"))
  {
    v22 = kICSSTR_XAPPLE_app_link_data_prop;
LABEL_98:
    v13 = *v22;
    selfCopy18 = self;
    v11 = 11;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "GEO"))
  {
    v13 = @"GEO";
    selfCopy18 = self;
    v11 = 14;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "X-APPLE-TRAVEL-DURATION"))
  {
    v13 = @"X-APPLE-TRAVEL-DURATION";
    selfCopy18 = self;
    v11 = 12;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "X-APPLE-TRAVEL-ADVISORY-BEHAVIOR"))
  {
    v13 = @"X-APPLE-TRAVEL-ADVISORY-BEHAVIOR";
    selfCopy18 = self;
    v11 = 13;
    goto LABEL_53;
  }

  if (!strcmp(uTF8String, "X-APPLE-STRUCTURED-DATA"))
  {
    v22 = kICSSTR_XAPPLE_structured_data_prop;
    goto LABEL_98;
  }

  selfCopy18 = self;
  v11 = 15;
  v12 = propertyCopy;
  v13 = currentToken;
LABEL_54:
  v15 = [(ICSParser *)selfCopy18 createPropertyType:v11 component:v12 withName:v13 fatalError:error];

  return v15;
}

- (BOOL)_parseComponent:(id)component
{
  v4 = 0;
  [(ICSParser *)self _parseComponent:component depth:0 fatalError:&v4];
  return (v4 & 1) == 0;
}

- (void)_parseComponent:(id)component depth:(unint64_t)depth fatalError:(BOOL *)error
{
  componentCopy = component;
  if (depth >= 0x65)
  {
    [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Reached maximum component depth. Aborting parser."];
    *error = 1;
    goto LABEL_30;
  }

  nextToken = [(ICSTokenizer *)self->_lexer nextToken];
  if (!nextToken)
  {
    [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Expected component name but got NULL"];
    goto LABEL_30;
  }

  v10 = nextToken;
  v22 = componentCopy;
  v23 = -[ICSParser makeComponent:](self, "makeComponent:", [nextToken UTF8String]);
  nextToken2 = [(ICSTokenizer *)self->_lexer nextToken];
  do
  {
    if (!nextToken2)
    {
      componentCopy = v22;
      goto LABEL_28;
    }

    v12 = objc_autoreleasePoolPush();
    if (-[ICSTokenizer tokenType](self->_lexer, "tokenType") || ![nextToken2 length])
    {
      [ICSLogger logAtLevel:3 forTokenizer:self->_lexer message:@"Unexpected token %@ for PropertyName.", nextToken2];
LABEL_8:
      [(ICSTokenizer *)self->_lexer nextToken];
      v13 = 0;
      nextToken2 = v14 = nextToken2;
      goto LABEL_9;
    }

    if ([nextToken2 isEqualToString:@"BEGIN"])
    {
      [(ICSParser *)self _parseComponent:v23 depth:depth + 1 fatalError:error];
      if (*error)
      {
        goto LABEL_33;
      }

      goto LABEL_8;
    }

    if (![nextToken2 isEqualToString:@"END"])
    {
      v24 = 0;
      [(ICSParser *)self parseProperty:v23 fatalError:&v24];
      if (v24 == 1)
      {
        if (error)
        {
          *error = 1;
        }

LABEL_33:
        objc_autoreleasePoolPop(v12);
        componentCopy = v22;
LABEL_25:
        v19 = v23;
        goto LABEL_29;
      }

      goto LABEL_8;
    }

    nextToken3 = [(ICSTokenizer *)self->_lexer nextToken];
    v14 = nextToken3;
    if (nextToken3)
    {
      if ([nextToken3 isEqualToString:v10])
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
  componentCopy = v22;
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_28:
  v19 = v23;
  [componentCopy addComponent:v23 withUIDGenerator:self->_uidGenerator];
LABEL_29:

LABEL_30:
}

- (id)parseData
{
  v3 = objc_alloc_init(ICSComponent);
  nextToken = [(ICSTokenizer *)self->_lexer nextToken];
  if (nextToken)
  {
    v5 = nextToken;
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

      nextToken2 = [(ICSTokenizer *)self->_lexer nextToken];

      objc_autoreleasePoolPop(v6);
      v5 = nextToken2;
    }

    while (nextToken2);
  }

  v8 = v3;
LABEL_9:

  return v8;
}

+ (id)entitiesFromNSData:(id)data options:(unint64_t)options
{
  v42 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = [[ICSParser alloc] initWithData:dataCopy options:options];
  v7 = v6;
  if (v6)
  {
    parseData = [(ICSParser *)v6 parseData];
    components = [parseData components];
    v10 = [components count];

    if (v10)
    {
      v35 = dataCopy;
      array = [MEMORY[0x277CBEB18] array];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v34 = parseData;
      components2 = [parseData components];
      v12 = [components2 countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(components2);
          }

          v17 = *(*(&v37 + 1) + 8 * v16);
          v18 = *(v15 + 1320);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            lexer = [(ICSParser *)v7 lexer];
            [ICSLogger logAtLevel:3 forTokenizer:lexer message:@"ICS: Cal not a ICSCalendar %@", v17];
            goto LABEL_16;
          }

          v19 = v17;
          lexer = v19;
          if (options)
          {
            [v19 fixPropertiesInheritance];
            goto LABEL_15;
          }

          v21 = components2;
          v22 = v7;
          optionsCopy = options;
          version = [v19 version];

          if (!version || ([lexer version], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"2.0"), v25, (v26 & 1) != 0))
          {
            [lexer fixPropertiesInheritance];
            [lexer fixEntities];
            options = optionsCopy;
            v7 = v22;
            components2 = v21;
            v15 = 0x27A64B000;
LABEL_15:
            [array addObject:lexer];
            goto LABEL_16;
          }

          lexer2 = [(ICSParser *)v22 lexer];
          version2 = [lexer version];
          [ICSLogger logAtLevel:3 forTokenizer:lexer2 message:@"Bad version of iCalendar %@", version2];

          options = optionsCopy;
          v7 = v22;
          components2 = v21;
          v15 = 0x27A64B000;
LABEL_16:

          ++v16;
        }

        while (v13 != v16);
        v29 = [components2 countByEnumeratingWithState:&v37 objects:v41 count:16];
        v13 = v29;
        if (!v29)
        {
LABEL_20:

          parseData = v34;
          dataCopy = v35;
          goto LABEL_23;
        }
      }
    }

    lexer3 = [(ICSParser *)v7 lexer];
    [ICSLogger logAtLevel:3 forTokenizer:lexer3 message:@"No components found"];

    array = 0;
LABEL_23:
  }

  else
  {
    lexer4 = [0 lexer];
    [ICSLogger logAtLevel:3 forTokenizer:lexer4 message:@"Failed to create ICSParser"];

    array = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return array;
}

@end