@interface PDControllerType4
- (BOOL)isSPIMaster;
- (id)dpmrSubCommandFormatterHexDumpWithBuffer:(void *)buffer length:(unint64_t)length inputBuffer:(void *)inputBuffer andInputLength:(unint64_t)inputLength;
- (id)readFullVersion;
- (id)stringForTitle:(id)title valueString:(id)string;
- (int)dataBuffer:(char *)buffer fromHexString:(id)string ofLengthString:(id)lengthString;
- (int)printAll;
- (int)printAllDPMrSubcommands;
- (int)printDBStateHistory;
- (int)printDPMrSubCommand:(id)command withDeviceConfig:(id)config;
- (int)printDPMrSubCommand:(id)command withDeviceConfig:(id)config writeBuffer:(void *)buffer writeLength:(unint64_t)length readBuffer:(void *)readBuffer readLength:(unint64_t)readLength;
- (int)printDPMrSubCommand:(id)command withTitle:(id)title andDescription:(id)description;
- (int)printIECSAceSpecificInfo;
- (int)printIECSStandardInfo;
- (int)printInfo;
- (int)printPDStateHistory;
- (int)printTBRrIfIntelRetimerPresent;
- (int)printTitle;
- (unsigned)chrisTracy:(id)tracy;
- (unsigned)majorVersionNumber;
@end

@implementation PDControllerType4

- (int)printIECSStandardInfo
{
  puts("Reg Name                   Value");
  puts("--------------------------------------");
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&off_100020DE0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *v11;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(&off_100020DE0);
      }

      v7 = -[PDController printRegister:](self, "printRegister:", [*(*(&v10 + 1) + 8 * i) unsignedCharValue]);
    }

    v8 = v7;
    v4 = [&off_100020DE0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v8;
}

- (int)printIECSAceSpecificInfo
{
  puts("Device Specific Registers");
  puts("-------------------------");
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&off_100020DF8 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *v11;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(&off_100020DF8);
      }

      v7 = -[PDController printRegister:](self, "printRegister:", [*(*(&v10 + 1) + 8 * i) unsignedCharValue]);
    }

    v8 = v7;
    v4 = [&off_100020DF8 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v8;
}

- (int)printTitle
{
  userClient = [(PDController *)self userClient];
  routerID = [userClient routerID];
  userClient2 = [(PDController *)self userClient];
  printf("HPM at RID 0x%x Route 0x%llx Address 0x%02x :\n", routerID, [userClient2 routeString], -[PDController address](self, "address"));

  return 0;
}

- (int)printInfo
{
  result = [(PDControllerType4 *)self printTitle];
  if (!result)
  {
    putchar(10);
    result = [(PDControllerType4 *)self printIECSStandardInfo];
    if (!result)
    {
      readFullVersionWithConfig = [(PDControllerType2 *)self readFullVersionWithConfig];
      printf("0x0f %-22s %s\n", "FW Versions", [readFullVersionWithConfig UTF8String]);

      putchar(10);

      return [(PDControllerType4 *)self printIECSAceSpecificInfo];
    }
  }

  return result;
}

- (int)printAll
{
  result = [(PDControllerType4 *)self printTitle];
  if (!result)
  {
    putchar(10);
    v4 = 0;
    while (1)
    {
      result = [(PDController *)self printRegister:v4];
      if (result)
      {
        break;
      }

      if ((++v4 & 0x80) != 0)
      {
        *&v5 = 0xFEFEFEFEFEFEFEFELL;
        *(&v5 + 1) = 0xFEFEFEFEFEFEFEFELL;
        v6[2] = v5;
        v6[3] = v5;
        v6[0] = v5;
        v6[1] = v5;
        [(PDController *)self printCommand:1212377195 withWriteData:v6 withWriteLength:64];
        LODWORD(v6[0]) = 0;
        [(PDController *)self printCommand:1094992754 withWriteData:v6 withWriteLength:4];
        [(PDControllerType4 *)self printAllDPMrSubcommands];
        [(PDControllerType4 *)self printTBRrIfIntelRetimerPresent];
        return 0;
      }
    }
  }

  return result;
}

