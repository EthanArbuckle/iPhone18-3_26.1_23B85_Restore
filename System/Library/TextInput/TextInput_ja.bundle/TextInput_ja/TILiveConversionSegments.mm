@interface TILiveConversionSegments
- (BOOL)canMove:(BOOL)move;
- (BOOL)didAccept;
- (TILiveConversionSegments)initWithSegments:(id)segments at:(unint64_t)at;
- (void)buildMarkedText;
- (void)clear;
- (void)commit;
- (void)didUpdateCandidate:(id)candidate with:(id)with;
- (void)move:(BOOL)move;
- (void)setPhraseBoundary:(unint64_t)boundary;
@end

@implementation TILiveConversionSegments

- (TILiveConversionSegments)initWithSegments:(id)segments at:(unint64_t)at
{
  segmentsCopy = segments;
  v11.receiver = self;
  v11.super_class = TILiveConversionSegments;
  v7 = [(TILiveConversionSegments *)&v11 init];
  if (v7)
  {
    v8 = [segmentsCopy mutableCopy];
    rawSegments = v7->_rawSegments;
    v7->_rawSegments = v8;

    v7->_index = at;
    [(TILiveConversionSegments *)v7 buildMarkedText];
  }

  return v7;
}

- (void)clear
{
  array = [MEMORY[0x29EDB8DE8] array];
  rawSegments = self->_rawSegments;
  self->_rawSegments = array;

  self->_index = 0x7FFFFFFFFFFFFFFFLL;

  [(TILiveConversionSegments *)self buildMarkedText];
}

- (void)commit
{
  currentCandidate = [(TILiveConversionSegments *)self currentCandidate];
  if (currentCandidate)
  {
    v4 = currentCandidate;
    index = [(TILiveConversionSegments *)self index];
    v6 = [(NSMutableArray *)self->_rawSegments count];

    if (index < v6)
    {
      v14 = objc_alloc_init(MEMORY[0x29EDC7250]);
      currentCandidate2 = [(TILiveConversionSegments *)self currentCandidate];
      label = [currentCandidate2 label];
      [v14 setSurface:label];

      currentCandidate3 = [(TILiveConversionSegments *)self currentCandidate];
      input = [currentCandidate3 input];
      [v14 setReading:input];

      [(NSMutableArray *)self->_rawSegments replaceObjectAtIndex:[(TILiveConversionSegments *)self index] withObject:v14];
      currentSegment = [(TILiveConversionSegments *)self currentSegment];

      if (currentSegment)
      {
        rawSegments = self->_rawSegments;
        currentSegment2 = [(TILiveConversionSegments *)self currentSegment];
        [(NSMutableArray *)rawSegments insertObject:currentSegment2 atIndex:[(TILiveConversionSegments *)self index]+ 1];
      }

      [(TILiveConversionSegments *)self setCurrentCandidate:0];
      [(TILiveConversionSegments *)self setCurrentSegment:0];
      [(TILiveConversionSegments *)self buildMarkedText];
    }
  }
}

- (BOOL)canMove:(BOOL)move
{
  if (!move)
  {
    return [(TILiveConversionSegments *)self index]!= 0;
  }

  currentSegment = [(TILiveConversionSegments *)self currentSegment];

  index = [(TILiveConversionSegments *)self index];
  rawSegments = [(TILiveConversionSegments *)self rawSegments];
  v7 = [rawSegments count];
  if (currentSegment)
  {
    v8 = index >= v7;
  }

  else
  {
    v8 = index >= v7 - 1;
  }

  v9 = !v8;

  return v9;
}

- (void)move:(BOOL)move
{
  moveCopy = move;
  index = [(TILiveConversionSegments *)self index];
  v6 = index - 1;
  if (moveCopy)
  {
    v6 = index + 1;
  }

  self->_index = v6;

  [(TILiveConversionSegments *)self buildMarkedText];
}

- (void)didUpdateCandidate:(id)candidate with:(id)with
{
  withCopy = with;
  [(TILiveConversionSegments *)self setCurrentCandidate:candidate];
  [(TILiveConversionSegments *)self setCurrentSegment:withCopy];

  [(TILiveConversionSegments *)self buildMarkedText];
}

