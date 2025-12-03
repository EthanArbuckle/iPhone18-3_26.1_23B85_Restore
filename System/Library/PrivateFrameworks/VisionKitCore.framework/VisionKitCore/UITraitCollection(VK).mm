@interface UITraitCollection(VK)
- (BOOL)vk_hasEqualSizeToTraitCollection:()VK;
- (BOOL)vk_shouldUseLargeButtons;
- (double)vk_contentSizeScaleFactor;
- (id)vk_traitCollectionClampedToNonaccessibilityContentSize;
- (id)vk_traitCollectionWithContentSize:()VK;
- (uint64_t)vk_hasCompactSize;
@end

@implementation UITraitCollection(VK)

- (uint64_t)vk_hasCompactSize
{
  if ([self vk_hasCompactWidth])
  {
    return 1;
  }

  return [self vk_hasCompactHeight];
}

- (BOOL)vk_hasEqualSizeToTraitCollection:()VK
{
  v4 = a3;
  horizontalSizeClass = [self horizontalSizeClass];
  if (horizontalSizeClass == [v4 horizontalSizeClass])
  {
    verticalSizeClass = [self verticalSizeClass];
    v7 = verticalSizeClass == [v4 verticalSizeClass];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)vk_traitCollectionClampedToNonaccessibilityContentSize
{
  selfCopy = self;
  preferredContentSizeCategory = [selfCopy preferredContentSizeCategory];
  if (([preferredContentSizeCategory isEqualToString:*MEMORY[0x1E69DDC38]] & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC30]) & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC28]) & 1) != 0 || objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC20]))
  {
    v3 = [selfCopy traitCollectionByModifyingTraits:&__block_literal_global_15];

    selfCopy = v3;
  }

  return selfCopy;
}

- (id)vk_traitCollectionWithContentSize:()VK
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__UITraitCollection_VK__vk_traitCollectionWithContentSize___block_invoke;
  v8[3] = &unk_1E7BE59D0;
  v9 = v4;
  v5 = v4;
  v6 = [self traitCollectionByModifyingTraits:v8];

  return v6;
}

- (double)vk_contentSizeScaleFactor
{
  preferredContentSizeCategory = [self preferredContentSizeCategory];
  if (preferredContentSizeCategory == *MEMORY[0x1E69DDC68])
  {
    v2 = 0.8;
  }

  else if (preferredContentSizeCategory == *MEMORY[0x1E69DDC88])
  {
    v2 = 0.85;
  }

  else if (preferredContentSizeCategory == *MEMORY[0x1E69DDC78])
  {
    v2 = 0.9;
  }

  else
  {
    v2 = 1.0;
    if (preferredContentSizeCategory != *MEMORY[0x1E69DDC70] && preferredContentSizeCategory != *MEMORY[0x1E69DDC90])
    {
      if (preferredContentSizeCategory == *MEMORY[0x1E69DDC60])
      {
        v2 = 1.1;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x1E69DDC58])
      {
        v2 = 1.2;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x1E69DDC50])
      {
        v2 = 1.35;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x1E69DDC40])
      {
        v2 = 1.6;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x1E69DDC38])
      {
        v2 = 1.9;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x1E69DDC30])
      {
        v2 = 2.35;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x1E69DDC28])
      {
        v2 = 2.75;
      }

      else if (preferredContentSizeCategory == *MEMORY[0x1E69DDC20])
      {
        v2 = 3.1;
      }

      else
      {
        v2 = 1.0;
      }
    }
  }

  return v2;
}

- (BOOL)vk_shouldUseLargeButtons
{
  preferredContentSizeCategory = [self preferredContentSizeCategory];
  v2 = ([preferredContentSizeCategory isEqualToString:*MEMORY[0x1E69DDC68]] & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC70]) & 1) == 0 && !objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC60]);

  return v2;
}

@end