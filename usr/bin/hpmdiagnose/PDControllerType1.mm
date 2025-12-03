@interface PDControllerType1
- (id)registerFormatterBusPowerWithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)registerFormatterPDControllerType1StateWithBuffer:(void *)buffer andLength:(unint64_t)length;
- (id)stateStringForGPIOFromFile:(id)file;
- (id)stringForTitle:(id)title valueString:(id)string;
- (int)expanderRegisterRead16:(unsigned __int16 *)read16 atOffset:(unsigned __int8)offset;
- (int)getCCRole:(int *)role;
- (int)getPDMode:(int *)mode;
- (int)getPinOutRevision:(unsigned int *)revision;
- (int)i2cRead:(void *)read ofLength:(unint64_t)length atAddress:(unsigned int)address andOutReadLength:(unint64_t *)readLength;
- (int)i2cWrite:(void *)write ofLength:(unint64_t)length atAddress:(unsigned int)address;
- (int)i2cWrite:(void *)write ofLength:(unint64_t)length atAddress:(unsigned int)address andRead:(void *)read ofLength:(unint64_t)ofLength andOutReadLength:(unint64_t *)readLength;
- (int)isPDControllerType1:(BOOL *)type1;
- (int)isPDControllerType3HPM:(BOOL *)m;
- (int)isVCONNOn:(BOOL *)on;
- (int)memWrite:(unsigned int)write atAddress:(unsigned int)address;
- (int)printAll;
- (int)printCCRole;
- (int)printCCState;
- (int)printDXState;
- (int)printExpanderGPIOState;
- (int)printGPIOState;
- (int)printIECSPDControllerType1SpecificInfo;
- (int)printIECSPDControllerType3SpecificInfo;
- (int)printIECSStandardInfo;
- (int)printInfo;
- (int)printRFUState;
- (int)printROMInfo;
- (int)printSSState;
- (int)printUSBCInfo;
- (int)printVBUSState;
- (int)printVCONNState;
- (int)printVDETState;
- (int)readDirection:(BOOL *)direction forGPIO:(unsigned int)o;
- (int)readLevel:(BOOL *)level forGPIO:(unsigned int)o;
- (int)receiveVDM:(void *)m length:(unint64_t)length outSop:(int *)sop outSequence:(char *)sequence outLength:(unint64_t *)outLength;
- (int)receiveVDMAttention:(void *)attention length:(unint64_t)length outSop:(int *)sop outSequence:(char *)sequence outLength:(unint64_t *)outLength;
- (void)dealloc;
- (void)printGPIOWithPort:(id)port pin:(id)pin title:(id)title andState:(id)state;
- (void)printStateWithTitle:(id)title andDescription:(id)description;
@end

@implementation PDControllerType1

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PDControllerType1;
  [(PDControllerType1 *)&v2 dealloc];
}

- (int)isPDControllerType1:(BOOL *)type1
{
  *type1 = 0;
  v7 = 0;
  result = [(PDController *)self registerRead32:&v7 + 4 atAddress:0];
  if (!result)
  {
    result = [(PDController *)self registerRead32:&v7 atAddress:1];
    if (!result)
    {
      result = 0;
      if (HIDWORD(v7) == 2599 && v7 == 24)
      {
        *type1 = 1;
      }
    }
  }

  return result;
}

- (int)isPDControllerType3HPM:(BOOL *)m
{
  *m = 0;
  v7 = 0;
  result = [(PDController *)self registerRead32:&v7 + 4 atAddress:0];
  if (!result)
  {
    result = [(PDController *)self registerRead32:&v7 atAddress:1];
    if (!result)
    {
      result = 0;
      if (HIDWORD(v7) == 2599 && v7 == 25)
      {
        *m = 1;
      }
    }
  }

  return result;
}

