@interface VMUObjectIdentifier
- (BOOL)_isUnrealizedObjCClass:(unint64_t)class recursionDepth:(unsigned int)depth;
- (BOOL)_isValidInstanceLength:(unint64_t)length expectedLength:(unint64_t)expectedLength;
- (BOOL)_isaPointerRefersToVTable:(unint64_t)table remoteAddress:(unint64_t)address symbol:(_CSTypeRef)symbol symbolNameOut:(const char *)out;
- (BOOL)_remoteAddressIsOKtoRead:(unint64_t)read;
- (BOOL)isValidPointer:(uint64_t)pointer;
- (VMUAutoreleasePoolPageLayout)createAutoreleasePoolPageLayout;
- (VMUObjectIdentifier)initWithVMUTask:(id)task symbolicator:(_CSTypeRef)symbolicator scanner:(id)scanner;
- (VMUTaskMemoryScanner)scanner;
- (_CSTypeRef)_symbolicator;
- (_CSTypeRef)libobjcSymbolOwner;
- (_CSTypeRef)symbolForAddress:(unint64_t)address;
- (_CSTypeRef)symbolicator;
- (_VMURange)validVMRange;
- (id)_classInfoForMemory:(void *)memory length:(unint64_t)length atOffset:(unint64_t)offset remoteAddress:(unint64_t)address;
- (id)_scanner;
- (id)classInfoForCFTypeInstance:(void *)instance length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)classInfoForMemory:(void *)memory length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)classInfoForNonobjectMemory:(void *)memory length:(unint64_t)length;
- (id)classInfoForObjectWithRange:(_VMURange)range;
- (id)classInfoWithNonobjectType:(id)type binaryPath:(id)path returnedClassInfoIndex:(unsigned int *)index;
- (id)classNameForTaggedPointer:(void *)pointer;
- (id)formattedDateLabel:(id)label;
- (id)labelForCFBundle:(void *)bundle length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForCStructureWithMemory:(void *)memory length:(unint64_t)length remoteAddress:(unint64_t)address classInfo:(id)info;
- (id)labelForClassDataExtRW:(void *)w length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForClassDataRO:(void *)o length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForClassDataRW:(void *)w length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForClassStructure:(void *)structure length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForCoreMediaFigObject:(void *)object length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForItemCount:(int64_t)count;
- (id)labelForMallocBlock:(_VMURange)block;
- (id)labelForMallocBlock:(_VMURange)block usingHandlerBlock:(id)handlerBlock;
- (id)labelForMemory:(unint64_t)memory length:(uint64_t)length remoteAddress:(void *)address classInfo:(void *)info usingHandlerBlock:;
- (id)labelForNSArray:(void *)array length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSBundle:(void *)bundle length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSCFData:(void *)data length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSCFDictionary:(void *)dictionary length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSCFSet:(void *)set length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSConcreteData:(void *)data length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSConcreteHashTable:(void *)table length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSDate:(void *)date length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSDictionary:(void *)dictionary length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSInlineData:(void *)data length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSNumber:(void *)number length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSPathStore2:(void *)store2 length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSSet:(void *)set length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSTaggedPointerStringCStringContainer:(void *)container length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSURL:(void *)l length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSXPCConnection:(void *)connection length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForNSXPCInterface:(void *)interface length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForOSDispatchMach:(void *)mach length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForOSDispatchQueue:(void *)queue length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForOSLog:(void *)log length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForOSTransaction:(void *)transaction length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForOSXPCActivity:(void *)activity length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForOSXPCConnection:(void *)connection length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForOSXPCDictionary:(void *)dictionary length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForOSXPCDictionaryStorageNode:(void *)node length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForOSXPCObject:(void *)object length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForOSXPCString:(void *)string length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForObjectOfClass:(id)class atOffset:(unsigned int)offset ofObject:(void *)object withLength:(unint64_t)length;
- (id)labelForProtocol:(void *)protocol length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForSwiftContiguousArrayStorage:(void *)storage length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForSwiftDictionaryStorage:(void *)storage length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForSwiftSetStorage:(void *)storage length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForSwiftStringStorage:(void *)storage length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForTaggedPointer:(void *)pointer;
- (id)labelFor_RBSAssertionDescriptor:(void *)descriptor length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelFor__NSMallocBlock__:(void *)block__ length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)noLabelForOSXPCObject:(void *)object length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)symbolForRemoteAddress:(unint64_t)address;
- (id)uniquifyStringLabel:(id)label stringType:(int)type printDetail:(BOOL)detail;
- (int)_populateSwiftReflectionInfo:(_DummyVMUSwiftReflectionContext *)info;
- (uint64_t)setNeedToValidateRemoteMirrorReadAddressRange:(uint64_t)result;
- (unint64_t)addressOfSymbol:(const char *)symbol inLibrary:(const char *)library;
- (unint64_t)countFromPointerInAutoreleasePool:(void *)pool;
- (void)_findObjCAndSwiftClassesFromClass:(unint64_t)class recursionDepth:(unsigned int)depth;
- (void)_findOffsetsInOSXPCConnection:(void *)connection length:(unint64_t)length;
- (void)_generateClassInfosForObjCClassStructurePointerTypes;
- (void)_loadSwiftAsyncTaskAndSlabRecognitionInfo;
- (void)_populateSwiftABIVariables;
- (void)buildIsaToObjectLabelHandlerMap;
- (void)dealloc;
- (void)destroy_libSwiftRemoteMirror;
- (void)enumerateAllClassInfosWithBlock:(id)block;
- (void)enumerateRealizedClassInfosWithBlock:(id)block;
- (void)findCFTypes;
- (void)findCFTypes_version1;
- (void)findCFTypes_version2;
- (void)findFutureClasses;
- (void)findObjCAndSwiftClasses;
- (void)flushRemoteMirrorMemoryCache;
- (void)loadSwiftReflectionLibraries;
- (void)objectLabelHandlerForRemoteIsa:(void *)isa;
- (void)setupIsaTranslator;
@end

@implementation VMUObjectIdentifier

- (BOOL)_isaPointerRefersToVTable:(unint64_t)table remoteAddress:(unint64_t)address symbol:(_CSTypeRef)symbol symbolNameOut:(const char *)out
{
  Name = CSSymbolGetName();
  if (out)
  {
    *out = Name;
  }

  if (Name)
  {
    if (strncmp(Name, "vtable for ", 0xBuLL))
    {
      goto LABEL_9;
    }

    v10 = table - CSSymbolGetRange();
    if (v10 >= v11 || v10 < 0x10)
    {
      goto LABEL_9;
    }

    Name = (*(self->_memoryReader + 2))();
    if (Name)
    {
      v12 = Name;
      v13 = v10 >> 3;
      v14 = &Name[8 * (v10 >> 3)];
      if (*(v14 - 2))
      {
LABEL_9:
        LOBYTE(Name) = 0;
        return Name;
      }

      v15 = *v14;
      opaque_1 = self->_symbolicator._opaque_1;
      opaque_2 = self->_symbolicator._opaque_2;
      CSSymbolicatorGetSymbolWithAddressAtTime();
      if ((CSSymbolIsFunction() & 1) != 0 || (LODWORD(Name) = CSSymbolIsDeduplicated(), Name))
      {
        v18 = 0;
        if (v13 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v10 >> 3;
        }

        while (1)
        {
          if (HIDWORD(*&v12[8 * v18]) && (*&v12[8 * v18] & 7) == 0)
          {
            v21 = self->_symbolicator._opaque_1;
            v22 = self->_symbolicator._opaque_2;
            CSSymbolicatorGetSymbolWithAddressAtTime();
            if (CSSymbolIsFunction() & 1) != 0 || (CSSymbolIsDeduplicated())
            {
              break;
            }
          }

          if (v19 == ++v18)
          {
            LOBYTE(Name) = v18 >= v13;
            return Name;
          }
        }

        goto LABEL_9;
      }
    }
  }

  return Name;
}

