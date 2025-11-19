@interface _PSCNAutocompleteFeedbackInteractionIterator
- (_PSCNAutocompleteFeedbackInteractionIterator)initWithInteractionStore:(id)a3 bundleIds:(id)a4 startDate:(id)a5 batchSize:(unint64_t)a6;
- (id)fastForwardToDate:(id)a3;
- (id)nextObject;
- (void)fetchResults;
@end

@implementation _PSCNAutocompleteFeedbackInteractionIterator

- (_PSCNAutocompleteFeedbackInteractionIterator)initWithInteractionStore:(id)a3 bundleIds:(id)a4 startDate:(id)a5 batchSize:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = _PSCNAutocompleteFeedbackInteractionIterator;
  v14 = [(_PSCNAutocompleteFeedbackInteractionIterator *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_interactionStore, a3);
    objc_storeStrong(&v15->_bundleIds, a4);
    v15->_batchSize = a6;
    objc_storeStrong(&v15->_startDate, a5);
    v16 = [MEMORY[0x1E695DF00] now];
    endDate = v15->_endDate;
    v15->_endDate = v16;

    results = v15->_results;
    v15->_results = 0;

    lastItem = v15->_lastItem;
    v15->_lastItem = 0;

    v15->_resultsIndex = 0;
    v15->_resultsBatch = 0;
    v15->_isExhausted = 0;
  }

  return v15;
}

- (void)fetchResults
{
  interactionStore = self->_interactionStore;
  startDate = self->_startDate;
  endDate = self->_endDate;
  bundleIds = self->_bundleIds;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F2D8BCB8, &unk_1F2D8BCD0, 0}];
  objc_autoreleasePoolPop(v7);
  LOBYTE(v13) = 1;
  LOWORD(v12) = 256;
  v9 = [_PSInteractionStoreUtils interactionsFromStore:interactionStore startDate:startDate tillDate:endDate withMechanisms:0 withAccount:0 withBundleIds:bundleIds withTargetBundleIds:0 withDirections:v8 withNsUserName:0 singleRecipient:v12 excludeAnonymousTemporaryRecipients:self->_batchSize fetchLimit:self->_resultsBatch * self->_batchSize fetchOffset:v13 sortAscending:?];
  results = self->_results;
  self->_results = v9;

  if (![(NSArray *)self->_results count])
  {
    v11 = self->_results;
    self->_results = 0;

    self->_isExhausted = 1;
  }
}

- (id)nextObject
{
  if (!self->_results && !self->_isExhausted)
  {
    [(_PSCNAutocompleteFeedbackInteractionIterator *)self fetchResults];
  }

  if (self->_isExhausted)
  {
    lastItem = self->_lastItem;
    self->_lastItem = 0;

    v4 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_results objectAtIndexedSubscript:self->_resultsIndex];
    v6 = self->_lastItem;
    self->_lastItem = v5;

    if (self->_resultsIndex == self->_batchSize - 1)
    {
      ++self->_resultsBatch;
      [(_PSCNAutocompleteFeedbackInteractionIterator *)self fetchResults];
      self->_resultsIndex = 0;
    }

    else if ([(NSArray *)self->_results count]< self->_batchSize && (resultsIndex = self->_resultsIndex, resultsIndex == [(NSArray *)self->_results count]- 1))
    {
      results = self->_results;
      self->_results = 0;

      self->_isExhausted = 1;
    }

    else
    {
      ++self->_resultsIndex;
    }

    v4 = self->_lastItem;
  }

  return v4;
}

- (id)fastForwardToDate:(id)a3
{
  v4 = a3;
  if (!self->_results && !self->_isExhausted)
  {
    [(_PSCNAutocompleteFeedbackInteractionIterator *)self fetchResults];
  }

  lastItem = self->_lastItem;
  if (lastItem && (-[_CDInteraction startDate](lastItem, "startDate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 compare:v4], v6, v7 == 1))
  {
    v8 = self->_lastItem;
  }

  else if (self->_isExhausted)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    while (!self->_isExhausted)
    {
      while (1)
      {
        v12 = [(_PSCNAutocompleteFeedbackInteractionIterator *)self nextObject];

        v8 = v12;
        if (!v12)
        {
          break;
        }

        v10 = [(_CDInteraction *)v12 startDate];
        v11 = [v10 compare:v4];

        if (v11 != -1)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_9:

  return v8;
}

@end