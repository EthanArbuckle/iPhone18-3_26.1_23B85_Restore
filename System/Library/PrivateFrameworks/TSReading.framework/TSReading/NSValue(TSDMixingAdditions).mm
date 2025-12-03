@interface NSValue(TSDMixingAdditions)
- (uint64_t)mixedObjectWithFraction:()TSDMixingAdditions ofObject:;
- (uint64_t)mixingTypeWithObject:()TSDMixingAdditions;
@end

@implementation NSValue(TSDMixingAdditions)

- (uint64_t)mixingTypeWithObject:()TSDMixingAdditions
{
  objc_opt_class();
  if ([self isEqualToValue:TSUCheckedDynamicCast()])
  {
    return 5;
  }

  if (!strcmp([self objCType], objc_msgSend(self, "objCType")))
  {
    return 3;
  }

  return 1;
}

- (uint64_t)mixedObjectWithFraction:()TSDMixingAdditions ofObject:
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!strcmp([self objCType], "{CGPoint=dd}"))
  {
    [self CGPointValue];
    [v4 CGPointValue];
    v9 = MEMORY[0x277CCAE60];
    TSUMixPoints();

    return [v9 valueWithCGPoint:?];
  }

  else if (!strcmp([self objCType], "{CGSize=dd}"))
  {
    [self CGSizeValue];
    [v4 CGSizeValue];
    v10 = MEMORY[0x277CCAE60];
    TSUMixSizes();

    return [v10 valueWithCGSize:?];
  }

  else if (!strcmp([self objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    [self CGRectValue];
    [v4 CGRectValue];
    v11 = MEMORY[0x277CCAE60];
    TSUMixRects();

    return [v11 valueWithCGRect:?];
  }

  else if (!strcmp([self objCType], "{CGAffineTransform=dddddd}"))
  {
    v12 = 0uLL;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    if (self)
    {
      [self CGAffineTransformValue];
      v12 = 0uLL;
    }

    v36 = v12;
    v37 = v12;
    v35 = v12;
    if (v4)
    {
      [v4 CGAffineTransformValue];
    }

    v13 = MEMORY[0x277CCAE60];
    v19 = v43;
    v20 = v44;
    v21 = v45;
    v51[0] = v35;
    v51[1] = v36;
    v51[2] = v37;
    TSDTransformMixAffineTransforms(&v19, v51, &v27, a2);
    return [v13 valueWithCGAffineTransform:&v27];
  }

  else if (!strcmp([self objCType], "{CATransform3D=dddddddddddddddd}"))
  {
    v14 = 0uLL;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    if (self)
    {
      [self CATransform3DValue];
      v14 = 0uLL;
    }

    v41 = v14;
    v42 = v14;
    v39 = v14;
    v40 = v14;
    v37 = v14;
    v38 = v14;
    v35 = v14;
    v36 = v14;
    if (v4)
    {
      [v4 CATransform3DValue];
    }

    v15 = *(MEMORY[0x277CD9DE8] + 80);
    v31 = *(MEMORY[0x277CD9DE8] + 64);
    v32 = v15;
    v16 = *(MEMORY[0x277CD9DE8] + 112);
    v33 = *(MEMORY[0x277CD9DE8] + 96);
    v34 = v16;
    v17 = *(MEMORY[0x277CD9DE8] + 16);
    v27 = *MEMORY[0x277CD9DE8];
    v28 = v17;
    v18 = *(MEMORY[0x277CD9DE8] + 48);
    v29 = *(MEMORY[0x277CD9DE8] + 32);
    v30 = v18;
    MEMORY[0x26D6A75C0](&v27, &v43, &v35, a2);
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    return [MEMORY[0x277CCAE60] valueWithCATransform3D:&v19];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSValue(TSDMixingAdditions) mixedObjectWithFraction:ofObject:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:347 description:{@"Unknown objcType in NSValue: %@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", objc_msgSend(self, "objCType"))}];
    return 0;
  }
}

@end