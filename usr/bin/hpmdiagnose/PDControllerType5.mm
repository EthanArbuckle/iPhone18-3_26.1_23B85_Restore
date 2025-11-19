@interface PDControllerType5
- (id)readFullVersion;
- (id)registerFormatter8ByteVersionWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterADCResultsWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterBootFlagsWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterCFDebugConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterCFSOPUVDMEnumWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterCFVIDConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterCFVIDStatusWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterFWStateConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterGenericWithBuffer:(void *)a3 andLength:(unint64_t)a4 andConfig:(id)a5;
- (id)registerFormatterIOConfig1WithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterIOConfig2WithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterIntEventWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterIntMaskClearWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterLDCMConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterLDCMStatusWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterMuxStateWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterPD3EMIntMaskWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterPersParamsWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterPowerSwitchStateWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterSecondaryMUXInitWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterSystemConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterTBTRetimerDataWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterTXEPRSourceCapWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterUSBConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterWakeEventMaskWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (int)printAllDPMrSubcommands;
- (int)printDBStateHistory;
- (int)printTBRrIfIntelRetimerPresent;
- (void)buildRegDecodes;
- (void)setDPMrConfigs;
@end

@implementation PDControllerType5

- (id)registerFormatter8ByteVersionWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = +[NSMutableArray array];
  v8 = [(PDController *)self registerFormatterHexDumpWithBuffer:a3 andLength:a4];
  [v7 addObjectsFromArray:v8];
  if (a4 == 8)
  {
    [NSString stringWithFormat:@"%llX.%llX.%llX.%lld.%02lld", *a3 >> 20, (*a3 >> 8) & 0xFFFLL, *a3, BYTE4(*a3), (WORD2(*a3) >> 8)];
  }

  else if (a4 == 4)
  {
    [v7 addObject:@"Warning: Unexpected 4-byte version register"];
    [NSString stringWithFormat:@"%X.%X.%X (Unknown Customer Version)", *a3 >> 20, (*a3 >> 8) & 0xFFF, *a3, v13, v14];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: Unexpected length %lld", a4, v11, v12, v13, v14];
  }
  v9 = ;
  [v7 addObject:v9];

  return v7;
}

- (int)printTBRrIfIntelRetimerPresent
{
  v7 = 0;
  result = [(PDController *)self registerRead:v8 ofLength:64 atAddress:42 andOutReadLength:&v7];
  if (!result)
  {
    result = -536870160;
    if (v7 >= 8)
    {
      if ((v9 & 0xF) != 0 && (v9 & 0xF) != 14)
      {
        v6 = 4;
        v5 = 48;
        return [(PDController *)self printCommand:1413632626 withWriteData:&v5 withWriteLength:3];
      }
    }

    else
    {
      return -536870212;
    }
  }

  return result;
}

- (int)printAllDPMrSubcommands
{
  v27 = 0;
  v3 = malloc_type_malloc(0x40uLL, 0x29B8452AuLL);
  if (v3)
  {
    v4 = v3;
    [(PDController *)self registerRead:v3 ofLength:64 atAddress:42 andOutReadLength:&v27];
    v22 = *(v4 + 5);
    free(v4);
  }

  else
  {
    v22 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(PDControllerType4 *)self dpmrConfigs];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v10 = [(PDControllerType4 *)self dpmrConfigs];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 objectForKeyedSubscript:@"mask"];
        v13 = [v12 unsignedIntegerValue];

        v14 = [(PDControllerType4 *)self dpmrConfigs];
        v15 = [v14 objectForKeyedSubscript:v9];
        v16 = [v15 objectForKeyedSubscript:@"match"];
        v17 = [v16 unsignedIntegerValue];

        if ((v22 & v13) == v17)
        {
          v18 = [(PDControllerType4 *)self dpmrConfigs];
          v19 = [v18 objectForKeyedSubscript:v9];
          [(PDControllerType4 *)self printDPMrSubCommand:v9 withDeviceConfig:v19];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  return 0;
}

