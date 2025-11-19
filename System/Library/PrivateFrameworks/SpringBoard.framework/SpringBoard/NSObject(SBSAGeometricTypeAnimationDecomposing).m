@interface NSObject(SBSAGeometricTypeAnimationDecomposing)
- (id)_independentlyAnimatableMemberKeyPathsForProperty:()SBSAGeometricTypeAnimationDecomposing;
- (id)_independentlyAnimatableMemberKeyPathsForPropertyKeyPath:()SBSAGeometricTypeAnimationDecomposing;
- (void)_setValue:()SBSAGeometricTypeAnimationDecomposing byUpdatingMemberKeypaths:forKeyPath:;
@end

@implementation NSObject(SBSAGeometricTypeAnimationDecomposing)

- (id)_independentlyAnimatableMemberKeyPathsForPropertyKeyPath:()SBSAGeometricTypeAnimationDecomposing
{
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"."];
  v6 = [v5 count];
  v7 = [v5 firstObject];
  v8 = [a1 valueForKey:v7];
  if (v6 < 2)
  {
    v11 = [a1 _independentlyAnimatableMemberKeyPathsForProperty:v4];
  }

  else
  {
    v9 = [v5 subarrayWithRange:{1, v6 - 1}];
    v10 = [v9 componentsJoinedByString:@"."];

    v11 = [v8 _independentlyAnimatableMemberKeyPathsForPropertyKeyPath:v10];
  }

  return v11;
}

- (id)_independentlyAnimatableMemberKeyPathsForProperty:()SBSAGeometricTypeAnimationDecomposing
{
  if (_independentlyAnimatableMemberKeyPathsForProperty____onceToken != -1)
  {
    [NSObject(SBSAGeometricTypeAnimationDecomposing) _independentlyAnimatableMemberKeyPathsForProperty:];
  }

  v1 = _independentlyAnimatableMemberKeyPathsForProperty____emptySet;

  return v1;
}

- (void)_setValue:()SBSAGeometricTypeAnimationDecomposing byUpdatingMemberKeypaths:forKeyPath:
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"NSObject+SBSAGeometricTypeAnimationDecomposing.m" lineNumber:46 description:@"Subclass Responsibility"];
}

@end