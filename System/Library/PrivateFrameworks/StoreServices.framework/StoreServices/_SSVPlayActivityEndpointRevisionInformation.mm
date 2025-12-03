@interface _SSVPlayActivityEndpointRevisionInformation
- (BOOL)isEqual:(id)equal;
- (_SSVPlayActivityEndpointRevisionInformation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SSVPlayActivityEndpointRevisionInformation

- (unint64_t)hash
{
  v3 = [(NSIndexSet *)self->_additionalPendingRevisionsIndexSet hash];
  revisionVersionToken = self->_revisionVersionToken;
  v5 = self->_currentRevision ^ v3;
  return v5 ^ [(NSString *)revisionVersionToken hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_currentRevision != equalCopy->_currentRevision || (additionalPendingRevisionsIndexSet = self->_additionalPendingRevisionsIndexSet, additionalPendingRevisionsIndexSet != equalCopy->_additionalPendingRevisionsIndexSet) && ![(NSIndexSet *)additionalPendingRevisionsIndexSet isEqualToIndexSet:?])
  {
    v7 = 0;
    goto LABEL_10;
  }

  revisionVersionToken = self->_revisionVersionToken;
  if (revisionVersionToken == equalCopy->_revisionVersionToken)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v7 = [(NSString *)revisionVersionToken isEqualToString:?];
LABEL_10:

  return v7;
}

- (_SSVPlayActivityEndpointRevisionInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = [coderCopy decodeInt64ForKey:@"CurrentRevision"];
  if (selfCopy)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RevisionVersionToken"];
    if ([v6 length])
    {
      v7 = [(_SSVPlayActivityEndpointRevisionInformation *)self init];
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AdditionalPendingRevisions"];
        additionalPendingRevisionsIndexSet = v7->_additionalPendingRevisionsIndexSet;
        v7->_additionalPendingRevisionsIndexSet = v8;
        v10 = v8;

        v7->_currentRevision = selfCopy;
        objc_storeStrong(&v7->_revisionVersionToken, v6);
      }

      self = v7;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  additionalPendingRevisionsIndexSet = self->_additionalPendingRevisionsIndexSet;
  coderCopy = coder;
  [coderCopy encodeObject:additionalPendingRevisionsIndexSet forKey:@"AdditionalPendingRevisions"];
  [coderCopy encodeInt64:self->_currentRevision forKey:@"CurrentRevision"];
  [coderCopy encodeObject:self->_revisionVersionToken forKey:@"RevisionVersionToken"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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