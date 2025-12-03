@interface AADeviceLocalization
+ (id)caseNameWithDeviceName:(id)name;
+ (id)localizedStringForKey:(id)key withDefaultValue:(id)value inTable:(id)table;
@end

@implementation AADeviceLocalization

+ (id)caseNameWithDeviceName:(id)name
{
  nameCopy = name;
  v5 = [self localizedStringForKey:@"AA_CASE_NAME" withDefaultValue:@"%@ Case"];
  nameCopy = [NSString localizedStringWithFormat:v5, nameCopy];

  return nameCopy;
}

+ (id)localizedStringForKey:(id)key withDefaultValue:(id)value inTable:(id)table
{
  keyCopy = key;
  valueCopy = value;
  tableCopy = table;
  if (qword_1002FA150 != -1)
  {
    sub_1001F18C0();
  }

  v10 = qword_1002FA148;
  v11 = v10;
  if (v10)
  {
    localizations = [v10 localizations];
    v13 = +[NSLocale preferredLanguages];
    v14 = v13;
    if (localizations && v13)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v14];
      firstObject = [v16 firstObject];

      if (firstObject)
      {
        v18 = [v11 localizedStringForKey:keyCopy value:valueCopy table:tableCopy localization:firstObject];
        if (dword_1002F6CC8 <= 10 && (dword_1002F6CC8 != -1 || _LogCategory_Initialize()))
        {
          v23 = localizations;
          v24 = v14;
          v21 = keyCopy;
          v22 = firstObject;
          v20 = v18;
          LogPrintF();
        }

        objc_autoreleasePoolPop(v15);
        if (v18)
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      }

      if (dword_1002F6CC8 <= 90 && (dword_1002F6CC8 != -1 || _LogCategory_Initialize()))
      {
        v20 = localizations;
        v21 = v14;
        LogPrintF();
      }

      objc_autoreleasePoolPop(v15);
    }

    else
    {
      if (dword_1002F6CC8 > 90)
      {
        firstObject = 0;
LABEL_33:
        v18 = [v11 localizedStringForKey:keyCopy value:valueCopy table:{tableCopy, v20, v21, v22, v23, v24}];
LABEL_34:

        goto LABEL_35;
      }

      if (dword_1002F6CC8 != -1 || _LogCategory_Initialize())
      {
        v20 = localizations;
        v21 = v14;
        LogPrintF();
      }
    }

    firstObject = 0;
LABEL_29:
    if (dword_1002F6CC8 <= 90 && (dword_1002F6CC8 != -1 || _LogCategory_Initialize()))
    {
      v20 = keyCopy;
      v21 = valueCopy;
      LogPrintF();
    }

    goto LABEL_33;
  }

  if (dword_1002F6CC8 <= 90 && (dword_1002F6CC8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F18D4();
  }

  v18 = valueCopy;
LABEL_35:

  return v18;
}

@end