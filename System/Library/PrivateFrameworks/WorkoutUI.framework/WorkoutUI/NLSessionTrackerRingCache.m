@interface NLSessionTrackerRingCache
- (id)ringsViewForGoal:(id)a3 ringDiameter:(double)a4 ringThickness:(double)a5;
- (id)ringsViewForGoalType:(unint64_t)a3 ringDiameter:(double)a4 ringThickness:(double)a5;
- (void)prewarmMetalBackgroundObjectsWithCompletion:(id)a3;
@end

@implementation NLSessionTrackerRingCache

- (void)prewarmMetalBackgroundObjectsWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  _HKInitializeLogging();
  v13 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (prewarmMetalBackgroundObjectsWithCompletion__isPrewarmed)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    __os_log_helper_16_2_1_8_32(v15, v3);
    _os_log_impl(&dword_20C66F000, v13, v12, "[NLSessionTrackerRingCache] prewarmMetalBackgroundObjects called with isPrewarmed: %s", v15, 0xCu);
  }

  objc_storeStrong(&v13, 0);
  if (prewarmMetalBackgroundObjectsWithCompletion__isPrewarmed)
  {
    if (location[0])
    {
      (*(location[0] + 2))();
    }

    v11 = 1;
  }

  else
  {
    queue = dispatch_get_global_queue(33, 0);
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __73__NLSessionTrackerRingCache_prewarmMetalBackgroundObjectsWithCompletion___block_invoke;
    v9 = &unk_277DA79C8;
    v10 = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(queue, &v5);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v10, 0);
    v11 = 0;
  }

  objc_storeStrong(location, 0);
}

void __73__NLSessionTrackerRingCache_prewarmMetalBackgroundObjectsWithCompletion___block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  prewarmMetalBackgroundObjectsWithCompletion__isPrewarmed = 1;
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v34;
    __os_log_helper_16_0_0(v33);
    _os_log_impl(&dword_20C66F000, log, type, "[NLSessionTrackerRingCache] Prewarming metal background objects", v33, 2u);
  }

  objc_storeStrong(location, 0);
  v7 = MTLCreateSystemDefaultDevice();
  v32 = [v7 newCommandQueueWithMaxCommandBufferCount:?];
  MEMORY[0x277D82BD8](v7);
  v31 = [v32 commandBuffer];
  v30 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
  [v30 setUsage:4];
  v8 = [v32 device];
  v29 = [v8 newTextureWithDescriptor:v30];
  MEMORY[0x277D82BD8](v8);
  v28 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  v10 = [v28 colorAttachments];
  v9 = [v10 objectAtIndexedSubscript:?];
  [v9 setLoadAction:2];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MTLClearColorMake();
  *&v26 = v1;
  *(&v26 + 1) = v2;
  *&v27 = v3;
  *(&v27 + 1) = v4;
  v12 = [v28 colorAttachments];
  v11 = [v12 objectAtIndexedSubscript:0];
  v24 = v26;
  v25 = v27;
  [v11 setClearColor:{v26, v27}];
  MEMORY[0x277D82BD8](v11);
  v14 = [v28 colorAttachments];
  v13 = [v14 objectAtIndexedSubscript:0];
  [v13 setStoreAction:1];
  MEMORY[0x277D82BD8](v13);
  v16 = [v28 colorAttachments];
  v15 = [v16 objectAtIndexedSubscript:0];
  [v15 setTexture:v29];
  MEMORY[0x277D82BD8](v15);
  v23 = [v31 renderCommandEncoderWithDescriptor:{v28, MEMORY[0x277D82BD8](v16).n128_f64[0]}];
  [v23 endEncoding];
  [v31 commit];
  _HKInitializeLogging();
  v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v22;
    v6 = v21;
    __os_log_helper_16_0_0(v20);
    _os_log_impl(&dword_20C66F000, v5, v6, "[NLSessionTrackerRingCache] Finished prewarming metal background objects", v20, 2u);
  }

  objc_storeStrong(&v22, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
}

- (id)ringsViewForGoalType:(unint64_t)a3 ringDiameter:(double)a4 ringThickness:(double)a5
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = [objc_alloc(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:a3 value:?];
  v6 = [(NLSessionTrackerRingCache *)v12 ringsViewForGoal:v7 ringDiameter:v9 ringThickness:v8];
  objc_storeStrong(&v7, 0);

  return v6;
}

- (id)ringsViewForGoal:(id)a3 ringDiameter:(double)a4 ringThickness:(double)a5
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = a4;
  v25 = a5;
  v24 = MEMORY[0x277D82BE0](v28->_ringsView);
  if (!v24)
  {
    v23 = [objc_alloc(MEMORY[0x277CE8E90]) initWithNumberOfRings:1];
    [v23 setPercentage:0 ofRingAtIndex:0 animated:0.0];
    v16 = objc_alloc(MEMORY[0x277CE8EA8]);
    v15 = v23;
    v17 = [(NLSessionTrackerRingCache *)v28 ringsRenderer];
    v5 = [v16 initWithRingGroup:v15 renderer:?];
    v6 = v24;
    v24 = v5;
    MEMORY[0x277D82BD8](v6);
    v18 = [MEMORY[0x277D75348] blackColor];
    [v24 setBackgroundColor:?];
    *&v7 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    [v24 setUserInteractionEnabled:{0, v7}];
    objc_storeStrong(&v23, 0);
  }

  v22 = [v24 ringGroup];
  v8 = v26 - 1.0;
  *&v8 = v26 - 1.0;
  [v22 setGroupDiameter:v8];
  HIDWORD(v9) = HIDWORD(v25);
  *&v9 = v25;
  [v22 setThickness:v9];
  v21 = [MEMORY[0x277CE8E80] metricColorsForGoal:location[0]];
  v11 = v22;
  v13 = [v21 gradientDarkColor];
  v12 = [v21 gradientLightColor];
  [v11 setTopColor:v13 bottomColor:? ofRingAtIndex:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v14 = MEMORY[0x277D82BE0](v24);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);

  return v14;
}

@end