- (VMUObjectIdentifier)initWithVMUTask:(id)task symbolicator:(_CSTypeRef)symbolicator scanner:(id)scanner
{
  taskCopy = task;
  scannerCopy = scanner;
  v85.receiver = self;
  v85.super_class = VMUObjectIdentifier;
  v10 = [(VMUObjectIdentifier *)&v85 init];
  if (v10)
  {
    v11 = +[VMUDebugTimer sharedTimerIfCreated];
    objc_storeStrong(&v10->_task, task);
    memoryCache = [(VMUTask *)v10->_task memoryCache];
    v10->_taskIsDriverKit = [memoryCache isDriverKit];

    objc_storeWeak(&v10->_scanner, scannerCopy);
    if (CSIsNull())
    {
      FlagsForNListOnlyData = CSSymbolicatorGetFlagsForNListOnlyData();
      if ([taskCopy isExclave])
      {
        v14 = 0;
      }

      else
      {
        v14 = FlagsForNListOnlyData;
      }

      v15 = [(VMUTask *)v10->_task createSymbolicatorWithFlags:v14 andNotification:0];
    }

    else
    {
      v15 = CSRetain();
    }

    v10->_symbolicator._opaque_1 = v15;
    v10->_symbolicator._opaque_2 = v16;
    isExclaveCore = [taskCopy isExclaveCore];
    opaque_1 = v10->_symbolicator._opaque_1;
    opaque_2 = v10->_symbolicator._opaque_2;
    if (isExclaveCore)
    {
      SymbolOwner = CSSymbolicatorGetSymbolOwner();
    }

    else
    {
      SymbolOwner = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
    }

    v10->_libobjcSymbolOwner._opaque_1 = SymbolOwner;
    v10->_libobjcSymbolOwner._opaque_2 = v21;
    v22 = objc_alloc_init(VMUClassInfoMap);
    realizedIsaToClassInfo = v10->_realizedIsaToClassInfo;
    v10->_realizedIsaToClassInfo = v22;

    v24 = objc_opt_new();
    cfTypeIDToClassInfo = v10->_cfTypeIDToClassInfo;
    v10->_cfTypeIDToClassInfo = v24;

    v26 = objc_opt_new();
    coreMediaFigBaseClassToClassInfo = v10->_coreMediaFigBaseClassToClassInfo;
    v10->_coreMediaFigBaseClassToClassInfo = v26;

    v28 = [MEMORY[0x1E696AC70] hashTableWithOptions:1282];
    nonObjectIsaHash = v10->_nonObjectIsaHash;
    v10->_nonObjectIsaHash = v28;

    v30 = objc_opt_new();
    pidToProcessNameDict = v10->_pidToProcessNameDict;
    v10->_pidToProcessNameDict = v30;

    v32 = objc_opt_new();
    moduleNameToBinaryPathDict = v10->_moduleNameToBinaryPathDict;
    v10->_moduleNameToBinaryPathDict = v32;

    v34 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
    itemCountToLabelStringUniquingMap = v10->_itemCountToLabelStringUniquingMap;
    v10->_itemCountToLabelStringUniquingMap = v34;

    v10->_labelStringUniquingMaps = malloc_type_calloc(0x200uLL, 8uLL, 0x80040B8603338uLL);
    v36 = objc_opt_new();
    labelStringUniquingMaps = v10->_labelStringUniquingMaps;
    v38 = labelStringUniquingMaps[1];
    labelStringUniquingMaps[1] = v36;

    v10->_stringTypeDescriptions = malloc_type_calloc(0x200uLL, 8uLL, 0x80040B8603338uLL);
    v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    stringUniquingSet = v10->_stringUniquingSet;
    v10->_stringUniquingSet = v39;

    memoryCache2 = [scannerCopy memoryCache];
    if (memoryCache2 || ([(VMUTask *)v10->_task memoryCache], (memoryCache2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60__VMUObjectIdentifier_initWithVMUTask_symbolicator_scanner___block_invoke;
      aBlock[3] = &unk_1E8277698;
      v42 = memoryCache2;
      v84 = v42;
      v43 = _Block_copy(aBlock);
      memoryReader = v10->_memoryReader;
      v10->_memoryReader = v43;

      v10->_targetProcessContainsMallocStackLoggingLiteZone = 0;
      if ([scannerCopy zoneCount])
      {
        v45 = 0;
        do
        {
          v46 = [scannerCopy zoneNameForIndex:v45];
          if ([v46 hasPrefix:@"MallocStackLoggingLiteZone"])
          {
            v47 = [v46 hasPrefix:@"MallocStackLoggingLiteZone_Wrapper"];

            if ((v47 & 1) == 0)
            {
              v10->_targetProcessContainsMallocStackLoggingLiteZone = 1;
              break;
            }
          }

          else
          {
          }

          v45 = (v45 + 1);
        }

        while (v45 < [scannerCopy zoneCount]);
      }

      v10->_autoreleasePoolPageLayout = [(VMUObjectIdentifier *)v10 createAutoreleasePoolPageLayout];
      v10->_debugSwiftRemoteMirror = 0;
      v48 = getenv("SYMBOLICATION_DEBUG_SWIFT_REMOTE_MIRROR");
      if (v48)
      {
        v49 = v48;
        if (!strcmp(v48, "YES") || *v49 == 49 && !v49[1])
        {
          v10->_debugSwiftRemoteMirror = 1;
        }
      }

      v10->_swiftMirror = malloc_type_calloc(1uLL, 0x18uLL, 0x102004024DAA5DEuLL);
      v50 = [(VMUObjectIdentifier *)v10 addressOfSymbol:"_objc_class_abi_version" inLibrary:"libobjc.A.dylib"];
      if (v50)
      {
        v51 = v50;
        v52 = v10->_memoryReader;
        v53 = v52[2](v52, v51, 4);
        if (v53)
        {
          v54 = *v53;
        }

        else
        {
          v54 = 0;
        }

        v10->_objcABI = v54;
      }

      if (v11)
      {
        if ([v11 signpostID])
        {
          logHandle = [v11 logHandle];
          signpostID = [v11 signpostID];
          if ((signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v57 = signpostID;
            if (os_signpost_enabled(logHandle))
            {
              v82 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, v57, "initObjectIdentifier", "", &v82, 2u);
            }
          }
        }

        [v11 endEvent:"initObjectIdentifier"];
        [v11 startWithCategory:"initObjectIdentifier" message:"loadSwiftReflectionLibraries"];
        logHandle2 = [v11 logHandle];
        signpostID2 = [v11 signpostID];
        if ((signpostID2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v60 = signpostID2;
          if (os_signpost_enabled(logHandle2))
          {
            v82 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, v60, "initObjectIdentifier", "loadSwiftReflectionLibraries", &v82, 2u);
          }
        }
      }

      else
      {
        [0 endEvent:"initObjectIdentifier"];
        [0 startWithCategory:"initObjectIdentifier" message:"loadSwiftReflectionLibraries"];
      }

      v61 = objc_autoreleasePoolPush();
      [(VMUObjectIdentifier *)v10 loadSwiftReflectionLibraries];
      objc_autoreleasePoolPop(v61);
      [(VMUObjectIdentifier *)v10 _populateSwiftABIVariables];
      if (v11)
      {
        if ([v11 signpostID])
        {
          logHandle3 = [v11 logHandle];
          signpostID3 = [v11 signpostID];
          if ((signpostID3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v64 = signpostID3;
            if (os_signpost_enabled(logHandle3))
            {
              v82 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, v64, "initObjectIdentifier", "", &v82, 2u);
            }
          }
        }

        [v11 endEvent:"initObjectIdentifier"];
        [v11 startWithCategory:"initObjectIdentifier" message:"findCFTypes"];
        logHandle4 = [v11 logHandle];
        signpostID4 = [v11 signpostID];
        if ((signpostID4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v67 = signpostID4;
          if (os_signpost_enabled(logHandle4))
          {
            v82 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_BEGIN, v67, "initObjectIdentifier", "findCFTypes", &v82, 2u);
          }
        }
      }

      else
      {
        [0 endEvent:"initObjectIdentifier"];
        [0 startWithCategory:"initObjectIdentifier" message:"findCFTypes"];
      }

      v10->_figBaseObjectFinalizeAddress = [(VMUObjectIdentifier *)v10 addressOfSymbol:"_FigBaseObjectFinalize" inLibrary:"CoreMedia"];
      [(VMUObjectIdentifier *)v10 findCFTypes];
      if (v11)
      {
        if ([v11 signpostID])
        {
          logHandle5 = [v11 logHandle];
          signpostID5 = [v11 signpostID];
          if ((signpostID5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v70 = signpostID5;
            if (os_signpost_enabled(logHandle5))
            {
              v82 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_END, v70, "initObjectIdentifier", "", &v82, 2u);
            }
          }
        }

        [v11 endEvent:"initObjectIdentifier"];
        [v11 startWithCategory:"initObjectIdentifier" message:"findObjCAndSwiftClasses"];
        logHandle6 = [v11 logHandle];
        signpostID6 = [v11 signpostID];
        if ((signpostID6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v73 = signpostID6;
          if (os_signpost_enabled(logHandle6))
          {
            v82 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_BEGIN, v73, "initObjectIdentifier", "findObjCAndSwiftClasses", &v82, 2u);
          }
        }
      }

      else
      {
        [0 endEvent:"initObjectIdentifier"];
        [0 startWithCategory:"initObjectIdentifier" message:"findObjCAndSwiftClasses"];
      }

      [(VMUObjectIdentifier *)v10 setupIsaTranslator];
      [(VMUObjectIdentifier *)v10 findObjCAndSwiftClasses];
      [(VMUObjectIdentifier *)v10 findFutureClasses];
      v10->_cfBooleanTrueAddress = [(VMUObjectIdentifier *)v10 addressOfSymbol:"___kCFBooleanTrue" inLibrary:"CoreFoundation"];
      v10->_cfBooleanFalseAddress = [(VMUObjectIdentifier *)v10 addressOfSymbol:"___kCFBooleanFalse" inLibrary:"CoreFoundation"];
      v10->_objcEmptyCacheAddress = [(VMUObjectIdentifier *)v10 addressOfSymbol:"__objc_empty_cache" inLibrary:"libobjc.A.dylib"];
      if (v10->_taskIsDriverKit)
      {
        v74 = [[VMUObjectIdentifierDriverKitSupport alloc] initWithObjectIdentifier:v10];
        driverKitSupport = v10->_driverKitSupport;
        v10->_driverKitSupport = v74;
      }

      v76 = [[VMUAttributeGraphTypeIdentifier alloc] initWithObjectIdentifier:v10];
      attributeGraphTypeIdentifier = v10->_attributeGraphTypeIdentifier;
      v10->_attributeGraphTypeIdentifier = v76;

      v10->_objectContentLevel = 1;
      if (v11 && [v11 signpostID])
      {
        logHandle7 = [v11 logHandle];
        signpostID7 = [v11 signpostID];
        if ((signpostID7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v80 = signpostID7;
          if (os_signpost_enabled(logHandle7))
          {
            v82 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle7, OS_SIGNPOST_INTERVAL_END, v80, "initObjectIdentifier", "", &v82, 2u);
          }
        }
      }

      [v11 endEvent:"initObjectIdentifier"];
    }

    else
    {
      v42 = v10;
      v10 = 0;
    }
  }

  return v10;
}

uint64_t __60__VMUObjectIdentifier_initWithVMUTask_symbolicator_scanner___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if ([*(a1 + 32) peekAtAddress:a2 size:a3 returnsBuf:&v4])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (void)dealloc
{
  [(VMUObjectIdentifier *)self destroy_libSwiftRemoteMirror];
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSRelease();
  self->_symbolicator._opaque_1 = 0;
  self->_symbolicator._opaque_2 = 0;
  if (self->_objCClassStructureClassInfos)
  {
    for (i = 0; i != 13; ++i)
    {
      objCClassStructureClassInfos = self->_objCClassStructureClassInfos;
      v7 = objCClassStructureClassInfos[i];
      objCClassStructureClassInfos[i] = 0;
    }

    free(self->_objCClassStructureClassInfos);
    self->_objCClassStructureClassInfos = 0;
  }

  objCClassStructureClassInfoIndexes = self->_objCClassStructureClassInfoIndexes;
  if (objCClassStructureClassInfoIndexes)
  {
    free(objCClassStructureClassInfoIndexes);
    self->_objCClassStructureClassInfoIndexes = 0;
  }

  for (j = 0; j != 512; ++j)
  {
    labelStringUniquingMaps = self->_labelStringUniquingMaps;
    if (labelStringUniquingMaps)
    {
      v11 = labelStringUniquingMaps[j];
      labelStringUniquingMaps[j] = 0;
    }

    stringTypeDescriptions = self->_stringTypeDescriptions;
    if (stringTypeDescriptions)
    {
      v13 = stringTypeDescriptions[j];
      stringTypeDescriptions[j] = 0;
    }
  }

  v14 = self->_labelStringUniquingMaps;
  if (v14)
  {
    free(v14);
    self->_labelStringUniquingMaps = 0;
  }

  v15 = self->_stringTypeDescriptions;
  if (v15)
  {
    free(v15);
    self->_stringTypeDescriptions = 0;
  }

  autoreleasePoolPageLayout = self->_autoreleasePoolPageLayout;
  if (autoreleasePoolPageLayout)
  {
    free(autoreleasePoolPageLayout);
  }

  v17.receiver = self;
  v17.super_class = VMUObjectIdentifier;
  [(VMUObjectIdentifier *)&v17 dealloc];
}

- (void)flushRemoteMirrorMemoryCache
{
  remoteAddressToLocalAddressAndSizeMap = self->_swiftMirrorReaderContext.remoteAddressToLocalAddressAndSizeMap;
  if (remoteAddressToLocalAddressAndSizeMap)
  {
    NSFreeMapTable(remoteAddressToLocalAddressAndSizeMap);
    NSFreeMapTable(self->_swiftMirrorReaderContext.remoteStringToLengthMap);
    v4 = createRemoteAddressToLocalAddressAndSizeMap();
    v5 = self->_swiftMirrorReaderContext.remoteAddressToLocalAddressAndSizeMap;
    self->_swiftMirrorReaderContext.remoteAddressToLocalAddressAndSizeMap = v4;

    v6 = createRemoteStringToLengthMap();
    remoteStringToLengthMap = self->_swiftMirrorReaderContext.remoteStringToLengthMap;
    self->_swiftMirrorReaderContext.remoteStringToLengthMap = v6;
  }
}

- (void)enumerateRealizedClassInfosWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    realizedIsaToClassInfo = self->_realizedIsaToClassInfo;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__VMUObjectIdentifier_enumerateRealizedClassInfosWithBlock___block_invoke;
    v7[3] = &unk_1E82792F8;
    v8 = blockCopy;
    [(VMUClassInfoMap *)realizedIsaToClassInfo enumerateInfosWithBlock:v7];
  }
}

- (void)enumerateAllClassInfosWithBlock:(id)block
{
  blockCopy = block;
  if (!self->_unrealizedClassInfos)
  {
    v5 = objc_alloc_init(VMUClassInfoMap);
    unrealizedClassInfos = self->_unrealizedClassInfos;
    self->_unrealizedClassInfos = v5;

    [(VMUObjectIdentifier *)self findObjCAndSwiftClasses];
  }

  [(VMUObjectIdentifier *)self enumerateRealizedClassInfosWithBlock:blockCopy];
  if (blockCopy)
  {
    v7 = self->_unrealizedClassInfos;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__VMUObjectIdentifier_enumerateAllClassInfosWithBlock___block_invoke;
    v8[3] = &unk_1E82792F8;
    v9 = blockCopy;
    [(VMUClassInfoMap *)v7 enumerateInfosWithBlock:v8];
  }
}

- (id)classInfoForObjectWithRange:(_VMURange)range
{
  location = 0;
  if (HIDWORD(range.location))
  {
    location = range.location;
    if ((range.location & 7) == 0)
    {
      if (range.length >= 0x10)
      {
        range.location = 16;
      }

      else
      {
        range.location = range.length;
      }

      location = [(VMUObjectIdentifier *)self classInfoForMemory:(*(self->_memoryReader + 2))(self->_memoryReader length:location remoteAddress:range.location), range.length, location];
    }
  }

  return location;
}

- (BOOL)_isValidInstanceLength:(unint64_t)length expectedLength:(unint64_t)expectedLength
{
  if (((expectedLength + 15) & 0xFFFFFFFFFFFFFFF0) == length)
  {
    return 1;
  }

  return self->_targetProcessContainsMallocStackLoggingLiteZone && ((expectedLength + 23) & 0xFFFFFFFFFFFFFFF0) == length;
}

- (id)classInfoWithNonobjectType:(id)type binaryPath:(id)path returnedClassInfoIndex:(unsigned int *)index
{
  typeCopy = type;
  pathCopy = path;
  nonobjectClassInfosDict = self->_nonobjectClassInfosDict;
  if (!nonobjectClassInfosDict)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = self->_nonobjectClassInfosDict;
    self->_nonobjectClassInfosDict = v11;

    nonobjectClassInfosDict = self->_nonobjectClassInfosDict;
  }

  v13 = [(NSMutableDictionary *)nonobjectClassInfosDict objectForKeyedSubscript:typeCopy];
  if (!v13)
  {
    v13 = [VMUClassInfo classInfoWithClassName:typeCopy binaryPath:pathCopy type:16];
    [(NSMutableDictionary *)self->_nonobjectClassInfosDict setObject:v13 forKeyedSubscript:typeCopy];
    v14 = [(VMUClassInfoMap *)self->_realizedIsaToClassInfo addClassInfo:v13 forAddress:0];
    if (index)
    {
      *index = v14;
    }
  }

  return v13;
}

- (void)_generateClassInfosForObjCClassStructurePointerTypes
{
  self->_objCClassStructureClassInfos = malloc_type_calloc(0xDuLL, 8uLL, 0x80040B8603338uLL);
  v3 = 0;
  self->_objCClassStructureClassInfoIndexes = malloc_type_calloc(0xDuLL, 4uLL, 0x100004052888210uLL);
  v4 = &off_1EC1D06D8;
  do
  {
    if (*v4)
    {
      if (*(v4 - 2) == 12)
      {
        v5 = @"/usr/lib/swift/libswiftCore.dylib";
      }

      else
      {
        v5 = @"/usr/lib/libobjc.A.dylib";
      }

      v11 = 0;
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      v7 = [(VMUObjectIdentifier *)self classInfoWithNonobjectType:v6 binaryPath:v5 returnedClassInfoIndex:&v11];

      objCClassStructureClassInfos = self->_objCClassStructureClassInfos;
      v9 = objCClassStructureClassInfos[v3];
      objCClassStructureClassInfos[v3] = v7;
      v10 = v7;

      self->_objCClassStructureClassInfoIndexes[v3] = v11;
    }

    ++v3;
    v4 += 3;
  }

  while (v3 != 13);
}

