@interface PFCameraClientMetadata
- (PFCameraClientMetadata)initWithCoder:(id)a3;
- (PFCameraClientMetadata)initWithPrivateClientMetadata:(id)a3 contactIDsInProximity:(id)a4 sharedLibraryMode:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFCameraClientMetadata

- (PFCameraClientMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PFCameraClientMetadata *)self init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"privateClientMetadata"];
    privateClientMetadata = v5->_privateClientMetadata;
    v5->_privateClientMetadata = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"contactIDsInProximity"];
    contactIDsInProximity = v5->_contactIDsInProximity;
    v5->_contactIDsInProximity = v12;

    v5->_sharedLibraryMode = [v4 decodeIntegerForKey:@"sharedLibraryMode"];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"sharedLibraryDiagnostics"];
    sharedLibraryDiagnostics = v5->_sharedLibraryDiagnostics;
    v5->_sharedLibraryDiagnostics = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  privateClientMetadata = self->_privateClientMetadata;
  v5 = a3;
  [v5 encodeObject:privateClientMetadata forKey:@"privateClientMetadata"];
  [v5 encodeObject:self->_contactIDsInProximity forKey:@"contactIDsInProximity"];
  [v5 encodeInteger:self->_sharedLibraryMode forKey:@"sharedLibraryMode"];
  [v5 encodeObject:self->_sharedLibraryDiagnostics forKey:@"sharedLibraryDiagnostics"];
}

- (PFCameraClientMetadata)initWithPrivateClientMetadata:(id)a3 contactIDsInProximity:(id)a4 sharedLibraryMode:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = PFCameraClientMetadata;
  v11 = [(PFCameraClientMetadata *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_privateClientMetadata, a3);
    v13 = [v10 copy];
    contactIDsInProximity = v12->_contactIDsInProximity;
    v12->_contactIDsInProximity = v13;

    v12->_sharedLibraryMode = a5;
  }

  return v12;
}

@end