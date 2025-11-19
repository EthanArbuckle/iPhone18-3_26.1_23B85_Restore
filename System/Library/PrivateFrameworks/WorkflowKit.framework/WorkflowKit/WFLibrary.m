@interface WFLibrary
+ (void)performWithoutNotifyingObservers:(id)a3 error:(id *)a4;
+ (void)setSharedContextURL:(id)a3;
- (BOOL)hasFolderWithIdentifier:(id)a3;
- (BOOL)isEqualWithOther:(id)a3;
- (BOOL)moveFolders:(id)a3 toIndex:(int64_t)a4 error:(id *)a5;
- (BOOL)removeShortcutWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)setShortcutOrdering:(id)a3 forCollectionIdentifier:(id)a4 error:(id *)a5;
- (BOOL)sharesHistoryWith:(id)a3;
- (NSArray)collections;
- (NSArray)folders;
- (NSArray)shortcutIdentifiers;
- (NSString)dotRepresentation;
- (NSString)identifier;
- (WFLibrary)initWithIdentifier:(id)a3;
- (WFLibrary)initWithIdentifier:(id)a3 data:(id)a4;
- (id)capsuleDataWithPersistenceMode:(unint64_t)a3 error:(id *)a4;
- (id)collectionAndFolderIdentifiersContainingShortcut:(id)a3 error:(id *)a4;
- (id)collectionWithIdentifier:(id)a3;
- (id)collectionWithWorkflowType:(id)a3;
- (id)collectionsAndFoldersContainingShortcut:(id)a3 error:(id *)a4;
- (id)folderWithIdentifier:(id)a3 error:(id *)a4;
- (id)indexOfShortcutWithIdentifier:(id)a3 inCollectionWithIdentifier:(id)a4;
- (id)insertFolderWithName:(id)a3 icon:(unsigned __int16)a4 identifier:(id)a5 error:(id *)a6;
- (id)insertFolderWithName:(id)a3 icon:(unsigned __int16)a4 identifier:(id)a5 insertAt:(int64_t)a6 error:(id *)a7;
- (id)libraryByErasingChangeHistory;
- (id)mergeWithOther:(id)a3 error:(id *)a4;
- (id)shortcutsInCategoryWithIdentifier:(id)a3;
- (id)shortcutsInFolderWithIdentifier:(id)a3 error:(id *)a4;
- (id)updateFolderWithIdentifier:(id)a3 newName:(id)a4 newIcon:(unsigned __int16)a5 error:(id *)a6;
- (void)deleteFolderWithIdentifier:(id)a3;
- (void)overwriteShortcutsAndFolders:(id)a3 folders:(id)a4;
@end

@implementation WFLibrary

- (NSArray)folders
{
  v2 = self;
  Library.folders.getter();

  sub_1CA27E37C();
  v3 = sub_1CA94C648();

  return v3;
}

- (id)shortcutsInFolderWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = sub_1CA94C3A8();
  v7 = v6;
  v8 = self;
  Library.shortcuts(inFolderWithIdentifier:)(v5, v7);

  v9 = sub_1CA94C648();

  return v9;
}

- (NSString)dotRepresentation
{
  v2 = self;
  Library.dotRepresentation.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1CA94C368();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)collections
{
  v2 = self;
  Library.collections.getter();

  sub_1CA27E37C();
  v3 = sub_1CA94C648();

  return v3;
}

- (id)collectionsAndFoldersContainingShortcut:(id)a3 error:(id *)a4
{
  sub_1CA94C3A8();
  v5 = self;
  Library.collectionsAndFoldersContaining(shortcut:)();

  sub_1CA27E37C();
  v6 = sub_1CA94C648();

  return v6;
}

- (id)collectionAndFolderIdentifiersContainingShortcut:(id)a3 error:(id *)a4
{
  sub_1CA94C3A8();
  v5 = self;
  Library.collectionAndFolderIdentifiersContaining(shortcut:)();

  v6 = sub_1CA94C8E8();

  return v6;
}

- (id)shortcutsInCategoryWithIdentifier:(id)a3
{
  sub_1CA94C3A8();
  v4 = self;
  Library.shortcuts(inCategoryWithIdentifier:)();

  v5 = sub_1CA94C648();

  return v5;
}

- (id)collectionWithWorkflowType:(id)a3
{
  v4 = a3;
  v5 = self;
  Library.collection(workflowType:)();
  v7 = v6;

  return v7;
}

- (id)collectionWithIdentifier:(id)a3
{
  sub_1CA94C3A8();
  v4 = self;
  Library.collection(identifier:)();
  v6 = v5;

  return v6;
}

- (id)indexOfShortcutWithIdentifier:(id)a3 inCollectionWithIdentifier:(id)a4
{
  v5 = sub_1CA94C3A8();
  v7 = v6;
  v8 = sub_1CA94C3A8();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v14 = Library.indexOfShortcut(identifier:inCollectionWithIdentifier:)(v12, v13);

  return v14;
}

