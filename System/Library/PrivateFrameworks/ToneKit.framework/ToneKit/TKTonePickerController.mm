@interface TKTonePickerController
+ (id)_latestRedownloadAllTonesDate;
+ (void)_updateLatestRedownloadAllTonesDate;
- (BOOL)_didSelectToneClassicsPickerItem:(id)item;
- (BOOL)_enableToneStoreDownloadItemIfAppropriate;
- (BOOL)_isDefaultGroupAtIndexPath:(id)path;
- (BOOL)_isDividerAtIndexPath:(id)path;
- (BOOL)_isIgnoreMuteGroupAtIndexPath:(id)path;
- (BOOL)_isMediaGroupAtIndexPath:(id)path;
- (BOOL)_isNoneGroupAtIndexPath:(id)path;
- (BOOL)_isReflectionHeaderAtIndexPath:(id)path;
- (BOOL)_isToneStoreGroupAtIndexPath:(id)path;
- (BOOL)_isVibrationGroupAtIndexPath:(id)path;
- (BOOL)_showsMedia;
- (BOOL)_showsNoneInSeparateToneGroup;
- (BOOL)canDeleteTonePickerItem:(id)item;
- (BOOL)canShowStore;
- (BOOL)didSelectTonePickerItem:(id)item;
- (BOOL)stopPlayingWithFadeOut:(BOOL)out;
- (NSIndexPath)_indexPathForDefaultGroup;
- (NSIndexPath)_indexPathForFirstToneGroup;
- (NSIndexPath)_indexPathForMediaGroup;
- (NSIndexPath)_indexPathForNone;
- (NSIndexPath)_indexPathForReflectionRemixHeader;
- (NSIndexPath)_indexPathForToneStoreGroup;
- (NSIndexPath)_indexPathForVibrationGroup;
- (NSString)_ringtonesPlistName;
- (NSString)selectedToneIdentifier;
- (TKTonePickerController)initWithAlertType:(int64_t)type;
- (TKTonePickerControllerDelegate)delegate;
- (TKTonePickerItem)_topLevelSelectedTonePickerItem;
- (TKTonePickerItem)selectedTonePickerItem;
- (id)_annotatedNameForToneIdentifier:(id)identifier;
- (id)_cachedPickerItemForSection:(int64_t)section;
- (id)_cachedPickerRowItemAtIndex:(int64_t)index inSectionForItem:(id)item;
- (id)_footerTextForToneStoreGroup;
- (id)_identifierAtIndexPath:(id)path isMediaItem:(BOOL *)item;
- (id)_identifierOfMediaItemAtIndex:(unint64_t)index;
- (id)_identifierOfSelectedClassicAlertTone;
- (id)_identifierOfSelectedClassicRingtone;
- (id)_identifierOfSelectedRemixRingtone;
- (id)_identifierOfToneAtIndexPath:(id)path;
- (id)_indexPathForIgnoreMuteGroup;
- (id)_indexPathForToneStoreDownloadItem;
- (id)_indexPathForToneWithIdentifier:(id)identifier;
- (id)_loadAlertTonesFromPlist;
- (id)_loadRingtonesFromPlist;
- (id)_loadTonesFromPlistNamed:(id)named;
- (id)_nameForToneIdentifier:(id)identifier;
- (id)_nameOfSelectedVibrationIdentifier;
- (id)_pickerRowItemAtIndex:(int64_t)index inSectionForItem:(id)item;
- (id)_platformSpecificAdjustedPlistName:(id)name;
- (id)_sanitizedSelectedVibrationIdentifierAllowingNilForDefault:(BOOL)default;
- (id)_selectedIdentifier:(BOOL *)identifier;
- (id)_toneClassicsPickerItemAtIndex:(int64_t)index withToneIdentifier:(id)identifier belowTonePickerItem:(id)item;
- (id)pickerItemForSection:(int64_t)section;
- (int64_t)numberOfSections;
- (unint64_t)_indexOfMediaItemWithIdentifier:(id)identifier;
- (unint64_t)_mediaItemsCount;
- (void)_applyBatchUpdatesWithDeletedPickerRowItems:(id)items deletedTonePickerSectionItems:(id)sectionItems insertedPickerRowItems:(id)rowItems insertedTonePickerSectionItems:(id)pickerSectionItems tonePickerSectionItemsWithUpdatedHeaderText:(id)text tonePickerSectionItemsWithUpdatedFooterText:(id)footerText;
- (void)_cachePickerRowItem:(id)item atIndex:(int64_t)index inSectionForItem:(id)forItem;
- (void)_cachePickerSectionItem:(id)item forSection:(int64_t)section;
- (void)_didFinishPlayingAlert:(id)alert;
- (void)_didReloadTones;
- (void)_didSelectMediaItemWithIdentifier:(id)identifier;
- (void)_didSelectToneWithIdentifier:(id)identifier;
- (void)_didUpdateDetailText:(id)text ofPickerItemForRowAtIndexPath:(id)path;
- (void)_didUpdateFooterTextForToneStoreGroup;
- (void)_didUpdateToneStoreDownloadItem;
- (void)_disableToneStoreDownloadItem;
- (void)_goToStore;
- (void)_handleAlertOverridePolicyDidChangeNotification:(id)notification;
- (void)_invalidatePickerItemCaches;
- (void)_performBatchUpdates:(id)updates completion:(id)completion;
- (void)_playToneWithIdentifier:(id)identifier;
- (void)_redownloadAllTones;
- (void)_registerForUserGeneratedVibrationsDidChangeNotification;
- (void)_reloadMediaItems;
- (void)_reloadStateForBasicBehavior;
- (void)_reloadTonesForExternalChange:(BOOL)change shouldSkipDelegateFullReload:(BOOL)reload;
- (void)_resetSelectedClassicAlertToneIndex;
- (void)_resetSelectedClassicRingtoneIndex;
- (void)_setSelectedToneIdentifier:(id)identifier currentlyReloadingTones:(BOOL)tones;
- (void)_setSelectedVibrationIdentifier:(id)identifier forceUpdatingVibrationName:(BOOL)name explicitlySet:(BOOL)set;
- (void)_setToneManager:(id)manager;
- (void)_sortToneIdentifiersArray:(id)array;
- (void)_togglePlayForToneWithIdentifier:(id)identifier;
- (void)_toneManagerContentsChanged:(id)changed;
- (void)_uncachePickerRowItemAtIndex:(int64_t)index inSectionForItem:(id)item;
- (void)_unregisterForUserGeneratedVibrationsDidChangeNotification;
- (void)_updateDetailTextOfVibrationItem;
- (void)dealloc;
- (void)deleteTonePickerItem:(id)item;
- (void)didFinishCheckingForAvailableToneStoreDownloads:(BOOL)downloads;
- (void)setDefaultToneIdentifier:(id)identifier;
- (void)setMediaAtTop:(BOOL)top;
- (void)setNoneAtTop:(BOOL)top;
- (void)setNoneString:(id)string;
- (void)setSelectedToneIdentifier:(id)identifier;
- (void)setShowsDefault:(BOOL)default;
- (void)setShowsIgnoreMute:(BOOL)mute;
- (void)setShowsNone:(BOOL)none;
- (void)setShowsNothingSelected:(BOOL)selected;
- (void)setShowsReflectionRemixesInline:(BOOL)inline;
- (void)setShowsToneStore:(BOOL)store;
- (void)setShowsVibrations:(BOOL)vibrations;
- (void)setTargetDevice:(int64_t)device;
- (void)setToneStoreDownloadController:(id)controller;
- (void)setTopic:(id)topic;
- (void)storeAccountNameDidChange:(id)change;
- (void)toneStoreDownloadsDidFinish:(id)finish;
- (void)toneStoreDownloadsDidProgress:(id)progress;
- (void)toneStoreDownloadsDidStart:(id)start;
@end

@implementation TKTonePickerController

