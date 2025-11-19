@interface SBApplicationDropSession
+ (BOOL)_dragItemRepresentsAcceptableFileDrag:(id)a3;
+ (BOOL)_itemProviderRequiresOpenInPlace:(id)a3;
+ (BOOL)canHandleUIDragDropSession:(id)a3;
+ (SBApplicationDropSession)dropSessionWithWindowUIDragSession:(id)a3;
+ (id)_applicationForHandlingDragItem:(id)a3 URL:(id)a4 error:(id *)a5;
+ (id)_applicationForIconLeafIdentifier:(id)a3;
+ (id)_applicationProxyForIdentifiers:(id)a3 forURL:(id)a4 passingTest:(id)a5 error:(id *)a6;
+ (void)_getFileDropSessionWithUIDragDropSession:(id)a3 dragItem:(id)a4 systemSession:(id)a5 targetApplication:(id)a6 completion:(id)a7;
+ (void)_getLocalAppDropSessionWithUIDragDropSession:(id)a3 dragItem:(id)a4 systemSession:(id)a5 completion:(id)a6;
+ (void)_getURLDropSessionWithUIDragDropSession:(id)a3 dragItem:(id)a4 systemSession:(id)a5 targetApplication:(id)a6 completion:(id)a7;
+ (void)_getUserActivityDropSessionWithUIDragDropSession:(id)a3 dragItem:(id)a4 systemSession:(id)a5 targetApplication:(id)a6 completion:(id)a7;
+ (void)_getUserNotificationDropSessionWithUIDragDropSession:(id)a3 systemSession:(id)a4 dragItem:(id)a5 completion:(id)a6;
+ (void)getDropSessionWithUIDropSession:(id)a3 sceneProvider:(id)a4 defaultToSourceApplication:(BOOL)a5 completion:(id)a6;
- (BOOL)_isApplicationBoundToVisibleIcon;
- (SBActivationSettings)activationSettings;
- (SBApplicationDropSession)initWithUIDragDropSession:(id)a3 systemSession:(id)a4 application:(id)a5 activity:(id)a6 activityData:(id)a7;
- (SBApplicationDropSession)initWithUIDragDropSession:(id)a3 systemSession:(id)a4 application:(id)a5 targetContentIdentifier:(id)a6;
- (SBApplicationDropSession)initWithUIDragDropSession:(id)a3 systemSession:(id)a4 application:(id)a5 targetContentIdentifier:(id)a6 URL:(id)a7 requiresOpenInPlace:(BOOL)a8;
- (SBApplicationDropSession)initWithUIDragDropSession:(id)a3 systemSession:(id)a4 application:(id)a5 targetContentIdentifier:(id)a6 localContext:(id)a7 activity:(id)a8 activityData:(id)a9;
- (id)_activityContinuationActionFromActivity:(id)a3 activityData:(id)a4;
- (id)_initWithUIDragDropSession:(id)a3 application:(id)a4 targetContentIdentifier:(id)a5;
- (int64_t)dropZones;
- (void)calculateSceneIdentityWithSceneProvider:(id)a3 completion:(id)a4;
@end

@implementation SBApplicationDropSession

