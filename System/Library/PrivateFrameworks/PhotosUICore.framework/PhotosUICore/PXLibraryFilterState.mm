@interface PXLibraryFilterState
- (BOOL)isEqual:(id)equal;
- (BOOL)isLibraryFilterActive:(int64_t)active;
- (NSString)description;
- (NSString)localizedDescription;
- (NSString)localizedFooterDescription;
- (PXLibraryFilterState)initWithSharedLibraryStatusProvider:(id)provider;
- (id)_localizedDescriptionForViewMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)menuItemTitleForLibraryFilter:(int64_t)filter;
- (id)predicateForUseCase:(unint64_t)case;
- (unsigned)sharingFilter;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)preferencesDidChange;
- (void)setSharedLibraryBadgeEnabled:(BOOL)enabled;
- (void)setViewMode:(int64_t)mode;
@end

@implementation PXLibraryFilterState

- (void)dealloc
{
  sharedLibraryStatusProvider = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];

  if (sharedLibraryStatusProvider)
  {
    PXUnregisterPreferencesObserver(self);
  }

  v4.receiver = self;
  v4.super_class = PXLibraryFilterState;
  [(PXLibraryFilterState *)&v4 dealloc];
}

- (void)preferencesDidChange
{
  sharedLibraryStatusProvider = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
  hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];

  if (hasSharedLibraryOrPreview)
  {
    LibraryFilterViewModeWithSharedLibraryOrPreview = PXPreferencesGetLibraryFilterViewModeWithSharedLibraryOrPreview(1);
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"SharedLibraryBadgingEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
    {
      v6 = 1;
    }

    else
    {
      v6 = keyExistsAndHasValidFormat == 0;
    }

    v7 = v6;
    [(PXLibraryFilterState *)self setViewMode:LibraryFilterViewModeWithSharedLibraryOrPreview];

    [(PXLibraryFilterState *)self setSharedLibraryBadgeEnabled:v7];
  }

  else
  {

    [(PXLibraryFilterState *)self setViewMode:0];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 3) != 0 && PXSharedLibraryStatusProviderObservationContext_28195 == context)
  {
    sharedLibraryStatusProvider = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
    hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];

    if ((hasSharedLibraryOrPreview & 1) == 0)
    {

      [(PXLibraryFilterState *)self setViewMode:0];
    }
  }
}

- (NSString)localizedFooterDescription
{
  viewMode = [(PXLibraryFilterState *)self viewMode];
  switch(viewMode)
  {
    case 2:
      sharedLibraryStatusProvider = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
      if ([sharedLibraryStatusProvider hasPreview])
      {
        v7 = @"PXSharedLibrary_FilterFooter_Preview";
      }

      else
      {
        v7 = @"PXSharedLibrary_FilterFooter_Shared";
      }

      v5 = PXLocalizedSharedLibraryString(v7);

      goto LABEL_12;
    case 1:
      v4 = @"PXSharedLibrary_FilterFooter_Personal";
      goto LABEL_6;
    case 0:
      v4 = @"PXSharedLibrary_FilterFooter_All";
LABEL_6:
      v5 = PXLocalizedSharedLibraryString(v4);
      goto LABEL_12;
  }

  v5 = &stru_1F1741150;
LABEL_12:

  return v5;
}

- (NSString)localizedDescription
{
  viewMode = [(PXLibraryFilterState *)self viewMode];

  return [(PXLibraryFilterState *)self _localizedDescriptionForViewMode:viewMode];
}

- (id)predicateForUseCase:(unint64_t)case
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLibraryFilterState.m" lineNumber:212 description:{@"Use of this method is deprecated: %@", v6}];

  return 0;
}

- (unsigned)sharingFilter
{
  viewMode = [(PXLibraryFilterState *)self viewMode];

  return PXSharingFilterFromLibraryFilterViewMode(viewMode);
}

