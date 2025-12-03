@interface SFQueryUnderstandingParse
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFQueryUnderstandingParse)initWithCoder:(id)coder;
- (SFQueryUnderstandingParse)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFQueryUnderstandingParse

- (unint64_t)hash
{
  queryIntentType = [(SFQueryUnderstandingParse *)self queryIntentType];
  v4 = [(SFQueryUnderstandingParse *)self hasUnspecifiedTokens]^ queryIntentType;
  hasSortCriteriaTokens = [(SFQueryUnderstandingParse *)self hasSortCriteriaTokens];
  v6 = v4 ^ hasSortCriteriaTokens ^ [(SFQueryUnderstandingParse *)self hasLocationTokens];
  hasActionTokens = [(SFQueryUnderstandingParse *)self hasActionTokens];
  v8 = hasActionTokens ^ [(SFQueryUnderstandingParse *)self hasMediaTypeTokens];
  v9 = v6 ^ v8 ^ [(SFQueryUnderstandingParse *)self hasVisualQualityTokens];
  hasNounTokens = [(SFQueryUnderstandingParse *)self hasNounTokens];
  v11 = hasNounTokens ^ [(SFQueryUnderstandingParse *)self hasTimeTokens];
  v12 = v11 ^ [(SFQueryUnderstandingParse *)self hasEventTokens];
  v13 = v9 ^ v12 ^ [(SFQueryUnderstandingParse *)self hasGenericLocationTokens];
  hasCaptureDeviceTokens = [(SFQueryUnderstandingParse *)self hasCaptureDeviceTokens];
  v15 = hasCaptureDeviceTokens ^ [(SFQueryUnderstandingParse *)self hasFavoritedTokens];
  v16 = v15 ^ [(SFQueryUnderstandingParse *)self hasSourceAppTokens];
  v17 = v16 ^ [(SFQueryUnderstandingParse *)self hasPersonTokens];
  v18 = v13 ^ v17 ^ [(SFQueryUnderstandingParse *)self hasPersonSenderTokens];
  spotlightQueryIntent = [(SFQueryUnderstandingParse *)self spotlightQueryIntent];
  v20 = spotlightQueryIntent ^ [(SFQueryUnderstandingParse *)self isUnsafeQuery];
  return v18 ^ v20 ^ [(SFQueryUnderstandingParse *)self isBlocklistedQuery];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v24) = 1;
  }

  else if ([(SFQueryUnderstandingParse *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    queryIntentType = [(SFQueryUnderstandingParse *)self queryIntentType];
    if (queryIntentType != [(SFQueryUnderstandingParse *)v5 queryIntentType])
    {
      goto LABEL_21;
    }

    hasUnspecifiedTokens = [(SFQueryUnderstandingParse *)self hasUnspecifiedTokens];
    if (hasUnspecifiedTokens != [(SFQueryUnderstandingParse *)v5 hasUnspecifiedTokens])
    {
      goto LABEL_21;
    }

    hasSortCriteriaTokens = [(SFQueryUnderstandingParse *)self hasSortCriteriaTokens];
    if (hasSortCriteriaTokens != [(SFQueryUnderstandingParse *)v5 hasSortCriteriaTokens])
    {
      goto LABEL_21;
    }

    hasLocationTokens = [(SFQueryUnderstandingParse *)self hasLocationTokens];
    if (hasLocationTokens != [(SFQueryUnderstandingParse *)v5 hasLocationTokens])
    {
      goto LABEL_21;
    }

    hasActionTokens = [(SFQueryUnderstandingParse *)self hasActionTokens];
    if (hasActionTokens != [(SFQueryUnderstandingParse *)v5 hasActionTokens])
    {
      goto LABEL_21;
    }

    hasMediaTypeTokens = [(SFQueryUnderstandingParse *)self hasMediaTypeTokens];
    if (hasMediaTypeTokens != [(SFQueryUnderstandingParse *)v5 hasMediaTypeTokens])
    {
      goto LABEL_21;
    }

    hasVisualQualityTokens = [(SFQueryUnderstandingParse *)self hasVisualQualityTokens];
    if (hasVisualQualityTokens != [(SFQueryUnderstandingParse *)v5 hasVisualQualityTokens])
    {
      goto LABEL_21;
    }

    hasNounTokens = [(SFQueryUnderstandingParse *)self hasNounTokens];
    if (hasNounTokens != [(SFQueryUnderstandingParse *)v5 hasNounTokens])
    {
      goto LABEL_21;
    }

    hasTimeTokens = [(SFQueryUnderstandingParse *)self hasTimeTokens];
    if (hasTimeTokens != [(SFQueryUnderstandingParse *)v5 hasTimeTokens])
    {
      goto LABEL_21;
    }

    hasEventTokens = [(SFQueryUnderstandingParse *)self hasEventTokens];
    if (hasEventTokens != [(SFQueryUnderstandingParse *)v5 hasEventTokens])
    {
      goto LABEL_21;
    }

    hasGenericLocationTokens = [(SFQueryUnderstandingParse *)self hasGenericLocationTokens];
    if (hasGenericLocationTokens != [(SFQueryUnderstandingParse *)v5 hasGenericLocationTokens])
    {
      goto LABEL_21;
    }

    hasCaptureDeviceTokens = [(SFQueryUnderstandingParse *)self hasCaptureDeviceTokens];
    if (hasCaptureDeviceTokens == [(SFQueryUnderstandingParse *)v5 hasCaptureDeviceTokens]&& (v18 = [(SFQueryUnderstandingParse *)self hasFavoritedTokens], v18 == [(SFQueryUnderstandingParse *)v5 hasFavoritedTokens]) && (v19 = [(SFQueryUnderstandingParse *)self hasSourceAppTokens], v19 == [(SFQueryUnderstandingParse *)v5 hasSourceAppTokens]) && (v20 = [(SFQueryUnderstandingParse *)self hasPersonTokens], v20 == [(SFQueryUnderstandingParse *)v5 hasPersonTokens]) && (v21 = [(SFQueryUnderstandingParse *)self hasPersonSenderTokens], v21 == [(SFQueryUnderstandingParse *)v5 hasPersonSenderTokens]) && (v22 = [(SFQueryUnderstandingParse *)self spotlightQueryIntent], v22 == [(SFQueryUnderstandingParse *)v5 spotlightQueryIntent]) && (v23 = [(SFQueryUnderstandingParse *)self isUnsafeQuery], v23 == [(SFQueryUnderstandingParse *)v5 isUnsafeQuery]))
    {
      isBlocklistedQuery = [(SFQueryUnderstandingParse *)self isBlocklistedQuery];
      v24 = isBlocklistedQuery ^ [(SFQueryUnderstandingParse *)v5 isBlocklistedQuery]^ 1;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  jsonData = [(_SFPBQueryUnderstandingParse *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBQueryUnderstandingParse alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBQueryUnderstandingParse *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBQueryUnderstandingParse alloc] initWithFacade:self];
  data = [(_SFPBQueryUnderstandingParse *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFQueryUnderstandingParse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBQueryUnderstandingParse alloc] initWithData:v5];
  v7 = [(SFQueryUnderstandingParse *)self initWithProtobuf:v6];

  return v7;
}

- (SFQueryUnderstandingParse)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFQueryUnderstandingParse;
  v5 = [(SFQueryUnderstandingParse *)&v8 init];
  if (v5)
  {
    if ([protobufCopy queryIntentType])
    {
      -[SFQueryUnderstandingParse setQueryIntentType:](v5, "setQueryIntentType:", [protobufCopy queryIntentType]);
    }

    if ([protobufCopy hasUnspecifiedTokens])
    {
      -[SFQueryUnderstandingParse setHasUnspecifiedTokens:](v5, "setHasUnspecifiedTokens:", [protobufCopy hasUnspecifiedTokens]);
    }

    if ([protobufCopy hasSortCriteriaTokens])
    {
      -[SFQueryUnderstandingParse setHasSortCriteriaTokens:](v5, "setHasSortCriteriaTokens:", [protobufCopy hasSortCriteriaTokens]);
    }

    if ([protobufCopy hasLocationTokens])
    {
      -[SFQueryUnderstandingParse setHasLocationTokens:](v5, "setHasLocationTokens:", [protobufCopy hasLocationTokens]);
    }

    if ([protobufCopy hasActionTokens])
    {
      -[SFQueryUnderstandingParse setHasActionTokens:](v5, "setHasActionTokens:", [protobufCopy hasActionTokens]);
    }

    if ([protobufCopy hasMediaTypeTokens])
    {
      -[SFQueryUnderstandingParse setHasMediaTypeTokens:](v5, "setHasMediaTypeTokens:", [protobufCopy hasMediaTypeTokens]);
    }

    if ([protobufCopy hasVisualQualityTokens])
    {
      -[SFQueryUnderstandingParse setHasVisualQualityTokens:](v5, "setHasVisualQualityTokens:", [protobufCopy hasVisualQualityTokens]);
    }

    if ([protobufCopy hasNounTokens])
    {
      -[SFQueryUnderstandingParse setHasNounTokens:](v5, "setHasNounTokens:", [protobufCopy hasNounTokens]);
    }

    if ([protobufCopy hasTimeTokens])
    {
      -[SFQueryUnderstandingParse setHasTimeTokens:](v5, "setHasTimeTokens:", [protobufCopy hasTimeTokens]);
    }

    if ([protobufCopy hasEventTokens])
    {
      -[SFQueryUnderstandingParse setHasEventTokens:](v5, "setHasEventTokens:", [protobufCopy hasEventTokens]);
    }

    if ([protobufCopy hasGenericLocationTokens])
    {
      -[SFQueryUnderstandingParse setHasGenericLocationTokens:](v5, "setHasGenericLocationTokens:", [protobufCopy hasGenericLocationTokens]);
    }

    if ([protobufCopy hasCaptureDeviceTokens])
    {
      -[SFQueryUnderstandingParse setHasCaptureDeviceTokens:](v5, "setHasCaptureDeviceTokens:", [protobufCopy hasCaptureDeviceTokens]);
    }

    if ([protobufCopy hasFavoritedTokens])
    {
      -[SFQueryUnderstandingParse setHasFavoritedTokens:](v5, "setHasFavoritedTokens:", [protobufCopy hasFavoritedTokens]);
    }

    if ([protobufCopy hasSourceAppTokens])
    {
      -[SFQueryUnderstandingParse setHasSourceAppTokens:](v5, "setHasSourceAppTokens:", [protobufCopy hasSourceAppTokens]);
    }

    if ([protobufCopy hasPersonTokens])
    {
      -[SFQueryUnderstandingParse setHasPersonTokens:](v5, "setHasPersonTokens:", [protobufCopy hasPersonTokens]);
    }

    if ([protobufCopy hasPersonSenderTokens])
    {
      -[SFQueryUnderstandingParse setHasPersonSenderTokens:](v5, "setHasPersonSenderTokens:", [protobufCopy hasPersonSenderTokens]);
    }

    if ([protobufCopy spotlightQueryIntent])
    {
      -[SFQueryUnderstandingParse setSpotlightQueryIntent:](v5, "setSpotlightQueryIntent:", [protobufCopy spotlightQueryIntent]);
    }

    if ([protobufCopy isUnsafeQuery])
    {
      -[SFQueryUnderstandingParse setIsUnsafeQuery:](v5, "setIsUnsafeQuery:", [protobufCopy isUnsafeQuery]);
    }

    if ([protobufCopy isBlocklistedQuery])
    {
      -[SFQueryUnderstandingParse setIsBlocklistedQuery:](v5, "setIsBlocklistedQuery:", [protobufCopy isBlocklistedQuery]);
    }

    v6 = v5;
  }

  return v5;
}

@end