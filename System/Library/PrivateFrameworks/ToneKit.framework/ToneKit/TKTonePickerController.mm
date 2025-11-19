@interface TKTonePickerController
+ (id)_latestRedownloadAllTonesDate;
+ (void)_updateLatestRedownloadAllTonesDate;
- (BOOL)_didSelectToneClassicsPickerItem:(id)a3;
- (BOOL)_enableToneStoreDownloadItemIfAppropriate;
- (BOOL)_isDefaultGroupAtIndexPath:(id)a3;
- (BOOL)_isDividerAtIndexPath:(id)a3;
- (BOOL)_isIgnoreMuteGroupAtIndexPath:(id)a3;
- (BOOL)_isMediaGroupAtIndexPath:(id)a3;
- (BOOL)_isNoneGroupAtIndexPath:(id)a3;
- (BOOL)_isReflectionHeaderAtIndexPath:(id)a3;
- (BOOL)_isToneStoreGroupAtIndexPath:(id)a3;
- (BOOL)_isVibrationGroupAtIndexPath:(id)a3;
- (BOOL)_showsMedia;
- (BOOL)_showsNoneInSeparateToneGroup;
- (BOOL)canDeleteTonePickerItem:(id)a3;
- (BOOL)canShowStore;
- (BOOL)didSelectTonePickerItem:(id)a3;
- (BOOL)stopPlayingWithFadeOut:(BOOL)a3;
- (NSIndexPath)_indexPathForDefaultGroup;
- (NSIndexPath)_indexPathForFirstToneGroup;
- (NSIndexPath)_indexPathForMediaGroup;
- (NSIndexPath)_indexPathForNone;
- (NSIndexPath)_indexPathForReflectionRemixHeader;
- (NSIndexPath)_indexPathForToneStoreGroup;
- (NSIndexPath)_indexPathForVibrationGroup;
- (NSString)_ringtonesPlistName;
- (NSString)selectedToneIdentifier;
- (TKTonePickerController)initWithAlertType:(int64_t)a3;
- (TKTonePickerControllerDelegate)delegate;
- (TKTonePickerItem)_topLevelSelectedTonePickerItem;
- (TKTonePickerItem)selectedTonePickerItem;
- (id)_annotatedNameForToneIdentifier:(id)a3;
- (id)_cachedPickerItemForSection:(int64_t)a3;
- (id)_cachedPickerRowItemAtIndex:(int64_t)a3 inSectionForItem:(id)a4;
- (id)_footerTextForToneStoreGroup;
- (id)_identifierAtIndexPath:(id)a3 isMediaItem:(BOOL *)a4;
- (id)_identifierOfMediaItemAtIndex:(unint64_t)a3;
- (id)_identifierOfSelectedClassicAlertTone;
- (id)_identifierOfSelectedClassicRingtone;
- (id)_identifierOfSelectedRemixRingtone;
- (id)_identifierOfToneAtIndexPath:(id)a3;
- (id)_indexPathForIgnoreMuteGroup;
- (id)_indexPathForToneStoreDownloadItem;
- (id)_indexPathForToneWithIdentifier:(id)a3;
- (id)_loadAlertTonesFromPlist;
- (id)_loadRingtonesFromPlist;
- (id)_loadTonesFromPlistNamed:(id)a3;
- (id)_nameForToneIdentifier:(id)a3;
- (id)_nameOfSelectedVibrationIdentifier;
- (id)_pickerRowItemAtIndex:(int64_t)a3 inSectionForItem:(id)a4;
- (id)_platformSpecificAdjustedPlistName:(id)a3;
- (id)_sanitizedSelectedVibrationIdentifierAllowingNilForDefault:(BOOL)a3;
- (id)_selectedIdentifier:(BOOL *)a3;
- (id)_toneClassicsPickerItemAtIndex:(int64_t)a3 withToneIdentifier:(id)a4 belowTonePickerItem:(id)a5;
- (id)pickerItemForSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (unint64_t)_indexOfMediaItemWithIdentifier:(id)a3;
- (unint64_t)_mediaItemsCount;
- (void)_applyBatchUpdatesWithDeletedPickerRowItems:(id)a3 deletedTonePickerSectionItems:(id)a4 insertedPickerRowItems:(id)a5 insertedTonePickerSectionItems:(id)a6 tonePickerSectionItemsWithUpdatedHeaderText:(id)a7 tonePickerSectionItemsWithUpdatedFooterText:(id)a8;
- (void)_cachePickerRowItem:(id)a3 atIndex:(int64_t)a4 inSectionForItem:(id)a5;
- (void)_cachePickerSectionItem:(id)a3 forSection:(int64_t)a4;
- (void)_didFinishPlayingAlert:(id)a3;
- (void)_didReloadTones;
- (void)_didSelectMediaItemWithIdentifier:(id)a3;
- (void)_didSelectToneWithIdentifier:(id)a3;
- (void)_didUpdateDetailText:(id)a3 ofPickerItemForRowAtIndexPath:(id)a4;
- (void)_didUpdateFooterTextForToneStoreGroup;
- (void)_didUpdateToneStoreDownloadItem;
- (void)_disableToneStoreDownloadItem;
- (void)_goToStore;
- (void)_handleAlertOverridePolicyDidChangeNotification:(id)a3;
- (void)_invalidatePickerItemCaches;
- (void)_performBatchUpdates:(id)a3 completion:(id)a4;
- (void)_playToneWithIdentifier:(id)a3;
- (void)_redownloadAllTones;
- (void)_registerForUserGeneratedVibrationsDidChangeNotification;
- (void)_reloadMediaItems;
- (void)_reloadStateForBasicBehavior;
- (void)_reloadTonesForExternalChange:(BOOL)a3 shouldSkipDelegateFullReload:(BOOL)a4;
- (void)_resetSelectedClassicAlertToneIndex;
- (void)_resetSelectedClassicRingtoneIndex;
- (void)_setSelectedToneIdentifier:(id)a3 currentlyReloadingTones:(BOOL)a4;
- (void)_setSelectedVibrationIdentifier:(id)a3 forceUpdatingVibrationName:(BOOL)a4 explicitlySet:(BOOL)a5;
- (void)_setToneManager:(id)a3;
- (void)_sortToneIdentifiersArray:(id)a3;
- (void)_togglePlayForToneWithIdentifier:(id)a3;
- (void)_toneManagerContentsChanged:(id)a3;
- (void)_uncachePickerRowItemAtIndex:(int64_t)a3 inSectionForItem:(id)a4;
- (void)_unregisterForUserGeneratedVibrationsDidChangeNotification;
- (void)_updateDetailTextOfVibrationItem;
- (void)dealloc;
- (void)deleteTonePickerItem:(id)a3;
- (void)didFinishCheckingForAvailableToneStoreDownloads:(BOOL)a3;
- (void)setDefaultToneIdentifier:(id)a3;
- (void)setMediaAtTop:(BOOL)a3;
- (void)setNoneAtTop:(BOOL)a3;
- (void)setNoneString:(id)a3;
- (void)setSelectedToneIdentifier:(id)a3;
- (void)setShowsDefault:(BOOL)a3;
- (void)setShowsIgnoreMute:(BOOL)a3;
- (void)setShowsNone:(BOOL)a3;
- (void)setShowsNothingSelected:(BOOL)a3;
- (void)setShowsReflectionRemixesInline:(BOOL)a3;
- (void)setShowsToneStore:(BOOL)a3;
- (void)setShowsVibrations:(BOOL)a3;
- (void)setTargetDevice:(int64_t)a3;
- (void)setToneStoreDownloadController:(id)a3;
- (void)setTopic:(id)a3;
- (void)storeAccountNameDidChange:(id)a3;
- (void)toneStoreDownloadsDidFinish:(id)a3;
- (void)toneStoreDownloadsDidProgress:(id)a3;
- (void)toneStoreDownloadsDidStart:(id)a3;
@end

@implementation TKTonePickerController

