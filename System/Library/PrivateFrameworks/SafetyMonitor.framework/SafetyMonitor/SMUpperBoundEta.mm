@interface SMUpperBoundEta
- (BOOL)isEqual:(id)a3;
- (SMUpperBoundEta)initWithCoder:(id)a3;
- (SMUpperBoundEta)initWithMapsUpperBoundEta:(id)a3 crowFliesUpperBoundEta:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMUpperBoundEta

- (SMUpperBoundEta)initWithMapsUpperBoundEta:(id)a3 crowFliesUpperBoundEta:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v13.receiver = self;
    v13.super_class = SMUpperBoundEta;
    v9 = [(SMUpperBoundEta *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_mapsUpperBoundEta, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SMUpperBoundEta *)self mapsUpperBoundEta];
  v5 = [v4 stringFromDate];
  v6 = [(SMUpperBoundEta *)self crowFliesUpperBoundEta];
  v7 = [v6 stringFromDate];
  v8 = [v3 stringWithFormat:@"mapsUpperBoundEta, %@, crowFliesUpperBoundEta, %@", v5, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SMUpperBoundEta *)self mapsUpperBoundEta];
  v4 = [v3 hash];
  v5 = [(SMUpperBoundEta *)self crowFliesUpperBoundEta];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SMUpperBoundEta *)self mapsUpperBoundEta];
      v7 = [(SMUpperBoundEta *)v5 mapsUpperBoundEta];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(SMUpperBoundEta *)self mapsUpperBoundEta];
        v9 = [(SMUpperBoundEta *)v5 mapsUpperBoundEta];
        v10 = [v8 isEqual:v9];
      }

      v12 = [(SMUpperBoundEta *)self crowFliesUpperBoundEta];
      v13 = [(SMUpperBoundEta *)v5 crowFliesUpperBoundEta];
      if (v12 == v13)
      {
        v16 = 1;
      }

      else
      {
        v14 = [(SMUpperBoundEta *)self crowFliesUpperBoundEta];
        v15 = [(SMUpperBoundEta *)v5 crowFliesUpperBoundEta];
        v16 = [v14 isEqual:v15];
      }

      v11 = v10 & v16;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (SMUpperBoundEta)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMUpperBoundEtaMapsUpperBoundEtaKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMUpperBoundEtaCrowFliesUpperBoundEtaKey"];

  v7 = [(SMUpperBoundEta *)self initWithMapsUpperBoundEta:v5 crowFliesUpperBoundEta:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  mapsUpperBoundEta = self->_mapsUpperBoundEta;
  v5 = a3;
  [v5 encodeObject:mapsUpperBoundEta forKey:@"__kSMUpperBoundEtaMapsUpperBoundEtaKey"];
  [v5 encodeObject:self->_crowFliesUpperBoundEta forKey:@"__kSMUpperBoundEtaCrowFliesUpperBoundEtaKey"];
}

@end