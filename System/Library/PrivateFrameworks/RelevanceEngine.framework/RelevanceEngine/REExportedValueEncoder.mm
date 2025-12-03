@interface REExportedValueEncoder
- (REExportedValueEncoder)initWithOptions:(unint64_t)options;
- (id)_namesArrayFromArray:(id)array;
- (id)dataFromExportedValue:(id)value;
- (void)_writeCollection:(id)collection toStream:(id)stream startBlock:(id)block writerBlock:(id)writerBlock endBlock:(id)endBlock wantsHeader:(BOOL)header depth:(unint64_t)depth;
- (void)_writeValue:(id)value toStream:(id)stream depth:(unint64_t)depth needsIndent:(BOOL)indent;
- (void)writeUnsupportedObject:(id)object toStream:(id)stream;
@end

@implementation REExportedValueEncoder

- (REExportedValueEncoder)initWithOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = REExportedValueEncoder;
  result = [(REExportedValueEncoder *)&v5 init];
  if (result)
  {
    result->_options = options;
  }

  return result;
}

- (id)dataFromExportedValue:(id)value
{
  v4 = MEMORY[0x277CBEB78];
  valueCopy = value;
  outputStreamToMemory = [v4 outputStreamToMemory];
  [outputStreamToMemory open];
  [(REExportedValueEncoder *)self writeExportedValue:valueCopy toStream:outputStreamToMemory];

  v7 = [outputStreamToMemory propertyForKey:*MEMORY[0x277CBE740]];
  [outputStreamToMemory close];

  return v7;
}

- (void)_writeValue:(id)value toStream:(id)stream depth:(unint64_t)depth needsIndent:(BOOL)indent
{
  valueCopy = value;
  streamCopy = stream;
  v12 = [REExportedValue exportedValueForObject:valueCopy];
  v13 = self->_options & indent;
  if (v13 == 1)
  {
    if (depth)
    {
      if (depth == 1)
      {
        v14 = @"    ";
      }

      else
      {
        v15 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(@"    ", "length") * depth}];
        depthCopy = depth;
        do
        {
          [v15 appendString:@"    "];
          --depthCopy;
        }

        while (depthCopy);
        v14 = [v15 copy];
      }
    }

    else
    {
      v14 = &stru_283B97458;
    }

    [streamCopy re_writeString:v14];
  }

  type = [v12 type];
  if (type > 3)
  {
    if (type > 5)
    {
      if (type == 6)
      {
        if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          [(REExportedValueEncoder *)self writeNullToStream:streamCopy];
          if (v13)
          {
            goto LABEL_37;
          }

          goto LABEL_38;
        }
      }

      else if (type != 7)
      {
        goto LABEL_36;
      }

      [(REExportedValueEncoder *)self writeUnsupportedObject:valueCopy toStream:streamCopy];
      goto LABEL_36;
    }

    if (type == 4)
    {
      numberValue = [v12 numberValue];
      [(REExportedValueEncoder *)self writeNumber:numberValue toStream:streamCopy];
    }

    else
    {
      numberValue = [v12 dateValue];
      [(REExportedValueEncoder *)self writeDate:numberValue toStream:streamCopy];
    }

LABEL_27:

    if (!v13)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      if ([v12 propertyCount] == 1)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke;
        v31[3] = &unk_2785F9EB8;
        v31[4] = self;
        v32 = streamCopy;
        depthCopy2 = depth;
        [v12 enumerateValuesUsingBlock:v31];
        v19 = v32;
      }

      else
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke_2;
        v29[3] = &unk_2785F9EE0;
        v29[4] = self;
        v30 = v12;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke_3;
        v28[3] = &unk_2785F9F08;
        v28[4] = self;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke_4;
        v26[3] = &unk_2785F9EE0;
        v26[4] = self;
        v27 = v30;
        [(REExportedValueEncoder *)self _writeCollection:v27 toStream:streamCopy startBlock:v29 writerBlock:v28 endBlock:v26 wantsHeader:1 depth:depth];

        v19 = v30;
      }

      if (v13)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    numberValue = [v12 stringValue];
    [(REExportedValueEncoder *)self writeString:numberValue toStream:streamCopy];
    goto LABEL_27;
  }

  if (!type)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke_5;
    v25[3] = &unk_2785F9F30;
    v25[4] = self;
    v23[4] = self;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke_6;
    v24[3] = &unk_2785F9F08;
    v24[4] = self;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke_7;
    v23[3] = &unk_2785F9F30;
    [(REExportedValueEncoder *)self _writeCollection:v12 toStream:streamCopy startBlock:v25 writerBlock:v24 endBlock:v23 wantsHeader:[(REExportedValueEncoder *)self writesArrayHeader] depth:depth];
