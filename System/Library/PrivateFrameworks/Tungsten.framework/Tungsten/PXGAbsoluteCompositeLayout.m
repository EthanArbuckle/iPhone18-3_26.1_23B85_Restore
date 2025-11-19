@interface PXGAbsoluteCompositeLayout
- (BOOL)shouldUpdateSublayoutsInStrictOrder;
- (PXGAbsoluteCompositeLayout)init;
- (PXGAbsoluteCompositeLayout)initWithComposition:(id)a3;
- (void)insertSublayout:(id)a3 atIndex:(int64_t)a4;
- (void)insertSublayoutProvider:(id)a3 inRange:(_NSRange)a4;
- (void)removeSublayoutsInRange:(_NSRange)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setFrames:(const CGRect *)a3 forSublayoutsInRange:(_NSRange)a4;
- (void)setOrigins:(const CGPoint *)a3 forSublayoutsInRange:(_NSRange)a4;
- (void)setReferenceDepths:(const double *)a3 forSublayoutsInRange:(_NSRange)a4;
- (void)setShouldUpdateSublayoutsInStrictOrder:(BOOL)a3;
- (void)setSpriteTransform:(id *)a3 forSublayoutAtIndex:(int64_t)a4;
- (void)setZPositions:(const double *)a3 forSublayoutsInRange:(_NSRange)a4;
@end

@implementation PXGAbsoluteCompositeLayout

- (BOOL)shouldUpdateSublayoutsInStrictOrder
{
  v2 = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  v3 = [v2 shouldUpdateSublayoutsInStrictOrder];

  return v3;
}

- (void)setShouldUpdateSublayoutsInStrictOrder:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [v4 setShouldUpdateSublayoutsInStrictOrder:v3];
}

- (void)setSpriteTransform:(id *)a3 forSublayoutAtIndex:(int64_t)a4
{
  v6 = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [v6 setSpriteTransforms:a3 forSublayoutsInRange:{a4, 1}];
}

- (void)setReferenceDepths:(const double *)a3 forSublayoutsInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [v7 setReferenceDepths:a3 forSublayoutsInRange:{location, length}];
}

- (void)setZPositions:(const double *)a3 forSublayoutsInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [v7 setZPositions:a3 forSublayoutsInRange:{location, length}];
}

- (void)setFrames:(const CGRect *)a3 forSublayoutsInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [v7 setFrames:a3 forSublayoutsInRange:{location, length}];
}

- (void)setOrigins:(const CGPoint *)a3 forSublayoutsInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [v7 setOrigins:a3 forSublayoutsInRange:{location, length}];
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = PXGAbsoluteCompositeLayout;
  [(PXGLayout *)&v7 setContentSize:?];
  v6 = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [v6 setContentSize:{width, height}];
}

- (void)removeSublayoutsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v7.receiver = self;
  v7.super_class = PXGAbsoluteCompositeLayout;
  [(PXGLayout *)&v7 removeSublayoutsInRange:?];
  v6 = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [v6 removeRange:{location, length}];
}

- (void)insertSublayoutProvider:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [v8 insertRange:{location, length}];

  v9.receiver = self;
  v9.super_class = PXGAbsoluteCompositeLayout;
  [(PXGCompositeLayout *)&v9 insertSublayoutProvider:v7 inRange:location, length];
}

- (void)insertSublayout:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(PXGAbsoluteCompositeLayout *)self absoluteComposition];
  [v7 insertRange:{a4, 1}];

  v8.receiver = self;
  v8.super_class = PXGAbsoluteCompositeLayout;
  [(PXGLayout *)&v8 insertSublayout:v6 atIndex:a4];
}

- (PXGAbsoluteCompositeLayout)initWithComposition:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXGAbsoluteCompositeLayout.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXGAbsoluteCompositeLayout initWithComposition:]"}];

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