+ (BOOL)canHandleUIDragDropSession:(id)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13[0] = *MEMORY[0x277D66E40];
  v13[1] = @"com.apple.springboard.private.windowdrag";
  v13[2] = *MEMORY[0x277D78028];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v6 = [v4 hasItemsConformingToTypeIdentifiers:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = SBFSafeProtocolCast();
    if (v8)
    {
      v9 = [MEMORY[0x277D75490] sharedInstance];
      v10 = [v9 sessionForDropSession:v8];

      if (v10)
      {
        if ([v8 canLoadObjectsOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v8, "canLoadObjectsOfClass:", objc_opt_class()))
        {
          v7 = 1;
        }

        else
        {
          v11 = SBApplicationDropSessionGetDragItem(v8);
          v7 = [a1 _dragItemRepresentsAcceptableFileDrag:v11];
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (SBApplicationDropSession)dropSessionWithWindowUIDragSession:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 localContext];
  v6 = SBSafeCast(v4, v5);

  if (!v6)
  {
    +[SBApplicationDropSession dropSessionWithWindowUIDragSession:];
  }

  if ([v6 startLocation] != 8)
  {
    +[SBApplicationDropSession dropSessionWithWindowUIDragSession:];
  }

  v7 = [v6 draggedSceneIdentifier];

  if (!v7)
  {
    +[SBApplicationDropSession dropSessionWithWindowUIDragSession:];
  }

  v8 = +[SBApplicationController sharedInstance];
  v9 = [v6 applicationBundleIdentifier];
  v10 = [v8 applicationWithBundleIdentifier:v9];

  v11 = [[SBApplicationDropSession alloc] initWithUIDragDropSession:v3 systemSession:0 application:v10 targetContentIdentifier:0 localContext:v6 activity:0 activityData:0];
  v12 = [v6 draggedSceneIdentifier];
  if (v12)
  {
    v13 = [MEMORY[0x277D0ADC0] identityForIdentifier:v12];
    [(SBApplicationDropSession *)v11 setSceneIdentity:v13];
  }

  return v11;
}

+ (void)getDropSessionWithUIDropSession:(id)a3 sceneProvider:(id)a4 defaultToSourceApplication:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v94[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __112__SBApplicationDropSession_getDropSessionWithUIDropSession_sceneProvider_defaultToSourceApplication_completion___block_invoke;
  v89[3] = &unk_2783BEDF8;
  v13 = v12;
  v91 = v13;
  v14 = v11;
  v90 = v14;
  v15 = MEMORY[0x223D6F7F0](v89);
  v16 = SBApplicationDropSessionGetDragItem(v10);
  if (!v16)
  {
    v17 = [v10 items];
    v28 = [v17 count];
    v19 = SBApplicationDropSessionErrorCreate(1, @"Incorrect number of drag items: %ld [expected 1]", v29, v30, v31, v32, v33, v34, v28);
    (v15)[2](v15, 0, v19);
    goto LABEL_31;
  }

  v83 = v7;
  v17 = SBFSafeProtocolCast();
  v18 = [MEMORY[0x277D75490] sharedInstance];
  v19 = [v18 sessionForDropSession:v17];

  v94[0] = *MEMORY[0x277D66E40];
  v94[1] = @"com.apple.springboard.private.windowdrag";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
  v21 = [v10 hasItemsConformingToTypeIdentifiers:v20];

  if (!v21)
  {
    if (!v19)
    {
      v50 = SBApplicationDropSessionErrorCreate(3, @"Dragging system monitor did not return a system session.", v22, v23, v24, v25, v26, v27, v78);
      (v15)[2](v15, 0, v50);

      goto LABEL_31;
    }

    v82 = a1;
    v35 = [v16 itemProvider];
    v36 = [v35 sbui_preferredApplicationBundleIdentifier];

    v37 = [v16 itemProvider];
    v38 = [v37 sbui_requiredApplicationBundleIdentifier];

    v39 = v38;
    if (v36 | v38)
    {
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = v36;
      }

      v41 = [v82 _applicationForIconLeafIdentifier:v40];
      if (v38)
      {
        v48 = 0x277CBE000;
        if (!v41)
        {
          v49 = SBApplicationDropSessionErrorCreate(7, @"Missing required application for drag item: %@", v42, v43, v44, v45, v46, v47, v39);
          (v15)[2](v15, 0, v49);
LABEL_30:

          goto LABEL_31;
        }

LABEL_16:
        v79 = v41;
        v80 = v39;
        v81 = v36;
        v93 = *MEMORY[0x277D67F60];
        v51 = [*(v48 + 2656) arrayWithObjects:&v93 count:1];
        v52 = [v10 hasItemsConformingToTypeIdentifiers:v51];

        if (v52)
        {
          v53 = MEMORY[0x277D0AAF8];
          v54 = [v19 info];
          v55 = v54;
          if (v54)
          {
            [v54 auditToken];
          }

          else
          {
            memset(v88, 0, sizeof(v88));
          }

          v56 = [v53 authenticateAuditToken:v88 forEntitlement:@"com.apple.springboard.applicationDrag" error:0];

          if ((v56 & 1) == 0)
          {
            v65 = SBApplicationDropSessionErrorCreate(8, @"Preventing application from initiating app icon drag without entitlement.", v57, v58, v59, v60, v61, v62, v78);
            (v15)[2](v15, 0, v65);

            v49 = v79;
            v39 = v80;
            goto LABEL_29;
          }

          v84[0] = MEMORY[0x277D85DD0];
          v84[1] = 3221225472;
          v84[2] = __112__SBApplicationDropSession_getDropSessionWithUIDropSession_sceneProvider_defaultToSourceApplication_completion___block_invoke_4;
          v84[3] = &unk_2783BEE20;
          v87 = v15;
          v85 = v10;
          v86 = v19;
          [v86 loadUserActivityForItem:v16 completion:v84];
        }

        v92 = *MEMORY[0x277D78028];
        v63 = [*(v48 + 2656) arrayWithObjects:&v92 count:1];
        v64 = [v10 hasItemsConformingToTypeIdentifiers:v63];

        if (v64)
        {
          [v82 _getUserNotificationDropSessionWithUIDragDropSession:v10 systemSession:v19 dragItem:v16 completion:v15];
LABEL_24:
          v39 = v80;
          v36 = v81;
LABEL_25:
          v49 = v79;
          goto LABEL_30;
        }

        v39 = v80;
        if (![v10 canLoadObjectsOfClass:objc_opt_class()])
        {
          v36 = v81;
          if ([v82 _dragItemRepresentsAcceptableFileDrag:v16])
          {
            v49 = v79;
            [v82 _getFileDropSessionWithUIDragDropSession:v10 dragItem:v16 systemSession:v19 targetApplication:v79 completion:v15];
            goto LABEL_30;
          }

          if ([v10 canLoadObjectsOfClass:objc_opt_class()])
          {
            v49 = v79;
            [v82 _getURLDropSessionWithUIDragDropSession:v10 dragItem:v16 systemSession:v19 targetApplication:v79 completion:v15];
            goto LABEL_30;
          }

          if (v83)
          {
            v72 = [v19 info];
            v73 = +[SBApplicationController sharedInstance];
            v74 = [v73 applicationWithPid:{objc_msgSend(v72, "processIdentifier")}];

            v75 = [[SBApplicationDropSession alloc] initWithUIDragDropSession:v10 systemSession:v19 application:v74 targetContentIdentifier:0];
            if (v75)
            {
              v76 = v75;
              (v15)[2](v15, v75, 0);

              goto LABEL_24;
            }

            v39 = v80;
            v36 = v81;
          }

          v77 = SBApplicationDropSessionErrorCreate(6, @"Drag item did not contain any conforming type identifiers", v66, v67, v68, v69, v70, v71, v78);
          (v15)[2](v15, 0, v77);

          goto LABEL_25;
        }

        v49 = v79;
        [v82 _getUserActivityDropSessionWithUIDragDropSession:v10 dragItem:v16 systemSession:v19 targetApplication:v79 completion:v15];
LABEL_29:
        v36 = v81;
        goto LABEL_30;
      }
    }

    else
    {
      v41 = 0;
    }

    v48 = 0x277CBE000uLL;
    goto LABEL_16;
  }

  [a1 _getLocalAppDropSessionWithUIDragDropSession:v10 dragItem:v16 systemSession:v19 completion:v15];
LABEL_31:
}

void __112__SBApplicationDropSession_getDropSessionWithUIDropSession_sceneProvider_defaultToSourceApplication_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v10 = *(a1 + 40);
  v9 = *(a1 + 32);
  v6 = v8;
  v7 = v5;
  BSDispatchMain();
}

