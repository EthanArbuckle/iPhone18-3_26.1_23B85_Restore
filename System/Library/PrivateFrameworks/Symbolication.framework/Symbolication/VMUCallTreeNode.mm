@interface VMUCallTreeNode
+ (id)makeFakeRootForNode:(id)node;
+ (id)rootForSamples:(id)samples symbolicator:(_CSTypeRef)symbolicator sampler:(id)sampler options:(unint64_t)options;
- (BOOL)callTreeHasBranches;
- (VMUCallTreeNode)initWithName:(id)name address:(unint64_t)address count:(unsigned int)count numBytes:(unint64_t)bytes;
- (id)allChildren;
- (id)browserName;
- (id)chargeLibrariesInSet:(id)set toCaller:(id)caller parentLibrary:(id)library;
- (id)chargeLibrariesToCallers:(id)callers keepBoundaries:(BOOL)boundaries;
- (id)childAtIndex:(unsigned int)index;
- (id)description;
- (id)filterOutSymbols:(id)symbols;
- (id)filterOutSymbols:(id)symbols required:(id)required;
- (id)findOrAddChildWithName:(id)name address:(unint64_t)address nodeSearchType:(int)type isLeafNode:(BOOL)node;
- (id)invertedNode;
- (id)largestTopOfStackPath;
- (id)nameWithStringsForSymbol:(id)symbol library:(id)library loadAddress:(id)address offset:(id)offset address:(id)a7 suffix:(id)suffix;
- (id)nameWithoutOffset;
- (id)pruneMallocSize:(unint64_t)size;
- (id)pseudoNodeTopOfStackChild;
- (id)sortedChildrenWithPseudoNode;
- (id)sortedChildrenWithPseudoNode:(id)node withCompare:(SEL)compare;
- (id)stringFromCallTreeIndentIfNoBranches:(BOOL)branches showPseudoNodes:(BOOL)nodes;
- (id)stringFromCallTreeWithOptions:(unint64_t)options;
- (int64_t)compare:(id)compare;
- (int64_t)comparePuttingMainThreadFirst:(id)first;
- (int64_t)comparePuttingRetainCycleNodesAtTop:(id)top;
- (int64_t)compareSizeAndCount:(id)count;
- (unsigned)sumOfChildCounts;
- (void)_printCallTreeToFile:(__sFILE *)file cumulativeOutput:(id)output indentString:(id)string branchPointCount:(unsigned int)count topFunctions:(id)functions options:(unint64_t)options;
- (void)addChild:(id)child;
- (void)countFunctionOccurrencesInTree:(id)tree;
- (void)dealloc;
- (void)getBrowserName:(id)name;
- (void)parseNameIntoSymbol:(id *)symbol library:(id *)library loadAddress:(unint64_t *)address offset:(unint64_t *)offset address:(unint64_t *)a7 suffix:(id *)suffix;
- (void)printCallTreeToFile:(__sFILE *)file cumulativeOutput:(id)output options:(unint64_t)options;
- (void)setChildren:(id)children;
@end

@implementation VMUCallTreeNode

+ (id)rootForSamples:(id)samples symbolicator:(_CSTypeRef)symbolicator sampler:(id)sampler options:(unint64_t)options
{
  opaque_2 = symbolicator._opaque_2;
  opaque_1 = symbolicator._opaque_1;
  v62 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  samplerCopy = sampler;
  options = [[VMUCallTreeRoot alloc] initWithSymbolicator:opaque_1 sampler:opaque_2 options:samplerCopy, options];
  Task = CSSymbolicatorGetTask();
  if (Task)
  {
    v14 = Task;
    if (CSTaskIsTranslated())
    {
      v15 = [[VMUVMRegionIdentifier alloc] initWithTask:v14 options:1281];
      regions = [(VMUVMRegionIdentifier *)v15 regions];
      [(VMUCallTreeRoot *)options setVMRegions:regions];
      v54 = 0;
      v55 = &v54;
      v56 = 0x3010000000;
      v58 = 0;
      v59 = 0;
      v57 = &unk_1C6872315;
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:VMUOAHRuntimeLocation()];
      v48 = MEMORY[0x1E69E9820];
      v49 = 3221225472;
      v50 = __63__VMUCallTreeNode_rootForSamples_symbolicator_sampler_options___block_invoke;
      v51 = &unk_1E8278788;
      v18 = v17;
      v52 = v18;
      v53 = &v54;
      CSSymbolicatorForeachSymbolOwnerAtTime();
      v19 = v55[4];
      v20 = v55[5];
      if ((CSIsNull() & 1) == 0)
      {
        v39 = v15;
        v21 = v55[4];
        v22 = v55[5];
        BaseAddress = CSSymbolOwnerGetBaseAddress();
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v38 = regions;
        v24 = regions;
        v25 = [v24 countByEnumeratingWithState:&v44 objects:v61 count:16];
        if (v25)
        {
          v26 = *v45;
          while (2)
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v45 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v44 + 1) + 8 * i);
              v29 = BaseAddress - [v28 range];
              if (v29 < v30)
              {
                [(VMUCallTreeRoot *)options setCambriaRuntimeVMObjectID:v28[14]];
                goto LABEL_14;
              }
            }

            v25 = [v24 countByEnumeratingWithState:&v44 objects:v61 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:

        regions = v38;
        v15 = v39;
      }

      _Block_object_dispose(&v54, 8);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = samplesCopy;
  v32 = [v31 countByEnumeratingWithState:&v40 objects:v60 count:16];
  if (v32)
  {
    v33 = *v41;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = [(VMUCallTreeRoot *)options addBacktrace:*(*(&v40 + 1) + 8 * j), v38];
      }

      v32 = [v31 countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v32);
  }

  v36 = *MEMORY[0x1E69E9840];

  return options;
}

