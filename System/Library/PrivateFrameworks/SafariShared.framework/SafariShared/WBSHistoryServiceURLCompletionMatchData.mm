@interface WBSHistoryServiceURLCompletionMatchData
- (BOOL)matchesAutocompleteTrigger:(id)trigger isStrengthened:(BOOL)strengthened;
- (NSString)originalURLString;
- (WBSHistoryServiceURLCompletionMatchData)initWithLastVisitWasFailure:(BOOL)failure visitWasFromThisDevice:(BOOL)device visitWasClientError:(BOOL)error;
- (WBSHistoryServiceURLCompletionMatchData)initWithStreamData:(void *)data entries:(id)entries;
- (float)topSitesScoreForPageTitleAtTime:(double)time;
- (float)topSitesScoreForURLStringAtIndex:(unint64_t)index atTime:(double)time;
- (id)pageTitleAtIndex:(unint64_t)index;
- (id)userVisibleURLStringAtIndex:(unint64_t)index;
- (int64_t)visitCountScoreForPageTitleAtTime;
- (int64_t)visitCountScoreForURLStringAtIndex:(unint64_t)index;
- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)block;
- (void)enumeratePageTitlesUsingBlock:(id)block;
- (void)enumerateUserVisibleURLsUsingBlock:(id)block;
- (void)setAutocompleteTriggers:(const void *)triggers length:(unint64_t)length;
@end

@implementation WBSHistoryServiceURLCompletionMatchData

- (WBSHistoryServiceURLCompletionMatchData)initWithLastVisitWasFailure:(BOOL)failure visitWasFromThisDevice:(BOOL)device visitWasClientError:(BOOL)error
{
  v13.receiver = self;
  v13.super_class = WBSHistoryServiceURLCompletionMatchData;
  v8 = [(WBSHistoryServiceURLCompletionMatchData *)&v13 init];
  if (v8)
  {
    p_var0 = operator new(0x38uLL);
    p_var0[6] = 0;
    *(p_var0 + 1) = 0u;
    *(p_var0 + 2) = 0u;
    *p_var0 = 0u;
    ptr = v8->_streamData.__ptr_;
    v8->_streamData.__ptr_ = p_var0;
    if (ptr)
    {
      MEMORY[0x1BFB13480](ptr, 0x10C0C40CCADEA1DLL);
      p_var0 = &v8->_streamData.__ptr_->var0;
    }

    *p_var0 = 0x3800000006;
    *(p_var0 + 48) = failure;
    *(p_var0 + 49) = device;
    *(p_var0 + 50) = error;
    v11 = v8;
  }

  return v8;
}

- (WBSHistoryServiceURLCompletionMatchData)initWithStreamData:(void *)data entries:(id)entries
{
  entriesCopy = entries;
  v14.receiver = self;
  v14.super_class = WBSHistoryServiceURLCompletionMatchData;
  v7 = [(WBSHistoryServiceURLCompletionMatchData *)&v14 init];
  if (v7)
  {
    v8 = [entriesCopy copy];
    entries = v7->_entries;
    v7->_entries = v8;

    v10 = *data;
    *data = 0;
    ptr = v7->_streamData.__ptr_;
    v7->_streamData.__ptr_ = v10;
    if (ptr)
    {
      MEMORY[0x1BFB13480](ptr, 0x10C0C40CCADEA1DLL);
    }

    v12 = v7;
  }

  return v7;
}

- (void)setAutocompleteTriggers:(const void *)triggers length:(unint64_t)length
{
  lengthCopy = length;
  v7 = operator new(length + 56);
  v8 = v7;
  ptr = self->_streamData.__ptr_;
  v11 = *&ptr->var2;
  v10 = *&ptr->var4;
  v12 = *&ptr->var0.var0;
  *&v7->var6 = *&ptr->var6;
  *&v7->var2 = v11;
  *&v7->var4 = v10;
  *&v7->var0.var0 = v12;
  if (triggers)
  {
    v13 = v7 + 1;
    memcpy(&v7[1], triggers, lengthCopy);
  }

  else
  {
    v13 = 0;
    lengthCopy = 0;
  }

  v8->var2 = v13;
  v8->var3 = lengthCopy;
  self->_streamData.__ptr_ = v8;

  JUMPOUT(0x1BFB13480);
}

