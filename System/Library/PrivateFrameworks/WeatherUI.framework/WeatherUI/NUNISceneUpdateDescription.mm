@interface NUNISceneUpdateDescription
+ (id)descriptionWithVista:(unint64_t)vista updateBlock:(id)block;
- (NUNISceneUpdateDescription)initWithVista:(unint64_t)vista updateBlock:(id)block;
@end

@implementation NUNISceneUpdateDescription

+ (id)descriptionWithVista:(unint64_t)vista updateBlock:(id)block
{
  blockCopy = block;
  v6 = [[NUNISceneUpdateDescription alloc] initWithVista:vista updateBlock:blockCopy];

  return v6;
}

- (NUNISceneUpdateDescription)initWithVista:(unint64_t)vista updateBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = NUNISceneUpdateDescription;
  v7 = [(NUNISceneUpdateDescription *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_vista = vista;
    v9 = _Block_copy(blockCopy);
    updateBlock = v8->_updateBlock;
    v8->_updateBlock = v9;
  }

  return v8;
}

@end