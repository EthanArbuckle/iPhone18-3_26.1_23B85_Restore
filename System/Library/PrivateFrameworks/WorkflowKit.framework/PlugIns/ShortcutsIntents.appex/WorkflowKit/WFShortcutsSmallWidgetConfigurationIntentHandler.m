@interface WFShortcutsSmallWidgetConfigurationIntentHandler
- (WFShortcutsSmallWidgetConfigurationIntentHandler)init;
- (id)defaultShortcutForShortcutsSmallWidgetConfiguration:(id)a3;
- (id)shortcutFromWorkflowReference:(id)a3;
- (void)provideShortcutOptionsCollectionForShortcutsSmallWidgetConfiguration:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5;
@end

@implementation WFShortcutsSmallWidgetConfigurationIntentHandler

- (void)provideShortcutOptionsCollectionForShortcutsSmallWidgetConfiguration:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[WFDatabase defaultDatabase];
  v10 = v9;
  if (v7)
  {
    [v9 sortedVisibleWorkflowsNameContains:v7 limit:300];
  }

  else
  {
    [v9 sortedVisibleWorkflowsByNameWithLimit:300];
  }
  v11 = ;

  v12 = [v11 descriptors];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003034;
  v15[3] = &unk_1000084A0;
  v15[4] = self;
  v13 = [v12 if_map:v15];

  v14 = [[INObjectCollection alloc] initWithItems:v13];
  v8[2](v8, v14, 0);
}

- (id)defaultShortcutForShortcutsSmallWidgetConfiguration:(id)a3
{
  v4 = [[WFWorkflowQuery alloc] initWithLocation:0];
  [v4 setResultsLimit:1];
  v5 = +[WFDatabase defaultDatabase];
  v6 = [v5 sortedWorkflowsWithQuery:v4];
  v7 = [v6 descriptors];
  v8 = [v7 firstObject];

  v9 = [(WFShortcutsSmallWidgetConfigurationIntentHandler *)self shortcutFromWorkflowReference:v8];

  return v9;
}

- (id)shortcutFromWorkflowReference:(id)a3
{
  v3 = a3;
  v4 = [WFShortcut alloc];
  v5 = [v3 identifier];
  v6 = [v3 name];
  v7 = [(WFShortcut *)v4 initWithIdentifier:v5 displayString:v6];

  v8 = [v3 icon];
  v9 = [v8 backgroundColorValue];

  if (v9)
  {
    v10 = [NSNumber numberWithInteger:v9];
    v39 = v10;
    v9 = [NSArray arrayWithObjects:&v39 count:1];
  }

  v11 = +[VCVoiceShortcutClient standardClient];
  v12 = [v3 icon];
  v13 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v12 glyphCharacter]);
  v38 = v13;
  v14 = [NSArray arrayWithObjects:&v38 count:1];
  v15 = [v11 drawGlyphs:v14 atSize:v9 withBackgroundColorValues:0 error:{30.0, 30.0}];

  if ([v15 count])
  {
    v16 = [v15 firstObject];

    Mutable = CFDataCreateMutable(0, 0);
    v18 = [UTTypePNG identifier];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v19 = off_10000E0A8;
    v37 = off_10000E0A8;
    if (!off_10000E0A8)
    {
      v20 = sub_1000037A4();
      v35[3] = dlsym(v20, "CGImageDestinationCreateWithData");
      off_10000E0A8 = v35[3];
      v19 = v35[3];
    }

    _Block_object_dispose(&v34, 8);
    if (v19)
    {
      v21 = v19(Mutable, v18, 1, 0);

      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v22 = off_10000E0B8;
      v37 = off_10000E0B8;
      if (!off_10000E0B8)
      {
        v23 = sub_1000037A4();
        v35[3] = dlsym(v23, "CGImageDestinationAddImage");
        off_10000E0B8 = v35[3];
        v22 = v35[3];
      }

      _Block_object_dispose(&v34, 8);
      if (v22)
      {
        v22(v21, v16, 0);
        v34 = 0;
        v35 = &v34;
        v36 = 0x2020000000;
        v24 = off_10000E0C0;
        v37 = off_10000E0C0;
        if (!off_10000E0C0)
        {
          v25 = sub_1000037A4();
          v35[3] = dlsym(v25, "CGImageDestinationFinalize");
          off_10000E0C0 = v35[3];
          v24 = v35[3];
        }

        _Block_object_dispose(&v34, 8);
        if (v24)
        {
          v24(v21);
          v26 = [INImage imageWithImageData:Mutable];
          [v26 _setRenderingMode:1];
          if (v26)
          {
            [(WFShortcut *)v7 setDisplayImage:v26];
          }

          CFRelease(v21);
          CFRelease(Mutable);

          goto LABEL_16;
        }

        v32 = +[NSAssertionHandler currentHandler];
        v33 = [NSString stringWithUTF8String:"_Bool WFCGImageDestinationFinalize(CGImageDestinationRef _Nonnull)"];
        [v32 handleFailureInFunction:v33 file:@"WFShortcutsWidgetConfigurationIntentHandler.m" lineNumber:29 description:{@"%s", dlerror()}];
      }

      else
      {
        v30 = +[NSAssertionHandler currentHandler];
        v31 = [NSString stringWithUTF8String:"void WFCGImageDestinationAddImage(CGImageDestinationRef _Nonnull, CGImageRef _Nonnull, CFDictionaryRef _Nullable)"];
        [v30 handleFailureInFunction:v31 file:@"WFShortcutsWidgetConfigurationIntentHandler.m" lineNumber:28 description:{@"%s", dlerror()}];
      }
    }

    else
    {
      v28 = +[NSAssertionHandler currentHandler];
      v29 = [NSString stringWithUTF8String:"CGImageDestinationRef  _Nullable WFCGImageDestinationCreateWithData(CFMutableDataRef _Nonnull, CFStringRef _Nonnull, size_t, CFDictionaryRef _Nullable)"];
      [v28 handleFailureInFunction:v29 file:@"WFShortcutsWidgetConfigurationIntentHandler.m" lineNumber:27 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

LABEL_16:

  return v7;
}

- (WFShortcutsSmallWidgetConfigurationIntentHandler)init
{
  v5.receiver = self;
  v5.super_class = WFShortcutsSmallWidgetConfigurationIntentHandler;
  v2 = [(WFShortcutsSmallWidgetConfigurationIntentHandler *)&v5 init];
  if (v2)
  {
    [WFInitialization initializeProcessWithDatabase:1];
    v3 = v2;
  }

  return v2;
}

@end