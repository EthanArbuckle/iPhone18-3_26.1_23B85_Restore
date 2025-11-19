@interface SBHIconRepository
+ (Class)applicationIconClass;
+ (Class)bookmarkClass;
+ (Class)bookmarkIconClass;
- (BOOL)containsIcon:(id)a3;
- (BOOL)isApplicationIconVisibleForBundleIdentifier:(id)a3;
- (BOOL)isIconVisible:(id)a3;
- (NSSet)icons;
- (SBHApplicationInfoProviding)applicationInfoProvider;
- (SBHIconRepository)init;
- (id)addApplicationIconForApplication:(id)a3;
- (id)addApplicationIconForApplicationPlaceholder:(id)a3;
- (id)addBookmarkIconForWebClip:(id)a3;
- (id)iconForIdentifier:(id)a3;
- (void)addIcon:(id)a3;
- (void)addIcons:(id)a3;
- (void)enumerateIconsUsingBlock:(id)a3;
- (void)removeApplicationIconForApplication:(id)a3;
- (void)removeApplicationIconForApplicationPlaceholder:(id)a3;
- (void)removeIcon:(id)a3;
- (void)setHiddenTagsThatAffectBookmarkIcons:(id)a3;
- (void)setVisibilityOfIconsWithVisibleTags:(id)a3 hiddenTags:(id)a4;
- (void)uninstallIcon:(id)a3 completionHandler:(id)a4;
- (void)updateExistingBookmarkIcon:(id)a3 forUpdatedWebClip:(id)a4;
@end

@implementation SBHIconRepository

- (BOOL)isIconVisible:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = SBHIconRepository.isIconVisible(_:)(v4);

  return self & 1;
}

- (id)iconForIdentifier:(id)a3
{
  v3 = [(SBHIconRepository *)self iconFor:a3];

  return v3;
}

- (NSSet)icons
{
  v2 = self;
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

- (void)addIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v4);
}

- (void)addIcons:(id)a3
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
    _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v9);
  }

LABEL_10:
}

- (id)addApplicationIconForApplication:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1BEDCB9A8(a3);
  if (v6)
  {
    v7 = v6;
    [v6 replaceApplicationDataSourcesWithApplication_];
  }

  else
  {
    v8 = sub_1BEDCB134(a3, &selRef_bundleIdentifier, &selRef_initWithApplication_);
    v7 = v8;
    if (v8)
    {
      _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v8);
    }
  }

  swift_unknownObjectRelease();

  return v7;
}

- (id)addApplicationIconForApplicationPlaceholder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1BEDCBBE0(a3);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (id)addBookmarkIconForWebClip:(id)a3
{
  v4 = a3;
  v5 = self;
  result = [v4 identifier];
  if (result)
  {
    v7 = result;
    v8 = [(SBHIconRepository *)v5 bookmarkIconForWebClipIdentifier:result];

    if (!v8)
    {
      v9 = sub_1BEDCB2C0(v4);
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

- (void)removeIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  _sSo17SBHIconRepositoryC15SpringBoardHomeE10removeIconyySo06SBLeafG0CF_0(v4);
}

- (void)removeApplicationIconForApplication:(id)a3
{
  swift_unknownObjectRetain();
  v7 = self;
  v5 = sub_1BEDCB9A8(a3);
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

- (void)removeApplicationIconForApplicationPlaceholder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1BEDCC1BC(a3);
  swift_unknownObjectRelease();
}

- (void)updateExistingBookmarkIcon:(id)a3 forUpdatedWebClip:(id)a4
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  v8 = a3;
  v9 = a4;
  v11 = self;
  [ObjCClassFromObject bookmarkClass];
  swift_getObjCClassMetadata();
  sub_1BEB20D28(0, &qword_1EBDC73C8);
  swift_dynamicCastMetatype();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWebClip_];
  [v8 setBookmark_];
}

- (void)enumerateIconsUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1BEDCFAF8(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)containsIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = SBHIconRepository.containsIcon(_:)(v4);

  return self & 1;
}

- (void)uninstallIcon:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  SBHIconRepository.uninstallIcon(_:completionHandler:)(v8, v6, v7);
  sub_1BEB326F8(v6);
}

- (void)setVisibilityOfIconsWithVisibleTags:(id)a3 hiddenTags:(id)a4
{
  v5 = sub_1BEE4726C();
  v6 = sub_1BEE4726C();
  v7 = self;
  SBHIconRepository.setVisibilityOfIconsWithVisibleTags(_:hiddenTags:)(v5, v6);
}

- (void)setHiddenTagsThatAffectBookmarkIcons:(id)a3
{
  *(self + OBJC_IVAR___SBHIconRepository_hiddenTagsThatAffectBookmarkIcons) = sub_1BEE4726C();
}

- (BOOL)isApplicationIconVisibleForBundleIdentifier:(id)a3
{
  v4 = self;
  v5 = [(SBHIconRepository *)v4 applicationIconForBundleIdentifier:a3];
  if (v5)
  {
    v6 = v5;
    v7 = [(SBHIconRepository *)v4 isIconVisible:v5];
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