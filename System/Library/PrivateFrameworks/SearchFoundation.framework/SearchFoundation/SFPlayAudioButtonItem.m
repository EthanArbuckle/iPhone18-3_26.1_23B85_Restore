@interface SFPlayAudioButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPlayAudioButtonItem)initWithCoder:(id)a3;
- (SFPlayAudioButtonItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPlayAudioButtonItem

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFPlayAudioButtonItem;
  v3 = [(SFButtonItem *)&v12 hash];
  v4 = [(SFPlayAudioButtonItem *)self mediaMetadata];
  v5 = [v4 hash];
  v6 = [(SFPlayAudioButtonItem *)self toggleButtonConfiguration];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFPlayAudioButtonItem *)self audioData];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFButtonItem *)self uniqueId];

  return v10 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFPlayAudioButtonItem *)v5 isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFPlayAudioButtonItem;
      if ([(SFButtonItem *)&v34 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFPlayAudioButtonItem *)self mediaMetadata];
        v8 = [(SFPlayAudioButtonItem *)v6 mediaMetadata];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v9 = [(SFPlayAudioButtonItem *)self mediaMetadata];
        if (v9)
        {
          v10 = [(SFPlayAudioButtonItem *)self mediaMetadata];
          v3 = [(SFPlayAudioButtonItem *)v6 mediaMetadata];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_32;
          }

          v33 = v10;
        }

        v12 = [(SFPlayAudioButtonItem *)self toggleButtonConfiguration];
        v13 = [(SFPlayAudioButtonItem *)v6 toggleButtonConfiguration];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_31;
        }

        v15 = [(SFPlayAudioButtonItem *)self toggleButtonConfiguration];
        if (v15)
        {
          v27 = v12;
          v16 = [(SFPlayAudioButtonItem *)self toggleButtonConfiguration];
          v29 = [(SFPlayAudioButtonItem *)v6 toggleButtonConfiguration];
          v30 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v12 = v27;
            goto LABEL_29;
          }

          v31 = v15;
          v32 = v3;
          v12 = v27;
        }

        else
        {
          v31 = 0;
          v32 = v3;
        }

        v17 = [(SFPlayAudioButtonItem *)self audioData];
        v18 = [(SFPlayAudioButtonItem *)v6 audioData];
        if ((v17 != 0) == (v18 == 0))
        {

          v11 = 0;
          v15 = v31;
          v3 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = v18;
        v26 = v17;
        [(SFPlayAudioButtonItem *)self audioData];
        v28 = v15 = v31;
        if (v28)
        {
          v19 = [(SFPlayAudioButtonItem *)self audioData];
          v23 = [(SFPlayAudioButtonItem *)v6 audioData];
          v24 = v19;
          v20 = [v19 isEqual:?];
          v3 = v32;
          if (!v20)
          {
            v11 = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              v10 = v33;
              if (!v9)
              {
LABEL_33:

                goto LABEL_34;
              }

LABEL_32:

              goto LABEL_33;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        else
        {
          v3 = v32;
        }

        v21 = [(SFButtonItem *)self uniqueId];
        v11 = v21 == [(SFButtonItem *)v6 uniqueId];
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v11 = 0;
  }

LABEL_35:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFPlayAudioButtonItem;
  v4 = [(SFButtonItem *)&v12 copyWithZone:a3];
  v5 = [(SFPlayAudioButtonItem *)self mediaMetadata];
  v6 = [v5 copy];
  [v4 setMediaMetadata:v6];

  v7 = [(SFPlayAudioButtonItem *)self toggleButtonConfiguration];
  v8 = [v7 copy];
  [v4 setToggleButtonConfiguration:v8];

  v9 = [(SFPlayAudioButtonItem *)self audioData];
  v10 = [v9 copy];
  [v4 setAudioData:v10];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPlayAudioButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBPlayAudioButtonItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPlayAudioButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBPlayAudioButtonItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBPlayAudioButtonItem alloc] initWithFacade:self];
  v5 = [(_SFPBPlayAudioButtonItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPlayAudioButtonItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPlayAudioButtonItem alloc] initWithData:v5];
  v7 = [(SFPlayAudioButtonItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFPlayAudioButtonItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SFPlayAudioButtonItem;
  v5 = [(SFPlayAudioButtonItem *)&v20 init];
  if (v5)
  {
    v6 = [v4 mediaMetadata];

    if (v6)
    {
      v7 = [SFMediaMetadata alloc];
      v8 = [v4 mediaMetadata];
      v9 = [(SFMediaMetadata *)v7 initWithProtobuf:v8];
      [(SFPlayAudioButtonItem *)v5 setMediaMetadata:v9];
    }

    v10 = [v4 toggleButtonConfiguration];

    if (v10)
    {
      v11 = [SFToggleButtonConfiguration alloc];
      v12 = [v4 toggleButtonConfiguration];
      v13 = [(SFToggleButtonConfiguration *)v11 initWithProtobuf:v12];
      [(SFPlayAudioButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    v14 = [v4 audioData];

    if (v14)
    {
      v15 = [SFAudioData alloc];
      v16 = [v4 audioData];
      v17 = [(SFAudioData *)v15 initWithProtobuf:v16];
      [(SFPlayAudioButtonItem *)v5 setAudioData:v17];
    }

    if ([v4 uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v18 = v5;
  }

  return v5;
}

@end