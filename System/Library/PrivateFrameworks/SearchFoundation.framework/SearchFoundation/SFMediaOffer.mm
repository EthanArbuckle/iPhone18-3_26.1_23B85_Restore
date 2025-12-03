@interface SFMediaOffer
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaOffer)initWithCoder:(id)coder;
- (SFMediaOffer)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMediaOffer

- (SFMediaOffer)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = SFMediaOffer;
  v5 = [(SFMediaOffer *)&v20 init];
  if (v5)
  {
    actionItem = [protobufCopy actionItem];

    if (actionItem)
    {
      v7 = [SFActionItem alloc];
      actionItem2 = [protobufCopy actionItem];
      v9 = [(SFActionItem *)v7 initWithProtobuf:actionItem2];
      [(SFMediaOffer *)v5 setActionItem:v9];
    }

    sublabel = [protobufCopy sublabel];

    if (sublabel)
    {
      sublabel2 = [protobufCopy sublabel];
      [(SFMediaOffer *)v5 setSublabel:sublabel2];
    }

    offerIdentifier = [protobufCopy offerIdentifier];

    if (offerIdentifier)
    {
      offerIdentifier2 = [protobufCopy offerIdentifier];
      [(SFMediaOffer *)v5 setOfferIdentifier:offerIdentifier2];
    }

    if ([protobufCopy isEnabled])
    {
      -[SFMediaOffer setIsEnabled:](v5, "setIsEnabled:", [protobufCopy isEnabled]);
    }

    image = [protobufCopy image];

    if (image)
    {
      v15 = [SFImage alloc];
      image2 = [protobufCopy image];
      v17 = [(SFImage *)v15 initWithProtobuf:image2];
      [(SFMediaOffer *)v5 setImage:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = SFMediaOffer;
  v3 = [(SFActionItem *)&v14 hash];
  actionItem = [(SFMediaOffer *)self actionItem];
  v5 = [actionItem hash];
  sublabel = [(SFMediaOffer *)self sublabel];
  v7 = v5 ^ [sublabel hash];
  offerIdentifier = [(SFMediaOffer *)self offerIdentifier];
  v9 = v7 ^ [offerIdentifier hash];
  v10 = v9 ^ [(SFMediaOffer *)self isEnabled];
  image = [(SFMediaOffer *)self image];
  v12 = v10 ^ [image hash];

  return v12 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFMediaOffer *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v44.receiver = self;
      v44.super_class = SFMediaOffer;
      if ([(SFActionItem *)&v44 isEqual:equalCopy])
      {
        v6 = equalCopy;
        actionItem = [(SFMediaOffer *)self actionItem];
        actionItem2 = [(SFMediaOffer *)v6 actionItem];
        if ((actionItem != 0) == (actionItem2 == 0))
        {
          v11 = 0;
LABEL_40:

          goto LABEL_41;
        }

        actionItem3 = [(SFMediaOffer *)self actionItem];
        if (actionItem3)
        {
          actionItem4 = [(SFMediaOffer *)self actionItem];
          actionItem5 = [(SFMediaOffer *)v6 actionItem];
          if (![actionItem4 isEqual:actionItem5])
          {
            v11 = 0;
            goto LABEL_38;
          }

          v43 = actionItem4;
        }

        sublabel = [(SFMediaOffer *)self sublabel];
        sublabel2 = [(SFMediaOffer *)v6 sublabel];
        v14 = sublabel2;
        if ((sublabel != 0) == (sublabel2 == 0))
        {

          v11 = 0;
          goto LABEL_37;
        }

        sublabel3 = [(SFMediaOffer *)self sublabel];
        if (sublabel3)
        {
          v36 = actionItem3;
          v16 = v14;
          v17 = sublabel;
          sublabel4 = [(SFMediaOffer *)self sublabel];
          sublabel5 = [(SFMediaOffer *)v6 sublabel];
          v39 = sublabel4;
          if (![sublabel4 isEqual:?])
          {
            v11 = 0;
            sublabel = v17;
            v14 = v16;
            actionItem3 = v36;
            goto LABEL_35;
          }

          v40 = actionItem5;
          v42 = sublabel3;
          sublabel = v17;
          v14 = v16;
          actionItem3 = v36;
        }

        else
        {
          v40 = actionItem5;
          v42 = 0;
        }

        offerIdentifier = [(SFMediaOffer *)self offerIdentifier];
        offerIdentifier2 = [(SFMediaOffer *)v6 offerIdentifier];
        if ((offerIdentifier != 0) == (offerIdentifier2 == 0))
        {

          v11 = 0;
          actionItem5 = v40;
          sublabel3 = v42;
          if (!v42)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v34 = offerIdentifier2;
        v35 = offerIdentifier;
        [(SFMediaOffer *)self offerIdentifier];
        v37 = sublabel3 = v42;
        if (v37)
        {
          offerIdentifier3 = [(SFMediaOffer *)self offerIdentifier];
          offerIdentifier4 = [(SFMediaOffer *)v6 offerIdentifier];
          v33 = offerIdentifier3;
          v22 = [offerIdentifier3 isEqual:?];
          actionItem5 = v40;
          if (!v22)
          {
            v11 = 0;
LABEL_33:

LABEL_34:
            if (!sublabel3)
            {
LABEL_36:

LABEL_37:
              actionItem4 = v43;
              if (!actionItem3)
              {
LABEL_39:

                goto LABEL_40;
              }

LABEL_38:

              goto LABEL_39;
            }

LABEL_35:

            goto LABEL_36;
          }
        }

        else
        {
          actionItem5 = v40;
        }

        isEnabled = [(SFMediaOffer *)self isEnabled];
        if (isEnabled == [(SFMediaOffer *)v6 isEnabled])
        {
          image = [(SFMediaOffer *)self image];
          image2 = [(SFMediaOffer *)v6 image];
          if ((image != 0) != (image2 == 0))
          {
            v31 = image2;
            v41 = image;
            image3 = [(SFMediaOffer *)self image];
            if (image3)
            {
              v30 = image3;
              image4 = [(SFMediaOffer *)self image];
              image5 = [(SFMediaOffer *)v6 image];
              v11 = [image4 isEqual:image5];
            }

            else
            {

              v11 = 1;
            }

LABEL_32:
            sublabel3 = v42;
            if (!v37)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }
        }

        v11 = 0;
        goto LABEL_32;
      }
    }

    v11 = 0;
  }

LABEL_41:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = SFMediaOffer;
  v4 = [(SFActionItem *)&v14 copyWithZone:zone];
  actionItem = [(SFMediaOffer *)self actionItem];
  v6 = [actionItem copy];
  [v4 setActionItem:v6];

  sublabel = [(SFMediaOffer *)self sublabel];
  v8 = [sublabel copy];
  [v4 setSublabel:v8];

  offerIdentifier = [(SFMediaOffer *)self offerIdentifier];
  v10 = [offerIdentifier copy];
  [v4 setOfferIdentifier:v10];

  [v4 setIsEnabled:{-[SFMediaOffer isEnabled](self, "isEnabled")}];
  image = [(SFMediaOffer *)self image];
  v12 = [image copy];
  [v4 setImage:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaOffer alloc] initWithFacade:self];
  jsonData = [(_SFPBMediaOffer *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaOffer alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMediaOffer *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBMediaOffer alloc] initWithFacade:self];
  data = [(_SFPBMediaOffer *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFMediaOffer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMediaOffer alloc] initWithData:v5];
  v7 = [(SFMediaOffer *)self initWithProtobuf:v6];

  return v7;
}

@end