@interface REFeatureTransformer
+ (id)binaryTransformerWithThreshold:(id)a3;
+ (id)bucketTransformerWithBitWidth:(unint64_t)a3;
+ (id)bucketTransformerWithCount:(unint64_t)a3 minValue:(id)a4 maxValue:(id)a5;
+ (id)changedTransformWithImpulseDuration:(double)a3;
+ (id)customCategoricalTransformerWithName:(id)a3 block:(id)a4;
+ (id)customCategoricalTransformerWithName:(id)a3 featureCount:(unint64_t)a4 transformation:(id)a5;
+ (id)customTransformerWithName:(id)a3 outputType:(unint64_t)a4 block:(id)a5;
+ (id)customTransformerWithName:(id)a3 outputType:(unint64_t)a4 featureCount:(unint64_t)a5 transformation:(id)a6;
+ (id)featureTransformerClasses;
+ (id)hashTransform;
+ (id)logTransformerWithBase:(id)a3;
+ (id)maskAndShiftTransformWithStartIndex:(unint64_t)a3 endIndex:(unint64_t)a4;
+ (id)maskTransformWithWidth:(unint64_t)a3;
+ (id)recentTransformerWithCount:(unint64_t)a3;
+ (id)roundTransformer;
- (REFeatureTransformer)init;
- (id)_invalidationQueue;
- (id)invalidationDelegate;
- (void)_invalidate;
- (void)_invalidationQueue_scheduleInvalidation:(id)a3;
- (void)_performAndScheduleTimer;
- (void)configureWithInvocation:(id)a3;
- (void)invalidateWithContext:(id)a3;
- (void)setInvalidationDelegate:(id)a3;
@end

@implementation REFeatureTransformer

+ (id)featureTransformerClasses
{
  if (featureTransformerClasses_onceToken != -1)
  {
    +[REFeatureTransformer featureTransformerClasses];
  }

  v3 = featureTransformerClasses_Classes;

  return v3;
}

void __49__REFeatureTransformer_featureTransformerClasses__block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];
  v1 = featureTransformerClasses_Classes;
  featureTransformerClasses_Classes = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)bucketTransformerWithCount:(unint64_t)a3 minValue:(id)a4 maxValue:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v14 = RECreateIntegerFeatureValueTaggedPointer(a3);
  v15 = RECreateFeatureValueTaggedPointer(v7);
  v16 = RECreateFeatureValueTaggedPointer(v8);
  v9 = [RETransformerInvocation invocationWithArguments:&v14 count:3];
  for (i = 0; i != 24; i += 8)
  {
    REReleaseFeatureValueTaggedPointer(*(&v14 + i));
  }

  v11 = objc_alloc_init(_REBucketFeatureTransformer);
  [(_REBucketFeatureTransformer *)v11 configureWithInvocation:v9, v14, v15];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)bucketTransformerWithBitWidth:(unint64_t)a3
{
  v3 = a3;
  v5 = [REFeatureValue featureValueWithDouble:0.0];
  v6 = [REFeatureValue featureValueWithDouble:1.0];
  v7 = [a1 bucketTransformerWithCount:1 << v3 minValue:v5 maxValue:v6];

  return v7;
}

+ (id)logTransformerWithBase:(id)a3
{
  v3 = a3;
  v4 = [[_RELogFeatureTransformer alloc] initWithBase:v3];

  return v4;
}

+ (id)binaryTransformerWithThreshold:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = RECreateFeatureValueTaggedPointer(a3);
  v3 = [RETransformerInvocation invocationWithArguments:v7 count:1];
  REReleaseFeatureValueTaggedPointer(v7[0]);
  v4 = objc_alloc_init(_REBinaryFeatureTransformer);
  [(_REBinaryFeatureTransformer *)v4 configureWithInvocation:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)roundTransformer
{
  v2 = objc_alloc_init(_RERoundFeatureTransformer);

  return v2;
}

+ (id)hashTransform
{
  v2 = objc_alloc_init(_REHashFeatureTransformer);

  return v2;
}

+ (id)maskTransformWithWidth:(unint64_t)a3
{
  v3 = [[_REWidthFeatureTransformer alloc] initWithWidth:a3 shift:0];

  return v3;
}

+ (id)changedTransformWithImpulseDuration:(double)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = RECreateDoubleFeatureValueTaggedPointer();
  v3 = [RETransformerInvocation invocationWithArguments:v7 count:1];
  REReleaseFeatureValueTaggedPointer(v7[0]);
  v4 = objc_alloc_init(_REChangeFeatureTransformer);
  [(_REChangeFeatureTransformer *)v4 configureWithInvocation:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)maskAndShiftTransformWithStartIndex:(unint64_t)a3 endIndex:(unint64_t)a4
{
  v5 = a4 - a3;
  if (a4 < a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"End index %lu must come after start index %lu", a4, a3}];
  }

  v6 = [[_REWidthFeatureTransformer alloc] initWithWidth:v5 + 1 shift:a3];

  return v6;
}

+ (id)recentTransformerWithCount:(unint64_t)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = RECreateIntegerFeatureValueTaggedPointer(a3);
  v3 = [RETransformerInvocation invocationWithArguments:v7 count:1];
  REReleaseFeatureValueTaggedPointer(v7[0]);
  v4 = objc_alloc_init(_RERecentFeatureTransformer);
  [(_RERecentFeatureTransformer *)v4 configureWithInvocation:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)customCategoricalTransformerWithName:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__REFeatureTransformer_customCategoricalTransformerWithName_block___block_invoke;
    v10[3] = &unk_2785FC3A8;
    v11 = v6;
    v8 = [a1 customTransformerWithName:a3 outputType:1 block:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

REFeatureValue *__67__REFeatureTransformer_customCategoricalTransformerWithName_block___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return [REFeatureValue featureValueWithInt64:v1];
}

