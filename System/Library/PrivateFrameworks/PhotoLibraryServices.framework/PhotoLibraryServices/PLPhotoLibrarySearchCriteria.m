@interface PLPhotoLibrarySearchCriteria
- (PLPhotoLibrarySearchCriteria)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLPhotoLibrarySearchCriteria

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(PLPhotoLibrarySearchCriteria *)self uuid];
  [v4 setUuid:v5];

  [v4 setDomain:{-[PLPhotoLibrarySearchCriteria domain](self, "domain")}];
  v6 = [(PLPhotoLibrarySearchCriteria *)self containerIdentifier];
  [v4 setContainerIdentifier:v6];

  v7 = [(PLPhotoLibrarySearchCriteria *)self internalTestOptions];
  [v4 setInternalTestOptions:v7];

  return v4;
}

- (PLPhotoLibrarySearchCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PLPhotoLibrarySearchCriteria;
  v5 = [(PLPhotoLibrarySearchCriteria *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_domain = [v4 decodeIntegerForKey:@"domain"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"internalTestOptions"];
    internalTestOptions = v5->_internalTestOptions;
    v5->_internalTestOptions = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoLibrarySearchCriteria *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  [v4 encodeInteger:-[PLPhotoLibrarySearchCriteria domain](self forKey:{"domain"), @"domain"}];
  v6 = [(PLPhotoLibrarySearchCriteria *)self containerIdentifier];
  [v4 encodeObject:v6 forKey:@"containerIdentifier"];

  v7 = [(PLPhotoLibrarySearchCriteria *)self internalTestOptions];
  [v4 encodeObject:v7 forKey:@"internalTestOptions"];
}

- (id)debugDescription
{
  v12.receiver = self;
  v12.super_class = PLPhotoLibrarySearchCriteria;
  v3 = [(PLPhotoLibrarySearchCriteria *)&v12 description];
  v4 = [(PLPhotoLibrarySearchCriteria *)self uuid];
  v5 = [(PLPhotoLibrarySearchCriteria *)self domain];
  v6 = [(PLPhotoLibrarySearchCriteria *)self containerIdentifier];
  v7 = [(PLPhotoLibrarySearchCriteria *)self internalTestOptions];
  v8 = v7;
  v9 = &stru_1F0F06D80;
  if (v7)
  {
    v9 = v7;
  }

  v10 = [v3 stringByAppendingFormat:@": UUID:[%@] domain:[%d] container:[%@] %@", v4, v5, v6, v9];

  return v10;
}

@end