- (id)registerFormatterGenericWithBuffer:(void *)a3 andLength:(unint64_t)a4 andConfig:(id)a5
{
  v8 = a5;
  v9 = +[NSMutableArray array];
  v69 = self;
  v10 = [(PDController *)self registerFormatterHexDumpWithBuffer:a3 andLength:a4];
  [v9 addObjectsFromArray:v10];
  v11 = [v8 objectForKeyedSubscript:@"length"];
  v12 = [v11 unsignedIntegerValue];

  if (v12 > a4)
  {
    v13 = [NSString stringWithFormat:@"ERROR: length %lld < %lu", a4, v12];
    [v9 addObject:v13];

    goto LABEL_68;
  }

  v72 = a4;
  if (v12 < a4)
  {
    v14 = [NSString stringWithFormat:@"ERROR: length %lld > %lu, register may not be decoded correctly", a4, v12];
    [v9 addObject:v14];
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v68 = v8;
  obj = [v8 objectForKeyedSubscript:@"fields"];
  v15 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
  if (v15)
  {
    v16 = v15;
    v74 = *v77;
    v17 = @"%02X";
    v70 = v9;
    v71 = a3;
    do
    {
      v18 = 0;
      do
      {
        if (*v77 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v76 + 1) + 8 * v18);
        v20 = [v19 objectForKeyedSubscript:@"bit_length"];
        if (!v20)
        {
          goto LABEL_18;
        }

        v21 = v20;
        v22 = v17;
        v23 = [v19 objectForKeyedSubscript:@"byte_offset"];
        if (!v23)
        {

LABEL_18:
          v30 = [NSString stringWithFormat:@"Error, illegal field %@", v19];
          [v9 addObject:v30];
          goto LABEL_19;
        }

        v24 = v23;
        v25 = [v19 objectForKeyedSubscript:@"name"];

        v17 = v22;
        if (!v25)
        {
          goto LABEL_18;
        }

        v26 = [v19 objectForKeyedSubscript:@"bit_length"];
        v27 = [v26 unsignedCharValue];

        v28 = [v19 objectForKeyedSubscript:@"byte_offset"];
        v29 = [v28 unsignedCharValue];

        v30 = [v19 objectForKeyedSubscript:@"name"];
        if (v29 >= v72)
        {
          [NSString stringWithFormat:@"Error, byte offset too large (%x)", v29, v65, v66, v67];
          v32 = LABEL_22:;
          [v9 addObject:v32];
          goto LABEL_23;
        }

        if (v27 >= 0x21)
        {
          v31 = v29 + ((v27 + 7) >> 3);
          if (v31 > v72)
          {
            [NSString stringWithFormat:@"Error, byte_offset + byte_length too large (error in field %@, offset=%d, byte_length=%d actual_length=%d)", v30, v29, (v27 + 7) >> 3, v27];
            goto LABEL_22;
          }

          v32 = [NSMutableString stringWithUTF8String:"0x"];
          v44 = v31 - 1;
          if (v44 >= v29)
          {
            do
            {
              [v32 appendFormat:v22, v71[v44--]];
            }

            while (v29 <= v44);
          }

          v45 = [(PDControllerType4 *)v69 stringForTitle:v30 valueString:v32];
          [v9 addObject:v45];

LABEL_23:
          v17 = v22;
          goto LABEL_19;
        }

        v75 = *&v71[v29];
        v33 = [v19 objectForKeyedSubscript:@"bit_shift"];

        if (v33)
        {
          v34 = [v19 objectForKeyedSubscript:@"bit_shift"];
          v35 = [v34 unsignedIntegerValue];
          v75 >>= v35;
        }

        v75 &= ~(-1 << v27);
        v36 = [v19 objectForKeyedSubscript:@"show_only_when_nonzero"];

        if (!v36 || ([v19 objectForKeyedSubscript:@"show_only_when_nonzero"], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "BOOLValue"), v39 = v75, v37, !v38) || v39)
        {
          v40 = [v19 objectForKeyedSubscript:@"values"];

          if (v40)
          {
            v41 = v75;
            v42 = [v19 objectForKeyedSubscript:@"values"];
            v43 = [(PDControllerType4 *)v69 stringForTitle:v30 value:v41 table:v42];
          }

          else
          {
            if (v27 > 4)
            {
              if (v27 > 8)
              {
                if (v27 > 0x10)
                {
                  if (v27 > 0x18)
                  {
                    [NSString stringWithFormat:@"0x%08llX", v75];
                  }

                  else
                  {
                    [NSString stringWithFormat:@"0x%06X", v75];
                  }
                }

                else
                {
                  [NSString stringWithFormat:@"0x%04X", v75];
                }
              }

              else
              {
                [NSString stringWithFormat:@"0x%02X", v75];
              }
            }

            else
            {
              [NSString stringWithFormat:@"0x%X", v75];
            }
            v42 = ;
            v43 = [(PDControllerType4 *)v69 stringForTitle:v30 valueString:v42];
          }

          v46 = v43;

          v47 = [v19 objectForKeyedSubscript:@"formatter"];

          if (v47)
          {
            [v70 addObject:v46];
            v48 = [v19 objectForKeyedSubscript:@"formatter"];
            v49 = (v48)[2](v48, &v75);
            [v70 addObjectsFromArray:v49];

LABEL_64:
            goto LABEL_65;
          }

          v50 = [v19 objectForKeyedSubscript:@"unit"];

          if (v50)
          {
            v51 = [v19 objectForKeyedSubscript:@"signed"];

            if (v51)
            {
              if (v27 == 16)
              {
                v52 = v75;
LABEL_56:
                v58 = v52;
              }

              else
              {
                if (v27 == 8)
                {
                  v52 = v75;
                  goto LABEL_56;
                }

                v58 = v75;
              }
            }

            else
            {
              v58 = v75;
            }

            v59 = [v19 objectForKeyedSubscript:@"unit"];
            [v59 floatValue];
            v61 = v60;

            v62 = [v19 objectForKeyedSubscript:@"unit_str"];
            if (v62)
            {
              v54 = [v19 objectForKeyedSubscript:@"unit_str"];
            }

            else
            {
              v54 = &stru_10001C6C8;
            }

            v57 = v70;

            v56 = [NSString stringWithFormat:@"%@ [%0.3f %@]", v46, (v61 * v58), v54];
LABEL_62:

            v46 = v56;
          }

          else
          {
            v53 = [v19 objectForKeyedSubscript:@"formula"];

            if (v53)
            {
              v54 = [v19 objectForKeyedSubscript:@"formula"];
              v55 = (v54->data)(v54, &v75);
              v56 = [NSString stringWithFormat:@"%@ [%@]", v46, v55];

              v46 = v55;
              v57 = v70;
              goto LABEL_62;
            }

            v57 = v70;
          }

          [v57 addObject:v46];
          goto LABEL_64;
        }

LABEL_65:
        v17 = v22;
        v9 = v70;
LABEL_19:

        v18 = v18 + 1;
      }

      while (v18 != v16);
      v63 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
      v16 = v63;
    }

    while (v63);
  }

  v8 = v68;
LABEL_68:

  return v9;
}

- (id)registerFormatterIntEventWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EA70];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EA70];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020B40;
  }

  return v11;
}

- (id)registerFormatterIntMaskClearWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EA88];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EA88];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020B58;
  }

  return v11;
}

- (id)registerFormatterWakeEventMaskWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EAA0];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EAA0];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020B70;
  }

  return v11;
}

- (id)registerFormatterUSBConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EAB8];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EAB8];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020B88;
  }

  return v11;
}

- (id)registerFormatterIOConfig1WithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EAD0];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EAD0];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020BA0;
  }

  return v11;
}

- (id)registerFormatterIOConfig2WithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EAE8];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EAE8];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020BB8;
  }

  return v11;
}

- (id)registerFormatterPD3EMIntMaskWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EB00];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EB00];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020BD0;
  }

  return v11;
}

- (id)registerFormatterPersParamsWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EB18];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EB18];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020BE8;
  }

  return v11;
}

- (id)registerFormatterBootFlagsWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EB30];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EB30];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020C00;
  }

  return v11;
}

- (id)registerFormatterCFVIDStatusWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EB48];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EB48];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020C18;
  }

  return v11;
}

- (id)registerFormatterPowerSwitchStateWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = +[NSMutableArray array];
  v8 = [(PDController *)self registerFormatterHexDumpWithBuffer:a3 andLength:a4];
  [v7 addObjectsFromArray:v8];
  if (a4 == 44 || a4 == 20)
  {
    v15.receiver = self;
    v15.super_class = PDControllerType5;
    v9 = [(PDControllerType5 *)&v15 registerFormatterPowerSwitchStateWithBuffer:a3 andLength:a4];
  }

  else
  {
    v10 = [(PDControllerType5 *)self registerConfigs];
    v11 = [v10 objectForKeyedSubscript:&off_10001EB60];

    if (v11)
    {
      v12 = [(PDControllerType5 *)self registerConfigs];
      v13 = [v12 objectForKeyedSubscript:&off_10001EB60];
      v9 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v13];
    }

    else
    {
      v9 = &off_100020C30;
    }
  }

  return v9;
}

- (id)registerFormatterADCResultsWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EB78];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EB78];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020C48;
  }

  return v11;
}

