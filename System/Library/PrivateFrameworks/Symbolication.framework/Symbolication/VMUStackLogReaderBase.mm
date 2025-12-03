@interface VMUStackLogReaderBase
- (BOOL)shouldIgnoreSymbolWithName:(id)name binaryPath:(id)path;
- (_CSTypeRef)symbolicator;
- (_VMURange)binaryImageRangeForPCaddress:(unint64_t)caddress;
- (_VMURange)functionRangeContainingPCaddress:(unint64_t)caddress;
- (id)_allocationTypeNameForStackID:(unint64_t)d returnedBinaryPath:(id *)path;
- (id)binaryImagePathForPCaddress:(unint64_t)caddress;
- (id)functionNameForPCaddress:(unint64_t)caddress;
- (id)identifierForBinaryImagePath:(id)path;
- (id)sourceFileNameAndLineNumberForPCaddress:(unint64_t)caddress fullPath:(BOOL)path;
- (id)sourceFileNameForPCaddress:(unint64_t)caddress;
- (id)sourcePathForPCaddress:(unint64_t)caddress;
- (id)symbolicatedBacktraceForFrames:(unint64_t *)frames frameCount:(int64_t)count options:(unint64_t)options;
- (id)symbolicatedBacktraceForStackID:(unint64_t)d options:(unint64_t)options;
- (unsigned)sourceLineNumberForPCaddress:(unint64_t)caddress;
- (void)identifyNonObjectsUsingStackBacktraces:(id)backtraces classInfoMap:(id)map classInfoSetterBlock:(id)block;
@end

@implementation VMUStackLogReaderBase

- (id)symbolicatedBacktraceForStackID:(unint64_t)d options:(unint64_t)options
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [(VMUStackLogReaderBase *)self symbolicatedBacktraceForFrames:v7 frameCount:[(VMUStackLogReaderBase *)self getFramesForStackID:d stackFramesBuffer:v7] options:options];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)identifierForBinaryImagePath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    lastPathComponent = @"???";
    goto LABEL_11;
  }

  lastPathComponent = [(NSMutableDictionary *)self->_binaryImagePathToIdentifierMap objectForKeyedSubscript:pathCopy];
  if (lastPathComponent)
  {
    goto LABEL_11;
  }

  v6 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], pathCopy, kCFURLPOSIXPathStyle, 1u);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
  if (!v8)
  {
    CFRelease(v7);
LABEL_9:
    lastPathComponent = [(__CFString *)pathCopy lastPathComponent];
    goto LABEL_10;
  }

  v9 = v8;
  lastPathComponent = CFBundleGetIdentifier(v8);
  CFRelease(v9);
  CFRelease(v7);
  if (!lastPathComponent)
  {
    goto LABEL_9;
  }

LABEL_10:
  [(NSMutableDictionary *)self->_binaryImagePathToIdentifierMap setObject:lastPathComponent forKeyedSubscript:pathCopy];
LABEL_11:

  return lastPathComponent;
}