- (BOOL)didAccept
{
  rawSegments = [(TILiveConversionSegments *)self rawSegments];
  [rawSegments removeObjectsInRange:{0, -[TILiveConversionSegments index](self, "index") + 1}];

  currentSegment = [(TILiveConversionSegments *)self currentSegment];

  if (currentSegment)
  {
    rawSegments2 = [(TILiveConversionSegments *)self rawSegments];
    currentSegment2 = [(TILiveConversionSegments *)self currentSegment];
    [rawSegments2 insertObject:currentSegment2 atIndex:0];
  }

  [(TILiveConversionSegments *)self setCurrentCandidate:0];
  [(TILiveConversionSegments *)self setCurrentSegment:0];
  rawSegments3 = [(TILiveConversionSegments *)self rawSegments];
  v8 = [rawSegments3 count];

  if (v8)
  {
    [(TILiveConversionSegments *)self setIndex:0];
    [(TILiveConversionSegments *)self buildMarkedText];
  }

  return v8 != 0;
}

- (void)setPhraseBoundary:(unint64_t)boundary
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  rawSegments = [(TILiveConversionSegments *)self rawSegments];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __46__TILiveConversionSegments_setPhraseBoundary___block_invoke;
  v6[3] = &unk_29F3791C0;
  v6[5] = v7;
  v6[6] = boundary;
  v6[4] = self;
  [rawSegments enumerateObjectsUsingBlock:v6];

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
  array = [MEMORY[0x29EDB8DE8] array];
  rawSegments = [(TILiveConversionSegments *)self rawSegments];
  v6 = [rawSegments count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x29EDBA000uLL;
    while (1)
    {
      rawSegments2 = [(TILiveConversionSegments *)self rawSegments];
      v12 = [rawSegments2 objectAtIndexedSubscript:v7];

      if (v7 == [(TILiveConversionSegments *)self index]&& ([(TILiveConversionSegments *)self currentCandidate], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
      {
        currentCandidate = [(TILiveConversionSegments *)self currentCandidate];
        [currentCandidate input];
        v15 = v8;
        v16 = array;
        v17 = v3;
        v19 = v18 = v10;
        [v54 appendString:v19];

        currentCandidate2 = [(TILiveConversionSegments *)self currentCandidate];
        label = [currentCandidate2 label];
        [v17 appendString:label];

        currentCandidate3 = [(TILiveConversionSegments *)self currentCandidate];
        label2 = [currentCandidate3 label];
        v53 = v15 + [label2 length];

        currentCandidate4 = [(TILiveConversionSegments *)self currentCandidate];
        label3 = [currentCandidate4 label];
        v26 = [label3 length];

        v10 = v18;
        v27 = [*(v18 + 360) valueWithRange:{v9, v26}];
        [v16 addObject:v27];

        currentCandidate5 = [(TILiveConversionSegments *)self currentCandidate];
        label4 = [currentCandidate5 label];
        v9 += [label4 length];

        currentSegment = [(TILiveConversionSegments *)self currentSegment];

        if (!currentSegment)
        {
          v3 = v17;
          array = v16;
          v8 = v53;
          goto LABEL_13;
        }

        currentSegment2 = [(TILiveConversionSegments *)self currentSegment];
        reading = [currentSegment2 reading];
        [v54 appendString:reading];

        currentSegment3 = [(TILiveConversionSegments *)self currentSegment];
        surface = [currentSegment3 surface];
        [v17 appendString:surface];

        currentSegment4 = [(TILiveConversionSegments *)self currentSegment];
        surface2 = [currentSegment4 surface];
        v37 = [surface2 length];

        v38 = v37;
        v10 = v18;
        v39 = [*(v18 + 360) valueWithRange:{v9, v38}];
        [v16 addObject:v39];

        currentSegment5 = [(TILiveConversionSegments *)self currentSegment];
        surface3 = [currentSegment5 surface];
        v9 += [surface3 length];

        v3 = v17;
        array = v16;
        v8 = v53;
      }

      else
      {
        reading2 = [v12 reading];
        [v54 appendString:reading2];

        surface4 = [v12 surface];
        [v3 appendString:surface4];

        if ([(TILiveConversionSegments *)self index]>= v7)
        {
          surface5 = [v12 surface];
          v8 = v8 + [surface5 length];
        }

        if ([(TILiveConversionSegments *)self index]> v7)
        {
          surface6 = [v12 surface];
          [v52 appendString:surface6];
        }

        surface7 = [v12 surface];
        v47 = [surface7 length];

        v48 = [*(v10 + 360) valueWithRange:{v9, v47}];
        [array addObject:v48];

        currentSegment5 = [v12 surface];
        v9 += [currentSegment5 length];
      }

LABEL_13:
      ++v7;
      rawSegments3 = [(TILiveConversionSegments *)self rawSegments];
      v50 = [rawSegments3 count];

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
  v51 = [array copy];
  [(TILiveConversionSegments *)self setSegmentRanges:v51];
}

@end