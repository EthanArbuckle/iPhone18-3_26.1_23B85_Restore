@interface SBHIconModel
+ (Class)applicationIconClass;
+ (SBHIconModelApplicationDataSource)defaultApplicationDataSource;
- (BOOL)addIconToDesignatedLocation:(id)location options:(unint64_t)options listGridCellInfoOptions:(unint64_t)infoOptions;
- (BOOL)containsIcon:(id)icon;
- (BOOL)deleteIconStateWithOptions:(unint64_t)options;
- (BOOL)iconStateUnarchiver:(id)unarchiver listsAllowRotatedLayoutForFolderClass:(Class)class;
- (BOOL)iconStateUnarchiver:(id)unarchiver shouldLeaveGapForMissingIconWithIdentifier:(id)identifier;
- (BOOL)isIconVisible:(id)visible;
- (BOOL)isTrackingIcon:(id)icon;
- (BOOL)saveIconStateIfNeeded;
- (BOOL)shouldAvoidPlacingIconOnFirstPage:(id)page;
- (BOOL)shouldSkipAddingIcon:(id)icon toRootFolder:(id)folder;
- (Class)iconClassForApplicationWithBundleIdentifier:(id)identifier;
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
- (SBHIconGridSize)iconStateUnarchiver:(id)unarchiver listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)class;
- (SBHIconGridSize)listGridSizeForFolderClass:(Class)class;
- (SBHIconGridSizeClassDomain)gridSizeClassDomain;
- (SBHIconGridSizeClassSizeMap)gridSizeClassSizes;
- (SBHIconModel)init;
- (SBHIconModel)initWithStore:(id)store applicationDataSource:(id)source;
- (SBHIconModel)initWithStore:(id)store iconRepository:(id)repository;
- (SBHIconModelApplicationDataSource)applicationDataSource;
- (SBHIconModelDelegate)delegate;
- (SBIconModelStore)store;
- (SBIconModelStore)todayListsStore;
- (id)addAdditionalIconMatchingIcon:(id)icon;
- (id)addApplication:(id)application;
- (id)addApplicationPlaceholder:(id)placeholder;
- (id)addBookmarkIconForWebClip:(id)clip;
- (id)allowedGridSizeClassesForDockForIconStateUnarchiver:(id)unarchiver;
- (id)allowedGridSizeClassesForTodayListForIconStateUnarchiver:(id)unarchiver;
- (id)applicationIconsForBundleIdentifier:(id)identifier;
- (id)archiver:(id)archiver representationForIcon:(id)icon;
- (id)archiver:(id)archiver representationForIconDataSource:(id)source;
- (id)bookmarkIconForWebClipIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)desiredIndexPathForIconWithIdentifier:(id)identifier;
- (id)disableIconStateAutosaveForReason:(id)reason;
- (id)gridSizeClassSizesForIconStateUnarchiver:(id)unarchiver;
- (id)iconModelMetadata;
- (id)iconStateUnarchiver:(id)unarchiver allowedGridSizeClassesForFolderClass:(Class)class;
- (id)iconStateUnarchiver:(id)unarchiver didUnarchiveFileStackIcon:(id)icon;
- (id)iconStateUnarchiver:(id)unarchiver didUnarchiveWidgetIcon:(id)icon;
- (id)iconStateUnarchiver:(id)unarchiver supportedGridSizeClassesForWidgetWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier;
- (id)iconsOfClass:(Class)class;
- (id)listRotatedLayoutClusterGridSizeClassForIconStateUnarchiver:(id)unarchiver;
- (id)localizedFolderNameForDefaultDisplayName:(id)name;
- (id)makeFolderWithDisplayName:(id)name;
- (id)makeFolderWithDisplayName:(id)name uniqueIdentifier:(id)identifier;
- (id)modernizeRootArchive:(id)archive;
- (id)removeApplication:(id)application;
- (id)removeApplication:(id)application pruneEmptyIcons:(BOOL)icons;
- (id)removeApplicationPlaceholder:(id)placeholder;
- (id)removeApplicationWithBundleIdentifier:(id)identifier;
- (id)removeApplicationWithBundleIdentifier:(id)identifier pruneEmptyIcons:(BOOL)icons;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)supportedGridSizeClassesForWidgetWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier;
- (id)widgetIconsContainingWidgetsMatchingExtensionBundleIdentifier:(id)identifier kind:(id)kind sizeClass:(int64_t)class;
- (id)widgetIconsContainingWidgetsMatchingUniqueIdentifier:(id)identifier;
- (int64_t)iconStateUnarchiver:(id)unarchiver listsFixedIconLocationBehaviorForFolderClass:(Class)class;
- (int64_t)maxIconCountForDockUtilitiesForIconStateUnarchiver:(id)unarchiver;
- (int64_t)maxListCountForFolders;
- (void)addIcon:(id)icon;
- (void)addIconsOfClass:(Class)class toSet:(id)set;
- (void)checkModelConsistency;
- (void)checkModelConsistencyWithListGridCellInfoOptions:(unint64_t)options;
- (void)clearDesiredIconStateIfPossible;
- (void)clearDesiredIconStateWithOptions:(unint64_t)options;
- (void)enumerateApplicationIconsForBundleIdentifier:(id)identifier usingBlock:(id)block;
- (void)enumerateLeafIconsUsingBlock:(id)block;
- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons;
- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)folder:(id)folder willAddIcon:(id)icon;
- (void)icon:(id)icon launchFromLocation:(id)location context:(id)context;
- (void)iconRepository:(id)repository didAddIcon:(id)icon;
- (void)iconRepository:(id)repository didAddPlaceholderToApplicationIcon:(id)icon;
- (void)iconRepository:(id)repository didChangeVisibilityForIconsToVisible:(id)visible hidden:(id)hidden;
- (void)iconRepository:(id)repository didRemovePlaceholderFromApplicationIcon:(id)icon;
- (void)iconRepository:(id)repository willRemoveIcon:(id)icon;
- (void)iconWantsUninstall:(id)uninstall;
- (void)importDesiredIconState:(id)state;
- (void)importIconState:(id)state;
- (void)installedWebClipsDidChange;
- (void)layout;
- (void)layoutIfNeeded;
- (void)localeChanged;
- (void)markIconStateClean;
- (void)markIconStateDirty;
- (void)noteApplicationIconImageChanged:(id)changed;
- (void)removeAllIcons;
- (void)removeApplicationIconsForBundleIdentifier:(id)identifier;
- (void)removeIcon:(id)icon;
- (void)removeIconForIdentifier:(id)identifier;
- (void)removeIcons:(id)icons;
- (void)saveDesiredIconState;
- (void)setAutomaticallyAddsWebClips:(BOOL)clips;
- (void)setDesiredIconRelativePath:(id)path forIconWithIdentifier:(id)identifier;
- (void)setDesiredIconState:(id)state;
- (void)setDesiredIconStateFlattened:(id)flattened;
- (void)setRemovedIcons:(id)icons;
- (void)setRootFolderAllowedGridSizeClasses:(id)classes;
- (void)setStore:(id)store;
- (void)setTodayListsStore:(id)store;
- (void)setVisibilityOfIconsWithVisibleTags:(id)tags hiddenTags:(id)hiddenTags;
@end

