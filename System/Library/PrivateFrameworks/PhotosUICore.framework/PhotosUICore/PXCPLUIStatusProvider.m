@interface PXCPLUIStatusProvider
- (PXCPLUIStatusProvider)init;
- (PXCPLUIStatusProvider)initWithPhotoLibrary:(id)a3 actionManager:(id)a4 presentationStyle:(unint64_t)a5;
- (PXCPLUIStatusProvider)initWithStatusProvider:(id)a3 actionManager:(id)a4 presentationStyle:(unint64_t)a5;
- (void)_statusDidChange:(id)a3;
- (void)_updateStatus;
- (void)_updateStatusProviderMonitor;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXCPLUIStatusProvider

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PXCPLStatusProviderMonitorObservationContext == a5)
  {
    [(PXCPLUIStatusProvider *)self _updateStatusProviderMonitor];
  }

  else
  {
    if (PXCPLStatusProviderObservationContext != a5)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PXCPLUIStatusProvider.m" lineNumber:1252 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [(PXCPLUIStatusProvider *)self _updateStatus];
  }
}

- (void)_updateStatus
{
  v3 = [(PXCPLStatusProvider *)self->_statusProvider status];
  [(PXCPLUIStatusProvider *)self _statusDidChange:v3];
}

- (void)_updateStatusProviderMonitor
{
  [(PXCPLStatusProvider *)self->_statusProvider unregisterChangeObserver:self context:PXCPLStatusProviderObservationContext];
  v3 = [(PXCPLStatusProviderMonitor *)self->_statusProviderMonitor statusProvider];
  statusProvider = self->_statusProvider;
  self->_statusProvider = v3;

  [(PXCPLStatusProvider *)self->_statusProvider registerChangeObserver:self context:PXCPLStatusProviderObservationContext];

  [(PXCPLUIStatusProvider *)self _updateStatus];
}

