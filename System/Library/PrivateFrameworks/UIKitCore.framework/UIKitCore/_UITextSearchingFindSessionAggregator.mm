@interface _UITextSearchingFindSessionAggregator
- (NSOrderedSet)allFoundRanges;
- (UITextSearchingFindSession)session;
- (_UITextSearchingFindSessionAggregator)initWithSession:(id)session;
- (void)_performOnMainIfValid:(id)valid;
- (void)foundRange:(id)range forSearchString:(id)string inDocument:(id)document;
- (void)invalidateFoundRange:(id)range inDocument:(id)document;
@end

@implementation _UITextSearchingFindSessionAggregator

- (_UITextSearchingFindSessionAggregator)initWithSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = _UITextSearchingFindSessionAggregator;
  v5 = [(_UITextSearchingFindSessionAggregator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_valid = 1;
    objc_storeWeak(&v5->_session, sessionCopy);
  }

  return v6;
}

- (void)_performOnMainIfValid:(id)valid
{
  validCopy = valid;
  if ([(_UITextSearchingFindSessionAggregator *)self isValid])
  {
    if (pthread_main_np() == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_session);
      validCopy[2](validCopy, WeakRetained);
    }

    else
    {
      objc_copyWeak(&to, &self->_session);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63___UITextSearchingFindSessionAggregator__performOnMainIfValid___block_invoke;
      block[3] = &unk_1E71036E8;
      objc_copyWeak(&v8, &to);
      v7 = validCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v8);
      objc_destroyWeak(&to);
    }
  }
}

- (NSOrderedSet)allFoundRanges
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  _allFoundRanges = [WeakRetained _allFoundRanges];

  return _allFoundRanges;
}

- (void)foundRange:(id)range forSearchString:(id)string inDocument:(id)document
{
  rangeCopy = range;
  stringCopy = string;
  documentCopy = document;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79___UITextSearchingFindSessionAggregator_foundRange_forSearchString_inDocument___block_invoke;
  v14[3] = &unk_1E7122DA0;
  v15 = rangeCopy;
  v16 = stringCopy;
  v17 = documentCopy;
  v11 = documentCopy;
  v12 = stringCopy;
  v13 = rangeCopy;
  [(_UITextSearchingFindSessionAggregator *)self _performOnMainIfValid:v14];
}

- (void)invalidateFoundRange:(id)range inDocument:(id)document
{
  rangeCopy = range;
  documentCopy = document;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73___UITextSearchingFindSessionAggregator_invalidateFoundRange_inDocument___block_invoke;
  v10[3] = &unk_1E7122DC8;
  v11 = rangeCopy;
  v12 = documentCopy;
  v8 = documentCopy;
  v9 = rangeCopy;
  [(_UITextSearchingFindSessionAggregator *)self _performOnMainIfValid:v10];
}

- (UITextSearchingFindSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end