@implementation SBHIconModel

- (BOOL)isIconVisible:(id)visible
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  visibleCopy = visible;
  selfCopy = self;
  iconRepository = [(SBHIconModel *)selfCopy iconRepository];
  LOBYTE(v6) = [(SBHIconRepository *)iconRepository isIconVisible:v6];

  return v6;
}

- (SBHIconModel)initWithStore:(id)store applicationDataSource:(id)source
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1BEB43330(store, source);
}

- (SBHIconModel)initWithStore:(id)store iconRepository:(id)repository
{
  swift_unknownObjectRetain();
  repositoryCopy = repository;
  v7 = sub_1BEB437E8(store, repository);
  swift_unknownObjectRelease();

  return v7;
}

- (void)iconRepository:(id)repository didAddIcon:(id)icon
{
  repositoryCopy = repository;
  iconCopy = icon;
  selfCopy = self;
  sub_1BEB44840(iconCopy);
}

- (SBHIconGridSizeClassDomain)gridSizeClassDomain
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1BEB544A0();
}

- (id)widgetIconsContainingWidgetsMatchingUniqueIdentifier:(id)identifier
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1BEE0BB8C();

  return v3;
}

+ (Class)applicationIconClass
{
  sub_1BEB20D28(0, &unk_1EBDBFFD0);

  return swift_getObjCClassFromMetadata();
}

