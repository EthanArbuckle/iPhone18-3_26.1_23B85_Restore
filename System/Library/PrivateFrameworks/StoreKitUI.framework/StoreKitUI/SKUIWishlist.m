@interface SKUIWishlist
+ (id)activeWishlist;
- (BOOL)containsItemWithIdentifier:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)items;
- (SKUIWishlist)initWithAccountIdentifier:(int64_t)a3;
- (void)addItem:(id)a3;
- (void)postChangeNotification;
- (void)removeItemsWithItemIdentifiers:(id)a3;
@end

@implementation SKUIWishlist

- (SKUIWishlist)initWithAccountIdentifier:(int64_t)a3
{
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl() || !(v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT)))
  {
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(SKUIWishlist *)v5 initWithAccountIdentifier:v6, v7, v8, v9, v10, v11, v12];
  if (!a3)
  {
LABEL_5:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid accountID"];
  }

LABEL_6:
  v17.receiver = self;
  v17.super_class = SKUIWishlist;
  v13 = [(SKUIWishlist *)&v17 init];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277D69D58]) initWithAccountIdentifier:a3];
    database = v13->_database;
    v13->_database = v14;
  }

  return v13;
}

+ (id)activeWishlist
{
  v2 = [MEMORY[0x277D69A20] defaultStore];
  v3 = [v2 activeAccount];

  v4 = [v3 uniqueIdentifier];
  v5 = [v4 longLongValue];

  v6 = activeWishlist_sActiveWishlist;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_6;
  }

  if (!activeWishlist_sActiveWishlist || [activeWishlist_sActiveWishlist accountIdentifier] != v5)
  {
    v7 = [[SKUIWishlist alloc] initWithAccountIdentifier:v5];
    v6 = activeWishlist_sActiveWishlist;
LABEL_6:
    activeWishlist_sActiveWishlist = v7;
  }

  v8 = activeWishlist_sActiveWishlist;
  v9 = activeWishlist_sActiveWishlist;

  return v8;
}

- (void)addItem:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  database = self->_database;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __24__SKUIWishlist_addItem___block_invoke;
  v9[3] = &unk_2781FE038;
  v6 = v4;
  v11 = self;
  v12 = &v13;
  v10 = v6;
  [(SSWishlist *)database performTransactionWithBlock:v9];
  if (*(v14 + 24) == 1)
  {
    v7 = [[SKUIAddToWishlistOperation alloc] initWithItem:v6 reason:0];
    v8 = SKUIWishlistOperationQueue();
    [v8 addOperation:v7];
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __24__SKUIWishlist_addItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D69C40] predicateWithProperty:*MEMORY[0x277D6A688] equalToLongLong:{objc_msgSend(*(a1 + 32), "itemIdentifier")}];
  v5 = [MEMORY[0x277D69D60] anyInDatabase:v3 predicate:v4];
  if (v5)
  {
    v6 = v5;
    [v5 setValue:&unk_2828D2D08 forProperty:*MEMORY[0x277D6A6A0]];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v7 = SKUIWishlistItemPropertiesWithItem(*(a1 + 32));
    if (v7)
    {
      v8 = *MEMORY[0x277D6A698];
      v9 = [MEMORY[0x277D69D60] maxValueForProperty:*MEMORY[0x277D6A698] predicate:0 database:v3];
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "integerValue") + 1}];
      [v7 setObject:v10 forKey:v8];

      [v7 setObject:&unk_2828D2D08 forKey:*MEMORY[0x277D6A6A0]];
      v6 = [objc_alloc(MEMORY[0x277D69D60]) initWithPropertyValues:v7 inDatabase:v3];
      *(*(*(a1 + 48) + 8) + 24) = v6 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v11 = *(*(a1 + 40) + 8);
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [v11 setLastSyncTime:v12];

    v13 = *(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)containsItemWithIdentifier:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  database = self->_database;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SKUIWishlist_containsItemWithIdentifier___block_invoke;
  v6[3] = &unk_2781FE060;
  v6[4] = &v7;
  v6[5] = a3;
  [(SSWishlist *)database performTransactionWithBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __43__SKUIWishlist_containsItemWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D69C40];
  v4 = *MEMORY[0x277D6A688];
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v3 predicateWithProperty:v4 equalToLongLong:v5];
  v8 = [MEMORY[0x277D69D60] anyInDatabase:v6 predicate:v7];

  *(*(*(a1 + 32) + 8) + 24) = v8 != 0;
  v9 = *(*(*(a1 + 32) + 8) + 24);

  return v9;
}

