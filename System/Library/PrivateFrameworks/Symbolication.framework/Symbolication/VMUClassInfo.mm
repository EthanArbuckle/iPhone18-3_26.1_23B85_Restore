@interface VMUClassInfo
+ (VMUMutableClassInfo)swiftValueWithMetadata:(void *)metadata objectIdentifier:;
+ (id)_genericBlockByrefInfo;
+ (id)descriptionForTypeEncoding:(const char *)encoding ivarName:(const char *)name;
+ (void)initialize;
- (BOOL)hasSpecificLayout;
- (BOOL)hasVariantLayout;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOSObject;
- (NSString)binaryName;
- (NSString)displayName;
- (NSString)fullIvarDescription;
- (NSString)shortIvarDescription;
- (NSString)typeName;
- (VMUClassInfo)genericInfo;
- (VMUClassInfo)initWithClassName:(id)name binaryPath:(id)path type:(unsigned int)type;
- (VMUClassInfo)initWithClosureContext:(unint64_t)context typeInfo:(swift_typeinfo *)info infoMap:(id)map swiftFieldMetadataContext:(libSwiftRemoteMirrorWrapper *)metadataContext;
- (VMUClassInfo)initWithCoder:(id)coder;
- (VMUClassInfo)initWithSerializer:(id)serializer classMap:(id)map version:(unsigned int)version error:(id *)error;
- (id)_copyWithInstanceSize:(unsigned int)size superclassOffset:(unsigned int)offset asVariant:(BOOL)variant mutable:(BOOL)mutable;
- (id)debugDescription;
- (id)description;
- (id)fieldAtOrBeforeOffset:(unsigned int)offset;
- (id)firstFieldWithName:(id)name;
- (id)initSwiftClassWithName:(id)name classInfoType:(unsigned int)type size:(unint64_t)size;
- (id)scanDescriptionWithSize:(unsigned int)size;
- (unsigned)_ivarGapForClass;
- (unsigned)_objcABIFromObjectIdentifier:(id)identifier;
- (unsigned)ivarGapForClassHierarchy;
- (void)_addComplexAction:(id)action withEvaluator:(id)evaluator;
- (void)_addFields:(id)fields;
- (void)_addVariantAction:(id)action withEvaluator:(id)evaluator;
- (void)_adjustInstanceSize;
- (void)_applyExtendedLayout:(const char *)layout withSize:(unsigned int)size;
- (void)_demangleClassName;
- (void)_determineBinaryPathUsingObjectIdentifier:(id)identifier remoteClassNameLoc:(unint64_t)loc;
- (void)_freeLocalIvarList;
- (void)_logDescriptionWithSuperclasses:(BOOL)superclasses indentation:(int)indentation toLogger:(id)logger;
- (void)_parseIvarsAndLayouts;
- (void)_replaceField:(id)field withFields:(id)fields;
- (void)_replaceFieldRecursively:(id)recursively atOffset:(unsigned int)offset withField:(id)field;
- (void)_setBinaryPath:(id)path sanitize:(BOOL)sanitize;
- (void)_setClassNameWithAddress:(unint64_t)address targetTask:(id)task;
- (void)_setDisplayName:(id)name;
- (void)_setFields:(id)fields;
- (void)_setIsRootClass:(BOOL)class;
- (void)_setSuperclassInfo:(id)info;
- (void)dealloc;
- (void)enumerateAllFieldsWithBlock:(id)block;
- (void)enumerateAllPointerFieldsWithBlock:(void *)result;
- (void)enumerateClassHierarchyWithBlock:(id)block;
- (void)enumerateExternalValuesFromObject:(unint64_t)object withSize:(unsigned int)size block:(id)block;
- (void)enumerateScanningLocationsForSize:(unsigned int)size withBlock:(id)block;
- (void)enumerateStoredEntriesForObject:(unint64_t)object ofSize:(unsigned int)size externalValues:(id)values block:(id)block;
- (void)enumerateSublayoutsForSize:(unsigned int)size withBlock:(id)block;
- (void)enumerateTypeFieldsWithBlock:(id)block;
- (void)serializeWithClassMap:(id)map simpleSerializer:(id)serializer version:(unsigned int)version;
@end

@implementation VMUClassInfo

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:4];
  }
}

+ (id)_genericBlockByrefInfo
{
  if (+[VMUClassInfo _genericBlockByrefInfo]::onceToken != -1)
  {
    +[VMUClassInfo _genericBlockByrefInfo];
  }

  v3 = +[VMUClassInfo _genericBlockByrefInfo]::s_genericBlockByrefInfo;

  return v3;
}

void __38__VMUClassInfo__genericBlockByrefInfo__block_invoke()
{
  v0 = [[VMUClassInfo alloc] initWithClassName:@"__NSExactBlockVariable__" binaryPath:@"/usr/lib/system/libsystem_blocks.dylib" type:0x80000000];
  v1 = +[VMUClassInfo _genericBlockByrefInfo]::s_genericBlockByrefInfo;
  +[VMUClassInfo _genericBlockByrefInfo]::s_genericBlockByrefInfo = v0;
}

- (void)_parseIvarsAndLayouts
{
  if ([(VMUClassInfo *)self isARR])
  {
    if (self->_strongLayout || self->_weakLayout)
    {
      [VMUClassInfo _processARRLayout:"_processARRLayout:scanType:" scanType:?];
      weakLayout = self->_weakLayout;

      [(VMUClassInfo *)self _processARRLayout:weakLayout scanType:4];
    }

    else if (self->_remoteType == 1 && self->_ivarCount)
    {
      v4 = 0;
      do
      {
        if ([self->_localIvarList[v4] scanType] == 8)
        {
          [self->_localIvarList[v4] setScanType:1];
        }

        ++v4;
      }

      while (v4 < self->_ivarCount);
    }
  }
}

- (void)_demangleClassName
{
  if (self->_remoteType == 8)
  {
    p_remoteClassName = &self->_remoteClassName;
    v4 = demangleSwiftClassName([(NSString *)self->_remoteClassName UTF8String]);
    if (v4)
    {
      v5 = v4;
      objc_storeStrong(p_remoteClassName, v4);
      v4 = v5;
    }
  }
}

- (void)_setClassNameWithAddress:(unint64_t)address targetTask:(id)task
{
  taskCopy = task;
  memoryCache = [taskCopy memoryCache];
  v7 = [memoryCache peekStringAtAddress:address];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v7];
    remoteClassName = self->_remoteClassName;
    self->_remoteClassName = v8;

    [(VMUClassInfo *)self _demangleClassName];
  }
}

- (NSString)displayName
{
  v2 = 64;
  if (!self->_displayName)
  {
    v2 = 56;
  }

  return *(&self->super.isa + v2);
}

- (void)_setDisplayName:(id)name
{
  nameCopy = name;
  if (self->_displayName != nameCopy)
  {
    v7 = nameCopy;
    v5 = [(NSString *)nameCopy copy];
    displayName = self->_displayName;
    self->_displayName = v5;

    nameCopy = v7;
  }
}

- (void)_setBinaryPath:(id)path sanitize:(BOOL)sanitize
{
  sanitizeCopy = sanitize;
  pathCopy = path;
  if (self->_remoteBinaryPath != pathCopy)
  {
    v9 = pathCopy;
    if (sanitizeCopy)
    {
      v7 = VMUSanitizePath(pathCopy);
    }

    else
    {
      v7 = pathCopy;
    }

    remoteBinaryPath = self->_remoteBinaryPath;
    self->_remoteBinaryPath = v7;

    pathCopy = v9;
  }
}

- (void)_setSuperclassInfo:(id)info
{
  infoCopy = info;
  if (self->_superclassLayout != infoCopy)
  {
    v10 = infoCopy;
    objc_storeStrong(&self->_superclassLayout, info);
    superclassOffset = self->_superclassOffset;
    instanceSize = [(VMUClassInfo *)v10 instanceSize];
    if (superclassOffset <= instanceSize)
    {
      v8 = instanceSize;
    }

    else
    {
      v8 = superclassOffset;
    }

    instanceSize = self->_instanceSize;
    if (instanceSize <= v8)
    {
      instanceSize = v8;
    }

    self->_superclassOffset = v8;
    self->_instanceSize = instanceSize;
    infoCopy = v10;
  }
}

- (void)_setIsRootClass:(BOOL)class
{
  if (class)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_ro_flags = self->_ro_flags & 0xFFFFFFFD | v3;
}

- (BOOL)hasVariantLayout
{
  hasVariantLayout = self->_hasVariantLayout;
  if (!hasVariantLayout)
  {
    hasVariantLayout = 1;
    if (!self->_variantEvaluators)
    {
      if ([(VMUClassInfo *)self->_superclassLayout hasVariantLayout])
      {
        hasVariantLayout = 1;
      }

      else
      {
        hasVariantLayout = -1;
      }
    }

    self->_hasVariantLayout = hasVariantLayout;
  }

  return hasVariantLayout == 1;
}

- (BOOL)hasSpecificLayout
{
  hasSpecificLayout = self->_hasSpecificLayout;
  if (!hasSpecificLayout)
  {
    if ([(VMUClassInfo *)self hasVariantLayout]|| [(VMUClassInfo *)self->_superclassLayout hasSpecificLayout])
    {
      hasSpecificLayout = 1;
    }

    else
    {
      hasSpecificLayout = 1;
      if (self->_remoteType != 0x80000000)
      {
        uTF8String = [(NSString *)self->_remoteClassName UTF8String];
        if (!uTF8String)
        {
          uTF8String = "";
        }

        if (!strcmp(uTF8String, "NSBlock"))
        {
          hasSpecificLayout = 1;
        }

        else
        {
          hasSpecificLayout = -1;
        }
      }
    }

    self->_hasSpecificLayout = hasSpecificLayout;
  }

  return hasSpecificLayout == 1;
}

