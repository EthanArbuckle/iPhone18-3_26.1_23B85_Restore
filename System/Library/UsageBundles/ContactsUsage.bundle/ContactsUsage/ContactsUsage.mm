@interface ContactsUsage
- (float)sizeForCategory:(id)category;
- (id)usageBundleApps;
- (void)populateUsageBundleApps;
@end

@implementation ContactsUsage

- (void)populateUsageBundleApps
{
  if (!self->_cachedBundleApps)
  {
    v3 = ABAddressBookCreateWithOptions(0, 0);
    if (ABAddressBookGetPersonCount(v3) >= 1)
    {
      v4 = +[NSFileManager defaultManager];
      v28 = 0;
      if ([v4 fileExistsAtPath:@"/var/mobile/Library/AddressBook/" isDirectory:&v28] && v28 == 1)
      {
        v5 = [NSURL fileURLWithPath:@"/var/mobile/Library/AddressBook/"];
        v31 = NSURLFileSizeKey;
        v6 = [NSArray arrayWithObjects:&v31 count:1];
        v7 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:v6 options:0 errorHandler:&stru_4110];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            v12 = 0;
            do
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v24 + 1) + 8 * v12);
              v23 = 0;
              if ([v13 getResourceValue:&v23 forKey:NSURLFileSizeKey error:0])
              {
                v14 = v23;
                self->_totalSize += [v14 unsignedLongLongValue];
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
          }

          while (v10);
        }
      }
    }

    CFRelease(v3);
    *&v15 = self->_totalSize;
    v16 = [PSUsageBundleApp usageBundleAppForBundleWithIdentifier:@"com.apple.MobileAddressBook" withTotalSize:v15];
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"Contacts & Images" value:&stru_4190 table:@"Contacts"];
    v19 = [PSUsageBundleCategory categoryNamed:v18 withIdentifier:@"/var/mobile/Library/AddressBook/" forUsageBundleApp:v16];

    v29 = v19;
    v20 = [NSArray arrayWithObjects:&v29 count:1];
    [v16 setCategories:v20];

    v21 = [[NSArray alloc] initWithObjects:{v16, 0}];
    cachedBundleApps = self->_cachedBundleApps;
    self->_cachedBundleApps = v21;
  }
}

- (id)usageBundleApps
{
  cachedBundleApps = self->_cachedBundleApps;
  if (!cachedBundleApps)
  {
    [(ContactsUsage *)self populateUsageBundleApps];
    cachedBundleApps = self->_cachedBundleApps;
  }

  return cachedBundleApps;
}

- (float)sizeForCategory:(id)category
{
  v3 = [NSNumber numberWithUnsignedLongLong:self->_totalSize];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

@end