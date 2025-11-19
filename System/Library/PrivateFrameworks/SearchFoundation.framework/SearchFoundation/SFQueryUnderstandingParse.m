@interface SFQueryUnderstandingParse
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFQueryUnderstandingParse)initWithCoder:(id)a3;
- (SFQueryUnderstandingParse)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFQueryUnderstandingParse

- (unint64_t)hash
{
  v3 = [(SFQueryUnderstandingParse *)self queryIntentType];
  v4 = [(SFQueryUnderstandingParse *)self hasUnspecifiedTokens]^ v3;
  v5 = [(SFQueryUnderstandingParse *)self hasSortCriteriaTokens];
  v6 = v4 ^ v5 ^ [(SFQueryUnderstandingParse *)self hasLocationTokens];
  v7 = [(SFQueryUnderstandingParse *)self hasActionTokens];
  v8 = v7 ^ [(SFQueryUnderstandingParse *)self hasMediaTypeTokens];
  v9 = v6 ^ v8 ^ [(SFQueryUnderstandingParse *)self hasVisualQualityTokens];
  v10 = [(SFQueryUnderstandingParse *)self hasNounTokens];
  v11 = v10 ^ [(SFQueryUnderstandingParse *)self hasTimeTokens];
  v12 = v11 ^ [(SFQueryUnderstandingParse *)self hasEventTokens];
  v13 = v9 ^ v12 ^ [(SFQueryUnderstandingParse *)self hasGenericLocationTokens];
  v14 = [(SFQueryUnderstandingParse *)self hasCaptureDeviceTokens];
  v15 = v14 ^ [(SFQueryUnderstandingParse *)self hasFavoritedTokens];
  v16 = v15 ^ [(SFQueryUnderstandingParse *)self hasSourceAppTokens];
  v17 = v16 ^ [(SFQueryUnderstandingParse *)self hasPersonTokens];
  v18 = v13 ^ v17 ^ [(SFQueryUnderstandingParse *)self hasPersonSenderTokens];
  v19 = [(SFQueryUnderstandingParse *)self spotlightQueryIntent];
  v20 = v19 ^ [(SFQueryUnderstandingParse *)self isUnsafeQuery];
  return v18 ^ v20 ^ [(SFQueryUnderstandingParse *)self isBlocklistedQuery];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v24) = 1;
  }

  else if ([(SFQueryUnderstandingParse *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFQueryUnderstandingParse *)self queryIntentType];
    if (v6 != [(SFQueryUnderstandingParse *)v5 queryIntentType])
    {
      goto LABEL_21;
    }

    v7 = [(SFQueryUnderstandingParse *)self hasUnspecifiedTokens];
    if (v7 != [(SFQueryUnderstandingParse *)v5 hasUnspecifiedTokens])
    {
      goto LABEL_21;
    }

    v8 = [(SFQueryUnderstandingParse *)self hasSortCriteriaTokens];
    if (v8 != [(SFQueryUnderstandingParse *)v5 hasSortCriteriaTokens])
    {
      goto LABEL_21;
    }

    v9 = [(SFQueryUnderstandingParse *)self hasLocationTokens];
    if (v9 != [(SFQueryUnderstandingParse *)v5 hasLocationTokens])
    {
      goto LABEL_21;
    }

    v10 = [(SFQueryUnderstandingParse *)self hasActionTokens];
    if (v10 != [(SFQueryUnderstandingParse *)v5 hasActionTokens])
    {
      goto LABEL_21;
    }

    v11 = [(SFQueryUnderstandingParse *)self hasMediaTypeTokens];
    if (v11 != [(SFQueryUnderstandingParse *)v5 hasMediaTypeTokens])
    {
      goto LABEL_21;
    }

    v12 = [(SFQueryUnderstandingParse *)self hasVisualQualityTokens];
    if (v12 != [(SFQueryUnderstandingParse *)v5 hasVisualQualityTokens])
    {
      goto LABEL_21;
    }

    v13 = [(SFQueryUnderstandingParse *)self hasNounTokens];
    if (v13 != [(SFQueryUnderstandingParse *)v5 hasNounTokens])
    {
      goto LABEL_21;
    }

    v14 = [(SFQueryUnderstandingParse *)self hasTimeTokens];
    if (v14 != [(SFQueryUnderstandingParse *)v5 hasTimeTokens])
    {
      goto LABEL_21;
    }

    v15 = [(SFQueryUnderstandingParse *)self hasEventTokens];
    if (v15 != [(SFQueryUnderstandingParse *)v5 hasEventTokens])
    {
      goto LABEL_21;
    }

    v16 = [(SFQueryUnderstandingParse *)self hasGenericLocationTokens];
    if (v16 != [(SFQueryUnderstandingParse *)v5 hasGenericLocationTokens])
    {
      goto LABEL_21;
    }

    v17 = [(SFQueryUnderstandingParse *)self hasCaptureDeviceTokens];
    if (v17 == [(SFQueryUnderstandingParse *)v5 hasCaptureDeviceTokens]&& (v18 = [(SFQueryUnderstandingParse *)self hasFavoritedTokens], v18 == [(SFQueryUnderstandingParse *)v5 hasFavoritedTokens]) && (v19 = [(SFQueryUnderstandingParse *)self hasSourceAppTokens], v19 == [(SFQueryUnderstandingParse *)v5 hasSourceAppTokens]) && (v20 = [(SFQueryUnderstandingParse *)self hasPersonTokens], v20 == [(SFQueryUnderstandingParse *)v5 hasPersonTokens]) && (v21 = [(SFQueryUnderstandingParse *)self hasPersonSenderTokens], v21 == [(SFQueryUnderstandingParse *)v5 hasPersonSenderTokens]) && (v22 = [(SFQueryUnderstandingParse *)self spotlightQueryIntent], v22 == [(SFQueryUnderstandingParse *)v5 spotlightQueryIntent]) && (v23 = [(SFQueryUnderstandingParse *)self isUnsafeQuery], v23 == [(SFQueryUnderstandingParse *)v5 isUnsafeQuery]))
    {
      v26 = [(SFQueryUnderstandingParse *)self isBlocklistedQuery];
      v24 = v26 ^ [(SFQueryUnderstandingParse *)v5 isBlocklistedQuery]^ 1;
    }

    else
    {
LABEL_21:
      LOBYTE(v24) = 0;
    }
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setQueryIntentType:{-[SFQueryUnderstandingParse queryIntentType](self, "queryIntentType")}];
  [v4 setHasUnspecifiedTokens:{-[SFQueryUnderstandingParse hasUnspecifiedTokens](self, "hasUnspecifiedTokens")}];
  [v4 setHasSortCriteriaTokens:{-[SFQueryUnderstandingParse hasSortCriteriaTokens](self, "hasSortCriteriaTokens")}];
  [v4 setHasLocationTokens:{-[SFQueryUnderstandingParse hasLocationTokens](self, "hasLocationTokens")}];
  [v4 setHasActionTokens:{-[SFQueryUnderstandingParse hasActionTokens](self, "hasActionTokens")}];
  [v4 setHasMediaTypeTokens:{-[SFQueryUnderstandingParse hasMediaTypeTokens](self, "hasMediaTypeTokens")}];
  [v4 setHasVisualQualityTokens:{-[SFQueryUnderstandingParse hasVisualQualityTokens](self, "hasVisualQualityTokens")}];
  [v4 setHasNounTokens:{-[SFQueryUnderstandingParse hasNounTokens](self, "hasNounTokens")}];
  [v4 setHasTimeTokens:{-[SFQueryUnderstandingParse hasTimeTokens](self, "hasTimeTokens")}];
  [v4 setHasEventTokens:{-[SFQueryUnderstandingParse hasEventTokens](self, "hasEventTokens")}];
  [v4 setHasGenericLocationTokens:{-[SFQueryUnderstandingParse hasGenericLocationTokens](self, "hasGenericLocationTokens")}];
  [v4 setHasCaptureDeviceTokens:{-[SFQueryUnderstandingParse hasCaptureDeviceTokens](self, "hasCaptureDeviceTokens")}];
  [v4 setHasFavoritedTokens:{-[SFQueryUnderstandingParse hasFavoritedTokens](self, "hasFavoritedTokens")}];
  [v4 setHasSourceAppTokens:{-[SFQueryUnderstandingParse hasSourceAppTokens](self, "hasSourceAppTokens")}];
  [v4 setHasPersonTokens:{-[SFQueryUnderstandingParse hasPersonTokens](self, "hasPersonTokens")}];
  [v4 setHasPersonSenderTokens:{-[SFQueryUnderstandingParse hasPersonSenderTokens](self, "hasPersonSenderTokens")}];
  [v4 setSpotlightQueryIntent:{-[SFQueryUnderstandingParse spotlightQueryIntent](self, "spotlightQueryIntent")}];
  [v4 setIsUnsafeQuery:{-[SFQueryUnderstandingParse isUnsafeQuery](self, "isUnsafeQuery")}];
  [v4 setIsBlocklistedQuery:{-[SFQueryUnderstandingParse isBlocklistedQuery](self, "isBlocklistedQuery")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBQueryUnderstandingParse alloc] initWithFacade:self];
  v3 = [(_SFPBQueryUnderstandingParse *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBQueryUnderstandingParse alloc] initWithFacade:self];
  v3 = [(_SFPBQueryUnderstandingParse *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBQueryUnderstandingParse alloc] initWithFacade:self];
  v5 = [(_SFPBQueryUnderstandingParse *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFQueryUnderstandingParse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBQueryUnderstandingParse alloc] initWithData:v5];
  v7 = [(SFQueryUnderstandingParse *)self initWithProtobuf:v6];

  return v7;
}