- (int)printTBRrIfIntelRetimerPresent
{
  v7 = 0;
  result = [(PDController *)self registerRead:v8 ofLength:64 atAddress:41 andOutReadLength:&v7];
  if (!result)
  {
    result = -536870160;
    if (v7 >= 0x3F)
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
  v3 = malloc_type_malloc(0x40uLL, 0x36CA4BBCuLL);
  if (v3)
  {
    v4 = v3;
    [(PDController *)self registerRead:v3 ofLength:64 atAddress:41 andOutReadLength:&v27];
    v22 = *(v4 + 61);
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
        dpmrConfigs = [(PDControllerType4 *)self dpmrConfigs];
        v11 = [dpmrConfigs objectForKeyedSubscript:v9];
        v12 = [v11 objectForKeyedSubscript:@"mask"];
        unsignedIntegerValue = [v12 unsignedIntegerValue];

        dpmrConfigs2 = [(PDControllerType4 *)self dpmrConfigs];
        v15 = [dpmrConfigs2 objectForKeyedSubscript:v9];
        v16 = [v15 objectForKeyedSubscript:@"match"];
        unsignedIntegerValue2 = [v16 unsignedIntegerValue];

        if ((v22 & unsignedIntegerValue) == unsignedIntegerValue2)
        {
          dpmrConfigs3 = [(PDControllerType4 *)self dpmrConfigs];
          v19 = [dpmrConfigs3 objectForKeyedSubscript:v9];
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

- (unsigned)majorVersionNumber
{
  v3 = malloc_type_malloc(4uLL, 0xA2E4D001uLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  [(PDController *)self registerRead:v3 ofLength:4 atAddress:15];
  v5 = v4[2];
  free(v4);
  return v5;
}

- (int)dataBuffer:(char *)buffer fromHexString:(id)string ofLengthString:(id)lengthString
{
  stringCopy = string;
  v8 = [NSScanner scannerWithString:lengthString];
  v17 = 0;
  [v8 scanHexInt:&v17];
  if (stringCopy)
  {
    v9 = [stringCopy length];
    if (v17 == v9 >> 1 && v17 != 0)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = [stringCopy substringWithRange:{v11, 2}];
        v14 = [NSScanner scannerWithString:v13];
        v16 = 0;
        [v14 scanHexInt:&v16];
        buffer[v12] = v16;

        ++v12;
        v11 += 2;
      }

      while (v12 < v17);
    }
  }

  return 0;
}

- (int)printPDStateHistory
{
  v3 = +[NSMutableArray array];
  v25 = +[NSMutableArray array];
  v4 = malloc_type_malloc(0x40uLL, 0x723F6F64uLL);
  [(PDControllerType4 *)self majorVersionNumber];
  v5 = 0;
  v6 = 0;
  LOBYTE(v7) = 1;
  v27 = 1;
  v28 = 1346655092;
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = -536870211;
  }

  while (2)
  {
    v24 = v5;
    if (!v8)
    {
      v9 = [(PDController *)self registerWrite32:1 atAddress:9];
      if (v9 || (v9 = [(PDController *)self executeIECSCommand:1346655092]) != 0 || (v9 = [(PDController *)self registerRead:v4 ofLength:64 atAddress:9]) != 0)
      {
        v8 = v9;
      }

      else
      {
        LODWORD(v23) = 4194368;
        v8 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v28 dataBuffer:&v27 extDataBuffer:0 returnDataBuffer:v4 returnExtDataBuffer:0 inputDataLength:v23 returnDataBufferLength:10 timeoutInSeconds:?];
        if (!v8)
        {
          v24 = *v4;
          LOBYTE(v7) = v4[2];
        }
      }
    }

    v10 = [(PDController *)self registerFormatterHexDumpWithBuffer:v4 andLength:4];
    v11 = [v10 objectAtIndexedSubscript:0];
    [(PDController *)self printRegisterTitle:@"PDSt(0)" andDescription:v11];

    if (v7 <= 4u)
    {
      v7 = 4;
    }

    else
    {
      v7 = v7;
    }

    v12 = v7 + 2;
    v26 = 2;
    do
    {
      while (1)
      {
        if (!v8)
        {
          LODWORD(v23) = 4194368;
          v8 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v28 dataBuffer:&v26 extDataBuffer:0 returnDataBuffer:v4 returnExtDataBuffer:0 inputDataLength:v23 returnDataBufferLength:10 timeoutInSeconds:?];
          if (!v8)
          {
            break;
          }
        }

        if (v12 <= ++v26)
        {
          goto LABEL_25;
        }
      }

      v13 = [(PDController *)self registerFormatterHexDumpWithBuffer:v4 andLength:64];
      [v3 addObjectsFromArray:v13];

      v8 = 0;
      ++v26;
    }

    while (v12 > v26);
    LODWORD(v23) = 4194368;
    v14 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v28 dataBuffer:&v27 extDataBuffer:0 returnDataBuffer:v4 returnExtDataBuffer:0 inputDataLength:v23 returnDataBufferLength:10 timeoutInSeconds:?];
    if (!v14)
    {
      if (*v4 == v24)
      {
        v8 = 0;
      }

      else
      {
        ++v6;
        [v25 addObjectsFromArray:v3];
        v15 = +[NSMutableArray array];

        v16 = *v4;
        v17 = [NSString stringWithFormat:@"PDSt mismatch %d", v6];
        v18 = [NSString stringWithFormat:@"Start ptr = 0x%04x | End ptr = 0x%04x", v24, v16];
        v19 = [(PDControllerType4 *)self stringForTitle:v17 valueString:v18];
        [v25 addObject:v19];

        if (v6 < 5u)
        {

          v8 = 0;
          v3 = v15;
          v5 = v24;
          continue;
        }

        [v15 addObjectsFromArray:v25];

        v8 = 0;
        v3 = v15;
      }

      goto LABEL_26;
    }

    break;
  }

  v8 = v14;
