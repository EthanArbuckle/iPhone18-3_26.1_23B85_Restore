@interface PLSharedAssetsContainerIncrementalChangeHighlightContainerChange
- (BOOL)isEqual:(id)a3;
- (PLSharedAssetsContainerIncrementalChangeHighlightContainerChange)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLSharedAssetsContainerIncrementalChangeHighlightContainerChange

- (unint64_t)hash
{
  v3 = [(NSString *)self->_relationshipKey hash];
  v4 = [(NSURL *)self->_sourceHighlightURI hash]^ v3;
  return v4 ^ [(NSURL *)self->_destinationHighlightURI hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)self relationshipKey];
  [v4 encodeObject:v5 forKey:@"relationshipKey"];

  v6 = [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)self sourceHighlightURI];
  [v4 encodeObject:v6 forKey:@"sourceHighlightURI"];

  v7 = [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)self destinationHighlightURI];
  [v4 encodeObject:v7 forKey:@"destinationHighlightURI"];
}

- (PLSharedAssetsContainerIncrementalChangeHighlightContainerChange)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PLSharedAssetsContainerIncrementalChangeHighlightContainerChange;
  v5 = [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relationshipKey"];
    relationshipKey = v5->_relationshipKey;
    v5->_relationshipKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceHighlightURI"];
    sourceHighlightURI = v5->_sourceHighlightURI;
    v5->_sourceHighlightURI = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationHighlightURI"];
    destinationHighlightURI = v5->_destinationHighlightURI;
    v5->_destinationHighlightURI = v10;
  }

  return v5;
}

@end