- (NSArray)items
{
  v3 = [MEMORY[0x277CBEB18] array];
  database = self->_database;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __21__SKUIWishlist_items__block_invoke;
  v7[3] = &unk_2781FE0B0;
  v5 = v3;
  v8 = v5;
  [(SSWishlist *)database performTransactionWithBlock:v7];

  return v5;
}

uint64_t __21__SKUIWishlist_items__block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D69C58];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setEntityClass:objc_opt_class()];
  v15[0] = *MEMORY[0x277D6A588];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v5 setOrderingDirections:v6];

  v14 = *MEMORY[0x277D6A698];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v5 setOrderingProperties:v7];

  v8 = [MEMORY[0x277D69C40] predicateWithProperty:*MEMORY[0x277D6A6A0] value:&unk_2828D2D20 comparisonType:2];
  [v5 setPredicate:v8];

  v9 = [objc_alloc(MEMORY[0x277D69C50]) initWithDatabase:v4 descriptor:v5];
  v13 = *MEMORY[0x277D6A680];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __21__SKUIWishlist_items__block_invoke_22;
  v11[3] = &unk_2781FE088;
  v12 = *(a1 + 32);
  [v9 enumeratePersistentIDsAndProperties:&v13 count:1 usingBlock:v11];

  return 1;
}

void __21__SKUIWishlist_items__block_invoke_22(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  if (*a3)
  {
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:*a3 options:0 error:0];
    if (v6)
    {
      v7 = [[SKUIItem alloc] initWithCacheRepresentation:v6];
      if (v7)
      {
        [*(a1 + 32) addObject:v7];
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)postChangeNotification
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"SKUIWishlistDidChangeNotification" object:self];
}

- (void)removeItemsWithItemIdentifiers:(id)a3
{
  v4 = a3;
  v5 = SKUIWishlistOperationQueue();
  database = self->_database;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SKUIWishlist_removeItemsWithItemIdentifiers___block_invoke;
  v9[3] = &unk_2781FE0D8;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  [(SSWishlist *)database performTransactionWithBlock:v9];
}

uint64_t __47__SKUIWishlist_removeItemsWithItemIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D6A688];
  v5 = [MEMORY[0x277D69C48] containsPredicateWithProperty:*MEMORY[0x277D6A688] values:*(a1 + 32)];
  v6 = [MEMORY[0x277D69D60] queryWithDatabase:v3 predicate:v5];
  v12[0] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SKUIWishlist_removeItemsWithItemIdentifiers___block_invoke_2;
  v9[3] = &unk_2781F9CB0;
  v10 = v3;
  v11 = *(a1 + 40);
  v7 = v3;
  [v6 enumeratePersistentIDsAndProperties:v12 count:1 usingBlock:v9];

  return 1;
}

void __47__SKUIWishlist_removeItemsWithItemIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2, id *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277D69D60]) initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  [v7 setValue:&unk_2828D2D20 forProperty:*MEMORY[0x277D6A6A0]];
  v8 = -[SKUIRemoveFromWishlistOperation initWithItemIdentifier:entityIdentifier:reason:]([SKUIRemoveFromWishlistOperation alloc], "initWithItemIdentifier:entityIdentifier:reason:", [*a3 longLongValue], a2, 0);
  [*(a1 + 40) addOperation:v8];

  objc_autoreleasePoolPop(v6);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(SKUIWishlist *)self accountIdentifier];
    v6 = v7 == [v4 accountIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end