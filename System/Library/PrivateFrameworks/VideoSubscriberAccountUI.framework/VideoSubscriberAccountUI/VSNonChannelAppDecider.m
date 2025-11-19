@interface VSNonChannelAppDecider
- (VSNonChannelAppDecider)init;
- (id)decidedNonChannelApps;
@end

@implementation VSNonChannelAppDecider

- (VSNonChannelAppDecider)init
{
  v6.receiver = self;
  v6.super_class = VSNonChannelAppDecider;
  v2 = [(VSNonChannelAppDecider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    appDescriptions = v2->_appDescriptions;
    v2->_appDescriptions = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (id)decidedNonChannelApps
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [(VSNonChannelAppDecider *)self appDescriptions];
  v4 = [(VSNonChannelAppDecider *)self preferredAppBundleOrAdamID];
  if ([v3 count] <= 1)
  {
    v5 = v3;
    goto LABEL_31;
  }

  if (!v4)
  {
    v28 = [(VSNonChannelAppDecider *)self preferredDeviceFamily];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __47__VSNonChannelAppDecider_decidedNonChannelApps__block_invoke;
      v42[3] = &unk_279E1A608;
      v43 = v30;
      v5 = [v3 sortedArrayUsingComparator:v42];
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_31;
  }

  v6 = [v3 firstObject];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [appDescriptions firstObject] parameter must not be nil."];
  }

  v7 = [v3 firstObject];
  v33 = v4;
  v8 = v4;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v34 = v3;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (!v10)
  {

    v12 = 0;
    goto LABEL_27;
  }

  v11 = v10;
  v12 = 0;
  v36 = 0;
  v13 = *v39;
  v35 = *v39;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v39 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v38 + 1) + 8 * i);
      if ([v15 isDefaultAppForProvider])
      {
        v16 = v15;

        v36 = 1;
        v7 = v16;
      }

      v17 = [v15 bundleID];
      if ([v17 isEqualToString:v8])
      {
      }

      else
      {
        [v15 adamID];
        v37 = v12;
        v18 = v9;
        v20 = v19 = v7;
        [v20 stringValue];
        v22 = v21 = v11;
        v23 = [v22 isEqualToString:v8];

        v11 = v21;
        v7 = v19;
        v9 = v18;
        v12 = v37;
        v13 = v35;

        if (!v23)
        {
          continue;
        }
      }

      v24 = v15;

      v12 = v24;
    }

    v11 = [v9 countByEnumeratingWithState:&v38 objects:v45 count:16];
  }

  while (v11);

  if ((v36 & 1) == 0)
  {
LABEL_27:
    v5 = v9;
    goto LABEL_28;
  }

  if (v12)
  {
    v25 = v12;
  }

  else
  {
    v25 = v7;
  }

  v44 = v25;
  v26 = MEMORY[0x277CBEA60];
  v27 = v25;
  v5 = [v26 arrayWithObjects:&v44 count:1];

LABEL_28:
  v4 = v33;
  v3 = v34;
LABEL_31:

  v31 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __47__VSNonChannelAppDecider_decidedNonChannelApps__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 deviceFamilies];
  v8 = [v7 count];
  v9 = [v6 deviceFamilies];
  if (v8 != [v9 count])
  {
    goto LABEL_6;
  }

  v10 = [v5 deviceFamilies];
  if (([v10 containsObject:*(a1 + 32)] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v11 = [v6 deviceFamilies];
  v12 = [v11 containsObject:*(a1 + 32)];

  if (v12)
  {
    v13 = 0;
    goto LABEL_12;
  }

LABEL_7:
  v14 = [v5 deviceFamilies];
  v15 = [v14 count];
  v16 = [v6 deviceFamilies];
  if (v15 >= [v16 count])
  {

    v13 = 1;
  }

  else
  {
    v17 = [v5 deviceFamilies];
    v18 = [v17 containsObject:*(a1 + 32)];

    if (v18)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }
  }

LABEL_12:

  return v13;
}

@end