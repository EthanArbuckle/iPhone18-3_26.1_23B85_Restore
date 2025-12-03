@interface _UIDiffableDataSourceItemRenderer
- (_UIDiffableDataSourceItemRenderer)initWithIdentifier:(id)identifier cellClass:(Class)class handler:(id)handler;
- (_UIDiffableDataSourceItemRenderer)initWithIdentifier:(id)identifier cellClass:(Class)class handler:(id)handler cellReuseIdentifier:(id)reuseIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIDiffableDataSourceItemRenderer

- (_UIDiffableDataSourceItemRenderer)initWithIdentifier:(id)identifier cellClass:(Class)class handler:(id)handler cellReuseIdentifier:(id)reuseIdentifier
{
  identifierCopy = identifier;
  handlerCopy = handler;
  reuseIdentifierCopy = reuseIdentifier;
  v19.receiver = self;
  v19.super_class = _UIDiffableDataSourceItemRenderer;
  v14 = [(_UIDiffableDataSourceItemRenderer *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_rendererIdentifier, identifier);
    objc_storeStrong(&v15->_cellClass, class);
    v16 = _Block_copy(handlerCopy);
    handler = v15->_handler;
    v15->_handler = v16;

    objc_storeStrong(&v15->_cellReuseIdentifier, reuseIdentifier);
  }

  return v15;
}

- (_UIDiffableDataSourceItemRenderer)initWithIdentifier:(id)identifier cellClass:(Class)class handler:(id)handler
{
  v8 = MEMORY[0x1E696AFB0];
  handlerCopy = handler;
  identifierCopy = identifier;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];
  v13 = [(_UIDiffableDataSourceItemRenderer *)self initWithIdentifier:identifierCopy cellClass:class handler:handlerCopy cellReuseIdentifier:uUIDString];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  rendererIdentifier = self->_rendererIdentifier;
  cellClass = self->_cellClass;
  v7 = [self->_handler copy];
  v8 = [v4 initWithIdentifier:rendererIdentifier cellClass:cellClass handler:v7 cellReuseIdentifier:self->_cellReuseIdentifier];

  return v8;
}

@end