+ (id)customCategoricalTransformerWithName:(id)a3 featureCount:(unint64_t)a4 transformation:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__REFeatureTransformer_customCategoricalTransformerWithName_featureCount_transformation___block_invoke;
    v12[3] = &unk_2785FC3D0;
    v13 = v8;
    v10 = [a1 customTransformerWithName:a3 outputType:1 featureCount:a4 transformation:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

REFeatureValue *__89__REFeatureTransformer_customCategoricalTransformerWithName_featureCount_transformation___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return [REFeatureValue featureValueWithInt64:v1];
}

+ (id)customTransformerWithName:(id)a3 outputType:(unint64_t)a4 block:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__REFeatureTransformer_customTransformerWithName_outputType_block___block_invoke;
    v12[3] = &unk_2785FC3D0;
    v13 = v8;
    v10 = [a1 customTransformerWithName:a3 outputType:a4 featureCount:1 transformation:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __67__REFeatureTransformer_customTransformerWithName_outputType_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

+ (id)customTransformerWithName:(id)a3 outputType:(unint64_t)a4 featureCount:(unint64_t)a5 transformation:(id)a6
{
  if (a6)
  {
    v9 = a6;
    v10 = a3;
    v11 = [[_REBlockFeatureTransformer alloc] initWithFeatureCount:a5 outputFeatureType:a4 transformation:v9];

    [(REFeatureTransformer *)v11 setName:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (REFeatureTransformer)init
{
  v6.receiver = self;
  v6.super_class = REFeatureTransformer;
  v2 = [(REFeatureTransformer *)&v6 init];
  if (v2 && [objc_opt_class() supportsInvalidation])
  {
    v3 = [[REPriorityQueue alloc] initWithComparator:&__block_literal_global_572];
    scheduledUpdates = v2->_scheduledUpdates;
    v2->_scheduledUpdates = v3;
  }

  return v2;
}

- (void)configureWithInvocation:(id)a3
{
  if ([a3 numberOfArguments])
  {
    v9 = *MEMORY[0x277CBE660];

    RERaiseInternalException(v9, @"Expected no arguments with invoaction", v3, v4, v5, v6, v7, v8, v11);
  }
}

- (id)_invalidationQueue
{
  if (_invalidationQueue_onceToken != -1)
  {
    [REFeatureTransformer _invalidationQueue];
  }

  v3 = _invalidationQueue_Queue;

  return v3;
}

void __42__REFeatureTransformer__invalidationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.REFeatureTransformer.Invalidation", v2);
  v1 = _invalidationQueue_Queue;
  _invalidationQueue_Queue = v0;
}

- (void)setInvalidationDelegate:(id)a3
{
  obj = a3;
  if ([objc_opt_class() supportsInvalidation])
  {
    objc_storeWeak(&self->_invalidationDelegate, obj);
  }
}

- (id)invalidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_invalidationDelegate);

  return WeakRetained;
}

- (void)invalidateWithContext:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() supportsInvalidation])
  {
    v5 = [(REFeatureTransformer *)self _invalidationQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__REFeatureTransformer_invalidateWithContext___block_invoke;
    v6[3] = &unk_2785F9AE0;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

void __46__REFeatureTransformer_invalidateWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) invalidationDate];
  v3 = *(a1 + 40);
  v4 = v2;
  if (v2)
  {
    [v3 _invalidationQueue_scheduleInvalidation:v2];
  }

  else
  {
    [v3 _invalidate];
  }
}

- (void)_invalidationQueue_scheduleInvalidation:(id)a3
{
  v4 = a3;
  if (![(REPriorityQueue *)self->_scheduledUpdates containsObject:?])
  {
    [(REPriorityQueue *)self->_scheduledUpdates insertObject:v4];
  }

  [(REFeatureTransformer *)self _performAndScheduleTimer];
}

- (void)_performAndScheduleTimer
{
  v3 = [(REFeatureTransformer *)self _invalidationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(REPriorityQueue *)self->_scheduledUpdates minimumObject];
  if (v5)
  {
    do
    {
      if ([v5 compare:v4] == 1)
      {
        break;
      }

      [(REFeatureTransformer *)self _invalidate];
      [(REPriorityQueue *)self->_scheduledUpdates removeMinimumObject];
      v6 = [(REPriorityQueue *)self->_scheduledUpdates minimumObject];

      v5 = v6;
    }

    while (v6);
  }

  if ([(REPriorityQueue *)self->_scheduledUpdates count])
  {
    v7 = [(REPriorityQueue *)self->_scheduledUpdates minimumObject];
    objc_initWeak(&location, self);
    v8 = [(REFeatureTransformer *)self _invalidationQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__REFeatureTransformer__performAndScheduleTimer__block_invoke;
    v12[3] = &unk_2785F9B58;
    objc_copyWeak(&v13, &location);
    v9 = [REUpNextTimer timerWithFireDate:v7 queue:v8 block:v12];
    updateTimer = self->_updateTimer;
    self->_updateTimer = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    [(REUpNextTimer *)self->_updateTimer invalidate];
    v11 = self->_updateTimer;
    self->_updateTimer = 0;
  }
}

void __48__REFeatureTransformer__performAndScheduleTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performAndScheduleTimer];
}

- (void)_invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_invalidationDelegate);
  [WeakRetained featureTransformerDidInvalidate:self];
}

@end