@interface TILiveConversionSegments
- (BOOL)canMove:(BOOL)a3;
- (BOOL)didAccept;
- (TILiveConversionSegments)initWithSegments:(id)a3 at:(unint64_t)a4;
- (void)buildMarkedText;
- (void)clear;
- (void)commit;
- (void)didUpdateCandidate:(id)a3 with:(id)a4;
- (void)move:(BOOL)a3;
- (void)setPhraseBoundary:(unint64_t)a3;
@end

@implementation TILiveConversionSegments

- (TILiveConversionSegments)initWithSegments:(id)a3 at:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = TILiveConversionSegments;
  v7 = [(TILiveConversionSegments *)&v11 init];
  if (v7)
  {
    v8 = [v6 mutableCopy];
    rawSegments = v7->_rawSegments;
    v7->_rawSegments = v8;

    v7->_index = a4;
    [(TILiveConversionSegments *)v7 buildMarkedText];
  }

  return v7;
}

- (void)clear
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  rawSegments = self->_rawSegments;
  self->_rawSegments = v3;

  self->_index = 0x7FFFFFFFFFFFFFFFLL;

  [(TILiveConversionSegments *)self buildMarkedText];
}

- (void)commit
{
  v3 = [(TILiveConversionSegments *)self currentCandidate];
  if (v3)
  {
    v4 = v3;
    v5 = [(TILiveConversionSegments *)self index];
    v6 = [(NSMutableArray *)self->_rawSegments count];

    if (v5 < v6)
    {
      v14 = objc_alloc_init(MEMORY[0x29EDC7250]);
      v7 = [(TILiveConversionSegments *)self currentCandidate];
      v8 = [v7 label];
      [v14 setSurface:v8];

      v9 = [(TILiveConversionSegments *)self currentCandidate];
      v10 = [v9 input];
      [v14 setReading:v10];

      [(NSMutableArray *)self->_rawSegments replaceObjectAtIndex:[(TILiveConversionSegments *)self index] withObject:v14];
      v11 = [(TILiveConversionSegments *)self currentSegment];

      if (v11)
      {
        rawSegments = self->_rawSegments;
        v13 = [(TILiveConversionSegments *)self currentSegment];
        [(NSMutableArray *)rawSegments insertObject:v13 atIndex:[(TILiveConversionSegments *)self index]+ 1];
      }

      [(TILiveConversionSegments *)self setCurrentCandidate:0];
      [(TILiveConversionSegments *)self setCurrentSegment:0];
      [(TILiveConversionSegments *)self buildMarkedText];
    }
  }
}

- (BOOL)canMove:(BOOL)a3
{
  if (!a3)
  {
    return [(TILiveConversionSegments *)self index]!= 0;
  }

  v4 = [(TILiveConversionSegments *)self currentSegment];

  v5 = [(TILiveConversionSegments *)self index];
  v6 = [(TILiveConversionSegments *)self rawSegments];
  v7 = [v6 count];
  if (v4)
  {
    v8 = v5 >= v7;
  }

  else
  {
    v8 = v5 >= v7 - 1;
  }

  v9 = !v8;

  return v9;
}

- (void)move:(BOOL)a3
{
  v3 = a3;
  v5 = [(TILiveConversionSegments *)self index];
  v6 = v5 - 1;
  if (v3)
  {
    v6 = v5 + 1;
  }

  self->_index = v6;

  [(TILiveConversionSegments *)self buildMarkedText];
}

- (void)didUpdateCandidate:(id)a3 with:(id)a4
{
  v6 = a4;
  [(TILiveConversionSegments *)self setCurrentCandidate:a3];
  [(TILiveConversionSegments *)self setCurrentSegment:v6];

  [(TILiveConversionSegments *)self buildMarkedText];
}

- (BOOL)didAccept
{
  v3 = [(TILiveConversionSegments *)self rawSegments];
  [v3 removeObjectsInRange:{0, -[TILiveConversionSegments index](self, "index") + 1}];

  v4 = [(TILiveConversionSegments *)self currentSegment];

  if (v4)
  {
    v5 = [(TILiveConversionSegments *)self rawSegments];
    v6 = [(TILiveConversionSegments *)self currentSegment];
    [v5 insertObject:v6 atIndex:0];
  }

  [(TILiveConversionSegments *)self setCurrentCandidate:0];
  [(TILiveConversionSegments *)self setCurrentSegment:0];
  v7 = [(TILiveConversionSegments *)self rawSegments];
  v8 = [v7 count];

  if (v8)
  {
    [(TILiveConversionSegments *)self setIndex:0];
    [(TILiveConversionSegments *)self buildMarkedText];
  }

  return v8 != 0;
}