- (TKTonePickerController)initWithAlertType:(int64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = TKTonePickerController;
  v4 = [(TKTonePickerController *)&v21 init];
  v5 = v4;
  if (v4)
  {
    if ((a3 - 1) > 0x1C)
    {
      v6 = v4;
      v5 = 0;
    }

    else
    {
      v4->_alertType = a3;
      [(TKTonePickerController *)v4 _reloadStateForBasicBehavior];
      v6 = [MEMORY[0x277D71F78] sharedToneManager];
      [(TKTonePickerController *)v5 _setToneManager:v6];
      v5->_showsDefault = 0;
      v5->_showsToneStore = 0;
      v5->_showsVibrations = 0;
      v7 = [v6 currentToneIdentifierForAlertType:a3];
      v8 = [v7 copy];
      defaultToneIdentifier = v5->_defaultToneIdentifier;
      v5->_defaultToneIdentifier = v8;

      v5->_defaultToneIdentifierWasExplicitlySet = 0;
      *&v5->_showsIgnoreMute = 0;
      v5->_toneStoreDownloadButtonState = 3;
      v10 = [objc_opt_class() _latestRedownloadAllTonesDate];
      if (v10 && ([MEMORY[0x277CBEAA8] date], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceDate:", v10), v13 = v12, v11, v13 <= 900.0))
      {
        v14 = TLLogToneManagement();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v23 = 15;
          _os_log_impl(&dword_21C599000, v14, OS_LOG_TYPE_DEFAULT, "Keeping redownload all tones functionality disabled for new tone picker because it was last triggered less than %ld minutes ago.", buf, 0xCu);
        }
      }

      else
      {
        v5->_isToneStoreDownloadButtonAllowed = 1;
      }

      [(TKTonePickerController *)v5 _setSelectedClassicAlertToneIndex:0x7FFFFFFFFFFFFFFFLL];
      [(TKTonePickerController *)v5 _setSelectedClassicRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
      v15 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
      v16 = [v15 supportsReflectionRemixes];

      if (v16)
      {
        [(TKTonePickerController *)v5 _setSelectedRemixRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
      }

      v17 = [(TKTonePickerController *)v5 _indexPathForNone];
      [(TKTonePickerController *)v5 _setSelectedToneIndexPath:v17];

      [(TKTonePickerController *)v5 _resetSelectedVibrationIdentifierForcingUpdatingVibrationName:1];
      [(TKTonePickerController *)v5 _reloadTones];
      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      [v18 addObserver:v5 selector:sel__handleAlertOverridePolicyDidChangeNotification_ name:*MEMORY[0x277D72080] object:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D72080] object:0];
  if (self->_showsVibrations)
  {
    [(TKTonePickerController *)self _unregisterForUserGeneratedVibrationsDidChangeNotification];
  }

  [(TLToneStoreDownloadController *)self->_toneStoreDownloadController removeObserver:self];

  v4.receiver = self;
  v4.super_class = TKTonePickerController;
  [(TKTonePickerController *)&v4 dealloc];
}

- (void)setTopic:(id)a3
{
  v4 = a3;
  if (self->_topic != v4)
  {
    v10 = v4;
    v5 = [(NSString *)v4 copy];
    topic = self->_topic;
    self->_topic = v5;

    if (!self->_defaultToneIdentifierWasExplicitlySet)
    {
      v7 = [(TLToneManager *)self->_toneManager currentToneIdentifierForAlertType:self->_alertType topic:v10];
      v8 = [v7 copy];
      defaultToneIdentifier = self->_defaultToneIdentifier;
      self->_defaultToneIdentifier = v8;
    }

    if (!self->_selectedVibrationIdentifierWasExplicitlySet)
    {
      [(TKTonePickerController *)self _resetSelectedVibrationIdentifierForcingUpdatingVibrationName:0];
    }

    [(TKTonePickerController *)self _reloadStateForBasicBehavior];
    [(TKTonePickerController *)self _reloadTones];
    v4 = v10;
  }
}

- (void)setDefaultToneIdentifier:(id)a3
{
  v11 = a3;
  v4 = [v11 length];
  v5 = v11;
  if (!v4)
  {
    toneManager = self->_toneManager;
    alertType = self->_alertType;
    v8 = [(TKTonePickerController *)self topic];
    v5 = [(TLToneManager *)toneManager currentToneIdentifierForAlertType:alertType topic:v8];
  }

  if (self->_defaultToneIdentifier != v5)
  {
    v9 = [(NSString *)v5 copy];
    defaultToneIdentifier = self->_defaultToneIdentifier;
    self->_defaultToneIdentifier = v9;

    self->_defaultToneIdentifierWasExplicitlySet = v4 != 0;
    [(TKTonePickerController *)self _reloadTones];
  }
}

- (void)setShowsToneStore:(BOOL)a3
{
  if (self->_showsToneStore != a3)
  {
    v4 = a3;
    self->_showsToneStore = a3;
    v10 = [(TKTonePickerController *)self _selectedToneIndexPath];
    if (v10)
    {
      v6 = [v10 tk_section];
      v7 = [v10 tk_row];
      if (v6 <= 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }

      if (v4)
      {
        v8 = 1;
      }

      v9 = [MEMORY[0x277CCAA70] tk_indexPathForRow:v7 inSection:v8 + v6];
      [(TKTonePickerController *)self _setSelectedToneIndexPath:v9];
    }

    [(TKTonePickerController *)self _invalidatePickerItemCaches];
    [(TKTonePickerController *)self _didReloadTones];
  }
}

- (void)setShowsDefault:(BOOL)a3
{
  if (self->_showsDefault == a3)
  {
    return;
  }

  v4 = a3;
  v13 = [(TKTonePickerController *)self _selectedToneIndexPath];
  v6 = [(TKTonePickerController *)self _isNoneGroupAtIndexPath:v13];
  v7 = [(TKTonePickerController *)self _isDefaultGroupAtIndexPath:v13];
  self->_showsDefault = v4;
  if (v4)
  {
    if (v13 == 0 || v6)
    {
      v8 = [(TKTonePickerController *)self _indexPathForDefaultGroup];
LABEL_15:
      v12 = v8;
      [(TKTonePickerController *)self _setSelectedToneIndexPath:v8];

      goto LABEL_16;
    }

LABEL_9:
    v9 = [v13 tk_section];
    v10 = [v13 tk_row];
    if (v9 <= 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1;
    }

    if (v4)
    {
      v11 = 1;
    }

    v8 = [MEMORY[0x277CCAA70] tk_indexPathForRow:v10 inSection:v11 + v9];
    goto LABEL_15;
  }

  if (v7)
  {
    if (!self->_showsNone)
    {
      [(TKTonePickerController *)self _setSelectedToneIndexPath:0];
      goto LABEL_16;
    }

    v8 = [(TKTonePickerController *)self _indexPathForNone];
    goto LABEL_15;
  }

  if (v13)
  {
    goto LABEL_9;
  }

LABEL_16:
  [(TKTonePickerController *)self _invalidatePickerItemCaches];
  [(TKTonePickerController *)self _didReloadTones];
  if (self->_selectedToneWasExplicitlySetToDefaultTone)
  {
    [(TKTonePickerController *)self setSelectedToneIdentifier:0];
  }
}

- (void)setShowsNone:(BOOL)a3
{
  if (self->_showsNone != a3)
  {
    v4 = a3;
    v8 = [(TKTonePickerController *)self _selectedToneIndexPath];
    v6 = [(TKTonePickerController *)self _isNoneGroupAtIndexPath:v8];
    self->_showsNone = v4;
    self->_showsNoneWasExplicitlySet = 1;
    if (v8 || !v4)
    {
      if (!v4 && v6)
      {
        [(TKTonePickerController *)self _setSelectedToneIndexPath:0];
      }
    }

    else
    {
      v7 = [(TKTonePickerController *)self _indexPathForNone];
      [(TKTonePickerController *)self _setSelectedToneIndexPath:v7];
    }

    [(TKTonePickerController *)self _reloadTones];
  }
}

- (void)setNoneAtTop:(BOOL)a3
{
  if (self->_noneAtTop != a3)
  {
    v8 = [(TKTonePickerController *)self _selectedToneIndexPath];
    v6 = [(TKTonePickerController *)self _isNoneGroupAtIndexPath:v8];
    self->_noneAtTop = a3;
    if (v8 || !self->_showsNone)
    {
      if (!self->_showsNone && v6)
      {
        [(TKTonePickerController *)self _setSelectedToneIndexPath:0];
      }
    }

    else
    {
      v7 = [(TKTonePickerController *)self _indexPathForNone];
      [(TKTonePickerController *)self _setSelectedToneIndexPath:v7];
    }

    [(TKTonePickerController *)self _reloadTones];
  }
}

- (void)setNoneString:(id)a3
{
  v4 = a3;
  noneString = self->_noneString;
  if (noneString != v4)
  {
    v8 = v4;
    if (![(NSString *)noneString isEqualToString:v4])
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->_noneString;
      self->_noneString = v6;

      [(TKTonePickerController *)self _invalidatePickerItemCaches];
      [(TKTonePickerController *)self _didReloadTones];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setShowsNothingSelected:(BOOL)a3
{
  if (self->_showsNothingSelected != a3)
  {
    self->_showsNothingSelected = a3;
    [(TKTonePickerController *)self _invalidatePickerItemCaches];

    [(TKTonePickerController *)self _didReloadTones];
  }
}

- (void)setTargetDevice:(int64_t)a3
{
  if (self->_targetDevice != a3)
  {
    self->_targetDevice = a3;
    [(TKTonePickerController *)self _reloadTones];
  }
}

- (int64_t)numberOfSections
{
  v3 = self->_showsVibrations + self->_showsIgnoreMute + self->_showsToneStore + self->_showsDefault;
  v4 = [(NSMutableArray *)self->_toneGroupLists count]+ v3;
  if (self->_showsNone)
  {
    v4 += [(TKTonePickerController *)self isNoneAtTop]^ 1;
  }

  return v4 + [(TKTonePickerController *)self _showsMedia];
}

- (id)pickerItemForSection:(int64_t)a3
{
  v5 = [(TKTonePickerController *)self _cachedPickerItemForSection:?];
  if (!v5)
  {
    if (self->_showsIgnoreMute && (-[TKTonePickerController _indexPathForIgnoreMuteGroup](self, "_indexPathForIgnoreMuteGroup"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 tk_section], v6, v7 == a3))
    {
      v8 = [(TKTonePickerController *)self _footerTextForIgnoreMuteGroup];
      v9 = 0;
    }

    else
    {
      if (!self->_showsVibrations || (-[TKTonePickerController _indexPathForVibrationGroup](self, "_indexPathForVibrationGroup"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 tk_section], v10, v11 != a3))
      {
        if (self->_showsToneStore)
        {
          v15 = [(TKTonePickerController *)self _indexPathForToneStoreGroup];
          v16 = [v15 tk_section];

          if (v16 == a3)
          {
            if (self->_toneStoreDownloadButtonState == 3)
            {
              v14 = 1;
            }

            else
            {
              v14 = 2;
            }

            v9 = TLLocalizedString();
            v8 = [(TKTonePickerController *)self _footerTextForToneStoreGroup];
            v13 = 0x7FFFFFFFFFFFFFFFLL;
            v12 = 4;
            goto LABEL_33;
          }
        }

        if (self->_showsDefault)
        {
          v17 = [(TKTonePickerController *)self _indexPathForDefaultGroup];
          v18 = [v17 tk_section];

          if (v18 == a3)
          {
            v9 = TLLocalizedString();
            v8 = 0;
            v13 = 0x7FFFFFFFFFFFFFFFLL;
            v14 = 1;
            v12 = 1;
            goto LABEL_33;
          }
        }

        if (!self->_showsNone || -[TKTonePickerController isNoneAtTop](self, "isNoneAtTop") || (-[TKTonePickerController _indexPathForNone](self, "_indexPathForNone"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 tk_section], v19, v20 != a3))
        {
          if (-[TKTonePickerController _showsMedia](self, "_showsMedia") && (-[TKTonePickerController _indexPathForMediaGroup](self, "_indexPathForMediaGroup"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 tk_section], v21, v22 == a3))
          {
            v14 = [(TKTonePickerController *)self _mediaItemsCount]+ 1;
            v9 = TLLocalizedString();
            v8 = 0;
            v13 = 0x7FFFFFFFFFFFFFFFLL;
            v12 = 3;
          }

          else
          {
            v9 = [(TKTonePickerController *)self _indexPathForFirstToneGroup];

            if (v9)
            {
              v23 = [(TKTonePickerController *)self _indexPathForFirstToneGroup];
              v13 = a3 - [v23 tk_section];

              if ((v13 & 0x8000000000000000) == 0 && v13 < [(NSMutableArray *)self->_toneGroupLists count]&& v13 < [(NSMutableArray *)self->_toneGroupNames count])
              {
                v24 = [(NSMutableArray *)self->_toneGroupLists objectAtIndex:v13];
                v14 = [v24 count];

                v9 = [(NSMutableArray *)self->_toneGroupNames objectAtIndex:v13];
                if (![v9 length])
                {

                  v9 = 0;
                }

                v8 = 0;
                v12 = 2;
                goto LABEL_33;
              }

              v9 = 0;
            }

            v8 = 0;
            v14 = 0;
            v12 = 0;
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }

LABEL_33:
          v5 = objc_alloc_init(TKTonePickerSectionItem);
          [(TKPickerSectionItem *)v5 _setText:v9];
          [(TKPickerSectionItem *)v5 _setFooterText:v8];
          [(TKTonePickerSectionItem *)v5 _setNumberOfChildren:v14];
          [(TKPickerItem *)v5 _setSection:a3];
          [(TKTonePickerSectionItem *)v5 _setSectionHeader:v12];
          [(TKTonePickerSectionItem *)v5 _setRegularToneSectionIndex:v13];
          [(TKTonePickerSectionItem *)v5 _setParentTonePickerController:self];
          [(TKTonePickerController *)self _cachePickerSectionItem:v5 forSection:a3];

          goto LABEL_34;
        }
      }

      v9 = 0;
      v8 = 0;
    }

    v12 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 1;
    goto LABEL_33;
  }

LABEL_34:

  return v5;
}

- (id)_pickerRowItemAtIndex:(int64_t)a3 inSectionForItem:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(TKTonePickerController *)self _cachedPickerRowItemAtIndex:a3 inSectionForItem:v6];
  if (!v7)
  {
    v8 = [MEMORY[0x277CCAA70] tk_indexPathForRow:a3 inSection:{objc_msgSend(v6, "section")}];
    if ([(TKTonePickerController *)self _isDividerAtIndexPath:v8])
    {
      v7 = objc_alloc_init(TKPickerDividerItem);
      -[TKPickerItem _setSection:](v7, "_setSection:", [v8 tk_section]);
      -[TKPickerRowItem _setRow:](v7, "_setRow:", [v8 tk_row]);
      v9 = 0;
      v57 = 0;
      v58 = 0;
      v55 = 0;
      v56 = 0;
      v53 = 0;
      v54 = 0;
      v10 = 0;
      v59 = 0;
      v60 = 0;
      v11 = 0;
      v12 = 1;
LABEL_50:
      v29 = v8;
      if ([(TKTonePickerController *)self showsNothingSelected])
      {
        v30 = 0;
      }

      else
      {
        v31 = [(TKTonePickerController *)self _selectedToneIndexPath];
        v30 = [v31 isEqual:v29];
      }

      [(TKPickerDividerItem *)v9 _setShowsCheckmark:v30];
      [(TKPickerDividerItem *)v9 _setItemKind:v54];
      [(TKPickerDividerItem *)v9 _setShowsDisclosureIndicator:v56];
      [(TKPickerDividerItem *)v9 _setNeedsRoomForCheckmark:v12];
      [(TKPickerRowItem *)v9 _setWantsIndentedLayout:HIDWORD(v57)];
      [(TKPickerDividerItem *)v9 _setNeedsActivityIndicator:v10];
      [(TKPickerDividerItem *)v9 _setNeedsSwitch:HIDWORD(v55)];
      [(TKPickerDividerItem *)v9 _setSwitchedOn:v57];
      [(TKPickerDividerItem *)v9 _setNeedsDownloadProgress:v53];
      LODWORD(v32) = v11;
      [(TKPickerDividerItem *)v9 _setDownloadProgress:v32];
      [(TKPickerDividerItem *)v9 _setShouldTintText:v55];
      [(TKPickerDividerItem *)v9 _setShouldPreventSelection:HIDWORD(v53)];
      [(TKPickerDividerItem *)v9 _setText:v58];
      [(TKPickerDividerItem *)v9 _setDetailText:v60];
      if ([v59 count])
      {
        v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __65__TKTonePickerController__pickerRowItemAtIndex_inSectionForItem___block_invoke;
        v61[3] = &unk_278316488;
        v61[4] = self;
        v62 = v9;
        v63 = v33;
        v34 = v33;
        [v59 enumerateObjectsUsingBlock:v61];
        v35 = [v34 copy];
      }

      else
      {
        v35 = 0;
      }

      [(TKPickerDividerItem *)v9 _setChildrenToneClassicsPickerItems:v35];
      [(TKTonePickerController *)self _cachePickerRowItem:v7 atIndex:a3 inSectionForItem:v6];

      goto LABEL_57;
    }

    v13 = objc_alloc_init(TKTonePickerItem);
    -[TKPickerItem _setSection:](v13, "_setSection:", [v8 tk_section]);
    -[TKPickerRowItem _setRow:](v13, "_setRow:", [v8 tk_row]);
    [(TKTonePickerItem *)v13 _setParentSectionItem:v6];
    v7 = v13;
    if ([(TKTonePickerController *)self _isIgnoreMuteGroupAtIndexPath:v8])
    {
      v58 = TLLocalizedString();
      v57 = [(TKTonePickerController *)self ignoreMute];
      v10 = 0;
      v12 = 0;
      v59 = 0;
      v60 = 0;
      v56 = 0;
      v11 = 0;
      v55 = 0x100000000;
      v54 = 3;
      v9 = v7;
      v53 = 0x100000000;
      goto LABEL_50;
    }

    if ([(TKTonePickerController *)self _isVibrationGroupAtIndexPath:v8])
    {
      v60 = [(TKTonePickerController *)self _nameOfSelectedVibrationIdentifier];
      TLLocalizedString();
      v58 = v57 = 0;
      v54 = 0;
      v55 = 0;
      v53 = 0;
      v10 = 0;
      v12 = 0;
      v59 = 0;
      v56 = 1;
      v11 = 0;
LABEL_49:
      v9 = v7;
      goto LABEL_50;
    }

    if ([(TKTonePickerController *)self _isToneStoreGroupAtIndexPath:v8])
    {
      v11 = 0;
      if (a3 != 1)
      {
        if (!a3)
        {
LABEL_11:
          TLLocalizedString();
          v58 = v57 = 0;
          v53 = 0;
          v54 = 0;
          v10 = 0;
          v12 = 0;
          v59 = 0;
          v60 = 0;
          v56 = 0;
          v55 = 1;
          goto LABEL_49;
        }

        LODWORD(v57) = 0;
        v55 = 0;
        HIDWORD(v53) = 0;
        v10 = 0;
        v12 = 0;
        v59 = 0;
        v60 = 0;
        v58 = 0;
LABEL_26:
        LODWORD(v53) = 0;
        HIDWORD(v57) = 0;
        v56 = 0;
        v54 = 0;
        goto LABEL_49;
      }

      v59 = 0;
      toneStoreDownloadButtonState = self->_toneStoreDownloadButtonState;
      if (toneStoreDownloadButtonState > 1)
      {
        if (toneStoreDownloadButtonState == 2)
        {
          goto LABEL_63;
        }

        if (toneStoreDownloadButtonState == 3)
        {
          v58 = TLLocalizedString();
          v59 = 0;
          LODWORD(v57) = 0;
          v55 = 0;
          HIDWORD(v53) = 0;
          v10 = 0;
          v12 = 0;
          v60 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        if (!toneStoreDownloadButtonState)
        {
          goto LABEL_11;
        }

        if (toneStoreDownloadButtonState == 1)
        {
LABEL_63:
          TLLocalizedString();
          v58 = v57 = 0;
          v55 = 0;
          v56 = 0;
          v12 = 0;
          v59 = 0;
          v60 = 0;
          v54 = 0;
          v53 = 0x100000000;
          v9 = v7;
          v10 = 1;
          goto LABEL_50;
        }
      }

      v9 = v7;
      v55 = 0;
      v53 = 0;
      v10 = 0;
      v12 = 0;
      v60 = 0;
      v58 = 0;
      v57 = 0;
      v56 = 0;
      v54 = 0;
      goto LABEL_50;
    }

    if ([(TKTonePickerController *)self _isDefaultGroupAtIndexPath:v8])
    {
      v14 = [(TKTonePickerController *)self defaultToneIdentifier];
      if (!v14)
      {
        v15 = TLLogGeneral();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

        if (v16)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
          v18 = TLLogGeneral();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v17 lastPathComponent];
            v20 = [MEMORY[0x277CCACC8] callStackSymbols];
            *buf = 136381443;
            v65 = "[TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:]";
            v66 = 2113;
            v67 = v19;
            v68 = 2049;
            v69 = 580;
            v70 = 2113;
            v71 = v20;
            _os_log_impl(&dword_21C599000, v18, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
          }
        }

        else
        {
          v17 = TLLogGeneral();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
          }
        }

        v28 = TLLogGeneral();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
        }
      }

      v22 = [(TKTonePickerController *)self _nameForToneIdentifier:v14];
      goto LABEL_46;
    }

    if ([(TKTonePickerController *)self _isNoneGroupAtIndexPath:v8])
    {
      v21 = [(TKTonePickerController *)self noneString];
      v14 = v21;
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = TLLocalizedString();
      }

      goto LABEL_46;
    }

    if ([(TKTonePickerController *)self _isMediaGroupAtIndexPath:v8])
    {
      v24 = [(TKTonePickerController *)self _mediaItemsCount];
      if ([v8 tk_row] >= v24)
      {
        TLLocalizedString();
        v58 = v57 = 0;
        v54 = 0;
        v55 = 0;
        v53 = 0;
        v10 = 0;
        v59 = 0;
        v60 = 0;
        v11 = 0;
        v12 = 1;
        v9 = v7;
        v56 = 1;
        goto LABEL_50;
      }

      v14 = [(TKTonePickerController *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v58 = 0;
        goto LABEL_47;
      }

      v22 = [v14 tonePickerController:self titleOfMediaItemAtIndex:{objc_msgSend(v8, "tk_row")}];
LABEL_46:
      v58 = v22;
LABEL_47:

      v56 = 0;
      v57 = 0;
      v54 = 0;
      v55 = 0;
      v53 = 0;
      v10 = 0;
      v59 = 0;
      v60 = 0;
      v11 = 0;
LABEL_48:
      v12 = 1;
      goto LABEL_49;
    }

    v25 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:v8];
    if (![v25 length] && !self->_showsDefault)
    {
      v26 = [(TKTonePickerController *)self defaultToneIdentifier];

      v25 = v26;
    }

    if ([v25 isEqualToString:@"<classic_alert_tone_identifier>"])
    {
      v58 = TLLocalizedString();
      v59 = [(TKTonePickerController *)self _classicAlertToneIdentifiers];
      if ([(TKTonePickerController *)self _selectedClassicAlertToneIndex]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v60 = 0;
        HIDWORD(v57) = 0;
        v56 = 1;
        v27 = 2;
LABEL_68:
        v54 = v27;
LABEL_87:
        v49 = [(NSMutableDictionary *)self->_activeToneStoreDownloadsByIdentifier objectForKey:v25];
        v50 = v49;
        if (v49)
        {
          [v49 downloadProgress];
          v11 = v51;
          LODWORD(v53) = 1;
        }

        else
        {
          v52 = [(NSMutableDictionary *)self->_finishedToneStoreDownloadsByIdentifier objectForKey:v25];
          LODWORD(v53) = v52 != 0;

          v11 = 0;
        }

        LODWORD(v57) = 0;
        v55 = 0;
        HIDWORD(v53) = 0;
        v10 = 0;
        goto LABEL_48;
      }

      v38 = [(TKTonePickerController *)self selectedToneIdentifier];
      v60 = [(TKTonePickerController *)self _nameForToneIdentifier:v38];
      HIDWORD(v57) = 0;
      v56 = 1;
      v39 = 2;
      goto LABEL_71;
    }

    if ([v25 isEqualToString:@"<classic_ringtone_identifier>"])
    {
      v58 = TLLocalizedString();
      v59 = [(TKTonePickerController *)self _classicRingtoneIdentifiers];
      if ([(TKTonePickerController *)self _selectedClassicRingtoneIndex]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v60 = 0;
        HIDWORD(v57) = 0;
        v56 = 1;
        v27 = 1;
        goto LABEL_68;
      }

      v38 = [(TKTonePickerController *)self selectedToneIdentifier];
      v60 = [(TKTonePickerController *)self _nameForToneIdentifier:v38];
      HIDWORD(v57) = 0;
      v54 = 1;
      v56 = 1;
    }

    else
    {
      v40 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
      if ([v40 supportsReflectionRemixes])
      {
        v41 = [v25 isEqualToString:@"<remix_ringtone_identifier>"];

        if (v41)
        {
          v58 = TLLocalizedString();
          if ([(TKTonePickerController *)self _selectedRemixRingtoneIndex]== 0x7FFFFFFFFFFFFFFFLL)
          {
            v59 = 0;
            v60 = 0;
            HIDWORD(v57) = 0;
            v56 = 1;
            v27 = 4;
            goto LABEL_68;
          }

          v38 = [(TKTonePickerController *)self selectedToneIdentifier];
          [(TKTonePickerController *)self _annotatedNameForToneIdentifier:v38];
          v60 = v59 = 0;
          HIDWORD(v57) = 0;
          v56 = 1;
          v39 = 4;
LABEL_71:
          v54 = v39;
          goto LABEL_86;
        }
      }

      else
      {
      }

      v58 = [(TKTonePickerController *)self _annotatedNameForToneIdentifier:v25];
      v42 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
      v43 = [v42 supportsReflectionRemixes];

      if (!v43)
      {
        v59 = 0;
        v60 = 0;
        HIDWORD(v57) = 0;
        v56 = 0;
        v54 = 0;
        goto LABEL_87;
      }

      v38 = [(TKTonePickerController *)self _indexPathForReflectionRemixHeader];
      if (self->_showsReflectionRemixesInline && (v44 = [v8 tk_section], v44 == objc_msgSend(v38, "tk_section")) && (v45 = objc_msgSend(v8, "tk_row"), v45 > objc_msgSend(v38, "tk_row")))
      {
        v46 = [v8 tk_row];
        v47 = [v38 tk_row];
        v48 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
        HIDWORD(v57) = v46 <= [v48 count] + v47;

        v59 = 0;
        v60 = 0;
      }

      else
      {
        v59 = 0;
        v60 = 0;
        HIDWORD(v57) = 0;
      }

      v56 = 0;
      v54 = 0;
    }

LABEL_86:

    goto LABEL_87;
  }

LABEL_57:

  v36 = *MEMORY[0x277D85DE8];

  return v7;
}

void __65__TKTonePickerController__pickerRowItemAtIndex_inSectionForItem___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _toneClassicsPickerItemAtIndex:a3 withToneIdentifier:a2 belowTonePickerItem:*(a1 + 40)];
  [*(a1 + 48) addObject:v4];
}

- (id)_toneClassicsPickerItemAtIndex:(int64_t)a3 withToneIdentifier:(id)a4 belowTonePickerItem:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v9 itemKind];
  if (v10 == 2)
  {
    v11 = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    v11 = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
LABEL_5:
    v12 = v11;
    goto LABEL_7;
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
  v13 = [(TKTonePickerController *)self _annotatedNameForToneIdentifier:v8];
  v14 = objc_alloc_init(TKToneClassicsPickerItem);
  [(TKTonePickerItem *)v14 _setItemKind:0];
  [(TKPickerSelectableItem *)v14 _setText:v13];
  [(TKPickerSelectableItem *)v14 _setShowsCheckmark:v12 == a3];
  [(TKTonePickerItem *)v14 _setNeedsRoomForCheckmark:1];
  -[TKPickerItem _setSection:](v14, "_setSection:", [v9 section]);
  -[TKPickerRowItem _setRow:](v14, "_setRow:", [v9 row]);
  [(TKToneClassicsPickerItem *)v14 _setClassicToneIndex:a3];
  [(TKToneClassicsPickerItem *)v14 _setParentItem:v9];

  return v14;
}

