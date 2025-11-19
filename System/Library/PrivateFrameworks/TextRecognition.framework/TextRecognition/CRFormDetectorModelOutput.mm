@interface CRFormDetectorModelOutput
- (CRFormDetectorModelOutput)initWithBoundingBoxes:(id)a3 classLogits:(id)a4 anchors:(id)a5;
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation CRFormDetectorModelOutput

- (CRFormDetectorModelOutput)initWithBoundingBoxes:(id)a3 classLogits:(id)a4 anchors:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CRFormDetectorModelOutput;
  v12 = [(CRFormDetectorModelOutput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_boundingBoxes, a3);
    objc_storeStrong(&v13->_classLogits, a4);
    objc_storeStrong(&v13->_anchors, a5);
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

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"bbox_regression"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(CRFormDetectorModelOutput *)self boundingBoxes];
LABEL_7:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"cls_logits"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(CRFormDetectorModelOutput *)self classLogits];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"anchors"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(CRFormDetectorModelOutput *)self anchors];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end