- (Class)iconClassForApplicationWithBundleIdentifier:(id)identifier
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  selfCopy = self;
  sub_1BEE0BCCC(v4, v6);

  return swift_getObjCClassFromMetadata();
}

- (id)addApplication:(id)application
{
  v3 = [(SBHIconModel *)self addWithApplication:application force:0];

  return v3;
}

- (id)addAdditionalIconMatchingIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  v6 = sub_1BEE0C19C(iconCopy);

  return v6;
}

- (id)removeApplication:(id)application
{
  swift_unknownObjectRetain();
  selfCopy = self;
  bundleIdentifier = [application bundleIdentifier];
  if (!bundleIdentifier)
  {
    sub_1BEE4708C();
    bundleIdentifier = sub_1BEE4705C();
  }

  v7 = [(SBHIconModel *)selfCopy removeApplicationWithBundleIdentifier:bundleIdentifier];
  swift_unknownObjectRelease();

  return v7;
}

- (id)removeApplication:(id)application pruneEmptyIcons:(BOOL)icons
{
  iconsCopy = icons;
  swift_unknownObjectRetain();
  selfCopy = self;
  bundleIdentifier = [application bundleIdentifier];
  if (!bundleIdentifier)
  {
    sub_1BEE4708C();
    bundleIdentifier = sub_1BEE4705C();
  }

  v9 = [(SBHIconModel *)selfCopy removeApplicationWithBundleIdentifier:bundleIdentifier pruneEmptyIcons:iconsCopy];
  swift_unknownObjectRelease();

  return v9;
}

- (id)removeApplicationWithBundleIdentifier:(id)identifier
{
  v3 = [(SBHIconModel *)self removeApplicationWithBundleIdentifier:identifier pruneEmptyIcons:0];

  return v3;
}

- (id)removeApplicationWithBundleIdentifier:(id)identifier pruneEmptyIcons:(BOOL)icons
{
  v6 = sub_1BEE4708C();
  v8 = v7;
  selfCopy = self;
  sub_1BEE0C878(v6, v8, icons);
  v11 = v10;

  return v11;
}

- (id)applicationIconsForBundleIdentifier:(id)identifier
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1BEE4705C();
  v9 = [(SBHIconModel *)selfCopy applicationIconForBundleIdentifier:v8];

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

- (void)enumerateApplicationIconsForBundleIdentifier:(id)identifier usingBlock:(id)block
{
  v5 = _Block_copy(block);
  v6 = sub_1BEE4708C();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1BEE1FDEC(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeApplicationIconsForBundleIdentifier:(id)identifier
{
  selfCopy = self;
  v4 = [(SBHIconModel *)selfCopy applicationIconsForBundleIdentifier:identifier];
  sub_1BEB20D28(0, &unk_1EBDBFFD0);
  v5 = sub_1BEE471AC();

  sub_1BEE09E5C(v5);

  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v6 = sub_1BEE4719C();

  [(SBHIconModel *)selfCopy removeIcons:v6];
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

- (id)widgetIconsContainingWidgetsMatchingExtensionBundleIdentifier:(id)identifier kind:(id)kind sizeClass:(int64_t)class
{
  v8 = sub_1BEE4708C();
  v10 = v9;
  if (kind)
  {
    v11 = sub_1BEE4708C();
    kind = v12;
  }

  else
  {
    v11 = 0;
  }

  selfCopy = self;
  sub_1BEE0CF34(v8, v10, v11, kind, class);

  sub_1BEB20D28(0, &qword_1EBDBFF30);
  v14 = sub_1BEE4719C();

  return v14;
}

- (id)bookmarkIconForWebClipIdentifier:(id)identifier
{
  v3 = [(SBHIconModel *)self leafIconForIdentifier:identifier];
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

- (id)addBookmarkIconForWebClip:(id)clip
{
  clipCopy = clip;
  selfCopy = self;
  v6 = sub_1BEE0D7F8(clipCopy);

  return v6;
}

- (void)setAutomaticallyAddsWebClips:(BOOL)clips
{
  selfCopy = self;
  sub_1BEE0D9B8(clips);
}

- (void)addIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  sub_1BEE0DCA4(iconCopy);
}

- (void)removeIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  sub_1BEE0E878(iconCopy, 1, 1);
}

- (void)removeIcons:(id)icons
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

  selfCopy = self;
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
    [(SBHIconModel *)selfCopy removeIcon:v9];
  }

LABEL_10:
}

