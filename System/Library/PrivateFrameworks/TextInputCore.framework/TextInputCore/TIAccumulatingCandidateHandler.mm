@interface TIAccumulatingCandidateHandler
- (TIAccumulatingCandidateHandler)initWithWrappedCandidateHandler:(id)a3 handlerBlock:(id)a4 resultSetHandlerBlock:(id)a5;
- (void)close;
- (void)dealloc;
@end

@implementation TIAccumulatingCandidateHandler

- (void)close
{
  if (self->_status != 2)
  {
    self->_status = 2;
    v4 = [(TIAccumulatingCandidateHandler *)self candidateHandler];

    if (v4)
    {
      v5 = [(TIAccumulatingCandidateHandler *)self candidateHandler];
      v6 = [(TIAccumulatingCandidateHandler *)self candidates];
      if (v6)
      {
        (v5)[2](v5, v6);
      }

      else
      {
        v7 = [MEMORY[0x277D6F328] listWithCorrections:0 predictions:0];
        (v5)[2](v5, v7);
      }
    }

    v8 = [(TIAccumulatingCandidateHandler *)self candidateResultSetHandler];

    if (v8)
    {
      v9 = [(TIAccumulatingCandidateHandler *)self candidateResultSetHandler];
      v10 = [(TIAccumulatingCandidateHandler *)self candidateResultSet];
      (v9)[2](v9, v10);
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

- (TIAccumulatingCandidateHandler)initWithWrappedCandidateHandler:(id)a3 handlerBlock:(id)a4 resultSetHandlerBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = TIAccumulatingCandidateHandler;
  v12 = [(TIAccumulatingCandidateHandler *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wrappedCandidateHandler, a3);
    v14 = [v10 copy];
    candidateHandler = v13->_candidateHandler;
    v13->_candidateHandler = v14;

    v16 = [v11 copy];
    candidateResultSetHandler = v13->_candidateResultSetHandler;
    v13->_candidateResultSetHandler = v16;

    v13->_status = 0;
  }

  return v13;
}

@end