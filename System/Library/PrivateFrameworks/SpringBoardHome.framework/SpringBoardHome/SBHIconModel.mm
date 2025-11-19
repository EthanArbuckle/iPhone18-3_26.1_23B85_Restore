@interface SBHIconModel
+ (Class)applicationIconClass;
+ (SBHIconModelApplicationDataSource)defaultApplicationDataSource;
- (BOOL)addIconToDesignatedLocation:(id)a3 options:(unint64_t)a4 listGridCellInfoOptions:(unint64_t)a5;
- (BOOL)containsIcon:(id)a3;
- (BOOL)deleteIconStateWithOptions:(unint64_t)a3;
- (BOOL)iconStateUnarchiver:(id)a3 listsAllowRotatedLayoutForFolderClass:(Class)a4;
- (BOOL)iconStateUnarchiver:(id)a3 shouldLeaveGapForMissingIconWithIdentifier:(id)a4;
- (BOOL)isIconVisible:(id)a3;
- (BOOL)isTrackingIcon:(id)a3;
- (BOOL)saveIconStateIfNeeded;
- (BOOL)shouldAvoidPlacingIconOnFirstPage:(id)a3;
- (BOOL)shouldSkipAddingIcon:(id)a3 toRootFolder:(id)a4;
- (Class)iconClassForApplicationWithBundleIdentifier:(id)a3;
- (NSDictionary)defaultIconState;
- (NSDictionary)desiredIconState;
- (NSDictionary)iconState;
- (NSSet)currentLeafIdentifiers;
- (NSSet)leafIconIdentifiers;
- (NSSet)removedIcons;
- (NSSet)visibleLeafIcons;
- (NSSet)widgetIcons;
- (NSString)description;
- (NSString)listRotatedLayoutClusterGridSizeClass;
- (NSString)localizedDefaultFolderName;
- (NSString)unlocalizedDefaultFolderName;
- (SBHIconGridSize)iconStateUnarchiver:(id)a3 listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)a4;
- (SBHIconGridSize)listGridSizeForFolderClass:(Class)a3;
- (SBHIconGridSizeClassDomain)gridSizeClassDomain;
- (SBHIconGridSizeClassSizeMap)gridSizeClassSizes;
- (SBHIconModel)init;
- (SBHIconModel)initWithStore:(id)a3 applicationDataSource:(id)a4;
- (SBHIconModel)initWithStore:(id)a3 iconRepository:(id)a4;
- (SBHIconModelApplicationDataSource)applicationDataSource;
- (SBHIconModelDelegate)delegate;
- (SBIconModelStore)store;
- (SBIconModelStore)todayListsStore;
- (id)addAdditionalIconMatchingIcon:(id)a3;
- (id)addApplication:(id)a3;
- (id)addApplicationPlaceholder:(id)a3;
- (id)addBookmarkIconForWebClip:(id)a3;
- (id)allowedGridSizeClassesForDockForIconStateUnarchiver:(id)a3;
- (id)allowedGridSizeClassesForTodayListForIconStateUnarchiver:(id)a3;
- (id)applicationIconsForBundleIdentifier:(id)a3;
- (id)archiver:(id)a3 representationForIcon:(id)a4;
- (id)archiver:(id)a3 representationForIconDataSource:(id)a4;
- (id)bookmarkIconForWebClipIdentifier:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)desiredIndexPathForIconWithIdentifier:(id)a3;
- (id)disableIconStateAutosaveForReason:(id)a3;
- (id)gridSizeClassSizesForIconStateUnarchiver:(id)a3;
- (id)iconModelMetadata;
- (id)iconStateUnarchiver:(id)a3 allowedGridSizeClassesForFolderClass:(Class)a4;
- (id)iconStateUnarchiver:(id)a3 didUnarchiveFileStackIcon:(id)a4;
- (id)iconStateUnarchiver:(id)a3 didUnarchiveWidgetIcon:(id)a4;
- (id)iconStateUnarchiver:(id)a3 supportedGridSizeClassesForWidgetWithKind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6;
- (id)iconsOfClass:(Class)a3;
- (id)listRotatedLayoutClusterGridSizeClassForIconStateUnarchiver:(id)a3;
- (id)localizedFolderNameForDefaultDisplayName:(id)a3;
- (id)makeFolderWithDisplayName:(id)a3;
- (id)makeFolderWithDisplayName:(id)a3 uniqueIdentifier:(id)a4;
- (id)modernizeRootArchive:(id)a3;
- (id)removeApplication:(id)a3;
- (id)removeApplication:(id)a3 pruneEmptyIcons:(BOOL)a4;
- (id)removeApplicationPlaceholder:(id)a3;
- (id)removeApplicationWithBundleIdentifier:(id)a3;
- (id)removeApplicationWithBundleIdentifier:(id)a3 pruneEmptyIcons:(BOOL)a4;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)supportedGridSizeClassesForWidgetWithKind:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5;
- (id)widgetIconsContainingWidgetsMatchingExtensionBundleIdentifier:(id)a3 kind:(id)a4 sizeClass:(int64_t)a5;
- (id)widgetIconsContainingWidgetsMatchingUniqueIdentifier:(id)a3;
- (int64_t)iconStateUnarchiver:(id)a3 listsFixedIconLocationBehaviorForFolderClass:(Class)a4;
- (int64_t)maxIconCountForDockUtilitiesForIconStateUnarchiver:(id)a3;
- (int64_t)maxListCountForFolders;
- (void)addIcon:(id)a3;
- (void)addIconsOfClass:(Class)a3 toSet:(id)a4;
- (void)checkModelConsistency;
- (void)checkModelConsistencyWithListGridCellInfoOptions:(unint64_t)a3;
- (void)clearDesiredIconStateIfPossible;
- (void)clearDesiredIconStateWithOptions:(unint64_t)a3;
- (void)enumerateApplicationIconsForBundleIdentifier:(id)a3 usingBlock:(id)a4;
- (void)enumerateLeafIconsUsingBlock:(id)a3;
- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5;
- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)folder:(id)a3 willAddIcon:(id)a4;
- (void)icon:(id)a3 launchFromLocation:(id)a4 context:(id)a5;
- (void)iconRepository:(id)a3 didAddIcon:(id)a4;
- (void)iconRepository:(id)a3 didAddPlaceholderToApplicationIcon:(id)a4;
- (void)iconRepository:(id)a3 didChangeVisibilityForIconsToVisible:(id)a4 hidden:(id)a5;
- (void)iconRepository:(id)a3 didRemovePlaceholderFromApplicationIcon:(id)a4;
- (void)iconRepository:(id)a3 willRemoveIcon:(id)a4;
- (void)iconWantsUninstall:(id)a3;
- (void)importDesiredIconState:(id)a3;
- (void)importIconState:(id)a3;
- (void)installedWebClipsDidChange;
- (void)layout;
- (void)layoutIfNeeded;
- (void)localeChanged;
- (void)markIconStateClean;
- (void)markIconStateDirty;
- (void)noteApplicationIconImageChanged:(id)a3;
- (void)removeAllIcons;
- (void)removeApplicationIconsForBundleIdentifier:(id)a3;
- (void)removeIcon:(id)a3;
- (void)removeIconForIdentifier:(id)a3;
- (void)removeIcons:(id)a3;
- (void)saveDesiredIconState;
- (void)setAutomaticallyAddsWebClips:(BOOL)a3;
- (void)setDesiredIconRelativePath:(id)a3 forIconWithIdentifier:(id)a4;
- (void)setDesiredIconState:(id)a3;
- (void)setDesiredIconStateFlattened:(id)a3;
- (void)setRemovedIcons:(id)a3;
- (void)setRootFolderAllowedGridSizeClasses:(id)a3;
- (void)setStore:(id)a3;
- (void)setTodayListsStore:(id)a3;
- (void)setVisibilityOfIconsWithVisibleTags:(id)a3 hiddenTags:(id)a4;
@end

