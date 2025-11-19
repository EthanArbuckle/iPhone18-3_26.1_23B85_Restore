@interface PDControllerType2
- (BOOL)isSPIMaster;
- (id)readFullVersion;
- (id)readFullVersionWithConfig;
- (id)stringForTitle:(id)a3 valueString:(id)a4;
- (int)disc:(unsigned __int8)a3;
- (int)printAll;
- (int)printDBStateHistory;
- (int)printIECSAceSpecificInfo;
- (int)printIECSStandardInfo;
- (int)printInfo;
- (int)printPDStateHistory;
- (int)printStateHistory;
- (int)printTitle;
- (unsigned)majorVersionNumber;
@end

@implementation PDControllerType2

- (int)printIECSStandardInfo
{
  puts("Reg Name                   Value");
  puts("--------------------------------------");
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&off_100020D20 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
        objc_enumerationMutation(&off_100020D20);
      }

      v7 = -[PDController printRegister:](self, "printRegister:", [*(*(&v10 + 1) + 8 * i) unsignedCharValue]);
    }

    v8 = v7;
    v4 = [&off_100020D20 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v3 = [&off_100020D38 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
        objc_enumerationMutation(&off_100020D38);
      }

      v7 = -[PDController printRegister:](self, "printRegister:", [*(*(&v10 + 1) + 8 * i) unsignedCharValue]);
    }

    v8 = v7;
    v4 = [&off_100020D38 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v8;
}

- (int)printTitle
{
  v3 = [(PDController *)self userClient];
  v4 = [v3 routerID];
  v5 = [(PDController *)self userClient];
  printf("HPM at RID 0x%x Route 0x%llx Address 0x%02x :\n", v4, [v5 routeString], -[PDController address](self, "address"));

  return 0;
}

- (int)printInfo
{
  result = [(PDControllerType2 *)self printTitle];
  if (!result)
  {
    putchar(10);
    result = [(PDControllerType2 *)self printIECSStandardInfo];
    if (!result)
    {
      v4 = [(PDControllerType2 *)self readFullVersionWithConfig];
      printf("0x0f %-22s %s\n", "FW Versions", [v4 UTF8String]);

      putchar(10);

      return [(PDControllerType2 *)self printIECSAceSpecificInfo];
    }
  }

  return result;
}

- (int)printAll
{
  if (![(PDControllerType2 *)self printTitle])
  {
    putchar(10);
    LOBYTE(v3) = 0;
    do
    {
      if ([(PDController *)self printRegister:v3])
      {
        break;
      }

      v3 = (v3 + 1);
    }

    while ((v3 & 0x80000000) == 0);
  }

  [(PDController *)self printCommand:1212377195 withWriteData:0 withWriteLength:0];
  v10 = 0;
  [(PDController *)self printCommand:1094992754 withWriteData:&v10 withWriteLength:4];
  v4 = +[NSMutableArray array];
  *&v11 = 0;
  v5 = malloc_type_malloc(0x40uLL, 0x96554A80uLL);
  v6 = 0;
  if (!v5)
  {
    v7 = [NSString stringWithFormat:@"Malloc failed for rdo object pull"];
    [v4 addObject:v7];

    v6 = -536870211;
  }

  [(PDController *)self registerRead:v5 ofLength:64 atAddress:41 andOutReadLength:&v11];
  v8 = v5[55];
  self->mux_type = v8 & 7;
  self->debug_mux = (v8 >> 4) & 3;

  if (self->mux_type == 2)
  {
    v11 = xmmword_100015A30;
    *v12 = unk_100015A40;
    *&v12[13] = 0xF3F2F1F04D4A4948;
    [(PDController *)self printCommand:1146113394 withWriteData:&v11 withWriteLength:37];
  }

  return v6;
}

