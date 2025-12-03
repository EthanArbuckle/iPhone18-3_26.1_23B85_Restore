@interface VFXTransformConstraint
+ (id)orientationConstraintInWorldSpace:(BOOL)space withBlock:(id)block;
+ (id)positionConstraintInWorldSpace:(BOOL)space withBlock:(id)block;
+ (id)transformConstraintInWorldSpace:(BOOL)space withBlock:(id)block;
- (VFXTransformConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initOrientationInWorldSpace:(BOOL)space withBlock:(id)block;
- (id)initPositionInWorld:(BOOL)world withBlock:(id)block;
- (id)initTransformInWorld:(BOOL)world withBlock:(id)block;
@end

@implementation VFXTransformConstraint

- (id)initTransformInWorld:(BOOL)world withBlock:(id)block
{
  v13.receiver = self;
  v13.super_class = VFXTransformConstraint;
  v6 = [(VFXConstraint *)&v13 init];
  if (v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF2BD170;
    v11[3] = &unk_1E7A7E618;
    worldCopy = world;
    v11[4] = block;
    v6->super._constraintRef = sub_1AF1523B8(v11, @"transform");
    objc_msgSend_didInitConstraintRef(v6, v7, v8, v9);
  }

  return v6;
}

- (id)initPositionInWorld:(BOOL)world withBlock:(id)block
{
  v13.receiver = self;
  v13.super_class = VFXTransformConstraint;
  v6 = [(VFXConstraint *)&v13 init];
  if (v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF2BD79C;
    v11[3] = &unk_1E7A7E618;
    worldCopy = world;
    v11[4] = block;
    v6->super._constraintRef = sub_1AF1523B8(v11, @"translation");
    objc_msgSend_didInitConstraintRef(v6, v7, v8, v9);
  }

  return v6;
}

- (id)initOrientationInWorldSpace:(BOOL)space withBlock:(id)block
{
  v13.receiver = self;
  v13.super_class = VFXTransformConstraint;
  v6 = [(VFXConstraint *)&v13 init];
  if (v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF2BD9A8;
    v11[3] = &unk_1E7A7E618;
    spaceCopy = space;
    v11[4] = block;
    v6->super._constraintRef = sub_1AF1523B8(v11, @"quaternion");
    objc_msgSend_didInitConstraintRef(v6, v7, v8, v9);
  }

  return v6;
}

+ (id)transformConstraintInWorldSpace:(BOOL)space withBlock:(id)block
{
  spaceCopy = space;
  v6 = [VFXTransformConstraint alloc];
  inited = objc_msgSend_initTransformInWorld_withBlock_(v6, v7, spaceCopy, block);

  return inited;
}

+ (id)positionConstraintInWorldSpace:(BOOL)space withBlock:(id)block
{
  spaceCopy = space;
  v6 = [VFXTransformConstraint alloc];
  inited = objc_msgSend_initPositionInWorld_withBlock_(v6, v7, spaceCopy, block);

  return inited;
}

+ (id)orientationConstraintInWorldSpace:(BOOL)space withBlock:(id)block
{
  spaceCopy = space;
  v6 = [VFXTransformConstraint alloc];
  inited = objc_msgSend_initOrientationInWorldSpace_withBlock_(v6, v7, spaceCopy, block);

  return inited;
}

- (VFXTransformConstraint)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = VFXTransformConstraint;
  v4 = [(VFXConstraint *)&v8 init];
  if (v4)
  {
    v4->super._constraintRef = sub_1AF1523B8(&unk_1F24EBFD8, @"transform");
    objc_msgSend_finalizeDecodeConstraint_(v4, v5, coder, v6);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = sub_1AF15249C(self->super._constraintRef);
  objc_msgSend_setConstraintRef_(v4, v6, v5, v7);
  CFRelease(v5);
  objc_msgSend_copyTo_(self, v8, v4, v9);
  return v4;
}

@end