void __63__VMUCallTreeNode_rootForSamples_symbolicator_sampler_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolOwnerGetPath()];
  if (([v7 hasPrefix:*(a1 + 32)] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"/usr/local/libexec/rosetta/runtime"))
  {
    v6 = *(*(a1 + 40) + 8);
    *(v6 + 32) = a2;
    *(v6 + 40) = a3;
  }
}

- (VMUCallTreeNode)initWithName:(id)name address:(unint64_t)address count:(unsigned int)count numBytes:(unint64_t)bytes
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = VMUCallTreeNode;
  v12 = [(VMUCallTreeNode *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    v13->_count = count;
    v13->_address = address;
    v13->_numBytes = bytes;
  }

  return v13;
}

- (id)childAtIndex:(unsigned int)index
{
  p_children = &self->_children;
  if (self->_numChildren != 1)
  {
    p_children = (*p_children + 8 * index);
  }

  return *p_children;
}

- (id)allChildren
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(VMUCallTreeNode *)self numChildren])
  {
    v4 = 0;
    do
    {
      v5 = [(VMUCallTreeNode *)self childAtIndex:v4];
      [array addObject:v5];

      v4 = (v4 + 1);
    }

    while (v4 < [(VMUCallTreeNode *)self numChildren]);
  }

  return array;
}

- (void)setChildren:(id)children
{
  v26 = *MEMORY[0x1E69E9840];
  childrenCopy = children;
  numChildren = self->_numChildren;
  p_children = &self->_children;
  if (numChildren >= 2)
  {
    v7 = *p_children;
  }

  else
  {
    v7 = &self->_children;
    if (!numChildren)
    {
      goto LABEL_9;
    }
  }

  v8 = numChildren - 1;
  do
  {
    v9 = v7[v8];
    v7[v8] = 0;

    --v8;
  }

  while (v8 != -1);
  if (self->_numChildren >= 2)
  {
    free(v7);
  }

LABEL_9:
  v10 = [childrenCopy count];
  self->_numChildren = v10;
  if (v10 >= 2)
  {
    v11 = malloc_type_calloc(v10, 8uLL, 0x80040B8603338uLL);
    *p_children = v11;
    p_children = v11;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = childrenCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v22;
    do
    {
      v17 = 0;
      v18 = v15;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v21 + 1) + 8 * v17);
        v15 = v18 + 1;
        objc_storeStrong(&p_children[v18], v19);
        v19[1] = self;
        ++v17;
        ++v18;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addChild:(id)child
{
  childCopy = child;
  if (childCopy)
  {
    numChildren = self->_numChildren;
    v16 = childCopy;
    if (numChildren == 1)
    {
      children = self->_children;
      v10 = malloc_type_calloc(2uLL, 8uLL, 0x80040B8603338uLL);
      self->_children = v10;
      v11 = *v10;
      *v10 = children;
      v12 = v10 + 1;
      v8 = children;

      objc_storeStrong(v12, child);
    }

    else if (numChildren)
    {
      v13 = malloc_type_realloc(self->_children, 8 * (numChildren + 1), 0x80040B8603338uLL);
      self->_children = v13;
      *(v13 + self->_numChildren) = 0;
      v14 = self->_numChildren;
      v15 = v16;
      v8 = *(v13 + v14);
      *(v13 + v14) = v15;
    }

    else
    {
      v7 = childCopy;
      v8 = self->_children;
      self->_children = v7;
    }

    ++self->_numChildren;
    childCopy = v16;
    v16[1] = self;
  }
}

- (unsigned)sumOfChildCounts
{
  if (![(VMUCallTreeNode *)self numChildren])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [(VMUCallTreeNode *)self childAtIndex:v3];
    v4 += [v5 count];

    v3 = (v3 + 1);
  }

  while (v3 < [(VMUCallTreeNode *)self numChildren]);
  return v4;
}

- (void)dealloc
{
  [(VMUCallTreeNode *)self setChildren:0];
  v3.receiver = self;
  v3.super_class = VMUCallTreeNode;
  [(VMUCallTreeNode *)&v3 dealloc];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = VMUCallTreeNode;
  v3 = [(VMUCallTreeNode *)&v7 description];
  browserName = [(VMUCallTreeNode *)self browserName];
  v5 = [v3 stringByAppendingFormat:@"  %@", browserName];

  return v5;
}