- (id)symbolicatedBacktraceForFrames:(unint64_t *)frames frameCount:(int64_t)count options:(unint64_t)options
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = count - 1;
  if (count < 1)
  {
    v15 = 0;
  }

  else
  {
    optionsCopy = options;
    countCopy = count;
    if (!self->_binaryImagePathToIdentifierMap)
    {
      v10 = objc_opt_new();
      binaryImagePathToIdentifierMap = self->_binaryImagePathToIdentifierMap;
      self->_binaryImagePathToIdentifierMap = v10;
    }

    context = objc_autoreleasePoolPush();
    if ((optionsCopy & 0x20) != 0)
    {
      v14 = 0;
      v13 = 0;
    }

    else
    {
      v12 = objc_opt_new();
      v13 = v12;
      if ((optionsCopy & 4) != 0)
      {
        [(__CFString *)v12 appendString:@"\n"];
      }

      if ([(VMUStackLogReaderBase *)self coldestFrameIsNotThreadId])
      {
        v14 = 0;
      }

      else
      {
        [(__CFString *)v13 appendFormat:@"[thread %#llx]:", frames[v5] - 1];
        if ((optionsCopy & 8) != 0)
        {
          [(__CFString *)v13 appendString:@"\t"];
          v14 = 0;
        }

        else
        {
          v14 = 1;
        }

        countCopy = v5;
      }

      if (!self->_addressToSymbolicationMap)
      {
        v16 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
        addressToSymbolicationMap = self->_addressToSymbolicationMap;
        self->_addressToSymbolicationMap = v16;
      }
    }

    v62 = v13;
    if ((optionsCopy & 4) != 0)
    {
      if ([(VMUStackLogReaderBase *)self is64bit])
      {
        v18 = 18;
      }

      else
      {
        v18 = 10;
      }

      v59 = 30;
    }

    else
    {
      v59 = 0;
      v18 = 0;
    }

    v57 = v18;
    v58 = v18;
    v19 = countCopy;
    v20 = v14;
LABEL_24:
    v21 = countCopy - v19;
    while (1)
    {
      v22 = v19;
      if (!v19)
      {
        break;
      }

      --v19;
      if ((optionsCopy & 0x44) == 4)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      v24 = frames[v23];
      ++v21;
      if (v24 >= 0x1000)
      {
        v60 = countCopy;
        v25 = NSMapGet(self->_addressToSymbolicationMap, v24);
        if (!v25)
        {
          v53 = v20;
          if ((optionsCopy & 2) != 0)
          {
            v54 = 0;
            v52 = v59;
          }

          else
          {
            v26 = [(VMUStackLogReaderBase *)self binaryImagePathForPCaddress:v24];
            v27 = [(VMUStackLogReaderBase *)self identifierForBinaryImagePath:v26];
            v54 = v27;
            if ((optionsCopy & 4) != 0)
            {
              v29 = [v27 length];
              v28 = v59;
              if (v29 > v59)
              {
                v28 = [v54 length];
              }
            }

            else
            {
              v28 = 0;
            }

            v52 = v28;
          }

          v30 = [(VMUStackLogReaderBase *)self functionNameForPCaddress:v24];
          if (v30)
          {
            v31 = v30;
            if ([v30 hasPrefix:@"_malloc_type_"] && objc_msgSend(v31, "hasSuffix:", @"_outlined"))
            {
              v32 = [v31 substringFromIndex:{objc_msgSend(@"_malloc_type", "length")}];
              v33 = v31;
              v34 = v32;
              v55 = v33;

              if ([v34 hasPrefix:@"_zone"])
              {
                v35 = [v34 stringByReplacingOccurrencesOfString:@"_zone" withString:@"_malloc_zone"];

                v34 = v35;
              }

              v36 = [v34 substringToIndex:{objc_msgSend(v34, "length") - objc_msgSend(@"_outlined", "length")}];

              v31 = v36;
              if (!v36)
              {
                goto LABEL_44;
              }
            }

            else
            {
            }

            if ([(NSSet *)self->_excludedFrames containsObject:v31])
            {

              break;
            }

            v56 = v31;
            uTF8String = [v31 UTF8String];
            v39 = uTF8String;
            if ((optionsCopy & 0x10) == 0 || (v40 = *uTF8String, v40 == 43) || v40 == 45)
            {
              v41 = strlen(uTF8String);
            }

            else
            {
              v41 = strcspn(uTF8String, "(<");
            }

            v37 = v54;
            v25 = [objc_alloc(MEMORY[0x1E696AD60]) initWithBytes:v39 length:v41 encoding:4];
            if ((optionsCopy & 4) == 0)
            {
              if ((optionsCopy & 2) == 0)
              {
LABEL_55:
                [MEMORY[0x1E696AD60] stringWithFormat:@"%#*llx (%-*s) %@", v57, v24, v52, objc_msgSend(v37, "UTF8String"), v25];
                goto LABEL_59;
              }

              goto LABEL_60;
            }

            [v25 appendFormat:@" + %llu", &v24[--[VMUStackLogReaderBase functionRangeContainingPCaddress:](self, "functionRangeContainingPCaddress:", v24)]];
            v42 = 0x1E696A000;
          }

          else
          {
LABEL_44:
            if ((optionsCopy & 4) == 0)
            {
              v37 = v54;
              if ((optionsCopy & 2) == 0)
              {
                v25 = [MEMORY[0x1E696AD60] stringWithString:@"???"];
                v56 = 0;
                goto LABEL_55;
              }

              v25 = [MEMORY[0x1E696AD60] stringWithFormat:@"%#llx", v24];
              v56 = 0;
              goto LABEL_60;
            }

            v43 = [(VMUStackLogReaderBase *)self binaryImageRangeForPCaddress:v24];
            v42 = 0x1E696A000uLL;
            v25 = [MEMORY[0x1E696AD60] stringWithFormat:@"%#llx + %llu", v43, &v24[-v43]];
            v56 = 0;
            v37 = v54;
          }

          [*(v42 + 3424) stringWithFormat:@"%-*s %#*llx %@", v52, objc_msgSend(v37, "UTF8String"), v58, v24, v25];
          v44 = LABEL_59:;

          v25 = v44;
LABEL_60:
          v45 = [(VMUStackLogReaderBase *)self sourceFileNameAndLineNumberForPCaddress:v24 fullPath:optionsCopy & 1];
          v46 = v45;
          if (v45)
          {
            [v25 appendFormat:@"  %@", v45];
          }

          NSMapInsertKnownAbsent(self->_addressToSymbolicationMap, v24, v25);

          v20 = v53;
        }

        *__str = 0;
        v64 = 0;
        v47 = " | ";
        if ((optionsCopy & 4) != 0)
        {
          snprintf(__str, 0x10uLL, "%-3d ", v23);
          v47 = "\n";
        }

        if (v20)
        {
          [(__CFString *)v62 appendFormat:@"%s%s%@", v47, __str, v25];
        }

        else
        {
          [(__CFString *)v62 appendFormat:@"%s%@", __str, v25, v51];
        }

        v20 = 1;
        countCopy = v60;
        goto LABEL_24;
      }
    }

    [(__CFString *)v62 appendString:@" "];
    objc_autoreleasePoolPop(context);
    v48 = VMUBacktraceIsExcludedMarker;
    if (!v22)
    {
      v48 = v62;
    }

    v15 = v48;
  }

  v49 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)binaryImagePathForPCaddress:(unint64_t)caddress
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
  Path = CSSymbolOwnerGetPath();
  if (Path)
  {
    Path = [MEMORY[0x1E696AEC0] stringWithUTF8String:Path];
  }

  return Path;
}