@implementation SBHIconModel

- (BOOL)isIconVisible:(id)a3
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = a3;
  v8 = self;
  v9 = [(SBHIconModel *)v8 iconRepository];
  LOBYTE(v6) = [(SBHIconRepository *)v9 isIconVisible:v6];

  return v6;
}

- (SBHIconModel)initWithStore:(id)a3 applicationDataSource:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1BEB43330(a3, a4);
}

- (SBHIconModel)initWithStore:(id)a3 iconRepository:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = sub_1BEB437E8(a3, a4);
  swift_unknownObjectRelease();

  return v7;
}

- (void)iconRepository:(id)a3 didAddIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BEB44840(v7);
}

- (SBHIconGridSizeClassDomain)gridSizeClassDomain
{
  v2 = self;
  v3 = sub_1BEB46C1C();

  return v3;
}

- (SBHIconModelDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)markIconStateDirty
{
  v2 = self;
  sub_1BEB544A0();
}

- (id)widgetIconsContainingWidgetsMatchingUniqueIdentifier:(id)a3
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  v7 = self;
  sub_1BEB5973C(v4, v6);

  sub_1BEB20D28(0, &qword_1EBDBFF30);
  v8 = sub_1BEE4719C();

  return v8;
}

- (SBHIconModel)init
{
  swift_getObjectType();
  v3 = -[SBHIconModel initWithStore:applicationDataSource:](self, sel_initWithStore_applicationDataSource_, 0, [swift_getObjCClassFromMetadata() defaultApplicationDataSource]);
  swift_unknownObjectRelease();
  return v3;
}