- (id)classInfoForNonobjectMemory:(void *)memory length:(unint64_t)length
{
  v6 = *memory;
  if (length >= 0x100 && (v6 == -1583242847 && !strncmp(memory + 4, "AUTORELEASE!", 0xCuLL) || length == 10240 && *(memory + 512) == -1583242847 && !strncmp(memory + 2052, "AUTORELEASE!", 0xCuLL)))
  {
    v8 = [(VMUObjectIdentifier *)self classInfoWithNonobjectType:@"@autoreleasepool content" binaryPath:@"/usr/lib/libobjc.A.dylib"];
    goto LABEL_44;
  }

  v8 = 0;
  if (v6 > 1330529092)
  {
    if (v6 > 1414022208)
    {
      switch(v6)
      {
        case 1414022209:
          if ([(VMUObjectIdentifier *)self _isValidInstanceLength:length expectedLength:64])
          {
            v9 = @"pthread_attr_t";
            goto LABEL_42;
          }

          break;
        case 1414025796:
          if ([(VMUObjectIdentifier *)self _isValidInstanceLength:length expectedLength:8])
          {
            v9 = @"pthread_t";
            goto LABEL_42;
          }

          break;
        case 1870030194:
          if ([(VMUObjectIdentifier *)self _isValidInstanceLength:length expectedLength:40])
          {
            v9 = @"pthread_override_s";
            goto LABEL_42;
          }

          break;
        default:
          goto LABEL_44;
      }
    }

    else
    {
      switch(v6)
      {
        case 1330529093:
          if ([(VMUObjectIdentifier *)self _isValidInstanceLength:length expectedLength:16])
          {
            v9 = @"pthread_once_t";
            goto LABEL_42;
          }

          break;
        case 1381452865:
          if ([(VMUObjectIdentifier *)self _isValidInstanceLength:length expectedLength:24])
          {
            v9 = @"pthread_rwlockattr_t";
            goto LABEL_42;
          }

          break;
        case 1381452875:
          if ([(VMUObjectIdentifier *)self _isValidInstanceLength:length expectedLength:200])
          {
            v9 = @"pthread_rwlock_t";
LABEL_42:
            v8 = [(VMUObjectIdentifier *)self _classInfoWithPthreadType:v9];
            goto LABEL_44;
          }

          break;
        default:
          goto LABEL_44;
      }
    }

    goto LABEL_43;
  }

  if (v6 <= 1297373248)
  {
    if (v6 == 1129202753)
    {
      if ([(VMUObjectIdentifier *)self _isValidInstanceLength:length expectedLength:16])
      {
        v9 = @"pthread_condattr_t";
        goto LABEL_42;
      }
    }

    else
    {
      if (v6 != 1129270852)
      {
        goto LABEL_44;
      }

      if ([(VMUObjectIdentifier *)self _isValidInstanceLength:length expectedLength:48])
      {
        v9 = @"pthread_cond_t";
        goto LABEL_42;
      }
    }

    goto LABEL_43;
  }

  if (v6 == 1297373249)
  {
    if ([(VMUObjectIdentifier *)self _isValidInstanceLength:length expectedLength:16])
    {
      v9 = @"pthread_mutexattr_t";
      goto LABEL_42;
    }

LABEL_43:
    v8 = 0;
    goto LABEL_44;
  }

  if (v6 == 1297437784 || v6 == 1297437786)
  {
    if ([(VMUObjectIdentifier *)self _isValidInstanceLength:length expectedLength:64])
    {
      v9 = @"pthread_mutex_t";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

LABEL_44:

  return v8;
}

- (id)classInfoForCFTypeInstance:(void *)instance length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (length >= 0x10)
  {
    v8 = [(VMUClassInfoMap *)self->_cfTypeIDToClassInfo classInfoForAddress:__CFGenericTypeID()];
    v5 = v8;
    if (v8)
    {
      if ([v8 isCoreMediaFigObject])
      {
        v9 = *(instance + 3);
        v10 = [VMUTask ptrauthStripDataPointer:?];
        if (v10)
        {
          v11 = v10;
          v12 = [(VMUClassInfoMap *)self->_coreMediaFigBaseClassToClassInfo classInfoForAddress:v10];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v44 = 0;
            memoryCache = [(VMUTask *)self->_task memoryCache];
            v16 = [memoryCache peekAtAddress:v11 size:16 returnsBuf:&v44];

            if (!v16)
            {
              if (v44)
              {
                v17 = *(v44 + 8);
                if ([VMUTask ptrauthStripDataPointer:?])
                {
                  opaque_1 = self->_symbolicator._opaque_1;
                  opaque_2 = self->_symbolicator._opaque_2;
                  CSSymbolicatorGetSymbolWithAddressAtTime();
                  if ((CSIsNull() & 1) == 0)
                  {
                    Name = CSSymbolGetName();
                    if (Name)
                    {
                      v21 = Name;
                      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
                      if (*v21 == 107)
                      {
                        v22 = v21 + 1;
                      }

                      else
                      {
                        v22 = v21;
                      }

                      v23 = strstr(v22, "_BaseClass");
                      if (!v23)
                      {
                        v23 = strstr(v22, "BaseClass");
                      }

                      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22];
                      v25 = v24;
                      if (v23)
                      {
                        v26 = [v24 substringToIndex:v23 - v22];

                        v25 = v26;
                      }

                      className = [v5 className];
                      v28 = [className isEqualToString:v25];

                      className2 = [v5 className];
                      v30 = className2;
                      if (v28)
                      {
                        printFigSubclassInfo(className2, &stru_1F461F9C8, v43);

                        [(VMUClassInfoMap *)self->_coreMediaFigBaseClassToClassInfo addClassInfo:v5 forAddress:v11];
                      }

                      else
                      {
                        v31 = [v25 hasPrefix:className2];

                        if (v31)
                        {
                          className3 = [v5 className];
                          v33 = [v25 substringFromIndex:{objc_msgSend(className3, "length")}];

                          v25 = v33;
                        }

                        className4 = [v5 className];
                        v35 = [className4 stringByAppendingFormat:@" (%@)", v25];

                        CSSymbolGetSymbolOwner();
                        Path = CSSymbolOwnerGetPath();
                        if (Path)
                        {
                          v37 = Path;
                        }

                        else
                        {
                          v37 = "<unknown>";
                        }

                        v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v37];
                        v39 = [(VMUClassInfo *)VMUMutableClassInfo classInfoWithClassName:v35 binaryPath:v38 type:4];

                        [v39 setIsCoreMediaFigObject:1];
                        className5 = [v5 className];
                        printFigSubclassInfo(className5, v35, v43);

                        [(VMUClassInfoMap *)self->_coreMediaFigBaseClassToClassInfo addClassInfo:v39 forAddress:v11];
                        v25 = v35;
                        v5 = v39;
                      }
                    }
                  }
                }
              }
            }

            v14 = v5;
            v5 = v14;
          }

          v41 = v14;

          v5 = v41;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isUnrealizedObjCClass:(unint64_t)class recursionDepth:(unsigned int)depth
{
  WeakRetained = objc_loadWeakRetained(&self->_scanner);
  v8 = [WeakRetained _rangeOfClassStructureForPossibleUnrealizedSwiftClassWithIsa:class];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_4;
  }

  v9 = (*(self->_memoryReader + 2))();
  if (v9)
  {
    v10 = v9;
    if (self->_objcEmptyCacheAddress != v9[2])
    {
LABEL_4:
      LOBYTE(v9) = 0;
      return v9;
    }

    v11 = *v9;
    v12 = (*(self->_isaTranslator + 2))();
    LODWORD(v9) = [(VMUObjectIdentifier *)self isValidPointer:v12];
    if (v9)
    {
      v13 = v10[1];
      v14 = (*(self->_isaTranslator + 2))();
      LODWORD(v9) = [(VMUObjectIdentifier *)self isValidPointer:v14];
      if (v9)
      {
        v15 = [(VMUClassInfoMap *)self->_realizedIsaToClassInfo classInfoForAddress:v14];

        if (v15)
        {
          LOBYTE(v9) = 1;
        }

        else
        {
          if (!depth)
          {
            goto LABEL_4;
          }

          LOBYTE(v9) = [(VMUObjectIdentifier *)self _isUnrealizedObjCClass:v14 recursionDepth:depth - 1];
        }
      }
    }
  }

  return v9;
}

- (id)_classInfoForMemory:(void *)memory length:(unint64_t)length atOffset:(unint64_t)offset remoteAddress:(unint64_t)address
{
  v11 = *(memory + offset);
  v12 = (*(self->_isaTranslator + 2))();
  v13 = [(VMUAttributeGraphTypeIdentifier *)self->_attributeGraphTypeIdentifier metadataPointerForAllocation:address];
  if (!v13)
  {
    if (!offset && v12 == self->_coreFoundationCFTypeIsa)
    {
      v14 = [(VMUObjectIdentifier *)self classInfoForCFTypeInstance:memory length:length remoteAddress:address];
      goto LABEL_6;
    }

    if (![(VMUObjectIdentifier *)self isValidPointer:v12])
    {
      p_super = 0;
      goto LABEL_7;
    }

    if (v12 == self->_lastClassInfoForMemoryIsa)
    {
      p_super = self->_lastClassInfoForMemoryClassInfo;
      if (!p_super)
      {
        goto LABEL_68;
      }

LABEL_23:
      if (![(VMUClassInfo *)p_super ivarCount])
      {
        className = [(VMUClassInfo *)p_super className];
        if ([className isEqualToString:@"__SwiftValue"])
        {

LABEL_31:
          v23 = [VMUClassInfo alloc];
          className2 = [(VMUClassInfo *)p_super className];
          v25 = [(VMUClassInfo *)v23 initSwiftClassWithName:className2 classInfoType:64 size:length];

          p_super = v25;
          goto LABEL_68;
        }

        className3 = [(VMUClassInfo *)p_super className];
        v22 = [className3 isEqualToString:@"_SwiftValue"];

        if (v22)
        {
          goto LABEL_31;
        }
      }

LABEL_68:
      self->_lastClassInfoForMemoryIsa = v12;
      objc_storeStrong(&self->_lastClassInfoForMemoryClassInfo, p_super);
      goto LABEL_7;
    }

    v17 = [(VMUClassInfoMap *)self->_realizedIsaToClassInfo classInfoForAddress:v12];
    if (v17)
    {
      p_super = v17;
      goto LABEL_23;
    }

    if ([(VMUObjectIdentifier *)self hasSwiftContent]&& [(VMUObjectIdentifier *)self _isUnrealizedObjCClass:v12 recursionDepth:512])
    {
      self->_swiftMirrorReaderContext.needToValidateAddressRange = 1;
      v19 = [(VMUClassInfo *)[VMUMutableClassInfo alloc] initWithClass:v12 type:8 infoMap:self->_realizedIsaToClassInfo objectIdentifier:self reader:self->_memoryReader];
      if (v19)
      {
        p_super = &v19->super;
        WeakRetained = objc_loadWeakRetained(&self->_scanner);
        [WeakRetained applyTypeOverlayToMutableInfo:p_super];

        self->_swiftMirrorReaderContext.needToValidateAddressRange = 0;
        goto LABEL_23;
      }

      self->_swiftMirrorReaderContext.needToValidateAddressRange = 0;
    }

    v26 = objc_loadWeakRetained(&self->_scanner);
    v27 = [v26 addressIsInDataSegment:v12];

    if (!v27 || NSHashGet(self->_nonObjectIsaHash, v12))
    {
LABEL_67:
      p_super = 0;
      goto LABEL_68;
    }

    opaque_1 = self->_symbolicator._opaque_1;
    opaque_2 = self->_symbolicator._opaque_2;
    CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
    if (CSSymbolOwnerUsesCPlusPlus() && (SymbolWithAddress = CSSymbolOwnerGetSymbolWithAddress(), v32 = v31, (CSIsNull() & 1) == 0))
    {
      if (self->_taskIsDriverKit)
      {
        p_super = [(VMUObjectIdentifierDriverKitSupport *)self->_driverKitSupport classInfoForDriverKitMemory:memory length:length atOffset:offset translatedIsa:v12 symbol:SymbolWithAddress remoteAddress:v32, address];
        if ([(VMUClassInfo *)p_super infoType]== 128)
        {
          [(VMUClassInfoMap *)self->_realizedIsaToClassInfo addClassInfo:p_super forAddress:v12];
        }
      }

      else
      {
        *&v51 = 0;
        v44 = [(VMUObjectIdentifier *)self _isaPointerRefersToVTable:v12 remoteAddress:address symbol:SymbolWithAddress symbolNameOut:v32, &v51];
        p_super = 0;
        if (v44)
        {
          v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v51 + 11];
          v48 = VMUSimplifyCPlusPlusSymbolName(v45);

          Path = CSSymbolOwnerGetPath();
          if (Path)
          {
            v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolOwnerGetPath()];
          }

          else
          {
            v47 = &stru_1F461F9C8;
          }

          p_super = [VMUClassInfo classInfoWithClassName:v48 binaryPath:v47 type:2];
          if (Path)
          {
          }

          [(VMUClassInfoMap *)self->_realizedIsaToClassInfo addClassInfo:p_super forAddress:v12];
        }
      }
    }

    else
    {
      p_super = 0;
    }

    if (offset || p_super)
    {
      goto LABEL_65;
    }

    if ([(VMUObjectIdentifier *)self hasSwiftContent])
    {
      if (![(VMUObjectIdentifier *)self hasSwiftReflection])
      {
        p_super = [[VMUClassInfo alloc] initSwiftClassWithName:0 classInfoType:64 size:length];
        goto LABEL_65;
      }

      v33 = objc_loadWeakRetained(&self->_scanner);
      v34 = [v33 validateAddressRangeForSwiftRemoteMirror:v12 allowUnusedSplitLibs:{8, 0}];

      if (v34)
      {
        v53 = 0;
        memoryCache = [(VMUTask *)self->_task memoryCache];
        [memoryCache readPointerAt:v12 value:&v53];

        p_super = 0;
        if (v53 == 1024)
        {
          self->_swiftMirrorReaderContext.needToValidateAddressRange = 1;
          v51 = 0uLL;
          v52 = 0;
          vmu_swift_reflection_infoForInstance(self->_swiftMirror->var0, address, &v51);
          p_super = 0;
          if (v51 == 18)
          {
            if (_classInfoForMemory_length_atOffset_remoteAddress__onceToken != -1)
            {
              [VMUObjectIdentifier _classInfoForMemory:length:atOffset:remoteAddress:];
            }

            v36 = objc_loadWeakRetained(&self->_scanner);
            memoryCache2 = [v36 memoryCache];
            HaveGenericCaptures = closureContextMayHaveGenericCaptures(v12, memoryCache2);

            if ((HaveGenericCaptures & 1) != 0 || (v39 = [VMUMutableClassInfo alloc], realizedIsaToClassInfo = self->_realizedIsaToClassInfo, swiftMirror = self->_swiftMirror, v49 = v51, v50 = v52, (v42 = [(VMUClassInfo *)v39 initWithClosureContext:address typeInfo:&v49 infoMap:realizedIsaToClassInfo swiftFieldMetadataContext:swiftMirror]) == 0))
            {
              p_super = _classInfoForMemory_length_atOffset_remoteAddress__closureContextWithUnknownLayoutClassInfo;
            }

            else
            {
              p_super = v42;
              v43 = objc_loadWeakRetained(&self->_scanner);
              [v43 applyTypeOverlayToMutableInfo:p_super];
            }

            [(VMUClassInfoMap *)self->_realizedIsaToClassInfo addClassInfo:p_super forAddress:v12];
          }

          self->_swiftMirrorReaderContext.needToValidateAddressRange = 0;
        }

        VMUClearCrashReporterInfo();
LABEL_65:
        if (p_super)
        {
          goto LABEL_23;
        }
      }
    }

    NSHashInsert(self->_nonObjectIsaHash, v12);
    goto LABEL_67;
  }

  v14 = [(VMUAttributeGraphTypeIdentifier *)self->_attributeGraphTypeIdentifier classInfoForAttributeGraphValueWithMetadata:v13];
LABEL_6:
  p_super = v14;
LABEL_7:
  if (!offset && !p_super)
  {
    p_super = [(VMUObjectIdentifier *)self classInfoForNonobjectMemory:memory length:length];
  }

  if (p_super && [(VMUClassInfo *)p_super instanceSize]> length)
  {

    p_super = 0;
  }

  return p_super;
}

void __73__VMUObjectIdentifier__classInfoForMemory_length_atOffset_remoteAddress___block_invoke()
{
  v0 = [[VMUClassInfo alloc] initWithClassName:@"Closure context (unknown layout)" binaryPath:0 type:64];
  v1 = _classInfoForMemory_length_atOffset_remoteAddress__closureContextWithUnknownLayoutClassInfo;
  _classInfoForMemory_length_atOffset_remoteAddress__closureContextWithUnknownLayoutClassInfo = v0;
}

- (id)classInfoForMemory:(void *)memory length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (memory >> 32)
  {
    v8 = 0;
    if (length >= 8 && (memory & 7) == 0)
    {
      v8 = [(VMUObjectIdentifier *)self _classInfoForMemory:memory length:length atOffset:0 remoteAddress:address];
      if (!v8)
      {
        if (self->_taskIsDriverKit)
        {
          v8 = [(VMUObjectIdentifierDriverKitSupport *)self->_driverKitSupport driverKitClassInfoForMemory:memory length:length remoteAddress:address];
        }

        else
        {
          v8 = 0;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)findCFTypes_version1
{
  isExclaveCore = [(VMUTask *)self->_task isExclaveCore];
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  if (isExclaveCore)
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
  }

  else
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  v8 = SymbolOwner;
  v9 = v7;
  v10 = _map_remote_mangled_symbol_value(self->_memoryReader, "___CFRuntimeClassTableCount", SymbolOwner, v7, 4);
  if (v10)
  {
    v11 = *v10;
    if (v11)
    {
      v12 = _map_remote_mangled_symbol_value(self->_memoryReader, "___CFRuntimeClassTables", v8, v9, 8 * v11);
      if (v12 || (v12 = _map_remote_mangled_symbol_value(self->_memoryReader, "___CFRuntimeClassTable", v8, v9, 8 * v11)) != 0)
      {
        v13 = v12;
        if (v11 >= 1)
        {
          for (i = 0; i != v11; ++i)
          {
            v15 = *(v13 + 8 * i);
            v16 = [VMUTask stripExtraPointerBits:?];
            if (v16)
            {
              v17 = v16;
              v18 = objc_autoreleasePoolPush();
              v19 = [(VMUObjectIdentifier *)self _returnFaultedClass:v17 ofType:4];
              [(VMUClassInfoMap *)self->_cfTypeIDToClassInfo addClassInfo:v19 forAddress:i];
              [(VMUClassInfoMap *)self->_realizedIsaToClassInfo addClassInfo:v19 forAddress:v17];

              objc_autoreleasePoolPop(v18);
            }
          }
        }
      }
    }
  }
}

- (void)findCFTypes_version2
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__VMUObjectIdentifier_findCFTypes_version2__block_invoke;
  aBlock[3] = &unk_1E8279320;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  task = self->_task;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__VMUObjectIdentifier_findCFTypes_version2__block_invoke_2;
  v6[3] = &unk_1E8279370;
  v6[4] = self;
  v5 = v3;
  v7 = v5;
  v8 = v9;
  withPeekFunctionForVMUTask(task, v6);

  _Block_object_dispose(v9, 8);
}

uint64_t __43__VMUObjectIdentifier_findCFTypes_version2__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) isExclaveCore];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v2)
  {
    CSSymbolicatorGetSymbolOwner();
  }

  else
  {
    CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  CSSymbolOwnerGetSymbolWithName();

  return CSSymbolGetRange();
}

