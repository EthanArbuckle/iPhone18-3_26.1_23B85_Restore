@interface NSPersistentHistoryTransaction(PhotoLibraryServices)
- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices;
@end

@implementation NSPersistentHistoryTransaction(PhotoLibraryServices)

- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices
{
  v2 = [a1 author];
  v3 = [PLPersistentHistoryTransactionModifiers transactionModifiersFromTransactionAuthor:v2];

  v17 = MEMORY[0x1E696AEC0];
  v4 = PLIndentToString();
  v5 = [a1 transactionNumber];
  v6 = [a1 timestamp];
  v7 = PLDateToISO8160StringWithLocalTimeZone(v6);
  v8 = [a1 bundleID];
  v9 = [a1 processID];
  v10 = [a1 contextName];
  v11 = [a1 author];
  [v3 changeSource];
  v12 = PLStringFromXPCChangeSource();
  v13 = [v3 syncChangeMarker];
  v14 = @"NO";
  if (v13)
  {
    v14 = @"YES";
  }

  v15 = [v17 stringWithFormat:@"%@Transaction %08lld: %@ process=%@ (%@) context=%@ author=%@ (changeSource=%@ isSyncableChange=%@)\n", v4, v5, v7, v8, v9, v10, v11, v12, v14];

  return v15;
}

@end