- (int)getPinOutRevision:(unsigned int *)revision
{
  *revision = 3;
  v9 = 0;
  result = [(PDControllerType1 *)self isPDControllerType1:&v9];
  if (!result)
  {
    if (v9)
    {
      v8 = 0;
      result = [(PDController *)self registerRead8:&v8 atAddress:91];
      if (!result)
      {
        v6 = v8 & 0x3E;
        if ((v6 | 2) == 0xA)
        {
          result = 0;
          if (v6 == 10)
          {
            v7 = 2;
          }

          else
          {
            v7 = 1;
          }

          *revision = v7;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      printf("WARNING: Unrecognized VID/DID, not valid PDControllerType1!");
      return -536870201;
    }
  }

  return result;
}

- (int)getCCRole:(int *)role
{
  v7 = 0;
  result = [(PDControllerType1 *)self readLevel:&v7 + 1 forGPIO:53];
  if (!result)
  {
    result = [(PDControllerType1 *)self readLevel:&v7 forGPIO:54];
    if (!result)
    {
      if (HIBYTE(v7))
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      *role = v6;
    }
  }

  return result;
}

- (int)isVCONNOn:(BOOL *)on
{
  v8 = 0;
  v7 = 0;
  result = [(PDControllerType1 *)self readLevel:&v8 + 1 forExpanderGPIO:22];
  if (!result)
  {
    result = [(PDControllerType1 *)self readLevel:&v8 forGPIO:47];
    if (!result)
    {
      result = [(PDControllerType1 *)self readLevel:&v7 forGPIO:52];
      if (!result)
      {
        v6 = v8 == 1 && (v8 & 0x100) == 0 && v7 != 1;
        result = 0;
        *on = v6;
      }
    }
  }

  return result;
}

- (int)getPDMode:(int *)mode
{
  v8 = 0;
  result = [(PDControllerType1 *)self readLevel:&v8 + 1 forExpanderGPIO:21];
  if (!result)
  {
    result = [(PDControllerType1 *)self readLevel:&v8 forGPIO:17];
    if (!result)
    {
      if ((v8 & 0x100) != 0)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      if (v8)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      *mode = v7;
    }
  }

  return result;
}

- (int)receiveVDM:(void *)m length:(unint64_t)length outSop:(int *)sop outSequence:(char *)sequence outLength:(unint64_t *)outLength
{
  userClient = [(PDController *)self userClient];
  LODWORD(outLength) = [userClient receiveVDMForDevice:-[PDController address](self buffer:"address") length:m flags:length outSOP:0 outSequence:sop outLength:{sequence, outLength}];

  return outLength;
}

- (int)receiveVDMAttention:(void *)attention length:(unint64_t)length outSop:(int *)sop outSequence:(char *)sequence outLength:(unint64_t *)outLength
{
  userClient = [(PDController *)self userClient];
  LODWORD(outLength) = [userClient receiveVDMAttentionForDevice:-[PDController address](self buffer:"address") length:attention flags:length outSOP:0 outSequence:sop outLength:{sequence, outLength}];

  return outLength;
}

- (int)memWrite:(unsigned int)write atAddress:(unsigned int)address
{
  if ((address & 3) != 0)
  {
    printf("Error: Memory address not a multiple of 4");
    return -536870201;
  }

  else
  {
    v6[0] = address;
    v6[1] = write;
    result = [(PDControllerType1 *)self registerWrite:v6 ofLength:8 atAddress:9];
    if (!result)
    {
      return [(PDControllerType1 *)self executeIECSCommand:1296387447];
    }
  }

  return result;
}

- (int)i2cRead:(void *)read ofLength:(unint64_t)length atAddress:(unsigned int)address andOutReadLength:(unint64_t *)readLength
{
  v9 = [(PDController *)self registerWrite32:address | (length << 16) atAddress:18];
  if (!v9)
  {
    v10 = [(PDControllerType1 *)self executeIECSCommand:1296642627];
    v15 = 0;
    if (v10)
    {
      return v10;
    }

    v12 = 1000;
    v10 = -536870186;
    while (1)
    {
      v13 = [(PDController *)self registerRead32:&v15 atAddress:18];
      v14 = BYTE2(v15);
      if (v13 || v15 < 0)
      {
        break;
      }

      usleep(0x64u);
      if (!--v12)
      {
        v14 = BYTE2(v15);
        if ((v15 & 0x80000000) == 0)
        {
          return v10;
        }

        goto LABEL_16;
      }
    }

    if (v15 < 0)
    {
      v10 = v13;
    }

    else
    {
      v10 = -536870186;
    }

    if ((v15 & 0x80000000) == 0 || v13)
    {
      return v10;
    }

LABEL_16:
    if (readLength)
    {
      *readLength = v14;
    }

    return [(PDController *)self registerRead:read ofLength:v14 atAddress:9];
  }

  return v9;
}

- (int)i2cWrite:(void *)write ofLength:(unint64_t)length atAddress:(unsigned int)address
{
  lengthCopy = length;
  result = [(PDControllerType1 *)self registerWrite:write ofLength:length atAddress:9];
  if (!result)
  {
    result = [(PDController *)self registerWrite32:address | (lengthCopy << 8) atAddress:18];
    if (!result)
    {
      result = [(PDControllerType1 *)self executeIECSCommand:1296642627];
      v12 = 0;
      if (!result)
      {
        v9 = 1000;
        while (1)
        {
          v10 = [(PDController *)self registerRead32:&v12 atAddress:18];
          v11 = v12;
          if (v10 || v12 < 0)
          {
            break;
          }

          usleep(0x64u);
          if (!--v9)
          {
            v11 = v12;
            break;
          }
        }

        if (v11 < 0)
        {
          return v10;
        }

        else
        {
          return -536870186;
        }
      }
    }
  }

  return result;
}

- (int)i2cWrite:(void *)write ofLength:(unint64_t)length atAddress:(unsigned int)address andRead:(void *)read ofLength:(unint64_t)ofLength andOutReadLength:(unint64_t *)readLength
{
  ofLengthCopy = ofLength;
  lengthCopy = length;
  v14 = [(PDControllerType1 *)self registerWrite:write ofLength:length atAddress:9];
  if (!v14)
  {
    addressCopy = address & 0x7F | 0x80;
    if (address <= 0xFF)
    {
      addressCopy = address;
    }

    v14 = [(PDController *)self registerWrite32:addressCopy | (lengthCopy << 8) | (ofLengthCopy << 16) atAddress:18];
    if (!v14)
    {
      v16 = [(PDControllerType1 *)self executeIECSCommand:1296642627];
      v21 = 0;
      if (v16)
      {
        return v16;
      }

      v18 = 1000;
      v16 = -536870186;
      while (1)
      {
        v19 = [(PDController *)self registerRead32:&v21 atAddress:18];
        v20 = BYTE2(v21);
        if (v19 || v21 < 0)
        {
          break;
        }

        usleep(0x64u);
        if (!--v18)
        {
          v20 = BYTE2(v21);
          if ((v21 & 0x80000000) == 0)
          {
            return v16;
          }

          goto LABEL_19;
        }
      }

      if (v21 < 0)
      {
        v16 = v19;
      }

      else
      {
        v16 = -536870186;
      }

      if ((v21 & 0x80000000) == 0 || v19)
      {
        return v16;
      }

LABEL_19:
      if (readLength)
      {
        *readLength = v20;
      }

      return [(PDController *)self registerRead:read ofLength:v20 atAddress:9];
    }
  }

  return v14;
}

- (int)readDirection:(BOOL *)direction forGPIO:(unsigned int)o
{
  v9 = 0;
  result = [(PDControllerType1 *)self registerWrite:&v9 ofLength:8 atAddress:9];
  if (!result)
  {
    result = [(PDControllerType1 *)self executeIECSCommand:1196443983];
    if (!result)
    {
      result = [(PDController *)self registerRead:&v9 ofLength:28 atAddress:9];
      if (!result)
      {
        v8 = &v10;
        if (o >= 0x20)
        {
          v8 = (&v10 + 4);
        }

        *direction = (*v8 >> (o & 0x1F)) & 1;
      }
    }
  }

  return result;
}

- (int)readLevel:(BOOL *)level forGPIO:(unsigned int)o
{
  v9[0] = 0;
  result = [(PDControllerType1 *)self registerWrite:v9 ofLength:8 atAddress:9];
  if (!result)
  {
    result = [(PDControllerType1 *)self executeIECSCommand:1196443983];
    if (!result)
    {
      result = [(PDController *)self registerRead:v9 ofLength:28 atAddress:9];
      if (!result)
      {
        v8 = &v10;
        if (o >= 0x20)
        {
          v8 = (&v10 + 4);
        }

        *level = (*v8 >> (o & 0x1F)) & 1;
      }
    }
  }

  return result;
}

- (id)stateStringForGPIOFromFile:(id)file
{
  fileCopy = file;
  v4 = [fileCopy characterAtIndex:0];
  v5 = [fileCopy characterAtIndex:1];

  v6 = v4 != 49;
  if (v4 == 49 && v5 == 49)
  {
    return @"Drive High";
  }

  if (v5 == 49)
  {
    v6 = 1;
    v8 = 1;
  }

  else
  {
    v8 = v4 == 49;
  }

  v9 = @"Input Low";
  if (v8)
  {
    v9 = @"GPIO STATE ERROR";
  }

  if (v4 != 49 && v5 == 49)
  {
    v9 = @"Input High";
  }

  if (v6)
  {
    return v9;
  }

  else
  {
    return @"Drive Low";
  }
}

- (int)expanderRegisterRead16:(unsigned __int16 *)read16 atOffset:(unsigned __int8)offset
{
  offsetCopy = offset;
  v6 = 0;
  result = [(PDControllerType1 *)self i2cWrite:&offsetCopy ofLength:1 atAddress:32 andRead:read16 ofLength:2 andOutReadLength:&v6];
  if (v6 != 2 && result == 0)
  {
    return -536870169;
  }

  return result;
}

- (id)registerFormatterBusPowerWithBuffer:(void *)buffer andLength:(unint64_t)length
{
  if (length == 1)
  {
    if (*buffer - 1 <= 0xFD)
    {
      [NSString stringWithFormat:@"0x%02X", *buffer];
      goto LABEL_10;
    }
  }

  else
  {
    if (length != 2)
    {
      lengthCopy = length;
      v4 = @"ERROR: length %lld != 2 or 1";
      goto LABEL_9;
    }

    if (*buffer - 1 <= 0xFFFD)
    {
      [NSString stringWithFormat:@"0x%04X", *buffer];
      goto LABEL_10;
    }
  }

  v4 = @"No";
LABEL_9:
  [NSString stringWithFormat:v4, lengthCopy];
  v5 = LABEL_10:;

  return v5;
}

- (id)registerFormatterPDControllerType1StateWithBuffer:(void *)buffer andLength:(unint64_t)length
{
  v13 = 0;
  [(PDControllerType1 *)self isPDControllerType1:&v13];
  if (length == 4)
  {
    v6 = *buffer;
    v14[0] = &off_10001F0A0;
    v14[1] = &off_10001F0B8;
    v15[0] = @"Disabled";
    v15[1] = @"Unattached UFP";
    v15[2] = @"Unattached DFP";
    v14[2] = &off_10001F0D0;
    v14[3] = &off_10001F0E8;
    v15[3] = @"Audio Accessory";
    v15[4] = @"Debug Accessory";
    v14[4] = &off_10001F100;
    v14[5] = &off_10001F118;
    v15[5] = @"Attached UFP";
    v15[6] = @"Lock UFP";
    v14[6] = &off_10001F130;
    v14[7] = &off_10001F148;
    v15[7] = @"Attached DFP / DRP Wait";
    v15[8] = @"Attached DFP";
    v14[8] = &off_10001F160;
    v14[9] = &off_10001F178;
    v15[9] = @"Accessory Present";
    v15[10] = @"Powered Accessory";
    v14[10] = &off_10001F190;
    v14[11] = &off_10001F1A8;
    v14[12] = &off_10001F1C0;
    v15[11] = @"Unsupported Accessory";
    v15[12] = @"Reorient";
    v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:13];
    if (v13 == 1)
    {
      v8 = [NSNumber numberWithUnsignedInt:v6];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = @"Unknown";
      }
    }

    else
    {
      v10 = @"Unknown";
    }

    v11 = [NSString stringWithFormat:@"(%d) %@", v6, v10];
  }

  else
  {
    v11 = [NSString stringWithFormat:@"ERROR: length %lld != 4", length];
  }

  return v11;
}

