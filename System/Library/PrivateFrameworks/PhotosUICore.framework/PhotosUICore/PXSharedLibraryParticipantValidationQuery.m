@interface PXSharedLibraryParticipantValidationQuery
- (BOOL)isEqual:(id)a3;
- (PXSharedLibraryParticipantValidationQuery)init;
- (PXSharedLibraryParticipantValidationQuery)initWithAddress:(id)a3;
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
  v6 = [(PXSharedLibraryParticipantValidationQuery *)self address];
  v7 = [v5 stringWithFormat:@":\naddress: %@, \n", v6];
  [v4 appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(PXSharedLibraryParticipantValidationQuery *)self isValid];
  v10 = @"NO";
  if (v9)
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
  v2 = [(PXSharedLibraryParticipantValidationQuery *)self address];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXSharedLibraryParticipantValidationQuery *)self address];
    v7 = [v5 address];
    if (v6 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = [v6 isEqualToString:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXSharedLibraryParticipantValidationQuery)initWithAddress:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantValidationQuery.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"address.length > 0"}];
  }

  v11.receiver = self;
  v11.super_class = PXSharedLibraryParticipantValidationQuery;
  v6 = [(PXSharedLibraryParticipantValidationQuery *)&v11 init];
  if (v6)
  {
    v7 = [v5 copy];
    address = v6->_address;
    v6->_address = v7;
  }

  return v6;
}

- (PXSharedLibraryParticipantValidationQuery)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantValidationQuery.m" lineNumber:21 description:{@"%s is not available as initializer", "-[PXSharedLibraryParticipantValidationQuery init]"}];

  abort();
}

@end