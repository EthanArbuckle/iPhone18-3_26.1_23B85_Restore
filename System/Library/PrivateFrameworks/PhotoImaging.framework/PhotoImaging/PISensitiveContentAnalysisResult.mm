@interface PISensitiveContentAnalysisResult
@end

@implementation PISensitiveContentAnalysisResult

void __48___PISensitiveContentAnalysisResult_description__block_invoke(uint64_t a1, void *a2, double a3)
{
  gotLoadHelper_x8__OBJC_CLASS___SCMLImageLabelCoder(a3);
  v6 = *(v5 + 1824);
  v8 = v7;
  v13 = a2;
  v9 = [v6 instance];
  v10 = [v9 decodeFromP1:v13];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v13;
  }

  v12 = v11;

  [*(a1 + 32) setObject:v8 forKeyedSubscript:v12];
}

@end