@interface _UIDiffableDataSourceSectionControllerInternal
- (_UIDiffableDataSourceSectionControllerInternal)initWithItemRenderers:(id)a3;
- (_UIDiffableDataSourceSectionControllerInternal)initWithItemRenderers:(id)a3 associatedSectionIdentifiers:(id)a4;
- (void)applySnapshot:(id)a3 toSection:(id)a4 animatingDifferences:(BOOL)a5 completion:(id)a6;
- (void)applySnapshot:(id)a3 toSection:(id)a4 customAnimationsProvider:(id)a5;
- (void)applySnapshot:(id)a3 toSection:(id)a4 viewPropertyAnimator:(id)a5 customAnimationsProvider:(id)a6;
@end

@implementation _UIDiffableDataSourceSectionControllerInternal

- (_UIDiffableDataSourceSectionControllerInternal)initWithItemRenderers:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIDiffableDataSourceSectionControllerInternal;
  return [(_UIDiffableDataSourceSectionController *)&v4 initWithItemRenderers:a3];
}

- (_UIDiffableDataSourceSectionControllerInternal)initWithItemRenderers:(id)a3 associatedSectionIdentifiers:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIDiffableDataSourceSectionControllerInternal;
  return [(_UIDiffableDataSourceSectionController *)&v5 initWithItemRenderers:a3 associatedSectionIdentifiers:a4];
}

- (void)applySnapshot:(id)a3 toSection:(id)a4 animatingDifferences:(BOOL)a5 completion:(id)a6
{
  v6.receiver = self;
  v6.super_class = _UIDiffableDataSourceSectionControllerInternal;
  [(_UIDiffableDataSourceSectionController *)&v6 applySnapshot:a3 toSection:a4 animatingDifferences:a5 completion:a6];
}

- (void)applySnapshot:(id)a3 toSection:(id)a4 customAnimationsProvider:(id)a5
{
  v5.receiver = self;
  v5.super_class = _UIDiffableDataSourceSectionControllerInternal;
  [(_UIDiffableDataSourceSectionController *)&v5 applySnapshot:a3 toSection:a4 customAnimationsProvider:a5];
}

- (void)applySnapshot:(id)a3 toSection:(id)a4 viewPropertyAnimator:(id)a5 customAnimationsProvider:(id)a6
{
  v6.receiver = self;
  v6.super_class = _UIDiffableDataSourceSectionControllerInternal;
  [(_UIDiffableDataSourceSectionController *)&v6 applySnapshot:a3 toSection:a4 viewPropertyAnimator:a5 customAnimationsProvider:a6];
}

@end