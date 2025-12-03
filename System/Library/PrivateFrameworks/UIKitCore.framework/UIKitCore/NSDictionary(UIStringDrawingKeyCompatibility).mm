@interface NSDictionary(UIStringDrawingKeyCompatibility)
- (id)_ui_attributesForDictionaryContainingUIStringDrawingKeys;
- (uint64_t)_ui_dictionaryContainsUIStringDrawingKeys;
@end

@implementation NSDictionary(UIStringDrawingKeyCompatibility)

- (id)_ui_attributesForDictionaryContainingUIStringDrawingKeys
{
  allKeys = [self allKeys];
  if ([allKeys containsObject:@"Font"] && (v3 = *off_1E70EC918, (objc_msgSend(allKeys, "containsObject:", *off_1E70EC918) & 1) == 0))
  {
    v4 = [self mutableCopy];
    [v4 setValue:objc_msgSend(self forKey:{"valueForKey:", @"Font", v3}];
  }

  else
  {
    v4 = 0;
  }

  if ([allKeys containsObject:@"TextColor"])
  {
    v5 = *off_1E70EC920;
    if (([allKeys containsObject:*off_1E70EC920] & 1) == 0)
    {
      if (!v4)
      {
        v4 = [self mutableCopy];
      }

      [v4 setValue:objc_msgSend(self forKey:{"valueForKey:", @"TextColor", v5}];
    }
  }

  if (([allKeys containsObject:@"TextShadowColor"] & 1) != 0 || objc_msgSend(allKeys, "containsObject:", @"TextShadowOffset"))
  {
    v6 = *off_1E70EC9B0;
    if (([allKeys containsObject:*off_1E70EC9B0] & 1) == 0)
    {
      if (!v4)
      {
        v4 = [self mutableCopy];
      }

      v7 = objc_alloc_init(off_1E70ECB90);
      if ([allKeys containsObject:@"TextShadowColor"])
      {
        [v7 setShadowColor:{objc_msgSend(self, "valueForKey:", @"TextShadowColor"}];
      }

      if ([allKeys containsObject:@"TextShadowOffset"])
      {
        [objc_msgSend(self valueForKey:{@"TextShadowOffset", "CGSizeValue"}];
        [v7 setShadowOffset:?];
      }

      [v4 setValue:v7 forKey:v6];
    }
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return self;
  }
}

- (uint64_t)_ui_dictionaryContainsUIStringDrawingKeys
{
  allKeys = [self allKeys];
  if ([allKeys containsObject:@"Font"] & 1) != 0 || (objc_msgSend(allKeys, "containsObject:", @"TextColor") & 1) != 0 || (objc_msgSend(allKeys, "containsObject:", @"TextShadowColor"))
  {
    return 1;
  }

  return [allKeys containsObject:@"TextShadowOffset"];
}

@end