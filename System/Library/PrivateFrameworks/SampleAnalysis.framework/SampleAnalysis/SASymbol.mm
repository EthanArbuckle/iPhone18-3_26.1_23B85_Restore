@interface SASymbol
+ (void)symbolWithOffsetIntoSegment:(uint64_t)segment length:(void *)length name:;
- (id)addInlineSourceInfoWithOffsetIntoSegment:(uint64_t)segment length:(int)length lineNum:(int)num columnNum:(void *)columnNum filePath:;
- (id)addNonInlineSourceInfoWithOffsetIntoSegment:(uint64_t)segment length:(int)length lineNum:(int)num columnNum:(void *)columnNum filePath:;
- (id)debugDescription;
@end

@implementation SASymbol

- (id)addInlineSourceInfoWithOffsetIntoSegment:(uint64_t)segment length:(int)length lineNum:(int)num columnNum:(void *)columnNum filePath:
{
  v47 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_27:
    v17 = 0;
    goto LABEL_21;
  }

  if (!segment)
  {
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [self debugDescription];
      *buf = 136315906;
      uTF8String = [v25 UTF8String];
      v41 = 2080;
      uTF8String2 = [columnNum UTF8String];
      v43 = 1024;
      lengthCopy = length;
      v45 = 1024;
      numCopy = num;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "%s: inlining 0-length source info %s:%d,%d", buf, 0x22u);
    }

    *__error() = v23;
    v26 = [self debugDescription];
    v27 = v26;
    uTF8String3 = [v26 UTF8String];
    columnNumCopy = columnNum;
    [columnNum UTF8String];
    _SASetCrashLogMessage(4565, "%s: inlining 0-length source info %s:%d,%d", v30, v31, v32, v33, v34, v35, uTF8String3);

    _os_crash();
    __break(1u);
    goto LABEL_27;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = selfCopy[4];
  if (!v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v13 = selfCopy[4];
    selfCopy[4] = v12;

    v11 = selfCopy[4];
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __87__SASymbol_addInlineSourceInfoWithOffsetIntoSegment_length_lineNum_columnNum_filePath___block_invoke;
  v38[3] = &__block_descriptor_48_e22_q16__0__SASourceInfo_8l;
  v38[4] = a2;
  v38[5] = segment;
  v14 = SABinarySearchArray(v11, 1536, v38);
  v15 = v14;
  if (v14)
  {
    v16 = v14 - 1;
    while (1)
    {
      v17 = [selfCopy[4] objectAtIndexedSubscript:v16];
      if ([v17 offsetIntoSegment] != a2 || objc_msgSend(v17, "length") != segment)
      {
        break;
      }

      if (columnNum)
      {
        filePath = [v17 filePath];
        if (filePath)
        {
          filePath2 = [v17 filePath];
          if ([columnNum isEqualToString:filePath2] && objc_msgSend(v17, "lineNum") == length)
          {
            v20 = [v17 columnNum] == num;

            if (v20)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }
        }
      }

      if (--v16 == -1)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v17 = [SASourceInfo sourceInfoWithOffsetIntoSegment:a2 length:segment lineNum:length columnNum:num filePath:columnNum];
  [selfCopy[4] insertObject:v17 atIndex:v15];
LABEL_20:
  objc_sync_exit(selfCopy);

LABEL_21:
  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)addNonInlineSourceInfoWithOffsetIntoSegment:(uint64_t)segment length:(int)length lineNum:(int)num columnNum:(void *)columnNum filePath:
{
  v47 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = selfCopy[4];
    if (!v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      v14 = selfCopy[4];
      selfCopy[4] = v13;

      v12 = selfCopy[4];
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __90__SASymbol_addNonInlineSourceInfoWithOffsetIntoSegment_length_lineNum_columnNum_filePath___block_invoke;
    v37[3] = &__block_descriptor_40_e22_q16__0__SASourceInfo_8l;
    v37[4] = a2;
    v15 = SABinarySearchArray(v12, 1280, v37);
    if (v15 < [selfCopy[4] count])
    {
      numCopy = num;
      columnNumCopy = columnNum;
      v18 = [selfCopy[4] objectAtIndexedSubscript:v15];
      if ([v18 offsetIntoSegment] == a2)
      {
LABEL_18:
        objc_sync_exit(selfCopy);

        goto LABEL_19;
      }

      v19 = segment + a2;
      if (segment + a2 > [v18 offsetIntoSegment])
      {
        v20 = *__error();
        v21 = _sa_logt();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v34 = [v18 debugDescription];
          *buf = 138413570;
          v39 = columnNumCopy;
          v40 = 1024;
          *v41 = length;
          *&v41[4] = 1024;
          *&v41[6] = numCopy;
          *v42 = 2048;
          *&v42[2] = a2;
          v43 = 2048;
          v44 = v19;
          v45 = 2112;
          v46 = v34;
          v35 = v34;
          _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "new source info %@:%d,%d (0x%llx-0x%llx) overlaps existing %@", buf, 0x36u);
        }

        *__error() = v20;
        segment = [v18 offsetIntoSegment] - a2;
      }

      columnNum = columnNumCopy;
      num = numCopy;
    }

    if (v15)
    {
      lengthCopy = length;
      numCopy2 = num;
      columnNumCopy2 = columnNum;
      v24 = [selfCopy[4] objectAtIndexedSubscript:v15 - 1];
      offsetIntoSegment = [v24 offsetIntoSegment];
      if ([v24 length] + offsetIntoSegment > a2)
      {
        v26 = *__error();
        v27 = _sa_logt();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v33 = [v24 debugDescription];
          *buf = 138413570;
          v39 = v33;
          v40 = 2112;
          *v41 = columnNumCopy2;
          *&v41[8] = 1024;
          *v42 = lengthCopy;
          *&v42[4] = 1024;
          *&v42[6] = numCopy2;
          v43 = 2048;
          v44 = a2;
          v45 = 2048;
          v46 = segment + a2;
          _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "existing source info %@ overlaps new %@:%d,%d (0x%llx-0x%llx)", buf, 0x36u);
        }

        *__error() = v26;
        offsetIntoSegment2 = [v24 offsetIntoSegment];
        v29 = [v24 length];
        offsetIntoSegment3 = [v24 offsetIntoSegment];
        segment = segment + a2 - (offsetIntoSegment2 + v29);
        a2 = [v24 length] + offsetIntoSegment3;
      }

      columnNum = columnNumCopy2;
      num = numCopy2;
      length = lengthCopy;
    }

    v18 = [SASourceInfo sourceInfoWithOffsetIntoSegment:a2 length:segment lineNum:length columnNum:num filePath:columnNum];
    [selfCopy[4] insertObject:v18 atIndex:v15];
    goto LABEL_18;
  }

  v18 = 0;