- (id)registerFormatterMuxStateWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if ((a4 & 0xFFFFFFFFFFFFFFFBLL) == 8)
  {
    v13.receiver = self;
    v13.super_class = PDControllerType5;
    v7 = [(PDControllerType5 *)&v13 registerFormatterMuxStateWithBuffer:a3 andLength:a4];
  }

  else
  {
    v8 = [(PDControllerType5 *)self registerConfigs];
    v9 = [v8 objectForKeyedSubscript:&off_10001EB90];

    if (v9)
    {
      v10 = [(PDControllerType5 *)self registerConfigs];
      v11 = [v10 objectForKeyedSubscript:&off_10001EB90];
      v7 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v11];
    }

    else
    {
      v7 = &off_100020C60;
    }
  }

  return v7;
}

- (id)registerFormatterLDCMConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EBA8];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EBA8];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020C78;
  }

  return v11;
}

- (id)registerFormatterLDCMStatusWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EBC0];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EBC0];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020C90;
  }

  return v11;
}

- (id)registerFormatterFWStateConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EBD8];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EBD8];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020CA8;
  }

  return v11;
}

- (id)registerFormatterSystemConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EBF0];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EBF0];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020CC0;
  }

  return v11;
}

- (id)registerFormatterCFSOPUVDMEnumWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EC08];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EC08];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020CD8;
  }

  return v11;
}

- (id)registerFormatterTXEPRSourceCapWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EC20];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EC20];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020CF0;
  }

  return v11;
}

- (id)registerFormatterTBTRetimerDataWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = [(PDControllerType5 *)self registerConfigs];
  v8 = [v7 objectForKeyedSubscript:&off_10001EC38];

  if (v8)
  {
    v9 = [(PDControllerType5 *)self registerConfigs];
    v10 = [v9 objectForKeyedSubscript:&off_10001EC38];
    v11 = [(PDControllerType5 *)self registerFormatterGenericWithBuffer:a3 andLength:a4 andConfig:v10];
  }

  else
  {
    v11 = &off_100020D08;
  }

  return v11;
}

- (id)readFullVersion
{
  v11 = 0;
  v3 = malloc_type_malloc(0x40uLL, 0x1921083BuLL);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(PDController *)self registerRead:v3 ofLength:64 atAddress:15 andOutReadLength:&v11];
  v6 = &stru_10001C6C8;
  if (!v5 && v11 <= 8)
  {
    v7 = *v4;
    v10 = 0;
    v9 = 0;
    if ([(PDController *)self registerRead:&v10 ofLength:1 atAddress:44 andOutReadLength:&v9])
    {
LABEL_5:
      v6 = &stru_10001C6C8;
      goto LABEL_6;
    }

    v6 = [NSString stringWithFormat:@"%X.%X.%X.%d.%d", v7 >> 20, (v7 >> 8) & 0xFFF, v7, BYTE4(v7), BYTE5(v7)];
  }

LABEL_6:

  return v6;
}

- (id)registerFormatterCFVIDConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v16.receiver = self;
  v16.super_class = PDControllerType5;
  v5 = [(PDControllerType5 *)&v16 registerFormatterCFVIDConfigWithBuffer:a3 andLength:a4];
  v6 = [v5 mutableCopy];

  if ([v6 count])
  {
    for (i = 0; [v6 count] > i; ++i)
    {
      v8 = [v6 objectAtIndex:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v6 objectAtIndex:i];
        v10 = [v9 containsString:@"DFUfSetDBF"];

        if (v10)
        {
          v11 = [v6 objectAtIndex:i];
          v12 = [v11 containsString:@"0x1"];

          if (v12)
          {
            v13 = @"DFUf entry sets No-VIN flag. (0x1)";
          }

          else
          {
            v13 = @"DFUf does not affect No-VIN flag. (0x0)";
          }

          v14 = [(PDControllerType4 *)self stringForTitle:@"DFUfSetNVF" valueString:v13];
          [v6 replaceObjectAtIndex:i withObject:v14];

          break;
        }
      }

      else
      {
      }
    }
  }

  return v6;
}

- (id)registerFormatterCFDebugConfigWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = +[NSMutableArray array];
  v97 = self;
  v8 = [(PDController *)self registerFormatterHexDumpWithBuffer:a3 andLength:a4];
  [v7 addObjectsFromArray:v8];
  if (a4 < 0x41)
  {
    if (a4 != 64)
    {
      v74 = [NSString stringWithFormat:@"ERROR: length %lld < 64", a4];
      [v7 addObject:v74];

      goto LABEL_32;
    }
  }

  else
  {
    v9 = [NSString stringWithFormat:@"ERROR: Unexpected length, may not be decoded properly."];
    [v7 addObject:v9];
  }

  v86 = v8;
  v109[0] = &off_10001EC50;
  v109[1] = &off_10001EC68;
  v110[0] = @"Reboot Ace (equivalent to 'Gaid' 4CC). (0x00)";
  v110[1] = @"RESET_REQ. (0x01)";
  v109[2] = &off_10001EC80;
  v109[3] = &off_10001EC98;
  v110[2] = @"DFU_REQ. (0x02)";
  v110[3] = @"DBG_EN. (0x03)";
  v109[4] = &off_10001ECB0;
  v110[4] = @"DFU Ace (0x04)";
  v92 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:5];
  v107[0] = &off_10001EC68;
  v107[1] = &off_10001EC80;
  v108[0] = @"Action. (0x01)";
  v108[1] = @"SWD. (0x02)";
  v107[2] = &off_10001EC98;
  v107[3] = &off_10001ECB0;
  v108[2] = @"UART. (0x03)";
  v108[3] = @"DigitalIO. (0x04)";
  v107[4] = &off_10001ECC8;
  v107[5] = &off_10001ECE0;
  v108[4] = @"DCI-BSSB. (0x05)";
  v108[5] = @"USB. (0x06)";
  v107[6] = &off_10001ECF8;
  v107[7] = &off_10001ED10;
  v108[6] = @"DCI-DbC. (0x07)";
  v108[7] = @"I2C. (0x08)";
  v107[8] = &off_10001ED28;
  v107[9] = &off_10001ED40;
  v108[8] = @"DisplayPort. (0x09)";
  v108[9] = @"AID. (0x0A)";
  v107[10] = &off_10001ED58;
  v107[11] = &off_10001ED70;
  v108[10] = @"AnalogIO. (0x0B)";
  v108[11] = @"2Wire-BSSB. (0x0C)";
  v107[12] = &off_10001ED88;
  v107[13] = &off_10001EDA0;
  v108[12] = @"2Wire-MADI. (0x0D)";
  v108[13] = @"KIS (USB). (0x46)";
  v88 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:14];
  v105[0] = &off_10001EC50;
  v105[1] = &off_10001EC68;
  v106[0] = @"Ace AUX. (0x00)";
  v106[1] = @"Ace USB_RP1. (0x01)";
  v105[2] = &off_10001EC80;
  v105[3] = &off_10001EC98;
  v106[2] = @"Ace USB_RP2. (0x02)";
  v106[3] = @"Ace USB_RP3. (0x03)";
  v105[4] = &off_10001ECB0;
  v105[5] = &off_10001ECC8;
  v106[4] = @"USB3 Normal Mode. (0x04)";
  v106[5] = @"Ace Internal SWD. (0x05)";
  v106[6] = @"Ace DEBUG0/1 (Analog). (0x06)";
  v106[7] = @"Ace DEBUG2/3 (Analog). (0x07)";
  v106[8] = @"Ace DEBUG4/5 (Analog). (0x08)";
  v106[9] = @"Ace DEBUG6/7 (Analog). (0x09)";
  v106[10] = @"Ace Internal UART. (0x0A)";
  v106[11] = @"Ace I2C1. (0x0B)";
  v105[12] = &off_10001ED70;
  v105[13] = &off_10001EDB8;
  v106[12] = @"Ace I2C2/SPMI. (0x0C)";
  v106[13] = @"Debug MUX DCI. (0x12)";
  v105[14] = &off_10001EDD0;
  v105[15] = &off_10001EA70;
  v106[14] = @"Debug MUX SWD. (0x13)";
  v106[15] = @"Debug MUX UART/DM2 USB. (0x14)";
  v105[16] = &off_10001EDE8;
  v105[17] = &off_10001EA88;
  v106[16] = @"Ace Debug Serial Output. (0x15)";
  v106[17] = @"Ace DEBUG0-3 DCI. (0x16)";
  v105[18] = &off_10001EE00;
  v105[19] = &off_10001EE18;
  v106[18] = @"Ace DEBUG4-7 DCI. (0x17)";
  v106[19] = @"Ace DEBUG0/1 (Digital). (0x18)";
  v105[20] = &off_10001EE30;
  v105[21] = &off_10001EE48;
  v106[20] = @"Ace DEBUG2/3 (Digital). (0x19)";
  v106[21] = @"Ace DEBUG4/5 (Digital). (0x1A)";
  v105[22] = &off_10001EE60;
  v105[23] = &off_10001EE78;
  v106[22] = @"Ace DEBUG6/7 (Digital). (0x1B)";
  v106[23] = @"Ace DEBUG0/1 (Digital). (0x1C)";
  v105[6] = &off_10001ECE0;
  v105[7] = &off_10001ECF8;
  v105[24] = &off_10001EE90;
  v105[25] = &off_10001EEA8;
  v105[8] = &off_10001ED10;
  v105[9] = &off_10001ED28;
  v106[24] = @"Ace DEBUG2/3 (Digital). (0x1D)";
  v106[25] = @"Ace DEBUG4/5 (Digital). (0x1E)";
  v105[10] = &off_10001ED40;
  v105[11] = &off_10001ED58;
  v105[26] = &off_10001EEC0;
  v106[26] = @"Ace DEBUG6/7 (Digital). (0x1F)";
  v87 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:27];
  v104[0] = @"SMC. (0x01)";
  v104[1] = @"PCH/MCP. (0x02)";
  v103[0] = &off_10001EC68;
  v103[1] = &off_10001EC80;
  v104[2] = @"PDMicro1. (0x03)";
  v104[3] = @"Mojo. (0x04)";
  v103[2] = &off_10001EC98;
  v103[3] = &off_10001ECB0;
  v103[4] = &off_10001ECC8;
  v103[5] = &off_10001ECE0;
  v104[4] = @"PMU. (0x05)";
  v104[5] = @"SoC. (0x06)";
  v103[6] = &off_10001ECF8;
  v103[7] = &off_10001ED10;
  v104[6] = @"Baseband. (0x07)";
  v104[7] = @"SSD. (0x08)";
  v103[8] = &off_10001ED28;
  v103[9] = &off_10001ED40;
  v104[8] = @"PDMicro2. (0x09)";
  v104[9] = @"HID. (0x0A)";
  v103[10] = &off_10001ED58;
  v103[11] = &off_10001ED70;
  v104[10] = @"KIS. (0x0B)";
  v104[11] = @"MCU. (0x0C)";
  v103[12] = &off_10001ED88;
  v103[13] = &off_10001EED8;
  v104[12] = @"Tristar+KIS Magic. (0x0D)";
  v104[13] = @"Fan_01. (0x0E)";
  v103[14] = &off_10001EEF0;
  v103[15] = &off_10001EF08;
  v104[14] = @"Fan_23. (0x0F)";
  v104[15] = @"Camera. (0x10)";
  v103[16] = &off_10001EF20;
  v104[16] = @"LDCM. (0x11)";
  v89 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:17];
  v102[0] = @"Pairs. (0x01)";
  v102[1] = @"Voltage. (0x02)";
  v101[0] = &off_10001EC68;
  v101[1] = &off_10001EC80;
  v101[2] = &off_10001EC98;
  v101[3] = &off_10001ECB0;
  v102[2] = @"Clock/MHz. (0x03)";
  v102[3] = @"Clock/Multiplier. (0x04)";
  v101[4] = &off_10001ECC8;
  v101[5] = &off_10001EF38;
  v102[4] = @"Orientation. (0x05)";
  v102[5] = @"Options/[Signal]. (0x80)";
  v101[6] = &off_10001EF50;
  v102[6] = @"Options/UART. (0x81)";
  v91 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:7];
  v10 = 0;
  v11 = 1;
  while (2)
  {
    v12 = 0;
    v98 = v11;
    if (v10 <= 64)
    {
      v13 = 64;
    }

    else
    {
      v13 = v10;
    }

    v90 = v10;
    v95 = v10 - v13;
    v93 = a3 + v10;
    v14 = v10 << 32;
    do
    {
      if (!(v95 + v12))
      {
        goto LABEL_30;
      }

      v15 = v93[v12];
      if (!v93[v12])
      {
        v85 = [NSString stringWithFormat:@"0x%X (byte 0x%X)", 0, v12 + v10 + 1];
        v73 = [(PDControllerType4 *)v97 stringForTitle:@"Terminator Record" valueString:v85];
        [v7 addObject:v73];

        goto LABEL_29;
      }

      v16 = [NSString stringWithFormat:@"DC Record #%u Header", v98];
      v17 = [NSString stringWithFormat:@"0x%02X", v15];
      v18 = [(PDControllerType4 *)v97 stringForTitle:v16 valueString:v17];
      [v7 addObject:v18];

      v99[0] = &off_10001EC50;
      v99[1] = &off_10001EC68;
      v100[0] = @"Record Invalid. (0x0)";
      v100[1] = @"Ace Internal DC Record. (0x1)";
      v99[2] = &off_10001EC80;
      v99[3] = &off_10001EC98;
      v100[2] = @"Action DC Record. (0x02)";
      v100[3] = @"Signal DC Record. (0x03)";
      v19 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:4];
      v20 = v15 >> 6;
      v21 = [(PDControllerType4 *)v97 stringForTitle:@"  DCRecordType" value:v15 >> 6 table:v19];
      [v7 addObject:v21];

      v22 = [NSString stringWithFormat:@"0x%02X (byte 0x%02X)", v15 & 0x3F, (v15 & 0x3F) + 1];
      v23 = [(PDControllerType4 *)v97 stringForTitle:@"  DCRecordEnd" valueString:v22];
      [v7 addObject:v23];

      ++v12;
      v14 += &_mh_execute_header;
    }

    while ((v15 & 0x3F) == 0);
    v10 = v10 + v12;
    if (v90 + v12 != 64)
    {
      if (v15 >> 6 <= 1)
      {
        if (!v20)
        {
LABEL_27:
          v11 = v98 + 1;
          continue;
        }

        v76 = *(a3 + (v14 >> 32));
        v77 = [NSString stringWithFormat:@"DC Record #%u Internal DC Record", v98];
        v78 = [NSString stringWithFormat:@"0x%02X", v76];
        v79 = [(PDControllerType4 *)v97 stringForTitle:v77 valueString:v78];
        [v7 addObject:v79];

        v80 = [(PDControllerType5 *)v97 decodeSingleBit:v76 >> 7 title:@"  OfferRESET" arg0:@"No PortMicro Action entry for reset shall be advertised. (0x0)" arg1:@"PortMicro Action entry for reset shall be advertised. (0x1)"];
        [v7 addObjectsFromArray:v80];

        v81 = [(PDControllerType5 *)v97 decodeSingleBit:v76 >> 6 title:@"  OfferAceDFU" arg0:@"No PortMicro Action entry for DFU shall be advertised. (0x0)" arg1:@"PortMicro DFU entry for reset shall be advertised. (0x1)"];
        [v7 addObjectsFromArray:v81];

        v82 = [(PDControllerType5 *)v97 decodeSingleBit:v76 >> 3 title:@"  OfferI2C2SPMI" arg0:@"No PortMicro I2C/SPMI entry for I2C2 and SPMI shall be advertised. (0x0)" arg1:@"PortMicro I2C or SPMI entry for I2C2 or SPMI shall be advertised. (0x1)"];
        [v7 addObjectsFromArray:v82];

        v83 = [(PDControllerType5 *)v97 decodeSingleBit:v76 >> 2 title:@"  OfferI2C1" arg0:@"No PortMicro I2C entry for I2C1 shall be advertised. (0x0)" arg1:@"PortMicro I2C entry for I2C1 shall be advertised. (0x1)"];
        [v7 addObjectsFromArray:v83];

        v84 = [(PDControllerType5 *)v97 decodeSingleBit:v76 >> 1 title:@"  OfferDebugSerial" arg0:@"No PortMicro UART entry shall be advertised. (0x0)" arg1:@"PortMicro UART entry shall be advertised. (0x1)"];
        [v7 addObjectsFromArray:v84];

        v85 = [(PDControllerType5 *)v97 decodeSingleBit:v76 title:@"  OfferSWD" arg0:@"No PortMicro SWD entry shall be advertised. (0x0)" arg1:@"PortMicro SWD entry shall be advertised. (0x1)"];
        [v7 addObjectsFromArray:v85];
        goto LABEL_29;
      }

      v96 = v12 + v90;
      v24 = v10 - 1;
      v25 = v14 >> 32;
      if (v20 == 2)
      {
        v26 = *(a3 + v25);
        v27 = [NSString stringWithFormat:@"DC Record #%u Action DC Record", v98];
        v28 = [NSString stringWithFormat:@"0x%02X", v26];
        v29 = [(PDControllerType4 *)v97 stringForTitle:v27 valueString:v28];
        [v7 addObject:v29];

        v30 = [(PDControllerType4 *)v97 stringForTitle:@"  ActionTarget" value:v26 table:v89];
        [v7 addObject:v30];

        if (v24 < 62)
        {
          v31 = 1431655766 * ((v15 & 0x3F) - v90 - v12);
          v32 = (BYTE4(v31) + (v31 < 0));
          v10 = v96 + 1;
          v33 = 1;
          while (v32)
          {
            v34 = *(a3 + v10);
            v35 = [NSString stringWithFormat:@"DC Record #%u Action EDC Record #%d", v98, v33];
            v36 = [NSString stringWithFormat:@"0x%06X", v34 & 0xFFFFFF];
            v37 = [(PDControllerType4 *)v97 stringForTitle:v35 valueString:v36];
            [v7 addObject:v37];

            v38 = [(PDControllerType4 *)v97 stringForTitle:@"  AceAction" value:(v34 >> 18) & 0xF table:v92];
            [v7 addObject:v38];

            v39 = [NSString stringWithFormat:@"0x%02X", BYTE1(v34)];
            v40 = [(PDControllerType4 *)v97 stringForTitle:@"  ActionValue" valueString:v39];
            [v7 addObject:v40];

            v41 = [NSString stringWithFormat:@"0x%02X", v34];
            v42 = [(PDControllerType4 *)v97 stringForTitle:@"  ActionTag" valueString:v41];
            [v7 addObject:v42];

            v43 = v10 + 3;
            --v32;
            v33 = (v33 + 1);
            v44 = v10 < 61;
            v10 += 3;
            if (!v44)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_27;
        }
      }

      else
      {
        v94 = v24;
        v45 = *(a3 + v25);
        v46 = [NSString stringWithFormat:@"DC Record #%u Signal DC Record", v98];
        v47 = [NSString stringWithFormat:@"0x%08X", v45];
        v48 = [(PDControllerType4 *)v97 stringForTitle:v46 valueString:v47];
        [v7 addObject:v48];

        v49 = [(PDControllerType5 *)v97 decodeSingleBit:(v45 >> 31) & 1 title:@"  SignalPairs_Single" arg0:@"All specified pairs used. (0x0)" arg1:@"Single pair used. (0x1)"];
        [v7 addObjectsFromArray:v49];

        v50 = [(PDControllerType5 *)v97 decodeSingleBit:v45 >> 30 title:@"  SignalPairs_RX2" arg0:@"Not used. (0x0)" arg1:@"Used. (0x1)"];
        [v7 addObjectsFromArray:v50];

        v51 = [(PDControllerType5 *)v97 decodeSingleBit:v45 >> 29 title:@"  SignalPairs_RX1" arg0:@"Not used. (0x0)" arg1:@"Used. (0x1)"];
        [v7 addObjectsFromArray:v51];

        v52 = [(PDControllerType5 *)v97 decodeSingleBit:v45 >> 28 title:@"  SignalPairs_TX2" arg0:@"Not used. (0x0)" arg1:@"Used. (0x1)"];
        [v7 addObjectsFromArray:v52];

        v53 = [(PDControllerType5 *)v97 decodeSingleBit:v45 >> 27 title:@"  SignalPairs_TX1" arg0:@"Not used. (0x0)" arg1:@"Used. (0x1)"];
        [v7 addObjectsFromArray:v53];

        v54 = [(PDControllerType5 *)v97 decodeSingleBit:v45 >> 26 title:@"  SignalPairs_SBU" arg0:@"Not used. (0x0)" arg1:@"Used. (0x1)"];
        [v7 addObjectsFromArray:v54];

        v55 = [(PDControllerType5 *)v97 decodeSingleBit:v45 >> 25 title:@"  SignalPairs_Mission" arg0:@"Not used. (0x0)" arg1:@"Used. (0x1)"];
        [v7 addObjectsFromArray:v55];

        v56 = [(PDControllerType5 *)v97 decodeSingleBit:BYTE3(v45) title:@"  SignalPairs_Debug" arg0:@"Not used. (0x0)" arg1:@"Used. (0x1)"];
        [v7 addObjectsFromArray:v56];

        v57 = [(PDControllerType5 *)v97 decodeSingleBit:(v45 >> 23) title:@"  InsertTagVoltageVDDIO" arg0:@"Do not insert 0x02 0xVV (Voltage) tag. (0x0)" arg1:@"Insert 0x02 0xVV (Voltage) tag after Pairs tag. (0x1)"];
        [v7 addObjectsFromArray:v57];

        v58 = [(PDControllerType5 *)v97 decodeSingleBit:(v45 >> 22) title:@"  FirstTagBeforePairs" arg0:@"Do not place first EDC Record before Pairs tag. (0x0)" arg1:@"Place first EDC Record before Pairs tag. (0x1)"];
        [v7 addObjectsFromArray:v58];

        v59 = [(PDControllerType5 *)v97 decodeSingleBit:(v45 >> 21) title:@"  InsertTagVoltage3.3V" arg0:@"Do not insert 0x02 0x21 (Voltage: 3.3V) tag. (0x0)" arg1:@"Insert 0x02 0x21 (Voltage: 3.3V) tag after Pairs tag. (0x1)"];
        [v7 addObjectsFromArray:v59];

        v60 = [(PDControllerType4 *)v97 stringForTitle:@"  AceSignal" value:WORD1(v45) & 0x1F table:v87];
        [v7 addObject:v60];

        v61 = [(PDControllerType4 *)v97 stringForTitle:@"  SignalTarget" value:BYTE1(v45) table:v89];
        [v7 addObject:v61];

        v62 = [(PDControllerType4 *)v97 stringForTitle:@"  Signal" value:v45 table:v88];
        [v7 addObject:v62];

        if (v94 < 59)
        {
          v63 = (((v15 & 0x3F) - v90 - v12 - 3) / 2);
          v10 = v96 + 4;
          v64 = 1;
          while (v63)
          {
            v65 = *(a3 + v10);
            v66 = [NSString stringWithFormat:@"DC Record #%u Signal EDC Record #%d", v98, v64];
            v67 = [NSString stringWithFormat:@"0x%04X", v65];
            v68 = [(PDControllerType4 *)v97 stringForTitle:v66 valueString:v67];
            [v7 addObject:v68];

            v69 = [NSString stringWithFormat:@"0x%02X", v65 >> 8];
            v70 = [(PDControllerType4 *)v97 stringForTitle:@"  SignalValue" valueString:v69];
            [v7 addObject:v70];

            v71 = [(PDControllerType4 *)v97 stringForTitle:@"  SignalTag" value:v65 table:v91];
            [v7 addObject:v71];

            v43 = v10 + 2;
            --v63;
            v64 = (v64 + 1);
            v44 = v10 < 62;
            v10 += 2;
            if (!v44)
            {
LABEL_26:
              v72 = [NSString stringWithFormat:@"ERROR: The record overflows the register buffer. Stop decoding."];
              [v7 addObject:v72];

              v10 = v43;
              goto LABEL_27;
            }
          }

          goto LABEL_27;
        }
      }
    }

    break;
  }

  v85 = [NSString stringWithFormat:@"ERROR: The record overflows the register buffer. Stop decoding."];
  [v7 addObject:v85];