uint64_t __43__VMUObjectIdentifier_findCFTypes_version2__block_invoke_2(void *a1, uint64_t a2)
{
  v4 = _vmu__CFRuntimeEnumerateClassTable;
  v5 = [*(a1[4] + 8) taskPort];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__VMUObjectIdentifier_findCFTypes_version2__block_invoke_3;
  v9[3] = &unk_1E8279348;
  v6 = a1[5];
  v7 = a1[6];
  v9[4] = a1[4];
  v9[5] = v7;
  return v4(v5, v6, a2, v9);
}

void __43__VMUObjectIdentifier_findCFTypes_version2__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [VMUTask stripExtraPointerBits:?];
    v4 = objc_autoreleasePoolPush();
    v5 = [*(a1 + 32) _returnFaultedClass:v3 ofType:4];
    if (v5)
    {
      [*(*(a1 + 32) + 224) addClassInfo:v5 forAddress:*(*(*(a1 + 40) + 8) + 24)];
      [*(*(a1 + 32) + 208) addClassInfo:v5 forAddress:v3];
    }

    objc_autoreleasePoolPop(v4);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

- (void)findCFTypes
{
  if (findCFTypes_onceToken != -1)
  {
    [VMUObjectIdentifier findCFTypes];
  }

  if (_vmu__CFRuntimeEnumerateClassTable)
  {

    [(VMUObjectIdentifier *)self findCFTypes_version2];
  }

  else
  {

    [(VMUObjectIdentifier *)self findCFTypes_version1];
  }
}

void *__34__VMUObjectIdentifier_findCFTypes__block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation", 1);
  if (result)
  {
    v1 = result;
    _vmu__CFRuntimeEnumerateClassTable = dlsym(result, "__CFRuntimeEnumerateClassTable");

    return dlclose(v1);
  }

  return result;
}

- (void)_findObjCAndSwiftClassesFromClass:(unint64_t)class recursionDepth:(unsigned int)depth
{
  if (class)
  {
    SiblingOfClass = class;
    do
    {
      if ((VMUIsMetaclass(self->_task, self->_memoryReader, self->_objcABI, SiblingOfClass) & 1) == 0)
      {
        v7 = [(VMUClassInfoMap *)self->_realizedIsaToClassInfo classInfoForAddress:SiblingOfClass];

        if (v7)
        {
          return;
        }

        [(VMUObjectIdentifier *)self _faultClass:SiblingOfClass ofType:1];
        SubclassOfClass = VMUGetFirstSubclassOfClass(self->_task, self->_memoryReader, self->_objcABI, SiblingOfClass);
        if (SubclassOfClass)
        {
          [(VMUObjectIdentifier *)self _findObjCAndSwiftClassesFromClass:SubclassOfClass recursionDepth:depth + 1];
        }
      }

      SiblingOfClass = VMUGetNextSiblingOfClass(self->_task, self->_memoryReader, self->_objcABI, SiblingOfClass);
    }

    while (SiblingOfClass);
  }
}

- (void)findObjCAndSwiftClasses
{
  [(VMUObjectIdentifier *)self addressOfSymbol:"_firstRealizedClass" inLibrary:"libobjc.A.dylib"];
  v3 = (*(self->_memoryReader + 2))();
  if (v3)
  {
    for (i = *v3; i; i = VMUGetNextSiblingOfClass(self->_task, self->_memoryReader, self->_objcABI, i))
    {
      [(VMUObjectIdentifier *)self _findObjCAndSwiftClassesFromClass:i recursionDepth:0];
    }
  }

  if ([(VMUTask *)self->_task isExclaveCore])
  {
    opaque_1 = self->_symbolicator._opaque_1;
    opaque_2 = self->_symbolicator._opaque_2;
    CSSymbolicatorGetSymbolOwner();
    Path = CSSymbolOwnerGetPath();
    if (Path)
    {
      v8 = Path;
    }

    else
    {
      v8 = "<unknown>";
    }

    v9 = [VMUClassInfo alloc];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    v11 = [(VMUClassInfo *)v9 initWithClassName:@"NSBlock" binaryPath:v10 type:1];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__VMUObjectIdentifier_findObjCAndSwiftClasses__block_invoke;
    aBlock[3] = &unk_1E8279398;
    v15 = v11;
    v16 = v8;
    aBlock[4] = self;
    v12 = v11;
    v13 = _Block_copy(aBlock);
    v13[2](v13, "__NSConcreteStackBlock", @"__NSStackBlock__");
    v13[2](v13, "__NSConcreteMallocBlock", @"__NSMallocBlock__");
    v13[2](v13, "__NSConcreteGlobalBlock", @"__NSGlobalBlock__");
    v13[2](v13, "__NSConcreteWeakBlockVariable", @"__NSWeakBlockVariable__");
  }
}

void __46__VMUObjectIdentifier_findObjCAndSwiftClasses__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = [*(a1 + 32) addressOfSymbol:a2 inLibrary:"libclosure.dylib"];
  if (v5)
  {
    v6 = v5;
    v7 = [VMUMutableClassInfo alloc];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 48)];
    v9 = [(VMUClassInfo *)v7 initWithClassName:v10 binaryPath:v8 type:1];

    [(VMUMutableClassInfo *)v9 setSuperclassInfo:*(a1 + 40)];
    [*(*(a1 + 32) + 208) addClassInfo:v9 forAddress:v6];
    ++*(*(a1 + 32) + 272);
  }
}

- (void)findFutureClasses
{
  v3 = _map_remote_mangled_symbol_value(self->_memoryReader, "__ZL22future_named_class_map", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v3)
  {
    if (*v3)
    {
      v4 = (*(self->_memoryReader + 2))();
      if (v4)
      {
        if (*(v4 + 8))
        {
          v5 = (*(v4 + 12) + 1);
          v6 = (*(self->_memoryReader + 2))(self->_memoryReader, *(v4 + 16), 16 * v5);
          if (v6 && v5 != 0)
          {
            v8 = (v6 + 8);
            do
            {
              if (*(v8 - 1) != -1)
              {
                [(VMUObjectIdentifier *)self _faultClass:*v8 ofType:8];
              }

              v8 += 2;
              --v5;
            }

            while (v5);
          }
        }
      }
    }
  }
}

- (VMUAutoreleasePoolPageLayout)createAutoreleasePoolPageLayout
{
  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040244176AFuLL);
  v4 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_autoreleasepoolpage_next_offset", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 4);
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  v3->var0 = v5;
  v6 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_autoreleasepoolpage_parent_offset", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 4);
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  v3->var1 = v7;
  v8 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_autoreleasepoolpage_begin_offset", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 4);
  if (!v8 || (v9 = *v8, v3->var2 = *v8, !v9))
  {
    v3->var2 = 56;
  }

  v10 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_autoreleasepoolpage_ptr_mask", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v3->var3 = v11;
  v12 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_autoreleasepoolpage_child_offset", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 4);
  if (v12)
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  v3->var4 = v13;
  return v3;
}

- (void)setupIsaTranslator
{
  v3 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_indexed_isa_magic_mask", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_indexed_isa_magic_value", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v5)
  {
    v35 = *v5;
  }

  else
  {
    v35 = 0;
  }

  v6 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_indexed_isa_index_mask", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_indexed_isa_index_shift", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v8)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  opaque_1 = self->_libobjcSymbolOwner._opaque_1;
  opaque_2 = self->_libobjcSymbolOwner._opaque_2;
  CSSymbolOwnerGetSymbolWithMangledName();
  Range = CSSymbolGetRange();
  v13 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_indexed_classes_count", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v13)
  {
    v14 = *v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_isa_class_mask", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v15)
  {
    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_isa_magic_mask", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v17)
  {
    v18 = *v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_isa_magic_value", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v19)
  {
    v34 = *v19;
  }

  else
  {
    v34 = 0;
  }

  v20 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_taggedpointer_mask", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  self->_taggedPointerMask = v21;
  v22 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_taggedpointer_obfuscator", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  self->_taggedPointerObfuscator = v23;
  v24 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_tag60_permutations", self->_libobjcSymbolOwner._opaque_1, self->_libobjcSymbolOwner._opaque_2, 8);
  if (v24)
  {
    v25 = *v24;
  }

  else
  {
    v25 = 0;
  }

  *self->_taggedPointerPermutations = v25;
  v26 = self->_task;
  v27 = _Block_copy(self->_memoryReader);
  v28 = v27;
  if (v4 && v35 && v7 && v9 && Range && v14)
  {
    self->_fragileNonPointerIsas = 1;
    v29 = v4;
    v30 = v38;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __41__VMUObjectIdentifier_setupIsaTranslator__block_invoke;
    v38[3] = &unk_1E82793C0;
    v38[5] = v16;
    v38[6] = v7;
    v38[7] = v29;
    v38[8] = v35;
    v38[9] = v9;
    v38[10] = v14;
    v38[11] = Range;
    v31 = v27;
  }

  else
  {
    if (v16 && v18)
    {
      v30 = v37;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __41__VMUObjectIdentifier_setupIsaTranslator__block_invoke_2;
      v37[3] = &unk_1E82793E8;
      v37[5] = v16;
      v37[6] = v18;
      v37[7] = v34;
    }

    else
    {
      v30 = v36;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __41__VMUObjectIdentifier_setupIsaTranslator__block_invoke_3;
      v36[3] = &unk_1E8279410;
    }

    v31 = v26;
  }

  v30[4] = v31;
  v32 = _Block_copy(v30);
  isaTranslator = self->_isaTranslator;
  self->_isaTranslator = v32;

  if (!self->_isaTranslator)
  {
    [VMUObjectIdentifier setupIsaTranslator];
  }
}

unint64_t __41__VMUObjectIdentifier_setupIsaTranslator__block_invoke(void *a1, unint64_t a2)
{
  if (a2)
  {
    if ((a2 & ~a1[5]) != 0)
    {
      v2 = a1[6];
      if ((a2 & ~v2) != 0)
      {
        if ((a1[7] & a2) == a1[8] && (v3 = (v2 & a2) >> a1[9], v3 <= a1[10]))
        {
          v4 = (*(a1[4] + 16))(a1[4], a1[11] + 8 * v3);
          if (v4)
          {
            return *v4;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return a2;
}

uint64_t __41__VMUObjectIdentifier_setupIsaTranslator__block_invoke_2(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return a2;
  }

  v2 = a1[5];
  if ((a2 & ~v2) == 0)
  {
    return a2;
  }

  if ((a1[6] & a2) == a1[7])
  {
    return v2 & a2;
  }

  return [VMUTask ptrauthStripDataPointer:?];
}

uint64_t __41__VMUObjectIdentifier_setupIsaTranslator__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [VMUTask ptrauthStripDataPointer:?];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)addressOfSymbol:(const char *)symbol inLibrary:(const char *)library
{
  isExclaveCore = [(VMUTask *)self->_task isExclaveCore];
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  if (isExclaveCore)
  {
    CSSymbolicatorGetSymbolOwner();
  }

  else
  {
    CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  if (*symbol != 95 || (CSSymbolOwnerGetSymbolWithMangledName(), CSIsNull()))
  {
    CSSymbolOwnerGetSymbolWithName();
  }

  return CSSymbolGetRange();
}

- (_CSTypeRef)symbolForAddress:(unint64_t)address
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  SymbolWithAddressAtTime = CSSymbolicatorGetSymbolWithAddressAtTime();
  result._opaque_2 = v6;
  result._opaque_1 = SymbolWithAddressAtTime;
  return result;
}

- (void)buildIsaToObjectLabelHandlerMap
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:514 valueOptions:0];
  isaToObjectLabelHandlerMap = self->_isaToObjectLabelHandlerMap;
  self->_isaToObjectLabelHandlerMap = v4;

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Symbolication"];
  osMajorMinorVersionString = [(VMUObjectIdentifier *)self osMajorMinorVersionString];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"VMUObjectLabelHandlers", osMajorMinorVersionString];
  v9 = [v6 pathForResource:v8 ofType:@"plist"];
  if (v9 || ([v6 pathForResource:@"VMUObjectLabelHandlers" ofType:@"plist"], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v9];
    if (v11)
    {
      [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:514];
      v12 = v21 = v3;
      v13 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:514];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __54__VMUObjectIdentifier_buildIsaToObjectLabelHandlerMap__block_invoke;
      v27[3] = &unk_1E8279438;
      v14 = v12;
      v28 = v14;
      v15 = v13;
      v29 = v15;
      [v11 enumerateKeysAndObjectsUsingBlock:v27];
      v16 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"<"];
      realizedIsaToClassInfo = self->_realizedIsaToClassInfo;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __54__VMUObjectIdentifier_buildIsaToObjectLabelHandlerMap__block_invoke_2;
      v22[3] = &unk_1E8279460;
      v23 = v14;
      v24 = v16;
      v25 = v15;
      selfCopy = self;
      v18 = v15;
      v19 = v16;
      v20 = v14;
      [(VMUClassInfoMap *)realizedIsaToClassInfo enumerateInfosWithBlock:v22];

      v3 = v21;
    }

    else
    {
      NSLog(&cfstr_SymbolicationC_0.isa, v10);
    }
  }

  else
  {
    NSLog(&cfstr_SymbolicationC.isa, @"VMUObjectLabelHandlers");
  }

  objc_autoreleasePoolPop(v3);
}

