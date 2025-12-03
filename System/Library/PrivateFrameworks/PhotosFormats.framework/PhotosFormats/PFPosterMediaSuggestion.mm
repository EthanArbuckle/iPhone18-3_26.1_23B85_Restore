@interface PFPosterMediaSuggestion
- (BOOL)isEqual:(id)equal;
- (PFPosterMediaSuggestion)initWithAssetUUID:(id)d suggestionUUID:(id)iD suggestionSubtype:(unsigned __int16)subtype;
- (PFPosterMediaSuggestion)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFPosterMediaSuggestion

- (PFPosterMediaSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PFPosterMediaSuggestion;
  v5 = [(PFPosterMedia *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestionUUID"];
    suggestionUUID = v5->_suggestionUUID;
    v5->_suggestionUUID = v6;

    v5->_suggestionSubtype = [coderCopy decodeIntForKey:@"suggestionSubtype"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PFPosterMediaSuggestion;
  coderCopy = coder;
  [(PFPosterMedia *)&v6 encodeWithCoder:coderCopy];
  v5 = [(PFPosterMediaSuggestion *)self suggestionUUID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"suggestionUUID"];

  [coderCopy encodeInt:-[PFPosterMediaSuggestion suggestionSubtype](self forKey:{"suggestionSubtype"), @"suggestionSubtype"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v10.receiver = self;
      v10.super_class = PFPosterMediaSuggestion;
      if ([(PFPosterMedia *)&v10 isEqual:v5])
      {
        suggestionUUID = [(PFPosterMediaSuggestion *)self suggestionUUID];
        suggestionUUID2 = [(PFPosterMediaSuggestion *)v5 suggestionUUID];
        if (suggestionUUID == suggestionUUID2)
        {
          v8 = 1;
        }

        else
        {
          v8 = [suggestionUUID isEqual:suggestionUUID2];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PFPosterMediaSuggestion;
  v3 = [(PFPosterMedia *)&v7 hash];
  suggestionUUID = [(PFPosterMediaSuggestion *)self suggestionUUID];
  v5 = v3 ^ (2 * [suggestionUUID hash]);

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = PFPosterMediaSuggestion;
  v4 = [(PFPosterMedia *)&v7 copyWithZone:zone];
  suggestionUUID = [(PFPosterMediaSuggestion *)self suggestionUUID];
  [v4 setSuggestionUUID:suggestionUUID];

  [v4 setSuggestionSubtype:{-[PFPosterMediaSuggestion suggestionSubtype](self, "suggestionSubtype")}];
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = PFPosterMediaSuggestion;
  v4 = [(PFPosterMedia *)&v8 description];
  suggestionUUID = [(PFPosterMediaSuggestion *)self suggestionUUID];
  v6 = [v3 initWithFormat:@"<%@ suggestionUUID: %@; subtype: %hu>", v4, suggestionUUID, -[PFPosterMediaSuggestion suggestionSubtype](self, "suggestionSubtype")];

  return v6;
}

- (PFPosterMediaSuggestion)initWithAssetUUID:(id)d suggestionUUID:(id)iD suggestionSubtype:(unsigned __int16)subtype
{
  subtypeCopy = subtype;
  dCopy = d;
  iDCopy = iD;
  v13.receiver = self;
  v13.super_class = PFPosterMediaSuggestion;
  v10 = [(PFPosterMedia *)&v13 initWithAssetUUID:dCopy];
  v11 = v10;
  if (v10)
  {
    [(PFPosterMedia *)v10 setMediaType:2];
    [(PFPosterMediaSuggestion *)v11 setSuggestionUUID:iDCopy];
    [(PFPosterMedia *)v11 setSubpath:dCopy];
    [(PFPosterMediaSuggestion *)v11 setSuggestionSubtype:subtypeCopy];
  }

  return v11;
}

@end