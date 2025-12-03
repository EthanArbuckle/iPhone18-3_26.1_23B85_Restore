@interface REMListShareeContextChangeItem
- (NSArray)sharees;
- (REMListShareeContextChangeItem)initWithListChangeItem:(id)item;
- (id)addShareeWithDisplayName:(id)name firstName:(id)firstName middleName:(id)middleName lastName:(id)lastName namePrefix:(id)prefix nameSuffix:(id)suffix nickname:(id)nickname address:(id)self0 status:(int64_t)self1 accessLevel:(int64_t)self2;
- (id)addShareeWithPersonNameComponents:(id)components address:(id)address status:(int64_t)status accessLevel:(int64_t)level;
- (void)addSharee:(id)sharee;
- (void)removeAllSharees;
- (void)removeSharee:(id)sharee;
@end

@implementation REMListShareeContextChangeItem

- (REMListShareeContextChangeItem)initWithListChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMListShareeContextChangeItem;
  v6 = [(REMListShareeContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, item);
  }

  return v7;
}

- (void)addSharee:(id)sharee
{
  v16 = *MEMORY[0x1E69E9840];
  shareeCopy = sharee;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    listChangeItem = [(REMListShareeContextChangeItem *)self listChangeItem];
    v12 = 138412546;
    v13 = listChangeItem;
    v14 = 2112;
    v15 = shareeCopy;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Adding sharee {listChangeItem: %@, sharee: %@}", &v12, 0x16u);
  }

  listChangeItem2 = [(REMListShareeContextChangeItem *)self listChangeItem];
  sharees = [listChangeItem2 sharees];
  v9 = [sharees mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v9 addObject:shareeCopy];
  listChangeItem3 = [(REMListShareeContextChangeItem *)self listChangeItem];
  [listChangeItem3 setSharees:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)sharees
{
  listChangeItem = [(REMListShareeContextChangeItem *)self listChangeItem];
  sharees = [listChangeItem sharees];
  v4 = sharees;
  if (sharees)
  {
    v5 = sharees;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)addShareeWithDisplayName:(id)name firstName:(id)firstName middleName:(id)middleName lastName:(id)lastName namePrefix:(id)prefix nameSuffix:(id)suffix nickname:(id)nickname address:(id)self0 status:(int64_t)self1 accessLevel:(int64_t)self2
{
  addressCopy = address;
  nicknameCopy = nickname;
  suffixCopy = suffix;
  prefixCopy = prefix;
  lastNameCopy = lastName;
  middleNameCopy = middleName;
  firstNameCopy = firstName;
  nameCopy = name;
  v30 = +[REMSharee newObjectID];
  v19 = [REMSharee alloc];
  listChangeItem = [(REMListShareeContextChangeItem *)self listChangeItem];
  accountID = [listChangeItem accountID];
  listChangeItem2 = [(REMListShareeContextChangeItem *)self listChangeItem];
  objectID = [listChangeItem2 objectID];
  v21 = [(REMSharee *)v19 initShareeWithObjectID:v30 accountID:accountID listID:objectID displayName:nameCopy firstName:firstNameCopy middleName:middleNameCopy lastName:lastNameCopy namePrefix:prefixCopy nameSuffix:suffixCopy nickname:nicknameCopy address:addressCopy status:status accessLevel:level];

  [(REMListShareeContextChangeItem *)self addSharee:v21];

  return v21;
}

- (id)addShareeWithPersonNameComponents:(id)components address:(id)address status:(int64_t)status accessLevel:(int64_t)level
{
  addressCopy = address;
  componentsCopy = components;
  givenName = [componentsCopy givenName];
  middleName = [componentsCopy middleName];
  familyName = [componentsCopy familyName];
  namePrefix = [componentsCopy namePrefix];
  nameSuffix = [componentsCopy nameSuffix];
  nickname = [componentsCopy nickname];

  v17 = [(REMListShareeContextChangeItem *)self addShareeWithDisplayName:0 firstName:givenName middleName:middleName lastName:familyName namePrefix:namePrefix nameSuffix:nameSuffix nickname:nickname address:addressCopy status:status accessLevel:level];

  return v17;
}

- (void)removeSharee:(id)sharee
{
  v16 = *MEMORY[0x1E69E9840];
  shareeCopy = sharee;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    listChangeItem = [(REMListShareeContextChangeItem *)self listChangeItem];
    v12 = 138412546;
    v13 = listChangeItem;
    v14 = 2112;
    v15 = shareeCopy;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing sharee {listChangeItem: %@, recurrenceRule: %@}", &v12, 0x16u);
  }

  listChangeItem2 = [(REMListShareeContextChangeItem *)self listChangeItem];
  sharees = [listChangeItem2 sharees];
  v9 = [sharees mutableCopy];

  [v9 removeObject:shareeCopy];
  listChangeItem3 = [(REMListShareeContextChangeItem *)self listChangeItem];
  [listChangeItem3 setSharees:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeAllSharees
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    listChangeItem = [(REMListShareeContextChangeItem *)self listChangeItem];
    v7 = 138412290;
    v8 = listChangeItem;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_INFO, "Removing all sharee {listChangeItem: %@}", &v7, 0xCu);
  }

  listChangeItem2 = [(REMListShareeContextChangeItem *)self listChangeItem];
  [listChangeItem2 setSharees:MEMORY[0x1E695E0F0]];

  v6 = *MEMORY[0x1E69E9840];
}

@end