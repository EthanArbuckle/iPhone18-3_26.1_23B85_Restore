@interface SFReminder
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFReminder)initWithCoder:(id)coder;
- (SFReminder)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFReminder

- (SFReminder)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFReminder;
  v5 = [(SFReminder *)&v16 init];
  if (v5)
  {
    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFReminder *)v5 setTitle:title2];
    }

    dueDate = [protobufCopy dueDate];

    if (dueDate)
    {
      dueDate2 = [protobufCopy dueDate];
      v10 = MEMORY[0x1E695DF00];
      [dueDate2 secondsSince1970];
      v11 = [v10 dateWithTimeIntervalSince1970:?];
      [(SFReminder *)v5 setDueDate:v11];
    }

    notes = [protobufCopy notes];

    if (notes)
    {
      notes2 = [protobufCopy notes];
      [(SFReminder *)v5 setNotes:notes2];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  title = [(SFReminder *)self title];
  v4 = [title hash];
  dueDate = [(SFReminder *)self dueDate];
  v6 = [dueDate hash] ^ v4;
  notes = [(SFReminder *)self notes];
  v8 = [notes hash];

  return v6 ^ v8;
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
    if ([(SFReminder *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      title = [(SFReminder *)self title];
      title2 = [(SFReminder *)v6 title];
      if ((title != 0) == (title2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      title3 = [(SFReminder *)self title];
      if (title3)
      {
        title4 = [(SFReminder *)self title];
        title5 = [(SFReminder *)v6 title];
        if (![title4 isEqual:title5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = title5;
      }

      dueDate = [(SFReminder *)self dueDate];
      dueDate2 = [(SFReminder *)v6 dueDate];
      v14 = dueDate2;
      if ((dueDate != 0) == (dueDate2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      dueDate3 = [(SFReminder *)self dueDate];
      if (dueDate3)
      {
        v25 = dueDate;
        dueDate4 = [(SFReminder *)self dueDate];
        dueDate5 = [(SFReminder *)v6 dueDate];
        v28 = dueDate4;
        if (![dueDate4 isEqual:?])
        {
          v11 = 0;
          dueDate = v25;
          goto LABEL_25;
        }

        v29 = dueDate3;
        v30 = title4;
        dueDate = v25;
      }

      else
      {
        v29 = 0;
        v30 = title4;
      }

      notes = [(SFReminder *)self notes];
      notes2 = [(SFReminder *)v6 notes];
      if ((notes != 0) == (notes2 == 0))
      {

        v11 = 0;
        dueDate3 = v29;
        title4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = notes;
        v26 = notes2;
        notes3 = [(SFReminder *)self notes];
        dueDate3 = v29;
        if (notes3)
        {
          v23 = notes3;
          notes4 = [(SFReminder *)self notes];
          notes5 = [(SFReminder *)v6 notes];
          v11 = [notes4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        title4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      title5 = v31;
      if (!title3)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(SFReminder *)self title];
  v6 = [title copy];
  [v4 setTitle:v6];

  dueDate = [(SFReminder *)self dueDate];
  v8 = [dueDate copy];
  [v4 setDueDate:v8];

  notes = [(SFReminder *)self notes];
  v10 = [notes copy];
  [v4 setNotes:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBReminder alloc] initWithFacade:self];
  jsonData = [(_SFPBReminder *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBReminder alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBReminder *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBReminder alloc] initWithFacade:self];
  data = [(_SFPBReminder *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFReminder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBReminder alloc] initWithData:v5];
  v7 = [(SFReminder *)self initWithProtobuf:v6];

  return v7;
}

@end