- (_VMURange)binaryImageRangeForPCaddress:(unint64_t)caddress
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
  CSSymbolOwnerGetSegmentWithAddress();
  Range = CSRegionGetRange();
  if (!v6)
  {
    Range = 0x7FFFFFFFFFFFFFFFLL;
    v6 = 0;
  }

  result.length = v6;
  result.location = Range;
  return result;
}

- (id)functionNameForPCaddress:(unint64_t)caddress
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSymbolWithAddressAtTime();
  Name = CSSymbolGetName();
  if (Name)
  {
    Name = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  }

  return Name;
}

- (_VMURange)functionRangeContainingPCaddress:(unint64_t)caddress
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSymbolWithAddressAtTime();

  Range = CSSymbolGetRange();
  result.length = v6;
  result.location = Range;
  return result;
}

- (id)sourcePathForPCaddress:(unint64_t)caddress
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSourceInfoWithAddressAtTime();
  Path = CSSourceInfoGetPath();
  if (Path)
  {
    Path = [MEMORY[0x1E696AEC0] stringWithUTF8String:Path];
  }

  return Path;
}

- (id)sourceFileNameForPCaddress:(unint64_t)caddress
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSourceInfoWithAddressAtTime();
  Filename = CSSourceInfoGetFilename();
  if (Filename)
  {
    Filename = [MEMORY[0x1E696AEC0] stringWithUTF8String:Filename];
  }

  return Filename;
}

- (unsigned)sourceLineNumberForPCaddress:(unint64_t)caddress
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSourceInfoWithAddressAtTime();

  return CSSourceInfoGetLineNumber();
}