+ (id)makeFakeRootForNode:(id)node
{
  nodeCopy = node;
  v4 = +[VMUCallTreeNode nodeWithName:address:count:numBytes:](VMUCallTreeNode, "nodeWithName:address:count:numBytes:", 0, 0, [nodeCopy count], objc_msgSend(nodeCopy, "numBytes"));
  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:nodeCopy];

  [v4 setChildren:v5];

  return v4;
}

- (void)getBrowserName:(id)name
{
  nameCopy = name;
  [nameCopy setString:&stru_1F461F9C8];
  numBytes = self->_numBytes;
  if (numBytes)
  {
    v5 = numBytes;
    if (numBytes < 0x100000)
    {
      if (numBytes < 0x400)
      {
        [nameCopy appendFormat:@"%u (%qu bytes) %@", self->_count, self->_numBytes, self->_name];
      }

      else
      {
        v7 = v5 * 0.00097656;
        if ((v5 * 0.00097656) >= 10.0)
        {
          count = self->_count;
          name = self->_name;
          if (v7 >= 100.0)
          {
            [nameCopy appendFormat:@"%u (%.0fK) %@", count, v7, self->_name];
          }

          else
          {
            [nameCopy appendFormat:@"%u (%.1fK) %@", count, v7, self->_name];
          }
        }

        else
        {
          [nameCopy appendFormat:@"%u (%.2fK) %@", self->_count, v7, self->_name];
        }
      }
    }

    else
    {
      v6 = v5 * 0.00000095367;
      if ((v5 * 0.00000095367) >= 10.0)
      {
        v8 = self->_count;
        v9 = self->_name;
        if (v6 >= 100.0)
        {
          [nameCopy appendFormat:@"%u (%.0fM) %@", v8, v6, self->_name];
        }

        else
        {
          [nameCopy appendFormat:@"%u (%.1fM) %@", v8, v6, self->_name];
        }
      }

      else
      {
        [nameCopy appendFormat:@"%u (%.2fM) %@", self->_count, v6, self->_name];
      }
    }
  }

  else
  {
    [nameCopy appendFormat:@"%d %@", self->_count, self->_name, v12];
  }
}

- (id)browserName
{
  v3 = objc_opt_new();
  [(VMUCallTreeNode *)self getBrowserName:v3];

  return v3;
}

- (id)nameWithoutOffset
{
  v3 = [(NSString *)self->_name rangeOfString:@" + "];
  name = self->_name;
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = name;
  }

  else
  {
    v5 = [(NSString *)name substringToIndex:?];
  }

  return v5;
}

- (id)nameWithStringsForSymbol:(id)symbol library:(id)library loadAddress:(id)address offset:(id)offset address:(id)a7 suffix:(id)suffix
{
  libraryCopy = library;
  addressCopy = address;
  offsetCopy = offset;
  v16 = a7;
  suffixCopy = suffix;
  v18 = [MEMORY[0x1E696AD60] stringWithString:symbol];
  v19 = v18;
  if (libraryCopy)
  {
    [v18 appendFormat:@"%@%@%@", @"  (in ", libraryCopy, @")"];
  }

  if (addressCopy)
  {
    [v19 appendFormat:@"%@%@", @"  load address ", addressCopy];
  }

  if (offsetCopy)
  {
    [v19 appendFormat:@"%@%@", @" + ", offsetCopy];
  }

  if (v16)
  {
    [v19 appendFormat:@"%@%@%@", @"  [", v16, @"]"];
  }

  if (suffixCopy)
  {
    [v19 appendString:suffixCopy];
  }

  return v19;
}

- (void)parseNameIntoSymbol:(id *)symbol library:(id *)library loadAddress:(unint64_t *)address offset:(unint64_t *)offset address:(unint64_t *)a7 suffix:(id *)suffix
{
  if (symbol)
  {
    *symbol = 0;
  }

  if (library)
  {
    *library = 0;
  }

  if (address)
  {
    *address = 0;
  }

  if (offset)
  {
    *offset = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (suffix)
  {
    *suffix = 0;
  }

  v16 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:self->_name];
  [v16 setCharactersToBeSkipped:0];
  objc_msgSend(v16, "scanUpToString:intoString:", @"  (in "), symbol;
  objc_msgSend(v16, "scanString:intoString:", @"  (in "), 0;
  [v16 scanUpToString:@"" intoString:?], library);
  [v16 scanString:@"" intoString:?], 0);
  if ([v16 scanString:@"  load address " intoString:0])
  {
    [v16 scanHexLongLong:address];
  }

  if ([v16 scanString:@" + " intoString:0] && (objc_msgSend(v16, "scanHexLongLong:", offset) & 1) == 0)
  {
    [v16 scanLongLong:offset];
  }

  if ([v16 scanString:@"  [" intoString:0])
  {
    [v16 scanHexLongLong:a7];
    [v16 scanString:@"]" intoString:0];
  }

  v14 = v16;
  if (suffix)
  {
    string = [v16 string];
    *suffix = [string substringFromIndex:{objc_msgSend(v16, "scanLocation")}];

    v14 = v16;
  }
}