- (VMUClassInfo)initWithClassName:(id)name binaryPath:(id)path type:(unsigned int)type
{
  nameCopy = name;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = VMUClassInfo;
  v10 = [(VMUClassInfo *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    remoteClassName = v10->_remoteClassName;
    v10->_remoteClassName = v11;

    v13 = [pathCopy copy];
    remoteBinaryPath = v10->_remoteBinaryPath;
    v10->_remoteBinaryPath = v13;

    v10->_remotePointerSize = 8;
    v10->_defaultScanType = 1;
    v10->_remoteType = type;
  }

  return v10;
}

- (VMUClassInfo)initWithClosureContext:(unint64_t)context typeInfo:(swift_typeinfo *)info infoMap:(id)map swiftFieldMetadataContext:(libSwiftRemoteMirrorWrapper *)metadataContext
{
  mapCopy = map;
  v30.receiver = self;
  v30.super_class = VMUClassInfo;
  v10 = [(VMUClassInfo *)&v30 init];
  v11 = v10;
  if (!v10)
  {
LABEL_26:
    v21 = v11;
    goto LABEL_36;
  }

  remoteClassName = v10->_remoteClassName;
  v10->_remoteClassName = @"Closure context";

  v11->_remotePointerSize = 8;
  *&v11->_defaultScanType = 0x4000000001;
  v11->_instanceSize = info->var1;
  if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
  {
    [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
  }

  if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
  {
    _debugSwiftAsyncPrintf(0, "Getting fields for closure context at %p\n", context);
  }

  v13 = objc_opt_new();
  if (!info->var4)
  {
LABEL_17:
    v16 = [v13 count];
    v11->_ivarCount = v16;
    if (v16)
    {
      v11->_localIvarList = malloc_type_calloc(v16 + 1, 8uLL, 0x80040B8603338uLL);
      if (v11->_ivarCount)
      {
        v17 = 0;
        do
        {
          v18 = [v13 objectAtIndexedSubscript:v17];
          localIvarList = v11->_localIvarList;
          v20 = localIvarList[v17];
          localIvarList[v17] = v18;

          ++v17;
        }

        while (v17 < v11->_ivarCount);
      }
    }

    if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
    {
      [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
    }

    if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
    {
      _debugSwiftAsyncPrintf(0, "\n");
    }

    goto LABEL_26;
  }

  v14 = 0;
  while (1)
  {
    v28 = 0uLL;
    v29 = 0;
    vmu_swift_reflection_childOfInstance(metadataContext->var0, context, v14, &v28);
    if (_debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::dispatchToken != -1)
    {
      [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
    }

    if (_debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::isEnabled == 1)
    {
      v26 = v28;
      v27 = v29;
      _debugSwiftSubfieldDumpSwiftChildInfo(1, "childOfInstance()", &v26, metadataContext->var0);
    }

    if (DWORD2(v28) < 2 * v11->_remotePointerSize)
    {
      break;
    }

    LOBYTE(v26) = 0;
    v15 = _createFieldInfoFromChild(metadataContext, v28, DWORD2(v28), HIDWORD(v28), v29, mapCopy, v11->_remoteClassName, &v26, 1);
    if (v15)
    {
      [v13 addObject:v15];
    }

    else if (v26)
    {
      goto LABEL_35;
    }

    v14 = (v14 + 1);
    if (v14 >= info->var4)
    {
      goto LABEL_17;
    }
  }

  if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
  {
    [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
  }

  if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
  {
    v22 = " (VERY BAD)";
    if (!DWORD2(v28))
    {
      v22 = "";
    }

    v23 = v28;
    if (!v28)
    {
      v23 = "?";
    }

    _debugSwiftAsyncPrintf(1, "nonsensically small offset for field %s of +%u%s; ignoring all fields in this closure context\n", v23, DWORD2(v28), v22);
  }

LABEL_35:

  v21 = 0;
LABEL_36:

  return v21;
}

- (id)initSwiftClassWithName:(id)name classInfoType:(unsigned int)type size:(unint64_t)size
{
  sizeCopy = size;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = VMUClassInfo;
  v10 = [(VMUClassInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_remoteClassName, name);
    if (!nameCopy && type == 64)
    {
      remoteClassName = v11->_remoteClassName;
      v11->_remoteClassName = @"malloc-block (possibly Swift)";
    }

    v11->_remotePointerSize = 8;
    v11->_defaultScanType = 1;
    v11->_remoteType = type;
    v11->_instanceSize = sizeCopy;
  }

  return v11;
}

+ (VMUMutableClassInfo)swiftValueWithMetadata:(void *)metadata objectIdentifier:
{
  v31[1] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  objc_opt_self();
  memoryReader = [(VMUObjectIdentifier *)metadataCopy memoryReader];
  v6 = memoryReader[2](memoryReader, a2 - 8, 8);
  if (v6)
  {
    v7 = *v6;
  }

  vmuTask = [(VMUObjectIdentifier *)metadataCopy vmuTask];
  v9 = [VMUTask ptrauthStripDataPointer:vmuTask];

  memoryReader2 = [(VMUObjectIdentifier *)metadataCopy memoryReader];
  v11 = memoryReader2[2](memoryReader2, v9 + 64, 8);
  if (v11)
  {
    v12 = *v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = vmu_swift_reflection_typeRefForMetadata(*[(VMUObjectIdentifier *)metadataCopy swiftMirror]);
    v29[0] = 0;
    v29[1] = 0;
    v30 = 0;
    vmu_swift_reflection_infoForTypeRef(*[(VMUObjectIdentifier *)metadataCopy swiftMirror], v29);
    v14 = vmu_swift_reflection_copyDemangledNameForTypeRef(*[(VMUObjectIdentifier *)metadataCopy swiftMirror]);
    v33._opaque_1 = [(VMUObjectIdentifier *)metadataCopy symbolicator];
    v33._opaque_2 = v15;
    v16 = determineBinaryPathForSwiftType(v14, a2, metadataCopy, v33);
    v17 = [(VMUClassInfo *)[VMUMutableClassInfo alloc] initWithClassName:v14 binaryPath:v16 type:8];
    [(VMUMutableClassInfo *)v17 setInstanceSize:v12];
    if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
    {
      [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
    }

    if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
    {
      v18 = v14;
      _debugSwiftAsyncPrintf(0, "Getting fields for Swift value type %s\n", [(NSString *)v14 UTF8String]);
    }

    v28 = 0;
    swiftMirror = [(VMUObjectIdentifier *)metadataCopy swiftMirror];
    v20 = LODWORD(v29[0]);
    realizedClasses = [(VMUObjectIdentifier *)metadataCopy realizedClasses];
    v22 = _createFieldInfoFromChild(swiftMirror, "value", 0, v20, v13, realizedClasses, v14, &v28, 0);

    if (v22)
    {
      if (v12 == [v22 size])
      {
        v31[0] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
        [(VMUMutableClassInfo *)v17 addFields:v23];

        [(VMUMutableClassInfo *)v17 setDefaultScanType:0];
        scanner = [(VMUObjectIdentifier *)metadataCopy scanner];
        [scanner applyTypeOverlayToMutableInfo:v17];

LABEL_26:
        if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
        {
          [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
        }

        if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
        {
          _debugSwiftAsyncPrintf(0, "\n");
        }

        goto LABEL_31;
      }

      if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
      {
        [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
      }

      if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
      {
        _debugSwiftAsyncPrintf(0, "Value has size %llu, but Remote Mirror reports a size of %u.  Ignoring Remote Mirror output and scanning conservatively.\n", v12, [v22 size]);
      }

      v25 = 1;
    }

    else
    {
      v25 = v28;
    }

    [(VMUMutableClassInfo *)v17 setDefaultScanType:v25];
    goto LABEL_26;
  }

  if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
  {
    debugSwiftSubfieldIsEnabled_cold_1();
  }

  if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
  {
    _debugSwiftAsyncPrintf(0, "Not creating classinfo for zero-sized AttributeGraph value\n\n");
  }

  v17 = 0;
LABEL_31:

  v26 = *MEMORY[0x1E69E9840];

  return v17;
}

- (unsigned)_objcABIFromObjectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy)
  {
    objcABI = [identifierCopy objcABI];
  }

  else
  {
    if ([VMUClassInfo _objcABIFromObjectIdentifier:]::onceToken != -1)
    {
      [VMUClassInfo _objcABIFromObjectIdentifier:];
    }

    objcABI = [VMUClassInfo _objcABIFromObjectIdentifier:]::analysisProcessObjcABI;
  }

  return objcABI;
}

uint64_t __45__VMUClassInfo__objcABIFromObjectIdentifier___block_invoke()
{
  v0 = dlopen("/usr/lib/libobjc.A.dylib", 17);
  v1 = dlsym(v0, "objc_class_abi_version");
  if (v1)
  {
    [VMUClassInfo _objcABIFromObjectIdentifier:]::analysisProcessObjcABI = *v1;
  }

  return dlclose(v0);
}

- (void)_determineBinaryPathUsingObjectIdentifier:(id)identifier remoteClassNameLoc:(unint64_t)loc
{
  identifierCopy = identifier;
  symbolicator = [(VMUObjectIdentifier *)identifierCopy symbolicator];
  v8 = v7;
  if ((CSIsNull() & 1) == 0)
  {
    if ([(VMUClassInfo *)self infoType]== 8)
    {
      className = [(VMUClassInfo *)self className];
      v19._opaque_1 = symbolicator;
      v19._opaque_2 = v8;
      v10 = determineBinaryPathForSwiftType(className, self->_remoteIsa, identifierCopy, v19);

      if (v10)
      {
        goto LABEL_4;
      }
    }

    remoteIsa = self->_remoteIsa;
    CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
    if (CSIsNull())
    {
      if ([(NSString *)self->_remoteClassName isEqualToString:@"CGSEventAppendix"])
      {
        CSSymbolicatorGetSymbolOwnerWithNameAtTime();
      }

      else if (loc)
      {
        CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
      }
    }

    if (CSIsNull())
    {
      v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolOwnerGetPath()];
      if ([v10 length])
      {
LABEL_4:
        [(VMUClassInfo *)self _setBinaryPath:v10 sanitize:1];
LABEL_19:

        goto LABEL_20;
      }
    }

    v12 = self->_superclassLayout;
    if (v12)
    {
      v13 = v12;
      while (1)
      {
        binaryPath = [v13 binaryPath];

        if (binaryPath)
        {
          break;
        }

        superclassInfo = [v13 superclassInfo];

        v13 = superclassInfo;
        if (!superclassInfo)
        {
          goto LABEL_19;
        }
      }

      binaryPath2 = [v13 binaryPath];
      [(VMUClassInfo *)self _setBinaryPath:binaryPath2 sanitize:0];
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)_freeLocalIvarList
{
  if (self->_ivarCount)
  {
    v3 = 0;
    do
    {
      localIvarList = self->_localIvarList;
      v5 = localIvarList[v3];
      localIvarList[v3] = 0;

      ++v3;
    }

    while (v3 < self->_ivarCount);
  }

  v6 = self->_localIvarList;
  if (v6)
  {
    free(v6);
    self->_localIvarList = 0;
  }
}

- (void)dealloc
{
  weakLayout = self->_weakLayout;
  if (weakLayout)
  {
    free(weakLayout);
    self->_weakLayout = 0;
  }

  strongLayout = self->_strongLayout;
  if (strongLayout)
  {
    free(strongLayout);
    self->_strongLayout = 0;
  }

  [(VMUClassInfo *)self _freeLocalIvarList];
  v5.receiver = self;
  v5.super_class = VMUClassInfo;
  [(VMUClassInfo *)&v5 dealloc];
}

uint64_t __103__VMUClassInfo__identifyObjCClassStructureBlocksForIsa_isMetaclass_withScanner_addressIdentifierBlock___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = [*(result + 32) addressIsInSharedCache:a2];
    if ((result & 1) == 0)
    {
      if (a2)
      {
        v6 = a2 & 0xFFFFFFFFFFFFFFFELL;
        v7 = *(v3 + 72);
        result = (*(*(v3 + 56) + 16))();
        if (result != -1)
        {
          result = (*(*(v3 + 64) + 16))();
          if (result)
          {
            v8 = *result;
            if (*result)
            {
              v9 = *(*(v3 + 40) + 16);
              if (((v8 * v9) & 0xFFFFFFFF00000000) == 0)
              {
                v10 = v6 + v9;
                result = (*(*(v3 + 64) + 16))();
                if (result)
                {
                  v11 = result;
                  v12 = 0;
                  do
                  {
                    if (*(v11 + 8 * v12))
                    {
                      result = [*(v3 + 32) addressIsInSharedCache:?];
                      if ((result & 1) == 0)
                      {
                        v13 = *(v11 + 8 * v12);
                        v14 = [VMUTask ptrauthStripDataPointer:?];
                        maskPointerToMethodList(v10 + (*(*(v3 + 40) + 16) * v12), v14, *(v3 + 48));
                        v15 = *(v3 + 72);
                        result = (*(*(v3 + 56) + 16))();
                      }
                    }

                    ++v12;
                  }

                  while (v8 != v12);
                }
              }
            }
          }
        }
      }

      else
      {
        v4 = *(v3 + 72);
        v5 = *(*(v3 + 56) + 16);

        return v5();
      }
    }
  }

  return result;
}

- (void)serializeWithClassMap:(id)map simpleSerializer:(id)serializer version:(unsigned int)version
{
  v14 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  serializerCopy = serializer;
  [serializerCopy serialize64:self->_remoteIsa];
  v11 = *&self->_remotePointerSize;
  v12 = *&self->_ro_flags;
  remoteType = self->_remoteType;
  [serializerCopy _serializeValues:&v11 count:7];
  if (self->_ivarCount)
  {
    v9 = 0;
    do
    {
      [serializerCopy serialize32:{objc_msgSend(mapCopy, "indexForFieldInfo:", self->_localIvarList[v9++])}];
    }

    while (v9 < self->_ivarCount);
  }

  [serializerCopy serializeString:self->_remoteClassName];
  [serializerCopy serializeString:self->_displayName];
  [serializerCopy serializeString:self->_remoteBinaryPath];
  [serializerCopy serialize32:{objc_msgSend(mapCopy, "indexForClassInfo:", self->_superclassLayout)}];

  v10 = *MEMORY[0x1E69E9840];
}

- (VMUClassInfo)initWithSerializer:(id)serializer classMap:(id)map version:(unsigned int)version error:(id *)error
{
  v56[7] = *MEMORY[0x1E69E9840];
  serializerCopy = serializer;
  mapCopy = map;
  v55.receiver = self;
  v55.super_class = VMUClassInfo;
  v12 = [(VMUClassInfo *)&v55 init];
  if (!v12)
  {
    goto LABEL_29;
  }

  v54 = 0;
  if (!error)
  {
    error = &v54;
  }

  v12->_remoteIsa = [serializerCopy deserialize64WithError:error];
  if (*error)
  {
    goto LABEL_8;
  }

  p_ivarCount = &v12->_ivarCount;
  v56[0] = &v12->_remotePointerSize;
  v56[1] = &v12->_ivarCount;
  p_instanceSize = &v12->_instanceSize;
  v56[2] = &v12->_superclassOffset;
  v56[3] = &v12->_instanceSize;
  v56[4] = &v12->_ro_flags;
  v56[5] = &v12->_rw_flags;
  v56[6] = &v12->_remoteType;
  v15 = [serializerCopy _deserializeValues:7 error:error];
  v16 = *error;
  if (*error)
  {
    goto LABEL_8;
  }

  do
  {
    *v56[v16] = *(v15 + 4 * v16);
    v16 = v16 + 1;
  }

  while (v16 != 7);
  if (*error)
  {
    goto LABEL_8;
  }

  v12->_localIvarList = malloc_type_calloc(*p_ivarCount + 1, 8uLL, 0x80040B8603338uLL);
  if (version < 4)
  {
    if (version == 3)
    {
      if (*p_ivarCount)
      {
        v24 = 0;
        do
        {
          v25 = [[VMUFieldInfo alloc] initWithSerializer:serializerCopy classMap:mapCopy version:3 error:error];
          localIvarList = v12->_localIvarList;
          v27 = localIvarList[v24];
          localIvarList[v24] = v25;

          if (*error)
          {
            goto LABEL_8;
          }
        }

        while (++v24 < *p_ivarCount);
      }
    }

    else
    {
      superclassOffset = *p_instanceSize;
      if (*p_instanceSize <= v12->_superclassOffset)
      {
        superclassOffset = v12->_superclassOffset;
      }

      *p_instanceSize = superclassOffset;
      v12->_weakLayout = [serializerCopy copyDeserializedNullTerminatedBytesWithError:error];
      if (*error)
      {
        goto LABEL_8;
      }

      v12->_strongLayout = [serializerCopy copyDeserializedNullTerminatedBytesWithError:error];
      if (*error)
      {
        goto LABEL_8;
      }

      if (*p_ivarCount)
      {
        v53 = 0;
        do
        {
          v40 = [serializerCopy _deserializeValues:2 error:error];
          if (*error)
          {
            goto LABEL_8;
          }

          v41 = *v40;
          v42 = v40[1];
          v43 = [serializerCopy copyDeserializedNullTerminatedBytesWithError:error];
          if (*error)
          {
            goto LABEL_8;
          }

          v44 = v43;
          v45 = [serializerCopy copyDeserializedNullTerminatedBytesWithError:error];
          if (*error)
          {
            goto LABEL_8;
          }

          LocalIvar = _createLocalIvar(v44, v45, v41, v42, 1);
          v52 = [VMUMutableFieldInfo alloc];
          v47 = LocalIvar[7];
          Offset = ivar_getOffset(LocalIvar);
          v49 = [(VMUFieldInfo *)v52 initWithObjcIvar:LocalIvar size:v47 offset:Offset ivarName:ivar_getName(LocalIvar) isARC:[(VMUClassInfo *)v12 isARR] is64Bit:v12->_remotePointerSize == 8];
          v50 = v12->_localIvarList;
          v51 = v50[v53];
          v50[v53] = v49;

          _destroyLocalIvar(LocalIvar);
        }

        while (++v53 < v12->_ivarCount);
      }

      [(VMUClassInfo *)v12 _parseIvarsAndLayouts];
    }
  }

  else if (*p_ivarCount)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = [serializerCopy deserialize32WithError:error];
      if (*error)
      {
        goto LABEL_8;
      }

      v21 = v20;
      v22 = objc_autoreleasePoolPush();
      v23 = [mapCopy fieldInfoForIndex:v21];
      if (v23)
      {
        objc_storeStrong(&v12->_localIvarList[v18++], v23);
      }

      else
      {
        NSLog(&cfstr_BadFieldIndexI.isa);
      }

      objc_autoreleasePoolPop(v22);
    }

    while (++v19 < *p_ivarCount);
  }

  v28 = [serializerCopy copyDeserializedStringWithError:error];
  remoteClassName = v12->_remoteClassName;
  v12->_remoteClassName = v28;

  if (!*error)
  {
    if (version < 3 || (v30 = [serializerCopy copyDeserializedStringWithError:error], displayName = v12->_displayName, v12->_displayName = v30, displayName, !*error))
    {
      v32 = [serializerCopy copyDeserializedStringWithError:error];
      remoteBinaryPath = v12->_remoteBinaryPath;
      v12->_remoteBinaryPath = v32;

      if (!*error)
      {
        v34 = [serializerCopy deserialize32WithError:error];
        if (!*error)
        {
          v35 = [mapCopy classInfoForIndex:v34];
          superclassLayout = v12->_superclassLayout;
          v12->_superclassLayout = v35;

          v12->_defaultScanType = 1;
          [(VMUClassInfo *)v12 _demangleClassName];
LABEL_29:
          v17 = v12;
          goto LABEL_30;
        }
      }
    }
  }

LABEL_8:
  v17 = 0;
LABEL_30:

  v37 = *MEMORY[0x1E69E9840];
  return v17;
}

- (VMUClassInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = VMUClassInfo;
  v5 = [(VMUClassInfo *)&v31 init];
  v6 = v5;
  v7 = v5;
  if (v5)
  {
    [(NSCoder *)coderCopy decodeValueOfObjCType:"Q" at:&v5->_remoteIsa size:8];
    [(NSCoder *)coderCopy decodeValueOfObjCType:"I" at:&v6->_remotePointerSize size:4];
    [(NSCoder *)coderCopy decodeValueOfObjCType:"I" at:&v6->_ivarCount size:4];
    [(NSCoder *)coderCopy decodeValueOfObjCType:"I" at:&v6->_superclassOffset size:4];
    [(NSCoder *)coderCopy decodeValueOfObjCType:"I" at:&v6->_instanceSize size:4];
    [(NSCoder *)coderCopy decodeValueOfObjCType:"I" at:&v6->_ro_flags size:4];
    [(NSCoder *)coderCopy decodeValueOfObjCType:"I" at:&v6->_rw_flags size:4];
    [(NSCoder *)coderCopy decodeValueOfObjCType:"i" at:&v6->_remoteType size:4];
    instanceSize = v6->_instanceSize;
    if (instanceSize <= v6->_superclassOffset)
    {
      instanceSize = v6->_superclassOffset;
    }

    v6->_instanceSize = instanceSize;
    v7->_weakLayout = _decodeNullTerminatedBytes(coderCopy);
    v7->_strongLayout = _decodeNullTerminatedBytes(coderCopy);
    v7->_localIvarList = malloc_type_calloc(v7->_ivarCount + 1, 8uLL, 0x80040B8603338uLL);
    if (v7->_ivarCount)
    {
      v9 = 0;
      v30 = coderCopy;
      do
      {
        v10 = coderCopy;
        v33 = 0;
        [(NSCoder *)v10 decodeValueOfObjCType:"I" at:&v33 size:4];
        v11 = _decodeNullTerminatedBytes(v10);
        v12 = _decodeNullTerminatedBytes(v10);
        v32 = 0;
        [(NSCoder *)v10 decodeValueOfObjCType:"I" at:&v32 size:4];
        v13 = v32;
        v14 = v33;
        v15 = malloc_type_malloc(0x28uLL, 0x1050040749D65F6uLL);
        v15[1] = v11;
        v15[2] = v12;
        v16 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
        *v15 = v16;
        *v16 = v14;
        *(v15 + 7) = v13;
        *(v15 + 32) = 1;

        v17 = [VMUMutableFieldInfo alloc];
        v18 = *(v15 + 7);
        Offset = ivar_getOffset(v15);
        v20 = [(VMUFieldInfo *)v17 initWithObjcIvar:v15 size:v18 offset:Offset ivarName:ivar_getName(v15) isARC:[(VMUClassInfo *)v7 isARR] is64Bit:v6->_remotePointerSize == 8];
        localIvarList = v7->_localIvarList;
        v22 = localIvarList[v9];
        localIvarList[v9] = v20;

        _destroyLocalIvar(v15);
        ++v9;
        coderCopy = v30;
      }

      while (v9 < v7->_ivarCount);
    }

    [(VMUClassInfo *)v7 _parseIvarsAndLayouts];
    decodeObject = [(NSCoder *)coderCopy decodeObject];
    remoteClassName = v7->_remoteClassName;
    v7->_remoteClassName = decodeObject;

    decodeObject2 = [(NSCoder *)coderCopy decodeObject];
    remoteBinaryPath = v7->_remoteBinaryPath;
    v7->_remoteBinaryPath = decodeObject2;

    decodeObject3 = [(NSCoder *)coderCopy decodeObject];
    superclassLayout = v7->_superclassLayout;
    v7->_superclassLayout = decodeObject3;

    v7->_defaultScanType = 1;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        remoteIsa = [(VMUClassInfo *)v7 remoteIsa];
        remoteIsa = self->_remoteIsa;
        if (remoteIsa | remoteIsa)
        {
          v10 = remoteIsa == remoteIsa;
LABEL_19:

          goto LABEL_20;
        }

        remoteType = self->_remoteType;
        if (remoteType != [(VMUClassInfo *)v7 infoType])
        {
          v10 = 0;
          goto LABEL_19;
        }

        remoteClassName = self->_remoteClassName;
        className = [(VMUClassInfo *)v7 className];
        if (remoteClassName == className || (v14 = self->_remoteClassName, [(VMUClassInfo *)v7 className], v3 = objc_claimAutoreleasedReturnValue(), [(NSString *)v14 isEqualToString:v3]))
        {
          binaryPath = [(VMUClassInfo *)self binaryPath];
          binaryPath2 = [(VMUClassInfo *)v7 binaryPath];
          v17 = binaryPath2;
          if (binaryPath == binaryPath2)
          {

            v10 = 1;
          }

          else
          {
            binaryPath3 = [(VMUClassInfo *)self binaryPath];
            binaryPath4 = [(VMUClassInfo *)v7 binaryPath];
            v10 = [binaryPath3 isEqualToString:binaryPath4];
          }

          if (remoteClassName == className)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v10 = 0;
        }

LABEL_18:
        goto LABEL_19;
      }
    }

    v10 = 0;
  }

LABEL_20:

  return v10;
}

- (void)_logDescriptionWithSuperclasses:(BOOL)superclasses indentation:(int)indentation toLogger:(id)logger
{
  superclassesCopy = superclasses;
  loggerCopy = logger;
  indentationCopy = indentation;
  if (indentation)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[VMUClassInfo instanceSize](self, "instanceSize")];
    v9 = "";
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"instance size %d, allocation size %d", -[VMUClassInfo instanceSize](self, "instanceSize"), malloc_good_size(-[VMUClassInfo instanceSize](self, "instanceSize"))];
    v9 = "Class: ";
  }

  v10 = v8;
  v11 = MEMORY[0x1E696AEC0];
  className = [(VMUClassInfo *)self className];
  v36 = superclassesCopy;
  v38 = v10;
  displayName = self->_displayName;
  if (displayName)
  {
    v13 = " as '";
  }

  else
  {
    v13 = "";
  }

  uTF8String = [(NSString *)displayName UTF8String];
  if (uTF8String)
  {
    v15 = uTF8String;
  }

  else
  {
    v15 = "";
  }

  if (self->_displayName)
  {
    v16 = "'";
  }

  else
  {
    v16 = "";
  }

  typeName = [(VMUClassInfo *)self typeName];
  uTF8String2 = [typeName UTF8String];
  isARR = [(VMUClassInfo *)self isARR];
  hasSpecificLayout = [(VMUClassInfo *)self hasSpecificLayout];
  v21 = (2 * indentationCopy);
  v22 = "MRC";
  if (isARR)
  {
    v22 = "ARC";
  }

  v23 = ", Specific";
  if (!hasSpecificLayout)
  {
    v23 = "";
  }

  v24 = [v11 stringWithFormat:@"%*s'%@'%s%s%s [%@] - %s, %s%s {", (2 * indentationCopy), v9, className, v13, v15, v16, v38, uTF8String2, v22, v23];
  loggerCopy[2](loggerCopy, v24);

  if (v36)
  {
    superclassLayout = self->_superclassLayout;
    if (superclassLayout)
    {
      [(VMUClassInfo *)superclassLayout _logDescriptionWithSuperclasses:1 indentation:(indentationCopy + 1) toLogger:loggerCopy];
    }
  }

  instanceSize = [(VMUClassInfo *)self->_superclassLayout instanceSize];
  if (self->_ivarCount)
  {
    v27 = instanceSize;
    v28 = 0;
    do
    {
      offset = [self->_localIvarList[v28] offset];
      offset2 = [self->_localIvarList[v28] offset];
      if (offset2 >= v27)
      {
        v31 = v27;
      }

      else
      {
        v31 = offset2;
      }

      v32 = offset - v31;
      if (v32)
      {
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s<< %u alignment bytes >>", (v21 + 3), "", v32];
        loggerCopy[2](loggerCopy, v33);
      }

      v34 = _formatIvar(self->_localIvarList[v28], (v21 + 5));
      loggerCopy[2](loggerCopy, v34);

      LODWORD(v34) = [self->_localIvarList[v28] offset];
      v27 = [self->_localIvarList[v28++] size] + v34;
    }

    while (v28 < self->_ivarCount);
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s}", v21, ""];
  loggerCopy[2](loggerCopy, v35);
}

