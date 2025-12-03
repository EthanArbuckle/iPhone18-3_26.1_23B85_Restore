@interface VMUCallTreeRoot
- (VMUCallTreeRoot)initWithCallGraphFile:(id)file fileHeader:(id *)header topFunctionsList:(id *)list binaryImagesList:(id *)imagesList error:(id *)error;
- (VMUCallTreeRoot)initWithSymbolicator:(_CSTypeRef)symbolicator sampler:(id)sampler options:(unint64_t)options;
- (id)addBacktrace:(id)backtrace count:(unsigned int)count numBytes:(unint64_t)bytes;
- (id)addChildWithName:(id)name address:(unint64_t)address count:(unsigned int)count numBytes:(unint64_t)bytes toNode:(id)node;
- (id)chargeSystemLibrariesToCallersAndKeepBoundaries:(BOOL)boundaries;
- (id)descriptionStringForAddress:(unint64_t)address atTime:(unint64_t)time leafFrame:(BOOL)frame startOfRecursion:(BOOL)recursion;
- (void)addChildCountsIntoNode;
- (void)allBacktracesHaveBeenAdded;
- (void)dealloc;
@end

@implementation VMUCallTreeRoot

- (VMUCallTreeRoot)initWithSymbolicator:(_CSTypeRef)symbolicator sampler:(id)sampler options:(unint64_t)options
{
  samplerCopy = sampler;
  v20.receiver = self;
  v20.super_class = VMUCallTreeRoot;
  v9 = [(VMUCallTreeRoot *)&v20 init];
  v10 = v9;
  if (v9)
  {
    name = v9->super._name;
    v9->super._name = &stru_1F461F9C8;

    v10->_symbolicator._opaque_1 = CSRetain();
    v10->_symbolicator._opaque_2 = v12;
    objc_storeStrong(&v10->_sampler, sampler);
    v10->_options = options;
    v13 = objc_opt_new();
    uniqueNodeNames = v10->_uniqueNodeNames;
    v10->_uniqueNodeNames = v13;

    v15 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:0];
    addressToSymbolNameMap = v10->_addressToSymbolNameMap;
    v10->_addressToSymbolNameMap = v15;

    v17 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:0];
    addressToLeafSymbolNameMap = v10->_addressToLeafSymbolNameMap;
    v10->_addressToLeafSymbolNameMap = v17;
  }

  return v10;
}

- (void)allBacktracesHaveBeenAdded
{
  p_symbolicator = &self->_symbolicator;
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = p_symbolicator->_opaque_2;
  CSRelease();
  p_symbolicator->_opaque_1 = 0;
  p_symbolicator->_opaque_2 = 0;
}

- (void)dealloc
{
  [(VMUCallTreeRoot *)self allBacktracesHaveBeenAdded];
  v3.receiver = self;
  v3.super_class = VMUCallTreeRoot;
  [(VMUCallTreeNode *)&v3 dealloc];
}

- (id)descriptionStringForAddress:(unint64_t)address atTime:(unint64_t)time leafFrame:(BOOL)frame startOfRecursion:(BOOL)recursion
{
  recursionCopy = recursion;
  v64 = *MEMORY[0x1E69E9840];
  v9 = [(VMUStackLogReader *)self->_stackLogReader vmuVMRegionForAddress:?];
  frameCopy = frame;
  if (!frame)
  {
    v10 = address + ((self->_options >> 7) & 1) - 1;
  }

  p_symbolicator = &self->_symbolicator;
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
  Path = CSSymbolOwnerGetPath();
  if (Path)
  {
    v15 = 1;
  }

  else
  {
    v15 = v9 == 0;
  }

  if (!v15)
  {
    Path = [v9[5] UTF8String];
  }

  if ((self->_options & 0x10) != 0)
  {
    v16 = Path;
    v17 = isSystemPath(Path);
    Path = v16;
    p_symbolicator = &self->_symbolicator;
    if (v17)
    {
      v18 = 0;
      goto LABEL_66;
    }
  }

  v52 = Path;
  Name = CSSymbolOwnerGetName();
  v58 = v9;
  if (Name)
  {
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v20 = self->_vmRegions;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v60;
      v56 = @"Rosetta Runtime Routines";
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v60 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v59 + 1) + 8 * i);
          v26 = address - [v25 range];
          if (v26 < v27)
          {
            if (*(v25 + 104) == 234)
            {
              v56 = VMUExclaveOrDarwinRegionTypeDescriptionForTagShareProtAndPager(*(v25 + 232), 234, 0, 0, 0);
              goto LABEL_26;
            }

            if (*(v25 + 112) == self->_cambriaRuntimeObjectID)
            {
              goto LABEL_26;
            }
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v59 objects:v63 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

      v56 = @"<unknown binary>";
    }

    else
    {
      v56 = @"<unknown binary>";
    }

