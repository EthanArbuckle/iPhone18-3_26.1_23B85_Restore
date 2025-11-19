@interface PRUISMutablePosterSnapshotRequest
- (void)appendAttachment:(id)a3;
- (void)setAttachmentConfiguration:(id)a3;
- (void)setAttachments:(id)a3;
- (void)setDefinition:(id)a3;
- (void)setDetermineColorStatistics:(BOOL)a3;
- (void)setInterfaceOrientation:(int64_t)a3;
- (void)setRetryCount:(unsigned int)a3;
- (void)setScreen:(id)a3;
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation PRUISMutablePosterSnapshotRequest

- (void)setDefinition:(id)a3
{
  snapshotDescriptor = self->super._snapshotDescriptor;
  v5 = a3;
  v8 = [(PRUISPosterSnapshotDescriptor *)snapshotDescriptor mutableCopy];
  [v8 setSnapshotDefinition:v5];

  v6 = [v8 copy];
  v7 = self->super._snapshotDescriptor;
  self->super._snapshotDescriptor = v6;
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  v7 = [(PRUISPosterSnapshotDescriptor *)self->super._snapshotDescriptor mutableCopy];
  [v7 setUserInterfaceStyle:a3];
  v5 = [v7 copy];
  snapshotDescriptor = self->super._snapshotDescriptor;
  self->super._snapshotDescriptor = v5;
}

- (void)setInterfaceOrientation:(int64_t)a3
{
  v7 = [(PRUISPosterSnapshotDescriptor *)self->super._snapshotDescriptor mutableCopy];
  [v7 setInterfaceOrientation:a3];
  v5 = [v7 copy];
  snapshotDescriptor = self->super._snapshotDescriptor;
  self->super._snapshotDescriptor = v5;
}

- (void)setScreen:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v9 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v4 = [(PRUISPosterSnapshotRequest *)self screen];
  if (([v4 isEqual:v9] & 1) == 0)
  {
    v5 = [MEMORY[0x1E699FAC0] pui_displayConfigurationForScreen:v9];
    v6 = [(PRUISPosterSnapshotDescriptor *)self->super._snapshotDescriptor mutableCopy];
    [v6 setDisplayConfiguration:v5];
    v7 = [v6 copy];
    snapshotDescriptor = self->super._snapshotDescriptor;
    self->super._snapshotDescriptor = v7;
  }
}

- (void)setDetermineColorStatistics:(BOOL)a3
{
  v3 = a3;
  if ([(PRUISPosterSnapshotRequest *)self determineColorStatistics]!= a3)
  {
    v7 = [(PRUISPosterSnapshotDescriptor *)self->super._snapshotDescriptor mutableCopy];
    [v7 setDetermineColorStatistics:v3];
    v5 = [v7 copy];
    snapshotDescriptor = self->super._snapshotDescriptor;
    self->super._snapshotDescriptor = v5;
  }
}

- (void)setAttachmentConfiguration:(id)a3
{
  v4 = [a3 copy];
  self->super._attachmentConfiguration = v4;

  MEMORY[0x1EEE66BB8](v4);
}

- (void)setAttachments:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
    v6 = [v5 attachmentHostWindowScene];
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [(PRUISPosterSnapshotRequest *)self screen];
    v8 = v7;
    if (!v7)
    {
      v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    }

    v6 = _findUIWindowSceneForUIScreen(v8);
    if (!v7)
    {
    }

    if (v6)
    {
LABEL_8:
      v9 = [PRUISPosterAttachmentConfiguration attachmentConfigurationWithHostWindowScene:v6 attachments:v4];
      [(PRUISMutablePosterSnapshotRequest *)self setAttachmentConfiguration:v9];
    }

    else
    {
      v10 = PRUISLogAttachments();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [PRUISMutablePosterSnapshotRequest(Deprecated) setAttachments:v10];
      }

      [(PRUISMutablePosterSnapshotRequest *)self setAttachmentConfiguration:0];
    }
  }

  else
  {
    [(PRUISMutablePosterSnapshotRequest *)self setAttachmentConfiguration:0];
  }
}

- (void)setRetryCount:(unsigned int)a3
{
  if (self->super._retryCount != a3)
  {
    if (a3 >= 5)
    {
      v3 = 5;
    }

    else
    {
      v3 = a3;
    }

    self->super._retryCount = v3;
  }
}

- (void)appendAttachment:(id)a3
{
  v19 = a3;
  if (!v19)
  {
    [PRUISMutablePosterSnapshotRequest(Deprecated) appendAttachment:a2];
  }

  v5 = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
  v6 = [v5 attachments];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  [v10 addObject:v19];
  v11 = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
  v12 = [v11 attachmentHostWindowScene];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [(PRUISPosterSnapshotRequest *)self screen];
    v16 = v15;
    if (!v15)
    {
      v16 = [MEMORY[0x1E69DCEB0] mainScreen];
    }

    v14 = _findUIWindowSceneForUIScreen(v16);
    if (!v15)
    {
    }
  }

  v17 = [v10 copy];
  v18 = [PRUISPosterAttachmentConfiguration attachmentConfigurationWithHostWindowScene:v14 attachments:v17];

  [(PRUISMutablePosterSnapshotRequest *)self setAttachmentConfiguration:v18];
}

@end