- (id)stringForTitle:(id)title valueString:(id)string
{
  titleCopy = title;
  stringCopy = string;
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%-22s %@", [title UTF8String], stringCopy);

  return v8;
}

- (void)printStateWithTitle:(id)title andDescription:(id)description
{
  titleCopy = title;
  descriptionCopy = description;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = descriptionCopy;
    if ([v7 count])
    {
      v8 = 0;
      do
      {
        v9 = [v7 objectAtIndexedSubscript:v8];
        if (v8)
        {
          [(PDController *)self printRegisterDescription:v9];
          printf("%-27s %s\n", "", [v9 UTF8String]);
        }

        else
        {
          printf("%-27s %s\n", [titleCopy UTF8String], objc_msgSend(v9, "UTF8String"));
        }

        ++v8;
      }

      while ([v7 count] > v8);
    }
  }

  else
  {
    v10 = titleCopy;
    v11 = descriptionCopy;
    uTF8String = [titleCopy UTF8String];
    uTF8String2 = [v11 UTF8String];

    printf("%-27s %s\n", uTF8String, uTF8String2);
  }
}

- (int)printCCRole
{
  v9 = 0;
  v3 = [(PDControllerType1 *)self readLevel:&v9 + 1 forGPIO:53];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    v5 = &stru_10001C6C8;
    goto LABEL_5;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v9 forGPIO:54];
  if (v4)
  {
    goto LABEL_4;
  }

  if (HIBYTE(v9))
  {
    v7 = @"1";
  }

  else
  {
    v7 = @"0";
  }

  if (v9)
  {
    v8 = @"1";
  }

  else
  {
    v8 = @"0";
  }

  v5 = [(__CFString *)v7 stringByAppendingString:v8];
  printf("%s\t%s\t%s\n", "0xff01", "0x01", [(__CFString *)v5 UTF8String]);
