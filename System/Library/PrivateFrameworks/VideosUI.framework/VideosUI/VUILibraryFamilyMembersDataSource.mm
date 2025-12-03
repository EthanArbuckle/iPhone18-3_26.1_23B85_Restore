@interface VUILibraryFamilyMembersDataSource
- (VUILibraryFamilyMembersDataSource)init;
- (void)_orderFamilyMembersByFirstName;
- (void)startFetch;
@end

@implementation VUILibraryFamilyMembersDataSource

- (VUILibraryFamilyMembersDataSource)init
{
  v6.receiver = self;
  v6.super_class = VUILibraryFamilyMembersDataSource;
  v2 = [(VUILibraryFamilyMembersDataSource *)&v6 init];
  if (v2)
  {
    +[VUIMediaAPIClient initializeWithAppleTVClientIdentifier];
    v3 = +[VUIMediaAPIClient sharedInstance];
    mediaClient = v2->_mediaClient;
    v2->_mediaClient = v3;
  }

  return v2;
}

- (void)startFetch
{
  v3 = +[VUIMediaAPIRequestFactory familyMembersRequest];
  objc_initWeak(&location, self);
  mediaClient = [(VUILibraryFamilyMembersDataSource *)self mediaClient];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__VUILibraryFamilyMembersDataSource_startFetch__block_invoke;
  v5[3] = &unk_1E872EA80;
  objc_copyWeak(&v6, &location);
  [mediaClient fetchContentForUrl:v3 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__VUILibraryFamilyMembersDataSource_startFetch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      __47__VUILibraryFamilyMembersDataSource_startFetch__block_invoke_cold_1(v6, &v8->super);
    }
  }

  else
  {
    v8 = objc_alloc_init(VUIFamilyMembersRequestResponseParser);
    v9 = [(VUIFamilyMembersRequestResponseParser *)v8 parseAMSURLResult:v5];
    [WeakRetained setFamilyMembers:v9];
    [WeakRetained _orderFamilyMembersByFirstName];
  }

  [WeakRetained setHasCompletedInitialFetch:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __47__VUILibraryFamilyMembersDataSource_startFetch__block_invoke_3;
  v13 = &unk_1E872E4B8;
  objc_copyWeak(&v14, (a1 + 32));
  v10 = v11;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v12(v10);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  objc_destroyWeak(&v14);
}

void __47__VUILibraryFamilyMembersDataSource_startFetch__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 dataSourceDidFinishFetching:WeakRetained];
  }
}

- (void)_orderFamilyMembersByFirstName
{
  v8[1] = *MEMORY[0x1E69E9840];
  familyMembers = [(VUILibraryFamilyMembersDataSource *)self familyMembers];
  v4 = [familyMembers mutableCopy];

  v5 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"firstName" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v4 sortUsingDescriptors:v6];

  v7 = [v4 copy];
  [(VUILibraryFamilyMembersDataSource *)self setFamilyMembers:v7];
}

void __47__VUILibraryFamilyMembersDataSource_startFetch__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Fetching family members failed with error:%@", &v2, 0xCu);
}

@end