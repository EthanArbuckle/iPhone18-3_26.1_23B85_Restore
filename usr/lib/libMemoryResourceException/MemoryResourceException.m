@interface MemoryResourceException
+ (id)resourceExceptionFromLogFileHandle:(id)a3 error:(id *)a4;
+ (id)resourceExceptionFromTask:(unsigned int)a3 error:(id *)a4;
+ (void)extractExecNameAndBundleIDMinimal:(unsigned int)a3 execNameOut:(id *)a4 bundleIDOut:(id *)a5;
- (BOOL)isFirstParty;
- (id)_symbolOwners;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createLiteMetaDataDict;
- (id)createMetaDataDict;
- (id)prettyPrintBacktrace:(BOOL)a3;
- (id)prettyPrintBinaryImages;
- (id)prettyPrintIOAccelMemoryInfo;
- (id)prettyPrintIOSurfaceInfo;
- (int64_t)_saveLogFileWithHandle:(id)a3 error:(id *)a4;
- (void)_populateAddtionalMetadataWithOptions:(unint64_t)a3 timeoutSecs:(unint64_t)a4;
- (void)dealloc;
- (void)populateAdditionalMetadataWithDiagnostics:(BOOL)a3;
- (void)releaseAnalyzedTask;
@end

@implementation MemoryResourceException

- (void)releaseAnalyzedTask
{
  suspensionToken = self->_suspensionToken;
  if (suspensionToken)
  {
    task_resume2(suspensionToken);
    self->_suspensionToken = 0;
  }

  task = self->_task;
  if (task)
  {
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], task, 0, -1);
    self->_task = 0;
  }
}

- (id)createMetaDataDict
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v4 = [MEMORY[0x29EDBA070] numberWithInteger:self->_version];
  [v3 setObject:v4 forKeyedSubscript:qword_2A13A53C0];

  v5 = [MEMORY[0x29EDBA070] numberWithInt:self->_pid];
  [v3 setObject:v5 forKeyedSubscript:qword_2A13A53C8];

  v6 = [MEMORY[0x29EDBA070] numberWithInt:self->_ppid];
  [v3 setObject:v6 forKeyedSubscript:qword_2A13A53D0];

  v7 = qword_2A13A53E0;
  v8 = self->_execPath;
  [v3 setObject:v8 forKeyedSubscript:v7];
  [v3 setObject:self->_execName forKeyedSubscript:qword_2A13A53D8];
  [v3 setObject:self->_bundleID forKeyedSubscript:qword_2A13A53E8];
  [v3 setObject:self->_coalitionBundleID forKeyedSubscript:qword_2A13A53F0];
  v9 = [MEMORY[0x29EDBA070] numberWithLongLong:self->_upTime];
  [v3 setObject:v9 forKeyedSubscript:qword_2A13A5420];

  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_dirtyFlags];
  [v3 setObject:v10 forKeyedSubscript:qword_2A13A5430];

  v11 = [MEMORY[0x29EDBA070] numberWithBool:self->_is64Bit];
  [v3 setObject:v11 forKeyedSubscript:qword_2A13A5428];

  v12 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_limitValue];
  [v3 setObject:v12 forKeyedSubscript:qword_2A13A5408];

  v13 = [MEMORY[0x29EDBA070] numberWithInteger:self->_exceptionType];
  [v3 setObject:v13 forKeyedSubscript:qword_2A13A53F8];

  [v3 setObject:self->_memgraphError forKeyedSubscript:qword_2A13A5400];
  [v3 setObject:self->_hwModel forKeyedSubscript:qword_2A13A5410];
  [v3 setObject:self->_osVersion forKeyedSubscript:qword_2A13A5418];
  v14 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPhysFootprint];
  [v3 setObject:v14 forKeyedSubscript:qword_2A13A5458];

  v15 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPhysFootprintPeak];
  [v3 setObject:v15 forKeyedSubscript:qword_2A13A5460];

  v16 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerInternal];
  [v3 setObject:v16 forKeyedSubscript:qword_2A13A5468];

  v17 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerInternalCompressed];
  [v3 setObject:v17 forKeyedSubscript:qword_2A13A5470];

  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerAlternateAccounting];
  [v3 setObject:v18 forKeyedSubscript:qword_2A13A5478];

  v19 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerAlternateAccountingCompressed];
  [v3 setObject:v19 forKeyedSubscript:qword_2A13A5480];

  v20 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPurgeableNonvolatile];
  [v3 setObject:v20 forKeyedSubscript:qword_2A13A5488];

  v21 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPurgeableNonvolatileCompressed];
  [v3 setObject:v21 forKeyedSubscript:qword_2A13A5490];

  v22 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerIOKitMapped];
  [v3 setObject:v22 forKeyedSubscript:qword_2A13A54A0];

  v23 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPageTable];
  [v3 setObject:v23 forKeyedSubscript:qword_2A13A5498];

  v24 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerWiredMem];
  [v3 setObject:v24 forKeyedSubscript:qword_2A13A54A8];

  v25 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerNetworkNonvolatile];
  [v3 setObject:v25 forKeyedSubscript:qword_2A13A54B0];

  v26 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerNetworkNonvolatileCompressed];
  [v3 setObject:v26 forKeyedSubscript:qword_2A13A54B8];

  [v3 setObject:self->_footprintOutput forKeyedSubscript:qword_2A13A5450];
  [v3 setObject:self->_executionStack forKeyedSubscript:qword_2A13A5438];
  [v3 setObject:self->_osLogs forKeyedSubscript:qword_2A13A5440];
  [v3 setObject:self->_ioSurfaceInfo forKeyedSubscript:qword_2A13A54C0];
  [v3 setObject:self->_ioAccelMemoryInfo forKeyedSubscript:qword_2A13A54C8];
  [v3 setObject:self->_ioAccelMemoryInfoErrors forKeyedSubscript:qword_2A13A54D0];
  objc_storeStrong(&self->_cachedMetaDataDict, v3);

  return v3;
}

