@interface TIWordSearchOperationContextAcceptCandidate
- (TIWordSearchOperationContextAcceptCandidate)initWithWordSearch:(id)search mecabraCandidate:(void *)candidate isPartial:(BOOL)partial isPrediction:(BOOL)prediction;
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
      mecabraEnvironment = [(TIWordSearchOperationContextAcceptCandidate *)self mecabraEnvironment];
      [mecabraEnvironment commitPredictionCandidate:self->_mecabraCandidate];
    }

    else
    {
      isPartialCandidate = [(TIWordSearchOperationContextAcceptCandidate *)self isPartialCandidate];
      mecabraEnvironment2 = [(TIWordSearchOperationContextAcceptCandidate *)self mecabraEnvironment];
      mecabraCandidate = self->_mecabraCandidate;
      mecabraEnvironment = mecabraEnvironment2;
      if (isPartialCandidate)
      {
        [mecabraEnvironment2 partiallyCommitInlineCandidate:mecabraCandidate];
      }

      else
      {
        [mecabraEnvironment2 completelyCommitInlineCandidate:mecabraCandidate];
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

- (TIWordSearchOperationContextAcceptCandidate)initWithWordSearch:(id)search mecabraCandidate:(void *)candidate isPartial:(BOOL)partial isPrediction:(BOOL)prediction
{
  searchCopy = search;
  v16.receiver = self;
  v16.super_class = TIWordSearchOperationContextAcceptCandidate;
  v11 = [(TIWordSearchOperationContextAcceptCandidate *)&v16 init];
  if (v11)
  {
    mecabraEnvironment = [searchCopy mecabraEnvironment];
    mecabraEnvironment = v11->_mecabraEnvironment;
    v11->_mecabraEnvironment = mecabraEnvironment;

    if (candidate)
    {
      candidateCopy = candidate;
    }

    else
    {
      candidateCopy = 0;
    }

    v11->_mecabraCandidate = candidateCopy;
    v11->_partialCandidate = partial;
    v11->_prediction = prediction;
  }

  return v11;
}

@end