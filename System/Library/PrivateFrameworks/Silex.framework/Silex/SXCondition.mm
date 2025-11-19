@interface SXCondition
+ (id)jsonPropertyNameForObjCPropertyName:(id)a3;
- (NSSet)types;
- (double)maxViewportAspectRatioWithValue:(id)a3 withType:(int)a4;
- (double)maxViewportWidthWithValue:(id)a3 withType:(int)a4;
- (double)minViewportAspectRatioWithValue:(id)a3 withType:(int)a4;
- (double)minViewportWidthWithValue:(id)a3 withType:(int)a4;
- (id)contentSizeCategoryFromJSONContentSizeCategory:(id)a3;
- (id)followingWithValue:(id)a3 withType:(int)a4;
- (id)maxContentSizeCategoryWithValue:(id)a3 withType:(int)a4;
- (id)minContentSizeCategoryWithValue:(id)a3 withType:(int)a4;
- (id)offerIdentifierWithValue:(id)a3 withType:(int)a4;
- (int64_t)horizontalSizeClassWithValue:(id)a3 withType:(int)a4;
- (int64_t)interfaceSizeClassFromJSONSizeClass:(id)a3;
- (int64_t)offerUpsellScenarioWithValue:(id)a3 withType:(int)a4;
- (int64_t)subscriptionActivationEligibilityWithValue:(id)a3 withType:(int)a4;
- (int64_t)verticalSizeClassWithValue:(id)a3 withType:(int)a4;
- (unint64_t)newsletterSubscriptionStatusWithValue:(id)a3 withType:(int)a4;
- (unint64_t)preferredColorSchemeWithValue:(id)a3 withType:(int)a4;
- (unint64_t)testingWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXCondition

+ (id)jsonPropertyNameForObjCPropertyName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"testing"])
  {
    v5 = @"_anf_testing";
  }

  else if ([v4 isEqualToString:@"newsletterSubscriptionStatus"])
  {
    v5 = @"newsletter";
  }

  else if ([v4 isEqualToString:@"offerUpsellScenario"])
  {
    v5 = @"upsellScenario";
  }

  else if ([v4 isEqualToString:@"experimentTreatmentGroup"])
  {
    v5 = @"experimentVariant";
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXCondition;
    v5 = objc_msgSendSuper2(&v7, sel_jsonPropertyNameForObjCPropertyName_, v4);
  }

  return v5;
}

- (double)minViewportWidthWithValue:(id)a3 withType:(int)a4
{
  if (a4 != 2)
  {
    return 0.0;
  }

  [a3 doubleValue];
  return result;
}

- (double)maxViewportWidthWithValue:(id)a3 withType:(int)a4
{
  if (a4 != 2)
  {
    return 1.79769313e308;
  }

  [a3 doubleValue];
  return result;
}

- (double)minViewportAspectRatioWithValue:(id)a3 withType:(int)a4
{
  if (a4 != 2)
  {
    return 0.0;
  }

  [a3 doubleValue];
  return result;
}

- (double)maxViewportAspectRatioWithValue:(id)a3 withType:(int)a4
{
  if (a4 != 2)
  {
    return 1.79769313e308;
  }

  [a3 doubleValue];
  return result;
}

- (int64_t)horizontalSizeClassWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 3)
  {
    return [(SXCondition *)self interfaceSizeClassFromJSONSizeClass:a3];
  }

  else
  {
    return 0;
  }
}

- (int64_t)verticalSizeClassWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 3)
  {
    return [(SXCondition *)self interfaceSizeClassFromJSONSizeClass:a3];
  }

  else
  {
    return 0;
  }
}

- (id)minContentSizeCategoryWithValue:(id)a3 withType:(int)a4
{
  v7 = *MEMORY[0x1E69DDC90];
  if (a4 == 3)
  {
    v8 = [(SXCondition *)self contentSizeCategoryFromJSONContentSizeCategory:a3];

    v7 = v8;
  }

  return v7;
}

- (id)maxContentSizeCategoryWithValue:(id)a3 withType:(int)a4
{
  v7 = *MEMORY[0x1E69DDC90];
  if (a4 == 3)
  {
    v8 = [(SXCondition *)self contentSizeCategoryFromJSONContentSizeCategory:a3];

    v7 = v8;
  }

  return v7;
}

- (unint64_t)testingWithValue:(id)a3 withType:(int)a4
{
  result = a3;
  if (a3)
  {
    if (a4 == 2)
    {
      return [a3 BOOLValue];
    }
  }

  return result;
}

