@interface WFWorkflowContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4;
- (WFWorkflowReference)workflowReference;
- (id)actionCount;
- (id)folderName;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)workflowIcon;
- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5;
@end

@implementation WFWorkflowContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Shortcuts (plural)", @"Shortcuts");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Shortcut (singular)", @"Shortcut");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E6996FE0];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v5 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcut"];
  v6 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcuts.workflow-file"];
  v7 = [MEMORY[0x1E69E0AF8] typeWithString:*MEMORY[0x1E6997150]];
  v8 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v9 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, v7, v8, 0}];

  return v9;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObjects:{v3, 0}];

  return v4;
}

+ (id)stringConversionBehavior
{
  v2 = MEMORY[0x1E6996D70];
  v3 = [a1 propertyForName:@"Name"];
  v4 = [v2 accessingProperty:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v21[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6996D90];
  v20 = WFLocalizedContentPropertyNameMarker(@"Folder");
  v19 = [v2 keyPath:@"folderName" name:v20 class:objc_opt_class()];
  v21[0] = v19;
  v3 = MEMORY[0x1E6996D90];
  v18 = WFLocalizedContentPropertyNameMarker(@"Icon");
  v4 = [v3 keyPath:@"workflowIcon" name:v18 class:objc_opt_class()];
  v5 = [v4 filterable:0];
  v21[1] = v5;
  v6 = MEMORY[0x1E6996D90];
  v7 = WFLocalizedContentPropertyNameMarker(@"Action Count");
  v8 = [v6 keyPath:@"actionCount" name:v7 class:objc_opt_class()];
  v21[2] = v8;
  v9 = MEMORY[0x1E6996D90];
  v10 = WFLocalizedContentPropertyNameMarker(@"Last Modified Date");
  v11 = [v9 keyPath:@"workflowReference.modificationDate" name:v10 class:objc_opt_class()];
  v12 = [v11 userInfo:*MEMORY[0x1E6997070]];
  v13 = [v12 tense:1];
  v14 = [v13 timeUnits:8444];
  v21[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4
{
  if (a3)
  {
    height = a4.height;
    width = a4.width;
    v8 = MEMORY[0x1E69E0E08];
    v9 = a3;
    v10 = [(WFWorkflowContentItem *)self workflowReference];
    v11 = [v10 icon];
    v12 = [v8 imageWithIcon:v11 size:{width, height}];
    (*(a3 + 2))(v9, v12, 0);
  }

  return 1;
}

- (BOOL)getListSubtitle:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(WFWorkflowContentItem *)self workflowReference];
    v7 = [v6 subtitle];
    (*(a3 + 2))(v5, v7);
  }

  return 1;
}

- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v26 = 0;
  v10 = [(WFWorkflowContentItem *)self getRepresentationsForType:v9 error:&v26];
  v11 = v26;
  v12 = [v10 firstObject];
  v13 = [v12 object];

  if (!v13)
  {
    v7[2](v7, 0, v11);
    goto LABEL_15;
  }

  if (![v8 conformsToString:@"com.apple.shortcut"])
  {
    if ([v8 conformsToString:@"com.apple.shortcuts.workflow-file"])
    {
      v15 = [v13 fileRepresentation];
      v22 = 0;
      v16 = [v15 writeToDiskWithFormat:100 error:&v22];
      v17 = v22;

      (v7)[2](v7, v16, v17);
    }

    else
    {
      if (![v8 conformsToString:*MEMORY[0x1E6997150]])
      {
        v14 = [objc_opt_class() badCoercionErrorForType:v8];
        v7[2](v7, 0, v14);
        goto LABEL_4;
      }

      v18 = [v13 fileRepresentation];
      v21 = 0;
      v19 = [v18 fileDataWithFormat:100 error:&v21];
      v16 = v21;

      if (v19)
      {
        v20 = [MEMORY[0x1E6996E20] fileWithData:v19 ofType:v8 proposedFilename:0];
        (v7)[2](v7, v20, v16);
      }

      else
      {
        v7[2](v7, 0, v16);
      }
    }

    goto LABEL_15;
  }

  v14 = [(WFShortcutExporter *)[WFP2PSignedShortcutFileExporter alloc] initWithWorkflowRecord:v13];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68__WFWorkflowContentItem_generateFileRepresentation_options_forType___block_invoke;
  v23[3] = &unk_1E837DCC8;
  v25 = v7;
  v24 = v13;
  [(WFP2PSignedShortcutFileExporter *)v14 exportWorkflowWithCompletion:v23];

