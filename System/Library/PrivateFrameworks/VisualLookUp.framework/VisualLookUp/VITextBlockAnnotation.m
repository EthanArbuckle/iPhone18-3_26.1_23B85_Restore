@interface VITextBlockAnnotation
+ (id)empty;
+ (id)textBlockWithAnnotations:(id)a3;
+ (id)textBlockWithDocumentObservations:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VITextBlockAnnotation)initWithTextAnnotations:(id)a3;
@end

@implementation VITextBlockAnnotation

- (VITextBlockAnnotation)initWithTextAnnotations:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VITextBlockAnnotation;
  v5 = [(VITextBlockAnnotation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    textAnnotations = v5->_textAnnotations;
    v5->_textAnnotations = v6;
  }

  return v5;
}

+ (id)empty
{
  v2 = [VITextBlockAnnotation alloc];
  v3 = [(VITextBlockAnnotation *)v2 initWithTextAnnotations:MEMORY[0x1E695E0F0]];

  return v3;
}

+ (id)textBlockWithAnnotations:(id)a3
{
  v3 = a3;
  v4 = [[VITextBlockAnnotation alloc] initWithTextAnnotations:v3];

  return v4;
}

+ (id)textBlockWithDocumentObservations:(id)a3
{
  v3 = VIFlatMapArray(a3, &__block_literal_global_4);
  v4 = [[VITextBlockAnnotation alloc] initWithTextAnnotations:v3];

  return v4;
}

id __59__VITextBlockAnnotation_textBlockWithDocumentObservations___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 blocksWithTypes:8 inRegion:{*MEMORY[0x1E69849B0], *(MEMORY[0x1E69849B0] + 8), *(MEMORY[0x1E69849B0] + 16), *(MEMORY[0x1E69849B0] + 24)}];
  v3 = VICompactMapArray(v2, &__block_literal_global_171);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v15 = v5;
  v16 = v3;
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  textAnnotations = self->_textAnnotations;
  v13 = [v11 textAnnotations];
  LOBYTE(textAnnotations) = VIObjectIsEqual(textAnnotations, v13);

  return textAnnotations;
}

@end