LABEL_29:

LABEL_30:
  v8 = v86;
LABEL_32:

  return v7;
}

- (id)registerFormatterSecondaryMUXInitWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v7 = +[NSMutableArray array];
  v8 = [(PDController *)self registerFormatterHexDumpWithBuffer:a3 andLength:a4];
  [v7 addObjectsFromArray:v8];
  if (a4 < 0x41)
  {
    if (a4 != 64)
    {
      v16 = [NSString stringWithFormat:@"ERROR: length %lld < 64", a4];
      [v7 addObject:v16];
      goto LABEL_16;
    }
  }

  else
  {
    v9 = [NSString stringWithFormat:@"ERROR: Unexpected length, may not be decoded properly."];
    [v7 addObject:v9];
  }

  v51 = v8;
  v10 = *(a3 + 1);
  v11 = v10 & 0x20;
  v54 = *(a3 + 1);
  v12 = (v10 >> 6) | 2;
  v13 = [NSString stringWithFormat:@"if ( I2CDataMux != 01110b)"];
  [v7 addObject:v13];

  v14 = 0;
  v52 = 64 - (v12 + (v11 >> 5));
  v53 = v11;
  v15 = 2;
  v16 = &stru_10001C6C8;
  do
  {
    v17 = [NSString stringWithFormat:@"  Initialization Record %d", v14];
    [v7 addObject:v17];

    v18 = a3 + v15;
    v19 = *v18;
    if (v53)
    {
      v20 = [NSString stringWithFormat:@"0x%04X", v19 | (v18[1] << 8)];
      v21 = 2;
    }

    else
    {
      v20 = [NSString stringWithFormat:@"0x%02X", v19];
      v21 = 1;
    }

    v22 = v14;

    v23 = v15 + v21;
    v24 = [NSString stringWithFormat:@"    SecondaryMUXInit%dSubaddr", v14];
    v25 = [(PDControllerType4 *)self stringForTitle:v24 valueString:v20];
    [v7 addObject:v25];

    if ((v54 & 0x40) != 0)
    {
      v16 = [NSString stringWithFormat:@"0x%04X", *(a3 + v23) | (*(a3 + v23 + 1) << 8)];
      v26 = 2;
    }

    else
    {
      v16 = [NSString stringWithFormat:@"0x%02X", *(a3 + v23)];
      v26 = 1;
    }

    v15 = v23 + v26;
    v27 = [NSString stringWithFormat:@"    SecondaryMUXInit%dData", v22];
    v28 = [(PDControllerType4 *)self stringForTitle:v27 valueString:v16];
    [v7 addObject:v28];

    v14 = v22 + 1;
  }

  while (v15 <= v52);
  v29 = *(a3 + 1);
  v30 = [(PDControllerType5 *)self decodeSingleBit:v29 >> 7 title:@"  SecondaryMUXInitEveryConnect" arg0:@"Initialization only needs to be performed once. (0x0)" arg1:@"Initialization must be performed every time the MUX is 'activated'. (0x1)"];
  [v7 addObjectsFromArray:v30];

  v31 = [(PDControllerType5 *)self decodeSingleBit:v29 >> 6 title:@"  SecondaryMUXData16bit" arg0:@"Data Records are 1 byte each. (0x0)" arg1:@"Data Records are 2 bytes each. (0x1)"];
  [v7 addObjectsFromArray:v31];

  v32 = [(PDControllerType5 *)self decodeSingleBit:v29 >> 5 title:@"  SecondaryMUXSubaddr16bit" arg0:@"Subaddress Records are 1 byte each. (0x0)" arg1:@"Subaddress Records are 2 bytes each. (0x1)"];
  [v7 addObjectsFromArray:v32];

  v33 = [NSString stringWithFormat:@"0x%02X", v29 & 0x1F];
  v34 = [(PDControllerType4 *)self stringForTitle:@"  SecondaryMUXNumEntries" valueString:v33];
  [v7 addObject:v34];

  v35 = [NSString stringWithFormat:@"if ( I2CDataMux == 01110b)"];
  [v7 addObject:v35];

  for (i = 63; i != 1; --i)
  {
    v37 = *(a3 + i);
    v38 = [NSString stringWithFormat:@"  SecondaryMUXInitByte%d", i - 2];
    v39 = [NSString stringWithFormat:@"0x%02X", v37];
    v40 = [(PDControllerType4 *)self stringForTitle:v38 valueString:v39];
    [v7 addObject:v40];
  }

  v41 = *(a3 + 1);
  v42 = [(PDControllerType5 *)self decodeSingleBit:v41 >> 7 title:@"  SecondaryMUXInitEveryConnect" arg0:@"Initialization only needs to be performed once. (0x0)" arg1:@"Initialization must be performed every time the MUX is 'activated'. (0x1)"];
  [v7 addObjectsFromArray:v42];

  v43 = [(PDControllerType5 *)self decodeSingleBit:v41 >> 6 title:@"  SecondaryMUXUseStringTable" arg0:@"SecondaryMUXNumBytes contains the number of SecondaryMUXInitByte bytes. (0x0)" arg1:@"SecondaryMUXNumBytes contains an index to the String Table. (0x1)"];
  [v7 addObjectsFromArray:v43];

  v44 = [NSString stringWithFormat:@"0x%02X", v41 & 0x3F];
  v45 = [(PDControllerType4 *)self stringForTitle:@"  SecondaryMUXNumEntries" valueString:v44];
  [v7 addObject:v45];

  v46 = *a3;
  v47 = [NSString stringWithFormat:@"I2C addr = 0x%02X", v46 >> 1];
  v48 = [(PDControllerType4 *)self stringForTitle:@"SecondaryMUXAddr" valueString:v47];
  [v7 addObject:v48];

  v49 = [(PDControllerType5 *)self decodeSingleBit:v46 title:@"SecondaryMUXValid" arg0:@"Register Invalid. (0x0)" arg1:@"Register Valid. (0x1)"];
  [v7 addObjectsFromArray:v49];

  v8 = v51;