- (id)findOrAddChildWithName:(id)name address:(unint64_t)address nodeSearchType:(int)type isLeafNode:(BOOL)node
{
  nodeCopy = node;
  nameCopy = name;
  v11 = nameCopy;
  numChildren = self->_numChildren;
  p_children = &self->_children;
  if (numChildren >= 2)
  {
    p_children = *p_children;
  }

  if (type == 2)
  {
    if (numChildren)
    {
      v14 = 0;
      while (![*(p_children[v14] + 2) isEqualToString:v11])
      {
        if (++v14 >= self->_numChildren)
        {
          goto LABEL_13;
        }
      }

      v18 = p_children[v14];
      goto LABEL_18;
    }
  }

  else if (type == 1 && numChildren)
  {
    while (*(*p_children + 2) != nameCopy)
    {
      ++p_children;
      if (!--numChildren)
      {
        goto LABEL_13;
      }
    }

    v18 = *p_children;
LABEL_18:
    v17 = v18;
    goto LABEL_19;
  }

LABEL_13:
  v15 = off_1E8277178;
  if (!nodeCopy)
  {
    v15 = off_1E8277180;
  }

  v16 = *v15;
  v17 = [objc_opt_class() nodeWithName:v11 address:address count:0 numBytes:0];
  [(VMUCallTreeNode *)self addChild:v17];
LABEL_19:

  return v17;
}

- (int64_t)compareSizeAndCount:(id)count
{
  v3 = *(count + 4) - self->_numBytes;
  if (!v3)
  {
    v3 = *(count + 10) - self->_count;
  }

  v4 = v3 < 0;
  v5 = v3 != 0;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = [(VMUCallTreeNode *)self compareSizeAndCount:compareCopy];
  if (v5 == NSOrderedSame)
  {
    if (self->_address && [(NSString *)self->_name containsString:@"  (in ")]
    {
      v6 = objc_autoreleasePoolPush();
      v21 = 0;
      v22 = 0;
      v20 = 0;
      [(VMUCallTreeNode *)self parseNameIntoSymbol:&v22 library:&v21 loadAddress:0 offset:0 address:0 suffix:&v20];
      v7 = v22;
      v8 = v21;
      v9 = v20;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      [compareCopy parseNameIntoSymbol:&v19 library:&v18 loadAddress:0 offset:0 address:0 suffix:&v17];
      v10 = v19;
      v11 = v18;
      v12 = v17;
      if (v7 && v10 && (v13 = [v7 compare:v10]) != 0 || v8 && v11 && (v13 = objc_msgSend(v8, "compare:", v11)) != 0 || v9 && v12 && (v13 = objc_msgSend(v9, "compare:", v12)) != 0)
      {
        v5 = v13;
      }

      else
      {
        if (-[VMUCallTreeNode numChildren](self, "numChildren") && ![compareCopy numChildren])
        {
          goto LABEL_19;
        }

        if (!-[VMUCallTreeNode numChildren](self, "numChildren") && [compareCopy numChildren])
        {
          v5 = NSOrderedDescending;
          goto LABEL_23;
        }

        address = self->_address;
        v15 = compareCopy[3];
        if (address >= v15)
        {
          v5 = (address > v15);
        }

        else
        {
LABEL_19:
          v5 = NSOrderedAscending;
        }
      }

LABEL_23:

      objc_autoreleasePoolPop(v6);
      goto LABEL_24;
    }

    v5 = [(NSString *)self->_name compare:compareCopy[2]];
  }

LABEL_24:

  return v5;
}

- (int64_t)comparePuttingRetainCycleNodesAtTop:(id)top
{
  topCopy = top;
  parent = [(VMUCallTreeNode *)self parent];
  v5Parent = [parent parent];
  if (v5Parent)
  {
  }

  else
  {
    parent2 = [topCopy parent];
    v7Parent = [parent2 parent];

    if (!v7Parent)
    {
      goto LABEL_12;
    }
  }

  v9 = topCopy[4];
  if (!self->_numBytes)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    v10 = [(NSString *)self->_name containsString:kVMURootRetainCycle[0]];
    v11 = [topCopy[2] containsString:kVMURootRetainCycle[0]];
    if (!v10 || v11)
    {
      if (!v10 && (v11 & 1) != 0)
      {
        goto LABEL_9;
      }

LABEL_12:
      v12 = [(VMUCallTreeNode *)self compare:topCopy];
      goto LABEL_13;
    }

LABEL_11:
    v12 = -1;
    goto LABEL_13;
  }

LABEL_9:
  v12 = 1;
LABEL_13:

  return v12;
}