- (SFQueryUnderstandingParse)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFQueryUnderstandingParse;
  v5 = [(SFQueryUnderstandingParse *)&v8 init];
  if (v5)
  {
    if ([v4 queryIntentType])
    {
      -[SFQueryUnderstandingParse setQueryIntentType:](v5, "setQueryIntentType:", [v4 queryIntentType]);
    }

    if ([v4 hasUnspecifiedTokens])
    {
      -[SFQueryUnderstandingParse setHasUnspecifiedTokens:](v5, "setHasUnspecifiedTokens:", [v4 hasUnspecifiedTokens]);
    }

    if ([v4 hasSortCriteriaTokens])
    {
      -[SFQueryUnderstandingParse setHasSortCriteriaTokens:](v5, "setHasSortCriteriaTokens:", [v4 hasSortCriteriaTokens]);
    }

    if ([v4 hasLocationTokens])
    {
      -[SFQueryUnderstandingParse setHasLocationTokens:](v5, "setHasLocationTokens:", [v4 hasLocationTokens]);
    }

    if ([v4 hasActionTokens])
    {
      -[SFQueryUnderstandingParse setHasActionTokens:](v5, "setHasActionTokens:", [v4 hasActionTokens]);
    }

    if ([v4 hasMediaTypeTokens])
    {
      -[SFQueryUnderstandingParse setHasMediaTypeTokens:](v5, "setHasMediaTypeTokens:", [v4 hasMediaTypeTokens]);
    }

    if ([v4 hasVisualQualityTokens])
    {
      -[SFQueryUnderstandingParse setHasVisualQualityTokens:](v5, "setHasVisualQualityTokens:", [v4 hasVisualQualityTokens]);
    }

    if ([v4 hasNounTokens])
    {
      -[SFQueryUnderstandingParse setHasNounTokens:](v5, "setHasNounTokens:", [v4 hasNounTokens]);
    }

    if ([v4 hasTimeTokens])
    {
      -[SFQueryUnderstandingParse setHasTimeTokens:](v5, "setHasTimeTokens:", [v4 hasTimeTokens]);
    }

    if ([v4 hasEventTokens])
    {
      -[SFQueryUnderstandingParse setHasEventTokens:](v5, "setHasEventTokens:", [v4 hasEventTokens]);
    }

    if ([v4 hasGenericLocationTokens])
    {
      -[SFQueryUnderstandingParse setHasGenericLocationTokens:](v5, "setHasGenericLocationTokens:", [v4 hasGenericLocationTokens]);
    }

    if ([v4 hasCaptureDeviceTokens])
    {
      -[SFQueryUnderstandingParse setHasCaptureDeviceTokens:](v5, "setHasCaptureDeviceTokens:", [v4 hasCaptureDeviceTokens]);
    }

    if ([v4 hasFavoritedTokens])
    {
      -[SFQueryUnderstandingParse setHasFavoritedTokens:](v5, "setHasFavoritedTokens:", [v4 hasFavoritedTokens]);
    }

    if ([v4 hasSourceAppTokens])
    {
      -[SFQueryUnderstandingParse setHasSourceAppTokens:](v5, "setHasSourceAppTokens:", [v4 hasSourceAppTokens]);
    }

    if ([v4 hasPersonTokens])
    {
      -[SFQueryUnderstandingParse setHasPersonTokens:](v5, "setHasPersonTokens:", [v4 hasPersonTokens]);
    }

    if ([v4 hasPersonSenderTokens])
    {
      -[SFQueryUnderstandingParse setHasPersonSenderTokens:](v5, "setHasPersonSenderTokens:", [v4 hasPersonSenderTokens]);
    }

    if ([v4 spotlightQueryIntent])
    {
      -[SFQueryUnderstandingParse setSpotlightQueryIntent:](v5, "setSpotlightQueryIntent:", [v4 spotlightQueryIntent]);
    }

    if ([v4 isUnsafeQuery])
    {
      -[SFQueryUnderstandingParse setIsUnsafeQuery:](v5, "setIsUnsafeQuery:", [v4 isUnsafeQuery]);
    }

    if ([v4 isBlocklistedQuery])
    {
      -[SFQueryUnderstandingParse setIsBlocklistedQuery:](v5, "setIsBlocklistedQuery:", [v4 isBlocklistedQuery]);
    }

    v6 = v5;
  }

  return v5;
}

@end