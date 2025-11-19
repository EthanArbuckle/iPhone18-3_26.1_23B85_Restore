@interface VMUCallTreeNode
+ (id)makeFakeRootForNode:(id)a3;
+ (id)rootForSamples:(id)a3 symbolicator:(_CSTypeRef)a4 sampler:(id)a5 options:(unint64_t)a6;
- (BOOL)callTreeHasBranches;
- (VMUCallTreeNode)initWithName:(id)a3 address:(unint64_t)a4 count:(unsigned int)a5 numBytes:(unint64_t)a6;
- (id)allChildren;
- (id)browserName;
- (id)chargeLibrariesInSet:(id)a3 toCaller:(id)a4 parentLibrary:(id)a5;
- (id)chargeLibrariesToCallers:(id)a3 keepBoundaries:(BOOL)a4;
- (id)childAtIndex:(unsigned int)a3;
- (id)description;
- (id)filterOutSymbols:(id)a3;
- (id)filterOutSymbols:(id)a3 required:(id)a4;
- (id)findOrAddChildWithName:(id)a3 address:(unint64_t)a4 nodeSearchType:(int)a5 isLeafNode:(BOOL)a6;
- (id)invertedNode;
- (id)largestTopOfStackPath;
- (id)nameWithStringsForSymbol:(id)a3 library:(id)a4 loadAddress:(id)a5 offset:(id)a6 address:(id)a7 suffix:(id)a8;
- (id)nameWithoutOffset;
- (id)pruneMallocSize:(unint64_t)a3;
- (id)pseudoNodeTopOfStackChild;
- (id)sortedChildrenWithPseudoNode;
- (id)sortedChildrenWithPseudoNode:(id)a3 withCompare:(SEL)a4;
- (id)stringFromCallTreeIndentIfNoBranches:(BOOL)a3 showPseudoNodes:(BOOL)a4;
- (id)stringFromCallTreeWithOptions:(unint64_t)a3;
- (int64_t)compare:(id)a3;
- (int64_t)comparePuttingMainThreadFirst:(id)a3;
- (int64_t)comparePuttingRetainCycleNodesAtTop:(id)a3;
- (int64_t)compareSizeAndCount:(id)a3;
- (unsigned)sumOfChildCounts;
- (void)_printCallTreeToFile:(__sFILE *)a3 cumulativeOutput:(id)a4 indentString:(id)a5 branchPointCount:(unsigned int)a6 topFunctions:(id)a7 options:(unint64_t)a8;
- (void)addChild:(id)a3;
- (void)countFunctionOccurrencesInTree:(id)a3;
- (void)dealloc;
- (void)getBrowserName:(id)a3;
- (void)parseNameIntoSymbol:(id *)a3 library:(id *)a4 loadAddress:(unint64_t *)a5 offset:(unint64_t *)a6 address:(unint64_t *)a7 suffix:(id *)a8;
- (void)printCallTreeToFile:(__sFILE *)a3 cumulativeOutput:(id)a4 options:(unint64_t)a5;
- (void)setChildren:(id)a3;
@end

@implementation VMUCallTreeNode