+ (SBHIconModelApplicationDataSource)defaultApplicationDataSource
{
  v2 = [objc_allocWithZone(SBHApplicationDataSource) init];

  return v2;
}

- (SBHIconModelApplicationDataSource)applicationDataSource
{
  v2 = self;
  v3 = sub_1BEE0BB8C();

  return v3;
}

+ (Class)applicationIconClass
{
  sub_1BEB20D28(0, &unk_1EBDBFFD0);

  return swift_getObjCClassFromMetadata();
}

- (Class)iconClassForApplicationWithBundleIdentifier:(id)a3
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  v7 = self;
  sub_1BEE0BCCC(v4, v6);

  return swift_getObjCClassFromMetadata();
}

- (id)addApplication:(id)a3
{
  v3 = [(SBHIconModel *)self addWithApplication:a3 force:0];

  return v3;
}

- (id)addAdditionalIconMatchingIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEE0C19C(v4);

  return v6;
}

- (id)removeApplication:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = [a3 bundleIdentifier];
  if (!v6)
  {
    sub_1BEE4708C();
    v6 = sub_1BEE4705C();
  }

  v7 = [(SBHIconModel *)v5 removeApplicationWithBundleIdentifier:v6];
  swift_unknownObjectRelease();

  return v7;
}

- (id)removeApplication:(id)a3 pruneEmptyIcons:(BOOL)a4
{
  v4 = a4;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = [a3 bundleIdentifier];
  if (!v8)
  {
    sub_1BEE4708C();
    v8 = sub_1BEE4705C();
  }

  v9 = [(SBHIconModel *)v7 removeApplicationWithBundleIdentifier:v8 pruneEmptyIcons:v4];
  swift_unknownObjectRelease();

  return v9;
}

- (id)removeApplicationWithBundleIdentifier:(id)a3
{
  v3 = [(SBHIconModel *)self removeApplicationWithBundleIdentifier:a3 pruneEmptyIcons:0];

  return v3;
}

- (id)removeApplicationWithBundleIdentifier:(id)a3 pruneEmptyIcons:(BOOL)a4
{
  v6 = sub_1BEE4708C();
  v8 = v7;
  v9 = self;
  sub_1BEE0C878(v6, v8, a4);
  v11 = v10;

  return v11;
}

- (id)applicationIconsForBundleIdentifier:(id)a3
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  v7 = self;
  v8 = sub_1BEE4705C();
  v9 = [(SBHIconModel *)v7 applicationIconForBundleIdentifier:v8];

  if (v9)
  {
    v10 = sub_1BEE0CA88(v4, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BEE8AF50;
    *(v11 + 32) = v9;
    sub_1BEE34FE8(v10);
  }

  sub_1BEB20D28(0, &unk_1EBDBFFD0);
  v12 = sub_1BEE4719C();

  return v12;
}

- (void)enumerateApplicationIconsForBundleIdentifier:(id)a3 usingBlock:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1BEE4708C();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1BEE1FDEC(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeApplicationIconsForBundleIdentifier:(id)a3
{
  v7 = self;
  v4 = [(SBHIconModel *)v7 applicationIconsForBundleIdentifier:a3];
  sub_1BEB20D28(0, &unk_1EBDBFFD0);
  v5 = sub_1BEE471AC();

  sub_1BEE09E5C(v5);

  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = sub_1BEE4719C();

  [(SBHIconModel *)v7 removeIcons:v6];
}

- (NSSet)widgetIcons
{
  swift_beginAccess();

  sub_1BEB2AAF0(v2);
  sub_1BEB20D28(0, &qword_1EBDBFF30);
  sub_1BEB2A7E0(&qword_1EBDBFF28, &qword_1EBDBFF30);
  v3 = sub_1BEE4724C();

  return v3;
}

- (id)widgetIconsContainingWidgetsMatchingExtensionBundleIdentifier:(id)a3 kind:(id)a4 sizeClass:(int64_t)a5
{
  v8 = sub_1BEE4708C();
  v10 = v9;
  if (a4)
  {
    v11 = sub_1BEE4708C();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = self;
  sub_1BEE0CF34(v8, v10, v11, a4, a5);

  sub_1BEB20D28(0, &qword_1EBDBFF30);
  v14 = sub_1BEE4719C();

  return v14;
}

- (id)bookmarkIconForWebClipIdentifier:(id)a3
{
  v3 = [(SBHIconModel *)self leafIconForIdentifier:a3];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {

      v3 = 0;
    }
  }

  return v3;
}

- (id)addBookmarkIconForWebClip:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEE0D7F8(v4);

  return v6;
}

