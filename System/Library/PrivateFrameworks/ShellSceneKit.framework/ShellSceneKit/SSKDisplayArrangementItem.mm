@interface SSKDisplayArrangementItem
- (BOOL)isEqual:(id)equal;
- (SSKDisplayArrangementItem)initWithCoder:(id)coder;
- (SSKDisplayArrangementItem)initWithRelativeDisplayIdentity:(id)identity edge:(unsigned int)edge offset:(double)offset;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSKDisplayArrangementItem

- (SSKDisplayArrangementItem)initWithRelativeDisplayIdentity:(id)identity edge:(unsigned int)edge offset:(double)offset
{
  identityCopy = identity;
  v14.receiver = self;
  v14.super_class = SSKDisplayArrangementItem;
  v10 = [(SSKDisplayArrangementItem *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_relativeDisplayIdentity, identity);
    v11->_edge = edge;
    v11->_offset = offset;
  }

  v12 = [(SSKDisplayArrangementItem *)v11 init];

  return v12;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_relativeDisplayIdentity];
  v5 = [builder appendInt64:self->_edge];
  v6 = [builder appendCGFloat:self->_offset];
  v7 = [builder hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  relativeDisplayIdentity = self->_relativeDisplayIdentity;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __37__SSKDisplayArrangementItem_isEqual___block_invoke;
  v20[3] = &unk_279BC0E90;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendObject:relativeDisplayIdentity counterpart:v20];
  edge = self->_edge;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __37__SSKDisplayArrangementItem_isEqual___block_invoke_2;
  v18[3] = &unk_279BC0EB8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendInt64:edge counterpart:v18];
  offset = self->_offset;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__SSKDisplayArrangementItem_isEqual___block_invoke_3;
  v16[3] = &unk_279BC0EE0;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendCGFloat:v16 counterpart:offset];
  LOBYTE(v10) = [v5 isEqual];

  return v10;
}

- (SSKDisplayArrangementItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SSKDisplayArrangementItem;
  v5 = [(SSKDisplayArrangementItem *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relativeDisplayIdentity"];
    relativeDisplayIdentity = v5->_relativeDisplayIdentity;
    v5->_relativeDisplayIdentity = v6;

    v5->_edge = [coderCopy decodeInt32ForKey:@"edge"];
    [coderCopy decodeDoubleForKey:@"offset"];
    v5->_offset = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  relativeDisplayIdentity = self->_relativeDisplayIdentity;
  coderCopy = coder;
  [coderCopy encodeObject:relativeDisplayIdentity forKey:@"relativeDisplayIdentity"];
  [coderCopy encodeInt32:self->_edge forKey:@"edge"];
  [coderCopy encodeDouble:@"offset" forKey:self->_offset];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __58__SSKDisplayArrangementItem_appendDescriptionToFormatter___block_invoke;
  v12 = &unk_279BC0F08;
  v13 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:self block:&v9];
  edge = self->_edge;
  if (edge > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_279BC0F28[edge];
  }

  [v5 appendString:v7 withName:{@"toThe", v9, v10, v11, v12}];
  v8 = [v5 appendFloat:@"offset" withName:self->_offset];
}

@end