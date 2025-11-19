@interface UIFoundationBundleHelper
+ (id)XPCInterface;
+ (id)bundleHelper;
- (void)__localizedInfoDictionaryObjectForKeys:(id)a3 withPlugInUUID:(id)a4 completion:(id)a5;
- (void)__queryPhotoServiceAuthorizationStatusForPlugInUUID:(id)a3 completion:(id)a4;
@end

@implementation UIFoundationBundleHelper

+ (id)bundleHelper
{
  if (qword_100008780 != -1)
  {
    sub_100001554();
  }

  v3 = qword_100008788;

  return v3;
}

+ (id)XPCInterface
{
  if (qword_100008790 != -1)
  {
    sub_100001568();
  }

  v3 = qword_100008798;

  return v3;
}

- (void)__localizedInfoDictionaryObjectForKeys:(id)a3 withPlugInUUID:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSMutableDictionary dictionary];
  v35 = 0;
  v11 = [[LSApplicationExtensionRecord alloc] initWithUUID:v8 error:&v35];
  v12 = v35;
  if (!v11)
  {
    v29 = 0;
    v30 = v9;

    v36 = NSLocalizedDescriptionKey;
    v14 = [v8 UUIDString];
    v15 = [NSString stringWithFormat:@"Unable to resolve plugin for UUID %@", v14];
    v37 = v15;
    v22 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v23 = [NSError errorWithDomain:NSCocoaErrorDomain code:-2 userInfo:v22];
LABEL_17:

    v10 = 0;
    v12 = v23;
LABEL_18:
    v11 = v29;
    v9 = v30;
    goto LABEL_19;
  }

  v13 = [v11 URL];
  v14 = [NSBundle bundleWithURL:v13];

  if (!v14)
  {
    v29 = v11;
    v30 = v9;

    v38 = NSLocalizedDescriptionKey;
    v15 = [v8 UUIDString];
    v22 = [NSString stringWithFormat:@"Unable to resolve plugin for UUID %@", v15];
    v39 = v22;
    v24 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v23 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:v24];

    v12 = v24;
    goto LABEL_17;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v29 = v11;
    v30 = v9;
    v28 = v7;
    v18 = *v32;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        v21 = [v14 objectForInfoDictionaryKey:v20];
        v22 = v21;
        if (v21)
        {
          if (![v21 conformsToProtocol:&OBJC_PROTOCOL___NSSecureCoding])
          {

            v40 = NSLocalizedDescriptionKey;
            v25 = [v8 UUIDString];
            v26 = [NSString stringWithFormat:@"Value of info dictionary key %@ for plugin with UUID %@ does not conform to secure coding!", v20, v25];
            v41 = v26;
            v27 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            v23 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:v27];

            v12 = v25;
            v7 = v28;
            goto LABEL_17;
          }

          [v10 setObject:v22 forKey:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v7 = v28;
    goto LABEL_18;
  }

LABEL_19:

  v9[2](v9, v10, v12);
}

- (void)__queryPhotoServiceAuthorizationStatusForPlugInUUID:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[LSApplicationExtensionRecord alloc] initWithUUID:v5 error:0];
  v8 = [v7 containingBundleRecord];
  if (v8 && (Default = CFAllocatorGetDefault(), (v10 = CFBundleCreate(Default, [v8 URL])) != 0))
  {
    v11 = v10;
    v12 = TCCAccessCopyInformationForBundle();
    CFRelease(v11);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000013B8;
    v16[3] = &unk_1000041F0;
    v16[4] = &v17;
    [v12 enumerateObjectsUsingBlock:v16];
    (*(v6 + 2))(v6, *(v18 + 24), 0);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v21 = NSLocalizedDescriptionKey;
    v13 = [v5 UUIDString];
    v14 = [NSString stringWithFormat:@"Unable to resolve plugin for UUID %@", v13];
    v22 = v14;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:v12];
    (*(v6 + 2))(v6, 0, v15);
  }
}

@end