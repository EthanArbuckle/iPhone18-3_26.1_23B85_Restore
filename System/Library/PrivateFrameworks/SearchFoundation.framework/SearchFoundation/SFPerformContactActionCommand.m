@interface SFPerformContactActionCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerformContactActionCommand)initWithCoder:(id)a3;
- (SFPerformContactActionCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPerformContactActionCommand

- (SFPerformContactActionCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFPerformContactActionCommand;
  v5 = [(SFPerformContactActionCommand *)&v8 init];
  if (v5)
  {
    if ([v4 contactActionType])
    {
      -[SFPerformContactActionCommand setContactActionType:](v5, "setContactActionType:", [v4 contactActionType]);
    }

    if ([v4 didDisplayHandleOptions])
    {
      -[SFPerformContactActionCommand setDidDisplayHandleOptions:](v5, "setDidDisplayHandleOptions:", [v4 didDisplayHandleOptions]);
    }

    if ([v4 didSelectFromOptionsMenu])
    {
      -[SFPerformContactActionCommand setDidSelectFromOptionsMenu:](v5, "setDidSelectFromOptionsMenu:", [v4 didSelectFromOptionsMenu]);
    }

    v6 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFPerformContactActionCommand;
  v3 = [(SFCommand *)&v7 hash];
  v4 = [(SFPerformContactActionCommand *)self contactActionType];
  v5 = v4 ^ [(SFPerformContactActionCommand *)self didDisplayHandleOptions];
  return v3 ^ v5 ^ [(SFPerformContactActionCommand *)self didSelectFromOptionsMenu];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v8) = 1;
  }

  else if ([(SFPerformContactActionCommand *)v4 isMemberOfClass:objc_opt_class()]&& (v11.receiver = self, v11.super_class = SFPerformContactActionCommand, [(SFCommand *)&v11 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFPerformContactActionCommand *)self contactActionType];
    if (v6 == [(SFPerformContactActionCommand *)v5 contactActionType]&& (v7 = [(SFPerformContactActionCommand *)self didDisplayHandleOptions], v7 == [(SFPerformContactActionCommand *)v5 didDisplayHandleOptions]))
    {
      v9 = [(SFPerformContactActionCommand *)self didSelectFromOptionsMenu];
      v8 = v9 ^ [(SFPerformContactActionCommand *)v5 didSelectFromOptionsMenu]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SFPerformContactActionCommand;
  v4 = [(SFCommand *)&v6 copyWithZone:a3];
  [v4 setContactActionType:{-[SFPerformContactActionCommand contactActionType](self, "contactActionType")}];
  [v4 setDidDisplayHandleOptions:{-[SFPerformContactActionCommand didDisplayHandleOptions](self, "didDisplayHandleOptions")}];
  [v4 setDidSelectFromOptionsMenu:{-[SFPerformContactActionCommand didSelectFromOptionsMenu](self, "didSelectFromOptionsMenu")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerformContactActionCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPerformContactActionCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerformContactActionCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPerformContactActionCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFPerformContactActionCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFPerformContactActionCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFPerformContactActionCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFPerformContactActionCommand *)v5 setContactActionType:[(SFCommand *)v8 contactActionType]];
    [(SFPerformContactActionCommand *)v5 setDidDisplayHandleOptions:[(SFCommand *)v8 didDisplayHandleOptions]];
    [(SFPerformContactActionCommand *)v5 setDidSelectFromOptionsMenu:[(SFCommand *)v8 didSelectFromOptionsMenu]];
    v9 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v9];

    v10 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v10];

    v11 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v11];

    v12 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v12];
  }

  return v5;
}

@end