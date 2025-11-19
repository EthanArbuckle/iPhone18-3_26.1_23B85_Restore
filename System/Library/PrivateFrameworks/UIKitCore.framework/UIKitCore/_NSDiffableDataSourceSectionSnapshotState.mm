@interface _NSDiffableDataSourceSectionSnapshotState
- (BOOL)isEqual:(id)a3;
- (_NSDiffableDataSourceSectionSnapshotState)init;
- (_NSDiffableDataSourceSectionSnapshotState)initWithSnapshotter:(id)a3 identifiers:(id)a4 identifiersHaveGuaranteedPerformance:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)snapshotterMutableCopy;
- (int64_t)indexOfIdentifier:(id)a3;
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

- (_NSDiffableDataSourceSectionSnapshotState)initWithSnapshotter:(id)a3 identifiers:(id)a4 identifiersHaveGuaranteedPerformance:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _NSDiffableDataSourceSectionSnapshotState;
  v11 = [(_NSDiffableDataSourceSectionSnapshotState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_snapshotter, a3);
    objc_storeStrong(&v12->_identifiers, a4);
    if (a5 || [(NSOrderedSet *)v12->_identifiers count]<= 0xA)
    {
      objc_storeStrong(&v12->_guaranteedPerformanceIdentifiers, v12->_identifiers);
    }
  }

  return v12;
}

- (int64_t)indexOfIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
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

    v8 = [(NSOrderedSet *)identifiers indexOfObject:v4];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      v6 = v4;
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