@interface NSBundleAccessibility
- (BOOL)loadAndReturnError:(id *)error;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table;
@end

@implementation NSBundleAccessibility

- (BOOL)loadAndReturnError:(id *)error
{
  v9.receiver = self;
  v9.super_class = NSBundleAccessibility;
  v4 = [(NSBundleAccessibility *)&v9 loadAndReturnError:error];
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  useNewAXBundleLoader = [mEMORY[0x1E6989890] useNewAXBundleLoader];

  if ((useNewAXBundleLoader & 1) == 0)
  {
    if (loadAndReturnError__registerOnce != -1)
    {
      [NSBundleAccessibility loadAndReturnError:];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__NSBundleAccessibility_loadAndReturnError___block_invoke_2;
    block[3] = &unk_1E78AB028;
    block[4] = self;
    dispatch_async(loadAndReturnError__DifferentQueue, block);
  }

  return v4;
}

uint64_t __44__NSBundleAccessibility_loadAndReturnError___block_invoke()
{
  loadAndReturnError__DifferentQueue = dispatch_queue_create("ax-load-bundle-queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table
{
  keyCopy = key;
  valueCopy = value;
  tableCopy = table;
  v35.receiver = self;
  v35.super_class = NSBundleAccessibility;
  v12 = [(NSBundleAccessibility *)&v35 localizedStringForKey:keyCopy value:valueCopy table:tableCopy];
  if ((localizedStringForKey_value_table__RecursiveCall & 1) == 0)
  {
    v13 = _AXSAutomationLocalizedStringLookupInfoEnabled();
    v14 = _AXSAutomationPreferredLocalization();
    if (!v13 && !v14)
    {
LABEL_24:

      goto LABEL_25;
    }

    v33 = v14;
    if (v14)
    {
      selfCopy = self;
      InstanceMethod = class_getInstanceMethod(+[NSBundleAccessibility superclass], a2);
      Implementation = method_getImplementation(InstanceMethod);
      v18 = (Implementation)(selfCopy, a2, keyCopy, valueCopy, tableCopy);
      if (v18)
      {
        v19 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v18];

        [v19 setAttribute:v12 forKey:@"UIAccessibilityTokenLocalizedStringTranslation"];
      }

      else
      {
        v30 = v33;
        v31 = v12;
        v28 = @"%@: Failed to lookup alternate localization '%@' of localized string '%@'.";
        v29 = selfCopy;
        LOBYTE(v27) = 1;
        _AXLogWithFacility();

        v19 = 0;
      }

      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v19 = 0;
      if (v13)
      {
LABEL_11:
        v20 = 1;
        localizedStringForKey_value_table__RecursiveCall = 1;
        if (!tableCopy)
        {
          v34.receiver = self;
          v34.super_class = NSBundleAccessibility;
          tableCopy = @"Localizable";
          v21 = [(NSBundleAccessibility *)&v34 localizedStringForKey:keyCopy value:0 table:@"Localizable"];
          v20 = v21 != 0;
        }

        v32 = v20;
        v22 = AXNSLocalizedStringForLocale();
        localizedStringForKey_value_table__RecursiveCall = 0;
        if (!v19)
        {
          v19 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v12];
        }

        v23 = [(NSBundleAccessibility *)self bundleIdentifier:v27];
        bundlePath = [(NSBundleAccessibility *)self bundlePath];
        [v19 setAttribute:v23 forKey:@"UIAccessibilityTokenLocalizedStringBundleID"];
        [v19 setAttribute:bundlePath forKey:@"UIAccessibilityTokenLocalizationBundlePath"];
        [v19 setAttribute:keyCopy forKey:@"UIAccessibilityTokenLocalizedStringKey"];
        if (v32)
        {
          [v19 setAttribute:tableCopy forKey:@"UIAccessibilityTokenLocalizedStringTableName"];
        }

        if (v22)
        {
          [v19 setAttribute:v22 forKey:@"UIAccessibilityTokenLocalizedStringEnglishVersion"];
        }
      }
    }

    if (v19)
    {
      v25 = [v19 copy];
      [v12 performSelector:sel__setAccessibilityAttributedLocalizedString_ withObject:v25];
    }

    else
    {
      _AXLogWithFacility();
    }

    v14 = v33;
    goto LABEL_24;
  }

LABEL_25:

  return v12;
}

@end