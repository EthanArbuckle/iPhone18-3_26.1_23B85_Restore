@interface VKCDataDetectorElementInfo
+ (id)infoFromDataDetectorElement:(id)element analysis:(id)analysis;
- (_NSRange)range;
- (id)debugDescription;
- (id)description;
@end

@implementation VKCDataDetectorElementInfo

+ (id)infoFromDataDetectorElement:(id)element analysis:(id)analysis
{
  elementCopy = element;
  imageAnalysisResult = [analysis imageAnalysisResult];
  v7 = objc_alloc_init(VKCDataDetectorElementInfo);
  -[VKCDataDetectorElementInfo setTypes:](v7, "setTypes:", [elementCopy dataDetectorTypes]);
  boundingQuads = [elementCopy boundingQuads];
  [(VKCDataDetectorElementInfo *)v7 setBoundingQuads:boundingQuads];

  boundingQuads2 = [(VKCDataDetectorElementInfo *)v7 boundingQuads];
  boundingQuads3 = [(VKCDataDetectorElementInfo *)v7 boundingQuads];
  firstObject = [boundingQuads3 firstObject];
  [firstObject averagedAngleFromBottomAndTopEdges];
  v12 = [VKQuad quadFromUnionOfQuads:boundingQuads2 baselineAngle:?];
  [(VKCDataDetectorElementInfo *)v7 setBoundingQuad:v12];

  uuid = [elementCopy uuid];
  [(VKCDataDetectorElementInfo *)v7 setCorrelationIdentifier:uuid];

  v14 = objc_opt_class();
  v15 = VKDynamicCast(v14, elementCopy);

  if (v15)
  {
    text = [imageAnalysisResult text];
    characterRange = [v15 characterRange];
    v19 = [text vk_substringWithRange:{characterRange, v18}];
    [(VKCDataDetectorElementInfo *)v7 setText:v19];

    characterRange2 = [v15 characterRange];
    v22 = v21;
  }

  else
  {
    v22 = 0;
    characterRange2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(VKCDataDetectorElementInfo *)v7 setRange:characterRange2, v22];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = VKMUIStringForDDTypes([(VKCDataDetectorElementInfo *)self types]);
  boundingQuad = [(VKCDataDetectorElementInfo *)self boundingQuad];
  boundingQuads = [(VKCDataDetectorElementInfo *)self boundingQuads];
  v7 = [v3 stringWithFormat:@"Data Detector Element: type: %@ \n boundingQuad: %@ \n boundingQuads: %@ ", v4, boundingQuad, boundingQuads];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = VKMUIStringForDDTypes([(VKCDataDetectorElementInfo *)self types]);
  text = [(VKCDataDetectorElementInfo *)self text];
  boundingQuad = [(VKCDataDetectorElementInfo *)self boundingQuad];
  boundingQuads = [(VKCDataDetectorElementInfo *)self boundingQuads];
  v8 = [v3 stringWithFormat:@"Data Detector Element: type: %@ \n text: %@ \n boundingQuad: %@ \n boundingQuads: %@ ", v4, text, boundingQuad, boundingQuads];

  return v8;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end