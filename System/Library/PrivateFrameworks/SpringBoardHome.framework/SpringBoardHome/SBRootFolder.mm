@interface SBRootFolder
- (BOOL)canAddIconCount:(int64_t)count startingAtList:(id)list;
- (BOOL)canBounceIcon:(id)icon;
- (BOOL)containsNonDefaultSizedIconExcludingTodayList;
- (BOOL)containsVisibleNonDefaultSizedIconExcludingTodayList;
- (BOOL)containsVisibleWidgetIconExcludingTodayList;
- (BOOL)containsWidgetIconExcludingTodayList;
- (BOOL)isIconAtIndexPathInDock:(id)dock;
- (BOOL)isIconAtIndexPathInDock:(id)dock includingDockFolders:(BOOL)folders;
- (BOOL)isIconInIgnoredList:(id)list;
- (BOOL)isIconWithIdentifierInIgnoredList:(id)list;
- (NSArray)icons;
- (SBHIconModel)model;
- (SBIconListModel)bumpedIconsFallbackList;
- (SBIconListModel)dock;
- (SBIconListModel)dockUtilities;
- (SBIconListModel)ignoredList;
- (SBIconListModel)todayList;
- (SBRootFolder)initWithUniqueIdentifier:(id)identifier displayName:(id)name maxListCount:(int64_t)count listGridSize:(SBHIconGridSize)size iconGridSizeClassSizes:(id)sizes;
- (SBRootFolderDelegate)delegate;
- (id)listAtIndex:(int64_t)index;
- (int64_t)hiddenIndexOfList:(id)list;
- (int64_t)indexOfList:(id)list;
- (int64_t)visibleIndexOfList:(id)list;
- (void)_didExplicitlyRemoveHiddenLists:(id)lists;
- (void)_setDock:(id)dock;
- (void)_setDockUtilities:(id)utilities;
- (void)_setIgnoredList:(id)list;
- (void)_setTodayList:(id)list;
- (void)checkIgnoredListConsistency;
- (void)enumerateExtraListsUsingBlock:(id)block;
- (void)enumerateTodayListIconsUsingBlock:(id)block;
- (void)enumerateTodayListsUsingBlock:(id)block;
- (void)removeList:(id)list;
- (void)setDelegate:(id)delegate;
@end

@implementation SBRootFolder

- (SBIconListModel)dock
{
  selfCopy = self;
  v3 = sub_1BEB368E8();

  return v3;
}

- (SBIconListModel)todayList
{
  selfCopy = self;
  v3 = sub_1BEB36A44();

  return v3;
}

- (SBIconListModel)ignoredList
{
  v2 = *(self + OBJC_IVAR___SBRootFolder__ignoredList);
  if (v2)
  {
    v3 = *(self + OBJC_IVAR___SBRootFolder__ignoredList);
  }

  else
  {
    selfCopy = self;
    iconGridSizeClassSizes = [(SBFolder *)selfCopy iconGridSizeClassSizes];
    v3 = [objc_allocWithZone(SBIconListModel) initWithFolder:selfCopy gridSize:4294901770 gridSizeClassSizes:iconGridSizeClassSizes];
    [(SBRootFolder *)selfCopy _setIgnoredList:v3];

    v2 = 0;
  }

  v6 = v2;

  return v3;
}

- (SBIconListModel)dockUtilities
{
  selfCopy = self;
  v3 = sub_1BEB37078();

  return v3;
}

- (SBHIconModel)model
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SBRootFolder)initWithUniqueIdentifier:(id)identifier displayName:(id)name maxListCount:(int64_t)count listGridSize:(SBHIconGridSize)size iconGridSizeClassSizes:(id)sizes
{
  if (identifier)
  {
    v10 = sub_1BEE4708C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_1BEE4708C();
  return SBRootFolder.init(uniqueIdentifier:displayName:maxListCount:listGridSize:iconGridSizeClassSizes:)(v10, v12, v13, v14, count, *&size, sizes);
}

- (SBRootFolderDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BEE35864();
  swift_unknownObjectRelease();
}

- (BOOL)containsWidgetIconExcludingTodayList
{
  selfCopy = self;
  v3 = sub_1BEE35C94();

  return v3 & 1;
}

- (BOOL)containsVisibleWidgetIconExcludingTodayList
{
  selfCopy = self;
  v3 = sub_1BEE35E30();

  return v3 & 1;
}

- (BOOL)containsNonDefaultSizedIconExcludingTodayList
{
  selfCopy = self;
  v3 = sub_1BEE3605C();

  return v3 & 1;
}

- (BOOL)containsVisibleNonDefaultSizedIconExcludingTodayList
{
  selfCopy = self;
  v3 = sub_1BEE361F8();

  return v3 & 1;
}

- (BOOL)canBounceIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  LOBYTE(self) = SBRootFolder.canBounceIcon(_:)(iconCopy);

  return self & 1;
}

- (NSArray)icons
{
  v10.receiver = self;
  v10.super_class = SBRootFolder;
  selfCopy = self;
  icons = [(SBFolder *)&v10 icons];
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v4 = sub_1BEE471AC();

  v11 = v4;
  dock = [(SBRootFolder *)selfCopy dock];
  icons2 = [(SBIconListModel *)dock icons];

  v7 = sub_1BEE471AC();
  sub_1BEE35018(v7, sub_1BEE394E0);

  v8 = sub_1BEE4719C();

  return v8;
}

- (void)_didExplicitlyRemoveHiddenLists:(id)lists
{
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v4 = sub_1BEE471AC();
  selfCopy = self;
  SBRootFolder._didExplicitlyRemoveHiddenLists(_:)(v4);
}

