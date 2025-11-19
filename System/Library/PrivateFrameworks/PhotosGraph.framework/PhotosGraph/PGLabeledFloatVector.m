@interface PGLabeledFloatVector
- (PGLabeledFloatVector)initWithFloatVector:(id)a3 label:(id)a4;
@end

@implementation PGLabeledFloatVector

- (PGLabeledFloatVector)initWithFloatVector:(id)a3 label:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGLabeledFloatVector;
  v9 = [(PGLabeledFloatVector *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_floatVector, a3);
    objc_storeStrong(&v10->_label, a4);
  }

  return v10;
}

@end