@interface SFText
+ (id)textWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFText)initWithCoder:(id)a3;
- (SFText)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFText

- (unint64_t)hash
{
  v3 = [(SFText *)self text];
  v4 = [v3 hash];
  v5 = [(SFText *)self maxLines];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFText *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(SFText *)self text];
      v9 = [(SFText *)v7 text];
      if ((v8 != 0) == (v9 == 0))
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v10 = [(SFText *)self text];
      if (!v10 || (-[SFText text](self, "text"), v3 = objc_claimAutoreleasedReturnValue(), -[SFText text](v7, "text"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v12 = [(SFText *)self maxLines];
        v11 = v12 == [(SFText *)v7 maxLines];
        if (!v10)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_12;
    }

    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFText *)self text];
  v6 = [v5 copy];
  [v4 setText:v6];

  [v4 setMaxLines:{-[SFText maxLines](self, "maxLines")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBText alloc] initWithFacade:self];
  v3 = [(_SFPBText *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBText alloc] initWithFacade:self];
  v3 = [(_SFPBText *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBText alloc] initWithFacade:self];
  v5 = [(_SFPBText *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFText)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBText alloc] initWithData:v5];
  v7 = [(SFText *)self initWithProtobuf:v6];

  return v7;
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v4 = [(SFText *)self text];
  LOWORD(a3) = [v4 characterAtIndex:a3];

  return a3;
}

- (unint64_t)length
{
  v2 = [(SFText *)self text];
  v3 = [v2 length];

  return v3;
}

+ (id)textWithString:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setText:v3];

  return v4;
}

- (SFText)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFText;
  v5 = [(SFText *)&v10 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [v4 text];
      [(SFText *)v5 setText:v7];
    }

    if ([v4 maxLines])
    {
      -[SFText setMaxLines:](v5, "setMaxLines:", [v4 maxLines]);
    }

    v8 = v5;
  }

  return v5;
}

@end