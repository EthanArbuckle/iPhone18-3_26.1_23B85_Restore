@interface BRCPQLInjectionEnumerationUnderParentWhereClause
+ (id)_createInjectionParentGlobalID:(id)d isZoneRoot:(BOOL)root;
@end

@implementation BRCPQLInjectionEnumerationUnderParentWhereClause

+ (id)_createInjectionParentGlobalID:(id)d isZoneRoot:(BOOL)root
{
  rootCopy = root;
  v5 = MEMORY[0x277D82C08];
  dCopy = d;
  zoneRowID = [dCopy zoneRowID];
  itemID = [dCopy itemID];

  if (rootCopy)
  {
    v9 = @" item_parent_zone_rowid = %@ AND item_parent_id = %@";
  }

  else
  {
    v9 = @" zone_rowid = %@ AND item_id = %@";
  }

  v10 = [v5 formatInjection:{v9, zoneRowID, itemID}];

  return v10;
}

@end