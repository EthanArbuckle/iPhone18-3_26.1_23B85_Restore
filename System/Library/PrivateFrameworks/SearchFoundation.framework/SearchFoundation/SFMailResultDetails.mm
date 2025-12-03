@interface SFMailResultDetails
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMailResultDetails)initWithCoder:(id)coder;
- (SFMailResultDetails)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMailResultDetails

- (SFMailResultDetails)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFMailResultDetails;
  v5 = [(SFMailResultDetails *)&v12 init];
  if (v5)
  {
    if ([protobufCopy dataSources])
    {
      -[SFMailResultDetails setDataSources:](v5, "setDataSources:", [protobufCopy dataSources]);
    }

    [protobufCopy suggestionScore];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [protobufCopy suggestionScore];
      v8 = [v7 numberWithFloat:?];
      [(SFMailResultDetails *)v5 setSuggestionScore:v8];
    }

    if ([protobufCopy skgMegadomeSpotlightIndexEntries])
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "skgMegadomeSpotlightIndexEntries")}];
      [(SFMailResultDetails *)v5 setSkgMegadomeSpotlightIndexEntries:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  dataSources = [(SFMailResultDetails *)self dataSources];
  suggestionScore = [(SFMailResultDetails *)self suggestionScore];
  v5 = [suggestionScore hash] ^ dataSources;
  skgMegadomeSpotlightIndexEntries = [(SFMailResultDetails *)self skgMegadomeSpotlightIndexEntries];
  v7 = [skgMegadomeSpotlightIndexEntries hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFMailResultDetails *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      dataSources = [(SFMailResultDetails *)self dataSources];
      if (dataSources != [(SFMailResultDetails *)v6 dataSources])
      {
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }

      suggestionScore = [(SFMailResultDetails *)self suggestionScore];
      suggestionScore2 = [(SFMailResultDetails *)v6 suggestionScore];
      if ((suggestionScore != 0) == (suggestionScore2 == 0))
      {
        v12 = 0;
LABEL_21:

        goto LABEL_22;
      }

      suggestionScore3 = [(SFMailResultDetails *)self suggestionScore];
      if (suggestionScore3)
      {
        suggestionScore4 = [(SFMailResultDetails *)self suggestionScore];
        suggestionScore5 = [(SFMailResultDetails *)v6 suggestionScore];
        if (![suggestionScore4 isEqual:suggestionScore5])
        {
          v12 = 0;
LABEL_19:

LABEL_20:
          goto LABEL_21;
        }

        v22 = suggestionScore5;
      }

      skgMegadomeSpotlightIndexEntries = [(SFMailResultDetails *)self skgMegadomeSpotlightIndexEntries];
      skgMegadomeSpotlightIndexEntries2 = [(SFMailResultDetails *)v6 skgMegadomeSpotlightIndexEntries];
      v15 = skgMegadomeSpotlightIndexEntries2;
      if ((skgMegadomeSpotlightIndexEntries != 0) == (skgMegadomeSpotlightIndexEntries2 == 0))
      {

        v12 = 0;
      }

      else
      {
        skgMegadomeSpotlightIndexEntries3 = [(SFMailResultDetails *)self skgMegadomeSpotlightIndexEntries];
        if (skgMegadomeSpotlightIndexEntries3)
        {
          v17 = skgMegadomeSpotlightIndexEntries3;
          skgMegadomeSpotlightIndexEntries4 = [(SFMailResultDetails *)self skgMegadomeSpotlightIndexEntries];
          [(SFMailResultDetails *)v6 skgMegadomeSpotlightIndexEntries];
          v18 = v21 = suggestionScore4;
          v12 = [skgMegadomeSpotlightIndexEntries4 isEqual:v18];

          suggestionScore4 = v21;
        }

        else
        {

          v12 = 1;
        }
      }

      suggestionScore5 = v22;
      if (!suggestionScore3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDataSources:{-[SFMailResultDetails dataSources](self, "dataSources")}];
  suggestionScore = [(SFMailResultDetails *)self suggestionScore];
  v6 = [suggestionScore copy];
  [v4 setSuggestionScore:v6];

  skgMegadomeSpotlightIndexEntries = [(SFMailResultDetails *)self skgMegadomeSpotlightIndexEntries];
  v8 = [skgMegadomeSpotlightIndexEntries copy];
  [v4 setSkgMegadomeSpotlightIndexEntries:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMailResultDetails alloc] initWithFacade:self];
  jsonData = [(_SFPBMailResultDetails *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMailResultDetails alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMailResultDetails *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBMailResultDetails alloc] initWithFacade:self];
  data = [(_SFPBMailResultDetails *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFMailResultDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMailResultDetails alloc] initWithData:v5];
  v7 = [(SFMailResultDetails *)self initWithProtobuf:v6];

  return v7;
}

@end