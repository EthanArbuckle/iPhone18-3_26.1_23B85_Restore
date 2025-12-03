@interface SBDodgingModel
- (CGPoint)centerForIdentifier:(id)identifier;
- (CGRect)referenceBounds;
- (CGSize)sizeForIdentifier:(id)identifier;
- (SBDodgingModel)initWithReferenceBounds:(CGRect)bounds;
- (id)description;
- (id)modelByModifyingModelWithBlock:(id)block;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SBDodgingModel

- (SBDodgingModel)initWithReferenceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v15.receiver = self;
  v15.super_class = SBDodgingModel;
  v7 = [(SBDodgingModel *)&v15 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    identifiers = v7->_identifiers;
    v7->_identifiers = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    centersForIdentifiers = v7->_centersForIdentifiers;
    v7->_centersForIdentifiers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sizesForIdentifiers = v7->_sizesForIdentifiers;
    v7->_sizesForIdentifiers = v12;

    v7->_referenceBounds.origin.x = x;
    v7->_referenceBounds.origin.y = y;
    v7->_referenceBounds.size.width = width;
    v7->_referenceBounds.size.height = height;
  }

  return v7;
}

- (CGPoint)centerForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_centersForIdentifiers objectForKey:identifier];
  [v3 CGPointValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGSize)sizeForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_sizesForIdentifiers objectForKey:identifier];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)referenceBounds
{
  x = self->_referenceBounds.origin.x;
  y = self->_referenceBounds.origin.y;
  width = self->_referenceBounds.size.width;
  height = self->_referenceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)modelByModifyingModelWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(SBDodgingModel *)self mutableCopy];
  blockCopy[2](blockCopy, v5);

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(SBDodgingModel *)[SBMutableDodgingModel alloc] initWithReferenceBounds:self->_referenceBounds.origin.x, self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height];
  v5 = [(NSMutableArray *)self->_identifiers mutableCopy];
  [(SBDodgingModel *)v4 setIdentifiers:v5];

  v6 = [(NSMutableDictionary *)self->_centersForIdentifiers mutableCopy];
  [(SBDodgingModel *)v4 setCentersForIdentifiers:v6];

  v7 = [(NSMutableDictionary *)self->_sizesForIdentifiers mutableCopy];
  [(SBDodgingModel *)v4 setSizesForIdentifiers:v7];

  return v4;
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = NSStringFromCGRect(self->_referenceBounds);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_identifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        [(SBDodgingModel *)self sizeForIdentifier:v10];
        SBRectWithSize();
        [(SBDodgingModel *)self centerForIdentifier:v10];
        UIRectCenteredAboutPoint();
        v11 = NSStringFromCGRect(v23);
        [v3 appendFormat:@"\n%@ frame:%@ inBounds:%@", v10, v11, v4];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15.receiver = self;
  v15.super_class = SBDodgingModel;
  v12 = [(SBDodgingModel *)&v15 description];
  v13 = [v12 stringByAppendingFormat:@"%@", v3];

  return v13;
}

@end