void __112__SBApplicationDropSession_getDropSessionWithUIDropSession_sceneProvider_defaultToSourceApplication_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v10)
  {
    if (!v9)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __112__SBApplicationDropSession_getDropSessionWithUIDropSession_sceneProvider_defaultToSourceApplication_completion___block_invoke_3;
      v16[3] = &unk_2783AA0B8;
      v13 = *(a1 + 48);
      v18 = *(a1 + 56);
      v17 = *(a1 + 32);
      [v10 calculateSceneIdentityWithSceneProvider:v13 completion:v16];

      return;
    }

    v11 = *(a1 + 56);
    goto LABEL_5;
  }

  v11 = *(a1 + 56);
  if (v9)
  {
LABEL_5:
    v12 = *(v11 + 16);

    v12(v11, v10);
    return;
  }

  v15 = SBApplicationDropSessionErrorCreate(5, @"dropSession completed without a drop session or error. Assuming application was not found.", 0, a4, v11 + 16, a6, a7, a8, v14);
  (*(v11 + 16))(v11, 0, v15);
}

uint64_t __112__SBApplicationDropSession_getDropSessionWithUIDropSession_sceneProvider_defaultToSourceApplication_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

void __112__SBApplicationDropSession_getDropSessionWithUIDropSession_sceneProvider_defaultToSourceApplication_completion___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v28 = v3;
  if (v3)
  {
    v10 = [v3 userInfo];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D67F40]];

    if (v11)
    {
      v18 = +[SBApplicationController sharedInstance];
      v19 = [v18 applicationWithBundleIdentifier:v11];

      v20 = [SBApplicationDropSession alloc];
      v21 = a1[4];
      v22 = a1[5];
      v23 = [v28 targetContentIdentifier];
      v24 = [(SBApplicationDropSession *)v20 initWithUIDragDropSession:v21 systemSession:v22 application:v19 targetContentIdentifier:v23];

      (*(a1[6] + 16))();
    }

    else
    {
      v26 = a1[6];
      v19 = SBApplicationDropSessionErrorCreate(5, @"Bundle identifier missing from user activity user info.", v12, v13, v14, v15, v16, v17, v27);
      (*(v26 + 16))(v26, 0, v19);
    }
  }

  else
  {
    v25 = a1[6];
    v11 = SBApplicationDropSessionErrorCreate(4, @"System session did not provide a user activity", v4, v5, v6, v7, v8, v9, v27);
    (*(v25 + 16))(v25, 0, v11);
  }
}

+ (void)_getLocalAppDropSessionWithUIDragDropSession:(id)a3 dragItem:(id)a4 systemSession:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [a4 sbh_appDragLocalContext];
  v20 = v13;
  if (v13)
  {
    v21 = [v13 uniqueIdentifier];
    v28 = [a1 _applicationForIconLeafIdentifier:v21];
    if (v28)
    {
      if ([v20 isSourceLocal])
      {
        v29 = 0;
      }

      else
      {
        v29 = v11;
      }

      v30 = v29;
      v31 = [v20 userActivity];
      if (v31)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __107__SBApplicationDropSession__getLocalAppDropSessionWithUIDragDropSession_dragItem_systemSession_completion___block_invoke;
        v34[3] = &unk_2783BEE48;
        v35 = v10;
        v36 = v30;
        v37 = v28;
        v38 = v20;
        v39 = v31;
        v40 = v12;
        [v39 _createUserActivityDataWithOptions:MEMORY[0x277CBEC10] completionHandler:v34];
      }

      else
      {
        v32 = [[SBApplicationDropSession alloc] initWithUIDragDropSession:v10 systemSession:v30 application:v28 targetContentIdentifier:0 localContext:v20 activity:0 activityData:0];
        (*(v12 + 2))(v12, v32, 0);
      }
    }

    else
    {
      v30 = SBApplicationDropSessionErrorCreate(2, @"Drag item contains app drag local context, but missing icon identifier.", v22, v23, v24, v25, v26, v27, v33);
      (*(v12 + 2))(v12, 0, v30);
    }
  }

  else
  {
    v21 = SBApplicationDropSessionErrorCreate(2, @"Drag item contains app drag private type identifier, but missing SBAppDragLocalContext", v14, v15, v16, v17, v18, v19, v33);
    (*(v12 + 2))(v12, 0, v21);
  }
}

void __107__SBApplicationDropSession__getLocalAppDropSessionWithUIDragDropSession_dragItem_systemSession_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[SBApplicationDropSession alloc] initWithUIDragDropSession:a1[4] systemSession:a1[5] application:a1[6] targetContentIdentifier:0 localContext:a1[7] activity:a1[8] activityData:v3];

  (*(a1[9] + 16))();
}

+ (void)_getUserNotificationDropSessionWithUIDragDropSession:(id)a3 systemSession:(id)a4 dragItem:(id)a5 completion:(id)a6
{
  v39 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [a5 sbh_appDragLocalContext];
  v19 = v12;
  if (v12)
  {
    v20 = [v12 uniqueIdentifier];
    v27 = [a1 _applicationForIconLeafIdentifier:v20];
    if (v27)
    {
      v28 = [v19 launchActions];
      v38 = [v28 anyObject];

      v29 = [v38 response];
      [v29 notification];
      v31 = v30 = v10;
      v32 = [v31 request];
      v33 = [v32 content];
      v34 = [v33 targetContentIdentifier];

      v10 = v30;
      v35 = [[SBApplicationDropSession alloc] initWithUIDragDropSession:v39 systemSession:v30 application:v27 targetContentIdentifier:v34 localContext:v19 activity:0 activityData:0];
      v11[2](v11, v35, 0);

      v36 = v38;
    }

    else
    {
      v36 = SBApplicationDropSessionErrorCreate(2, @"Drag item contains app drag local context, but missing icon identifier.", v21, v22, v23, v24, v25, v26, v37);
      (v11)[2](v11, 0, v36);
    }
  }

  else
  {
    v20 = SBApplicationDropSessionErrorCreate(2, @"Drag item contains app drag private type identifier, but missing SBAppDragLocalContext", v13, v14, v15, v16, v17, v18, v37);
    (v11)[2](v11, 0, v20);
  }
}

