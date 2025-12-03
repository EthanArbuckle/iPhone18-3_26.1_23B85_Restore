@interface UIFoundationBundleHelper
+ (id)XPCInterface;
+ (id)bundleHelper;
- (void)__localizedInfoDictionaryObjectForKeys:(id)keys withPlugInUUID:(id)d completion:(id)completion;
- (void)__queryPhotoServiceAuthorizationStatusForPlugInUUID:(id)d completion:(id)completion;
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

- (void)__localizedInfoDictionaryObjectForKeys:(id)keys withPlugInUUID:(id)d completion:(id)completion
{
  keysCopy = keys;
  dCopy = d;
  completionCopy = completion;
  v10 = +[NSMutableDictionary dictionary];
  v35 = 0;
  v11 = [[LSApplicationExtensionRecord alloc] initWithUUID:dCopy error:&v35];
  v12 = v35;
  if (!v11)
  {
    v29 = 0;
    v30 = completionCopy;

    v36 = NSLocalizedDescriptionKey;
    uUIDString = [dCopy UUIDString];
    uUIDString2 = [NSString stringWithFormat:@"Unable to resolve plugin for UUID %@", uUIDString];
    v37 = uUIDString2;
    v22 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v23 = [NSError errorWithDomain:NSCocoaErrorDomain code:-2 userInfo:v22];
LABEL_17:

    v10 = 0;
    v12 = v23;
LABEL_18:
    v11 = v29;
    completionCopy = v30;
    goto LABEL_19;
  }

  v13 = [v11 URL];
  uUIDString = [NSBundle bundleWithURL:v13];

  if (!uUIDString)
  {
    v29 = v11;
    v30 = completionCopy;

    v38 = NSLocalizedDescriptionKey;
    uUIDString2 = [dCopy UUIDString];
    v22 = [NSString stringWithFormat:@"Unable to resolve plugin for UUID %@", uUIDString2];
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
  uUIDString2 = keysCopy;
  v16 = [uUIDString2 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v29 = v11;
    v30 = completionCopy;
    v28 = keysCopy;
    v18 = *v32;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(uUIDString2);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        v21 = [uUIDString objectForInfoDictionaryKey:v20];
        v22 = v21;
        if (v21)
        {
          if (![v21 conformsToProtocol:&OBJC_PROTOCOL___NSSecureCoding])
          {

            v40 = NSLocalizedDescriptionKey;
            uUIDString3 = [dCopy UUIDString];
            v26 = [NSString stringWithFormat:@"Value of info dictionary key %@ for plugin with UUID %@ does not conform to secure coding!", v20, uUIDString3];
            v41 = v26;
            v27 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            v23 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:v27];

            v12 = uUIDString3;
            keysCopy = v28;
            goto LABEL_17;
          }

          [v10 setObject:v22 forKey:v20];
        }
      }

      v17 = [uUIDString2 countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    keysCopy = v28;
    goto LABEL_18;
  }

LABEL_19:

  completionCopy[2](completionCopy, v10, v12);
}

- (void)__queryPhotoServiceAuthorizationStatusForPlugInUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = [[LSApplicationExtensionRecord alloc] initWithUUID:dCopy error:0];
  containingBundleRecord = [v7 containingBundleRecord];
  if (containingBundleRecord && (Default = CFAllocatorGetDefault(), (v10 = CFBundleCreate(Default, [containingBundleRecord URL])) != 0))
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
    (*(completionCopy + 2))(completionCopy, *(v18 + 24), 0);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v21 = NSLocalizedDescriptionKey;
    uUIDString = [dCopy UUIDString];
    v14 = [NSString stringWithFormat:@"Unable to resolve plugin for UUID %@", uUIDString];
    v22 = v14;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    v15 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:v12];
    (*(completionCopy + 2))(completionCopy, 0, v15);
  }
}

@end