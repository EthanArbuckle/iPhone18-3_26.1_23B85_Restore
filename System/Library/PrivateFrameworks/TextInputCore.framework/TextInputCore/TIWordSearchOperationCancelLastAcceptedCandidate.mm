@interface TIWordSearchOperationCancelLastAcceptedCandidate
- (TIWordSearchOperationCancelLastAcceptedCandidate)initWithWordSearch:(id)search;
- (void)perform;
@end

@implementation TIWordSearchOperationCancelLastAcceptedCandidate

- (void)perform
{
  mecabraWrapper = [(TIWordSearchOperationCancelLastAcceptedCandidate *)self mecabraWrapper];
  mecabraRef = [mecabraWrapper mecabraRef];

  if (mecabraRef)
  {

    MEMORY[0x2821F8CD0](mecabraRef);
  }
}

- (TIWordSearchOperationCancelLastAcceptedCandidate)initWithWordSearch:(id)search
{
  searchCopy = search;
  v9.receiver = self;
  v9.super_class = TIWordSearchOperationCancelLastAcceptedCandidate;
  v5 = [(TIWordSearchOperationCancelLastAcceptedCandidate *)&v9 init];
  if (v5)
  {
    mecabraWrapper = [searchCopy mecabraWrapper];
    mecabraWrapper = v5->_mecabraWrapper;
    v5->_mecabraWrapper = mecabraWrapper;
  }

  return v5;
}

@end