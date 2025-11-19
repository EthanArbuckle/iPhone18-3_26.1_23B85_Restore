@interface TIWordSearchOperationFlushDynamicData
- (TIWordSearchOperationFlushDynamicData)initWithWordSearch:(id)a3;
- (void)perform;
@end

@implementation TIWordSearchOperationFlushDynamicData

- (void)perform
{
  v2 = [(TIWordSearchOperationFlushDynamicData *)self mecabraWrapper];
  v3 = [v2 mecabraRef];

  if (v3)
  {

    MecabraFlushDynamicData();
  }
}

- (TIWordSearchOperationFlushDynamicData)initWithWordSearch:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIWordSearchOperationFlushDynamicData;
  v5 = [(TIWordSearchOperationFlushDynamicData *)&v9 init];
  if (v5)
  {
    v6 = [v4 mecabraWrapper];
    mecabraWrapper = v5->_mecabraWrapper;
    v5->_mecabraWrapper = v6;
  }

  return v5;
}

@end