void __54__VMUObjectIdentifier_buildIsaToObjectLabelHandlerMap__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 stringByAppendingString:@"length:remoteAddress:"];
  v7 = NSSelectorFromString(v6);
  if (v7)
  {
    v8 = v7;
    v17 = v5;
    v9 = [v5 objectForKey:@"Classes"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          [*(a1 + 32) objectForKey:v14];
          if ([v14 hasSuffix:@"<"])
          {
            v15 = (a1 + 40);
          }

          else
          {
            v15 = (a1 + 32);
          }

          [*v15 setObject:v8 forKey:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v5 = v17;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __54__VMUObjectIdentifier_buildIsaToObjectLabelHandlerMap__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v14 = v5;
    v6 = [v5 className];
    v7 = [*(a1 + 32) objectForKey:v6];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v11 = [v6 rangeOfCharacterFromSet:*(a1 + 40)];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_11;
      }

      v13 = [v6 substringToIndex:v11 + v12];
      v8 = [*(a1 + 48) objectForKey:v13];

      if (!v8)
      {
        goto LABEL_11;
      }
    }

    if ([v14 infoType] != 1 || (Class = objc_getClass(objc_msgSend(v6, "UTF8String"))) == 0)
    {
      if ([v14 infoType] == 1)
      {
LABEL_11:

        v5 = v14;
        goto LABEL_12;
      }

      Class = 0;
    }

    v10 = objc_alloc_init(VMUObjectLabelHandlerInfo);
    objc_storeStrong(&v10->_className, v6);
    v10->_localClass = Class;
    v10->_handlerSelector = v8;
    [*(*(a1 + 56) + 336) setObject:v10 forKey:a2];

    goto LABEL_11;
  }

LABEL_12:
}

- (BOOL)_remoteAddressIsOKtoRead:(unint64_t)read
{
  objectContentLevel = self->_objectContentLevel;
  if (objectContentLevel == 3)
  {
    return 1;
  }

  if (objectContentLevel == 2)
  {
    return [(VMURangeArray *)self->_readonlyRegionRanges containsLocation:read];
  }

  return 0;
}

- (id)labelForTaggedPointer:(void *)pointer
{
  if (self->_objectContentLevel == 3)
  {
    if ([(VMUObjectIdentifier *)self isTaggedPointer:?])
    {
      v6 = 0;
      taggedPointerObfuscator = self->_taggedPointerObfuscator;
      if ((~pointer & 0xC000000000000007) == 0)
      {
        taggedPointerObfuscator = 0;
      }

      v8 = taggedPointerObfuscator ^ pointer;
      do
      {
        if ((v8 & 7) == self->_taggedPointerPermutations[v6])
        {
          break;
        }

        ++v6;
      }

      while (v6 != 7);
      v9 = v6 | v8 & 0xFFFFFFFFFFFFFFF8;
      v10 = *MEMORY[0x1E69E5910] ^ v9;
      if ((~v10 & 0xC000000000000007) != 0)
      {
        v9 = v10 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v10 & 7));
      }

      switch(v6)
      {
        case 6:
          v11 = [(VMUObjectIdentifier *)self labelForNSDate:v9 length:0 remoteAddress:0];
          break;
        case 3:
          v11 = [(VMUObjectIdentifier *)self labelForNSNumber:v9 length:0 remoteAddress:0];
          break;
        case 2:
          v11 = [(VMUObjectIdentifier *)self uniquifyStringLabel:v9 stringType:0 printDetail:0];
          break;
        default:
          goto LABEL_17;
      }

LABEL_18:

      return v11;
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  v11 = 0;

  return v11;
}

- (id)classNameForTaggedPointer:(void *)pointer
{
  v3 = 0;
  v4 = *MEMORY[0x1E69E5910];
  if ((~pointer & 0xC000000000000007) == 0)
  {
    v4 = 0;
  }

  v5 = v4 ^ pointer;
  do
  {
    if ((v5 & 7) == *(MEMORY[0x1E69E5900] + v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != 7);
  v6 = v3 | v5;
  v7 = v3 & 7;
  v8 = (v6 >> 55) + 8;
  if (v7 == 7)
  {
    LODWORD(v7) = v8;
  }

  if (v7 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_1E82795C8 + v7);
  }
}

- (unint64_t)countFromPointerInAutoreleasePool:(void *)pool
{
  var3 = self->_autoreleasePoolPageLayout->var3;
  if (!var3)
  {
    return 0;
  }

  if ((var3 & 0xF00000000000000) != 0)
  {
    return (pool >> 44) & 0xFF0 | (pool >> 60);
  }

  return pool >> 48;
}

- (id)uniquifyStringLabel:(id)label stringType:(int)type printDetail:(BOOL)detail
{
  detailCopy = detail;
  labelCopy = label;
  v9 = type & 0x40;
  if (detailCopy)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = 0;
  }

  if (detailCopy)
  {
    typeCopy2 = type;
  }

  else
  {
    typeCopy2 = type & 0x40;
  }

  v12 = self->_labelStringUniquingMaps[typeCopy];
  v13 = self->_stringTypeDescriptions[typeCopy];
  if (!v12)
  {
    v14 = typeCopy;
    if (!typeCopy)
    {
      v20 = objc_opt_new();
      labelStringUniquingMaps = self->_labelStringUniquingMaps;
      v12 = v20;
      v16 = *labelStringUniquingMaps;
      labelStringUniquingMaps[v14] = v12;
LABEL_34:

      goto LABEL_35;
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = v15;
    v17 = typeCopy2 & 7;
    if (v17 == 2)
    {
      v22 = @"has-length-byte";
LABEL_29:
      [v16 addObject:v22];
      goto LABEL_30;
    }

    if (v17 == 4)
    {
      if ((typeCopy2 & 0x80) != 0)
      {
        [v15 addObject:@"immortal"];
      }

      if ((typeCopy2 & 0x100) == 0)
      {
        goto LABEL_30;
      }

      v22 = @"short";
      goto LABEL_29;
    }

    if (v17 != 3)
    {
LABEL_30:
      v23 = [v16 componentsJoinedByString:@" "];

      if ([v23 length])
      {
        objc_storeStrong(&self->_stringTypeDescriptions[v14], v23);
        v12 = objc_opt_new();
      }

      else
      {

        v12 = self->_labelStringUniquingMaps[1];
        v23 = 0;
      }

      objc_storeStrong(&self->_labelStringUniquingMaps[v14], v12);
      v13 = v23;
      goto LABEL_34;
    }

    if (v9)
    {
      v19 = @"constant";
    }

    else
    {
      if ((typeCopy2 & 0x28) == 0 || ((typeCopy2 & 8) != 0 ? (v18 = @"mutable") : (v18 = @"immutable"), [v15 addObject:v18], (typeCopy2 & 0x20) == 0))
      {
LABEL_27:
        if ((typeCopy2 & 0x10) != 0)
        {
          v22 = @"Unicode";
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      v19 = @"non-inline";
    }

    [v16 addObject:v19];
    goto LABEL_27;
  }

LABEL_35:
  v24 = [v12 objectForKeyedSubscript:labelCopy];
  if (!v24)
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:labelCopy];
    if (detailCopy)
    {
      if (v9)
      {
        labelCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:  %@", @"constant", labelCopy, v31];
      }

      else
      {
        v26 = [labelCopy length];
        v27 = objc_alloc(MEMORY[0x1E696AEC0]);
        if (v13)
        {
          labelCopy = [v27 initWithFormat:@"length: %lu  %@:  %@", v26, v13, labelCopy];
        }

        else
        {
          labelCopy = [v27 initWithFormat:@"length: %lu  %@", v26, labelCopy, v31];
        }
      }
    }

    else
    {
      labelCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", labelCopy, v30, v31];
    }

    v24 = labelCopy;
    [v12 setObject:labelCopy forKeyedSubscript:v25];
  }

  return v24;
}

- (id)labelForNSTaggedPointerStringCStringContainer:(void *)container length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_objectContentLevel == 3)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{container + 8, length, address}];
    if (v6)
    {
      v7 = [(VMUObjectIdentifier *)self uniquifyStringLabel:v6 stringType:1 printDetail:0];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)labelForSwiftStringStorage:(void *)storage length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v8 = [(VMUObjectIdentifier *)self _remoteAddressIsOKtoRead:address];
  v9 = 0;
  if (length >= 0x20 && v8)
  {
    v10 = memchr(storage + 32, 0, length - 32);
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:storage + 32 length:v10 - (storage + 32) encoding:4 freeWhenDone:0];
      v9 = [(VMUObjectIdentifier *)self uniquifyStringLabel:v11 stringType:4 printDetail:1];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)labelForSwiftContiguousArrayStorage:(void *)storage length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v8 = [(VMUObjectIdentifier *)self _remoteAddressIsOKtoRead:address];
  v9 = 0;
  if (length >= 0x20 && v8)
  {
    v9 = [(VMUObjectIdentifier *)self labelForItemCount:*(storage + 2)];
  }

  return v9;
}

- (id)labelForSwiftDictionaryStorage:(void *)storage length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v8 = [(VMUObjectIdentifier *)self _remoteAddressIsOKtoRead:address];
  v9 = 0;
  if (length >= 0x18 && v8)
  {
    v9 = [(VMUObjectIdentifier *)self labelForItemCount:*(storage + 2)];
  }

  return v9;
}

- (id)labelForSwiftSetStorage:(void *)storage length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v8 = [(VMUObjectIdentifier *)self _remoteAddressIsOKtoRead:address];
  v9 = 0;
  if (length >= 0x18 && v8)
  {
    v9 = [(VMUObjectIdentifier *)self labelForItemCount:*(storage + 2)];
  }

  return v9;
}

- (id)labelForNSURL:(void *)l length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v7 = [(VMUObjectIdentifier *)self labelForObjectOfClass:@"NSURL" atOffset:32 ofObject:l withLength:length];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Base URL: %@  ", v7];;
  }

  else
  {
    v9 = &stru_1F461F9C8;
  }

  v10 = [(VMUObjectIdentifier *)self labelForNSCFStringAtRemoteAddress:*(l + 3) printDetail:0];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v9, v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)labelForNSPathStore2:(void *)store2 length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if ([(VMUObjectIdentifier *)self _remoteAddressIsOKtoRead:address, length])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithString:store2];
    v8 = [(VMUObjectIdentifier *)self uniquifyStringLabel:v7 stringType:1 printDetail:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)labelForCFBundle:(void *)bundle length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v5 = [(VMUObjectIdentifier *)self labelForObjectOfClass:@"NSURL" atOffset:16 ofObject:bundle withLength:length];
  if ([v5 hasPrefix:@"file://"])
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [v5 substringFromIndex:8];
    v8 = [v6 stringWithFormat:@"%@", v7];

    v5 = v8;
  }

  return v5;
}

- (id)labelForNSBundle:(void *)bundle length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v8 = [(VMUObjectIdentifier *)self labelForObjectOfClass:@"CFBundle" atOffset:16 ofObject:bundle withLength:length];
  if (!v8)
  {
    v9 = [(VMUObjectIdentifier *)self labelForObjectOfClass:@"NSPathStore2" atOffset:48 ofObject:bundle withLength:length];
    if (v9)
    {
      v10 = v9;
      v8 = [v9 substringFromIndex:{objc_msgSend(v9, "rangeOfString:", @""}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)labelForNSNumber:(void *)number length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_objectContentLevel == 3 && (Type = CFNumberGetType(number), (Type - 1) <= 5))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = labelForNSNumber_length_remoteAddress__kNSNumberTypeStrings[Type];
    v10 = [number description];
    v11 = [v8 stringWithFormat:@"type %s  value: %@", v9, v10];

    v12 = [(NSMutableSet *)self->_stringUniquingSet member:v11];
    if (!v12)
    {
      [(NSMutableSet *)self->_stringUniquingSet addObject:v11];
      v12 = v11;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)formattedDateLabel:(id)label
{
  v4 = formattedDateLabel__dateFormatter;
  if (!formattedDateLabel__dateFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v6 = formattedDateLabel__dateFormatter;
    formattedDateLabel__dateFormatter = v5;

    [formattedDateLabel__dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    v4 = formattedDateLabel__dateFormatter;
  }

  return [v4 stringFromDate:label];
}

- (id)labelForNSDate:(void *)date length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_objectContentLevel == 3)
  {
    v7 = [(VMUObjectIdentifier *)self formattedDateLabel:date, length, address, v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)labelForItemCount:(int64_t)count
{
  if (self->_objectContentLevel == 3)
  {
    v5 = [(NSMapTable *)self->_itemCountToLabelStringUniquingMap objectForKey:?];
    if (!v5)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"item count: %ld", count];
      [(NSMapTable *)self->_itemCountToLabelStringUniquingMap setObject:v5 forKey:count];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)labelForNSArray:(void *)array length:(unint64_t)length remoteAddress:(unint64_t)address
{
  Count = CFArrayGetCount(array);

  return [(VMUObjectIdentifier *)self labelForItemCount:Count];
}

- (id)labelForNSDictionary:(void *)dictionary length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v6 = [dictionary count];

  return [(VMUObjectIdentifier *)self labelForItemCount:v6];
}

- (id)labelForNSCFDictionary:(void *)dictionary length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (objectIsDeallocatingOrDeallocated(dictionary))
  {
    v9 = 0;
  }

  else
  {
    v9 = [(VMUObjectIdentifier *)self labelForNSDictionary:dictionary length:length remoteAddress:address];
  }

  return v9;
}

- (id)labelForNSConcreteHashTable:(void *)table length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v6 = [table count];

  return [(VMUObjectIdentifier *)self labelForItemCount:v6];
}

- (id)labelForNSSet:(void *)set length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v6 = [set count];

  return [(VMUObjectIdentifier *)self labelForItemCount:v6];
}

- (id)labelForNSCFSet:(void *)set length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (objectIsDeallocatingOrDeallocated(set))
  {
    v9 = 0;
  }

  else
  {
    v9 = [(VMUObjectIdentifier *)self labelForNSSet:set length:length remoteAddress:address];
  }

  return v9;
}

- (id)labelForNSCFData:(void *)data length:(unint64_t)length remoteAddress:(unint64_t)address
{
  task = self->_task;
  readonlyRegionRanges = self->_readonlyRegionRanges;
  WeakRetained = objc_loadWeakRetained(&self->_scanner);
  symbolicator = self->_symbolicator;
  v12 = stringFromMappedNSCFData(task, data, address, length, readonlyRegionRanges, 2, WeakRetained);

  return v12;
}

- (id)labelForNSConcreteData:(void *)data length:(unint64_t)length remoteAddress:(unint64_t)address
{
  task = self->_task;
  readonlyRegionRanges = self->_readonlyRegionRanges;
  WeakRetained = objc_loadWeakRetained(&self->_scanner);
  symbolicator = self->_symbolicator;
  v12 = stringFromMappedNSCFData(task, data, address, length, readonlyRegionRanges, 1, WeakRetained);

  return v12;
}

- (id)labelForNSInlineData:(void *)data length:(unint64_t)length remoteAddress:(unint64_t)address
{
  task = self->_task;
  readonlyRegionRanges = self->_readonlyRegionRanges;
  WeakRetained = objc_loadWeakRetained(&self->_scanner);
  symbolicator = self->_symbolicator;
  v12 = stringFromMappedNSCFData(task, data, address, length, readonlyRegionRanges, 0, WeakRetained);

  return v12;
}