+ (id)rootForSamples:(id)a3 symbolicator:(_CSTypeRef)a4 sampler:(id)a5 options:(unint64_t)a6
{
  opaque_2 = a4._opaque_2;
  opaque_1 = a4._opaque_1;
  v62 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [[VMUCallTreeRoot alloc] initWithSymbolicator:opaque_1 sampler:opaque_2 options:v11, a6];
  Task = CSSymbolicatorGetTask();
  if (Task)
  {
    v14 = Task;
    if (CSTaskIsTranslated())
    {
      v15 = [[VMUVMRegionIdentifier alloc] initWithTask:v14 options:1281];
      v16 = [(VMUVMRegionIdentifier *)v15 regions];
      [(VMUCallTreeRoot *)v12 setVMRegions:v16];
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
        v38 = v16;
        v24 = v16;
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
                [(VMUCallTreeRoot *)v12 setCambriaRuntimeVMObjectID:v28[14]];
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

        v16 = v38;
        v15 = v39;
      }

      _Block_object_dispose(&v54, 8);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = v10;
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

        v35 = [(VMUCallTreeRoot *)v12 addBacktrace:*(*(&v40 + 1) + 8 * j), v38];
      }

      v32 = [v31 countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v32);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v12;
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

- (VMUCallTreeNode)initWithName:(id)a3 address:(unint64_t)a4 count:(unsigned int)a5 numBytes:(unint64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = VMUCallTreeNode;
  v12 = [(VMUCallTreeNode *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    v13->_count = a5;
    v13->_address = a4;
    v13->_numBytes = a6;
  }

  return v13;
}

- (id)childAtIndex:(unsigned int)a3
{
  p_children = &self->_children;
  if (self->_numChildren != 1)
  {
    p_children = (*p_children + 8 * a3);
  }

  return *p_children;
}

- (id)allChildren
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(VMUCallTreeNode *)self numChildren])
  {
    v4 = 0;
    do
    {
      v5 = [(VMUCallTreeNode *)self childAtIndex:v4];
      [v3 addObject:v5];

      v4 = (v4 + 1);
    }

    while (v4 < [(VMUCallTreeNode *)self numChildren]);
  }

  return v3;
}

- (void)setChildren:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v10 = [v4 count];
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
  v12 = v4;
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

- (void)addChild:(id)a3
{
  v5 = a3;
  if (v5)
  {
    numChildren = self->_numChildren;
    v16 = v5;
    if (numChildren == 1)
    {
      children = self->_children;
      v10 = malloc_type_calloc(2uLL, 8uLL, 0x80040B8603338uLL);
      self->_children = v10;
      v11 = *v10;
      *v10 = children;
      v12 = v10 + 1;
      v8 = children;

      objc_storeStrong(v12, a3);
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
      v7 = v5;
      v8 = self->_children;
      self->_children = v7;
    }

    ++self->_numChildren;
    v5 = v16;
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
  v4 = [(VMUCallTreeNode *)self browserName];
  v5 = [v3 stringByAppendingFormat:@"  %@", v4];

  return v5;
}

+ (id)makeFakeRootForNode:(id)a3
{
  v3 = a3;
  v4 = +[VMUCallTreeNode nodeWithName:address:count:numBytes:](VMUCallTreeNode, "nodeWithName:address:count:numBytes:", 0, 0, [v3 count], objc_msgSend(v3, "numBytes"));
  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:v3];

  [v4 setChildren:v5];

  return v4;
}

- (void)getBrowserName:(id)a3
{
  v13 = a3;
  [v13 setString:&stru_1F461F9C8];
  numBytes = self->_numBytes;
  if (numBytes)
  {
    v5 = numBytes;
    if (numBytes < 0x100000)
    {
      if (numBytes < 0x400)
      {
        [v13 appendFormat:@"%u (%qu bytes) %@", self->_count, self->_numBytes, self->_name];
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
            [v13 appendFormat:@"%u (%.0fK) %@", count, v7, self->_name];
          }

          else
          {
            [v13 appendFormat:@"%u (%.1fK) %@", count, v7, self->_name];
          }
        }

        else
        {
          [v13 appendFormat:@"%u (%.2fK) %@", self->_count, v7, self->_name];
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
          [v13 appendFormat:@"%u (%.0fM) %@", v8, v6, self->_name];
        }

        else
        {
          [v13 appendFormat:@"%u (%.1fM) %@", v8, v6, self->_name];
        }
      }

      else
      {
        [v13 appendFormat:@"%u (%.2fM) %@", self->_count, v6, self->_name];
      }
    }
  }

  else
  {
    [v13 appendFormat:@"%d %@", self->_count, self->_name, v12];
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

- (id)nameWithStringsForSymbol:(id)a3 library:(id)a4 loadAddress:(id)a5 offset:(id)a6 address:(id)a7 suffix:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [MEMORY[0x1E696AD60] stringWithString:a3];
  v19 = v18;
  if (v13)
  {
    [v18 appendFormat:@"%@%@%@", @"  (in ", v13, @")"];
  }

  if (v14)
  {
    [v19 appendFormat:@"%@%@", @"  load address ", v14];
  }

  if (v15)
  {
    [v19 appendFormat:@"%@%@", @" + ", v15];
  }

  if (v16)
  {
    [v19 appendFormat:@"%@%@%@", @"  [", v16, @"]"];
  }

  if (v17)
  {
    [v19 appendString:v17];
  }

  return v19;
}