- (id)_cachedPickerItemForSection:(int64_t)a3
{
  if ([(NSMutableArray *)self->_cachedPickerSectionItems count]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_cachedPickerSectionItems objectAtIndex:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)_cachePickerSectionItem:(id)a3 forSection:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v11 = v6;
    cachedPickerSectionItems = self->_cachedPickerSectionItems;
    if (!cachedPickerSectionItems)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = self->_cachedPickerSectionItems;
      self->_cachedPickerSectionItems = v8;

      cachedPickerSectionItems = self->_cachedPickerSectionItems;
    }

    [(NSMutableArray *)cachedPickerSectionItems tk_ensureHasItemsOrNullUpToIndex:a4];
    v10 = [(NSMutableArray *)self->_cachedPickerSectionItems objectAtIndex:a4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 _setParentTonePickerController:0];
    }

    [(NSMutableArray *)self->_cachedPickerSectionItems replaceObjectAtIndex:a4 withObject:v11];

    v6 = v11;
  }
}

- (id)_cachedPickerRowItemAtIndex:(int64_t)a3 inSectionForItem:(id)a4
{
  v6 = [a4 section];
  if (v6 >= [(NSMutableArray *)self->_cachedPickerRowItems count])
  {
    v9 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_cachedPickerRowItems objectAtIndex:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      if ([v8 count] <= a3)
      {
        v9 = 0;
        v7 = v8;
      }

      else
      {
        v7 = [v8 objectAtIndex:a3];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v7;
          v9 = v7;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)_cachePickerRowItem:(id)a3 atIndex:(int64_t)a4 inSectionForItem:(id)a5
{
  v14 = a3;
  v8 = a5;
  if (!v14)
  {
    goto LABEL_13;
  }

  if (!self->_cachedPickerRowItems)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cachedPickerRowItems = self->_cachedPickerRowItems;
    self->_cachedPickerRowItems = v9;
  }

  v11 = [v8 section];
  if (v11 >= [(NSMutableArray *)self->_cachedPickerRowItems count])
  {
    goto LABEL_9;
  }

  v12 = [(NSMutableArray *)self->_cachedPickerRowItems objectAtIndex:v11];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_9:
    [(NSMutableArray *)self->_cachedPickerRowItems tk_ensureHasItemsOrNullUpToIndex:v11];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableArray *)self->_cachedPickerRowItems replaceObjectAtIndex:v11 withObject:v12];
    goto LABEL_10;
  }

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  [v12 tk_ensureHasItemsOrNullUpToIndex:a4];
  v13 = [v12 objectAtIndex:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v13 _setParentSectionItem:0];
  }

  [v12 replaceObjectAtIndex:a4 withObject:v14];

LABEL_13:
}

- (void)_uncachePickerRowItemAtIndex:(int64_t)a3 inSectionForItem:(id)a4
{
  v6 = [a4 section];
  if (v6 >= [(NSMutableArray *)self->_cachedPickerRowItems count])
  {
    v7 = 0;
    goto LABEL_12;
  }

  v10 = [(NSMutableArray *)self->_cachedPickerRowItems objectAtIndex:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    if (!v10)
    {
      goto LABEL_12;
    }

    if ([v10 count] <= a3)
    {
      goto LABEL_11;
    }

    v8 = [v10 objectAtIndex:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 _setParentSectionItem:0];
    }

    v9 = [MEMORY[0x277CBEB68] null];
    [v10 replaceObjectAtIndex:a3 withObject:v9];
  }

  else
  {
    v8 = v10;
    v10 = 0;
  }

LABEL_11:
  v7 = v10;
LABEL_12:
}