- (void)enumerateSublayoutsForSize:(unsigned int)size withBlock:(id)block
{
  [VMUClassInfo enumerateSublayoutsForSize:"enumerateSublayoutsForSize:withBlock:" withBlock:?];
  if (self->_ivarCount)
  {
    v7 = 0;
    do
    {
      [(VMUFieldInfo *)self->_localIvarList[v7++] enumerateSublayoutsForSize:size parentOffset:0 remotePointerSize:self->_remotePointerSize withBlock:block];
    }

    while (v7 < self->_ivarCount);
  }
}

- (id)_copyWithInstanceSize:(unsigned int)size superclassOffset:(unsigned int)offset asVariant:(BOOL)variant mutable:(BOOL)mutable
{
  mutableCopy = mutable;
  variantCopy = variant;
  v12 = off_1E8277208;
  if (!mutable)
  {
    v12 = off_1E8277198;
  }

  v13 = *v12;
  v14 = objc_alloc_init(objc_opt_class());
  v15 = v14;
  if (variantCopy)
  {
    remoteIsa = 0;
  }

  else
  {
    remoteIsa = self->_remoteIsa;
  }

  *(v14 + 1) = remoteIsa;
  *(v14 + 4) = self->_remotePointerSize;
  ivarCount = self->_ivarCount;
  *(v14 + 5) = ivarCount;
  if (ivarCount)
  {
    v18 = objc_autoreleasePoolPush();
    *(v15 + 6) = malloc_type_calloc(self->_ivarCount + 1, 8uLL, 0x80040B8603338uLL);
    if (self->_ivarCount)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        localIvarList = self->_localIvarList;
        v22 = localIvarList[v19];
        if (mutableCopy)
        {
          v6 = [localIvarList[v19] mutableCopy];
          v22 = v6;
        }

        objc_storeStrong((*(v15 + 6) + v19 * 8), v22);
        if (mutableCopy)
        {
        }

        ++v20;
        ++v19;
      }

      while (v20 < self->_ivarCount);
    }

    objc_autoreleasePoolPop(v18);
  }

  *(v15 + 6) = offset;
  *(v15 + 7) = size;
  *(v15 + 8) = self->_ro_flags;
  *(v15 + 36) = *&self->_rw_flags;
  *(v15 + 11) = self->_remoteType;
  v23 = [(NSString *)self->_remoteClassName copy];
  v24 = *(v15 + 7);
  *(v15 + 7) = v23;

  v25 = [(NSString *)self->_displayName copy];
  v26 = *(v15 + 8);
  *(v15 + 8) = v25;

  v27 = [(NSString *)self->_remoteBinaryPath copy];
  v28 = *(v15 + 9);
  *(v15 + 9) = v27;

  objc_storeStrong(v15 + 10, self->_superclassLayout);
  if (variantCopy)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  if (self->_genericLayout)
  {
    genericLayout = self->_genericLayout;
  }

  else
  {
    genericLayout = selfCopy;
  }

  objc_storeStrong(v15 + 11, genericLayout);
  v15[146] = self->_usesSwiftRefcounting;
  return v15;
}

