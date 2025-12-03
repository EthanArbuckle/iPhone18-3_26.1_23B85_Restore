@interface SMUpperBoundEta
- (BOOL)isEqual:(id)equal;
- (SMUpperBoundEta)initWithCoder:(id)coder;
- (SMUpperBoundEta)initWithMapsUpperBoundEta:(id)eta crowFliesUpperBoundEta:(id)boundEta;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMUpperBoundEta

- (SMUpperBoundEta)initWithMapsUpperBoundEta:(id)eta crowFliesUpperBoundEta:(id)boundEta
{
  etaCopy = eta;
  boundEtaCopy = boundEta;
  if (boundEtaCopy)
  {
    v13.receiver = self;
    v13.super_class = SMUpperBoundEta;
    v9 = [(SMUpperBoundEta *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_mapsUpperBoundEta, eta);
      objc_storeStrong(p_isa + 2, boundEta);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  mapsUpperBoundEta = [(SMUpperBoundEta *)self mapsUpperBoundEta];
  stringFromDate = [mapsUpperBoundEta stringFromDate];
  crowFliesUpperBoundEta = [(SMUpperBoundEta *)self crowFliesUpperBoundEta];
  stringFromDate2 = [crowFliesUpperBoundEta stringFromDate];
  v8 = [v3 stringWithFormat:@"mapsUpperBoundEta, %@, crowFliesUpperBoundEta, %@", stringFromDate, stringFromDate2];

  return v8;
}

- (unint64_t)hash
{
  mapsUpperBoundEta = [(SMUpperBoundEta *)self mapsUpperBoundEta];
  v4 = [mapsUpperBoundEta hash];
  crowFliesUpperBoundEta = [(SMUpperBoundEta *)self crowFliesUpperBoundEta];
  v6 = [crowFliesUpperBoundEta hash];

  return v6 ^ v4;
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
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      mapsUpperBoundEta = [(SMUpperBoundEta *)self mapsUpperBoundEta];
      mapsUpperBoundEta2 = [(SMUpperBoundEta *)v5 mapsUpperBoundEta];
      if (mapsUpperBoundEta == mapsUpperBoundEta2)
      {
        v10 = 1;
      }

      else
      {
        mapsUpperBoundEta3 = [(SMUpperBoundEta *)self mapsUpperBoundEta];
        mapsUpperBoundEta4 = [(SMUpperBoundEta *)v5 mapsUpperBoundEta];
        v10 = [mapsUpperBoundEta3 isEqual:mapsUpperBoundEta4];
      }

      crowFliesUpperBoundEta = [(SMUpperBoundEta *)self crowFliesUpperBoundEta];
      crowFliesUpperBoundEta2 = [(SMUpperBoundEta *)v5 crowFliesUpperBoundEta];
      if (crowFliesUpperBoundEta == crowFliesUpperBoundEta2)
      {
        v16 = 1;
      }

      else
      {
        crowFliesUpperBoundEta3 = [(SMUpperBoundEta *)self crowFliesUpperBoundEta];
        crowFliesUpperBoundEta4 = [(SMUpperBoundEta *)v5 crowFliesUpperBoundEta];
        v16 = [crowFliesUpperBoundEta3 isEqual:crowFliesUpperBoundEta4];
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

- (SMUpperBoundEta)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMUpperBoundEtaMapsUpperBoundEtaKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMUpperBoundEtaCrowFliesUpperBoundEtaKey"];

  v7 = [(SMUpperBoundEta *)self initWithMapsUpperBoundEta:v5 crowFliesUpperBoundEta:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  mapsUpperBoundEta = self->_mapsUpperBoundEta;
  coderCopy = coder;
  [coderCopy encodeObject:mapsUpperBoundEta forKey:@"__kSMUpperBoundEtaMapsUpperBoundEtaKey"];
  [coderCopy encodeObject:self->_crowFliesUpperBoundEta forKey:@"__kSMUpperBoundEtaCrowFliesUpperBoundEtaKey"];
}

@end