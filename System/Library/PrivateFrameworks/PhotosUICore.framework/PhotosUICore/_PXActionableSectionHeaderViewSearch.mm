@interface _PXActionableSectionHeaderViewSearch
- (_PXActionableSectionHeaderViewSearch)init;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation _PXActionableSectionHeaderViewSearch

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXZoomObservationContextIOS != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSearchSectionHeaderLayoutProvider.m" lineNumber:55 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if (changeCopy < 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69___PXActionableSectionHeaderViewSearch_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E774C648;
    v12[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.3];
  }
}

- (_PXActionableSectionHeaderViewSearch)init
{
  v7.receiver = self;
  v7.super_class = _PXActionableSectionHeaderViewSearch;
  v2 = [(_PXActionableSectionHeaderViewSearch *)&v7 init];
  v3 = v2;
  if (v2)
  {
    visualEffectView = [(PXActionableSectionHeaderView *)v2 visualEffectView];
    layer = [visualEffectView layer];
    [layer setOpacity:0.0];
  }

  return v3;
}

@end