+ (id)_applicationForIconLeafIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[SBApplicationController sharedInstanceIfExists];
  v5 = [v4 applicationWithBundleIdentifier:v3];

  if (!v5)
  {
    v6 = +[SBIconController sharedIconRepository];
    v7 = [v6 iconForIdentifier:v3];
    if ([v7 isBookmarkIcon])
    {
      v8 = [v7 applicationToLaunch];
    }

    else
    {
      if (![v7 isApplicationIcon])
      {
        v5 = 0;
        goto LABEL_8;
      }

      v8 = [v7 application];
    }

    v5 = v8;
LABEL_8:
  }

  return v5;
}

+ (BOOL)_dragItemRepresentsAcceptableFileDrag:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [a3 itemProvider];
    LOBYTE(v4) = 1;
    v5 = [v3 registeredTypeIdentifiersWithFileOptions:1];
    v6 = [v5 count];

    if (!v6)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v7 = [v3 registeredTypeIdentifiers];
      v4 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        v8 = *v12;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v7);
            }

            if ([v3 isDataAvailableImmediatelyForTypeIdentifier:*(*(&v11 + 1) + 8 * i)])
            {
              LOBYTE(v4) = 1;
              goto LABEL_14;
            }
          }

          v4 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)_itemProviderRequiresOpenInPlace:(id)a3
{
  v3 = [a3 registeredTypeIdentifiersWithFileOptions:1];
  v4 = [v3 count] != 0;

  return v4;
}

+ (id)_applicationProxyForIdentifiers:(id)a3 forURL:(id)a4 passingTest:(id)a5 error:(id *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v29 = a4;
  v10 = a5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    v14 = *MEMORY[0x277CC1F20];
    v28 = v10;
    v15 = v29;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = MEMORY[0x277CC1EB8];
        v19 = [v15 lastPathComponent];
        v20 = [v18 documentProxyForName:v19 type:v17 MIMEType:0];

        v21 = [MEMORY[0x277CBEB98] setWithObject:v14];
        v31 = 0;
        v22 = [v20 applicationsAvailableForOpeningWithHandlerRanks:v21 error:&v31];
        v23 = v31;

        if (v23)
        {
          if (a6)
          {
            v24 = v23;
            *a6 = v23;
          }
        }

        else
        {
          v25 = [v22 objectForKeyedSubscript:v14];
          v26 = [v25 firstObject];

          if (v28[2](v28, v26))
          {

            v15 = v29;
            goto LABEL_15;
          }

          v15 = v29;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v26 = 0;
LABEL_15:
    v10 = v28;
  }

  else
  {
    v26 = 0;
    v15 = v29;
  }

  return v26;
}

+ (id)_applicationForHandlingDragItem:(id)a3 URL:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [a3 itemProvider];
  v10 = [v9 registeredTypeIdentifiersWithFileOptions:1];
  if ([v10 count])
  {
    v11 = [a1 _applicationProxyForIdentifiers:v10 forURL:v8 passingTest:&__block_literal_global_154_0 error:a5];
  }

  else
  {
    [v9 registeredTypeIdentifiers];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v27 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v22 = v10;
      v23 = v8;
      v15 = 0;
      v16 = *v25;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          if ([v9 isDataAvailableImmediatelyForTypeIdentifier:{v18, v22}])
          {
            v28 = v18;
            v15 = 1;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
            v20 = v19 = v12;
            v11 = [a1 _applicationProxyForIdentifiers:v20 forURL:v23 passingTest:&__block_literal_global_156 error:a5];

            v12 = v19;
            if (v11)
            {
              v10 = v22;
              v8 = v23;
              goto LABEL_16;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      if (v15)
      {
        v11 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.DocumentsApp"];
      }

      else
      {
        v11 = 0;
      }

      v10 = v22;
      v8 = v23;
    }

    else
    {
      v11 = 0;
LABEL_16:
    }
  }

  return v11;
}

+ (void)_getFileDropSessionWithUIDragDropSession:(id)a3 dragItem:(id)a4 systemSession:(id)a5 targetApplication:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __121__SBApplicationDropSession__getFileDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke;
  v22[3] = &unk_2783BEEB8;
  v23 = v12;
  v24 = v14;
  v27 = v16;
  v28 = a1;
  v25 = v13;
  v26 = v15;
  v17 = v15;
  v18 = v13;
  v19 = v14;
  v20 = v12;
  v21 = v16;
  [v19 loadURLForItem:v18 completion:v22];
}

void __121__SBApplicationDropSession__getFileDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __121__SBApplicationDropSession__getFileDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_2;
  v34[3] = &unk_2783BEE90;
  v39 = *(a1 + 64);
  v4 = v3;
  v35 = v4;
  v36 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v37 = v5;
  v40 = v6;
  v38 = *(a1 + 48);
  v13 = MEMORY[0x223D6F7F0](v34);
  if (v4)
  {
    v14 = *(a1 + 56);
    if (v14)
    {
      v15 = MEMORY[0x277CC1E60];
      v16 = [v14 bundleIdentifier];
      v17 = [v15 applicationProxyForIdentifier:v16];

      LODWORD(v16) = [v17 supportsOpenInPlace];
      v18 = [*(a1 + 56) bundleIdentifier];
      v25 = v18;
      if (v16)
      {
        v13[2](v13, v18, 0);
LABEL_13:

        goto LABEL_14;
      }

      v32 = v18;
      v30 = @"Provided application (%@) does not support opening file URL in place.";
      v31 = 9;
    }

    else
    {
      v26 = *(a1 + 72);
      v27 = *(a1 + 48);
      v33 = 0;
      v25 = [v26 _applicationForHandlingDragItem:v27 URL:v4 error:&v33];
      v28 = v33;
      v17 = v28;
      if (v25)
      {
        v29 = [v25 bundleIdentifier];
        (v13)[2](v13, v29, 0);
LABEL_10:

        goto LABEL_13;
      }

      if (v28)
      {
        (v13)[2](v13, 0, v28);
        goto LABEL_13;
      }

      v30 = @"LaunchServices could not find an application to open file URL in place.";
      v31 = 5;
    }

    v29 = SBApplicationDropSessionErrorCreate(v31, v30, v19, v20, v21, v22, v23, v24, v32);
    (v13)[2](v13, 0, v29);
    goto LABEL_10;
  }

  v17 = SBApplicationDropSessionErrorCreate(4, @"System session did not provide a URL", v7, v8, v9, v10, v11, v12, v32);
  (v13)[2](v13, 0, v17);
