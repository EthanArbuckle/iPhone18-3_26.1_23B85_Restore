@interface PLPhotoLibrarySearchCriteria
- (PLPhotoLibrarySearchCriteria)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLPhotoLibrarySearchCriteria

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uuid = [(PLPhotoLibrarySearchCriteria *)self uuid];
  [v4 setUuid:uuid];

  [v4 setDomain:{-[PLPhotoLibrarySearchCriteria domain](self, "domain")}];
  containerIdentifier = [(PLPhotoLibrarySearchCriteria *)self containerIdentifier];
  [v4 setContainerIdentifier:containerIdentifier];

  internalTestOptions = [(PLPhotoLibrarySearchCriteria *)self internalTestOptions];
  [v4 setInternalTestOptions:internalTestOptions];

  return v4;
}

- (PLPhotoLibrarySearchCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PLPhotoLibrarySearchCriteria;
  v5 = [(PLPhotoLibrarySearchCriteria *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_domain = [coderCopy decodeIntegerForKey:@"domain"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"internalTestOptions"];
    internalTestOptions = v5->_internalTestOptions;
    v5->_internalTestOptions = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(PLPhotoLibrarySearchCriteria *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  [coderCopy encodeInteger:-[PLPhotoLibrarySearchCriteria domain](self forKey:{"domain"), @"domain"}];
  containerIdentifier = [(PLPhotoLibrarySearchCriteria *)self containerIdentifier];
  [coderCopy encodeObject:containerIdentifier forKey:@"containerIdentifier"];

  internalTestOptions = [(PLPhotoLibrarySearchCriteria *)self internalTestOptions];
  [coderCopy encodeObject:internalTestOptions forKey:@"internalTestOptions"];
}

- (id)debugDescription
{
  v12.receiver = self;
  v12.super_class = PLPhotoLibrarySearchCriteria;
  v3 = [(PLPhotoLibrarySearchCriteria *)&v12 description];
  uuid = [(PLPhotoLibrarySearchCriteria *)self uuid];
  domain = [(PLPhotoLibrarySearchCriteria *)self domain];
  containerIdentifier = [(PLPhotoLibrarySearchCriteria *)self containerIdentifier];
  internalTestOptions = [(PLPhotoLibrarySearchCriteria *)self internalTestOptions];
  v8 = internalTestOptions;
  v9 = &stru_1F0F06D80;
  if (internalTestOptions)
  {
    v9 = internalTestOptions;
  }

  v10 = [v3 stringByAppendingFormat:@": UUID:[%@] domain:[%d] container:[%@] %@", uuid, domain, containerIdentifier, v9];

  return v10;
}

@end