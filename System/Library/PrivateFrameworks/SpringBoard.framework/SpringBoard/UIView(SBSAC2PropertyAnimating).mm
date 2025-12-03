@interface UIView(SBSAC2PropertyAnimating)
- (BOOL)sbsa_isPropertyActivelyC2AnimatingForKeyPath:()SBSAC2PropertyAnimating;
- (id)_sbsa_deepestLayerAndCALayerRelativeKeyPathForUIKeyPath:()SBSAC2PropertyAnimating caLayerRelativeKeyPath:;
- (void)sbsa_presentationModifierValueForKeyPath:()SBSAC2PropertyAnimating;
@end

@implementation UIView(SBSAC2PropertyAnimating)

- (id)_sbsa_deepestLayerAndCALayerRelativeKeyPathForUIKeyPath:()SBSAC2PropertyAnimating caLayerRelativeKeyPath:
{
  v6 = a3;
  v7 = [v6 componentsSeparatedByString:@"."];
  v8 = [v7 mutableCopy];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = ___CAKeyPathFromUIKeyPath_block_invoke;
  v26 = &unk_2783B1540;
  v28 = &v29;
  v9 = v8;
  v27 = v9;
  [v7 enumerateObjectsUsingBlock:&v23];
  v10 = [v9 componentsJoinedByString:{@".", v23, v24, v25, v26}];
  if (([v10 containsString:@"layer"] & 1) == 0 && objc_msgSend(v9, "count") && (v30[3] & 1) == 0)
  {
    [v9 insertObject:@"layer" atIndex:{objc_msgSend(v9, "count") - 1}];
    v11 = [v9 componentsJoinedByString:@"."];

    v10 = v11;
  }

  _Block_object_dispose(&v29, 8);
  if (v10)
  {
    layer = [self layer];
    if ([v10 hasPrefix:@"layer."])
    {
      v13 = [v10 substringFromIndex:{objc_msgSend(@"layer.", "length")}];

      v10 = v13;
    }

    if ([v10 containsString:@"layer"])
    {
      v14 = [v10 componentsSeparatedByString:@"."];
      v15 = [v14 mutableCopy];

      v16 = [v15 indexOfObjectWithOptions:2 passingTest:&__block_literal_global_51_0];
      v17 = [v15 subarrayWithRange:{0, v16 + 1}];
      v18 = [v17 componentsJoinedByString:@"."];

      v19 = [self valueForKeyPath:v18];

      [v15 removeObjectsInRange:{0, v16 + 1}];
      v20 = [v15 componentsJoinedByString:@"."];

      layer = v19;
      v10 = v20;
    }

    if (a4)
    {
      v21 = v10;
      *a4 = v10;
    }
  }

  else
  {
    layer = 0;
  }

  return layer;
}

- (BOOL)sbsa_isPropertyActivelyC2AnimatingForKeyPath:()SBSAC2PropertyAnimating
{
  v4 = a3;
  v16 = 0;
  v5 = [self _sbsa_deepestLayerAndCALayerRelativeKeyPathForUIKeyPath:v4 caLayerRelativeKeyPath:&v16];
  v6 = v16;
  presentationModifiers = [v5 presentationModifiers];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__UIView_SBSAC2PropertyAnimating__sbsa_isPropertyActivelyC2AnimatingForKeyPath___block_invoke;
  v12[3] = &unk_2783B14F0;
  v13 = v6;
  selfCopy = self;
  v15 = v4;
  v8 = v4;
  v9 = v6;
  v10 = [presentationModifiers bs_firstObjectPassingTest:v12];

  return v10 != 0;
}

- (void)sbsa_presentationModifierValueForKeyPath:()SBSAC2PropertyAnimating
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v54 = 0;
  v5 = [self _sbsa_deepestLayerAndCALayerRelativeKeyPathForUIKeyPath:v4 caLayerRelativeKeyPath:&v54];
  v6 = v54;
  v44 = v5;
  presentationModifiers = [v5 presentationModifiers];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __76__UIView_SBSAC2PropertyAnimating__sbsa_presentationModifierValueForKeyPath___block_invoke;
  v52[3] = &unk_2783AE468;
  v43 = v6;
  v53 = v43;
  v8 = [presentationModifiers bs_firstObjectPassingTest:v52];

  value = [v8 value];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [self _independentlyAnimatableMemberKeyPathsForPropertyKeyPath:v4];
  v10 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        presentationModifiers2 = [v44 presentationModifiers];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __76__UIView_SBSAC2PropertyAnimating__sbsa_presentationModifierValueForKeyPath___block_invoke_2;
        v45[3] = &unk_2783B1518;
        v16 = v43;
        v46 = v16;
        v47 = v14;
        v17 = [presentationModifiers2 bs_firstObjectPassingTest:v45];

        value2 = [v17 value];
        v19 = value2;
        if (v17 && value2)
        {
          if (!value)
          {
            value = [v44 valueForKey:v16];
          }

          if ([v4 containsString:@"center"])
          {
            [value bs_CGPointValue];
            v21 = v20;
            v23 = v22;
            if (BSEqualObjects())
            {
              [v19 bs_CGFloatValue];
              v21 = v24;
            }

            if (BSEqualObjects())
            {
              [v19 bs_CGFloatValue];
              v23 = v25;
            }

            v26 = [MEMORY[0x277CCAE60] bs_valueWithCGPoint:{v21, v23}];
          }

          else
          {
            if (![v4 containsString:@"bounds"])
            {
              goto LABEL_27;
            }

            [value bs_CGRectValue];
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v34 = v33;
            if (BSEqualObjects())
            {
              [v19 bs_CGFloatValue];
              v28 = v35;
            }

            if (BSEqualObjects())
            {
              [v19 bs_CGFloatValue];
              v30 = v36;
            }

            if (BSEqualObjects())
            {
              [v19 bs_CGFloatValue];
              v32 = v37;
            }

            if (BSEqualObjects())
            {
              [v19 bs_CGFloatValue];
              v34 = v38;
            }

            v26 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{v28, v30, v32, v34}];
          }

          v39 = v26;

          value = v39;
        }

LABEL_27:
      }

      v11 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v11);
  }

  v40 = value;
  return value;
}

@end