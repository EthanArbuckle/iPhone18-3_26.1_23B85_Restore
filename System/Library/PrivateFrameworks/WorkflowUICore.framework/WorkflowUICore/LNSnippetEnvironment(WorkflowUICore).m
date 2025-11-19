@interface LNSnippetEnvironment(WorkflowUICore)
- (uint64_t)initWithSize:()WorkflowUICore locale:traitCollection:;
@end

@implementation LNSnippetEnvironment(WorkflowUICore)

- (uint64_t)initWithSize:()WorkflowUICore locale:traitCollection:
{
  v9 = a6;
  v33 = a5;
  v10 = [v9 preferredContentSizeCategory];
  v11 = *MEMORY[0x277D76838];
  if ([v10 isEqualToString:*MEMORY[0x277D76838]])
  {
LABEL_2:
    v12 = 3;
    goto LABEL_11;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D76860]])
  {
    v12 = -1;
  }

  else if ([v10 isEqualToString:*MEMORY[0x277D76830]])
  {
    v12 = 0;
  }

  else if ([v10 isEqualToString:*MEMORY[0x277D76858]])
  {
    v12 = 1;
  }

  else
  {
    if (([v10 isEqualToString:*MEMORY[0x277D76840]] & 1) == 0)
    {
      if (([v10 isEqualToString:v11] & 1) == 0)
      {
        if ([v10 isEqualToString:*MEMORY[0x277D76828]])
        {
          v12 = 4;
        }

        else if ([v10 isEqualToString:*MEMORY[0x277D76820]])
        {
          v12 = 5;
        }

        else if ([v10 isEqualToString:*MEMORY[0x277D76818]])
        {
          v12 = 6;
        }

        else if ([v10 isEqualToString:*MEMORY[0x277D76808]])
        {
          v12 = 7;
        }

        else if ([v10 isEqualToString:*MEMORY[0x277D76800]])
        {
          v12 = 8;
        }

        else if ([v10 isEqualToString:*MEMORY[0x277D767F8]])
        {
          v12 = 9;
        }

        else if ([v10 isEqualToString:*MEMORY[0x277D767F0]])
        {
          v12 = 10;
        }

        else if ([v10 isEqualToString:*MEMORY[0x277D767E8]])
        {
          v12 = 11;
        }

        else
        {
          v12 = 3;
        }

        goto LABEL_11;
      }

      goto LABEL_2;
    }

    v12 = 2;
  }

LABEL_11:

  v13 = [v9 legibilityWeight];
  v14 = [v9 layoutDirection];
  v15 = [v9 userInterfaceStyle];
  if (v15 >= 3)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 - 1;
  }

  v17 = [v9 accessibilityContrast];
  if ((v17 + 1) >= 3)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  if (v14)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  if (v14 == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  if (v13)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  if (v13 == 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v9 displayGamut] == 1;
  [v9 displayScale];
  v25 = v24;
  ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  BYTE3(v31) = UIAccessibilityIsReduceTransparencyEnabled();
  BYTE2(v31) = IsReduceMotionEnabled;
  BYTE1(v31) = IsInvertColorsEnabled;
  LOBYTE(v31) = ShouldDifferentiateWithoutColor;
  v29 = [a1 initWithSize:v33 locale:v12 dynamicTypeSize:v22 legibilityWeight:v20 layoutDirection:v16 colorScheme:v18 colorSchemeContrast:a2 displayScale:a3 displayGamut:v25 accessibilityDifferentiateWithoutColor:v23 accessibilityInvertColors:v31 accessibilityReduceMotion:? accessibilityReduceTransparency:?];

  return v29;
}

@end