LABEL_26:
  }

  v28 = p_symbolicator->_opaque_1;
  v29 = p_symbolicator->_opaque_2;
  CSSymbolicatorGetSymbolWithAddressAtTime();
  v30 = CSSymbolGetName();
  if (v30 && ([MEMORY[0x1E696AEC0] stringWithUTF8String:v30], (v31 = objc_claimAutoreleasedReturnValue()) != 0) || (stackLogReader = self->_stackLogReader) != 0 && (-[VMUStackLogReader functionNameForPCaddress:](stackLogReader, "functionNameForPCaddress:", address), (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v33 = v31;
    v34 = VMUSimplifyCPlusPlusSymbolName(v31);

    options = self->_options;
    if ((options & 0x20) != 0 || (options & 0x40) != 0 && isSystemPath(v52))
    {
      v55 = 0;
      range2 = 0;
      Range = 0;
      v53 = 1;
      v38 = recursionCopy;
      goto LABEL_50;
    }

    Range = CSSymbolGetRange();
    if (!Range)
    {
      Range = [(VMUStackLogReader *)self->_stackLogReader functionRangeContainingPCaddress:address];
    }

    range = 0;
    v38 = recursionCopy;
    if (frameCopy)
    {
      range2 = @"0";
      v53 = 1;
      goto LABEL_48;
    }

    v39 = @"%qu";
    goto LABEL_45;
  }

  v34 = kVMUUnknownSymbolName[0];
  Range = CSSymbolOwnerGetBaseAddress();
  if (Range)
  {
    v38 = recursionCopy;
LABEL_39:
    v39 = @"0x%qx";
    range = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%qx", Range];
LABEL_45:
    range2 = [MEMORY[0x1E696AEC0] stringWithFormat:v39, address - Range];
    v53 = 0;
    Range = address;
    goto LABEL_48;
  }

  v38 = recursionCopy;
  if (v58)
  {
    Range = v58[1];
  }

  if (Range)
  {
    goto LABEL_39;
  }

  v53 = 0;
  range2 = 0;
  range = 0;
  Range = address;
LABEL_48:
  v55 = range;
  if (Range)
  {
    Range = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%qx", Range];
  }

LABEL_50:
  v41 = &stru_1F461F9C8;
  if (v38)
  {
    v41 = @"  RECURSION COLLAPSED";
  }

  v42 = v41;
  v43 = self->_options;
  CSSymbolOwnerGetSourceInfoWithAddress();
  if (CSIsNull())
  {
    v44 = self->_stackLogReader;
    if (v44)
    {
      if ((v43 & 2) != 0)
      {
        [(VMUStackLogReader *)v44 sourcePathForPCaddress:address];
      }

      else
      {
        [(VMUStackLogReader *)v44 sourceFileNameForPCaddress:address];
      }
      v51 = ;
      if (v51)
      {
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %@:%u", v42, v51, -[VMUStackLogReader sourceLineNumberForPCaddress:](self->_stackLogReader, "sourceLineNumberForPCaddress:", address)];
      }

      else
      {
        v46 = 0;
      }

      if (v46)
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
    if ((v43 & 2) != 0)
    {
      Filename = CSSourceInfoGetPath();
    }

    else
    {
      Filename = CSSourceInfoGetFilename();
    }

    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %s:%u", v42, Filename, CSSourceInfoGetLineNumber()];
    if (v46)
    {
      goto LABEL_61;
    }
  }

  v46 = v42;
LABEL_61:
  v18 = [(VMUCallTreeNode *)self nameWithStringsForSymbol:v34 library:v56 loadAddress:v55 offset:range2 address:Range suffix:v46];
  if (v53)
  {
    v47 = self->_uniqueNodeNames;
    v48 = v18;
    v18 = [(NSMutableSet *)v47 member:v48];
    if (!v18)
    {
      [(NSMutableSet *)v47 addObject:v48];
      v18 = v48;
    }
  }

  v9 = v58;
LABEL_66:

  v49 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)addBacktrace:(id)backtrace count:(unsigned int)count numBytes:(unint64_t)bytes
{
  backtraceCopy = backtrace;
  backtraceLength = [backtraceCopy backtraceLength];
  if (backtraceLength)
  {
    v10 = backtraceLength;
    selfCopy = self;
    context = objc_autoreleasePoolPush();
    key = 0;
    options = selfCopy->_options;
    selfCopy->super._count += count;
    selfCopy->super._numBytes += bytes;
    v13 = selfCopy;
    v39 = options;
    if ((options & 4) == 0)
    {
      sampler = selfCopy->_sampler;
      if (sampler)
      {
        v15 = [(VMUSampler *)sampler threadDescriptionStringForBacktrace:backtraceCopy returnedAddress:&key];
        v16 = 2;
        thread = key;
      }

      else
      {
        if (!selfCopy->_threadPortToNameMap)
        {
          v18 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
          threadPortToNameMap = selfCopy->_threadPortToNameMap;
          selfCopy->_threadPortToNameMap = v18;
        }

        thread = [backtraceCopy thread];
        v15 = NSMapGet(selfCopy->_threadPortToNameMap, thread);
        if (!v15)
        {
          v15 = [MEMORY[0x1E696AD60] stringWithFormat:@"Thread_%x", thread];
          NSMapInsert(selfCopy->_threadPortToNameMap, thread, v15);
        }

        key = thread;
        v16 = 1;
      }

      v13 = [(VMUCallTreeNode *)selfCopy findOrAddChildWithName:v15 address:thread nodeSearchType:v16 isLeafNode:0];

      *(v13 + 40) += count;
      *(v13 + 32) += bytes;
    }

    backtrace = [backtraceCopy backtrace];
    v36 = backtraceCopy;
    [backtraceCopy timestamp];
    v21 = (v10 - 1);
    if (v10 - 1 >= 0)
    {
      countCopy = count;
      bytesCopy = bytes;
      v22 = 0;
      v23 = v21 + 1;
      v24 = (backtrace + 8 * v21);
      while (1)
      {
        v25 = *v24;
        key = *v24;
        if (v22)
        {
          break;
        }

        if (v25 >= 0x1000)
        {
          goto LABEL_19;
        }

LABEL_45:
        ++v22;
        --v24;
        if (v23-- <= 1)
        {
          goto LABEL_47;
        }
      }

      if ((v39 & 8) != 0 && v25 == v24[1])
      {
        goto LABEL_45;
      }

LABEL_19:
      if (v23 == 1)
      {
        v26 = (selfCopy->_options & 0x20) == 0;
        v27 = &OBJC_IVAR___VMUCallTreeRoot__addressToSymbolNameMap;
        if ((selfCopy->_options & 0x20) == 0)
        {
          v27 = &OBJC_IVAR___VMUCallTreeRoot__addressToLeafSymbolNameMap;
        }
      }

      else
      {
        v26 = 0;
        v27 = &OBJC_IVAR___VMUCallTreeRoot__addressToSymbolNameMap;
      }

      v28 = *(&selfCopy->super.super.isa + *v27);
      v29 = NSMapGet(v28, key);
      if (!v29)
      {
        if (!key)
        {
          v29 = @"0x0";
          if (!v26)
          {
            goto LABEL_42;
          }

          goto LABEL_35;
        }

        if ((v39 & 8) != 0 && v23 != 1)
        {
          v30 = *(v24 - 1) == key;
        }

        v31 = [VMUCallTreeRoot descriptionStringForAddress:selfCopy atTime:"descriptionStringForAddress:atTime:leafFrame:startOfRecursion:" leafFrame:? startOfRecursion:?];
        if (v31)
        {
          v29 = v31;
        }

        else
        {
          v29 = @"IGNORE THIS FRAME";
        }

        NSMapInsert(v28, key, v29);
      }

      if (v29 == @"IGNORE THIS FRAME")
      {
        v29 = @"IGNORE THIS FRAME";
LABEL_44:

        goto LABEL_45;
      }

      if (!v26)
      {
        goto LABEL_42;
      }

LABEL_35:
      if (([(__CFString *)v29 hasPrefix:kVMUUnknownSymbolName[0]]& 1) == 0)
      {
        v32 = [v13 findOrAddChildWithName:v29 address:0 nodeSearchType:1 isLeafNode:1];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!*(v32 + 24))
          {
            [v32 parseNameIntoSymbol:0 library:0 loadAddress:0 offset:0 address:v32 + 24 suffix:0];
          }

          [v32 addAddress:key];
        }

        goto LABEL_43;
      }

LABEL_42:
      v32 = [v13 findOrAddChildWithName:v29 address:key nodeSearchType:1 isLeafNode:0];

LABEL_43:
      *(v32 + 40) += countCopy;
      *(v32 + 32) += bytesCopy;
      v13 = v32;
      goto LABEL_44;
    }

LABEL_47:
    objc_autoreleasePoolPop(context);
    backtraceCopy = v36;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)addChildWithName:(id)name address:(unint64_t)address count:(unsigned int)count numBytes:(unint64_t)bytes toNode:(id)node
{
  nameCopy = name;
  nodeCopy = node;
  v14 = [(NSMutableSet *)self->_uniqueNodeNames member:nameCopy];
  if (v14)
  {
    v15 = v14;
    v16 = 1;
  }

  else
  {
    [(NSMutableSet *)self->_uniqueNodeNames addObject:nameCopy];
    v15 = nameCopy;
    v16 = 0;
  }

  v17 = [nodeCopy findOrAddChildWithName:v15 address:address nodeSearchType:v16 isLeafNode:address != 0];
  *(v17 + 40) += count;
  *(v17 + 32) += bytes;

  return v17;
}

- (void)addChildCountsIntoNode
{
  v15 = [MEMORY[0x1E695DF70] arrayWithObject:self];
  if (![v15 count])
  {
    v4 = -1;
    do
    {
LABEL_11:
      v11 = [v15 objectAtIndexedSubscript:v4];
      v12 = *(v11 + 32);
      parent = [v11 parent];
      parent[4] += v12;

      LODWORD(v12) = *(v11 + 40);
      parent2 = [v11 parent];
      parent2[10] += v12;

      v3 = v15;
      --v4;
    }

    while (v4);
    goto LABEL_12;
  }

  v2 = 0;
  v3 = v15;
  do
  {
    v4 = v2;
    v5 = [v3 objectAtIndexedSubscript:v2];
    numChildren = [v5 numChildren];
    if (numChildren)
    {
      v7 = numChildren;
      v8 = 0;
      do
      {
        v9 = [v5 childAtIndex:v8];
        [v15 addObject:v9];

        v8 = (v8 + 1);
      }

      while (v7 != v8);
    }

    v2 = v4 + 1;

    v10 = v4 + 1 >= [v15 count];
    v3 = v15;
  }

  while (!v10);
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (VMUCallTreeRoot)initWithCallGraphFile:(id)file fileHeader:(id *)header topFunctionsList:(id *)list binaryImagesList:(id *)imagesList error:(id *)error
{
  v105[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (header)
  {
    *header = 0;
  }

  if (list)
  {
    *list = 0;
  }

  if (imagesList)
  {
    *imagesList = 0;
  }

  v13 = [(VMUCallTreeRoot *)self initWithSymbolicator:0 sampler:0 options:0, 0];
  if (!v13)
  {
    v17 = 0;
    goto LABEL_43;
  }

  v14 = v13;
  fileSystemRepresentation = [fileCopy fileSystemRepresentation];
  v92 = fopen(fileSystemRepresentation, "re");
  if (!v92)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"couldn't open %s for reading call tree\n", fileSystemRepresentation];
    v19 = MEMORY[0x1E696ABC0];
    v104 = *MEMORY[0x1E696A578];
    v105[0] = v18;
    string2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:&v104 count:1];
    v20 = [v19 errorWithDomain:@"VMUCallTreeRoot" code:1 userInfo:?];
    v17 = 0;
    if (error)
    {
      *error = v20;
    }

    goto LABEL_42;
  }

  v74 = fileSystemRepresentation;
  if (header)
  {
    string = [MEMORY[0x1E696AD60] string];
    if (list)
    {
      goto LABEL_11;
    }

LABEL_17:
    string2 = 0;
    if (imagesList)
    {
      goto LABEL_12;
    }

LABEL_18:
    string3 = 0;
    goto LABEL_19;
  }

  string = 0;
  if (!list)
  {
    goto LABEL_17;
  }

LABEL_11:
  string2 = [MEMORY[0x1E696AD60] string];
  if (!imagesList)
  {
    goto LABEL_18;
  }

LABEL_12:
  string3 = [MEMORY[0x1E696AD60] string];
LABEL_19:
  headerCopy = header;
  listCopy = list;
  errorCopy = error;
  imagesListCopy = imagesList;
  v78 = fileCopy;
  v79 = string;
  v87 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v14, 0}];
  lastObject = v14;
  name = lastObject->super._name;
  lastObject->super._name = &stru_1F461F9C8;

  v90 = objc_alloc_init(MEMORY[0x1E695DF70]);
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v83 = objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"(");
  v80 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@""]);
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v99 = 0;
  v23 = v92;
  v81 = lastObject;
  if (feof(v92))
  {
    lastObject2 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v85 = 0;
    goto LABEL_21;
  }

  v85 = 0;
  v41 = 0;
  v25 = 0;
  v42 = 0;
  v71 = 1;
  v73 = 1;
  v43 = lastObject;
  while (1)
  {
    v27 = fgetln(v23, &v99);
    if (!v27)
    {
      lastObject2 = v42;
      lastObject = v43;
      v26 = v41;
      goto LABEL_21;
    }

    v44 = objc_autoreleasePoolPush();
    v45 = objc_alloc(MEMORY[0x1E696AEC0]);
    v46 = [v45 initWithBytesNoCopy:v27 length:v99 encoding:4 freeWhenDone:0];
    if (!v46)
    {
      break;
    }

    if (!strncmp(v27, "Call graph:", 0xBuLL))
    {
      v25 = 1;
      goto LABEL_63;
    }

    if (!strncmp(v27, "Total number in stack", 0x15uLL) || v25 == 1 && v99 <= 1)
    {
      [string2 appendString:v46];
      v25 = 2;
      goto LABEL_63;
    }

    if (!strncmp(v27, "Binary Images:", 0xEuLL))
    {
      goto LABEL_62;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        [string2 appendString:v46];
      }

      else
      {
LABEL_62:
        [string3 appendString:v46];
        v25 = 3;
      }

LABEL_63:

      objc_autoreleasePoolPop(v44);
      v26 = v41;
      lastObject = v43;
      lastObject2 = v42;
      goto LABEL_64;
    }

    if (!v25 && [v46 integerValue] <= 0)
    {
      [v79 appendString:v46];
      v25 = 0;
      goto LABEL_63;
    }

    v47 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v46];

    [v47 setCharactersToBeSkipped:0];
    v98 = 0;
    v75 = v47;
    [v47 scanUpToCharactersFromSet:decimalDigitCharacterSet intoString:&v98];
    v72 = v98;
    v48 = [v72 length];
    if (v48 < 4)
    {
      goto LABEL_107;
    }

    v49 = v48;
    if (v48 <= [v42 length])
    {
      do
      {
        [v87 removeLastObject];
        lastObject = [v87 lastObject];

        [v90 removeLastObject];
        lastObject2 = [v90 lastObject];

        v43 = lastObject;
        v42 = lastObject2;
      }

      while (v49 <= [lastObject2 length]);
    }

    else
    {
      lastObject2 = v42;
      lastObject = v43;
    }

    v97 = 0;
    v23 = v92;
    if (![v75 scanInteger:&v97] || v97 < 1 || !objc_msgSend(v75, "scanCharactersFromSet:intoString:", whitespaceCharacterSet, 0))
    {
      goto LABEL_106;
    }

    v50 = v75;
    v51 = 0;
    if ([v75 scanCharactersFromSet:v83 intoString:0])
    {
      LODWORD(v94) = 0;
      if (([v75 scanFloat:&v94] & 1) == 0)
      {
        [v75 setScanLocation:{objc_msgSend(v75, "scanLocation") - 1}];
        v51 = 0;
        goto LABEL_83;
      }

      v96 = 0;
      v52 = [v75 scanUpToCharactersFromSet:v80 intoString:&v96];
      v53 = v96;
      v54 = v53;
      if (v52)
      {
        if ([v53 isEqualToString:@"K"])
        {
          v55 = *&v94;
          v56 = 1024.0;
          goto LABEL_79;
        }

        if ([v54 isEqualToString:@"M"])
        {
          v55 = *&v94;
          v56 = 1048600.0;
LABEL_79:
          *&v94 = v55 * v56;
          v50 = v75;
        }

        else
        {
          v50 = v75;
          if (([v54 hasSuffix:@"bytes"] & 1) == 0 && objc_msgSend(v54, "length"))
          {
LABEL_105:

LABEL_106:
            v42 = lastObject2;
            v43 = lastObject;
LABEL_107:

            v25 = 1;
            v85 = 1;
            goto LABEL_114;
          }
        }
      }

      v57 = *&v94;
      if (![v50 scanCharactersFromSet:v80 intoString:0] || !objc_msgSend(v50, "scanCharactersFromSet:intoString:", whitespaceCharacterSet, 0))
      {
        goto LABEL_105;
      }

      v51 = v57;
    }

