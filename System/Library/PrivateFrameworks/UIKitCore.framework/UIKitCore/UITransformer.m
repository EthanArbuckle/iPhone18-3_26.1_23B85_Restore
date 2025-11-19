@interface UITransformer
- (BOOL)isEqual:(id)a3;
- (id)_initWithTransformer:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation UITransformer

- (id)_initWithTransformer:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UITransformer;
  v5 = [(UITransform *)&v11 init];
  if (v5)
  {
    v6 = [v4[7] mutableCopy];
    transforms = v5->_transforms;
    v5->_transforms = v6;

    v8 = [v4[8] mutableCopy];
    transformReasonAssociations = v5->_transformReasonAssociations;
    v5->_transformReasonAssociations = v8;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_transforms firstObject];
  v4 = [v3 hash];
  v5 = [(NSMutableArray *)self->_transforms hash];
  v6 = [(NSMutableArray *)self->_transformReasonAssociations firstObject];
  v7 = [v6 hash];
  v8 = [(NSMutableArray *)self->_transformReasonAssociations hash]* v7 + v5 * v4;

  return v8 + 3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && BSEqualObjects())
  {
    v6 = BSEqualObjects();
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

LABEL_8:

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UIMutableTransformer alloc];

  return [(UITransformer *)v4 _initWithTransformer:self];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = UITransformer;
  v4 = [(UITransform *)&v12 descriptionBuilderWithMultilinePrefix:a3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__UITransformer_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

@end