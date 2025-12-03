@interface _SFSWYCollaborationItem
- (_SFSWYCollaborationItem)initWithItemProvider:(id)provider activityItem:(id)item isURLProviderSupported:(BOOL)supported;
- (void)_loadOptionsIfNeeded;
@end

@implementation _SFSWYCollaborationItem

- (_SFSWYCollaborationItem)initWithItemProvider:(id)provider activityItem:(id)item isURLProviderSupported:(BOOL)supported
{
  supportedCopy = supported;
  providerCopy = provider;
  itemCopy = item;
  if (supportedCopy)
  {
    v10 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/icloud/"];
  }

  else
  {
    v10 = 0;
  }

  v16.receiver = self;
  v16.super_class = _SFSWYCollaborationItem;
  v11 = [(SFCollaborationItem *)&v16 initWithItemProvider:providerCopy activityItem:itemCopy placeholderActivityItem:v10 defaultCollaboration:1];
  v12 = v11;
  if (v11)
  {
    v11->_isURLProviderSupported = supportedCopy;
    [(SFCollaborationItem *)v11 setType:2];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84___SFSWYCollaborationItem_initWithItemProvider_activityItem_isURLProviderSupported___block_invoke;
    v14[3] = &unk_1E788CE80;
    v15 = v12;
    [SFCollaborationUtilities loadPendingCollaborationForItemProvider:providerCopy completionHandler:v14];
  }

  return v12;
}

- (void)_loadOptionsIfNeeded
{
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "Not loading options for SWY type collaboration item since the item will have metadata", v3, 2u);
  }
}

@end