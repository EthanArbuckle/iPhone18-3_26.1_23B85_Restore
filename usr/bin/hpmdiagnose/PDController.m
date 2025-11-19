@interface PDController
+ (id)knownPDControllers:(int64_t)a3;
- (id)registerFormatter4CCWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterBCDVersionWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterDIDWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterDecimal16WithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterDecimal32MillisecondsWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterDecimal32WithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterDecimal64WithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterDecimal8WithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterHex16WithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterHex32WithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterHexDumpNarrowWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterHexDumpWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterRxVDMWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterUUIDWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (id)registerFormatterVIDWithBuffer:(void *)a3 andLength:(unint64_t)a4;
- (int)printCommand:(unsigned int)a3 withTitle:(id)a4 andFormatter:(SEL)a5 andWriteData:(void *)a6 andWriteDataLength:(unint64_t)a7;
- (int)receiveVDM:(void *)a3 length:(unint64_t)a4 outSop:(int *)a5 outSequence:(char *)a6 outLength:(unint64_t *)a7;
- (int)receiveVDMAttention:(void *)a3 length:(unint64_t)a4 outSop:(int *)a5 outSequence:(char *)a6 outLength:(unint64_t *)a7;
- (int)registerReadRemote:(void *)a3 ofLength:(unint64_t)a4 atAddress:(unsigned int)a5 andOutReadLength:(unint64_t *)a6;
- (int)registerWriteRemote:(void *)a3 ofLength:(unint64_t)a4 atAddress:(unsigned int)a5;
- (int)stress:(unsigned int)a3;
- (int64_t)compare:(id)a3;
- (void)printRegisterTitle:(id)a3 andDescription:(id)a4;
@end

@implementation PDController

+ (id)knownPDControllers:(int64_t)a3
{
  v21 = +[NSMutableArray array];
  v4 = +[AppleHPMUserClientManager sharedInstance];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userClientSet];
    if (v6)
    {
      v7 = v6;
      v20 = v5;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        v9 = v8;
        ChildIterator = 0;
        v11 = *v27;
        v22 = a3;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            iterator = 0;
            if (!ChildIterator)
            {
              ChildIterator = IORegistryEntryGetChildIterator([v13 service], "IOService", &iterator);
              if (!ChildIterator)
              {
                v14 = IOIteratorNext(iterator);
                if (v14)
                {
                  v15 = v14;
                  do
                  {
                    if (IOObjectConformsTo(v15, "AppleHPMDevice"))
                    {
                      v24 = 0;
                      v23 = 0;
                      if (![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Address" outValue:&v24]&& ![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Vendor ID" outValue:&v23 + 4]&& ![IOKitUtilities uint32ForRegistryEntry:v15 andKey:@"Device ID" outValue:&v23])
                      {
                        if (a3 < 0)
                        {
                          v16 = HIDWORD(v23);
                        }

                        else
                        {
                          HIDWORD(v23) = a3;
                          v16 = a3;
                        }

                        v17 = [PDController pdControllerForVID:v16 DID:v23 address:v24 userClient:v13];
                        if (v17)
                        {
                          [v21 addObject:v17];
                        }

                        a3 = v22;
                      }
                    }

                    IOObjectRelease(v15);
                    v15 = IOIteratorNext(iterator);
                  }

                  while (v15);
                }

                if (iterator)
                {
                  IOObjectRelease(iterator);
                }

                ChildIterator = 0;
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v9);
      }

      v5 = v20;
    }
  }

  v18 = [v21 sortedArrayUsingSelector:"compare:"];

  return v18;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PDController *)self userClient];
      v7 = [v6 routerID];
      v8 = [v5 userClient];
      v9 = [v8 routerID];

      if (v7 > v9)
      {
LABEL_4:
        v10 = 1;
LABEL_9:

        goto LABEL_10;
      }

      v11 = [(PDController *)self userClient];
      v12 = [v11 routerID];
      v13 = [v5 userClient];
      v14 = [v13 routerID];

      if (v12 >= v14)
      {
        v16 = [(PDController *)self userClient];
        v17 = [v16 routeString];
        v18 = [v5 userClient];
        v19 = [v18 routeString];

        if (v17 > v19)
        {
          goto LABEL_4;
        }

        v20 = [(PDController *)self userClient];
        v21 = [v20 routeString];
        v22 = [v5 userClient];
        v23 = [v22 routeString];

        if (v21 >= v23)
        {
          v24 = [(PDController *)self address];
          if (v24 <= [v5 address])
          {
            v25 = [(PDController *)self address];
            if (v25 >= [v5 address])
            {
              v10 = 0;
            }

            else
            {
              v10 = -1;
            }

            goto LABEL_9;
          }

          goto LABEL_4;
        }
      }

      v10 = -1;
      goto LABEL_9;
    }

    v10 = [v4 compare:self];
  }

  else
  {
    v10 = 1;
  }

