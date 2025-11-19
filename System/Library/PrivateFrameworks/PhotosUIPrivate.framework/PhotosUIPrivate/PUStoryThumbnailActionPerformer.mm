@interface PUStoryThumbnailActionPerformer
- (void)deleteMemory;
- (void)featureLess:(id)a3;
- (void)fileRadar;
- (void)presentShareSheet;
- (void)presentTitleEditor;
- (void)setFavorite:(BOOL)a3 completionHandler:(id)a4;
- (void)setPresentDetailsViewAction:(id)a3;
- (void)setPresentPlayerAction:(id)a3;
- (void)showVisualDiagnostics;
@end

@implementation PUStoryThumbnailActionPerformer

- (void)setPresentPlayerAction:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B38879B4;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1B3885954(v4, v5);
}

- (void)setPresentDetailsViewAction:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B38878CC;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1B3885C80(v4, v5);
}

- (void)setFavorite:(BOOL)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1B38878C0;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_1B3885E38(a3, v6, v7);
  sub_1B36F9DA0(v6);
}

- (void)presentShareSheet
{
  v2 = self;
  sub_1B38860F8();
}

- (void)presentTitleEditor
{
  v2 = self;
  sub_1B388637C();
}

- (void)deleteMemory
{
  v2 = self;
  sub_1B38863D0();
}

- (void)featureLess:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B3886468();
}

- (void)fileRadar
{
  v2 = self;
  sub_1B3886510();
}

- (void)showVisualDiagnostics
{
  v2 = self;
  sub_1B3886C9C();
}

@end