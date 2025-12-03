@interface TIWordSearchOperationFlushDynamicData
- (TIWordSearchOperationFlushDynamicData)initWithWordSearch:(id)search;
- (void)perform;
@end

@implementation TIWordSearchOperationFlushDynamicData

- (void)perform
{
  mecabraWrapper = [(TIWordSearchOperationFlushDynamicData *)self mecabraWrapper];
  mecabraRef = [mecabraWrapper mecabraRef];

  if (mecabraRef)
  {

    MecabraFlushDynamicData();
  }
}

- (TIWordSearchOperationFlushDynamicData)initWithWordSearch:(id)search
{
  searchCopy = search;
  v9.receiver = self;
  v9.super_class = TIWordSearchOperationFlushDynamicData;
  v5 = [(TIWordSearchOperationFlushDynamicData *)&v9 init];
  if (v5)
  {
    mecabraWrapper = [searchCopy mecabraWrapper];
    mecabraWrapper = v5->_mecabraWrapper;
    v5->_mecabraWrapper = mecabraWrapper;
  }

  return v5;
}

@end