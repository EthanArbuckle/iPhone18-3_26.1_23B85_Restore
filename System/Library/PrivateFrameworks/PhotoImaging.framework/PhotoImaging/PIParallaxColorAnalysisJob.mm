@interface PIParallaxColorAnalysisJob
@end

@implementation PIParallaxColorAnalysisJob

uint64_t __40___PIParallaxColorAnalysisJob_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 imageHistogram];
  v6 = [v5 sampleCount];

  v7 = [v4 imageHistogram];

  v8 = [v7 sampleCount];
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

void __53___PIParallaxColorAnalysisJob__computeAllHistograms___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = 0;
  v5 = [v3 computeHistogramFromBuffer:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end