- (void)_statusDidChange:(id)a3
{
  v153 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 isEnabled])
  {
    v6 = 0;
    goto LABEL_238;
  }

  if ([v5 isInSoftResetSync])
  {
    v137 = 1;
  }

  else
  {
    v137 = [v5 isInHardResetSync];
  }

  [v5 fractionCompletedForLibraryRebuild];
  v8 = v7;
  v9 = [v5 syncDate];

  v126 = [v5 syncDate];
  v10 = [v5 exitDate];
  v125 = [v5 numberOfItemsFailingToUpload];
  v124 = [v5 numberOfPhotoAssets];
  v123 = [v5 numberOfVideoAssets];
  v122 = [v5 numberOfOtherAssets];
  if ([v5 numberOfReferencedItems])
  {
    _PXCPLUIStatusLocalizedString(@"PXCPLStatus_Referenced_NItems");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  v11 = [v5 sharedLibraryState];
  v132 = [v5 isUpgradeSuggestedToAccessAllPhotos];
  v12 = ([v5 isExceedingQuota] & 1) != 0 || objc_msgSend(v5, "cloudQuotaState") == 2;
  if ([v5 sharedLibraryMovingToShared])
  {
    v13 = [v5 isExceedingSharedLibraryQuota];
  }

  else
  {
    v13 = 1;
  }

  if ([v5 numberOfItemsToUpload])
  {
    v14 = !v12 | v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v5 sharedLibraryMovingToPersonal];
  if ([v5 sharedLibraryMovingToShared])
  {
    v16 = [v5 isExceedingSharedLibraryQuota] ^ 1;
    if (!v15)
    {
      LOBYTE(v16) = 1;
    }

    v17 = v16 | v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = (v11 & 0xFFFFFFFFFFFFFFFELL) == 2 && v10 == 0;
  v19 = !v18;
  v127 = v19;
  v121 = v9;
  v129 = v11;
  if (v18)
  {
    v135 = [v5 sharedLibraryExitingWithNumberOfAssetsRemaining];
    v27 = 0;
    v23 = 0;
    v116 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 1;
    v20 = -1.0;
    v28 = 7;
LABEL_37:
    v138 = v28;
    goto LABEL_38;
  }

  if (v14)
  {
    [v5 fractionCompletedForUpload];
    v20 = -1.0;
    if (v21 != -1.0)
    {
      [v5 fractionCompletedForUpload];
      v20 = v22;
    }

    v135 = [v5 numberOfItemsToUpload];
    v23 = 0;
    v116 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v28 = 3;
    goto LABEL_37;
  }

  if ([v5 numberOfItemsToAdd])
  {
    v135 = [v5 numberOfItemsToAdd];
    v27 = 0;
    v23 = 0;
    v116 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 1;
    v20 = -1.0;
    v28 = 2;
    goto LABEL_37;
  }

  if (v17)
  {
    v135 = [v5 sharedLibraryMovingToShared];
    v27 = 0;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v116 = 1;
    v20 = -1.0;
    v33 = 5;
LABEL_52:
    v138 = v33;
    v24 = 1;
    goto LABEL_38;
  }

  if ([v5 sharedLibraryMovingToPersonal])
  {
    v135 = [v5 sharedLibraryMovingToPersonal];
    v27 = 0;
    v116 = 0;
    v25 = 0;
    v26 = 0;
    v23 = 1;
    v20 = -1.0;
    v33 = 6;
    goto LABEL_52;
  }

  if ([v5 numberOfOriginalsToDownload])
  {
    v135 = [v5 numberOfOriginalsToDownload];
    v27 = 0;
    v23 = 0;
    v116 = 0;
    v25 = 0;
    v24 = 1;
    v20 = -1.0;
    v138 = 4;
    v26 = 1;
  }

  else
  {
    v83 = [v5 isSyncing];
    v135 = 0;
    v27 = 0;
    v23 = 0;
    v116 = 0;
    v26 = 0;
    if (v9)
    {
      v84 = v83;
    }

    else
    {
      v84 = 1;
    }

    v85 = v84 | v137;
    v25 = v85 ^ 1;
    v138 = v85 & 1;
    v24 = 1;
    v20 = -1.0;
  }

LABEL_38:
  v29 = [v5 isExceedingSharedLibraryQuota];
  v134 = v5;
  if ([v5 isInHeavyThermalPressure])
  {
    v30 = 0;
    v31 = 0;
    v32 = 17;
LABEL_60:
    v34 = 2;
    goto LABEL_61;
  }

  if ([v5 isInAirplaneMode])
  {
    v30 = 0;
    v31 = 6;
    v32 = 12;
    goto LABEL_60;
  }

  if ([v5 isOffline])
  {
    v30 = 0;
    v31 = 0;
    v32 = 11;
    goto LABEL_60;
  }

  if ([v5 isCellularDataDisabled])
  {
    v30 = 0;
    v31 = 5;
    v32 = 10;
    goto LABEL_60;
  }

  if ([v5 isClientVersionTooOld])
  {
    v30 = 0;
    v31 = 9;
    v32 = 8;
    goto LABEL_60;
  }

  if ([v5 isClientNotAuthenticated])
  {
    v30 = 0;
    v31 = 10;
    v32 = 9;
    goto LABEL_60;
  }

  if ([v5 isVeryLowDiskSpace] & 1) != 0 || (v24 & objc_msgSend(v5, "isLowDiskSpace"))
  {
    v30 = 0;
    v31 = 4;
    v32 = 3;
    goto LABEL_60;
  }

  if ((v12 & (v27 | v23) | v116 & v29))
  {
    if ([v5 isExceedingSharedLibraryQuota])
    {
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v30 = 0;
      if ([v5 hasCloudQuotaOffer])
      {
        v31 = 0;
      }

      else
      {
        v31 = 3;
      }
    }

    v34 = 2;
    v32 = 2;
    goto LABEL_61;
  }

  if ([v5 isCapturingSnapshot])
  {
    v30 = 0;
    v31 = 0;
    v32 = 13;
    goto LABEL_60;
  }

  if ([v5 isUserPaused])
  {
    v30 = 1;
    v34 = 2;
    v32 = 1;
LABEL_258:
    v31 = 2;
    goto LABEL_61;
  }

  if ([v5 isInLowPowerMode])
  {
    v30 = 0;
    v32 = 7;
LABEL_257:
    v34 = 2;
    goto LABEL_258;
  }

  if ([v5 isInLowDataMode])
  {
    v30 = 0;
    v32 = 6;
    goto LABEL_257;
  }

  if ([v5 isExceedingBatteryQuota])
  {
    v30 = 0;
    v32 = 4;
LABEL_271:
    v34 = 2;
    v31 = 2;
    goto LABEL_61;
  }

  if ([v5 isExceedingCellularQuota])
  {
    v30 = 0;
    v32 = 5;
    goto LABEL_271;
  }

  if ([v5 isInLowBattery])
  {
    v30 = 0;
    v32 = 18;
    goto LABEL_271;
  }

  if ([v5 isOptimizingSystemPerformance])
  {
    v30 = 0;
    v32 = 14;
    goto LABEL_271;
  }

  if ([v5 isInPoorNetworkConnection])
  {
    v30 = 0;
    v32 = 15;
    goto LABEL_271;
  }

  if ([v5 isInModerateThermalPressure])
  {
    v30 = 0;
    v32 = 16;
    goto LABEL_271;
  }

  if (v25)
  {
    if (!v125 || v10)
    {
      v34 = 0;
      v30 = 0;
      v32 = 0;
      if ([v5 cloudQuotaState])
      {
        v31 = 3;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v34 = 0;
      v30 = 0;
      v32 = 0;
      v31 = 7;
    }
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v31 = (v23 | v116 | v27 | v26 | v127 ^ 1) & (v137 ^ 1);
    v34 = 1;
  }

LABEL_61:
  v35 = [(PXCPLUIStatusProvider *)self presentationStyle];
  v36 = -1.0;
  v120 = v34;
  if (v35 < 2)
  {
    v37 = [(PXCPLUIStatusProvider *)self presentationStyle];
    if (v34)
    {
      if (v34 == 2)
      {
        v38 = [(PXCPLUIStatusProvider *)self currentDateForTesting];
        v39 = v38;
        if (v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = [MEMORY[0x1E695DF00] now];
        }

        v54 = v40;

        _RegisterServiceActivity(v138, v54);
        v119 = _PXCPLStatusPendingStateDescription(2, v138, v32, v137, v135, v129, v37 == 1);
        v42 = v32;
        v130 = _PXCPLStatusPausedStateDescription(v32, v116, [v5 hasCloudQuotaOffer]);
        if (v30)
        {
          v55 = v20;
        }

        else
        {
          v55 = -1.0;
        }

        if (v137)
        {
          v36 = -1.0;
        }

        else
        {
          v36 = v55;
        }

        v44 = 0;
        v136 = 0;
        v45 = 0;
        v115 = 1;
        goto LABEL_95;
      }

      v46 = [(PXCPLUIStatusProvider *)self currentDateForTesting];
      v47 = v46;
      v41 = v31;
      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = [MEMORY[0x1E695DF00] now];
      }

      v57 = v48;

      _RegisterServiceActivity(v138, v57);
      v42 = v32;
      v119 = _PXCPLStatusPendingStateDescription(1, v138, v32, v137, v135, v129, v37 == 1);
      if (v137)
      {
        v36 = -1.0;
      }

      else
      {
        v36 = v20;
      }

      goto LABEL_101;
    }

    if (v10)
    {
      if (PXCPLIsInTestReadonlyMode_onceToken != -1)
      {
        dispatch_once(&PXCPLIsInTestReadonlyMode_onceToken, &__block_literal_global_99338);
      }

      if (PXCPLIsInTestReadonlyMode_isInTestReadOnlyMode)
      {
        v42 = v32;
        v44 = 0;
        v136 = 0;
        v45 = 0;
        v115 = 0;
        v119 = @"Read-Only iCloud Photos";
        v41 = 8;
        v130 = @"Apple Internal. Some interactions with the Cloud might be limited.";
        goto LABEL_189;
      }

      if (v37 == 1)
      {
        v58 = @"PXCPLStatus_DisabledAndDeleted_Short";
      }

      else
      {
        v58 = @"PXCPLStatus_DisabledAndDeleted";
      }

      v59 = _PXCPLUIStatusLocalizedString(v58);
      if (PXCPLNumberOfCalendarUnitsUntilDate(16, v10) >= 1)
      {
        _PXCPLUIStatusLocalizedString(@"PXCPLStatus_DisabledAndDeleted_NDays");
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }

      v56 = _PXCPLUIStatusLocalizedString(@"PXCPLStatus_DisabledAndDeleted_Soon");
      v41 = 8;
      if (v59)
      {
LABEL_124:
        if (((v56 == 0) & v132) == 1)
        {
          v56 = v59;
          v59 = PXLocalizedStringFromTable(@"PXCPLStatusUpgradeSuggestedToAccessAllPhotos", @"PhotosUICore");

          v41 = 11;
        }

        v119 = v59;
        if (v56)
        {
          v42 = v32;
          v130 = v56;
LABEL_188:
          v44 = 0;
          v136 = 0;
          v45 = 0;
          v115 = 0;
          goto LABEL_189;
        }

        if ([v5 isRebuildingThumbnails])
        {
          v66 = PXLocalizedStringFromTable(@"PXCPLStatusRebuildingThumbnails", @"PhotosUICore");
        }

        else
        {
          v66 = 0;
        }

        if (!v66 && v125)
        {
          if (v37 == 1)
          {
            v67 = @"PXCPLStatus_Push_Failed_NItems_Short";
          }

          else
          {
            v67 = @"PXCPLStatus_Push_Failed_NItems";
          }

          _PXCPLUIStatusLocalizedString(v67);
          objc_claimAutoreleasedReturnValue();
          PXLocalizedStringWithValidatedFormat();
        }

        if (v66)
        {
          v42 = v32;
          v130 = v66;
          goto LABEL_188;
        }

        v80 = [v5 cloudQuotaTitle];
        v81 = v80;
        if (v80)
        {
          v42 = v32;
          v82 = v80;
        }

        else
        {
          if ([v5 cloudQuotaState] == 1)
          {
            v42 = v32;
            v86 = @"PXCPLStatusCloudStorageAlmostFull";
          }

          else
          {
            v42 = v32;
            if ([v5 cloudQuotaState] != 2)
            {
              v130 = 0;
              goto LABEL_187;
            }

            v86 = @"PXCPLStatusCloudStorageFull";
          }

          v82 = PXLocalizedStringFromTable(v86, @"PhotosUICore");
        }

        v130 = v82;
LABEL_187:

        goto LABEL_188;
      }
    }

    else
    {
      v56 = 0;
      v41 = v31;
    }

    if (_HasUploadActivityInLastSeconds(480.0) && (v37 != 1 ? (v61 = @"PXCPLStatus_UploadComplete") : (v61 = @"PXCPLStatus_UploadComplete_Short"), _PXCPLUIStatusLocalizedString(v61), (v62 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v59 = v62;
    }

    else
    {
      v131 = v56;
      v63 = [(PXCPLUIStatusProvider *)self currentDateForTesting];
      v64 = v63;
      if (v63)
      {
        v65 = v63;
      }

      else
      {
        v65 = [MEMORY[0x1E695DF00] now];
      }

      v59 = _PXCPLStatusLastUpdateDescription(v126, v65, v37 == 1);

      v56 = v131;
    }

    goto LABEL_124;
  }

  if (v35 != 2)
  {
LABEL_72:
    v42 = v32;
    v44 = 0;
    v136 = 0;
    v45 = 0;
    v115 = 0;
    v130 = 0;
    v119 = 0;
LABEL_95:
    v41 = v31;
    goto LABEL_189;
  }

  if (v34 != 2)
  {
    if (v34 == 1)
    {
      v41 = v31;
      v42 = v32;
      if (v8 == -1.0)
      {
        if (v135)
        {
          v60 = MEMORY[0x1E696AEC0];
          v57 = PXLocalizedStringFromTable(@"PXCPLStatus_Sync_%lu_Items_Library", @"PhotosUICore");
          v119 = [v60 localizedStringWithFormat:v57, v135];
LABEL_101:

          goto LABEL_102;
        }

        v43 = @"PXCPLStatus_Sync_Short";
      }

      else
      {
        v43 = @"PXCPLStatus_Rebuild_Short";
      }

      v119 = PXLocalizedStringFromTable(v43, @"PhotosUICore");
LABEL_102:
      v44 = 0;
      v136 = 0;
      v45 = 0;
      v115 = 0;
      v130 = 0;
      goto LABEL_189;
    }

    goto LABEL_72;
  }

  if (v8 == -1.0)
  {
    v49 = @"PXCPLStatus_Sync_Paused_Short";
  }

  else
  {
    v49 = @"PXCPLStatus_Rebuild_Paused_Short";
  }

  v50 = PXLocalizedStringFromTable(v49, @"PhotosUICore");
  [(PXCPLStatusProvider *)self->_statusProvider nextOverrideResumeTimeInterval];
  v52 = vcvtad_u64_f64(v51 / 3600.0);
  v119 = v50;
  if (v52 > 11)
  {
    if (v52 != 12)
    {
      if (v52 == 24)
      {
        v53 = 3;
        goto LABEL_142;
      }

      goto LABEL_139;
    }

    v53 = 2;
  }

  else
  {
    if (v52 != 1)
    {
      if (v52 == 4)
      {
        v53 = 1;
        goto LABEL_142;
      }

LABEL_139:
      v53 = 4;
      goto LABEL_142;
    }

    v53 = 0;
  }

LABEL_142:
  v68 = [v5 hasCloudQuotaOffer];
  v69 = [v5 cloudQuotaActionTitle];
  v70 = PXLocalizedStringFromTable(@"PXCPLStatus_Sync_Paused_AlertTitle", @"PhotosUICore");
  v71 = v70;
  if (v31 == 2)
  {
    v72 = _PXCPLStatusResumeActionConfirmationAlertMessage(v32, v53);
    v73 = v72;
    v74 = v69;
    v75 = _PXCPLStatusResumeActionTitle(v32);
LABEL_173:
    v78 = v75;
    v87 = v75;
    goto LABEL_174;
  }

  v72 = _PXCPLStatusPausedStateDescription(v32, v116, v68);
  v76 = v72;
  v77 = v69;
  v78 = 0;
  if (v31 <= 5)
  {
    if (v31 > 3)
    {
      if (v31 == 4)
      {
        v79 = @"PXCPLStatusActionManageLocalStorage_AlertButtonTitle";
      }

      else
      {
        v79 = @"PXCPLStatusActionManageCellularDataDisabled_AlertButtonTitle";
      }

      goto LABEL_172;
    }

    if (v31 == 1)
    {
      v79 = @"PXCPLStatusActionPause_AlertButtonTitle";
      goto LABEL_172;
    }

    if (v31 == 3)
    {
      v79 = @"PXCPLStatusActionManageCloudStorage_AlertButtonTitle";
      goto LABEL_172;
    }
  }

  else
  {
    if (v31 <= 7)
    {
      if (v31 == 6)
      {
        v79 = @"PXCPLStatusActionManageAirplaneMode_AlertButtonTitle";
      }

      else
      {
        v79 = @"PXCPLStatusActionViewItemsFailingToUpload_AlertButtonTitle";
      }

      goto LABEL_172;
    }

    switch(v31)
    {
      case 8:
        v79 = @"PXCPLStatusActionManageExitMode_AlertButtonTitle";
        goto LABEL_172;
      case 9:
        v79 = @"PXCPLStatusActionLearnMoreClientVersionTooOld_AlertButtonTitle";
        goto LABEL_172;
      case 10:
        v79 = @"PXCPLStatusActionManageClientAuthentication_AlertButtonTitle";
LABEL_172:
        v75 = _PXCPLUIStatusLocalizedString(v79);
        goto LABEL_173;
    }
  }

LABEL_174:

  v117 = v70;
  v88 = v72;
  v44 = v78;

  v42 = v32;
  if (v30 && ![v88 length])
  {
    v115 = 1;
    v89 = _PXCPLStatusPendingStateDescription(2, v138, 1, v137, v135, v129, 0);

    v130 = 0;
    v136 = v89;
  }

  else
  {
    v136 = v88;
    v130 = 0;
    v115 = 1;
  }

  v41 = v31;
  v45 = v117;
LABEL_189:
  v6 = objc_alloc_init(PXCPLUIStatus);
  v90 = [(PXCPLUIStatusProvider *)self actionManager];

  v91 = 0;
  v128 = v42;
  v133 = v10;
  if (v41 && v90)
  {
    v92 = [v5 cloudQuotaActionTitle];
    if (v41 <= 5)
    {
      if (v41 <= 2)
      {
        if (v41 != 1)
        {
          v95 = _PXCPLStatusResumeActionTitle(v42);
          goto LABEL_213;
        }

        v93 = @"PXCPLStatusActionPause_Title";
      }

      else if (v41 == 3)
      {
        v93 = @"PXCPLStatusActionManageCloudStorage_Title";
      }

      else if (v41 == 4)
      {
        v93 = @"PXCPLStatusActionManageLocalStorage_Title";
      }

      else
      {
        v93 = @"PXCPLStatusActionManageCellularDataDisabled_Title";
      }
    }

    else if (v41 > 8)
    {
      if (v41 == 9)
      {
        v93 = @"PXCPLStatusActionLearnMoreClientVersionTooOld_Title";
      }

      else
      {
        if (v41 != 10)
        {
          v95 = PXLocalizedStringFromTable(@"PXCPLStatusActionLearnMoreUpgradeSuggested_Title", @"PhotosUICore");
LABEL_213:
          v94 = v95;

          if (v45)
          {
            goto LABEL_231;
          }

          if (v41 != 2)
          {
            if (v41 == 1)
            {
              v96 = v94;
              v97 = v136;
              v148 = v136;
              v149 = 0;
              v147 = v44;
              v98 = v44;
              v99 = &v149;
              v100 = &v148;
              v101 = &v147;
              _PXCPLStatusPauseActionConfirmationAlertTitles(v138, &v149, &v148, &v147);
LABEL_230:
              v45 = *v99;
              v105 = *v100;

              v44 = *v101;
              v136 = v105;
              v94 = v96;
              v10 = v133;
              v5 = v134;
              goto LABEL_231;
            }

            v45 = 0;
LABEL_231:
            objc_initWeak(location, self);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __42__PXCPLUIStatusProvider__statusDidChange___block_invoke;
            aBlock[3] = &unk_1E7749988;
            objc_copyWeak(v143, location);
            v143[1] = v41;
            v91 = _Block_copy(aBlock);
            objc_destroyWeak(v143);
            objc_destroyWeak(location);
            goto LABEL_232;
          }

          [(PXCPLStatusProvider *)self->_statusProvider nextOverrideResumeTimeInterval];
          v103 = vcvtad_u64_f64(v102 / 3600.0);
          if (v103 > 11)
          {
            if (v103 == 12)
            {
              v96 = v94;
              v104 = 2;
              goto LABEL_229;
            }

            if (v103 == 24)
            {
              v96 = v94;
              v104 = 3;
              goto LABEL_229;
            }
          }

          else
          {
            if (v103 == 1)
            {
              v96 = v94;
              v104 = 0;
              goto LABEL_229;
            }

            if (v103 == 4)
            {
              v96 = v94;
              v104 = 1;
LABEL_229:
              v97 = v136;
              v145 = v136;
              v146 = 0;
              v144 = v44;
              v98 = v44;
              v99 = &v146;
              v100 = &v145;
              v101 = &v144;
              _PXCPLStatusResumeActionConfirmationAlertTitles(v128, v104, &v146, &v145, &v144);
              goto LABEL_230;
            }
          }

          v96 = v94;
          v104 = 4;
          goto LABEL_229;
        }

        v93 = @"PXCPLStatusActionManageClientAuthentication_Title";
      }
    }

    else if (v41 == 6)
    {
      v93 = @"PXCPLStatusActionManageAirplaneMode_Title";
    }

    else if (v41 == 7)
    {
      v93 = @"PXCPLStatusActionViewItemsFailingToUpload_Title";
    }

    else
    {
      v93 = @"PXCPLStatusActionManageExitMode_Title";
    }

    v95 = _PXCPLUIStatusLocalizedString(v93);
    goto LABEL_213;
  }

  v94 = 0;
LABEL_232:
  v118 = v41;
  if ([v5 isLocalModeEnabled])
  {
    v107 = v45;
    v108 = v44;
    v109 = @"Local Mode Enabled";
  }

  else
  {
    v110 = v5;
    v107 = v45;
    v108 = v44;
    if ([v110 isMockStatus])
    {
      v109 = @"Mock Status";
    }

    else
    {
      v109 = 0;
    }
  }

  LODWORD(v106) = -1.0;
  [(PXCPLUIStatus *)v6 setStateDescription:v119, v106];
  [(PXCPLUIStatus *)v6 setFailureDescription:v130];
  [(PXCPLUIStatus *)v6 setInternalInformationMessage:v109];
  [(PXCPLUIStatus *)v6 setPaused:v115];
  *&v111 = v36;
  [(PXCPLUIStatus *)v6 setProgress:v111];
  [(PXCPLUIStatus *)v6 setActionTitle:v94];
  [(PXCPLUIStatus *)v6 setActionConfirmationAlertTitle:v107];
  [(PXCPLUIStatus *)v6 setActionConfirmationAlertSubtitle:v136];
  [(PXCPLUIStatus *)v6 setActionConfirmationAlertButtonTitle:v108];
  [(PXCPLUIStatus *)v6 setAction:v91];
  [(PXCPLUIStatus *)v6 setReferencedItemsDescription:0];
  [(PXCPLUIStatus *)v6 setState:v120];
  [(PXCPLUIStatus *)v6 setActivity:v138];
  [(PXCPLUIStatus *)v6 setPauseReason:v128];
  [(PXCPLUIStatus *)v6 setServiceAction:v118];
  [(PXCPLUIStatus *)v6 setInResetSync:v137];
  [(PXCPLUIStatus *)v6 setIsRestoringLibrary:v8 != -1.0];
  [(PXCPLUIStatus *)v6 setHasCompletedInitialSync:v121 != 0];
  [(PXCPLUIStatus *)v6 setIsExiting:v10 != 0];
  [(PXCPLUIStatus *)v6 setNumberOfItemsFailingToUpload:v125];
  [(PXCPLUIStatus *)v6 setIsUpgradeSuggestedToAccessAllPhotos:v132];
  [(PXCPLUIStatus *)v6 setNumberOfPhotoAssets:v124];
  [(PXCPLUIStatus *)v6 setNumberOfVideoAssets:v123];
  [(PXCPLUIStatus *)v6 setNumberOfOtherAssets:v122];

  v5 = v134;
LABEL_238:
  v112 = PXCPLUIStatusDiff(self->_status, v6);
  if (v112)
  {
    v113 = v112;
    v139[0] = MEMORY[0x1E69E9820];
    v139[1] = 3221225472;
    v139[2] = __42__PXCPLUIStatusProvider__statusDidChange___block_invoke_2;
    v139[3] = &unk_1E77499B0;
    v139[4] = self;
    v140 = v6;
    v141 = v113;
    [(PXCPLUIStatusProvider *)self performChanges:v139];
  }

  else
  {
    v114 = PLUserStatusGetLog();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
    {
      *location = 138412546;
      *&location[4] = self;
      v151 = 2112;
      v152 = v6;
      _os_log_impl(&dword_1A3C1C000, v114, OS_LOG_TYPE_DEBUG, "%@ Suppressing update that resulted in no change: %@", location, 0x16u);
    }
  }
}

void __42__PXCPLUIStatusProvider__statusDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained actionManager];
  [v4 performAction:*(a1 + 40) forCPLUIStatus:v3];
}

uint64_t __42__PXCPLUIStatusProvider__statusDidChange___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 40));
  v2 = PLUserStatusGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 112);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ >> %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 32) signalChange:*(a1 + 48)];
}

