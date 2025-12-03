@interface PXGAbsoluteCompositeLayout
- (BOOL)shouldUpdateSublayoutsInStrictOrder;
- (PXGAbsoluteCompositeLayout)init;
- (PXGAbsoluteCompositeLayout)initWithComposition:(id)composition;
- (void)insertSublayout:(id)sublayout atIndex:(int64_t)index;
- (void)insertSublayoutProvider:(id)provider inRange:(_NSRange)range;
- (void)removeSublayoutsInRange:(_NSRange)range;
- (void)setContentSize:(CGSize)size;
- (void)setFrames:(const CGRect *)frames forSublayoutsInRange:(_NSRange)range;
- (void)setOrigins:(const CGPoint *)origins forSublayoutsInRange:(_NSRange)range;
- (void)setReferenceDepths:(const double *)depths forSublayoutsInRange:(_NSRange)range;
- (void)setShouldUpdateSublayoutsInStrictOrder:(BOOL)order;
- (void)setSpriteTransform:(id *)transform forSublayoutAtIndex:(int64_t)index;
- (void)setZPositions:(const double *)positions forSublayoutsInRange:(_NSRange)range;
@end

@implementation PXGAbsoluteCompositeLayout

- (BOOL)shouldUpdateSublayoutsInStrictOrder
{
  absoluteComposition = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  shouldUpdateSublayoutsInStrictOrder = [absoluteComposition shouldUpdateSublayoutsInStrictOrder];

  return shouldUpdateSublayoutsInStrictOrder;
}

- (void)setShouldUpdateSublayoutsInStrictOrder:(BOOL)order
{
  orderCopy = order;
  absoluteComposition = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [absoluteComposition setShouldUpdateSublayoutsInStrictOrder:orderCopy];
}

- (void)setSpriteTransform:(id *)transform forSublayoutAtIndex:(int64_t)index
{
  absoluteComposition = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [absoluteComposition setSpriteTransforms:transform forSublayoutsInRange:{index, 1}];
}

- (void)setReferenceDepths:(const double *)depths forSublayoutsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  absoluteComposition = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [absoluteComposition setReferenceDepths:depths forSublayoutsInRange:{location, length}];
}

- (void)setZPositions:(const double *)positions forSublayoutsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  absoluteComposition = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [absoluteComposition setZPositions:positions forSublayoutsInRange:{location, length}];
}

- (void)setFrames:(const CGRect *)frames forSublayoutsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  absoluteComposition = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [absoluteComposition setFrames:frames forSublayoutsInRange:{location, length}];
}

- (void)setOrigins:(const CGPoint *)origins forSublayoutsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  absoluteComposition = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [absoluteComposition setOrigins:origins forSublayoutsInRange:{location, length}];
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7.receiver = self;
  v7.super_class = PXGAbsoluteCompositeLayout;
  [(PXGLayout *)&v7 setContentSize:?];
  absoluteComposition = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [absoluteComposition setContentSize:{width, height}];
}

- (void)removeSublayoutsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7.receiver = self;
  v7.super_class = PXGAbsoluteCompositeLayout;
  [(PXGLayout *)&v7 removeSublayoutsInRange:?];
  absoluteComposition = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [absoluteComposition removeRange:{location, length}];
}

- (void)insertSublayoutProvider:(id)provider inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  providerCopy = provider;
  absoluteComposition = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [absoluteComposition insertRange:{location, length}];

  v9.receiver = self;
  v9.super_class = PXGAbsoluteCompositeLayout;
  [(PXGCompositeLayout *)&v9 insertSublayoutProvider:providerCopy inRange:location, length];
}

- (void)insertSublayout:(id)sublayout atIndex:(int64_t)index
{
  sublayoutCopy = sublayout;
  absoluteComposition = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [absoluteComposition insertRange:{index, 1}];

  v8.receiver = self;
  v8.super_class = PXGAbsoluteCompositeLayout;
  [(PXGLayout *)&v8 insertSublayout:sublayoutCopy atIndex:index];
}

- (PXGAbsoluteCompositeLayout)initWithComposition:(id)composition
{
  compositionCopy = composition;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAbsoluteCompositeLayout.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXGAbsoluteCompositeLayout initWithComposition:]"}];

  abort();
}

- (PXGAbsoluteCompositeLayout)init
{
  v6.receiver = self;
  v6.super_class = PXGAbsoluteCompositeLayout;
  v2 = [(PXGCompositeLayout *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_PXGAbsoluteSublayoutComposition);
    absoluteComposition = v2->_absoluteComposition;
    v2->_absoluteComposition = v3;

    [(PXGCompositeLayout *)v2 setComposition:v2->_absoluteComposition];
  }

  return v2;
}

@end