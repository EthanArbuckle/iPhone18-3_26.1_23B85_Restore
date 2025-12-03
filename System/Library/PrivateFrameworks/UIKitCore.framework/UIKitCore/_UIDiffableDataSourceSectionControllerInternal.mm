@interface _UIDiffableDataSourceSectionControllerInternal
- (_UIDiffableDataSourceSectionControllerInternal)initWithItemRenderers:(id)renderers;
- (_UIDiffableDataSourceSectionControllerInternal)initWithItemRenderers:(id)renderers associatedSectionIdentifiers:(id)identifiers;
- (void)applySnapshot:(id)snapshot toSection:(id)section animatingDifferences:(BOOL)differences completion:(id)completion;
- (void)applySnapshot:(id)snapshot toSection:(id)section customAnimationsProvider:(id)provider;
- (void)applySnapshot:(id)snapshot toSection:(id)section viewPropertyAnimator:(id)animator customAnimationsProvider:(id)provider;
@end

@implementation _UIDiffableDataSourceSectionControllerInternal

- (_UIDiffableDataSourceSectionControllerInternal)initWithItemRenderers:(id)renderers
{
  v4.receiver = self;
  v4.super_class = _UIDiffableDataSourceSectionControllerInternal;
  return [(_UIDiffableDataSourceSectionController *)&v4 initWithItemRenderers:renderers];
}

- (_UIDiffableDataSourceSectionControllerInternal)initWithItemRenderers:(id)renderers associatedSectionIdentifiers:(id)identifiers
{
  v5.receiver = self;
  v5.super_class = _UIDiffableDataSourceSectionControllerInternal;
  return [(_UIDiffableDataSourceSectionController *)&v5 initWithItemRenderers:renderers associatedSectionIdentifiers:identifiers];
}

- (void)applySnapshot:(id)snapshot toSection:(id)section animatingDifferences:(BOOL)differences completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = _UIDiffableDataSourceSectionControllerInternal;
  [(_UIDiffableDataSourceSectionController *)&v6 applySnapshot:snapshot toSection:section animatingDifferences:differences completion:completion];
}

- (void)applySnapshot:(id)snapshot toSection:(id)section customAnimationsProvider:(id)provider
{
  v5.receiver = self;
  v5.super_class = _UIDiffableDataSourceSectionControllerInternal;
  [(_UIDiffableDataSourceSectionController *)&v5 applySnapshot:snapshot toSection:section customAnimationsProvider:provider];
}

- (void)applySnapshot:(id)snapshot toSection:(id)section viewPropertyAnimator:(id)animator customAnimationsProvider:(id)provider
{
  v6.receiver = self;
  v6.super_class = _UIDiffableDataSourceSectionControllerInternal;
  [(_UIDiffableDataSourceSectionController *)&v6 applySnapshot:snapshot toSection:section viewPropertyAnimator:animator customAnimationsProvider:provider];
}

@end