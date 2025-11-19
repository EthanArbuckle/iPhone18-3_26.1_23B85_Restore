@interface _PXActionableSectionHeaderViewSearch
- (_PXActionableSectionHeaderViewSearch)init;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation _PXActionableSectionHeaderViewSearch

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXZoomObservationContextIOS != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotosSearchSectionHeaderLayoutProvider.m" lineNumber:55 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if (v6 < 0)
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
    v4 = [(PXActionableSectionHeaderView *)v2 visualEffectView];
    v5 = [v4 layer];
    [v5 setOpacity:0.0];
  }

  return v3;
}

@end