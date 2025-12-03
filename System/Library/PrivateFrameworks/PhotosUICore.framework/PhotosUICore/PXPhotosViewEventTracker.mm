@interface PXPhotosViewEventTracker
+ (id)analyticsViewNameForDataSource:(id)source;
- (PXPhotosViewEventTracker)initWithViewModel:(id)model;
- (PXPhotosViewEventTracker)initWithViewName:(id)name;
- (void)_invalidateTrackedValues;
- (void)_updateTrackedValues;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setIsInSelectModeValue:(id)value;
@end

@implementation PXPhotosViewEventTracker

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (EventTrackerObserverContext_180677 == context)
  {
    if ((change & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PXPhotosViewEventTracker_observable_didChange_context___block_invoke;
    v9[3] = &unk_1E774C5F8;
    v9[4] = self;
    [(PXPhotosViewEventTracker *)self performChanges:v9];
    goto LABEL_6;
  }

  if (ViewModelObservationContext_180678 == context)
  {
    if ((change & 5) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = PXPhotosViewEventTracker;
  [(PXMediaViewControllerEventTracker *)&v10 observable:observableCopy didChange:change context:context];
LABEL_6:
}

- (void)setIsInSelectModeValue:(id)value
{
  v16[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v6 = valueCopy;
  if (self->_isInSelectModeValue != valueCopy && ([(NSNumber *)valueCopy isEqual:?]& 1) == 0)
  {
    if ([(NSNumber *)self->_isInSelectModeValue BOOLValue])
    {
      [(PXUserInterfaceElementEventTracker *)self timeIntervalSinceTimestamp:self->_isInSelectModeValueTimestamp];
      v8 = v7;
      [objc_opt_class() selectModeImpressionMinimumDuration];
      if (v8 >= v9)
      {
        v10 = MEMORY[0x1E6991F28];
        v15 = *MEMORY[0x1E6991E20];
        viewName = [(PXMediaViewControllerEventTracker *)self viewName];
        v16[0] = viewName;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        v13 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v12];
        [v10 sendEvent:@"com.apple.photos.CPAnalytics.selectModeEntered" withPayload:v13];
      }
    }

    objc_storeStrong(&self->_isInSelectModeValue, value);
    [(PXUserInterfaceElementEventTracker *)self currentTimestamp];
    self->_isInSelectModeValueTimestamp = v14;
  }
}

- (void)_updateTrackedValues
{
  if ([(PXViewControllerEventTracker *)self isViewVisible])
  {
    viewModel = [(PXPhotosViewEventTracker *)self viewModel];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(viewModel, "isInSelectMode")}];
    currentDataSource = [viewModel currentDataSource];
    containerCollection = [currentDataSource containerCollection];

    if ([containerCollection conformsToProtocol:&unk_1F198AE70])
    {
      v8 = containerCollection;
    }

    else
    {
      v8 = 0;
    }

    v7 = v8;
  }

  else
  {
    v4 = 0;
    v7 = 0;
  }

  v9 = v7;
  [(PXMediaViewControllerEventTracker *)self setDisplayedAssetCollection:v7];
  [(PXPhotosViewEventTracker *)self setIsInSelectModeValue:v4];
}

- (void)_invalidateTrackedValues
{
  updater = [(PXUserInterfaceElementEventTracker *)self updater];
  [updater setNeedsUpdateOf:sel__updateTrackedValues];
}

- (PXPhotosViewEventTracker)initWithViewModel:(id)model
{
  modelCopy = model;
  v6 = objc_opt_class();
  currentDataSource = [modelCopy currentDataSource];
  v8 = [v6 analyticsViewNameForDataSource:currentDataSource];

  v13.receiver = self;
  v13.super_class = PXPhotosViewEventTracker;
  v9 = [(PXMediaViewControllerEventTracker *)&v13 initWithViewName:v8];
  v10 = v9;
  if (v9)
  {
    [(PXPhotosViewEventTracker *)v9 registerChangeObserver:v9 context:EventTrackerObserverContext_180677];
    objc_storeStrong(&v10->_viewModel, model);
    [(PXPhotosViewModel *)v10->_viewModel registerChangeObserver:v10 context:ViewModelObservationContext_180678];
    updater = [(PXUserInterfaceElementEventTracker *)v10 updater];
    [updater addUpdateSelector:sel__updateTrackedValues];
  }

  return v10;
}

- (PXPhotosViewEventTracker)initWithViewName:(id)name
{
  nameCopy = name;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewEventTracker.m" lineNumber:110 description:{@"%s is not available as initializer", "-[PXPhotosViewEventTracker initWithViewName:]"}];

  abort();
}

+ (id)analyticsViewNameForDataSource:(id)source
{
  sourceCopy = source;
  containerCollection = [sourceCopy containerCollection];
  v5 = containerCollection;
  if (containerCollection)
  {
    if ([containerCollection px_isRecentsSmartAlbum])
    {
      v6 = @"PhotosView_smartAlbumRecents";
      goto LABEL_32;
    }

    if ([v5 px_isOwnedStreamSharedAlbum])
    {
      v6 = @"PhotosView_sharedAlbumOwned";
      goto LABEL_32;
    }

    if ([v5 px_isImportedAlbum])
    {
      v6 = @"PhotosView_smartImported";
      goto LABEL_32;
    }

    if ([v5 px_isAllLibraryDuplicatesSmartAlbum])
    {
      v6 = @"DuplicatesAlbum";
      goto LABEL_32;
    }

    if ([v5 px_isMemory])
    {
      v6 = @"Grid_Memory";
      goto LABEL_32;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = @"PhotosView";
    goto LABEL_32;
  }

  v7 = v5;
  if (![v7 isTransient] || (objc_msgSend(v7, "transientIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    container = [sourceCopy container];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    container2 = [sourceCopy container];
    v14 = container2;
    if (isKindOfClass)
    {
      detectionType = [container2 detectionType];
      v16 = @"PhotosView_personUnknown";
      if (detectionType == 3)
      {
        v16 = @"PhotosView_personDog";
      }

      if (detectionType == 4)
      {
        v17 = @"PhotosView_personCat";
      }

      else
      {
        v17 = v16;
      }

      if (detectionType == 1)
      {
        v6 = @"PhotosView_personHuman";
      }

      else
      {
        v6 = v17;
      }
    }

    else
    {
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if (v18)
      {
        v6 = @"PhotosView_socialGroup";
        goto LABEL_31;
      }

      v14 = [MEMORY[0x1E6978650] descriptionForSubtype:{objc_msgSend(v7, "assetCollectionSubtype")}];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PhotosView_%@", v14];
    }

LABEL_30:

    goto LABEL_31;
  }

  transientIdentifier = [v7 transientIdentifier];
  v10 = [transientIdentifier hasPrefix:@"PXFeaturedPhotosVirtualCollection"];

  if ((v10 & 1) == 0)
  {
    if ([v7 px_isSavedTodayCollection])
    {
      v6 = @"PhotosView_PXTransientCollectionIdentifierSavedToday";
      goto LABEL_31;
    }

    v20 = MEMORY[0x1E696AEC0];
    transientIdentifier2 = [v7 transientIdentifier];
    v14 = [v20 stringWithFormat:@"PhotosView_%@", transientIdentifier2];

    if ([v14 hasPrefix:@"PhotosView_utility-"])
    {
      if ([v14 isEqualToString:@"PhotosView_utility-1"])
      {
        v6 = @"PhotosView_genericDocument";
        goto LABEL_30;
      }

      if ([v14 isEqualToString:@"PhotosView_utility-2"])
      {
        v6 = @"PhotosView_receipts";
        goto LABEL_30;
      }

      if ([v14 isEqualToString:@"PhotosView_utility-3"])
      {
        v6 = @"PhotosView_illustrations";
        goto LABEL_30;
      }

      if ([v14 isEqualToString:@"PhotosView_utility-4"])
      {
        v6 = @"PhotosView_handwriting";
        goto LABEL_30;
      }

      if ([v14 isEqualToString:@"PhotosView_utility-5"])
      {
        v6 = @"PhotosView_qrCodes";
        goto LABEL_30;
      }
    }

    v22 = MEMORY[0x1E696AEC0];
    transientIdentifier3 = [v7 transientIdentifier];
    v6 = [v22 stringWithFormat:@"PhotosView_%@", transientIdentifier3];

    goto LABEL_30;
  }

  v6 = @"PhotosView_PXFeaturedPhotosVirtualCollection";
LABEL_31:

LABEL_32:

  return v6;
}

@end