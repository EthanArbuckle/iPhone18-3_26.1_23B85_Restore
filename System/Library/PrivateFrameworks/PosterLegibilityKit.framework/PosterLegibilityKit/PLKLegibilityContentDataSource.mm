@interface PLKLegibilityContentDataSource
+ (id)attributedStringContentDataSource;
+ (id)attributedStringContentDataSourceForScale:(double)scale metricsProvider:(id)provider;
- (PLKLegibilityContentDataSource)initWithContentGenerator:(id)generator legibilityGenerator:(id)legibilityGenerator;
- (id)legibilityContentForObject:(id)object legibilityDescriptor:(id)descriptor;
- (void)invalidate;
@end

@implementation PLKLegibilityContentDataSource

+ (id)attributedStringContentDataSource
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__PLKLegibilityContentDataSource_attributedStringContentDataSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (attributedStringContentDataSource_onceToken != -1)
  {
    dispatch_once(&attributedStringContentDataSource_onceToken, block);
  }

  v2 = attributedStringContentDataSource_attributedStringContentDataSource;

  return v2;
}

uint64_t __67__PLKLegibilityContentDataSource_attributedStringContentDataSource__block_invoke(uint64_t a1)
{
  attributedStringContentDataSource_attributedStringContentDataSource = [*(a1 + 32) attributedStringContentDataSourceForScale:0 metricsProvider:PLKDefaultScreenScale()];

  return MEMORY[0x2821F96F8]();
}

+ (id)attributedStringContentDataSourceForScale:(double)scale metricsProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    providerCopy = objc_opt_new();
  }

  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __92__PLKLegibilityContentDataSource_attributedStringContentDataSourceForScale_metricsProvider___block_invoke;
  v30[3] = &unk_27835B298;
  v31 = weakToStrongObjectsMapTable;
  v32 = providerCopy;
  v7 = providerCopy;
  v8 = weakToStrongObjectsMapTable;
  v9 = MEMORY[0x223D5FAC0](v30);
  v10 = [PLKImageRendererFormat formatForContextType:0 scale:scale];
  v11 = [PLKImageGenerator alloc];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__PLKLegibilityContentDataSource_attributedStringContentDataSourceForScale_metricsProvider___block_invoke_2;
  v27[3] = &unk_27835B2C0;
  v12 = v9;
  v29 = v12;
  v13 = v10;
  v28 = v13;
  v14 = [(PLKImageGenerator *)v11 initWithImageGenerator:v27];
  v15 = [PLKImageRendererFormat formatForContextType:4 scale:scale];
  v16 = [PLKImageGenerator alloc];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __92__PLKLegibilityContentDataSource_attributedStringContentDataSourceForScale_metricsProvider___block_invoke_3;
  v23[3] = &unk_27835B2E8;
  v25 = v15;
  v26 = v12;
  v24 = v13;
  v17 = v15;
  v18 = v13;
  v19 = v12;
  v20 = [(PLKImageGenerator *)v16 initWithImageGenerator:v23];
  v21 = [[PLKLegibilityContentDataSource alloc] initWithContentGenerator:v14 legibilityGenerator:v20];

  return v21;
}

double __92__PLKLegibilityContentDataSource_attributedStringContentDataSourceForScale_metricsProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = [*(a1 + 32) objectForKey:v3];
  if (!v5)
  {
    [*(a1 + 40) plk_boundingRectForObject:v3 maxSize:{1.79769313e308, 1.79769313e308}];
    v5 = [MEMORY[0x277CCAE60] valueWithCGRect:?];
    [*(a1 + 32) setObject:v5 forKey:v3];
  }

  [v5 CGRectValue];
  v7 = v6;

  objc_sync_exit(v4);
  return v7;
}

id __92__PLKLegibilityContentDataSource_attributedStringContentDataSourceForScale_metricsProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v8 = [(UIGraphicsImageRenderer *)[PLKImageRenderer alloc] initWithSize:*(a1 + 32) format:v6, v7];
  v9 = [(PLKImageRenderer *)v8 imageWithRenderable:v5];

  return v9;
}

id __92__PLKLegibilityContentDataSource_attributedStringContentDataSourceForScale_metricsProvider___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5, v8);
  v10 = v9;
  v12 = v11;
  v13 = [(UIGraphicsImageRenderer *)[PLKImageRenderer alloc] initWithSize:a1[4] format:v9, v11];
  v14 = [(PLKImageRenderer *)v13 imageWithRenderable:v8];

  v15 = [v7 background];
  [v15 sizeForContentSize:{v10, v12}];
  v17 = v16;
  v19 = v18;

  v20 = [(UIGraphicsImageRenderer *)[PLKLegibilityImageRenderer alloc] initWithSize:a1[5] format:v17, v19];
  v21 = [(PLKLegibilityImageRenderer *)v20 renderLegibilityImageForImage:v14 legibilityDescriptor:v7];

  return v21;
}

