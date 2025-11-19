@interface SBSApplicationClient
- (id)applicationShortcutItemsOfTypes:(unint64_t)a3 forBundleIdentifier:(id)a4;
- (void)deleteSnapshotsForApplicationIdentifier:(id)a3;
- (void)fetchApplicationShortcutItemsOfTypes:(unint64_t)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)fetchWhitePointAdaptivityStyleForDisplayId:(unsigned int)a3 withCompletionHandler:(id)a4;
- (void)requestShelfPresentationForSceneWithIdentifier:(id)a3;
- (void)triggerShowAllWindowsForApplicationBundleIdentifier:(id)a3;
- (void)updateDynamicApplicationShortcutItems:(id)a3 bundleIdentifier:(id)a4;
@end

@implementation SBSApplicationClient

- (void)deleteSnapshotsForApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E699FCF8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__SBSApplicationClient_deleteSnapshotsForApplicationIdentifier___block_invoke;
  v8[3] = &unk_1E735FDF8;
  v9 = v4;
  v6 = v4;
  v7 = [v5 messageWithPacker:v8];
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:3];
}

- (void)fetchWhitePointAdaptivityStyleForDisplayId:(unsigned int)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__SBSApplicationClient_fetchWhitePointAdaptivityStyleForDisplayId_withCompletionHandler___block_invoke;
    v10[3] = &__block_descriptor_36_e33_v16__0__NSObject_OS_xpc_object__8l;
    v11 = a3;
    v7 = [MEMORY[0x1E699FCF8] messageWithPacker:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __89__SBSApplicationClient_fetchWhitePointAdaptivityStyleForDisplayId_withCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E735FD90;
    v9 = v6;
    [(FBSServiceFacilityClient *)self sendMessage:v7 withType:0 replyHandler:v8 waitForReply:0 timeout:0.0];
  }
}

void __89__SBSApplicationClient_fetchWhitePointAdaptivityStyleForDisplayId_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = [a2 payload];
  if (xdict && MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80])
  {
    xpc_dictionary_get_int64(xdict, "whitePointAdaptivityStyle");
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchApplicationShortcutItemsOfTypes:(unint64_t)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = MEMORY[0x1E699FCF8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __103__SBSApplicationClient_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletionHandler___block_invoke;
    v14[3] = &unk_1E735FE20;
    v15 = v8;
    v16 = a3;
    v11 = [v10 messageWithPacker:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __103__SBSApplicationClient_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletionHandler___block_invoke_2;
    v12[3] = &unk_1E735FD90;
    v13 = v9;
    [(FBSServiceFacilityClient *)self sendMessage:v11 withType:1 replyHandler:v12 waitForReply:0 timeout:0.0];
  }
}

void __103__SBSApplicationClient_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    BSSerializeStringToXPCDictionaryWithKey();
    v3 = v4;
  }

  xpc_dictionary_set_uint64(v3, "itemTypes", *(a1 + 40));
}

void __103__SBSApplicationClient_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v4 = v3;
  if (v3 && MEMORY[0x193AFFE60](v3) == MEMORY[0x1E69E9E80])
  {
    v5 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(a1 + 32) + 16))();
}

- (id)applicationShortcutItemsOfTypes:(unint64_t)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v7 = MEMORY[0x1E699FCF8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__SBSApplicationClient_applicationShortcutItemsOfTypes_forBundleIdentifier___block_invoke;
  v13[3] = &unk_1E735FE20;
  v8 = v6;
  v14 = v8;
  v15 = a3;
  v9 = [v7 messageWithPacker:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__SBSApplicationClient_applicationShortcutItemsOfTypes_forBundleIdentifier___block_invoke_2;
  v12[3] = &unk_1E735FE70;
  v12[4] = &v16;
  [(FBSServiceFacilityClient *)self sendMessage:v9 withType:1 replyHandler:v12 waitForReply:1 timeout:0.0];

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __76__SBSApplicationClient_applicationShortcutItemsOfTypes_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    BSSerializeStringToXPCDictionaryWithKey();
    v3 = v4;
  }

  xpc_dictionary_set_uint64(v3, "itemTypes", *(a1 + 40));
}

void __76__SBSApplicationClient_applicationShortcutItemsOfTypes_forBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    v8 = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = v8;
    if (v4)
    {
      v5 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v3 = v8;
    }
  }
}

- (void)updateDynamicApplicationShortcutItems:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E699FCF8];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __79__SBSApplicationClient_updateDynamicApplicationShortcutItems_bundleIdentifier___block_invoke;
  v15 = &unk_1E7360440;
  v16 = v7;
  v17 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 messageWithPacker:&v12];
  [(FBSServiceFacilityClient *)self sendMessage:v11 withType:2, v12, v13, v14, v15];
}

void __79__SBSApplicationClient_updateDynamicApplicationShortcutItems_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    BSSerializeStringToXPCDictionaryWithKey();
  }

  BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
}

- (void)triggerShowAllWindowsForApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E699FCF8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__SBSApplicationClient_triggerShowAllWindowsForApplicationBundleIdentifier___block_invoke;
  v8[3] = &unk_1E735FDF8;
  v9 = v4;
  v6 = v4;
  v7 = [v5 messageWithPacker:v8];
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:4];
}

uint64_t __76__SBSApplicationClient_triggerShowAllWindowsForApplicationBundleIdentifier___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return BSSerializeStringToXPCDictionaryWithKey();
  }

  return result;
}

- (void)requestShelfPresentationForSceneWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E699FCF8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__SBSApplicationClient_requestShelfPresentationForSceneWithIdentifier___block_invoke;
  v8[3] = &unk_1E735FDF8;
  v9 = v4;
  v6 = v4;
  v7 = [v5 messageWithPacker:v8];
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:5];
}

uint64_t __71__SBSApplicationClient_requestShelfPresentationForSceneWithIdentifier___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return BSSerializeStringToXPCDictionaryWithKey();
  }

  return result;
}

@end