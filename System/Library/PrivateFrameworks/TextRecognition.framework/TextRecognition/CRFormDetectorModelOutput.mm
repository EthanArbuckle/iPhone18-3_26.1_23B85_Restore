@interface CRFormDetectorModelOutput
- (CRFormDetectorModelOutput)initWithBoundingBoxes:(id)boxes classLogits:(id)logits anchors:(id)anchors;
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation CRFormDetectorModelOutput

- (CRFormDetectorModelOutput)initWithBoundingBoxes:(id)boxes classLogits:(id)logits anchors:(id)anchors
{
  boxesCopy = boxes;
  logitsCopy = logits;
  anchorsCopy = anchors;
  v15.receiver = self;
  v15.super_class = CRFormDetectorModelOutput;
  v12 = [(CRFormDetectorModelOutput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_boundingBoxes, boxes);
    objc_storeStrong(&v13->_classLogits, logits);
    objc_storeStrong(&v13->_anchors, anchors);
  }

  return v13;
}

- (NSSet)featureNames
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"bbox_regression";
  v6[1] = @"cls_logits";
  v6[2] = @"anchors";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"bbox_regression"])
  {
    v5 = MEMORY[0x1E695FE60];
    boundingBoxes = [(CRFormDetectorModelOutput *)self boundingBoxes];
LABEL_7:
    v7 = boundingBoxes;
    v8 = [v5 featureValueWithMultiArray:boundingBoxes];

    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"cls_logits"])
  {
    v5 = MEMORY[0x1E695FE60];
    boundingBoxes = [(CRFormDetectorModelOutput *)self classLogits];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"anchors"])
  {
    v5 = MEMORY[0x1E695FE60];
    boundingBoxes = [(CRFormDetectorModelOutput *)self anchors];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end