@interface WFLibrary
+ (void)performWithoutNotifyingObservers:(id)observers error:(id *)error;
+ (void)setSharedContextURL:(id)l;
- (BOOL)hasFolderWithIdentifier:(id)identifier;
- (BOOL)isEqualWithOther:(id)other;
- (BOOL)moveFolders:(id)folders toIndex:(int64_t)index error:(id *)error;
- (BOOL)removeShortcutWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)setShortcutOrdering:(id)ordering forCollectionIdentifier:(id)identifier error:(id *)error;
- (BOOL)sharesHistoryWith:(id)with;
- (NSArray)collections;
- (NSArray)folders;
- (NSArray)shortcutIdentifiers;
- (NSString)dotRepresentation;
- (NSString)identifier;
- (WFLibrary)initWithIdentifier:(id)identifier;
- (WFLibrary)initWithIdentifier:(id)identifier data:(id)data;
- (id)capsuleDataWithPersistenceMode:(unint64_t)mode error:(id *)error;
- (id)collectionAndFolderIdentifiersContainingShortcut:(id)shortcut error:(id *)error;
- (id)collectionWithIdentifier:(id)identifier;
- (id)collectionWithWorkflowType:(id)type;
- (id)collectionsAndFoldersContainingShortcut:(id)shortcut error:(id *)error;
- (id)folderWithIdentifier:(id)identifier error:(id *)error;
- (id)indexOfShortcutWithIdentifier:(id)identifier inCollectionWithIdentifier:(id)withIdentifier;
- (id)insertFolderWithName:(id)name icon:(unsigned __int16)icon identifier:(id)identifier error:(id *)error;
- (id)insertFolderWithName:(id)name icon:(unsigned __int16)icon identifier:(id)identifier insertAt:(int64_t)at error:(id *)error;
- (id)libraryByErasingChangeHistory;
- (id)mergeWithOther:(id)other error:(id *)error;
- (id)shortcutsInCategoryWithIdentifier:(id)identifier;
- (id)shortcutsInFolderWithIdentifier:(id)identifier error:(id *)error;
- (id)updateFolderWithIdentifier:(id)identifier newName:(id)name newIcon:(unsigned __int16)icon error:(id *)error;
- (void)deleteFolderWithIdentifier:(id)identifier;
- (void)overwriteShortcutsAndFolders:(id)folders folders:(id)a4;
@end

@implementation WFLibrary

- (NSArray)folders
{
  selfCopy = self;
  Library.folders.getter();

  sub_1CA27E37C();
  v3 = sub_1CA94C648();

  return v3;
}

- (id)shortcutsInFolderWithIdentifier:(id)identifier error:(id *)error
{
  v5 = sub_1CA94C3A8();
  v7 = v6;
  selfCopy = self;
  Library.shortcuts(inFolderWithIdentifier:)(v5, v7);

  v9 = sub_1CA94C648();

  return v9;
}

- (NSString)dotRepresentation
{
  selfCopy = self;
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
  selfCopy = self;
  Library.collections.getter();

  sub_1CA27E37C();
  v3 = sub_1CA94C648();

  return v3;
}

- (id)collectionsAndFoldersContainingShortcut:(id)shortcut error:(id *)error
{
  sub_1CA94C3A8();
  selfCopy = self;
  Library.collectionsAndFoldersContaining(shortcut:)();

  sub_1CA27E37C();
  v6 = sub_1CA94C648();

  return v6;
}

- (id)collectionAndFolderIdentifiersContainingShortcut:(id)shortcut error:(id *)error
{
  sub_1CA94C3A8();
  selfCopy = self;
  Library.collectionAndFolderIdentifiersContaining(shortcut:)();

  v6 = sub_1CA94C8E8();

  return v6;
}

- (id)shortcutsInCategoryWithIdentifier:(id)identifier
{
  sub_1CA94C3A8();
  selfCopy = self;
  Library.shortcuts(inCategoryWithIdentifier:)();

  v5 = sub_1CA94C648();

  return v5;
}

- (id)collectionWithWorkflowType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  Library.collection(workflowType:)();
  v7 = v6;

  return v7;
}

- (id)collectionWithIdentifier:(id)identifier
{
  sub_1CA94C3A8();
  selfCopy = self;
  Library.collection(identifier:)();
  v6 = v5;

  return v6;
}

- (id)indexOfShortcutWithIdentifier:(id)identifier inCollectionWithIdentifier:(id)withIdentifier
{
  v5 = sub_1CA94C3A8();
  v7 = v6;
  v8 = sub_1CA94C3A8();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v14 = Library.indexOfShortcut(identifier:inCollectionWithIdentifier:)(v12, v13);

  return v14;
}

