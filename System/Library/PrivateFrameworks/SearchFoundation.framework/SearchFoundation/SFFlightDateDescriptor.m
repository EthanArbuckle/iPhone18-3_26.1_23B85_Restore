@interface SFFlightDateDescriptor
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFlightDateDescriptor)initWithCoder:(id)a3;
- (SFFlightDateDescriptor)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFFlightDateDescriptor

- (SFFlightDateDescriptor)initWithProtobuf:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SFFlightDateDescriptor;
  v5 = [(SFFlightDateDescriptor *)&v19 init];
  if (v5)
  {
    v6 = [v4 scheduled];

    if (v6)
    {
      v7 = [v4 scheduled];
      v8 = MEMORY[0x1E695DF00];
      [v7 secondsSince1970];
      v9 = [v8 dateWithTimeIntervalSince1970:?];
      [(SFFlightDateDescriptor *)v5 setScheduled:v9];
    }

    v10 = [v4 current];

    if (v10)
    {
      v11 = [v4 current];
      v12 = MEMORY[0x1E695DF00];
      [v11 secondsSince1970];
      v13 = [v12 dateWithTimeIntervalSince1970:?];
      [(SFFlightDateDescriptor *)v5 setCurrent:v13];
    }

    [v4 bufferMinutes];
    if (v14 != 0.0)
    {
      v15 = MEMORY[0x1E696AD98];
      [v4 bufferMinutes];
      v16 = [v15 numberWithFloat:?];
      [(SFFlightDateDescriptor *)v5 setBufferMinutes:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFFlightDateDescriptor *)self scheduled];
  v4 = [v3 hash];
  v5 = [(SFFlightDateDescriptor *)self current];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFFlightDateDescriptor *)self bufferMinutes];
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
    if ([(SFFlightDateDescriptor *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFFlightDateDescriptor *)self scheduled];
      v8 = [(SFFlightDateDescriptor *)v6 scheduled];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(SFFlightDateDescriptor *)self scheduled];
      if (v9)
      {
        v3 = [(SFFlightDateDescriptor *)self scheduled];
        v10 = [(SFFlightDateDescriptor *)v6 scheduled];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(SFFlightDateDescriptor *)self current];
      v13 = [(SFFlightDateDescriptor *)v6 current];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(SFFlightDateDescriptor *)self current];
      if (v15)
      {
        v25 = v12;
        v16 = [(SFFlightDateDescriptor *)self current];
        v27 = [(SFFlightDateDescriptor *)v6 current];
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

      v17 = [(SFFlightDateDescriptor *)self bufferMinutes];
      v18 = [(SFFlightDateDescriptor *)v6 bufferMinutes];
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
        v19 = [(SFFlightDateDescriptor *)self bufferMinutes];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(SFFlightDateDescriptor *)self bufferMinutes];
          v20 = [(SFFlightDateDescriptor *)v6 bufferMinutes];
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
  v5 = [(SFFlightDateDescriptor *)self scheduled];
  v6 = [v5 copy];
  [v4 setScheduled:v6];

  v7 = [(SFFlightDateDescriptor *)self current];
  v8 = [v7 copy];
  [v4 setCurrent:v8];

  v9 = [(SFFlightDateDescriptor *)self bufferMinutes];
  v10 = [v9 copy];
  [v4 setBufferMinutes:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFlightDateDescriptor alloc] initWithFacade:self];
  v3 = [(_SFPBFlightDateDescriptor *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFlightDateDescriptor alloc] initWithFacade:self];
  v3 = [(_SFPBFlightDateDescriptor *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBFlightDateDescriptor alloc] initWithFacade:self];
  v5 = [(_SFPBFlightDateDescriptor *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFFlightDateDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBFlightDateDescriptor alloc] initWithData:v5];
  v7 = [(SFFlightDateDescriptor *)self initWithProtobuf:v6];

  return v7;
}

@end