- (unsigned)majorVersionNumber
{
  v3 = malloc_type_malloc(4uLL, 0xDCC9138CuLL);
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

- (int)printPDStateHistory
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v5 = malloc_type_malloc(0x40uLL, 0x6E9E0730uLL);
  [(PDControllerType2 *)self majorVersionNumber];
  v6 = 0;
  v25 = 0;
  v28 = 1346655092;
  LOBYTE(v7) = 1;
  v27 = 1;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = -536870211;
  }

  while (2)
  {
    if (!v8)
    {
      LODWORD(v24) = 4194368;
      v8 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v28 dataBuffer:&v27 extDataBuffer:0 returnDataBuffer:v5 returnExtDataBuffer:0 inputDataLength:v24 returnDataBufferLength:10 timeoutInSeconds:?];
      if (!v8)
      {
        v6 = *v5;
        LOBYTE(v7) = v5[2];
      }
    }

    v9 = [(PDController *)self registerFormatterHexDumpWithBuffer:v5 andLength:4];
    v10 = [v9 objectAtIndexedSubscript:0];
    [(PDController *)self printRegisterTitle:@"PDSt(0)" andDescription:v10];

    if (v7 <= 4u)
    {
      v7 = 4;
    }

    else
    {
      v7 = v7;
    }

    v11 = v7 + 2;
    LOBYTE(v12) = 2;
    v26 = 2;
    do
    {
      while (v8)
      {
LABEL_17:
        v12 = v26 + 1;
        v26 = v12;
        if (v11 <= v12)
        {
          goto LABEL_25;
        }
      }

      v13 = [(PDController *)self registerWrite8:v12 atAddress:9];
      if (v13 || (v13 = [(PDController *)self executeIECSCommand:1346655092]) != 0 || (v13 = [(PDController *)self registerRead:v5 ofLength:64 atAddress:9]) != 0 || (LODWORD(v24) = 4194306, (v13 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v28 dataBuffer:&v26 extDataBuffer:0 returnDataBuffer:v5 returnExtDataBuffer:0 inputDataLength:v24 returnDataBufferLength:10 timeoutInSeconds:?]) != 0))
      {
        v8 = v13;
        goto LABEL_17;
      }

      v14 = [(PDController *)self registerFormatterHexDumpWithBuffer:v5 andLength:64];
      [v3 addObjectsFromArray:v14];

      v8 = 0;
      v12 = v26 + 1;
      v26 = v12;
    }

    while (v11 > v12);
    LODWORD(v24) = 4194368;
    v15 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v28 dataBuffer:&v27 extDataBuffer:0 returnDataBuffer:v5 returnExtDataBuffer:0 inputDataLength:v24 returnDataBufferLength:10 timeoutInSeconds:?];
    if (!v15)
    {
      if (*v5 == v6)
      {
        v8 = 0;
      }

      else
      {
        [v4 addObjectsFromArray:v3];
        v16 = +[NSMutableArray array];

        ++v25;
        v17 = *v5;
        v18 = [NSString stringWithFormat:@"PDSt mismatch %d", v25];
        v19 = [NSString stringWithFormat:@"Start ptr = 0x%04x | End ptr = 0x%04x", v6, v17];
        v20 = [(PDControllerType2 *)self stringForTitle:v18 valueString:v19];
        [v4 addObject:v20];

        if (v25 < 5u)
        {

          v8 = 0;
          v3 = v16;
          continue;
        }

        [v16 addObjectsFromArray:v4];

        v8 = 0;
        v3 = v16;
      }

      goto LABEL_26;
    }

    break;
  }

  v8 = v15;
LABEL_25:
  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_26:
  free(v5);
LABEL_27:
  if (!v8 && [v3 count])
  {
    v21 = 0;
    do
    {
      v22 = [v3 objectAtIndexedSubscript:v21];
      if (v21)
      {
        [(PDController *)self printRegisterDescription:v22];
      }

      else
      {
        [(PDController *)self printRegisterTitle:@"'PDSt'" andDescription:v22];
      }

      ++v21;
    }

    while ([v3 count] > v21);
  }

  return v8;
}

- (int)printDBStateHistory
{
  v3 = +[NSMutableArray array];
  v16 = 0;
  v17 = 1145197428;
  v4 = malloc_type_malloc(0x40uLL, 0x89D6622BuLL);
  [(PDControllerType2 *)self majorVersionNumber];
  if (v4)
  {
    LODWORD(v14) = 4194368;
    v5 = 1;
    v6 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v17 dataBuffer:&v16 extDataBuffer:0 returnDataBuffer:v4 returnExtDataBuffer:0 inputDataLength:v14 returnDataBufferLength:10 timeoutInSeconds:?];
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
    if (!v6)
    {
      LODWORD(v14) = 4194306;
      v6 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v17 dataBuffer:&i extDataBuffer:0 returnDataBuffer:v4 returnExtDataBuffer:0 inputDataLength:v14 returnDataBufferLength:10 timeoutInSeconds:?];
      if (!v6)
      {
        v10 = [(PDController *)self registerFormatterHexDumpWithBuffer:v4 andLength:64];
        [v3 addObjectsFromArray:v10];

        v6 = 0;
      }
    }
  }

  if (v4)
  {
    free(v4);
  }

  if (!v6 && [v3 count])
  {
    v11 = 0;
    do
    {
      v12 = [v3 objectAtIndexedSubscript:v11];
      if (v11)
      {
        [(PDController *)self printRegisterDescription:v12];
      }

      else
      {
        [(PDController *)self printRegisterTitle:@"'DBSt'" andDescription:v12];
      }

      ++v11;
    }

    while ([v3 count] > v11);
  }

  return v6;
}