- (id)labelForCoreMediaFigObject:(void *)object length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v8 = *(object + 3);
  v9 = [VMUTask ptrauthStripDataPointer:?];
  if (HIDWORD(v9))
  {
    v10 = (v9 & 7) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v9;
  v30 = 0;
  memoryCache = [(VMUTask *)self->_task memoryCache];
  LODWORD(v11) = [memoryCache peekAtAddress:v11 size:16 returnsBuf:&v30];

  if (v11 || v30 == 0)
  {
    goto LABEL_20;
  }

  v14 = *(v30 + 8);
  v15 = [VMUTask ptrauthStripDataPointer:?];
  if (!HIDWORD(v15) || (v15 & 7) != 0)
  {
    goto LABEL_20;
  }

  v17 = v15;
  v29 = 0;
  memoryCache2 = [(VMUTask *)self->_task memoryCache];
  v19 = [memoryCache2 peekAtAddress:v17 size:8 returnsBuf:&v29];

  v20 = v19 || v29 == 0;
  if (v20 || (*v29 - 1025) < 0xFFFFFFFFFFFFFC03)
  {
    goto LABEL_20;
  }

  memoryCache3 = [(VMUTask *)self->_task memoryCache];
  v24 = [memoryCache3 peekAtAddress:v17 size:88 returnsBuf:&v29];

  v21 = 0;
  if (!v24 && v29)
  {
    v25 = v29[10];
    if (!v25)
    {
      goto LABEL_20;
    }

    v21 = 0;
    v26 = __CFADD__(v25, 32);
    v27 = v25 + 32;
    if (v26 || length <= v27)
    {
      goto LABEL_21;
    }

    v28 = object + v27;
    if (!v28)
    {
LABEL_20:
      v21 = 0;
      goto LABEL_21;
    }

    v21 = strnlen(v28, length - v27);
    if (v21)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"label: %.*s", v21, v28];
    }
  }

LABEL_21:

  return v21;
}

- (id)labelForOSDispatchMach:(void *)mach length:(unint64_t)length remoteAddress:(unint64_t)address
{
  label = dispatch_queue_get_label(mach);
  if (label)
  {
    if (![(VMUObjectIdentifier *)self _remoteAddressIsOKtoRead:label])
    {
      v9 = 0;
      goto LABEL_23;
    }

    memoryCache = [(VMUTask *)self->_task memoryCache];
    v8 = [memoryCache peekStringAtAddress:label];
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v8 = "";
  }

  if (!strncmp(v8, "com.apple.xpc.anonymous", 0x17uLL))
  {
    v9 = @"anonymous";
    goto LABEL_23;
  }

  if (strstr(v8, ".peer.0x"))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    goto LABEL_23;
  }

  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
  Name = CSSymbolOwnerGetName();
  if (Name)
  {
    v13 = Name;
    if (strcmp(Name, "CoreFoundation"))
    {
      goto LABEL_21;
    }
  }

  if (!strncmp(v8, "com.apple.CFNetwork", 0x13uLL))
  {
    v13 = "CFNetwork";
LABEL_21:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s (from %s)", v8, v13];
    goto LABEL_22;
  }

  if (!strncmp(v8, "com.apple.CF", 0xCuLL))
  {
    v13 = "CoreFoundation";
    goto LABEL_21;
  }

  if (!strncmp(v8, "com.apple.lsd", 0xDuLL))
  {
    v13 = "LaunchServices";
    goto LABEL_21;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", v8, v15];
  v9 = LABEL_22:;
LABEL_23:

  return v9;
}

- (id)labelForOSDispatchQueue:(void *)queue length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v6 = [(VMUObjectIdentifier *)self labelForOSDispatchMach:queue length:length remoteAddress:address];
  if (v6)
  {
    relative_priority_ptr = 0;
    HIDWORD(v8) = dispatch_queue_get_qos_class(queue, &relative_priority_ptr) - 9;
    LODWORD(v8) = HIDWORD(v8);
    v7 = v8 >> 2;
    if (v7 <= 6 && ((0x5Du >> v7) & 1) != 0)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  QOS %s", v6, off_1E8279600[v7]];
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)labelForOSLog:(void *)log length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_objectContentLevel == 3)
  {
    block[11] = v5;
    v18 = v6;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__VMUObjectIdentifier_labelForOSLog_length_remoteAddress___block_invoke;
    block[3] = &unk_1E8278288;
    block[4] = self;
    if (labelForOSLog_length_remoteAddress__onceToken != -1)
    {
      dispatch_once(&labelForOSLog_length_remoteAddress__onceToken, block);
    }

    if (labelForOSLog_length_remoteAddress__libtraceVersion > 0x41A || (v9 = *(log + 5), !(v9 >> 28)))
    {
      v9 = *(log + 3);
      if (!(v9 >> 28))
      {
        goto LABEL_13;
      }
    }

    memoryCache = [(VMUTask *)self->_task memoryCache];
    v11 = [memoryCache peekStringAtAddress:v9 + 4];

    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = strlen(v11);
    memoryCache2 = [(VMUTask *)self->_task memoryCache];
    v14 = [memoryCache2 peekStringAtAddress:v9 + v12 + 5];

    if (v14)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%s:%s]", v11, v14];
    }

    else
    {
LABEL_13:
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __58__VMUObjectIdentifier_labelForOSLog_length_remoteAddress___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) isExclaveCore];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v2)
  {
    CSSymbolicatorGetSymbolOwner();
  }

  else
  {
    CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  result = CSSymbolOwnerGetVersion();
  if (result)
  {
    result = atoi(result);
    labelForOSLog_length_remoteAddress__libtraceVersion = result;
  }

  return result;
}

- (id)noLabelForOSXPCObject:(void *)object length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (noLabelForOSXPCObject_length_remoteAddress__onceToken != -1)
  {
    [VMUObjectIdentifier noLabelForOSXPCObject:length:remoteAddress:];
  }

  if (noLabelForOSXPCObject_length_remoteAddress__shouldGetLabelForAllOSXPCObjects == 1)
  {
    v9 = [(VMUObjectIdentifier *)self labelForOSXPCObject:object length:length remoteAddress:address];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

const char *__66__VMUObjectIdentifier_noLabelForOSXPCObject_length_remoteAddress___block_invoke()
{
  result = getenv("SYMBOLICATION_LABELS_FOR_ALL_OSXPCOBJECTS");
  if (result)
  {
    result = strcmp(result, "YES");
    if (!result)
    {
      noLabelForOSXPCObject_length_remoteAddress__shouldGetLabelForAllOSXPCObjects = 1;
    }
  }

  return result;
}

- (id)labelForOSXPCObject:(void *)object length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_objectContentLevel == 3 && (v5 = xpc_inspect_copy_description()) != 0)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    free(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __64__VMUObjectIdentifier_labelForOSXPCObject_length_remoteAddress___block_invoke(uint64_t a1, void *a2, uint64_t a3, size_t a4)
{
  v6 = (*(*(*(a1 + 32) + 48) + 16))();
  if (!v6)
  {
    return 1;
  }

  memcpy(a2, v6, a4);
  return 0;
}

- (id)labelForOSXPCString:(void *)string length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v5 = *(string + 3);
  if (v5 && *(string + 4) && [(VMUObjectIdentifier *)self _remoteAddressIsOKtoRead:*(string + 4), length, address]&& (v7 = (*(self->_memoryReader + 2))()) != 0 && !*(v7 + v5))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    v8 = [(VMUObjectIdentifier *)self uniquifyStringLabel:v10 stringType:1 printDetail:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)labelForOSXPCDictionary:(void *)dictionary length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (labelForOSXPCDictionary_length_remoteAddress__onceToken != -1)
  {
    [VMUObjectIdentifier labelForOSXPCDictionary:length:remoteAddress:];
  }

  v8 = *(dictionary + 7) & 3;
  v9 = (*(dictionary + 7) & 3) == 1 && global_xpc_received_dictionary_size > length;
  if (v9 || ((*(dictionary + 7) & 3) == 2 ? (v10 = global_xpc_reply_dictionary_size > length) : (v10 = 0), v10))
  {
    v15 = 0;
    goto LABEL_31;
  }

  v11 = MEMORY[0x1E696AD60];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(&off_1E8279530 + v8)];
  v13 = [v11 stringWithString:v12];

  if (v8 == 3 || !v8)
  {
    if ([v13 length])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    goto LABEL_30;
  }

  if (labelForOSXPCDictionary_length_remoteAddress___xpc_dictionary_get_transaction && labelForOSXPCDictionary_length_remoteAddress___xpc_dictionary_get_transaction(dictionary))
  {
    [v13 appendString:@" for ACTIVE TRANSACTION with"];
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  remote_connection = xpc_dictionary_get_remote_connection(dictionary);
  if (remote_connection)
  {
    v18 = remote_connection;
    WeakRetained = objc_loadWeakRetained(&self->_scanner);
    v20 = [WeakRetained nodeForAddress:v18];

    v21 = @"<unknown connection>";
    if (v20 != -1)
    {
      v22 = objc_loadWeakRetained(&self->_scanner);
      v23 = [v22 labelForNode:v20];

      if (v23)
      {
        v21 = v23;
      }
    }

    goto LABEL_28;
  }

  v21 = @"<unknown connection>";
  if (v16)
  {
LABEL_28:
    [v13 appendFormat:@" %@", v21];
  }

  v15 = v13;

LABEL_30:
LABEL_31:

  return v15;
}

void *__68__VMUObjectIdentifier_labelForOSXPCDictionary_length_remoteAddress___block_invoke()
{
  result = dlopen("/usr/lib/system/libxpc.dylib", 16);
  if (result)
  {
    v1 = result;
    labelForOSXPCDictionary_length_remoteAddress___xpc_dictionary_get_transaction = dlsym(result, "_xpc_dictionary_get_transaction");

    return dlclose(v1);
  }

  return result;
}

- (id)labelForOSXPCDictionaryStorageNode:(void *)node length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_objectContentLevel == 3 && !*(node + 6) && (v9 = 0, stringFromBytes(node + 32, length - 32, &v9), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key: %@", v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)labelForOSTransaction:(void *)transaction length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_objectContentLevel == 1)
  {
    v5 = 0;
    goto LABEL_44;
  }

  if (labelForOSTransaction_length_remoteAddress__onceToken != -1)
  {
    [VMUObjectIdentifier labelForOSTransaction:length:remoteAddress:];
  }

  if (labelForOSTransaction_length_remoteAddress___vmu_os_transaction_get_return_address)
  {
    return_address = labelForOSTransaction_length_remoteAddress___vmu_os_transaction_get_return_address(transaction);
  }

  else
  {
    return_address = 0;
  }

  if (labelForOSTransaction_length_remoteAddress___vmu_os_transaction_get_timestamp)
  {
    v10 = dword_1EC1D0C1C == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  v12 = 0.0;
  if (!v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scanner);
    suspendTimeContinuous = [WeakRetained suspendTimeContinuous];
    if (!suspendTimeContinuous)
    {
      suspendTimeContinuous = mach_continuous_approximate_time();
    }

    v15 = suspendTimeContinuous * labelForOSTransaction_length_remoteAddress__info / dword_1EC1D0C1C;
    v12 = (v15 - labelForOSTransaction_length_remoteAddress___vmu_os_transaction_get_timestamp(transaction)) / 1000000000.0;
  }

  if (!labelForOSTransaction_length_remoteAddress___vmu_os_transaction_get_description)
  {
    if (self->_objectContentLevel == 3)
    {
      v21 = os_transaction_copy_description();
      v20 = 1;
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  description = labelForOSTransaction_length_remoteAddress___vmu_os_transaction_get_description(transaction);
  v17 = description;
  if (description < transaction || transaction + length <= description || (v18 = malloc_type_malloc(length, 0x27449588uLL), memcpy(v18, transaction, length), v19 = labelForOSTransaction_length_remoteAddress___vmu_os_transaction_get_description(v18), free(v18), v17 == v19))
  {
    if (v17 && [(VMUObjectIdentifier *)self _remoteAddressIsOKtoRead:v17])
    {
      memoryCache = [(VMUTask *)self->_task memoryCache];
      v21 = [memoryCache peekStringAtAddress:v17];

LABEL_33:
      v20 = 0;
      goto LABEL_34;
    }

LABEL_32:
    v21 = 0;
    goto LABEL_33;
  }

  v20 = 0;
  v21 = 0;
  if (v18 <= v19 && v18 + length > v19)
  {
    v20 = 0;
    if (self->_objectContentLevel == 3)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }
  }

LABEL_34:
  if (return_address)
  {
    v23 = v11;
  }

  else
  {
    v23 = 0;
  }

  if (v23 != 1)
  {
    if (v11)
    {
      v28 = "";
      if (v21)
      {
        v28 = v21;
      }

      v29 = 3;
      if (self->_objectContentLevel != 3)
      {
        v29 = 0;
      }

      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%.*f seconds] %s", v29, *&v12, v28];
    }

    else
    {
      if (!v21)
      {
        v5 = 0;
        if (!v20)
        {
          goto LABEL_44;
        }

LABEL_43:
        free(v21);
        goto LABEL_44;
      }

      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
    }

    v5 = v30;
    if (!v20)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v24 = [(VMUObjectIdentifier *)self symbolForRemoteAddress:return_address - 1];
  v25 = "";
  if (v21)
  {
    v25 = v21;
  }

  v26 = 3;
  if (self->_objectContentLevel != 3)
  {
    v26 = 0;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%.*f seconds] %s  Created at: %@", v26, *&v12, v25, v24];

  if (v20)
  {
    goto LABEL_43;
  }

LABEL_44:

  return v5;
}

void *__66__VMUObjectIdentifier_labelForOSTransaction_length_remoteAddress___block_invoke()
{
  mach_timebase_info(&labelForOSTransaction_length_remoteAddress__info);
  result = dlopen("/usr/lib/system/libxpc.dylib", 16);
  if (result)
  {
    v1 = result;
    labelForOSTransaction_length_remoteAddress___vmu_os_transaction_get_timestamp = dlsym(result, "os_transaction_get_timestamp");
    labelForOSTransaction_length_remoteAddress___vmu_os_transaction_get_description = dlsym(v1, "os_transaction_get_description");
    labelForOSTransaction_length_remoteAddress___vmu_os_transaction_get_return_address = dlsym(v1, "os_transaction_get_ra");

    return dlclose(v1);
  }

  return result;
}

- (id)labelFor_RBSAssertionDescriptor:(void *)descriptor length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (length < 0x20)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(VMUObjectIdentifier *)self labelForNSCFStringAtRemoteAddress:*(descriptor + 3) printDetail:0, address, v5];
  }

  return v7;
}

- (void)_findOffsetsInOSXPCConnection:(void *)connection length:(unint64_t)length
{
  if (self->_osDispatchMachOffsetInOSXPCConnection)
  {
    v4 = 0;
  }

  else
  {
    v4 = length >= 0x10;
  }

  if (v4)
  {
    for (i = 24; ; i += 8)
    {
      v9 = *(connection + i - 16);
      v10 = [VMUTask stripExtraPointerBits:?];
      if (HIDWORD(v10) && (v10 & 7) == 0)
      {
        v12 = v10;
        WeakRetained = objc_loadWeakRetained(&self->_scanner);
        v14 = [WeakRetained nodeForAddress:v12];

        if (v14 != -1)
        {
          v15 = objc_loadWeakRetained(&self->_scanner);
          v16 = v15;
          if (v15)
          {
            [v15 nodeDetails:v14];
          }

          className = [0 className];
          v18 = [className isEqualToString:@"OS_dispatch_mach"];

          if (v18)
          {
            break;
          }
        }
      }

      v19 = i;
      if (v19 > length)
      {
        return;
      }
    }

    self->_osDispatchMachOffsetInOSXPCConnection = i - 16;
  }
}

