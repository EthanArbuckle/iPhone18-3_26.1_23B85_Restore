@interface UIView(SBSAGeometricTypeAnimationDecomposing)
- (id)_independentlyAnimatableMemberKeyPathsForProperty:()SBSAGeometricTypeAnimationDecomposing;
- (void)_setValue:()SBSAGeometricTypeAnimationDecomposing byUpdatingMemberKeypaths:forKeyPath:;
@end

@implementation UIView(SBSAGeometricTypeAnimationDecomposing)

- (id)_independentlyAnimatableMemberKeyPathsForProperty:()SBSAGeometricTypeAnimationDecomposing
{
  v4 = a3;
  if (_independentlyAnimatableMemberKeyPathsForProperty____onceToken_12 != -1)
  {
    [UIView(SBSAGeometricTypeAnimationDecomposing) _independentlyAnimatableMemberKeyPathsForProperty:];
  }

  if (BSEqualObjects())
  {
    v5 = _independentlyAnimatableMemberKeyPathsForProperty____centerMembers;
LABEL_7:
    v6 = v5;
    goto LABEL_9;
  }

  if (BSEqualObjects())
  {
    v5 = _independentlyAnimatableMemberKeyPathsForProperty____boundsMembers;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = UIView_0;
  v6 = objc_msgSendSuper2(&v9, sel__independentlyAnimatableMemberKeyPathsForProperty_, v4);
LABEL_9:
  v7 = v6;

  return v7;
}

- (void)_setValue:()SBSAGeometricTypeAnimationDecomposing byUpdatingMemberKeypaths:forKeyPath:
{
  v53 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 componentsSeparatedByString:@"."];
  v12 = [v11 count];
  firstObject = [v11 firstObject];
  v14 = [self valueForKey:firstObject];
  if (v12 >= 2)
  {
    v15 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = [v11 subarrayWithRange:{1, v12 - 1}];
      currentHandler = [v17 componentsJoinedByString:@"."];

      [v14 _setValue:v53 byUpdatingMemberKeypaths:v9 forKeyPath:currentHandler];
      goto LABEL_24;
    }
  }

  if (BSEqualObjects())
  {
    v19 = [self valueForKeyPath:v10];
    v20 = v53;
    v21 = v9;
    [v19 bs_CGPointValue];
    v23 = v22;
    v25 = v24;
    [v20 bs_CGPointValue];
    v27 = v26;
    v29 = v28;

    if ([v21 containsObject:@"x"])
    {
      v23 = v27;
    }

    v30 = [v21 containsObject:@"y"];

    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = v25;
    }

    v32 = [MEMORY[0x277CCAE60] bs_valueWithCGPoint:{v23, v31}];
LABEL_22:
    currentHandler = v32;

    [self setValue:currentHandler forKeyPath:v10];
    goto LABEL_24;
  }

  if (BSEqualObjects())
  {
    v19 = [self valueForKeyPath:v10];
    v33 = v53;
    v34 = v9;
    [v19 bs_CGRectValue];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    [v33 bs_CGRectValue];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    if ([v34 containsObject:@"origin.x"])
    {
      v36 = v44;
    }

    if ([v34 containsObject:@"origin.y"])
    {
      v38 = v46;
    }

    if ([v34 containsObject:@"size.width"])
    {
      v40 = v48;
    }

    v51 = [v34 containsObject:@"size.height"];

    if (v51)
    {
      v52 = v50;
    }

    else
    {
      v52 = v42;
    }

    v32 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{v36, v38, v40, v52}];
    goto LABEL_22;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"NSObject+SBSAGeometricTypeAnimationDecomposing.m" lineNumber:93 description:@"Attempting to update members of unsupported keypath"];
LABEL_24:
}

@end