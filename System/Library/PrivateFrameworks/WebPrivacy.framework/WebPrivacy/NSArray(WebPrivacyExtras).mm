@interface NSArray(WebPrivacyExtras)
- (id)_wp_arrayByRemovingTrackingInformationFromURLs;
- (void)_wp_removeTrackingInformationFromURLs:()WebPrivacyExtras;
@end

@implementation NSArray(WebPrivacyExtras)

- (id)_wp_arrayByRemovingTrackingInformationFromURLs
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [self mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v8)
          {
            _wp_urlByRemovingTrackingInformation = [v8 _wp_urlByRemovingTrackingInformation];
            if (_wp_urlByRemovingTrackingInformation)
            {
              [v2 setObject:_wp_urlByRemovingTrackingInformation atIndexedSubscript:v5];
            }

            goto LABEL_15;
          }
        }

        else
        {
        }

        _wp_urlByRemovingTrackingInformation = v8;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
LABEL_15:

          goto LABEL_16;
        }

        if (_wp_urlByRemovingTrackingInformation)
        {
          [_wp_urlByRemovingTrackingInformation _wp_removeTrackingInformationFromURLRepresentation];
          v8 = _wp_urlByRemovingTrackingInformation;
        }

        else
        {
          v8 = 0;
        }

LABEL_16:

        ++v5;
        ++v7;
      }

      while (v4 != v7);
      v10 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      v4 = v10;
    }

    while (v10);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_wp_removeTrackingInformationFromURLs:()WebPrivacyExtras
{
  v32 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = [self mutableCopy];
  v4 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v10)
          {
            dispatch_group_enter(v4);
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3321888768;
            v23[2] = __67__NSArray_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke;
            v23[3] = &__block_descriptor_56_ea8_32c80_ZTSKZ67__NSArray_WebPrivacyExtras___wp_removeTrackingInformationFromURLs__E3__2_e15_v16__0__NSURL_8l;
            v11 = v4;
            v12 = v19;
            v24 = v11;
            v25 = v12;
            v26 = v7;
            [v10 _wp_removeTrackingInformation:v23];

            v13 = v24;
LABEL_14:

            goto LABEL_15;
          }
        }

        else
        {
        }

        v13 = v10;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = 0;
          goto LABEL_14;
        }

        if (v13)
        {
          [v13 _wp_removeTrackingInformationFromURLRepresentation];
          v10 = v13;
        }

        else
        {
          v10 = 0;
        }

LABEL_15:

        ++v7;
        ++v9;
      }

      while (v6 != v9);
      v14 = [selfCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
      v6 = v14;
    }

    while (v14);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NSArray_WebPrivacyExtras___wp_removeTrackingInformationFromURLs___block_invoke_18;
  block[3] = &unk_279EAF330;
  v21 = v19;
  v22 = v18;
  v15 = v19;
  v16 = v18;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);

  v17 = *MEMORY[0x277D85DE8];
}

@end