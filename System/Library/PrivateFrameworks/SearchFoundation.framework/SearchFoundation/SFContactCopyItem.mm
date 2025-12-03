@interface SFContactCopyItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFContactCopyItem)initWithCoder:(id)coder;
- (SFContactCopyItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFContactCopyItem

- (SFContactCopyItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v15.receiver = self;
  v15.super_class = SFContactCopyItem;
  v5 = [(SFContactCopyItem *)&v15 init];
  if (v5)
  {
    person = [protobufCopy person];

    if (person)
    {
      v7 = [SFPerson alloc];
      person2 = [protobufCopy person];
      v9 = [(SFPerson *)v7 initWithProtobuf:person2];
      [(SFContactCopyItem *)v5 setPerson:v9];
    }

    contactFileLocation = [protobufCopy contactFileLocation];

    if (contactFileLocation)
    {
      contactFileLocation2 = [protobufCopy contactFileLocation];
      v12 = _SFPBURLHandwrittenTranslator(contactFileLocation2);
      [(SFContactCopyItem *)v5 setContactFileLocation:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFContactCopyItem;
  v3 = [(SFCopyItem *)&v9 hash];
  person = [(SFContactCopyItem *)self person];
  v5 = [person hash];
  contactFileLocation = [(SFContactCopyItem *)self contactFileLocation];
  v7 = v5 ^ [contactFileLocation hash];

  return v7 ^ v3;
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
    if ([(SFContactCopyItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFContactCopyItem;
      if ([(SFCopyItem *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        person = [(SFContactCopyItem *)self person];
        person2 = [(SFContactCopyItem *)v6 person];
        if ((person != 0) == (person2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        person3 = [(SFContactCopyItem *)self person];
        if (person3)
        {
          person4 = [(SFContactCopyItem *)self person];
          person5 = [(SFContactCopyItem *)v6 person];
          if (![person4 isEqual:person5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = person5;
        }

        contactFileLocation = [(SFContactCopyItem *)self contactFileLocation];
        contactFileLocation2 = [(SFContactCopyItem *)v6 contactFileLocation];
        v14 = contactFileLocation2;
        if ((contactFileLocation != 0) == (contactFileLocation2 == 0))
        {

          v11 = 0;
        }

        else
        {
          contactFileLocation3 = [(SFContactCopyItem *)self contactFileLocation];
          if (contactFileLocation3)
          {
            v16 = contactFileLocation3;
            contactFileLocation4 = [(SFContactCopyItem *)self contactFileLocation];
            [(SFContactCopyItem *)v6 contactFileLocation];
            v17 = v20 = person4;
            v11 = [contactFileLocation4 isEqual:v17];

            person4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        person5 = v21;
        if (!person3)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFContactCopyItem;
  v4 = [(SFCopyItem *)&v10 copyWithZone:zone];
  person = [(SFContactCopyItem *)self person];
  v6 = [person copy];
  [v4 setPerson:v6];

  contactFileLocation = [(SFContactCopyItem *)self contactFileLocation];
  v8 = [contactFileLocation copy];
  [v4 setContactFileLocation:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBContactCopyItem alloc] initWithFacade:self];
  jsonData = [(_SFPBContactCopyItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBContactCopyItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBContactCopyItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBContactCopyItem alloc] initWithFacade:self];
  data = [(_SFPBContactCopyItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFContactCopyItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBContactCopyItem alloc] initWithData:v5];
  v7 = [(SFContactCopyItem *)self initWithProtobuf:v6];

  return v7;
}

@end