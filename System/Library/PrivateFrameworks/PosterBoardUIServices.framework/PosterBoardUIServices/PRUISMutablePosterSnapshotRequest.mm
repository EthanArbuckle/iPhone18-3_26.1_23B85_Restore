@interface PRUISMutablePosterSnapshotRequest
- (void)appendAttachment:(id)attachment;
- (void)setAttachmentConfiguration:(id)configuration;
- (void)setAttachments:(id)attachments;
- (void)setDefinition:(id)definition;
- (void)setDetermineColorStatistics:(BOOL)statistics;
- (void)setInterfaceOrientation:(int64_t)orientation;
- (void)setRetryCount:(unsigned int)count;
- (void)setScreen:(id)screen;
- (void)setUserInterfaceStyle:(int64_t)style;
@end

@implementation PRUISMutablePosterSnapshotRequest

- (void)setDefinition:(id)definition
{
  snapshotDescriptor = self->super._snapshotDescriptor;
  definitionCopy = definition;
  v8 = [(PRUISPosterSnapshotDescriptor *)snapshotDescriptor mutableCopy];
  [v8 setSnapshotDefinition:definitionCopy];

  v6 = [v8 copy];
  v7 = self->super._snapshotDescriptor;
  self->super._snapshotDescriptor = v6;
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  v7 = [(PRUISPosterSnapshotDescriptor *)self->super._snapshotDescriptor mutableCopy];
  [v7 setUserInterfaceStyle:style];
  v5 = [v7 copy];
  snapshotDescriptor = self->super._snapshotDescriptor;
  self->super._snapshotDescriptor = v5;
}

- (void)setInterfaceOrientation:(int64_t)orientation
{
  v7 = [(PRUISPosterSnapshotDescriptor *)self->super._snapshotDescriptor mutableCopy];
  [v7 setInterfaceOrientation:orientation];
  v5 = [v7 copy];
  snapshotDescriptor = self->super._snapshotDescriptor;
  self->super._snapshotDescriptor = v5;
}

- (void)setScreen:(id)screen
{
  screenCopy = screen;
  if (!screenCopy)
  {
    screenCopy = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  screen = [(PRUISPosterSnapshotRequest *)self screen];
  if (([screen isEqual:screenCopy] & 1) == 0)
  {
    v5 = [MEMORY[0x1E699FAC0] pui_displayConfigurationForScreen:screenCopy];
    v6 = [(PRUISPosterSnapshotDescriptor *)self->super._snapshotDescriptor mutableCopy];
    [v6 setDisplayConfiguration:v5];
    v7 = [v6 copy];
    snapshotDescriptor = self->super._snapshotDescriptor;
    self->super._snapshotDescriptor = v7;
  }
}

- (void)setDetermineColorStatistics:(BOOL)statistics
{
  statisticsCopy = statistics;
  if ([(PRUISPosterSnapshotRequest *)self determineColorStatistics]!= statistics)
  {
    v7 = [(PRUISPosterSnapshotDescriptor *)self->super._snapshotDescriptor mutableCopy];
    [v7 setDetermineColorStatistics:statisticsCopy];
    v5 = [v7 copy];
    snapshotDescriptor = self->super._snapshotDescriptor;
    self->super._snapshotDescriptor = v5;
  }
}

- (void)setAttachmentConfiguration:(id)configuration
{
  v4 = [configuration copy];
  self->super._attachmentConfiguration = v4;

  MEMORY[0x1EEE66BB8](v4);
}

- (void)setAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  if ([attachmentsCopy count])
  {
    attachmentConfiguration = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
    attachmentHostWindowScene = [attachmentConfiguration attachmentHostWindowScene];
    if (attachmentHostWindowScene)
    {
      goto LABEL_8;
    }

    screen = [(PRUISPosterSnapshotRequest *)self screen];
    mainScreen = screen;
    if (!screen)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    }

    attachmentHostWindowScene = _findUIWindowSceneForUIScreen(mainScreen);
    if (!screen)
    {
    }

    if (attachmentHostWindowScene)
    {
LABEL_8:
      v9 = [PRUISPosterAttachmentConfiguration attachmentConfigurationWithHostWindowScene:attachmentHostWindowScene attachments:attachmentsCopy];
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

- (void)setRetryCount:(unsigned int)count
{
  if (self->super._retryCount != count)
  {
    if (count >= 5)
    {
      countCopy = 5;
    }

    else
    {
      countCopy = count;
    }

    self->super._retryCount = countCopy;
  }
}

- (void)appendAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (!attachmentCopy)
  {
    [PRUISMutablePosterSnapshotRequest(Deprecated) appendAttachment:a2];
  }

  attachmentConfiguration = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
  attachments = [attachmentConfiguration attachments];
  v7 = [attachments mutableCopy];
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

  [v10 addObject:attachmentCopy];
  attachmentConfiguration2 = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
  attachmentHostWindowScene = [attachmentConfiguration2 attachmentHostWindowScene];
  v13 = attachmentHostWindowScene;
  if (attachmentHostWindowScene)
  {
    v14 = attachmentHostWindowScene;
  }

  else
  {
    screen = [(PRUISPosterSnapshotRequest *)self screen];
    mainScreen = screen;
    if (!screen)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    }

    v14 = _findUIWindowSceneForUIScreen(mainScreen);
    if (!screen)
    {
    }
  }

  v17 = [v10 copy];
  v18 = [PRUISPosterAttachmentConfiguration attachmentConfigurationWithHostWindowScene:v14 attachments:v17];

  [(PRUISMutablePosterSnapshotRequest *)self setAttachmentConfiguration:v18];
}

@end