- (void)_applyExtendedLayout:(const char *)layout withSize:(unsigned int)size
{
  if (layout)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __46__VMUClassInfo__applyExtendedLayout_withSize___block_invoke;
    v28[3] = &unk_1E8278988;
    v28[4] = &v29;
    _processExtendedLayout(layout, v28);
    superclassOffset = self->_superclassOffset;
    v8 = size >= superclassOffset;
    v9 = size - superclassOffset;
    if (v8)
    {
      v10 = v9 / self->_remotePointerSize;
      if (*(v30 + 6) > v10)
      {
        v10 = *(v30 + 6);
      }

      *(v30 + 6) = v10;
      ivarCount = self->_ivarCount;
      v12 = v10 + 1;
      v13 = malloc_type_realloc(self->_localIvarList, 8 * (ivarCount + v10 + 1), 0x80040B8603338uLL);
      v14 = v13;
      if (v13)
      {
        bzero(&v13[ivarCount], 8 * v12);
        self->_localIvarList = v14;
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = self->_superclassOffset;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __46__VMUClassInfo__applyExtendedLayout_withSize___block_invoke_2;
        v23[3] = &unk_1E82789B0;
        v23[4] = self;
        v23[5] = &v24;
        _processExtendedLayout(layout, v23);
        for (i = self->_ivarCount; i < *(v30 + 6); ++i)
        {
          v16 = [VMUMutableFieldInfo alloc];
          v17 = [(VMUFieldInfo *)v16 initWithName:@"[capture]" type:0 scan:1 offset:*(v25 + 6) size:self->_remotePointerSize];
          [(VMUMutableFieldInfo *)v17 setIsCapture:1];
          localIvarList = self->_localIvarList;
          v19 = self->_ivarCount;
          v20 = localIvarList[v19];
          localIvarList[v19] = v17;
          v21 = v17;

          remotePointerSize = self->_remotePointerSize;
          ++self->_ivarCount;
          *(v25 + 6) += remotePointerSize;
        }

        _Block_object_dispose(&v24, 8);
      }

      else
      {
        self->_localIvarList = 0;
      }
    }

    _Block_object_dispose(&v29, 8);
  }
}