LABEL_10:

  return v10;
}

- (int)registerReadRemote:(void *)a3 ofLength:(unint64_t)a4 atAddress:(unsigned int)a5 andOutReadLength:(unint64_t *)a6
{
  v17 = 1229275987;
  v18 = 0;
  v11 = malloc_type_malloc(0x40uLL, 0x1853CEF8uLL);
  memset(v20, 0, sizeof(v20));
  v19 = (a4 << 24) | (a5 << 8) | 0x10000;
  v12 = [(PDController *)self userClient];
  LODWORD(v16) = 0;
  LODWORD(v15) = 0x400000;
  v13 = [v12 IECSAtomicCommand:1 cmdBuffer:&v17 dataBuffer:v20 extDataBuffer:&v19 returnDataBuffer:v11 returnExtDataBuffer:&v18 inputDataLength:v15 returnDataBufferLength:1 timeoutInSeconds:-[PDController address](self forDevice:"address") flags:v16];

  if (!v13)
  {
    if ((v18 & 0x7C0000) != 0)
    {
      if ([(PDController *)self remote_vid]== 1426071497)
      {
        v13 = 0;
      }

      else
      {
        printf("ERROR: fail code=0x%X\n", BYTE2(v18) & 0x7C);
        [(PDController *)self setRemote:0];
        v13 = -536870165;
      }
    }

    else
    {
      v13 = 0;
      *a6 = (v18 >> 24) & 0x7F;
    }
  }

  memcpy(a3, v11, a4);
  if (!a5)
  {
    [(PDController *)self setRemote_vid:*a3];
  }

  if (v11)
  {
    free(v11);
  }

  return v13;
}

- (int)registerWriteRemote:(void *)a3 ofLength:(unint64_t)a4 atAddress:(unsigned int)a5
{
  v5 = a5;
  v19 = 1396917577;
  v9 = malloc_type_malloc(0x40uLL, 0x3EC852D2uLL);
  v20 = (a4 << 24) | (v5 << 8);
  if (!v9)
  {
    return -536870211;
  }

  v10 = v9;
  v11 = [(PDController *)self userClient];
  v12 = [v11 iecsWriteCommandForDevice:-[PDController address](self withAddress:"address") buffer:19 length:&v20 flags:{a4, 0}];

  if (!v12)
  {
    v13 = [(PDController *)self userClient];
    v12 = [v13 iecsWriteCommandForDevice:-[PDController address](self withAddress:"address") buffer:9 length:a3 flags:{a4, 0}];

    if (!v12)
    {
      v14 = [(PDController *)self userClient];
      [v14 iecsWriteCommandForDevice:-[PDController address](self withAddress:"address") buffer:8 length:&v19 flags:{4, 0}];

      v15 = 99;
      do
      {
        usleep(0x64u);
        v16 = [(PDController *)self userClient];
        v12 = [v16 iecsReadCommandForDevice:-[PDController address](self withAddress:"address") buffer:8 length:v10 flags:a4 andOutReadLength:{0, 0}];
      }

      while (*v10 == 73 && v15-- != 0);
    }
  }

  free(v10);
  return v12;
}

- (int)receiveVDM:(void *)a3 length:(unint64_t)a4 outSop:(int *)a5 outSequence:(char *)a6 outLength:(unint64_t *)a7
{
  v13 = [(PDController *)self userClient];
  LODWORD(a7) = [v13 receiveVDMForDevice:-[PDController address](self buffer:"address") length:a3 flags:a4 outSOP:0 outSequence:a5 outLength:{a6, a7}];

  return a7;
}

