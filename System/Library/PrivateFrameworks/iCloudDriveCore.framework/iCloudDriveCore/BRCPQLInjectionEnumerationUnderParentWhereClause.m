@interface BRCPQLInjectionEnumerationUnderParentWhereClause
+ (id)_createInjectionParentGlobalID:(id)a3 isZoneRoot:(BOOL)a4;
@end

@implementation BRCPQLInjectionEnumerationUnderParentWhereClause

+ (id)_createInjectionParentGlobalID:(id)a3 isZoneRoot:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x277D82C08];
  v6 = a3;
  v7 = [v6 zoneRowID];
  v8 = [v6 itemID];

  if (v4)
  {
    v9 = @" item_parent_zone_rowid = %@ AND item_parent_id = %@";
  }

  else
  {
    v9 = @" zone_rowid = %@ AND item_id = %@";
  }

  v10 = [v5 formatInjection:{v9, v7, v8}];

  return v10;
}

@end