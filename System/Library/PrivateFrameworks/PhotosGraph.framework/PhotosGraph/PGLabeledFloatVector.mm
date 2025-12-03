@interface PGLabeledFloatVector
- (PGLabeledFloatVector)initWithFloatVector:(id)vector label:(id)label;
@end

@implementation PGLabeledFloatVector

- (PGLabeledFloatVector)initWithFloatVector:(id)vector label:(id)label
{
  vectorCopy = vector;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = PGLabeledFloatVector;
  v9 = [(PGLabeledFloatVector *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_floatVector, vector);
    objc_storeStrong(&v10->_label, label);
  }

  return v10;
}

@end