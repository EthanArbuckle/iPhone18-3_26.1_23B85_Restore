@interface VMUsageBundleStorageReporter
- (VMUsageBundleStorageReporter)init;
- (id)usageBundleApps;
- (int)getRecursiveSizeForPath:(id)a3 fileManager:(id)a4 outSize:(unint64_t *)a5;
- (unint64_t)size;
@end

@implementation VMUsageBundleStorageReporter

- (VMUsageBundleStorageReporter)init
{
  v6.receiver = self;
  v6.super_class = VMUsageBundleStorageReporter;
  v2 = [(VMUsageBundleStorageReporter *)&v6 init];
  if (v2)
  {
    v3 = [[VMVoicemailManager alloc] initWithoutMailSync];
    voicemailManager = v2->_voicemailManager;
    v2->_voicemailManager = v3;
  }

  return v2;
}

- (id)usageBundleApps
{
  *&v2 = [(VMUsageBundleStorageReporter *)self size];
  v3 = [PSUsageBundleApp usageBundleAppForBundleWithIdentifier:@"com.apple.mobilephone" withTotalSize:v2];
  v4 = sub_CE0(@"Voicemail");
  [v3 setName:v4];

  v5 = sub_CE0(@"Voicemails");
  v6 = [PSUsageBundleCategory categoryNamed:v5 withIdentifier:@"com.apple.mobilephone" forUsageBundleApp:v3];

  v11 = v6;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  [v3 setCategories:v7];

  if (v3)
  {
    v10 = v3;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)getRecursiveSizeForPath:(id)a3 fileManager:(id)a4 outSize:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  v32 = 0;
  if (![v9 fileExistsAtPath:v8 isDirectory:&v32])
  {
    v19 = 0;
    goto LABEL_21;
  }

  if (v32 == 1)
  {
    v23 = a5;
    if (([v8 hasSuffix:@"/"] & 1) == 0)
    {
      v10 = [v8 stringByAppendingString:@"/"];

      v8 = v10;
    }

    [v9 enumeratorAtPath:{v8, v23}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v31 = 0u;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v29;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [v8 stringByAppendingString:*(*(&v28 + 1) + 8 * i)];
          v27 = 0;
          v17 = [(VMUsageBundleStorageReporter *)self getRecursiveSizeForPath:v16 fileManager:v9 outSize:&v27];
          v18 = v27;

          if (v17)
          {

            goto LABEL_26;
          }

          v13 += v18;
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 0;
    }

    a5 = v24;
  }

  else
  {
    v13 = 0;
  }

  v26 = 0;
  v20 = [v9 attributesOfItemAtPath:v8 error:&v26];
  if (v20)
  {
    v21 = v20;
    v19 = [v20 fileSize] + v13;

LABEL_21:
    v17 = 0;
    if (a5)
    {
      *a5 = v19;
    }

    goto LABEL_26;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v17 = 13;
LABEL_26:

  return v17;
}

- (unint64_t)size
{
  v3 = [(VMUsageBundleStorageReporter *)self voicemailManager];
  v4 = [v3 messageCountForMailboxType:0 error:0];

  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [(VMUsageBundleStorageReporter *)self getRecursiveSizeForPath:@"/var/mobile/Library/Voicemail" fileManager:v5 outSize:&v8];

  if (v6)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

@end