LABEL_24:
    if (!v13)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (type == 1)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke_8;
    v22[3] = &unk_2785F9F30;
    v22[4] = self;
    v20[4] = self;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke_9;
    v21[3] = &unk_2785F9F08;
    v21[4] = self;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke_10;
    v20[3] = &unk_2785F9F30;
    [(REExportedValueEncoder *)self _writeCollection:v12 toStream:streamCopy startBlock:v22 writerBlock:v21 endBlock:v20 wantsHeader:[(REExportedValueEncoder *)self writesDictionaryHeader] depth:depth];
    goto LABEL_24;
  }

LABEL_36:
  if (v13)
  {
LABEL_37:
    [streamCopy re_writeString:@"\n"];
  }

LABEL_38:
}

void __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 objectValue];
  [v2 writeObjectStart:v5 toStream:v4];
}

void __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 objectValue];
  [v2 writeObjectEnd:v5 toStream:v4];
}

- (void)_writeCollection:(id)collection toStream:(id)stream startBlock:(id)block writerBlock:(id)writerBlock endBlock:(id)endBlock wantsHeader:(BOOL)header depth:(unint64_t)depth
{
  headerCopy = header;
  depthCopy = depth;
  collectionCopy = collection;
  streamCopy = stream;
  blockCopy = block;
  writerBlockCopy = writerBlock;
  selfCopy = self;
  endBlockCopy = endBlock;
  options = self->_options;
  if (depth)
  {
    v19 = (self->_options & 4) != 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = options & 1;
  v21 = (options >> 1) & 1;
  v27 = blockCopy;
  (*(blockCopy + 2))(blockCopy, streamCopy);
  v22 = options & headerCopy;
  if (v22 == 1)
  {
    [streamCopy re_writeString:@"\n"];
  }

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = [collectionCopy propertyCount];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __102__REExportedValueEncoder__writeCollection_toStream_startBlock_writerBlock_endBlock_wantsHeader_depth___block_invoke;
  v32[3] = &unk_2785F9FA8;
  v36 = v42;
  v38 = v19;
  v39 = v21;
  v40 = headerCopy;
  v41 = v20;
  v23 = streamCopy;
  v33 = v23;
  depthCopy2 = depth;
  v24 = writerBlockCopy;
  v34 = selfCopy;
  v35 = v24;
  [collectionCopy enumerateValuesUsingBlock:v32];
  if (v22)
  {
    if (depth)
    {
      if (depth == 1)
      {
        v25 = @"    ";
      }

      else
      {
        v26 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(@"    ", "length") * depth}];
        do
        {
          [v26 appendString:@"    "];
          --depthCopy;
        }

        while (depthCopy);
        v25 = [v26 copy];
      }
    }

    else
    {
      v25 = &stru_283B97458;
    }

    [v23 re_writeString:v25];
  }

  endBlockCopy[2](endBlockCopy, v23);

  _Block_object_dispose(v42, 8);
}

void __102__REExportedValueEncoder__writeCollection_toStream_startBlock_writerBlock_endBlock_wantsHeader_depth___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v5 = a3;
  v29 = a1;
  --*(*(*(a1 + 56) + 8) + 24);
  v6 = [REExportedValue exportedValueForObject:v5];
  if ([v6 type] > 2 || (*(a1 + 72) & 1) != 0)
  {
    goto LABEL_18;
  }

  if ([v6 type] > 2)
  {
LABEL_17:

    v5 = @"More Details...";
    goto LABEL_18;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = REEncodeIdentificationProperites();
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v8)
  {

    goto LABEL_17;
  }

  v9 = 0;
  v10 = *v46;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v46 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [v6 exportedValueForKey:*(*(&v45 + 1) + 8 * i)];
      v13 = v12;
      if (v12 && [v12 type] == 3)
      {
        v14 = v13;

        v15 = [v14 stringValue];

        v9 = 1;
        v6 = v14;
        v5 = v15;
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (*(v29 + 73) != 1 || [v6 shouldEncodeProperty:v28])
  {
    v16 = v29;
    v17 = *(*(*(v29 + 56) + 8) + 24);
    v18 = *(v29 + 74);
    if (*(v29 + 75) == 1)
    {
      v16 = v29;
      if ([v6 type] > 2 || *(v29 + 74) == 1)
      {
        v19 = *(v29 + 32);
        v20 = *(v29 + 64) + v18;
        if (v20)
        {
          if (v20 == 1)
          {
            v21 = @"    ";
          }

          else
          {
            v22 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(@"    ", "length") * v20}];
            do
            {
              [v22 appendString:@"    "];
              --v20;
            }

            while (v20);
            v21 = [v22 copy];
          }
        }

        else
        {
          v21 = &stru_283B97458;
        }

        [v19 re_writeString:v21];

        v16 = v29;
      }
    }

    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v44 = 0;
    v23 = *(v16 + 48);
    v24 = *(v16 + 32);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __102__REExportedValueEncoder__writeCollection_toStream_startBlock_writerBlock_endBlock_wantsHeader_depth___block_invoke_2;
    v39[3] = &unk_2785F9F58;
    v40 = v24;
    v41 = v28;
    v42 = v43;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __102__REExportedValueEncoder__writeCollection_toStream_startBlock_writerBlock_endBlock_wantsHeader_depth___block_invoke_3;
    v30[3] = &unk_2785F9F80;
    v38 = *(v16 + 75);
    v35 = v43;
    v31 = v6;
    v25 = *(v16 + 32);
    v36 = *(v16 + 64);
    v37 = v18;
    v26 = *(v16 + 40);
    v32 = v25;
    v33 = v26;
    v34 = v5;
    (*(v23 + 16))(v23, v40, v39, v30, v17 == 0);
    if (*(v16 + 75) == 1 && ((*(v16 + 74) & 1) != 0 || v17))
    {
      [*(v16 + 32) re_writeString:@"\n"];
    }

    _Block_object_dispose(v43, 8);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __102__REExportedValueEncoder__writeCollection_toStream_startBlock_writerBlock_endBlock_wantsHeader_depth___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) re_writeString:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