void __46__VMUClassInfo__applyExtendedLayout_withSize___block_invoke_2(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4)
  {
    v4 = a4;
    if (a3)
    {
      v8 = @"[__block capture]";
    }

    else
    {
      v8 = @"[capture]";
    }

    do
    {
      v9 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:v8 type:0 scan:a2 offset:*(*(*(a1 + 40) + 8) + 24) size:*(*(a1 + 32) + 16)];
      [(VMUMutableFieldInfo *)v9 setIsCapture:1];
      if (a3)
      {
        [(VMUMutableFieldInfo *)v9 setIsByref:1];
      }

      v10 = *(a1 + 32);
      v11 = *(v10 + 48);
      v12 = *(v10 + 20);
      v13 = *(v11 + 8 * v12);
      *(v11 + 8 * v12) = v9;
      v14 = v9;

      ++*(*(a1 + 32) + 20);
      *(*(*(a1 + 40) + 8) + 24) += *(*(a1 + 32) + 16);

      --v4;
    }

    while (v4);
  }
}

uint64_t __78__VMUClassInfo_instanceSpecificInfoForObject_ofSize_withScanner_memoryReader___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6 && (v8 = [v6 count], v9 = malloc_type_calloc(1uLL, ((v8 + 7) >> 3) + 4, 0xB2EC2458uLL), *v9 = v8, *a3 = v9, v8))
  {
    v10 = 0;
    v11 = 0;
    v12 = v8;
    do
    {
      v13 = [v6 objectAtIndexedSubscript:v10];
      if (v7[2](v7, v13))
      {
        v11 = 1;
        if (v10 < **a3)
        {
          *(*a3 + (v10 >> 3) + 4) |= 1 << (v10 & 7);
        }
      }

      ++v10;
    }

    while (v12 != v10);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t __78__VMUClassInfo_instanceSpecificInfoForObject_ofSize_withScanner_memoryReader___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v4 = (*(v3 + 2))(v3, a1[5], a1[6], &v6);
  *(*(a1[4] + 8) + 24) = v6 + 37 * *(*(a1[4] + 8) + 24);

  return v4;
}

void __78__VMUClassInfo_instanceSpecificInfoForObject_ofSize_withScanner_memoryReader___block_invoke_4(uint64_t a1)
{
  free(*(a1 + 32));
  v2 = *(a1 + 40);

  free(v2);
}

uint64_t __78__VMUClassInfo_instanceSpecificInfoForObject_ofSize_withScanner_memoryReader___block_invoke_125(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyWithInstanceSize:*(*(a1 + 32) + 28) superclassOffset:*(*(a1 + 32) + 24) asVariant:1 mutable:1];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 56);
  if (v5)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v38 = __78__VMUClassInfo_instanceSpecificInfoForObject_ofSize_withScanner_memoryReader___block_invoke_2_126;
    v39 = &unk_1E8278A40;
    v6 = *(a1 + 48);
    v40 = *(a1 + 32);
    v41 = v6;
    v7 = v37;
    v10 = *v5;
    v8 = v5 + 1;
    v9 = v10;
    if (v10)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = v11 >> 3;
        v14 = *(v8 + v13);
        v15 = v12;
        if (*(v8 + v13))
        {
          do
          {
            if (v14)
            {
              v38(v7, v15 - 1);
            }

            if (v14 < 2)
            {
              break;
            }

            v14 >>= 1;
            v16 = v15++ >= v9;
          }

          while (!v16);
        }

        v11 += 8;
        v12 += 8;
      }

      while (v11 < v9);
    }
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v31 = __78__VMUClassInfo_instanceSpecificInfoForObject_ofSize_withScanner_memoryReader___block_invoke_3_128;
    v32 = &unk_1E8278A68;
    v18 = *(a1 + 48);
    v33 = *(a1 + 32);
    v34 = v18;
    v19 = *(a1 + 80);
    v35 = *(a1 + 72);
    v36 = v19;
    v20 = v30;
    v23 = *v17;
    v21 = v17 + 1;
    v22 = v23;
    if (v23)
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = v24 >> 3;
        v27 = *(v21 + v26);
        v28 = v25;
        if (*(v21 + v26))
        {
          do
          {
            if (v27)
            {
              v31(v20, v28 - 1);
            }

            if (v27 < 2)
            {
              break;
            }

            v27 >>= 1;
            v16 = v28++ >= v22;
          }

          while (!v16);
        }

        v24 += 8;
        v25 += 8;
      }

      while (v24 < v22);
    }
  }

  return [*(*(*(a1 + 48) + 8) + 40) setSuperclassInfo:*(a1 + 40)];
}