- (id)_symbolOwners
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5518];
  v3 = v2;
  if (v2)
  {
    [MEMORY[0x29EDB8E00] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v26 = v25 = v3;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      v8 = *MEMORY[0x29EDB8ED8];
      v9 = *MEMORY[0x29EDC0E50];
      v27 = *MEMORY[0x29EDC0E50];
      v28 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = CFUUIDCreateFromString(v8, v11);
          if (v12)
          {
            v13 = v12;
            v14 = [v4 objectForKeyedSubscript:v11];
            v15 = [v14 objectForKeyedSubscript:v9];

            if (v15 && (v16 = CFURLCreateWithFileSystemPath(v8, v15, kCFURLPOSIXPathStyle, 0)) != 0)
            {
              v17 = v16;
              v18 = CFRetain(v16);
              v19 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
              *v19 = 0;
              v19[1] = 0;
              CSSymbolicatorForeachSymbolicatorWithURL();
              CFRelease(v17);
              if (v18)
              {
                CFRelease(v18);
              }

              CFRelease(v13);
              v20 = *v19;
              v21 = v19[1];
              if (CSIsNull())
              {
                free(v19);
              }

              else
              {
                v22 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytesNoCopy:v19 length:16 deallocator:&unk_2A1E8F930];
                [v26 setObject:v22 forKeyedSubscript:v11];
              }

              v9 = v27;
              v7 = v28;
            }

            else
            {
              CFRelease(v13);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v6);
    }

    v3 = v25;
  }

  else
  {
    v26 = 0;
  }

  v23 = *MEMORY[0x29EDCA608];

  return v26;
}

- (id)prettyPrintBacktrace:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x29EDB8DE8] array];
  v6 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5500];
  v42 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5508];
  v50 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5518];
  v7 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5510];
  if (v3)
  {
    v46 = [(MemoryResourceException *)self _symbolOwners];
  }

  else
  {
    v46 = 0;
  }

  if ([v6 count])
  {
    v8 = 0;
    v48 = v5;
    v49 = *MEMORY[0x29EDC0E58];
    v51 = self;
    v40 = v7;
    v41 = v6;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v9 = [v42 objectAtIndex:v8];
      if ([v9 length])
      {
        v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Thread %d name:  %@", v8, v9];
        [v5 addObject:v10];
      }

      v11 = MEMORY[0x29EDBA0F8];
      v43 = v9;
      if (v7)
      {
        v12 = [v7 integerValue];
        v13 = &stru_2A1E8FC50;
        if (v12 == v8)
        {
          v13 = @" Attributed";
        }
      }

      else
      {
        v13 = &stru_2A1E8FC50;
      }

      v14 = [v11 stringWithFormat:@"Thread %d%@:", v8, v13];
      [v5 addObject:v14];

      v45 = v8;
      v15 = [v6 objectAtIndex:v8];
      if ([v15 count])
      {
        break;
      }

LABEL_42:
      [v5 addObject:&stru_2A1E8FC50];

      objc_autoreleasePoolPop(context);
      v8 = v45 + 1;
      v6 = v41;
      v7 = v40;
      if ([v41 count] <= (v45 + 1))
      {
        goto LABEL_45;
      }
    }

    v16 = 0;
    v52 = v15;
    while (1)
    {
      v17 = [v15 objectAtIndex:v16];
      v18 = [v17 objectForKey:qword_2A13A54D8];
      v53 = [v18 unsignedLongLongValue];

      v19 = [v17 objectForKeyedSubscript:qword_2A13A54F8];
      if (!v19)
      {
        break;
      }

      v20 = [v50 objectForKeyedSubscript:v19];
      v21 = v20;
      if (!v20)
      {
        goto LABEL_20;
      }

      v22 = [v20 objectForKey:v49];
      if (!v22)
      {
        goto LABEL_20;
      }

LABEL_21:
      if ([(__CFString *)v22 length]< 0x1F)
      {
        v25 = [(__CFString *)v22 stringByPaddingToLength:30 withString:@" " startingAtIndex:0];
      }

      else
      {
        v23 = MEMORY[0x29EDBA0F8];
        v24 = [(__CFString *)v22 substringFromIndex:[(__CFString *)v22 length]- 27];
        v25 = [v23 stringWithFormat:@"...%@", v24];

        v22 = v24;
      }

      v26 = [v21 objectForKey:@"StartAddress"];
      v27 = [v26 unsignedLongLongValue];

      v28 = [v17 objectForKey:qword_2A13A54E8];
      v29 = [v17 objectForKey:qword_2A13A54E0];
      v30 = [v29 unsignedLongLongValue];

      if (!v28)
      {
        if (v19)
        {
          v31 = [v46 objectForKeyedSubscript:v19];
          v32 = [v31 bytes];

          if (v32)
          {
            v33 = *v32;
            v34 = v32[1];
          }
        }

        if (CSIsNull() & 1) != 0 || (v47 = v27 - CSSymbolOwnerGetBaseAddress(), CSSymbolOwnerGetSymbolWithAddress(), (CSIsNull()) || (Name = CSSymbolGetName()) == 0 || ([MEMORY[0x29EDBA0F8] stringWithUTF8String:Name], v28 = objc_claimAutoreleasedReturnValue(), v30 = CSSymbolGetRange() + v47, !v28))
        {
          v28 = @"???";
        }

        v5 = v48;
      }

      is64Bit = v51->_is64Bit;
      if (v30)
      {
        if (v51->_is64Bit)
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"%-3d %@\t%#018qx %@ + %qd%@", v16, v25, v53, v28, v53 - v30, &stru_2A1E8FC50];
        }

        else
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"%-3d %@\t%#010lx %@ + %ld%@", v16, v25, v53, v28, v53 - v30, &stru_2A1E8FC50];
        }
      }

      else if (v51->_is64Bit)
      {
        [MEMORY[0x29EDBA0F8] stringWithFormat:@"%-3d %@\t%#018qx %#qx + %qd%@", v16, v25, v53, v27, v53 - v27, &stru_2A1E8FC50];
      }

      else
      {
        [MEMORY[0x29EDBA0F8] stringWithFormat:@"%-3d %@\t%#010lx %#lx + %ld%@", v16, v25, v53, v27, v53 - v27, &stru_2A1E8FC50];
      }
      v37 = ;
      [v5 addObject:v37];

      ++v16;
      v15 = v52;
      if ([v52 count] <= v16)
      {
        goto LABEL_42;
      }
    }

    v21 = 0;
