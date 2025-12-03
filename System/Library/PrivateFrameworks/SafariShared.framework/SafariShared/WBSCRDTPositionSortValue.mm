@interface WBSCRDTPositionSortValue
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPositionSortValue:(id)value;
- (NSDictionary)dictionaryRepresentation;
- (WBSCRDTPositionSortValue)initWithCoder:(id)coder;
- (WBSCRDTPositionSortValue)initWithDictionaryRepresentation:(id)representation;
- (WBSCRDTPositionSortValue)initWithSortValue:(int64_t)value deviceIdentifier:(id)identifier changeID:(int64_t)d;
- (WBSCRDTPositionSortValue)positionSortValueWithChangeID:(int64_t)d;
- (WBSCRDTPositionSortValue)positionSortValueWithSortValue:(int64_t)value;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSCRDTPositionSortValue

- (WBSCRDTPositionSortValue)initWithSortValue:(int64_t)value deviceIdentifier:(id)identifier changeID:(int64_t)d
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = WBSCRDTPositionSortValue;
  v9 = [(WBSCRDTPositionSortValue *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_sortValue = value;
    v11 = [identifierCopy copy];
    deviceIdentifier = v10->_deviceIdentifier;
    v10->_deviceIdentifier = v11;

    v10->_changeID = d;
    v13 = v10;
  }

  return v10;
}

- (WBSCRDTPositionSortValue)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy safari_numberForKey:@"sortValue"];
  if (v5)
  {
    v6 = [representationCopy safari_stringForKey:@"deviceIdentifier"];
    if ([v6 length])
    {
      v7 = [representationCopy safari_numberForKey:@"changeID"];
      if (v7)
      {
        self = -[WBSCRDTPositionSortValue initWithSortValue:deviceIdentifier:changeID:](self, "initWithSortValue:deviceIdentifier:changeID:", [v5 longLongValue], v6, objc_msgSend(v7, "longLongValue"));
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WBSCRDTPositionSortValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"sortValue"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  if ([v6 length])
  {
    self = -[WBSCRDTPositionSortValue initWithSortValue:deviceIdentifier:changeID:](self, "initWithSortValue:deviceIdentifier:changeID:", v5, v6, [coderCopy decodeInt64ForKey:@"changeID"]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  sortValue = self->_sortValue;
  coderCopy = coder;
  [coderCopy encodeInt64:sortValue forKey:@"sortValue"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [coderCopy encodeInt64:self->_changeID forKey:@"changeID"];
}

- (NSDictionary)dictionaryRepresentation
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"sortValue";
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sortValue];
  deviceIdentifier = self->_deviceIdentifier;
  changeID = self->_changeID;
  v10[0] = v3;
  v10[1] = deviceIdentifier;
  v9[1] = @"deviceIdentifier";
  v9[2] = @"changeID";
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:changeID];
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WBSCRDTPositionSortValue *)self isEqualToPositionSortValue:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToPositionSortValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  v6 = self->_sortValue == valueCopy[1] && self->_changeID == valueCopy[3] && [(NSString *)self->_deviceIdentifier isEqualToString:valueCopy[2]];

  return v6;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  sortValue = self->_sortValue;
  v6 = compareCopy[1];
  if (sortValue < v6)
  {
    goto LABEL_2;
  }

  if (sortValue > v6)
  {
LABEL_4:
    v7 = NSOrderedDescending;
    goto LABEL_6;
  }

  v7 = [(NSString *)self->_deviceIdentifier compare:compareCopy[2]];
  if (v7)
  {
    goto LABEL_6;
  }

  changeID = self->_changeID;
  v10 = compareCopy[3];
  if (changeID < 0)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    if (changeID < 0)
    {
      changeID = -changeID;
    }

    if (v10 < 0)
    {
      v10 = -v10;
    }

    if (changeID >= v10)
    {
      v7 = (changeID > v10);
      goto LABEL_6;
    }

    goto LABEL_2;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_2:
  v7 = NSOrderedAscending;
LABEL_6:

  return v7;
}

- (WBSCRDTPositionSortValue)positionSortValueWithSortValue:(int64_t)value
{
  v3 = [objc_alloc(objc_opt_class()) initWithSortValue:value deviceIdentifier:self->_deviceIdentifier changeID:self->_changeID];

  return v3;
}

- (WBSCRDTPositionSortValue)positionSortValueWithChangeID:(int64_t)d
{
  v3 = [objc_alloc(objc_opt_class()) initWithSortValue:self->_sortValue deviceIdentifier:self->_deviceIdentifier changeID:d];

  return v3;
}

@end