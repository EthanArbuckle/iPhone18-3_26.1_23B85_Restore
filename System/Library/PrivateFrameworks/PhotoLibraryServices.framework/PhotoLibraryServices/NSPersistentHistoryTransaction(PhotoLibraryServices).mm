@interface NSPersistentHistoryTransaction(PhotoLibraryServices)
- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices;
@end

@implementation NSPersistentHistoryTransaction(PhotoLibraryServices)

- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices
{
  author = [self author];
  v3 = [PLPersistentHistoryTransactionModifiers transactionModifiersFromTransactionAuthor:author];

  v17 = MEMORY[0x1E696AEC0];
  v4 = PLIndentToString();
  transactionNumber = [self transactionNumber];
  timestamp = [self timestamp];
  v7 = PLDateToISO8160StringWithLocalTimeZone(timestamp);
  bundleID = [self bundleID];
  processID = [self processID];
  contextName = [self contextName];
  author2 = [self author];
  [v3 changeSource];
  v12 = PLStringFromXPCChangeSource();
  syncChangeMarker = [v3 syncChangeMarker];
  v14 = @"NO";
  if (syncChangeMarker)
  {
    v14 = @"YES";
  }

  v15 = [v17 stringWithFormat:@"%@Transaction %08lld: %@ process=%@ (%@) context=%@ author=%@ (changeSource=%@ isSyncableChange=%@)\n", v4, transactionNumber, v7, bundleID, processID, contextName, author2, v12, v14];

  return v15;
}

@end