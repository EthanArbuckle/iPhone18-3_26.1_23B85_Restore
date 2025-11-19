@interface PLKLegibilityContent
+ (PLKLegibilityContent)noContent;
+ (id)buildLegibilityImageGenerator;
+ (id)defaultLegibilityImageGenerator;
+ (id)labelLegibilityImageGenerator;
+ (id)legibilityContentForAttributedString:(id)a3 legibilityDescriptor:(id)a4;
+ (id)legibilityContentForImage:(id)a3 legibilityDescriptor:(id)a4;
+ (id)legibilityContentForImage:(id)a3 legibilityDescriptor:(id)a4 renderer:(id)a5;
+ (id)legibilityContentForLabel:(id)a3 legibilityDescriptor:(id)a4 context:(id)a5 renderer:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLegibilityContent:(id)a3;
- (PLKLegibilityContent)initWithContentImage:(id)a3 legibilityDescriptor:(id)a4;
- (PLKLegibilityContent)initWithContentImage:(id)a3 legibilityDescriptor:(id)a4 renderer:(id)a5;
- (PLKLegibilityContent)initWithContentImageFuture:(id)a3 legibilityDescriptor:(id)a4;
- (PLKLegibilityContent)initWithContentImageFuture:(id)a3 legibilityDescriptor:(id)a4 renderer:(id)a5;
- (PLKLegibilityContent)initWithContentImageFuture:(id)a3 legibilityImageFuture:(id)a4 legibilityDescriptor:(id)a5;
- (PLKLegibilityContentDataSource)dataSource;
- (void)dealloc;
@end

@implementation PLKLegibilityContent

- (void)dealloc
{
  [(PLKLegibilityContent *)self cancel];
  v3.receiver = self;
  v3.super_class = PLKLegibilityContent;
  [(PLKLegibilityContent *)&v3 dealloc];
}

+ (id)defaultLegibilityImageGenerator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PLKLegibilityContent_defaultLegibilityImageGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultLegibilityImageGenerator_onceToken != -1)
  {
    dispatch_once(&defaultLegibilityImageGenerator_onceToken, block);
  }

  v2 = defaultLegibilityImageGenerator_defaultLegibilityImageGenerator;

  return v2;
}

uint64_t __55__PLKLegibilityContent_defaultLegibilityImageGenerator__block_invoke(uint64_t a1)
{
  defaultLegibilityImageGenerator_defaultLegibilityImageGenerator = [*(a1 + 32) buildLegibilityImageGenerator];

  return MEMORY[0x2821F96F8]();
}

+ (id)buildLegibilityImageGenerator
{
  v2 = [[PLKImageGenerator alloc] initWithImageGenerator:&__block_literal_global_3];

  return v2;
}

id __53__PLKLegibilityContent_buildLegibilityImageGenerator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 size];
  v7 = v6;
  v9 = v8;
  v10 = [v5 plk_alphaMaskImage];

  v11 = [PLKImageRendererFormat formatForContextType:4];
  v12 = [v4 background];
  v13 = [PLKLegibilityImageRenderer alloc];
  v14 = [v4 background];

  [v14 sizeForContentSize:{v7, v9}];
  v15 = [(UIGraphicsImageRenderer *)v13 initWithSize:v11 format:?];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__PLKLegibilityContent_buildLegibilityImageGenerator__block_invoke_2;
  v19[3] = &unk_27835B6C8;
  v20 = v12;
  v16 = v12;
  v17 = [(PLKLegibilityImageRenderer *)v15 renderLegibilityImageDecoratingImage:v10 actions:v19];

  return v17;
}

+ (id)legibilityContentForAttributedString:(id)a3 legibilityDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PLKLegibilityContentDataSource attributedStringContentDataSource];
  v8 = [v7 legibilityContentForObject:v6 legibilityDescriptor:v5];

  return v8;
}

+ (id)legibilityContentForImage:(id)a3 legibilityDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  v8 = [MEMORY[0x277D3EC50] futureWithResult:v6];

  v9 = [v7 initWithContentImageFuture:v8 legibilityDescriptor:v5];

  return v9;
}

+ (id)legibilityContentForImage:(id)a3 legibilityDescriptor:(id)a4 renderer:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc(objc_opt_class());
  v11 = [MEMORY[0x277D3EC50] futureWithResult:v9];

  v12 = [v10 initWithContentImageFuture:v11 legibilityDescriptor:v8 renderer:v7];

  return v12;
}

+ (PLKLegibilityContent)noContent
{
  if (noContent_onceToken != -1)
  {
    +[PLKLegibilityContent noContent];
  }

  v3 = noContent_noContent;

  return v3;
}

void __33__PLKLegibilityContent_noContent__block_invoke()
{
  v0 = [PLKLegibilityContent alloc];
  v5 = [MEMORY[0x277D3EC50] cancelledFuture];
  v1 = [MEMORY[0x277D3EC50] cancelledFuture];
  v2 = +[PLKLegibilityDescriptor defaultLegibilityDescriptor];
  v3 = [(PLKLegibilityContent *)v0 initWithContentImageFuture:v5 legibilityImageFuture:v1 legibilityDescriptor:v2];
  v4 = noContent_noContent;
  noContent_noContent = v3;
}