- (int)receiveVDMAttention:(void *)a3 length:(unint64_t)a4 outSop:(int *)a5 outSequence:(char *)a6 outLength:(unint64_t *)a7
{
  v13 = [(PDController *)self userClient];
  LODWORD(a7) = [v13 receiveVDMAttentionForDevice:-[PDController address](self buffer:"address") length:a3 flags:a4 outSOP:0 outSequence:a5 outLength:{a6, a7}];

  return a7;
}

- (int)stress:(unsigned int)a3
{
  v5 = malloc_type_malloc(0x40uLL, 0x15E0A7B2uLL);
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_malloc(0x40uLL, 0xE54F4BA9uLL);
    v8 = objc_autoreleasePoolPush();
    v9 = v8;
    if (v7)
    {
      if (a3)
      {
        v10 = 0;
        qmemcpy(v21, "/.-,+*)('&%$#! ?>=<;:9876543210", sizeof(v21));
        while (1)
        {
          printf("Stress cycle %d\n", v10);
          *v6 = v21[1];
          v6[1] = v21[0];
          v6[2] = xmmword_100015A10;
          v6[3] = xmmword_100015A20;
          v11 = [(PDController *)self registerWrite:v6 ofLength:64 atAddress:9];
          if (v11 || (v11 = [(PDController *)self registerRead:v7 ofLength:64 atAddress:9]) != 0)
          {
            v12 = v11;
            goto LABEL_20;
          }

          if (bcmp(v6, v7, 0x40uLL))
          {
            break;
          }

          if (a3 == ++v10)
          {
            goto LABEL_9;
          }
        }

        printf("Mismatch on cycle %d\n", v10);
        puts("Write buffer:");
        v14 = [(PDController *)self registerFormatterHexDumpWithBuffer:v6 andLength:64];
        if ([v14 count])
        {
          v15 = 0;
          do
          {
            v16 = [v14 objectAtIndexedSubscript:v15];
            puts([v16 UTF8String]);

            ++v15;
          }

          while ([v14 count] > v15);
        }

        puts("Read buffer:");
        v17 = [(PDController *)self registerFormatterHexDumpWithBuffer:v7 andLength:64];
        if ([v17 count])
        {
          v18 = 0;
          do
          {
            v19 = [v17 objectAtIndexedSubscript:v18];
            puts([v19 UTF8String]);

            ++v18;
          }

          while ([v17 count] > v18);
        }

        v12 = -536870198;
      }

      else
      {
LABEL_9:
        v12 = 0;
      }

LABEL_20:
      objc_autoreleasePoolPop(v9);
      free(v6);
      v13 = v7;
    }

    else
    {
      v12 = -536870211;
      objc_autoreleasePoolPop(v8);
      v13 = v6;
    }

    free(v13);
  }

  else
  {
    v12 = -536870211;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v12;
}

- (int)printCommand:(unsigned int)a3 withTitle:(id)a4 andFormatter:(SEL)a5 andWriteData:(void *)a6 andWriteDataLength:(unint64_t)a7
{
  v7 = a7;
  v19 = a3;
  v11 = a4;
  v12 = malloc_type_malloc(0x40uLL, 0xB5863B51uLL);
  if (!v12)
  {
    v13 = 3758097085;
    goto LABEL_13;
  }

  WORD1(v18) = 64;
  LOWORD(v18) = v7;
  v13 = [(PDController *)self executeIECSAtomicCommand:1 cmdBuffer:&v19 dataBuffer:a6 extDataBuffer:0 returnDataBuffer:v12 returnExtDataBuffer:0 inputDataLength:v18 returnDataBufferLength:10 timeoutInSeconds:?];
  if (v13)
  {
LABEL_13:
    v14 = [NSString stringWithFormat:@"Status = 0x%08x", v13];
    goto LABEL_14;
  }

  v14 = off_100025A30(self, a5, v12, 64, a6, 64);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    [(PDController *)self printCommand:v19 withTitle:v11 andDescription:v14];
    goto LABEL_15;
  }

  v14 = v14;
  if ([v14 count])
  {
    if ([v14 count])
    {
      v15 = 0;
      do
      {
        v16 = [v14 objectAtIndexedSubscript:v15];
        if (v15)
        {
          [(PDController *)self printCommandDescription:v16];
        }

        else
        {
          [(PDController *)self printCommand:v19 withTitle:v11 andDescription:v16];
        }

        ++v15;
      }

      while ([v14 count] > v15);
    }
  }

  else
  {
    [(PDController *)self printCommand:v19 withTitle:v11 andDescription:&stru_10001C6C8];
  }

