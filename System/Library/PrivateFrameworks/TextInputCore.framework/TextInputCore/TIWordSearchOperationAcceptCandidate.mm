@interface TIWordSearchOperationAcceptCandidate
- (TIWordSearchOperationAcceptCandidate)initWithWordSearch:(id)search mecabraCandidate:(void *)candidate isPartial:(BOOL)partial;
- (void)dealloc;
- (void)perform;
@end

@implementation TIWordSearchOperationAcceptCandidate

- (void)perform
{
  mecabraWrapper = [(TIWordSearchOperationAcceptCandidate *)self mecabraWrapper];
  mecabraRef = [mecabraWrapper mecabraRef];

  if (mecabraRef)
  {
    mecabraCandidate = self->_mecabraCandidate;
    if (mecabraCandidate)
    {
      isPartialCandidate = [(TIWordSearchOperationAcceptCandidate *)self isPartialCandidate];
      v7 = mecabraRef;
      v8 = mecabraCandidate;
    }

    else
    {
      v7 = mecabraRef;
      v8 = 0;
      isPartialCandidate = 0;
    }

    MEMORY[0x2821F8CA0](v7, v8, isPartialCandidate);
  }
}

- (void)dealloc
{
  mecabraCandidate = self->_mecabraCandidate;
  if (mecabraCandidate)
  {
  }

  v4.receiver = self;
  v4.super_class = TIWordSearchOperationAcceptCandidate;
  [(TIWordSearchOperationAcceptCandidate *)&v4 dealloc];
}

- (TIWordSearchOperationAcceptCandidate)initWithWordSearch:(id)search mecabraCandidate:(void *)candidate isPartial:(BOOL)partial
{
  searchCopy = search;
  v14.receiver = self;
  v14.super_class = TIWordSearchOperationAcceptCandidate;
  v9 = [(TIWordSearchOperationAcceptCandidate *)&v14 init];
  if (v9)
  {
    mecabraWrapper = [searchCopy mecabraWrapper];
    mecabraWrapper = v9->_mecabraWrapper;
    v9->_mecabraWrapper = mecabraWrapper;

    if (candidate)
    {
      candidateCopy = candidate;
    }

    else
    {
      candidateCopy = 0;
    }

    v9->_mecabraCandidate = candidateCopy;
    v9->_partialCandidate = partial;
  }

  return v9;
}

@end