@interface SBHIconRepository
+ (Class)applicationIconClass;
+ (Class)bookmarkClass;
+ (Class)bookmarkIconClass;
- (BOOL)containsIcon:(id)icon;
- (BOOL)isApplicationIconVisibleForBundleIdentifier:(id)identifier;
- (BOOL)isIconVisible:(id)visible;
- (NSSet)icons;
- (SBHApplicationInfoProviding)applicationInfoProvider;
- (SBHIconRepository)init;
- (id)addApplicationIconForApplication:(id)application;
- (id)addApplicationIconForApplicationPlaceholder:(id)placeholder;
- (id)addBookmarkIconForWebClip:(id)clip;
- (id)iconForIdentifier:(id)identifier;
- (void)addIcon:(id)icon;
- (void)addIcons:(id)icons;
- (void)enumerateIconsUsingBlock:(id)block;
- (void)removeApplicationIconForApplication:(id)application;
- (void)removeApplicationIconForApplicationPlaceholder:(id)placeholder;
- (void)removeIcon:(id)icon;
- (void)setHiddenTagsThatAffectBookmarkIcons:(id)icons;
- (void)setVisibilityOfIconsWithVisibleTags:(id)tags hiddenTags:(id)hiddenTags;
- (void)uninstallIcon:(id)icon completionHandler:(id)handler;
- (void)updateExistingBookmarkIcon:(id)icon forUpdatedWebClip:(id)clip;
@end

@implementation SBHIconRepository

- (BOOL)isIconVisible:(id)visible
{
  visibleCopy = visible;
  selfCopy = self;
  LOBYTE(self) = SBHIconRepository.isIconVisible(_:)(visibleCopy);

  return self & 1;
}

- (id)iconForIdentifier:(id)identifier
{
  v3 = [(SBHIconRepository *)self iconFor:identifier];

  return v3;
}

- (NSSet)icons
{
  selfCopy = self;
  sub_1BEB1FF98();
  swift_beginAccess();

  sub_1BEB2A6A4(v3, &qword_1EBDBFFE0, off_1E80877A0, &qword_1EBDBFF70, sub_1BEB2B000);

  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v4 = sub_1BEE4724C();

  return v4;
}

- (SBHApplicationInfoProviding)applicationInfoProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

+ (Class)applicationIconClass
{
  sub_1BEB20D28(0, &unk_1EBDBFFD0);

  return swift_getObjCClassFromMetadata();
}

+ (Class)bookmarkClass
{
  sub_1BEB20D28(0, &qword_1EBDC73C8);

  return swift_getObjCClassFromMetadata();
}

+ (Class)bookmarkIconClass
{
  sub_1BEB20D28(0, &qword_1EBDC73D0);

  return swift_getObjCClassFromMetadata();
}

- (void)addIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(iconCopy);
}

- (void)addIcons:(id)icons
{
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
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
    _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v9);
  }

LABEL_10:
}

- (id)addApplicationIconForApplication:(id)application
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1BEDCB9A8(application);
  if (v6)
  {
    v7 = v6;
    [v6 replaceApplicationDataSourcesWithApplication_];
  }

  else
  {
    v8 = sub_1BEDCB134(application, &selRef_bundleIdentifier, &selRef_initWithApplication_);
    v7 = v8;
    if (v8)
    {
      _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v8);
    }
  }

  swift_unknownObjectRelease();

  return v7;
}

- (id)addApplicationIconForApplicationPlaceholder:(id)placeholder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BEDCBBE0(placeholder);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (id)addBookmarkIconForWebClip:(id)clip
{
  clipCopy = clip;
  selfCopy = self;
  result = [clipCopy identifier];
  if (result)
  {
    v7 = result;
    v8 = [(SBHIconRepository *)selfCopy bookmarkIconForWebClipIdentifier:result];

    if (!v8)
    {
      v9 = sub_1BEDCB2C0(clipCopy);
      v8 = v9;
      if (v9)
      {
        _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v9);
      }
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)removeIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  _sSo17SBHIconRepositoryC15SpringBoardHomeE10removeIconyySo06SBLeafG0CF_0(iconCopy);
}

- (void)removeApplicationIconForApplication:(id)application
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_1BEDCB9A8(application);
  if (v5)
  {
    v6 = v5;
    [v5 removeApplicationDataSources];
    if (![v6 iconDataSourceCount])
    {
      _sSo17SBHIconRepositoryC15SpringBoardHomeE10removeIconyySo06SBLeafG0CF_0(v6);
    }
  }

  swift_unknownObjectRelease();
}

- (void)removeApplicationIconForApplicationPlaceholder:(id)placeholder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BEDCC1BC(placeholder);
  swift_unknownObjectRelease();
}

- (void)updateExistingBookmarkIcon:(id)icon forUpdatedWebClip:(id)clip
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  iconCopy = icon;
  clipCopy = clip;
  selfCopy = self;
  [ObjCClassFromObject bookmarkClass];
  swift_getObjCClassMetadata();
  sub_1BEB20D28(0, &qword_1EBDC73C8);
  swift_dynamicCastMetatype();
  initWithWebClip_ = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWebClip_];
  [iconCopy setBookmark_];
}

- (void)enumerateIconsUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_1BEDCFAF8(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)containsIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  LOBYTE(self) = SBHIconRepository.containsIcon(_:)(iconCopy);

  return self & 1;
}

- (void)uninstallIcon:(id)icon completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1BEDD0538;
  }

  else
  {
    v7 = 0;
  }

  iconCopy = icon;
  selfCopy = self;
  SBHIconRepository.uninstallIcon(_:completionHandler:)(iconCopy, v6, v7);
  sub_1BEB326F8(v6);
}

- (void)setVisibilityOfIconsWithVisibleTags:(id)tags hiddenTags:(id)hiddenTags
{
  v5 = sub_1BEE4726C();
  v6 = sub_1BEE4726C();
  selfCopy = self;
  SBHIconRepository.setVisibilityOfIconsWithVisibleTags(_:hiddenTags:)(v5, v6);
}

- (void)setHiddenTagsThatAffectBookmarkIcons:(id)icons
{
  *(self + OBJC_IVAR___SBHIconRepository_hiddenTagsThatAffectBookmarkIcons) = sub_1BEE4726C();
}

- (BOOL)isApplicationIconVisibleForBundleIdentifier:(id)identifier
{
  selfCopy = self;
  v5 = [(SBHIconRepository *)selfCopy applicationIconForBundleIdentifier:identifier];
  if (v5)
  {
    v6 = v5;
    v7 = [(SBHIconRepository *)selfCopy isIconVisible:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SBHIconRepository)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end