LABEL_15:
  if (v12)
  {
    free(v12);
  }

  return v13;
}

- (void)printRegisterTitle:(id)a3 andDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a3 UTF8String];
  v9 = [v7 UTF8String];

  printf("%s\t%s\n", v8, v9);
}

- (id)registerFormatterDecimal8WithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 1)
  {
    [NSString stringWithFormat:@"%d", *a3];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 1", a4];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterDecimal16WithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 2)
  {
    [NSString stringWithFormat:@"%d", *a3];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 2", a4];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterDecimal32WithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 4)
  {
    [NSString stringWithFormat:@"%d", *a3];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", a4];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterDecimal64WithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 8)
  {
    [NSString stringWithFormat:@"%lld", *a3];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 8", a4];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterHex16WithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 2)
  {
    [NSString stringWithFormat:@"0x%04x", *a3];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 2", a4];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterHex32WithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 4)
  {
    [NSString stringWithFormat:@"0x%08x", *a3];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", a4];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatter4CCWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 4)
  {
    [NSString stringWithFormat:@"%c%c%c%c", *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3)];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", a4, v6, v7, v8];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterUUIDWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 16)
  {
    memset(out, 0, 37);
    uuid_unparse(a3, out);
    [NSString stringWithFormat:@"%s", out];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", a4];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterHexDumpWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v6 = +[NSMutableArray array];
  if (!a4)
  {
    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    if (!v8)
    {
      v8 = +[NSMutableString string];
      [(__CFString *)v8 appendFormat:@"0x%02llX\t", a4];
      [(__CFString *)v8 appendString:@"0x"];
    }

    [(__CFString *)v8 appendFormat:@"%02X", *(a3 + v7++)];
  }

  while (a4 != v7);
  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v9 = 0;
    v8 = @"0x00";
  }

  [v6 addObject:v8];

  return v6;
}

- (id)registerFormatterHexDumpNarrowWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v6 = +[NSMutableArray array];
  if (a4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (!v8)
      {
        v8 = +[NSMutableString string];
      }

      [v8 appendFormat:@"0x%02X ", *(a3 + v7++)];
      if ((v7 & 7) == 0 || v7 >= a4)
      {
        [v6 addObject:v8];

        v8 = 0;
      }
    }

    while (a4 != v7);
  }

  else
  {
    v8 = 0;
  }

  return v6;
}

- (id)registerFormatterDecimal32MillisecondsWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 4)
  {
    [NSString stringWithFormat:@"%d ms", *a3];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", a4];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterBCDVersionWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 4)
  {
    [NSString stringWithFormat:@"%X.%X.%X", *(a3 + 1), *(a3 + 1), *a3];
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", a4, v6, v7];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterRxVDMWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  v6 = +[NSMutableString string];
  v7 = v6;
  if (a4 == 29)
  {
    v9 = *a3;
    v8 = (a3 + 1);
    v10 = v9 & 7;
    [v6 appendFormat:@"seq=%d cnt=%d ", (v9 >> 5) & 3, v10];
    if (v10)
    {
      do
      {
        v11 = *v8++;
        [v7 appendFormat:@"0x%08X ", v11];
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    [v6 appendFormat:@"ERROR: length %lld != 29", a4];
  }

  return v7;
}

- (id)registerFormatterVIDWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 4)
  {
    if (*a3 == 40)
    {
      [NSString stringWithFormat:@"0x%08X (TI)", 40];
    }

    else if (*a3 == 2599)
    {
      [NSString stringWithFormat:@"0x%08X (Apple Inc.)", 2599];
    }

    else
    {
      [NSString stringWithFormat:@"0x%08X", *a3];
    }
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", a4];
  }
  v4 = ;

  return v4;
}

- (id)registerFormatterDIDWithBuffer:(void *)a3 andLength:(unint64_t)a4
{
  if (a4 == 4)
  {
    if (*a3 == 24)
    {
      [NSString stringWithFormat:@"0x%08X (PDControllerType1[USB-C])", 24];
    }

    else
    {
      [NSString stringWithFormat:@"0x%08X", *a3];
    }
  }

  else
  {
    [NSString stringWithFormat:@"ERROR: length %lld != 4", a4];
  }
  v4 = ;

  return v4;
}

@end