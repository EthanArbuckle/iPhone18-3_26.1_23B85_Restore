@interface RKEventIdentification
- ($A8567127CD1317684890FBE2DC5448B6)topClassification;
- (RKEventIdentification)initWithOwnedTokenSequences:(id)sequences probabilities:(float *)probabilities;
- (id)description;
- (void)dealloc;
- (void)enumerateClassifiedTokens:(id)tokens;
- (void)enumerateTopKClassificationsForEachString:(unint64_t)string block:(id)block;
- (void)getTopKClassifications:(unint64_t)classifications block:(id)block;
@end

@implementation RKEventIdentification

- (RKEventIdentification)initWithOwnedTokenSequences:(id)sequences probabilities:(float *)probabilities
{
  sequencesCopy = sequences;
  v11.receiver = self;
  v11.super_class = RKEventIdentification;
  v8 = [(RKEventIdentification *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_tokenSequences, sequences);
    v9->_probabilities = probabilities;
  }

  return v9;
}

- (void)dealloc
{
  free(self->_probabilities);
  v3.receiver = self;
  v3.super_class = RKEventIdentification;
  [(RKEventIdentification *)&v3 dealloc];
}

- (void)enumerateClassifiedTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = 0;
  probabilities = self->_probabilities;
  while (v5 < [(NSArray *)self->_tokenSequences count])
  {
    v7 = [(NSArray *)self->_tokenSequences objectAtIndex:v5];
    v8 = [v7 count];

    if (v8 >= kMaxSequenceLength)
    {
      v9 = kMaxSequenceLength;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = [(NSArray *)self->_tokenSequences objectAtIndex:v5];
        v12 = [v11 objectAtIndexedSubscript:v10];

        location = [v12 location];
        v14 = [v12 length];
        v16 = 0;
        v15[0] = v5;
        v15[1] = location;
        v15[2] = v14;
        tokensCopy[2](tokensCopy, v15, probabilities, &v16);
        LOBYTE(location) = v16;

        if (location)
        {
          goto LABEL_11;
        }

        probabilities += 5;
      }

      while (v9 != ++v10);
    }

    ++v5;
  }

LABEL_11:
}

- (void)enumerateTopKClassificationsForEachString:(unint64_t)string block:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v14 = self->_tokenSequences;
  v7 = [(NSArray *)v14 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v14);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) count];
        if (v11 >= kMaxSequenceLength)
        {
          v12 = kMaxSequenceLength;
        }

        else
        {
          v12 = v11;
        }

        findTopKClassifications(&(&v14)[-2 * string], string, selfCopy->_probabilities, v8, v12);
        blockCopy[2](blockCopy, &(&v14)[-2 * string]);
        v8 += v12;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSArray *)v14 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)getTopKClassifications:(unint64_t)classifications block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_tokenSequences;
  v8 = 0;
  v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) count];
        if (kMaxSequenceLength >= v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = kMaxSequenceLength;
        }

        v8 += v13;
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  findTopKClassifications(&v15 - classifications, classifications, self->_probabilities, 0, v8);
  blockCopy[2](blockCopy, &v15 - classifications);

  v14 = *MEMORY[0x277D85DE8];
}

- ($A8567127CD1317684890FBE2DC5448B6)topClassification
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4012000000;
  v10 = __Block_byref_object_copy__82;
  v11 = __Block_byref_object_dispose__83;
  v12 = "";
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__RKEventIdentification_topClassification__block_invoke;
  v6[3] = &unk_279B10A60;
  v6[4] = &v7;
  [(RKEventIdentification *)self getTopKClassifications:1 block:v6];
  v2 = v8[6];
  v3 = v8[7];
  _Block_object_dispose(&v7, 8);
  v4 = v2;
  v5 = v3;
  result.var1 = *&v5;
  result.var0 = v4;
  return result;
}

__n128 __42__RKEventIdentification_topClassification__block_invoke(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(*(*(a1 + 32) + 8) + 48) = *a2;
  return result;
}

- (id)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3;
  v9 = __Block_byref_object_dispose__3;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__RKEventIdentification_description__block_invoke;
  v4[3] = &unk_279B10A88;
  v4[4] = self;
  v4[5] = &v5;
  [(RKEventIdentification *)self getTopKClassifications:2 block:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __36__RKEventIdentification_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (*a2 > 4uLL)
  {
    v8 = @"INVALID";
  }

  else
  {
    v8 = off_279B10AC8[*a2];
  }

  v9 = *(a2 + 16);
  if (v9 > 4)
  {
    v10 = @"INVALID";
  }

  else
  {
    v10 = off_279B10AC8[v9];
  }

  v14 = v7;
  v11 = [v4 initWithFormat:@"[%@ %@=%0.2f, %@=%0.2f]", v7, v8, *(a2 + 8), v10, *(a2 + 24)];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

@end