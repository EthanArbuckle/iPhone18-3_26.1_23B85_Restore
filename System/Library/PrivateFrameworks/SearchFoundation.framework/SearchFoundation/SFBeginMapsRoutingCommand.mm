@interface SFBeginMapsRoutingCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFBeginMapsRoutingCommand)initWithCoder:(id)a3;
- (SFBeginMapsRoutingCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFBeginMapsRoutingCommand

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = SFBeginMapsRoutingCommand;
  v3 = [(SFCommand *)&v13 hash];
  v4 = [(SFBeginMapsRoutingCommand *)self location];
  v5 = [v4 hash];
  v6 = [(SFBeginMapsRoutingCommand *)self mapsData];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(SFBeginMapsRoutingCommand *)self shouldSearchDirectionsAlongCurrentRoute];
  v9 = [(SFBeginMapsRoutingCommand *)self name];
  v10 = v8 ^ [v9 hash];
  v11 = v10 ^ [(SFBeginMapsRoutingCommand *)self directionsMode];

  return v11 ^ v3;
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
    if ([(SFBeginMapsRoutingCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v35.receiver = self;
      v35.super_class = SFBeginMapsRoutingCommand;
      if ([(SFCommand *)&v35 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFBeginMapsRoutingCommand *)self location];
        v8 = [(SFBeginMapsRoutingCommand *)v6 location];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_32:

          goto LABEL_33;
        }

        v9 = [(SFBeginMapsRoutingCommand *)self location];
        if (v9)
        {
          v10 = [(SFBeginMapsRoutingCommand *)self location];
          v3 = [(SFBeginMapsRoutingCommand *)v6 location];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_30;
          }

          v34 = v10;
        }

        v12 = [(SFBeginMapsRoutingCommand *)self mapsData];
        v13 = [(SFBeginMapsRoutingCommand *)v6 mapsData];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_29;
        }

        v15 = [(SFBeginMapsRoutingCommand *)self mapsData];
        if (v15)
        {
          v29 = v14;
          v16 = v12;
          v17 = v3;
          v18 = [(SFBeginMapsRoutingCommand *)self mapsData];
          v31 = [(SFBeginMapsRoutingCommand *)v6 mapsData];
          v32 = v18;
          if (![v18 isEqual:?])
          {
            v11 = 0;
            v3 = v17;
            v12 = v16;
            v14 = v29;
            goto LABEL_27;
          }

          v33 = v15;
          v3 = v17;
          v12 = v16;
          v14 = v29;
        }

        else
        {
          v33 = 0;
        }

        v19 = [(SFBeginMapsRoutingCommand *)self shouldSearchDirectionsAlongCurrentRoute];
        if (v19 == [(SFBeginMapsRoutingCommand *)v6 shouldSearchDirectionsAlongCurrentRoute])
        {
          v20 = [(SFBeginMapsRoutingCommand *)self name];
          v21 = [(SFBeginMapsRoutingCommand *)v6 name];
          if ((v20 != 0) != (v21 == 0))
          {
            v27 = v21;
            v28 = v20;
            v30 = [(SFBeginMapsRoutingCommand *)self name];
            if (v30)
            {
              v22 = [(SFBeginMapsRoutingCommand *)self name];
              v25 = [(SFBeginMapsRoutingCommand *)v6 name];
              v26 = v22;
              if (![v22 isEqual:?])
              {
                v11 = 0;
                goto LABEL_35;
              }
            }

            v24 = [(SFBeginMapsRoutingCommand *)self directionsMode];
            v11 = v24 == [(SFBeginMapsRoutingCommand *)v6 directionsMode];
            if (v30)
            {
LABEL_35:
              v15 = v33;

              if (!v33)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }

        v11 = 0;
LABEL_26:
        v15 = v33;
        if (!v33)
        {
LABEL_28:

LABEL_29:
          v10 = v34;
          if (!v9)
          {
LABEL_31:

            goto LABEL_32;
          }

LABEL_30:

          goto LABEL_31;
        }

LABEL_27:

        goto LABEL_28;
      }
    }

    v11 = 0;
  }

LABEL_33:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFBeginMapsRoutingCommand;
  v4 = [(SFCommand *)&v12 copyWithZone:a3];
  v5 = [(SFBeginMapsRoutingCommand *)self location];
  v6 = [v5 copy];
  [v4 setLocation:v6];

  v7 = [(SFBeginMapsRoutingCommand *)self mapsData];
  v8 = [v7 copy];
  [v4 setMapsData:v8];

  [v4 setShouldSearchDirectionsAlongCurrentRoute:{-[SFBeginMapsRoutingCommand shouldSearchDirectionsAlongCurrentRoute](self, "shouldSearchDirectionsAlongCurrentRoute")}];
  v9 = [(SFBeginMapsRoutingCommand *)self name];
  v10 = [v9 copy];
  [v4 setName:v10];

  [v4 setDirectionsMode:{-[SFBeginMapsRoutingCommand directionsMode](self, "directionsMode")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBBeginMapsRoutingCommand alloc] initWithFacade:self];
  v3 = [(_SFPBBeginMapsRoutingCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBBeginMapsRoutingCommand alloc] initWithFacade:self];
  v3 = [(_SFPBBeginMapsRoutingCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFBeginMapsRoutingCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFBeginMapsRoutingCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFBeginMapsRoutingCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 location];
    [(SFBeginMapsRoutingCommand *)v5 setLocation:v9];

    v10 = [(SFCommand *)v8 mapsData];
    [(SFBeginMapsRoutingCommand *)v5 setMapsData:v10];

    [(SFBeginMapsRoutingCommand *)v5 setShouldSearchDirectionsAlongCurrentRoute:[(SFCommand *)v8 shouldSearchDirectionsAlongCurrentRoute]];
    v11 = [(SFCommand *)v8 name];
    [(SFBeginMapsRoutingCommand *)v5 setName:v11];

    [(SFBeginMapsRoutingCommand *)v5 setDirectionsMode:[(SFCommand *)v8 directionsMode]];
    v12 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v12];

    v13 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v13];

    v14 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v14];

    v15 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v15];
  }

  return v5;
}

- (SFBeginMapsRoutingCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFBeginMapsRoutingCommand;
  v5 = [(SFBeginMapsRoutingCommand *)&v16 init];
  if (v5)
  {
    v6 = [v4 location];

    if (v6)
    {
      v7 = [SFLatLng alloc];
      v8 = [v4 location];
      v9 = [(SFLatLng *)v7 initWithProtobuf:v8];
      [(SFBeginMapsRoutingCommand *)v5 setLocation:v9];
    }

    v10 = [v4 mapsData];

    if (v10)
    {
      v11 = [v4 mapsData];
      [(SFBeginMapsRoutingCommand *)v5 setMapsData:v11];
    }

    if ([v4 shouldSearchDirectionsAlongCurrentRoute])
    {
      -[SFBeginMapsRoutingCommand setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [v4 shouldSearchDirectionsAlongCurrentRoute]);
    }

    v12 = [v4 name];

    if (v12)
    {
      v13 = [v4 name];
      [(SFBeginMapsRoutingCommand *)v5 setName:v13];
    }

    if ([v4 directionsMode])
    {
      -[SFBeginMapsRoutingCommand setDirectionsMode:](v5, "setDirectionsMode:", [v4 directionsMode]);
    }

    v14 = v5;
  }

  return v5;
}

@end