uint64_t __102__REExportedValueEncoder__writeCollection_toStream_startBlock_writerBlock_endBlock_wantsHeader_depth___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 88) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1 && [*(a1 + 32) type] <= 2)
  {
    [*(a1 + 40) re_writeString:@"\n"];
    v2 = *(a1 + 40);
    v3 = *(a1 + 80) + *(a1 + 72);
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = @"    ";
      }

      else
      {
        v5 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(@"    ", "length") * v3}];
        do
        {
          [v5 appendString:@"    "];
          --v3;
        }

        while (v3);
        v4 = [v5 copy];
      }
    }

    else
    {
      v4 = &stru_283B97458;
    }

    [v2 re_writeString:v4];
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 72) + 1;

  return [v6 _writeValue:v7 toStream:v8 depth:v9 needsIndent:0];
}

- (id)_namesArrayFromArray:(id)array
{
  v46 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if ([arrayCopy count])
  {
    firstObject = [arrayCopy firstObject];
    v5 = [REExportedValue exportedValueForObject:firstObject];

    if ([v5 type] == 6)
    {
      v6 = 0;
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v7 = REEncodeIdentificationProperites();
      v6 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v6)
      {
        v8 = *v40;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v40 != v8)
            {
              objc_enumerationMutation(v7);
            }

            v10 = [v5 exportedValueForKey:*(*(&v39 + 1) + 8 * i)];
            type = [v10 type];

            if (type == 3)
            {
              v25 = v5;

              v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v26 = arrayCopy;
              obj = arrayCopy;
              v30 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
              if (v30)
              {
                v29 = *v36;
                do
                {
                  for (j = 0; j != v30; ++j)
                  {
                    if (*v36 != v29)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v13 = *(*(&v35 + 1) + 8 * j);
                    v31 = 0u;
                    v32 = 0u;
                    v33 = 0u;
                    v34 = 0u;
                    v14 = REEncodeIdentificationProperites();
                    v15 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
                    if (v15)
                    {
                      v16 = v15;
                      v17 = *v32;
                      while (2)
                      {
                        for (k = 0; k != v16; ++k)
                        {
                          if (*v32 != v17)
                          {
                            objc_enumerationMutation(v14);
                          }

                          v19 = *(*(&v31 + 1) + 8 * k);
                          v20 = [REExportedValue exportedValueForObject:v13, v25];
                          v21 = [v20 exportedValueForKey:v19];
                          stringValue = [v21 stringValue];

                          if (stringValue)
                          {
                            [v28 addObject:stringValue];

                            goto LABEL_29;
                          }
                        }

                        v16 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
                        if (v16)
                        {
                          continue;
                        }

                        break;
                      }
                    }

LABEL_29:
                  }

                  v30 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
                }

                while (v30);
              }

              v7 = v28;
              v6 = [v28 copy];
              v5 = v25;
              arrayCopy = v26;
              goto LABEL_32;
            }
          }

          v6 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_32:
    }
  }

  else
  {
    v6 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeUnsupportedObject:(id)object toStream:(id)stream
{
  objectCopy = object;
  streamCopy = stream;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectValue = [objectCopy objectValue];

    v8 = objectValue;
  }

  else
  {
    v8 = objectCopy;
  }

  v11 = v8;
  v9 = [v8 description];
  [(REExportedValueEncoder *)self writeString:v9 toStream:streamCopy];
}

@end