LABEL_20:
    v22 = @"???";
    goto LABEL_21;
  }

  [v5 addObject:@"Backtrace not available"];
LABEL_45:
  v38 = [v5 componentsJoinedByString:@"\n"];

  return v38;
}

- (id)prettyPrintBinaryImages
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5518];
  v3 = v2;
  if (v2 && [v2 count])
  {
    v32 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(v3, "count") + 1}];
    [v32 addObject:@"Binary Images:"];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = v3;
    obj = [v3 allValues];
    v4 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v39;
      v35 = *MEMORY[0x29EDC0E48];
      v7 = *MEMORY[0x29EDC0E50];
      v30 = *MEMORY[0x29EDC0E50];
      v31 = *MEMORY[0x29EDC0E58];
      do
      {
        v8 = 0;
        v33 = v5;
        do
        {
          if (*v39 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v38 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          v11 = [v9 objectForKey:@"StartAddress"];
          if (v11)
          {
            v12 = [v9 objectForKey:v35];
            v13 = [v12 stringByReplacingOccurrencesOfString:@"-" withString:&stru_2A1E8FC50];

            v14 = [v13 lowercaseString];

            if (v14)
            {
              v15 = [v11 unsignedLongLongValue];
              v16 = [v9 objectForKey:v31];
              v17 = [v9 objectForKey:@"Size"];
              v37 = v10;
              v18 = [v17 unsignedLongLongValue];

              v36 = MEMORY[0x29EDBA0F8];
              v19 = v15 + v18 - 1;
              v20 = v6;
              if (v16)
              {
                v21 = v16;
              }

              else
              {
                v21 = @"???";
              }

              v22 = [v9 objectForKey:qword_2A13A54F0];
              v23 = [v9 objectForKey:v30];
              v28 = v21;
              v6 = v20;
              v24 = [v36 stringWithFormat:@"%p - %p %@ %@  <%@> %@", v15, v19, v28, v22, v14, v23];
              [v32 addObject:v24];

              v5 = v33;
              v10 = v37;
            }
          }

          objc_autoreleasePoolPop(v10);
          ++v8;
        }

        while (v5 != v8);
        v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v5);
    }

    v25 = [v32 componentsJoinedByString:@"\n"];

    v3 = v29;
  }

  else
  {
    v25 = @"Binary Images not found";
  }

  v26 = *MEMORY[0x29EDCA608];

  return v25;
}

- (id)prettyPrintIOSurfaceInfo
{
  v37 = *MEMORY[0x29EDCA608];
  if (self->_ioSurfaceInfo)
  {
    v3 = [MEMORY[0x29EDBA050] string];
    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"IOSurface info for %@ [%d] (Count: %lu):\n", self->_execName, self->_pid, -[NSArray count](self->_ioSurfaceInfo, "count")];
    v26 = v3;
    [v3 appendString:v4];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = self->_ioSurfaceInfo;
    v27 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v27)
    {
      goto LABEL_14;
    }

    v25 = *v33;
    while (1)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:qword_2A13A5520];
        v8 = [v6 objectForKeyedSubscript:qword_2A13A5530];
        v9 = [v6 objectForKeyedSubscript:qword_2A13A5538];
        v10 = [v6 objectForKeyedSubscript:qword_2A13A5548];
        v11 = [v6 objectForKeyedSubscript:qword_2A13A5540];
        v12 = [v6 objectForKeyedSubscript:qword_2A13A5528];
        v30 = v10;
        v13 = [v10 unsignedIntValue];
        v14 = v13;
        v15 = HIBYTE(v13);
        if ((v13 & 0x80000000) != 0)
        {
          if (__maskrune(HIBYTE(v13), 0x800uLL))
          {
LABEL_9:
            __str[0] = v15;
            __str[1] = BYTE2(v14);
            __str[2] = BYTE1(v14);
            __str[3] = v14;
            __str[4] = 0;
            goto LABEL_12;
          }
        }

        else if ((*(MEMORY[0x29EDCA600] + 4 * v15 + 60) & 0x800) != 0)
        {
          goto LABEL_9;
        }

        snprintf(__str, 5uLL, "%4d", v14);
LABEL_12:
        v16 = MEMORY[0x29EDBA0F8];
        v17 = [v7 intValue];
        v29 = v7;
        v18 = [v8 intValue];
        v28 = v8;
        v19 = [v9 intValue];
        [v11 unsignedLongLongValue];
        v20 = NSLocalizedFileSizeDescription();
        v21 = [v16 stringWithFormat:@"  Surface ID: %08x, dims: %4d x %4d, fmt: %s, size: %7s, name: %-40.40s\n", v17, v18, v19, __str, objc_msgSend(v20, "UTF8String"), objc_msgSend(v12, "UTF8String")];

        [v26 appendString:v21];
      }

      v27 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (!v27)
      {
LABEL_14:

        goto LABEL_16;
      }
    }
  }

  v26 = 0;
LABEL_16:
  v22 = *MEMORY[0x29EDCA608];

  return v26;
}

