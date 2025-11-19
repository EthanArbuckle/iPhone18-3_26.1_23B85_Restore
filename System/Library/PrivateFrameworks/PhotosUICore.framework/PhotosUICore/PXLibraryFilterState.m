@interface PXLibraryFilterState
- (BOOL)isEqual:(id)a3;
- (BOOL)isLibraryFilterActive:(int64_t)a3;
- (NSString)description;
- (NSString)localizedDescription;
- (NSString)localizedFooterDescription;
- (PXLibraryFilterState)initWithSharedLibraryStatusProvider:(id)a3;
- (id)_localizedDescriptionForViewMode:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)menuItemTitleForLibraryFilter:(int64_t)a3;
- (id)predicateForUseCase:(unint64_t)a3;
- (unsigned)sharingFilter;
- (void)dealloc;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)preferencesDidChange;
- (void)setSharedLibraryBadgeEnabled:(BOOL)a3;
- (void)setViewMode:(int64_t)a3;
@end

@implementation PXLibraryFilterState

- (void)dealloc
{
  v3 = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];

  if (v3)
  {
    PXUnregisterPreferencesObserver(self);
  }

  v4.receiver = self;
  v4.super_class = PXLibraryFilterState;
  [(PXLibraryFilterState *)&v4 dealloc];
}

- (void)preferencesDidChange
{
  v3 = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
  v4 = [v3 hasSharedLibraryOrPreview];

  if (v4)
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 3) != 0 && PXSharedLibraryStatusProviderObservationContext_28195 == a5)
  {
    v6 = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
    v7 = [v6 hasSharedLibraryOrPreview];

    if ((v7 & 1) == 0)
    {

      [(PXLibraryFilterState *)self setViewMode:0];
    }
  }
}

- (NSString)localizedFooterDescription
{
  v3 = [(PXLibraryFilterState *)self viewMode];
  switch(v3)
  {
    case 2:
      v6 = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
      if ([v6 hasPreview])
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
  v3 = [(PXLibraryFilterState *)self viewMode];

  return [(PXLibraryFilterState *)self _localizedDescriptionForViewMode:v3];
}

- (id)predicateForUseCase:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"PXLibraryFilterState.m" lineNumber:212 description:{@"Use of this method is deprecated: %@", v6}];

  return 0;
}

- (unsigned)sharingFilter
{
  v2 = [(PXLibraryFilterState *)self viewMode];

  return PXSharingFilterFromLibraryFilterViewMode(v2);
}

- (void)setSharedLibraryBadgeEnabled:(BOOL)a3
{
  if (self->_sharedLibraryBadgeEnabled != a3)
  {
    v6[7] = v3;
    v6[8] = v4;
    v5 = a3;
    self->_sharedLibraryBadgeEnabled = a3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__PXLibraryFilterState_setSharedLibraryBadgeEnabled___block_invoke;
    v6[3] = &unk_1E774C5F8;
    v6[4] = self;
    [(PXLibraryFilterState *)self performChanges:v6];
    PXPreferencesSetBool(@"SharedLibraryBadgingEnabled", v5);
  }
}

- (void)setViewMode:(int64_t)a3
{
  if (self->_viewMode != a3)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_viewMode = a3;
    [(PXLibraryFilterObservableViewMode *)self->_viewModeObservable setViewMode:?];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__PXLibraryFilterState_setViewMode___block_invoke;
    v9[3] = &unk_1E774C5F8;
    v9[4] = self;
    [(PXLibraryFilterState *)self performChanges:v9];
    v7 = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
    v8 = [v7 hasSharedLibraryOrPreview];

    PXPreferencesSetLibraryFilterViewModeWithSharedLibraryOrPreview(a3, v8);
  }
}

- (id)_localizedDescriptionForViewMode:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v5 = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
      [v5 hasPreview];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXLibraryFilterState alloc];
  v5 = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
  v6 = [(PXLibraryFilterState *)v4 initWithSharedLibraryStatusProvider:v5];

  *(v6 + 104) = [(PXLibraryFilterState *)self viewMode];
  *(v6 + 96) = [(PXLibraryFilterState *)self isSharedLibraryBadgeEnabled];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXLibraryFilterState *)self viewMode];
      v7 = [(PXLibraryFilterState *)v5 viewMode];

      v8 = v6 == v7;
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
  v2 = [(PXLibraryFilterState *)self viewMode];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:off_1E772FE50[v2], objc_opt_class()];
  }

  return v3;
}

- (id)menuItemTitleForLibraryFilter:(int64_t)a3
{
  v5 = [(PXLibraryFilterState *)self sharedLibraryStatusProvider];
  v6 = [v5 hasSharedLibraryOrPreview];

  if (v6)
  {
    if (a3 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = a3 == 1;
    }

    v8 = [(PXLibraryFilterState *)self _localizedDescriptionForViewMode:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isLibraryFilterActive:(int64_t)a3
{
  v4 = [(PXLibraryFilterState *)self viewMode];
  v5 = a3 == 1;
  if (a3 == 2)
  {
    v5 = 2;
  }

  return v4 == v5;
}

- (PXLibraryFilterState)initWithSharedLibraryStatusProvider:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PXLibraryFilterState;
  v6 = [(PXLibraryFilterState *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedLibraryStatusProvider, a3);
    v8 = [v5 hasSharedLibraryOrPreview];
    [(PXSharedLibraryStatusProvider *)v7->_sharedLibraryStatusProvider registerChangeObserver:v7 context:PXSharedLibraryStatusProviderObservationContext_28195];
    v7->_viewMode = PXPreferencesGetLibraryFilterViewModeWithSharedLibraryOrPreview(v8);
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
    if (v5)
    {
      PXRegisterPreferencesObserver(v7);
    }
  }

  return v7;
}

@end