LABEL_14:
}

void __121__SBApplicationDropSession__getFileDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v11 = a3;
  if (!v24 || v11)
  {
    v22 = *(a1 + 64);
    if (v11)
    {
      (*(v22 + 16))(*(a1 + 64), 0, v11);
    }

    else
    {
      v23 = SBApplicationDropSessionErrorCreate(5, @"LaunchServices did not find app for URL: %@", v5, v6, v7, v8, v9, v10, *(a1 + 32));
      (*(v22 + 16))(v22, 0, v23);
    }
  }

  else
  {
    v12 = +[SBApplicationController sharedInstance];
    v13 = [v12 applicationWithBundleIdentifier:v24];

    v14 = [SBApplicationDropSession alloc];
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = [*(a1 + 32) absoluteString];
    v18 = *(a1 + 32);
    v19 = *(a1 + 72);
    v20 = [*(a1 + 56) itemProvider];
    v21 = -[SBApplicationDropSession initWithUIDragDropSession:systemSession:application:targetContentIdentifier:URL:requiresOpenInPlace:](v14, "initWithUIDragDropSession:systemSession:application:targetContentIdentifier:URL:requiresOpenInPlace:", v16, v15, v13, v17, v18, [v19 _itemProviderRequiresOpenInPlace:v20]);

    (*(*(a1 + 64) + 16))();
  }
}

+ (void)_getURLDropSessionWithUIDragDropSession:(id)a3 dragItem:(id)a4 systemSession:(id)a5 targetApplication:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __120__SBApplicationDropSession__getURLDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke;
  v19[3] = &unk_2783BEF30;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v14;
  [v16 loadURLForItem:a4 completion:v19];
}

void __120__SBApplicationDropSession__getURLDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __120__SBApplicationDropSession__getURLDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_2;
  v24[3] = &unk_2783BEEE0;
  v28 = *(a1 + 56);
  v4 = v3;
  v25 = v4;
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  v11 = MEMORY[0x223D6F7F0](v24);
  if (v4)
  {
    v12 = [v4 copy];
    v13 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v14 = [v13 URLOverrideForURL:v12];

    if (([v14 isEqual:v12] & 1) == 0)
    {
      v15 = SBLogMedusaDropDestination();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v12 absoluteString];
        v17 = [v14 absoluteString];
        *buf = 138543618;
        v30 = v16;
        v31 = 2114;
        v32 = v17;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "SBAppDrop: LaunchServices rewrote URL: %{public}@ -> %{public}@", buf, 0x16u);
      }
    }

    v18 = *(a1 + 48);
    if (v18)
    {
      v19 = [v18 bundleIdentifier];
      (v11)[2](v11, v19, 0);
    }

    else
    {
      v20 = MEMORY[0x277CC1E48];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __120__SBApplicationDropSession__getURLDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_174;
      v21[3] = &unk_2783BEF08;
      v23 = v11;
      v22 = v14;
      [v20 getAppLinkWithURL:v22 completionHandler:v21];

      v19 = v23;
    }
  }

  else
  {
    v12 = SBApplicationDropSessionErrorCreate(4, @"System session did not provide a URL", v5, v6, v7, v8, v9, v10, v21[0]);
    (v11)[2](v11, 0, v12);
    v14 = 0;
  }
}

void __120__SBApplicationDropSession__getURLDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_2(uint64_t *a1, void *a2, void *a3)
{
  v21 = a2;
  v11 = a3;
  if (!v21 || v11)
  {
    v19 = a1[7];
    if (v11)
    {
      (*(v19 + 16))(a1[7], 0, v11);
    }

    else
    {
      v20 = SBApplicationDropSessionErrorCreate(5, @"LaunchServices did not find app for URL: %@", v5, v6, v7, v8, v9, v10, a1[4]);
      (*(v19 + 16))(v19, 0, v20);
    }
  }

  else
  {
    v12 = +[SBApplicationController sharedInstance];
    v13 = [v12 applicationWithBundleIdentifier:v21];

    v14 = [SBApplicationDropSession alloc];
    v16 = a1[5];
    v15 = a1[6];
    v17 = [a1[4] absoluteString];
    v18 = [(SBApplicationDropSession *)v14 initWithUIDragDropSession:v16 systemSession:v15 application:v13 targetContentIdentifier:v17 URL:a1[4] requiresOpenInPlace:0];

    (*(a1[7] + 16))();
  }
}

void __120__SBApplicationDropSession__getURLDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v7 = [a2 targetApplicationProxy];
    v8 = [v7 bundleIdentifier];
    (*(v6 + 16))(v6, v8, 0);
  }

  else
  {
    v9 = SBLogMedusaDropDestination();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __120__SBApplicationDropSession__getURLDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_174_cold_1(a1, v5, v9);
    }

    v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v11 = [v10 applicationsAvailableForOpeningURL:*(a1 + 32)];
    v12 = [v11 firstObject];

    v13 = *(a1 + 40);
    v14 = [v12 bundleIdentifier];
    (*(v13 + 16))(v13, v14, 0);
  }
}

+ (void)_getUserActivityDropSessionWithUIDragDropSession:(id)a3 dragItem:(id)a4 systemSession:(id)a5 targetApplication:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __129__SBApplicationDropSession__getUserActivityDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke;
  v19[3] = &unk_2783BEFA8;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v14;
  [v16 loadUserActivityForItem:a4 completion:v19];
}

