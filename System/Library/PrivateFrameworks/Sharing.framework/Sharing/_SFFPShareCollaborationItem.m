@interface _SFFPShareCollaborationItem
- (BOOL)hasSeparateSendCopyRepresentation;
- (BOOL)isCollaborativeURL;
- (id)_defaultLoadingOptionsSummary;
- (void)_loadMetadataIfNeeded;
- (void)loadCopyRepresentationURLWithCompletionHandler:(id)a3;
@end

@implementation _SFFPShareCollaborationItem

- (void)_loadMetadataIfNeeded
{
  v3 = [(_SFFPShareCollaborationItem *)self fileURL];

  if (v3)
  {
    v4 = [(_SFFPShareCollaborationItem *)self managedFileURL];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(_SFFPShareCollaborationItem *)self fileURL];
    }

    v7 = v6;

    [(SFCollaborationItem *)self setIsLoadingMetadata:1];
    v8 = [(SFCollaborationItem *)self workQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52___SFFPShareCollaborationItem__loadMetadataIfNeeded__block_invoke;
    v10[3] = &unk_1E788A658;
    v11 = v7;
    v12 = self;
    v9 = v7;
    dispatch_async(v8, v10);
  }
}

- (BOOL)isCollaborativeURL
{
  if ([(_SFFPShareCollaborationItem *)self isiCloudDrive])
  {
    return 1;
  }

  if ([(_SFFPShareCollaborationItem *)self isiCloudDrive])
  {
    return 0;
  }

  v4 = [(SFCollaborationItem *)self metadata];
  v3 = v4 != 0;

  return v3;
}

- (BOOL)hasSeparateSendCopyRepresentation
{
  v2 = [(SFCollaborationItem *)self itemProvider];
  v3 = [SFCollaborationUtilities hasiWorkSendCopyRepresentationForItemProvider:v2];

  return v3;
}

- (id)_defaultLoadingOptionsSummary
{
  if ([(_SFFPShareCollaborationItem *)self isiCloudDrive]&& ![(_SFFPShareCollaborationItem *)self isShared])
  {
    v3 = +[SFCollaborationUtilities defaultCKOptionsSummary];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)loadCopyRepresentationURLWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(_SFFPShareCollaborationItem *)self hasSeparateSendCopyRepresentation]&& ([(_SFFPShareCollaborationItem *)self sendCopyRepresentationURL], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    objc_initWeak(&location, self);
    v8 = [(SFCollaborationItem *)self itemProvider];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78___SFFPShareCollaborationItem_loadCopyRepresentationURLWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E788CE58;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    [SFCollaborationUtilities loadiWorkCopyRepresentationURLForItemProvider:v8 completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = [(_SFFPShareCollaborationItem *)self sendCopyRepresentationURL];
    if (v6)
    {
      (*(v4 + 2))(v4, v6);
    }

    else
    {
      v7 = [(_SFFPShareCollaborationItem *)self fileURL];
      (*(v4 + 2))(v4, v7);
    }
  }
}

@end