LABEL_83:
    scanLocation = [v50 scanLocation];
    v95 = 0;
    [v50 scanUpToCharactersFromSet:newlineCharacterSet intoString:&v95];
    v59 = v95;
    v60 = [v59 length];
    if (v60)
    {
      if (!v51)
      {
        v69 = scanLocation;
        v61 = v81->_uniqueNodeNames;
        v62 = v59;
        v59 = [(NSMutableSet *)v61 member:v62];
        if (!v59)
        {
          [(NSMutableSet *)v61 addObject:v62];
          v59 = v62;
        }

        v51 = 0;
        goto LABEL_93;
      }

      if (([v59 isEqualToString:kVMURootNodeNameForMallocCallTrees[0]] & 1) == 0)
      {
        v69 = scanLocation;
LABEL_93:
        v63 = [(VMUCallTreeNode *)lastObject findOrAddChildWithName:v59 address:0 nodeSearchType:0 isLeafNode:0];
        v64 = v63;
        if (v63)
        {
          *(v63 + 40) = v97;
          *(v63 + 32) = v51;
          v94 = 0;
          if ((v73 & 1) != 0 && ([v63 parseNameIntoSymbol:0 library:0 loadAddress:0 offset:0 address:&v94 suffix:0], (v65 = v94) != 0))
          {
            v73 = 1;
          }

          else
          {
            [v75 setScanLocation:v69];
            [v75 scanUpToString:@"0x" intoString:0];
            [v75 scanHexLongLong:&v94];
            v65 = v94;
            v73 = 0;
            if (!v94)
            {
              v94 = v71;
              v65 = v71++;
            }
          }

          v64[3] = v65;
          [v87 addObject:v64];
          v70 = v64;
          v66 = v64;

          [v90 addObject:v72];
          v67 = v72;

          if (v66->super._parent == v81)
          {
            v81->super._count += v97;
            v81->super._numBytes += v51;
          }

          lastObject2 = v67;
          lastObject = v66;
          v64 = v70;
        }

        v25 = 1;
        v42 = lastObject2;
        v43 = lastObject;
        v41 = v75;
        goto LABEL_63;
      }
    }

    else
    {
      v85 = 1;
    }

    objc_autoreleasePoolPop(v44);
    v25 = 1;
    v26 = v75;
    if (!v60)
    {
      goto LABEL_21;
    }