- (BOOL)setShortcutOrdering:(id)ordering forCollectionIdentifier:(id)identifier error:(id *)error
{
  v7 = sub_1CA94C658();
  v8 = sub_1CA94C3A8();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  Library.setShortcutOrdering(_:forCollectionIdentifier:)(v7, v12);

  if (v13)
  {
    if (error)
    {
      v14 = sub_1CA948AC8();

      v15 = v14;
      *error = v14;
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

+ (void)setSharedContextURL:(id)l
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

- (WFLibrary)initWithIdentifier:(id)identifier data:(id)data
{
  sub_1CA94C3A8();
  dataCopy = data;
  sub_1CA948C08();

  Library.init(identifier:data:)();
  return result;
}

- (WFLibrary)initWithIdentifier:(id)identifier
{
  sub_1CA94C3A8();
  Library.init(identifier:)();
  return result;
}

- (void)overwriteShortcutsAndFolders:(id)folders folders:(id)a4
{
  sub_1CA94C658();
  type metadata accessor for LibraryCollection();
  sub_1CA94C658();
  selfCopy = self;
  sub_1CA401D50();
}

- (id)capsuleDataWithPersistenceMode:(unint64_t)mode error:(id *)error
{
  selfCopy = self;
  v5 = sub_1CA4025E0();
  v7 = v6;

  v8 = sub_1CA948BF8();
  sub_1CA266F2C(v5, v7);

  return v8;
}

- (id)mergeWithOther:(id)other error:(id *)error
{
  otherCopy = other;
  selfCopy = self;
  v7 = sub_1CA402728(otherCopy);

  return v7;
}

- (BOOL)isEqualWithOther:(id)other
{
  otherCopy = other;
  selfCopy = self;
  sub_1CA403074();
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)sharesHistoryWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_1CA403398();
  LOBYTE(self) = v6;

  return self & 1;
}

+ (void)performWithoutNotifyingObservers:(id)observers error:(id *)error
{
  v4 = _Block_copy(observers);
  sub_1CA404404();
  _Block_release(v4);
}

- (id)libraryByErasingChangeHistory
{
  selfCopy = self;
  sub_1CA404934();
  v4 = v3;

  return v4;
}

- (id)insertFolderWithName:(id)name icon:(unsigned __int16)icon identifier:(id)identifier error:(id *)error
{
  sub_1CA94C3A8();
  sub_1CA94C3A8();
  selfCopy = self;
  v8 = Library.insertFolder(name:icon:identifier:)();

  return v8;
}

- (id)insertFolderWithName:(id)name icon:(unsigned __int16)icon identifier:(id)identifier insertAt:(int64_t)at error:(id *)error
{
  sub_1CA94C3A8();
  sub_1CA94C3A8();
  selfCopy = self;
  v9 = Library.insertFolder(name:icon:identifier:insertAt:)();

  return v9;
}

- (void)deleteFolderWithIdentifier:(id)identifier
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  Library.delete(folderWithIdentifier:)(v8);
}

- (id)updateFolderWithIdentifier:(id)identifier newName:(id)name newIcon:(unsigned __int16)icon error:(id *)error
{
  sub_1CA94C3A8();
  sub_1CA94C3A8();
  selfCopy = self;
  v8 = Library.update(folderWithIdentifier:newName:newIcon:)();

  return v8;
}

- (id)folderWithIdentifier:(id)identifier error:(id *)error
{
  v5 = sub_1CA94C3A8();
  v7 = v6;
  selfCopy = self;
  v9 = Library.folderCollection(identifier:)(v5, v7);

  return v9;
}

- (BOOL)hasFolderWithIdentifier:(id)identifier
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = Library.hasFolder(identifier:)(v8);

  return v4 & 1;
}

- (BOOL)moveFolders:(id)folders toIndex:(int64_t)index error:(id *)error
{
  v8 = sub_1CA94C658();
  selfCopy = self;
  Library.moveFolders(_:toIndex:)(v8, index);

  if (v10)
  {
    if (error)
    {
      v11 = sub_1CA948AC8();

      v12 = v11;
      *error = v11;
    }

    else
    {
    }
  }

  return v10 == 0;
}

- (NSArray)shortcutIdentifiers
{
  selfCopy = self;
  Library.shortcutIdentifiers.getter();

  v3 = sub_1CA94C648();

  return v3;
}

- (BOOL)removeShortcutWithIdentifier:(id)identifier error:(id *)error
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  Library.remove(shortcutWithIdentifier:)(v10);

  if (v11)
  {
    if (error)
    {
      v12 = sub_1CA948AC8();

      v13 = v12;
      *error = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

@end