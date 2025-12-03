@interface _SFPBMailResultDetails
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMailResultDetails)initWithDictionary:(id)dictionary;
- (_SFPBMailResultDetails)initWithFacade:(id)facade;
- (_SFPBMailResultDetails)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMailResultDetails

- (_SFPBMailResultDetails)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBMailResultDetails *)self init];
  if (v5)
  {
    if ([facadeCopy hasDataSources])
    {
      -[_SFPBMailResultDetails setDataSources:](v5, "setDataSources:", [facadeCopy dataSources]);
    }

    suggestionScore = [facadeCopy suggestionScore];

    if (suggestionScore)
    {
      suggestionScore2 = [facadeCopy suggestionScore];
      [suggestionScore2 floatValue];
      [(_SFPBMailResultDetails *)v5 setSuggestionScore:?];
    }

    skgMegadomeSpotlightIndexEntries = [facadeCopy skgMegadomeSpotlightIndexEntries];

    if (skgMegadomeSpotlightIndexEntries)
    {
      skgMegadomeSpotlightIndexEntries2 = [facadeCopy skgMegadomeSpotlightIndexEntries];
      -[_SFPBMailResultDetails setSkgMegadomeSpotlightIndexEntries:](v5, "setSkgMegadomeSpotlightIndexEntries:", [skgMegadomeSpotlightIndexEntries2 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBMailResultDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBMailResultDetails;
  v5 = [(_SFPBMailResultDetails *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dataSources"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailResultDetails setDataSources:](v5, "setDataSources:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"suggestionScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(_SFPBMailResultDetails *)v5 setSuggestionScore:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"skgMegadomeSpotlightIndexEntries"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailResultDetails setSkgMegadomeSpotlightIndexEntries:](v5, "setSkgMegadomeSpotlightIndexEntries:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBMailResultDetails)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMailResultDetails *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMailResultDetails *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_dataSources)
  {
    dataSources = [(_SFPBMailResultDetails *)self dataSources];
    if (dataSources >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", dataSources];
    }

    else
    {
      v5 = off_1E7ACE560[dataSources];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"dataSources"];
  }

  if (self->_skgMegadomeSpotlightIndexEntries)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBMailResultDetails skgMegadomeSpotlightIndexEntries](self, "skgMegadomeSpotlightIndexEntries")}];
    [dictionary setObject:v6 forKeyedSubscript:@"skgMegadomeSpotlightIndexEntries"];
  }

  if (self->_suggestionScore != 0.0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(_SFPBMailResultDetails *)self suggestionScore];
    v8 = [v7 numberWithFloat:?];
    [dictionary setObject:v8 forKeyedSubscript:@"suggestionScore"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  suggestionScore = self->_suggestionScore;
  v5 = suggestionScore < 0.0;
  if (suggestionScore == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v6 = suggestionScore;
    if (v5)
    {
      v6 = -v6;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  return v9 ^ (2654435761 * self->_dataSources) ^ (2654435761 * self->_skgMegadomeSpotlightIndexEntries);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (dataSources = self->_dataSources, dataSources == objc_msgSend(equalCopy, "dataSources")) && (suggestionScore = self->_suggestionScore, objc_msgSend(equalCopy, "suggestionScore"), suggestionScore == v7))
  {
    skgMegadomeSpotlightIndexEntries = self->_skgMegadomeSpotlightIndexEntries;
    v8 = skgMegadomeSpotlightIndexEntries == [equalCopy skgMegadomeSpotlightIndexEntries];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBMailResultDetails *)self dataSources])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_SFPBMailResultDetails *)self suggestionScore];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  skgMegadomeSpotlightIndexEntries = [(_SFPBMailResultDetails *)self skgMegadomeSpotlightIndexEntries];
  v6 = toCopy;
  if (skgMegadomeSpotlightIndexEntries)
  {
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
  }
}

@end