- (void)setSharedLibraryBadgeEnabled:(BOOL)enabled
{
  if (self->_sharedLibraryBadgeEnabled != enabled)
  {
    v6[7] = v3;
    v6[8] = v4;
    enabledCopy = enabled;
    self->_sharedLibraryBadgeEnabled = enabled;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__PXLibraryFilterState_setSharedLibraryBadgeEnabled___block_invoke;
    v6[3] = &unk_1E774C5F8;
    v6[4] = self;
    [(PXLibraryFilterState *)self performChanges:v6];
    PXPreferencesSetBool(@"SharedLibraryBadgingEnabled", enabledCopy);
  }
}

- (void)setViewMode:(int64_t)mode
{
  if (self->_viewMode != mode)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_viewMode = mode;
    [(PXLibraryFilterObservableViewMode *)self->_viewModeObservable setViewMode:?];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__PXLibraryFilterState_setViewMode___block_invoke;
    v9[3] = &unk_1E774C5F8;
    v9[4] = self;
    [(PXLibraryFilterState *)self performChanges:v9];
    sharedLibraryStatusProvider = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
    hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];

    PXPreferencesSetLibraryFilterViewModeWithSharedLibraryOrPreview(mode, hasSharedLibraryOrPreview);
  }
}

- (id)_localizedDescriptionForViewMode:(int64_t)mode
{
  switch(mode)
  {
    case 2:
      sharedLibraryStatusProvider = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
      [sharedLibraryStatusProvider hasPreview];
      v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_FilterMenu_Shared");

      break;
    case 1:
      v3 = @"PXSharedLibrary_FilterMenu_Personal";
      goto LABEL_6;
    case 0:
      v3 = @"PXSharedLibrary_FilterMenu_All";
LABEL_6:
      v4 = PXLocalizedSharedLibraryString(v3);
      break;
    default:
      v4 = &stru_1F1741150;
      break;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXLibraryFilterState alloc];
  sharedLibraryStatusProvider = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
  v6 = [(PXLibraryFilterState *)v4 initWithSharedLibraryStatusProvider:sharedLibraryStatusProvider];

  *(v6 + 104) = [(PXLibraryFilterState *)self viewMode];
  *(v6 + 96) = [(PXLibraryFilterState *)self isSharedLibraryBadgeEnabled];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      viewMode = [(PXLibraryFilterState *)self viewMode];
      viewMode2 = [(PXLibraryFilterState *)v5 viewMode];

      v8 = viewMode == viewMode2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  viewMode = [(PXLibraryFilterState *)self viewMode];
  if (viewMode > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:off_1E772FE50[viewMode], objc_opt_class()];
  }

  return v3;
}

- (id)menuItemTitleForLibraryFilter:(int64_t)filter
{
  sharedLibraryStatusProvider = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
  hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];

  if (hasSharedLibraryOrPreview)
  {
    if (filter == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = filter == 1;
    }

    v8 = [(PXLibraryFilterState *)self _localizedDescriptionForViewMode:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isLibraryFilterActive:(int64_t)active
{
  viewMode = [(PXLibraryFilterState *)self viewMode];
  v5 = active == 1;
  if (active == 2)
  {
    v5 = 2;
  }

  return viewMode == v5;
}

- (PXLibraryFilterState)initWithSharedLibraryStatusProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = PXLibraryFilterState;
  v6 = [(PXLibraryFilterState *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedLibraryStatusProvider, provider);
    hasSharedLibraryOrPreview = [providerCopy hasSharedLibraryOrPreview];
    [(PXSharedLibraryStatusProvider *)v7->_sharedLibraryStatusProvider registerChangeObserver:v7 context:PXSharedLibraryStatusProviderObservationContext_28195];
    v7->_viewMode = PXPreferencesGetLibraryFilterViewModeWithSharedLibraryOrPreview(hasSharedLibraryOrPreview);
    v9 = [[_TtC12PhotosUICore33PXLibraryFilterObservableViewMode alloc] initWithViewMode:v7->_viewMode];
    viewModeObservable = v7->_viewModeObservable;
    v7->_viewModeObservable = v9;

    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"SharedLibraryBadgingEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
    {
      v11 = 1;
    }

    else
    {
      v11 = keyExistsAndHasValidFormat == 0;
    }

    v12 = v11;
    v7->_sharedLibraryBadgeEnabled = v12;
    if (providerCopy)
    {
      PXRegisterPreferencesObserver(v7);
    }
  }

  return v7;
}

@end