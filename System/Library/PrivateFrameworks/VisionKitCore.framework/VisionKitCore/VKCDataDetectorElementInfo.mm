@interface VKCDataDetectorElementInfo
+ (id)infoFromDataDetectorElement:(id)a3 analysis:(id)a4;
- (_NSRange)range;
- (id)debugDescription;
- (id)description;
@end

@implementation VKCDataDetectorElementInfo

+ (id)infoFromDataDetectorElement:(id)a3 analysis:(id)a4
{
  v5 = a3;
  v6 = [a4 imageAnalysisResult];
  v7 = objc_alloc_init(VKCDataDetectorElementInfo);
  -[VKCDataDetectorElementInfo setTypes:](v7, "setTypes:", [v5 dataDetectorTypes]);
  v8 = [v5 boundingQuads];
  [(VKCDataDetectorElementInfo *)v7 setBoundingQuads:v8];

  v9 = [(VKCDataDetectorElementInfo *)v7 boundingQuads];
  v10 = [(VKCDataDetectorElementInfo *)v7 boundingQuads];
  v11 = [v10 firstObject];
  [v11 averagedAngleFromBottomAndTopEdges];
  v12 = [VKQuad quadFromUnionOfQuads:v9 baselineAngle:?];
  [(VKCDataDetectorElementInfo *)v7 setBoundingQuad:v12];

  v13 = [v5 uuid];
  [(VKCDataDetectorElementInfo *)v7 setCorrelationIdentifier:v13];

  v14 = objc_opt_class();
  v15 = VKDynamicCast(v14, v5);

  if (v15)
  {
    v16 = [v6 text];
    v17 = [v15 characterRange];
    v19 = [v16 vk_substringWithRange:{v17, v18}];
    [(VKCDataDetectorElementInfo *)v7 setText:v19];

    v20 = [v15 characterRange];
    v22 = v21;
  }

  else
  {
    v22 = 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(VKCDataDetectorElementInfo *)v7 setRange:v20, v22];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = VKMUIStringForDDTypes([(VKCDataDetectorElementInfo *)self types]);
  v5 = [(VKCDataDetectorElementInfo *)self boundingQuad];
  v6 = [(VKCDataDetectorElementInfo *)self boundingQuads];
  v7 = [v3 stringWithFormat:@"Data Detector Element: type: %@ \n boundingQuad: %@ \n boundingQuads: %@ ", v4, v5, v6];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = VKMUIStringForDDTypes([(VKCDataDetectorElementInfo *)self types]);
  v5 = [(VKCDataDetectorElementInfo *)self text];
  v6 = [(VKCDataDetectorElementInfo *)self boundingQuad];
  v7 = [(VKCDataDetectorElementInfo *)self boundingQuads];
  v8 = [v3 stringWithFormat:@"Data Detector Element: type: %@ \n text: %@ \n boundingQuad: %@ \n boundingQuads: %@ ", v4, v5, v6, v7];

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