void __78__VMUClassInfo_instanceSpecificInfoForObject_ofSize_withScanner_memoryReader___block_invoke_2_126(uint64_t a1, unsigned int a2)
{
  v3 = [*(*(a1 + 32) + 104) objectAtIndexedSubscript:a2];
  v3[2](v3, *(*(*(a1 + 40) + 8) + 40));
}

void __78__VMUClassInfo_instanceSpecificInfoForObject_ofSize_withScanner_memoryReader___block_invoke_3_128(void *a1, unsigned int a2)
{
  v3 = [*(a1[4] + 120) objectAtIndexedSubscript:a2];
  (*(v3 + 2))(v3, *(*(a1[5] + 8) + 40), a1[6], a1[7]);
}

- (void)enumerateStoredEntriesForObject:(unint64_t)object ofSize:(unsigned int)size externalValues:(id)values block:(id)block
{
  v68 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  blockCopy = block;
  if (self->_remoteType == 32)
  {
    v43 = blockCopy;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__6;
    v57 = __Block_byref_object_dispose__6;
    v58 = 0;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __76__VMUClassInfo_enumerateStoredEntriesForObject_ofSize_externalValues_block___block_invoke;
    v51[3] = &unk_1E8278AB8;
    sizeCopy = size;
    v51[4] = &v63;
    v51[5] = &v53;
    v51[6] = &v59;
    v51[7] = object;
    [(VMUClassInfo *)self enumerateAllFieldsWithBlock:v51];
    objectCopy = object;
    sizeCopy2 = size;
    if (valuesCopy)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v11 = valuesCopy;
      value = 0;
      value2 = 0;
      v14 = [v11 countByEnumeratingWithState:&v47 objects:v67 count:16];
      if (v14)
      {
        value4 = 0;
        value3 = 0;
        field7 = 0;
        field6 = 0;
        v16 = *v48;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v48 != v16)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v47 + 1) + 8 * i);
            field = [v18 field];
            isStorageImplPointer = [field isStorageImplPointer];

            if (isStorageImplPointer)
            {
              value = [v18 value];
            }

            else
            {
              field2 = [v18 field];
              isStorageBitmapPointer = [field2 isStorageBitmapPointer];

              if (isStorageBitmapPointer)
              {
                value2 = [v18 value];
              }

              else
              {
                field3 = [v18 field];
                isKeysPointer = [field3 isKeysPointer];

                if (isKeysPointer)
                {
                  value3 = [v18 value];
                }

                else
                {
                  field4 = [v18 field];
                  isValuesPointer = [field4 isValuesPointer];

                  if (isValuesPointer)
                  {
                    value4 = [v18 value];
                  }

                  else if (field7 || ([v18 field], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isKeyField"), v27, !v28))
                  {
                    if (!field6)
                    {
                      field5 = [v18 field];
                      isValueField = [field5 isValueField];

                      if (isValueField)
                      {
                        field6 = [v18 field];
                      }

                      else
                      {
                        field6 = 0;
                      }
                    }
                  }

                  else
                  {
                    field7 = [v18 field];
                  }
                }
              }
            }
          }

          v14 = [v11 countByEnumeratingWithState:&v47 objects:v67 count:16];
        }

        while (v14);
      }

      else
      {
        value4 = 0;
        value3 = 0;
        field7 = 0;
        field6 = 0;
      }
    }

    else
    {
      value = 0;
      value2 = 0;
      value4 = 0;
      value3 = 0;
      field7 = 0;
      field6 = 0;
    }

    if (v54[5])
    {
      v31 = *(v60 + 6);
      if (v31)
      {
        if (v64[3])
        {
          v32 = 1;
          do
          {
            if ([v54[5] size] + v31 > sizeCopy2)
            {
              break;
            }

            v43[2](v43, v54[5], v31, [v54[5] size]);
            v31 = [v54[5] stride] + v31;
          }

          while (v64[3] > v32++);
        }
      }
    }

    if (value && v64[3])
    {
      v34 = 0;
      v35 = 0;
      v36 = value4 - value;
      v37 = value3 - value;
      v38 = value2 - value;
      while ((v34 & 7) != 0)
      {
        if (v35)
        {
          goto LABEL_43;
        }

LABEL_47:
        v35 >>= 1;
        v37 += [field7 stride];
        v36 += [field6 stride];
        if (++v34 >= v64[3])
        {
          goto LABEL_48;
        }
      }

      if (v38 >= sizeCopy2)
      {
        goto LABEL_48;
      }

      v35 = *(objectCopy + v38++);
      if ((v35 & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_43:
      if (v37 + [field7 size] <= sizeCopy2)
      {
        (v43)[2](v43, field7, v37, [field7 size]);
      }

      if (v36 + [field6 size] <= sizeCopy2)
      {
        (v43)[2](v43, field6, v36, [field6 size]);
      }

      goto LABEL_47;
    }

LABEL_48:

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v63, 8);
    blockCopy = v43;
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __76__VMUClassInfo_enumerateStoredEntriesForObject_ofSize_externalValues_block___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isArraySize] && objc_msgSend(v5, "offset") + 8 <= *(a1 + 64))
  {
    v4 = *(a1 + 56);
    *(*(*(a1 + 32) + 8) + 24) = *(v4 + [v5 offset]);
  }

  else if (!*(*(*(a1 + 40) + 8) + 40) && [v5 isArrayEntries])
  {
    *(*(*(a1 + 48) + 8) + 24) = [v5 offset];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)enumerateExternalValuesFromObject:(unint64_t)object withSize:(unsigned int)size block:(id)block
{
  blockCopy = block;
  if (self->_remoteType == 32)
  {
    v17 = blockCopy;
    v9 = objc_opt_new();
    if (self->_ivarCount)
    {
      v10 = 0;
      v11 = 0;
      sizeCopy = size;
      do
      {
        v13 = self->_localIvarList[v10];
        if ((([v13 isStorageImplPointer] & 1) != 0 || (objc_msgSend(v13, "isStorageBitmapPointer") & 1) != 0 || (objc_msgSend(v13, "isKeysPointer") & 1) != 0 || objc_msgSend(v13, "isValuesPointer")) && objc_msgSend(v13, "offset") + 8 <= sizeCopy)
        {
          v14 = *(object + [v13 offset]);
          v15 = [[VMUFieldValue alloc] initWithField:v13 value:v14];
          [v9 addObject:v15];
          if ([v13 isStorageImplPointer])
          {
            v11 = v14;
          }
        }

        if (([v13 isKeyField] & 1) != 0 || objc_msgSend(v13, "isValueField"))
        {
          v16 = [[VMUFieldValue alloc] initWithField:v13 value:0];
          [v9 addObject:v16];
        }

        ++v10;
      }

      while (v10 < self->_ivarCount);
      if (v11 && [v9 count])
      {
        v17[2](v17, v11, v9);
      }
    }

    blockCopy = v17;
  }
}

- (VMUClassInfo)genericInfo
{
  if (self->_genericLayout)
  {
    self = self->_genericLayout;
  }

  return self;
}

- (unsigned)_ivarGapForClass
{
  if (self->_ivarCount < 2 || [(VMUClassInfo *)self isOSObject])
  {
    return 0;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  superclassInfo = [(VMUClassInfo *)self superclassInfo];
  instanceSize = [superclassInfo instanceSize];

  v15 = instanceSize;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__VMUClassInfo__ivarGapForClass__block_invoke;
  v11[3] = &unk_1E8278AE0;
  v11[4] = &v16;
  v11[5] = &v12;
  [(VMUClassInfo *)self enumerateTypeFieldsWithBlock:v11];
  instanceSize2 = [(VMUClassInfo *)self instanceSize];
  v7 = *(v13 + 6);
  v8 = instanceSize2 >= v7;
  v9 = instanceSize2 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  v3 = *(v17 + 6) + v9;
  *(v17 + 6) = v3;
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v3;
}

void __32__VMUClassInfo__ivarGapForClass__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 offset];
  v4 = [v7 offset];
  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v4 < v5)
  {
    v5 = v4;
  }

  *(*(*(a1 + 32) + 8) + 24) += v3 - v5;
  v6 = [v7 offset];
  *(*(*(a1 + 40) + 8) + 24) = [v7 size] + v6;
}

- (unsigned)ivarGapForClassHierarchy
{
  pointerSize = [(VMUClassInfo *)self pointerSize];
  selfCopy = self;
  v5 = selfCopy;
  v6 = 0;
  if (selfCopy)
  {
    v7 = 0;
    v8 = 0;
    v9 = -pointerSize;
    v10 = (pointerSize - 1) & 0xFFFFFFFC;
    v11 = selfCopy;
    do
    {
      _ivarGapForClass = [(VMUClassInfo *)v11 _ivarGapForClass];
      superclassInfo = [(VMUClassInfo *)v11 superclassInfo];
      v14 = _ivarGapForClass + v7;
      if ((v10 & (_ivarGapForClass + v7)) != 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8;
      }

      if (v8)
      {
        v7 = 0;
      }

      else
      {
        v7 = v10 & (_ivarGapForClass + v7);
      }

      if (v8)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v11 == v5)
      {
        v17 = -1;
      }

      else
      {
        v17 = v9;
      }

      v18 = v14 & v17;
      if (v11 == v5)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v6 = v18 + v6 - v16;

      v11 = superclassInfo;
    }

    while (superclassInfo);
  }

  v19 = malloc_good_size([(VMUClassInfo *)v5 instanceSize]);
  return v19 - malloc_good_size([(VMUClassInfo *)v5 instanceSize]- v6);
}