- (void)setAutomaticallyAddsWebClips:(BOOL)a3
{
  v4 = self;
  sub_1BEE0D9B8(a3);
}

- (void)addIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEE0DCA4(v4);
}

- (void)removeIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEE0E878(v4, 1, 1);
}

- (void)removeIcons:(id)a3
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v4 = sub_1BEE471AC();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_1BEE474CC();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v7 = self;
  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB4EA90](i, v5);
    }

    else
    {
      v9 = *(v5 + 8 * i + 32);
    }

    v10 = v9;
    [(SBHIconModel *)v7 removeIcon:v9];
  }

LABEL_10:
}

- (void)removeIconForIdentifier:(id)a3
{
  v6 = self;
  v4 = [(SBHIconModel *)v6 leafIconForIdentifier:a3];
  if (v4)
  {
    v5 = v4;
    [(SBHIconModel *)v6 removeIcon:v4];
  }
}

- (void)removeAllIcons
{
  v2 = self;
  sub_1BEE0F33C();
}

- (BOOL)containsIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1BEE0F470(v4);

  return self & 1;
}

- (NSSet)visibleLeafIcons
{
  v2 = self;
  v3 = [(SBHIconModel *)v2 leafIcons];
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v4 = sub_1BEE4726C();

  sub_1BEE20630(v4, v2);
  v5 = sub_1BEE4724C();

  return v5;
}

- (void)enumerateLeafIconsUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1BEE2083C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)isTrackingIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1BEE0FD30(v4);

  return self & 1;
}

- (void)addIconsOfClass:(Class)a3 toSet:(id)a4
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = a4;
  v8 = self;
  sub_1BEE10160(ObjCClassMetadata, v7);
}

- (id)iconsOfClass:(Class)a3
{
  swift_getObjCClassMetadata();
  v4 = self;
  v5 = [(SBHIconModel *)v4 leafIcons];
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v6 = sub_1BEE4726C();

  sub_1BEE1E528(v6);
  v7 = sub_1BEE4724C();

  return v7;
}

- (NSSet)leafIconIdentifiers
{
  v2 = self;
  v3 = [(SBHIconModel *)v2 leafIcons];
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v4 = sub_1BEE4726C();

  sub_1BEE0B428(v4);
  v6 = v5;

  sub_1BEDCF8A0(v6);

  v7 = sub_1BEE4724C();

  return v7;
}

- (NSSet)currentLeafIdentifiers
{
  v2 = self;
  v3 = [(SBHIconModel *)v2 leafIconIdentifiers];
  sub_1BEE4726C();

  v4 = sub_1BEE4724C();

  return v4;
}

- (BOOL)addIconToDesignatedLocation:(id)a3 options:(unint64_t)a4 listGridCellInfoOptions:(unint64_t)a5
{
  v8 = a3;
  v9 = self;
  v10 = [(SBHIconModel *)v9 rootFolder];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BEE10740(v8, v10, a4, a5);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (BOOL)shouldSkipAddingIcon:(id)a3 toRootFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1BEE21E68(v6);

  return v9 & 1;
}

- (NSDictionary)desiredIconState
{
  if (*(self + OBJC_IVAR___SBHIconModel__desiredIconState))
  {

    v2 = sub_1BEE4700C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setDesiredIconStateFlattened:(id)a3
{
  if (a3)
  {
    v4 = sub_1BEE4726C();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR___SBHIconModel_desiredIconStateFlattened) = v4;
}

- (void)setDesiredIconState:(id)a3
{
  *(self + OBJC_IVAR___SBHIconModel__desiredIconState) = sub_1BEE4701C();
  v4 = self;

  [(SBHIconModel *)v4 setDesiredIconStateFlattened:0];
}

- (id)desiredIndexPathForIconWithIdentifier:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1BEE4708C();
  v9 = v8;
  v10 = self;
  sub_1BEE13820(v7, v9, v6);

  v11 = sub_1BEE469DC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1BEE4696C();
    (*(v12 + 8))(v6, v11);
    v14 = v15;
  }

  return v14;
}

- (void)clearDesiredIconStateWithOptions:(unint64_t)a3
{
  v4 = self;
  sub_1BEE13DAC(a3);
}

- (void)clearDesiredIconStateIfPossible
{
  v2 = self;
  sub_1BEE14184();
}

- (void)setDesiredIconRelativePath:(id)a3 forIconWithIdentifier:(id)a4
{
  v6 = sub_1BEE4708C();
  v8 = v7;
  v9 = OBJC_IVAR___SBHIconModel_additionalDesiredIconRelativePaths;
  swift_beginAccess();
  v10 = a3;
  v11 = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(self + v9);
  *(self + v9) = 0x8000000000000000;
  sub_1BEE31F30(v10, v6, v8, isUniquelyReferenced_nonNull_native);

  *(self + v9) = v13;
  swift_endAccess();
}

