@interface SFTableColumnAlignment
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTableColumnAlignment)initWithCoder:(id)a3;
- (SFTableColumnAlignment)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFTableColumnAlignment

- (SFTableColumnAlignment)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFTableColumnAlignment;
  v5 = [(SFTableColumnAlignment *)&v8 init];
  if (v5)
  {
    if ([v4 columnAlignment])
    {
      -[SFTableColumnAlignment setColumnAlignment:](v5, "setColumnAlignment:", [v4 columnAlignment]);
    }

    if ([v4 dataAlignment])
    {
      -[SFTableColumnAlignment setDataAlignment:](v5, "setDataAlignment:", [v4 dataAlignment]);
    }

    if ([v4 isEqualWidth])
    {
      -[SFTableColumnAlignment setIsEqualWidth:](v5, "setIsEqualWidth:", [v4 isEqualWidth]);
    }

    v6 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFTableColumnAlignment *)self columnAlignment];
  v4 = [(SFTableColumnAlignment *)self dataAlignment]^ v3;
  return v4 ^ [(SFTableColumnAlignment *)self isEqualWidth];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else if ([(SFTableColumnAlignment *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFTableColumnAlignment *)self columnAlignment];
    if (v6 == [(SFTableColumnAlignment *)v5 columnAlignment]&& (v7 = [(SFTableColumnAlignment *)self dataAlignment], v7 == [(SFTableColumnAlignment *)v5 dataAlignment]))
    {
      v8 = [(SFTableColumnAlignment *)self isEqualWidth];
      v9 = v8 ^ [(SFTableColumnAlignment *)v5 isEqualWidth]^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setColumnAlignment:{-[SFTableColumnAlignment columnAlignment](self, "columnAlignment")}];
  [v4 setDataAlignment:{-[SFTableColumnAlignment dataAlignment](self, "dataAlignment")}];
  [v4 setIsEqualWidth:{-[SFTableColumnAlignment isEqualWidth](self, "isEqualWidth")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTableColumnAlignment alloc] initWithFacade:self];
  v3 = [(_SFPBTableColumnAlignment *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTableColumnAlignment alloc] initWithFacade:self];
  v3 = [(_SFPBTableColumnAlignment *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBTableColumnAlignment alloc] initWithFacade:self];
  v5 = [(_SFPBTableColumnAlignment *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFTableColumnAlignment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTableColumnAlignment alloc] initWithData:v5];
  v7 = [(SFTableColumnAlignment *)self initWithProtobuf:v6];

  return v7;
}

@end