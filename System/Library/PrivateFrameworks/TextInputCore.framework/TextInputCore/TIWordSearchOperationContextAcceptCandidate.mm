@interface TIWordSearchOperationContextAcceptCandidate
- (TIWordSearchOperationContextAcceptCandidate)initWithWordSearch:(id)a3 mecabraCandidate:(void *)a4 isPartial:(BOOL)a5 isPrediction:(BOOL)a6;
- (void)dealloc;
- (void)perform;
@end

@implementation TIWordSearchOperationContextAcceptCandidate

- (void)perform
{
  if (self->_mecabraCandidate)
  {
    if ([(TIWordSearchOperationContextAcceptCandidate *)self isPrediction])
    {
      v6 = [(TIWordSearchOperationContextAcceptCandidate *)self mecabraEnvironment];
      [v6 commitPredictionCandidate:self->_mecabraCandidate];
    }

    else
    {
      v3 = [(TIWordSearchOperationContextAcceptCandidate *)self isPartialCandidate];
      v4 = [(TIWordSearchOperationContextAcceptCandidate *)self mecabraEnvironment];
      mecabraCandidate = self->_mecabraCandidate;
      v6 = v4;
      if (v3)
      {
        [v4 partiallyCommitInlineCandidate:mecabraCandidate];
      }

      else
      {
        [v4 completelyCommitInlineCandidate:mecabraCandidate];
      }
    }
  }
}

- (void)dealloc
{
  mecabraCandidate = self->_mecabraCandidate;
  if (mecabraCandidate)
  {
  }

  v4.receiver = self;
  v4.super_class = TIWordSearchOperationContextAcceptCandidate;
  [(TIWordSearchOperationContextAcceptCandidate *)&v4 dealloc];
}

- (TIWordSearchOperationContextAcceptCandidate)initWithWordSearch:(id)a3 mecabraCandidate:(void *)a4 isPartial:(BOOL)a5 isPrediction:(BOOL)a6
{
  v10 = a3;
  v16.receiver = self;
  v16.super_class = TIWordSearchOperationContextAcceptCandidate;
  v11 = [(TIWordSearchOperationContextAcceptCandidate *)&v16 init];
  if (v11)
  {
    v12 = [v10 mecabraEnvironment];
    mecabraEnvironment = v11->_mecabraEnvironment;
    v11->_mecabraEnvironment = v12;

    if (a4)
    {
      v14 = a4;
    }

    else
    {
      v14 = 0;
    }

    v11->_mecabraCandidate = v14;
    v11->_partialCandidate = a5;
    v11->_prediction = a6;
  }

  return v11;
}

@end