- (void)_invalidatePickerItemCaches
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = self->_cachedPickerSectionItems;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 _setParentTonePickerController:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  cachedPickerSectionItems = self->_cachedPickerSectionItems;
  self->_cachedPickerSectionItems = 0;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = self;
  obj = self->_cachedPickerRowItems;
  v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v26;
            do
            {
              v19 = 0;
              do
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v25 + 1) + 8 * v19);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v20 _setParentSectionItem:0];
                }

                ++v19;
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
            }

            while (v17);
          }
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v11);
  }

  cachedPickerRowItems = v23->_cachedPickerRowItems;
  v23->_cachedPickerRowItems = 0;

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_indexPathForIgnoreMuteGroup
{
  if (self->_showsIgnoreMute)
  {
    v4 = [MEMORY[0x277CCAA70] tk_indexPathForRow:0 inSection:{0, v2}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSIndexPath)_indexPathForVibrationGroup
{
  if (self->_showsVibrations)
  {
    v4 = [MEMORY[0x277CCAA70] tk_indexPathForRow:0 inSection:{self->_showsIgnoreMute, v2}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSIndexPath)_indexPathForToneStoreGroup
{
  if (self->_showsToneStore)
  {
    v4 = [MEMORY[0x277CCAA70] tk_indexPathForRow:0 inSection:{self->_showsVibrations + self->_showsIgnoreMute, v2}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_indexPathForToneStoreDownloadItem
{
  v2 = [(TKTonePickerController *)self _indexPathForToneStoreGroup];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CCAA70] tk_indexPathForRow:1 inSection:{objc_msgSend(v2, "tk_section")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSIndexPath)_indexPathForDefaultGroup
{
  if (self->_showsDefault)
  {
    v4 = [MEMORY[0x277CCAA70] tk_indexPathForRow:0 inSection:{self->_showsVibrations + self->_showsIgnoreMute + self->_showsToneStore, v2}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSIndexPath)_indexPathForFirstToneGroup
{
  v3 = [(NSMutableArray *)self->_toneGroupLists count];
  if (v3)
  {
    v4 = self->_showsVibrations + self->_showsIgnoreMute + self->_showsToneStore + self->_showsDefault;
    if ([(TKTonePickerController *)self _showsMedia])
    {
      v4 += [(TKTonePickerController *)self _isMediaAtTop];
    }

    v3 = [MEMORY[0x277CCAA70] tk_indexPathForRow:0 inSection:v4];
  }

  return v3;
}

- (NSIndexPath)_indexPathForMediaGroup
{
  if ([(TKTonePickerController *)self _showsMedia])
  {
    v3 = self->_showsVibrations + self->_showsIgnoreMute + self->_showsToneStore;
    if (![(TKTonePickerController *)self _isMediaAtTop])
    {
      v3 += [(NSMutableArray *)self->_toneGroupLists count]+ self->_showsDefault;
    }

    v4 = [MEMORY[0x277CCAA70] tk_indexPathForRow:0 inSection:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isReflectionHeaderAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v6 = [v5 supportsReflectionRemixes];

  v7 = 0;
  if (v4 && v6)
  {
    v8 = [(TKTonePickerController *)self _indexPathForReflectionRemixHeader];
    v9 = v4;
    v10 = v8;
    v11 = v10;
    if (v10)
    {
      if (v10 == v9)
      {
        v7 = 1;
      }

      else
      {
        v7 = [v9 isEqual:v10];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSIndexPath)_indexPathForReflectionRemixHeader
{
  v3 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v4 = [v3 supportsReflectionRemixes];

  if (v4)
  {
    v5 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:@"<remix_ringtone_identifier>"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSIndexPath)_indexPathForNone
{
  if (self->_showsNone && ![(TKTonePickerController *)self isNoneAtTop])
  {
    v4 = [(NSMutableArray *)self->_toneGroupLists count]+ self->_showsIgnoreMute + self->_showsVibrations + self->_showsToneStore + self->_showsDefault;
    v5 = [(TKTonePickerController *)self _showsMedia];
    v3 = [MEMORY[0x277CCAA70] tk_indexPathForRow:0 inSection:v4 + v5];
  }

  else
  {
    v3 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:*MEMORY[0x277D72068]];
  }

  return v3;
}

- (BOOL)_isIgnoreMuteGroupAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (v4 && self->_showsIgnoreMute)
  {
    if ([v4 tk_row])
    {
      v6 = 0;
    }

    else
    {
      v6 = [v5 tk_section] == 0;
    }
  }

  return v6;
}

- (BOOL)_isVibrationGroupAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (v4 && self->_showsVibrations)
  {
    showsIgnoreMute = self->_showsIgnoreMute;
    if ([v4 tk_row])
    {
      v6 = 0;
    }

    else
    {
      v6 = [v5 tk_section] == showsIgnoreMute;
    }
  }

  return v6;
}

- (BOOL)_isToneStoreGroupAtIndexPath:(id)a3
{
  result = 0;
  if (a3)
  {
    if (self->_showsToneStore)
    {
      v5 = self->_showsVibrations + self->_showsIgnoreMute;
      return [a3 tk_section] == v5;
    }
  }

  return result;
}

- (BOOL)_isDefaultGroupAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (v4 && self->_showsDefault)
  {
    showsIgnoreMute = self->_showsIgnoreMute;
    showsVibrations = self->_showsVibrations;
    showsToneStore = self->_showsToneStore;
    if ([v4 tk_row])
    {
      v6 = 0;
    }

    else
    {
      v6 = [v5 tk_section] == showsVibrations + showsIgnoreMute + showsToneStore;
    }
  }

  return v6;
}

- (BOOL)_isNoneGroupAtIndexPath:(id)a3
{
  v4 = a3;
  if (!self->_showsNone)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = [(TKTonePickerController *)self isNoneAtTop];
  v6 = 0;
  if (v4 && !v5)
  {
    v7 = [(NSMutableArray *)self->_toneGroupLists count];
    showsIgnoreMute = self->_showsIgnoreMute;
    showsVibrations = self->_showsVibrations;
    showsToneStore = self->_showsToneStore;
    showsDefault = self->_showsDefault;
    v12 = [(TKTonePickerController *)self _showsMedia];
    if (![v4 tk_row])
    {
      v6 = [v4 tk_section] == v7 + showsIgnoreMute + showsVibrations + showsToneStore + showsDefault + v12;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

- (BOOL)_isMediaGroupAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(TKTonePickerController *)self _showsMedia];
  v6 = 0;
  if (v4 && v5)
  {
    v7 = self->_showsVibrations + self->_showsIgnoreMute + self->_showsToneStore;
    if (![(TKTonePickerController *)self _isMediaAtTop])
    {
      v7 += [(NSMutableArray *)self->_toneGroupLists count]+ self->_showsDefault;
    }

    v6 = [v4 tk_section] == v7;
  }

  return v6;
}

- (BOOL)_isDividerAtIndexPath:(id)a3
{
  v3 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:a3];
  v4 = [v3 isEqualToString:&stru_282E32280];

  return v4;
}

- (id)_indexPathForToneWithIdentifier:(id)a3
{
  v4 = a3;
  if (![(NSMutableArray *)self->_toneGroupLists count])
  {
    goto LABEL_24;
  }

  v5 = 0;
  v6 = @"<classic_alert_tone_identifier>";
  v7 = @"<classic_ringtone_identifier>";
  v8 = 0x277D71000uLL;
  while (1)
  {
    v9 = [(NSMutableArray *)self->_toneGroupLists objectAtIndex:v5];
    v10 = [v9 indexOfObject:v4];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v10;
LABEL_15:
      showsIgnoreMute = self->_showsIgnoreMute;
      showsVibrations = self->_showsVibrations;
      showsToneStore = self->_showsToneStore;
      if ([(TKTonePickerController *)self _showsMedia])
      {
        v33 = showsIgnoreMute + [(TKTonePickerController *)self _isMediaAtTop];
        v34 = showsVibrations + showsToneStore + v5;
      }

      else
      {
        v33 = showsIgnoreMute + showsVibrations;
        v34 = showsToneStore + v5;
      }

      v40 = MEMORY[0x277CCAA70];
      v41 = v33 + v34 + self->_showsDefault;
      v42 = v29;
      goto LABEL_23;
    }

    if ([v9 indexOfObject:v6] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(TKTonePickerController *)self _classicAlertToneIdentifiers];
      v12 = [v11 indexOfObject:v4];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    if ([v9 indexOfObject:v7] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [(TKTonePickerController *)self _classicRingtoneIdentifiers];
      v14 = [v13 indexOfObject:v4];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    v15 = [*(v8 + 3944) sharedCapabilitiesManager];
    v16 = [v15 supportsReflectionRemixes];

    if (v16)
    {
      v17 = [v9 indexOfObject:@"<remix_ringtone_identifier>"];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = v17;
        v19 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
        v20 = [v19 indexOfObject:v4];
        v21 = v18;
        v22 = self;
        v23 = v4;
        v24 = v6;
        v25 = v7;
        v26 = v8;
        v27 = v20;

        v28 = v27 == 0x7FFFFFFFFFFFFFFFLL;
        v8 = v26;
        v7 = v25;
        v6 = v24;
        v4 = v23;
        self = v22;
        v29 = v21;
        if (!v28)
        {
          goto LABEL_15;
        }
      }
    }

    if (++v5 >= [(NSMutableArray *)self->_toneGroupLists count])
    {
      goto LABEL_24;
    }
  }

  v35 = self->_showsIgnoreMute;
  v36 = self->_showsVibrations;
  v37 = self->_showsToneStore;
  if ([(TKTonePickerController *)self _showsMedia])
  {
    v38 = v35 + [(TKTonePickerController *)self _isMediaAtTop];
    v39 = v36 + v37 + v5;
  }

  else
  {
    v38 = v35 + v36;
    v39 = v37 + v5;
  }

  v43 = v38 + v39;
  showsDefault = self->_showsDefault;
  v45 = MEMORY[0x277CCAA70];
  v42 = [v9 count] - 1;
  v41 = v43 + showsDefault;
  v40 = v45;
LABEL_23:
  v46 = [v40 tk_indexPathForRow:v42 inSection:v41];

  if (!v46)
  {
LABEL_24:
    if ([(TKTonePickerController *)self _showsMedia]&& (v47 = [(TKTonePickerController *)self _indexOfMediaItemWithIdentifier:v4], v47 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v48 = v47;
      v49 = MEMORY[0x277CCAA70];
      v50 = [(TKTonePickerController *)self _indexPathForMediaGroup];
      v46 = [v49 tk_indexPathForRow:v48 inSection:{objc_msgSend(v50, "tk_section")}];
    }

    else
    {
      v46 = 0;
    }
  }

  return v46;
}

- (id)_identifierOfToneAtIndexPath:(id)a3
{
  v4 = a3;
  if (!v4 || [(TKTonePickerController *)self _isDefaultGroupAtIndexPath:v4])
  {
LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

  if ([(TKTonePickerController *)self _isNoneGroupAtIndexPath:v4])
  {
    v5 = *MEMORY[0x277D72068];
  }

  else
  {
    v7 = [v4 tk_section];
    v8 = [v4 tk_row];
    if ([(TKTonePickerController *)self _showsMedia])
    {
      v7 -= [(TKTonePickerController *)self _isMediaAtTop];
    }

    v9 = v7 - (self->_showsVibrations + self->_showsIgnoreMute + self->_showsToneStore + self->_showsDefault);
    if (v9 < 0 || v9 >= [(NSMutableArray *)self->_toneGroupLists count])
    {
      goto LABEL_3;
    }

    v10 = [(NSMutableArray *)self->_toneGroupLists objectAtIndex:v9];
    v11 = v10;
    if (v8 < 0 || v8 >= [v10 count])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v11 objectAtIndex:v8];
      if (!self->_showsDefault)
      {
        v12 = [(TKTonePickerController *)self defaultToneIdentifier];
        v13 = [(TLToneManager *)self->_toneManager _aliasForToneIdentifier:v12];
        if ([v13 length] && objc_msgSend(v5, "isEqualToString:", v13))
        {

          v5 = 0;
        }
      }
    }
  }

LABEL_4:

  return v5;
}

- (id)_identifierAtIndexPath:(id)a3 isMediaItem:(BOOL *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 tk_row];
    if ([(TKTonePickerController *)self _isMediaGroupAtIndexPath:v7]&& v8 < [(TKTonePickerController *)self _mediaItemsCount])
    {
      v9 = [(TKTonePickerController *)self _identifierOfMediaItemAtIndex:v8];
      if (!a4)
      {
        goto LABEL_10;
      }

      v10 = 1;
    }

    else
    {
      v9 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:v7];
      if (!a4)
      {
        goto LABEL_10;
      }

      v10 = 0;
    }

    *a4 = v10;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (TKTonePickerItem)_topLevelSelectedTonePickerItem
{
  v3 = [(TKTonePickerController *)self _selectedToneIndexPath];
  v4 = v3;
  if (v3)
  {
    v5 = -[TKTonePickerController pickerItemForSection:](self, "pickerItemForSection:", [v3 tk_section]);
    v6 = [v5 childItemAtIndex:{objc_msgSend(v4, "tk_row")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TKTonePickerItem)selectedTonePickerItem
{
  v3 = [(TKTonePickerController *)self _topLevelSelectedTonePickerItem];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = [v3 itemKind];
  v6 = 0;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_14;
      }

      v7 = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
      goto LABEL_10;
    }

LABEL_8:
    v8 = v4;
    goto LABEL_13;
  }

  if (v5 != 2)
  {
    if (v5 != 4)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v7 = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
LABEL_10:
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_14;
  }

  v8 = [v4 childItemAtIndex:v7];
LABEL_13:
  v6 = v8;
LABEL_14:

  return v6;
}

- (NSString)selectedToneIdentifier
{
  v3 = [(TKTonePickerController *)self _selectedToneIndexPath];
  v4 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:v3];

  if ([v4 isEqualToString:@"<classic_alert_tone_identifier>"])
  {
    v5 = [(TKTonePickerController *)self _identifierOfSelectedClassicAlertTone];
LABEL_5:
    v6 = v4;
    v4 = v5;
LABEL_6:

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"<classic_ringtone_identifier>"])
  {
    v5 = [(TKTonePickerController *)self _identifierOfSelectedClassicRingtone];
    goto LABEL_5;
  }

  v6 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  if (![v6 supportsReflectionRemixes])
  {
    goto LABEL_6;
  }

  v8 = [v4 isEqualToString:@"<remix_ringtone_identifier>"];

  if (v8)
  {
    v5 = [(TKTonePickerController *)self _identifierOfSelectedRemixRingtone];
    goto LABEL_5;
  }

LABEL_7:

  return v4;
}

- (void)setSelectedToneIdentifier:(id)a3
{
  v5 = a3;
  v4 = v5;
  if (![v5 length])
  {
    v4 = v5;
    if (!self->_showsDefault)
    {
      v4 = [(TKTonePickerController *)self defaultToneIdentifier];
    }
  }

  self->_selectedToneWasExplicitlySetToDefaultTone = v4 != v5;
  [(TKTonePickerController *)self _setSelectedToneIdentifier:v4 currentlyReloadingTones:0];
}

- (void)_setSelectedToneIdentifier:(id)a3 currentlyReloadingTones:(BOOL)a4
{
  v34 = [(TLToneManager *)self->_toneManager _aliasForToneIdentifier:a3];
  if (![v34 length] || self->_targetDevice || (-[TLToneManager toneWithIdentifierIsValid:](self->_toneManager, "toneWithIdentifierIsValid:", v34) & 1) != 0)
  {
    v6 = v34;
  }

  else
  {

    v6 = 0;
  }

  v35 = v6;
  if ([v6 length])
  {
    v7 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:v35];
  }

  else
  {
    v7 = 0;
  }

  if (self->_showsNone && !-[TKTonePickerController isNoneAtTop](self, "isNoneAtTop") && [v35 isEqualToString:*MEMORY[0x277D72068]])
  {
    v8 = [(TKTonePickerController *)self _indexPathForNone];

    v7 = v8;
  }

  if (!v7)
  {
    if (self->_showsDefault)
    {
      v9 = [(TKTonePickerController *)self _indexPathForDefaultGroup];
    }

    else
    {
      if (!self->_showsNone)
      {
        v7 = 0;
        goto LABEL_39;
      }

      v9 = [(TKTonePickerController *)self _indexPathForNone];
    }

    v7 = v9;
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_39:
    v10 = 0;
    goto LABEL_43;
  }

LABEL_18:
  v10 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:v7];
  if (![v10 isEqualToString:@"<classic_alert_tone_identifier>"])
  {
    if ([v10 isEqualToString:@"<classic_ringtone_identifier>"])
    {
      v15 = [(TKTonePickerController *)self _classicRingtoneIdentifiers];
      v16 = [v15 indexOfObject:v35];

      v17 = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
      v14 = v16 != v17;
      if (v16 != v17)
      {
        [(TKTonePickerController *)self _setSelectedClassicRingtoneIndex:v16];
      }

      [(TKTonePickerController *)self _setSelectedClassicAlertToneIndex:0x7FFFFFFFFFFFFFFFLL];
      goto LABEL_26;
    }

    v19 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    if ([v19 supportsReflectionRemixes])
    {
      v20 = [v10 isEqualToString:@"<remix_ringtone_identifier>"];

      if (v20)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    v21 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    if ([v21 supportsReflectionRemixes])
    {
      v22 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
      v23 = [v22 containsObject:v35];

      if (v23)
      {
LABEL_35:
        v24 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
        v25 = [v24 indexOfObject:v35];

        if (v25 != [(TKTonePickerController *)self _selectedRemixRingtoneIndex])
        {
          [(TKTonePickerController *)self _setSelectedRemixRingtoneIndex:v25];
        }

        v18 = v35;

        v14 = 0;
        goto LABEL_27;
      }
    }

    else
    {
    }

    [(TKTonePickerController *)self _setSelectedClassicAlertToneIndex:0x7FFFFFFFFFFFFFFFLL];
    [(TKTonePickerController *)self _setSelectedClassicRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
    v26 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    v27 = [v26 supportsReflectionRemixes];

    if (v27)
    {
      [(TKTonePickerController *)self _setSelectedRemixRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
    }

LABEL_43:
    v14 = 0;
    goto LABEL_44;
  }

  v11 = [(TKTonePickerController *)self _classicAlertToneIdentifiers];
  v12 = [v11 indexOfObject:v35];

  v13 = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
  v14 = v12 != v13;
  if (v12 != v13)
  {
    [(TKTonePickerController *)self _setSelectedClassicAlertToneIndex:v12];
  }

  [(TKTonePickerController *)self _setSelectedClassicRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
LABEL_26:
  v18 = v35;

LABEL_27:
  v10 = v18;
LABEL_44:
  v28 = [(TKTonePickerController *)self _selectedToneIndexPath];
  v29 = [v28 isEqual:v7];

  if (v14 || !v29)
  {
    [(TKTonePickerController *)self _setSelectedToneIndexPath:v7];
    v30 = v35;
    v31 = v10;
    v32 = v31;
    if (!(v30 | v31))
    {
      goto LABEL_52;
    }

    if (!v30 || !v31)
    {

      goto LABEL_59;
    }

    if (v30 == v31)
    {
LABEL_52:
    }

    else
    {
      v33 = [v30 isEqualToString:v31];

      if ((v33 & 1) == 0)
      {
LABEL_59:
        [(TKTonePickerController *)self _didSelectToneWithIdentifier:v32];
        if (a4)
        {
          goto LABEL_55;
        }

LABEL_54:
        [(TKTonePickerController *)self _invalidatePickerItemCaches];
        [(TKTonePickerController *)self _didReloadTones];
        goto LABEL_55;
      }
    }

    if (a4)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_55:
}

- (id)_identifierOfSelectedClassicAlertTone
{
  v3 = *MEMORY[0x277D72068];
  v4 = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [(TKTonePickerController *)self _classicAlertToneIdentifiers];
    v7 = [v6 objectAtIndex:v5];

    v3 = v7;
  }

  return v3;
}

- (id)_identifierOfSelectedClassicRingtone
{
  v3 = *MEMORY[0x277D72068];
  v4 = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [(TKTonePickerController *)self _classicRingtoneIdentifiers];
    v7 = [v6 objectAtIndex:v5];

    v3 = v7;
  }

  return v3;
}

- (id)_identifierOfSelectedRemixRingtone
{
  v3 = *MEMORY[0x277D72068];
  v4 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v5 = [v4 supportsReflectionRemixes];

  if (v5)
  {
    v6 = [(TKTonePickerController *)self _selectedRemixRingtoneIndex];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      v8 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
      v9 = [v8 objectAtIndex:v7];

      v3 = v9;
    }
  }

  return v3;
}

- (id)_selectedIdentifier:(BOOL *)a3
{
  v5 = [(TKTonePickerController *)self _selectedToneIndexPath];
  v6 = [(TKTonePickerController *)self _identifierAtIndexPath:v5 isMediaItem:a3];

  return v6;
}

- (BOOL)didSelectTonePickerItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAA70] tk_indexPathForRow:objc_msgSend(v4 inSection:{"row"), objc_msgSend(v4, "section")}];
    [(TKTonePickerController *)self setShowsNothingSelected:0];
    if ([(TKTonePickerController *)self _isIgnoreMuteGroupAtIndexPath:v6])
    {
      v5 = 1;
      [(TKTonePickerController *)self setIgnoreMute:!self->_ignoreMute updateSource:0];
      v7 = 0;
      v8 = 0;
      v9 = 0;
      goto LABEL_54;
    }

    if ([(TKTonePickerController *)self _isVibrationGroupAtIndexPath:v6])
    {
      v10 = [(TKTonePickerController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v10 tonePickerControllerRequestsPresentingVibrationPicker:self];
      }

      goto LABEL_9;
    }

    if ([(TKTonePickerController *)self _isToneStoreGroupAtIndexPath:v6])
    {
      v11 = [v6 tk_row];
      if (v11 == 1)
      {
        [(TKTonePickerController *)self _redownloadAllTones];
      }

      else if (!v11)
      {
        [(TKTonePickerController *)self _goToStore];
      }

LABEL_38:
      v7 = 0;
      v8 = 0;
LABEL_39:
      v9 = 0;
      v5 = 1;
      goto LABEL_54;
    }

    if ([(TKTonePickerController *)self _isNoneGroupAtIndexPath:v6])
    {
      v12 = [(TKTonePickerController *)self _selectedToneIndexPath];
      v13 = [(TKTonePickerController *)self _isNoneGroupAtIndexPath:v12];

      v7 = *MEMORY[0x277D72068];
      [(TKTonePickerController *)self stopPlayingWithFadeOut:0];
      v9 = 0;
      if (!v13)
      {
LABEL_16:
        v14 = 0;
LABEL_17:
        v15 = [(TKTonePickerController *)self _selectedToneIndexPath];
        [(TKTonePickerController *)self _didUpdateCheckedStatus:0 ofPickerItemForRowAtIndexPath:v15];
        [(TKTonePickerController *)self _didUpdateDetailText:0 ofPickerItemForRowAtIndexPath:v15];
        [(TKTonePickerController *)self _didUpdateCheckedStatus:1 ofPickerItemForRowAtIndexPath:v6];
        [(TKTonePickerController *)self _setSelectedToneIndexPath:v6];
        v16 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
        v17 = [v16 supportsReflectionRemixes];

        if (v17)
        {
          v36 = v14;
          v18 = [(TKTonePickerController *)self _indexPathForReflectionRemixHeader];
          v19 = v7;
          if (!v19)
          {
            v19 = [(TKTonePickerController *)self defaultToneIdentifier];
          }

          v20 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
          v21 = [v20 containsObject:v19];

          if (v21)
          {
            -[TKTonePickerController _setSelectedRemixRingtoneIndex:](self, "_setSelectedRemixRingtoneIndex:", [v6 tk_row] + ~objc_msgSend(v18, "tk_row"));
            v22 = [(TKTonePickerController *)self _annotatedNameForToneIdentifier:v19];
            [(TKTonePickerController *)self _didUpdateDetailText:v22 ofPickerItemForRowAtIndexPath:v18];
          }

          else
          {
            [(TKTonePickerController *)self _didUpdateDetailText:0 ofPickerItemForRowAtIndexPath:v18];
            [(TKTonePickerController *)self _setSelectedRemixRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
          }

          v14 = v36;
        }

        [(TKTonePickerController *)self _resetSelectedClassicRingtoneIndex];
        [(TKTonePickerController *)self _resetSelectedClassicAlertToneIndex];
        [(TKTonePickerController *)self _updateDetailTextOfVibrationItem];
        if (v9)
        {
          [(TKTonePickerController *)self _didSelectMediaItemWithIdentifier:v9];
        }

        else
        {
          [(TKTonePickerController *)self _didSelectToneWithIdentifier:v7];
        }

        if (v14)
        {
          [(TKTonePickerController *)self _playToneWithIdentifier:v7];
        }
      }

LABEL_53:
      v5 = 1;
      v8 = v7;
      goto LABEL_54;
    }

    if ([(TKTonePickerController *)self _isMediaGroupAtIndexPath:v6])
    {
      v23 = [(TKTonePickerController *)self delegate];
      v24 = [v6 tk_row];
      if (v24 >= [(TKTonePickerController *)self _mediaItemsCount])
      {
        if (objc_opt_respondsToSelector())
        {
          [v23 tonePickerControllerRequestsPresentingMediaItemPicker:self];
        }

        goto LABEL_38;
      }

      v9 = [(TKTonePickerController *)self _identifierOfMediaItemAtIndex:v24];
      v25 = [(TKTonePickerController *)self _selectedToneIndexPath];
      v26 = [v6 isEqual:v25];

      if (objc_opt_respondsToSelector())
      {
        [v23 tonePickerController:self didSelectMediaItemAtIndex:v24 selectionDidChange:v26 ^ 1u];
      }

      v7 = 0;
      if ((v26 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_53;
    }

    if ([(TKTonePickerController *)self _isDividerAtIndexPath:v6])
    {
LABEL_9:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v5 = 0;
      goto LABEL_54;
    }

    v27 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    if ([v27 supportsReflectionRemixes])
    {
      v28 = [(TKTonePickerController *)self _isReflectionHeaderAtIndexPath:v6];

      if (v28)
      {
        v5 = 1;
        [(TKTonePickerController *)self setShowsReflectionRemixesInline:!self->_showsReflectionRemixesInline];
        v29 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
        v30 = [(TLAlert *)self->_playingAlert toneIdentifier];
        v31 = [v29 containsObject:v30];

        v7 = 0;
        if (self->_showsReflectionRemixesInline)
        {
          v8 = 0;
          v9 = 0;
          goto LABEL_54;
        }

        v8 = 0;
        v9 = 0;
        if (!v31)
        {
LABEL_54:

          goto LABEL_55;
        }

        v8 = [(TKTonePickerController *)self _identifierOfSelectedRemixRingtone];
        v7 = 0;
        goto LABEL_58;
      }
    }

    else
    {
    }

    v7 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:v6];
    if (([v7 isEqualToString:@"<classic_ringtone_identifier>"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"<classic_alert_tone_identifier>"))
    {
      [(TKTonePickerController *)self stopPlayingWithFadeOut:0];
      v32 = [(TKTonePickerController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v32 tonePickerController:self requestsPresentingToneClassicsPickerForItem:v4];
      }

      v9 = 0;
      goto LABEL_53;
    }

    v34 = [(TKTonePickerController *)self _selectedToneIndexPath];
    v35 = [v6 isEqual:v34];

    if ((v35 & 1) == 0)
    {
      v9 = 0;
      v14 = 1;
      goto LABEL_17;
    }

    v8 = v7;
LABEL_58:
    [(TKTonePickerController *)self _togglePlayForToneWithIdentifier:v8];
    goto LABEL_39;
  }

  v5 = [(TKTonePickerController *)self _didSelectToneClassicsPickerItem:v4];
LABEL_55:

  return v5;
}

- (BOOL)_didSelectToneClassicsPickerItem:(id)a3
{
  v4 = a3;
  v5 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:@"<classic_ringtone_identifier>"];
  v6 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:@"<classic_alert_tone_identifier>"];
  v7 = [v4 section];
  v8 = [v4 classicToneIndex];
  if (v5 && v7 == [v5 tk_section])
  {
    v9 = v5;
    v10 = [(TKTonePickerController *)self _classicRingtoneIdentifiers];
    v11 = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
  }

  else
  {
    if (!v6 || v7 != [v6 tk_section])
    {
      v10 = 0;
      v9 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_9;
    }

    v9 = v6;
    v10 = [(TKTonePickerController *)self _classicAlertToneIdentifiers];
    v11 = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
  }

  v12 = v11;
LABEL_9:
  v18 = v10;
  v13 = [v10 objectAtIndex:v8];
  v14 = [(TKTonePickerController *)self _selectedToneIndexPath];
  if ([v9 isEqual:v14] && v8 == v12)
  {
    [(TKTonePickerController *)self _togglePlayForToneWithIdentifier:v13];
  }

  else
  {
    v15 = [(TKTonePickerController *)self _nameForToneIdentifier:v13];
    [(TKTonePickerController *)self _didUpdateDetailText:v15 ofPickerItemForRowAtIndexPath:v9];

    if (([v9 isEqual:v14] & 1) == 0)
    {
      [(TKTonePickerController *)self _didUpdateCheckedStatus:0 ofPickerItemForRowAtIndexPath:v14];
      [(TKTonePickerController *)self _didUpdateDetailText:0 ofPickerItemForRowAtIndexPath:v14];
      [(TKTonePickerController *)self _didUpdateCheckedStatus:1 ofPickerItemForRowAtIndexPath:v9];
      [(TKTonePickerController *)self _setSelectedToneIndexPath:v9];
    }

    [(TKTonePickerController *)self _resetSelectedClassicRingtoneIndex];
    [(TKTonePickerController *)self _resetSelectedClassicAlertToneIndex];
    if (v5 && v7 == [v5 tk_section])
    {
      [(TKTonePickerController *)self _setSelectedClassicRingtoneIndex:v8];
      if ([(TKTonePickerController *)self _selectedRemixRingtoneIndex]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = [(TKTonePickerController *)self _indexPathForReflectionRemixHeader];
        [(TKTonePickerController *)self _didUpdateDetailText:0 ofPickerItemForRowAtIndexPath:v16];
        [(TKTonePickerController *)self _setSelectedRemixRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
      }
    }

    else if (v6 && v7 == [v6 tk_section])
    {
      [(TKTonePickerController *)self _setSelectedClassicAlertToneIndex:v8];
    }

    [(TKTonePickerController *)self _didUpdateCheckedStatus:1 ofToneClassicsPickerItem:v4];
    [(TKTonePickerController *)self _updateDetailTextOfVibrationItem];
    [(TKTonePickerController *)self _didSelectToneWithIdentifier:v13];
    [(TKTonePickerController *)self _playToneWithIdentifier:v13];
  }

  return 1;
}

- (BOOL)canDeleteTonePickerItem:(id)a3
{
  v4 = MEMORY[0x277CCAA70];
  v5 = a3;
  v6 = [v5 row];
  v7 = [v5 section];

  v8 = [v4 tk_indexPathForRow:v6 inSection:v7];
  if ([(TKTonePickerController *)self _isIgnoreMuteGroupAtIndexPath:v8]|| [(TKTonePickerController *)self _isVibrationGroupAtIndexPath:v8]|| [(TKTonePickerController *)self _isToneStoreGroupAtIndexPath:v8]|| [(TKTonePickerController *)self _isNoneGroupAtIndexPath:v8]|| [(TKTonePickerController *)self _isMediaGroupAtIndexPath:v8]|| [(TKTonePickerController *)self _isDividerAtIndexPath:v8])
  {
    v9 = 0;
  }

  else
  {
    v11 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:v8];
    if (v11)
    {
      v9 = [(NSMutableSet *)self->_identifiersOfRemovableTones containsObject:v11];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)deleteTonePickerItem:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(TKTonePickerController *)self canDeleteTonePickerItem:v4])
  {
    v5 = TLLogGeneral();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

    if (v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
      v8 = TLLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 lastPathComponent];
        v10 = [MEMORY[0x277CCACC8] callStackSymbols];
        *buf = 136381443;
        v24 = "[TKTonePickerController deleteTonePickerItem:]";
        v25 = 2113;
        v26 = v9;
        v27 = 2049;
        v28 = 1625;
        v29 = 2113;
        v30 = v10;
        _os_log_impl(&dword_21C599000, v8, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v7 = TLLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
      }
    }

    v11 = TLLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(TKTonePickerController *)v4 deleteTonePickerItem:v11];
    }
  }

  v12 = [v4 section];
  v13 = [v4 row];
  v14 = [MEMORY[0x277CCAA70] tk_indexPathForRow:v13 inSection:v12];
  v15 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:v14];
  v16 = v15;
  if (v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__TKTonePickerController_deleteTonePickerItem___block_invoke;
    v18[3] = &unk_2783164B0;
    v18[4] = self;
    v21 = v12;
    v22 = v13;
    v19 = v15;
    v20 = v4;
    [(TKTonePickerController *)self _performBatchUpdates:v18 completion:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __47__TKTonePickerController_deleteTonePickerItem___block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) numberOfSections];
  v3 = [*(a1 + 32) pickerItemForSection:*(a1 + 56)];
  v55 = [v3 text];
  v56 = [*(*(a1 + 32) + 96) copy];
  v4 = [*(a1 + 32) _indexPathForFirstToneGroup];
  v5 = [v4 tk_section];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v5 < v2)
  {
    v7 = v5;
    do
    {
      v8 = [*(a1 + 32) pickerItemForSection:v7];
      [v6 addObject:v8];

      ++v7;
    }

    while (v2 != v7);
  }

  v9 = [v3 numberOfChildren];
  if (*(a1 + 64) + 1 >= v9)
  {
    v57 = 0;
  }

  else
  {
    v57 = [v3 childItemAtIndex:?];
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 56);
  *(v10 + 56) = 1;
  [*(*(a1 + 32) + 8) _removeToneWithIdentifier:*(a1 + 40)];
  [*(a1 + 32) _reloadTonesForExternalChange:0 shouldSkipDelegateFullReload:1];
  *(*(a1 + 32) + 56) = v11;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [*(a1 + 32) numberOfSections];
  v15 = [*(*(a1 + 32) + 96) mutableCopy];
  if (v14 + 1 == v2)
  {
    [v13 addObject:v3];
    v16 = v55;
    [v15 insertObject:v55 atIndex:*(a1 + 56) - v5];
    v53 = v3;
    v17 = v56;
  }

  else
  {
    if (v14 != v2)
    {
      v18 = TLLogGeneral();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

      if (v19)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
        v21 = TLLogGeneral();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v54 = [v20 lastPathComponent];
          [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 136381443;
          v63 = "[TKTonePickerController deleteTonePickerItem:]_block_invoke";
          v64 = 2113;
          v65 = v54;
          v66 = 2049;
          v67 = 1663;
          v69 = v68 = 2113;
          v22 = v69;
          _os_log_impl(&dword_21C599000, v21, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
        }
      }

      else
      {
        v20 = TLLogGeneral();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
        }
      }

      v23 = TLLogGeneral();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __47__TKTonePickerController_deleteTonePickerItem___block_invoke_cold_2();
      }
    }

    v24 = [*(a1 + 32) pickerItemForSection:*(a1 + 56)];

    v53 = v24;
    v25 = [v24 numberOfChildren];
    [v12 addObject:*(a1 + 48)];
    if (v25 + 2 == v9)
    {
      v16 = v55;
      v17 = v56;
      if (!v57)
      {
        v26 = TLLogGeneral();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);

        if (v27)
        {
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
          v29 = TLLogGeneral();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v28 lastPathComponent];
            v31 = [MEMORY[0x277CCACC8] callStackSymbols];
            *buf = 136381443;
            v63 = "[TKTonePickerController deleteTonePickerItem:]_block_invoke";
            v64 = 2113;
            v65 = v30;
            v66 = 2049;
            v67 = 1669;
            v68 = 2113;
            v69 = v31;
            _os_log_impl(&dword_21C599000, v29, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);

            v17 = v56;
          }
        }

        else
        {
          v28 = TLLogGeneral();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
          }
        }

        v39 = TLLogGeneral();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          __47__TKTonePickerController_deleteTonePickerItem___block_invoke_cold_6();
        }
      }

      [v12 addObject:?];
    }

    else
    {
      v16 = v55;
      v17 = v56;
      if (v25 + 1 != v9)
      {
        v32 = TLLogGeneral();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);

        if (v33)
        {
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
          v35 = TLLogGeneral();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v34 lastPathComponent];
            v37 = [MEMORY[0x277CCACC8] callStackSymbols];
            *buf = 136381443;
            v63 = "[TKTonePickerController deleteTonePickerItem:]_block_invoke";
            v64 = 2113;
            v65 = v36;
            v66 = 2049;
            v67 = 1672;
            v68 = 2113;
            v69 = v37;
            _os_log_impl(&dword_21C599000, v35, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);

            v17 = v56;
          }
        }

        else
        {
          v34 = TLLogGeneral();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
          }
        }

        v38 = TLLogGeneral();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          __47__TKTonePickerController_deleteTonePickerItem___block_invoke_cold_4();
        }
      }
    }
  }

  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = [v17 count];
  if (v41 != [v15 count])
  {
    v42 = TLLogGeneral();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);

    if (v43)
    {
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
      v45 = TLLogGeneral();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v44 lastPathComponent];
        v47 = [MEMORY[0x277CCACC8] callStackSymbols];
        *buf = 136381443;
        v63 = "[TKTonePickerController deleteTonePickerItem:]_block_invoke";
        v64 = 2113;
        v65 = v46;
        v66 = 2049;
        v67 = 1677;
        v68 = 2113;
        v69 = v47;
        _os_log_impl(&dword_21C599000, v45, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);

        v16 = v55;
      }

      v17 = v56;
    }

    else
    {
      v44 = TLLogGeneral();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
      }
    }

    v48 = TLLogGeneral();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      __47__TKTonePickerController_deleteTonePickerItem___block_invoke_cold_8();
    }
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __47__TKTonePickerController_deleteTonePickerItem___block_invoke_99;
  v58[3] = &unk_278316488;
  v59 = v15;
  v60 = v6;
  v61 = v40;
  v49 = v40;
  v50 = v6;
  v51 = v15;
  [v17 enumerateObjectsUsingBlock:v58];
  [*(a1 + 32) _applyBatchUpdatesWithDeletedPickerRowItems:v12 deletedTonePickerSectionItems:v13 insertedPickerRowItems:MEMORY[0x277CBEBF8] insertedTonePickerSectionItems:MEMORY[0x277CBEBF8] tonePickerSectionItemsWithUpdatedHeaderText:v49 tonePickerSectionItemsWithUpdatedFooterText:MEMORY[0x277CBEBF8]];

  v52 = *MEMORY[0x277D85DE8];
}

