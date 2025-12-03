@interface PLPhotoLibraryOptions
- (PLPhotoLibraryOptions)init;
- (PLPhotoLibraryOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (PLPhotoLibraryOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PLPhotoLibraryOptions *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"automaticallyMergesContext"];
    v5->_automaticallyMergesContext = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiredState"];
    v5->_requiredState = [v7 integerValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryRole"];
    v5->_libraryRole = [v8 unsignedIntegerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preventsWaitingForRequiredState"];
    v5->_preventsWaitingForRequiredState = [v9 BOOLValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryInitiator"];
    v5->_libraryInitiator = [v10 unsignedIntegerValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"refreshesAfterSave"];
    v5->_refreshesAfterSave = [v11 BOOLValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"automaticallyPinToFirstFetch"];
    v5->_automaticallyPinToFirstFetch = [v12 BOOLValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rollbackOnErrors"];
    v5->_rollbackOnErrors = [v13 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  automaticallyMergesContext = self->_automaticallyMergesContext;
  coderCopy = coder;
  v7 = [v4 numberWithBool:automaticallyMergesContext];
  [coderCopy encodeObject:v7 forKey:@"automaticallyMergesContext"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requiredState];
  [coderCopy encodeObject:v8 forKey:@"requiredState"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_libraryRole];
  [coderCopy encodeObject:v9 forKey:@"libraryRole"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_preventsWaitingForRequiredState];
  [coderCopy encodeObject:v10 forKey:@"preventsWaitingForRequiredState"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_libraryInitiator];
  [coderCopy encodeObject:v11 forKey:@"libraryInitiator"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_refreshesAfterSave];
  [coderCopy encodeObject:v12 forKey:@"refreshesAfterSave"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_automaticallyPinToFirstFetch];
  [coderCopy encodeObject:v13 forKey:@"automaticallyPinToFirstFetch"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_rollbackOnErrors];
  [coderCopy encodeObject:v14 forKey:@"rollbackOnErrors"];
}

@end