@interface ATXEncodedActionSuggestionMetadata
- (ATXEncodedActionSuggestionMetadata)initWithCoder:(id)a3;
- (ATXEncodedActionSuggestionMetadata)initWithEncodedInvocation:(id)a3 encodedSummary:(id)a4 canonicalActionID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXEncodedActionSuggestionMetadata

- (ATXEncodedActionSuggestionMetadata)initWithEncodedInvocation:(id)a3 encodedSummary:(id)a4 canonicalActionID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ATXEncodedActionSuggestionMetadata;
  v12 = [(ATXEncodedActionSuggestionMetadata *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_encodedInvocation, a3);
    objc_storeStrong(&v13->_encodedSummary, a4);
    v14 = [v11 copy];
    canonicalActionID = v13->_canonicalActionID;
    v13->_canonicalActionID = v14;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ATXEncodedActionSuggestionMetadata *)self encodedInvocation];
  v6 = [(ATXEncodedActionSuggestionMetadata *)self encodedSummary];
  v7 = [(ATXEncodedActionSuggestionMetadata *)self canonicalActionID];
  v8 = [v4 initWithEncodedInvocation:v5 encodedSummary:v6 canonicalActionID:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATXEncodedActionSuggestionMetadata *)v5 encodedInvocation];
      v7 = [(ATXEncodedActionSuggestionMetadata *)self encodedInvocation];
      v8 = [v6 isEqual:v7];

      if (v8 && (-[ATXEncodedActionSuggestionMetadata encodedSummary](v5, "encodedSummary"), v9 = objc_claimAutoreleasedReturnValue(), -[ATXEncodedActionSuggestionMetadata encodedSummary](self, "encodedSummary"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        v12 = [(ATXEncodedActionSuggestionMetadata *)v5 canonicalActionID];
        v13 = [(ATXEncodedActionSuggestionMetadata *)self canonicalActionID];
        v14 = [v12 isEqual:v13];
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

- (void)encodeWithCoder:(id)a3
{
  encodedInvocation = self->_encodedInvocation;
  v5 = a3;
  [v5 encodeObject:encodedInvocation forKey:@"encodedInvocation"];
  [v5 encodeObject:self->_encodedSummary forKey:@"encodedSummary"];
  [v5 encodeObject:self->_canonicalActionID forKey:@"canonicalActionID"];
}

- (ATXEncodedActionSuggestionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ATXEncodedActionSuggestionMetadata;
  v5 = [(ATXEncodedActionSuggestionMetadata *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encodedInvocation"];
    encodedInvocation = v5->_encodedInvocation;
    v5->_encodedInvocation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encodedSummary"];
    encodedSummary = v5->_encodedSummary;
    v5->_encodedSummary = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"canonicalActionID"];
    canonicalActionID = v5->_canonicalActionID;
    v5->_canonicalActionID = v10;
  }

  return v5;
}

@end