- (void)enumerateClassHierarchyWithBlock:(id)block
{
  blockCopy = block;
  [(VMUClassInfo *)self->_superclassLayout enumerateClassHierarchyWithBlock:?];
  blockCopy[2](blockCopy, self);
}

- (void)enumerateAllFieldsWithBlock:(id)block
{
  blockCopy = block;
  [(VMUClassInfo *)self->_superclassLayout enumerateAllFieldsWithBlock:?];
  [(VMUClassInfo *)self enumerateTypeFieldsWithBlock:blockCopy];
}

- (void)enumerateTypeFieldsWithBlock:(id)block
{
  blockCopy = block;
  v9 = 0;
  _totalIvarCount = [(VMUClassInfo *)self _totalIvarCount];
  ivarCount = self->_ivarCount;
  if (ivarCount)
  {
    v7 = 0;
    v8 = _totalIvarCount - ivarCount;
    do
    {
      blockCopy[2](blockCopy, self->_localIvarList[v7], v8 + v7, &v9);
      ++v7;
    }

    while (v7 < self->_ivarCount && (v9 & 1) == 0);
  }
}

- (void)enumerateScanningLocationsForSize:(unsigned int)size withBlock:(id)block
{
  blockCopy = block;
  if (self->_remoteType != 32)
  {
    superclassOffset = self->_superclassOffset;
    if (superclassOffset >= size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = superclassOffset;
    }

    [(VMUClassInfo *)self->_superclassLayout enumerateScanningLocationsForSize:sizeCopy withBlock:blockCopy];
    if (self->_ivarCount)
    {
      offset = [*self->_localIvarList offset];
    }

    else
    {
      offset = 0x7FFFFFFF;
    }

    instanceSize = self->_instanceSize;
    v30 = instanceSize;
    if (instanceSize <= size)
    {
      instanceSize = size;
    }

    remotePointerSize = self->_remotePointerSize;
    v12 = (remotePointerSize + self->_superclassOffset - 1) & -remotePointerSize;
    v29 = instanceSize - remotePointerSize;
    if (v12 <= (instanceSize - remotePointerSize))
    {
      v13 = 0;
      v14 = 0;
      v28 = blockCopy;
      while (1)
      {
        v15 = objc_autoreleasePoolPush();
        if (v12 >= offset)
        {
          do
          {
            v16 = v14;
            v14 = self->_localIvarList[v13];

            offset2 = [v14 offset];
            scannableSize = [v14 scannableSize];
            if (++v13 >= self->_ivarCount)
            {
              offset = 0x7FFFFFFF;
            }

            else
            {
              offset = [self->_localIvarList[v13] offset];
            }
          }

          while (v12 >= offset);
          v30 = scannableSize + offset2;
        }

        offset3 = [v14 offset];
        v31 = 0;
        v20 = [v14 getLeafFieldAtOffset:(v12 - offset3) leafOffset:&v31];
        if (v30 < (self->_remotePointerSize + v12) || v14 && (v21 = [v14 offset], v22 = v31, v23 = v22 + v21 + objc_msgSend(v20, "size"), blockCopy = v28, v23 < self->_remotePointerSize + v12))
        {
          if (v12 >= self->_instanceSize)
          {
            defaultScanType = self->_defaultScanType;
            if (defaultScanType)
            {
              if (defaultScanType == 1)
              {
                remotePointerSize = 1;
              }

              (*(blockCopy + 2))(blockCopy, 0, v12);
              v25 = 0;
              blockCopy = v28;
            }

            else
            {
              v25 = 1;
            }

            goto LABEL_31;
          }
        }

        else
        {
          if (v20)
          {
            scanType = [v20 scanType];
          }

          else
          {
            scanType = self->_defaultScanType;
          }

          (*(blockCopy + 2))(blockCopy, v20, v12, scanType);
        }

        v25 = 0;
LABEL_31:

        objc_autoreleasePoolPop(v15);
        v12 = remotePointerSize + v12;
        if (v12 > v29)
        {
          v27 = 1;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {

          break;
        }
      }
    }
  }
}

- (id)fieldAtOrBeforeOffset:(unsigned int)offset
{
  if (self->_instanceSize >= offset)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__6;
    v11 = __Block_byref_object_dispose__6;
    v12 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__VMUClassInfo_fieldAtOrBeforeOffset___block_invoke;
    v5[3] = &unk_1E8278B08;
    offsetCopy = offset;
    v5[4] = &v7;
    [(VMUClassInfo *)self enumerateAllFieldsWithBlock:v5];
    v3 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __38__VMUClassInfo_fieldAtOrBeforeOffset___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 offset];
  v8 = v7;
  v9 = *(a1 + 40);
  if (!(v7 | v9))
  {
    goto LABEL_7;
  }

  if (v7 > v9)
  {
    goto LABEL_3;
  }

  if ([v10 swiftTyperef])
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 40);
  if (v8)
  {
LABEL_3:
    if (v8 > v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    goto LABEL_8;
  }

LABEL_4:
  if (v8 > v9)
  {
    *a4 = 1;
  }

LABEL_8:
}

- (id)firstFieldWithName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__VMUClassInfo_firstFieldWithName___block_invoke;
  v8[3] = &unk_1E8278B30;
  v9 = nameCopy;
  v10 = &v11;
  v5 = nameCopy;
  [(VMUClassInfo *)self enumerateAllFieldsWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __35__VMUClassInfo_firstFieldWithName___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 ivarName];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_adjustInstanceSize
{
  ivarCount = self->_ivarCount;
  if (ivarCount)
  {
    v6 = self->_localIvarList[ivarCount - 1];
    offset = [v6 offset];
    v5 = [v6 size] + offset;
    if (self->_instanceSize < v5)
    {
      self->_instanceSize = v5;
    }
  }
}

- (void)_addFields:(id)fields
{
  fieldsCopy = fields;
  v5 = [fieldsCopy count];
  ivarCount = self->_ivarCount;
  v7 = malloc_type_realloc(self->_localIvarList, 8 * (ivarCount + v5), 0x80040B8603338uLL);
  v8 = v7;
  if (v7)
  {
    bzero(&v7[ivarCount], 8 * v5);
    self->_localIvarList = v8;
    self->_ivarCount += v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __27__VMUClassInfo__addFields___block_invoke;
    v9[3] = &unk_1E8278B58;
    v9[4] = self;
    v10 = ivarCount;
    [fieldsCopy enumerateObjectsUsingBlock:v9];
    [(VMUClassInfo *)self _adjustInstanceSize];
  }

  else
  {
    self->_localIvarList = 0;
  }
}

- (void)_replaceField:(id)field withFields:(id)fields
{
  fieldCopy = field;
  fieldsCopy = fields;
  if (self->_ivarCount)
  {
    v8 = 0;
    while (![self->_localIvarList[v8] isEqual:fieldCopy])
    {
      if (++v8 >= self->_ivarCount)
      {
        goto LABEL_13;
      }
    }

    v9 = [fieldsCopy count];
    localIvarList = self->_localIvarList;
    v11 = v9 - 1;
    if (v9 > 1)
    {
      ivarCount = self->_ivarCount;
      v13 = malloc_type_realloc(self->_localIvarList, 8 * (ivarCount + v11), 0x80040B8603338uLL);
      localIvarList = v13;
      if (!v13)
      {
        self->_localIvarList = 0;
        goto LABEL_13;
      }

      bzero(&v13[ivarCount], 8 * (v9 - 1));
      self->_localIvarList = localIvarList;
    }

    self->_ivarCount += v11;
    v14 = localIvarList[v8];
    localIvarList[v8] = 0;

    if (v9 != 1)
    {
      memmove(&self->_localIvarList[v9] + v8, &self->_localIvarList[v8 + 1], 8 * (self->_ivarCount - v9 - v8));
      if (v9)
      {
        bzero(&self->_localIvarList[v8], 8 * v9);
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__VMUClassInfo__replaceField_withFields___block_invoke;
    v15[3] = &unk_1E8278B58;
    v15[4] = self;
    v16 = v8;
    [fieldsCopy enumerateObjectsUsingBlock:v15];
  }

LABEL_13:
}

- (void)_replaceFieldRecursively:(id)recursively atOffset:(unsigned int)offset withField:(id)field
{
  recursivelyCopy = recursively;
  fieldCopy = field;
  if (self->_ivarCount)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = self->_localIvarList[v9];
      offset = [v11 offset];
      if (offset - offset < [v11 size])
      {
        break;
      }

      ++v10;
      ++v9;
      if (v10 >= self->_ivarCount)
      {
        goto LABEL_12;
      }
    }

    if ([v11 offset] == offset && objc_msgSend(v11, "isEqual:", recursivelyCopy))
    {
      objc_storeStrong(&self->_localIvarList[v9], field);
    }

    else
    {
      subFieldArray = [v11 subFieldArray];

      if (subFieldArray)
      {
        [v11 replaceFieldRecursively:recursivelyCopy atOffset:offset - objc_msgSend(v11 withField:{"offset"), fieldCopy}];
      }
    }
  }

LABEL_12:
}

