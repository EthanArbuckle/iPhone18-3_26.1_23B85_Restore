@interface SBDisplayItemLayoutAttributesKey
+ (id)keyFromProtobufRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SBDisplayItemLayoutAttributesKey)initWithDisplayItem:(id)a3 displayOrdinal:(int64_t)a4 orientation:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)protobufRepresentation;
- (unint64_t)hash;
@end

@implementation SBDisplayItemLayoutAttributesKey

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C40]);
  v4 = [v3 appendObject:self->_displayItem];
  v5 = [v3 appendInteger:self->_displayOrdinal];
  v6 = [v3 appendInteger:self->_orientation];
  v7 = [v3 hash];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SBDisplayItem *)self->_displayItem uniqueIdentifier];
  v5 = v4;
  orientation = self->_orientation;
  if (orientation > 2)
  {
    v7 = @"Unrecognized";
  }

  else
  {
    v7 = off_2783B2BD8[orientation];
  }

  v8 = [v3 stringWithFormat:@"%@ (displayOrdinal=%ld, orientation=%@)", v4, self->_displayOrdinal, v7];

  return v8;
}

- (SBDisplayItemLayoutAttributesKey)initWithDisplayItem:(id)a3 displayOrdinal:(int64_t)a4 orientation:(int64_t)a5
{
  v10 = a3;
  v13.receiver = self;
  v13.super_class = SBDisplayItemLayoutAttributesKey;
  v11 = [(SBDisplayItemLayoutAttributesKey *)&v13 init];
  if (v11)
  {
    if (!v10)
    {
      [SBDisplayItemLayoutAttributesKey initWithDisplayItem:a2 displayOrdinal:v11 orientation:?];
    }

    objc_storeStrong(&v11->_displayItem, a3);
    v11->_displayOrdinal = a4;
    v11->_orientation = a5;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && self->_displayOrdinal == v9[2] && self->_orientation == v9[3])
    {
      v8 = [(SBDisplayItem *)self->_displayItem isEqualToItem:?];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBDisplayItemLayoutAttributesKey alloc];
  displayItem = self->_displayItem;
  displayOrdinal = self->_displayOrdinal;
  orientation = self->_orientation;

  return [(SBDisplayItemLayoutAttributesKey *)v4 initWithDisplayItem:displayItem displayOrdinal:displayOrdinal orientation:orientation];
}

+ (id)keyFromProtobufRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(SBPBDisplayItemLayoutAttributesKey *)v4 displayItem];
  v6 = [SBDisplayItem displayItemWithProtobufRepresentation:v5];

  v7 = [a1 alloc];
  v8 = [(SBPBDisplayItemLayoutAttributesKey *)v4 displayOrdinal];
  v9 = [(SBPBDisplayItemLayoutAttributesKey *)v4 orientation];

  v10 = [v7 initWithDisplayItem:v6 displayOrdinal:v8 orientation:v9];

  return v10;
}

- (id)protobufRepresentation
{
  v3 = objc_alloc_init(SBPBDisplayItemLayoutAttributesKey);
  v4 = [(SBDisplayItem *)self->_displayItem protobufRepresentation];
  [(SBPBDisplayItemLayoutAttributesKey *)v3 setDisplayItem:v4];

  [(SBPBDisplayItemLayoutAttributesKey *)v3 setDisplayOrdinal:?];
  [(SBPBDisplayItemLayoutAttributesKey *)v3 setOrientation:?];

  return v3;
}

- (void)initWithDisplayItem:(uint64_t)a1 displayOrdinal:(uint64_t)a2 orientation:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayItemLayoutAttributesKey.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end