void __47__TKTonePickerController_deleteTonePickerItem___block_invoke_99(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v8 = [v5 objectAtIndex:a3];
  LOBYTE(v5) = [v6 isEqualToString:?];

  if ((v5 & 1) == 0)
  {
    v7 = [*(a1 + 40) objectAtIndex:a3];
    [v7 _setText:v8];
    [*(a1 + 48) addObject:v7];
  }
}

- (BOOL)_showsNoneInSeparateToneGroup
{
  if (self->_showsNone)
  {
    return ![(TKTonePickerController *)self isNoneAtTop:v2];
  }

  else
  {
    return 0;
  }
}

- (void)_reloadStateForBasicBehavior
{
  alertType = self->_alertType;
  if (alertType > 13)
  {
    if (alertType == 14)
    {
      v5 = 0;
      v9 = 1;
      v7 = 28;
      v6 = 30;
    }

    else
    {
      if (alertType != 28)
      {
        goto LABEL_14;
      }

      v5 = 0;
      v9 = 1;
      v7 = 28;
      v6 = 31;
    }

LABEL_22:
    v8 = 1;
    goto LABEL_23;
  }

  if (alertType == 1)
  {
    if ([(NSString *)self->_topic isEqualToString:*MEMORY[0x277D71FD8]])
    {
      v9 = 0;
      v5 = 0;
      v8 = 1;
      v6 = 31;
      v7 = 31;
      goto LABEL_23;
    }

    v10 = [(NSString *)self->_topic isEqualToString:*MEMORY[0x277D71FE0]];
    v5 = 0;
    v6 = 31;
    if (v10)
    {
      v7 = 31;
    }

    else
    {
      v7 = 28;
    }

    v9 = !v10;
    goto LABEL_22;
  }

  if (alertType != 13)
  {
LABEL_14:
    v9 = 0;
    v5 = 0;
    v8 = 1;
    v7 = 27;
    v6 = 31;
    goto LABEL_23;
  }

  v4 = [(NSString *)self->_topic isEqualToString:*MEMORY[0x277D71FA8]];
  v5 = v4;
  if (v4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 30;
  }

  if (v4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 28;
  }

  v8 = !v4;
  v9 = 1;
LABEL_23:
  if (_os_feature_enabled_impl())
  {
    v11 = v7;
  }

  else
  {
    v11 = v6;
  }

  self->_toneTypes = v11;
  [(TKTonePickerController *)self _setBehavesAsRingtonePicker:v9];
  if (!self->_showsNoneWasExplicitlySet)
  {
    if (!self->_hasLoadedTonesOnce)
    {
      self->_showsNone = v8;
      if (!v5)
      {
        return;
      }

      goto LABEL_30;
    }

    [(TKTonePickerController *)self setShowsNone:v8];
    self->_showsNoneWasExplicitlySet = 0;
  }

  if (!v5)
  {
    return;
  }

LABEL_30:
  v12 = [(TLToneManager *)self->_toneManager currentToneIdentifierForAlertType:self->_alertType topic:self->_topic];
  [(TKTonePickerController *)self setSelectedToneIdentifier:v12];
}

- (void)_reloadTonesForExternalChange:(BOOL)a3 shouldSkipDelegateFullReload:(BOOL)a4
{
  v5 = a3;
  v119 = *MEMORY[0x277D85DE8];
  v114 = 0;
  if (!self->_shouldFreezeContentsOriginatingFromToneManager)
  {
    [(TKTonePickerController *)self _reloadMediaItems];
  }

  [(TKTonePickerController *)self _invalidatePickerItemCaches];
  v7 = [(TKTonePickerController *)self _selectedToneIndexPath];
  v8 = [(TKTonePickerController *)self _isDefaultGroupAtIndexPath:v7];

  HIDWORD(v88) = v8;
  if (v8)
  {
    LODWORD(v88) = 0;
    v92 = 0;
    v96 = 0;
    goto LABEL_14;
  }

  v9 = [(TKTonePickerController *)self _selectedToneIndexPath];
  v10 = [(TKTonePickerController *)self _isNoneGroupAtIndexPath:v9];

  if (v10)
  {
    v92 = 0;
    v96 = 0;
    LODWORD(v88) = 1;
    goto LABEL_14;
  }

  v11 = [(TKTonePickerController *)self _selectedToneIndexPath];
  v12 = [(TKTonePickerController *)self _identifierAtIndexPath:v11 isMediaItem:&v114];

  if (v114 != 1)
  {
    if ([v12 length])
    {
      goto LABEL_9;
    }

LABEL_11:
    if (self->_showsDefault)
    {
      v96 = v12;
      LODWORD(v88) = 0;
      v92 = 0;
    }

    else
    {
      v13 = [(TKTonePickerController *)self defaultToneIdentifier];

      LODWORD(v88) = 0;
      v92 = 0;
      v96 = v13;
    }

    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_9:
  v96 = v12;
  LODWORD(v88) = 0;
  v92 = 1;
LABEL_14:
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v98 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  toneGroupLists = self->_toneGroupLists;
  self->_toneGroupLists = v16;

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  toneGroupNames = self->_toneGroupNames;
  self->_toneGroupNames = v18;

  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  toneGroupBucketIdentifiers = self->_toneGroupBucketIdentifiers;
  self->_toneGroupBucketIdentifiers = v20;

  v105 = [(TKTonePickerController *)self _behavesAsRingtonePicker];
  v101 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v93 = v5;
  v94 = a4;
  v95 = v14;
  v99 = v15;
  v100 = v24;
  if (self->_shouldFreezeContentsOriginatingFromToneManager)
  {
    v25 = self->_installedTones;
  }

  else
  {
    v25 = [(TLToneManager *)self->_toneManager _installedTones];
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v25;
  v26 = v25;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v110 objects:v118 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v111;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v111 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v110 + 1) + 8 * i);
        v32 = [v31 identifier];
        if (([v31 isPrivateTone] & 1) == 0)
        {
          if (([(TLToneManager *)self->_toneManager toneWithIdentifierIsValid:v32]& 1) != 0)
          {
            if (v105 || ([v31 duration], v37 <= 30.0) && (objc_msgSend(v31, "isProtectedContent") & 1) == 0)
            {
              if ([v31 isRingtone])
              {
                v33 = [v31 isPurchased];
                toneTypes = self->_toneTypes;
                if (v33)
                {
                  if ((toneTypes & 0x10) == 0)
                  {
                    goto LABEL_42;
                  }

                  v35 = v22;
                }

                else
                {
                  if ((toneTypes & 8) == 0)
                  {
                    goto LABEL_42;
                  }

                  v35 = v101;
                }
              }

              else
              {
                if ((self->_toneTypes & 2) == 0)
                {
                  goto LABEL_42;
                }

                if ([v31 isPurchased])
                {
                  v35 = v23;
                }

                else
                {
                  v35 = v102;
                }
              }

              [v35 addObject:v32];
            }
          }

          else
          {
            v36 = TLLogToneManagement();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v117 = v31;
              _os_log_impl(&dword_21C599000, v36, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ in tone picker because this tone is not valid.", buf, 0xCu);
            }
          }
        }

LABEL_42:
      }

      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v110 objects:v118 count:16];
    }

    while (v28);
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSMutableDictionary *)self->_activeToneStoreDownloadsByIdentifier count])
  {
    v39 = [(NSMutableDictionary *)self->_activeToneStoreDownloadsByIdentifier allValues];
    [v38 addObjectsFromArray:v39];
  }

  if ([(NSMutableDictionary *)self->_finishedToneStoreDownloadsByIdentifier count])
  {
    v40 = [(NSMutableDictionary *)self->_finishedToneStoreDownloadsByIdentifier allValues];
    [v38 addObjectsFromArray:v40];
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v41 = v38;
  v42 = [v41 countByEnumeratingWithState:&v106 objects:v115 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v107;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v107 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v106 + 1) + 8 * j);
        v47 = [v46 toneIdentifier];
        if (!v47)
        {
          v47 = [v46 identifier];
        }

        v48 = [v46 isRingtone];
        v49 = self->_toneTypes;
        if (!v48)
        {
          v50 = v23;
          if ((v49 & 2) == 0)
          {
            goto LABEL_60;
          }

LABEL_59:
          [v50 addObject:v47];
          goto LABEL_60;
        }

        v50 = v22;
        if ((v49 & 0x10) != 0)
        {
          goto LABEL_59;
        }

