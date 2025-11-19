@interface PLPhotoLibraryOptions
- (PLPhotoLibraryOptions)init;
- (PLPhotoLibraryOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLPhotoLibraryOptions

- (PLPhotoLibraryOptions)init
{
  v5.receiver = self;
  v5.super_class = PLPhotoLibraryOptions;
  v2 = [(PLPhotoLibraryOptions *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_refreshesAfterSave = 1;
    if (PLIsAssetsd())
    {
      v3->_automaticallyPinToFirstFetch = 1;
    }
  }

  return v3;
}

- (PLPhotoLibraryOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoLibraryOptions *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"automaticallyMergesContext"];
    v5->_automaticallyMergesContext = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requiredState"];
    v5->_requiredState = [v7 integerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryRole"];
    v5->_libraryRole = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preventsWaitingForRequiredState"];
    v5->_preventsWaitingForRequiredState = [v9 BOOLValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryInitiator"];
    v5->_libraryInitiator = [v10 unsignedIntegerValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"refreshesAfterSave"];
    v5->_refreshesAfterSave = [v11 BOOLValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"automaticallyPinToFirstFetch"];
    v5->_automaticallyPinToFirstFetch = [v12 BOOLValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rollbackOnErrors"];
    v5->_rollbackOnErrors = [v13 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  automaticallyMergesContext = self->_automaticallyMergesContext;
  v6 = a3;
  v7 = [v4 numberWithBool:automaticallyMergesContext];
  [v6 encodeObject:v7 forKey:@"automaticallyMergesContext"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requiredState];
  [v6 encodeObject:v8 forKey:@"requiredState"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_libraryRole];
  [v6 encodeObject:v9 forKey:@"libraryRole"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_preventsWaitingForRequiredState];
  [v6 encodeObject:v10 forKey:@"preventsWaitingForRequiredState"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_libraryInitiator];
  [v6 encodeObject:v11 forKey:@"libraryInitiator"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_refreshesAfterSave];
  [v6 encodeObject:v12 forKey:@"refreshesAfterSave"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_automaticallyPinToFirstFetch];
  [v6 encodeObject:v13 forKey:@"automaticallyPinToFirstFetch"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_rollbackOnErrors];
  [v6 encodeObject:v14 forKey:@"rollbackOnErrors"];
}

@end