LABEL_64:
    v41 = v26;
    v43 = lastObject;
    v42 = lastObject2;
    if (feof(v23))
    {
      goto LABEL_21;
    }
  }

  v85 = 2;
  v75 = v41;
LABEL_114:

  objc_autoreleasePoolPop(v44);
  lastObject2 = v42;
  lastObject = v43;
  v26 = v75;
LABEL_21:
  fclose(v23);
  if (v25 && !v85)
  {
    v28 = v81;
    [(VMUCallTreeRoot *)v81 allBacktracesHaveBeenAdded];
    v18 = v79;
    v29 = v90;
    if (headerCopy)
    {
      v30 = v79;
      *headerCopy = v79;
    }

    fileCopy = v78;
    if (listCopy)
    {
      *listCopy = string2;
    }

    if (imagesListCopy)
    {
      v31 = string3;
      *imagesListCopy = string3;
      objc_storeStrong(&v81->_binaryImagesDescription, string3);
    }

    goto LABEL_41;
  }

  v33 = headerCopy;
  v32 = listCopy;
  v29 = v90;
  if (v85)
  {
    if (v85 == 2)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the provided call tree file %s contains non-UTF8 data\n", v74];
      v35 = MEMORY[0x1E696ABC0];
      v102 = *MEMORY[0x1E696A578];
      v103 = v34;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      v37 = [v35 errorWithDomain:@"VMUCallTreeRoot" code:1 userInfo:v36];
      v38 = errorCopy;
      if (errorCopy)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v38 = errorCopy;
      if (v27[v99 - 1] == 10)
      {
        v27[v99 - 1] = 0;
      }

      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parse error with line: '%s'\n", v27];
      v68 = MEMORY[0x1E696ABC0];
      v100 = *MEMORY[0x1E696A578];
      v101 = v34;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      v37 = [v68 errorWithDomain:@"VMUCallTreeRoot" code:1 userInfo:v36];
      if (errorCopy)
      {
LABEL_32:
        *v38 = v37;
      }
    }

    v33 = headerCopy;
    v32 = listCopy;
    v29 = v90;
  }

  if (v33)
  {
    *v33 = 0;
  }

  fileCopy = v78;
  v18 = v79;
  if (v32)
  {
    *v32 = 0;
  }

  if (imagesListCopy)
  {
    *imagesListCopy = 0;
  }

  v28 = 0;