LABEL_5:

  return v4;
}

- (int)printCCState
{
  v28 = 0;
  v27 = 0;
  v3 = [(PDControllerType1 *)self readLevel:&v28 + 1 forGPIO:20];
  if (v3 || (v3 = [(PDControllerType1 *)self readLevel:&v28 forGPIO:21]) != 0 || (v3 = [(PDControllerType1 *)self readLevel:&v27 + 1 forGPIO:22]) != 0)
  {
    v4 = v3;
    v26 = 0;
    v25 = 0;
LABEL_5:
    v24 = 0;
LABEL_6:
    v23 = 0;
    goto LABEL_7;
  }

  v22 = [(PDControllerType1 *)self readLevel:&v27 forGPIO:23];
  v26 = 0;
  v25 = 0;
  if (v22 || (v22 = [(PDControllerType1 *)self readLevel:&v26 + 1 forExpanderGPIO:21]) != 0 || (v22 = [(PDControllerType1 *)self readLevel:&v26 forGPIO:17]) != 0)
  {
    v4 = v22;
    goto LABEL_5;
  }

  v4 = [(PDControllerType1 *)self getPDMode:&v25];
  v24 = 0;
  if (v4)
  {
    goto LABEL_6;
  }

  v4 = [(PDControllerType1 *)self isVCONNOn:&v24];
  v23 = 0;
  if (!v4)
  {
    v4 = [(PDControllerType1 *)self getCCRole:&v23];
  }

LABEL_7:
  if (HIBYTE(v28))
  {
    v5 = @"1";
  }

  else
  {
    v5 = @"0";
  }

  if (v28)
  {
    v6 = @"1";
  }

  else
  {
    v6 = @"0";
  }

  v7 = [(__CFString *)v5 stringByAppendingString:v6];
  v8 = v7;
  if (HIBYTE(v27))
  {
    v9 = @"1";
  }

  else
  {
    v9 = @"0";
  }

  v10 = [v7 stringByAppendingString:v9];

  if (v27)
  {
    v11 = @"1";
  }

  else
  {
    v11 = @"0";
  }

  v12 = [v10 stringByAppendingString:v11];

  if (HIBYTE(v26))
  {
    v13 = @"1";
  }

  else
  {
    v13 = @"0";
  }

  v14 = [v12 stringByAppendingString:v13];

  if (v26)
  {
    v15 = @"1";
  }

  else
  {
    v15 = @"0";
  }

  v16 = [v14 stringByAppendingString:v15];

  v17 = [v16 stringByAppendingFormat:@"%i", v25];

  if (v24)
  {
    v18 = @"1";
  }

  else
  {
    v18 = @"0";
  }

  v19 = [v17 stringByAppendingString:v18];

  v20 = [v19 stringByAppendingFormat:@"%i", v23];

  if (!v4)
  {
    printf("%s\t%s\t%s\n", "0xff02", "0x01", [v20 UTF8String]);
  }

  return v4;
}