void __129__SBApplicationDropSession__getUserActivityDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __129__SBApplicationDropSession__getUserActivityDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_2;
  v36[3] = &unk_2783BEEE0;
  v40 = *(a1 + 56);
  v4 = v3;
  v37 = v4;
  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  v11 = MEMORY[0x223D6F7F0](v36);
  if (!v4)
  {
    v14 = *(a1 + 56);
    v13 = SBApplicationDropSessionErrorCreate(4, @"System session did not provide a user activity", v5, v6, v7, v8, v9, v10, v35);
    (*(v14 + 16))(v14, 0, v13);
    goto LABEL_16;
  }

  v12 = *(a1 + 48);
  if (!v12)
  {
    v13 = [v4 _determineMatchingApplicationBundleIdentifierWithOptions:0];
    if (v13 && ([MEMORY[0x277CC1E60] applicationProxyForIdentifier:v13 placeholder:0], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
    }

    else
    {
      v17 = [*(a1 + 40) info];
      v18 = v17;
      if (v17)
      {
        [v17 auditToken];
      }

      v19 = BSBundleIDForAuditToken();
      v20 = +[SBApplicationController sharedInstance];
      v21 = [v20 applicationWithBundleIdentifier:v19];
      v22 = [v21 info];

      v23 = [v22 userActivityTeamIdentifier];
      if (!v23)
      {
        v24 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v19 placeholder:0];
        v23 = [v24 teamID];
      }

      [v4 activityType];
      v25 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();
      v26 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v16 = [v26 applicationForUserActivityType:v25];

      if (!v16)
      {
        v28 = *(a1 + 56);
        v16 = [v4 activityType];
        v27 = SBApplicationDropSessionErrorCreate(5, @"LaunchServices did not find an application for user activity type: %@", v29, v30, v31, v32, v33, v34, v16);
        (*(v28 + 16))(v28, 0, v27);
        goto LABEL_15;
      }
    }

    v27 = [v16 bundleIdentifier];
    (v11)[2](v11, v27, 0);
LABEL_15:

    goto LABEL_16;
  }

  v13 = [v12 bundleIdentifier];
  (v11)[2](v11, v13, 0);
LABEL_16:
}

void __129__SBApplicationDropSession__getUserActivityDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = +[SBApplicationController sharedInstance];
    v9 = [v8 applicationWithBundleIdentifier:v5];

    v19 = a1[4];
    v22 = a1[7];
    v20 = a1[5];
    v21 = a1[6];
    v10 = v9;
    BSDispatchMain();

LABEL_7:
    goto LABEL_8;
  }

  v11 = a1[7];
  if (!v6)
  {
    v10 = [a1[4] activityType];
    v18 = SBApplicationDropSessionErrorCreate(5, @"LaunchServices did not find an application for user activity type: %@", v12, v13, v14, v15, v16, v17, v10);
    v11[2](v11, 0, v18);

    goto LABEL_7;
  }

  v11[2](a1[7], 0, v6);
LABEL_8:
}

void __129__SBApplicationDropSession__getUserActivityDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_3(id *a1)
{
  v2 = a1[4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __129__SBApplicationDropSession__getUserActivityDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_4;
  v9[3] = &unk_2783BEF58;
  v12 = a1[8];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[4];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 _createUserActivityDataWithOptions:MEMORY[0x277CBEC10] completionHandler:v9];
}

void __129__SBApplicationDropSession__getUserActivityDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_4(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(a1[8] + 16))();
  }

  else
  {
    v5 = [[SBApplicationDropSession alloc] initWithUIDragDropSession:a1[4] systemSession:a1[5] application:a1[6] activity:a1[7] activityData:v6];
    (*(a1[8] + 16))();
  }
}

- (BOOL)_isApplicationBoundToVisibleIcon
{
  v3 = +[SBIconController sharedIconRepository];
  if ([(SBApplication *)self->_application isWebApplication])
  {
    v4 = [(SBApplicationDropSession *)self localContext];
    v5 = [v4 draggedSceneIdentifier];

    v6 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v5];
    v7 = [v3 iconForIdentifier:v6];
  }

  else
  {
    v5 = [(SBApplication *)self->_application bundleIdentifier];
    v7 = [v3 applicationIconForBundleIdentifier:v5];
  }

  return v7 != 0;
}

- (id)_initWithUIDragDropSession:(id)a3 application:(id)a4 targetContentIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = SBApplicationDropSession;
  v12 = [(SBApplicationDropSession *)&v18 init];
  v13 = v12;
  if (v12 && (objc_storeStrong(&v12->_uiDragDropSession, a3), objc_storeStrong(&v13->_application, a4), v14 = [v11 copy], targetContentIdentifier = v13->_targetContentIdentifier, v13->_targetContentIdentifier = v14, targetContentIdentifier, !v10))
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

- (SBApplicationDropSession)initWithUIDragDropSession:(id)a3 systemSession:(id)a4 application:(id)a5 targetContentIdentifier:(id)a6
{
  v11 = a4;
  v12 = [(SBApplicationDropSession *)self _initWithUIDragDropSession:a3 application:a5 targetContentIdentifier:a6];
  v13 = v12;
  if (v12 && (objc_storeStrong(v12 + 7, a4), [MEMORY[0x277CBEB98] set], v14 = objc_claimAutoreleasedReturnValue(), v15 = v13[9], v13[9] = v14, v15, (objc_msgSend(v13, "_isApplicationBoundToVisibleIcon") & 1) == 0))
  {
    v17 = SBLogMedusaDropDestination();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationDropSession initWithUIDragDropSession:v13 systemSession:? application:? targetContentIdentifier:?];
    }

    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