LABEL_4:
LABEL_15:
}

void __68__WFWorkflowContentItem_generateFileRepresentation_options_forType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = MEMORY[0x1E6996E20];
    v6 = *(a1 + 32);
    v7 = a3;
    v8 = [v6 name];
    v9 = [v5 fileWithURL:v12 options:3 ofType:0 proposedFilename:v8];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v74[1] = *MEMORY[0x1E69E9840];
  v59 = a4;
  if (objc_opt_class() == a3)
  {
    v25 = MEMORY[0x1E6996EC8];
    v26 = [(WFWorkflowContentItem *)self workflowIcon];
    v27 = [(WFWorkflowContentItem *)self name];
    v28 = [v25 object:v26 named:v27];
    goto LABEL_9;
  }

  if (objc_opt_class() == a3)
  {
    v29 = [(WFWorkflowContentItem *)self workflowReference];
    v30 = +[WFDatabaseProxy defaultDatabase];
    v31 = [v30 workflowRecordForDescriptor:v29 error:a5];

    v24 = [MEMORY[0x1E6996EC8] object:v31];

    goto LABEL_14;
  }

  if (objc_opt_class() == a3)
  {
    v32 = [(WFWorkflowContentItem *)self internalRepresentation];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_13;
    }

    v34 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
    v35 = [(WFWorkflowContentItem *)self getRepresentationsForType:v34 error:0];
    v36 = [v35 firstObject];
    v26 = [v36 object];

    v55 = [WFWorkflowReference alloc];
    v56 = [v26 name];
    v58 = [v26 icon];
    v54 = [v58 backgroundColorValue];
    v57 = [v26 icon];
    v52 = [v57 glyphCharacter];
    v53 = [v26 associatedAppBundleIdentifier];
    v51 = [v26 searchAttributionAppBundleIdentifier];
    v37 = [v26 workflowSubtitle];
    v50 = [v26 actionsDescription];
    v38 = [v26 actions];
    v49 = [v38 count];
    v39 = [v26 syncHash];
    v40 = [v26 creationDate];
    v41 = [v26 modificationDate];
    v42 = [v26 remoteQuarantineHash];
    LOBYTE(v36) = [v26 disabledOnLockScreen];
    v43 = [v26 source];
    LOBYTE(v48) = 0;
    BYTE3(v47) = v36;
    BYTE2(v47) = 0;
    LOWORD(v47) = 0;
    LOWORD(v46) = 0;
    v27 = [WFWorkflowReference initWithIdentifier:v55 name:"initWithIdentifier:name:color:glyphCharacter:associatedAppBundleIdentifier:searchAttributionAppBundleIdentifier:subtitle:actionsDescription:actionCount:syncHash:isDeleted:hiddenFromLibraryAndSync:creationDate:modificationDate:lastRunDate:remoteQuarantineStatus:remoteQuarantineHash:showInSearch:receivesInputFromSearch:hasShortcutInputVariables:disabledOnLockScreen:source:runEventsCount:hasOutputAction:" color:@"soup" glyphCharacter:v56 associatedAppBundleIdentifier:v54 searchAttributionAppBundleIdentifier:v52 subtitle:v53 actionsDescription:v51 actionCount:v37 syncHash:v50 isDeleted:v49 hiddenFromLibraryAndSync:v39 creationDate:v46 modificationDate:v40 lastRunDate:v41 remoteQuarantineStatus:0 remoteQuarantineHash:0 showInSearch:v42 receivesInputFromSearch:v47 hasShortcutInputVariables:v43 disabledOnLockScreen:0 source:v48 runEventsCount:? hasOutputAction:?];

    v28 = [MEMORY[0x1E6996EC8] object:v27];