- (void)parseNameIntoSymbol:(id *)a3 library:(id *)a4 loadAddress:(unint64_t *)a5 offset:(unint64_t *)a6 address:(unint64_t *)a7 suffix:(id *)a8
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  v16 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:self->_name];
  [v16 setCharactersToBeSkipped:0];
  objc_msgSend(v16, "scanUpToString:intoString:", @"  (in "), a3;
  objc_msgSend(v16, "scanString:intoString:", @"  (in "), 0;
  [v16 scanUpToString:@"" intoString:?], a4);
  [v16 scanString:@"" intoString:?], 0);
  if ([v16 scanString:@"  load address " intoString:0])
  {
    [v16 scanHexLongLong:a5];
  }

  if ([v16 scanString:@" + " intoString:0] && (objc_msgSend(v16, "scanHexLongLong:", a6) & 1) == 0)
  {
    [v16 scanLongLong:a6];
  }

  if ([v16 scanString:@"  [" intoString:0])
  {
    [v16 scanHexLongLong:a7];
    [v16 scanString:@"]" intoString:0];
  }

  v14 = v16;
  if (a8)
  {
    v15 = [v16 string];
    *a8 = [v15 substringFromIndex:{objc_msgSend(v16, "scanLocation")}];

    v14 = v16;
  }
}

- (id)findOrAddChildWithName:(id)a3 address:(unint64_t)a4 nodeSearchType:(int)a5 isLeafNode:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = v10;
  numChildren = self->_numChildren;
  p_children = &self->_children;
  if (numChildren >= 2)
  {
    p_children = *p_children;
  }

  if (a5 == 2)
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

  else if (a5 == 1 && numChildren)
  {
    while (*(*p_children + 2) != v10)
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
  if (!v6)
  {
    v15 = off_1E8277180;
  }

  v16 = *v15;
  v17 = [objc_opt_class() nodeWithName:v11 address:a4 count:0 numBytes:0];
  [(VMUCallTreeNode *)self addChild:v17];
LABEL_19:

  return v17;
}

- (int64_t)compareSizeAndCount:(id)a3
{
  v3 = *(a3 + 4) - self->_numBytes;
  if (!v3)
  {
    v3 = *(a3 + 10) - self->_count;
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(VMUCallTreeNode *)self compareSizeAndCount:v4];
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
      [v4 parseNameIntoSymbol:&v19 library:&v18 loadAddress:0 offset:0 address:0 suffix:&v17];
      v10 = v19;
      v11 = v18;
      v12 = v17;
      if (v7 && v10 && (v13 = [v7 compare:v10]) != 0 || v8 && v11 && (v13 = objc_msgSend(v8, "compare:", v11)) != 0 || v9 && v12 && (v13 = objc_msgSend(v9, "compare:", v12)) != 0)
      {
        v5 = v13;
      }

      else
      {
        if (-[VMUCallTreeNode numChildren](self, "numChildren") && ![v4 numChildren])
        {
          goto LABEL_19;
        }

        if (!-[VMUCallTreeNode numChildren](self, "numChildren") && [v4 numChildren])
        {
          v5 = NSOrderedDescending;
          goto LABEL_23;
        }

        address = self->_address;
        v15 = v4[3];
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

    v5 = [(NSString *)self->_name compare:v4[2]];
  }

LABEL_24:

  return v5;
}

