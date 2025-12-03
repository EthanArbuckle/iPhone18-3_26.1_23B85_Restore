@interface SSPurchasableAppItem
+ (id)allPropertyKeys;
+ (id)itemsFromDatabase:(id)database forAccount:(int64_t)account matching:(id)matching sortedBy:(id)by sortAscending:(BOOL)ascending;
- (BOOL)hasMessagesExtension;
- (BOOL)is32BitOnly;
- (BOOL)isFamilyShareable;
- (BOOL)isHiddenFromSpringBoard;
- (BOOL)isNewsstand;
- (BOOL)isPreorder;
- (BOOL)supportsIPad;
- (BOOL)supportsIPhone;
- (id)accountIdentifier;
- (id)bundleID;
- (id)category;
- (id)companyName;
- (id)description;
- (id)humanReadableVersion;
- (id)iconTitle;
- (id)iconURL;
- (id)longTitle;
- (id)ovalIconURLString;
- (id)redownloadParams;
- (id)requiredCapabilitiesString;
- (int64_t)contentRatingFlags;
- (int64_t)iTunesVersion;
- (unsigned)minimumOS;
@end

@implementation SSPurchasableAppItem

+ (id)itemsFromDatabase:(id)database forAccount:(int64_t)account matching:(id)matching sortedBy:(id)by sortAscending:(BOOL)ascending
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__72;
  v15 = __Block_byref_object_dispose__72;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__SSPurchasableAppItem_itemsFromDatabase_forAccount_matching_sortedBy_sortAscending___block_invoke;
  v9[3] = &unk_1E84B31C8;
  ascendingCopy = ascending;
  v9[4] = by;
  v9[5] = matching;
  v9[6] = &v11;
  v9[7] = account;
  [database readUsingTransactionBlock:v9];
  v7 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __85__SSPurchasableAppItem_itemsFromDatabase_forAccount_matching_sortedBy_sortAscending___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [a2 database];
  v6 = +[SSSQLiteComparisonPredicate predicateWithProperty:equalToValue:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToValue:", SSPurchasableItemAccountUniqueIdentifier, [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)]);
  v7 = objc_alloc_init(SSSQLiteQueryDescriptor);
  [(SSSQLiteQueryDescriptor *)v7 setEntityClass:objc_opt_class()];
  if (*(a1 + 32))
  {
    -[SSSQLiteQueryDescriptor setOrderingProperties:](v7, "setOrderingProperties:", [MEMORY[0x1E695DEC8] arrayWithObject:?]);
    v8 = SSSQLiteOrderAscending;
    if (!*(a1 + 64))
    {
      v8 = &SSSQLiteOrderDescending;
    }

    -[SSSQLiteQueryDescriptor setOrderingDirections:](v7, "setOrderingDirections:", [MEMORY[0x1E695DEC8] arrayWithObject:*v8]);
  }

  if (*(a1 + 40))
  {
    v6 = +[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAllPredicates:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, 0}]);
  }

  [(SSSQLiteQueryDescriptor *)v7 setPredicate:v6];
  v9 = [[SSSQLiteQuery alloc] initWithDatabase:v5 descriptor:v7];
  *(*(*(a1 + 48) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = +[SSPurchasableAppItem allPropertyKeys];
  v11 = [v10 count];
  v12 = malloc_type_malloc(8 * v11, 0x80040B8603338uLL);
  [v10 getObjects:v12 range:{0, objc_msgSend(v10, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__SSPurchasableAppItem_itemsFromDatabase_forAccount_matching_sortedBy_sortAscending___block_invoke_2;
  v14[3] = &unk_1E84B31A0;
  v14[5] = v11;
  v14[6] = v12;
  v14[4] = *(a1 + 48);
  [(SSSQLiteQuery *)v9 enumeratePersistentIDsAndProperties:v12 count:v11 usingBlock:v14];
  free(v12);

  objc_autoreleasePoolPop(v4);
  return 1;
}

void __85__SSPurchasableAppItem_itemsFromDatabase_forAccount_matching_sortedBy_sortAscending___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = a1[5];
  v10 = v5;
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(a3 + 8 * i);
      if (v8)
      {
        [v10 setObject:v8 forKey:*(a1[6] + 8 * i)];
        v5 = v10;
        v6 = a1[5];
      }
    }
  }

  if ([v5 count])
  {
    v9 = [(SSPurchasableItem *)[SSPurchasableAppItem alloc] initWithPropertyValues:v10];
    [*(*(a1[4] + 8) + 40) addObject:v9];
  }
}

- (id)accountIdentifier
{
  propertyValues = [(SSPurchasableItem *)self propertyValues];

  return [propertyValues objectForKey:@"account_unique_identifier"];
}

- (id)category
{
  propertyValues = [(SSPurchasableItem *)self propertyValues];

  return [propertyValues objectForKey:@"category"];
}

- (id)companyName
{
  propertyValues = [(SSPurchasableItem *)self propertyValues];

  return [propertyValues objectForKey:@"company_title"];
}

- (int64_t)contentRatingFlags
{
  v2 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 integerValue];
}