LABEL_60:
      }

      v43 = [v41 countByEnumeratingWithState:&v106 objects:v115 count:16];
    }

    while (v43);
  }

  v51 = self->_toneTypes;
  v52 = v95;
  if ((v51 & 4) != 0)
  {
    v53 = [(TKTonePickerController *)self _loadRingtonesFromPlist];
    v54 = [v53 objectForKey:@"modern"];
    v55 = [v54 mutableCopy];

    v56 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    v57 = [v56 supportsReflectionRemixes];

    if (v57)
    {
      v58 = [v53 objectForKey:@"remix"];
      [(TKTonePickerController *)self _setRemixRingtoneIdentifiers:v58];
      v59 = [v58 firstObject];
      if (v59)
      {
        v60 = [v55 indexOfObject:v59];
        if (v60 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v61 = v60;
          [v55 replaceObjectAtIndex:v60 withObject:@"<remix_ringtone_identifier>"];
          if (self->_showsReflectionRemixesInline)
          {
            v103 = [v58 count];
            v62 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v61 + 1, v103}];
            [v55 insertObjects:v58 atIndexes:v62];
          }
        }
      }

      v52 = v95;
    }

    [v100 addObjectsFromArray:v55];
    v63 = [v53 objectForKey:@"classic"];
    [(TKTonePickerController *)self _setClassicRingtoneIdentifiers:v63];
    if (v63)
    {
      [v100 addObject:@"<classic_ringtone_identifier>"];
    }

    v51 = self->_toneTypes;
  }

  if (v51)
  {
    v64 = [(TKTonePickerController *)self _loadAlertTonesFromPlist];
    v65 = [v64 objectForKey:@"modern"];
    [v97 addObjectsFromArray:v65];
    v66 = [v64 objectForKey:@"classic"];
    [(TKTonePickerController *)self _setClassicAlertToneIdentifiers:v66];
    if (v66)
    {
      [v97 addObject:@"<classic_alert_tone_identifier>"];
    }

    v52 = v95;
  }

  [(TKTonePickerController *)self _sortToneIdentifiersArray:v22];
  [(TKTonePickerController *)self _sortToneIdentifiersArray:v101];
  [(TKTonePickerController *)self _sortToneIdentifiersArray:v23];
  [(TKTonePickerController *)self _sortToneIdentifiersArray:v102];
  v67 = v98;
  if ([v22 count])
  {
    [v99 addObjectsFromArray:v22];
    [v98 addObjectsFromArray:v22];
  }

  if ([v101 count])
  {
    [v99 addObjectsFromArray:v101];
    [v98 addObjectsFromArray:v101];
  }

  if ([v100 count])
  {
    if ([v99 count])
    {
      [v99 addObject:&stru_282E32280];
    }

    [v99 addObjectsFromArray:v100];
  }

  if ([v23 count])
  {
    [v52 addObjectsFromArray:v23];
    [v98 addObjectsFromArray:v23];
  }

  if ([v102 count])
  {
    [v52 addObjectsFromArray:v102];
    [v98 addObjectsFromArray:v102];
  }

  if ([v97 count])
  {
    if ([v52 count])
    {
      [v52 addObject:&stru_282E32280];
    }

    [v52 addObjectsFromArray:v97];
  }

  v68 = [(TKTonePickerController *)self _showsMedia];
  v69 = [v99 count];
  v70 = [v52 count];
  if (v70)
  {
    v71 = v69 == 0;
  }

  else
  {
    v71 = 1;
  }

  if (!v71 || v68)
  {
    v104 = TLLocalizedString();

    v72 = TLLocalizedString();
  }

  else
  {
    v72 = &stru_282E32280;
    v104 = &stru_282E32280;
  }

  if (v105)
  {
    if (v69)
    {
      [(NSMutableArray *)self->_toneGroupLists addObject:v99];
      [(NSMutableArray *)self->_toneGroupNames addObject:v104];
      [(NSMutableArray *)self->_toneGroupBucketIdentifiers addObject:@"ringtones"];
    }

    if (v70)
    {
      v73 = @"alert tones";
      v74 = v52;
      v75 = v72;
LABEL_109:
      [(NSMutableArray *)self->_toneGroupLists addObject:v74];
      [(NSMutableArray *)self->_toneGroupNames addObject:v75];
      [(NSMutableArray *)self->_toneGroupBucketIdentifiers addObject:v73];
      v67 = v98;
    }
  }

  else
  {
    if (v70)
    {
      [(NSMutableArray *)self->_toneGroupLists addObject:v52];
      [(NSMutableArray *)self->_toneGroupNames addObject:v72];
      [(NSMutableArray *)self->_toneGroupBucketIdentifiers addObject:@"alert tones"];
    }

    if (v69)
    {
      v73 = @"ringtones";
      v74 = v99;
      v75 = v104;
      goto LABEL_109;
    }
  }

  if (self->_overrideFirstToneSectionTitle)
  {
    [(NSMutableArray *)self->_toneGroupNames replaceObjectAtIndex:0 withObject:?];
  }

  if (self->_showsNone && [(TKTonePickerController *)self isNoneAtTop])
  {
    if ([(TKTonePickerController *)self _showsNoneInSeparateToneGroup])
    {
      v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NSMutableArray *)v76 addObject:*MEMORY[0x277D72068]];
      [(NSMutableArray *)self->_toneGroupLists insertObject:v76 atIndex:0];
      [(NSMutableArray *)self->_toneGroupNames insertObject:&stru_282E32280 atIndex:0];
      v77 = self->_toneGroupBucketIdentifiers;
      v78 = @"none";
    }

    else
    {
      v76 = [(NSMutableArray *)self->_toneGroupLists firstObject];
      [(NSMutableArray *)v76 insertObject:&stru_282E32280 atIndex:0];
      v78 = *MEMORY[0x277D72068];
      v77 = v76;
    }

    [(NSMutableArray *)v77 insertObject:v78 atIndex:0];
  }

  objc_storeStrong(&self->_installedTones, obj);
  objc_storeStrong(&self->_identifiersOfRemovableTones, v67);
  if (!v92)
  {
    if (v90)
    {
      v79 = [(TKTonePickerController *)self _indexPathForDefaultGroup];
    }

    else
    {
      if (!v89)
      {
        v86 = [(TKTonePickerController *)self defaultToneIdentifier];
        v80 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:v86];

        goto LABEL_127;
      }

      v79 = [(TKTonePickerController *)self _indexPathForNone];
    }

LABEL_126:
    v80 = v79;
LABEL_127:
    v81 = 0;
    goto LABEL_128;
  }

  v79 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:v96];
  if (v79)
  {
    goto LABEL_126;
  }

  if (self->_showsDefault)
  {
    v80 = [(TKTonePickerController *)self _indexPathForDefaultGroup];
  }

  else
  {
    v87 = [(TKTonePickerController *)self defaultToneIdentifier];
    v80 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:v87];
  }

  v81 = 1;
LABEL_128:
  [(TKTonePickerController *)self _setSelectedToneIndexPath:v80];
  if (v93)
  {
    v82 = [(TLToneManager *)self->_toneManager currentToneIdentifierForAlertType:[(TKTonePickerController *)self alertType]];
    [(TKTonePickerController *)self _setSelectedToneIdentifier:v82 currentlyReloadingTones:1];
    if (!v96 || ([v82 isEqualToString:v96] & 1) == 0)
    {
      v81 = 1;
    }
  }

  self->_hasLoadedTonesOnce = 1;
  if (!v94)
  {
    [(TKTonePickerController *)self _didReloadTones];
  }

  if (v81)
  {
    v83 = [(TKTonePickerController *)self _selectedToneIndexPath];
    v84 = [(TKTonePickerController *)self _identifierAtIndexPath:v83 isMediaItem:&v114];

    if (v114 == 1)
    {
      [(TKTonePickerController *)self _didSelectMediaItemWithIdentifier:v84];
    }

    else
    {
      [(TKTonePickerController *)self _didSelectToneWithIdentifier:v84];
    }
  }

  v85 = *MEMORY[0x277D85DE8];
}

- (id)_platformSpecificAdjustedPlistName:(id)a3
{
  v4 = a3;
  targetDevice = self->_targetDevice;
  v6 = v4;
  v7 = v6;
  v8 = v6;
  if (targetDevice == 1)
  {
    v8 = [v6 stringByAppendingString:@"-watchOS"];
  }

  return v8;
}

- (NSString)_ringtonesPlistName
{
  if (self->_alertType == 13 && [(NSString *)self->_topic isEqualToString:*MEMORY[0x277D71FA8]])
  {
    v3 = @"TKAlarmWakeUpRingtones";
  }

  else
  {
    v3 = [(TKTonePickerController *)self _platformSpecificAdjustedPlistName:@"TKRingtones"];
  }

  return v3;
}

- (id)_loadTonesFromPlistNamed:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (_os_feature_enabled_impl())
  {
    if (([v4 isEqualToString:@"TKRingtones"] & 1) != 0 || (v5 = v4, objc_msgSend(v4, "isEqualToString:", @"TKAlertTones")))
    {
      v5 = [v4 stringByAppendingString:@"-EncoreInfinitum"];
    }
  }

  v6 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v7 = [v6 supportsReflectionRemixes];

  if (v7 && [v4 isEqualToString:@"TKRingtones"])
  {
    v8 = [v4 stringByAppendingString:@"-EncoreRemix"];

    v5 = v8;
  }

  v9 = TLLogToneManagement();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v48 = self;
    v49 = 2114;
    v50 = v5;
    _os_log_impl(&dword_21C599000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Loading tones from plist named: %{public}@.", buf, 0x16u);
  }

  v10 = MEMORY[0x277CBEAC0];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 pathForResource:v5 ofType:@"plist"];
  v13 = [v10 dictionaryWithContentsOfFile:v12];

  v14 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  LODWORD(v12) = [v14 supportsReflectionRemixes];

  if (v12)
  {
    v15 = [v13 objectForKey:@"remix"];
    v16 = [v15 mutableCopy];

    v46 = [v16 firstObject];
  }

  else
  {
    v46 = 0;
    v16 = 0;
  }

  v17 = [v13 objectForKey:@"modern"];
  v18 = [v17 mutableCopy];

  v19 = [v13 objectForKey:@"classic"];
  v20 = [v19 mutableCopy];

  v21 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  if ([v21 wantsModernDefaultRingtone])
  {
    v22 = [v4 isEqualToString:@"TKRingtones"];

    if (v22)
    {
      if (_os_feature_enabled_impl())
      {
        v23 = v20;
      }

      else
      {
        v23 = v18;
      }

      [v23 addObject:@"system:Opening"];
    }
  }

  else
  {
  }

  v24 = [v13 objectForKey:{@"sort", v5}];
  v25 = v24;
  if (v24 && [v24 BOOLValue])
  {
    v26 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    v27 = [v26 supportsReflectionRemixes];

    if (v27)
    {
      [(TKTonePickerController *)self _sortToneIdentifiersArray:v16];
    }

    [(TKTonePickerController *)self _sortToneIdentifiersArray:v18];
    [(TKTonePickerController *)self _sortToneIdentifiersArray:v20];
  }

  toneManager = self->_toneManager;
  v29 = [(TKTonePickerController *)self defaultToneIdentifier];
  v30 = [(TLToneManager *)toneManager _aliasForToneIdentifier:v29];

  v31 = [v18 indexOfObject:v30];
  if (self->_alertType == 17 && v31 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v20)
    {
      v32 = [v20 indexOfObject:@"texttone:Tri-tone"];
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v20 removeObjectAtIndex:v32];
        [v18 insertObject:@"texttone:Tri-tone" atIndex:0];
      }
    }
  }

  v33 = [v18 indexOfObject:v30];
  if (v33 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v18 removeObjectAtIndex:v33];
    v35 = v18;
    goto LABEL_35;
  }

  if (v20)
  {
    v34 = [v20 indexOfObject:v30];
    if (v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v20 removeObjectAtIndex:v34];
      v35 = v20;
LABEL_35:
      [v35 insertObject:v30 atIndex:0];
    }
  }

  v36 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v37 = [v36 supportsReflectionRemixes];

  if (v37)
  {
    if (v46)
    {
      v38 = [v16 indexOfObject:v46];
      if (v38 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v16 removeObjectAtIndex:v38];
        [v16 insertObject:v46 atIndex:0];
      }
    }
  }

  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = v39;
  if (v18)
  {
    [v39 setObject:v18 forKey:@"modern"];
  }

  if (v20)
  {
    [v40 setObject:v20 forKey:@"classic"];
  }

  v41 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v42 = [v41 supportsReflectionRemixes];

  if (v42 && v16)
  {
    [v40 setObject:v16 forKey:@"remix"];
  }

  v43 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)_loadAlertTonesFromPlist
{
  v3 = [(TKTonePickerController *)self _alertTonesPlistName];
  v4 = [(TKTonePickerController *)self _loadTonesFromPlistNamed:v3];

  return v4;
}

- (id)_loadRingtonesFromPlist
{
  v3 = [(TKTonePickerController *)self _ringtonesPlistName];
  v4 = [(TKTonePickerController *)self _loadTonesFromPlistNamed:v3];

  return v4;
}

- (void)_sortToneIdentifiersArray:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__TKTonePickerController__sortToneIdentifiersArray___block_invoke;
  v3[3] = &unk_2783164D8;
  v3[4] = self;
  [a3 sortUsingComparator:v3];
}

uint64_t __52__TKTonePickerController__sortToneIdentifiersArray___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 _nameForToneIdentifier:a2];
  v8 = [*(a1 + 32) _nameForToneIdentifier:v6];

  v9 = [v7 localizedCaseInsensitiveCompare:v8];
  return v9;
}

- (void)_setToneManager:(id)a3
{
  v5 = a3;
  p_toneManager = &self->_toneManager;
  if (self->_toneManager != v5)
  {
    v10 = v5;
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = v7;
    v9 = MEMORY[0x277D72090];
    if (*p_toneManager)
    {
      [v7 removeObserver:self name:*MEMORY[0x277D72090] object:?];
    }

    objc_storeStrong(&self->_toneManager, a3);
    if (*p_toneManager)
    {
      [v8 addObserver:self selector:sel__toneManagerContentsChanged_ name:*v9 object:?];
    }

    v5 = v10;
  }
}

- (void)_performBatchUpdates:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 tonePickerController:self requestsPerformingBatchUpdates:v6 completion:v8];
  }

  else
  {
    v6[2](v6);

    if (v8)
    {
      v8[2](v8, 1);
    }
  }
}

- (void)_applyBatchUpdatesWithDeletedPickerRowItems:(id)a3 deletedTonePickerSectionItems:(id)a4 insertedPickerRowItems:(id)a5 insertedTonePickerSectionItems:(id)a6 tonePickerSectionItemsWithUpdatedHeaderText:(id)a7 tonePickerSectionItemsWithUpdatedFooterText:(id)a8
{
  v20 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(TKTonePickerController *)self delegate];
  if ([v20 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 tonePickerController:self didDeletePickerRowItems:v20];
  }

  if ([v14 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 tonePickerController:self didDeleteTonePickerSectionItems:v14];
  }

  if ([v15 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 tonePickerController:self didInsertPickerRowItems:v15];
  }

  if ([v16 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 tonePickerController:self didInsertTonePickerSectionItems:v16];
  }

  if ([v17 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 tonePickerController:self didUpdateHeaderTextOfTonePickerSectionItems:v17];
  }

  if ([v18 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 tonePickerController:self didUpdateFooterTextOfTonePickerSectionItems:v18];
  }
}

- (void)setShowsReflectionRemixesInline:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v6 = [v5 supportsReflectionRemixes];

  if (!v6 || self->_showsReflectionRemixesInline == v3)
  {
    return;
  }

  v55 = [(TKTonePickerController *)self _indexPathForReflectionRemixHeader];
  v7 = [v55 tk_row] + 1;
  v8 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
  v9 = [v8 count];

  v53 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v7, v9}];
  v10 = -[TKTonePickerController pickerItemForSection:](self, "pickerItemForSection:", [v55 tk_section]);
  v11 = [v55 tk_section];
  v12 = [(TKTonePickerController *)self _indexPathForFirstToneGroup];
  v13 = v11 - [v12 tk_section];

  v14 = [(NSMutableArray *)self->_toneGroupLists objectAtIndex:v13];
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = v3;
  if (v3)
  {
    v16 = [(TKTonePickerController *)self _selectedToneIndexPath];
    if ([(TKTonePickerController *)self _selectedRemixRingtoneIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [v16 tk_section];
      if (v17 == [v55 tk_section])
      {
        v18 = [v16 tk_row];
        if (v18 > [v55 tk_row])
        {
          v19 = MEMORY[0x277CCAA70];
          v20 = [v16 tk_row];
          v21 = [v16 tk_section];
          v22 = v20 + v9;
          v23 = v19;
LABEL_16:
          v30 = [v23 tk_indexPathForRow:v22 inSection:v21];
LABEL_21:
          LODWORD(v50) = 1;
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:
      v30 = 0;
      goto LABEL_21;
    }

    v31 = [v55 tk_row];
    v32 = v31 + [(TKTonePickerController *)self _selectedRemixRingtoneIndex];
    v33 = [MEMORY[0x277CCAA70] tk_indexPathForRow:v32 + 1 inSection:{objc_msgSend(v55, "tk_section")}];
LABEL_19:
    v30 = v33;
    LODWORD(v50) = 0;
    goto LABEL_23;
  }

  if (v9 >= 1)
  {
    v24 = v7;
    do
    {
      v25 = [(TKTonePickerController *)self _pickerRowItemAtIndex:v24 inSectionForItem:v10];
      [v15 addObject:v25];

      ++v24;
    }

    while (v24 < v9 + v7);
  }

  [v14 removeObjectsAtIndexes:v53];
  v16 = [(TKTonePickerController *)self _selectedToneIndexPath];
  if ([(TKTonePickerController *)self _selectedRemixRingtoneIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = v55;
    goto LABEL_19;
  }

  v26 = [v16 tk_section];
  if (v26 != [v55 tk_section])
  {
    goto LABEL_20;
  }

  v27 = [v16 tk_row];
  if (v27 > [v55 tk_row])
  {
    v28 = MEMORY[0x277CCAA70];
    v29 = [v16 tk_row] - v9;
    v21 = [v16 tk_section];
    v23 = v28;
    v22 = v29;
    goto LABEL_16;
  }

LABEL_22:
  v16 = v16;
  LODWORD(v50) = 1;
  v30 = v16;
LABEL_23:
  v34 = v16;
  v35 = v30;
  v36 = v35;
  HIDWORD(v50) = (v34 | v35) != 0;
  if (!(v34 | v35))
  {
    goto LABEL_30;
  }

  v37 = 0;
  if (v34 && v35)
  {
    if (v34 != v35)
    {
      v37 = [v34 isEqual:v35];
      goto LABEL_28;
    }

LABEL_30:

    goto LABEL_31;
  }

LABEL_28:

  if (((v50 | v37) & 1) == 0)
  {
    [(TKTonePickerController *)self _didUpdateCheckedStatus:0 ofPickerItemForRowAtIndexPath:v34];
  }

LABEL_31:
  self->_showsReflectionRemixesInline = v54;
  [(TKTonePickerController *)self _setSelectedToneIndexPath:v36, v50];
  if ([v14 count])
  {
    v38 = 0;
    do
    {
      [(TKTonePickerController *)self _uncachePickerRowItemAtIndex:v38++ inSectionForItem:v10];
    }

    while (v38 < [v14 count]);
  }

  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v54)
  {
    v40 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
    [v14 insertObjects:v40 atIndexes:v53];

    if (v9 >= 1)
    {
      v41 = v9 + v7;
      do
      {
        v42 = [(TKTonePickerController *)self _pickerRowItemAtIndex:v7 inSectionForItem:v10];
        [v39 addObject:v42];

        ++v7;
      }

      while (v7 < v41);
    }
  }

  [v10 _setNumberOfChildren:{objc_msgSend(v14, "count")}];
  [(TKTonePickerController *)self _applyBatchUpdatesWithDeletedPickerRowItems:v15 deletedTonePickerSectionItems:MEMORY[0x277CBEBF8] insertedPickerRowItems:v39 insertedTonePickerSectionItems:MEMORY[0x277CBEBF8] tonePickerSectionItemsWithUpdatedHeaderText:MEMORY[0x277CBEBF8] tonePickerSectionItemsWithUpdatedFooterText:MEMORY[0x277CBEBF8]];
  v43 = v34;
  v44 = v36;
  v45 = v44;
  if (v52)
  {
    v46 = 0;
    if (!v34 || !v36)
    {
LABEL_43:

      if (((v51 | v46) & 1) == 0)
      {
        [(TKTonePickerController *)self _didUpdateCheckedStatus:1 ofPickerItemForRowAtIndexPath:v45];
      }

      goto LABEL_46;
    }

    if (v43 != v44)
    {
      v46 = [v43 isEqual:v44];
      goto LABEL_43;
    }
  }

LABEL_46:
  v47 = -[TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:](self, "_pickerRowItemAtIndex:inSectionForItem:", [v55 tk_row], v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = v47;
    if (v48)
    {
      v49 = [(TKTonePickerController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v49 tonePickerController:self didUpdateDisclosureStatus:v54 ofTonePickerItem:v48];
      }
    }
  }

  else
  {
    v48 = 0;
  }
}

- (BOOL)canShowStore
{
  toneStoreDownloadController = self->_toneStoreDownloadController;
  toneTypes = self->_toneTypes;
  if ((toneTypes & 0x10) != 0)
  {
    v8 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    v4 = [v8 isRingtoneStoreAvailable];

    if ((self->_toneTypes & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return (toneStoreDownloadController != 0) & (v4 | v6);
  }

  v4 = 0;
  if ((toneTypes & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v6 = [v5 isAlertToneStoreAvailable];

  return (toneStoreDownloadController != 0) & (v4 | v6);
}

- (void)setToneStoreDownloadController:(id)a3
{
  v5 = a3;
  toneStoreDownloadController = self->_toneStoreDownloadController;
  if (toneStoreDownloadController != v5)
  {
    v7 = v5;
    [(TLToneStoreDownloadController *)toneStoreDownloadController removeObserver:self];
    objc_storeStrong(&self->_toneStoreDownloadController, a3);
    [(TLToneStoreDownloadController *)self->_toneStoreDownloadController addObserver:self];
    toneStoreDownloadController = [(TKTonePickerController *)self _enableToneStoreDownloadItemIfAppropriate];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](toneStoreDownloadController, v5);
}

- (void)storeAccountNameDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v4 = __52__TKTonePickerController_storeAccountNameDidChange___block_invoke;
  v5 = &unk_278316500;
  v6 = self;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __52__TKTonePickerController_storeAccountNameDidChange___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _enableToneStoreDownloadItemIfAppropriate];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _didUpdateFooterTextForToneStoreGroup];
  }

  return result;
}

- (void)didFinishCheckingForAvailableToneStoreDownloads:(BOOL)a3
{
  v4 = __74__TKTonePickerController_didFinishCheckingForAvailableToneStoreDownloads___block_invoke;
  v5 = &unk_278316528;
  v7 = a3;
  v6 = self;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4(&v3);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], &v3);
  }
}

