@interface CLPlacemark(PXContextualMemoriesSettingsUI)
- (id)_px_dynamicLocationString;
- (id)px_subtitle;
- (id)px_title;
@end

@implementation CLPlacemark(PXContextualMemoriesSettingsUI)

- (id)_px_dynamicLocationString
{
  v18 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
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

      v8 = [self valueForKey:*(*(&v13 + 1) + 8 * v7)];
      v9 = string;
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

  return string;
}

- (id)px_subtitle
{
  areasOfInterest = [self areasOfInterest];
  v3 = [areasOfInterest count];

  if (v3)
  {
    _px_dynamicLocationString = [self _px_dynamicLocationString];
  }

  else
  {
    _px_dynamicLocationString = 0;
  }

  return _px_dynamicLocationString;
}

- (id)px_title
{
  areasOfInterest = [self areasOfInterest];
  v3 = [areasOfInterest count];

  if (v3)
  {
    areasOfInterest2 = [self areasOfInterest];
    _px_dynamicLocationString = [areasOfInterest2 componentsJoinedByString:{@", "}];
  }

  else
  {
    _px_dynamicLocationString = [self _px_dynamicLocationString];
  }

  return _px_dynamicLocationString;
}

@end