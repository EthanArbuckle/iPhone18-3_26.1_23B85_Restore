@interface PXBlockActionConfiguration
- (PXBlockActionConfiguration)init;
- (PXBlockActionConfiguration)initWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXBlockActionConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXBlockActionConfiguration alloc];
  actionBlock = [(PXBlockActionConfiguration *)self actionBlock];
  v6 = [(PXBlockActionConfiguration *)v4 initWithBlock:actionBlock];

  actionName = [(PXBlockActionConfiguration *)self actionName];
  [(PXBlockActionConfiguration *)v6 setActionName:actionName];

  image = [(PXBlockActionConfiguration *)self image];
  [(PXBlockActionConfiguration *)v6 setImage:image];

  canPerformBlock = [(PXBlockActionConfiguration *)self canPerformBlock];
  [(PXBlockActionConfiguration *)v6 setCanPerformBlock:canPerformBlock];

  [(PXBlockActionConfiguration *)v6 setDestructive:[(PXBlockActionConfiguration *)self isDestructive]];
  [(PXBlockActionConfiguration *)v6 setSelected:[(PXBlockActionConfiguration *)self isSelected]];
  menuElementConstructor = [(PXBlockActionConfiguration *)self menuElementConstructor];
  [(PXBlockActionConfiguration *)v6 setMenuElementConstructor:menuElementConstructor];

  return v6;
}

- (PXBlockActionConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBlockActionConfiguration.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXBlockActionConfiguration init]"}];

  abort();
}

- (PXBlockActionConfiguration)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = PXBlockActionConfiguration;
  v5 = [(PXBlockActionConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    actionBlock = v5->_actionBlock;
    v5->_actionBlock = v6;
  }

  return v5;
}

@end