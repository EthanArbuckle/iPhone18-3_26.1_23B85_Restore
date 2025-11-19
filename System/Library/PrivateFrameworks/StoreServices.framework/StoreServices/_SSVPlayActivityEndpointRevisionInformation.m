@interface _SSVPlayActivityEndpointRevisionInformation
- (BOOL)isEqual:(id)a3;
- (_SSVPlayActivityEndpointRevisionInformation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SSVPlayActivityEndpointRevisionInformation

- (unint64_t)hash
{
  v3 = [(NSIndexSet *)self->_additionalPendingRevisionsIndexSet hash];
  revisionVersionToken = self->_revisionVersionToken;
  v5 = self->_currentRevision ^ v3;
  return v5 ^ [(NSString *)revisionVersionToken hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_currentRevision != v4->_currentRevision || (additionalPendingRevisionsIndexSet = self->_additionalPendingRevisionsIndexSet, additionalPendingRevisionsIndexSet != v4->_additionalPendingRevisionsIndexSet) && ![(NSIndexSet *)additionalPendingRevisionsIndexSet isEqualToIndexSet:?])
  {
    v7 = 0;
    goto LABEL_10;
  }

  revisionVersionToken = self->_revisionVersionToken;
  if (revisionVersionToken == v4->_revisionVersionToken)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v7 = [(NSString *)revisionVersionToken isEqualToString:?];
LABEL_10:

  return v7;
}

- (_SSVPlayActivityEndpointRevisionInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"CurrentRevision"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RevisionVersionToken"];
    if ([v6 length])
    {
      v7 = [(_SSVPlayActivityEndpointRevisionInformation *)self init];
      if (v7)
      {
        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AdditionalPendingRevisions"];
        additionalPendingRevisionsIndexSet = v7->_additionalPendingRevisionsIndexSet;
        v7->_additionalPendingRevisionsIndexSet = v8;
        v10 = v8;

        v7->_currentRevision = v5;
        objc_storeStrong(&v7->_revisionVersionToken, v6);
      }

      self = v7;
      v5 = self;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  additionalPendingRevisionsIndexSet = self->_additionalPendingRevisionsIndexSet;
  v5 = a3;
  [v5 encodeObject:additionalPendingRevisionsIndexSet forKey:@"AdditionalPendingRevisions"];
  [v5 encodeInt64:self->_currentRevision forKey:@"CurrentRevision"];
  [v5 encodeObject:self->_revisionVersionToken forKey:@"RevisionVersionToken"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_additionalPendingRevisionsIndexSet);
    *(v5 + 16) = self->_currentRevision;
    objc_storeStrong((v5 + 24), self->_revisionVersionToken);
  }

  return v5;
}

@end