- (PXCPLUIStatusProvider)initWithPhotoLibrary:(id)a3 actionManager:(id)a4 presentationStyle:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXCPLUIStatusProvider.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11 = [[PXCPLStatusProviderMonitor alloc] initWithPhotoLibrary:v9];
  v12 = [(PXCPLStatusProviderMonitor *)v11 statusProvider];
  v13 = [(PXCPLUIStatusProvider *)self initWithStatusProvider:v12 actionManager:v10 presentationStyle:a5];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_statusProviderMonitor, v11);
    [(PXCPLStatusProviderMonitor *)v14->_statusProviderMonitor registerChangeObserver:v14 context:PXCPLStatusProviderMonitorObservationContext];
  }

  return v14;
}

- (PXCPLUIStatusProvider)initWithStatusProvider:(id)a3 actionManager:(id)a4 presentationStyle:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = PXCPLUIStatusProvider;
  v11 = [(PXCPLUIStatusProvider *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actionManager, a4);
    objc_storeStrong(&v12->_statusProvider, a3);
    v12->_presentationStyle = a5;
    [(PXCPLStatusProvider *)v12->_statusProvider registerChangeObserver:v12 context:PXCPLStatusProviderObservationContext];
    v13 = [(PXCPLStatusProvider *)v12->_statusProvider status];
    if (v13)
    {
      [(PXCPLUIStatusProvider *)v12 _statusDidChange:v13];
    }
  }

  return v12;
}

- (PXCPLUIStatusProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCPLUIStatusProvider.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXCPLUIStatusProvider init]"}];

  abort();
}

@end