uint64_t __74__TKTonePickerController_didFinishCheckingForAvailableToneStoreDownloads___block_invoke(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _disableToneStoreDownloadItem];
  }

  return result;
}

- (void)toneStoreDownloadsDidStart:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke;
  v9 = &unk_2783165C8;
  v10 = self;
  v11 = v4;
  v5 = MEMORY[0x277CCACC8];
  v6 = v4;
  if ([v5 isMainThread])
  {
    v8(&v7);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], &v7);
  }
}

void __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 2;
  [*(a1 + 32) _didUpdateToneStoreDownloadItem];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke_2;
  v3[3] = &unk_2783165C8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  [v2 _performBatchUpdates:v3 completion:0];
}

void __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (!*(*(a1 + 32) + 40))
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 identifier];
        [*(*(a1 + 32) + 40) setObject:v11 forKey:v12];
        [v2 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  v13 = [*(*(a1 + 32) + 88) copy];
  v14 = [*(*(a1 + 32) + 104) copy];
  [*(a1 + 32) _reloadTonesForExternalChange:0 shouldSkipDelegateFullReload:1];
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [*(a1 + 32) _indexPathForFirstToneGroup];
  v18 = [v17 tk_section];

  v19 = *(a1 + 32);
  v20 = *(v19 + 88);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke_3;
  v27[3] = &unk_2783165A0;
  v32 = v15;
  v33 = v18;
  v27[4] = v19;
  v28 = v14;
  v29 = v16;
  v30 = v13;
  v31 = v2;
  v21 = v15;
  v22 = v2;
  v23 = v13;
  v24 = v16;
  v25 = v14;
  [v20 enumerateObjectsUsingBlock:v27];
  [*(a1 + 32) _applyBatchUpdatesWithDeletedPickerRowItems:MEMORY[0x277CBEBF8] deletedTonePickerSectionItems:MEMORY[0x277CBEBF8] insertedPickerRowItems:v21 insertedTonePickerSectionItems:v24 tonePickerSectionItemsWithUpdatedHeaderText:MEMORY[0x277CBEBF8] tonePickerSectionItemsWithUpdatedFooterText:MEMORY[0x277CBEBF8]];

  v26 = *MEMORY[0x277D85DE8];
}

void __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) pickerItemForSection:*(a1 + 80) + a3];
  v7 = [*(*(a1 + 32) + 104) objectAtIndex:a3];
  v8 = [*(a1 + 40) indexOfObject:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 48) addObject:v6];
  }

  else
  {
    v9 = [*(a1 + 56) objectAtIndex:v8];
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke_4;
    v39[3] = &unk_278316550;
    v39[4] = &v40;
    [v9 enumerateObjectsUsingBlock:v39];
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke_5;
    v24[3] = &unk_278316578;
    v29 = &v35;
    v30 = &v31;
    v10 = *(a1 + 64);
    v11 = *(a1 + 32);
    v25 = v10;
    v26 = v11;
    v12 = v6;
    v27 = v12;
    v28 = *(a1 + 72);
    [v5 enumerateObjectsUsingBlock:v24];
    v13 = v36[3];
    v14 = v41[3];
    if (v13 != v14)
    {
      if (v13 != v14 + 1)
      {
        v15 = TLLogGeneral();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

        if (v16)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
          v18 = TLLogGeneral();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v17 lastPathComponent];
            v20 = [MEMORY[0x277CCACC8] callStackSymbols];
            *buf = 136381443;
            v45 = "[TKTonePickerController toneStoreDownloadsDidStart:]_block_invoke_3";
            v46 = 2113;
            v47 = v19;
            v48 = 2049;
            v49 = 2527;
            v50 = 2113;
            v51 = v20;
            _os_log_impl(&dword_21C599000, v18, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
          }
        }

        else
        {
          v17 = TLLogGeneral();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
          }
        }

        v21 = TLLogGeneral();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke_3_cold_2();
        }
      }

      v22 = [*(a1 + 32) _pickerRowItemAtIndex:v32[3] inSectionForItem:v12];
      [*(a1 + 72) addObject:v22];
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v40, 8);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke_4(uint64_t a1, void *a2)
{
  result = [a2 isEqualToString:&stru_282E32280];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([v6 isEqualToString:&stru_282E32280])
  {
    ++*(*(*(a1 + 64) + 8) + 24);
    *(*(*(a1 + 72) + 8) + 24) = a3;
  }

  else if ([*(a1 + 32) containsObject:v6])
  {
    v5 = [*(a1 + 40) _pickerRowItemAtIndex:a3 inSectionForItem:*(a1 + 48)];
    [*(a1 + 56) addObject:v5];
  }
}

- (void)toneStoreDownloadsDidProgress:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = __56__TKTonePickerController_toneStoreDownloadsDidProgress___block_invoke;
  v9 = &unk_2783165C8;
  v10 = self;
  v11 = v4;
  v5 = MEMORY[0x277CCACC8];
  v6 = v4;
  if ([v5 isMainThread])
  {
    v8(&v7);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], &v7);
  }
}

void __56__TKTonePickerController_toneStoreDownloadsDidProgress___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _indexPathForFirstToneGroup];
  v3 = [v2 tk_section];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 40);
  v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = *v28;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 identifier];
        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = __Block_byref_object_copy_;
        v25 = __Block_byref_object_dispose_;
        v26 = 0;
        v9 = *(*(a1 + 32) + 88);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __56__TKTonePickerController_toneStoreDownloadsDidProgress___block_invoke_161;
        v16[3] = &unk_2783165F0;
        v10 = v8;
        v11 = *(a1 + 32);
        v17 = v10;
        v18 = v11;
        v19 = &v21;
        v20 = v3;
        [v9 enumerateObjectsUsingBlock:v16];
        v12 = v22[5];
        if (v12)
        {
          [v7 downloadProgress];
          [v12 _setDownloadProgress:?];
          v13 = [*(a1 + 32) delegate];
          if (objc_opt_respondsToSelector())
          {
            [v13 tonePickerController:*(a1 + 32) didUpdateDownloadProgressOfTonePickerItem:v22[5]];
          }
        }

        _Block_object_dispose(&v21, 8);
      }

      v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __56__TKTonePickerController_toneStoreDownloadsDidProgress___block_invoke_161(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 indexOfObject:*(a1 + 32)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = result;
    v9 = [*(a1 + 40) _cachedPickerItemForSection:*(a1 + 56) + a3];
    v10 = v9;
    if (v9)
    {
      v12 = v9;
      v11 = [*(a1 + 40) _cachedPickerRowItemAtIndex:v8 inSectionForItem:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11);
      }

      v10 = v12;
    }

    *a4 = 1;

    return MEMORY[0x2821F96F8](v9, v10);
  }

  return result;
}

- (void)toneStoreDownloadsDidFinish:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = __54__TKTonePickerController_toneStoreDownloadsDidFinish___block_invoke;
  v9 = &unk_2783165C8;
  v10 = self;
  v11 = v4;
  v5 = MEMORY[0x277CCACC8];
  v6 = v4;
  if ([v5 isMainThread])
  {
    v8(&v7);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], &v7);
  }
}

uint64_t __54__TKTonePickerController_toneStoreDownloadsDidFinish___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _indexPathForFirstToneGroup];
  v31 = [v2 tk_section];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = *(a1 + 40);
  v32 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v32)
  {
    v30 = *v44;
    *&v3 = 136381443;
    v28 = v3;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v43 + 1) + 8 * i);
        v6 = [v5 identifier];
        v7 = [v5 toneIdentifier];
        if (!v7)
        {
          v8 = TLLogGeneral();
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

          if (v9)
          {
            v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
            v11 = TLLogGeneral();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v10 lastPathComponent];
              v13 = [MEMORY[0x277CCACC8] callStackSymbols];
              *buf = v28;
              *&buf[4] = "[TKTonePickerController toneStoreDownloadsDidFinish:]_block_invoke";
              *&buf[12] = 2113;
              *&buf[14] = v12;
              *&buf[22] = 2049;
              v48 = 2584;
              LOWORD(v49) = 2113;
              *(&v49 + 2) = v13;
              _os_log_impl(&dword_21C599000, v11, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
            }
          }

          else
          {
            v10 = TLLogGeneral();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              __54__TKTonePickerController_toneStoreDownloadsDidFinish___block_invoke_cold_1(&v41, v42, v10);
            }
          }

          v14 = TLLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            __54__TKTonePickerController_toneStoreDownloadsDidFinish___block_invoke_cold_2(&v39, v40, v14);
          }
        }

        [*(*(a1 + 32) + 40) removeObjectForKey:v6];
        v15 = *(*(a1 + 32) + 48);
        if (!v15)
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v17 = *(a1 + 32);
          v18 = *(v17 + 48);
          *(v17 + 48) = v16;

          v15 = *(*(a1 + 32) + 48);
        }

        [v15 setObject:v5 forKey:v7];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v48 = __Block_byref_object_copy_;
        *&v49 = __Block_byref_object_dispose_;
        *(&v49 + 1) = 0;
        v19 = *(*(a1 + 32) + 88);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __54__TKTonePickerController_toneStoreDownloadsDidFinish___block_invoke_164;
        v33[3] = &unk_278316618;
        v20 = v6;
        v21 = *(a1 + 32);
        v34 = v20;
        v35 = v21;
        v37 = buf;
        v38 = v31;
        v22 = v7;
        v36 = v22;
        [v19 enumerateObjectsUsingBlock:v33];
        v23 = *(*&buf[8] + 40);
        if (v23)
        {
          [v23 _setShouldPreventSelection:0];
          LODWORD(v24) = 1.0;
          [*(*&buf[8] + 40) _setDownloadProgress:v24];
          v25 = [*(a1 + 32) delegate];
          if (objc_opt_respondsToSelector())
          {
            [v25 tonePickerController:*(a1 + 32) didUpdateDownloadProgressOfTonePickerItem:*(*&buf[8] + 40)];
          }
        }

        _Block_object_dispose(buf, 8);
      }

      v32 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v32);
  }

  result = [*(*(a1 + 32) + 40) count];
  if (!result)
  {
    result = [*(a1 + 32) _disableToneStoreDownloadItem];
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void __54__TKTonePickerController_toneStoreDownloadsDidFinish___block_invoke_164(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [v11 indexOfObject:*(a1 + 32)];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [*(a1 + 40) _cachedPickerItemForSection:*(a1 + 64) + a3];
    if (v9)
    {
      v10 = [*(a1 + 40) _cachedPickerRowItemAtIndex:v8 inSectionForItem:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v10);
      }
    }

    [v11 replaceObjectAtIndex:v8 withObject:*(a1 + 48)];
    *a4 = 1;
  }
}

- (void)_didUpdateFooterTextForToneStoreGroup
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(TKTonePickerController *)self _indexPathForToneStoreGroup];
  v4 = [v3 tk_section];

  v5 = [(TKTonePickerController *)self _cachedPickerItemForSection:v4];
  if (v5)
  {
    v6 = [(TKTonePickerController *)self _footerTextForToneStoreGroup];
    [v5 _setFooterText:v6];
    v9[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(TKTonePickerController *)self _applyBatchUpdatesWithDeletedPickerRowItems:MEMORY[0x277CBEBF8] deletedTonePickerSectionItems:MEMORY[0x277CBEBF8] insertedPickerRowItems:MEMORY[0x277CBEBF8] insertedTonePickerSectionItems:MEMORY[0x277CBEBF8] tonePickerSectionItemsWithUpdatedHeaderText:MEMORY[0x277CBEBF8] tonePickerSectionItemsWithUpdatedFooterText:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_didUpdateToneStoreDownloadItem
{
  v3 = [(TKTonePickerController *)self _indexPathForToneStoreDownloadItem];
  if (v3)
  {
    v11 = v3;
    v4 = -[TKTonePickerController _cachedPickerItemForSection:](self, "_cachedPickerItemForSection:", [v3 tk_section]);
    if (v4)
    {
      v5 = [v11 tk_row];
      v6 = [(TKTonePickerController *)self _cachedPickerRowItemAtIndex:v5 inSectionForItem:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        [(TKTonePickerController *)self _uncachePickerRowItemAtIndex:v5 inSectionForItem:v4];
        v8 = [(TKTonePickerController *)self _pickerRowItemAtIndex:v5 inSectionForItem:v4];
        [v4 _setParentTonePickerController:self];
        v9 = [v8 text];
        [v7 _setText:v9];

        [v7 _setShouldTintText:{objc_msgSend(v8, "shouldTintText")}];
        [v7 _setNeedsActivityIndicator:{objc_msgSend(v8, "needsActivityIndicator")}];
        [v7 _setShouldPreventSelection:{objc_msgSend(v8, "shouldPreventSelection")}];
        [(TKTonePickerController *)self _cachePickerRowItem:v7 atIndex:v5 inSectionForItem:v4];
        v10 = [(TKTonePickerController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v10 tonePickerController:self didUpdateTonePickerItem:v7];
        }
      }
    }

    v3 = v11;
  }
}

- (BOOL)_enableToneStoreDownloadItemIfAppropriate
{
  if (!self->_isToneStoreDownloadButtonAllowed)
  {
    return 0;
  }

  if (self->_toneStoreDownloadButtonState != 3)
  {
    return 0;
  }

  v3 = [(TLToneStoreDownloadController *)self->_toneStoreDownloadController storeAccountName];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  self->_toneStoreDownloadButtonState = 0;
  [(TKTonePickerController *)self _invalidatePickerItemCaches];
  [(TKTonePickerController *)self _didReloadTones];
  return 1;
}

- (void)_disableToneStoreDownloadItem
{
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__TKTonePickerController__disableToneStoreDownloadItem__block_invoke;
  v17[3] = &unk_278316500;
  v17[4] = self;
  v3 = MEMORY[0x21CF0DA20](v17, a2);
  v4 = v3;
  if (self->_toneStoreDownloadButtonState == 3)
  {
    if (v3)
    {
      (*(v3 + 16))(v3);
    }
  }

  else
  {
    v5 = [(TKTonePickerController *)self _indexPathForToneStoreDownloadItem];
    v6 = v5;
    if (v5 && (-[TKTonePickerController _cachedPickerItemForSection:](self, "_cachedPickerItemForSection:", [v5 tk_section]), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = -[TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:](self, "_pickerRowItemAtIndex:inSectionForItem:", [v6 tk_row], v7);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__TKTonePickerController__disableToneStoreDownloadItem__block_invoke_2;
      v14[3] = &unk_278316640;
      v14[4] = self;
      v15 = v8;
      v16 = v9;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __55__TKTonePickerController__disableToneStoreDownloadItem__block_invoke_3;
      v12[3] = &unk_278316668;
      v12[4] = self;
      v13 = v4;
      v10 = v9;
      v11 = v8;
      [(TKTonePickerController *)self _performBatchUpdates:v14 completion:v12];
    }

    else
    {
      self->_toneStoreDownloadButtonState = 3;
      self->_isToneStoreDownloadButtonAllowed = 0;
      if (v4)
      {
        v4[2](v4);
      }
    }
  }
}

uint64_t __55__TKTonePickerController__disableToneStoreDownloadItem__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;

  v6 = *(a1 + 32);

  return [v6 _reloadTonesForExternalChange:1 shouldSkipDelegateFullReload:0];
}

void __55__TKTonePickerController__disableToneStoreDownloadItem__block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 32) = 3;
  *(*(a1 + 32) + 28) = 0;
  [*(a1 + 40) _setNumberOfChildren:{objc_msgSend(*(a1 + 40), "numberOfChildren") - 1}];
  v2 = *(a1 + 32);
  v5[0] = *(a1 + 48);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 _applyBatchUpdatesWithDeletedPickerRowItems:v3 deletedTonePickerSectionItems:MEMORY[0x277CBEBF8] insertedPickerRowItems:MEMORY[0x277CBEBF8] insertedTonePickerSectionItems:MEMORY[0x277CBEBF8] tonePickerSectionItemsWithUpdatedHeaderText:MEMORY[0x277CBEBF8] tonePickerSectionItemsWithUpdatedFooterText:MEMORY[0x277CBEBF8]];

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __55__TKTonePickerController__disableToneStoreDownloadItem__block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = objc_opt_class();

  return [v3 _updateLatestRedownloadAllTonesDate];
}