LABEL_9:
    v24 = v28;

    goto LABEL_14;
  }

  if (objc_opt_class() != a3)
  {
LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  v8 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(WFWorkflowContentItem *)self workflowReference];
    v10 = [v9 identifier];
    *buf = 136315394;
    *&buf[4] = "[WFWorkflowContentItem generateObjectRepresentationForClass:options:error:]";
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Creating LNEntity for asset: %@", buf, 0x16u);
  }

  v11 = objc_alloc(MEMORY[0x1E69ACE40]);
  v12 = [v11 initWithBundleIdentifier:*MEMORY[0x1E69E0F60]];
  v13 = objc_alloc(MEMORY[0x1E69AC7D8]);
  v14 = [(WFWorkflowContentItem *)self workflowReference];
  v15 = [v14 identifier];
  v16 = *MEMORY[0x1E69970F0];
  v17 = [v13 initWithValue:v15 typeName:*MEMORY[0x1E69970F0]];

  v18 = objc_alloc(MEMORY[0x1E69ACFB0]);
  v74[0] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
  v20 = [v18 initWithIdentifiers:v19 entityType:v16];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v71 = __Block_byref_object_copy__64724;
  v72 = __Block_byref_object_dispose__64725;
  v73 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__64724;
  v68 = __Block_byref_object_dispose__64725;
  v69 = 0;
  v21 = dispatch_semaphore_create(0);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __76__WFWorkflowContentItem_generateObjectRepresentationForClass_options_error___block_invoke;
  v60[3] = &unk_1E837DC98;
  v62 = buf;
  v63 = &v64;
  v22 = v21;
  v61 = v22;
  [v12 performQuery:v20 completionHandler:v60];
  v23 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v22, v23);
  v24 = [MEMORY[0x1E6996EC8] object:*(*&buf[8] + 40) named:v65[5]];

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(buf, 8);

LABEL_14:
  v44 = *MEMORY[0x1E69E9840];

  return v24;
}

void __76__WFWorkflowContentItem_generateObjectRepresentationForClass_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 value];
    v9 = [v8 value];
    v26 = 136315650;
    v27 = "[WFWorkflowContentItem generateObjectRepresentationForClass:options:error:]_block_invoke";
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Recieved output: %@ error: %@", &v26, 0x20u);
  }

  v10 = [v5 value];
  v11 = [v10 value];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 firstObject];

  v15 = [v14 value];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [v14 displayRepresentation];
  v21 = [v20 title];
  v22 = [v21 wf_localizedString];
  v23 = *(*(a1 + 48) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  dispatch_semaphore_signal(*(a1 + 32));
  v25 = *MEMORY[0x1E69E9840];
}

- (id)folderName
{
  v3 = +[WFDatabaseProxy defaultDatabase];
  v4 = [(WFWorkflowContentItem *)self workflowReference];
  v5 = [v3 folderForWorkflowReference:v4 error:0];

  v6 = [v5 name];

  return v6;
}

- (id)actionCount
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(WFWorkflowContentItem *)self workflowReference];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "actionCount")}];

  return v4;
}

- (id)workflowIcon
{
  v2 = MEMORY[0x1E69E0E08];
  v3 = [(WFWorkflowContentItem *)self workflowReference];
  v4 = [v3 icon];
  v5 = [v2 imageWithIcon:v4 size:{512.0, 512.0}];

  return v5;
}

- (WFWorkflowReference)workflowReference
{
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [(WFWorkflowContentItem *)self getRepresentationsForType:v3 error:0];
  v5 = [v4 firstObject];
  v6 = [v5 object];

  return v6;
}

@end