LABEL_16:

  return v7;
}

- (void)buildRegDecodes
{
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004F44;
  v6[3] = &unk_10001C2C8;
  objc_copyWeak(&v7, &location);
  v3 = objc_retainBlock(v6);
  v4 = *(&self->super._dpmrConfigs + 2);
  *(&self->super._dpmrConfigs + 2) = v3;

  v5 = *(&self->_policy_handler + 2);
  *(&self->_policy_handler + 2) = &stru_10001C308;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)setDPMrConfigs
{
  v46.receiver = self;
  v46.super_class = PDControllerType5;
  [(PDControllerType4 *)&v46 setDPMrConfigs];
  v3 = [(PDControllerType4 *)self dpmrConfigs];
  v4 = [NSMutableDictionary dictionaryWithDictionary:v3];

  v5 = [v4 objectForKeyedSubscript:@"LRD1"];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 objectForKeyedSubscript:@"LRD1"];
    v8 = [v7 objectForKeyedSubscript:@"mask"];
    if (v8)
    {
      v9 = v8;
      v10 = [v4 objectForKeyedSubscript:@"LRD1"];
      v11 = [v10 objectForKeyedSubscript:@"match"];

      if (!v11)
      {
        goto LABEL_6;
      }

      v12 = [v4 objectForKeyedSubscript:@"LRD1"];
      v6 = [NSMutableDictionary dictionaryWithDictionary:v12];

      [v6 setObject:&off_10001EF68 forKeyedSubscript:@"mask"];
      [v6 setObject:&off_10001EF80 forKeyedSubscript:@"match"];
      v7 = [NSDictionary dictionaryWithDictionary:v6];
      [v4 setObject:v7 forKeyedSubscript:@"LRD1"];
    }
  }