- (void)_setFields:(id)fields
{
  fieldsCopy = fields;
  [(VMUClassInfo *)self _freeLocalIvarList];
  v4 = [fieldsCopy count];
  self->_ivarCount = v4;
  if (v4)
  {
    self->_localIvarList = malloc_type_calloc(v4 + 1, 8uLL, 0x80040B8603338uLL);
    if (self->_ivarCount)
    {
      v5 = 0;
      do
      {
        v6 = [fieldsCopy objectAtIndexedSubscript:v5];
        localIvarList = self->_localIvarList;
        v8 = localIvarList[v5];
        localIvarList[v5] = v6;

        ++v5;
      }

      while (v5 < self->_ivarCount);
    }
  }

  [(VMUClassInfo *)self _adjustInstanceSize];
}

- (void)_addVariantAction:(id)action withEvaluator:(id)evaluator
{
  aBlock = action;
  evaluatorCopy = evaluator;
  variantEvaluators = self->_variantEvaluators;
  if (!variantEvaluators)
  {
    v8 = objc_opt_new();
    v9 = self->_variantEvaluators;
    self->_variantEvaluators = v8;

    v10 = objc_opt_new();
    variantActions = self->_variantActions;
    self->_variantActions = v10;

    variantEvaluators = self->_variantEvaluators;
  }

  *&self->_hasSpecificLayout = 257;
  v12 = _Block_copy(evaluatorCopy);
  [(NSMutableArray *)variantEvaluators addObject:v12];

  v13 = self->_variantActions;
  v14 = _Block_copy(aBlock);
  [(NSMutableArray *)v13 addObject:v14];
}

- (void)_addComplexAction:(id)action withEvaluator:(id)evaluator
{
  aBlock = action;
  evaluatorCopy = evaluator;
  complexVariantEvaluators = self->_complexVariantEvaluators;
  if (!complexVariantEvaluators)
  {
    v8 = objc_opt_new();
    v9 = self->_complexVariantEvaluators;
    self->_complexVariantEvaluators = v8;

    v10 = objc_opt_new();
    complexVariantActions = self->_complexVariantActions;
    self->_complexVariantActions = v10;

    complexVariantEvaluators = self->_complexVariantEvaluators;
  }

  *&self->_hasSpecificLayout = 257;
  v12 = _Block_copy(evaluatorCopy);
  [(NSMutableArray *)complexVariantEvaluators addObject:v12];

  v13 = self->_complexVariantActions;
  v14 = _Block_copy(aBlock);
  [(NSMutableArray *)v13 addObject:v14];
}

+ (id)descriptionForTypeEncoding:(const char *)encoding ivarName:(const char *)name
{
  v4 = descriptionForTypeEncoding(encoding, name);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F461F9C8;
  }

  v7 = v6;

  return v6;
}

- (NSString)binaryName
{
  lastPathComponent = [(NSString *)self->_remoteBinaryPath lastPathComponent];
  v3 = lastPathComponent;
  if (lastPathComponent)
  {
    v4 = lastPathComponent;
  }

  else
  {
    v4 = @"<unknown>";
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)typeName
{
  remoteType = self->_remoteType;
  if (remoteType > 7)
  {
    if (remoteType <= 31)
    {
      if (remoteType != 8)
      {
        if (remoteType == 16)
        {
          return @"C";
        }

        return @"<unknown>";
      }
    }

    else if (remoteType != 32 && remoteType != 64)
    {
      if (remoteType == 128)
      {
        return @"OSObj";
      }

      return @"<unknown>";
    }

    return @"Swift";
  }

  result = @"ObjC";
  if (remoteType <= 0)
  {
    if (remoteType == 0x80000000)
    {
      return result;
    }

    if (!remoteType)
    {
      return &stru_1F461F9C8;
    }
  }

  else
  {
    switch(remoteType)
    {
      case 1:
        return result;
      case 2:
        return @"C++";
      case 4:
        return @"CFType";
    }
  }

  return @"<unknown>";
}

- (NSString)fullIvarDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__VMUClassInfo_fullIvarDescription__block_invoke;
  v6[3] = &unk_1E8278B80;
  v4 = string;
  v7 = v4;
  [(VMUClassInfo *)self _logDescriptionWithSuperclasses:1 indentation:0 toLogger:v6];

  return v4;
}

- (NSString)shortIvarDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__VMUClassInfo_shortIvarDescription__block_invoke;
  v6[3] = &unk_1E8278B80;
  v4 = string;
  v7 = v4;
  [(VMUClassInfo *)self _logDescriptionWithSuperclasses:0 indentation:0 toLogger:v6];

  return v4;
}

- (id)scanDescriptionWithSize:(unsigned int)size
{
  string = [MEMORY[0x1E696AD60] string];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __40__VMUClassInfo_scanDescriptionWithSize___block_invoke;
  v19 = &unk_1E8278B30;
  v6 = string;
  v20 = v6;
  v21 = &v22;
  [(VMUClassInfo *)self enumerateAllFieldsWithBlock:&v16];
  v7 = v23;
  superclassOffset = *(v23 + 6);
  if (superclassOffset <= self->_superclassOffset)
  {
    superclassOffset = self->_superclassOffset;
  }

  *(v23 + 6) = superclassOffset;
  remotePointerSize = self->_remotePointerSize;
  v10 = remotePointerSize - 1;
  v11 = -remotePointerSize;
  *(v7 + 6) = (v10 + superclassOffset) & v11;
  v12 = (self->_instanceSize + v10) & v11;
  *(v7 + 6) = v12;
  if (v12 + 8 <= size)
  {
    if ([v6 length])
    {
      [v6 appendString:@"\n"];
    }

    v13 = *(v23 + 6);
    v14 = VMUScanTypeScanDescription(self->_defaultScanType);
    [v6 appendFormat:@"%+*d: <extra space>[%u] (%s)", 3, v13, size - v13, v14, v16, v17, v18, v19];
  }

  _Block_object_dispose(&v22, 8);

  return v6;
}

void __40__VMUClassInfo_scanDescriptionWithSize___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:@"\n"];
  }

  v3 = *(a1 + 32);
  v4 = _formatIvar(v5, 3);
  [v3 appendString:v4];

  LODWORD(v4) = [(VMUFieldInfo *)v5 offset];
  *(*(*(a1 + 40) + 8) + 24) = [(VMUFieldInfo *)v5 size]+ v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VMUClassInfo;
  v4 = [(VMUClassInfo *)&v8 description];
  fullIvarDescription = [(VMUClassInfo *)self fullIvarDescription];
  v6 = [v3 stringWithFormat:@"%@  %@", v4, fullIvarDescription];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_displayName)
  {
    displayName = [(VMUClassInfo *)self displayName];
    className = [(VMUClassInfo *)self className];
    type = [(VMUClassInfo *)self type];
    binaryName = [(VMUClassInfo *)self binaryName];
    v8 = [v3 stringWithFormat:@"%@ (%@)  %@  %@", displayName, className, type, binaryName];
  }

  else
  {
    displayName = [(VMUClassInfo *)self className];
    className = [(VMUClassInfo *)self type];
    type = [(VMUClassInfo *)self binaryName];
    v8 = [v3 stringWithFormat:@"%@  %@  %@", displayName, className, type];
  }

  v9 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = VMUClassInfo;
  v10 = [(VMUClassInfo *)&v13 description];
  v11 = [v9 stringWithFormat:@"%@  %@", v10, v8];

  return v11;
}

- (BOOL)isOSObject
{
  if ([(NSString *)self->_remoteClassName isEqualToString:@"OS_object"])
  {
    return 1;
  }

  superclassLayout = self->_superclassLayout;

  return [(VMUClassInfo *)superclassLayout isOSObject];
}

- (void)enumerateAllPointerFieldsWithBlock:(void *)result
{
  if (result)
  {
    v2 = result;
    result = [(VMUClassInfo *)result[10] enumerateAllPointerFieldsWithBlock:a2];
    if (*(v2 + 5))
    {
      v3 = 0;
      v21 = a2 + 16;
      do
      {
        v23 = v3;
        v4 = *(v2[6] + 8 * v3);
        v5 = [v4 offset] % *(v2 + 4);
        offset = [v4 offset];
        if (v5)
        {
          v7 = *(v2 + 4);
          offset2 = [v4 offset];
          offset += v7 + offset2 / *(v2 + 4) * *(v2 + 4) - offset2;
        }

        offset3 = [v4 offset];
        result = [v4 size];
        v10 = result + offset3;
        while (*(v2 + 4) + offset <= v10)
        {
          v11 = offset - [v4 offset];
          v24 = 0;
          result = [v4 getLeafFieldAtOffset:v11 leafOffset:&v24];
          if (result)
          {
            v12 = result;
            v13 = v24 + offset;
            v14 = [result size];
            v15 = v24;
            if ((v13 + v14) % *(v2 + 4))
            {
              v16 = [v12 size];
              v17 = *(v2 + 4);
              v18 = v24 + offset;
              v19 = [v12 size];
              offset += v15 + v16 + v17 + (v18 + v19) / *(v2 + 4) * *(v2 + 4) - (v18 + v19);
            }

            else
            {
              offset += v15 + [v12 size];
            }

            result = [v12 scanType];
            if (result == 1)
            {
              result = [v12 scannableSize];
              if (result >= *(v2 + 4))
              {
                if (*(v2 + 11) == 8 || (result = [v12 typeNameMayDescribeReferencedAllocation], result))
                {
                  offset4 = [v12 offset];
                  result = [v12 size];
                  if ((result + offset4) > *(v2 + 7))
                  {
                    break;
                  }

                  result = (*(a2 + 16))(a2, v4, v12, v11);
                }
              }
            }
          }

          else
          {
            offset += *(v2 + 4);
          }
        }

        v3 = v23 + 1;
      }

      while (v23 + 1 < *(v2 + 5));
    }
  }

  return result;
}

@end