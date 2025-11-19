@interface PFPosterMediaSuggestion
- (BOOL)isEqual:(id)a3;
- (PFPosterMediaSuggestion)initWithAssetUUID:(id)a3 suggestionUUID:(id)a4 suggestionSubtype:(unsigned __int16)a5;
- (PFPosterMediaSuggestion)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFPosterMediaSuggestion

- (PFPosterMediaSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PFPosterMediaSuggestion;
  v5 = [(PFPosterMedia *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionUUID"];
    suggestionUUID = v5->_suggestionUUID;
    v5->_suggestionUUID = v6;

    v5->_suggestionSubtype = [v4 decodeIntForKey:@"suggestionSubtype"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PFPosterMediaSuggestion;
  v4 = a3;
  [(PFPosterMedia *)&v6 encodeWithCoder:v4];
  v5 = [(PFPosterMediaSuggestion *)self suggestionUUID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"suggestionUUID"];

  [v4 encodeInt:-[PFPosterMediaSuggestion suggestionSubtype](self forKey:{"suggestionSubtype"), @"suggestionSubtype"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v10.receiver = self;
      v10.super_class = PFPosterMediaSuggestion;
      if ([(PFPosterMedia *)&v10 isEqual:v5])
      {
        v6 = [(PFPosterMediaSuggestion *)self suggestionUUID];
        v7 = [(PFPosterMediaSuggestion *)v5 suggestionUUID];
        if (v6 == v7)
        {
          v8 = 1;
        }

        else
        {
          v8 = [v6 isEqual:v7];
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
  v4 = [(PFPosterMediaSuggestion *)self suggestionUUID];
  v5 = v3 ^ (2 * [v4 hash]);

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = PFPosterMediaSuggestion;
  v4 = [(PFPosterMedia *)&v7 copyWithZone:a3];
  v5 = [(PFPosterMediaSuggestion *)self suggestionUUID];
  [v4 setSuggestionUUID:v5];

  [v4 setSuggestionSubtype:{-[PFPosterMediaSuggestion suggestionSubtype](self, "suggestionSubtype")}];
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = PFPosterMediaSuggestion;
  v4 = [(PFPosterMedia *)&v8 description];
  v5 = [(PFPosterMediaSuggestion *)self suggestionUUID];
  v6 = [v3 initWithFormat:@"<%@ suggestionUUID: %@; subtype: %hu>", v4, v5, -[PFPosterMediaSuggestion suggestionSubtype](self, "suggestionSubtype")];

  return v6;
}

- (PFPosterMediaSuggestion)initWithAssetUUID:(id)a3 suggestionUUID:(id)a4 suggestionSubtype:(unsigned __int16)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PFPosterMediaSuggestion;
  v10 = [(PFPosterMedia *)&v13 initWithAssetUUID:v8];
  v11 = v10;
  if (v10)
  {
    [(PFPosterMedia *)v10 setMediaType:2];
    [(PFPosterMediaSuggestion *)v11 setSuggestionUUID:v9];
    [(PFPosterMedia *)v11 setSubpath:v8];
    [(PFPosterMediaSuggestion *)v11 setSuggestionSubtype:v5];
  }

  return v11;
}

@end