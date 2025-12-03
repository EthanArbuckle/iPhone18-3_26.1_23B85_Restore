@interface PXSharedLibraryParticipantValidationQuery
- (BOOL)isEqual:(id)equal;
- (PXSharedLibraryParticipantValidationQuery)init;
- (PXSharedLibraryParticipantValidationQuery)initWithAddress:(id)address;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXSharedLibraryParticipantValidationQuery

- (id)description
{
  v14.receiver = self;
  v14.super_class = PXSharedLibraryParticipantValidationQuery;
  v3 = [(PXSharedLibraryParticipantValidationQuery *)&v14 description];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x1E696AEC0];
  address = [(PXSharedLibraryParticipantValidationQuery *)self address];
  v7 = [v5 stringWithFormat:@":\naddress: %@, \n", address];
  [v4 appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  isValid = [(PXSharedLibraryParticipantValidationQuery *)self isValid];
  v10 = @"NO";
  if (isValid)
  {
    v10 = @"YES";
  }

  v11 = v10;
  v12 = [v8 stringWithFormat:@"isValid: %@", v11];
  [v4 appendString:v12];

  return v4;
}

- (unint64_t)hash
{
  address = [(PXSharedLibraryParticipantValidationQuery *)self address];
  v3 = [address hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    address = [(PXSharedLibraryParticipantValidationQuery *)self address];
    address2 = [v5 address];
    if (address == address2)
    {
      v8 = 1;
    }

    else
    {
      v8 = [address isEqualToString:address2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXSharedLibraryParticipantValidationQuery)initWithAddress:(id)address
{
  addressCopy = address;
  if (![addressCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantValidationQuery.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"address.length > 0"}];
  }

  v11.receiver = self;
  v11.super_class = PXSharedLibraryParticipantValidationQuery;
  v6 = [(PXSharedLibraryParticipantValidationQuery *)&v11 init];
  if (v6)
  {
    v7 = [addressCopy copy];
    address = v6->_address;
    v6->_address = v7;
  }

  return v6;
}

- (PXSharedLibraryParticipantValidationQuery)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantValidationQuery.m" lineNumber:21 description:{@"%s is not available as initializer", "-[PXSharedLibraryParticipantValidationQuery init]"}];

  abort();
}

@end