- (BOOL)setShortcutOrdering:(id)a3 forCollectionIdentifier:(id)a4 error:(id *)a5
{
  v7 = sub_1CA94C658();
  v8 = sub_1CA94C3A8();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  Library.setShortcutOrdering(_:forCollectionIdentifier:)(v7, v12);

  if (v13)
  {
    if (a5)
    {
      v14 = sub_1CA948AC8();

      v15 = v14;
      *a5 = v14;
    }

    else
    {
    }
  }

  return v13 == 0;
}

- (NSString)identifier
{
  Library.identifier.getter();
  v2 = sub_1CA94C368();

  return v2;
}

+ (void)setSharedContextURL:(id)a3
{
  v3 = sub_1CA948BA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();
  static Library.setSharedContextURL(_:)();
  (*(v4 + 8))(v7, v3);
}

- (WFLibrary)initWithIdentifier:(id)a3 data:(id)a4
{
  sub_1CA94C3A8();
  v5 = a4;
  sub_1CA948C08();

  Library.init(identifier:data:)();
  return result;
}

- (WFLibrary)initWithIdentifier:(id)a3
{
  sub_1CA94C3A8();
  Library.init(identifier:)();
  return result;
}

- (void)overwriteShortcutsAndFolders:(id)a3 folders:(id)a4
{
  sub_1CA94C658();
  type metadata accessor for LibraryCollection();
  sub_1CA94C658();
  v5 = self;
  sub_1CA401D50();
}

- (id)capsuleDataWithPersistenceMode:(unint64_t)a3 error:(id *)a4
{
  v4 = self;
  v5 = sub_1CA4025E0();
  v7 = v6;

  v8 = sub_1CA948BF8();
  sub_1CA266F2C(v5, v7);

  return v8;
}

- (id)mergeWithOther:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1CA402728(v5);

  return v7;
}

- (BOOL)isEqualWithOther:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA403074();
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)sharesHistoryWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA403398();
  LOBYTE(self) = v6;

  return self & 1;
}

+ (void)performWithoutNotifyingObservers:(id)a3 error:(id *)a4
{
  v4 = _Block_copy(a3);
  sub_1CA404404();
  _Block_release(v4);
}

- (id)libraryByErasingChangeHistory
{
  v2 = self;
  sub_1CA404934();
  v4 = v3;

  return v4;
}

- (id)insertFolderWithName:(id)a3 icon:(unsigned __int16)a4 identifier:(id)a5 error:(id *)a6
{
  sub_1CA94C3A8();
  sub_1CA94C3A8();
  v7 = self;
  v8 = Library.insertFolder(name:icon:identifier:)();

  return v8;
}

- (id)insertFolderWithName:(id)a3 icon:(unsigned __int16)a4 identifier:(id)a5 insertAt:(int64_t)a6 error:(id *)a7
{
  sub_1CA94C3A8();
  sub_1CA94C3A8();
  v8 = self;
  v9 = Library.insertFolder(name:icon:identifier:insertAt:)();

  return v9;
}

- (void)deleteFolderWithIdentifier:(id)a3
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  Library.delete(folderWithIdentifier:)(v8);
}

- (id)updateFolderWithIdentifier:(id)a3 newName:(id)a4 newIcon:(unsigned __int16)a5 error:(id *)a6
{
  sub_1CA94C3A8();
  sub_1CA94C3A8();
  v7 = self;
  v8 = Library.update(folderWithIdentifier:newName:newIcon:)();

  return v8;
}

- (id)folderWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = sub_1CA94C3A8();
  v7 = v6;
  v8 = self;
  v9 = Library.folderCollection(identifier:)(v5, v7);

  return v9;
}

- (BOOL)hasFolderWithIdentifier:(id)a3
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = Library.hasFolder(identifier:)(v8);

  return v4 & 1;
}

- (BOOL)moveFolders:(id)a3 toIndex:(int64_t)a4 error:(id *)a5
{
  v8 = sub_1CA94C658();
  v9 = self;
  Library.moveFolders(_:toIndex:)(v8, a4);

  if (v10)
  {
    if (a5)
    {
      v11 = sub_1CA948AC8();

      v12 = v11;
      *a5 = v11;
    }

    else
    {
    }
  }

  return v10 == 0;
}

- (NSArray)shortcutIdentifiers
{
  v2 = self;
  Library.shortcutIdentifiers.getter();

  v3 = sub_1CA94C648();

  return v3;
}

- (BOOL)removeShortcutWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  Library.remove(shortcutWithIdentifier:)(v10);

  if (v11)
  {
    if (a4)
    {
      v12 = sub_1CA948AC8();

      v13 = v12;
      *a4 = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

@end