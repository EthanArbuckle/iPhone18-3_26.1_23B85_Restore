@interface PXBlockActionConfiguration
- (PXBlockActionConfiguration)init;
- (PXBlockActionConfiguration)initWithBlock:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXBlockActionConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXBlockActionConfiguration alloc];
  v5 = [(PXBlockActionConfiguration *)self actionBlock];
  v6 = [(PXBlockActionConfiguration *)v4 initWithBlock:v5];

  v7 = [(PXBlockActionConfiguration *)self actionName];
  [(PXBlockActionConfiguration *)v6 setActionName:v7];

  v8 = [(PXBlockActionConfiguration *)self image];
  [(PXBlockActionConfiguration *)v6 setImage:v8];

  v9 = [(PXBlockActionConfiguration *)self canPerformBlock];
  [(PXBlockActionConfiguration *)v6 setCanPerformBlock:v9];

  [(PXBlockActionConfiguration *)v6 setDestructive:[(PXBlockActionConfiguration *)self isDestructive]];
  [(PXBlockActionConfiguration *)v6 setSelected:[(PXBlockActionConfiguration *)self isSelected]];
  v10 = [(PXBlockActionConfiguration *)self menuElementConstructor];
  [(PXBlockActionConfiguration *)v6 setMenuElementConstructor:v10];

  return v6;
}

- (PXBlockActionConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXBlockActionConfiguration.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXBlockActionConfiguration init]"}];

  abort();
}

- (PXBlockActionConfiguration)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXBlockActionConfiguration;
  v5 = [(PXBlockActionConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    actionBlock = v5->_actionBlock;
    v5->_actionBlock = v6;
  }

  return v5;
}

@end