- (void)setPhraseBoundary:(unint64_t)a3
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v5 = [(TILiveConversionSegments *)self rawSegments];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __46__TILiveConversionSegments_setPhraseBoundary___block_invoke;
  v6[3] = &unk_29F3791C0;
  v6[5] = v7;
  v6[6] = a3;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];

  [(TILiveConversionSegments *)self buildMarkedText];
  _Block_object_dispose(v7, 8);
}

void __46__TILiveConversionSegments_setPhraseBoundary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 surface];
  *(*(*(a1 + 40) + 8) + 24) += [v7 length];

  if (*(a1 + 48) <= *(*(*(a1 + 40) + 8) + 24))
  {
    [*(a1 + 32) setIndex:a3];
    *a4 = 1;
  }
}

- (void)buildMarkedText
{
  v54 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v3 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v52 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v4 = [MEMORY[0x29EDB8DE8] array];
  v5 = [(TILiveConversionSegments *)self rawSegments];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x29EDBA000uLL;
    while (1)
    {
      v11 = [(TILiveConversionSegments *)self rawSegments];
      v12 = [v11 objectAtIndexedSubscript:v7];

      if (v7 == [(TILiveConversionSegments *)self index]&& ([(TILiveConversionSegments *)self currentCandidate], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
      {
        v14 = [(TILiveConversionSegments *)self currentCandidate];
        [v14 input];
        v15 = v8;
        v16 = v4;
        v17 = v3;
        v19 = v18 = v10;
        [v54 appendString:v19];

        v20 = [(TILiveConversionSegments *)self currentCandidate];
        v21 = [v20 label];
        [v17 appendString:v21];

        v22 = [(TILiveConversionSegments *)self currentCandidate];
        v23 = [v22 label];
        v53 = v15 + [v23 length];

        v24 = [(TILiveConversionSegments *)self currentCandidate];
        v25 = [v24 label];
        v26 = [v25 length];

        v10 = v18;
        v27 = [*(v18 + 360) valueWithRange:{v9, v26}];
        [v16 addObject:v27];

        v28 = [(TILiveConversionSegments *)self currentCandidate];
        v29 = [v28 label];
        v9 += [v29 length];

        v30 = [(TILiveConversionSegments *)self currentSegment];

        if (!v30)
        {
          v3 = v17;
          v4 = v16;
          v8 = v53;
          goto LABEL_13;
        }

        v31 = [(TILiveConversionSegments *)self currentSegment];
        v32 = [v31 reading];
        [v54 appendString:v32];

        v33 = [(TILiveConversionSegments *)self currentSegment];
        v34 = [v33 surface];
        [v17 appendString:v34];

        v35 = [(TILiveConversionSegments *)self currentSegment];
        v36 = [v35 surface];
        v37 = [v36 length];

        v38 = v37;
        v10 = v18;
        v39 = [*(v18 + 360) valueWithRange:{v9, v38}];
        [v16 addObject:v39];

        v40 = [(TILiveConversionSegments *)self currentSegment];
        v41 = [v40 surface];
        v9 += [v41 length];

        v3 = v17;
        v4 = v16;
        v8 = v53;
      }

      else
      {
        v42 = [v12 reading];
        [v54 appendString:v42];

        v43 = [v12 surface];
        [v3 appendString:v43];

        if ([(TILiveConversionSegments *)self index]>= v7)
        {
          v44 = [v12 surface];
          v8 = v8 + [v44 length];
        }

        if ([(TILiveConversionSegments *)self index]> v7)
        {
          v45 = [v12 surface];
          [v52 appendString:v45];
        }

        v46 = [v12 surface];
        v47 = [v46 length];

        v48 = [*(v10 + 360) valueWithRange:{v9, v47}];
        [v4 addObject:v48];

        v40 = [v12 surface];
        v9 += [v40 length];
      }

LABEL_13:
      ++v7;
      v49 = [(TILiveConversionSegments *)self rawSegments];
      v50 = [v49 count];

      if (v50 <= v7)
      {
        goto LABEL_17;
      }
    }
  }

  v8 = 0;
LABEL_17:
  [(TILiveConversionSegments *)self setRawInputString:v54];
  [(TILiveConversionSegments *)self setInputString:v3];
  [(TILiveConversionSegments *)self setInputIndex:v8];
  [(TILiveConversionSegments *)self setAutoCommitString:v52];
  v51 = [v4 copy];
  [(TILiveConversionSegments *)self setSegmentRanges:v51];
}

@end