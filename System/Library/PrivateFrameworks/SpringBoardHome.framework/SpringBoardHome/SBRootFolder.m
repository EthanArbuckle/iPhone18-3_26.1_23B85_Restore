@interface SBRootFolder
- (BOOL)canAddIconCount:(int64_t)a3 startingAtList:(id)a4;
- (BOOL)canBounceIcon:(id)a3;
- (BOOL)containsNonDefaultSizedIconExcludingTodayList;
- (BOOL)containsVisibleNonDefaultSizedIconExcludingTodayList;
- (BOOL)containsVisibleWidgetIconExcludingTodayList;
- (BOOL)containsWidgetIconExcludingTodayList;
- (BOOL)isIconAtIndexPathInDock:(id)a3;
- (BOOL)isIconAtIndexPathInDock:(id)a3 includingDockFolders:(BOOL)a4;
- (BOOL)isIconInIgnoredList:(id)a3;
- (BOOL)isIconWithIdentifierInIgnoredList:(id)a3;
- (NSArray)icons;
- (SBHIconModel)model;
- (SBIconListModel)bumpedIconsFallbackList;
- (SBIconListModel)dock;
- (SBIconListModel)dockUtilities;
- (SBIconListModel)ignoredList;
- (SBIconListModel)todayList;
- (SBRootFolder)initWithUniqueIdentifier:(id)a3 displayName:(id)a4 maxListCount:(int64_t)a5 listGridSize:(SBHIconGridSize)a6 iconGridSizeClassSizes:(id)a7;
- (SBRootFolderDelegate)delegate;
- (id)listAtIndex:(int64_t)a3;
- (int64_t)hiddenIndexOfList:(id)a3;
- (int64_t)indexOfList:(id)a3;
- (int64_t)visibleIndexOfList:(id)a3;
- (void)_didExplicitlyRemoveHiddenLists:(id)a3;
- (void)_setDock:(id)a3;
- (void)_setDockUtilities:(id)a3;
- (void)_setIgnoredList:(id)a3;
- (void)_setTodayList:(id)a3;
- (void)checkIgnoredListConsistency;
- (void)enumerateExtraListsUsingBlock:(id)a3;
- (void)enumerateTodayListIconsUsingBlock:(id)a3;
- (void)enumerateTodayListsUsingBlock:(id)a3;
- (void)removeList:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation SBRootFolder

- (SBIconListModel)dock
{
  v2 = self;
  v3 = sub_1BEB368E8();

  return v3;
}

- (SBIconListModel)todayList
{
  v2 = self;
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
    v4 = self;
    v5 = [(SBFolder *)v4 iconGridSizeClassSizes];
    v3 = [objc_allocWithZone(SBIconListModel) initWithFolder:v4 gridSize:4294901770 gridSizeClassSizes:v5];
    [(SBRootFolder *)v4 _setIgnoredList:v3];

    v2 = 0;
  }

  v6 = v2;

  return v3;
}

- (SBIconListModel)dockUtilities
{
  v2 = self;
  v3 = sub_1BEB37078();

  return v3;
}

- (SBHIconModel)model
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SBRootFolder)initWithUniqueIdentifier:(id)a3 displayName:(id)a4 maxListCount:(int64_t)a5 listGridSize:(SBHIconGridSize)a6 iconGridSizeClassSizes:(id)a7
{
  if (a3)
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
  return SBRootFolder.init(uniqueIdentifier:displayName:maxListCount:listGridSize:iconGridSizeClassSizes:)(v10, v12, v13, v14, a5, *&a6, a7);
}

- (SBRootFolderDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BEE35864();
  swift_unknownObjectRelease();
}

- (BOOL)containsWidgetIconExcludingTodayList
{
  v2 = self;
  v3 = sub_1BEE35C94();

  return v3 & 1;
}

- (BOOL)containsVisibleWidgetIconExcludingTodayList
{
  v2 = self;
  v3 = sub_1BEE35E30();

  return v3 & 1;
}

- (BOOL)containsNonDefaultSizedIconExcludingTodayList
{
  v2 = self;
  v3 = sub_1BEE3605C();

  return v3 & 1;
}

- (BOOL)containsVisibleNonDefaultSizedIconExcludingTodayList
{
  v2 = self;
  v3 = sub_1BEE361F8();

  return v3 & 1;
}

- (BOOL)canBounceIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = SBRootFolder.canBounceIcon(_:)(v4);

  return self & 1;
}

- (NSArray)icons
{
  v10.receiver = self;
  v10.super_class = SBRootFolder;
  v2 = self;
  v3 = [(SBFolder *)&v10 icons];
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v4 = sub_1BEE471AC();

  v11 = v4;
  v5 = [(SBRootFolder *)v2 dock];
  v6 = [(SBIconListModel *)v5 icons];

  v7 = sub_1BEE471AC();
  sub_1BEE35018(v7, sub_1BEE394E0);

  v8 = sub_1BEE4719C();

  return v8;
}

