@interface SFClockImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFClockImage)initWithCoder:(id)coder;
- (SFClockImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFClockImage

- (SFClockImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v11.receiver = self;
  v11.super_class = SFClockImage;
  v5 = [(SFClockImage *)&v11 init];
  if (v5)
  {
    if ([protobufCopy hour])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "hour")}];
      [(SFClockImage *)v5 setHour:v6];
    }

    if ([protobufCopy minute])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "minute")}];
      [(SFClockImage *)v5 setMinute:v7];
    }

    if ([protobufCopy second])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "second")}];
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
  hour = [(SFClockImage *)self hour];
  v5 = [hour hash];
  minute = [(SFClockImage *)self minute];
  v7 = v5 ^ [minute hash];
  second = [(SFClockImage *)self second];
  v9 = v7 ^ [second hash];

  return v9 ^ v3;
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
    if ([(SFClockImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFClockImage;
      if ([(SFImage *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        hour = [(SFClockImage *)self hour];
        hour2 = [(SFClockImage *)v6 hour];
        if ((hour != 0) == (hour2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        hour3 = [(SFClockImage *)self hour];
        if (hour3)
        {
          hour4 = [(SFClockImage *)self hour];
          hour5 = [(SFClockImage *)v6 hour];
          if (![hour4 isEqual:hour5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = hour5;
        }

        minute = [(SFClockImage *)self minute];
        minute2 = [(SFClockImage *)v6 minute];
        v14 = minute2;
        if ((minute != 0) == (minute2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        minute3 = [(SFClockImage *)self minute];
        if (minute3)
        {
          v25 = minute;
          minute4 = [(SFClockImage *)self minute];
          minute5 = [(SFClockImage *)v6 minute];
          v28 = minute4;
          if (![minute4 isEqual:?])
          {
            v11 = 0;
            minute = v25;
            goto LABEL_26;
          }

          v29 = minute3;
          v30 = hour4;
          minute = v25;
        }

        else
        {
          v29 = 0;
          v30 = hour4;
        }

        second = [(SFClockImage *)self second];
        second2 = [(SFClockImage *)v6 second];
        if ((second != 0) == (second2 == 0))
        {

          v11 = 0;
          minute3 = v29;
          hour4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = second;
          v26 = second2;
          second3 = [(SFClockImage *)self second];
          minute3 = v29;
          if (second3)
          {
            v23 = second3;
            second4 = [(SFClockImage *)self second];
            second5 = [(SFClockImage *)v6 second];
            v11 = [second4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          hour4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        hour5 = v31;
        if (!hour3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFClockImage;
  v4 = [(SFImage *)&v12 copyWithZone:zone];
  hour = [(SFClockImage *)self hour];
  v6 = [hour copy];
  [v4 setHour:v6];

  minute = [(SFClockImage *)self minute];
  v8 = [minute copy];
  [v4 setMinute:v8];

  second = [(SFClockImage *)self second];
  v10 = [second copy];
  [v4 setSecond:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBClockImage alloc] initWithFacade:self];
  jsonData = [(_SFPBClockImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBClockImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBClockImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFClockImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFClockImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

@end