- (id)prettyPrintIOAccelMemoryInfo
{
  v59 = *MEMORY[0x29EDCA608];
  ioAccelMemoryInfo = self->_ioAccelMemoryInfo;
  if (ioAccelMemoryInfo && [(NSArray *)ioAccelMemoryInfo count])
  {
    v4 = [MEMORY[0x29EDBA050] string];
    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"IOAccel Memory info for %@ [%d] (Count: %lu):\n", self->_execName, self->_pid, -[NSArray count](self->_ioAccelMemoryInfo, "count")];
    [v4 appendString:v5];

    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s %s %s %s %s %s\n", "Size      ", "Resident  ", "Dirty     ", "IOSurfaceID", "     State", "Description"];
    v35 = v4;
    [v4 appendString:v6];

    v7 = [@"\n" stringByPaddingToLength:57 withString:@" " startingAtIndex:0];
    [(NSArray *)self->_ioAccelMemoryInfo sortedArrayUsingComparator:&unk_2A1E8F950];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v56 = 0u;
    v36 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v36)
    {
      v34 = *v54;
      do
      {
        v8 = 0;
        do
        {
          if (*v54 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v47 = v8;
          v9 = *(*(&v53 + 1) + 8 * v8);
          v10 = [v9 objectForKeyedSubscript:qword_2A13A5568];
          v11 = [v9 objectForKeyedSubscript:qword_2A13A5578];
          v48 = [v9 objectForKeyedSubscript:qword_2A13A5570];
          v12 = [v9 objectForKeyedSubscript:qword_2A13A5550];
          v13 = [v9 objectForKeyedSubscript:qword_2A13A5580];
          v14 = [v9 objectForKeyedSubscript:qword_2A13A5588];
          v15 = [v9 objectForKeyedSubscript:qword_2A13A5558];
          if ([v12 unsignedLongLongValue])
          {
            v43 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%llu", objc_msgSend(v12, "unsignedLongLongValue")];
          }

          else
          {
            v43 = @"-";
          }

          v16 = [v13 BOOLValue];
          v17 = @"Wired";
          if ((v16 & 1) == 0)
          {
            v18 = [v14 BOOLValue];
            v17 = @"Normal";
            if (v18)
            {
              v17 = @"Purgeable";
            }
          }

          v42 = v17;
          v44 = v14;
          v45 = v13;
          v46 = v12;
          v19 = [MEMORY[0x29EDBA050] string];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v20 = v15;
          v21 = [v20 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v50;
            v24 = 1;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v50 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v26 = *(*(&v49 + 1) + 8 * i);
                if ((v24 & 1) == 0)
                {
                  [v19 appendString:v7];
                }

                [v19 appendString:v26];
                v24 = 0;
              }

              v22 = [v20 countByEnumeratingWithState:&v49 objects:v57 count:16];
              v24 = 0;
            }

            while (v22);
          }

          v39 = MEMORY[0x29EDBA0F8];
          [v10 unsignedLongLongValue];
          v38 = NSLocalizedFileSizeDescription();
          v37 = [v38 UTF8String];
          [v11 unsignedLongLongValue];
          NSLocalizedFileSizeDescription();
          v27 = v41 = v10;
          v28 = [v27 UTF8String];
          [v48 unsignedLongLongValue];
          NSLocalizedFileSizeDescription();
          v29 = v40 = v11;
          v30 = [v39 stringWithFormat:@"%-*s %-*s %-*s %*s %*s %s\n", 10, v37, 10, v28, 10, objc_msgSend(v29, "UTF8String"), 11, -[__CFString UTF8String](v43, "UTF8String"), 10, -[__CFString UTF8String](v42, "UTF8String"), objc_msgSend(v19, "UTF8String")];

          [v35 appendString:v30];
          v8 = v47 + 1;
        }

        while (v47 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v36);
    }
  }

  else
  {
    v35 = 0;
  }

  v31 = *MEMORY[0x29EDCA608];

  return v35;
}

- (id)createLiteMetaDataDict
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  [v3 setObject:self->_execName forKeyedSubscript:qword_2A13A53D8];
  [v3 setObject:self->_bundleID forKeyedSubscript:qword_2A13A53E8];
  v4 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPhysFootprint];
  [v3 setObject:v4 forKeyedSubscript:qword_2A13A5458];

  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPhysFootprintPeak];
  [v3 setObject:v5 forKeyedSubscript:qword_2A13A5460];

  v6 = [MEMORY[0x29EDBA070] numberWithInteger:self->_exceptionType];
  [v3 setObject:v6 forKeyedSubscript:qword_2A13A53F8];

  v7 = [MEMORY[0x29EDBA070] numberWithBool:self->_isMSLEnabled];
  [v3 setObject:v7 forKeyedSubscript:qword_2A13A5448];

  return v3;
}

- (int64_t)_saveLogFileWithHandle:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x29EDCA608];
  v6 = a3;
  if (v6)
  {
    memoryGraph = self->_memoryGraph;
    if (memoryGraph)
    {
      v8 = [(VMUProcessObjectGraph *)memoryGraph plistRepresentationWithOptions:1];
      if (v8)
      {
        v9 = [MEMORY[0x29EDBA0C0] propertyListWithData:v8 options:1 format:0 error:a4];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v9)
          {
            v10 = 0;
LABEL_17:
            v13 = [(MemoryResourceException *)self createMetaDataDict];
            [v9 setObject:v13 forKeyedSubscript:qword_2A13A53B8];

            v14 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:v9 format:200 options:0 error:a4];
            if (v14)
            {
              [v6 writeData:v14];
            }

            else
            {
              v10 = 2;
            }

            goto LABEL_21;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error converting serialized plist data to an NSDictionary object!", buf, 2u);
          }
        }

LABEL_16:
        v9 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        v10 = 1;
        goto LABEL_17;
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error serializing memgraph to plist representation!", buf, 2u);
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  if (a4)
  {
    v11 = MEMORY[0x29EDB9FA0];
    v12 = MREErrorDomain;
    v18 = *MEMORY[0x29EDB9ED8];
    v19[0] = @"File handle is nil";
    v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a4 = [v11 errorWithDomain:v12 code:2 userInfo:v9];
    v10 = 2;
LABEL_21:

    goto LABEL_22;
  }

  v10 = 2;
LABEL_22:

  v15 = *MEMORY[0x29EDCA608];
  return v10;
}

- (void)dealloc
{
  [(MemoryResourceException *)self releaseAnalyzedTask];
  v3.receiver = self;
  v3.super_class = MemoryResourceException;
  [(MemoryResourceException *)&v3 dealloc];
}