LABEL_19:
  v31 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (void)symbolWithOffsetIntoSegment:(uint64_t)segment length:(void *)length name:
{
  v7 = objc_alloc_init(objc_opt_self());
  v7[1] = a2;
  v7[2] = segment;
  v8 = [length copy];
  v9 = v7[3];
  v7[3] = v8;

  return v7;
}

uint64_t __51__SASymbol_nonInlineSourceInfoAtOffsetIntoSegment___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 offsetIntoSegment];
  if (v4 >= [a2 length] + v5)
  {
    return 1;
  }

  v6 = *(a1 + 32);
  if (v6 >= [a2 offsetIntoSegment])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t __90__SASymbol_addNonInlineSourceInfoWithOffsetIntoSegment_length_lineNum_columnNum_filePath___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4 > [a2 offsetIntoSegment])
  {
    return 1;
  }

  v6 = *(a1 + 32);
  if (v6 >= [a2 offsetIntoSegment])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t __87__SASymbol_addInlineSourceInfoWithOffsetIntoSegment_length_lineNum_columnNum_filePath___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 offsetIntoSegment];
  v5 = *(a1 + 32);
  if (v5 > v4)
  {
    return 1;
  }

  if (v5 < v4)
  {
    return -1;
  }

  v7 = [a2 length];
  v8 = *(a1 + 40);
  v9 = v8 > v7;
  v10 = v8 < v7;
  if (v9)
  {
    return -1;
  }

  else
  {
    return v10;
  }
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = @"???";
  }

  v5 = [v3 initWithFormat:@"%@ (0x%llx-0x%llx, %lu source infos)", name, self->_offsetIntoSegment, self->_length + self->_offsetIntoSegment, -[NSMutableArray count](self->_sourceInfos, "count")];

  return v5;
}

@end