- (int)printVBUSState
{
  v13 = 0;
  v12 = 0;
  v3 = [(PDControllerType1 *)self readLevel:&v13 + 1 forExpanderGPIO:22];
  if (v3 || (v3 = [(PDControllerType1 *)self readLevel:&v13 forGPIO:46]) != 0 || (v3 = [(PDControllerType1 *)self readLevel:&v12 forGPIO:52]) != 0)
  {
    v4 = v3;
    v5 = &stru_10001C6C8;
  }

  else
  {
    if (HIBYTE(v13))
    {
      v7 = @"1";
    }

    else
    {
      v7 = @"0";
    }

    if (v13)
    {
      v8 = @"1";
    }

    else
    {
      v8 = @"0";
    }

    v9 = [(__CFString *)v7 stringByAppendingString:v8];
    v10 = v9;
    if (v12)
    {
      v11 = @"1";
    }

    else
    {
      v11 = @"0";
    }

    v5 = [v9 stringByAppendingString:v11];

    printf("%s\t%s\t%s\n", "0xff03", "0x01", [(__CFString *)v5 UTF8String]);
    v4 = 0;
  }

  return v4;
}

- (int)printVCONNState
{
  v13 = 0;
  v12 = 0;
  v3 = [(PDControllerType1 *)self readLevel:&v13 + 1 forExpanderGPIO:22];
  if (v3 || (v3 = [(PDControllerType1 *)self readLevel:&v13 forGPIO:47]) != 0 || (v3 = [(PDControllerType1 *)self readLevel:&v12 forGPIO:52]) != 0)
  {
    v4 = v3;
    v5 = &stru_10001C6C8;
  }

  else
  {
    if (HIBYTE(v13))
    {
      v7 = @"1";
    }

    else
    {
      v7 = @"0";
    }

    if (v13)
    {
      v8 = @"1";
    }

    else
    {
      v8 = @"0";
    }

    v9 = [(__CFString *)v7 stringByAppendingString:v8];
    v10 = v9;
    if (v12)
    {
      v11 = @"1";
    }

    else
    {
      v11 = @"0";
    }

    v5 = [v9 stringByAppendingString:v11];

    printf("%s\t%s\t%s\n", "0xff04", "0x01", [(__CFString *)v5 UTF8String]);
    v4 = 0;
  }

  return v4;
}

- (int)printVDETState
{
  v6 = 0;
  v3 = [(PDControllerType1 *)self readLevel:&v6 forGPIO:16];
  if (!v3)
  {
    if (v6)
    {
      v4 = @"VBUS not present";
    }

    else
    {
      v4 = @"VBUS present";
    }

    [(PDControllerType1 *)self printStateWithTitle:@"VDET" andDescription:v4];
  }

  return v3;
}