- (id)sourceFileNameAndLineNumberForPCaddress:(unint64_t)caddress fullPath:(BOOL)path
{
  pathCopy = path;
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSourceInfoWithAddressAtTime();
  if (pathCopy)
  {
    Path = CSSourceInfoGetPath();
  }

  else
  {
    Path = CSSourceInfoGetFilename();
  }

  v8 = Path;
  LineNumber = CSSourceInfoGetLineNumber();
  if (v8)
  {
    lineNumber = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%u", v8, LineNumber];
  }

  else
  {
    lineNumber = 0;
  }

  return lineNumber;
}

- (BOOL)shouldIgnoreSymbolWithName:(id)name binaryPath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  v7 = pathCopy;
  if (!nameCopy)
  {
    v9 = 0;
    goto LABEL_21;
  }

  if (!pathCopy)
  {
    v9 = 1;
    goto LABEL_21;
  }

  lastPathComponent = [pathCopy lastPathComponent];
  if (shouldIgnoreSymbolWithName_binaryPath__onceToken != -1)
  {
    [VMUStackLogReaderBase shouldIgnoreSymbolWithName:binaryPath:];
  }

  if (([shouldIgnoreSymbolWithName_binaryPath__exactMatchLibrariesToIgnore containsObject:lastPathComponent] & 1) == 0 && (objc_msgSend(shouldIgnoreSymbolWithName_binaryPath__exactMatchSymbolsToIgnore, "containsObject:", nameCopy) & 1) == 0)
  {
    if (([nameCopy hasSuffix:@"alloc_typed"] & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"operator new") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"__typed_operator_new_impl") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"operator_new_impl") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"$_0::operator()") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"caulk::alloc::darwin_resource") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"objc::DenseMap") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"objc::detail::DenseMapPair") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"llvm::BumpPtrAllocatorImpl") & 1) == 0 && (!objc_msgSend(nameCopy, "hasPrefix:", @"bmalloc_") || (objc_msgSend(nameCopy, "containsString:", @"_allocate") & 1) == 0) && (!objc_msgSend(nameCopy, "hasPrefix:", @"WTF::") || (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastZeroedMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastStrDup") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastMemDup") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::tryFastZeroedMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastAlignedMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::tryFastAlignedMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::tryFastMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::tryFastCalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastCalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::tryFastRealloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastRealloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastCompactMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastCompactZeroedMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastCompactCalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastCompactRealloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::tryFastCompactMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::tryFastCompactZeroedMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::tryFastCompactCalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::tryFastCompactRealloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastCompactStrDup") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastCompactMemDup") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::fastCompactAlignedMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"WTF::tryFastCompactAlignedMalloc") & 1) == 0) && (!objc_msgSend(nameCopy, "hasPrefix:", @"Gigacage::") || (objc_msgSend(nameCopy, "hasPrefix:", @"Gigacage::tryMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"Gigacage::tryRealloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"Gigacage::tryAllocateZeroedVirtualPages") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"Gigacage::tryAlignedMalloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"Gigacage::malloc") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"Gigacage::tryMallocArray") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"Gigacage::mallocArray") & 1) == 0) && (!objc_msgSend(nameCopy, "hasPrefix:", @"JSC::") || (objc_msgSend(nameCopy, "hasPrefix:", @"JSC::IsoAlignedMemoryAllocator") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"JSC::tryAllocateAlignedMemory") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"JSC::tryAllocateMemory") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"JSC::FastMallocAlignedMemoryAllocator") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"JSC::CompleteSubspace::allocatorForSlow") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"JSC::CompleteSubspace::tryAllocateSlow") & 1) == 0 && (objc_msgSend(nameCopy, "hasPrefix:", @"JSC::IsoMemoryAllocatorBase::tryAllocateAlignedMemory") & 1) == 0 && !objc_msgSend(nameCopy, "hasPrefix:", @"JSC::LocalAllocator::allocateSlowCase")))
    {
      v9 = 0;
      goto LABEL_18;
    }

    [shouldIgnoreSymbolWithName_binaryPath__exactMatchSymbolsToIgnore addObject:nameCopy];
  }

  v9 = 1;
LABEL_18:

LABEL_21:
  return v9;
}