- (int64_t)comparePuttingRetainCycleNodesAtTop:(id)a3
{
  v4 = a3;
  v5 = [(VMUCallTreeNode *)self parent];
  v6 = [v5 parent];
  if (v6)
  {
  }

  else
  {
    v7 = [v4 parent];
    v8 = [v7 parent];

    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v9 = v4[4];
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
    v11 = [v4[2] containsString:kVMURootRetainCycle[0]];
    if (!v10 || v11)
    {
      if (!v10 && (v11 & 1) != 0)
      {
        goto LABEL_9;
      }

LABEL_12:
      v12 = [(VMUCallTreeNode *)self compare:v4];
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

- (int64_t)comparePuttingMainThreadFirst:(id)a3
{
  v4 = a3;
  v5 = [(VMUCallTreeNode *)self name];
  v6 = [v4 name];
  if ([v5 hasPrefix:kVMUThreadNamePrefix] && ((objc_msgSend(v5, "rangeOfString:", kVMUMainThreadName[0]), v7) || (objc_msgSend(v5, "rangeOfString:", kVMUMainThreadDispatchQueueName), v8)))
  {
    v9 = -1;
  }

  else if ([v6 hasPrefix:kVMUThreadNamePrefix] && ((objc_msgSend(v6, "rangeOfString:", kVMUMainThreadName[0]), v10) || (objc_msgSend(v6, "rangeOfString:", kVMUMainThreadDispatchQueueName), v11)))
  {
    v9 = 1;
  }

  else
  {
    v9 = [(VMUCallTreeNode *)self compareSizeAndCount:v4];
    if (!v9)
    {
      v12 = [kVMUThreadNamePrefix length];
      if ([(NSString *)self->_name length]<= v12)
      {
        v14 = 0;
      }

      else
      {
        v13 = [(NSString *)self->_name substringFromIndex:v12];
        v14 = [v13 longLongValue];
      }

      if ([v4[2] length] <= v12)
      {
        v16 = 0;
      }

      else
      {
        v15 = [v4[2] substringFromIndex:v12];
        v16 = [v15 longLongValue];
      }

      if (v14 < v16)
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
  v3 = [(VMUCallTreeNode *)self numChildren];
  if (v3)
  {
    v4 = v3;
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
    v13 = [(VMUCallTreeNode *)self pseudoName];
    v11 = [(VMUCallTreeNode *)VMUCallTreePseudoNode nodeWithName:v13 address:self->_address count:v10 numBytes:v12];
  }

  return v11;
}

- (id)sortedChildrenWithPseudoNode:(id)a3 withCompare:(SEL)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  numChildren = self->_numChildren;
  if (!v6)
  {
    if (numChildren == 1)
    {
      v16[0] = self->_children;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    else
    {
      if (numChildren)
      {
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:self->_children count:?];
        v11 = [v13 sortedArrayUsingSelector:a4];

        goto LABEL_14;
      }

      v12 = [MEMORY[0x1E695DEC8] array];
    }

LABEL_12:
    v11 = v12;
    goto LABEL_14;
  }

  if (!numChildren)
  {
    v12 = [MEMORY[0x1E695DEC8] arrayWithObject:v6];
    goto LABEL_12;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithObject:v6];
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

  v11 = [v8 sortedArrayUsingSelector:a4];

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
      v4 = [MEMORY[0x1E695DEC8] array];
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
    v7 = [(VMUCallTreeNode *)self pseudoNodeTopOfStackChild];
    v4 = [(VMUCallTreeNode *)self sortedChildrenWithPseudoNode:v7 withCompare:sel_compare_];

    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
LABEL_9:

LABEL_10:

  return v4;
}

- (id)largestTopOfStackPath
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:self];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = self;
  v4 = [(VMUCallTreeNode *)self sortedChildrenWithPseudoNode];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 largestTopOfStackPath];
        if ([v11 count])
        {
          v12 = [v11 lastObject];
        }

        else
        {
          v12 = v10;
        }

        v13 = v12;
        v14 = [v12 count];
        if (v14 > v7)
        {
          v15 = v14;
          v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count") + 1}];

          [v16 addObject:v19];
          [v16 addObjectsFromArray:v11];
          v7 = v15;
          v3 = v16;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_printCallTreeToFile:(__sFILE *)a3 cumulativeOutput:(id)a4 indentString:(id)a5 branchPointCount:(unsigned int)a6 topFunctions:(id)a7 options:(unint64_t)a8
{
  v54 = a4;
  v13 = a5;
  v14 = a7;
  v15 = objc_autoreleasePoolPush();
  table = v14;
  if (v14 || (a8 & 1) != 0)
  {
    v17 = [(VMUCallTreeNode *)self pseudoNodeTopOfStackChild];
    v16 = v17;
    if (v17)
    {
      if (v14)
      {
        if ([v17 symbolNameIsUnknown])
        {
          v18 = v16[2];
        }

        else
        {
          v18 = [v16 nameWithoutOffset];
        }

        v19 = v18;
        v20 = NSMapGet(table, v18);
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
  if ((a8 & 0x80) == 0)
  {
    if ((a8 & 0x40) != 0)
    {
      v22 = sel_comparePuttingRetainCycleNodesAtTop_;
    }

    else if (!self->_parent || !self->_numChildren && [(NSString *)self->_name hasPrefix:kVMUThreadNamePrefix])
    {
      v22 = sel_comparePuttingMainThreadFirst_;
    }
  }

  v43 = v15;
  if ((a8 & 1) == 0)
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
    v25 = a6;
  }

  else
  {
    v25 = a6 + 1;
  }

  v47 = v25;
  v26 = [(VMUCallTreeNode *)self parent];
  if (!v26 && [(VMUCallTreeNode *)self numBytes])
  {
    if ([(VMUCallTreeNode *)self numChildren]< 2)
    {
      goto LABEL_27;
    }

    if (v54)
    {
      v41 = v54;
    }

    else
    {
      v41 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:256];
    }

    v26 = v41;
    if (v13)
    {
      [v41 appendString:v13];
    }

    [(VMUCallTreeNode *)self getBrowserName:v24];
    [v26 appendFormat:@"%@%@\n", v24, kVMURootNodeNameForMallocCallTrees[0]];
    [v13 appendString:@"  "];
    if (!v54)
    {
      fputs([v26 UTF8String], a3);
    }
  }

LABEL_27:
  v42 = v16;
  v27 = "   ";
  if ((a8 & 8) == 0)
  {
    v27 = "  ";
  }

  v49 = v27;
  if (v53)
  {
    v28 = 0;
    v51 = 0;
    v44 = (a6 + 1) & 3;
    v29 = 2;
    if ((a8 & 8) != 0)
    {
      v29 = 3;
    }

    v46 = v29;
    do
    {
      v30 = [v48 objectAtIndex:v28];
      v31 = objc_autoreleasePoolPush();
      if (v54)
      {
        v32 = v54;
      }

      else
      {
        v32 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:256];
      }

      v33 = v32;
      v34 = [(VMUCallTreeNode *)self parent];
      if (v34 || [(VMUCallTreeNode *)self numChildren]< 2)
      {
      }

      else if ([v30 numChildren] != 0 || v51)
      {
        if ((a8 & 2) != 0)
        {
          [v33 appendString:@"\n"];
        }

        else if ((a8 & 4) != 0)
        {
          [v33 appendFormat:@"%@----\n", v13];
        }
      }

      v51 = [v30 numChildren] != 0;
      if (v13)
      {
        [v33 appendString:v13];
      }

      v35 = self;
      v36 = [(VMUCallTreeNode *)self parent];
      v37 = v36;
      if (v28 == 10 && v36 && v53 >= 0xC && [v30 numChildren] <= 1)
      {
        v38 = [v30 isMallocBlockContentNode];

        if (v38)
        {
          [v33 appendFormat:@"%lu ADDITIONAL CHILDREN\n", v53 - 10];

          objc_autoreleasePoolPop(v31);
          break;
        }

        if ((a8 & 0x40) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {

        if ((a8 & 0x40) == 0)
        {
          goto LABEL_54;
        }
      }

      if (![v30 count])
      {
        v40 = [v30 name];
        [v24 setString:v40];

        goto LABEL_55;
      }

LABEL_54:
      [v30 getBrowserName:v24];
LABEL_55:
      self = v35;
      [v33 appendFormat:@"%@\n", v24];
      if (v13)
      {
        v39 = v49;
        if ((a8 & 8) == 0)
        {
          v39 = v49;
          if (v28 < v45)
          {
            v39 = off_1E82787A8[v44];
          }
        }

        [v13 appendFormat:@"%s", v39];
      }

      if (!v54)
      {
        fputs([v33 UTF8String], a3);
      }

      objc_autoreleasePoolPop(v31);
      [v30 _printCallTreeToFile:a3 cumulativeOutput:v54 indentString:v13 branchPointCount:v47 topFunctions:table options:a8];
      if (v13)
      {
        [v13 deleteCharactersInRange:{objc_msgSend(v13, "length") - v46}];
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

- (void)countFunctionOccurrencesInTree:(id)a3
{
  v8 = a3;
  [v8 addObject:self->_name];
  v4 = [(VMUCallTreeNode *)self numChildren];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [(VMUCallTreeNode *)self childAtIndex:v6];
      [v7 countFunctionOccurrencesInTree:v8];

      v6 = (v6 + 1);
    }

    while (v5 != v6);
  }
}

- (BOOL)callTreeHasBranches
{
  v2 = self;
  if (!v2)
  {
    return 0;
  }

  p_isa = &v2->super.isa;
  do
  {
    v4 = [p_isa numChildren];
    if (v4 != 1)
    {
      break;
    }

    v5 = p_isa[6];

    p_isa = v5;
  }

  while (v5);
  v6 = v4 > 1;

  return v6;
}

- (id)stringFromCallTreeWithOptions:(unint64_t)a3
{
  v5 = objc_opt_new();
  if ((a3 & 0x10) != 0 || [(VMUCallTreeNode *)self callTreeHasBranches])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:128];
    v7 = v6;
    if ((a3 & 0x20) == 0)
    {
      [v6 setString:kVMUCallTreeInitialIndentation];
    }
  }

  else
  {
    v7 = 0;
  }

  [(VMUCallTreeNode *)self _printCallTreeToFile:0 cumulativeOutput:v5 indentString:v7 branchPointCount:0 topFunctions:0 options:a3];

  return v5;
}

- (id)stringFromCallTreeIndentIfNoBranches:(BOOL)a3 showPseudoNodes:(BOOL)a4
{
  v4 = 16;
  if (!a3)
  {
    v4 = 0;
  }

  return [(VMUCallTreeNode *)self stringFromCallTreeWithOptions:v4 | a4];
}

- (void)printCallTreeToFile:(__sFILE *)a3 cumulativeOutput:(id)a4 options:(unint64_t)a5
{
  v8 = MEMORY[0x1E696AD60];
  v9 = a4;
  v10 = [[v8 alloc] initWithCapacity:128];
  [v10 setString:kVMUCallTreeInitialIndentation];
  [(VMUCallTreeNode *)self _printCallTreeToFile:a3 cumulativeOutput:v9 indentString:v10 branchPointCount:0 topFunctions:0 options:a5];
}

- (id)invertedNode
{
  v3 = objc_alloc_init(VMUCallTreeNode);
  name = v3->_name;
  v3->_name = &stru_1F461F9C8;

  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(VMUCallTreeNode *)self numChildren];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v10 = [(VMUCallTreeNode *)self childAtIndex:v9];
      invertRecursiveWithNewInvertedRoot(v10, v3, v6);

      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }

  objc_autoreleasePoolPop(v5);

  return v3;
}

- (id)filterOutSymbols:(id)a3 required:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[NSString length](self->_name, "length") && ([v6 containsObject:self->_name] & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v25 = 0;
    [(VMUCallTreeNode *)self parseNameIntoSymbol:&v25 library:0 loadAddress:0 offset:0 address:0 suffix:0];
    v9 = v25;
    if ([v9 length] && (objc_msgSend(v6, "containsObject:", v9) & 1) != 0)
    {
      v8 = 0;
    }

    else
    {
      if (v7 && [v7 containsObject:v9])
      {

        v7 = 0;
      }

      v10 = [(VMUCallTreeNode *)self numChildren];
      if (v10)
      {
        v11 = v10;
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
        if (v13 == self->_count || (-[VMUCallTreeNode pseudoName](self, "pseudoName"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v6 containsObject:v15], v15, v16))
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
          v22 = [v21 filterOutSymbols:v6 required:v7];
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
          v8 = [objc_opt_class() nodeWithName:self->_name address:self->_address count:v17 numBytes:v20];
          [(VMUCallTreeNode *)v8 setChildren:v19];
        }

        else
        {
          v8 = 0;
        }

        v9 = v24;
      }

      else
      {
        v8 = self;
      }
    }
  }

  return v8;
}

- (id)filterOutSymbols:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5];

  v7 = [(VMUCallTreeNode *)self filterOutSymbols:v6 required:0];

  return v7;
}

