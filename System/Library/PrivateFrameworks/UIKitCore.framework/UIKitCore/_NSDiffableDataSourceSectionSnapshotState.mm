@interface _NSDiffableDataSourceSectionSnapshotState
- (BOOL)isEqual:(id)equal;
- (_NSDiffableDataSourceSectionSnapshotState)init;
- (_NSDiffableDataSourceSectionSnapshotState)initWithSnapshotter:(id)snapshotter identifiers:(id)identifiers identifiersHaveGuaranteedPerformance:(BOOL)performance;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)snapshotterMutableCopy;
- (int64_t)indexOfIdentifier:(id)identifier;
@end

@implementation _NSDiffableDataSourceSectionSnapshotState

- (_NSDiffableDataSourceSectionSnapshotState)init
{
  v3 = objc_alloc_init(_UITreeDataSourceSnapshotter);
  v4 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  v5 = [(_NSDiffableDataSourceSectionSnapshotState *)self initWithSnapshotter:v3 identifiers:v4 identifiersHaveGuaranteedPerformance:1];

  return v5;
}

- (id)snapshotterMutableCopy
{
  v2 = [(_UITreeDataSourceSnapshotter *)self->_snapshotter copy];

  return v2;
}

- (_NSDiffableDataSourceSectionSnapshotState)initWithSnapshotter:(id)snapshotter identifiers:(id)identifiers identifiersHaveGuaranteedPerformance:(BOOL)performance
{
  snapshotterCopy = snapshotter;
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = _NSDiffableDataSourceSectionSnapshotState;
  v11 = [(_NSDiffableDataSourceSectionSnapshotState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_snapshotter, snapshotter);
    objc_storeStrong(&v12->_identifiers, identifiers);
    if (performance || [(NSOrderedSet *)v12->_identifiers count]<= 0xA)
    {
      objc_storeStrong(&v12->_guaranteedPerformanceIdentifiers, v12->_identifiers);
    }
  }

  return v12;
}

- (int64_t)indexOfIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    identifierLookupCount = self->_identifierLookupCount;
    if (identifierLookupCount < 0xA)
    {
      self->_identifierLookupCount = identifierLookupCount + 1;
    }

    else if (!self->_guaranteedPerformanceIdentifiers)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithOrderedSet:self->_identifiers];
      guaranteedPerformanceIdentifiers = self->_guaranteedPerformanceIdentifiers;
      self->_guaranteedPerformanceIdentifiers = v6;
    }

    identifiers = self->_guaranteedPerformanceIdentifiers;
    if (!identifiers)
    {
      identifiers = self->_identifiers;
    }

    v8 = [(NSOrderedSet *)identifiers indexOfObject:identifierCopy];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (!self->_guaranteedPerformanceIdentifiers)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithOrderedSet:self->_identifiers];
    guaranteedPerformanceIdentifiers = self->_guaranteedPerformanceIdentifiers;
    self->_guaranteedPerformanceIdentifiers = v4;
  }

  v6 = objc_alloc(objc_opt_class());
  v7 = [(_UITreeDataSourceSnapshotter *)self->_snapshotter copy];
  v8 = [(NSOrderedSet *)self->_identifiers copy];
  v9 = [v6 initWithSnapshotter:v7 identifiers:v8];

  if (v9)
  {
    objc_storeStrong(v9 + 2, self->_guaranteedPerformanceIdentifiers);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      v7 = 1;
    }

    else
    {
      v6 = equalCopy;
      objc_opt_class();
      v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UITreeDataSourceSnapshotter *)self->_snapshotter isEqual:v6->_snapshotter]&& [(NSOrderedSet *)self->_identifiers isEqualToOrderedSet:v6->_identifiers];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p: ", v5, self];

  [v3 appendFormat:@"identifiers = %@; snapshotter=%@>", self->_identifiers, self->_snapshotter];

  return v3;
}

@end