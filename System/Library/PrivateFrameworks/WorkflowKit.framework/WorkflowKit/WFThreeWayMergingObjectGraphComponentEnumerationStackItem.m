@interface WFThreeWayMergingObjectGraphComponentEnumerationStackItem
+ (void)initialItemWithVertex:(uint64_t)a1;
- (void)initWithVertex:(uint64_t)a3 step:(uint64_t)a4 predecessorIndex:;
@end

@implementation WFThreeWayMergingObjectGraphComponentEnumerationStackItem

- (void)initWithVertex:(uint64_t)a3 step:(uint64_t)a4 predecessorIndex:
{
  v8 = a2;
  v9 = v8;
  if (a1)
  {
    if (!v8)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:sel_initWithVertex_step_predecessorIndex_ object:a1 file:@"WFThreeWayMergingObjectGraph.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"vertex"}];
    }

    v13.receiver = a1;
    v13.super_class = WFThreeWayMergingObjectGraphComponentEnumerationStackItem;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      a1[2] = a3;
      a1[3] = a4;
    }
  }

  return a1;
}

+ (void)initialItemWithVertex:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_alloc(objc_opt_self());
  v4 = [(WFThreeWayMergingObjectGraphComponentEnumerationStackItem *)v3 initWithVertex:v2 step:0 predecessorIndex:0];

  return v4;
}

@end