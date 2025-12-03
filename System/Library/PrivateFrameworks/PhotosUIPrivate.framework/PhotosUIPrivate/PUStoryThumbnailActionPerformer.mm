@interface PUStoryThumbnailActionPerformer
- (void)deleteMemory;
- (void)featureLess:(id)less;
- (void)fileRadar;
- (void)presentShareSheet;
- (void)presentTitleEditor;
- (void)setFavorite:(BOOL)favorite completionHandler:(id)handler;
- (void)setPresentDetailsViewAction:(id)action;
- (void)setPresentPlayerAction:(id)action;
- (void)showVisualDiagnostics;
@end

@implementation PUStoryThumbnailActionPerformer

- (void)setPresentPlayerAction:(id)action
{
  v4 = _Block_copy(action);
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

  selfCopy = self;
  sub_1B3885954(v4, v5);
}

- (void)setPresentDetailsViewAction:(id)action
{
  v4 = _Block_copy(action);
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

  selfCopy = self;
  sub_1B3885C80(v4, v5);
}

- (void)setFavorite:(BOOL)favorite completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
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

  selfCopy = self;
  sub_1B3885E38(favorite, v6, v7);
  sub_1B36F9DA0(v6);
}

- (void)presentShareSheet
{
  selfCopy = self;
  sub_1B38860F8();
}

- (void)presentTitleEditor
{
  selfCopy = self;
  sub_1B388637C();
}

- (void)deleteMemory
{
  selfCopy = self;
  sub_1B38863D0();
}

- (void)featureLess:(id)less
{
  lessCopy = less;
  selfCopy = self;
  sub_1B3886468();
}

- (void)fileRadar
{
  selfCopy = self;
  sub_1B3886510();
}

- (void)showVisualDiagnostics
{
  selfCopy = self;
  sub_1B3886C9C();
}

@end