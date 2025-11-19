@interface REMListShareeContextChangeItem
- (NSArray)sharees;
- (REMListShareeContextChangeItem)initWithListChangeItem:(id)a3;
- (id)addShareeWithDisplayName:(id)a3 firstName:(id)a4 middleName:(id)a5 lastName:(id)a6 namePrefix:(id)a7 nameSuffix:(id)a8 nickname:(id)a9 address:(id)a10 status:(int64_t)a11 accessLevel:(int64_t)a12;
- (id)addShareeWithPersonNameComponents:(id)a3 address:(id)a4 status:(int64_t)a5 accessLevel:(int64_t)a6;
- (void)addSharee:(id)a3;
- (void)removeAllSharees;
- (void)removeSharee:(id)a3;
@end

@implementation REMListShareeContextChangeItem

- (REMListShareeContextChangeItem)initWithListChangeItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListShareeContextChangeItem;
  v6 = [(REMListShareeContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, a3);
  }

  return v7;
}

- (void)addSharee:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(REMListShareeContextChangeItem *)self listChangeItem];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Adding sharee {listChangeItem: %@, sharee: %@}", &v12, 0x16u);
  }

  v7 = [(REMListShareeContextChangeItem *)self listChangeItem];
  v8 = [v7 sharees];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v9 addObject:v4];
  v10 = [(REMListShareeContextChangeItem *)self listChangeItem];
  [v10 setSharees:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)sharees
{
  v2 = [(REMListShareeContextChangeItem *)self listChangeItem];
  v3 = [v2 sharees];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)addShareeWithDisplayName:(id)a3 firstName:(id)a4 middleName:(id)a5 lastName:(id)a6 namePrefix:(id)a7 nameSuffix:(id)a8 nickname:(id)a9 address:(id)a10 status:(int64_t)a11 accessLevel:(int64_t)a12
{
  v32 = a10;
  v31 = a9;
  v29 = a8;
  v27 = a7;
  v25 = a6;
  v26 = a5;
  v18 = a4;
  v23 = a3;
  v30 = +[REMSharee newObjectID];
  v19 = [REMSharee alloc];
  v33 = [(REMListShareeContextChangeItem *)self listChangeItem];
  v24 = [v33 accountID];
  v28 = [(REMListShareeContextChangeItem *)self listChangeItem];
  v20 = [v28 objectID];
  v21 = [(REMSharee *)v19 initShareeWithObjectID:v30 accountID:v24 listID:v20 displayName:v23 firstName:v18 middleName:v26 lastName:v25 namePrefix:v27 nameSuffix:v29 nickname:v31 address:v32 status:a11 accessLevel:a12];

  [(REMListShareeContextChangeItem *)self addSharee:v21];

  return v21;
}

- (id)addShareeWithPersonNameComponents:(id)a3 address:(id)a4 status:(int64_t)a5 accessLevel:(int64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [v10 givenName];
  v12 = [v10 middleName];
  v13 = [v10 familyName];
  v14 = [v10 namePrefix];
  v15 = [v10 nameSuffix];
  v16 = [v10 nickname];

  v17 = [(REMListShareeContextChangeItem *)self addShareeWithDisplayName:0 firstName:v11 middleName:v12 lastName:v13 namePrefix:v14 nameSuffix:v15 nickname:v16 address:v9 status:a5 accessLevel:a6];

  return v17;
}

- (void)removeSharee:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(REMListShareeContextChangeItem *)self listChangeItem];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing sharee {listChangeItem: %@, recurrenceRule: %@}", &v12, 0x16u);
  }

  v7 = [(REMListShareeContextChangeItem *)self listChangeItem];
  v8 = [v7 sharees];
  v9 = [v8 mutableCopy];

  [v9 removeObject:v4];
  v10 = [(REMListShareeContextChangeItem *)self listChangeItem];
  [v10 setSharees:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeAllSharees
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(REMListShareeContextChangeItem *)self listChangeItem];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_INFO, "Removing all sharee {listChangeItem: %@}", &v7, 0xCu);
  }

  v5 = [(REMListShareeContextChangeItem *)self listChangeItem];
  [v5 setSharees:MEMORY[0x1E695E0F0]];

  v6 = *MEMORY[0x1E69E9840];
}

@end