+ (id)labelLegibilityImageGenerator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PLKLegibilityContent_labelLegibilityImageGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (labelLegibilityImageGenerator_onceToken != -1)
  {
    dispatch_once(&labelLegibilityImageGenerator_onceToken, block);
  }

  v2 = labelLegibilityImageGenerator_labelLegibilityImageGenerator;

  return v2;
}

void __53__PLKLegibilityContent_labelLegibilityImageGenerator__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) buildLegibilityImageGenerator];
  v2 = labelLegibilityImageGenerator_labelLegibilityImageGenerator;
  labelLegibilityImageGenerator_labelLegibilityImageGenerator = v1;

  v3 = labelLegibilityImageGenerator_labelLegibilityImageGenerator;
  v4 = [MEMORY[0x277D3EC60] inlineScheduler];
  [v3 setWorkScheduler:v4];
}

+ (id)legibilityContentForLabel:(id)a3 legibilityDescriptor:(id)a4 context:(id)a5 renderer:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (!v9)
  {
    goto LABEL_11;
  }

  if (!v12)
  {
    v13 = [objc_opt_class() labelLegibilityImageGenerator];
  }

  if (legibilityContentForLabel_legibilityDescriptor_context_renderer__onceToken == -1)
  {
    if (v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  +[PLKLegibilityContent legibilityContentForLabel:legibilityDescriptor:context:renderer:];
  if (!v11)
  {
LABEL_6:
    v11 = +[PLKLegibilityContext defaultContext];
  }

LABEL_7:
  BSDispatchQueueAssertMain();
  if (!v10)
  {
LABEL_11:
    v16 = +[PLKLegibilityContent noContent];
    goto LABEL_23;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [_PLKUILabelCacheKey cacheKeyForLabel:v9];
  if (v15 && ![legibilityContentForLabel_legibilityDescriptor_context_renderer__activelyRenderingLabels containsObject:v15])
  {
    v43 = v14;
    [legibilityContentForLabel_legibilityDescriptor_context_renderer__activelyRenderingLabels addObject:v15];
    v17 = PLKLogLabel();
    v18 = v17;
    v19 = legibilityContentForLabel_legibilityDescriptor_context_renderer__signpostID;
    if ((legibilityContentForLabel_legibilityDescriptor_context_renderer__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21E5D5000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PLK:legibilityContentForLabel:legibilityDescriptor:renderer:", &unk_21E5F550D, buf, 2u);
    }

    v20 = [v15 stringKey];
    v21 = [v15 stringKey];
    v22 = [v21 stringByAppendingString:@"-legibility"];

    [v9 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [v11 displayScale];
    v32 = v31;
    *buf = 0;
    v59 = buf;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__0;
    v62 = __Block_byref_object_dispose__0;
    v63 = 0;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __88__PLKLegibilityContent_legibilityContentForLabel_legibilityDescriptor_context_renderer___block_invoke_18;
    v46[3] = &unk_27835B840;
    v52 = buf;
    v47 = v11;
    v40 = v20;
    v48 = v40;
    v53 = v24;
    v54 = v26;
    v55 = v28;
    v56 = v30;
    v57 = v32;
    v49 = v9;
    v50 = v13;
    v33 = v10;
    v51 = v33;
    v42 = v22;
    v44 = [v47 imageForKey:v22 generatingIfNil:v46];
    if (*(v59 + 5))
    {
      [MEMORY[0x277D3EC50] futureWithResult:v40];
    }

    else
    {
      [MEMORY[0x277D3EC50] cancelledFuture];
    }
    v34 = ;
    v35 = [MEMORY[0x277D3EC50] futureWithResult:v44];
    v16 = [objc_alloc(objc_opt_class()) initWithContentImageFuture:v34 legibilityImageFuture:v35 legibilityDescriptor:v33];
    v36 = PLKLogLabel();
    v37 = v36;
    v38 = legibilityContentForLabel_legibilityDescriptor_context_renderer__signpostID;
    if ((legibilityContentForLabel_legibilityDescriptor_context_renderer__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *v45 = 0;
      _os_signpost_emit_with_name_impl(&dword_21E5D5000, v37, OS_SIGNPOST_INTERVAL_END, v38, "PLK:legibilityContentForLabel:legibilityDescriptor:renderer:", &unk_21E5F550D, v45, 2u);
    }

    [v16 setContent:v15];
    [legibilityContentForLabel_legibilityDescriptor_context_renderer__activelyRenderingLabels removeObject:v15];

    _Block_object_dispose(buf, 8);
    v14 = v43;
  }

  else
  {
    v16 = +[PLKLegibilityContent noContent];
  }

  objc_autoreleasePoolPop(v14);
LABEL_23:

  return v16;
}

void __88__PLKLegibilityContent_legibilityContentForLabel_legibilityDescriptor_context_renderer___block_invoke()
{
  v0 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v1 = legibilityContentForLabel_legibilityDescriptor_context_renderer__activelyRenderingLabels;
  legibilityContentForLabel_legibilityDescriptor_context_renderer__activelyRenderingLabels = v0;

  v2 = PLKLogLabel();
  legibilityContentForLabel_legibilityDescriptor_context_renderer__signpostID = os_signpost_id_generate(v2);
}

id __88__PLKLegibilityContent_legibilityContentForLabel_legibilityDescriptor_context_renderer___block_invoke_18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v4 = *(a1 + 96);
  v15 = *(a1 + 80);
  v12 = __88__PLKLegibilityContent_legibilityContentForLabel_legibilityDescriptor_context_renderer___block_invoke_2;
  v13 = &unk_27835B818;
  v16 = v4;
  v17 = *(a1 + 112);
  v14 = *(a1 + 48);
  v5 = [v2 imageForKey:v3 generatingIfNil:&v10];
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 56) imageForObject:*(*(*(a1 + 72) + 8) + 40) context:{*(a1 + 64), v10, v11, v12, v13}];

  return v8;
}

id __88__PLKLegibilityContent_legibilityContentForLabel_legibilityDescriptor_context_renderer___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D755B8];
  v3 = *(a1 + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__PLKLegibilityContent_legibilityContentForLabel_legibilityDescriptor_context_renderer___block_invoke_3;
  v7[3] = &unk_27835B7F0;
  v8 = *(a1 + 32);
  v4 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = v4;
  v5 = [v2 plk_imageFromContextWithSize:4 scale:0 type:v7 pool:*(a1 + 56) drawing:{*(a1 + 64), v3}];

  return v5;
}

- (PLKLegibilityContent)initWithContentImageFuture:(id)a3 legibilityDescriptor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() defaultLegibilityImageGenerator];
  v9 = [(PLKLegibilityContent *)self initWithContentImageFuture:v7 legibilityDescriptor:v6 renderer:v8];

  return v9;
}

