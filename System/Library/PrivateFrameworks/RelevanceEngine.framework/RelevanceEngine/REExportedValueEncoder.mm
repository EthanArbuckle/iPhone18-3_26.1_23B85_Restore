@interface REExportedValueEncoder
- (REExportedValueEncoder)initWithOptions:(unint64_t)a3;
- (id)_namesArrayFromArray:(id)a3;
- (id)dataFromExportedValue:(id)a3;
- (void)_writeCollection:(id)a3 toStream:(id)a4 startBlock:(id)a5 writerBlock:(id)a6 endBlock:(id)a7 wantsHeader:(BOOL)a8 depth:(unint64_t)a9;
- (void)_writeValue:(id)a3 toStream:(id)a4 depth:(unint64_t)a5 needsIndent:(BOOL)a6;
- (void)writeUnsupportedObject:(id)a3 toStream:(id)a4;
@end

@implementation REExportedValueEncoder

- (REExportedValueEncoder)initWithOptions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = REExportedValueEncoder;
  result = [(REExportedValueEncoder *)&v5 init];
  if (result)
  {
    result->_options = a3;
  }

  return result;
}

- (id)dataFromExportedValue:(id)a3
{
  v4 = MEMORY[0x277CBEB78];
  v5 = a3;
  v6 = [v4 outputStreamToMemory];
  [v6 open];
  [(REExportedValueEncoder *)self writeExportedValue:v5 toStream:v6];

  v7 = [v6 propertyForKey:*MEMORY[0x277CBE740]];
  [v6 close];

  return v7;
}

- (void)_writeValue:(id)a3 toStream:(id)a4 depth:(unint64_t)a5 needsIndent:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [REExportedValue exportedValueForObject:v10];
  v13 = self->_options & a6;
  if (v13 == 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        v14 = @"    ";
      }

      else
      {
        v15 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(@"    ", "length") * a5}];
        v16 = a5;
        do
        {
          [v15 appendString:@"    "];
          --v16;
        }

        while (v16);
        v14 = [v15 copy];
      }
    }

    else
    {
      v14 = &stru_283B97458;
    }

    [v11 re_writeString:v14];
  }

  v17 = [v12 type];
  if (v17 > 3)
  {
    if (v17 > 5)
    {
      if (v17 == 6)
      {
        if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          [(REExportedValueEncoder *)self writeNullToStream:v11];
          if (v13)
          {
            goto LABEL_37;
          }

          goto LABEL_38;
        }
      }

      else if (v17 != 7)
      {
        goto LABEL_36;
      }

      [(REExportedValueEncoder *)self writeUnsupportedObject:v10 toStream:v11];
      goto LABEL_36;
    }

    if (v17 == 4)
    {
      v18 = [v12 numberValue];
      [(REExportedValueEncoder *)self writeNumber:v18 toStream:v11];
    }

    else
    {
      v18 = [v12 dateValue];
      [(REExportedValueEncoder *)self writeDate:v18 toStream:v11];
    }

LABEL_27:

    if (!v13)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if ([v12 propertyCount] == 1)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __65__REExportedValueEncoder__writeValue_toStream_depth_needsIndent___block_invoke;
        v31[3] = &unk_2785F9EB8;
        v31[4] = self;
        v32 = v11;
        v33 = a5;
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
        [(REExportedValueEncoder *)self _writeCollection:v27 toStream:v11 startBlock:v29 writerBlock:v28 endBlock:v26 wantsHeader:1 depth:a5];

        v19 = v30;
      }

      if (v13)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v18 = [v12 stringValue];
    [(REExportedValueEncoder *)self writeString:v18 toStream:v11];
    goto LABEL_27;
  }

  if (!v17)
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
    [(REExportedValueEncoder *)self _writeCollection:v12 toStream:v11 startBlock:v25 writerBlock:v24 endBlock:v23 wantsHeader:[(REExportedValueEncoder *)self writesArrayHeader] depth:a5];
LABEL_24:
    if (!v13)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v17 == 1)
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
    [(REExportedValueEncoder *)self _writeCollection:v12 toStream:v11 startBlock:v22 writerBlock:v21 endBlock:v20 wantsHeader:[(REExportedValueEncoder *)self writesDictionaryHeader] depth:a5];
    goto LABEL_24;
  }

LABEL_36:
  if (v13)
  {
LABEL_37:
    [v11 re_writeString:@"\n"];
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

- (void)_writeCollection:(id)a3 toStream:(id)a4 startBlock:(id)a5 writerBlock:(id)a6 endBlock:(id)a7 wantsHeader:(BOOL)a8 depth:(unint64_t)a9
{
  v9 = a8;
  v15 = a9;
  v31 = a3;
  v16 = a4;
  v17 = a5;
  v28 = a6;
  v29 = self;
  v30 = a7;
  options = self->_options;
  if (a9)
  {
    v19 = (self->_options & 4) != 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = options & 1;
  v21 = (options >> 1) & 1;
  v27 = v17;
  (*(v17 + 2))(v17, v16);
  v22 = options & v9;
  if (v22 == 1)
  {
    [v16 re_writeString:@"\n"];
  }

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = [v31 propertyCount];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __102__REExportedValueEncoder__writeCollection_toStream_startBlock_writerBlock_endBlock_wantsHeader_depth___block_invoke;
  v32[3] = &unk_2785F9FA8;
  v36 = v42;
  v38 = v19;
  v39 = v21;
  v40 = v9;
  v41 = v20;
  v23 = v16;
  v33 = v23;
  v37 = a9;
  v24 = v28;
  v34 = v29;
  v35 = v24;
  [v31 enumerateValuesUsingBlock:v32];
  if (v22)
  {
    if (a9)
    {
      if (a9 == 1)
      {
        v25 = @"    ";
      }

      else
      {
        v26 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(@"    ", "length") * a9}];
        do
        {
          [v26 appendString:@"    "];
          --v15;
        }

        while (v15);
        v25 = [v26 copy];
      }
    }

    else
    {
      v25 = &stru_283B97458;
    }

    [v23 re_writeString:v25];
  }

  v30[2](v30, v23);

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

- (id)_namesArrayFromArray:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [REExportedValue exportedValueForObject:v4];

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
            v11 = [v10 type];

            if (v11 == 3)
            {
              v25 = v5;

              v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v26 = v3;
              obj = v3;
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
                          v22 = [v21 stringValue];

                          if (v22)
                          {
                            [v28 addObject:v22];

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
              v3 = v26;
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

- (void)writeUnsupportedObject:(id)a3 toStream:(id)a4
{
  v10 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v10 objectValue];

    v8 = v7;
  }

  else
  {
    v8 = v10;
  }

  v11 = v8;
  v9 = [v8 description];
  [(REExportedValueEncoder *)self writeString:v9 toStream:v6];
}

@end