LABEL_6:
  v13 = [v4 objectForKeyedSubscript:@"DPM1"];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v4 objectForKeyedSubscript:@"DPM1"];
  v16 = [v15 objectForKeyedSubscript:@"mask"];
  if (v16)
  {
    v17 = v16;
    v18 = [v4 objectForKeyedSubscript:@"DPM1"];
    v19 = [v18 objectForKeyedSubscript:@"match"];

    if (!v19)
    {
      goto LABEL_11;
    }

    v20 = [v4 objectForKeyedSubscript:@"DPM1"];
    v14 = [NSMutableDictionary dictionaryWithDictionary:v20];

    [v14 setObject:&off_10001EEF0 forKeyedSubscript:@"mask"];
    [v14 setObject:&off_10001EC80 forKeyedSubscript:@"match"];
    v15 = [NSDictionary dictionaryWithDictionary:v14];
    [v4 setObject:v15 forKeyedSubscript:@"DPM1"];
  }

LABEL_11:
  v21 = [v4 objectForKeyedSubscript:@"DPM2"];
  if (!v21)
  {
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [v4 objectForKeyedSubscript:@"DPM2"];
  v24 = [v23 objectForKeyedSubscript:@"mask"];
  if (v24)
  {
    v25 = v24;
    v26 = [v4 objectForKeyedSubscript:@"DPM2"];
    v27 = [v26 objectForKeyedSubscript:@"match"];

    if (!v27)
    {
      goto LABEL_16;
    }

    v28 = [v4 objectForKeyedSubscript:@"DPM2"];
    v22 = [NSMutableDictionary dictionaryWithDictionary:v28];

    [v22 setObject:&off_10001EEF0 forKeyedSubscript:@"mask"];
    [v22 setObject:&off_10001ECB0 forKeyedSubscript:@"match"];
    v23 = [NSDictionary dictionaryWithDictionary:v22];
    [v4 setObject:v23 forKeyedSubscript:@"DPM2"];
  }

LABEL_16:
  v29 = [v4 objectForKeyedSubscript:@"eUSBA"];
  if (!v29)
  {
    goto LABEL_21;
  }

  v30 = v29;
  v31 = [v4 objectForKeyedSubscript:@"eUSBA"];
  v32 = [v31 objectForKeyedSubscript:@"mask"];
  if (v32)
  {
    v33 = v32;
    v34 = [v4 objectForKeyedSubscript:@"eUSBA"];
    v35 = [v34 objectForKeyedSubscript:@"match"];

    if (!v35)
    {
      goto LABEL_21;
    }

    v36 = [v4 objectForKeyedSubscript:@"eUSBA"];
    v30 = [NSMutableDictionary dictionaryWithDictionary:v36];

    [v30 setObject:&off_10001EF98 forKeyedSubscript:@"mask"];
    [v30 setObject:&off_10001EF98 forKeyedSubscript:@"match"];
    v31 = [NSDictionary dictionaryWithDictionary:v30];
    [v4 setObject:v31 forKeyedSubscript:@"eUSBA"];
  }

LABEL_21:
  v37 = [v4 objectForKeyedSubscript:@"USB4B"];
  if (v37)
  {
    v38 = v37;
    v39 = [v4 objectForKeyedSubscript:@"USB4B"];
    v40 = [v39 objectForKeyedSubscript:@"mask"];
    if (!v40)
    {
LABEL_25:

      goto LABEL_26;
    }

    v41 = v40;
    v42 = [v4 objectForKeyedSubscript:@"USB4B"];
    v43 = [v42 objectForKeyedSubscript:@"match"];

    if (v43)
    {
      v44 = [v4 objectForKeyedSubscript:@"USB4B"];
      v38 = [NSMutableDictionary dictionaryWithDictionary:v44];

      [v38 setObject:&off_10001EEF0 forKeyedSubscript:@"mask"];
      [v38 setObject:&off_10001EED8 forKeyedSubscript:@"match"];
      v39 = [NSDictionary dictionaryWithDictionary:v38];
      [v4 setObject:v39 forKeyedSubscript:@"USB4B"];
      goto LABEL_25;
    }
  }

LABEL_26:
  v45 = [NSDictionary dictionaryWithDictionary:v4];
  [(PDControllerType4 *)self setDpmrConfigs:v45];
}

