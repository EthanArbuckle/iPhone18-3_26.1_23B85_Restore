@interface PXGShaderSource
- (BOOL)isEqual:(id)equal;
- (PXGShaderSource)init;
- (PXGShaderSource)initWithSource:(id)source;
- (int64_t)length;
- (unint64_t)hash;
- (void)_parseShader;
@end

@implementation PXGShaderSource

- (void)_parseShader
{
  v17 = +[PXGShaderFunction shaderFunctionByName];
  source = [(PXGShaderSource *)self source];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__16912;
  v36[4] = __Block_byref_object_dispose__16913;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__16912;
  v34[4] = __Block_byref_object_dispose__16913;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__16912;
  v32[4] = __Block_byref_object_dispose__16913;
  v33 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__16912;
  v30[4] = __Block_byref_object_dispose__16913;
  v31 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __31__PXGShaderSource__parseShader__block_invoke;
  v18[3] = &unk_2782AB448;
  v23 = &v38;
  v24 = v30;
  v18[4] = self;
  v25 = v34;
  v26 = v36;
  v29 = a2;
  v8 = v17;
  v19 = v8;
  v27 = v42;
  v28 = v32;
  v9 = v5;
  v20 = v9;
  v10 = v6;
  v21 = v10;
  v11 = v7;
  v22 = v11;
  [source enumerateLinesUsingBlock:v18];
  if (v39[3])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGShaderSource.m" lineNumber:214 description:{@"Incorrect parsing of:%@", source}];
  }

  v12 = [v9 copy];
  sourceByShaderFunction = self->_sourceByShaderFunction;
  self->_sourceByShaderFunction = v12;

  v14 = [v11 copy];
  otherSource = self->_otherSource;
  self->_otherSource = v14;

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v42, 8);
}

void __31__PXGShaderSource__parseShader__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    goto LABEL_9;
  }

  v4 = *(*(*(a1 + 80) + 8) + 40);
  if (!v4)
  {
    v32 = 0;
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^([^\\s/]*)[\\s]+([^\\s]+)\\([^\\(\\)]*\\)[^\\(\\)]*$" options:0 error:&v32];
    v6 = v32;
    v7 = *(*(a1 + 80) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    if (v6)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      [v25 handleFailureInMethod:*(a1 + 120) object:*(a1 + 32) file:@"PXGShaderSource.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"!error"}];
    }

    v4 = *(*(*(a1 + 80) + 8) + 40);
  }

  v9 = [v4 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 px_matchAtIndex:2 forString:v3];
    v12 = *(*(a1 + 88) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 88) + 8) + 40)];
    v15 = *(*(a1 + 96) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 72) + 8) + 24))
  {
LABEL_9:
    v17 = [v3 length];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __31__PXGShaderSource__parseShader__block_invoke_2;
    v26[3] = &unk_2782AB420;
    v29 = vextq_s8(*(a1 + 96), *(a1 + 96), 8uLL);
    v30 = *(a1 + 112);
    v18 = *(a1 + 72);
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v31 = *(a1 + 88);
    *&v21 = *(a1 + 64);
    *(&v21 + 1) = v18;
    *&v22 = v19;
    *(&v22 + 1) = v20;
    v27 = v22;
    v28 = v21;
    [v3 enumerateSubstringsInRange:0 options:v17 usingBlock:{2, v26}];
    v23 = *(*(*(a1 + 72) + 8) + 24);
    if (v23 && (v23 != 1 || !*(*(*(a1 + 96) + 8) + 40)))
    {
      [*(*(*(a1 + 112) + 8) + 40) appendString:@"\n"];
      v24 = *(*(a1 + 72) + 8);
      if (*(v24 + 24) == 4)
      {
        *(v24 + 24) = 2;
      }
    }
  }
}

