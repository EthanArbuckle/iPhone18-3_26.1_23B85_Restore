@interface VIExtractAnnotationFromDocument
@end

@implementation VIExtractAnnotationFromDocument

VITextAnnotation *___VIExtractAnnotationFromDocument_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [VITextAnnotation alloc];
  v4 = [v2 getTranscript];
  [v2 boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v2 confidence];
  v14 = v13;

  LODWORD(v15) = v14;
  v16 = [(VITextAnnotation *)v3 initWithText:v4 normalizedBoundingBox:v6 confidence:v8, v10, v12, v15];

  return v16;
}

@end