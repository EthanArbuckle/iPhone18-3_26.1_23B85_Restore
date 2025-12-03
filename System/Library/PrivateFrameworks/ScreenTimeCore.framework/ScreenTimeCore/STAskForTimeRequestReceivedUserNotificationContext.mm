@interface STAskForTimeRequestReceivedUserNotificationContext
- (STAskForTimeRequestReceivedUserNotificationContext)initWithAskForTimeRequestIdentifier:(id)identifier childName:(id)name childDSID:(id)d requestedResourceName:(id)resourceName;
- (STAskForTimeRequestReceivedUserNotificationContext)initWithAskForTimeRequestIdentifier:(id)identifier familyMember:(id)member requestedResourceName:(id)name;
- (STAskForTimeRequestReceivedUserNotificationContext)initWithCoder:(id)coder;
- (void)_fetchAndWriteFamilyPhotoURLIfNeeded:(id)needed;
- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAskForTimeRequestReceivedUserNotificationContext

- (STAskForTimeRequestReceivedUserNotificationContext)initWithAskForTimeRequestIdentifier:(id)identifier childName:(id)name childDSID:(id)d requestedResourceName:(id)resourceName
{
  v19[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dCopy = d;
  resourceNameCopy = resourceName;
  v18.receiver = self;
  v18.super_class = STAskForTimeRequestReceivedUserNotificationContext;
  v14 = [(STUserNotificationContext *)&v18 initWithIdentifier:identifier];
  if (v14)
  {
    v19[0] = nameCopy;
    v19[1] = resourceNameCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    [(STUserNotificationContext *)v14 setLocalizedUserNotificationBodyArguments:v15];

    objc_storeStrong(&v14->_childDSID, d);
    objc_storeStrong(&v14->_childName, name);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (STAskForTimeRequestReceivedUserNotificationContext)initWithAskForTimeRequestIdentifier:(id)identifier familyMember:(id)member requestedResourceName:(id)name
{
  nameCopy = name;
  memberCopy = member;
  identifierCopy = identifier;
  firstName = [memberCopy firstName];
  dsid = [memberCopy dsid];

  v13 = [(STAskForTimeRequestReceivedUserNotificationContext *)self initWithAskForTimeRequestIdentifier:identifierCopy childName:firstName childDSID:dsid requestedResourceName:nameCopy];
  return v13;
}

- (STAskForTimeRequestReceivedUserNotificationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = STAskForTimeRequestReceivedUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"childDSID"];
    childDSID = v5->_childDSID;
    v5->_childDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"childName"];
    childName = v5->_childName;
    v5->_childName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STAskForTimeRequestReceivedUserNotificationContext;
  coderCopy = coder;
  [(STUserNotificationContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_childDSID forKey:{@"childDSID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_childName forKey:@"childName"];
}

- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block
{
  contentCopy = content;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __103__STAskForTimeRequestReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = contentCopy;
  selfCopy = self;
  v14 = blockCopy;
  v10.receiver = self;
  v10.super_class = STAskForTimeRequestReceivedUserNotificationContext;
  v8 = blockCopy;
  v9 = contentCopy;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

void __103__STAskForTimeRequestReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(id *a1)
{
  v2 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:@"AskForTimeRequestReceivedNotificationTitle" arguments:0];
  [a1[4] setTitle:v2];

  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1[5] localizedUserNotificationBodyArguments];
  v5 = [v3 localizedUserNotificationStringForKey:@"AskForTimeRequestReceivedNotificationBody" arguments:v4];
  [a1[4] setBody:v5];

  [a1[4] setCategoryIdentifier:@"com.apple.screentime.ask-request"];
  v6 = [a1[5] childDSID];
  v7 = [a1[5] identifier];
  v8 = v6;
  v9 = v7;
  v10 = objc_opt_new();
  [v10 setScheme:@"prefs"];
  if (v8)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@&path=CHILD_%@", @"root=SCREEN_TIME", v8];
    [v10 setPath:v11];

    if (v9)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ASK_%@", v9];
      [v10 setFragment:v12];
    }
  }

  else
  {
    [v10 setPath:@"root=SCREEN_TIME"];
  }

  v13 = [v10 URL];

  [a1[4] setDefaultActionURL:v13];
  [a1[4] setInterruptionLevel:2];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__STAskForTimeRequestReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke_2;
  v15[3] = &unk_1E7CE6D58;
  v14 = a1[5];
  v16 = a1[4];
  v17 = a1[6];
  [v14 _fetchAndWriteFamilyPhotoURLIfNeeded:v15];
}

uint64_t __103__STAskForTimeRequestReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    v4 = [v3 lastPathComponent];
    v5 = [v4 stringByDeletingPathExtension];

    v6 = MEMORY[0x1E6983268];
    v15 = *MEMORY[0x1E69833C0];
    v16[0] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = 0;
    v8 = [v6 attachmentWithIdentifier:v5 URL:v3 options:v7 error:&v13];

    v9 = v13;
    if (v8)
    {
      v14 = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      [*(a1 + 32) setAttachments:v10];
    }

    else
    {
      v10 = +[STLog ask];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __103__STAskForTimeRequestReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke_2_cold_1();
      }
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_fetchAndWriteFamilyPhotoURLIfNeeded:(id)needed
{
  neededCopy = needed;
  childDSID = [(STAskForTimeRequestReceivedUserNotificationContext *)self childDSID];
  if (childDSID)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"remotemanagement-%@", childDSID];
    v7 = +[STLocations familyPhotosCacheDirectory];
    v8 = [v7 URLByAppendingPathComponent:v6 isDirectory:0];
    v9 = [v8 URLByAppendingPathExtension:@"png"];

    if ([v9 checkResourceIsReachableAndReturnError:0])
    {
      neededCopy[2](neededCopy, v9);
    }

    else
    {
      v10 = +[STLog ask];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [STAskForTimeRequestReceivedUserNotificationContext _fetchAndWriteFamilyPhotoURLIfNeeded:];
      }

      v11 = [objc_alloc(MEMORY[0x1E699C078]) initWithFamilyMemberDSID:childDSID size:1 localFallback:1];
      [v11 setBackgroundType:1];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __91__STAskForTimeRequestReceivedUserNotificationContext__fetchAndWriteFamilyPhotoURLIfNeeded___block_invoke;
      v12[3] = &unk_1E7CE6D80;
      v13 = childDSID;
      v16 = neededCopy;
      v14 = v7;
      v15 = v9;
      [v11 startRequestWithCompletionHandler:v12];
    }
  }

  else
  {
    neededCopy[2](neededCopy, 0);
  }
}