+ (id)resourceExceptionFromTask:(unsigned int)a3 error:(id *)a4
{
  v59 = *MEMORY[0x29EDCA608];
  if (a3 - 1 >= 0xFFFFFFFE)
  {
    if (a4)
    {
      v7 = MEMORY[0x29EDB9FA0];
      v8 = MREErrorDomain;
      v9 = 9;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v6 = MEMORY[0x29EDCA6B0];
  if (mach_port_mod_refs(*MEMORY[0x29EDCA6B0], a3, 0, 1))
  {
    if (a4)
    {
      v7 = MEMORY[0x29EDB9FA0];
      v8 = MREErrorDomain;
      v9 = 3;
LABEL_7:
      [v7 errorWithDomain:v8 code:v9 userInfo:0];
      *a4 = v10 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  suspend_token = 0;
  if (task_suspend2(a3, &suspend_token))
  {
    if (a4)
    {
      *a4 = [MEMORY[0x29EDB9FA0] errorWithDomain:MREErrorDomain code:3 userInfo:0];
    }

    mach_port_mod_refs(*v6, a3, 0, -1);
    goto LABEL_12;
  }

  v13 = [MemoryResourceException alloc];
  if (!v13)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v14 = suspend_token;
  v15 = [(MemoryResourceException *)v13 init];
  v10 = v15;
  if (v15)
  {
    *(v15 + 136) = 1;
    *(v15 + 20) = a3;
    *(v15 + 24) = v14;
    if (qword_2A18A6018 != -1)
    {
      dispatch_once(&qword_2A18A6018, &unk_2A1E8F970);
    }

    objc_storeStrong((v10 + 120), qword_2A18A6008);
    objc_storeStrong((v10 + 128), qword_2A18A6010);
    buffer[0].tv_sec = 0;
    *&buffer[0].tv_usec = 0;
    if (!gettimeofday(buffer, 0))
    {
      v16 = sub_297E280B0(buffer[0].tv_sec, buffer[0].tv_usec);
      v17 = *(v10 + 192);
      *(v10 + 192) = v16;
    }

    v18 = *(v10 + 20);
    buffer[0].tv_sec = MEMORY[0x29EDCA5F8];
    *&buffer[0].tv_usec = 3221225472;
    buffer[1].tv_sec = sub_297E284D4;
    *&buffer[1].tv_usec = &unk_29EE848F8;
    v58 = v10;
    if (sub_297E278A4(v18, buffer))
    {
      [*(v10 + 192) timeIntervalSinceDate:*(v10 + 184)];
      v20 = v19;
      if (v19 <= 0.0)
      {
        v20 = -1;
      }

      *(v10 + 112) = v20;
      v21 = *(v10 + 200);
      if (!v21)
      {
        goto LABEL_44;
      }

      if (v21 >> 61 != 3)
      {
        goto LABEL_43;
      }

      v22 = (v21 >> 58) & 7;
      if (v22 == 1)
      {
        v47 = (*(v10 + 36) & 0xD) == 1;
        if ((v21 & 0xFF000000) != 0)
        {
          v21 = 2;
        }

        else
        {
          v21 = 4;
        }

        if ((*(v10 + 36) & 0xD) == 1)
        {
          ++v21;
        }

        goto LABEL_44;
      }

      if (v22 == 2)
      {
        v21 = 7;
      }

      else
      {
LABEL_43:
        v21 = 8;
      }

LABEL_44:
      *(v10 + 96) = v21;
      v36 = sub_297E28120(*(v10 + 176));
      v42 = sub_297E28198(*(v10 + 32), *(v10 + 72), v36);
      v43 = *(v10 + 80);
      *(v10 + 80) = v42;

      v44 = sub_297E282C8(v36);
      v45 = *(v10 + 88);
      *(v10 + 88) = v44;

      v46 = sub_297E28364(*(v10 + 20), *(v10 + 28), *(v10 + 64));
      *(v10 + 17) = v46;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
      {
        v48 = *(v10 + 28);
        *buf = 136315650;
        v52 = "[MemoryResourceException extractCorpseInfo]";
        v53 = 1024;
        v54 = v48;
        v55 = 1024;
        v56 = v46;
        _os_log_debug_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s - for pid (%i), isMSLEnabled = %{BOOL}d", buf, 0x18u);
      }

LABEL_46:

      goto LABEL_13;
    }

    v23 = *(v10 + 20);
    if (v23 && !pid_for_task(v23, (v10 + 28)) && !proc_get_dirty(*(v10 + 28), (v10 + 36)))
    {
      v24 = sub_297E27F50(*(v10 + 28));
      v25 = *(v10 + 72);
      *(v10 + 72) = v24;

      v26 = [*(v10 + 72) lastPathComponent];
      v27 = *(v10 + 64);
      *(v10 + 64) = v26;

      v28 = sub_297E27FE0(*(v10 + 28));
      if (v28)
      {
        v29 = v28;
        *(v10 + 32) = v28[140];
        v30 = sub_297E280B0(*v28, v28[2]);
        v31 = *(v10 + 184);
        *(v10 + 184) = v30;

        [*(v10 + 192) timeIntervalSinceDate:*(v10 + 184)];
        v33 = v32;
        if (v32 <= 0.0)
        {
          v33 = -1;
        }

        *(v10 + 112) = v33;
        *(v10 + 16) = (v29[32] & 4) != 0;
        free(v29);
      }

      *(v10 + 96) = 0;
      v34 = *(v10 + 28);
      v58 = 0;
      memset(buffer, 0, sizeof(buffer));
      if (proc_pidinfo(v34, 20, 1uLL, buffer, 40) == 40)
      {
        tv_sec = buffer[0].tv_sec;
      }

      else
      {
        tv_sec = 1;
      }

      *(v10 + 176) = tv_sec;
      v36 = sub_297E28120(tv_sec);
      v37 = sub_297E28198(*(v10 + 32), *(v10 + 72), v36);
      v38 = *(v10 + 80);
      *(v10 + 80) = v37;

      v39 = sub_297E282C8(v36);
      v40 = *(v10 + 88);
      *(v10 + 88) = v39;

      v41 = sub_297E28364(*(v10 + 20), *(v10 + 28), *(v10 + 64));
      *(v10 + 17) = v41;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
      {
        v49 = *(v10 + 28);
        LODWORD(buffer[0].tv_sec) = 136315650;
        *(&buffer[0].tv_sec + 4) = "[MemoryResourceException extractTaskInfo]";
        *(&buffer[0].tv_usec + 2) = 1024;
        *(&buffer[0].tv_usec + 6) = v49;
        WORD1(buffer[1].tv_sec) = 1024;
        HIDWORD(buffer[1].tv_sec) = v41;
        _os_log_debug_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s - for pid (%i), isMSLEnabled = %{BOOL}d", buffer, 0x18u);
      }

      *(v10 + 18) = 0;
      goto LABEL_46;
    }
  }

LABEL_13:
  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (void)populateAdditionalMetadataWithDiagnostics:(BOOL)a3
{
  v3 = a3;
  [(MemoryResourceException *)self _populateAddtionalMetadataWithOptions:0 timeoutSecs:60];
  if (v3)
  {

    MEMORY[0x2A1C70FE8](self, sel__generateMemgraphWithContentLevel_timeoutSecs_memgraphFailedReasonOut_);
  }
}

- (void)_populateAddtionalMetadataWithOptions:(unint64_t)a3 timeoutSecs:(unint64_t)a4
{
  v80 = a3;
  v118 = *MEMORY[0x29EDCA608];
  v81 = sub_297E279C8(self);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v81;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Generating footprint for %@", buf, 0xCu);
  }

  if (self && self->_task)
  {
    [FPFootprint setBreakDownPhysFootprint:1];
    [FPFootprint setSharingAnalysisDisabled:1];
    [FPFootprint setVmRegionInfoFlags:1];
    v4 = sub_297E2E0BC([FPCorpseProcess alloc], self->_task, self->_pid, self->_execName, self->_dirtyFlags, self->_procFlags);
    v5 = v4;
    if (v4)
    {
      ledgerPageTable = self->_ledgerPageTable;
      v109 = *&self->_ledgerPhysFootprint;
      v110 = 0;
      v111 = 0;
      *thread_info_outCnt = ledgerPageTable;
      [v4 addLedgerData:thread_info_outCnt count:5];
      v7 = [FPFootprint alloc];
      v114 = v5;
      v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v114 count:1];
      v9 = [(FPFootprint *)v7 initWithProcesses:v8];

      [(FPFootprint *)v9 gatherData:1];
      [(FPFootprint *)v9 analyzeData];
      sub_297E36E10();
      v10 = sub_297E39E48(v9, 1);
      if (v10)
      {
        v113 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_297E380A4(FPFootprint, v10, buf);
        v11 = objc_alloc_init(MREOutputFormatterInMemory);
        p_isa = &v11->super.isa;
        if (v11)
        {
          [(MREOutputFormatterInMemory *)v11 printSummaryCategories:v10 total:buf hadErrors:0];
          objc_storeStrong(&self->_footprintOutput, p_isa[2]);
        }
      }
    }
  }

  dsema = dispatch_semaphore_create(0);
  if ((v80 & 2) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v81;
      _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Starting IOAccel memory info collection (asynchronous) for %@", buf, 0xCu);
    }

    v13 = MEMORY[0x29EDC55A0];
    v14 = dispatch_get_global_queue(0, 0);
    v105[0] = MEMORY[0x29EDCA5F8];
    v105[1] = 3221225472;
    v105[2] = sub_297E2B808;
    v105[3] = &unk_29EE84980;
    v105[4] = self;
    v106 = dsema;
    [v13 collectDataWithCompletionQueue:v14 completionBlock:v105];
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v81;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Generating backtrace info for %@", buf, 0xCu);
  }

  if (!self)
  {
    goto LABEL_72;
  }

  v91 = [objc_alloc(MEMORY[0x29EDC6D98]) initWithPID:self->_pid task:self->_task processName:self->_execName is64Bit:self->_is64Bit options:64];
  v88 = [v91 sampleAllThreadsOnce];
  v87 = [v88 count];
  if (!v87)
  {
    goto LABEL_71;
  }

  [v91 symbolicator];
  if (!CSIsNull())
  {
    CSRetain();
    goto LABEL_25;
  }

  CSSymbolicatorGetFlagsForNoSymbolOrSourceInfoData();
  task = self->_task;
  CSSymbolicatorCreateWithTaskFlagsAndNotification();
  if (!CSIsNull())
  {
LABEL_25:
    v85 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:v87];
    v86 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:v87];
    v98 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v16 = 0;
    v89 = -1;
    v83 = *MEMORY[0x29EDC0E58];
    v84 = *MEMORY[0x29EDC0E48];
    v82 = *MEMORY[0x29EDC0E50];
    while (1)
    {
      v92 = v16;
      v96 = [v88 objectAtIndexedSubscript:?];
      v17 = [v96 thread];
      v18 = v17;
      if (self->_crashedThreadId && (v89 & 0x80000000) != 0)
      {
        memset(buf, 0, 24);
        thread_info_outCnt[0] = 6;
        v19 = thread_info(v17, 4u, buf, thread_info_outCnt);
        v20 = *buf;
        if (v19)
        {
          v20 = -1;
        }

        if (v20 == self->_crashedThreadId)
        {
          v21 = v92;
        }

        else
        {
          v21 = v89;
        }

        v89 = v21;
      }

      v94 = [v91 threadNameForThread:v18];
      v22 = [v94 length];
      v93 = [v91 dispatchQueueNameForSerialNumber:{objc_msgSend(v96, "dispatchQueueSerialNumber")}];
      v23 = [v93 length];
      v95 = objc_alloc_init(MEMORY[0x29EDBA050]);
      if (v22)
      {
        [v95 appendString:v94];
        if (v23)
        {
          [v95 appendString:@"  "];
LABEL_38:
          [v95 appendFormat:@"Dispatch queue: %@", v93];
        }
      }

      else if (v23)
      {
        goto LABEL_38;
      }

      [v86 addObject:v95];
      v24 = [v96 backtrace];
      v25 = [v96 backtraceLength];
      for (i = [MEMORY[0x29EDB8DE8] arrayWithCapacity:v25];
      {
        v27 = *v24;
        v28 = [MEMORY[0x29EDB8E00] dictionary];
        v29 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:v27];
        [v28 setObject:v29 forKeyedSubscript:qword_2A13A54D8];

        CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
        v30 = v98;
        v31 = v28;
        if ((CSIsNull() & 1) == 0)
        {
          CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
          if (CFUUIDBytes && (v33 = CFUUIDCreateFromUUIDBytes(0, *CFUUIDBytes)) != 0)
          {
            v34 = CFUUIDCreateString(0, v33);
            CFRelease(v33);
            if (v34)
            {
              [v31 setObject:v34 forKeyedSubscript:qword_2A13A54F8];
              v35 = [v30 objectForKeyedSubscript:v34];
              v36 = v35 == 0;

              if (v36)
              {
                v97 = objc_alloc_init(MEMORY[0x29EDB8E00]);
                [v97 setObject:v34 forKeyedSubscript:v84];
                [v30 setObject:v97 forKeyedSubscript:v34];
                Name = CSSymbolOwnerGetName();
                if (Name)
                {
                  v38 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:Name];
                  v39 = v38;
                  if (v38)
                  {
                    v40 = v38;
                  }

                  else
                  {
                    v40 = @"nonprintable-binary";
                  }

                  [v97 setObject:v40 forKeyedSubscript:v83];
                }

                Path = CSSymbolOwnerGetPath();
                if (Path)
                {
                  v42 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:Path];
                  v43 = [v42 stringByStandardizingPath];

                  if (v43)
                  {
                    v44 = v43;
                  }

                  else
                  {
                    v44 = @"nonprintable-path";
                  }

                  [v97 setObject:v44 forKeyedSubscript:v82];
                }

                Architecture = CSSymbolOwnerGetArchitecture();
                v46 = macho_arch_name_for_cpu_type(Architecture, SHIDWORD(Architecture));
                if (v46)
                {
                  v47 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v46];
                }

                else
                {
                  v47 = @"unknown-arch";
                }

                if (v47)
                {
                  v48 = v47;
                }

                else
                {
                  v48 = @"nonprintable-arch";
                }

                [v97 setObject:v48 forKeyedSubscript:qword_2A13A54F0];
                *thread_info_outCnt = 0;
                *&v109 = thread_info_outCnt;
                *(&v109 + 1) = 0x2020000000;
                v110 = 0;
                v114 = 0;
                v115 = &v114;
                v116 = 0x2020000000;
                v117 = 0;
                *buf = MEMORY[0x29EDCA5F8];
                *&buf[8] = 3221225472;
                *&buf[16] = sub_297E2D314;
                *&buf[24] = &unk_29EE849A8;
                *&v113 = thread_info_outCnt;
                *(&v113 + 1) = &v114;
                CSSymbolOwnerForeachSegment();
                if (*(v109 + 24) || v115[3])
                {
                  v49 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:?];
                  [v97 setObject:v49 forKeyedSubscript:@"StartAddress"];

                  v50 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v115[3] - *(v109 + 24) + 1];
                  [v97 setObject:v50 forKeyedSubscript:@"Size"];
                }

                _Block_object_dispose(&v114, 8);
                _Block_object_dispose(thread_info_outCnt, 8);
              }
            }
          }

          else
          {
            v34 = 0;
          }
        }

        [i addObject:v31];
        ++v24;
      }

      [v85 addObject:i];

      v16 = v92 + 1;
      if (v92 + 1 == v87)
      {
        CSRelease();
        v51 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        [(NSDictionary *)v51 setObject:v85 forKeyedSubscript:qword_2A13A5500];
        [(NSDictionary *)v51 setObject:v86 forKeyedSubscript:qword_2A13A5508];
        v52 = [MEMORY[0x29EDBA070] numberWithInt:v89];
        [(NSDictionary *)v51 setObject:v52 forKeyedSubscript:qword_2A13A5510];

        [(NSDictionary *)v51 setObject:v98 forKeyedSubscript:qword_2A13A5518];
        executionStack = self->_executionStack;
        self->_executionStack = v51;

        goto LABEL_71;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to create symbolicator", buf, 2u);
  }

