@interface WROpenIndividuatedSignpostInterval
- (void)initWithSignpost:(uint64_t)signpost individuationIdentifier:(uint64_t)identifier timestampAndThread:(uint64_t)thread;
@end

@implementation WROpenIndividuatedSignpostInterval

- (void)initWithSignpost:(uint64_t)signpost individuationIdentifier:(uint64_t)identifier timestampAndThread:(uint64_t)thread
{
  OUTLINED_FUNCTION_93();
  a18 = v19;
  a19 = v20;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v25;
  v30 = v24;
  v31 = v22;
  if (v28)
  {
    a9.receiver = v28;
    a9.super_class = WROpenIndividuatedSignpostInterval;
    v32 = objc_msgSendSuper2(&a9, sel_init);
    v33 = v32;
    if (v32)
    {
      objc_storeStrong(v32 + 1, v26);
      objc_storeStrong(v33 + 2, v24);
      objc_storeStrong(v33 + 3, v22);
    }
  }

  OUTLINED_FUNCTION_72();
}

@end