- (int)printSSState
{
  v17 = 0;
  v3 = [(PDControllerType1 *)self readLevel:&v17 forExpanderGPIO:18];
  v16 = 0;
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v16 forExpanderGPIO:19];
  v15 = 0;
  if (v4)
  {
    goto LABEL_4;
  }

  v3 = [(PDControllerType1 *)self readLevel:&v15 forGPIO:58];
  v14 = 0;
  if (v3 || (v3 = [(PDControllerType1 *)self readLevel:&v14 forExpanderGPIO:20]) != 0)
  {
LABEL_2:
    v4 = v3;
LABEL_4:
    v5 = &stru_10001C6C8;
    goto LABEL_5;
  }

  if (v17)
  {
    v7 = @"1";
  }

  else
  {
    v7 = @"0";
  }

  if (v16)
  {
    v8 = @"1";
  }

  else
  {
    v8 = @"0";
  }

  v9 = [(__CFString *)v7 stringByAppendingString:v8];
  v10 = v9;
  if (v15)
  {
    v11 = @"1";
  }

  else
  {
    v11 = @"0";
  }

  v12 = [v9 stringByAppendingString:v11];

  if (v14)
  {
    v13 = @"1";
  }

  else
  {
    v13 = @"0";
  }

  v5 = [v12 stringByAppendingString:v13];

  printf("%s\t%s\t%s\n", "0xff06", "0x01", [(__CFString *)v5 UTF8String]);
  v4 = 0;
LABEL_5:

  return v4;
}

- (int)printDXState
{
  v40 = 0;
  v3 = [(PDControllerType1 *)self readLevel:&v40 forGPIO:59];
  v39 = 0;
  if (v3)
  {
    v4 = v3;
    v38 = 0;
LABEL_4:
    v37 = 0;
LABEL_5:
    v36 = 0;
LABEL_6:
    v35 = 0;
LABEL_7:
    v34 = 0;
LABEL_8:
    v33 = 0;
LABEL_9:
    v5 = &stru_10001C6C8;
    goto LABEL_10;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v39 forExpanderGPIO:0];
  v38 = 0;
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v38 forExpanderGPIO:1];
  v37 = 0;
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v37 forExpanderGPIO:16];
  v36 = 0;
  if (v4)
  {
    goto LABEL_6;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v36 forExpanderGPIO:2];
  v35 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v35 forExpanderGPIO:3];
  v34 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v34 forExpanderGPIO:4];
  v33 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v33 forExpanderGPIO:5];
  v32 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  v7 = [(PDControllerType1 *)self readLevel:&v32 forExpanderGPIO:17];
  v31 = 0;
  if (v7 || (v7 = [(PDControllerType1 *)self readLevel:&v31 forExpanderGPIO:6]) != 0)
  {
    v4 = v7;
    goto LABEL_9;
  }

  if (v40)
  {
    v8 = @"1";
  }

  else
  {
    v8 = @"0";
  }

  if (v39)
  {
    v9 = @"1";
  }

  else
  {
    v9 = @"0";
  }

  v10 = &v32;
  if (!v35)
  {
    v10 = &v31;
  }

  v11 = *v10;
  v12 = [(__CFString *)v8 stringByAppendingString:v9];
  v13 = v12;
  if (v38)
  {
    v14 = @"1";
  }

  else
  {
    v14 = @"0";
  }

  v15 = [v12 stringByAppendingString:v14];

  if (v37)
  {
    v16 = @"1";
  }

  else
  {
    v16 = @"0";
  }

  v17 = [v15 stringByAppendingString:v16];

  if (v36)
  {
    v18 = @"1";
  }

  else
  {
    v18 = @"0";
  }

  v19 = [v17 stringByAppendingString:v18];

  if (v35)
  {
    v20 = @"1";
  }

  else
  {
    v20 = @"0";
  }

  v21 = [v19 stringByAppendingString:v20];

  if (v34)
  {
    v22 = @"1";
  }

  else
  {
    v22 = @"0";
  }

  v23 = [v21 stringByAppendingString:v22];

  if (v33)
  {
    v24 = @"1";
  }

  else
  {
    v24 = @"0";
  }

  v25 = [v23 stringByAppendingString:v24];

  if (v32)
  {
    v26 = @"1";
  }

  else
  {
    v26 = @"0";
  }

  v27 = [v25 stringByAppendingString:v26];

  if (v31)
  {
    v28 = @"1";
  }

  else
  {
    v28 = @"0";
  }

  v29 = [v27 stringByAppendingString:v28];

  if (v11)
  {
    v30 = @"1";
  }

  else
  {
    v30 = @"0";
  }

  v5 = [v29 stringByAppendingString:v30];

  printf("%s\t%s\t%s\n", "0xff07", "0x01", [(__CFString *)v5 UTF8String]);
  v4 = 0;
