@interface TRFetchAnisetteDataResponse
- (TRFetchAnisetteDataResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRFetchAnisetteDataResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TRFetchAnisetteDataResponse;
  [(TRMessage *)&v6 encodeWithCoder:coderCopy];
  anisetteData = self->_anisetteData;
  if (anisetteData)
  {
    [coderCopy encodeObject:anisetteData forKey:@"TRAnisetteDataMessages_aD"];
  }
}

- (TRFetchAnisetteDataResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRFetchAnisetteDataResponse;
  v5 = [(TRMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRAnisetteDataMessages_aD"];
    anisetteData = v5->_anisetteData;
    v5->_anisetteData = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"anisetteData:[-%@-]", self->_anisetteData];
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TRFetchAnisetteDataResponse;
  v5 = [(TRMessage *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ %@", v5, v3];

  return v6;
}

@end