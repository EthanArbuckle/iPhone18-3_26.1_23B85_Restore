@interface SHSheetContentDataSourceChangeDetails
- (id)description;
@end

@implementation SHSheetContentDataSourceChangeDetails

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = SHSheetContentDataSourceChangeDetails;
  v4 = [(SHSheetContentDataSourceChangeDetails *)&v14 description];
  [(SHSheetContentDataSourceChangeDetails *)self snapshotChanged];
  v5 = NSStringFromBOOL();
  [(SHSheetContentDataSourceChangeDetails *)self airDropBadgeChanged];
  v6 = NSStringFromBOOL();
  [(SHSheetContentDataSourceChangeDetails *)self sectionsChanged];
  v7 = NSStringFromBOOL();
  [(SHSheetContentDataSourceChangeDetails *)self peopleCountChanged];
  v8 = NSStringFromBOOL();
  [(SHSheetContentDataSourceChangeDetails *)self forceReload];
  v9 = NSStringFromBOOL();
  [(SHSheetContentDataSourceChangeDetails *)self animateDifferences];
  v10 = NSStringFromBOOL();
  modifiedIdentifiers = [(SHSheetContentDataSourceChangeDetails *)self modifiedIdentifiers];
  v12 = [v3 stringWithFormat:@"<%@ snapshotChanged:%@ airDropBadgeChanged:%@ sectionsChanged:%@ peopleCountChanged:%@ forceReload:%@ animateDifferences:%@ modifiedIdentifiers:%@>", v4, v5, v6, v7, v8, v9, v10, modifiedIdentifiers];

  return v12;
}

@end