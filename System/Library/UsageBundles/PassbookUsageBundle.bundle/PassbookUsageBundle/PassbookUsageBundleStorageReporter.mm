@interface PassbookUsageBundleStorageReporter
- (float)sizeForCategory:(id)category;
- (id)usageBundleApps;
- (void)_populateUsageBundleApps;
- (void)dealloc;
@end

@implementation PassbookUsageBundleStorageReporter

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PassbookUsageBundleStorageReporter;
  [(PassbookUsageBundleStorageReporter *)&v2 dealloc];
}

- (id)usageBundleApps
{
  usageBundleApps = self->_usageBundleApps;
  if (!usageBundleApps)
  {
    [(PassbookUsageBundleStorageReporter *)self _populateUsageBundleApps];
    usageBundleApps = self->_usageBundleApps;
  }

  return usageBundleApps;
}

- (float)sizeForCategory:(id)category
{
  categoryCopy = category;
  categorySizes = self->_categorySizes;
  if (!categorySizes)
  {
    [(PassbookUsageBundleStorageReporter *)self _populateUsageBundleApps];
    categorySizes = self->_categorySizes;
  }

  identifier = [categoryCopy identifier];
  v7 = [(NSDictionary *)categorySizes objectForKey:identifier];
  [v7 floatValue];
  v9 = v8;

  return v9;
}

- (void)_populateUsageBundleApps
{
  v34 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = PKHomeDirectoryPath();
  v5 = [v4 stringByAppendingPathComponent:@"Cards"];
  if ([v3 fileExistsAtPath:v5 isDirectory:&v34] && v34 == 1)
  {
    v6 = [v3 contentsOfDirectoryAtPath:v5 error:0];
    if ([v6 count])
    {
      v28 = v6;
      v7 = [NSURL fileURLWithPath:v4];
      v37 = NSURLFileSizeKey;
      v8 = [NSArray arrayWithObjects:&v37 count:1];
      v9 = [v3 enumeratorAtURL:v7 includingPropertiesForKeys:v8 options:0 errorHandler:&stru_4120];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v31;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            v29 = 0;
            if ([v16 getResourceValue:&v29 forKey:NSURLFileSizeKey error:0])
            {
              v13 += [v29 unsignedLongLongValue];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      v6 = v28;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = [NSDictionary alloc];
  v18 = [NSNumber numberWithLongLong:v13];
  v19 = [v17 initWithObjectsAndKeys:{v18, @"USAGE_BUNDLE_CATEGORY_PASSES", 0}];
  categorySizes = self->_categorySizes;
  self->_categorySizes = v19;

  *&v21 = v13;
  v22 = [PSUsageBundleApp usageBundleAppForBundleWithIdentifier:PKServiceBundleIdentifier withTotalSize:v21];
  if (v13)
  {
    v23 = PKLocalizedString(@"USAGE_BUNDLE_CATEGORY_PASSES");
    v24 = [PSUsageBundleCategory categoryNamed:v23 withIdentifier:@"USAGE_BUNDLE_CATEGORY_PASSES" forUsageBundleApp:v22];

    v35 = v24;
    v25 = [NSArray arrayWithObjects:&v35 count:1];
    [v22 setCategories:v25];
  }

  v26 = [[NSArray alloc] initWithObjects:{v22, 0}];
  usageBundleApps = self->_usageBundleApps;
  self->_usageBundleApps = v26;
}

@end