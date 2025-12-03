@interface UITransformer
- (BOOL)isEqual:(id)equal;
- (id)_initWithTransformer:(id)transformer;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation UITransformer

- (id)_initWithTransformer:(id)transformer
{
  transformerCopy = transformer;
  v11.receiver = self;
  v11.super_class = UITransformer;
  v5 = [(UITransform *)&v11 init];
  if (v5)
  {
    v6 = [transformerCopy[7] mutableCopy];
    transforms = v5->_transforms;
    v5->_transforms = v6;

    v8 = [transformerCopy[8] mutableCopy];
    transformReasonAssociations = v5->_transformReasonAssociations;
    v5->_transformReasonAssociations = v8;
  }

  return v5;
}

- (unint64_t)hash
{
  firstObject = [(NSMutableArray *)self->_transforms firstObject];
  v4 = [firstObject hash];
  v5 = [(NSMutableArray *)self->_transforms hash];
  firstObject2 = [(NSMutableArray *)self->_transformReasonAssociations firstObject];
  v7 = [firstObject2 hash];
  v8 = [(NSMutableArray *)self->_transformReasonAssociations hash]* v7 + v5 * v4;

  return v8 + 3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  if (self == equalCopy)
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UIMutableTransformer alloc];

  return [(UITransformer *)v4 _initWithTransformer:self];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = UITransformer;
  v4 = [(UITransform *)&v12 descriptionBuilderWithMultilinePrefix:prefix];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__UITransformer_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v5 = v4;
  v10 = v5;
  selfCopy = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

@end