- (NSDictionary)defaultIconState
{
  v2 = self;
  v3 = [(SBHIconModel *)v2 delegate];
  if (v3)
  {
    v4 = v3;
    if (([(SBHIconModelDelegate *)v3 respondsToSelector:sel_defaultIconStateForIconModel_]& 1) != 0)
    {
      v5 = [(SBHIconModelDelegate *)v4 defaultIconStateForIconModel:v2];
      swift_unknownObjectRelease();
      sub_1BEE4701C();

      v2 = v5;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  sub_1BEB449C8(MEMORY[0x1E69E7CC0]);
LABEL_6:

  v6 = sub_1BEE4700C();

  return v6;
}

- (BOOL)shouldAvoidPlacingIconOnFirstPage:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(SBHIconModel *)v5 delegate];
  if (v6)
  {
    v7 = v6;
    if (([(SBHIconModelDelegate *)v6 respondsToSelector:sel_iconModel_shouldAvoidPlacingIconOnFirstPage_]& 1) != 0)
    {
      v8 = [(SBHIconModelDelegate *)v7 iconModel:v5 shouldAvoidPlacingIconOnFirstPage:v4];
    }

    else
    {
      v8 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)modernizeRootArchive:(id)a3
{
  sub_1BEE4701C();
  v3 = sub_1BEE4700C();

  return v3;
}

- (BOOL)deleteIconStateWithOptions:(unint64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1BEE15CF8(a3);

  return a3 & 1;
}

- (void)saveDesiredIconState
{
  v2 = self;
  sub_1BEE16078();
}

- (id)iconModelMetadata
{
  sub_1BEB449C8(MEMORY[0x1E69E7CC0]);
  v2 = sub_1BEE4700C();

  return v2;
}

- (BOOL)saveIconStateIfNeeded
{
  v2 = self;
  v3 = sub_1BEE16A34();

  return v3 & 1;
}

- (void)importIconState:(id)a3
{
  sub_1BEE4701C();
  v4 = self;
  sub_1BEE16D10();
}

- (void)importDesiredIconState:(id)a3
{
  sub_1BEE4701C();
  v7 = self;
  v4 = sub_1BEE4700C();

  v5 = [(SBHIconModel *)v7 modernizeRootArchive:v4];

  v6 = sub_1BEE4701C();
  *(v7 + OBJC_IVAR___SBHIconModel__desiredIconState) = v6;

  [(SBHIconModel *)v7 saveDesiredIconState];
}

- (NSDictionary)iconState
{
  v2 = self;
  if (!sub_1BEE14D78())
  {
    sub_1BEB449C8(MEMORY[0x1E69E7CC0]);
  }

  v3 = sub_1BEE4700C();

  return v3;
}

- (void)markIconStateClean
{
  if (*(self + OBJC_IVAR___SBHIconModel_isIconStateReallyDirty) == 1)
  {
    *(self + OBJC_IVAR___SBHIconModel_isIconStateReallyDirty) = 0;
    v5 = self;
    v3 = [(SBHIconModel *)v5 rootFolder];
    if (v3)
    {
      v4 = v3;
      [(SBFolder *)v3 markIconStateClean];
    }
  }
}

- (id)disableIconStateAutosaveForReason:(id)a3
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  v7 = self;
  v8 = sub_1BEE1719C(v4, v6);

  return v8;
}

- (void)checkModelConsistency
{
  v4 = self;
  v2 = [(SBHIconModel *)v4 rootFolder];
  if (v2)
  {
    v3 = v2;
    sub_1BEE1770C(v2, 0);
  }
}

- (void)checkModelConsistencyWithListGridCellInfoOptions:(unint64_t)a3
{
  v6 = self;
  v4 = [(SBHIconModel *)v6 rootFolder];
  if (v4)
  {
    v5 = v4;
    sub_1BEE1770C(v4, a3);
  }
}

- (void)setVisibilityOfIconsWithVisibleTags:(id)a3 hiddenTags:(id)a4
{
  if (a3)
  {
    sub_1BEE4726C();
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a4)
  {
LABEL_3:
    sub_1BEE4726C();
  }

LABEL_4:
  v6 = self;
  sub_1BEE17EB4();
}

- (SBIconModelStore)store
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setStore:(id)a3
{
  v5 = OBJC_IVAR___SBHIconModel_store;
  v6 = *(self + OBJC_IVAR___SBHIconModel_store);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_1BEE18520(a3);
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1BEE18584(v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (SBIconModelStore)todayListsStore
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setTodayListsStore:(id)a3
{
  v4 = *(self + OBJC_IVAR___SBHIconModel_todayListsStore);
  *(self + OBJC_IVAR___SBHIconModel_todayListsStore) = a3;
  swift_unknownObjectRetain_n();
  v5 = self;
  sub_1BEE186AC(v4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (void)layout
{
  v2 = self;
  sub_1BEE187BC();
}

- (void)layoutIfNeeded
{
  v3 = self;
  v2 = [(SBHIconModel *)v3 rootFolder];
  if (v2)
  {
  }

  else
  {
    [(SBHIconModel *)v3 layout];
  }
}

- (id)makeFolderWithDisplayName:(id)a3
{
  v3 = [(SBHIconModel *)self makeFolderWithDisplayName:a3 uniqueIdentifier:0];

  return v3;
}

- (id)makeFolderWithDisplayName:(id)a3 uniqueIdentifier:(id)a4
{
  v6 = sub_1BEE4708C();
  v8 = v7;
  if (a4)
  {
    v9 = sub_1BEE4708C();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  v12 = sub_1BEE193C0(v6, v8, v9, a4);

  return v12;
}

- (id)localizedFolderNameForDefaultDisplayName:(id)a3
{
  sub_1BEE4708C();
  v4 = self;
  v5 = [(SBHIconModel *)v4 delegate];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BEE4705C();
    v8 = [(SBHIconModelDelegate *)v6 iconModel:v4 localizedFolderNameForDefaultDisplayName:v7];

    swift_unknownObjectRelease();
    sub_1BEE4708C();
  }

  else
  {
  }

  v9 = sub_1BEE4705C();

  return v9;
}

- (NSString)localizedDefaultFolderName
{
  v2 = self;
  v3 = [(SBHIconModel *)v2 unlocalizedDefaultFolderName];
  if (!v3)
  {
    sub_1BEE4708C();
    v3 = sub_1BEE4705C();
  }

  v4 = [(SBHIconModel *)v2 localizedFolderNameForDefaultDisplayName:v3];

  if (!v4)
  {
    sub_1BEE4708C();
    v4 = sub_1BEE4705C();
  }

  return v4;
}

- (NSString)unlocalizedDefaultFolderName
{
  v2 = sub_1BEE4705C();

  return v2;
}

- (void)setRootFolderAllowedGridSizeClasses:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 copyWithZone_];
  sub_1BEE4741C();

  swift_unknownObjectRelease();
  sub_1BEB20D28(0, &unk_1EBDBFED0);
  swift_dynamicCast();
  v6 = *(v5 + OBJC_IVAR___SBHIconModel_rootFolderAllowedGridSizeClasses);
  *(v5 + OBJC_IVAR___SBHIconModel_rootFolderAllowedGridSizeClasses) = v7;
}

- (void)localeChanged
{
  v2 = self;
  sub_1BEE19970();
}

- (id)addApplicationPlaceholder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1BEE19CEC(a3);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (id)removeApplicationPlaceholder:(id)a3
{
  v3 = [(SBHIconModel *)self removeApplicationPlaceholder:a3 pruneEmptyIcons:0];

  return v3;
}

- (int64_t)maxListCountForFolders
{
  v2 = self;
  v3 = [(SBHIconModel *)v2 delegate];
  if (v3)
  {
    v4 = [(SBHIconModelDelegate *)v3 maxListCountForFoldersForIconModel:v2];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 15;
  }

  return v4;
}

- (SBHIconGridSize)listGridSizeForFolderClass:(Class)a3
{
  v4 = self;
  v5 = [(SBHIconModel *)v4 delegate];
  if (v5)
  {
    v6 = [(SBHIconModelDelegate *)v5 iconModel:v4 listGridSizeForFolderClass:a3];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 196611;
  }

  return v6;
}

- (SBHIconGridSizeClassSizeMap)gridSizeClassSizes
{
  v2 = self;
  v3 = [(SBHIconModel *)v2 delegate];
  if (v3)
  {
    v4 = [(SBHIconModelDelegate *)v3 gridSizeClassSizesForIconModel:v2];

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = [objc_allocWithZone(SBHIconGridSizeClassSizeMap) init];
  }

  return v4;
}

- (NSString)listRotatedLayoutClusterGridSizeClass
{
  v2 = self;
  v3 = [(SBHIconModel *)v2 delegate];
  if (v3)
  {
    v4 = v3;
    if (([(SBHIconModelDelegate *)v3 respondsToSelector:sel_listRotatedLayoutClusterGridSizeClassForIconModel_]& 1) != 0)
    {
      v5 = [(SBHIconModelDelegate *)v4 listRotatedLayoutClusterGridSizeClassForIconModel:v2];

      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v5 = @"SBHIconGridSizeClassDefault";

LABEL_6:

  return v5;
}

- (id)supportedGridSizeClassesForWidgetWithKind:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5
{
  sub_1BEE4708C();
  sub_1BEE4708C();
  sub_1BEE4708C();
  v6 = self;
  v7 = sub_1BEE1A888();

  return v7;
}

- (NSSet)removedIcons
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);

  v2 = sub_1BEE4724C();

  return v2;
}

- (void)setRemovedIcons:(id)a3
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
  *(self + OBJC_IVAR___SBHIconModel_removedIcons) = sub_1BEE4726C();
}

- (void)icon:(id)a3 launchFromLocation:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1BEE1AFBC(v8, v9, a5);

  swift_unknownObjectRelease();
}

- (void)iconWantsUninstall:(id)a3
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a3;
    v9 = self;
    v8 = [(SBHIconModel *)v9 iconRepository];
    [(SBHIconRepository *)v8 uninstallIcon:v6 completionHandler:0];
  }
}