LABEL_25:
  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_26:
  free(v4);
LABEL_27:
  if (!v8 && [v3 count])
  {
    v20 = 0;
    do
    {
      v21 = [v3 objectAtIndexedSubscript:v20];
      if (v20)
      {
        [(PDController *)self printRegisterDescription:v21];
      }

      else
      {
        [(PDController *)self printRegisterTitle:@"'PDSt'" andDescription:v21];
      }

      ++v20;
    }

    while ([v3 count] > v20);
  }

  return v8;
}

- (int)printDBStateHistory
{
  v3 = +[NSMutableArray array];
  v18 = 0;
  v19 = 1145197428;
  v4 = malloc_type_malloc(0x40uLL, 0x63C1CF09uLL);
  [(PDControllerType4 *)self majorVersionNumber];
  if (v4)
  {
    LODWORD(v16) = 4194368;
    v5 = 1;
    v6 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v19 dataBuffer:&v18 extDataBuffer:0 returnDataBuffer:v4 returnExtDataBuffer:0 inputDataLength:v16 returnDataBufferLength:10 timeoutInSeconds:?];
    if (!v6)
    {
      v5 = v4[2];
    }
  }

  else
  {
    v6 = -536870211;
    v5 = 1;
  }

  v7 = [(PDController *)self registerFormatterHexDumpWithBuffer:v4 andLength:8];
  v8 = [v7 objectAtIndexedSubscript:0];
  [(PDController *)self printRegisterTitle:@"DBSt(0)" andDescription:v8];

  if (v5 <= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v5;
  }

  for (i = 1; i <= v9; ++i)
  {
    while (1)
    {
      if (!v6)
      {
        LODWORD(v16) = 4194368;
        v6 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v19 dataBuffer:&i extDataBuffer:0 returnDataBuffer:v4 returnExtDataBuffer:0 inputDataLength:v16 returnDataBufferLength:10 timeoutInSeconds:?];
        if (!v6)
        {
          break;
        }
      }

      if (v9 < ++i)
      {
        goto LABEL_22;
      }
    }

    v10 = [(PDController *)self registerFormatterHexDumpWithBuffer:v4 andLength:64];
    [v3 addObjectsFromArray:v10];

    v6 = 0;
  }

  LODWORD(v16) = 4194368;
  v6 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v19 dataBuffer:&v18 extDataBuffer:0 returnDataBuffer:v4 returnExtDataBuffer:0 inputDataLength:v16 returnDataBufferLength:10 timeoutInSeconds:?];
  if (!v6)
  {
    v11 = [(PDController *)self registerFormatterHexDumpWithBuffer:v4 andLength:2];
    v12 = [v11 objectAtIndexedSubscript:0];
    [(PDController *)self printRegisterDescription:v12];

    if ([v3 count])
    {
      v13 = 0;
      do
      {
        v14 = [v3 objectAtIndexedSubscript:v13];
        if (v13)
        {
          [(PDController *)self printRegisterDescription:v14];
        }

        else
        {
          [(PDController *)self printRegisterTitle:@"'DBSt'" andDescription:v14];
        }

        ++v13;
      }

      while ([v3 count] > v13);
    }

    v6 = 0;
  }