- (id)chargeLibrariesInSet:(id)a3 toCaller:(id)a4 parentLibrary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v22 = 0;
  [(VMUCallTreeNode *)self parseNameIntoSymbol:0 library:&v22 loadAddress:0 offset:0 address:0 suffix:0];
  v12 = v22;
  if (![v12 length])
  {
    goto LABEL_9;
  }

  if (v8)
  {
    if ([v8 containsObject:v12])
    {
      goto LABEL_4;
    }

LABEL_9:
    v14 = v10;
    if (v9)
    {
LABEL_7:
      v15 = [v9 findOrAddChildWithName:self->_name address:self->_address nodeSearchType:1 isLeafNode:0];
      *(v15 + 40) += self->_count;
      *(v15 + 32) += self->_numBytes;

      v9 = v15;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!isSystemPath([v12 UTF8String]))
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v10)
  {
    v13 = [v12 isEqualToString:v10];
    v14 = v12;

    if (v13)
    {
      goto LABEL_12;
    }

    if (v9)
    {
      goto LABEL_7;
    }

LABEL_10:
    v9 = [objc_opt_class() nodeWithName:self->_name address:self->_address count:self->_count numBytes:self->_numBytes];
    goto LABEL_12;
  }

  v14 = 0;
LABEL_12:
  v16 = [(VMUCallTreeNode *)self numChildren];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    do
    {
      v19 = [(VMUCallTreeNode *)self childAtIndex:v18];
      v20 = [v19 chargeLibrariesInSet:v8 toCaller:v9 parentLibrary:v14];

      v18 = (v18 + 1);
    }

    while (v17 != v18);
  }

  objc_autoreleasePoolPop(v11);

  return v9;
}

- (id)chargeLibrariesToCallers:(id)a3 keepBoundaries:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v8 = [[v6 alloc] initWithArray:v7];

  if (v4)
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

- (id)pruneMallocSize:(unint64_t)a3
{
  if (self->_numBytes >= a3)
  {
    v6 = [(VMUCallTreeNode *)self numChildren];
    if (v6)
    {
      v7 = v6;
      v3 = [objc_opt_class() nodeWithName:self->_name address:self->_address count:self->_count numBytes:self->_numBytes];
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = 0;
      do
      {
        v10 = [(VMUCallTreeNode *)self childAtIndex:v9];
        v11 = v10;
        if (v10[4] >= a3)
        {
          v12 = [v10 pruneMallocSize:a3];
          [v8 addObject:v12];
        }

        v9 = (v9 + 1);
      }

      while (v7 != v9);
      [(VMUCallTreeNode *)v3 setChildren:v8];
    }

    else
    {
      v3 = self;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end