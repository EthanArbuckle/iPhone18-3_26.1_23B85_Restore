@interface RBStateCaptureItem
- (RBStateCaptureItem)initWithTitle:(id)title identifier:(id)identifier block:(id)block;
- (void)dealloc;
@end

@implementation RBStateCaptureItem

- (RBStateCaptureItem)initWithTitle:(id)title identifier:(id)identifier block:(id)block
{
  titleCopy = title;
  identifierCopy = identifier;
  blockCopy = block;
  v22.receiver = self;
  v22.super_class = RBStateCaptureItem;
  v11 = [(RBStateCaptureItem *)&v22 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v14;

    v16 = [blockCopy copy];
    block = v11->_block;
    v11->_block = v16;

    v18 = dispatch_get_global_queue(17, 0);
    v19 = _RBLogAddStateCaptureBlockWithTitle(v18, v11->_title, v11->_block);
    invalidatable = v11->_invalidatable;
    v11->_invalidatable = v19;
  }

  return v11;
}

- (void)dealloc
{
  [(RBSInvalidatable *)self->_invalidatable invalidate];
  v3.receiver = self;
  v3.super_class = RBStateCaptureItem;
  [(RBStateCaptureItem *)&v3 dealloc];
}

@end