LABEL_22:
  if (v4)
  {
    free(v4);
  }

  return v6;
}

- (id)stringForTitle:(id)title valueString:(id)string
{
  titleCopy = title;
  stringCopy = string;
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%-22s %@", [title UTF8String], stringCopy);

  return v8;
}

- (unsigned)chrisTracy:(id)tracy
{
  tracyCopy = tracy;
  if (tracyCopy)
  {
    v9[0] = &off_10001F670;
    v9[1] = &off_10001F778;
    v10[0] = &off_10001F670;
    v10[1] = &off_10001F670;
    v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    [tracyCopy cStringUsingEncoding:1];
    if ([tracyCopy length] <= 8)
    {
      [tracyCopy length];
    }

    __memcpy_chk();
    v6 = [NSNumber numberWithUnsignedLongLong:0];
    v7 = [v4 objectForKey:v6];

    if (v7)
    {
      unsignedLongValue = [v7 unsignedLongValue];
    }

    else
    {
      unsignedLongValue = *[tracyCopy cStringUsingEncoding:1];
    }
  }

  else
  {
    unsignedLongValue = 0;
  }

  return bswap32(unsignedLongValue);
}

- (id)readFullVersion
{
  v11 = 0;
  v3 = malloc_type_malloc(0x40uLL, 0xD9534230uLL);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    if ([(PDController *)self registerRead:v3 ofLength:64 atAddress:15 andOutReadLength:&v11])
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      if (v11 <= 4)
      {
        v5 = *v4;
        v6 = 0;
        if ([(PDController *)self registerRead:v4 ofLength:64 atAddress:44 andOutReadLength:&v11]|| v11 > 2)
        {
          v7 = 0;
        }

        else
        {
          v6 = v4[1];
          v7 = 1;
        }
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  v8 = +[NSMutableString string];
  v9 = v8;
  if (v7)
  {
    [v8 appendFormat:@"%X.%X.%X.%d", v5 >> 20, (v5 >> 8) & 0xFFF, v5, v6];
  }

  return v9;
}

- (BOOL)isSPIMaster
{
  v6 = 0;
  v3 = malloc_type_malloc(0x40uLL, 0x1D5A6FF0uLL);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  [(PDController *)self registerRead:v3 ofLength:64 atAddress:45 andOutReadLength:&v6];
  return *v4 < 0;
}

- (int)printDPMrSubCommand:(id)command withDeviceConfig:(id)config writeBuffer:(void *)buffer writeLength:(unint64_t)length readBuffer:(void *)readBuffer readLength:(unint64_t)readLength
{
  commandCopy = command;
  v14 = [(PDControllerType4 *)self dpmrSubCommandFormatterHexDumpWithBuffer:readBuffer length:readLength inputBuffer:buffer andInputLength:length];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
    if ([v15 count])
    {
      if ([v15 count])
      {
        v16 = 0;
        do
        {
          v17 = [v15 objectAtIndexedSubscript:v16];
          v18 = v17;
          if (v16)
          {
            printf("\t%s\n", [v17 UTF8String]);
          }

          else
          {
            [(PDControllerType4 *)self printDPMrSubCommand:commandCopy withTitle:commandCopy andDescription:v17];
          }

          ++v16;
        }

        while ([v15 count] > v16);
      }
    }

    else
    {
      [(PDControllerType4 *)self printDPMrSubCommand:commandCopy withTitle:commandCopy andDescription:&stru_10001C6C8];
    }
  }

  else
  {
    [(PDControllerType4 *)self printDPMrSubCommand:commandCopy withTitle:commandCopy andDescription:v14];
  }

  return 0;
}

