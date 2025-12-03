@interface _PSCandidate
+ (id)selfCandidate;
- (BOOL)isEqual:(id)equal;
- (_PSCandidate)initWithCoder:(id)coder;
- (_PSCandidate)initWithDomainId:(id)id derivedIntentId:(id)intentId bundleId:(id)bundleId recipientsId:(id)recipientsId;
- (id)candidateForDeduping;
- (id)candidateIdentifier;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)populateIsSystemBundleId;
@end

@implementation _PSCandidate

- (_PSCandidate)initWithDomainId:(id)id derivedIntentId:(id)intentId bundleId:(id)bundleId recipientsId:(id)recipientsId
{
  idCopy = id;
  intentIdCopy = intentId;
  bundleIdCopy = bundleId;
  recipientsIdCopy = recipientsId;
  v24.receiver = self;
  v24.super_class = _PSCandidate;
  v14 = [(_PSCandidate *)&v24 init];
  if (v14)
  {
    v15 = [idCopy copy];
    domainId = v14->_domainId;
    v14->_domainId = v15;

    v17 = [intentIdCopy copy];
    derivedIntentId = v14->_derivedIntentId;
    v14->_derivedIntentId = v17;

    v19 = [bundleIdCopy copy];
    bundleId = v14->_bundleId;
    v14->_bundleId = v19;

    v21 = [recipientsIdCopy copy];
    recipientsId = v14->_recipientsId;
    v14->_recipientsId = v21;

    [(_PSCandidate *)v14 populateIsSystemBundleId];
  }

  return v14;
}

- (_PSCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _PSCandidate;
  v5 = [(_PSCandidate *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainId"];
    domainId = v5->_domainId;
    v5->_domainId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"derivedIntentId"];
    derivedIntentId = v5->_derivedIntentId;
    v5->_derivedIntentId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientsId"];
    recipientsId = v5->_recipientsId;
    v5->_recipientsId = v12;

    [(_PSCandidate *)v5 populateIsSystemBundleId];
    v14 = v5;
  }

  return v5;
}

- (void)populateIsSystemBundleId
{
  v3 = +[_PSConstants systemBundleIds];
  self->_isSystemBundleId = [v3 containsObject:self->_bundleId];
}

- (void)encodeWithCoder:(id)coder
{
  domainId = self->_domainId;
  coderCopy = coder;
  [coderCopy encodeObject:domainId forKey:@"domainId"];
  [coderCopy encodeObject:self->_derivedIntentId forKey:@"derivedIntentId"];
  [coderCopy encodeObject:self->_bundleId forKey:@"bundleId"];
  [coderCopy encodeObject:self->_recipientsId forKey:@"recipientsId"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  candidateIdentifier = [(_PSCandidate *)self candidateIdentifier];
  v5 = [v3 initWithFormat:@"%@_%@", candidateIdentifier, self->_bundleId];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domainId hash];
  v4 = [(NSString *)self->_derivedIntentId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_recipientsId hash]- v4 + 32 * v4;
  return [(NSString *)self->_bundleId hash]- v5 + 32 * v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_domainId;
      v7 = v6;
      if (v6 == v5->_domainId)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v10 = self->_derivedIntentId;
      v11 = v10;
      if (v10 == v5->_derivedIntentId)
      {
      }

      else
      {
        v12 = [(NSString *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v13 = self->_recipientsId;
      v14 = v13;
      if (v13 == v5->_recipientsId)
      {
      }

      else
      {
        v15 = [(NSString *)v13 isEqual:?];

        if ((v15 & 1) == 0)
        {
LABEL_15:
          v9 = 0;
LABEL_21:

          goto LABEL_22;
        }
      }

      v16 = self->_bundleId;
      v17 = v16;
      if (v16 == v5->_bundleId)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSString *)v16 isEqual:?];
      }

      goto LABEL_21;
    }

    v9 = 0;
  }

LABEL_22:

  return v9;
}

- (id)candidateIdentifier
{
  if (self->_isSystemBundleId)
  {
    domainId = self->_domainId;
    if (!domainId)
    {
      goto LABEL_5;
    }
  }

  else
  {
    domainId = self->_derivedIntentId;
    if (!domainId)
    {
LABEL_5:
      domainId = self->_recipientsId;
    }
  }

  return domainId;
}

- (id)candidateForDeduping
{
  isSystemBundleId = self->_isSystemBundleId;
  v4 = [_PSCandidate alloc];
  if (isSystemBundleId)
  {
    domainId = self->_domainId;
    derivedIntentId = 0;
  }

  else
  {
    derivedIntentId = self->_derivedIntentId;
    domainId = 0;
  }

  v7 = [(_PSCandidate *)v4 initWithDomainId:domainId derivedIntentId:derivedIntentId bundleId:self->_bundleId recipientsId:self->_recipientsId];
  if ([(_PSCandidate *)v7 isEqual:self])
  {
    selfCopy = self;

    v7 = selfCopy;
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  candidateIdentifier = [(_PSCandidate *)self candidateIdentifier];
  candidateIdentifier2 = [compareCopy candidateIdentifier];

  v7 = [candidateIdentifier compare:candidateIdentifier2];
  return v7;
}

+ (id)selfCandidate
{
  if (selfCandidate__pasOnceToken2 != -1)
  {
    +[_PSCandidate selfCandidate];
  }

  v3 = selfCandidate__pasExprOnceResult;

  return v3;
}

@end