- (void)removeIconForIdentifier:(id)identifier
{
  selfCopy = self;
  v4 = [(SBHIconModel *)selfCopy leafIconForIdentifier:identifier];
  if (v4)
  {
    v5 = v4;
    [(SBHIconModel *)selfCopy removeIcon:v4];
  }
}

- (void)removeAllIcons
{
  selfCopy = self;
  sub_1BEE0F33C();
}

- (BOOL)containsIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  LOBYTE(self) = sub_1BEE0F470(iconCopy);

  return self & 1;
}

- (NSSet)visibleLeafIcons
{
  selfCopy = self;
  leafIcons = [(SBHIconModel *)selfCopy leafIcons];
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v4 = sub_1BEE4726C();

  sub_1BEE20630(v4, selfCopy);
  v5 = sub_1BEE4724C();

  return v5;
}

- (void)enumerateLeafIconsUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_1BEE2083C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)isTrackingIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  LOBYTE(self) = sub_1BEE0FD30(iconCopy);

  return self & 1;
}

- (void)addIconsOfClass:(Class)class toSet:(id)set
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  setCopy = set;
  selfCopy = self;
  sub_1BEE10160(ObjCClassMetadata, setCopy);
}

- (id)iconsOfClass:(Class)class
{
  swift_getObjCClassMetadata();
  selfCopy = self;
  leafIcons = [(SBHIconModel *)selfCopy leafIcons];
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v6 = sub_1BEE4726C();

  sub_1BEE1E528(v6);
  v7 = sub_1BEE4724C();

  return v7;
}

- (NSSet)leafIconIdentifiers
{
  selfCopy = self;
  leafIcons = [(SBHIconModel *)selfCopy leafIcons];
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
  selfCopy = self;
  leafIconIdentifiers = [(SBHIconModel *)selfCopy leafIconIdentifiers];
  sub_1BEE4726C();

  v4 = sub_1BEE4724C();

  return v4;
}