LABEL_10:

  return v4;
}

- (int)printRFUState
{
  v31 = 0;
  v3 = [(PDControllerType1 *)self readLevel:&v31 forGPIO:60];
  v30 = 0;
  if (v3)
  {
    v4 = v3;
    v29 = 0;
LABEL_4:
    v28 = 0;
LABEL_5:
    v27 = 0;
LABEL_6:
    v5 = &stru_10001C6C8;
    goto LABEL_7;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v30 forExpanderGPIO:3];
  v29 = 0;
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v29 forExpanderGPIO:4];
  v28 = 0;
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v28 forExpanderGPIO:5];
  v27 = 0;
  if (v4)
  {
    goto LABEL_6;
  }

  v4 = [(PDControllerType1 *)self readLevel:&v27 forExpanderGPIO:17];
  v26 = 0;
  if (v4)
  {
    goto LABEL_6;
  }

  v7 = [(PDControllerType1 *)self readLevel:&v26 forExpanderGPIO:6];
  v25 = 0;
  if (v7 || (v7 = [(PDControllerType1 *)self readLevel:&v25 forExpanderGPIO:7]) != 0)
  {
    v4 = v7;
    goto LABEL_6;
  }

  if (v31)
  {
    v8 = @"1";
  }

  else
  {
    v8 = @"0";
  }

  if (v30)
  {
    v9 = @"1";
  }

  else
  {
    v9 = @"0";
  }

  v10 = &v27;
  if (v30)
  {
    v10 = &v26;
  }

  v11 = *v10;
  v12 = [(__CFString *)v8 stringByAppendingString:v9];
  v13 = v12;
  if (v29)
  {
    v14 = @"1";
  }

  else
  {
    v14 = @"0";
  }

  v15 = [v12 stringByAppendingString:v14];

  if (v28)
  {
    v16 = @"1";
  }

  else
  {
    v16 = @"0";
  }

  v17 = [v15 stringByAppendingString:v16];

  if (v27)
  {
    v18 = @"1";
  }

  else
  {
    v18 = @"0";
  }

  v19 = [v17 stringByAppendingString:v18];

  if (v26)
  {
    v20 = @"1";
  }

  else
  {
    v20 = @"0";
  }

  v21 = [v19 stringByAppendingString:v20];

  if (v25)
  {
    v22 = @"1";
  }

  else
  {
    v22 = @"0";
  }

  v23 = [v21 stringByAppendingString:v22];

  if (v11)
  {
    v24 = @"1";
  }

  else
  {
    v24 = @"0";
  }

  v5 = [v23 stringByAppendingString:v24];

  printf("%s\t%s\t%s\n", "0xff08", "0x01", [(__CFString *)v5 UTF8String]);
  v4 = 0;
LABEL_7:

  return v4;
}

- (int)printROMInfo
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&off_100020D50 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
        objc_enumerationMutation(&off_100020D50);
      }

      v7 = -[PDController printCommand:](self, "printCommand:", [*(*(&v10 + 1) + 8 * i) unsignedIntValue]);
    }

    v8 = v7;
    v4 = [&off_100020D50 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v8;
}

- (void)printGPIOWithPort:(id)port pin:(id)pin title:(id)title andState:(id)state
{
  portCopy = port;
  stateCopy = state;
  pinCopy = pin;
  uTF8String = [port UTF8String];
  uTF8String2 = [pinCopy UTF8String];

  uTF8String3 = [stateCopy UTF8String];
  printf("%s\t%s\t%s\n", uTF8String, uTF8String2, uTF8String3);
}

- (int)printGPIOState
{
  gpioMap = [(PDControllerType1 *)self gpioMap];
  allKeys = [gpioMap allKeys];
  v5 = [allKeys sortedArrayUsingSelector:"compare:"];

  puts("GPIOs");
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [&off_100020D68 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v17 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(&off_100020D68);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        unsignedCharValue = [v9 unsignedCharValue];
        v11 = [NSString stringWithFormat:@"%d", unsignedCharValue >> 5];
        0x1F = [NSString stringWithFormat:@"%d", unsignedCharValue & 0x1F];
        gpioMap2 = [(PDControllerType1 *)self gpioMap];
        v14 = [gpioMap2 objectForKeyedSubscript:v9];

        v15 = [(PDControllerType1 *)self stateStringForGPIO:unsignedCharValue];
        [(PDControllerType1 *)self printGPIOWithPort:v11 pin:0x1F title:v14 andState:v15];
      }

      v7 = [&off_100020D68 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  return 0;
}

- (int)printExpanderGPIOState
{
  expanderGpioMap = [(PDControllerType1 *)self expanderGpioMap];
  allKeys = [expanderGpioMap allKeys];
  v5 = [allKeys sortedArrayUsingSelector:"compare:"];

  puts("Expander GPIOs");
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [&off_100020D80 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v17 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(&off_100020D80);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        unsignedCharValue = [v9 unsignedCharValue];
        v11 = [NSString stringWithFormat:@"%d", (unsignedCharValue >> 4) & 1];
        v12 = [NSString stringWithFormat:@"%d", unsignedCharValue & 0xF];
        expanderGpioMap2 = [(PDControllerType1 *)self expanderGpioMap];
        v14 = [expanderGpioMap2 objectForKeyedSubscript:v9];

        v15 = [(PDControllerType1 *)self stateStringForExpanderGPIO:unsignedCharValue];
        [(PDControllerType1 *)self printGPIOWithPort:v11 pin:v12 title:v14 andState:v15];
      }

      v7 = [&off_100020D80 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  return 0;
}

- (int)printIECSStandardInfo
{
  puts("Registers");
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [&off_100020D98 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(&off_100020D98);
      }

      LODWORD(v3) = -[PDController printRegister:](self, "printRegister:", [*(*(&v8 + 1) + 8 * v6) unsignedCharValue]);
      if (v3)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v3 = [&off_100020D98 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = v3;
        if (v3)
        {
          goto LABEL_3;
        }

        return v3;
      }
    }
  }

  return v3;
}

