@interface PXCPLUIStatus
- (BOOL)isEqual:(id)a3;
- (PXCPLUIStatus)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation PXCPLUIStatus

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PXCPLUIStatus *)self stateDescription];
  v6 = [v5 copy];
  v7 = v4[3];
  v4[3] = v6;

  v8 = [(PXCPLUIStatus *)self failureDescription];
  v9 = [v8 copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(PXCPLUIStatus *)self internalInformationMessage];
  v12 = [v11 copy];
  v13 = v4[5];
  v4[5] = v12;

  *(v4 + 8) = [(PXCPLUIStatus *)self isPaused];
  [(PXCPLUIStatus *)self progress];
  *(v4 + 4) = v14;
  v15 = [(PXCPLUIStatus *)self referencedItemsDescription];
  v16 = [v15 copy];
  v17 = v4[12];
  v4[12] = v16;

  v18 = [(PXCPLUIStatus *)self actionTitle];
  v19 = [v18 copy];
  v20 = v4[6];
  v4[6] = v19;

  v21 = [(PXCPLUIStatus *)self actionConfirmationAlertTitle];
  v22 = [v21 copy];
  v23 = v4[7];
  v4[7] = v22;

  v24 = [(PXCPLUIStatus *)self actionConfirmationAlertSubtitle];
  v25 = [v24 copy];
  v26 = v4[8];
  v4[8] = v25;

  v27 = [(PXCPLUIStatus *)self actionConfirmationAlertButtonTitle];
  v28 = [v27 copy];
  v29 = v4[9];
  v4[9] = v28;

  v30 = [(PXCPLUIStatus *)self action];
  v31 = [v30 copy];
  v32 = v4[10];
  v4[10] = v31;

  v4[11] = [(PXCPLUIStatus *)self serviceAction];
  v4[13] = [(PXCPLUIStatus *)self state];
  v4[14] = [(PXCPLUIStatus *)self activity];
  v4[15] = [(PXCPLUIStatus *)self pauseReason];
  *(v4 + 9) = [(PXCPLUIStatus *)self inResetSync];
  *(v4 + 10) = [(PXCPLUIStatus *)self isRestoringLibrary];
  *(v4 + 11) = [(PXCPLUIStatus *)self hasCompletedInitialSync];
  *(v4 + 12) = [(PXCPLUIStatus *)self isExiting];
  v4[16] = [(PXCPLUIStatus *)self numberOfItemsFailingToUpload];
  *(v4 + 13) = [(PXCPLUIStatus *)self isUpgradeSuggestedToAccessAllPhotos];
  v4[17] = [(PXCPLUIStatus *)self numberOfPhotoAssets];
  v4[18] = [(PXCPLUIStatus *)self numberOfVideoAssets];
  v4[19] = [(PXCPLUIStatus *)self numberOfOtherAssets];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && PXCPLUIStatusDiff(self, v4) == 0;

  return v5;
}

- (id)description
{
  v33 = MEMORY[0x1E696AEC0];
  v32 = objc_opt_class();
  referencedItemsDescription = @"-";
  if (self->_stateDescription)
  {
    stateDescription = self->_stateDescription;
  }

  else
  {
    stateDescription = @"-";
  }

  if (self->_failureDescription)
  {
    failureDescription = self->_failureDescription;
  }

  else
  {
    failureDescription = @"-";
  }

  v29 = failureDescription;
  v30 = stateDescription;
  if (self->_internalInformationMessage)
  {
    internalInformationMessage = self->_internalInformationMessage;
  }

  else
  {
    internalInformationMessage = @"-";
  }

  paused = self->_paused;
  v28 = internalInformationMessage;
  progress = self->_progress;
  if (progress == -1.0)
  {
    v8 = @"-";
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", progress];
  }

  serviceAction = self->_serviceAction;
  v31 = v8;
  if (serviceAction > 0xB)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E7748A98[serviceAction];
  }

  v11 = v10;
  if (self->_actionTitle)
  {
    actionTitle = self->_actionTitle;
  }

  else
  {
    actionTitle = @"-";
  }

  if (self->_actionConfirmationAlertTitle)
  {
    actionConfirmationAlertTitle = self->_actionConfirmationAlertTitle;
  }

  else
  {
    actionConfirmationAlertTitle = @"-";
  }

  if (self->_actionConfirmationAlertSubtitle)
  {
    actionConfirmationAlertSubtitle = self->_actionConfirmationAlertSubtitle;
  }

  else
  {
    actionConfirmationAlertSubtitle = @"-";
  }

  if (self->_actionConfirmationAlertButtonTitle)
  {
    actionConfirmationAlertButtonTitle = self->_actionConfirmationAlertButtonTitle;
  }

  else
  {
    actionConfirmationAlertButtonTitle = @"-";
  }

  state = self->_state;
  if (self->_referencedItemsDescription)
  {
    referencedItemsDescription = self->_referencedItemsDescription;
  }

  if (state > 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = off_1E77489A8[state];
  }

  v18 = v17;
  pauseReason = self->_pauseReason;
  if (pauseReason > 0x12)
  {
    v20 = 0;
  }

  else
  {
    v20 = off_1E7748A00[pauseReason];
  }

  v21 = v20;
  activity = self->_activity;
  if (activity > 7)
  {
    v23 = 0;
  }

  else
  {
    v23 = off_1E77489C0[activity];
  }

  v24 = v23;
  v25 = [v33 stringWithFormat:@"<%@: stateDescription:%@, failureDescription:%@, internalInformationMessage:%@, paused:%d, progress:%@, action:%@/%@, alert:%@/%@/%@, referencedItemsDescription:%@, state:%@, pause:%@, activity:%@, reset:%d, rebuild:%d, synced:%d, exiting:%d, failed:%lu, upgrade:%d, #photo/video/other:%lu/%lu/%lu>", v32, v30, v29, v28, paused, v31, v11, actionTitle, actionConfirmationAlertTitle, actionConfirmationAlertSubtitle, actionConfirmationAlertButtonTitle, referencedItemsDescription, v18, v21, v24, self->_inResetSync, self->_isRestoringLibrary, self->_hasCompletedInitialSync, self->_isExiting, self->_numberOfItemsFailingToUpload, self->_isUpgradeSuggestedToAccessAllPhotos, self->_numberOfPhotoAssets, self->_numberOfVideoAssets, self->_numberOfOtherAssets];

  if (progress != -1.0)
  {
  }

  return v25;
}

- (PXCPLUIStatus)init
{
  v3.receiver = self;
  v3.super_class = PXCPLUIStatus;
  result = [(PXCPLUIStatus *)&v3 init];
  if (result)
  {
    result->_progress = -1.0;
    result->_serviceAction = 0;
  }

  return result;
}

@end