- (id)_footerTextForToneStoreGroup
{
  if (self->_toneStoreDownloadButtonState)
  {
    v2 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = TLLocalizedString();
    v6 = [(TLToneStoreDownloadController *)self->_toneStoreDownloadController storeAccountName];
    v2 = [v4 stringWithFormat:v5, v6];
  }

  return v2;
}

- (id)_nameForToneIdentifier:(id)a3
{
  v4 = a3;
  if (v4 && (([(NSMutableDictionary *)self->_activeToneStoreDownloadsByIdentifier objectForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || ([(NSMutableDictionary *)self->_finishedToneStoreDownloadsByIdentifier objectForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v6 = v5;
    v7 = [v5 name];
  }

  else
  {
    v7 = [(TLToneManager *)self->_toneManager nameForToneIdentifier:v4];
  }

  return v7;
}

- (void)_goToStore
{
  [(TKTonePickerController *)self stopPlayingWithFadeOut:0];
  v3 = [(TKTonePickerController *)self _behavesAsRingtonePicker];
  toneStoreDownloadController = self->_toneStoreDownloadController;
  if (v3)
  {

    [(TLToneStoreDownloadController *)toneStoreDownloadController openRingtoneStore];
  }

  else
  {

    [(TLToneStoreDownloadController *)toneStoreDownloadController openAlertToneStore];
  }
}

- (void)_redownloadAllTones
{
  self->_toneStoreDownloadButtonState = 1;
  self->_shouldFreezeContentsOriginatingFromToneManager = 1;
  [(TKTonePickerController *)self _didUpdateFooterTextForToneStoreGroup];
  [(TKTonePickerController *)self _didUpdateToneStoreDownloadItem];
  toneStoreDownloadController = self->_toneStoreDownloadController;

  [(TLToneStoreDownloadController *)toneStoreDownloadController redownloadAllTones];
}

+ (id)_latestRedownloadAllTonesDate
{
  v2 = [MEMORY[0x277D71F70] copySharedResourcesPreferencesDomain];
  if (v2)
  {
    v3 = v2;
    v4 = CFPreferencesCopyAppValue(@"tonePickerLatestRedownloadAllDate", v2);
    v5 = v4;
    if (v4)
    {
      v6 = CFGetTypeID(v4);
      if (v6 != CFDateGetTypeID())
      {
        CFRelease(v5);
        v5 = 0;
      }
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_updateLatestRedownloadAllTonesDate
{
  value = [MEMORY[0x277CBEAA8] date];
  v2 = [MEMORY[0x277D71F70] copySharedResourcesPreferencesDomain];
  if (v2)
  {
    v3 = v2;
    CFPreferencesSetAppValue(@"tonePickerLatestRedownloadAllDate", value, v2);
    CFPreferencesSynchronize(v3, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    CFRelease(v3);
  }
}

- (void)_playToneWithIdentifier:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(TKTonePickerController *)self defaultToneIdentifier];

    if (![v5 length])
    {
      v6 = TLLogGeneral();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      if (v7)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 lastPathComponent];
          v11 = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 136381443;
          v26 = "[TKTonePickerController _playToneWithIdentifier:]";
          v27 = 2113;
          v28 = v10;
          v29 = 2049;
          v30 = 2804;
          v31 = 2113;
          v32 = v11;
          _os_log_impl(&dword_21C599000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
        }
      }

      else
      {
        v8 = TLLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
        }
      }

      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
      }
    }
  }

  v13 = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 tonePickerController:self willBeginPlaybackOfToneWithIdentifier:v5];
  }

  v14 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:self->_alertType];
  [v14 setTopic:self->_topic];
  [v14 setToneIdentifier:v5];
  [v14 setVibrationIdentifier:self->_selectedVibrationIdentifier];
  [v14 setShouldRepeat:0];
  [v14 setForPreview:1];
  [v14 setTargetDevice:self->_targetDevice];
  v15 = self->_playingAlert;
  v16 = [MEMORY[0x277D71F50] alertWithConfiguration:v14];
  playingAlert = self->_playingAlert;
  self->_playingAlert = v16;

  v18 = self->_playingAlert;
  if (v18)
  {
    objc_initWeak(buf, v18);
    objc_initWeak(&location, self);
    v19 = self->_playingAlert;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__TKTonePickerController__playToneWithIdentifier___block_invoke;
    v21[3] = &unk_2783166B8;
    objc_copyWeak(&v22, buf);
    objc_copyWeak(&v23, &location);
    [(TLAlert *)v19 playWithCompletionHandler:v21];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    [(TLAlert *)v15 stop];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __50__TKTonePickerController__playToneWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __50__TKTonePickerController__playToneWithIdentifier___block_invoke_2;
  v9 = &unk_278316690;
  objc_copyWeak(&v10, (a1 + 32));
  objc_copyWeak(&v11, (a1 + 40));
  v5 = &v6;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v8(v5);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
}

void __50__TKTonePickerController__playToneWithIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [v2 _didFinishPlayingAlert:WeakRetained];
  }
}

- (void)_togglePlayForToneWithIdentifier:(id)a3
{
  if (self->_playingAlert)
  {
    [(TKTonePickerController *)self stopPlayingWithFadeOut:0];
  }

  else
  {
    [(TKTonePickerController *)self _playToneWithIdentifier:a3];
  }
}

- (BOOL)stopPlayingWithFadeOut:(BOOL)a3
{
  if (a3)
  {
    v4 = 0.5;
  }

  else
  {
    v4 = 0.0;
  }

  playingAlert = self->_playingAlert;
  v6 = playingAlert != 0;
  if (playingAlert)
  {
    v7 = objc_alloc_init(MEMORY[0x277D71F60]);
    [v7 setFadeOutDuration:v4];
    [(TLAlert *)self->_playingAlert stopWithOptions:v7];
  }

  v8 = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = (playingAlert != 0) | [v8 tonePickerControllerDidStopPlaying:self withFadeOutDuration:v4];
  }

  return v6 & 1;
}

- (void)_didFinishPlayingAlert:(id)a3
{
  if (self->_playingAlert == a3)
  {
    self->_playingAlert = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)setShowsIgnoreMute:(BOOL)a3
{
  if (self->_showsIgnoreMute != a3)
  {
    v4 = a3;
    self->_showsIgnoreMute = a3;
    v10 = [(TKTonePickerController *)self _selectedToneIndexPath];
    if (v10)
    {
      v6 = [v10 tk_section];
      v7 = [v10 tk_row];
      if (v6 <= 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }

      if (v4)
      {
        v8 = 1;
      }

      v9 = [MEMORY[0x277CCAA70] tk_indexPathForRow:v7 inSection:v8 + v6];
      [(TKTonePickerController *)self _setSelectedToneIndexPath:v9];
    }

    [(TKTonePickerController *)self _invalidatePickerItemCaches];
    [(TKTonePickerController *)self _didReloadTones];
  }
}

- (BOOL)_showsMedia
{
  v3 = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 tonePickerControllerShouldShowMedia:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMediaAtTop:(BOOL)a3
{
  if (self->_mediaAtTop != a3)
  {
    self->_mediaAtTop = a3;
    [(TKTonePickerController *)self _invalidatePickerItemCaches];

    [(TKTonePickerController *)self _didReloadTones];
  }
}

- (unint64_t)_mediaItemsCount
{
  v3 = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 numberOfMediaItemsInTonePickerController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_identifierOfMediaItemAtIndex:(unint64_t)a3
{
  v5 = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 tonePickerController:self identifierOfMediaItemAtIndex:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_indexOfMediaItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 tonePickerController:self indexOfMediaItemWithIdentifier:v4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)_didSelectMediaItemWithIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 tonePickerController:self selectedMediaItemWithIdentifier:v5];
  }
}

- (void)_reloadMediaItems
{
  v3 = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 tonePickerControllerRequestsMediaItemsRefresh:self];
  }
}

- (void)setShowsVibrations:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    v5 = [v4 hasVibratorCapability];

    v6 = v5;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (self->_showsVibrations != v5)
  {
    self->_showsVibrations = v5;
    v10 = [(TKTonePickerController *)self _selectedToneIndexPath];
    v7 = [v10 tk_section];
    if (v6)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 - 1;
    }

    v9 = [MEMORY[0x277CCAA70] tk_indexPathForRow:objc_msgSend(v10 inSection:{"tk_row"), v8}];
    [(TKTonePickerController *)self _setSelectedToneIndexPath:v9];

    [(TKTonePickerController *)self _invalidatePickerItemCaches];
    [(TKTonePickerController *)self _didReloadTones];
    if (v6)
    {
      [(TKTonePickerController *)self _registerForUserGeneratedVibrationsDidChangeNotification];
    }

    else
    {
      [(TKTonePickerController *)self _unregisterForUserGeneratedVibrationsDidChangeNotification];
    }
  }
}

- (void)_setSelectedVibrationIdentifier:(id)a3 forceUpdatingVibrationName:(BOOL)a4 explicitlySet:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  selectedVibrationIdentifier = self->_selectedVibrationIdentifier;
  v14 = v8;
  if (selectedVibrationIdentifier == v8 || (selectedVibrationIdentifier = [(NSString *)selectedVibrationIdentifier isEqualToString:v8], v8 = v14, (selectedVibrationIdentifier & 1) != 0))
  {
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [(NSString *)v14 copy];
    v11 = self->_selectedVibrationIdentifier;
    self->_selectedVibrationIdentifier = v10;

    v8 = v14;
  }

  if (self->_showsVibrations)
  {
    v12 = [(TKTonePickerController *)self _nameOfSelectedVibrationIdentifier];
    v13 = [(TKTonePickerController *)self _indexPathForVibrationGroup];
    [(TKTonePickerController *)self _didUpdateDetailText:v12 ofPickerItemForRowAtIndexPath:v13];

    v8 = v14;
  }

LABEL_8:
  self->_selectedVibrationIdentifierWasExplicitlySet = a5;

  MEMORY[0x2821F96F8](selectedVibrationIdentifier, v8);
}

- (id)_sanitizedSelectedVibrationIdentifierAllowingNilForDefault:(BOOL)a3
{
  v3 = a3;
  v5 = self->_selectedVibrationIdentifier;
  v6 = v5;
  if ([(NSString *)v5 length])
  {
    v7 = [(TKTonePickerController *)self selectedToneIdentifier];
    if (![v7 length])
    {
      v8 = [(TKTonePickerController *)self defaultToneIdentifier];

      v7 = v8;
    }

    v14 = 0;
    v9 = [MEMORY[0x277D71F88] sharedVibrationManager];
    alertType = self->_alertType;
    v11 = [(TKTonePickerController *)self topic];
    v6 = [v9 _sanitizeVibrationIdentifier:v5 forAlertType:alertType topic:v11 targetDevice:-[TKTonePickerController targetDevice](self correspondingToneIdentifier:"targetDevice") didFallbackToCurrentVibrationIdentifier:{v7, &v14}];

    if (!v3)
    {
      goto LABEL_12;
    }

    if (v14)
    {
      v12 = v6;
    }

    else
    {
      if ((self->_alertType - 13) > 1)
      {
        goto LABEL_12;
      }

      v12 = [v9 defaultVibrationIdentifierForAlertType:?];
      if (![v6 isEqualToString:v12])
      {
LABEL_8:

LABEL_12:
        goto LABEL_13;
      }
    }

    v6 = 0;
    goto LABEL_8;
  }

LABEL_13:

  return v6;
}

- (id)_nameOfSelectedVibrationIdentifier
{
  v2 = [(TKTonePickerController *)self _sanitizedSelectedVibrationIdentifierAllowingNilForDefault:1];
  if ([v2 length])
  {
    v3 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v4 = [v3 nameOfVibrationWithIdentifier:v2];
  }

  else
  {
    v4 = TLLocalizedString();
  }

  return v4;
}

- (void)_registerForUserGeneratedVibrationsDidChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = *MEMORY[0x277D72078];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _TKTonePickerControllerHandleUserGeneratedVibrationsDidChangeNotification, v4, 0, 1026);
}

- (void)_unregisterForUserGeneratedVibrationsDidChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = *MEMORY[0x277D72078];

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);
}

- (void)_updateDetailTextOfVibrationItem
{
  if (self->_showsVibrations)
  {
    v5 = [(TKTonePickerController *)self _nameOfSelectedVibrationIdentifier];
    v4 = [(TKTonePickerController *)self _indexPathForVibrationGroup];
    [(TKTonePickerController *)self _didUpdateDetailText:v5 ofPickerItemForRowAtIndexPath:v4];
  }
}

- (id)_annotatedNameForToneIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TLToneManager *)self->_toneManager _aliasForToneIdentifier:v4];
  v6 = [(TKTonePickerController *)self _nameForToneIdentifier:v5];
  showsDefault = self->_showsDefault;
  v8 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v9 = [v8 supportsReflectionRemixes];

  if (!v9)
  {
    goto LABEL_6;
  }

  if (![v4 isEqualToString:@"<default>"])
  {
    v11 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
    v12 = [v11 containsObject:v4];

    if (v12)
    {
      v13 = [v4 stringByAppendingString:@"_DETAIL_NAME"];
      v14 = TLLocalizedString();
LABEL_11:
      v10 = v14;

      v6 = v13;
      goto LABEL_12;
    }

LABEL_6:
    if (showsDefault || self->_alertType == 13 && [(NSString *)self->_topic isEqualToString:*MEMORY[0x277D71FA8]])
    {
      goto LABEL_13;
    }

    toneManager = self->_toneManager;
    v16 = [(TKTonePickerController *)self defaultToneIdentifier];
    v17 = [(TLToneManager *)toneManager _aliasForToneIdentifier:v16];
    v18 = [v5 isEqualToString:v17];

    if (!v18)
    {
      goto LABEL_13;
    }

    v19 = MEMORY[0x277CCACA8];
    v13 = TLLocalizedString();
    v14 = [v19 stringWithFormat:v13, v6];
    goto LABEL_11;
  }

  v10 = TLLocalizedString();
LABEL_12:

  v6 = v10;
LABEL_13:

  return v6;
}

- (void)_didReloadTones
{
  v3 = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 tonePickerControllerDidReloadTones:self];
  }
}

- (void)_didSelectToneWithIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 tonePickerController:self selectedToneWithIdentifier:v5];
  }
}

- (void)_didUpdateDetailText:(id)a3 ofPickerItemForRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = -[TKTonePickerController pickerItemForSection:](self, "pickerItemForSection:", [v6 tk_section]);
  v8 = [v6 tk_row];

  v9 = [v7 childItemAtIndex:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    [v10 _setDetailText:v12];
    v11 = [(TKTonePickerController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v11 tonePickerController:self didUpdateDetailText:v12 ofTonePickerItem:v10];
    }
  }
}

- (void)_resetSelectedClassicRingtoneIndex
{
  v3 = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    [(TKTonePickerController *)self _setSelectedClassicRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
    v8 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:@"<classic_ringtone_identifier>"];
    v5 = -[TKTonePickerController pickerItemForSection:](self, "pickerItemForSection:", [v8 tk_section]);
    v6 = [v5 childItemAtIndex:{objc_msgSend(v8, "tk_row")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 childItemAtIndex:v4];
      [(TKTonePickerController *)self _didUpdateCheckedStatus:0 ofToneClassicsPickerItem:v7];
    }
  }
}

- (void)_resetSelectedClassicAlertToneIndex
{
  v3 = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    [(TKTonePickerController *)self _setSelectedClassicAlertToneIndex:0x7FFFFFFFFFFFFFFFLL];
    v8 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:@"<classic_alert_tone_identifier>"];
    v5 = -[TKTonePickerController pickerItemForSection:](self, "pickerItemForSection:", [v8 tk_section]);
    v6 = [v5 childItemAtIndex:{objc_msgSend(v8, "tk_row")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 childItemAtIndex:v4];
      [(TKTonePickerController *)self _didUpdateCheckedStatus:0 ofToneClassicsPickerItem:v7];
    }
  }
}

- (void)_toneManagerContentsChanged:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v4 = __54__TKTonePickerController__toneManagerContentsChanged___block_invoke;
  v5 = &unk_278316500;
  v6 = self;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

_BYTE *__54__TKTonePickerController__toneManagerContentsChanged___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[56] & 1) == 0)
  {
    [result stopPlayingWithFadeOut:0];
    v3 = *(a1 + 32);

    return [v3 _reloadTonesForExternalChange:1 shouldSkipDelegateFullReload:0];
  }

  return result;
}

- (void)_handleAlertOverridePolicyDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v4 = __74__TKTonePickerController__handleAlertOverridePolicyDidChangeNotification___block_invoke;
  v5 = &unk_278316500;
  v6 = self;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

_BYTE *__74__TKTonePickerController__handleAlertOverridePolicyDidChangeNotification___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[26] & 1) == 0)
  {
    return [result _resetSelectedVibrationIdentifierForcingUpdatingVibrationName:0];
  }

  return result;
}

- (TKTonePickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)deleteTonePickerItem:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_21C599000, a2, OS_LOG_TYPE_ERROR, "Cannot delete %{public}@.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __54__TKTonePickerController_toneStoreDownloadsDidFinish___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21C599000, log, OS_LOG_TYPE_ERROR, "*** Assertion failure.", buf, 2u);
}

void __54__TKTonePickerController_toneStoreDownloadsDidFinish___block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21C599000, log, OS_LOG_TYPE_ERROR, "Unexpected.", buf, 2u);
}

@end