@interface TIWordSearchOperationCancelLastAcceptedCandidate
- (TIWordSearchOperationCancelLastAcceptedCandidate)initWithWordSearch:(id)a3;
- (void)perform;
@end

@implementation TIWordSearchOperationCancelLastAcceptedCandidate

- (void)perform
{
  v2 = [(TIWordSearchOperationCancelLastAcceptedCandidate *)self mecabraWrapper];
  v3 = [v2 mecabraRef];

  if (v3)
  {

    MEMORY[0x2821F8CD0](v3);
  }
}

- (TIWordSearchOperationCancelLastAcceptedCandidate)initWithWordSearch:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIWordSearchOperationCancelLastAcceptedCandidate;
  v5 = [(TIWordSearchOperationCancelLastAcceptedCandidate *)&v9 init];
  if (v5)
  {
    v6 = [v4 mecabraWrapper];
    mecabraWrapper = v5->_mecabraWrapper;
    v5->_mecabraWrapper = v6;
  }

  return v5;
}

@end