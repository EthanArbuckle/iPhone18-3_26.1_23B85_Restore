@interface PCRuntimeParameters
+ (int64_t)contextPrefetchLimit;
+ (void)rateLimitRequestsInFeed:(float)a3 inArticle:(float)a4 betweenArticle:(float)a5 videoInArticle:(float)a6 nativeInFeed:(float)a7 nativeInArticle:(float)a8;
@end

@implementation PCRuntimeParameters

+ (int64_t)contextPrefetchLimit
{
  if (qword_280C4F9D0 >= 0)
  {
    return qword_280C4F9D0;
  }

  else
  {
    return 3;
  }
}

+ (void)rateLimitRequestsInFeed:(float)a3 inArticle:(float)a4 betweenArticle:(float)a5 videoInArticle:(float)a6 nativeInFeed:(float)a7 nativeInArticle:(float)a8
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = *MEMORY[0x277CE4B00];
  v13 = sub_260F1E864(a3);
  v30 = v13;
  v25 = *MEMORY[0x277CE4AF8];
  v14 = sub_260F1E864(a4);
  v31 = v14;
  v26 = *MEMORY[0x277CE4AF0];
  v15 = sub_260F1E864(a5);
  v32 = v15;
  v27 = *MEMORY[0x277CE4B18];
  v16 = sub_260F1E864(a6);
  v33 = v16;
  v28 = *MEMORY[0x277CE4B10];
  v17 = sub_260F1E864(a7);
  v34 = v17;
  v29 = *MEMORY[0x277CE4B08];
  v18 = sub_260F1E864(a8);
  v35 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v24 count:6];

  v20 = objc_alloc([MEMORY[0x277CE4AE8] metricClass]);
  v21 = [v20 initWithPurpose:-1 metric:77000 contentIdentifier:0 contextIdentifier:0 handle:0 secondaryHandle:0 branch:0 properties:v19 internalProperties:0 relayData:0 environment:0 order:0 options:{0, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34}];
  v22 = [objc_msgSend(MEMORY[0x277CE4AE8] "daemonDeliveryClass")];
  [v22 receivedMetric:v21];

  v23 = *MEMORY[0x277D85DE8];
}

@end