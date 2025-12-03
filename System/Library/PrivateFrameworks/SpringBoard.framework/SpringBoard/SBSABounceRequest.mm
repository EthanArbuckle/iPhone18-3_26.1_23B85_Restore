@interface SBSABounceRequest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSABounceRequest)initWithStyle:(int64_t)style triggeredBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSABounceRequest

- (SBSABounceRequest)initWithStyle:(int64_t)style triggeredBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = SBSABounceRequest;
  v7 = [(SBSABounceRequest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_style = style;
    v9 = [blockCopy copy];
    triggeredBlock = v8->_triggeredBlock;
    v8->_triggeredBlock = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  style = self->_style;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __29__SBSABounceRequest_isEqual___block_invoke;
  v19[3] = &unk_2783ACDE0;
  v7 = equalCopy;
  v20 = v7;
  v8 = [v5 appendInteger:style counterpart:v19];
  v9 = MEMORY[0x223D6F7F0](self->_triggeredBlock);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __29__SBSABounceRequest_isEqual___block_invoke_2;
  v17 = &unk_2783ACDB8;
  v18 = v7;
  v10 = v7;
  v11 = [v8 appendObject:v9 counterpart:&v14];
  v12 = [v11 isEqual];

  return v12;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_style];
  v5 = MEMORY[0x223D6F7F0](self->_triggeredBlock);
  v6 = [v4 appendObject:v5];
  v7 = [v6 hash];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = @"up";
  style = self->_style;
  triggeredBlock = self->_triggeredBlock;
  if (style == 1)
  {
    v5 = @"left";
  }

  if (style == 2)
  {
    v5 = @"right";
  }

  v8 = v5;
  v9 = MEMORY[0x223D6F7F0](triggeredBlock);
  v10 = [v3 stringWithFormat:@"<%@: %p style: %@, triggeredBlock: %@>", v4, self, v8, v9];;

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  style = self->_style;
  triggeredBlock = self->_triggeredBlock;

  return [v4 initWithStyle:style triggeredBlock:triggeredBlock];
}

@end