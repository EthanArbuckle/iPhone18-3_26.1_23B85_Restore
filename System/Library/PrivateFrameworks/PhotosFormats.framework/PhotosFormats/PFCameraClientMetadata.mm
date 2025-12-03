@interface PFCameraClientMetadata
- (PFCameraClientMetadata)initWithCoder:(id)coder;
- (PFCameraClientMetadata)initWithPrivateClientMetadata:(id)metadata contactIDsInProximity:(id)proximity sharedLibraryMode:(int64_t)mode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFCameraClientMetadata

- (PFCameraClientMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PFCameraClientMetadata *)self init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"privateClientMetadata"];
    privateClientMetadata = v5->_privateClientMetadata;
    v5->_privateClientMetadata = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"contactIDsInProximity"];
    contactIDsInProximity = v5->_contactIDsInProximity;
    v5->_contactIDsInProximity = v12;

    v5->_sharedLibraryMode = [coderCopy decodeIntegerForKey:@"sharedLibraryMode"];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"sharedLibraryDiagnostics"];
    sharedLibraryDiagnostics = v5->_sharedLibraryDiagnostics;
    v5->_sharedLibraryDiagnostics = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  privateClientMetadata = self->_privateClientMetadata;
  coderCopy = coder;
  [coderCopy encodeObject:privateClientMetadata forKey:@"privateClientMetadata"];
  [coderCopy encodeObject:self->_contactIDsInProximity forKey:@"contactIDsInProximity"];
  [coderCopy encodeInteger:self->_sharedLibraryMode forKey:@"sharedLibraryMode"];
  [coderCopy encodeObject:self->_sharedLibraryDiagnostics forKey:@"sharedLibraryDiagnostics"];
}

- (PFCameraClientMetadata)initWithPrivateClientMetadata:(id)metadata contactIDsInProximity:(id)proximity sharedLibraryMode:(int64_t)mode
{
  metadataCopy = metadata;
  proximityCopy = proximity;
  v16.receiver = self;
  v16.super_class = PFCameraClientMetadata;
  v11 = [(PFCameraClientMetadata *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_privateClientMetadata, metadata);
    v13 = [proximityCopy copy];
    contactIDsInProximity = v12->_contactIDsInProximity;
    v12->_contactIDsInProximity = v13;

    v12->_sharedLibraryMode = mode;
  }

  return v12;
}

@end