void __91__STAskForTimeRequestReceivedUserNotificationContext__fetchAndWriteFamilyPhotoURLIfNeeded___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = +[STLog ask];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __91__STAskForTimeRequestReceivedUserNotificationContext__fetchAndWriteFamilyPhotoURLIfNeeded___block_invoke_cold_1(a1, v7, v8);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = a1[5];
    v21 = 0;
    v11 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v21];
    v12 = v21;

    if (v11)
    {
      v13 = a1[6];
      v20 = v12;
      v14 = [v6 writeToURL:v13 options:1 error:&v20];
      v15 = v20;

      if (v14)
      {
        v16 = a1[6];
        v17 = *(a1[7] + 16);
      }

      else
      {
        v19 = +[STLog ask];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __91__STAskForTimeRequestReceivedUserNotificationContext__fetchAndWriteFamilyPhotoURLIfNeeded___block_invoke_cold_3();
        }

        v17 = *(a1[7] + 16);
      }

      v17();
    }

    else
    {
      v18 = +[STLog ask];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __91__STAskForTimeRequestReceivedUserNotificationContext__fetchAndWriteFamilyPhotoURLIfNeeded___block_invoke_cold_2();
      }

      (*(a1[7] + 16))();
      v15 = v12;
    }
  }
}

void __103__STAskForTimeRequestReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Could not create thumbnail attachment: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_fetchAndWriteFamilyPhotoURLIfNeeded:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1B831F000, v0, OS_LOG_TYPE_DEBUG, "Fetching photo for %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __91__STAskForTimeRequestReceivedUserNotificationContext__fetchAndWriteFamilyPhotoURLIfNeeded___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "Could not fetch family photo for %@: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __91__STAskForTimeRequestReceivedUserNotificationContext__fetchAndWriteFamilyPhotoURLIfNeeded___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Could not create family photo directory: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __91__STAskForTimeRequestReceivedUserNotificationContext__fetchAndWriteFamilyPhotoURLIfNeeded___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Could not write family photo data: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end