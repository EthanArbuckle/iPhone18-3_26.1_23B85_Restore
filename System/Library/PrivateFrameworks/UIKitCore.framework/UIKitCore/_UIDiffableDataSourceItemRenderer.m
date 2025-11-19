@interface _UIDiffableDataSourceItemRenderer
- (_UIDiffableDataSourceItemRenderer)initWithIdentifier:(id)a3 cellClass:(Class)a4 handler:(id)a5;
- (_UIDiffableDataSourceItemRenderer)initWithIdentifier:(id)a3 cellClass:(Class)a4 handler:(id)a5 cellReuseIdentifier:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UIDiffableDataSourceItemRenderer

- (_UIDiffableDataSourceItemRenderer)initWithIdentifier:(id)a3 cellClass:(Class)a4 handler:(id)a5 cellReuseIdentifier:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = _UIDiffableDataSourceItemRenderer;
  v14 = [(_UIDiffableDataSourceItemRenderer *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_rendererIdentifier, a3);
    objc_storeStrong(&v15->_cellClass, a4);
    v16 = _Block_copy(v12);
    handler = v15->_handler;
    v15->_handler = v16;

    objc_storeStrong(&v15->_cellReuseIdentifier, a6);
  }

  return v15;
}

- (_UIDiffableDataSourceItemRenderer)initWithIdentifier:(id)a3 cellClass:(Class)a4 handler:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a3;
  v11 = [v8 UUID];
  v12 = [v11 UUIDString];
  v13 = [(_UIDiffableDataSourceItemRenderer *)self initWithIdentifier:v10 cellClass:a4 handler:v9 cellReuseIdentifier:v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  rendererIdentifier = self->_rendererIdentifier;
  cellClass = self->_cellClass;
  v7 = [self->_handler copy];
  v8 = [v4 initWithIdentifier:rendererIdentifier cellClass:cellClass handler:v7 cellReuseIdentifier:self->_cellReuseIdentifier];

  return v8;
}

@end