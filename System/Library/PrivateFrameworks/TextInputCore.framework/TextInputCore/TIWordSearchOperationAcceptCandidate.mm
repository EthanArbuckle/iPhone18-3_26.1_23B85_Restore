@interface TIWordSearchOperationAcceptCandidate
- (TIWordSearchOperationAcceptCandidate)initWithWordSearch:(id)a3 mecabraCandidate:(void *)a4 isPartial:(BOOL)a5;
- (void)dealloc;
- (void)perform;
@end

@implementation TIWordSearchOperationAcceptCandidate

- (void)perform
{
  v3 = [(TIWordSearchOperationAcceptCandidate *)self mecabraWrapper];
  v4 = [v3 mecabraRef];

  if (v4)
  {
    mecabraCandidate = self->_mecabraCandidate;
    if (mecabraCandidate)
    {
      v6 = [(TIWordSearchOperationAcceptCandidate *)self isPartialCandidate];
      v7 = v4;
      v8 = mecabraCandidate;
    }

    else
    {
      v7 = v4;
      v8 = 0;
      v6 = 0;
    }

    MEMORY[0x2821F8CA0](v7, v8, v6);
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

- (TIWordSearchOperationAcceptCandidate)initWithWordSearch:(id)a3 mecabraCandidate:(void *)a4 isPartial:(BOOL)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = TIWordSearchOperationAcceptCandidate;
  v9 = [(TIWordSearchOperationAcceptCandidate *)&v14 init];
  if (v9)
  {
    v10 = [v8 mecabraWrapper];
    mecabraWrapper = v9->_mecabraWrapper;
    v9->_mecabraWrapper = v10;

    if (a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = 0;
    }

    v9->_mecabraCandidate = v12;
    v9->_partialCandidate = a5;
  }

  return v9;
}

@end