- (SBIconListModel)bumpedIconsFallbackList
{
  ignoredList = [(SBRootFolder *)self ignoredList];

  return ignoredList;
}

- (BOOL)canAddIconCount:(int64_t)count startingAtList:(id)list
{
  listCopy = list;
  listCopy2 = list;
  selfCopy = self;
  LOBYTE(listCopy) = SBRootFolder.canAddIconCount(_:startingAtList:)(count, listCopy);

  return listCopy & 1;
}

- (id)listAtIndex:(int64_t)index
{
  selfCopy = self;
  SBRootFolder.list(at:)(v5, index);
  v7 = v6;

  return v7;
}

- (int64_t)indexOfList:(id)list
{
  listCopy = list;
  selfCopy = self;
  v6 = sub_1BEE373C8(listCopy);
  if (v7)
  {
    v10.receiver = selfCopy;
    v10.super_class = SBRootFolder;
    v6 = [(SBFolder *)&v10 indexOfList:listCopy];
  }

  v8 = v6;

  return v8;
}

- (int64_t)visibleIndexOfList:(id)list
{
  listCopy = list;
  selfCopy = self;
  if ([listCopy isHidden])
  {
    v6 = sub_1BEE467EC();
  }

  else
  {
    v6 = sub_1BEE373C8(listCopy);
    if (v7)
    {
      v10.receiver = selfCopy;
      v10.super_class = SBRootFolder;
      v6 = [(SBFolder *)&v10 visibleIndexOfList:listCopy];
    }
  }

  v8 = v6;

  return v8;
}

- (int64_t)hiddenIndexOfList:(id)list
{
  listCopy = list;
  selfCopy = self;
  if ([listCopy isHidden])
  {
    v6 = sub_1BEE373C8(listCopy);
    if (v7)
    {
      v10.receiver = selfCopy;
      v10.super_class = SBRootFolder;
      v6 = [(SBFolder *)&v10 hiddenIndexOfList:listCopy];
    }
  }

  else
  {
    v6 = sub_1BEE467EC();
  }

  v8 = v6;

  return v8;
}

- (void)removeList:(id)list
{
  listCopy = list;
  selfCopy = self;
  sub_1BEE373C8(listCopy);
  if (v5)
  {
    v7.receiver = selfCopy;
    v7.super_class = SBRootFolder;
    [(SBFolder *)&v7 removeList:listCopy];
  }

  else
  {
  }
}

- (void)enumerateExtraListsUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_1BEE39A78(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)_setDock:(id)dock
{
  dockCopy = dock;
  selfCopy = self;
  sub_1BEE392AC(dockCopy, &OBJC_IVAR___SBRootFolder__dock, &SBDockIndex);
}

- (BOOL)isIconAtIndexPathInDock:(id)dock
{
  v4 = sub_1BEE469DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  selfCopy = self;
  v9 = sub_1BEE4696C();
  v10 = [(SBRootFolder *)selfCopy isIconAtIndexPathInDock:v9 includingDockFolders:0];

  (*(v5 + 8))(v7, v4);
  return v10;
}

- (BOOL)isIconAtIndexPathInDock:(id)dock includingDockFolders:(BOOL)folders
{
  v5 = sub_1BEE469DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v9 = sub_1BEE4696C();
  sbListIndex = [v9 sbListIndex];

  v11 = sbListIndex == 10000 && folders;
  if (!folders && sbListIndex == 10000)
  {
    v12 = sub_1BEE4696C();
    sb_iconPathCount = [v12 sb_iconPathCount];

    v11 = sb_iconPathCount == 1;
  }

  (*(v6 + 8))(v8, v5);
  return v11;
}

- (void)_setTodayList:(id)list
{
  listCopy = list;
  selfCopy = self;
  sub_1BEE37DF8(listCopy);
}

- (void)enumerateTodayListsUsingBlock:(id)block
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(block);
  v7 = 0;
  selfCopy = self;
  todayList = [(SBRootFolder *)selfCopy todayList];
  v4[2](v4, todayList, 20000, &v7);
  _Block_release(v4);
}

- (void)enumerateTodayListIconsUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  v9[2] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1BEB31FD8;
  *(v5 + 24) = v9;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEE396DC;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1BEDCAB28;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_34;
  v7 = _Block_copy(aBlock);
  selfCopy = self;

  [(SBRootFolder *)selfCopy enumerateTodayListsUsingBlock:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v4);

  if (v7)
  {
    __break(1u);
  }
}

- (void)_setIgnoredList:(id)list
{
  listCopy = list;
  selfCopy = self;
  sub_1BEE384D0(listCopy);
}

- (BOOL)isIconInIgnoredList:(id)list
{
  listCopy = list;
  selfCopy = self;
  ignoredList = [(SBRootFolder *)selfCopy ignoredList];
  v7 = [(SBIconListModel *)ignoredList directlyContainsIcon:listCopy];

  return v7;
}

- (BOOL)isIconWithIdentifierInIgnoredList:(id)list
{
  listCopy = list;
  selfCopy = self;
  ignoredList = [(SBRootFolder *)selfCopy ignoredList];
  v7 = [(SBIconListModel *)ignoredList directlyContainsIconWithIdentifier:listCopy];

  return v7;
}

- (void)checkIgnoredListConsistency
{
  selfCopy = self;
  sub_1BEE38938();
}

- (void)_setDockUtilities:(id)utilities
{
  utilitiesCopy = utilities;
  selfCopy = self;
  sub_1BEE392AC(utilitiesCopy, &OBJC_IVAR___SBRootFolder__dockUtilities, &SBDockUtilitiesIndex);
}

@end