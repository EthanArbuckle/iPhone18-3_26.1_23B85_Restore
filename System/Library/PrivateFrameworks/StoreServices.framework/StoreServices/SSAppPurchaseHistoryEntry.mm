@interface SSAppPurchaseHistoryEntry
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)predicateForHasMessagesExtension;
+ (id)predicateForIs32BitOnly:(BOOL)a3;
+ (id)predicateForNotHidden;
+ (id)supportsPlatformPredicate:(BOOL)a3;
@end

@implementation SSAppPurchaseHistoryEntry

+ (id)disambiguatedSQLForProperty:(id)a3
{
  v5 = @"IFNULL(app_purchase_history.is_first_party, 0)";
  if (([a3 isEqualToString:{@"IFNULL(app_purchase_history.is_first_party, 0)"}] & 1) == 0)
  {
    v5 = @"IFNULL(app_purchase_history.is_preorder, 0)";
    if (([a3 isEqualToString:{@"IFNULL(app_purchase_history.is_preorder, 0)"}] & 1) == 0)
    {
      v7.receiver = a1;
      v7.super_class = &OBJC_METACLASS___SSAppPurchaseHistoryEntry;
      return objc_msgSendSuper2(&v7, sel_disambiguatedSQLForProperty_, a3);
    }
  }

  return v5;
}

+ (id)supportsPlatformPredicate:(BOOL)a3
{
  if (a3)
  {
    v3 = @"supports_ipad";
  }

  else
  {
    v3 = @"supports_iphone";
  }

  v4 = [MEMORY[0x1E696AD98] numberWithBool:1];

  return [SSSQLiteComparisonPredicate predicateWithProperty:v3 equalToValue:v4];
}

+ (id)predicateForNotHidden
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:0];

  return [SSSQLiteComparisonPredicate predicateWithProperty:@"is_hidden" equalToValue:v2];
}

+ (id)predicateForHasMessagesExtension
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:1];

  return [SSSQLiteComparisonPredicate predicateWithProperty:@"has_messages_extension" equalToValue:v2];
}

+ (id)predicateForIs32BitOnly:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a3];

  return [SSSQLiteComparisonPredicate predicateWithProperty:@"is_32_bit_only" equalToValue:v3];
}

@end