LABEL_71:

LABEL_72:
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v81;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Collecting IOSurface info for %@", buf, 0xCu);
  }

  v99 = [MEMORY[0x29EDBB120] surfaceDescriptions];
  v54 = [MEMORY[0x29EDBA070] numberWithInt:self->_pid];
  v100 = [v99 objectForKeyedSubscript:v54];

  if (v100)
  {
    v55 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v100, "count")}];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v56 = v100;
    v57 = [v56 countByEnumeratingWithState:&v101 objects:v107 count:16];
    if (v57)
    {
      v58 = *v102;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v102 != v58)
          {
            objc_enumerationMutation(v56);
          }

          v60 = *(*(&v101 + 1) + 8 * j);
          objc_opt_self();
          v61 = [MEMORY[0x29EDB8E00] dictionary];
          v62 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(v60, "surfaceID")}];
          [v61 setObject:v62 forKeyedSubscript:qword_2A13A5520];

          v63 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(v60, "pixelFormat")}];
          [v61 setObject:v63 forKeyedSubscript:qword_2A13A5548];

          v64 = [v60 name];
          [v61 setObject:v64 forKeyedSubscript:qword_2A13A5528];

          v65 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v60, "width")}];
          [v61 setObject:v65 forKeyedSubscript:qword_2A13A5530];

          v66 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v60, "height")}];
          [v61 setObject:v66 forKeyedSubscript:qword_2A13A5538];

          v67 = MEMORY[0x29EDBA070];
          v68 = [v60 allocationSize];

          v69 = [v67 numberWithUnsignedLongLong:v68];
          [v61 setObject:v69 forKeyedSubscript:qword_2A13A5540];

          [(NSArray *)v55 addObject:v61];
        }

        v57 = [v56 countByEnumeratingWithState:&v101 objects:v107 count:16];
      }

      while (v57);
    }

    ioSurfaceInfo = self->_ioSurfaceInfo;
    self->_ioSurfaceInfo = v55;
  }

  if ((v80 & 2) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Waiting for IOAccel memory info collection to finish...", buf, 2u);
    }

    v71 = dispatch_time(0, 1000000000 * a4);
    dispatch_semaphore_wait(dsema, v71);
    v72 = MEMORY[0x29EDCA988];
    v73 = MEMORY[0x29EDCA988];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      ioAccelMemoryInfo = self->_ioAccelMemoryInfo;
      if (ioAccelMemoryInfo)
      {
        v75 = [(NSArray *)ioAccelMemoryInfo count];
      }

      else
      {
        v75 = 0;
      }

      v76 = sub_297E279C8(self);
      *buf = 134218242;
      *&buf[4] = v75;
      *&buf[12] = 2112;
      *&buf[14] = v76;
      _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOAccel memory info collection complete. Found a total of %lu entries for %@", buf, 0x16u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[MemoryResourceException _populateAddtionalMetadataWithOptions:timeoutSecs:]";
    *&buf[12] = 2112;
    *&buf[14] = v81;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Finished %s for %@", buf, 0x16u);
  }

  v77 = *MEMORY[0x29EDCA608];
}

