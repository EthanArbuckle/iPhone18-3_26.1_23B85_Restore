@interface SFClockImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFClockImage)initWithCoder:(id)a3;
- (SFClockImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFClockImage

- (SFClockImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFClockImage;
  v5 = [(SFClockImage *)&v11 init];
  if (v5)
  {
    if ([v4 hour])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "hour")}];
      [(SFClockImage *)v5 setHour:v6];
    }

    if ([v4 minute])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "minute")}];
      [(SFClockImage *)v5 setMinute:v7];
    }

    if ([v4 second])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "second")}];
      [(SFClockImage *)v5 setSecond:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFClockImage;
  v3 = [(SFImage *)&v11 hash];
  v4 = [(SFClockImage *)self hour];
  v5 = [v4 hash];
  v6 = [(SFClockImage *)self minute];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFClockImage *)self second];
  v9 = v7 ^ [v8 hash];

  return v9 ^ v3;
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
    if ([(SFClockImage *)v5 isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFClockImage;
      if ([(SFImage *)&v32 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFClockImage *)self hour];
        v8 = [(SFClockImage *)v6 hour];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        v9 = [(SFClockImage *)self hour];
        if (v9)
        {
          v3 = [(SFClockImage *)self hour];
          v10 = [(SFClockImage *)v6 hour];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = v10;
        }

        v12 = [(SFClockImage *)self minute];
        v13 = [(SFClockImage *)v6 minute];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        v15 = [(SFClockImage *)self minute];
        if (v15)
        {
          v25 = v12;
          v16 = [(SFClockImage *)self minute];
          v27 = [(SFClockImage *)v6 minute];
          v28 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v12 = v25;
            goto LABEL_26;
          }

          v29 = v15;
          v30 = v3;
          v12 = v25;
        }

        else
        {
          v29 = 0;
          v30 = v3;
        }

        v17 = [(SFClockImage *)self second];
        v18 = [(SFClockImage *)v6 second];
        if ((v17 != 0) == (v18 == 0))
        {

          v11 = 0;
          v15 = v29;
          v3 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = v17;
          v26 = v18;
          v19 = [(SFClockImage *)self second];
          v15 = v29;
          if (v19)
          {
            v23 = v19;
            v22 = [(SFClockImage *)self second];
            v20 = [(SFClockImage *)v6 second];
            v11 = [v22 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          v3 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        v10 = v31;
        if (!v9)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFClockImage;
  v4 = [(SFImage *)&v12 copyWithZone:a3];
  v5 = [(SFClockImage *)self hour];
  v6 = [v5 copy];
  [v4 setHour:v6];

  v7 = [(SFClockImage *)self minute];
  v8 = [v7 copy];
  [v4 setMinute:v8];

  v9 = [(SFClockImage *)self second];
  v10 = [v9 copy];
  [v4 setSecond:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBClockImage alloc] initWithFacade:self];
  v3 = [(_SFPBClockImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBClockImage alloc] initWithFacade:self];
  v3 = [(_SFPBClockImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFClockImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFClockImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

@end