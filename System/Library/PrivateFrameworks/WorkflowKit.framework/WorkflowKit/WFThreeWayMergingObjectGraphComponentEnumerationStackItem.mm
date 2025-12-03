@interface WFThreeWayMergingObjectGraphComponentEnumerationStackItem
+ (void)initialItemWithVertex:(uint64_t)vertex;
- (void)initWithVertex:(uint64_t)vertex step:(uint64_t)step predecessorIndex:;
@end

@implementation WFThreeWayMergingObjectGraphComponentEnumerationStackItem

- (void)initWithVertex:(uint64_t)vertex step:(uint64_t)step predecessorIndex:
{
  v8 = a2;
  v9 = v8;
  if (self)
  {
    if (!v8)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithVertex_step_predecessorIndex_ object:self file:@"WFThreeWayMergingObjectGraph.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"vertex"}];
    }

    v13.receiver = self;
    v13.super_class = WFThreeWayMergingObjectGraphComponentEnumerationStackItem;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      self[2] = vertex;
      self[3] = step;
    }
  }

  return self;
}

+ (void)initialItemWithVertex:(uint64_t)vertex
{
  v2 = a2;
  v3 = objc_alloc(objc_opt_self());
  v4 = [(WFThreeWayMergingObjectGraphComponentEnumerationStackItem *)v3 initWithVertex:v2 step:0 predecessorIndex:0];

  return v4;
}

@end