- (int)printDPMrSubCommand:(id)command withDeviceConfig:(id)config
{
  commandCopy = command;
  configCopy = config;
  v7 = malloc_type_malloc(0x40uLL, 0xC91EA880uLL);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v46 = v7;
  v60 = 1146113394;
  v8 = malloc_type_malloc(0x40uLL, 0xB51767ADuLL);
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v9 = [configCopy objectForKeyedSubscript:@"iecs_style"];
  bOOLValue = [v9 BOOLValue];

  v11 = [configCopy objectForKeyedSubscript:@"i2c_addr"];
  *v8 = [v11 unsignedCharValue];

  v12 = [configCopy objectForKeyedSubscript:@"registers"];
  v13 = [v12 count];

  *(v8 + 1) = v13 - 1;
  v45 = commandCopy;
  if (bOOLValue)
  {
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v14 = [configCopy objectForKeyedSubscript:@"registers"];
    v15 = [v14 countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = v15;
    v44 = configCopy;
    v17 = *v57;
    LODWORD(v18) = 2;
LABEL_4:
    v19 = 0;
    v18 = v18;
    while (1)
    {
      if (*v57 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v56 + 1) + 8 * v19);
      v21 = [v20 objectForKeyedSubscript:@"address"];
      *(v8 + v18) = [v21 unsignedCharValue];

      v22 = [v20 objectForKeyedSubscript:@"length"];
      *(v8 + v18 + 1) = [v22 unsignedCharValue] | 0x80;

      if (v18 > 61)
      {
        break;
      }

      v18 += 2;
      if (v16 == ++v19)
      {
        v16 = [v14 countByEnumeratingWithState:&v56 objects:v63 count:16];
        if (v16)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  else
  {
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v14 = [configCopy objectForKeyedSubscript:@"registers"];
    v23 = [v14 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (!v23)
    {
      goto LABEL_23;
    }

    v24 = v23;
    v44 = configCopy;
    v25 = *v53;
    v26 = 2;
LABEL_13:
    v27 = 0;
    if (v26 <= 63)
    {
      v28 = 63;
    }

    else
    {
      v28 = v26;
    }

    v29 = (v28 - v26);
    while (1)
    {
      if (*v53 != v25)
      {
        objc_enumerationMutation(v14);
      }

      v30 = [*(*(&v52 + 1) + 8 * v27) objectForKeyedSubscript:@"address"];
      *(v8 + v26 + v27) = [v30 unsignedCharValue];

      if (v29 == v27)
      {
        break;
      }

      if (v24 == ++v27)
      {
        v26 += v27;
        v24 = [v14 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v24)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

  configCopy = v44;
LABEL_23:

  LODWORD(v43) = 4194368;
  [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v60 dataBuffer:v8 extDataBuffer:0 returnDataBuffer:v46 returnExtDataBuffer:0 inputDataLength:v43 returnDataBufferLength:10 timeoutInSeconds:?];
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = configCopy;
  v32 = [configCopy objectForKeyedSubscript:@"registers"];
  v33 = [v32 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = *v49;
    do
    {
      v37 = 0;
      v38 = v35;
      do
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v39 = [*(*(&v48 + 1) + 8 * v37) objectForKeyedSubscript:@"address"];
        v35 = v38 + 1;
        *(v8 + v38) = [v39 unsignedCharValue];

        v37 = v37 + 1;
        ++v38;
      }

      while (v34 != v37);
      v34 = [v32 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v34);
  }

  v40 = [v31 objectForKeyedSubscript:@"registers"];
  v41 = -[PDControllerType4 printDPMrSubCommand:withDeviceConfig:writeBuffer:writeLength:readBuffer:readLength:](self, "printDPMrSubCommand:withDeviceConfig:writeBuffer:writeLength:readBuffer:readLength:", v45, v31, v8, [v40 count], v46, 64);

  free(v46);
  free(v8);

  return v41;
}

- (int)printDPMrSubCommand:(id)command withTitle:(id)title andDescription:(id)description
{
  commandCopy = command;
  descriptionCopy = description;
  uTF8String = [command UTF8String];
  uTF8String2 = [descriptionCopy UTF8String];

  printf("'%s'\t%s\n", uTF8String, uTF8String2);
  return 0;
}

- (id)dpmrSubCommandFormatterHexDumpWithBuffer:(void *)buffer length:(unint64_t)length inputBuffer:(void *)inputBuffer andInputLength:(unint64_t)inputLength
{
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableString string];
  [v11 appendFormat:@"0x%02llX\t0x", inputLength];
  for (; inputLength; --inputLength)
  {
    v12 = *inputBuffer;
    inputBuffer = inputBuffer + 1;
    [v11 appendFormat:@"%02X", v12];
  }

  [v10 addObject:v11];
  v13 = +[NSMutableString string];

  [v13 appendFormat:@"0x%02llX\t0x", length];
  for (; length; --length)
  {
    v14 = *buffer;
    buffer = buffer + 1;
    [v13 appendFormat:@"%02x", v14];
  }

  [v10 addObject:v13];

  return v10;
}

@end