- (SBHIconGridSize)iconStateUnarchiver:(id)a3 listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)a4
{
  v5 = self;
  v6 = [(SBHIconModel *)v5 delegate];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  if (([(SBHIconModelDelegate *)v6 respondsToSelector:sel_iconModel_listWithNonDefaultSizedIconsGridSizeForFolderClass_]& 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_5:

    v10 = 0;
    v9 = 0;
    return (v9 | v10);
  }

  v8 = [(SBHIconModelDelegate *)v7 iconModel:v5 listWithNonDefaultSizedIconsGridSizeForFolderClass:a4];
  swift_unknownObjectRelease();

  v9 = v8 & 0xFFFF0000;
  v10 = v8;
  return (v9 | v10);
}

- (int64_t)maxIconCountForDockUtilitiesForIconStateUnarchiver:(id)a3
{
  v3 = self;
  v4 = [(SBHIconModel *)v3 delegate];
  if (v4)
  {
    v5 = v4;
    if (([(SBHIconModelDelegate *)v4 respondsToSelector:sel_maxIconCountForDockUtilitiesForIconModel_]& 1) != 0)
    {
      v6 = [(SBHIconModelDelegate *)v5 maxIconCountForDockUtilitiesForIconModel:v3];
    }

    else
    {
      v6 = 3;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

- (id)gridSizeClassSizesForIconStateUnarchiver:(id)a3
{
  v3 = [(SBHIconModel *)self gridSizeClassSizes];

  return v3;
}

- (id)listRotatedLayoutClusterGridSizeClassForIconStateUnarchiver:(id)a3
{
  v3 = [(SBHIconModel *)self listRotatedLayoutClusterGridSizeClass];

  return v3;
}

- (BOOL)iconStateUnarchiver:(id)a3 listsAllowRotatedLayoutForFolderClass:(Class)a4
{
  v5 = self;
  v6 = [(SBHIconModel *)v5 delegate];
  if (v6)
  {
    v7 = v6;
    if (([(SBHIconModelDelegate *)v6 respondsToSelector:sel_iconModel_listsAllowRotatedLayoutForFolderClass_]& 1) != 0)
    {
      v8 = [(SBHIconModelDelegate *)v7 iconModel:v5 listsAllowRotatedLayoutForFolderClass:a4];
    }

    else
    {
      v8 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconStateUnarchiver:(id)a3 allowedGridSizeClassesForFolderClass:(Class)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = self;
  v8 = sub_1BEE22DA4();

  return v8;
}

- (id)allowedGridSizeClassesForDockForIconStateUnarchiver:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEE22E78();

  return v6;
}

- (id)allowedGridSizeClassesForTodayListForIconStateUnarchiver:(id)a3
{
  v3 = self;
  v4 = sub_1BEE1A708();

  return v4;
}

- (id)iconStateUnarchiver:(id)a3 didUnarchiveWidgetIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1BEE22F44(v7);

  return v9;
}

- (id)iconStateUnarchiver:(id)a3 didUnarchiveFileStackIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1BEE23084(v7);

  return v9;
}

- (id)iconStateUnarchiver:(id)a3 supportedGridSizeClassesForWidgetWithKind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6
{
  v6 = [(SBHIconModel *)self supportedGridSizeClassesForWidgetWithKind:a4 extensionBundleIdentifier:a5 containerBundleIdentifier:a6];

  return v6;
}

- (int64_t)iconStateUnarchiver:(id)a3 listsFixedIconLocationBehaviorForFolderClass:(Class)a4
{
  v5 = self;
  v6 = [(SBHIconModel *)v5 delegate];
  if (v6)
  {
    v7 = v6;
    if (([(SBHIconModelDelegate *)v6 respondsToSelector:sel_iconModel_listsFixedIconLocationBehaviorForFolderClass_]& 1) != 0)
    {
      v8 = [(SBHIconModelDelegate *)v7 iconModel:v5 listsFixedIconLocationBehaviorForFolderClass:a4];
    }

    else
    {
      v8 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)iconStateUnarchiver:(id)a3 shouldLeaveGapForMissingIconWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = [(SBHIconModel *)v6 delegate];
  if (v7)
  {
    v8 = v7;
    if (([(SBHIconModelDelegate *)v7 respondsToSelector:sel_iconModel_shouldLeaveGapForMissingArchivedIconWithIdentifier_]& 1) != 0)
    {
      v9 = [(SBHIconModelDelegate *)v8 iconModel:v6 shouldLeaveGapForMissingArchivedIconWithIdentifier:v5];
    }

    else
    {
      v9 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)archiver:(id)a3 representationForIcon:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = [(SBHIconModel *)v6 delegate];
  if (v7)
  {
    v8 = v7;
    if (([(SBHIconModelDelegate *)v7 respondsToSelector:sel_iconModel_archiveRepresentationForIcon_]& 1) != 0)
    {
      v9 = [(SBHIconModelDelegate *)v8 iconModel:v6 archiveRepresentationForIcon:v5];
      swift_unknownObjectRelease();
      if (v9)
      {
        sub_1BEE4701C();

        v10 = sub_1BEE4700C();

        v11 = v10;
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)archiver:(id)a3 representationForIconDataSource:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = [(SBHIconModel *)v6 delegate];
  if (v7)
  {
    v8 = v7;
    if (([(SBHIconModelDelegate *)v7 respondsToSelector:sel_iconModel_archiveRepresentationForIconDataSource_]& 1) != 0)
    {
      v9 = [(SBHIconModelDelegate *)v8 iconModel:v6 archiveRepresentationForIconDataSource:a4];
      swift_unknownObjectRelease();
      if (v9)
      {
        sub_1BEE4701C();
        swift_unknownObjectRelease();

        v10 = sub_1BEE4700C();

        v11 = v10;
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();

  v11 = 0;
LABEL_7:

  return v11;
}

- (void)installedWebClipsDidChange
{
  v2 = self;
  sub_1BEE1C070();
}

- (void)noteApplicationIconImageChanged:(id)a3
{
  v4 = sub_1BEE4681C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE467FC();
  v8 = self;
  sub_1BEE1C34C();

  (*(v5 + 8))(v7, v4);
}

- (NSString)description
{
  v2 = self;
  result = [(SBHIconModel *)v2 descriptionWithMultilinePrefix:0];
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)succinctDescription
{
  v2 = self;
  result = [(SBHIconModel *)v2 succinctDescriptionBuilder];
  if (result)
  {
    v4 = result;
    v5 = [result build];

    if (v5)
    {
      sub_1BEE4708C();

      v6 = sub_1BEE4705C();
    }

    else
    {

      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)succinctDescriptionBuilder
{
  v2 = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];

  return v2;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  if (a3)
  {
    v4 = sub_1BEE4708C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1BEDF56F4(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1BEE4705C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  if (a3)
  {
    sub_1BEE4708C();
  }

  v4 = self;
  v5 = sub_1BEE2315C();

  return v5;
}

- (void)iconRepository:(id)a3 willRemoveIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BEE23448(v7);
}

- (void)iconRepository:(id)a3 didAddPlaceholderToApplicationIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BEE235C0(v7, &selRef_applicationPlaceholder, &selRef_replaceIconDataSourcesWithApplicationPlaceholder_);
}

- (void)iconRepository:(id)a3 didRemovePlaceholderFromApplicationIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BEE235C0(v7, &selRef_application, &selRef_replaceIconDataSourcesWithApplication_);
}

- (void)iconRepository:(id)a3 didChangeVisibilityForIconsToVisible:(id)a4 hidden:(id)a5
{
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  v7 = sub_1BEE471AC();
  v8 = sub_1BEE471AC();
  v9 = a3;
  v10 = self;
  sub_1BEE2377C(v7, v8);
}

- (void)folder:(id)a3 willAddIcon:(id)a4
{
  v5 = a4;
  v6 = self;
  if (![(SBHIconModel *)v6 isTrackingIcon:v5])
  {
    [(SBHIconModel *)v6 addIcon:v5];
  }
}

- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5
{
  v6 = a4;
  if (a4)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    v6 = sub_1BEE4726C();
  }

  if (a5)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    a5 = sub_1BEE4726C();
  }

  v9 = a3;
  v10 = self;
  sub_1BEE23F18(v6, a5);
}

- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = self;
  if (![(SBHIconModel *)v9 isTrackingIcon:v8])
  {
    [(SBHIconModel *)v9 addIcon:v8];
  }

  sub_1BEE0C540(v7);
}

@end