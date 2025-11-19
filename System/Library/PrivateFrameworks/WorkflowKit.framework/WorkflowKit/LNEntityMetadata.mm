@interface LNEntityMetadata
@end

@implementation LNEntityMetadata

void __82__LNEntityMetadata_Strings__wf_descriptionClassForEntityType_appBundleIdentifier___block_invoke()
{
  v65[11] = *MEMORY[0x1E69E9840];
  v64[0] = *MEMORY[0x1E69E0E48];
  v62[0] = @"CalendarEntity";
  v41 = objc_opt_self();
  v63[0] = v41;
  v62[1] = @"CalendarScreenType";
  v40 = objc_opt_self();
  v63[1] = v40;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
  v65[0] = v39;
  v64[1] = *MEMORY[0x1E69E0EC8];
  v60 = @"MTLinkTab";
  v38 = objc_opt_self();
  v61 = v38;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v65[1] = v37;
  v64[2] = *MEMORY[0x1E69E0E68];
  v58 = @"DOCFileEntity";
  v36 = objc_opt_self();
  v59 = v36;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v65[2] = v35;
  v64[3] = *MEMORY[0x1E69E0EA0];
  v56[0] = @"AccountEntity";
  v34 = objc_opt_self();
  v57[0] = v34;
  v56[1] = @"MailboxEntity";
  v33 = objc_opt_self();
  v57[1] = v33;
  v56[2] = @"MessageEntity";
  v32 = objc_opt_self();
  v57[2] = v32;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];
  v65[3] = v31;
  v64[4] = *MEMORY[0x1E69E0EB8];
  v54[0] = @"CKChatItem";
  v30 = objc_opt_self();
  v55[0] = v30;
  v54[1] = @"CKConversation";
  v29 = objc_opt_self();
  v55[1] = v29;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
  v65[4] = v28;
  v64[5] = *MEMORY[0x1E69E0EE8];
  v52[0] = @"AccountEntity";
  v27 = objc_opt_self();
  v53[0] = v27;
  v52[1] = @"AppLocationEntity";
  v26 = objc_opt_self();
  v53[1] = v26;
  v52[2] = @"FolderEntity";
  v25 = objc_opt_self();
  v53[2] = v25;
  v52[3] = @"NoteEntity";
  v24 = objc_opt_self();
  v53[3] = v24;
  v52[4] = @"TagEntity";
  v23 = objc_opt_self();
  v53[4] = v23;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:5];
  v65[5] = v22;
  v64[6] = *MEMORY[0x1E69E0F08];
  v50[0] = @"TTRListEntity";
  v21 = objc_opt_self();
  v51[0] = v21;
  v50[1] = @"TTRReminderEntity";
  v20 = objc_opt_self();
  v51[1] = v20;
  v50[2] = @"TTRSmartListEntity";
  v19 = objc_opt_self();
  v51[2] = v19;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
  v65[6] = v18;
  v64[7] = *MEMORY[0x1E69E0F10];
  v48[0] = @"TabEntity";
  v17 = objc_opt_self();
  v49[0] = v17;
  v48[1] = @"TabGroupEntity";
  v16 = objc_opt_self();
  v49[1] = v16;
  v48[2] = @"ReadingListItemEntity";
  v15 = objc_opt_self();
  v49[2] = v15;
  v48[3] = @"BookmarkEntity";
  v14 = objc_opt_self();
  v49[3] = v14;
  v48[4] = @"ViewEntity";
  v13 = objc_opt_self();
  v49[4] = v13;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:5];
  v65[7] = v12;
  v64[8] = *MEMORY[0x1E69E0FB0];
  v46[0] = @"RootNavigationDestination";
  v0 = objc_opt_self();
  v46[1] = @"WFWorkflowReference";
  v47[0] = v0;
  v1 = objc_opt_self();
  v47[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v65[8] = v2;
  v64[9] = *MEMORY[0x1E69E0F98];
  v44[0] = @"RCFolderEntity";
  v3 = objc_opt_self();
  v45[0] = v3;
  v44[1] = @"RCRecordingEntity";
  v4 = objc_opt_self();
  v45[1] = v4;
  v44[2] = @"RCUIElementEntity";
  v5 = objc_opt_self();
  v45[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];
  v65[9] = v6;
  v64[10] = *MEMORY[0x1E69E0E40];
  v42 = @"BookAppEntity";
  v7 = objc_opt_self();
  v43 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v65[10] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:11];
  v10 = wf_descriptionClassForEntityType_appBundleIdentifier__descriptionClassForEntityTypeByAppBundleIdentifier;
  wf_descriptionClassForEntityType_appBundleIdentifier__descriptionClassForEntityTypeByAppBundleIdentifier = v9;

  v11 = *MEMORY[0x1E69E9840];
}

BOOL __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke(uint64_t a1, void *a2, const char *a3, id block)
{
  v7 = imp_implementationWithBlock(block);
  ClassMethod = class_getClassMethod(*(a1 + 32), a3);
  TypeEncoding = method_getTypeEncoding(ClassMethod);
  Class = object_getClass(a2);

  return class_addMethod(Class, a3, v7, TypeEncoding);
}

id __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = *(a1 + 40);
  }

  return v2;
}

@end