@interface _SFFPShareCollaborationItem
- (BOOL)hasSeparateSendCopyRepresentation;
- (BOOL)isCollaborativeURL;
- (id)_defaultLoadingOptionsSummary;
- (void)_loadMetadataIfNeeded;
- (void)loadCopyRepresentationURLWithCompletionHandler:(id)handler;
@end

@implementation _SFFPShareCollaborationItem

- (void)_loadMetadataIfNeeded
{
  fileURL = [(_SFFPShareCollaborationItem *)self fileURL];

  if (fileURL)
  {
    managedFileURL = [(_SFFPShareCollaborationItem *)self managedFileURL];
    v5 = managedFileURL;
    if (managedFileURL)
    {
      fileURL2 = managedFileURL;
    }

    else
    {
      fileURL2 = [(_SFFPShareCollaborationItem *)self fileURL];
    }

    v7 = fileURL2;

    [(SFCollaborationItem *)self setIsLoadingMetadata:1];
    workQueue = [(SFCollaborationItem *)self workQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52___SFFPShareCollaborationItem__loadMetadataIfNeeded__block_invoke;
    v10[3] = &unk_1E788A658;
    v11 = v7;
    selfCopy = self;
    v9 = v7;
    dispatch_async(workQueue, v10);
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

  metadata = [(SFCollaborationItem *)self metadata];
  v3 = metadata != 0;

  return v3;
}

- (BOOL)hasSeparateSendCopyRepresentation
{
  itemProvider = [(SFCollaborationItem *)self itemProvider];
  v3 = [SFCollaborationUtilities hasiWorkSendCopyRepresentationForItemProvider:itemProvider];

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

- (void)loadCopyRepresentationURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(_SFFPShareCollaborationItem *)self hasSeparateSendCopyRepresentation]&& ([(_SFFPShareCollaborationItem *)self sendCopyRepresentationURL], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    objc_initWeak(&location, self);
    itemProvider = [(SFCollaborationItem *)self itemProvider];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78___SFFPShareCollaborationItem_loadCopyRepresentationURLWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E788CE58;
    objc_copyWeak(&v11, &location);
    v10 = handlerCopy;
    [SFCollaborationUtilities loadiWorkCopyRepresentationURLForItemProvider:itemProvider completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    sendCopyRepresentationURL = [(_SFFPShareCollaborationItem *)self sendCopyRepresentationURL];
    if (sendCopyRepresentationURL)
    {
      (*(handlerCopy + 2))(handlerCopy, sendCopyRepresentationURL);
    }

    else
    {
      fileURL = [(_SFFPShareCollaborationItem *)self fileURL];
      (*(handlerCopy + 2))(handlerCopy, fileURL);
    }
  }
}

@end