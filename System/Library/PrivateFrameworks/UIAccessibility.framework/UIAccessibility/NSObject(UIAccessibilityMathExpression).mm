@interface NSObject(UIAccessibilityMathExpression)
- (uint64_t)accessibilityExpandMathEquation:()UIAccessibilityMathExpression;
@end

@implementation NSObject(UIAccessibilityMathExpression)

- (uint64_t)accessibilityExpandMathEquation:()UIAccessibilityMathExpression
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = [[UIAccessibilityMathViewController alloc] initWithMathDictionary:v3];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    accessibilityPresentingViewController = [mEMORY[0x1E69DC668] accessibilityPresentingViewController];

    presentedViewController = [accessibilityPresentingViewController presentedViewController];
    if (presentedViewController)
    {
      v9 = presentedViewController;
      v20 = v5;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      viewControllers = [presentedViewController viewControllers];
      v11 = [viewControllers countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(viewControllers);
            }

            mathDictionary = [*(*(&v21 + 1) + 8 * i) mathDictionary];
            v16 = [mathDictionary isEqualToDictionary:v3];

            if (v16)
            {

              _AXLogWithFacility();
              v5 = v20;
              goto LABEL_14;
            }
          }

          v12 = [viewControllers countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v5 = v20;
      [v9 pushViewController:v20 animated:1];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
      [v9 pushViewController:v5 animated:0];
      mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
      accessibilityPresentingViewController2 = [mEMORY[0x1E69DC668]2 accessibilityPresentingViewController];

      [accessibilityPresentingViewController2 presentViewController:v9 animated:1 completion:0];
    }

LABEL_14:
  }

  return isKindOfClass & 1;
}

@end