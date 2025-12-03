@interface SFCalendarImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCalendarImage)initWithCoder:(id)coder;
- (SFCalendarImage)initWithDate:(id)date;
- (SFCalendarImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCalendarImage

- (SFCalendarImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFCalendarImage;
  v5 = [(SFCalendarImage *)&v12 init];
  if (v5)
  {
    date = [protobufCopy date];

    if (date)
    {
      date2 = [protobufCopy date];
      v8 = MEMORY[0x1E695DF00];
      [date2 secondsSince1970];
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
  date = [(SFCalendarImage *)self date];
  v5 = [date hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFCalendarImage *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFCalendarImage, [(SFImage *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    date = [(SFCalendarImage *)self date];
    date2 = [(SFCalendarImage *)v5 date];
    if ((date != 0) == (date2 == 0))
    {
      v11 = 0;
    }

    else
    {
      date3 = [(SFCalendarImage *)self date];
      if (date3)
      {
        date4 = [(SFCalendarImage *)self date];
        date5 = [(SFCalendarImage *)v5 date];
        v11 = [date4 isEqual:date5];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFCalendarImage;
  v4 = [(SFImage *)&v8 copyWithZone:zone];
  date = [(SFCalendarImage *)self date];
  v6 = [date copy];
  [v4 setDate:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCalendarImage alloc] initWithFacade:self];
  jsonData = [(_SFPBCalendarImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCalendarImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCalendarImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCalendarImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFCalendarImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFCalendarImage)initWithDate:(id)date
{
  dateCopy = date;
  v5 = [(SFCalendarImage *)self init];
  v6 = v5;
  if (v5)
  {
    [(SFCalendarImage *)v5 setDate:dateCopy];
  }

  return v6;
}

@end