- (PLKLegibilityContent)initWithContentImageFuture:(id)a3 legibilityDescriptor:(id)a4 renderer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    [PLKLegibilityContent initWithContentImageFuture:a2 legibilityDescriptor:? renderer:?];
  }

  if (!v10)
  {
    [PLKLegibilityContent initWithContentImageFuture:a2 legibilityDescriptor:? renderer:?];
  }

  if (!v9)
  {
    [PLKLegibilityContent initWithContentImageFuture:a2 legibilityDescriptor:? renderer:?];
  }

  v12 = v11;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __81__PLKLegibilityContent_initWithContentImageFuture_legibilityDescriptor_renderer___block_invoke;
  v21 = &unk_27835B868;
  v22 = v11;
  v23 = v10;
  v13 = v10;
  v14 = v12;
  v15 = [v9 flatMap:&v18];
  v16 = [(PLKLegibilityContent *)self initWithContentImageFuture:v9 legibilityImageFuture:v15 legibilityDescriptor:v13, v18, v19, v20, v21];

  return v16;
}

- (PLKLegibilityContent)initWithContentImage:(id)a3 legibilityDescriptor:(id)a4
{
  v6 = MEMORY[0x277D3EC50];
  v7 = a4;
  v8 = [v6 futureWithResult:a3];
  v9 = [(PLKLegibilityContent *)self initWithContentImageFuture:v8 legibilityDescriptor:v7];

  return v9;
}

- (PLKLegibilityContent)initWithContentImage:(id)a3 legibilityDescriptor:(id)a4 renderer:(id)a5
{
  v8 = MEMORY[0x277D3EC50];
  v9 = a5;
  v10 = a4;
  v11 = [v8 futureWithResult:a3];
  v12 = [(PLKLegibilityContent *)self initWithContentImageFuture:v11 legibilityDescriptor:v10 renderer:v9];

  return v12;
}

- (PLKLegibilityContent)initWithContentImageFuture:(id)a3 legibilityImageFuture:(id)a4 legibilityDescriptor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PLKLegibilityContent;
  v12 = [(PLKLegibilityContent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_legibilityDescriptor, a5);
    objc_storeStrong(&v13->_contentImageFuture, a3);
    objc_storeStrong(&v13->_legibilityImageFuture, a4);
  }

  return v13;
}

- (BOOL)isEqualToLegibilityContent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (-[PLKLegibilityContent legibilityDescriptor](self, "legibilityDescriptor"), v6 = objc_claimAutoreleasedReturnValue(), -[PLKLegibilityContent legibilityDescriptor](v5, "legibilityDescriptor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqualToLegibilityDescriptor:v7], v7, v6, v8))
  {
    v9 = [(PLKLegibilityContent *)v5 content];
    v10 = [(PLKLegibilityContent *)self content];
    v11 = BSEqualObjects();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PLKLegibilityContent *)self isEqualToLegibilityContent:v4];
  }

  return v5;
}

- (PLKLegibilityContentDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)initWithContentImageFuture:(const char *)a1 legibilityDescriptor:renderer:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"contentImageFuture", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContentImageFuture:(const char *)a1 legibilityDescriptor:renderer:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"legibilityDescriptor", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContentImageFuture:(const char *)a1 legibilityDescriptor:renderer:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"renderer", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end