- (TKTonePickerController)initWithAlertType:(int64_t)type
{
  v24 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = TKTonePickerController;
  v4 = [(TKTonePickerController *)&v21 init];
  v5 = v4;
  if (v4)
  {
    if ((type - 1) > 0x1C)
    {
      mEMORY[0x277D71F78] = v4;
      v5 = 0;
    }

    else
    {
      v4->_alertType = type;
      [(TKTonePickerController *)v4 _reloadStateForBasicBehavior];
      mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
      [(TKTonePickerController *)v5 _setToneManager:mEMORY[0x277D71F78]];
      v5->_showsDefault = 0;
      v5->_showsToneStore = 0;
      v5->_showsVibrations = 0;
      v7 = [mEMORY[0x277D71F78] currentToneIdentifierForAlertType:type];
      v8 = [v7 copy];
      defaultToneIdentifier = v5->_defaultToneIdentifier;
      v5->_defaultToneIdentifier = v8;

      v5->_defaultToneIdentifierWasExplicitlySet = 0;
      *&v5->_showsIgnoreMute = 0;
      v5->_toneStoreDownloadButtonState = 3;
      _latestRedownloadAllTonesDate = [objc_opt_class() _latestRedownloadAllTonesDate];
      if (_latestRedownloadAllTonesDate && ([MEMORY[0x277CBEAA8] date], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceDate:", _latestRedownloadAllTonesDate), v13 = v12, v11, v13 <= 900.0))
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
      mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
      supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

      if (supportsReflectionRemixes)
      {
        [(TKTonePickerController *)v5 _setSelectedRemixRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
      }

      _indexPathForNone = [(TKTonePickerController *)v5 _indexPathForNone];
      [(TKTonePickerController *)v5 _setSelectedToneIndexPath:_indexPathForNone];

      [(TKTonePickerController *)v5 _resetSelectedVibrationIdentifierForcingUpdatingVibrationName:1];
      [(TKTonePickerController *)v5 _reloadTones];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel__handleAlertOverridePolicyDidChangeNotification_ name:*MEMORY[0x277D72080] object:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D72080] object:0];
  if (self->_showsVibrations)
  {
    [(TKTonePickerController *)self _unregisterForUserGeneratedVibrationsDidChangeNotification];
  }

  [(TLToneStoreDownloadController *)self->_toneStoreDownloadController removeObserver:self];

  v4.receiver = self;
  v4.super_class = TKTonePickerController;
  [(TKTonePickerController *)&v4 dealloc];
}

- (void)setTopic:(id)topic
{
  topicCopy = topic;
  if (self->_topic != topicCopy)
  {
    v10 = topicCopy;
    v5 = [(NSString *)topicCopy copy];
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
    topicCopy = v10;
  }
}

- (void)setDefaultToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy length];
  v5 = identifierCopy;
  if (!v4)
  {
    toneManager = self->_toneManager;
    alertType = self->_alertType;
    topic = [(TKTonePickerController *)self topic];
    v5 = [(TLToneManager *)toneManager currentToneIdentifierForAlertType:alertType topic:topic];
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

- (void)setShowsToneStore:(BOOL)store
{
  if (self->_showsToneStore != store)
  {
    storeCopy = store;
    self->_showsToneStore = store;
    _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
    if (_selectedToneIndexPath)
    {
      tk_section = [_selectedToneIndexPath tk_section];
      tk_row = [_selectedToneIndexPath tk_row];
      if (tk_section <= 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }

      if (storeCopy)
      {
        v8 = 1;
      }

      v9 = [MEMORY[0x277CCAA70] tk_indexPathForRow:tk_row inSection:v8 + tk_section];
      [(TKTonePickerController *)self _setSelectedToneIndexPath:v9];
    }

    [(TKTonePickerController *)self _invalidatePickerItemCaches];
    [(TKTonePickerController *)self _didReloadTones];
  }
}

- (void)setShowsDefault:(BOOL)default
{
  if (self->_showsDefault == default)
  {
    return;
  }

  defaultCopy = default;
  _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
  v6 = [(TKTonePickerController *)self _isNoneGroupAtIndexPath:_selectedToneIndexPath];
  v7 = [(TKTonePickerController *)self _isDefaultGroupAtIndexPath:_selectedToneIndexPath];
  self->_showsDefault = defaultCopy;
  if (defaultCopy)
  {
    if (_selectedToneIndexPath == 0 || v6)
    {
      _indexPathForDefaultGroup = [(TKTonePickerController *)self _indexPathForDefaultGroup];
LABEL_15:
      v12 = _indexPathForDefaultGroup;
      [(TKTonePickerController *)self _setSelectedToneIndexPath:_indexPathForDefaultGroup];

      goto LABEL_16;
    }

LABEL_9:
    tk_section = [_selectedToneIndexPath tk_section];
    tk_row = [_selectedToneIndexPath tk_row];
    if (tk_section <= 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1;
    }

    if (defaultCopy)
    {
      v11 = 1;
    }

    _indexPathForDefaultGroup = [MEMORY[0x277CCAA70] tk_indexPathForRow:tk_row inSection:v11 + tk_section];
    goto LABEL_15;
  }

  if (v7)
  {
    if (!self->_showsNone)
    {
      [(TKTonePickerController *)self _setSelectedToneIndexPath:0];
      goto LABEL_16;
    }

    _indexPathForDefaultGroup = [(TKTonePickerController *)self _indexPathForNone];
    goto LABEL_15;
  }

  if (_selectedToneIndexPath)
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

- (void)setShowsNone:(BOOL)none
{
  if (self->_showsNone != none)
  {
    noneCopy = none;
    _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
    v6 = [(TKTonePickerController *)self _isNoneGroupAtIndexPath:_selectedToneIndexPath];
    self->_showsNone = noneCopy;
    self->_showsNoneWasExplicitlySet = 1;
    if (_selectedToneIndexPath || !noneCopy)
    {
      if (!noneCopy && v6)
      {
        [(TKTonePickerController *)self _setSelectedToneIndexPath:0];
      }
    }

    else
    {
      _indexPathForNone = [(TKTonePickerController *)self _indexPathForNone];
      [(TKTonePickerController *)self _setSelectedToneIndexPath:_indexPathForNone];
    }

    [(TKTonePickerController *)self _reloadTones];
  }
}

- (void)setNoneAtTop:(BOOL)top
{
  if (self->_noneAtTop != top)
  {
    _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
    v6 = [(TKTonePickerController *)self _isNoneGroupAtIndexPath:_selectedToneIndexPath];
    self->_noneAtTop = top;
    if (_selectedToneIndexPath || !self->_showsNone)
    {
      if (!self->_showsNone && v6)
      {
        [(TKTonePickerController *)self _setSelectedToneIndexPath:0];
      }
    }

    else
    {
      _indexPathForNone = [(TKTonePickerController *)self _indexPathForNone];
      [(TKTonePickerController *)self _setSelectedToneIndexPath:_indexPathForNone];
    }

    [(TKTonePickerController *)self _reloadTones];
  }
}

- (void)setNoneString:(id)string
{
  stringCopy = string;
  noneString = self->_noneString;
  if (noneString != stringCopy)
  {
    v8 = stringCopy;
    if (![(NSString *)noneString isEqualToString:stringCopy])
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

- (void)setShowsNothingSelected:(BOOL)selected
{
  if (self->_showsNothingSelected != selected)
  {
    self->_showsNothingSelected = selected;
    [(TKTonePickerController *)self _invalidatePickerItemCaches];

    [(TKTonePickerController *)self _didReloadTones];
  }
}

- (void)setTargetDevice:(int64_t)device
{
  if (self->_targetDevice != device)
  {
    self->_targetDevice = device;
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

- (id)pickerItemForSection:(int64_t)section
{
  v5 = [(TKTonePickerController *)self _cachedPickerItemForSection:?];
  if (!v5)
  {
    if (self->_showsIgnoreMute && (-[TKTonePickerController _indexPathForIgnoreMuteGroup](self, "_indexPathForIgnoreMuteGroup"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 tk_section], v6, v7 == section))
    {
      _footerTextForIgnoreMuteGroup = [(TKTonePickerController *)self _footerTextForIgnoreMuteGroup];
      _indexPathForFirstToneGroup = 0;
    }

    else
    {
      if (!self->_showsVibrations || (-[TKTonePickerController _indexPathForVibrationGroup](self, "_indexPathForVibrationGroup"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 tk_section], v10, v11 != section))
      {
        if (self->_showsToneStore)
        {
          _indexPathForToneStoreGroup = [(TKTonePickerController *)self _indexPathForToneStoreGroup];
          tk_section = [_indexPathForToneStoreGroup tk_section];

          if (tk_section == section)
          {
            if (self->_toneStoreDownloadButtonState == 3)
            {
              v14 = 1;
            }

            else
            {
              v14 = 2;
            }

            _indexPathForFirstToneGroup = TLLocalizedString();
            _footerTextForIgnoreMuteGroup = [(TKTonePickerController *)self _footerTextForToneStoreGroup];
            v13 = 0x7FFFFFFFFFFFFFFFLL;
            v12 = 4;
            goto LABEL_33;
          }
        }

        if (self->_showsDefault)
        {
          _indexPathForDefaultGroup = [(TKTonePickerController *)self _indexPathForDefaultGroup];
          tk_section2 = [_indexPathForDefaultGroup tk_section];

          if (tk_section2 == section)
          {
            _indexPathForFirstToneGroup = TLLocalizedString();
            _footerTextForIgnoreMuteGroup = 0;
            v13 = 0x7FFFFFFFFFFFFFFFLL;
            v14 = 1;
            v12 = 1;
            goto LABEL_33;
          }
        }

        if (!self->_showsNone || -[TKTonePickerController isNoneAtTop](self, "isNoneAtTop") || (-[TKTonePickerController _indexPathForNone](self, "_indexPathForNone"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 tk_section], v19, v20 != section))
        {
          if (-[TKTonePickerController _showsMedia](self, "_showsMedia") && (-[TKTonePickerController _indexPathForMediaGroup](self, "_indexPathForMediaGroup"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 tk_section], v21, v22 == section))
          {
            v14 = [(TKTonePickerController *)self _mediaItemsCount]+ 1;
            _indexPathForFirstToneGroup = TLLocalizedString();
            _footerTextForIgnoreMuteGroup = 0;
            v13 = 0x7FFFFFFFFFFFFFFFLL;
            v12 = 3;
          }

          else
          {
            _indexPathForFirstToneGroup = [(TKTonePickerController *)self _indexPathForFirstToneGroup];

            if (_indexPathForFirstToneGroup)
            {
              _indexPathForFirstToneGroup2 = [(TKTonePickerController *)self _indexPathForFirstToneGroup];
              v13 = section - [_indexPathForFirstToneGroup2 tk_section];

              if ((v13 & 0x8000000000000000) == 0 && v13 < [(NSMutableArray *)self->_toneGroupLists count]&& v13 < [(NSMutableArray *)self->_toneGroupNames count])
              {
                v24 = [(NSMutableArray *)self->_toneGroupLists objectAtIndex:v13];
                v14 = [v24 count];

                _indexPathForFirstToneGroup = [(NSMutableArray *)self->_toneGroupNames objectAtIndex:v13];
                if (![_indexPathForFirstToneGroup length])
                {

                  _indexPathForFirstToneGroup = 0;
                }

                _footerTextForIgnoreMuteGroup = 0;
                v12 = 2;
                goto LABEL_33;
              }

              _indexPathForFirstToneGroup = 0;
            }

            _footerTextForIgnoreMuteGroup = 0;
            v14 = 0;
            v12 = 0;
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }

LABEL_33:
          v5 = objc_alloc_init(TKTonePickerSectionItem);
          [(TKPickerSectionItem *)v5 _setText:_indexPathForFirstToneGroup];
          [(TKPickerSectionItem *)v5 _setFooterText:_footerTextForIgnoreMuteGroup];
          [(TKTonePickerSectionItem *)v5 _setNumberOfChildren:v14];
          [(TKPickerItem *)v5 _setSection:section];
          [(TKTonePickerSectionItem *)v5 _setSectionHeader:v12];
          [(TKTonePickerSectionItem *)v5 _setRegularToneSectionIndex:v13];
          [(TKTonePickerSectionItem *)v5 _setParentTonePickerController:self];
          [(TKTonePickerController *)self _cachePickerSectionItem:v5 forSection:section];

          goto LABEL_34;
        }
      }

      _indexPathForFirstToneGroup = 0;
      _footerTextForIgnoreMuteGroup = 0;
    }

    v12 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 1;
    goto LABEL_33;
  }

LABEL_34:

  return v5;
}

- (id)_pickerRowItemAtIndex:(int64_t)index inSectionForItem:(id)item
{
  v72 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = [(TKTonePickerController *)self _cachedPickerRowItemAtIndex:index inSectionForItem:itemCopy];
  if (!v7)
  {
    v8 = [MEMORY[0x277CCAA70] tk_indexPathForRow:index inSection:{objc_msgSend(itemCopy, "section")}];
    if ([(TKTonePickerController *)self _isDividerAtIndexPath:v8])
    {
      v7 = objc_alloc_init(TKPickerDividerItem);
      -[TKPickerItem _setSection:](v7, "_setSection:", [v8 tk_section]);
      -[TKPickerRowItem _setRow:](v7, "_setRow:", [v8 tk_row]);
      v9 = 0;
      ignoreMute = 0;
      v58 = 0;
      v55 = 0;
      v56 = 0;
      v53 = 0;
      v54 = 0;
      v10 = 0;
      _classicAlertToneIdentifiers = 0;
      _nameOfSelectedVibrationIdentifier = 0;
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
        _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
        v30 = [_selectedToneIndexPath isEqual:v29];
      }

      [(TKPickerDividerItem *)v9 _setShowsCheckmark:v30];
      [(TKPickerDividerItem *)v9 _setItemKind:v54];
      [(TKPickerDividerItem *)v9 _setShowsDisclosureIndicator:v56];
      [(TKPickerDividerItem *)v9 _setNeedsRoomForCheckmark:v12];
      [(TKPickerRowItem *)v9 _setWantsIndentedLayout:HIDWORD(ignoreMute)];
      [(TKPickerDividerItem *)v9 _setNeedsActivityIndicator:v10];
      [(TKPickerDividerItem *)v9 _setNeedsSwitch:HIDWORD(v55)];
      [(TKPickerDividerItem *)v9 _setSwitchedOn:ignoreMute];
      [(TKPickerDividerItem *)v9 _setNeedsDownloadProgress:v53];
      LODWORD(v32) = v11;
      [(TKPickerDividerItem *)v9 _setDownloadProgress:v32];
      [(TKPickerDividerItem *)v9 _setShouldTintText:v55];
      [(TKPickerDividerItem *)v9 _setShouldPreventSelection:HIDWORD(v53)];
      [(TKPickerDividerItem *)v9 _setText:v58];
      [(TKPickerDividerItem *)v9 _setDetailText:_nameOfSelectedVibrationIdentifier];
      if ([_classicAlertToneIdentifiers count])
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
        [_classicAlertToneIdentifiers enumerateObjectsUsingBlock:v61];
        v35 = [v34 copy];
      }

      else
      {
        v35 = 0;
      }

      [(TKPickerDividerItem *)v9 _setChildrenToneClassicsPickerItems:v35];
      [(TKTonePickerController *)self _cachePickerRowItem:v7 atIndex:index inSectionForItem:itemCopy];

      goto LABEL_57;
    }

    v13 = objc_alloc_init(TKTonePickerItem);
    -[TKPickerItem _setSection:](v13, "_setSection:", [v8 tk_section]);
    -[TKPickerRowItem _setRow:](v13, "_setRow:", [v8 tk_row]);
    [(TKTonePickerItem *)v13 _setParentSectionItem:itemCopy];
    v7 = v13;
    if ([(TKTonePickerController *)self _isIgnoreMuteGroupAtIndexPath:v8])
    {
      v58 = TLLocalizedString();
      ignoreMute = [(TKTonePickerController *)self ignoreMute];
      v10 = 0;
      v12 = 0;
      _classicAlertToneIdentifiers = 0;
      _nameOfSelectedVibrationIdentifier = 0;
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
      _nameOfSelectedVibrationIdentifier = [(TKTonePickerController *)self _nameOfSelectedVibrationIdentifier];
      TLLocalizedString();
      v58 = ignoreMute = 0;
      v54 = 0;
      v55 = 0;
      v53 = 0;
      v10 = 0;
      v12 = 0;
      _classicAlertToneIdentifiers = 0;
      v56 = 1;
      v11 = 0;
LABEL_49:
      v9 = v7;
      goto LABEL_50;
    }

    if ([(TKTonePickerController *)self _isToneStoreGroupAtIndexPath:v8])
    {
      v11 = 0;
      if (index != 1)
      {
        if (!index)
        {
LABEL_11:
          TLLocalizedString();
          v58 = ignoreMute = 0;
          v53 = 0;
          v54 = 0;
          v10 = 0;
          v12 = 0;
          _classicAlertToneIdentifiers = 0;
          _nameOfSelectedVibrationIdentifier = 0;
          v56 = 0;
          v55 = 1;
          goto LABEL_49;
        }

        LODWORD(ignoreMute) = 0;
        v55 = 0;
        HIDWORD(v53) = 0;
        v10 = 0;
        v12 = 0;
        _classicAlertToneIdentifiers = 0;
        _nameOfSelectedVibrationIdentifier = 0;
        v58 = 0;
LABEL_26:
        LODWORD(v53) = 0;
        HIDWORD(ignoreMute) = 0;
        v56 = 0;
        v54 = 0;
        goto LABEL_49;
      }

      _classicAlertToneIdentifiers = 0;
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
          _classicAlertToneIdentifiers = 0;
          LODWORD(ignoreMute) = 0;
          v55 = 0;
          HIDWORD(v53) = 0;
          v10 = 0;
          v12 = 0;
          _nameOfSelectedVibrationIdentifier = 0;
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
          v58 = ignoreMute = 0;
          v55 = 0;
          v56 = 0;
          v12 = 0;
          _classicAlertToneIdentifiers = 0;
          _nameOfSelectedVibrationIdentifier = 0;
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
      _nameOfSelectedVibrationIdentifier = 0;
      v58 = 0;
      ignoreMute = 0;
      v56 = 0;
      v54 = 0;
      goto LABEL_50;
    }

    if ([(TKTonePickerController *)self _isDefaultGroupAtIndexPath:v8])
    {
      defaultToneIdentifier = [(TKTonePickerController *)self defaultToneIdentifier];
      if (!defaultToneIdentifier)
      {
        v15 = TLLogGeneral();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

        if (v16)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
          v18 = TLLogGeneral();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            lastPathComponent = [v17 lastPathComponent];
            callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
            *buf = 136381443;
            v65 = "[TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:]";
            v66 = 2113;
            v67 = lastPathComponent;
            v68 = 2049;
            v69 = 580;
            v70 = 2113;
            v71 = callStackSymbols;
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

      v22 = [(TKTonePickerController *)self _nameForToneIdentifier:defaultToneIdentifier];
      goto LABEL_46;
    }

    if ([(TKTonePickerController *)self _isNoneGroupAtIndexPath:v8])
    {
      noneString = [(TKTonePickerController *)self noneString];
      defaultToneIdentifier = noneString;
      if (noneString)
      {
        v22 = noneString;
      }

      else
      {
        v22 = TLLocalizedString();
      }

      goto LABEL_46;
    }

    if ([(TKTonePickerController *)self _isMediaGroupAtIndexPath:v8])
    {
      _mediaItemsCount = [(TKTonePickerController *)self _mediaItemsCount];
      if ([v8 tk_row] >= _mediaItemsCount)
      {
        TLLocalizedString();
        v58 = ignoreMute = 0;
        v54 = 0;
        v55 = 0;
        v53 = 0;
        v10 = 0;
        _classicAlertToneIdentifiers = 0;
        _nameOfSelectedVibrationIdentifier = 0;
        v11 = 0;
        v12 = 1;
        v9 = v7;
        v56 = 1;
        goto LABEL_50;
      }

      defaultToneIdentifier = [(TKTonePickerController *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v58 = 0;
        goto LABEL_47;
      }

      v22 = [defaultToneIdentifier tonePickerController:self titleOfMediaItemAtIndex:{objc_msgSend(v8, "tk_row")}];
LABEL_46:
      v58 = v22;
LABEL_47:

      v56 = 0;
      ignoreMute = 0;
      v54 = 0;
      v55 = 0;
      v53 = 0;
      v10 = 0;
      _classicAlertToneIdentifiers = 0;
      _nameOfSelectedVibrationIdentifier = 0;
      v11 = 0;
LABEL_48:
      v12 = 1;
      goto LABEL_49;
    }

    v25 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:v8];
    if (![v25 length] && !self->_showsDefault)
    {
      defaultToneIdentifier2 = [(TKTonePickerController *)self defaultToneIdentifier];

      v25 = defaultToneIdentifier2;
    }

    if ([v25 isEqualToString:@"<classic_alert_tone_identifier>"])
    {
      v58 = TLLocalizedString();
      _classicAlertToneIdentifiers = [(TKTonePickerController *)self _classicAlertToneIdentifiers];
      if ([(TKTonePickerController *)self _selectedClassicAlertToneIndex]== 0x7FFFFFFFFFFFFFFFLL)
      {
        _nameOfSelectedVibrationIdentifier = 0;
        HIDWORD(ignoreMute) = 0;
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

        LODWORD(ignoreMute) = 0;
        v55 = 0;
        HIDWORD(v53) = 0;
        v10 = 0;
        goto LABEL_48;
      }

      selectedToneIdentifier = [(TKTonePickerController *)self selectedToneIdentifier];
      _nameOfSelectedVibrationIdentifier = [(TKTonePickerController *)self _nameForToneIdentifier:selectedToneIdentifier];
      HIDWORD(ignoreMute) = 0;
      v56 = 1;
      v39 = 2;
      goto LABEL_71;
    }

    if ([v25 isEqualToString:@"<classic_ringtone_identifier>"])
    {
      v58 = TLLocalizedString();
      _classicAlertToneIdentifiers = [(TKTonePickerController *)self _classicRingtoneIdentifiers];
      if ([(TKTonePickerController *)self _selectedClassicRingtoneIndex]== 0x7FFFFFFFFFFFFFFFLL)
      {
        _nameOfSelectedVibrationIdentifier = 0;
        HIDWORD(ignoreMute) = 0;
        v56 = 1;
        v27 = 1;
        goto LABEL_68;
      }

      selectedToneIdentifier = [(TKTonePickerController *)self selectedToneIdentifier];
      _nameOfSelectedVibrationIdentifier = [(TKTonePickerController *)self _nameForToneIdentifier:selectedToneIdentifier];
      HIDWORD(ignoreMute) = 0;
      v54 = 1;
      v56 = 1;
    }

    else
    {
      mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
      if ([mEMORY[0x277D71F68] supportsReflectionRemixes])
      {
        v41 = [v25 isEqualToString:@"<remix_ringtone_identifier>"];

        if (v41)
        {
          v58 = TLLocalizedString();
          if ([(TKTonePickerController *)self _selectedRemixRingtoneIndex]== 0x7FFFFFFFFFFFFFFFLL)
          {
            _classicAlertToneIdentifiers = 0;
            _nameOfSelectedVibrationIdentifier = 0;
            HIDWORD(ignoreMute) = 0;
            v56 = 1;
            v27 = 4;
            goto LABEL_68;
          }

          selectedToneIdentifier = [(TKTonePickerController *)self selectedToneIdentifier];
          [(TKTonePickerController *)self _annotatedNameForToneIdentifier:selectedToneIdentifier];
          _nameOfSelectedVibrationIdentifier = _classicAlertToneIdentifiers = 0;
          HIDWORD(ignoreMute) = 0;
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
      mEMORY[0x277D71F68]2 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
      supportsReflectionRemixes = [mEMORY[0x277D71F68]2 supportsReflectionRemixes];

      if (!supportsReflectionRemixes)
      {
        _classicAlertToneIdentifiers = 0;
        _nameOfSelectedVibrationIdentifier = 0;
        HIDWORD(ignoreMute) = 0;
        v56 = 0;
        v54 = 0;
        goto LABEL_87;
      }

      selectedToneIdentifier = [(TKTonePickerController *)self _indexPathForReflectionRemixHeader];
      if (self->_showsReflectionRemixesInline && (v44 = [v8 tk_section], v44 == objc_msgSend(selectedToneIdentifier, "tk_section")) && (v45 = objc_msgSend(v8, "tk_row"), v45 > objc_msgSend(selectedToneIdentifier, "tk_row")))
      {
        tk_row = [v8 tk_row];
        tk_row2 = [selectedToneIdentifier tk_row];
        _remixRingtoneIdentifiers = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
        HIDWORD(ignoreMute) = tk_row <= [_remixRingtoneIdentifiers count] + tk_row2;

        _classicAlertToneIdentifiers = 0;
        _nameOfSelectedVibrationIdentifier = 0;
      }

      else
      {
        _classicAlertToneIdentifiers = 0;
        _nameOfSelectedVibrationIdentifier = 0;
        HIDWORD(ignoreMute) = 0;
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

- (id)_toneClassicsPickerItemAtIndex:(int64_t)index withToneIdentifier:(id)identifier belowTonePickerItem:(id)item
{
  identifierCopy = identifier;
  itemCopy = item;
  itemKind = [itemCopy itemKind];
  if (itemKind == 2)
  {
    _selectedClassicAlertToneIndex = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
    goto LABEL_5;
  }

  if (itemKind == 1)
  {
    _selectedClassicAlertToneIndex = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
LABEL_5:
    v12 = _selectedClassicAlertToneIndex;
    goto LABEL_7;
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
  v13 = [(TKTonePickerController *)self _annotatedNameForToneIdentifier:identifierCopy];
  v14 = objc_alloc_init(TKToneClassicsPickerItem);
  [(TKTonePickerItem *)v14 _setItemKind:0];
  [(TKPickerSelectableItem *)v14 _setText:v13];
  [(TKPickerSelectableItem *)v14 _setShowsCheckmark:v12 == index];
  [(TKTonePickerItem *)v14 _setNeedsRoomForCheckmark:1];
  -[TKPickerItem _setSection:](v14, "_setSection:", [itemCopy section]);
  -[TKPickerRowItem _setRow:](v14, "_setRow:", [itemCopy row]);
  [(TKToneClassicsPickerItem *)v14 _setClassicToneIndex:index];
  [(TKToneClassicsPickerItem *)v14 _setParentItem:itemCopy];

  return v14;
}

- (id)_cachedPickerItemForSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_cachedPickerSectionItems count]<= section)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_cachedPickerSectionItems objectAtIndex:section];
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

- (void)_cachePickerSectionItem:(id)item forSection:(int64_t)section
{
  itemCopy = item;
  if (itemCopy)
  {
    v11 = itemCopy;
    cachedPickerSectionItems = self->_cachedPickerSectionItems;
    if (!cachedPickerSectionItems)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = self->_cachedPickerSectionItems;
      self->_cachedPickerSectionItems = v8;

      cachedPickerSectionItems = self->_cachedPickerSectionItems;
    }

    [(NSMutableArray *)cachedPickerSectionItems tk_ensureHasItemsOrNullUpToIndex:section];
    v10 = [(NSMutableArray *)self->_cachedPickerSectionItems objectAtIndex:section];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 _setParentTonePickerController:0];
    }

    [(NSMutableArray *)self->_cachedPickerSectionItems replaceObjectAtIndex:section withObject:v11];

    itemCopy = v11;
  }
}

- (id)_cachedPickerRowItemAtIndex:(int64_t)index inSectionForItem:(id)item
{
  section = [item section];
  if (section >= [(NSMutableArray *)self->_cachedPickerRowItems count])
  {
    v9 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_cachedPickerRowItems objectAtIndex:section];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      if ([v8 count] <= index)
      {
        v9 = 0;
        v7 = v8;
      }

      else
      {
        v7 = [v8 objectAtIndex:index];

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

- (void)_cachePickerRowItem:(id)item atIndex:(int64_t)index inSectionForItem:(id)forItem
{
  itemCopy = item;
  forItemCopy = forItem;
  if (!itemCopy)
  {
    goto LABEL_13;
  }

  if (!self->_cachedPickerRowItems)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cachedPickerRowItems = self->_cachedPickerRowItems;
    self->_cachedPickerRowItems = v9;
  }

  section = [forItemCopy section];
  if (section >= [(NSMutableArray *)self->_cachedPickerRowItems count])
  {
    goto LABEL_9;
  }

  v12 = [(NSMutableArray *)self->_cachedPickerRowItems objectAtIndex:section];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_9:
    [(NSMutableArray *)self->_cachedPickerRowItems tk_ensureHasItemsOrNullUpToIndex:section];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableArray *)self->_cachedPickerRowItems replaceObjectAtIndex:section withObject:v12];
    goto LABEL_10;
  }

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  [v12 tk_ensureHasItemsOrNullUpToIndex:index];
  v13 = [v12 objectAtIndex:index];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v13 _setParentSectionItem:0];
  }

  [v12 replaceObjectAtIndex:index withObject:itemCopy];

LABEL_13:
}

- (void)_uncachePickerRowItemAtIndex:(int64_t)index inSectionForItem:(id)item
{
  section = [item section];
  if (section >= [(NSMutableArray *)self->_cachedPickerRowItems count])
  {
    v7 = 0;
    goto LABEL_12;
  }

  v10 = [(NSMutableArray *)self->_cachedPickerRowItems objectAtIndex:section];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    if (!v10)
    {
      goto LABEL_12;
    }

    if ([v10 count] <= index)
    {
      goto LABEL_11;
    }

    v8 = [v10 objectAtIndex:index];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 _setParentSectionItem:0];
    }

    null = [MEMORY[0x277CBEB68] null];
    [v10 replaceObjectAtIndex:index withObject:null];
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
  selfCopy = self;
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

  cachedPickerRowItems = selfCopy->_cachedPickerRowItems;
  selfCopy->_cachedPickerRowItems = 0;

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
  _indexPathForToneStoreGroup = [(TKTonePickerController *)self _indexPathForToneStoreGroup];
  if (_indexPathForToneStoreGroup)
  {
    v3 = _indexPathForToneStoreGroup;
    v4 = [MEMORY[0x277CCAA70] tk_indexPathForRow:1 inSection:{objc_msgSend(_indexPathForToneStoreGroup, "tk_section")}];
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

- (BOOL)_isReflectionHeaderAtIndexPath:(id)path
{
  pathCopy = path;
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  v7 = 0;
  if (pathCopy && supportsReflectionRemixes)
  {
    _indexPathForReflectionRemixHeader = [(TKTonePickerController *)self _indexPathForReflectionRemixHeader];
    v9 = pathCopy;
    v10 = _indexPathForReflectionRemixHeader;
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
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
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
    _showsMedia = [(TKTonePickerController *)self _showsMedia];
    v3 = [MEMORY[0x277CCAA70] tk_indexPathForRow:0 inSection:v4 + _showsMedia];
  }

  else
  {
    v3 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:*MEMORY[0x277D72068]];
  }

  return v3;
}

- (BOOL)_isIgnoreMuteGroupAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  v6 = 0;
  if (pathCopy && self->_showsIgnoreMute)
  {
    if ([pathCopy tk_row])
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

- (BOOL)_isVibrationGroupAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  v6 = 0;
  if (pathCopy && self->_showsVibrations)
  {
    showsIgnoreMute = self->_showsIgnoreMute;
    if ([pathCopy tk_row])
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

- (BOOL)_isToneStoreGroupAtIndexPath:(id)path
{
  result = 0;
  if (path)
  {
    if (self->_showsToneStore)
    {
      v5 = self->_showsVibrations + self->_showsIgnoreMute;
      return [path tk_section] == v5;
    }
  }

  return result;
}

- (BOOL)_isDefaultGroupAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  v6 = 0;
  if (pathCopy && self->_showsDefault)
  {
    showsIgnoreMute = self->_showsIgnoreMute;
    showsVibrations = self->_showsVibrations;
    showsToneStore = self->_showsToneStore;
    if ([pathCopy tk_row])
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

- (BOOL)_isNoneGroupAtIndexPath:(id)path
{
  pathCopy = path;
  if (!self->_showsNone)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  isNoneAtTop = [(TKTonePickerController *)self isNoneAtTop];
  v6 = 0;
  if (pathCopy && !isNoneAtTop)
  {
    v7 = [(NSMutableArray *)self->_toneGroupLists count];
    showsIgnoreMute = self->_showsIgnoreMute;
    showsVibrations = self->_showsVibrations;
    showsToneStore = self->_showsToneStore;
    showsDefault = self->_showsDefault;
    _showsMedia = [(TKTonePickerController *)self _showsMedia];
    if (![pathCopy tk_row])
    {
      v6 = [pathCopy tk_section] == v7 + showsIgnoreMute + showsVibrations + showsToneStore + showsDefault + _showsMedia;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

- (BOOL)_isMediaGroupAtIndexPath:(id)path
{
  pathCopy = path;
  _showsMedia = [(TKTonePickerController *)self _showsMedia];
  v6 = 0;
  if (pathCopy && _showsMedia)
  {
    v7 = self->_showsVibrations + self->_showsIgnoreMute + self->_showsToneStore;
    if (![(TKTonePickerController *)self _isMediaAtTop])
    {
      v7 += [(NSMutableArray *)self->_toneGroupLists count]+ self->_showsDefault;
    }

    v6 = [pathCopy tk_section] == v7;
  }

  return v6;
}

- (BOOL)_isDividerAtIndexPath:(id)path
{
  v3 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:path];
  v4 = [v3 isEqualToString:&stru_282E32280];

  return v4;
}

- (id)_indexPathForToneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
    v10 = [v9 indexOfObject:identifierCopy];
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
      _classicAlertToneIdentifiers = [(TKTonePickerController *)self _classicAlertToneIdentifiers];
      v12 = [_classicAlertToneIdentifiers indexOfObject:identifierCopy];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    if ([v9 indexOfObject:v7] != 0x7FFFFFFFFFFFFFFFLL)
    {
      _classicRingtoneIdentifiers = [(TKTonePickerController *)self _classicRingtoneIdentifiers];
      v14 = [_classicRingtoneIdentifiers indexOfObject:identifierCopy];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    sharedCapabilitiesManager = [*(v8 + 3944) sharedCapabilitiesManager];
    supportsReflectionRemixes = [sharedCapabilitiesManager supportsReflectionRemixes];

    if (supportsReflectionRemixes)
    {
      v17 = [v9 indexOfObject:@"<remix_ringtone_identifier>"];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = v17;
        _remixRingtoneIdentifiers = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
        v20 = [_remixRingtoneIdentifiers indexOfObject:identifierCopy];
        v21 = v18;
        selfCopy = self;
        v23 = identifierCopy;
        v24 = v6;
        v25 = v7;
        v26 = v8;
        v27 = v20;

        v28 = v27 == 0x7FFFFFFFFFFFFFFFLL;
        v8 = v26;
        v7 = v25;
        v6 = v24;
        identifierCopy = v23;
        self = selfCopy;
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
    if ([(TKTonePickerController *)self _showsMedia]&& (v47 = [(TKTonePickerController *)self _indexOfMediaItemWithIdentifier:identifierCopy], v47 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v48 = v47;
      v49 = MEMORY[0x277CCAA70];
      _indexPathForMediaGroup = [(TKTonePickerController *)self _indexPathForMediaGroup];
      v46 = [v49 tk_indexPathForRow:v48 inSection:{objc_msgSend(_indexPathForMediaGroup, "tk_section")}];
    }

    else
    {
      v46 = 0;
    }
  }

  return v46;
}

- (id)_identifierOfToneAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy || [(TKTonePickerController *)self _isDefaultGroupAtIndexPath:pathCopy])
  {
LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

  if ([(TKTonePickerController *)self _isNoneGroupAtIndexPath:pathCopy])
  {
    v5 = *MEMORY[0x277D72068];
  }

  else
  {
    tk_section = [pathCopy tk_section];
    tk_row = [pathCopy tk_row];
    if ([(TKTonePickerController *)self _showsMedia])
    {
      tk_section -= [(TKTonePickerController *)self _isMediaAtTop];
    }

    v9 = tk_section - (self->_showsVibrations + self->_showsIgnoreMute + self->_showsToneStore + self->_showsDefault);
    if (v9 < 0 || v9 >= [(NSMutableArray *)self->_toneGroupLists count])
    {
      goto LABEL_3;
    }

    v10 = [(NSMutableArray *)self->_toneGroupLists objectAtIndex:v9];
    v11 = v10;
    if (tk_row < 0 || tk_row >= [v10 count])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v11 objectAtIndex:tk_row];
      if (!self->_showsDefault)
      {
        defaultToneIdentifier = [(TKTonePickerController *)self defaultToneIdentifier];
        v13 = [(TLToneManager *)self->_toneManager _aliasForToneIdentifier:defaultToneIdentifier];
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

- (id)_identifierAtIndexPath:(id)path isMediaItem:(BOOL *)item
{
  pathCopy = path;
  v7 = pathCopy;
  if (pathCopy)
  {
    tk_row = [pathCopy tk_row];
    if ([(TKTonePickerController *)self _isMediaGroupAtIndexPath:v7]&& tk_row < [(TKTonePickerController *)self _mediaItemsCount])
    {
      v9 = [(TKTonePickerController *)self _identifierOfMediaItemAtIndex:tk_row];
      if (!item)
      {
        goto LABEL_10;
      }

      v10 = 1;
    }

    else
    {
      v9 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:v7];
      if (!item)
      {
        goto LABEL_10;
      }

      v10 = 0;
    }

    *item = v10;
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
  _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
  v4 = _selectedToneIndexPath;
  if (_selectedToneIndexPath)
  {
    v5 = -[TKTonePickerController pickerItemForSection:](self, "pickerItemForSection:", [_selectedToneIndexPath tk_section]);
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
  _topLevelSelectedTonePickerItem = [(TKTonePickerController *)self _topLevelSelectedTonePickerItem];
  v4 = _topLevelSelectedTonePickerItem;
  if (!_topLevelSelectedTonePickerItem)
  {
    goto LABEL_11;
  }

  itemKind = [_topLevelSelectedTonePickerItem itemKind];
  v6 = 0;
  if (itemKind <= 1)
  {
    if (itemKind)
    {
      if (itemKind != 1)
      {
        goto LABEL_14;
      }

      _selectedClassicRingtoneIndex = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
      goto LABEL_10;
    }

LABEL_8:
    v8 = v4;
    goto LABEL_13;
  }

  if (itemKind != 2)
  {
    if (itemKind != 4)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  _selectedClassicRingtoneIndex = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
LABEL_10:
  if (_selectedClassicRingtoneIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_14;
  }

  v8 = [v4 childItemAtIndex:_selectedClassicRingtoneIndex];
LABEL_13:
  v6 = v8;
LABEL_14:

  return v6;
}

- (NSString)selectedToneIdentifier
{
  _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
  v4 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:_selectedToneIndexPath];

  if ([v4 isEqualToString:@"<classic_alert_tone_identifier>"])
  {
    _identifierOfSelectedClassicAlertTone = [(TKTonePickerController *)self _identifierOfSelectedClassicAlertTone];
LABEL_5:
    mEMORY[0x277D71F68] = v4;
    v4 = _identifierOfSelectedClassicAlertTone;
LABEL_6:

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"<classic_ringtone_identifier>"])
  {
    _identifierOfSelectedClassicAlertTone = [(TKTonePickerController *)self _identifierOfSelectedClassicRingtone];
    goto LABEL_5;
  }

  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  if (![mEMORY[0x277D71F68] supportsReflectionRemixes])
  {
    goto LABEL_6;
  }

  v8 = [v4 isEqualToString:@"<remix_ringtone_identifier>"];

  if (v8)
  {
    _identifierOfSelectedClassicAlertTone = [(TKTonePickerController *)self _identifierOfSelectedRemixRingtone];
    goto LABEL_5;
  }

LABEL_7:

  return v4;
}

- (void)setSelectedToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  defaultToneIdentifier = identifierCopy;
  if (![identifierCopy length])
  {
    defaultToneIdentifier = identifierCopy;
    if (!self->_showsDefault)
    {
      defaultToneIdentifier = [(TKTonePickerController *)self defaultToneIdentifier];
    }
  }

  self->_selectedToneWasExplicitlySetToDefaultTone = defaultToneIdentifier != identifierCopy;
  [(TKTonePickerController *)self _setSelectedToneIdentifier:defaultToneIdentifier currentlyReloadingTones:0];
}

- (void)_setSelectedToneIdentifier:(id)identifier currentlyReloadingTones:(BOOL)tones
{
  v34 = [(TLToneManager *)self->_toneManager _aliasForToneIdentifier:identifier];
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
    _indexPathForNone = [(TKTonePickerController *)self _indexPathForNone];

    v7 = _indexPathForNone;
  }

  if (!v7)
  {
    if (self->_showsDefault)
    {
      _indexPathForDefaultGroup = [(TKTonePickerController *)self _indexPathForDefaultGroup];
    }

    else
    {
      if (!self->_showsNone)
      {
        v7 = 0;
        goto LABEL_39;
      }

      _indexPathForDefaultGroup = [(TKTonePickerController *)self _indexPathForNone];
    }

    v7 = _indexPathForDefaultGroup;
    if (_indexPathForDefaultGroup)
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
      _classicRingtoneIdentifiers = [(TKTonePickerController *)self _classicRingtoneIdentifiers];
      v16 = [_classicRingtoneIdentifiers indexOfObject:v35];

      _selectedClassicRingtoneIndex = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
      v14 = v16 != _selectedClassicRingtoneIndex;
      if (v16 != _selectedClassicRingtoneIndex)
      {
        [(TKTonePickerController *)self _setSelectedClassicRingtoneIndex:v16];
      }

      [(TKTonePickerController *)self _setSelectedClassicAlertToneIndex:0x7FFFFFFFFFFFFFFFLL];
      goto LABEL_26;
    }

    mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    if ([mEMORY[0x277D71F68] supportsReflectionRemixes])
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

    mEMORY[0x277D71F68]2 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    if ([mEMORY[0x277D71F68]2 supportsReflectionRemixes])
    {
      _remixRingtoneIdentifiers = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
      v23 = [_remixRingtoneIdentifiers containsObject:v35];

      if (v23)
      {
LABEL_35:
        _remixRingtoneIdentifiers2 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
        v25 = [_remixRingtoneIdentifiers2 indexOfObject:v35];

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
    mEMORY[0x277D71F68]3 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    supportsReflectionRemixes = [mEMORY[0x277D71F68]3 supportsReflectionRemixes];

    if (supportsReflectionRemixes)
    {
      [(TKTonePickerController *)self _setSelectedRemixRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
    }

LABEL_43:
    v14 = 0;
    goto LABEL_44;
  }

  _classicAlertToneIdentifiers = [(TKTonePickerController *)self _classicAlertToneIdentifiers];
  v12 = [_classicAlertToneIdentifiers indexOfObject:v35];

  _selectedClassicAlertToneIndex = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
  v14 = v12 != _selectedClassicAlertToneIndex;
  if (v12 != _selectedClassicAlertToneIndex)
  {
    [(TKTonePickerController *)self _setSelectedClassicAlertToneIndex:v12];
  }

  [(TKTonePickerController *)self _setSelectedClassicRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
LABEL_26:
  v18 = v35;

LABEL_27:
  v10 = v18;
LABEL_44:
  _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
  v29 = [_selectedToneIndexPath isEqual:v7];

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
        if (tones)
        {
          goto LABEL_55;
        }

LABEL_54:
        [(TKTonePickerController *)self _invalidatePickerItemCaches];
        [(TKTonePickerController *)self _didReloadTones];
        goto LABEL_55;
      }
    }

    if (tones)
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
  _selectedClassicAlertToneIndex = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
  if (_selectedClassicAlertToneIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = _selectedClassicAlertToneIndex;
    _classicAlertToneIdentifiers = [(TKTonePickerController *)self _classicAlertToneIdentifiers];
    v7 = [_classicAlertToneIdentifiers objectAtIndex:v5];

    v3 = v7;
  }

  return v3;
}

- (id)_identifierOfSelectedClassicRingtone
{
  v3 = *MEMORY[0x277D72068];
  _selectedClassicRingtoneIndex = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
  if (_selectedClassicRingtoneIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = _selectedClassicRingtoneIndex;
    _classicRingtoneIdentifiers = [(TKTonePickerController *)self _classicRingtoneIdentifiers];
    v7 = [_classicRingtoneIdentifiers objectAtIndex:v5];

    v3 = v7;
  }

  return v3;
}

- (id)_identifierOfSelectedRemixRingtone
{
  v3 = *MEMORY[0x277D72068];
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    _selectedRemixRingtoneIndex = [(TKTonePickerController *)self _selectedRemixRingtoneIndex];
    if (_selectedRemixRingtoneIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = _selectedRemixRingtoneIndex;
      _remixRingtoneIdentifiers = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
      v9 = [_remixRingtoneIdentifiers objectAtIndex:v7];

      v3 = v9;
    }
  }

  return v3;
}

- (id)_selectedIdentifier:(BOOL *)identifier
{
  _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
  v6 = [(TKTonePickerController *)self _identifierAtIndexPath:_selectedToneIndexPath isMediaItem:identifier];

  return v6;
}

- (BOOL)didSelectTonePickerItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAA70] tk_indexPathForRow:objc_msgSend(itemCopy inSection:{"row"), objc_msgSend(itemCopy, "section")}];
    [(TKTonePickerController *)self setShowsNothingSelected:0];
    if ([(TKTonePickerController *)self _isIgnoreMuteGroupAtIndexPath:v6])
    {
      v5 = 1;
      [(TKTonePickerController *)self setIgnoreMute:!self->_ignoreMute updateSource:0];
      v7 = 0;
      _identifierOfSelectedRemixRingtone = 0;
      v9 = 0;
      goto LABEL_54;
    }

    if ([(TKTonePickerController *)self _isVibrationGroupAtIndexPath:v6])
    {
      delegate = [(TKTonePickerController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate tonePickerControllerRequestsPresentingVibrationPicker:self];
      }

      goto LABEL_9;
    }

    if ([(TKTonePickerController *)self _isToneStoreGroupAtIndexPath:v6])
    {
      tk_row = [v6 tk_row];
      if (tk_row == 1)
      {
        [(TKTonePickerController *)self _redownloadAllTones];
      }

      else if (!tk_row)
      {
        [(TKTonePickerController *)self _goToStore];
      }

LABEL_38:
      v7 = 0;
      _identifierOfSelectedRemixRingtone = 0;
LABEL_39:
      v9 = 0;
      v5 = 1;
      goto LABEL_54;
    }

    if ([(TKTonePickerController *)self _isNoneGroupAtIndexPath:v6])
    {
      _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
      v13 = [(TKTonePickerController *)self _isNoneGroupAtIndexPath:_selectedToneIndexPath];

      v7 = *MEMORY[0x277D72068];
      [(TKTonePickerController *)self stopPlayingWithFadeOut:0];
      v9 = 0;
      if (!v13)
      {
LABEL_16:
        v14 = 0;
LABEL_17:
        _selectedToneIndexPath2 = [(TKTonePickerController *)self _selectedToneIndexPath];
        [(TKTonePickerController *)self _didUpdateCheckedStatus:0 ofPickerItemForRowAtIndexPath:_selectedToneIndexPath2];
        [(TKTonePickerController *)self _didUpdateDetailText:0 ofPickerItemForRowAtIndexPath:_selectedToneIndexPath2];
        [(TKTonePickerController *)self _didUpdateCheckedStatus:1 ofPickerItemForRowAtIndexPath:v6];
        [(TKTonePickerController *)self _setSelectedToneIndexPath:v6];
        mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
        supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

        if (supportsReflectionRemixes)
        {
          v36 = v14;
          _indexPathForReflectionRemixHeader = [(TKTonePickerController *)self _indexPathForReflectionRemixHeader];
          defaultToneIdentifier = v7;
          if (!defaultToneIdentifier)
          {
            defaultToneIdentifier = [(TKTonePickerController *)self defaultToneIdentifier];
          }

          _remixRingtoneIdentifiers = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
          v21 = [_remixRingtoneIdentifiers containsObject:defaultToneIdentifier];

          if (v21)
          {
            -[TKTonePickerController _setSelectedRemixRingtoneIndex:](self, "_setSelectedRemixRingtoneIndex:", [v6 tk_row] + ~objc_msgSend(_indexPathForReflectionRemixHeader, "tk_row"));
            v22 = [(TKTonePickerController *)self _annotatedNameForToneIdentifier:defaultToneIdentifier];
            [(TKTonePickerController *)self _didUpdateDetailText:v22 ofPickerItemForRowAtIndexPath:_indexPathForReflectionRemixHeader];
          }

          else
          {
            [(TKTonePickerController *)self _didUpdateDetailText:0 ofPickerItemForRowAtIndexPath:_indexPathForReflectionRemixHeader];
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
      _identifierOfSelectedRemixRingtone = v7;
      goto LABEL_54;
    }

    if ([(TKTonePickerController *)self _isMediaGroupAtIndexPath:v6])
    {
      delegate2 = [(TKTonePickerController *)self delegate];
      tk_row2 = [v6 tk_row];
      if (tk_row2 >= [(TKTonePickerController *)self _mediaItemsCount])
      {
        if (objc_opt_respondsToSelector())
        {
          [delegate2 tonePickerControllerRequestsPresentingMediaItemPicker:self];
        }

        goto LABEL_38;
      }

      v9 = [(TKTonePickerController *)self _identifierOfMediaItemAtIndex:tk_row2];
      _selectedToneIndexPath3 = [(TKTonePickerController *)self _selectedToneIndexPath];
      v26 = [v6 isEqual:_selectedToneIndexPath3];

      if (objc_opt_respondsToSelector())
      {
        [delegate2 tonePickerController:self didSelectMediaItemAtIndex:tk_row2 selectionDidChange:v26 ^ 1u];
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
      _identifierOfSelectedRemixRingtone = 0;
      v9 = 0;
      v5 = 0;
      goto LABEL_54;
    }

    mEMORY[0x277D71F68]2 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    if ([mEMORY[0x277D71F68]2 supportsReflectionRemixes])
    {
      v28 = [(TKTonePickerController *)self _isReflectionHeaderAtIndexPath:v6];

      if (v28)
      {
        v5 = 1;
        [(TKTonePickerController *)self setShowsReflectionRemixesInline:!self->_showsReflectionRemixesInline];
        _remixRingtoneIdentifiers2 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
        toneIdentifier = [(TLAlert *)self->_playingAlert toneIdentifier];
        v31 = [_remixRingtoneIdentifiers2 containsObject:toneIdentifier];

        v7 = 0;
        if (self->_showsReflectionRemixesInline)
        {
          _identifierOfSelectedRemixRingtone = 0;
          v9 = 0;
          goto LABEL_54;
        }

        _identifierOfSelectedRemixRingtone = 0;
        v9 = 0;
        if (!v31)
        {
LABEL_54:

          goto LABEL_55;
        }

        _identifierOfSelectedRemixRingtone = [(TKTonePickerController *)self _identifierOfSelectedRemixRingtone];
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
      delegate3 = [(TKTonePickerController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate3 tonePickerController:self requestsPresentingToneClassicsPickerForItem:itemCopy];
      }

      v9 = 0;
      goto LABEL_53;
    }

    _selectedToneIndexPath4 = [(TKTonePickerController *)self _selectedToneIndexPath];
    v35 = [v6 isEqual:_selectedToneIndexPath4];

    if ((v35 & 1) == 0)
    {
      v9 = 0;
      v14 = 1;
      goto LABEL_17;
    }

    _identifierOfSelectedRemixRingtone = v7;
LABEL_58:
    [(TKTonePickerController *)self _togglePlayForToneWithIdentifier:_identifierOfSelectedRemixRingtone];
    goto LABEL_39;
  }

  v5 = [(TKTonePickerController *)self _didSelectToneClassicsPickerItem:itemCopy];
LABEL_55:

  return v5;
}

- (BOOL)_didSelectToneClassicsPickerItem:(id)item
{
  itemCopy = item;
  v5 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:@"<classic_ringtone_identifier>"];
  v6 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:@"<classic_alert_tone_identifier>"];
  section = [itemCopy section];
  classicToneIndex = [itemCopy classicToneIndex];
  if (v5 && section == [v5 tk_section])
  {
    v9 = v5;
    _classicRingtoneIdentifiers = [(TKTonePickerController *)self _classicRingtoneIdentifiers];
    _selectedClassicRingtoneIndex = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
  }

  else
  {
    if (!v6 || section != [v6 tk_section])
    {
      _classicRingtoneIdentifiers = 0;
      v9 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_9;
    }

    v9 = v6;
    _classicRingtoneIdentifiers = [(TKTonePickerController *)self _classicAlertToneIdentifiers];
    _selectedClassicRingtoneIndex = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
  }

  v12 = _selectedClassicRingtoneIndex;
LABEL_9:
  v18 = _classicRingtoneIdentifiers;
  v13 = [_classicRingtoneIdentifiers objectAtIndex:classicToneIndex];
  _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
  if ([v9 isEqual:_selectedToneIndexPath] && classicToneIndex == v12)
  {
    [(TKTonePickerController *)self _togglePlayForToneWithIdentifier:v13];
  }

  else
  {
    v15 = [(TKTonePickerController *)self _nameForToneIdentifier:v13];
    [(TKTonePickerController *)self _didUpdateDetailText:v15 ofPickerItemForRowAtIndexPath:v9];

    if (([v9 isEqual:_selectedToneIndexPath] & 1) == 0)
    {
      [(TKTonePickerController *)self _didUpdateCheckedStatus:0 ofPickerItemForRowAtIndexPath:_selectedToneIndexPath];
      [(TKTonePickerController *)self _didUpdateDetailText:0 ofPickerItemForRowAtIndexPath:_selectedToneIndexPath];
      [(TKTonePickerController *)self _didUpdateCheckedStatus:1 ofPickerItemForRowAtIndexPath:v9];
      [(TKTonePickerController *)self _setSelectedToneIndexPath:v9];
    }

    [(TKTonePickerController *)self _resetSelectedClassicRingtoneIndex];
    [(TKTonePickerController *)self _resetSelectedClassicAlertToneIndex];
    if (v5 && section == [v5 tk_section])
    {
      [(TKTonePickerController *)self _setSelectedClassicRingtoneIndex:classicToneIndex];
      if ([(TKTonePickerController *)self _selectedRemixRingtoneIndex]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        _indexPathForReflectionRemixHeader = [(TKTonePickerController *)self _indexPathForReflectionRemixHeader];
        [(TKTonePickerController *)self _didUpdateDetailText:0 ofPickerItemForRowAtIndexPath:_indexPathForReflectionRemixHeader];
        [(TKTonePickerController *)self _setSelectedRemixRingtoneIndex:0x7FFFFFFFFFFFFFFFLL];
      }
    }

    else if (v6 && section == [v6 tk_section])
    {
      [(TKTonePickerController *)self _setSelectedClassicAlertToneIndex:classicToneIndex];
    }

    [(TKTonePickerController *)self _didUpdateCheckedStatus:1 ofToneClassicsPickerItem:itemCopy];
    [(TKTonePickerController *)self _updateDetailTextOfVibrationItem];
    [(TKTonePickerController *)self _didSelectToneWithIdentifier:v13];
    [(TKTonePickerController *)self _playToneWithIdentifier:v13];
  }

  return 1;
}

- (BOOL)canDeleteTonePickerItem:(id)item
{
  v4 = MEMORY[0x277CCAA70];
  itemCopy = item;
  v6 = [itemCopy row];
  section = [itemCopy section];

  v8 = [v4 tk_indexPathForRow:v6 inSection:section];
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

- (void)deleteTonePickerItem:(id)item
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (![(TKTonePickerController *)self canDeleteTonePickerItem:itemCopy])
  {
    v5 = TLLogGeneral();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

    if (v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
      v8 = TLLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v7 lastPathComponent];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        *buf = 136381443;
        v24 = "[TKTonePickerController deleteTonePickerItem:]";
        v25 = 2113;
        v26 = lastPathComponent;
        v27 = 2049;
        v28 = 1625;
        v29 = 2113;
        v30 = callStackSymbols;
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
      [(TKTonePickerController *)itemCopy deleteTonePickerItem:v11];
    }
  }

  section = [itemCopy section];
  v13 = [itemCopy row];
  v14 = [MEMORY[0x277CCAA70] tk_indexPathForRow:v13 inSection:section];
  v15 = [(TKTonePickerController *)self _identifierOfToneAtIndexPath:v14];
  v16 = v15;
  if (v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__TKTonePickerController_deleteTonePickerItem___block_invoke;
    v18[3] = &unk_2783164B0;
    v18[4] = self;
    v21 = section;
    v22 = v13;
    v19 = v15;
    v20 = itemCopy;
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

- (void)_reloadTonesForExternalChange:(BOOL)change shouldSkipDelegateFullReload:(BOOL)reload
{
  changeCopy = change;
  v119 = *MEMORY[0x277D85DE8];
  v114 = 0;
  if (!self->_shouldFreezeContentsOriginatingFromToneManager)
  {
    [(TKTonePickerController *)self _reloadMediaItems];
  }

  [(TKTonePickerController *)self _invalidatePickerItemCaches];
  _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
  v8 = [(TKTonePickerController *)self _isDefaultGroupAtIndexPath:_selectedToneIndexPath];

  HIDWORD(v88) = v8;
  if (v8)
  {
    LODWORD(v88) = 0;
    v92 = 0;
    v96 = 0;
    goto LABEL_14;
  }

  _selectedToneIndexPath2 = [(TKTonePickerController *)self _selectedToneIndexPath];
  v10 = [(TKTonePickerController *)self _isNoneGroupAtIndexPath:_selectedToneIndexPath2];

  if (v10)
  {
    v92 = 0;
    v96 = 0;
    LODWORD(v88) = 1;
    goto LABEL_14;
  }

  _selectedToneIndexPath3 = [(TKTonePickerController *)self _selectedToneIndexPath];
  v12 = [(TKTonePickerController *)self _identifierAtIndexPath:_selectedToneIndexPath3 isMediaItem:&v114];

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
      defaultToneIdentifier = [(TKTonePickerController *)self defaultToneIdentifier];

      LODWORD(v88) = 0;
      v92 = 0;
      v96 = defaultToneIdentifier;
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

  _behavesAsRingtonePicker = [(TKTonePickerController *)self _behavesAsRingtonePicker];
  v101 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v93 = changeCopy;
  reloadCopy = reload;
  v95 = v14;
  v99 = v15;
  v100 = v24;
  if (self->_shouldFreezeContentsOriginatingFromToneManager)
  {
    _installedTones = self->_installedTones;
  }

  else
  {
    _installedTones = [(TLToneManager *)self->_toneManager _installedTones];
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = _installedTones;
  v26 = _installedTones;
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
        identifier = [v31 identifier];
        if (([v31 isPrivateTone] & 1) == 0)
        {
          if (([(TLToneManager *)self->_toneManager toneWithIdentifierIsValid:identifier]& 1) != 0)
          {
            if (_behavesAsRingtonePicker || ([v31 duration], v37 <= 30.0) && (objc_msgSend(v31, "isProtectedContent") & 1) == 0)
            {
              if ([v31 isRingtone])
              {
                isPurchased = [v31 isPurchased];
                toneTypes = self->_toneTypes;
                if (isPurchased)
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

              [v35 addObject:identifier];
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
    allValues = [(NSMutableDictionary *)self->_activeToneStoreDownloadsByIdentifier allValues];
    [v38 addObjectsFromArray:allValues];
  }

  if ([(NSMutableDictionary *)self->_finishedToneStoreDownloadsByIdentifier count])
  {
    allValues2 = [(NSMutableDictionary *)self->_finishedToneStoreDownloadsByIdentifier allValues];
    [v38 addObjectsFromArray:allValues2];
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
        toneIdentifier = [v46 toneIdentifier];
        if (!toneIdentifier)
        {
          toneIdentifier = [v46 identifier];
        }

        isRingtone = [v46 isRingtone];
        v49 = self->_toneTypes;
        if (!isRingtone)
        {
          v50 = v23;
          if ((v49 & 2) == 0)
          {
            goto LABEL_60;
          }

LABEL_59:
          [v50 addObject:toneIdentifier];
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
    _loadRingtonesFromPlist = [(TKTonePickerController *)self _loadRingtonesFromPlist];
    v54 = [_loadRingtonesFromPlist objectForKey:@"modern"];
    v55 = [v54 mutableCopy];

    mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

    if (supportsReflectionRemixes)
    {
      v58 = [_loadRingtonesFromPlist objectForKey:@"remix"];
      [(TKTonePickerController *)self _setRemixRingtoneIdentifiers:v58];
      firstObject = [v58 firstObject];
      if (firstObject)
      {
        v60 = [v55 indexOfObject:firstObject];
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
    v63 = [_loadRingtonesFromPlist objectForKey:@"classic"];
    [(TKTonePickerController *)self _setClassicRingtoneIdentifiers:v63];
    if (v63)
    {
      [v100 addObject:@"<classic_ringtone_identifier>"];
    }

    v51 = self->_toneTypes;
  }

  if (v51)
  {
    _loadAlertTonesFromPlist = [(TKTonePickerController *)self _loadAlertTonesFromPlist];
    v65 = [_loadAlertTonesFromPlist objectForKey:@"modern"];
    [v97 addObjectsFromArray:v65];
    v66 = [_loadAlertTonesFromPlist objectForKey:@"classic"];
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

  _showsMedia = [(TKTonePickerController *)self _showsMedia];
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

  if (!v71 || _showsMedia)
  {
    v104 = TLLocalizedString();

    v72 = TLLocalizedString();
  }

  else
  {
    v72 = &stru_282E32280;
    v104 = &stru_282E32280;
  }

  if (_behavesAsRingtonePicker)
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
      firstObject2 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NSMutableArray *)firstObject2 addObject:*MEMORY[0x277D72068]];
      [(NSMutableArray *)self->_toneGroupLists insertObject:firstObject2 atIndex:0];
      [(NSMutableArray *)self->_toneGroupNames insertObject:&stru_282E32280 atIndex:0];
      v77 = self->_toneGroupBucketIdentifiers;
      v78 = @"none";
    }

    else
    {
      firstObject2 = [(NSMutableArray *)self->_toneGroupLists firstObject];
      [(NSMutableArray *)firstObject2 insertObject:&stru_282E32280 atIndex:0];
      v78 = *MEMORY[0x277D72068];
      v77 = firstObject2;
    }

    [(NSMutableArray *)v77 insertObject:v78 atIndex:0];
  }

  objc_storeStrong(&self->_installedTones, obj);
  objc_storeStrong(&self->_identifiersOfRemovableTones, v67);
  if (!v92)
  {
    if (v90)
    {
      _indexPathForDefaultGroup = [(TKTonePickerController *)self _indexPathForDefaultGroup];
    }

    else
    {
      if (!v89)
      {
        defaultToneIdentifier2 = [(TKTonePickerController *)self defaultToneIdentifier];
        _indexPathForDefaultGroup2 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:defaultToneIdentifier2];

        goto LABEL_127;
      }

      _indexPathForDefaultGroup = [(TKTonePickerController *)self _indexPathForNone];
    }

LABEL_126:
    _indexPathForDefaultGroup2 = _indexPathForDefaultGroup;
LABEL_127:
    v81 = 0;
    goto LABEL_128;
  }

  _indexPathForDefaultGroup = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:v96];
  if (_indexPathForDefaultGroup)
  {
    goto LABEL_126;
  }

  if (self->_showsDefault)
  {
    _indexPathForDefaultGroup2 = [(TKTonePickerController *)self _indexPathForDefaultGroup];
  }

  else
  {
    defaultToneIdentifier3 = [(TKTonePickerController *)self defaultToneIdentifier];
    _indexPathForDefaultGroup2 = [(TKTonePickerController *)self _indexPathForToneWithIdentifier:defaultToneIdentifier3];
  }

  v81 = 1;
LABEL_128:
  [(TKTonePickerController *)self _setSelectedToneIndexPath:_indexPathForDefaultGroup2];
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
  if (!reloadCopy)
  {
    [(TKTonePickerController *)self _didReloadTones];
  }

  if (v81)
  {
    _selectedToneIndexPath4 = [(TKTonePickerController *)self _selectedToneIndexPath];
    v84 = [(TKTonePickerController *)self _identifierAtIndexPath:_selectedToneIndexPath4 isMediaItem:&v114];

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

- (id)_platformSpecificAdjustedPlistName:(id)name
{
  nameCopy = name;
  targetDevice = self->_targetDevice;
  v6 = nameCopy;
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

- (id)_loadTonesFromPlistNamed:(id)named
{
  v51 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v5 = namedCopy;
  if (_os_feature_enabled_impl())
  {
    if (([namedCopy isEqualToString:@"TKRingtones"] & 1) != 0 || (v5 = namedCopy, objc_msgSend(namedCopy, "isEqualToString:", @"TKAlertTones")))
    {
      v5 = [namedCopy stringByAppendingString:@"-EncoreInfinitum"];
    }
  }

  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes && [namedCopy isEqualToString:@"TKRingtones"])
  {
    v8 = [namedCopy stringByAppendingString:@"-EncoreRemix"];

    v5 = v8;
  }

  v9 = TLLogToneManagement();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v49 = 2114;
    v50 = v5;
    _os_log_impl(&dword_21C599000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Loading tones from plist named: %{public}@.", buf, 0x16u);
  }

  v10 = MEMORY[0x277CBEAC0];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 pathForResource:v5 ofType:@"plist"];
  v13 = [v10 dictionaryWithContentsOfFile:v12];

  mEMORY[0x277D71F68]2 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  LODWORD(v12) = [mEMORY[0x277D71F68]2 supportsReflectionRemixes];

  if (v12)
  {
    v15 = [v13 objectForKey:@"remix"];
    v16 = [v15 mutableCopy];

    firstObject = [v16 firstObject];
  }

  else
  {
    firstObject = 0;
    v16 = 0;
  }

  v17 = [v13 objectForKey:@"modern"];
  v18 = [v17 mutableCopy];

  v19 = [v13 objectForKey:@"classic"];
  v20 = [v19 mutableCopy];

  mEMORY[0x277D71F68]3 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  if ([mEMORY[0x277D71F68]3 wantsModernDefaultRingtone])
  {
    v22 = [namedCopy isEqualToString:@"TKRingtones"];

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
    mEMORY[0x277D71F68]4 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    supportsReflectionRemixes2 = [mEMORY[0x277D71F68]4 supportsReflectionRemixes];

    if (supportsReflectionRemixes2)
    {
      [(TKTonePickerController *)self _sortToneIdentifiersArray:v16];
    }

    [(TKTonePickerController *)self _sortToneIdentifiersArray:v18];
    [(TKTonePickerController *)self _sortToneIdentifiersArray:v20];
  }

  toneManager = self->_toneManager;
  defaultToneIdentifier = [(TKTonePickerController *)self defaultToneIdentifier];
  v30 = [(TLToneManager *)toneManager _aliasForToneIdentifier:defaultToneIdentifier];

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

  mEMORY[0x277D71F68]5 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes3 = [mEMORY[0x277D71F68]5 supportsReflectionRemixes];

  if (supportsReflectionRemixes3)
  {
    if (firstObject)
    {
      v38 = [v16 indexOfObject:firstObject];
      if (v38 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v16 removeObjectAtIndex:v38];
        [v16 insertObject:firstObject atIndex:0];
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

  mEMORY[0x277D71F68]6 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes4 = [mEMORY[0x277D71F68]6 supportsReflectionRemixes];

  if (supportsReflectionRemixes4 && v16)
  {
    [v40 setObject:v16 forKey:@"remix"];
  }

  v43 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)_loadAlertTonesFromPlist
{
  _alertTonesPlistName = [(TKTonePickerController *)self _alertTonesPlistName];
  v4 = [(TKTonePickerController *)self _loadTonesFromPlistNamed:_alertTonesPlistName];

  return v4;
}

- (id)_loadRingtonesFromPlist
{
  _ringtonesPlistName = [(TKTonePickerController *)self _ringtonesPlistName];
  v4 = [(TKTonePickerController *)self _loadTonesFromPlistNamed:_ringtonesPlistName];

  return v4;
}

- (void)_sortToneIdentifiersArray:(id)array
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__TKTonePickerController__sortToneIdentifiersArray___block_invoke;
  v3[3] = &unk_2783164D8;
  v3[4] = self;
  [array sortUsingComparator:v3];
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

- (void)_setToneManager:(id)manager
{
  managerCopy = manager;
  p_toneManager = &self->_toneManager;
  if (self->_toneManager != managerCopy)
  {
    v10 = managerCopy;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = defaultCenter;
    v9 = MEMORY[0x277D72090];
    if (*p_toneManager)
    {
      [defaultCenter removeObserver:self name:*MEMORY[0x277D72090] object:?];
    }

    objc_storeStrong(&self->_toneManager, manager);
    if (*p_toneManager)
    {
      [v8 addObserver:self selector:sel__toneManagerContentsChanged_ name:*v9 object:?];
    }

    managerCopy = v10;
  }
}

- (void)_performBatchUpdates:(id)updates completion:(id)completion
{
  completionCopy = completion;
  updatesCopy = updates;
  delegate = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tonePickerController:self requestsPerformingBatchUpdates:updatesCopy completion:completionCopy];
  }

  else
  {
    updatesCopy[2](updatesCopy);

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

- (void)_applyBatchUpdatesWithDeletedPickerRowItems:(id)items deletedTonePickerSectionItems:(id)sectionItems insertedPickerRowItems:(id)rowItems insertedTonePickerSectionItems:(id)pickerSectionItems tonePickerSectionItemsWithUpdatedHeaderText:(id)text tonePickerSectionItemsWithUpdatedFooterText:(id)footerText
{
  itemsCopy = items;
  sectionItemsCopy = sectionItems;
  rowItemsCopy = rowItems;
  pickerSectionItemsCopy = pickerSectionItems;
  textCopy = text;
  footerTextCopy = footerText;
  delegate = [(TKTonePickerController *)self delegate];
  if ([itemsCopy count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate tonePickerController:self didDeletePickerRowItems:itemsCopy];
  }

  if ([sectionItemsCopy count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate tonePickerController:self didDeleteTonePickerSectionItems:sectionItemsCopy];
  }

  if ([rowItemsCopy count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate tonePickerController:self didInsertPickerRowItems:rowItemsCopy];
  }

  if ([pickerSectionItemsCopy count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate tonePickerController:self didInsertTonePickerSectionItems:pickerSectionItemsCopy];
  }

  if ([textCopy count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate tonePickerController:self didUpdateHeaderTextOfTonePickerSectionItems:textCopy];
  }

  if ([footerTextCopy count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate tonePickerController:self didUpdateFooterTextOfTonePickerSectionItems:footerTextCopy];
  }
}

- (void)setShowsReflectionRemixesInline:(BOOL)inline
{
  inlineCopy = inline;
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (!supportsReflectionRemixes || self->_showsReflectionRemixesInline == inlineCopy)
  {
    return;
  }

  _indexPathForReflectionRemixHeader = [(TKTonePickerController *)self _indexPathForReflectionRemixHeader];
  v7 = [_indexPathForReflectionRemixHeader tk_row] + 1;
  _remixRingtoneIdentifiers = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
  v9 = [_remixRingtoneIdentifiers count];

  v53 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v7, v9}];
  v10 = -[TKTonePickerController pickerItemForSection:](self, "pickerItemForSection:", [_indexPathForReflectionRemixHeader tk_section]);
  tk_section = [_indexPathForReflectionRemixHeader tk_section];
  _indexPathForFirstToneGroup = [(TKTonePickerController *)self _indexPathForFirstToneGroup];
  v13 = tk_section - [_indexPathForFirstToneGroup tk_section];

  v14 = [(NSMutableArray *)self->_toneGroupLists objectAtIndex:v13];
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = inlineCopy;
  if (inlineCopy)
  {
    _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
    if ([(TKTonePickerController *)self _selectedRemixRingtoneIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      tk_section2 = [_selectedToneIndexPath tk_section];
      if (tk_section2 == [_indexPathForReflectionRemixHeader tk_section])
      {
        tk_row = [_selectedToneIndexPath tk_row];
        if (tk_row > [_indexPathForReflectionRemixHeader tk_row])
        {
          v19 = MEMORY[0x277CCAA70];
          tk_row2 = [_selectedToneIndexPath tk_row];
          tk_section3 = [_selectedToneIndexPath tk_section];
          v22 = tk_row2 + v9;
          v23 = v19;
LABEL_16:
          v30 = [v23 tk_indexPathForRow:v22 inSection:tk_section3];
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

    tk_row3 = [_indexPathForReflectionRemixHeader tk_row];
    v32 = tk_row3 + [(TKTonePickerController *)self _selectedRemixRingtoneIndex];
    v33 = [MEMORY[0x277CCAA70] tk_indexPathForRow:v32 + 1 inSection:{objc_msgSend(_indexPathForReflectionRemixHeader, "tk_section")}];
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
  _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
  if ([(TKTonePickerController *)self _selectedRemixRingtoneIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = _indexPathForReflectionRemixHeader;
    goto LABEL_19;
  }

  tk_section4 = [_selectedToneIndexPath tk_section];
  if (tk_section4 != [_indexPathForReflectionRemixHeader tk_section])
  {
    goto LABEL_20;
  }

  tk_row4 = [_selectedToneIndexPath tk_row];
  if (tk_row4 > [_indexPathForReflectionRemixHeader tk_row])
  {
    v28 = MEMORY[0x277CCAA70];
    v29 = [_selectedToneIndexPath tk_row] - v9;
    tk_section3 = [_selectedToneIndexPath tk_section];
    v23 = v28;
    v22 = v29;
    goto LABEL_16;
  }

LABEL_22:
  _selectedToneIndexPath = _selectedToneIndexPath;
  LODWORD(v50) = 1;
  v30 = _selectedToneIndexPath;
LABEL_23:
  v34 = _selectedToneIndexPath;
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
    _remixRingtoneIdentifiers2 = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
    [v14 insertObjects:_remixRingtoneIdentifiers2 atIndexes:v53];

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
  v47 = -[TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:](self, "_pickerRowItemAtIndex:inSectionForItem:", [_indexPathForReflectionRemixHeader tk_row], v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = v47;
    if (v48)
    {
      delegate = [(TKTonePickerController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate tonePickerController:self didUpdateDisclosureStatus:v54 ofTonePickerItem:v48];
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
    mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    isRingtoneStoreAvailable = [mEMORY[0x277D71F68] isRingtoneStoreAvailable];

    if ((self->_toneTypes & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    isAlertToneStoreAvailable = 0;
    return (toneStoreDownloadController != 0) & (isRingtoneStoreAvailable | isAlertToneStoreAvailable);
  }

  isRingtoneStoreAvailable = 0;
  if ((toneTypes & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  mEMORY[0x277D71F68]2 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  isAlertToneStoreAvailable = [mEMORY[0x277D71F68]2 isAlertToneStoreAvailable];

  return (toneStoreDownloadController != 0) & (isRingtoneStoreAvailable | isAlertToneStoreAvailable);
}

- (void)setToneStoreDownloadController:(id)controller
{
  controllerCopy = controller;
  toneStoreDownloadController = self->_toneStoreDownloadController;
  if (toneStoreDownloadController != controllerCopy)
  {
    v7 = controllerCopy;
    [(TLToneStoreDownloadController *)toneStoreDownloadController removeObserver:self];
    objc_storeStrong(&self->_toneStoreDownloadController, controller);
    [(TLToneStoreDownloadController *)self->_toneStoreDownloadController addObserver:self];
    toneStoreDownloadController = [(TKTonePickerController *)self _enableToneStoreDownloadItemIfAppropriate];
    controllerCopy = v7;
  }

  MEMORY[0x2821F96F8](toneStoreDownloadController, controllerCopy);
}

- (void)storeAccountNameDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v4 = __52__TKTonePickerController_storeAccountNameDidChange___block_invoke;
  v5 = &unk_278316500;
  selfCopy = self;
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

- (void)didFinishCheckingForAvailableToneStoreDownloads:(BOOL)downloads
{
  v4 = __74__TKTonePickerController_didFinishCheckingForAvailableToneStoreDownloads___block_invoke;
  v5 = &unk_278316528;
  downloadsCopy = downloads;
  selfCopy = self;
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

- (void)toneStoreDownloadsDidStart:(id)start
{
  startCopy = start;
  v7 = MEMORY[0x277D85DD0];
  v8 = __53__TKTonePickerController_toneStoreDownloadsDidStart___block_invoke;
  v9 = &unk_2783165C8;
  selfCopy = self;
  v11 = startCopy;
  v5 = MEMORY[0x277CCACC8];
  v6 = startCopy;
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

- (void)toneStoreDownloadsDidProgress:(id)progress
{
  progressCopy = progress;
  v7 = MEMORY[0x277D85DD0];
  v8 = __56__TKTonePickerController_toneStoreDownloadsDidProgress___block_invoke;
  v9 = &unk_2783165C8;
  selfCopy = self;
  v11 = progressCopy;
  v5 = MEMORY[0x277CCACC8];
  v6 = progressCopy;
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

- (void)toneStoreDownloadsDidFinish:(id)finish
{
  finishCopy = finish;
  v7 = MEMORY[0x277D85DD0];
  v8 = __54__TKTonePickerController_toneStoreDownloadsDidFinish___block_invoke;
  v9 = &unk_2783165C8;
  selfCopy = self;
  v11 = finishCopy;
  v5 = MEMORY[0x277CCACC8];
  v6 = finishCopy;
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
  _indexPathForToneStoreGroup = [(TKTonePickerController *)self _indexPathForToneStoreGroup];
  tk_section = [_indexPathForToneStoreGroup tk_section];

  v5 = [(TKTonePickerController *)self _cachedPickerItemForSection:tk_section];
  if (v5)
  {
    _footerTextForToneStoreGroup = [(TKTonePickerController *)self _footerTextForToneStoreGroup];
    [v5 _setFooterText:_footerTextForToneStoreGroup];
    v9[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(TKTonePickerController *)self _applyBatchUpdatesWithDeletedPickerRowItems:MEMORY[0x277CBEBF8] deletedTonePickerSectionItems:MEMORY[0x277CBEBF8] insertedPickerRowItems:MEMORY[0x277CBEBF8] insertedTonePickerSectionItems:MEMORY[0x277CBEBF8] tonePickerSectionItemsWithUpdatedHeaderText:MEMORY[0x277CBEBF8] tonePickerSectionItemsWithUpdatedFooterText:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_didUpdateToneStoreDownloadItem
{
  _indexPathForToneStoreDownloadItem = [(TKTonePickerController *)self _indexPathForToneStoreDownloadItem];
  if (_indexPathForToneStoreDownloadItem)
  {
    v11 = _indexPathForToneStoreDownloadItem;
    v4 = -[TKTonePickerController _cachedPickerItemForSection:](self, "_cachedPickerItemForSection:", [_indexPathForToneStoreDownloadItem tk_section]);
    if (v4)
    {
      tk_row = [v11 tk_row];
      v6 = [(TKTonePickerController *)self _cachedPickerRowItemAtIndex:tk_row inSectionForItem:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        [(TKTonePickerController *)self _uncachePickerRowItemAtIndex:tk_row inSectionForItem:v4];
        v8 = [(TKTonePickerController *)self _pickerRowItemAtIndex:tk_row inSectionForItem:v4];
        [v4 _setParentTonePickerController:self];
        text = [v8 text];
        [v7 _setText:text];

        [v7 _setShouldTintText:{objc_msgSend(v8, "shouldTintText")}];
        [v7 _setNeedsActivityIndicator:{objc_msgSend(v8, "needsActivityIndicator")}];
        [v7 _setShouldPreventSelection:{objc_msgSend(v8, "shouldPreventSelection")}];
        [(TKTonePickerController *)self _cachePickerRowItem:v7 atIndex:tk_row inSectionForItem:v4];
        delegate = [(TKTonePickerController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate tonePickerController:self didUpdateTonePickerItem:v7];
        }
      }
    }

    _indexPathForToneStoreDownloadItem = v11;
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

  storeAccountName = [(TLToneStoreDownloadController *)self->_toneStoreDownloadController storeAccountName];
  v4 = [storeAccountName length];

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
    _indexPathForToneStoreDownloadItem = [(TKTonePickerController *)self _indexPathForToneStoreDownloadItem];
    v6 = _indexPathForToneStoreDownloadItem;
    if (_indexPathForToneStoreDownloadItem && (-[TKTonePickerController _cachedPickerItemForSection:](self, "_cachedPickerItemForSection:", [_indexPathForToneStoreDownloadItem tk_section]), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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
    storeAccountName = [(TLToneStoreDownloadController *)self->_toneStoreDownloadController storeAccountName];
    v2 = [v4 stringWithFormat:v5, storeAccountName];
  }

  return v2;
}

- (id)_nameForToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy && (([(NSMutableDictionary *)self->_activeToneStoreDownloadsByIdentifier objectForKey:identifierCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || ([(NSMutableDictionary *)self->_finishedToneStoreDownloadsByIdentifier objectForKey:identifierCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v6 = v5;
    name = [v5 name];
  }

  else
  {
    name = [(TLToneManager *)self->_toneManager nameForToneIdentifier:identifierCopy];
  }

  return name;
}

- (void)_goToStore
{
  [(TKTonePickerController *)self stopPlayingWithFadeOut:0];
  _behavesAsRingtonePicker = [(TKTonePickerController *)self _behavesAsRingtonePicker];
  toneStoreDownloadController = self->_toneStoreDownloadController;
  if (_behavesAsRingtonePicker)
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
  copySharedResourcesPreferencesDomain = [MEMORY[0x277D71F70] copySharedResourcesPreferencesDomain];
  if (copySharedResourcesPreferencesDomain)
  {
    v3 = copySharedResourcesPreferencesDomain;
    v4 = CFPreferencesCopyAppValue(@"tonePickerLatestRedownloadAllDate", copySharedResourcesPreferencesDomain);
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
  copySharedResourcesPreferencesDomain = [MEMORY[0x277D71F70] copySharedResourcesPreferencesDomain];
  if (copySharedResourcesPreferencesDomain)
  {
    v3 = copySharedResourcesPreferencesDomain;
    CFPreferencesSetAppValue(@"tonePickerLatestRedownloadAllDate", value, copySharedResourcesPreferencesDomain);
    CFPreferencesSynchronize(v3, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    CFRelease(v3);
  }
}

- (void)_playToneWithIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    defaultToneIdentifier = identifierCopy;
  }

  else
  {
    defaultToneIdentifier = [(TKTonePickerController *)self defaultToneIdentifier];

    if (![defaultToneIdentifier length])
    {
      v6 = TLLogGeneral();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      if (v7)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/TKTonePickerController.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v8 lastPathComponent];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 136381443;
          v26 = "[TKTonePickerController _playToneWithIdentifier:]";
          v27 = 2113;
          v28 = lastPathComponent;
          v29 = 2049;
          v30 = 2804;
          v31 = 2113;
          v32 = callStackSymbols;
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

  delegate = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tonePickerController:self willBeginPlaybackOfToneWithIdentifier:defaultToneIdentifier];
  }

  v14 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:self->_alertType];
  [v14 setTopic:self->_topic];
  [v14 setToneIdentifier:defaultToneIdentifier];
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

- (void)_togglePlayForToneWithIdentifier:(id)identifier
{
  if (self->_playingAlert)
  {
    [(TKTonePickerController *)self stopPlayingWithFadeOut:0];
  }

  else
  {
    [(TKTonePickerController *)self _playToneWithIdentifier:identifier];
  }
}

- (BOOL)stopPlayingWithFadeOut:(BOOL)out
{
  if (out)
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

  delegate = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = (playingAlert != 0) | [delegate tonePickerControllerDidStopPlaying:self withFadeOutDuration:v4];
  }

  return v6 & 1;
}

- (void)_didFinishPlayingAlert:(id)alert
{
  if (self->_playingAlert == alert)
  {
    self->_playingAlert = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)setShowsIgnoreMute:(BOOL)mute
{
  if (self->_showsIgnoreMute != mute)
  {
    muteCopy = mute;
    self->_showsIgnoreMute = mute;
    _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
    if (_selectedToneIndexPath)
    {
      tk_section = [_selectedToneIndexPath tk_section];
      tk_row = [_selectedToneIndexPath tk_row];
      if (tk_section <= 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }

      if (muteCopy)
      {
        v8 = 1;
      }

      v9 = [MEMORY[0x277CCAA70] tk_indexPathForRow:tk_row inSection:v8 + tk_section];
      [(TKTonePickerController *)self _setSelectedToneIndexPath:v9];
    }

    [(TKTonePickerController *)self _invalidatePickerItemCaches];
    [(TKTonePickerController *)self _didReloadTones];
  }
}

- (BOOL)_showsMedia
{
  delegate = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate tonePickerControllerShouldShowMedia:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMediaAtTop:(BOOL)top
{
  if (self->_mediaAtTop != top)
  {
    self->_mediaAtTop = top;
    [(TKTonePickerController *)self _invalidatePickerItemCaches];

    [(TKTonePickerController *)self _didReloadTones];
  }
}

- (unint64_t)_mediaItemsCount
{
  delegate = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate numberOfMediaItemsInTonePickerController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_identifierOfMediaItemAtIndex:(unint64_t)index
{
  delegate = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate tonePickerController:self identifierOfMediaItemAtIndex:index];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_indexOfMediaItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate tonePickerController:self indexOfMediaItemWithIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)_didSelectMediaItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tonePickerController:self selectedMediaItemWithIdentifier:identifierCopy];
  }
}

- (void)_reloadMediaItems
{
  delegate = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tonePickerControllerRequestsMediaItemsRefresh:self];
  }
}

- (void)setShowsVibrations:(BOOL)vibrations
{
  if (vibrations)
  {
    mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    hasVibratorCapability = [mEMORY[0x277D71F68] hasVibratorCapability];

    v6 = hasVibratorCapability;
  }

  else
  {
    hasVibratorCapability = 0;
    v6 = 0;
  }

  if (self->_showsVibrations != hasVibratorCapability)
  {
    self->_showsVibrations = hasVibratorCapability;
    _selectedToneIndexPath = [(TKTonePickerController *)self _selectedToneIndexPath];
    tk_section = [_selectedToneIndexPath tk_section];
    if (v6)
    {
      v8 = tk_section + 1;
    }

    else
    {
      v8 = tk_section - 1;
    }

    v9 = [MEMORY[0x277CCAA70] tk_indexPathForRow:objc_msgSend(_selectedToneIndexPath inSection:{"tk_row"), v8}];
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

- (void)_setSelectedVibrationIdentifier:(id)identifier forceUpdatingVibrationName:(BOOL)name explicitlySet:(BOOL)set
{
  nameCopy = name;
  identifierCopy = identifier;
  selectedVibrationIdentifier = self->_selectedVibrationIdentifier;
  v14 = identifierCopy;
  if (selectedVibrationIdentifier == identifierCopy || (selectedVibrationIdentifier = [(NSString *)selectedVibrationIdentifier isEqualToString:identifierCopy], identifierCopy = v14, (selectedVibrationIdentifier & 1) != 0))
  {
    if (!nameCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [(NSString *)v14 copy];
    v11 = self->_selectedVibrationIdentifier;
    self->_selectedVibrationIdentifier = v10;

    identifierCopy = v14;
  }

  if (self->_showsVibrations)
  {
    _nameOfSelectedVibrationIdentifier = [(TKTonePickerController *)self _nameOfSelectedVibrationIdentifier];
    _indexPathForVibrationGroup = [(TKTonePickerController *)self _indexPathForVibrationGroup];
    [(TKTonePickerController *)self _didUpdateDetailText:_nameOfSelectedVibrationIdentifier ofPickerItemForRowAtIndexPath:_indexPathForVibrationGroup];

    identifierCopy = v14;
  }

LABEL_8:
  self->_selectedVibrationIdentifierWasExplicitlySet = set;

  MEMORY[0x2821F96F8](selectedVibrationIdentifier, identifierCopy);
}

- (id)_sanitizedSelectedVibrationIdentifierAllowingNilForDefault:(BOOL)default
{
  defaultCopy = default;
  v5 = self->_selectedVibrationIdentifier;
  v6 = v5;
  if ([(NSString *)v5 length])
  {
    selectedToneIdentifier = [(TKTonePickerController *)self selectedToneIdentifier];
    if (![selectedToneIdentifier length])
    {
      defaultToneIdentifier = [(TKTonePickerController *)self defaultToneIdentifier];

      selectedToneIdentifier = defaultToneIdentifier;
    }

    v14 = 0;
    mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
    alertType = self->_alertType;
    topic = [(TKTonePickerController *)self topic];
    v6 = [mEMORY[0x277D71F88] _sanitizeVibrationIdentifier:v5 forAlertType:alertType topic:topic targetDevice:-[TKTonePickerController targetDevice](self correspondingToneIdentifier:"targetDevice") didFallbackToCurrentVibrationIdentifier:{selectedToneIdentifier, &v14}];

    if (!defaultCopy)
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

      v12 = [mEMORY[0x277D71F88] defaultVibrationIdentifierForAlertType:?];
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
    mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
    v4 = [mEMORY[0x277D71F88] nameOfVibrationWithIdentifier:v2];
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
    _nameOfSelectedVibrationIdentifier = [(TKTonePickerController *)self _nameOfSelectedVibrationIdentifier];
    _indexPathForVibrationGroup = [(TKTonePickerController *)self _indexPathForVibrationGroup];
    [(TKTonePickerController *)self _didUpdateDetailText:_nameOfSelectedVibrationIdentifier ofPickerItemForRowAtIndexPath:_indexPathForVibrationGroup];
  }
}

- (id)_annotatedNameForToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(TLToneManager *)self->_toneManager _aliasForToneIdentifier:identifierCopy];
  v6 = [(TKTonePickerController *)self _nameForToneIdentifier:v5];
  showsDefault = self->_showsDefault;
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (!supportsReflectionRemixes)
  {
    goto LABEL_6;
  }

  if (![identifierCopy isEqualToString:@"<default>"])
  {
    _remixRingtoneIdentifiers = [(TKTonePickerController *)self _remixRingtoneIdentifiers];
    v12 = [_remixRingtoneIdentifiers containsObject:identifierCopy];

    if (v12)
    {
      v13 = [identifierCopy stringByAppendingString:@"_DETAIL_NAME"];
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
    defaultToneIdentifier = [(TKTonePickerController *)self defaultToneIdentifier];
    v17 = [(TLToneManager *)toneManager _aliasForToneIdentifier:defaultToneIdentifier];
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
  delegate = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tonePickerControllerDidReloadTones:self];
  }
}

- (void)_didSelectToneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(TKTonePickerController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tonePickerController:self selectedToneWithIdentifier:identifierCopy];
  }
}

- (void)_didUpdateDetailText:(id)text ofPickerItemForRowAtIndexPath:(id)path
{
  textCopy = text;
  pathCopy = path;
  v7 = -[TKTonePickerController pickerItemForSection:](self, "pickerItemForSection:", [pathCopy tk_section]);
  tk_row = [pathCopy tk_row];

  v9 = [v7 childItemAtIndex:tk_row];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    [v10 _setDetailText:textCopy];
    delegate = [(TKTonePickerController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate tonePickerController:self didUpdateDetailText:textCopy ofTonePickerItem:v10];
    }
  }
}

- (void)_resetSelectedClassicRingtoneIndex
{
  _selectedClassicRingtoneIndex = [(TKTonePickerController *)self _selectedClassicRingtoneIndex];
  if (_selectedClassicRingtoneIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = _selectedClassicRingtoneIndex;
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
  _selectedClassicAlertToneIndex = [(TKTonePickerController *)self _selectedClassicAlertToneIndex];
  if (_selectedClassicAlertToneIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = _selectedClassicAlertToneIndex;
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

- (void)_toneManagerContentsChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v4 = __54__TKTonePickerController__toneManagerContentsChanged___block_invoke;
  v5 = &unk_278316500;
  selfCopy = self;
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

- (void)_handleAlertOverridePolicyDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v4 = __74__TKTonePickerController__handleAlertOverridePolicyDidChangeNotification___block_invoke;
  v5 = &unk_278316500;
  selfCopy = self;
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