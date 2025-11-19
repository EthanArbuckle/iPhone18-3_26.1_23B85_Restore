@interface AADeviceLocalization
+ (id)caseNameWithDeviceName:(id)a3;
+ (id)localizedStringForKey:(id)a3 withDefaultValue:(id)a4 inTable:(id)a5;
@end

@implementation AADeviceLocalization

+ (id)caseNameWithDeviceName:(id)a3
{
  v4 = a3;
  v5 = [a1 localizedStringForKey:@"AA_CASE_NAME" withDefaultValue:@"%@ Case"];
  v6 = [NSString localizedStringWithFormat:v5, v4];

  return v6;
}

+ (id)localizedStringForKey:(id)a3 withDefaultValue:(id)a4 inTable:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (qword_1002FA150 != -1)
  {
    sub_1001F18C0();
  }

  v10 = qword_1002FA148;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 localizations];
    v13 = +[NSLocale preferredLanguages];
    v14 = v13;
    if (v12 && v13)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = [NSBundle preferredLocalizationsFromArray:v12 forPreferences:v14];
      v17 = [v16 firstObject];

      if (v17)
      {
        v18 = [v11 localizedStringForKey:v7 value:v8 table:v9 localization:v17];
        if (dword_1002F6CC8 <= 10 && (dword_1002F6CC8 != -1 || _LogCategory_Initialize()))
        {
          v23 = v12;
          v24 = v14;
          v21 = v7;
          v22 = v17;
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
        v20 = v12;
        v21 = v14;
        LogPrintF();
      }

      objc_autoreleasePoolPop(v15);
    }

    else
    {
      if (dword_1002F6CC8 > 90)
      {
        v17 = 0;
LABEL_33:
        v18 = [v11 localizedStringForKey:v7 value:v8 table:{v9, v20, v21, v22, v23, v24}];
LABEL_34:

        goto LABEL_35;
      }

      if (dword_1002F6CC8 != -1 || _LogCategory_Initialize())
      {
        v20 = v12;
        v21 = v14;
        LogPrintF();
      }
    }

    v17 = 0;
LABEL_29:
    if (dword_1002F6CC8 <= 90 && (dword_1002F6CC8 != -1 || _LogCategory_Initialize()))
    {
      v20 = v7;
      v21 = v8;
      LogPrintF();
    }

    goto LABEL_33;
  }

  if (dword_1002F6CC8 <= 90 && (dword_1002F6CC8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F18D4();
  }

  v18 = v8;
LABEL_35:

  return v18;
}

@end