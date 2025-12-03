@interface _UIOutlineItemRenderer
- (_UIOutlineItemRenderer)initWithIdentifier:(id)identifier cellClass:(Class)class handler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIOutlineItemRenderer

- (_UIOutlineItemRenderer)initWithIdentifier:(id)identifier cellClass:(Class)class handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___UIOutlineItemRenderer_initWithIdentifier_cellClass_handler___block_invoke;
  aBlock[3] = &unk_1E712D078;
  objc_copyWeak(&v19, &location);
  v10 = handlerCopy;
  v18 = v10;
  v11 = _Block_copy(aBlock);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v16.receiver = self;
  v16.super_class = _UIOutlineItemRenderer;
  v14 = [(_UIDiffableDataSourceItemRenderer *)&v16 initWithIdentifier:identifierCopy cellClass:class handler:v11 cellReuseIdentifier:uUIDString];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  rendererIdentifier = [(_UIDiffableDataSourceItemRenderer *)self rendererIdentifier];
  cellClass = [(_UIDiffableDataSourceItemRenderer *)self cellClass];
  handler = [(_UIDiffableDataSourceItemRenderer *)self handler];
  v8 = [handler copy];
  v9 = [v4 initWithIdentifier:rendererIdentifier cellClass:cellClass handler:v8];

  return v9;
}

@end