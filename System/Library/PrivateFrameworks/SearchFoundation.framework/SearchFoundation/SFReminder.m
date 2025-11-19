@interface SFReminder
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFReminder)initWithCoder:(id)a3;
- (SFReminder)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFReminder

- (SFReminder)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFReminder;
  v5 = [(SFReminder *)&v16 init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(SFReminder *)v5 setTitle:v7];
    }

    v8 = [v4 dueDate];

    if (v8)
    {
      v9 = [v4 dueDate];
      v10 = MEMORY[0x1E695DF00];
      [v9 secondsSince1970];
      v11 = [v10 dateWithTimeIntervalSince1970:?];
      [(SFReminder *)v5 setDueDate:v11];
    }

    v12 = [v4 notes];

    if (v12)
    {
      v13 = [v4 notes];
      [(SFReminder *)v5 setNotes:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFReminder *)self title];
  v4 = [v3 hash];
  v5 = [(SFReminder *)self dueDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFReminder *)self notes];
  v8 = [v7 hash];

  return v6 ^ v8;
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
    if ([(SFReminder *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFReminder *)self title];
      v8 = [(SFReminder *)v6 title];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(SFReminder *)self title];
      if (v9)
      {
        v3 = [(SFReminder *)self title];
        v10 = [(SFReminder *)v6 title];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(SFReminder *)self dueDate];
      v13 = [(SFReminder *)v6 dueDate];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(SFReminder *)self dueDate];
      if (v15)
      {
        v25 = v12;
        v16 = [(SFReminder *)self dueDate];
        v27 = [(SFReminder *)v6 dueDate];
        v28 = v16;
        if (![v16 isEqual:?])
        {
          v11 = 0;
          v12 = v25;
          goto LABEL_25;
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

      v17 = [(SFReminder *)self notes];
      v18 = [(SFReminder *)v6 notes];
      if ((v17 != 0) == (v18 == 0))
      {

        v11 = 0;
        v15 = v29;
        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = v17;
        v26 = v18;
        v19 = [(SFReminder *)self notes];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(SFReminder *)self notes];
          v20 = [(SFReminder *)v6 notes];
          v11 = [v22 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      v10 = v31;
      if (!v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFReminder *)self title];
  v6 = [v5 copy];
  [v4 setTitle:v6];

  v7 = [(SFReminder *)self dueDate];
  v8 = [v7 copy];
  [v4 setDueDate:v8];

  v9 = [(SFReminder *)self notes];
  v10 = [v9 copy];
  [v4 setNotes:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBReminder alloc] initWithFacade:self];
  v3 = [(_SFPBReminder *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBReminder alloc] initWithFacade:self];
  v3 = [(_SFPBReminder *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBReminder alloc] initWithFacade:self];
  v5 = [(_SFPBReminder *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFReminder)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBReminder alloc] initWithData:v5];
  v7 = [(SFReminder *)self initWithProtobuf:v6];

  return v7;
}

@end