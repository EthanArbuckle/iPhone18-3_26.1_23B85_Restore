@interface SKUITabularLockupColumn
- (CGSize)size;
- (SKUITabularLockupColumn)initWithColumnIdentifier:(int64_t)a3;
- (id)description;
@end

@implementation SKUITabularLockupColumn

- (SKUITabularLockupColumn)initWithColumnIdentifier:(int64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUITabularLockupColumn *)v5 initWithColumnIdentifier:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUITabularLockupColumn;
  v13 = [(SKUITabularLockupColumn *)&v17 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    childViewElements = v13->_childViewElements;
    v13->_childViewElements = v14;

    v13->_identifier = a3;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = SKUITabularLockupColumn;
  v4 = [(SKUITabularLockupColumn *)&v9 description];
  identifier = self->_identifier;
  v6 = NSStringFromCGSize(self->_size);
  v7 = [v3 stringWithFormat:@"%@: [%ld, %@, %@]", v4, identifier, v6, self->_childViewElements];

  return v7;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end