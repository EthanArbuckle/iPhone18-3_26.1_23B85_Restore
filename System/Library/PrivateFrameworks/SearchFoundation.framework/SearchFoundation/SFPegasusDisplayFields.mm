@interface SFPegasusDisplayFields
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPegasusDisplayFields)initWithCoder:(id)a3;
- (SFPegasusDisplayFields)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPegasusDisplayFields

- (SFPegasusDisplayFields)initWithProtobuf:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SFPegasusDisplayFields;
  v5 = [(SFPegasusDisplayFields *)&v18 init];
  if (v5)
  {
    v6 = [v4 displayStatus];

    if (v6)
    {
      v7 = [v4 displayStatus];
      [(SFPegasusDisplayFields *)v5 setDisplayStatus:v7];
    }

    v8 = [v4 departureTime];

    if (v8)
    {
      v9 = [v4 departureTime];
      v10 = MEMORY[0x1E695DF00];
      [v9 secondsSince1970];
      v11 = [v10 dateWithTimeIntervalSince1970:?];
      [(SFPegasusDisplayFields *)v5 setDepartureTime:v11];
    }

    v12 = [v4 arrivalTime];

    if (v12)
    {
      v13 = [v4 arrivalTime];
      v14 = MEMORY[0x1E695DF00];
      [v13 secondsSince1970];
      v15 = [v14 dateWithTimeIntervalSince1970:?];
      [(SFPegasusDisplayFields *)v5 setArrivalTime:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFPegasusDisplayFields *)self displayStatus];
  v4 = [v3 hash];
  v5 = [(SFPegasusDisplayFields *)self departureTime];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFPegasusDisplayFields *)self arrivalTime];
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
    if ([(SFPegasusDisplayFields *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFPegasusDisplayFields *)self displayStatus];
      v8 = [(SFPegasusDisplayFields *)v6 displayStatus];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(SFPegasusDisplayFields *)self displayStatus];
      if (v9)
      {
        v3 = [(SFPegasusDisplayFields *)self displayStatus];
        v10 = [(SFPegasusDisplayFields *)v6 displayStatus];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(SFPegasusDisplayFields *)self departureTime];
      v13 = [(SFPegasusDisplayFields *)v6 departureTime];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(SFPegasusDisplayFields *)self departureTime];
      if (v15)
      {
        v25 = v12;
        v16 = [(SFPegasusDisplayFields *)self departureTime];
        v27 = [(SFPegasusDisplayFields *)v6 departureTime];
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

      v17 = [(SFPegasusDisplayFields *)self arrivalTime];
      v18 = [(SFPegasusDisplayFields *)v6 arrivalTime];
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
        v19 = [(SFPegasusDisplayFields *)self arrivalTime];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(SFPegasusDisplayFields *)self arrivalTime];
          v20 = [(SFPegasusDisplayFields *)v6 arrivalTime];
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
  v5 = [(SFPegasusDisplayFields *)self displayStatus];
  v6 = [v5 copy];
  [v4 setDisplayStatus:v6];

  v7 = [(SFPegasusDisplayFields *)self departureTime];
  v8 = [v7 copy];
  [v4 setDepartureTime:v8];

  v9 = [(SFPegasusDisplayFields *)self arrivalTime];
  v10 = [v9 copy];
  [v4 setArrivalTime:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPegasusDisplayFields alloc] initWithFacade:self];
  v3 = [(_SFPBPegasusDisplayFields *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPegasusDisplayFields alloc] initWithFacade:self];
  v3 = [(_SFPBPegasusDisplayFields *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBPegasusDisplayFields alloc] initWithFacade:self];
  v5 = [(_SFPBPegasusDisplayFields *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPegasusDisplayFields)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPegasusDisplayFields alloc] initWithData:v5];
  v7 = [(SFPegasusDisplayFields *)self initWithProtobuf:v6];

  return v7;
}

@end