- (SBApplicationDropSession)initWithUIDragDropSession:(id)a3 systemSession:(id)a4 application:(id)a5 targetContentIdentifier:(id)a6 localContext:(id)a7 activity:(id)a8 activityData:(id)a9
{
  v52[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v46 = a8;
  v45 = a9;
  v18 = [(SBApplicationDropSession *)self _initWithUIDragDropSession:v15 application:a5 targetContentIdentifier:a6];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_23;
  }

  objc_storeStrong(v18 + 7, a4);
  objc_storeStrong((v19 + 64), a7);
  v52[0] = *MEMORY[0x277D78028];
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  v21 = [v15 hasItemsConformingToTypeIdentifiers:v20];

  if (v21)
  {
    *(v19 + 16) = 1;
  }

  v22 = [v17 launchActions];
  v23 = [v22 mutableCopy];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = [MEMORY[0x277CBEB58] set];
  }

  v26 = v25;

  v27 = [v17 launchURL];

  if (v27)
  {
    v44 = v16;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v28 = v26;
    v29 = [v28 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
LABEL_10:
      v32 = 0;
      while (1)
      {
        if (*v48 != v31)
        {
          objc_enumerationMutation(v28);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v30 == ++v32)
        {
          v30 = [v28 countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (v30)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:

      v33 = objc_alloc(MEMORY[0x277D757D0]);
      v34 = [v17 launchURL];
      v35 = [v33 initWithURL:v34];
      [v28 addObject:v35];

      v28 = v34;
    }

    v16 = v44;
  }

  v37 = v45;
  v36 = v46;
  if (v46 && v45)
  {
    v38 = [v19 _activityContinuationActionFromActivity:v46 activityData:v45];
    [v26 addObject:v38];
  }

  v39 = [v26 copy];
  v40 = *(v19 + 72);
  *(v19 + 72) = v39;

  if ([v19 _isApplicationBoundToVisibleIcon])
  {

LABEL_23:
    v41 = v19;
    v37 = v45;
    v36 = v46;
    goto LABEL_27;
  }

  v42 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    [SBApplicationDropSession initWithUIDragDropSession:v19 systemSession:? application:? targetContentIdentifier:?];
  }

  v41 = 0;
LABEL_27:

  return v41;
}

- (SBApplicationDropSession)initWithUIDragDropSession:(id)a3 systemSession:(id)a4 application:(id)a5 targetContentIdentifier:(id)a6 URL:(id)a7 requiresOpenInPlace:(BOOL)a8
{
  v8 = a8;
  v61 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = [(SBApplicationDropSession *)self _initWithUIDragDropSession:a3 application:v16 targetContentIdentifier:a6];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_21;
  }

  objc_storeStrong(v18 + 7, a4);
  v20 = MEMORY[0x277CBEB98];
  v21 = [objc_alloc(MEMORY[0x277D757D0]) initWithURL:v17];
  v22 = [v20 setWithObject:v21];
  v23 = *(v19 + 72);
  *(v19 + 72) = v22;

  if ([v17 isFileURL])
  {
    if (v8)
    {
      v24 = dispatch_group_create();
      v25 = *(v19 + 8);
      *(v19 + 8) = v24;

      dispatch_group_enter(*(v19 + 8));
      [v17 startAccessingSecurityScopedResource];
      [v16 bundleIdentifier];
      v56 = v19;
      v57 = v17;
      FPExtendBookmarkForDocumentURL();

      v26 = v56;
    }

    else
    {
      v26 = [v17 lastPathComponent];
      v27 = [v16 info];
      v28 = [v27 dataContainerURL];
      v29 = [v28 URLByAppendingPathComponent:@"tmp" isDirectory:1];

      if (v29 && v26)
      {
        v55 = v26;
        v30 = MEMORY[0x277CCACA8];
        v31 = v17;
        v32 = v29;
        v54 = [v30 stringWithFormat:@"%@.XXXXXX", @"drag&Drop"];
        v33 = [v32 URLByAppendingPathComponent:? isDirectory:?];
        v53 = v32;

        v34 = [v33 path];
        [v34 getFileSystemRepresentation:v60 maxLength:1024];

        if (mkdtemp(v60))
        {
          v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:v60];
          v36 = [MEMORY[0x277CBEBC0] fileURLWithPath:v35 isDirectory:1];

          v33 = v36;
        }

        v37 = [v33 URLByAppendingPathComponent:v55];

        v38 = [v31 fileSystemRepresentation];
        v39 = 0;
        if (!copyfile(v38, [v37 fileSystemRepresentation], 0, 0x100800Fu))
        {
          v39 = v37;
        }

        if (v39)
        {
          v40 = MEMORY[0x277CBEB98];
          v41 = [objc_alloc(MEMORY[0x277D757D0]) initWithURL:v39];
          v42 = [v40 setWithObject:v41];
          v43 = *(v19 + 72);
          *(v19 + 72) = v42;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [SBApplicationDropSession initWithUIDragDropSession:v53 systemSession:? application:? targetContentIdentifier:? URL:? requiresOpenInPlace:?];
        }
      }

      v44 = [v16 bundleIdentifier];
      v45 = [v44 isEqualToString:@"com.apple.DocumentsApp"];

      if (v45)
      {
        v46 = objc_alloc_init(SBActivationSettings);
        v47 = *(v19 + 24);
        *(v19 + 24) = v46;

        v48 = *(v19 + 24);
        v58 = *MEMORY[0x277D77518];
        v59 = MEMORY[0x277CBEC38];
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        [v48 setObject:v49 forActivationSetting:16];
      }
    }
  }

  if (([v19 _isApplicationBoundToVisibleIcon] & 1) == 0)
  {
    v51 = SBLogMedusaDropDestination();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationDropSession initWithUIDragDropSession:v19 systemSession:? application:? targetContentIdentifier:?];
    }

    v50 = 0;
  }

  else
  {
LABEL_21:
    v50 = v19;
  }

  return v50;
}

void __128__SBApplicationDropSession_initWithUIDragDropSession_systemSession_application_targetContentIdentifier_URL_requiresOpenInPlace___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = objc_alloc_init(SBActivationSettings);
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    v9 = *(*(a1 + 32) + 24);
    v10 = *MEMORY[0x277CC1DF8];
    v13[0] = *MEMORY[0x277CC1E28];
    v13[1] = v10;
    v14[0] = MEMORY[0x277CBEC38];
    v14[1] = v5;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v9 setObject:v11 forActivationSetting:16];
  }

  if (a3)
  {
    v12 = SBLogMedusaDropDestination();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __128__SBApplicationDropSession_initWithUIDragDropSession_systemSession_application_targetContentIdentifier_URL_requiresOpenInPlace___block_invoke_cold_1(a1, v12);
    }
  }

  [*(a1 + 40) stopAccessingSecurityScopedResource];
  dispatch_group_leave(*(*(a1 + 32) + 8));
}