LABEL_41:
  fclose(0);
  v14 = v28;

  v17 = v14;
LABEL_42:

LABEL_43:
  v39 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)chargeSystemLibrariesToCallersAndKeepBoundaries:(BOOL)boundaries
{
  boundariesCopy = boundaries;
  v27 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (selfCopy->_binaryImagesDescription)
  {
    v21 = boundariesCopy;
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    binaryImages = selfCopy->_binaryImages;
    if (!binaryImages)
    {
      v7 = [VMUProcessDescription parseBinaryImagesDescription:selfCopy->_binaryImagesDescription];
      v8 = selfCopy->_binaryImages;
      selfCopy->_binaryImages = v7;

      binaryImages = selfCopy->_binaryImages;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = binaryImages;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 objectForKey:@"ExecutablePath"];
          if (isSystemPath([v15 UTF8String]))
          {
            v16 = [v14 objectForKey:@"DisplayName"];
            if ([v16 length])
            {
              [v5 addObject:v16];
            }
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    if (v21)
    {
      v17 = @"KEEP-BOUNDARIES PLACEHOLDER";
    }

    else
    {
      v17 = 0;
    }

    v18 = [(VMUCallTreeNode *)selfCopy chargeLibrariesInSet:v5 toCaller:0 parentLibrary:v17];

    selfCopy = v18;
  }

  v19 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

@end