- (void)enumeratePageTitlesUsingBlock:(id)block
{
  blockCopy = block;
  firstObject = [(NSArray *)self->_entries firstObject];
  v8 = 0;
  title = [firstObject title];

  if (title)
  {
    title2 = [firstObject title];
    blockCopy[2](blockCopy, title2, 0, &v8);
  }
}

- (id)pageTitleAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_entries count])
  {
    firstObject = [(NSArray *)self->_entries firstObject];
    title = [firstObject title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (void)enumerateUserVisibleURLsUsingBlock:(id)block
{
  blockCopy = block;
  entries = self->_entries;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WBSHistoryServiceURLCompletionMatchData_enumerateUserVisibleURLsUsingBlock___block_invoke;
  v7[3] = &unk_1E7FC8070;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSArray *)entries enumerateObjectsUsingBlock:v7];
}

void __78__WBSHistoryServiceURLCompletionMatchData_enumerateUserVisibleURLsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v8 = [a2 url];
  v7 = [v8 safari_userVisibleURL];
  (*(v6 + 16))(v6, v7, a3, a4);
}

- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)block
{
  blockCopy = block;
  entries = self->_entries;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__WBSHistoryServiceURLCompletionMatchData_enumeratePageTitlesAndUserVisibleURLsUsingBlock___block_invoke;
  v7[3] = &unk_1E7FC8098;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSArray *)entries enumerateObjectsUsingBlock:v7];
}

void __91__WBSHistoryServiceURLCompletionMatchData_enumeratePageTitlesAndUserVisibleURLsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v7 = *(a1 + 40);
  v8 = [*(*(a1 + 32) + 32) firstObject];
  v9 = [v8 title];
  v10 = [v12 url];
  v11 = [v10 safari_userVisibleURL];
  (*(v7 + 16))(v7, v9, 0, v11, a3, a4);
}

- (id)userVisibleURLStringAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_entries count]<= index)
  {
    safari_userVisibleURL = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_entries objectAtIndexedSubscript:index];
    v6 = [v5 url];
    safari_userVisibleURL = [v6 safari_userVisibleURL];
  }

  return safari_userVisibleURL;
}

- (NSString)originalURLString
{
  if ([(NSArray *)self->_entries count])
  {
    firstObject = [(NSArray *)self->_entries firstObject];
    v4 = [firstObject url];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)matchesAutocompleteTrigger:(id)trigger isStrengthened:(BOOL)strengthened
{
  strengthenedCopy = strengthened;
  triggerCopy = trigger;
  if (self->_streamData.__ptr_->var2)
  {
    if (!self->_autocompleteTriggersAsStringArray)
    {
      v7 = MEMORY[0x1E696AE40];
      v8 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v9 = [v7 propertyListWithData:v8 options:0 format:0 error:0];
      autocompleteTriggersAsStringArray = self->_autocompleteTriggersAsStringArray;
      self->_autocompleteTriggersAsStringArray = v9;
    }

    v11 = [(WBSHistoryServiceURLCompletionMatchData *)self pageTitleAtIndex:0];
    originalURLString = [(WBSHistoryServiceURLCompletionMatchData *)self originalURLString];
    v13 = [WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:triggerCopy title:v11 urlString:originalURLString autoCompleteTriggers:self->_autocompleteTriggersAsStringArray isStrengthened:strengthenedCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (float)topSitesScoreForURLStringAtIndex:(unint64_t)index atTime:(double)time
{
  v6 = 0.0;
  if ([(NSArray *)self->_entries count]> index)
  {
    v7 = [(NSArray *)self->_entries objectAtIndexedSubscript:index];
    [v7 topSitesScore];
    v6 = v8;
  }

  return v6;
}

- (float)topSitesScoreForPageTitleAtTime:(double)time
{
  if (![(NSArray *)self->_entries count])
  {
    return 0.0;
  }

  firstObject = [(NSArray *)self->_entries firstObject];
  [firstObject topSitesScore];
  v6 = v5;

  return v6;
}

- (int64_t)visitCountScoreForPageTitleAtTime
{
  if (![(NSArray *)self->_entries count])
  {
    return -1;
  }

  firstObject = [(NSArray *)self->_entries firstObject];
  visitCountScore = [firstObject visitCountScore];

  return visitCountScore;
}

- (int64_t)visitCountScoreForURLStringAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_entries count]<= index)
  {
    return -1;
  }

  v5 = [(NSArray *)self->_entries objectAtIndexedSubscript:index];
  visitCountScore = [v5 visitCountScore];

  return visitCountScore;
}

@end