- (int)printDBStateHistory
{
  v3 = malloc_type_malloc(0x40uLL, 0xE1517E3AuLL);
  v4 = v3;
  if (v3)
  {
    *(v3 + 2) = 0u;
    *(v3 + 3) = 0u;
    *v3 = 0u;
    *(v3 + 1) = 0u;
    v24 = 0;
    v22 = 1145197420;
    v23 = 1;
    LODWORD(v21) = 4194307;
    v5 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v22 dataBuffer:&v23 extDataBuffer:0 returnDataBuffer:v3 returnExtDataBuffer:0 inputDataLength:v21 returnDataBufferLength:10 timeoutInSeconds:?];
  }

  else
  {
    v24 = 0;
    v22 = 1145197420;
    v23 = 1;
    v5 = -536870211;
  }

  v6 = [(PDController *)self registerFormatterHexDumpWithBuffer:v4 andLength:18];
  v7 = [v6 objectAtIndexedSubscript:0];
  [(PDController *)self printRegisterTitle:@"DBSl(0)" andDescription:v7];

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4[3] | ((v4[4] & 7) << 8);
    v9 = 1;
    do
    {
      v23 = (16 * v9) | 1;
      LODWORD(v21) = 4194307;
      v5 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v22 dataBuffer:&v23 extDataBuffer:0 returnDataBuffer:v4 returnExtDataBuffer:0 inputDataLength:v21 returnDataBufferLength:10 timeoutInSeconds:?];
      v10 = [NSString stringWithFormat:@"DBSl(%u)", v9];
      v11 = [(PDController *)self registerFormatterHexDumpWithBuffer:v4 andLength:64];
      v12 = [v11 objectAtIndexedSubscript:0];
      [(PDController *)self printRegisterTitle:v10 andDescription:v12];

      if (v9 > 2)
      {
        break;
      }

      v9 = (v9 + 1);
    }

    while (!v5);
  }

  v13 = +[NSMutableArray array];
  if (v8)
  {
    v14 = 1;
    do
    {
      if (!v5)
      {
        v23 = 1;
        v24 = v14 & 0x7FF;
        LODWORD(v21) = 4194307;
        v5 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v22 dataBuffer:&v23 extDataBuffer:0 returnDataBuffer:v4 returnExtDataBuffer:0 inputDataLength:v21 returnDataBufferLength:10 timeoutInSeconds:?];
        if (!v5)
        {
          v15 = [(PDController *)self registerFormatterHexDumpWithBuffer:v4 andLength:64];
          [v13 addObjectsFromArray:v15];

          v5 = 0;
        }
      }
    }

    while (v14++ < v8);
  }

  v23 = 0;
  if (!v5)
  {
    LODWORD(v21) = 4194307;
    v5 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v22 dataBuffer:&v23 extDataBuffer:0 returnDataBuffer:v4 returnExtDataBuffer:0 inputDataLength:v21 returnDataBufferLength:10 timeoutInSeconds:?];
    if (!v5)
    {
      if ([v13 count])
      {
        v17 = 0;
        do
        {
          v18 = [v13 objectAtIndexedSubscript:v17];
          v19 = [NSString stringWithFormat:@"DBSl[%03X]", ++v17];
          [(PDController *)self printRegisterTitle:v19 andDescription:v18];
        }

        while ([v13 count] > v17);
      }

      v5 = 0;
    }
  }

  if (v4)
  {
    free(v4);
  }

  return v5;
}

@end