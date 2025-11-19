@interface SFCalendarImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCalendarImage)initWithCoder:(id)a3;
- (SFCalendarImage)initWithDate:(id)a3;
- (SFCalendarImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCalendarImage

- (SFCalendarImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFCalendarImage;
  v5 = [(SFCalendarImage *)&v12 init];
  if (v5)
  {
    v6 = [v4 date];

    if (v6)
    {
      v7 = [v4 date];
      v8 = MEMORY[0x1E695DF00];
      [v7 secondsSince1970];
      v9 = [v8 dateWithTimeIntervalSince1970:?];
      [(SFCalendarImage *)v5 setDate:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFCalendarImage;
  v3 = [(SFImage *)&v7 hash];
  v4 = [(SFCalendarImage *)self date];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(SFCalendarImage *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFCalendarImage, [(SFImage *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFCalendarImage *)self date];
    v7 = [(SFCalendarImage *)v5 date];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFCalendarImage *)self date];
      if (v8)
      {
        v9 = [(SFCalendarImage *)self date];
        v10 = [(SFCalendarImage *)v5 date];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFCalendarImage;
  v4 = [(SFImage *)&v8 copyWithZone:a3];
  v5 = [(SFCalendarImage *)self date];
  v6 = [v5 copy];
  [v4 setDate:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCalendarImage alloc] initWithFacade:self];
  v3 = [(_SFPBCalendarImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCalendarImage alloc] initWithFacade:self];
  v3 = [(_SFPBCalendarImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCalendarImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFCalendarImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFCalendarImage)initWithDate:(id)a3
{
  v4 = a3;
  v5 = [(SFCalendarImage *)self init];
  v6 = v5;
  if (v5)
  {
    [(SFCalendarImage *)v5 setDate:v4];
  }

  return v6;
}

@end