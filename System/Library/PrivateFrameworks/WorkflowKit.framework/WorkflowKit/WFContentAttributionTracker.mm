@interface WFContentAttributionTracker
- (WFContentAttributionTracker)init;
- (WFContentAttributionTracker)initWithAttributionSets:(id)sets;
- (WFContentAttributionTracker)initWithCoder:(id)coder;
- (id)attributionSetForParameter:(id)parameter;
- (id)trackedAttributionSet;
- (void)addAttributionSet:(id)set forParameter:(id)parameter;
- (void)encodeWithCoder:(id)coder;
- (void)replaceAttributionSet:(id)set forParameter:(id)parameter;
@end

@implementation WFContentAttributionTracker

- (WFContentAttributionTracker)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"attributionSets"];

  v11 = [(WFContentAttributionTracker *)self initWithAttributionSets:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  attributionSets = [(WFContentAttributionTracker *)self attributionSets];
  [coderCopy encodeObject:attributionSets forKey:@"attributionSets"];
}

- (id)trackedAttributionSet
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__49953;
  v13 = __Block_byref_object_dispose__49954;
  v14 = [MEMORY[0x1E695DFA8] set];
  trackingAttributionSetQueue = [(WFContentAttributionTracker *)self trackingAttributionSetQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__WFContentAttributionTracker_trackedAttributionSet__block_invoke;
  v8[3] = &unk_1E837F898;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(trackingAttributionSetQueue, v8);

  v4 = MEMORY[0x1E6996D38];
  allObjects = [v10[5] allObjects];
  v6 = [v4 attributionSetByMergingAttributionSets:allObjects];

  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __52__WFContentAttributionTracker_trackedAttributionSet__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__WFContentAttributionTracker_trackedAttributionSet__block_invoke_2;
  v3[3] = &unk_1E837B4E0;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

- (id)attributionSetForParameter:(id)parameter
{
  parameterCopy = parameter;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__49953;
  v20 = __Block_byref_object_dispose__49954;
  v21 = 0;
  trackingAttributionSetQueue = [(WFContentAttributionTracker *)self trackingAttributionSetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__WFContentAttributionTracker_attributionSetForParameter___block_invoke;
  block[3] = &unk_1E837C4B0;
  v15 = &v16;
  block[4] = self;
  v6 = parameterCopy;
  v14 = v6;
  dispatch_sync(trackingAttributionSetQueue, block);

  v7 = MEMORY[0x1E6996D38];
  allObjects = [v17[5] allObjects];
  v9 = allObjects;
  if (allObjects)
  {
    v10 = allObjects;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = [v7 attributionSetByMergingAttributionSets:v10];

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __58__WFContentAttributionTracker_attributionSetForParameter___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6 = [*(a1 + 40) key];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)replaceAttributionSet:(id)set forParameter:(id)parameter
{
  setCopy = set;
  parameterCopy = parameter;
  v9 = parameterCopy;
  if (!setCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentAttributionTracker.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"contentAttributionSet"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFContentAttributionTracker.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];

    goto LABEL_3;
  }

  if (!parameterCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  trackingAttributionSetQueue = [(WFContentAttributionTracker *)self trackingAttributionSetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__WFContentAttributionTracker_replaceAttributionSet_forParameter___block_invoke;
  block[3] = &unk_1E837C1E8;
  block[4] = self;
  v16 = v9;
  v17 = setCopy;
  v11 = setCopy;
  v12 = v9;
  dispatch_sync(trackingAttributionSetQueue, block);
}

void __66__WFContentAttributionTracker_replaceAttributionSet_forParameter___block_invoke(void *a1)
{
  v5 = [MEMORY[0x1E695DFA8] setWithObject:a1[6]];
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = [v2 key];
  [v3 setObject:v5 forKeyedSubscript:v4];
}

- (void)addAttributionSet:(id)set forParameter:(id)parameter
{
  setCopy = set;
  parameterCopy = parameter;
  if (!setCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentAttributionTracker.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"contentAttributionSet"}];
  }

  trackingAttributionSetQueue = [(WFContentAttributionTracker *)self trackingAttributionSetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WFContentAttributionTracker_addAttributionSet_forParameter___block_invoke;
  block[3] = &unk_1E837C1E8;
  block[4] = self;
  v14 = parameterCopy;
  v15 = setCopy;
  v10 = setCopy;
  v11 = parameterCopy;
  dispatch_sync(trackingAttributionSetQueue, block);
}

void __62__WFContentAttributionTracker_addAttributionSet_forParameter___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) key];
  v8 = [v2 objectForKeyedSubscript:v3];

  if (v8)
  {
    [v8 addObject:*(a1 + 48)];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFA8] setWithObject:*(a1 + 48)];
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 8);
    v7 = [v5 key];
    [v6 setObject:v4 forKeyedSubscript:v7];
  }
}

- (WFContentAttributionTracker)initWithAttributionSets:(id)sets
{
  setsCopy = sets;
  v12.receiver = self;
  v12.super_class = WFContentAttributionTracker;
  v6 = [(WFContentAttributionTracker *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributionSets, sets);
    v8 = dispatch_queue_create("com.apple.Shortcuts.ContentAttributionSetTrackingQueue", 0);
    trackingAttributionSetQueue = v7->_trackingAttributionSetQueue;
    v7->_trackingAttributionSetQueue = v8;

    v10 = v7;
  }

  return v7;
}

- (WFContentAttributionTracker)init
{
  v3 = objc_opt_new();
  v4 = [(WFContentAttributionTracker *)self initWithAttributionSets:v3];

  return v4;
}

@end