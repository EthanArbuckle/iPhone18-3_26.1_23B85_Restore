@interface WBSCRDTPositionSortValue
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPositionSortValue:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (WBSCRDTPositionSortValue)initWithCoder:(id)a3;
- (WBSCRDTPositionSortValue)initWithDictionaryRepresentation:(id)a3;
- (WBSCRDTPositionSortValue)initWithSortValue:(int64_t)a3 deviceIdentifier:(id)a4 changeID:(int64_t)a5;
- (WBSCRDTPositionSortValue)positionSortValueWithChangeID:(int64_t)a3;
- (WBSCRDTPositionSortValue)positionSortValueWithSortValue:(int64_t)a3;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSCRDTPositionSortValue

- (WBSCRDTPositionSortValue)initWithSortValue:(int64_t)a3 deviceIdentifier:(id)a4 changeID:(int64_t)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WBSCRDTPositionSortValue;
  v9 = [(WBSCRDTPositionSortValue *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_sortValue = a3;
    v11 = [v8 copy];
    deviceIdentifier = v10->_deviceIdentifier;
    v10->_deviceIdentifier = v11;

    v10->_changeID = a5;
    v13 = v10;
  }

  return v10;
}

- (WBSCRDTPositionSortValue)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_numberForKey:@"sortValue"];
  if (v5)
  {
    v6 = [v4 safari_stringForKey:@"deviceIdentifier"];
    if ([v6 length])
    {
      v7 = [v4 safari_numberForKey:@"changeID"];
      if (v7)
      {
        self = -[WBSCRDTPositionSortValue initWithSortValue:deviceIdentifier:changeID:](self, "initWithSortValue:deviceIdentifier:changeID:", [v5 longLongValue], v6, objc_msgSend(v7, "longLongValue"));
        v8 = self;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WBSCRDTPositionSortValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"sortValue"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  if ([v6 length])
  {
    self = -[WBSCRDTPositionSortValue initWithSortValue:deviceIdentifier:changeID:](self, "initWithSortValue:deviceIdentifier:changeID:", v5, v6, [v4 decodeInt64ForKey:@"changeID"]);
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  sortValue = self->_sortValue;
  v5 = a3;
  [v5 encodeInt64:sortValue forKey:@"sortValue"];
  [v5 encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [v5 encodeInt64:self->_changeID forKey:@"changeID"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WBSCRDTPositionSortValue *)self isEqualToPositionSortValue:v4];
  }

  return v5;
}

- (BOOL)isEqualToPositionSortValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = self->_sortValue == v4[1] && self->_changeID == v4[3] && [(NSString *)self->_deviceIdentifier isEqualToString:v4[2]];

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  sortValue = self->_sortValue;
  v6 = v4[1];
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

  v7 = [(NSString *)self->_deviceIdentifier compare:v4[2]];
  if (v7)
  {
    goto LABEL_6;
  }

  changeID = self->_changeID;
  v10 = v4[3];
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

- (WBSCRDTPositionSortValue)positionSortValueWithSortValue:(int64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithSortValue:a3 deviceIdentifier:self->_deviceIdentifier changeID:self->_changeID];

  return v3;
}

- (WBSCRDTPositionSortValue)positionSortValueWithChangeID:(int64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithSortValue:self->_sortValue deviceIdentifier:self->_deviceIdentifier changeID:a3];

  return v3;
}

@end