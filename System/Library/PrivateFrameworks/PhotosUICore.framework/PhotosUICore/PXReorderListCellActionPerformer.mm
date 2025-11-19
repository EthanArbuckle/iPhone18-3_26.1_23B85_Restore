@interface PXReorderListCellActionPerformer
- (PXReorderListCellActionPerformer)initWithActionType:(id)a3 collectionList:(id)a4 parameters:(id)a5;
- (void)performBackgroundTask;
@end

@implementation PXReorderListCellActionPerformer

- (PXReorderListCellActionPerformer)initWithActionType:(id)a3 collectionList:(id)a4 parameters:(id)a5
{
  v6 = sub_1A524C674();
  v8 = v7;
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38304(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  v9 = sub_1A524C3E4();
  return sub_1A4A3492C(v6, v8, a4, v9);
}

- (void)performBackgroundTask
{
  v2 = self;
  sub_1A4A34D10();
}

@end