- (int64_t)comparePuttingMainThreadFirst:(id)first
{
  firstCopy = first;
  name = [(VMUCallTreeNode *)self name];
  name2 = [firstCopy name];
  if ([name hasPrefix:kVMUThreadNamePrefix] && ((objc_msgSend(name, "rangeOfString:", kVMUMainThreadName[0]), v7) || (objc_msgSend(name, "rangeOfString:", kVMUMainThreadDispatchQueueName), v8)))
  {
    v9 = -1;
  }

  else if ([name2 hasPrefix:kVMUThreadNamePrefix] && ((objc_msgSend(name2, "rangeOfString:", kVMUMainThreadName[0]), v10) || (objc_msgSend(name2, "rangeOfString:", kVMUMainThreadDispatchQueueName), v11)))
  {
    v9 = 1;
  }

  else
  {
    v9 = [(VMUCallTreeNode *)self compareSizeAndCount:firstCopy];
    if (!v9)
    {
      v12 = [kVMUThreadNamePrefix length];
      if ([(NSString *)self->_name length]<= v12)
      {
        longLongValue = 0;
      }

      else
      {
        v13 = [(NSString *)self->_name substringFromIndex:v12];
        longLongValue = [v13 longLongValue];
      }

      if ([firstCopy[2] length] <= v12)
      {
        longLongValue2 = 0;
      }

      else
      {
        v15 = [firstCopy[2] substringFromIndex:v12];
        longLongValue2 = [v15 longLongValue];
      }

      if (longLongValue < longLongValue2)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }
    }
  }

  return v9;
}

- (id)pseudoNodeTopOfStackChild
{
  numChildren = [(VMUCallTreeNode *)self numChildren];
  if (numChildren)
  {
    v4 = numChildren;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [(VMUCallTreeNode *)self childAtIndex:v7];
      v5 += *(v8 + 40);
      v6 += *(v8 + 32);

      v7 = (v7 + 1);
    }

    while (v4 != v7);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  count = self->_count;
  v10 = count - v5;
  if (count == v5)
  {
    v11 = 0;
  }

  else
  {
    v12 = self->_numBytes - v6;
    pseudoName = [(VMUCallTreeNode *)self pseudoName];
    v11 = [(VMUCallTreeNode *)VMUCallTreePseudoNode nodeWithName:pseudoName address:self->_address count:v10 numBytes:v12];
  }

  return v11;
}

- (id)sortedChildrenWithPseudoNode:(id)node withCompare:(SEL)compare
{
  v16[1] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  numChildren = self->_numChildren;
  if (!nodeCopy)
  {
    if (numChildren == 1)
    {
      v16[0] = self->_children;
      array = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    else
    {
      if (numChildren)
      {
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:self->_children count:?];
        v11 = [v13 sortedArrayUsingSelector:compare];

        goto LABEL_14;
      }

      array = [MEMORY[0x1E695DEC8] array];
    }

LABEL_12:
    v11 = array;
    goto LABEL_14;
  }

  if (!numChildren)
  {
    array = [MEMORY[0x1E695DEC8] arrayWithObject:nodeCopy];
    goto LABEL_12;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithObject:nodeCopy];
  if (self->_numChildren)
  {
    v9 = 0;
    do
    {
      v10 = [(VMUCallTreeNode *)self childAtIndex:v9];
      [v8 addObject:v10];

      v9 = (v9 + 1);
    }

    while (v9 < self->_numChildren);
  }

  v11 = [v8 sortedArrayUsingSelector:compare];

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)sortedChildrenWithPseudoNode
{
  numChildren = self->_numChildren;
  if (numChildren != 1)
  {
    if (!numChildren)
    {
      array = [MEMORY[0x1E695DEC8] array];
      goto LABEL_10;
    }

    v6 = 0;
    goto LABEL_8;
  }

  v5 = self->_children;
  v6 = v5;
  if (!v5 || v5[10] != self->_count)
  {
LABEL_8:
    pseudoNodeTopOfStackChild = [(VMUCallTreeNode *)self pseudoNodeTopOfStackChild];
    array = [(VMUCallTreeNode *)self sortedChildrenWithPseudoNode:pseudoNodeTopOfStackChild withCompare:sel_compare_];

    goto LABEL_9;
  }

  array = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
LABEL_9:

LABEL_10:

  return array;
}