- (BOOL)addIconToDesignatedLocation:(id)location options:(unint64_t)options listGridCellInfoOptions:(unint64_t)infoOptions
{
  locationCopy = location;
  selfCopy = self;
  rootFolder = [(SBHIconModel *)selfCopy rootFolder];
  if (rootFolder)
  {
    v11 = rootFolder;
    v12 = sub_1BEE10740(locationCopy, rootFolder, options, infoOptions);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (BOOL)shouldSkipAddingIcon:(id)icon toRootFolder:(id)folder
{
  iconCopy = icon;
  folderCopy = folder;
  selfCopy = self;
  v9 = sub_1BEE21E68(iconCopy);

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

- (void)setDesiredIconStateFlattened:(id)flattened
{
  if (flattened)
  {
    v4 = sub_1BEE4726C();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR___SBHIconModel_desiredIconStateFlattened) = v4;
}

- (void)setDesiredIconState:(id)state
{
  *(self + OBJC_IVAR___SBHIconModel__desiredIconState) = sub_1BEE4701C();
  selfCopy = self;

  [(SBHIconModel *)selfCopy setDesiredIconStateFlattened:0];
}

- (id)desiredIndexPathForIconWithIdentifier:(id)identifier
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1BEE4708C();
  v9 = v8;
  selfCopy = self;
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

- (void)clearDesiredIconStateWithOptions:(unint64_t)options
{
  selfCopy = self;
  sub_1BEE13DAC(options);
}

- (void)clearDesiredIconStateIfPossible
{
  selfCopy = self;
  sub_1BEE14184();
}

- (void)setDesiredIconRelativePath:(id)path forIconWithIdentifier:(id)identifier
{
  v6 = sub_1BEE4708C();
  v8 = v7;
  v9 = OBJC_IVAR___SBHIconModel_additionalDesiredIconRelativePaths;
  swift_beginAccess();
  pathCopy = path;
  selfCopy = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(self + v9);
  *(self + v9) = 0x8000000000000000;
  sub_1BEE31F30(pathCopy, v6, v8, isUniquelyReferenced_nonNull_native);

  *(self + v9) = v13;
  swift_endAccess();
}

- (NSDictionary)defaultIconState
{
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v4 = delegate;
    if (([(SBHIconModelDelegate *)delegate respondsToSelector:sel_defaultIconStateForIconModel_]& 1) != 0)
    {
      v5 = [(SBHIconModelDelegate *)v4 defaultIconStateForIconModel:selfCopy];
      swift_unknownObjectRelease();
      sub_1BEE4701C();

      selfCopy = v5;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  sub_1BEB449C8(MEMORY[0x1E69E7CC0]);
LABEL_6:

  v6 = sub_1BEE4700C();

  return v6;
}

- (BOOL)shouldAvoidPlacingIconOnFirstPage:(id)page
{
  pageCopy = page;
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v7 = delegate;
    if (([(SBHIconModelDelegate *)delegate respondsToSelector:sel_iconModel_shouldAvoidPlacingIconOnFirstPage_]& 1) != 0)
    {
      v8 = [(SBHIconModelDelegate *)v7 iconModel:selfCopy shouldAvoidPlacingIconOnFirstPage:pageCopy];
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

- (id)modernizeRootArchive:(id)archive
{
  sub_1BEE4701C();
  v3 = sub_1BEE4700C();

  return v3;
}

- (BOOL)deleteIconStateWithOptions:(unint64_t)options
{
  selfCopy = self;
  LOBYTE(options) = sub_1BEE15CF8(options);

  return options & 1;
}

- (void)saveDesiredIconState
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1BEE16A34();

  return v3 & 1;
}

- (void)importIconState:(id)state
{
  sub_1BEE4701C();
  selfCopy = self;
  sub_1BEE16D10();
}

- (void)importDesiredIconState:(id)state
{
  sub_1BEE4701C();
  selfCopy = self;
  v4 = sub_1BEE4700C();

  v5 = [(SBHIconModel *)selfCopy modernizeRootArchive:v4];

  v6 = sub_1BEE4701C();
  *(selfCopy + OBJC_IVAR___SBHIconModel__desiredIconState) = v6;

  [(SBHIconModel *)selfCopy saveDesiredIconState];
}

- (NSDictionary)iconState
{
  selfCopy = self;
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
    selfCopy = self;
    rootFolder = [(SBHIconModel *)selfCopy rootFolder];
    if (rootFolder)
    {
      v4 = rootFolder;
      [(SBFolder *)rootFolder markIconStateClean];
    }
  }
}

- (id)disableIconStateAutosaveForReason:(id)reason
{
  v4 = sub_1BEE4708C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1BEE1719C(v4, v6);

  return v8;
}

- (void)checkModelConsistency
{
  selfCopy = self;
  rootFolder = [(SBHIconModel *)selfCopy rootFolder];
  if (rootFolder)
  {
    v3 = rootFolder;
    sub_1BEE1770C(rootFolder, 0);
  }
}

- (void)checkModelConsistencyWithListGridCellInfoOptions:(unint64_t)options
{
  selfCopy = self;
  rootFolder = [(SBHIconModel *)selfCopy rootFolder];
  if (rootFolder)
  {
    v5 = rootFolder;
    sub_1BEE1770C(rootFolder, options);
  }
}

- (void)setVisibilityOfIconsWithVisibleTags:(id)tags hiddenTags:(id)hiddenTags
{
  if (tags)
  {
    sub_1BEE4726C();
    if (!hiddenTags)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (hiddenTags)
  {
LABEL_3:
    sub_1BEE4726C();
  }

LABEL_4:
  selfCopy = self;
  sub_1BEE17EB4();
}

- (SBIconModelStore)store
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setStore:(id)store
{
  v5 = OBJC_IVAR___SBHIconModel_store;
  v6 = *(self + OBJC_IVAR___SBHIconModel_store);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BEE18520(store);
  *(self + v5) = store;
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

- (void)setTodayListsStore:(id)store
{
  v4 = *(self + OBJC_IVAR___SBHIconModel_todayListsStore);
  *(self + OBJC_IVAR___SBHIconModel_todayListsStore) = store;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_1BEE186AC(v4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (void)layout
{
  selfCopy = self;
  sub_1BEE187BC();
}

- (void)layoutIfNeeded
{
  selfCopy = self;
  rootFolder = [(SBHIconModel *)selfCopy rootFolder];
  if (rootFolder)
  {
  }

  else
  {
    [(SBHIconModel *)selfCopy layout];
  }
}

- (id)makeFolderWithDisplayName:(id)name
{
  v3 = [(SBHIconModel *)self makeFolderWithDisplayName:name uniqueIdentifier:0];

  return v3;
}

- (id)makeFolderWithDisplayName:(id)name uniqueIdentifier:(id)identifier
{
  v6 = sub_1BEE4708C();
  v8 = v7;
  if (identifier)
  {
    v9 = sub_1BEE4708C();
    identifier = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  v12 = sub_1BEE193C0(v6, v8, v9, identifier);

  return v12;
}

- (id)localizedFolderNameForDefaultDisplayName:(id)name
{
  sub_1BEE4708C();
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v6 = delegate;
    v7 = sub_1BEE4705C();
    v8 = [(SBHIconModelDelegate *)v6 iconModel:selfCopy localizedFolderNameForDefaultDisplayName:v7];

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
  selfCopy = self;
  unlocalizedDefaultFolderName = [(SBHIconModel *)selfCopy unlocalizedDefaultFolderName];
  if (!unlocalizedDefaultFolderName)
  {
    sub_1BEE4708C();
    unlocalizedDefaultFolderName = sub_1BEE4705C();
  }

  v4 = [(SBHIconModel *)selfCopy localizedFolderNameForDefaultDisplayName:unlocalizedDefaultFolderName];

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

- (void)setRootFolderAllowedGridSizeClasses:(id)classes
{
  classesCopy = classes;
  selfCopy = self;
  [classesCopy copyWithZone_];
  sub_1BEE4741C();

  swift_unknownObjectRelease();
  sub_1BEB20D28(0, &unk_1EBDBFED0);
  swift_dynamicCast();
  v6 = *(selfCopy + OBJC_IVAR___SBHIconModel_rootFolderAllowedGridSizeClasses);
  *(selfCopy + OBJC_IVAR___SBHIconModel_rootFolderAllowedGridSizeClasses) = v7;
}

- (void)localeChanged
{
  selfCopy = self;
  sub_1BEE19970();
}

- (id)addApplicationPlaceholder:(id)placeholder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BEE19CEC(placeholder);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (id)removeApplicationPlaceholder:(id)placeholder
{
  v3 = [(SBHIconModel *)self removeApplicationPlaceholder:placeholder pruneEmptyIcons:0];

  return v3;
}

- (int64_t)maxListCountForFolders
{
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v4 = [(SBHIconModelDelegate *)delegate maxListCountForFoldersForIconModel:selfCopy];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 15;
  }

  return v4;
}

- (SBHIconGridSize)listGridSizeForFolderClass:(Class)class
{
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v6 = [(SBHIconModelDelegate *)delegate iconModel:selfCopy listGridSizeForFolderClass:class];
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
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v4 = [(SBHIconModelDelegate *)delegate gridSizeClassSizesForIconModel:selfCopy];

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
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v4 = delegate;
    if (([(SBHIconModelDelegate *)delegate respondsToSelector:sel_listRotatedLayoutClusterGridSizeClassForIconModel_]& 1) != 0)
    {
      v5 = [(SBHIconModelDelegate *)v4 listRotatedLayoutClusterGridSizeClassForIconModel:selfCopy];

      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v5 = @"SBHIconGridSizeClassDefault";

LABEL_6:

  return v5;
}

- (id)supportedGridSizeClassesForWidgetWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier
{
  sub_1BEE4708C();
  sub_1BEE4708C();
  sub_1BEE4708C();
  selfCopy = self;
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

- (void)setRemovedIcons:(id)icons
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
  *(self + OBJC_IVAR___SBHIconModel_removedIcons) = sub_1BEE4726C();
}

- (void)icon:(id)icon launchFromLocation:(id)location context:(id)context
{
  iconCopy = icon;
  locationCopy = location;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BEE1AFBC(iconCopy, locationCopy, context);

  swift_unknownObjectRelease();
}

- (void)iconWantsUninstall:(id)uninstall
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    uninstallCopy = uninstall;
    selfCopy = self;
    iconRepository = [(SBHIconModel *)selfCopy iconRepository];
    [(SBHIconRepository *)iconRepository uninstallIcon:v6 completionHandler:0];
  }
}

- (SBHIconGridSize)iconStateUnarchiver:(id)unarchiver listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)class
{
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (!delegate)
  {
    goto LABEL_5;
  }

  v7 = delegate;
  if (([(SBHIconModelDelegate *)delegate respondsToSelector:sel_iconModel_listWithNonDefaultSizedIconsGridSizeForFolderClass_]& 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_5:

    v10 = 0;
    v9 = 0;
    return (v9 | v10);
  }

  v8 = [(SBHIconModelDelegate *)v7 iconModel:selfCopy listWithNonDefaultSizedIconsGridSizeForFolderClass:class];
  swift_unknownObjectRelease();

  v9 = v8 & 0xFFFF0000;
  v10 = v8;
  return (v9 | v10);
}

- (int64_t)maxIconCountForDockUtilitiesForIconStateUnarchiver:(id)unarchiver
{
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v5 = delegate;
    if (([(SBHIconModelDelegate *)delegate respondsToSelector:sel_maxIconCountForDockUtilitiesForIconModel_]& 1) != 0)
    {
      v6 = [(SBHIconModelDelegate *)v5 maxIconCountForDockUtilitiesForIconModel:selfCopy];
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

- (id)gridSizeClassSizesForIconStateUnarchiver:(id)unarchiver
{
  gridSizeClassSizes = [(SBHIconModel *)self gridSizeClassSizes];

  return gridSizeClassSizes;
}

- (id)listRotatedLayoutClusterGridSizeClassForIconStateUnarchiver:(id)unarchiver
{
  listRotatedLayoutClusterGridSizeClass = [(SBHIconModel *)self listRotatedLayoutClusterGridSizeClass];

  return listRotatedLayoutClusterGridSizeClass;
}

- (BOOL)iconStateUnarchiver:(id)unarchiver listsAllowRotatedLayoutForFolderClass:(Class)class
{
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v7 = delegate;
    if (([(SBHIconModelDelegate *)delegate respondsToSelector:sel_iconModel_listsAllowRotatedLayoutForFolderClass_]& 1) != 0)
    {
      v8 = [(SBHIconModelDelegate *)v7 iconModel:selfCopy listsAllowRotatedLayoutForFolderClass:class];
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

- (id)iconStateUnarchiver:(id)unarchiver allowedGridSizeClassesForFolderClass:(Class)class
{
  swift_getObjCClassMetadata();
  unarchiverCopy = unarchiver;
  selfCopy = self;
  v8 = sub_1BEE22DA4();

  return v8;
}

- (id)allowedGridSizeClassesForDockForIconStateUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  selfCopy = self;
  v6 = sub_1BEE22E78();

  return v6;
}

- (id)allowedGridSizeClassesForTodayListForIconStateUnarchiver:(id)unarchiver
{
  selfCopy = self;
  v4 = sub_1BEE1A708();

  return v4;
}

- (id)iconStateUnarchiver:(id)unarchiver didUnarchiveWidgetIcon:(id)icon
{
  unarchiverCopy = unarchiver;
  iconCopy = icon;
  selfCopy = self;
  v9 = sub_1BEE22F44(iconCopy);

  return v9;
}

- (id)iconStateUnarchiver:(id)unarchiver didUnarchiveFileStackIcon:(id)icon
{
  unarchiverCopy = unarchiver;
  iconCopy = icon;
  selfCopy = self;
  v9 = sub_1BEE23084(iconCopy);

  return v9;
}

- (id)iconStateUnarchiver:(id)unarchiver supportedGridSizeClassesForWidgetWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier
{
  v6 = [(SBHIconModel *)self supportedGridSizeClassesForWidgetWithKind:kind extensionBundleIdentifier:identifier containerBundleIdentifier:bundleIdentifier];

  return v6;
}

- (int64_t)iconStateUnarchiver:(id)unarchiver listsFixedIconLocationBehaviorForFolderClass:(Class)class
{
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v7 = delegate;
    if (([(SBHIconModelDelegate *)delegate respondsToSelector:sel_iconModel_listsFixedIconLocationBehaviorForFolderClass_]& 1) != 0)
    {
      v8 = [(SBHIconModelDelegate *)v7 iconModel:selfCopy listsFixedIconLocationBehaviorForFolderClass:class];
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

- (BOOL)iconStateUnarchiver:(id)unarchiver shouldLeaveGapForMissingIconWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v8 = delegate;
    if (([(SBHIconModelDelegate *)delegate respondsToSelector:sel_iconModel_shouldLeaveGapForMissingArchivedIconWithIdentifier_]& 1) != 0)
    {
      v9 = [(SBHIconModelDelegate *)v8 iconModel:selfCopy shouldLeaveGapForMissingArchivedIconWithIdentifier:identifierCopy];
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

- (id)archiver:(id)archiver representationForIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v8 = delegate;
    if (([(SBHIconModelDelegate *)delegate respondsToSelector:sel_iconModel_archiveRepresentationForIcon_]& 1) != 0)
    {
      v9 = [(SBHIconModelDelegate *)v8 iconModel:selfCopy archiveRepresentationForIcon:iconCopy];
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

- (id)archiver:(id)archiver representationForIconDataSource:(id)source
{
  swift_unknownObjectRetain();
  selfCopy = self;
  delegate = [(SBHIconModel *)selfCopy delegate];
  if (delegate)
  {
    v8 = delegate;
    if (([(SBHIconModelDelegate *)delegate respondsToSelector:sel_iconModel_archiveRepresentationForIconDataSource_]& 1) != 0)
    {
      v9 = [(SBHIconModelDelegate *)v8 iconModel:selfCopy archiveRepresentationForIconDataSource:source];
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
  selfCopy = self;
  sub_1BEE1C070();
}

- (void)noteApplicationIconImageChanged:(id)changed
{
  v4 = sub_1BEE4681C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE467FC();
  selfCopy = self;
  sub_1BEE1C34C();

  (*(v5 + 8))(v7, v4);
}

- (NSString)description
{
  selfCopy = self;
  result = [(SBHIconModel *)selfCopy descriptionWithMultilinePrefix:0];
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
  selfCopy = self;
  result = [(SBHIconModel *)selfCopy succinctDescriptionBuilder];
  if (result)
  {
    v4 = result;
    build = [result build];

    if (build)
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
  initWithObject_ = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];

  return initWithObject_;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  if (prefix)
  {
    v4 = sub_1BEE4708C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
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

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  if (prefix)
  {
    sub_1BEE4708C();
  }

  selfCopy = self;
  v5 = sub_1BEE2315C();

  return v5;
}

- (void)iconRepository:(id)repository willRemoveIcon:(id)icon
{
  repositoryCopy = repository;
  iconCopy = icon;
  selfCopy = self;
  sub_1BEE23448(iconCopy);
}

- (void)iconRepository:(id)repository didAddPlaceholderToApplicationIcon:(id)icon
{
  repositoryCopy = repository;
  iconCopy = icon;
  selfCopy = self;
  sub_1BEE235C0(iconCopy, &selRef_applicationPlaceholder, &selRef_replaceIconDataSourcesWithApplicationPlaceholder_);
}

- (void)iconRepository:(id)repository didRemovePlaceholderFromApplicationIcon:(id)icon
{
  repositoryCopy = repository;
  iconCopy = icon;
  selfCopy = self;
  sub_1BEE235C0(iconCopy, &selRef_application, &selRef_replaceIconDataSourcesWithApplication_);
}

- (void)iconRepository:(id)repository didChangeVisibilityForIconsToVisible:(id)visible hidden:(id)hidden
{
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  v7 = sub_1BEE471AC();
  v8 = sub_1BEE471AC();
  repositoryCopy = repository;
  selfCopy = self;
  sub_1BEE2377C(v7, v8);
}

- (void)folder:(id)folder willAddIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  if (![(SBHIconModel *)selfCopy isTrackingIcon:iconCopy])
  {
    [(SBHIconModel *)selfCopy addIcon:iconCopy];
  }
}

- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons
{
  iconsCopy = icons;
  if (icons)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    iconsCopy = sub_1BEE4726C();
  }

  if (removedIcons)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    removedIcons = sub_1BEE4726C();
  }

  folderCopy = folder;
  selfCopy = self;
  sub_1BEE23F18(iconsCopy, removedIcons);
}

- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  iconCopy = icon;
  withIconCopy = withIcon;
  selfCopy = self;
  if (![(SBHIconModel *)selfCopy isTrackingIcon:withIconCopy])
  {
    [(SBHIconModel *)selfCopy addIcon:withIconCopy];
  }

  sub_1BEE0C540(iconCopy);
}

@end