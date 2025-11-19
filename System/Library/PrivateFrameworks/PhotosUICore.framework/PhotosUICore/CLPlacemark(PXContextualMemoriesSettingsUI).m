@interface CLPlacemark(PXContextualMemoriesSettingsUI)
- (id)_px_dynamicLocationString;
- (id)px_subtitle;
- (id)px_title;
@end

@implementation CLPlacemark(PXContextualMemoriesSettingsUI)

- (id)_px_dynamicLocationString
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [&unk_1F19103F0 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(&unk_1F19103F0);
      }

      v8 = [a1 valueForKey:*(*(&v13 + 1) + 8 * v7)];
      v9 = v2;
      v10 = v8;
      v11 = [v10 length];
      if (v11)
      {
        if ([v9 length])
        {
          [v9 appendFormat:@", %@", v10];
        }

        else
        {
          [v9 appendString:v10];
        }
      }

      if (v11)
      {
        ++v5;
      }

      if (v5 == 2)
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [&unk_1F19103F0 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v2;
}

- (id)px_subtitle
{
  v2 = [a1 areasOfInterest];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [a1 _px_dynamicLocationString];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)px_title
{
  v2 = [a1 areasOfInterest];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [a1 areasOfInterest];
    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = [a1 _px_dynamicLocationString];
  }

  return v5;
}

@end