- (id)labelForOSXPCConnection:(void *)connection length:(unint64_t)length remoteAddress:(unint64_t)address
{
  osDispatchMachOffsetInOSXPCConnection = self->_osDispatchMachOffsetInOSXPCConnection;
  if (!osDispatchMachOffsetInOSXPCConnection && ([(VMUObjectIdentifier *)self _findOffsetsInOSXPCConnection:connection length:length, address], osDispatchMachOffsetInOSXPCConnection = self->_osDispatchMachOffsetInOSXPCConnection, !osDispatchMachOffsetInOSXPCConnection) || ([(VMUObjectIdentifier *)self labelForObjectOfClass:@"OS_dispatch_mach" atOffset:osDispatchMachOffsetInOSXPCConnection ofObject:connection withLength:length], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = @"<couldn't read name>";
  }

  pid = xpc_connection_get_pid(connection);
  if (pid)
  {
    v11 = pid;
    pidToProcessNameDict = self->_pidToProcessNameDict;
    v13 = [MEMORY[0x1E696AD98] numberWithInt:pid];
    v14 = [(NSMutableDictionary *)pidToProcessNameDict objectForKeyedSubscript:v13];

    if (!v14)
    {
      v15 = [[VMUProcInfo alloc] initWithPid:v11];
      name = [(VMUProcInfo *)v15 name];
      v17 = name;
      v18 = @"<unknown>";
      if (name)
      {
        v18 = name;
      }

      v14 = v18;

      v19 = self->_pidToProcessNameDict;
      v20 = [MEMORY[0x1E696AD98] numberWithInt:v11];
      [(NSMutableDictionary *)v19 setObject:v14 forKeyedSubscript:v20];
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ pid %u [%s]", v9, v11, -[__CFString UTF8String](v14, "UTF8String")];
  }

  else
  {
    v21 = [(__CFString *)v9 stringByAppendingString:@" [no process]"];
  }

  return v21;
}

- (id)labelForOSXPCActivity:(void *)activity length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v5 = *(activity + 3);
  if (v5 && -[VMUObjectIdentifier _remoteAddressIsOKtoRead:](self, "_remoteAddressIsOKtoRead:", *(activity + 3), length, address) && (-[VMUTask memoryCache](self->_task, "memoryCache"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 peekStringAtAddress:v5], v7, v8))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)labelForProtocol:(void *)protocol length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v7 = *(protocol + 10);
  if (v7)
  {
    if ([(VMUObjectIdentifier *)self _remoteAddressIsOKtoRead:*(protocol + 10), length, address])
    {
      memoryCache = [(VMUTask *)self->_task memoryCache];
      v9 = [memoryCache peekStringAtAddress:v7];

      if (v9)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = *(protocol + 1);
  if (v10 && -[VMUObjectIdentifier _remoteAddressIsOKtoRead:](self, "_remoteAddressIsOKtoRead:", v10, length, address) && (-[VMUTask memoryCache](self->_task, "memoryCache"), v11 = objc_claimAutoreleasedReturnValue(), v9 = [v11 peekStringAtAddress:v10], v11, v9))
  {
LABEL_7:
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)labelForNSXPCInterface:(void *)interface length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (labelForNSXPCInterface_length_remoteAddress__onceToken != -1)
  {
    [VMUObjectIdentifier labelForNSXPCInterface:length:remoteAddress:];
  }

  v8 = [(VMUObjectIdentifier *)self labelForObjectOfClass:@"Protocol" atOffset:labelForNSXPCInterface_length_remoteAddress__offsetOfProtocol ofObject:interface withLength:length];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Protocol: %@", v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

ptrdiff_t __67__VMUObjectIdentifier_labelForNSXPCInterface_length_remoteAddress___block_invoke()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "_protocol");
  result = ivar_getOffset(InstanceVariable);
  labelForNSXPCInterface_length_remoteAddress__offsetOfProtocol = result;
  return result;
}

- (id)labelForNSXPCConnection:(void *)connection length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (labelForNSXPCConnection_length_remoteAddress__onceToken != -1)
  {
    [VMUObjectIdentifier labelForNSXPCConnection:length:remoteAddress:];
  }

  v8 = [(VMUObjectIdentifier *)self labelForObjectOfClass:@"NSXPCInterface" atOffset:labelForNSXPCConnection_length_remoteAddress__offsetOfRemoteObjectInterface ofObject:connection withLength:length];
  v9 = [(VMUObjectIdentifier *)self labelForObjectOfClass:@"OS_xpc_connection" atOffset:labelForNSXPCConnection_length_remoteAddress__offsetOfConnection ofObject:connection withLength:length];
  if (v8 | v9)
  {
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"Protocol: <couldn't read name>";
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F461F9C8;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  Connection: %@", v10, v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

ptrdiff_t __68__VMUObjectIdentifier_labelForNSXPCConnection_length_remoteAddress___block_invoke()
{
  v0 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v0, "_connection");
  labelForNSXPCConnection_length_remoteAddress__offsetOfConnection = ivar_getOffset(InstanceVariable);
  v2 = class_getInstanceVariable(v0, "_remoteObjectInterface");
  result = ivar_getOffset(v2);
  labelForNSXPCConnection_length_remoteAddress__offsetOfRemoteObjectInterface = result;
  return result;
}

- (id)labelFor__NSMallocBlock__:(void *)block__ length:(unint64_t)length remoteAddress:(unint64_t)address
{
  v6 = *(block__ + 2);
  v7 = [VMUTask ptrauthStripFunctionPointer:?];

  return [(VMUObjectIdentifier *)self symbolForRemoteAddress:v7];
}

- (id)symbolForRemoteAddress:(unint64_t)address
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
  if (CSIsNull())
  {
    v6 = 0;
  }

  else
  {
    Name = CSSymbolOwnerGetName();
    if (Name)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
    }

    else
    {
      v8 = @"<unknown-binary>";
    }

    CSSymbolOwnerGetSymbolWithAddress();
    if ((CSIsNull() & 1) != 0 || (v9 = CSSymbolGetName()) == 0 || ([MEMORY[0x1E696AEC0] stringWithUTF8String:v9], (baseAddress = objc_claimAutoreleasedReturnValue()) == 0))
    {
      BaseAddress = CSSymbolOwnerGetBaseAddress();
      if (BaseAddress)
      {
        baseAddress = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown-symbol> %#qx + %qu", BaseAddress, address - BaseAddress];
      }

      else
      {
        baseAddress = @"???";
      }
    }

    CSSymbolOwnerGetSourceInfoWithAddress();
    if (CSIsNull())
    {
      v12 = &stru_1F461F9C8;
    }

    else
    {
      Path = CSSourceInfoGetPath();
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %s:%u", Path, CSSourceInfoGetLineNumber()];
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %@  %#qx%@", v8, baseAddress, address, v12];
  }

  return v6;
}

