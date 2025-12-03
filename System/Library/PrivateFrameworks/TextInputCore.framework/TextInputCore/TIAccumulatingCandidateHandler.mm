@interface TIAccumulatingCandidateHandler
- (TIAccumulatingCandidateHandler)initWithWrappedCandidateHandler:(id)handler handlerBlock:(id)block resultSetHandlerBlock:(id)handlerBlock;
- (void)close;
- (void)dealloc;
@end

@implementation TIAccumulatingCandidateHandler

- (void)close
{
  if (self->_status != 2)
  {
    self->_status = 2;
    candidateHandler = [(TIAccumulatingCandidateHandler *)self candidateHandler];

    if (candidateHandler)
    {
      candidateHandler2 = [(TIAccumulatingCandidateHandler *)self candidateHandler];
      candidates = [(TIAccumulatingCandidateHandler *)self candidates];
      if (candidates)
      {
        (candidateHandler2)[2](candidateHandler2, candidates);
      }

      else
      {
        v7 = [MEMORY[0x277D6F328] listWithCorrections:0 predictions:0];
        (candidateHandler2)[2](candidateHandler2, v7);
      }
    }

    candidateResultSetHandler = [(TIAccumulatingCandidateHandler *)self candidateResultSetHandler];

    if (candidateResultSetHandler)
    {
      candidateResultSetHandler2 = [(TIAccumulatingCandidateHandler *)self candidateResultSetHandler];
      candidateResultSet = [(TIAccumulatingCandidateHandler *)self candidateResultSet];
      (candidateResultSetHandler2)[2](candidateResultSetHandler2, candidateResultSet);
    }

    wrappedCandidateHandler = self->_wrappedCandidateHandler;

    [(TICandidateHandler *)wrappedCandidateHandler close];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TIAccumulatingCandidateHandler;
  [(TIAccumulatingCandidateHandler *)&v2 dealloc];
}

- (TIAccumulatingCandidateHandler)initWithWrappedCandidateHandler:(id)handler handlerBlock:(id)block resultSetHandlerBlock:(id)handlerBlock
{
  handlerCopy = handler;
  blockCopy = block;
  handlerBlockCopy = handlerBlock;
  v19.receiver = self;
  v19.super_class = TIAccumulatingCandidateHandler;
  v12 = [(TIAccumulatingCandidateHandler *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wrappedCandidateHandler, handler);
    v14 = [blockCopy copy];
    candidateHandler = v13->_candidateHandler;
    v13->_candidateHandler = v14;

    v16 = [handlerBlockCopy copy];
    candidateResultSetHandler = v13->_candidateResultSetHandler;
    v13->_candidateResultSetHandler = v16;

    v13->_status = 0;
  }

  return v13;
}

@end