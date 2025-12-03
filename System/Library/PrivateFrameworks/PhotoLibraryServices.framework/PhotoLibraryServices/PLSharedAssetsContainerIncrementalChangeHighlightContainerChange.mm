@interface PLSharedAssetsContainerIncrementalChangeHighlightContainerChange
- (BOOL)isEqual:(id)equal;
- (PLSharedAssetsContainerIncrementalChangeHighlightContainerChange)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLSharedAssetsContainerIncrementalChangeHighlightContainerChange

- (unint64_t)hash
{
  v3 = [(NSString *)self->_relationshipKey hash];
  v4 = [(NSURL *)self->_sourceHighlightURI hash]^ v3;
  return v4 ^ [(NSURL *)self->_destinationHighlightURI hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (PLObjectIsEqual() && PLObjectIsEqual())
      {
        IsEqual = PLObjectIsEqual();
      }

      else
      {
        IsEqual = 0;
      }
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSString *)self->_relationshipKey copy];
  [v4 setRelationshipKey:v5];

  v6 = [(NSURL *)self->_sourceHighlightURI copy];
  [v4 setSourceHighlightURI:v6];

  v7 = [(NSURL *)self->_destinationHighlightURI copy];
  [v4 setDestinationHighlightURI:v7];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  relationshipKey = [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)self relationshipKey];
  [coderCopy encodeObject:relationshipKey forKey:@"relationshipKey"];

  sourceHighlightURI = [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)self sourceHighlightURI];
  [coderCopy encodeObject:sourceHighlightURI forKey:@"sourceHighlightURI"];

  destinationHighlightURI = [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)self destinationHighlightURI];
  [coderCopy encodeObject:destinationHighlightURI forKey:@"destinationHighlightURI"];
}

- (PLSharedAssetsContainerIncrementalChangeHighlightContainerChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PLSharedAssetsContainerIncrementalChangeHighlightContainerChange;
  v5 = [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relationshipKey"];
    relationshipKey = v5->_relationshipKey;
    v5->_relationshipKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceHighlightURI"];
    sourceHighlightURI = v5->_sourceHighlightURI;
    v5->_sourceHighlightURI = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationHighlightURI"];
    destinationHighlightURI = v5->_destinationHighlightURI;
    v5->_destinationHighlightURI = v10;
  }

  return v5;
}

@end