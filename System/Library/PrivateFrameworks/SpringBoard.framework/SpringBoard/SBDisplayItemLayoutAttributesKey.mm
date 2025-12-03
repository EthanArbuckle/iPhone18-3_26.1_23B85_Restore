@interface SBDisplayItemLayoutAttributesKey
+ (id)keyFromProtobufRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (SBDisplayItemLayoutAttributesKey)initWithDisplayItem:(id)item displayOrdinal:(int64_t)ordinal orientation:(int64_t)orientation;
- (id)copyWithZone:(_NSZone *)zone;
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
  uniqueIdentifier = [(SBDisplayItem *)self->_displayItem uniqueIdentifier];
  v5 = uniqueIdentifier;
  orientation = self->_orientation;
  if (orientation > 2)
  {
    v7 = @"Unrecognized";
  }

  else
  {
    v7 = off_2783B2BD8[orientation];
  }

  v8 = [v3 stringWithFormat:@"%@ (displayOrdinal=%ld, orientation=%@)", uniqueIdentifier, self->_displayOrdinal, v7];

  return v8;
}

- (SBDisplayItemLayoutAttributesKey)initWithDisplayItem:(id)item displayOrdinal:(int64_t)ordinal orientation:(int64_t)orientation
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = SBDisplayItemLayoutAttributesKey;
  v11 = [(SBDisplayItemLayoutAttributesKey *)&v13 init];
  if (v11)
  {
    if (!itemCopy)
    {
      [SBDisplayItemLayoutAttributesKey initWithDisplayItem:a2 displayOrdinal:v11 orientation:?];
    }

    objc_storeStrong(&v11->_displayItem, item);
    v11->_displayOrdinal = ordinal;
    v11->_orientation = orientation;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBDisplayItemLayoutAttributesKey alloc];
  displayItem = self->_displayItem;
  displayOrdinal = self->_displayOrdinal;
  orientation = self->_orientation;

  return [(SBDisplayItemLayoutAttributesKey *)v4 initWithDisplayItem:displayItem displayOrdinal:displayOrdinal orientation:orientation];
}

+ (id)keyFromProtobufRepresentation:(id)representation
{
  representationCopy = representation;
  displayItem = [(SBPBDisplayItemLayoutAttributesKey *)representationCopy displayItem];
  v6 = [SBDisplayItem displayItemWithProtobufRepresentation:displayItem];

  v7 = [self alloc];
  displayOrdinal = [(SBPBDisplayItemLayoutAttributesKey *)representationCopy displayOrdinal];
  orientation = [(SBPBDisplayItemLayoutAttributesKey *)representationCopy orientation];

  v10 = [v7 initWithDisplayItem:v6 displayOrdinal:displayOrdinal orientation:orientation];

  return v10;
}

- (id)protobufRepresentation
{
  v3 = objc_alloc_init(SBPBDisplayItemLayoutAttributesKey);
  protobufRepresentation = [(SBDisplayItem *)self->_displayItem protobufRepresentation];
  [(SBPBDisplayItemLayoutAttributesKey *)v3 setDisplayItem:protobufRepresentation];

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