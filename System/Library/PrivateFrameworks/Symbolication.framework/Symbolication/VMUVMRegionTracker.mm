@interface VMUVMRegionTracker
- (VMUVMRegionTracker)init;
- (VMUVMRegionTracker)initWithCoder:(id)coder;
- (VMUVMRegionTracker)initWithStackLogReader:(id)reader;
- (id)vmRegionRangeInfoForRange:(_VMURange)range;
- (unint64_t)_regionIndexForAddress:(unint64_t)address;
- (unint64_t)handleStackLogType:(unsigned int)type address:(unint64_t)address size:(unint64_t)size stackID:(unint64_t)d;
- (void)convertStackIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VMUVMRegionTracker

- (VMUVMRegionTracker)init
{
  v6.receiver = self;
  v6.super_class = VMUVMRegionTracker;
  v2 = [(VMUVMRegionTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    regionInfoArray = v2->_regionInfoArray;
    v2->_regionInfoArray = v3;
  }

  return v2;
}

- (VMUVMRegionTracker)initWithStackLogReader:(id)reader
{
  readerCopy = reader;
  v5 = [(VMUVMRegionTracker *)self init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_stackLogReader, readerCopy);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__VMUVMRegionTracker_initWithStackLogReader___block_invoke;
    v9[3] = &unk_1E8278088;
    v10 = v6;
    [readerCopy enumerateMSLRecordsAndPayloads:v9];
  }

  return v6;
}

uint64_t __45__VMUVMRegionTracker_initWithStackLogReader___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  uniquing_table_index = msl_payload_get_uniquing_table_index();
  v9 = *(a1 + 32);

  return [v9 handleStackLogType:a2 address:a3 size:a4 stackID:uniquing_table_index];
}

- (void)encodeWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [coderCopy encodeObject:v5 forKey:@"classVersion"];

  v6 = objc_opt_new();
  [v6 serialize32:{-[VMUVMRegionTracker regionCount](self, "regionCount")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_regionInfoArray;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v6 serialize64:{objc_msgSend(v12, "address", v15)}];
        [v6 serialize64:{objc_msgSend(v12, "size")}];
        [v6 serialize32:{objc_msgSend(v12, "stackIdentifier")}];
        [v6 serialize32:{objc_msgSend(v12, "userTag")}];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  copyContiguousData = [v6 copyContiguousData];
  [coderCopy encodeObject:copyContiguousData forKey:@"simpleSerializerData"];

  v14 = *MEMORY[0x1E69E9840];
}