- (id)bundleID
{
  propertyValues = [(SSPurchasableItem *)self propertyValues];

  return [propertyValues objectForKey:@"bundle_id"];
}

- (BOOL)hasMessagesExtension
{
  v2 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 BOOLValue];
}

- (id)iconTitle
{
  propertyValues = [(SSPurchasableItem *)self propertyValues];

  return [propertyValues objectForKey:@"icon_title"];
}

- (id)iconURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 URLWithString:v3];
}

- (BOOL)isFamilyShareable
{
  v2 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 BOOLValue];
}

- (BOOL)isHiddenFromSpringBoard
{
  v2 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 BOOLValue];
}

- (BOOL)isNewsstand
{
  v2 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 BOOLValue];
}

- (id)longTitle
{
  propertyValues = [(SSPurchasableItem *)self propertyValues];

  return [propertyValues objectForKey:@"long_title"];
}

- (unsigned)minimumOS
{
  v2 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 unsignedIntValue];
}

- (id)ovalIconURLString
{
  propertyValues = [(SSPurchasableItem *)self propertyValues];

  return [propertyValues objectForKey:@"oval_icon_url"];
}

- (BOOL)is32BitOnly
{
  v2 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 BOOLValue];
}

- (BOOL)supportsIPad
{
  v2 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 BOOLValue];
}

- (BOOL)supportsIPhone
{
  v2 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 BOOLValue];
}

- (id)redownloadParams
{
  propertyValues = [(SSPurchasableItem *)self propertyValues];

  return [propertyValues objectForKey:@"redownload_params"];
}

- (id)humanReadableVersion
{
  propertyValues = [(SSPurchasableItem *)self propertyValues];

  return [propertyValues objectForKey:@"version_human_readable"];
}

- (int64_t)iTunesVersion
{
  v2 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 longLongValue];
}

- (BOOL)isPreorder
{
  v2 = [-[SSPurchasableItem propertyValues](self "propertyValues")];

  return [v2 BOOLValue];
}

- (id)requiredCapabilitiesString
{
  propertyValues = [(SSPurchasableItem *)self propertyValues];

  return [propertyValues objectForKey:@"required_capabilities"];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = SSPurchasableAppItem;
  return [-[SSPurchasableItem description](&v3 description)];
}

+ (id)allPropertyKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SSPurchasableAppItem_allPropertyKeys__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  if (allPropertyKeys_onceToken_0 != -1)
  {
    dispatch_once(&allPropertyKeys_onceToken_0, block);
  }

  return allPropertyKeys___allPropertyKeys_0;
}

void __39__SSPurchasableAppItem_allPropertyKeys__block_invoke(uint64_t a1)
{
  v5[25] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v5[0] = @"account_unique_identifier";
  v5[1] = @"category";
  v5[2] = @"company_title";
  v5[3] = @"content_rating_flags";
  v5[4] = @"bundle_id";
  v5[5] = @"flavors";
  v5[6] = @"has_messages_extension";
  v5[7] = @"icon_title";
  v5[8] = @"icon_token";
  v5[9] = @"icon_url";
  v5[10] = @"is_family_shareable";
  v5[11] = @"is_hidden_from_springboard";
  v5[12] = @"is_newsstand";
  v5[13] = @"IFNULL(app_purchase_history.is_preorder, 0)";
  v5[14] = @"long_title";
  v5[15] = @"minimum_os";
  v5[16] = @"oval_icon_token";
  v5[17] = @"oval_icon_url";
  v5[18] = @"is_32_bit_only";
  v5[19] = @"supports_ipad";
  v5[20] = @"supports_iphone";
  v5[21] = @"redownload_params";
  v5[22] = @"version_human_readable";
  v5[23] = @"version_itunes";
  v5[24] = @"required_capabilities";
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v5 count:25];
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___SSPurchasableAppItem;
  allPropertyKeys___allPropertyKeys_0 = [v3 arrayByAddingObjectsFromArray:{objc_msgSendSuper2(&v4, sel_allPropertyKeys)}];

  objc_autoreleasePoolPop(v2);
}

@end