- (id)labelForClassDataRO:(void *)o length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_objectContentLevel == 3)
  {
    v6 = VMUGetClassNameFromClassDataRO(self->_task, self->_memoryReader, address);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)labelForClassDataRW:(void *)w length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_objectContentLevel == 3)
  {
    v6 = VMUGetClassNameFromClassDataRW(self->_task, self->_memoryReader, self->_objcABI, address);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)labelForClassDataExtRW:(void *)w length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_objectContentLevel == 3)
  {
    v6 = VMUGetClassNameFromClassDataExtRW(self->_task, self->_memoryReader, self->_objcABI, address);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)labelForClassStructure:(void *)structure length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_objectContentLevel == 3)
  {
    v8 = VMUGetClassNameFromClassStructure(self->_task, self->_memoryReader, self->_objcABI, address);
    if (!v8)
    {
      v8 = VMUGetClassNameFromClassStructure(self->_task, self->_memoryReader, self->_objcABI, address + 16);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)labelForCStructureWithMemory:(void *)memory length:(unint64_t)length remoteAddress:(unint64_t)address classInfo:(id)info
{
  infoCopy = info;
  className = [infoCopy className];
  className2 = [global_xpcDictionaryStorageClassInfo className];
  v13 = [className isEqualToString:className2];

  if (!v13)
  {
    objCClassStructureClassInfos = self->_objCClassStructureClassInfos;
    if (objCClassStructureClassInfos)
    {
      if (*objCClassStructureClassInfos == infoCopy || objCClassStructureClassInfos[1] == infoCopy)
      {
        v14 = [(VMUObjectIdentifier *)self labelForClassStructure:memory length:length remoteAddress:address];
        goto LABEL_11;
      }

      if (objCClassStructureClassInfos[2] == infoCopy)
      {
        v14 = [(VMUObjectIdentifier *)self labelForClassDataRW:memory length:length remoteAddress:address];
        goto LABEL_11;
      }

      if (objCClassStructureClassInfos[3] == infoCopy)
      {
        v14 = [(VMUObjectIdentifier *)self labelForClassDataExtRW:memory length:length remoteAddress:address];
        goto LABEL_11;
      }

      if (objCClassStructureClassInfos[5] == infoCopy)
      {
        v14 = [(VMUObjectIdentifier *)self labelForClassDataRO:memory length:length remoteAddress:address];
        goto LABEL_11;
      }
    }

    v16 = 0;
    goto LABEL_12;
  }

  v14 = [(VMUObjectIdentifier *)self labelForOSXPCDictionaryStorageNode:memory length:length remoteAddress:address];
LABEL_11:
  v16 = v14;
LABEL_12:

  return v16;
}

- (id)labelForMallocBlock:(_VMURange)block
{
  if (block.location == self->_cfBooleanTrueAddress)
  {
    objectContentLevel = self->_objectContentLevel;
    v4 = @"YES";
LABEL_5:
    if (objectContentLevel == 3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    goto LABEL_10;
  }

  if (block.location == self->_cfBooleanFalseAddress)
  {
    objectContentLevel = self->_objectContentLevel;
    v4 = @"NO";
    goto LABEL_5;
  }

  v6 = [(VMUObjectIdentifier *)self labelForMallocBlock:block.location usingHandlerBlock:block.length, 0];
LABEL_10:

  return v6;
}

- (id)labelForMallocBlock:(_VMURange)block usingHandlerBlock:(id)handlerBlock
{
  length = block.length;
  location = block.location;
  memoryReader = self->_memoryReader;
  v8 = memoryReader[2];
  handlerBlockCopy = handlerBlock;
  v10 = v8(memoryReader, location, length);
  v11 = [(VMUObjectIdentifier *)self labelForMemory:v10 length:length remoteAddress:location classInfo:0 usingHandlerBlock:handlerBlockCopy];

  return v11;
}

- (id)labelForMemory:(unint64_t)memory length:(uint64_t)length remoteAddress:(void *)address classInfo:(void *)info usingHandlerBlock:
{
  addressCopy = address;
  infoCopy = info;
  v13 = 0;
  if (self && a2)
  {
    if ((*(self + 180) & 0xFFFFFFFE) != 2)
    {
      v13 = 0;
      goto LABEL_54;
    }

    v14 = objc_autoreleasePoolPush();
    if (!*(self + 336))
    {
      [self buildIsaToObjectLabelHandlerMap];
    }

    if ([addressCopy remoteIsa])
    {
      v15 = addressCopy;
    }

    else
    {
      v15 = [self classInfoForMemory:a2 length:memory remoteAddress:length];
    }

    v16 = v15;
    if (v15)
    {
      if ([v15 instanceSize] > memory)
      {
LABEL_12:
        v13 = 0;
LABEL_46:

LABEL_53:
        objc_autoreleasePoolPop(v14);
        goto LABEL_54;
      }

      if (!addressCopy)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (!addressCopy)
      {
        goto LABEL_24;
      }

      v13 = [self labelForCStructureWithMemory:a2 length:memory remoteAddress:length classInfo:addressCopy];
      if (v13)
      {
        goto LABEL_46;
      }
    }

    v36 = v14;
    if (v16 != addressCopy)
    {
      className = [addressCopy className];
      v18 = className;
      if (className && (([className hasSuffix:@" (malloc)"] & 1) != 0 || (objc_msgSend(v18, "hasSuffix:", @" (char[])") & 1) != 0 || (objc_msgSend(addressCopy, "isDerivedFromStackBacktrace") & 1) != 0))
      {

        if (v16)
        {
          addressCopy = 0;
          goto LABEL_31;
        }

LABEL_24:
        if (![self _remoteAddressIsOKtoRead:length])
        {
          v21 = 0;
          v13 = 0;
LABEL_51:
          addressCopy = 0;
          goto LABEL_52;
        }

        v37 = 0;
        v19 = stringFromBytes(a2, memory, &v37);
        if (v19)
        {
          v20 = [self uniquifyStringLabel:v19 stringType:v37 printDetail:1];
        }

        else
        {
          if (![self isTaggedPointer:a2])
          {
            v13 = 0;
            goto LABEL_50;
          }

          v20 = [self labelForTaggedPointer:a2];
        }

        v13 = v20;
LABEL_50:

        v21 = 0;
        goto LABEL_51;
      }

      className2 = [v16 className];
      v23 = [v18 isEqualToString:className2];

      if (!v23)
      {
        v13 = 0;
        v14 = v36;
        goto LABEL_46;
      }
    }

    if (!v16)
    {
      v21 = 0;
      v13 = 0;
      v14 = v36;
      goto LABEL_52;
    }

    v14 = v36;
LABEL_31:
    if ([v16 isCoreMediaFigObject])
    {
      v24 = [self labelForCoreMediaFigObject:a2 length:memory remoteAddress:length];
LABEL_35:
      v13 = v24;
      v21 = 0;
LABEL_52:

      goto LABEL_53;
    }

    if (*(self + 68) == 1)
    {
      v24 = [*(self + 472) labelForDriverKitMemory:a2 length:memory remoteAddress:length class:v16];
      goto LABEL_35;
    }

    v25 = -[VMUObjectIdentifier objectLabelHandlerForRemoteIsa:](self, [v16 remoteIsa]);
    v26 = v25;
    if (v25)
    {
      v27 = *(v25 + 16);
      if (v27)
      {
        if (memory < class_getInstanceSize(*(v25 + 16)))
        {
          goto LABEL_43;
        }

        if (labelForMemory_length_remoteAddress_classInfo_usingHandlerBlock__onceToken != -1)
        {
          [VMUObjectIdentifier labelForMemory:length:remoteAddress:classInfo:usingHandlerBlock:];
        }

        Instance = labelForMemory_length_remoteAddress_classInfo_usingHandlerBlock__located_class_createInstance(v27);
        v29 = Instance;
        if (!Instance || malloc_size(Instance) < memory)
        {
          goto LABEL_43;
        }

        memcpy(v29 + 8, a2 + 8, memory - 8);
        v35 = v29;
        a2 = v29;
      }

      else
      {
        v35 = 0;
      }

      v31 = v26;
      v21 = v31;
      if (infoCopy)
      {
        v32 = infoCopy[2](infoCopy, v31, a2, memory, length);
      }

      else
      {
        v33 = v31[3];
        if (v33)
        {
          v34 = v31[3];
          [self v33];
        }

        else
        {
          [self 0];
        }
        v32 = ;
      }

      v13 = v32;
      if (v35)
      {
        free(v35);
      }

      goto LABEL_52;
    }

LABEL_43:

    goto LABEL_12;
  }

LABEL_54:

  return v13;
}

- (id)labelForObjectOfClass:(id)class atOffset:(unsigned int)offset ofObject:(void *)object withLength:(unint64_t)length
{
  classCopy = class;
  if (offset + 8 <= length)
  {
    if (*(object + offset))
    {
      v11 = [VMUTask stripExtraPointerBits:?];
      WeakRetained = objc_loadWeakRetained(&self->_scanner);

      if (WeakRetained)
      {
        v13 = objc_loadWeakRetained(&self->_scanner);
        v14 = [v13 nodeForAddress:v11];

        if (v14 != -1)
        {
          v15 = objc_loadWeakRetained(&self->_scanner);
          v16 = v15;
          if (v15)
          {
            [v15 nodeDetails:v14];
          }
        }
      }
    }
  }

  return 0;
}

id __74__VMUObjectIdentifier_labelForObjectOfClass_atOffset_ofObject_withLength___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  if ([*(v9 + 1) isEqualToString:*(a1 + 32)])
  {
    v10 = *(a1 + 40);
    v11 = *(v9 + 3);
    if (v11)
    {
      v12 = *(v9 + 3);
      [v10 v11];
    }

    else
    {
      [v10 0];
    }
    v13 = ;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t (*__87__VMUObjectIdentifier_labelForMemory_length_remoteAddress_classInfo_usingHandlerBlock___block_invoke())(void)
{
  result = dlsym(0xFFFFFFFFFFFFFFFFLL, "class_createInstance");
  labelForMemory_length_remoteAddress_classInfo_usingHandlerBlock__located_class_createInstance = result;
  return result;
}

- (_CSTypeRef)_symbolicator
{
  opaque_2 = self->_symbolicator._opaque_2;
  opaque_1 = self->_symbolicator._opaque_1;
  result._opaque_2 = opaque_2;
  result._opaque_1 = opaque_1;
  return result;
}

- (id)_scanner
{
  WeakRetained = objc_loadWeakRetained(&self->_scanner);

  return WeakRetained;
}

- (int)_populateSwiftReflectionInfo:(_DummyVMUSwiftReflectionContext *)info
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  [(VMUTask *)self->_task createSymbolicatorWithFlags:CSSymbolicatorGetFlagsForNoSymbolOrSourceInfoData() andNotification:0];
  CSSymbolicatorForeachSymbolOwnerAtTime();
  CSRelease();
  v3 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v3;
}

BOOL __52__VMUObjectIdentifier__populateSwiftReflectionInfo___block_invoke(uint64_t a1)
{
  CSSymbolOwnerGetBaseAddress();
  result = vmu_swift_reflection_addImage(*(a1 + 40));
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (void)_populateSwiftABIVariables
{
  if ([(VMUTask *)self->_task isExclaveCore])
  {
    swiftMirror = self->_swiftMirror;
    v4 = 2;
LABEL_8:
    swiftMirror->var1 = v4;
    goto LABEL_9;
  }

  isExclaveCore = [(VMUTask *)self->_task isExclaveCore];
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  if (isExclaveCore)
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
  }

  else
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  v10 = SymbolOwner;
  v11 = v9;
  if (CSIsNull())
  {
    swiftMirror = self->_swiftMirror;
    v4 = 1;
    goto LABEL_8;
  }

  v14 = self->_swiftMirror;
  v15 = _map_remote_mangled_symbol_value(self->_memoryReader, "_objc_debug_swift_stable_abi_bit", v10, v11, 8);
  if (v15)
  {
    v14->var1 = *v15;
  }

  else
  {
    v14->var1 = 0;
  }

LABEL_9:
  v12 = self->_swiftMirror;
  if (v12->var0)
  {
    var1 = v12->var1;

    vmu_swift_reflection_setClassIsSwiftMask(var1);
  }
}

- (void)loadSwiftReflectionLibraries
{
  v3 = getenv("SYMBOLICATION_NO_SWIFT_REMOTE_MIRROR");
  if (!v3 || (v4 = v3, strcmp(v3, "YES")) && (*v4 != 49 || v4[1]))
  {
    v5 = getenv("SYMBOLICATION_LOG_SWIFT_REMOTE_MIRROR_MEMORY_READS");
    if (v5)
    {
      v6 = atoi(v5);
    }

    else
    {
      v6 = 0;
    }

    symbolicator = self->_symbolicator;
    v20 = _Block_copy(self->_memoryReader);
    v21 = createRemoteAddressToLocalAddressAndSizeMap();
    v22 = createRemoteStringToLengthMap();
    v23 = 0;
    isExclaveCore = [(VMUTask *)self->_task isExclaveCore];
    v26 = 0;
    v25 = v6;
    objc_initWeak(&v27, self);
    objc_copyWeak(&v28, &self->_scanner);
    objc_initWeak(&v29, self->_task);
    __copy_assignment_8_8_t0w16_sb16_s24_s32_t40w16_w56_w64_w72(&self->_swiftMirrorReaderContext, &symbolicator);
    ReflectionContextWithDataLayout = vmu_swift_reflection_createReflectionContextWithDataLayout(&self->_swiftMirrorReaderContext, _query_data_layout_function, _free_bytes_function, _read_bytes_function, _get_string_length, _get_symbol_address);
    if (ReflectionContextWithDataLayout && ![(VMUObjectIdentifier *)self _populateSwiftReflectionInfo:ReflectionContextWithDataLayout])
    {
      vmu_swift_reflection_destroyReflectionContext(ReflectionContextWithDataLayout);
      ReflectionContextWithDataLayout = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__VMUObjectIdentifier_loadSwiftReflectionLibraries__block_invoke;
    aBlock[3] = &unk_1E8278938;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    isExclaveCore2 = [(VMUTask *)self->_task isExclaveCore];
    opaque_1 = self->_symbolicator._opaque_1;
    opaque_2 = self->_symbolicator._opaque_2;
    if (isExclaveCore2)
    {
      SymbolOwner = CSSymbolicatorGetSymbolOwner();
    }

    else
    {
      CSSymbolicatorForeachSymbolOwnerWithNameAtTime();
      v14 = self->_symbolicator._opaque_1;
      v15 = self->_symbolicator._opaque_2;
      SymbolOwner = CSSymbolicatorGetAOutSymbolOwner();
    }

    v8[2](v8, SymbolOwner, v13);
    [(VMUObjectIdentifier *)self _loadSwiftAsyncTaskAndSlabRecognitionInfo];
    if (ReflectionContextWithDataLayout)
    {
      v16 = vmu_swift_reflection_typeRefForMangledTypeName(ReflectionContextWithDataLayout);
      swiftMirror = self->_swiftMirror;
      if (v16)
      {
        swiftMirror->var2 = v16;
      }

      else
      {
        swiftMirror->var2 = 0;
      }
    }

    else
    {
      swiftMirror = self->_swiftMirror;
    }

    swiftMirror->var0 = ReflectionContextWithDataLayout;

    __destructor_8_sb16_s24_s32_w56_w64_w72(&symbolicator);
  }
}

void __51__VMUObjectIdentifier_loadSwiftReflectionLibraries__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 176) == 1)
  {
    Path = CSSymbolOwnerGetPath();
    v7 = "<unavailable>";
    if (Path)
    {
      v7 = Path;
    }

    NSLog(&cfstr_SymbolicationD_5.isa, v7);
  }

  v8 = [[VMUSwiftRuntimeInfo alloc] initWithSwiftCore:a2 memoryReader:a3 task:*(*(a1 + 32) + 48), *(*(a1 + 32) + 8)];
  if (v8)
  {
    obj = v8;
    v9 = [(VMUSwiftRuntimeInfo *)v8 runtimeHasStableABI];
    v10 = *(a1 + 32);
    if (v9)
    {
      if (*(v10 + 160))
      {
        v8 = obj;
        if ((*(v10 + 176) & 1) == 0)
        {
          goto LABEL_15;
        }

        NSLog(&cfstr_SymbolicationD_7.isa);
      }

      else
      {
        objc_storeStrong((v10 + 160), obj);
        v8 = obj;
        if ((*(*(a1 + 32) + 176) & 1) == 0)
        {
          goto LABEL_15;
        }

        NSLog(&cfstr_SymbolicationD_6.isa);
      }
    }

    else
    {
      objc_storeStrong((v10 + 168), obj);
      v8 = obj;
      if (*(*(a1 + 32) + 176) != 1)
      {
        goto LABEL_15;
      }

      NSLog(&cfstr_SymbolicationD_8.isa);
    }

    v8 = obj;
  }

LABEL_15:
}

- (void)_loadSwiftAsyncTaskAndSlabRecognitionInfo
{
  v3 = getenv("DT_SKIP_PRECISE_SCANNING_SWIFT_ASYNC_ALLOCATIONS");
  if (!v3 || (v4 = v3, strcmp(v3, "YES")) && (*v4 != 49 || v4[1]))
  {
    isExclaveCore = [(VMUTask *)self->_task isExclaveCore];
    opaque_1 = self->_symbolicator._opaque_1;
    opaque_2 = self->_symbolicator._opaque_2;
    if (isExclaveCore)
    {
      SymbolOwner = CSSymbolicatorGetSymbolOwner();
    }

    else
    {
      SymbolOwner = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
    }

    v10 = SymbolOwner;
    v11 = v9;
    if (CSIsNull())
    {
      if (!_debugSwiftAsyncPrintfIsEnabled())
      {
        return;
      }

      v12 = "libswift_Concurrency";
      goto LABEL_19;
    }

    v13 = *MEMORY[0x1E69E9A60];
    CSSymbolicatorCreateWithTask();
    CSSymbolicatorGetSymbolOwnerWithNameAtTime();
    CSSymbolOwnerGetSymbolWithMangledName();
    if (CSIsNull())
    {
      CSRelease();
LABEL_17:
      if (!_debugSwiftAsyncPrintfIsEnabled())
      {
        return;
      }

      v12 = "libswiftRemoteMirror version or it wasn't new enough";
      goto LABEL_19;
    }

    Range = CSSymbolGetRange();
    CSRelease();
    if (!Range || *Range <= 2u)
    {
      goto LABEL_17;
    }

    v15 = _map_remote_mangled_symbol_value(self->_memoryReader, "__swift_concurrency_debug_asyncTaskMetadata", v10, v11, 8);
    if (v15)
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = _map_remote_mangled_symbol_value(self->_memoryReader, "__swift_concurrency_debug_asyncTaskSlabMetadata", v10, v11, 8);
    if (v17 && v16 && (v18 = *v17) != 0)
    {
      self->_swiftConcurrencyDebugAsyncTaskMetadataIsa = v16;
      self->_swiftConcurrencyDebugAsyncTaskSlabMetadataIsa = v18;
      if (CSSymbolOwnerGetPath())
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolOwnerGetPath()];
      }

      else
      {
        v19 = &stru_1F461F9C8;
      }

      v22 = v19;
      v20 = [(VMUClassInfo *)VMUMutableClassInfo classInfoWithClassName:@"AsyncTask" binaryPath:v19 type:8];
      [v20 setDisplayName:@"Task stack"];
      [v20 setDefaultScanType:1];
      [v20 setIsRootClass:1];
      [(VMUClassInfoMap *)self->_realizedIsaToClassInfo addClassInfo:v20 forAddress:self->_swiftConcurrencyDebugAsyncTaskMetadataIsa];
      v21 = [(VMUClassInfo *)VMUMutableClassInfo classInfoWithClassName:@"AsyncTask Slab" binaryPath:v22 type:8];
      [v21 setDisplayName:@"Task stack"];
      [v21 setDefaultScanType:1];
      [v21 setIsRootClass:1];
      [(VMUClassInfoMap *)self->_realizedIsaToClassInfo addClassInfo:v21 forAddress:self->_swiftConcurrencyDebugAsyncTaskSlabMetadataIsa];
    }

    else if (_debugSwiftAsyncPrintfIsEnabled())
    {
      v12 = "pseudo-isas for AsyncTasks and Slabs";
LABEL_19:
      _debugSwiftAsyncPrintf(0, "Won't attempt precise Swift Concurrency allocation scanning because couldn't find %s\n", v12);
    }
  }
}

- (void)destroy_libSwiftRemoteMirror
{
  swiftMirror = self->_swiftMirror;
  if (swiftMirror)
  {
    if (*swiftMirror)
    {
      vmu_swift_reflection_destroyReflectionContext(*swiftMirror);
      swiftMirror = self->_swiftMirror;
    }

    free(swiftMirror);
    self->_swiftMirror = 0;
  }

  remoteAddressToLocalAddressAndSizeMap = self->_swiftMirrorReaderContext.remoteAddressToLocalAddressAndSizeMap;
  if (remoteAddressToLocalAddressAndSizeMap)
  {
    NSResetMapTable(remoteAddressToLocalAddressAndSizeMap);
  }

  memset(v5, 0, sizeof(v5));
  __copy_assignment_8_8_t0w16_sb16_s24_s32_t40w16_w56_w64_w72(&self->_swiftMirrorReaderContext, v5);
  __destructor_8_sb16_s24_s32_w56_w64_w72(v5);
}

- (_CSTypeRef)symbolicator
{
  opaque_2 = self->_symbolicator._opaque_2;
  opaque_1 = self->_symbolicator._opaque_1;
  result._opaque_2 = opaque_2;
  result._opaque_1 = opaque_1;
  return result;
}

- (_CSTypeRef)libobjcSymbolOwner
{
  opaque_2 = self->_libobjcSymbolOwner._opaque_2;
  opaque_1 = self->_libobjcSymbolOwner._opaque_1;
  result._opaque_2 = opaque_2;
  result._opaque_1 = opaque_1;
  return result;
}

- (_VMURange)validVMRange
{
  length = self->_validVMRange.length;
  location = self->_validVMRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (VMUTaskMemoryScanner)scanner
{
  WeakRetained = objc_loadWeakRetained(&self->_scanner);

  return WeakRetained;
}

- (uint64_t)setNeedToValidateRemoteMirrorReadAddressRange:(uint64_t)result
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

- (BOOL)isValidPointer:(uint64_t)pointer
{
  if (!pointer)
  {
    return 0;
  }

  v3 = 0;
  if (HIDWORD(a2) && (a2 & 7) == 0)
  {
    WeakRetained = objc_loadWeakRetained((pointer + 56));
    if (WeakRetained)
    {
      v3 = a2 - *(pointer + 192) < *(pointer + 200);
    }

    else
    {
      v3 = 1;
    }
  }

  return v3;
}

- (void)objectLabelHandlerForRemoteIsa:(void *)isa
{
  if (isa)
  {
    isaCopy = isa;
    v5 = isa[42];
    if (!v5)
    {
      [isaCopy buildIsaToObjectLabelHandlerMap];
      v5 = isaCopy[42];
    }

    isa = [v5 objectForKey:a2];
    v2 = vars8;
  }

  return isa;
}

@end