- (SBApplicationDropSession)initWithUIDragDropSession:(id)a3 systemSession:(id)a4 application:(id)a5 activity:(id)a6 activityData:(id)a7
{
  v28[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a5;
  v17 = [v14 targetContentIdentifier];
  v18 = [(SBApplicationDropSession *)self _initWithUIDragDropSession:v12 application:v16 targetContentIdentifier:v17];

  if (!v18)
  {
    goto LABEL_5;
  }

  objc_storeStrong(v18 + 7, a4);
  v28[0] = *MEMORY[0x277D768B8];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v20 = [v12 hasItemsConformingToTypeIdentifiers:v19];

  if (v20)
  {
    *(v18 + 17) = 1;
  }

  v21 = MEMORY[0x277CBEB98];
  v22 = [v18 _activityContinuationActionFromActivity:v14 activityData:v15];
  v23 = [v21 setWithObject:v22];
  v24 = v18[9];
  v18[9] = v23;

  if (([v18 _isApplicationBoundToVisibleIcon] & 1) == 0)
  {
    v26 = SBLogMedusaDropDestination();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationDropSession initWithUIDragDropSession:v18 systemSession:? application:? targetContentIdentifier:?];
    }

    v25 = 0;
  }

  else
  {
LABEL_5:
    v25 = v18;
  }

  return v25;
}

- (id)_activityContinuationActionFromActivity:(id)a3 activityData:(id)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithCapacity:4];
  [v8 setObject:v6 forKeyedSubscript:&unk_283371A50];

  v9 = [v7 activityType];
  [v8 setObject:v9 forKeyedSubscript:&unk_283371A68];

  v10 = [v7 activityType];

  [v8 setObject:v10 forKeyedSubscript:&unk_283371A80];
  v11 = [MEMORY[0x277CBEAA8] date];
  [v8 setObject:v11 forKeyedSubscript:&unk_283371A98];

  v12 = [objc_alloc(MEMORY[0x277D750D8]) initWithSettings:v8];

  return v12;
}

- (SBActivationSettings)activationSettings
{
  activationSettingsGroup = self->_activationSettingsGroup;
  if (activationSettingsGroup)
  {
    v4 = BSDispatchTimeWithInterval();
    dispatch_group_wait(activationSettingsGroup, v4);
  }

  activationSettings = self->_activationSettings;

  return activationSettings;
}

- (void)calculateSceneIdentityWithSceneProvider:(id)a3 completion:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [(SBApplicationDropSession *)self application];
  if (!v8)
  {
    [SBApplicationDropSession calculateSceneIdentityWithSceneProvider:completion:];
  }

  v9 = [(SBApplicationDropSession *)self localContext];
  v10 = [v9 draggedSceneIdentifier];

  if (v10)
  {
    v11 = [MEMORY[0x277D0ADC0] identityForIdentifier:v10];
    sceneIdentity = self->_sceneIdentity;
    self->_sceneIdentity = v11;
  }

  else
  {
    v13 = [v8 info];
    v14 = [v13 supportsMultiwindow];

    if (v14)
    {
      v15 = [(SBApplicationDropSession *)self uiDragDropSession];
      v20[0] = *MEMORY[0x277D66E40];
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      v17 = [v15 hasItemsConformingToTypeIdentifiers:v16];

      v18 = [v6 preferredSceneIdentityForApplication:v8 targetContentIdentifier:self->_targetContentIdentifier preferNewScene:v17 ^ 1u];
    }

    else
    {
      v18 = [v6 mostRecentSceneIdentityExcludingLiveScenesForApplication:v8];
    }

    v19 = v18;
    if (!v18)
    {
      [SBApplicationDropSession calculateSceneIdentityWithSceneProvider:completion:];
    }

    sceneIdentity = self->_sceneIdentity;
    self->_sceneIdentity = v19;
  }

  v7[2](v7, 0);
}

- (int64_t)dropZones
{
  v3 = [(SBApplicationDropSession *)self systemSession];
  if (v3 && ![(SBApplicationDropSession *)self isNotificationDrag])
  {
    v5 = [(SBApplicationDropSession *)self localContext];
    v4 = [v5 startLocation] != 5;
  }

  else
  {

    v4 = 0;
  }

  if ([(SBApplicationDropSession *)self isWindowTearOff])
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

+ (void)dropSessionWithWindowUIDragSession:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)dropSessionWithWindowUIDragSession:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)dropSessionWithWindowUIDragSession:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __120__SBApplicationDropSession__getURLDropSessionWithUIDragDropSession_dragItem_systemSession_targetApplication_completion___block_invoke_174_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "SBAppDrop: LSAppLink did not find appLink for URL: %{public}@ %{public}@", &v4, 0x16u);
}

- (void)initWithUIDragDropSession:(uint64_t)a1 systemSession:application:targetContentIdentifier:.cold.1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_29(a1) bundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "SBAppDrop: Bound to an application without an icon: %{public}@", v4, v5, v6, v7, v8);
}

- (void)initWithUIDragDropSession:(uint64_t)a1 systemSession:application:targetContentIdentifier:URL:requiresOpenInPlace:.cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*__error()];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "FAILED to clone file to directory %@ errno %@", &v3, 0x16u);
}

void __128__SBApplicationDropSession_initWithUIDragDropSession_systemSession_application_targetContentIdentifier_URL_requiresOpenInPlace___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to extend bookmark for document URL %@", &v3, 0xCu);
}

- (void)calculateSceneIdentityWithSceneProvider:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)calculateSceneIdentityWithSceneProvider:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end