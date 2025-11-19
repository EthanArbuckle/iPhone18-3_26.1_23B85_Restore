@interface VKTextFrameProcessorConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTextFrameProcessorConfiguration:(id)a3;
- (BOOL)shouldPerformTextDetectionGating;
- (CGPoint)comparisonPoint;
- (VKTextFrameProcessorConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VKTextFrameProcessorConfiguration

- (VKTextFrameProcessorConfiguration)init
{
  v13.receiver = self;
  v13.super_class = VKTextFrameProcessorConfiguration;
  v2 = [(VKTextFrameProcessorConfiguration *)&v13 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_isForSingleItem = 257;
    __asm { FMOV            V0.2D, #0.5 }

    v2->_comparisonPoint = _Q0;
    v2->_usesLanguageDetection = 1;
    recognitionLanguages = v2->_recognitionLanguages;
    v10 = MEMORY[0x1E695E0F0];
    v2->_documentBlockType = 2;
    v2->_recognitionLanguages = v10;

    customWords = v3->_customWords;
    v3->_customWords = v10;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VKTextFrameProcessorConfiguration);
  [(VKTextFrameProcessorConfiguration *)v4 setIsForSingleItem:[(VKTextFrameProcessorConfiguration *)self isForSingleItem]];
  [(VKTextFrameProcessorConfiguration *)v4 setDataType:[(VKTextFrameProcessorConfiguration *)self dataType]];
  [(VKTextFrameProcessorConfiguration *)self comparisonPoint];
  [(VKTextFrameProcessorConfiguration *)v4 setComparisonPoint:?];
  [(VKTextFrameProcessorConfiguration *)v4 setUsesAlternateLineGrouping:[(VKTextFrameProcessorConfiguration *)self usesAlternateLineGrouping]];
  [(VKTextFrameProcessorConfiguration *)v4 setUsesLanguageDetection:[(VKTextFrameProcessorConfiguration *)self usesLanguageDetection]];
  [(VKTextFrameProcessorConfiguration *)v4 setDocumentBlockType:[(VKTextFrameProcessorConfiguration *)self documentBlockType]];
  v5 = [(VKTextFrameProcessorConfiguration *)self recognitionLanguages];
  [(VKTextFrameProcessorConfiguration *)v4 setRecognitionLanguages:v5];

  v6 = [(VKTextFrameProcessorConfiguration *)self customWords];
  [(VKTextFrameProcessorConfiguration *)v4 setCustomWords:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_opt_class();
      v6 = VKDynamicCast(v5, v4);
      v7 = [(VKTextFrameProcessorConfiguration *)self isEqualToTextFrameProcessorConfiguration:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isEqualToTextFrameProcessorConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 isForSingleItem];
  if (v5 == -[VKTextFrameProcessorConfiguration isForSingleItem](self, "isForSingleItem") && (v6 = [v4 dataType], v6 == -[VKTextFrameProcessorConfiguration dataType](self, "dataType")) && (objc_msgSend(v4, "comparisonPoint"), v8 = v7, v10 = v9, -[VKTextFrameProcessorConfiguration comparisonPoint](self, "comparisonPoint"), VKMNearlyEqualPointsWithThreshold(v8, v10, v11, v12, 0.00001)) && (v13 = objc_msgSend(v4, "usesAlternateLineGrouping"), v13 == -[VKTextFrameProcessorConfiguration usesAlternateLineGrouping](self, "usesAlternateLineGrouping")) && (v14 = objc_msgSend(v4, "usesLanguageDetection"), v14 == -[VKTextFrameProcessorConfiguration usesLanguageDetection](self, "usesLanguageDetection")) && (v15 = objc_msgSend(v4, "documentBlockType"), v15 == -[VKTextFrameProcessorConfiguration documentBlockType](self, "documentBlockType")) && (objc_msgSend(v4, "recognitionLanguages"), v16 = objc_claimAutoreleasedReturnValue(), -[VKTextFrameProcessorConfiguration recognitionLanguages](self, "recognitionLanguages"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToArray:", v17), v17, v16, v18))
  {
    v19 = [v4 customWords];
    v20 = [(VKTextFrameProcessorConfiguration *)self customWords];
    v21 = [v19 isEqualToArray:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)shouldPerformTextDetectionGating
{
  v3 = [(VKTextFrameProcessorConfiguration *)self isForSingleItem];
  if (v3)
  {
    LOBYTE(v3) = [(VKTextFrameProcessorConfiguration *)self dataType]== 0;
  }

  return v3;
}

- (CGPoint)comparisonPoint
{
  x = self->_comparisonPoint.x;
  y = self->_comparisonPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end