- (BOOL)isFirstParty
{
  execName = self->_execName;
  if (!execName || [(NSString *)execName hasPrefix:@"com.apple.WebKit."])
  {
    return 0;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    v6 = @"com.apple.";
  }

  else
  {
    bundleID = self->_execPath;
    if (!bundleID)
    {
      return 0;
    }

    v6 = @"/System/";
  }

  return [(NSString *)bundleID hasPrefix:v6];
}

+ (id)resourceExceptionFromLogFileHandle:(id)a3 error:(id *)a4
{
  v39[1] = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 readDataToEndOfFileAndReturnError:a4];
    if (v7)
    {
      v8 = [MEMORY[0x29EDBA0C0] propertyListWithData:v7 options:0 format:0 error:a4];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
LABEL_27:

          goto LABEL_28;
        }

        v14 = MEMORY[0x29EDBA0F8];
        v15 = [*a4 localizedDescription];
        v9 = [v14 stringWithFormat:@"File is malformed - %@", v15];

        v16 = MEMORY[0x29EDB9FA0];
        v17 = MREErrorDomain;
        v36 = *MEMORY[0x29EDB9ED8];
        v37 = v9;
        v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        [v16 errorWithDomain:v17 code:1 userInfo:v10];
        *a4 = v11 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v9 = [objc_alloc(MEMORY[0x29EDC6D90]) initWithPlistRepresentation:v7];
      v10 = [v8 objectForKeyedSubscript:qword_2A13A53B8];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
