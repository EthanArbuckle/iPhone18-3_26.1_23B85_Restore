@interface _SFCKShareCollaborationItem
- (BOOL)isLoading;
- (LPLinkMetadata)linkMetadata;
- (_SFCKShareCollaborationItem)initWithItemProvider:(id)a3 activityItem:(id)a4;
- (id)_defaultLoadingOptionsSummary;
- (void)_didLoadContainerSetupInfo:(id)a3;
- (void)_loadCKContainerSetupInfoIfNeeded;
- (void)_startLoading;
@end

@implementation _SFCKShareCollaborationItem

- (_SFCKShareCollaborationItem)initWithItemProvider:(id)a3 activityItem:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695DFF8];
  v8 = a4;
  v9 = [v7 URLWithString:@"https://www.apple.com/icloud/"];
  v15.receiver = self;
  v15.super_class = _SFCKShareCollaborationItem;
  v10 = [(SFCollaborationItem *)&v15 initWithItemProvider:v6 activityItem:v8 placeholderActivityItem:v9 defaultCollaboration:1];

  if (v10)
  {
    [(SFCollaborationItem *)v10 setType:1];
    v10->_isServiceManatee = [SFCollaborationUtilities isServiceManateeCKShareItemProvider:v6];
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v10->_isServiceManatee)
      {
        v12 = "yes";
      }

      else
      {
        v12 = "no";
      }

      *buf = 138412546;
      v17 = v10;
      v18 = 2080;
      v19 = v12;
      _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "%@: isServiceManatee:%s", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_defaultLoadingOptionsSummary
{
  v2 = [(SFCollaborationItem *)self itemProvider];
  v3 = [SFCollaborationUtilities isPreCKShareItemProvider:v2];

  if (v3)
  {
    v4 = +[SFCollaborationUtilities defaultCKOptionsSummary];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isLoading
{
  v4.receiver = self;
  v4.super_class = _SFCKShareCollaborationItem;
  return [(SFCollaborationItem *)&v4 isLoading]|| [(_SFCKShareCollaborationItem *)self isLoadingContainerSetupInfo];
}

- (void)_startLoading
{
  v3.receiver = self;
  v3.super_class = _SFCKShareCollaborationItem;
  [(SFCollaborationItem *)&v3 _startLoading];
  [(_SFCKShareCollaborationItem *)self _loadCKContainerSetupInfoIfNeeded];
}

- (void)_loadCKContainerSetupInfoIfNeeded
{
  v3 = [(_SFCKShareCollaborationItem *)self containerSetupInfo];

  if (!v3)
  {
    [(_SFCKShareCollaborationItem *)self setIsLoadingContainerSetupInfo:1];
    objc_initWeak(&location, self);
    v4 = [(SFCollaborationItem *)self itemProvider];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64___SFCKShareCollaborationItem__loadCKContainerSetupInfoIfNeeded__block_invoke;
    v5[3] = &unk_1E788CE08;
    objc_copyWeak(&v6, &location);
    [SFCollaborationUtilities loadCKContainerForItemProvider:v4 completionHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_didLoadContainerSetupInfo:(id)a3
{
  v4 = a3;
  [(_SFCKShareCollaborationItem *)self setIsLoadingContainerSetupInfo:0];
  [(_SFCKShareCollaborationItem *)self setContainerSetupInfo:v4];

  [(SFCollaborationItem *)self _updateLoadingState];
}

- (LPLinkMetadata)linkMetadata
{
  v3 = [(_SFCKShareCollaborationItem *)self updatedShare];
  if (v3)
  {
    v4 = v3;
    v5 = [(_SFCKShareCollaborationItem *)self containerSetupInfo];

    if (v5)
    {
      v6 = [(_SFCKShareCollaborationItem *)self updatedShare];
      v7 = [(_SFCKShareCollaborationItem *)self containerSetupInfo];
      v8 = [SFCollaborationUtilities createLinkMetadataWithCKShare:v6 containerSetupInfo:v7];
      [(_SFCKShareCollaborationItem *)self setPostSharelinkMetadata:v8];
    }
  }

  v9 = [(_SFCKShareCollaborationItem *)self postSharelinkMetadata];

  if (!v9)
  {
    v10 = [(SFCollaborationItem *)self itemProvider];
    v11 = [SFCollaborationUtilities createLinkMetadataWithCKShareItemProvider:v10];
    [(_SFCKShareCollaborationItem *)self setPostSharelinkMetadata:v11];
  }

  return [(_SFCKShareCollaborationItem *)self postSharelinkMetadata];
}

@end