void __63__VMUStackLogReaderBase_shouldIgnoreSymbolWithName_binaryPath___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{@"libsystem_malloc.dylib", @"libCoreLib.dylib", 0}];
  v1 = shouldIgnoreSymbolWithName_binaryPath__exactMatchLibrariesToIgnore;
  shouldIgnoreSymbolWithName_binaryPath__exactMatchLibrariesToIgnore = v0;

  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{@"strndup", @"reallocf", @"_dispatch_calloc", @"_dispatch_strdup_if_mutable", @"_dispatch_continuation_alloc_from_heap", @"_xpc_alloc", @"swift_slowAlloc", @"swift_allocObject", @"swift_allocBox", @"__CFSafelyReallocateWithAllocator", @"CFStorageReplaceValues", @"__NSMS1", @"pdf_named_calloc", @"pdf_named_malloc", @"hash_table_modify", @"CMMMemMgr::New(unsigned long)", @"CMMBase::NewInternal(unsigned long, CMMMemMgr&, char const*)", @"XAtomicAllocator::reserve(int)", @"_table_addStorageBlock", @"sqlite3MemMalloc", @"sqlite3MemRealloc", @"dbMallocRawFinish", @"dbReallocFinish", @"llvm::safe_malloc(unsigned long)", @"llvm::safe_calloc(unsigned long, unsigned long)", @"llvm::safe_realloc(void*, unsigned long)", @"llvm::allocate_buffer(unsigned long, unsigned long)", @"geo::MallocZoneAllocator::allocate(unsigned long, unsigned long)", @"geo::MallocZoneAllocator::callocate(unsigned long, unsigned long)", @"geo::MallocZoneAllocator::reallocate(void*, unsigned long)", @"kalloc_ext", @"IOMalloc_internal", @"strdup", @"IOLockAlloc", @"pas_msl_malloc_logging_slow", @"<deduplicated_symbol>", 0}];
  v3 = shouldIgnoreSymbolWithName_binaryPath__exactMatchSymbolsToIgnore;
  shouldIgnoreSymbolWithName_binaryPath__exactMatchSymbolsToIgnore = v2;
}

