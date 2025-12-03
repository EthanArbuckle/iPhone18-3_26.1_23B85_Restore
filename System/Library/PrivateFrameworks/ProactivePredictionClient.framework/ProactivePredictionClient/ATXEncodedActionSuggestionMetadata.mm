@interface ATXEncodedActionSuggestionMetadata
- (ATXEncodedActionSuggestionMetadata)initWithCoder:(id)coder;
- (ATXEncodedActionSuggestionMetadata)initWithEncodedInvocation:(id)invocation encodedSummary:(id)summary canonicalActionID:(id)d;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXEncodedActionSuggestionMetadata

- (ATXEncodedActionSuggestionMetadata)initWithEncodedInvocation:(id)invocation encodedSummary:(id)summary canonicalActionID:(id)d
{
  invocationCopy = invocation;
  summaryCopy = summary;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = ATXEncodedActionSuggestionMetadata;
  v12 = [(ATXEncodedActionSuggestionMetadata *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_encodedInvocation, invocation);
    objc_storeStrong(&v13->_encodedSummary, summary);
    v14 = [dCopy copy];
    canonicalActionID = v13->_canonicalActionID;
    v13->_canonicalActionID = v14;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  encodedInvocation = [(ATXEncodedActionSuggestionMetadata *)self encodedInvocation];
  encodedSummary = [(ATXEncodedActionSuggestionMetadata *)self encodedSummary];
  canonicalActionID = [(ATXEncodedActionSuggestionMetadata *)self canonicalActionID];
  v8 = [v4 initWithEncodedInvocation:encodedInvocation encodedSummary:encodedSummary canonicalActionID:canonicalActionID];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      encodedInvocation = [(ATXEncodedActionSuggestionMetadata *)v5 encodedInvocation];
      encodedInvocation2 = [(ATXEncodedActionSuggestionMetadata *)self encodedInvocation];
      v8 = [encodedInvocation isEqual:encodedInvocation2];

      if (v8 && (-[ATXEncodedActionSuggestionMetadata encodedSummary](v5, "encodedSummary"), v9 = objc_claimAutoreleasedReturnValue(), -[ATXEncodedActionSuggestionMetadata encodedSummary](self, "encodedSummary"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        canonicalActionID = [(ATXEncodedActionSuggestionMetadata *)v5 canonicalActionID];
        canonicalActionID2 = [(ATXEncodedActionSuggestionMetadata *)self canonicalActionID];
        v14 = [canonicalActionID isEqual:canonicalActionID2];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  encodedInvocation = self->_encodedInvocation;
  coderCopy = coder;
  [coderCopy encodeObject:encodedInvocation forKey:@"encodedInvocation"];
  [coderCopy encodeObject:self->_encodedSummary forKey:@"encodedSummary"];
  [coderCopy encodeObject:self->_canonicalActionID forKey:@"canonicalActionID"];
}

- (ATXEncodedActionSuggestionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ATXEncodedActionSuggestionMetadata;
  v5 = [(ATXEncodedActionSuggestionMetadata *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedInvocation"];
    encodedInvocation = v5->_encodedInvocation;
    v5->_encodedInvocation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedSummary"];
    encodedSummary = v5->_encodedSummary;
    v5->_encodedSummary = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"canonicalActionID"];
    canonicalActionID = v5->_canonicalActionID;
    v5->_canonicalActionID = v10;
  }

  return v5;
}

@end