- (unint64_t)preferredColorSchemeWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 3)
  {
    v7 = v5;
    if ([v7 length])
    {
      if ([v7 isEqualToString:@"light"])
      {
        v8 = 2;
      }

      else if ([v7 isEqualToString:@"dark"])
      {
        v8 = 3;
      }

      else if ([v7 isEqualToString:@"any"])
      {
        v8 = 4;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)newsletterSubscriptionStatusWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 3)
  {
    v7 = v5;
    v8 = v7;
    if (v7 && [v7 length])
    {
      if ([v8 isEqualToString:@"unavailable"])
      {
        v9 = 2;
      }

      else if ([v8 isEqualToString:@"not_subscribed"])
      {
        v9 = 3;
      }

      else if ([v8 isEqualToString:@"non_personalized"])
      {
        v9 = 4;
      }

      else if ([v8 isEqualToString:@"personalized"])
      {
        v9 = 5;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)followingWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  if (a4 == 2)
  {
    v9 = [SXFollowingCondition alloc];
    v7 = [v5 BOOLValue];
    v6 = v9;
    v8 = 0;
    goto LABEL_5;
  }

  if (a4 == 3)
  {
    v6 = [SXFollowingCondition alloc];
    v7 = 1;
    v8 = v5;
LABEL_5:
    v10 = [(SXFollowingCondition *)v6 initWithFollowing:v7 tagIdentifier:v8];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (int64_t)offerUpsellScenarioWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 3)
  {
    v7 = v5;
    v8 = v7;
    if (v7 && [v7 length] && (objc_msgSend(v8, "isEqualToString:", @"undefined") & 1) == 0)
    {
      if ([v8 isEqualToString:@"unknown"])
      {
        v9 = 2;
      }

      else if ([v8 isEqualToString:@"news_plus"])
      {
        v9 = 3;
      }

      else if ([v8 isEqualToString:@"bundle_any"])
      {
        v9 = 4;
      }

      else if ([v8 isEqualToString:@"bundle_none"])
      {
        v9 = 5;
      }

      else if ([v8 isEqualToString:@"bundle_savings"])
      {
        v9 = 6;
      }

      else if ([v8 isEqualToString:@"bundle_price_reduction"])
      {
        v9 = 7;
      }

      else if ([v8 isEqualToString:@"bundle_best_value"])
      {
        v9 = 8;
      }

      else if ([v8 isEqualToString:@"bundle_suggestion"])
      {
        v9 = 9;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)subscriptionActivationEligibilityWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 3)
  {
    v7 = v5;
    v8 = v7;
    if (v7 && [v7 length] && (objc_msgSend(v8, "isEqualToString:", @"unknown") & 1) == 0)
    {
      if ([v8 isEqualToString:@"any"])
      {
        v9 = 2;
      }

      else if ([v8 isEqualToString:@"none"])
      {
        v9 = 1;
      }

      else if ([v8 isEqualToString:@"appleOneViaCarrier"])
      {
        v9 = 3;
      }

      else if ([v8 isEqualToString:@"newsPlusViaHardware"])
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)offerIdentifierWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSSet)types
{
  v2 = MEMORY[0x1E695DFA8];
  v3 = [(SXJSONObject *)self JSONRepresentation];
  v4 = [v3 allKeys];
  v5 = [v2 setWithArray:v4];

  v6 = SXConditionTypes();
  [v5 intersectSet:v6];

  return v5;
}

- (int64_t)interfaceSizeClassFromJSONSizeClass:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"compact"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"regular"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)contentSizeCategoryFromJSONContentSizeCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"XS"])
  {
    v4 = MEMORY[0x1E69DDC68];
  }

  else if ([v3 isEqualToString:@"S"])
  {
    v4 = MEMORY[0x1E69DDC88];
  }

  else if ([v3 isEqualToString:@"M"])
  {
    v4 = MEMORY[0x1E69DDC78];
  }

  else if ([v3 isEqualToString:@"L"])
  {
    v4 = MEMORY[0x1E69DDC70];
  }

  else if ([v3 isEqualToString:@"XL"])
  {
    v4 = MEMORY[0x1E69DDC60];
  }

  else if ([v3 isEqualToString:@"XXL"])
  {
    v4 = MEMORY[0x1E69DDC58];
  }

  else if ([v3 isEqualToString:@"XXXL"])
  {
    v4 = MEMORY[0x1E69DDC50];
  }

  else if ([v3 isEqualToString:@"AX-M"])
  {
    v4 = MEMORY[0x1E69DDC40];
  }

  else if ([v3 isEqualToString:@"AX-L"])
  {
    v4 = MEMORY[0x1E69DDC38];
  }

  else if ([v3 isEqualToString:@"AX-XL"])
  {
    v4 = MEMORY[0x1E69DDC30];
  }

  else if ([v3 isEqualToString:@"AX-XXL"])
  {
    v4 = MEMORY[0x1E69DDC28];
  }

  else
  {
    v5 = [v3 isEqualToString:@"AX-XXXL"];
    v4 = MEMORY[0x1E69DDC90];
    if (v5)
    {
      v4 = MEMORY[0x1E69DDC20];
    }
  }

  v6 = *v4;
  v7 = *v4;

  return v6;
}

@end