- (id)_allocationTypeNameForStackID:(unint64_t)d returnedBinaryPath:(id *)path
{
  pathCopy = path;
  v46[512] = *MEMORY[0x1E69E9840];
  if (path)
  {
    *path = @"<unknown>";
  }

  if (d == -1)
  {
    goto LABEL_10;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [(VMUStackLogReaderBase *)self getFramesForStackID:d stackFramesBuffer:v46];
  if (!v8)
  {
    objc_autoreleasePoolPop(v7);
LABEL_10:
    v16 = @"non-object with no stack backtrace";
    goto LABEL_39;
  }

  v9 = v8;
  v10 = [(VMUStackLogReaderBase *)self functionNameForPCaddress:v46[0]];
  if (v10)
  {
    v11 = v10;
    if ([(__CFString *)v10 hasPrefix:@"_malloc_zone_"])
    {
      v12 = [(__CFString *)v11 substringFromIndex:13];
      v13 = v11;
      v11 = v12;

      v14 = [(__CFString *)v11 rangeOfString:@"_instrumented_or_legacy"];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [(__CFString *)v11 substringToIndex:v14];

        v11 = v15;
      }
    }

    else if (([(__CFString *)v11 isEqualToString:@"malloc_zone_realloc"]& 1) != 0 || ([(__CFString *)v11 hasPrefix:@"WTF::fastRealloc"]& 1) != 0 || [(__CFString *)v11 hasPrefix:@"WTF::tryFastRealloc"])
    {

      v11 = @"realloc";
    }

    else if ([(__CFString *)v11 hasPrefix:@"caulk::alloc::darwin_resource"])
    {

      v11 = @"caulk::alloc::darwin_resource";
    }

    else if ([(__CFString *)v11 hasPrefix:@"pas_msl_malloc_logging_slow"])
    {

      v11 = @"bmalloc_allocate...";
    }

    else if (([(__CFString *)v11 isEqualToString:@"realloc"]& 1) == 0 && ([(__CFString *)v11 isEqualToString:@"sqlite3MemRealloc"]& 1) == 0)
    {
      [(__CFString *)v11 isEqualToString:@"__CFSafelyReallocateWithAllocator"];
    }
  }

  else
  {
    v11 = @"malloc";
  }

  if (v9 < 1)
  {
    v18 = 0;
    v21 = 0;
    v17 = 0;
    v33 = 0;
    v45 = 0;
    goto LABEL_32;
  }

  v43 = 0;
  selfCopy = self;
  v41 = pathCopy;
  v42 = v11;
  v40 = v7;
  v17 = 0;
  v18 = 0;
  v45 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v46;
  do
  {
    v23 = v21;
    v24 = v18;
    v25 = [(VMUStackLogReaderBase *)selfCopy functionNameForPCaddress:*v22];

    v26 = *v22++;
    v21 = [(VMUStackLogReaderBase *)selfCopy binaryImagePathForPCaddress:v26];

    v18 = v25;
    v20 = _removeReturnValueFromCPlusPlusSymbolName(v18);

    v27 = [v20 hasPrefix:@"std::"];
    if (v27)
    {
      v28 = v20;

      v29 = v18;
      v30 = v21;

      v45 = v28;
      v43 = v30;
      v17 = v29;
      goto LABEL_26;
    }

    if ((v19 & 1) != 0 && ([v45 hasPrefix:@"std::__"] & 1) == 0 && (objc_msgSend(v45, "hasPrefix:", @"std::enable_if") & 1) == 0)
    {
      v34 = v45;

      v17 = v17;
      v35 = v43;

      v43 = v35;
      v21 = v35;
      v45 = v34;
      v20 = v34;
      v18 = v17;
      if (v34)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    if ((!v20 || ([(__CFString *)v42 containsString:v20]& 1) == 0) && ![(VMUStackLogReaderBase *)selfCopy shouldIgnoreSymbolWithName:v20 binaryPath:v21])
    {
      break;
    }

LABEL_26:
    v19 = v27;
    --v9;
  }

  while (v9);
  if (v20)
  {
LABEL_28:
    v31 = _removeStdArgumentsFromCPlusPlusSymbolName(v20);

    _printCPlusPlusNameSimplification(v18, v31);
    v11 = v42;
    v32 = [(__CFString *)v42 stringByAppendingFormat:@" in %@", v31];
    v7 = v40;
    pathCopy = v41;
    v33 = v43;
    goto LABEL_36;
  }

LABEL_31:
  v7 = v40;
  pathCopy = v41;
  v11 = v42;
  v33 = v43;
LABEL_32:
  lastPathComponent = [v21 lastPathComponent];
  if (lastPathComponent)
  {
    v32 = [@"non-object from " stringByAppendingString:lastPathComponent];
  }

  else
  {
    v32 = 0;
  }

  v31 = 0;
LABEL_36:

  objc_autoreleasePoolPop(v7);
  if (pathCopy)
  {
    v37 = v21;
    *pathCopy = v21;
  }

  v16 = v32;

LABEL_39:
  v38 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)identifyNonObjectsUsingStackBacktraces:(id)backtraces classInfoMap:(id)map classInfoSetterBlock:(id)block
{
  mapCopy = map;
  blockCopy = block;
  backtracesCopy = backtraces;
  v11 = [[VMUStackLogConsolidator alloc] initWithScannerOrGraph:backtracesCopy stackLogReader:self];

  if ([(VMUStackLogReaderBase *)self usesLiteMode]|| [(VMUStackLogReaderBase *)self usesCoreFile])
  {
    v12 = objc_opt_new();
  }

  else
  {
    v12 = 0;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __98__VMUStackLogReaderBase_identifyNonObjectsUsingStackBacktraces_classInfoMap_classInfoSetterBlock___block_invoke;
  v25[3] = &unk_1E8277F98;
  v25[4] = self;
  v26 = v12;
  v13 = mapCopy;
  v27 = v13;
  v14 = blockCopy;
  v28 = v14;
  v15 = v12;
  v16 = [(VMUStackLogConsolidator *)v11 stackIDsToNodesFilteredBy:v25];
  v17 = objc_opt_new();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __98__VMUStackLogReaderBase_identifyNonObjectsUsingStackBacktraces_classInfoMap_classInfoSetterBlock___block_invoke_2;
  v21[3] = &unk_1E8277FC0;
  v21[4] = self;
  v22 = v17;
  v23 = v13;
  v24 = v14;
  v18 = v14;
  v19 = v13;
  v20 = v17;
  [v16 enumerateKeysAndObjectsUsingBlock:v21];
}

uint64_t __98__VMUStackLogReaderBase_identifyNonObjectsUsingStackBacktraces_classInfoMap_classInfoSetterBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (*(a3 + 8) >> 60 != 1)
  {
    goto LABEL_17;
  }

  v9 = *(a3 + 16);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = [v9 displayName];
  if ([v10 hasPrefix:@"non-object"])
  {

    goto LABEL_6;
  }

  v11 = [*(a3 + 16) isDerivedFromStackBacktrace];

  if (!v11)
  {
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

LABEL_6:
  if (v7)
  {
    if ([*(a1 + 32) usesLiteMode])
    {
      v12 = v7;
      if ([v12 hasPrefix:@"MallocStackLoggingLiteZone"])
      {
        v13 = [v12 hasPrefix:@"MallocStackLoggingLiteZone_Wrapper"];

        if ((v13 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

LABEL_14:
      v15 = [*(a1 + 40) objectForKeyedSubscript:v7];
      if (![v15 unsignedIntValue])
      {
        v16 = [@"non-object in zone " stringByAppendingString:v7];
        v17 = [VMUClassInfo classInfoWithClassName:v16 binaryPath:@"<unknown>" type:0];
        [v17 setIsDerivedFromStackBacktrace:1];
        v18 = [*(a1 + 48) indexForClassInfo:v17];
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v18];
        [*(a1 + 40) setObject:v19 forKeyedSubscript:v7];
      }

      (*(*(a1 + 56) + 16))();

      goto LABEL_17;
    }

LABEL_10:
    if (![*(a1 + 32) usesCoreFile] || objc_msgSend(*(a1 + 32), "stackIDForNode:", a2) != -1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_12:
  v14 = 1;
LABEL_18:
  objc_autoreleasePoolPop(v8);

  return v14;
}

void __98__VMUStackLogReaderBase_identifyNonObjectsUsingStackBacktraces_classInfoMap_classInfoSetterBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 unsignedLongValue];
  v9 = *(a1 + 32);
  v33 = 0;
  v10 = [v9 _allocationTypeNameForStackID:v8 returnedBinaryPath:&v33];
  v11 = v33;
  v12 = v11;
  if (v10)
  {
    if (!v11)
    {
      v12 = @"<unknown>";
    }

    v13 = [(__CFString *)v12 stringByAppendingString:v10];
    v14 = [*(a1 + 40) objectForKeyedSubscript:v13];
    v15 = v14;
    v26 = v13;
    v27 = v7;
    if (v14)
    {
      [v14 unsignedIntValue];
    }

    else
    {
      if ([v10 containsString:@"::"])
      {
        v16 = 2;
      }

      else
      {
        v16 = 16;
      }

      v17 = [(VMUClassInfo *)VMUMutableClassInfo classInfoWithClassName:v10 binaryPath:v12 type:v16];
      [v17 setIsDerivedFromStackBacktrace:1];
      v18 = [*(a1 + 48) indexForClassInfo:v17];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v18];
      [*(a1 + 40) setObject:v19 forKeyedSubscript:v13];
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = v6;
    v20 = v6;
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v29 + 1) + 8 * i) unsignedIntValue];
          (*(*(a1 + 56) + 16))();
        }

        v22 = [v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v22);
    }

    v7 = v27;
    v6 = v28;
  }

  objc_autoreleasePoolPop(v7);
  v25 = *MEMORY[0x1E69E9840];
}

- (_CSTypeRef)symbolicator
{
  objc_copyStruct(v4, &self->_symbolicator, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result._opaque_2 = v3;
  result._opaque_1 = v2;
  return result;
}

@end