- (id)largestTopOfStackPath
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:self];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  sortedChildrenWithPseudoNode = [(VMUCallTreeNode *)self sortedChildrenWithPseudoNode];
  v5 = [sortedChildrenWithPseudoNode countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(sortedChildrenWithPseudoNode);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        largestTopOfStackPath = [v10 largestTopOfStackPath];
        if ([largestTopOfStackPath count])
        {
          lastObject = [largestTopOfStackPath lastObject];
        }

        else
        {
          lastObject = v10;
        }

        v13 = lastObject;
        v14 = [lastObject count];
        if (v14 > v7)
        {
          v15 = v14;
          v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(largestTopOfStackPath, "count") + 1}];

          [v16 addObject:selfCopy];
          [v16 addObjectsFromArray:largestTopOfStackPath];
          v7 = v15;
          v3 = v16;
        }
      }

      v6 = [sortedChildrenWithPseudoNode countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_printCallTreeToFile:(__sFILE *)file cumulativeOutput:(id)output indentString:(id)string branchPointCount:(unsigned int)count topFunctions:(id)functions options:(unint64_t)options
{
  outputCopy = output;
  stringCopy = string;
  functionsCopy = functions;
  v15 = objc_autoreleasePoolPush();
  table = functionsCopy;
  if (functionsCopy || (options & 1) != 0)
  {
    pseudoNodeTopOfStackChild = [(VMUCallTreeNode *)self pseudoNodeTopOfStackChild];
    v16 = pseudoNodeTopOfStackChild;
    if (pseudoNodeTopOfStackChild)
    {
      if (functionsCopy)
      {
        if ([pseudoNodeTopOfStackChild symbolNameIsUnknown])
        {
          nameWithoutOffset = v16[2];
        }

        else
        {
          nameWithoutOffset = [v16 nameWithoutOffset];
        }

        v19 = nameWithoutOffset;
        v20 = NSMapGet(table, nameWithoutOffset);
        if (!v20)
        {
          v20 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
          *v20 = 0;
          v20[1] = 0;
          NSMapInsertKnownAbsent(table, v19, v20);
        }

        v21 = v16[4] + v20[1];
        *v20 += *(v16 + 10);
        v20[1] = v21;
      }

      if (![(VMUCallTreeNode *)self numChildren])
      {
        goto LABEL_74;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v22 = sel_compare_;
  if ((options & 0x80) == 0)
  {
    if ((options & 0x40) != 0)
    {
      v22 = sel_comparePuttingRetainCycleNodesAtTop_;
    }

    else if (!self->_parent || !self->_numChildren && [(NSString *)self->_name hasPrefix:kVMUThreadNamePrefix])
    {
      v22 = sel_comparePuttingMainThreadFirst_;
    }
  }

  v43 = v15;
  if ((options & 1) == 0)
  {

    v16 = 0;
  }

  v48 = [(VMUCallTreeNode *)self sortedChildrenWithPseudoNode:v16 withCompare:v22];
  v23 = [v48 count];
  v24 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:1024];
  v53 = v23;
  v45 = v23 - 1;
  if (v23 <= 1)
  {
    countCopy = count;
  }

  else
  {
    countCopy = count + 1;
  }

  v47 = countCopy;
  parent = [(VMUCallTreeNode *)self parent];
  if (!parent && [(VMUCallTreeNode *)self numBytes])
  {
    if ([(VMUCallTreeNode *)self numChildren]< 2)
    {
      goto LABEL_27;
    }

    if (outputCopy)
    {
      v41 = outputCopy;
    }

    else
    {
      v41 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:256];
    }

    parent = v41;
    if (stringCopy)
    {
      [v41 appendString:stringCopy];
    }

    [(VMUCallTreeNode *)self getBrowserName:v24];
    [parent appendFormat:@"%@%@\n", v24, kVMURootNodeNameForMallocCallTrees[0]];
    [stringCopy appendString:@"  "];
    if (!outputCopy)
    {
      fputs([parent UTF8String], file);
    }
  }

LABEL_27:
  v42 = v16;
  v27 = "   ";
  if ((options & 8) == 0)
  {
    v27 = "  ";
  }

  v49 = v27;
  if (v53)
  {
    v28 = 0;
    v51 = 0;
    v44 = (count + 1) & 3;
    v29 = 2;
    if ((options & 8) != 0)
    {
      v29 = 3;
    }

    v46 = v29;
    do
    {
      v30 = [v48 objectAtIndex:v28];
      v31 = objc_autoreleasePoolPush();
      if (outputCopy)
      {
        v32 = outputCopy;
      }

      else
      {
        v32 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:256];
      }

      v33 = v32;
      parent2 = [(VMUCallTreeNode *)self parent];
      if (parent2 || [(VMUCallTreeNode *)self numChildren]< 2)
      {
      }

      else if ([v30 numChildren] != 0 || v51)
      {
        if ((options & 2) != 0)
        {
          [v33 appendString:@"\n"];
        }

        else if ((options & 4) != 0)
        {
          [v33 appendFormat:@"%@----\n", stringCopy];
        }
      }

      v51 = [v30 numChildren] != 0;
      if (stringCopy)
      {
        [v33 appendString:stringCopy];
      }

      selfCopy = self;
      parent3 = [(VMUCallTreeNode *)self parent];
      v37 = parent3;
      if (v28 == 10 && parent3 && v53 >= 0xC && [v30 numChildren] <= 1)
      {
        isMallocBlockContentNode = [v30 isMallocBlockContentNode];

        if (isMallocBlockContentNode)
        {
          [v33 appendFormat:@"%lu ADDITIONAL CHILDREN\n", v53 - 10];

          objc_autoreleasePoolPop(v31);
          break;
        }

        if ((options & 0x40) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {

        if ((options & 0x40) == 0)
        {
          goto LABEL_54;
        }
      }

      if (![v30 count])
      {
        name = [v30 name];
        [v24 setString:name];

        goto LABEL_55;
      }

LABEL_54:
      [v30 getBrowserName:v24];
LABEL_55:
      self = selfCopy;
      [v33 appendFormat:@"%@\n", v24];
      if (stringCopy)
      {
        v39 = v49;
        if ((options & 8) == 0)
        {
          v39 = v49;
          if (v28 < v45)
          {
            v39 = off_1E82787A8[v44];
          }
        }

        [stringCopy appendFormat:@"%s", v39];
      }

      if (!outputCopy)
      {
        fputs([v33 UTF8String], file);
      }

      objc_autoreleasePoolPop(v31);
      [v30 _printCallTreeToFile:file cumulativeOutput:outputCopy indentString:stringCopy branchPointCount:v47 topFunctions:table options:options];
      if (stringCopy)
      {
        [stringCopy deleteCharactersInRange:{objc_msgSend(stringCopy, "length") - v46}];
      }

      ++v28;
    }

    while (v53 != v28);
  }

  v16 = v42;
  v15 = v43;
LABEL_74:

  objc_autoreleasePoolPop(v15);
}

- (void)countFunctionOccurrencesInTree:(id)tree
{
  treeCopy = tree;
  [treeCopy addObject:self->_name];
  numChildren = [(VMUCallTreeNode *)self numChildren];
  if (numChildren)
  {
    v5 = numChildren;
    v6 = 0;
    do
    {
      v7 = [(VMUCallTreeNode *)self childAtIndex:v6];
      [v7 countFunctionOccurrencesInTree:treeCopy];

      v6 = (v6 + 1);
    }

    while (v5 != v6);
  }
}

- (BOOL)callTreeHasBranches
{
  selfCopy = self;
  if (!selfCopy)
  {
    return 0;
  }

  p_isa = &selfCopy->super.isa;
  do
  {
    numChildren = [p_isa numChildren];
    if (numChildren != 1)
    {
      break;
    }

    v5 = p_isa[6];

    p_isa = v5;
  }

  while (v5);
  v6 = numChildren > 1;

  return v6;
}

- (id)stringFromCallTreeWithOptions:(unint64_t)options
{
  v5 = objc_opt_new();
  if ((options & 0x10) != 0 || [(VMUCallTreeNode *)self callTreeHasBranches])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
    v7 = v6;
    if ((options & 0x20) == 0)
    {
      [v6 setString:kVMUCallTreeInitialIndentation];
    }
  }

  else
  {
    v7 = 0;
  }

  [(VMUCallTreeNode *)self _printCallTreeToFile:0 cumulativeOutput:v5 indentString:v7 branchPointCount:0 topFunctions:0 options:options];

  return v5;
}

- (id)stringFromCallTreeIndentIfNoBranches:(BOOL)branches showPseudoNodes:(BOOL)nodes
{
  v4 = 16;
  if (!branches)
  {
    v4 = 0;
  }

  return [(VMUCallTreeNode *)self stringFromCallTreeWithOptions:v4 | nodes];
}

- (void)printCallTreeToFile:(__sFILE *)file cumulativeOutput:(id)output options:(unint64_t)options
{
  v8 = MEMORY[0x1E696AD60];
  outputCopy = output;
  v10 = [[v8 alloc] initWithCapacity:128];
  [v10 setString:kVMUCallTreeInitialIndentation];
  [(VMUCallTreeNode *)self _printCallTreeToFile:file cumulativeOutput:outputCopy indentString:v10 branchPointCount:0 topFunctions:0 options:options];
}

- (id)invertedNode
{
  v3 = objc_alloc_init(VMUCallTreeNode);
  name = v3->_name;
  v3->_name = &stru_1F461F9C8;

  v5 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  numChildren = [(VMUCallTreeNode *)self numChildren];
  if (numChildren)
  {
    v8 = numChildren;
    v9 = 0;
    do
    {
      v10 = [(VMUCallTreeNode *)self childAtIndex:v9];
      invertRecursiveWithNewInvertedRoot(v10, v3, array);

      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }

  objc_autoreleasePoolPop(v5);

  return v3;
}

- (id)filterOutSymbols:(id)symbols required:(id)required
{
  symbolsCopy = symbols;
  requiredCopy = required;
  if (-[NSString length](self->_name, "length") && ([symbolsCopy containsObject:self->_name] & 1) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v25 = 0;
    [(VMUCallTreeNode *)self parseNameIntoSymbol:&v25 library:0 loadAddress:0 offset:0 address:0 suffix:0];
    v9 = v25;
    if ([v9 length] && (objc_msgSend(symbolsCopy, "containsObject:", v9) & 1) != 0)
    {
      selfCopy = 0;
    }

    else
    {
      if (requiredCopy && [requiredCopy containsObject:v9])
      {

        requiredCopy = 0;
      }

      numChildren = [(VMUCallTreeNode *)self numChildren];
      if (numChildren)
      {
        v11 = numChildren;
        v24 = v9;
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = [(VMUCallTreeNode *)self childAtIndex:v12, v24];
          v13 += v14[10];

          v12 = (v12 + 1);
        }

        while (v11 != v12);
        if (v13 == self->_count || (-[VMUCallTreeNode pseudoName](self, "pseudoName"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [symbolsCopy containsObject:v15], v15, v16))
        {
          v17 = 0;
        }

        else
        {
          v17 = self->_count - v13;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = [(VMUCallTreeNode *)self childAtIndex:v18];
          v22 = [v21 filterOutSymbols:symbolsCopy required:requiredCopy];
          if (v22)
          {
            if (!v19)
            {
              v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v19 addObject:v22];
            v17 = [v22 count] + v17;
            v20 += v22[4];
          }

          v18 = (v18 + 1);
        }

        while (v11 != v18);
        if (![(NSString *)self->_name length]|| v17)
        {
          selfCopy = [objc_opt_class() nodeWithName:self->_name address:self->_address count:v17 numBytes:v20];
          [(VMUCallTreeNode *)selfCopy setChildren:v19];
        }

        else
        {
          selfCopy = 0;
        }

        v9 = v24;
      }

      else
      {
        selfCopy = self;
      }
    }
  }

  return selfCopy;
}

- (id)filterOutSymbols:(id)symbols
{
  v4 = MEMORY[0x1E695DFD8];
  symbolsCopy = symbols;
  v6 = [[v4 alloc] initWithArray:symbolsCopy];

  v7 = [(VMUCallTreeNode *)self filterOutSymbols:v6 required:0];

  return v7;
}

- (id)chargeLibrariesInSet:(id)set toCaller:(id)caller parentLibrary:(id)library
{
  setCopy = set;
  callerCopy = caller;
  libraryCopy = library;
  v11 = objc_autoreleasePoolPush();
  v22 = 0;
  [(VMUCallTreeNode *)self parseNameIntoSymbol:0 library:&v22 loadAddress:0 offset:0 address:0 suffix:0];
  v12 = v22;
  if (![v12 length])
  {
    goto LABEL_9;
  }

  if (setCopy)
  {
    if ([setCopy containsObject:v12])
    {
      goto LABEL_4;
    }

LABEL_9:
    v14 = libraryCopy;
    if (callerCopy)
    {
LABEL_7:
      v15 = [callerCopy findOrAddChildWithName:self->_name address:self->_address nodeSearchType:1 isLeafNode:0];
      *(v15 + 40) += self->_count;
      *(v15 + 32) += self->_numBytes;

      callerCopy = v15;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!isSystemPath([v12 UTF8String]))
  {
    goto LABEL_9;
  }

LABEL_4:
  if (libraryCopy)
  {
    v13 = [v12 isEqualToString:libraryCopy];
    v14 = v12;

    if (v13)
    {
      goto LABEL_12;
    }

    if (callerCopy)
    {
      goto LABEL_7;
    }

LABEL_10:
    callerCopy = [objc_opt_class() nodeWithName:self->_name address:self->_address count:self->_count numBytes:self->_numBytes];
    goto LABEL_12;
  }

  v14 = 0;
LABEL_12:
  numChildren = [(VMUCallTreeNode *)self numChildren];
  if (numChildren)
  {
    v17 = numChildren;
    v18 = 0;
    do
    {
      v19 = [(VMUCallTreeNode *)self childAtIndex:v18];
      v20 = [v19 chargeLibrariesInSet:setCopy toCaller:callerCopy parentLibrary:v14];

      v18 = (v18 + 1);
    }

    while (v17 != v18);
  }

  objc_autoreleasePoolPop(v11);

  return callerCopy;
}

- (id)chargeLibrariesToCallers:(id)callers keepBoundaries:(BOOL)boundaries
{
  boundariesCopy = boundaries;
  v6 = MEMORY[0x1E695DFD8];
  callersCopy = callers;
  v8 = [[v6 alloc] initWithArray:callersCopy];

  if (boundariesCopy)
  {
    v9 = @"KEEP-BOUNDARIES PLACEHOLDER";
  }

  else
  {
    v9 = 0;
  }

  v10 = [(VMUCallTreeNode *)self chargeLibrariesInSet:v8 toCaller:0 parentLibrary:v9];

  return v10;
}

- (id)pruneMallocSize:(unint64_t)size
{
  if (self->_numBytes >= size)
  {
    numChildren = [(VMUCallTreeNode *)self numChildren];
    if (numChildren)
    {
      v7 = numChildren;
      selfCopy = [objc_opt_class() nodeWithName:self->_name address:self->_address count:self->_count numBytes:self->_numBytes];
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = 0;
      do
      {
        v10 = [(VMUCallTreeNode *)self childAtIndex:v9];
        v11 = v10;
        if (v10[4] >= size)
        {
          v12 = [v10 pruneMallocSize:size];
          [v8 addObject:v12];
        }

        v9 = (v9 + 1);
      }

      while (v7 != v9);
      [(VMUCallTreeNode *)selfCopy setChildren:v8];
    }

    else
    {
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end