- (int)printStateHistory
{
  if ([(PDControllerType2 *)self majorVersionNumber]== 6)
  {

    return [(PDControllerType2 *)self printDBStateHistory];
  }

  else
  {

    return [(PDControllerType2 *)self printPDStateHistory];
  }
}

- (id)stringForTitle:(id)a3 valueString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%-22s %@", [a3 UTF8String], v7);

  return v8;
}

- (int)disc:(unsigned __int8)a3
{
  v14 = a3;
  if ([(PDController *)self remote]&& ![(PDControllerType2 *)self supportsRemote])
  {
    printf("pd controller at 0x%02x does not support remote access\n", [(PDController *)self address]);
    return -536870170;
  }

  v4 = [(PDControllerType2 *)self getDeviceInfoNameWithConfigOnly:1];
  v5 = [(PDControllerType2 *)self chrisTracy:v4];

  v12 = 1280262987;
  v13 = v5;
  if (v5)
  {
    LODWORD(v10) = 4;
    v6 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v12 dataBuffer:&v13 extDataBuffer:0 returnDataBuffer:0 returnExtDataBuffer:0 inputDataLength:v10 returnDataBufferLength:10 timeoutInSeconds:?];
    v11 = 1145656131;
    if (v6)
    {
      return v6;
    }
  }

  else
  {
    v11 = 1145656131;
  }

  v7 = malloc_type_malloc(0x40uLL, 0x148E0BFAuLL);
  if (!v7)
  {
    return -536870211;
  }

  v8 = v7;
  LODWORD(v10) = 4194305;
  v6 = [(PDControllerType2 *)self executeIECSAtomicCommand:1 cmdBuffer:&v11 dataBuffer:&v14 extDataBuffer:0 returnDataBuffer:v7 returnExtDataBuffer:0 inputDataLength:v10 returnDataBufferLength:10 timeoutInSeconds:?];
  free(v8);
  return v6;
}

- (id)readFullVersion
{
  v12 = 0;
  v3 = malloc_type_malloc(0x40uLL, 0x157D1127uLL);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [(PDController *)self registerRead:v3 ofLength:64 atAddress:15 andOutReadLength:&v12];
  v6 = &stru_10001C6C8;
  if (!v5 && v12 <= 4)
  {
    v7 = *v4;
    v8 = [(PDController *)self registerRead:v4 ofLength:64 atAddress:44 andOutReadLength:&v12];
    v6 = &stru_10001C6C8;
    if (!v8 && v12 <= 2)
    {
      v11 = 0;
      v10 = 0;
      if ([(PDController *)self registerRead:&v11 ofLength:1 atAddress:44 andOutReadLength:&v10])
      {
LABEL_7:
        v6 = &stru_10001C6C8;
        goto LABEL_8;
      }

      v6 = [NSString stringWithFormat:@"%X.%X.%X.%d", HIWORD(v7), BYTE1(v7), v7, v11];
    }
  }

LABEL_8:

  return v6;
}

- (id)readFullVersionWithConfig
{
  v3 = [(PDControllerType2 *)self readFullVersion];
  v4 = [(PDControllerType2 *)self getDeviceInfoNameWithConfigOnly:1];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%s)", v3, [v4 UTF8String]);

  return v5;
}

- (BOOL)isSPIMaster
{
  v7 = 0;
  v3 = malloc_type_malloc(0x40uLL, 0xFFCDF8BBuLL);
  if (v3)
  {
    v4 = v3;
    [(PDController *)self registerRead:v3 ofLength:64 atAddress:45 andOutReadLength:&v7];
    return (*v4 >> 3) & 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end