- (int)printIECSPDControllerType1SpecificInfo
{
  puts("Device Registers");
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [&off_100020DB0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(&off_100020DB0);
      }

      LODWORD(v3) = -[PDController printRegister:](self, "printRegister:", [*(*(&v8 + 1) + 8 * v6) unsignedCharValue]);
      if (v3)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v3 = [&off_100020DB0 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = v3;
        if (v3)
        {
          goto LABEL_3;
        }

        return v3;
      }
    }
  }

  return v3;
}

- (int)printIECSPDControllerType3SpecificInfo
{
  puts("Device Registers");
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [&off_100020DC8 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(&off_100020DC8);
      }

      LODWORD(v3) = -[PDController printRegister:](self, "printRegister:", [*(*(&v8 + 1) + 8 * v6) unsignedCharValue]);
      if (v3)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v3 = [&off_100020DC8 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = v3;
        if (v3)
        {
          goto LABEL_3;
        }

        return v3;
      }
    }
  }

  return v3;
}

- (int)printUSBCInfo
{
  puts("USBC Information");
  result = [(PDControllerType1 *)self printCCRole];
  if (!result)
  {
    result = [(PDControllerType1 *)self printCCState];
    if (!result)
    {
      result = [(PDControllerType1 *)self printVBUSState];
      if (!result)
      {
        result = [(PDControllerType1 *)self printVCONNState];
        if (!result)
        {
          result = [(PDControllerType1 *)self printVDETState];
          if (!result)
          {
            result = [(PDControllerType1 *)self printSSState];
            if (!result)
            {
              result = [(PDControllerType1 *)self printDXState];
              if (!result)
              {

                return [(PDControllerType1 *)self printRFUState];
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (int)printInfo
{
  printf("Apple HPM at 0x%02x :\n\n", [(PDController *)self address]);
  result = [(PDControllerType1 *)self printIECSStandardInfo];
  v5 = 0;
  if (result)
  {
    v4 = 0;
  }

  else
  {
    result = [(PDControllerType1 *)self isPDControllerType1:&v5];
    v4 = 0;
    if (!result)
    {
      result = [(PDControllerType1 *)self isPDControllerType3HPM:&v4];
    }
  }

  if (v5 == 1)
  {
    if (result)
    {
      goto LABEL_12;
    }

    putchar(10);
    result = [(PDControllerType1 *)self printIECSPDControllerType1SpecificInfo];
    if (result)
    {
      goto LABEL_12;
    }

    putchar(10);
    result = [(PDControllerType1 *)self printUSBCInfo];
  }

  if (v4 == 1 && !result)
  {
    putchar(10);
    result = [(PDControllerType1 *)self printIECSPDControllerType3SpecificInfo];
  }

LABEL_12:
  if (((v5 & 1) != 0 || v4 == 1) && !result)
  {
    putchar(10);
    return [(PDControllerType1 *)self printROMInfo];
  }

  return result;
}

- (int)printAll
{
  v7 = 0;
  printGPIOState = [(PDControllerType1 *)self isPDControllerType1:&v7];
  v6 = 0;
  if (!printGPIOState)
  {
    printGPIOState = [(PDControllerType1 *)self isPDControllerType3HPM:&v6];
  }

  [(PDControllerType1 *)self printInfo];
  if (v7 == 1 && printGPIOState == 0)
  {
    putchar(10);
    printGPIOState = [(PDControllerType1 *)self printGPIOState];
    if (!printGPIOState)
    {
      putchar(10);
      return [(PDControllerType1 *)self printExpanderGPIOState];
    }
  }

  return printGPIOState;
}

@end