LABEL_25:
            v11 = 0;
            goto LABEL_26;
          }

          v23 = MEMORY[0x29EDB9FA0];
          v24 = MREErrorDomain;
          v34 = *MEMORY[0x29EDB9ED8];
          v35 = @"Metadata is malformed";
          v25 = MEMORY[0x29EDB8DC0];
          v26 = &v35;
          v27 = &v34;
LABEL_24:
          v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
          *a4 = [v23 errorWithDomain:v24 code:1 userInfo:v28];

          goto LABEL_25;
        }

        v11 = sub_297E2BEF0([MemoryResourceException alloc], v10, v9, a4);
      }

      else
      {
        v11 = [MemoryResourceException alloc];
        v18 = v9;
        if (v11)
        {
          v31.receiver = v11;
          v31.super_class = MemoryResourceException;
          v11 = objc_msgSendSuper2(&v31, sel_init);
          if (v11)
          {
            v19 = [v18 processName];
            execName = v11->_execName;
            v11->_execName = v19;

            v11->_pid = [v18 pid];
            v21 = [v18 executablePath];
            execPath = v11->_execPath;
            v11->_execPath = v21;

            v11->_upTime = -1;
            *&v11->_exceptionType = xmmword_297E40720;
            v11->_ledgerPhysFootprint = [v18 physicalFootprint];
            v11->_ledgerPhysFootprintPeak = [v18 physicalFootprintPeak];
            objc_storeStrong(&v11->_memoryGraph, v9);
            v11->_task = 0;
          }
        }
      }

      if (!a4 || v11)
      {
        goto LABEL_26;
      }

      if (*a4)
      {
        goto LABEL_25;
      }

      v23 = MEMORY[0x29EDB9FA0];
      v24 = MREErrorDomain;
      v32 = *MEMORY[0x29EDB9ED8];
      v33 = @"Unable to analyze diagnostic";
      v25 = MEMORY[0x29EDB8DC0];
      v26 = &v33;
      v27 = &v32;
      goto LABEL_24;
    }

    v11 = 0;
  }

  else
  {
    if (!a4)
    {
      v11 = 0;
      goto LABEL_29;
    }

    v12 = MEMORY[0x29EDB9FA0];
    v13 = MREErrorDomain;
    v38 = *MEMORY[0x29EDB9ED8];
    v39[0] = @"File does not exist";
    v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [v12 errorWithDomain:v13 code:11 userInfo:v7];
    *a4 = v11 = 0;
  }

LABEL_28:

LABEL_29:
  v29 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(MemoryResourceException *)self createMetaDataDict];
  v5 = self->_memoryGraph;
  v6 = sub_297E2BEF0([MemoryResourceException alloc], v4, v5, 0);

  return v6;
}

+ (void)extractExecNameAndBundleIDMinimal:(unsigned int)a3 execNameOut:(id *)a4 bundleIDOut:(id *)a5
{
  *a4 = 0;
  *a5 = 0;
  x = 0;
  if (!pid_for_task(a3, &x))
  {
    v7 = sub_297E27F50(x);
    *a4 = [v7 lastPathComponent];
    v8 = sub_297E27FE0(x);
    if (v8)
    {
      v9 = v8[140];
      v14 = 0;
      memset(buffer, 0, sizeof(buffer));
      if (proc_pidinfo(x, 20, 1uLL, buffer, 40) == 40)
      {
        v10 = *&buffer[0];
      }

      else
      {
        v10 = 1;
      }

      v11 = sub_297E28120(v10);
      *a5 = sub_297E28198(v9, v7, v11);
    }
  }
}

@end