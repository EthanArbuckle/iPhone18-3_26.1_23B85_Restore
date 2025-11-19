@interface SFMailResultDetails
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMailResultDetails)initWithCoder:(id)a3;
- (SFMailResultDetails)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMailResultDetails

- (SFMailResultDetails)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFMailResultDetails;
  v5 = [(SFMailResultDetails *)&v12 init];
  if (v5)
  {
    if ([v4 dataSources])
    {
      -[SFMailResultDetails setDataSources:](v5, "setDataSources:", [v4 dataSources]);
    }

    [v4 suggestionScore];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [v4 suggestionScore];
      v8 = [v7 numberWithFloat:?];
      [(SFMailResultDetails *)v5 setSuggestionScore:v8];
    }

    if ([v4 skgMegadomeSpotlightIndexEntries])
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "skgMegadomeSpotlightIndexEntries")}];
      [(SFMailResultDetails *)v5 setSkgMegadomeSpotlightIndexEntries:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFMailResultDetails *)self dataSources];
  v4 = [(SFMailResultDetails *)self suggestionScore];
  v5 = [v4 hash] ^ v3;
  v6 = [(SFMailResultDetails *)self skgMegadomeSpotlightIndexEntries];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFMailResultDetails *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFMailResultDetails *)self dataSources];
      if (v7 != [(SFMailResultDetails *)v6 dataSources])
      {
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v8 = [(SFMailResultDetails *)self suggestionScore];
      v9 = [(SFMailResultDetails *)v6 suggestionScore];
      if ((v8 != 0) == (v9 == 0))
      {
        v12 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v10 = [(SFMailResultDetails *)self suggestionScore];
      if (v10)
      {
        v3 = [(SFMailResultDetails *)self suggestionScore];
        v11 = [(SFMailResultDetails *)v6 suggestionScore];
        if (![v3 isEqual:v11])
        {
          v12 = 0;
LABEL_19:

LABEL_20:
          goto LABEL_21;
        }

        v22 = v11;
      }

      v13 = [(SFMailResultDetails *)self skgMegadomeSpotlightIndexEntries];
      v14 = [(SFMailResultDetails *)v6 skgMegadomeSpotlightIndexEntries];
      v15 = v14;
      if ((v13 != 0) == (v14 == 0))
      {

        v12 = 0;
      }

      else
      {
        v16 = [(SFMailResultDetails *)self skgMegadomeSpotlightIndexEntries];
        if (v16)
        {
          v17 = v16;
          v20 = [(SFMailResultDetails *)self skgMegadomeSpotlightIndexEntries];
          [(SFMailResultDetails *)v6 skgMegadomeSpotlightIndexEntries];
          v18 = v21 = v3;
          v12 = [v20 isEqual:v18];

          v3 = v21;
        }

        else
        {

          v12 = 1;
        }
      }

      v11 = v22;
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v12 = 0;
  }

LABEL_23:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setDataSources:{-[SFMailResultDetails dataSources](self, "dataSources")}];
  v5 = [(SFMailResultDetails *)self suggestionScore];
  v6 = [v5 copy];
  [v4 setSuggestionScore:v6];

  v7 = [(SFMailResultDetails *)self skgMegadomeSpotlightIndexEntries];
  v8 = [v7 copy];
  [v4 setSkgMegadomeSpotlightIndexEntries:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMailResultDetails alloc] initWithFacade:self];
  v3 = [(_SFPBMailResultDetails *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMailResultDetails alloc] initWithFacade:self];
  v3 = [(_SFPBMailResultDetails *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBMailResultDetails alloc] initWithFacade:self];
  v5 = [(_SFPBMailResultDetails *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFMailResultDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMailResultDetails alloc] initWithData:v5];
  v7 = [(SFMailResultDetails *)self initWithProtobuf:v6];

  return v7;
}

@end