- (void)_didExplicitlyRemoveHiddenLists:(id)a3
{
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v4 = sub_1BEE471AC();
  v5 = self;
  SBRootFolder._didExplicitlyRemoveHiddenLists(_:)(v4);
}

- (SBIconListModel)bumpedIconsFallbackList
{
  v2 = [(SBRootFolder *)self ignoredList];

  return v2;
}

- (BOOL)canAddIconCount:(int64_t)a3 startingAtList:(id)a4
{
  v4 = a4;
  v7 = a4;
  v8 = self;
  LOBYTE(v4) = SBRootFolder.canAddIconCount(_:startingAtList:)(a3, v4);

  return v4 & 1;
}

- (id)listAtIndex:(int64_t)a3
{
  v4 = self;
  SBRootFolder.list(at:)(v5, a3);
  v7 = v6;

  return v7;
}

- (int64_t)indexOfList:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEE373C8(v4);
  if (v7)
  {
    v10.receiver = v5;
    v10.super_class = SBRootFolder;
    v6 = [(SBFolder *)&v10 indexOfList:v4];
  }

  v8 = v6;

  return v8;
}

- (int64_t)visibleIndexOfList:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 isHidden])
  {
    v6 = sub_1BEE467EC();
  }

  else
  {
    v6 = sub_1BEE373C8(v4);
    if (v7)
    {
      v10.receiver = v5;
      v10.super_class = SBRootFolder;
      v6 = [(SBFolder *)&v10 visibleIndexOfList:v4];
    }
  }

  v8 = v6;

  return v8;
}

- (int64_t)hiddenIndexOfList:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 isHidden])
  {
    v6 = sub_1BEE373C8(v4);
    if (v7)
    {
      v10.receiver = v5;
      v10.super_class = SBRootFolder;
      v6 = [(SBFolder *)&v10 hiddenIndexOfList:v4];
    }
  }

  else
  {
    v6 = sub_1BEE467EC();
  }

  v8 = v6;

  return v8;
}

- (void)removeList:(id)a3
{
  v4 = a3;
  v6 = self;
  sub_1BEE373C8(v4);
  if (v5)
  {
    v7.receiver = v6;
    v7.super_class = SBRootFolder;
    [(SBFolder *)&v7 removeList:v4];
  }

  else
  {
  }
}

- (void)enumerateExtraListsUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1BEE39A78(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)_setDock:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEE392AC(v4, &OBJC_IVAR___SBRootFolder__dock, &SBDockIndex);
}

- (BOOL)isIconAtIndexPathInDock:(id)a3
{
  v4 = sub_1BEE469DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v8 = self;
  v9 = sub_1BEE4696C();
  v10 = [(SBRootFolder *)v8 isIconAtIndexPathInDock:v9 includingDockFolders:0];

  (*(v5 + 8))(v7, v4);
  return v10;
}

- (BOOL)isIconAtIndexPathInDock:(id)a3 includingDockFolders:(BOOL)a4
{
  v5 = sub_1BEE469DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v9 = sub_1BEE4696C();
  v10 = [v9 sbListIndex];

  v11 = v10 == 10000 && a4;
  if (!a4 && v10 == 10000)
  {
    v12 = sub_1BEE4696C();
    v13 = [v12 sb_iconPathCount];

    v11 = v13 == 1;
  }

  (*(v6 + 8))(v8, v5);
  return v11;
}

- (void)_setTodayList:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEE37DF8(v4);
}

- (void)enumerateTodayListsUsingBlock:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(a3);
  v7 = 0;
  v5 = self;
  v6 = [(SBRootFolder *)v5 todayList];
  v4[2](v4, v6, 20000, &v7);
  _Block_release(v4);
}

- (void)enumerateTodayListIconsUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
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
  v8 = self;

  [(SBRootFolder *)v8 enumerateTodayListsUsingBlock:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v4);

  if (v7)
  {
    __break(1u);
  }
}

- (void)_setIgnoredList:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEE384D0(v4);
}

- (BOOL)isIconInIgnoredList:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(SBRootFolder *)v5 ignoredList];
  v7 = [(SBIconListModel *)v6 directlyContainsIcon:v4];

  return v7;
}

- (BOOL)isIconWithIdentifierInIgnoredList:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(SBRootFolder *)v5 ignoredList];
  v7 = [(SBIconListModel *)v6 directlyContainsIconWithIdentifier:v4];

  return v7;
}

- (void)checkIgnoredListConsistency
{
  v2 = self;
  sub_1BEE38938();
}

- (void)_setDockUtilities:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEE392AC(v4, &OBJC_IVAR___SBRootFolder__dockUtilities, &SBDockUtilitiesIndex);
}

@end