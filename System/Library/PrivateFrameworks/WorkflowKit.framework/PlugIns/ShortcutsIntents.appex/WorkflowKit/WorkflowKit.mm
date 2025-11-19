void sub_100001938(uint64_t a1, void *a2)
{
  v3 = WFHandoffSourceKey;
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  v7 = WFWorkflowRunSourceHandoff;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 objectForKey:WFHandoffWorkflowControllerStateKey];

  (*(*(a1 + 32) + 16))();
}

void sub_100002388(uint64_t a1, void *a2)
{
  v3 = [a2 parameters];
  v4 = [v3 objectForKey:@"type"];
  v5 = [v3 objectForKey:@"webpageURL"];
  v6 = [v3 objectForKey:@"userInfoURL"];
  v7 = [NSURL URLWithString:v6];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000024D0;
  v12[3] = &unk_100008338;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v5;
  v15 = v9;
  v13 = v4;
  v10 = v5;
  v11 = v4;
  [v8 deserializeUserInfoAtURL:v7 completionHandler:v12];
}

void sub_10000269C(id a1)
{
  qword_10000E098 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

id sub_1000028FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [*(a1 + 40) database];
    v6 = [WFWorkflow workflowWithReference:v3 database:v5 error:0];

    [v6 actions];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) appDescriptor];
          v13 = [v12 bundleIdentifier];

          if (v13 && [*(a1 + 32) containsObject:v13])
          {
            v14 = [v3 shortcutOverview];

            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_14:

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v14 = [v3 shortcutOverview];
  }

  return v14;
}

WFFolder *__cdecl sub_100002D1C(id a1, WFWorkflowCollection *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [WFFolder alloc];
  v5 = [(WFWorkflowCollection *)v3 identifier];
  v6 = [(WFWorkflowCollection *)v3 name];
  v7 = [(WFFolder *)v4 initWithIdentifier:v5 displayString:v6];

  [(WFWorkflowCollection *)v3 glyphCharacter];
  v8 = WFSystemImageNameForOutlineGlyphCharacter();
  if (v8)
  {
    v9 = [INImage systemImageNamed:v8];
    [(WFFolder *)v7 setDisplayImage:v9];
  }

  return v7;
}

id sub_100003034(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) shortcutFromWorkflowReference:v3];
  objc_autoreleasePoolPop(v4);

  return v5;
}

void sub_10000372C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100003754(uint64_t a1)
{
  v2 = sub_1000037A4();
  result = dlsym(v2, "CGImageDestinationCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000E0A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000037A4()
{
  v4[0] = 0;
  if (!qword_10000E0B0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100003998;
    v4[4] = &unk_100008500;
    v4[5] = v4;
    v5 = off_1000084E8;
    v6 = 0;
    qword_10000E0B0 = _sl_dlopen();
  }

  v0 = qword_10000E0B0;
  if (!qword_10000E0B0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *ImageIOLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFShortcutsWidgetConfigurationIntentHandler.m" lineNumber:26 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *sub_1000038F8(uint64_t a1)
{
  v2 = sub_1000037A4();
  result = dlsym(v2, "CGImageDestinationAddImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000E0B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100003948(uint64_t a1)
{
  v2 = sub_1000037A4();
  result = dlsym(v2, "CGImageDestinationFinalize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000E0C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003998(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000E0B0 = result;
  return result;
}