void __31__PXGShaderSource__parseShader__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a2;
  v10 = v9;
  v33 = v9;
  if (*(*(*(a1 + 56) + 8) + 24) == 2)
  {
    v11 = [v9 isEqualToString:@"}"];
    v10 = v33;
    if (v11)
    {
      if (!--*(*(*(a1 + 64) + 8) + 24))
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
        v12 = *(*(*(a1 + 72) + 8) + 40);
        v13 = *(*(a1 + 80) + 8);
        v14 = *(v13 + 40);
        if (v12)
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = [v12 assignmentVariable];
          v17 = [v15 stringWithFormat:@"$1%@ = $2", v16];
          [v14 replaceOccurrencesOfString:@"([ ]*)return (.*)" withString:v17 options:1024 range:{0, objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "length")}];

          v18 = *(*(*(a1 + 80) + 8) + 40);
          v19 = [MEMORY[0x277CCA900] newlineCharacterSet];
          v20 = [v18 stringByTrimmingCharactersInSet:v19];
          [*(a1 + 32) setObject:v20 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
        }

        else
        {
          [*(v13 + 40) appendString:@"}\n"];
          if (([*(a1 + 40) containsObject:*(*(*(a1 + 88) + 8) + 40)] & 1) == 0)
          {
            [*(a1 + 40) addObject:*(*(*(a1 + 88) + 8) + 40)];
            [*(a1 + 48) appendString:*(*(*(a1 + 80) + 8) + 40)];
            [*(a1 + 48) appendString:@"\n"];
          }
        }

        [*(*(*(a1 + 80) + 8) + 40) deleteCharactersInRange:{0, objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "length")}];
        *a7 = 1;
        v10 = v33;
      }
    }
  }

  v21 = *(*(*(a1 + 56) + 8) + 24);
  if (!v21)
  {
    goto LABEL_22;
  }

  if (v21 == 1 && *(*(*(a1 + 72) + 8) + 40))
  {
    goto LABEL_23;
  }

  [*(*(*(a1 + 80) + 8) + 40) appendString:v10];
  v22 = *(*(*(a1 + 56) + 8) + 24);
  if (v22 > 2)
  {
    if (v22 <= 4)
    {
      if (v22 != 3)
      {
        v23 = [v33 isEqualToString:@"\n"];
        v10 = v33;
        if (!v23)
        {
          goto LABEL_38;
        }

        v24 = *(*(a1 + 56) + 8);
        v25 = 2;
        goto LABEL_26;
      }

      if ([v33 isEqualToString:@"/"])
      {
        v26 = *(*(a1 + 56) + 8);
        v27 = 4;
        goto LABEL_37;
      }

      v31 = [v33 isEqualToString:@"*"];
      v26 = *(*(a1 + 56) + 8);
      if (v31)
      {
LABEL_36:
        v27 = 5;
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    v10 = v33;
    if (v22 != 5)
    {
      if (v22 != 6)
      {
        goto LABEL_38;
      }

      v29 = [v33 isEqualToString:@"/"];
      v26 = *(*(a1 + 56) + 8);
      if (!v29)
      {
        goto LABEL_36;
      }

LABEL_30:
      v27 = 2;
      goto LABEL_37;
    }

    v30 = [v33 isEqualToString:@"*"];
    v10 = v33;
    if (!v30)
    {
      goto LABEL_38;
    }

    v24 = *(*(a1 + 56) + 8);
    v25 = 6;
LABEL_26:
    *(v24 + 24) = v25;
    goto LABEL_38;
  }

  v10 = v33;
  if (!v22)
  {
LABEL_22:
    *a7 = 1;
    goto LABEL_38;
  }

  if (v22 == 1)
  {
LABEL_23:
    v28 = [v10 isEqualToString:@"{"];
    v10 = v33;
    if (!v28)
    {
      goto LABEL_38;
    }

    *(*(*(a1 + 56) + 8) + 24) = 2;
LABEL_25:
    v24 = *(*(a1 + 64) + 8);
    v25 = *(v24 + 24) + 1;
    goto LABEL_26;
  }

  if (v22 != 2)
  {
    goto LABEL_38;
  }

  if ([v33 isEqualToString:@"/"])
  {
    v26 = *(*(a1 + 56) + 8);
    v27 = 3;
LABEL_37:
    *(v26 + 24) = v27;
    v10 = v33;
    goto LABEL_38;
  }

  v32 = [v33 isEqualToString:@"{"];
  v10 = v33;
  if (v32)
  {
    goto LABEL_25;
  }

LABEL_38:
}

- (int64_t)length
{
  source = [(PXGShaderSource *)self source];
  v3 = [source length];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    source = [(PXGShaderSource *)self source];
    source2 = [v5 source];
    if (source == source2)
    {
      v8 = 1;
    }

    else
    {
      v8 = [source isEqual:source2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  source = [(PXGShaderSource *)self source];
  v3 = [source hash];

  return v3;
}

- (PXGShaderSource)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGShaderSource.m" lineNumber:55 description:{@"%s is not available as initializer", "-[PXGShaderSource init]"}];

  abort();
}

- (PXGShaderSource)initWithSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGShaderSource.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"source != nil"}];
  }

  v20.receiver = self;
  v20.super_class = PXGShaderSource;
  v7 = [(PXGShaderSource *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_source, source);
    [(PXGShaderSource *)v8 _parseShader];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v9 = +[PXGShaderFunction shaderFunctions];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__PXGShaderSource_initWithSource___block_invoke;
    v13[3] = &unk_2782AB3F8;
    v10 = v8;
    v14 = v10;
    v15 = &v16;
    [v9 enumerateObjectsUsingBlock:v13];

    v10->_isOpaque = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  return v8;
}

void __34__PXGShaderSource_initWithSource___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) sourceForShaderFunction:?];
  if (v3 && ([v4 isOpaque] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

@end