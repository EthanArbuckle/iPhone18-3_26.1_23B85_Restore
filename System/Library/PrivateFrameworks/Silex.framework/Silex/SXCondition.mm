@interface SXCondition
+ (id)jsonPropertyNameForObjCPropertyName:(id)name;
- (NSSet)types;
- (double)maxViewportAspectRatioWithValue:(id)value withType:(int)type;
- (double)maxViewportWidthWithValue:(id)value withType:(int)type;
- (double)minViewportAspectRatioWithValue:(id)value withType:(int)type;
- (double)minViewportWidthWithValue:(id)value withType:(int)type;
- (id)contentSizeCategoryFromJSONContentSizeCategory:(id)category;
- (id)followingWithValue:(id)value withType:(int)type;
- (id)maxContentSizeCategoryWithValue:(id)value withType:(int)type;
- (id)minContentSizeCategoryWithValue:(id)value withType:(int)type;
- (id)offerIdentifierWithValue:(id)value withType:(int)type;
- (int64_t)horizontalSizeClassWithValue:(id)value withType:(int)type;
- (int64_t)interfaceSizeClassFromJSONSizeClass:(id)class;
- (int64_t)offerUpsellScenarioWithValue:(id)value withType:(int)type;
- (int64_t)subscriptionActivationEligibilityWithValue:(id)value withType:(int)type;
- (int64_t)verticalSizeClassWithValue:(id)value withType:(int)type;
- (unint64_t)newsletterSubscriptionStatusWithValue:(id)value withType:(int)type;
- (unint64_t)preferredColorSchemeWithValue:(id)value withType:(int)type;
- (unint64_t)testingWithValue:(id)value withType:(int)type;
@end

@implementation SXCondition

+ (id)jsonPropertyNameForObjCPropertyName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"testing"])
  {
    v5 = @"_anf_testing";
  }

  else if ([nameCopy isEqualToString:@"newsletterSubscriptionStatus"])
  {
    v5 = @"newsletter";
  }

  else if ([nameCopy isEqualToString:@"offerUpsellScenario"])
  {
    v5 = @"upsellScenario";
  }

  else if ([nameCopy isEqualToString:@"experimentTreatmentGroup"])
  {
    v5 = @"experimentVariant";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXCondition;
    v5 = objc_msgSendSuper2(&v7, sel_jsonPropertyNameForObjCPropertyName_, nameCopy);
  }

  return v5;
}

- (double)minViewportWidthWithValue:(id)value withType:(int)type
{
  if (type != 2)
  {
    return 0.0;
  }

  [value doubleValue];
  return result;
}

- (double)maxViewportWidthWithValue:(id)value withType:(int)type
{
  if (type != 2)
  {
    return 1.79769313e308;
  }

  [value doubleValue];
  return result;
}

- (double)minViewportAspectRatioWithValue:(id)value withType:(int)type
{
  if (type != 2)
  {
    return 0.0;
  }

  [value doubleValue];
  return result;
}

- (double)maxViewportAspectRatioWithValue:(id)value withType:(int)type
{
  if (type != 2)
  {
    return 1.79769313e308;
  }

  [value doubleValue];
  return result;
}

- (int64_t)horizontalSizeClassWithValue:(id)value withType:(int)type
{
  if (type == 3)
  {
    return [(SXCondition *)self interfaceSizeClassFromJSONSizeClass:value];
  }

  else
  {
    return 0;
  }
}

- (int64_t)verticalSizeClassWithValue:(id)value withType:(int)type
{
  if (type == 3)
  {
    return [(SXCondition *)self interfaceSizeClassFromJSONSizeClass:value];
  }

  else
  {
    return 0;
  }
}

- (id)minContentSizeCategoryWithValue:(id)value withType:(int)type
{
  v7 = *MEMORY[0x1E69DDC90];
  if (type == 3)
  {
    v8 = [(SXCondition *)self contentSizeCategoryFromJSONContentSizeCategory:value];

    v7 = v8;
  }

  return v7;
}

- (id)maxContentSizeCategoryWithValue:(id)value withType:(int)type
{
  v7 = *MEMORY[0x1E69DDC90];
  if (type == 3)
  {
    v8 = [(SXCondition *)self contentSizeCategoryFromJSONContentSizeCategory:value];

    v7 = v8;
  }

  return v7;
}

- (unint64_t)testingWithValue:(id)value withType:(int)type
{
  result = value;
  if (value)
  {
    if (type == 2)
    {
      return [value BOOLValue];
    }
  }

  return result;
}

- (unint64_t)preferredColorSchemeWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    v7 = valueCopy;
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

- (unint64_t)newsletterSubscriptionStatusWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    v7 = valueCopy;
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

- (id)followingWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  if (type == 2)
  {
    v9 = [SXFollowingCondition alloc];
    bOOLValue = [valueCopy BOOLValue];
    v6 = v9;
    v8 = 0;
    goto LABEL_5;
  }

  if (type == 3)
  {
    v6 = [SXFollowingCondition alloc];
    bOOLValue = 1;
    v8 = valueCopy;
LABEL_5:
    v10 = [(SXFollowingCondition *)v6 initWithFollowing:bOOLValue tagIdentifier:v8];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (int64_t)offerUpsellScenarioWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    v7 = valueCopy;
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

- (int64_t)subscriptionActivationEligibilityWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    v7 = valueCopy;
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

- (id)offerIdentifierWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    v7 = valueCopy;
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
  jSONRepresentation = [(SXJSONObject *)self JSONRepresentation];
  allKeys = [jSONRepresentation allKeys];
  v5 = [v2 setWithArray:allKeys];

  v6 = SXConditionTypes();
  [v5 intersectSet:v6];

  return v5;
}

- (int64_t)interfaceSizeClassFromJSONSizeClass:(id)class
{
  classCopy = class;
  if ([classCopy isEqualToString:@"compact"])
  {
    v4 = 1;
  }

  else if ([classCopy isEqualToString:@"regular"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)contentSizeCategoryFromJSONContentSizeCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:@"XS"])
  {
    v4 = MEMORY[0x1E69DDC68];
  }

  else if ([categoryCopy isEqualToString:@"S"])
  {
    v4 = MEMORY[0x1E69DDC88];
  }

  else if ([categoryCopy isEqualToString:@"M"])
  {
    v4 = MEMORY[0x1E69DDC78];
  }

  else if ([categoryCopy isEqualToString:@"L"])
  {
    v4 = MEMORY[0x1E69DDC70];
  }

  else if ([categoryCopy isEqualToString:@"XL"])
  {
    v4 = MEMORY[0x1E69DDC60];
  }

  else if ([categoryCopy isEqualToString:@"XXL"])
  {
    v4 = MEMORY[0x1E69DDC58];
  }

  else if ([categoryCopy isEqualToString:@"XXXL"])
  {
    v4 = MEMORY[0x1E69DDC50];
  }

  else if ([categoryCopy isEqualToString:@"AX-M"])
  {
    v4 = MEMORY[0x1E69DDC40];
  }

  else if ([categoryCopy isEqualToString:@"AX-L"])
  {
    v4 = MEMORY[0x1E69DDC38];
  }

  else if ([categoryCopy isEqualToString:@"AX-XL"])
  {
    v4 = MEMORY[0x1E69DDC30];
  }

  else if ([categoryCopy isEqualToString:@"AX-XXL"])
  {
    v4 = MEMORY[0x1E69DDC28];
  }

  else
  {
    v5 = [categoryCopy isEqualToString:@"AX-XXXL"];
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