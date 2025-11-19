@interface MFMailUsageReporter
- (Class)usageDetailControllerClassForUsageBundleApp:(id)a3;
- (float)sizeForCategory:(id)a3;
- (id)_bundleApps;
- (id)_categorySizes;
- (id)_totalFileSizeAtPath:(id)a3;
@end

@implementation MFMailUsageReporter

- (id)_totalFileSizeAtPath:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [NSURL fileURLWithPath:v4];
  v27 = NSURLFileSizeKey;
  v7 = [NSArray arrayWithObjects:&v27 count:1];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_14E0;
  v25[3] = &unk_41D0;
  v25[4] = self;
  v8 = [v5 enumeratorAtURL:v6 includingPropertiesForKeys:v7 options:0 errorHandler:v25];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v20 = 0;
        v15 = [v14 getResourceValue:&v20 forKey:NSURLFileSizeKey error:0];
        v16 = v20;
        v17 = v16;
        if (v15)
        {
          v10 += [v16 unsignedLongLongValue];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  v18 = [NSNumber numberWithUnsignedLongLong:v10];

  return v18;
}

- (id)_categorySizes
{
  categorySizes = self->_categorySizes;
  if (!categorySizes)
  {
    v4 = [NSString stringWithFormat:@"%@/Library/Mail", CPSharedResourcesDirectory()];
    v10 = @"MFMailUsageGeneralCategory";
    v5 = [(MFMailUsageReporter *)self _totalFileSizeAtPath:v4];
    v11 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = self->_categorySizes;
    p_categorySizes = &self->_categorySizes;
    *p_categorySizes = v6;

    categorySizes = *p_categorySizes;
  }

  return categorySizes;
}

- (id)_bundleApps
{
  bundleApps = self->_bundleApps;
  if (!bundleApps)
  {
    v4 = [PSUsageBundleApp usageBundleAppForBundleWithIdentifier:kMFMobileMailBundleIdentifier withTotalSize:0.0];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"MAIL_GENERAL_CATEGORY" value:&stru_4218 table:@"MailUsage"];
    v7 = [PSUsageBundleCategory categoryNamed:v6 withIdentifier:@"MFMailUsageGeneralCategory" forUsageBundleApp:v4];

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v8 = [(MFMailUsageReporter *)self _categorySizes];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_19E0;
    v16[3] = &unk_41F8;
    v16[4] = &v17;
    [v8 enumerateKeysAndObjectsUsingBlock:v16];

    if (v7 && v4)
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"MAIL_USAGE_NAME" value:&stru_4218 table:@"MailUsage"];
      [v4 setName:v10];

      *&v11 = v18[3];
      [v4 setTotalSize:v11];
      v21 = v7;
      v12 = [NSArray arrayWithObjects:&v21 count:1];
      [v4 setCategories:v12];

      v13 = [[NSArray alloc] initWithObjects:{v4, 0}];
      v14 = self->_bundleApps;
      self->_bundleApps = v13;
    }

    _Block_object_dispose(&v17, 8);

    bundleApps = self->_bundleApps;
  }

  return bundleApps;
}

- (Class)usageDetailControllerClassForUsageBundleApp:(id)a3
{
  v3 = objc_opt_class();

  return v3;
}

- (float)sizeForCategory:(id)a3
{
  v4 = a3;
  v5 = [(MFMailUsageReporter *)self _categorySizes];
  v6 = [v4 identifier];
  v7 = [v5 objectForKey:v6];

  [v7 floatValue];
  v9 = v8;

  return v9;
}

@end