- (VMUVMRegionTracker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = VMUVMRegionTracker;
  v5 = [(VMUVMRegionTracker *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classVersion"];
    unsignedIntValue = [v6 unsignedIntValue];

    if (unsignedIntValue != 1)
    {
LABEL_14:
      v21 = 0;
      goto LABEL_15;
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"simpleSerializerData"];
    v9 = [[VMUSimpleDeserializer alloc] initWithData:v8];
    v27 = 0;
    v10 = [(VMUSimpleDeserializer *)v9 deserialize32WithError:&v27];
    v11 = v27;
    if (v11)
    {
      v12 = v11;

      goto LABEL_14;
    }

    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
    regionInfoArray = v5->_regionInfoArray;
    v5->_regionInfoArray = v13;

    if (v10)
    {
      while (1)
      {
        v15 = objc_opt_new();
        v26 = 0;
        v16 = [(VMUSimpleDeserializer *)v9 deserialize64WithError:&v26];
        v17 = v26;
        [v15 setAddress:v16];
        if (v17)
        {
          break;
        }

        v25 = 0;
        v18 = [(VMUSimpleDeserializer *)v9 deserialize64WithError:&v25];
        v17 = v25;
        [v15 setSize:v18];
        if (v17)
        {
          break;
        }

        v24 = 0;
        v19 = [(VMUSimpleDeserializer *)v9 deserialize32WithError:&v24];
        v17 = v24;
        [v15 setStackIdentifier:v19];
        if (v17)
        {
          break;
        }

        v23 = 0;
        v20 = [(VMUSimpleDeserializer *)v9 deserialize32WithError:&v23];
        v17 = v23;
        [v15 setUserTag:v20];
        if (v17)
        {
          break;
        }

        [(NSMutableArray *)v5->_regionInfoArray addObject:v15];

        if (!--v10)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_14;
    }

LABEL_11:
  }

  v21 = v5;
LABEL_15:

  return v21;
}

- (unint64_t)_regionIndexForAddress:(unint64_t)address
{
  v5 = [(NSMutableArray *)self->_regionInfoArray count];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = v8;
    v10 = v7 + (v6 >> 1);
    v8 = [(NSMutableArray *)self->_regionInfoArray objectAtIndexedSubscript:v10];

    range = [v8 range];
    if (address - range < v12)
    {
      break;
    }

    if (address >= range)
    {
      v6 += ~(v6 >> 1);
    }

    else
    {
      v6 >>= 1;
    }

    if (address >= range)
    {
      v7 = v10 + 1;
    }

    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v7 += v6 >> 1;
LABEL_13:

  return v7;
}

- (unint64_t)handleStackLogType:(unsigned int)type address:(unint64_t)address size:(unint64_t)size stackID:(unint64_t)d
{
  if ((type & 0x30) == 0)
  {
    return 0;
  }

  sizeCopy = size;
  if (size % *MEMORY[0x1E69E9AC8])
  {
    sizeCopy = ~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + size);
  }

  v11 = [(VMUVMRegionTracker *)self _regionIndexForAddress:address];
  if (v11 >= [(NSMutableArray *)self->_regionInfoArray count])
  {
    v14 = 0;
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = sizeCopy + address;
    while (1)
    {
      v14 = [(NSMutableArray *)self->_regionInfoArray objectAtIndex:v11];
      range = [v14 range];
      v17 = VMURangeContainsRange(address, sizeCopy, range, v16);
      range2 = [v14 range];
      if (!v17)
      {
        break;
      }

      v12 -= v19;

      [(NSMutableArray *)self->_regionInfoArray removeObjectAtIndex:v11];
      if (v11 >= [(NSMutableArray *)self->_regionInfoArray count])
      {
        v14 = 0;
        goto LABEL_18;
      }
    }

    if (VMURangeIntersectsRange(address, sizeCopy, range2, v19))
    {
      v20 = [v14 range] - address;
      range3 = [v14 range];
      if (v20 >= sizeCopy)
      {
        if (v22 + ~address + range3 >= sizeCopy)
        {
          v26 = objc_alloc_init(VMUVMRegionRangeInfo);
          [(VMUVMRegionRangeInfo *)v26 setAddress:sizeCopy + address];
          range4 = [v14 range];
          [(VMUVMRegionRangeInfo *)v26 setSize:v28 - v13 + range4];
          -[VMUVMRegionRangeInfo setStackIdentifier:](v26, "setStackIdentifier:", [v14 stackIdentifier]);
          -[VMUVMRegionRangeInfo setUserTag:](v26, "setUserTag:", [v14 userTag]);
          [(NSMutableArray *)self->_regionInfoArray insertObject:v26 atIndex:++v11];
          [v14 setSize:{objc_msgSend(v14, "range") - address + objc_msgSend(v14, "size")}];

          v23 = sizeCopy;
        }

        else
        {
          range5 = [v14 range];
          v23 = v25 - address + range5;
          [v14 setSize:{objc_msgSend(v14, "size") - v23}];
          ++v11;
        }
      }

      else
      {
        v23 = v13 - range3;
        [v14 setAddress:{v23 + objc_msgSend(v14, "address")}];
        [v14 setSize:{objc_msgSend(v14, "size") - v23}];
      }

      v12 -= v23;
    }
  }

LABEL_18:
  if ((type & 0x10) != 0)
  {
    v29 = objc_alloc_init(VMUVMRegionRangeInfo);

    [(VMUVMRegionRangeInfo *)v29 setAddress:address];
    [(VMUVMRegionRangeInfo *)v29 setSize:sizeCopy];
    [(VMUVMRegionRangeInfo *)v29 setStackIdentifier:d];
    [(VMUVMRegionRangeInfo *)v29 setUserTag:HIBYTE(type)];
    [(NSMutableArray *)self->_regionInfoArray insertObject:v29 atIndex:v11];
    v12 += sizeCopy;
    v14 = v29;
  }

  return v12;
}

- (void)convertStackIDs:(id)ds
{
  v16 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_regionInfoArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9) setStackIdentifier:{dsCopy[2](dsCopy, objc_msgSend(*(*(&v11 + 1) + 8 * v9), "stackIdentifier", v11))}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)vmRegionRangeInfoForRange:(_VMURange)range
{
  length = range.length;
  location = range.location;
  v6 = [(VMUVMRegionTracker *)self _regionIndexForAddress:?];
  if (v6 >= [(NSMutableArray *)self->_regionInfoArray count])
  {
    v12 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_regionInfoArray objectAtIndexedSubscript:v6];
    range = [v7 range];
    if (VMURangeContainsRange(range, v9, location, length) || (v10 = [v7 range], VMURangeIntersectsRange(v10, v11, location, length)))
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end