- (PLKLegibilityContentDataSource)initWithContentGenerator:(id)generator legibilityGenerator:(id)legibilityGenerator
{
  v22 = *MEMORY[0x277D85DE8];
  generatorCopy = generator;
  legibilityGeneratorCopy = legibilityGenerator;
  if (!generatorCopy)
  {
    [PLKLegibilityContentDataSource initWithContentGenerator:a2 legibilityGenerator:self];
  }

  v10 = legibilityGeneratorCopy;
  v17.receiver = self;
  v17.super_class = PLKLegibilityContentDataSource;
  v11 = [(PLKLegibilityContentDataSource *)&v17 init];
  if (v11)
  {
    v12 = PLKLogRendering();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543618;
      v19 = v14;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_21E5D5000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p initWithContentGenerator:legibilityGenerator:>", buf, 0x16u);
    }

    objc_storeStrong(&v11->_contentGenerator, generator);
    objc_storeStrong(&v11->_legibilityGenerator, legibilityGenerator);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)legibilityContentForObject:(id)object legibilityDescriptor:(id)descriptor
{
  v46 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  descriptorCopy = descriptor;
  if (objectCopy && ![(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v9 = PLKLogRendering();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

    if (v10)
    {
      v11 = PLKLogRendering();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544130;
        v39 = v27;
        v40 = 2048;
        selfCopy = self;
        v42 = 2112;
        v43 = objectCopy;
        v44 = 2048;
        v45 = descriptorCopy;
        _os_log_debug_impl(&dword_21E5D5000, v11, OS_LOG_TYPE_DEBUG, "<%{public}@:%p legibilityContentForObject:%@ legibilityDescriptor:%p>", buf, 0x2Au);
      }
    }

    legibilityGenerator = [(PLKLegibilityContentDataSource *)self legibilityGenerator];
    v13 = _os_activity_create(&dword_21E5D5000, "<PLKLegibilityContentDataSource legibilityContentForObject:legibilityDescriptor:>", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = [MEMORY[0x277D3EC38] activityWrapping:v13];

    track = [v14 track];

    contentGenerator = [(PLKLegibilityContentDataSource *)self contentGenerator];
    v17 = [contentGenerator imageFutureForObject:objectCopy context:descriptorCopy];

    if (!legibilityGenerator || ([legibilityGenerator imageFutureForObject:objectCopy context:descriptorCopy], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __82__PLKLegibilityContentDataSource_legibilityContentForObject_legibilityDescriptor___block_invoke;
      v33[3] = &unk_27835B338;
      v34 = legibilityGenerator;
      v35 = objectCopy;
      v36 = descriptorCopy;
      v18 = [v17 flatMap:v33];
    }

    v19 = MEMORY[0x277D3EC50];
    v37[0] = v17;
    v37[1] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v21 = [v19 join:v20];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __82__PLKLegibilityContentDataSource_legibilityContentForObject_legibilityDescriptor___block_invoke_3;
    v31 = &unk_27835B360;
    v32 = track;
    v22 = track;
    [v21 addCompletionBlock:&v28];

    v23 = [PLKLegibilityContent alloc];
    v8 = [(PLKLegibilityContent *)v23 initWithContentImageFuture:v17 legibilityImageFuture:v18 legibilityDescriptor:descriptorCopy, v28, v29, v30, v31];
    [(PLKLegibilityContent *)v8 setContent:objectCopy];
    [(PLKLegibilityContent *)v8 setDataSource:self];
  }

  else
  {
    v8 = +[PLKLegibilityContent noContent];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

id __82__PLKLegibilityContentDataSource_legibilityContentForObject_legibilityDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 imageFutureForObject:*(a1 + 40) context:*(a1 + 48)];
  }

  else
  {
    v6 = MEMORY[0x277D3EC50];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__PLKLegibilityContentDataSource_legibilityContentForObject_legibilityDescriptor___block_invoke_2;
    v8[3] = &unk_27835B310;
    v9 = v3;
    v10 = *(a1 + 48);
    v5 = [v6 futureWithBlock:v8];
  }

  return v5;
}

id __82__PLKLegibilityContentDataSource_legibilityContentForObject_legibilityDescriptor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) size];
  v3 = v2;
  v5 = v4;
  [*(a1 + 32) scale];
  v6 = [PLKImageRendererFormat formatForContextType:4 scale:?];
  v7 = [*(a1 + 40) background];
  [v7 sizeForContentSize:{v3, v5}];
  v9 = v8;
  v11 = v10;

  v12 = [(UIGraphicsImageRenderer *)[PLKLegibilityImageRenderer alloc] initWithSize:v6 format:v9, v11];
  v13 = [(PLKLegibilityImageRenderer *)v12 renderLegibilityImageForImage:*(a1 + 32) legibilityDescriptor:*(a1 + 40)];

  return v13;
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    v3 = PLKLogRendering();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v9 = 138543618;
      v10 = v5;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_21E5D5000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p invalidate>", &v9, 0x16u);
    }

    contentGenerator = self->_contentGenerator;
    self->_contentGenerator = 0;

    legibilityGenerator = self->_legibilityGenerator;
    self->_legibilityGenerator = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithContentGenerator:(const char *)a1 legibilityGenerator:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"contentGenerator"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PLKLegibilityContentDataSource.m";
    v16 = 1024;
    v17 = 103;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21E5D5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end