@interface SFBeginMapsRoutingCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFBeginMapsRoutingCommand)initWithCoder:(id)coder;
- (SFBeginMapsRoutingCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFBeginMapsRoutingCommand

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = SFBeginMapsRoutingCommand;
  v3 = [(SFCommand *)&v13 hash];
  location = [(SFBeginMapsRoutingCommand *)self location];
  v5 = [location hash];
  mapsData = [(SFBeginMapsRoutingCommand *)self mapsData];
  v7 = v5 ^ [mapsData hash];
  v8 = v7 ^ [(SFBeginMapsRoutingCommand *)self shouldSearchDirectionsAlongCurrentRoute];
  name = [(SFBeginMapsRoutingCommand *)self name];
  v10 = v8 ^ [name hash];
  v11 = v10 ^ [(SFBeginMapsRoutingCommand *)self directionsMode];

  return v11 ^ v3;
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
    if ([(SFBeginMapsRoutingCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v35.receiver = self;
      v35.super_class = SFBeginMapsRoutingCommand;
      if ([(SFCommand *)&v35 isEqual:equalCopy])
      {
        v6 = equalCopy;
        location = [(SFBeginMapsRoutingCommand *)self location];
        location2 = [(SFBeginMapsRoutingCommand *)v6 location];
        if ((location != 0) == (location2 == 0))
        {
          v11 = 0;
LABEL_32:

          goto LABEL_33;
        }

        location3 = [(SFBeginMapsRoutingCommand *)self location];
        if (location3)
        {
          location4 = [(SFBeginMapsRoutingCommand *)self location];
          location5 = [(SFBeginMapsRoutingCommand *)v6 location];
          if (![location4 isEqual:location5])
          {
            v11 = 0;
            goto LABEL_30;
          }

          v34 = location4;
        }

        mapsData = [(SFBeginMapsRoutingCommand *)self mapsData];
        mapsData2 = [(SFBeginMapsRoutingCommand *)v6 mapsData];
        v14 = mapsData2;
        if ((mapsData != 0) == (mapsData2 == 0))
        {

          v11 = 0;
          goto LABEL_29;
        }

        mapsData3 = [(SFBeginMapsRoutingCommand *)self mapsData];
        if (mapsData3)
        {
          v29 = v14;
          v16 = mapsData;
          v17 = location5;
          mapsData4 = [(SFBeginMapsRoutingCommand *)self mapsData];
          mapsData5 = [(SFBeginMapsRoutingCommand *)v6 mapsData];
          v32 = mapsData4;
          if (![mapsData4 isEqual:?])
          {
            v11 = 0;
            location5 = v17;
            mapsData = v16;
            v14 = v29;
            goto LABEL_27;
          }

          v33 = mapsData3;
          location5 = v17;
          mapsData = v16;
          v14 = v29;
        }

        else
        {
          v33 = 0;
        }

        shouldSearchDirectionsAlongCurrentRoute = [(SFBeginMapsRoutingCommand *)self shouldSearchDirectionsAlongCurrentRoute];
        if (shouldSearchDirectionsAlongCurrentRoute == [(SFBeginMapsRoutingCommand *)v6 shouldSearchDirectionsAlongCurrentRoute])
        {
          name = [(SFBeginMapsRoutingCommand *)self name];
          name2 = [(SFBeginMapsRoutingCommand *)v6 name];
          if ((name != 0) != (name2 == 0))
          {
            v27 = name2;
            v28 = name;
            name3 = [(SFBeginMapsRoutingCommand *)self name];
            if (name3)
            {
              name4 = [(SFBeginMapsRoutingCommand *)self name];
              name5 = [(SFBeginMapsRoutingCommand *)v6 name];
              v26 = name4;
              if (![name4 isEqual:?])
              {
                v11 = 0;
                goto LABEL_35;
              }
            }

            directionsMode = [(SFBeginMapsRoutingCommand *)self directionsMode];
            v11 = directionsMode == [(SFBeginMapsRoutingCommand *)v6 directionsMode];
            if (name3)
            {
LABEL_35:
              mapsData3 = v33;

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
        mapsData3 = v33;
        if (!v33)
        {
LABEL_28:

LABEL_29:
          location4 = v34;
          if (!location3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFBeginMapsRoutingCommand;
  v4 = [(SFCommand *)&v12 copyWithZone:zone];
  location = [(SFBeginMapsRoutingCommand *)self location];
  v6 = [location copy];
  [v4 setLocation:v6];

  mapsData = [(SFBeginMapsRoutingCommand *)self mapsData];
  v8 = [mapsData copy];
  [v4 setMapsData:v8];

  [v4 setShouldSearchDirectionsAlongCurrentRoute:{-[SFBeginMapsRoutingCommand shouldSearchDirectionsAlongCurrentRoute](self, "shouldSearchDirectionsAlongCurrentRoute")}];
  name = [(SFBeginMapsRoutingCommand *)self name];
  v10 = [name copy];
  [v4 setName:v10];

  [v4 setDirectionsMode:{-[SFBeginMapsRoutingCommand directionsMode](self, "directionsMode")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBBeginMapsRoutingCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBBeginMapsRoutingCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBBeginMapsRoutingCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBBeginMapsRoutingCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFBeginMapsRoutingCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFBeginMapsRoutingCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFBeginMapsRoutingCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    location = [(SFCommand *)v8 location];
    [(SFBeginMapsRoutingCommand *)v5 setLocation:location];

    mapsData = [(SFCommand *)v8 mapsData];
    [(SFBeginMapsRoutingCommand *)v5 setMapsData:mapsData];

    [(SFBeginMapsRoutingCommand *)v5 setShouldSearchDirectionsAlongCurrentRoute:[(SFCommand *)v8 shouldSearchDirectionsAlongCurrentRoute]];
    name = [(SFCommand *)v8 name];
    [(SFBeginMapsRoutingCommand *)v5 setName:name];

    [(SFBeginMapsRoutingCommand *)v5 setDirectionsMode:[(SFCommand *)v8 directionsMode]];
    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

- (SFBeginMapsRoutingCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFBeginMapsRoutingCommand;
  v5 = [(SFBeginMapsRoutingCommand *)&v16 init];
  if (v5)
  {
    location = [protobufCopy location];

    if (location)
    {
      v7 = [SFLatLng alloc];
      location2 = [protobufCopy location];
      v9 = [(SFLatLng *)v7 initWithProtobuf:location2];
      [(SFBeginMapsRoutingCommand *)v5 setLocation:v9];
    }

    mapsData = [protobufCopy mapsData];

    if (mapsData)
    {
      mapsData2 = [protobufCopy mapsData];
      [(SFBeginMapsRoutingCommand *)v5 setMapsData:mapsData2];
    }

    if ([protobufCopy shouldSearchDirectionsAlongCurrentRoute])
    {
      -[SFBeginMapsRoutingCommand setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [protobufCopy shouldSearchDirectionsAlongCurrentRoute]);
    }

    name = [protobufCopy name];

    if (name)
    {
      name2 = [protobufCopy name];
      [(SFBeginMapsRoutingCommand *)v5 setName:name2];
    }

    if ([protobufCopy directionsMode])
    {
      -[SFBeginMapsRoutingCommand setDirectionsMode:](v5, "setDirectionsMode:", [protobufCopy directionsMode]);
    }

    v14 = v5;
  }

  return v5;
}

@end