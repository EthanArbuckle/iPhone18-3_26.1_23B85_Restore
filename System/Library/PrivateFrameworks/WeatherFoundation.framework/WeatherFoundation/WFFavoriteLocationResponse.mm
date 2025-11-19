@interface WFFavoriteLocationResponse
- (WFFavoriteLocationResponse)initWithCoder:(id)a3;
- (WFFavoriteLocationResponse)initWithIdentifier:(id)a3 favorites:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFavoriteLocationResponse

- (WFFavoriteLocationResponse)initWithIdentifier:(id)a3 favorites:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WFFavoriteLocationResponse;
  v8 = [(WFResponse *)&v12 initWithIdentifier:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_favoriteLocations, a4);
    v10 = v9;
  }

  return v9;
}

- (WFFavoriteLocationResponse)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFFavoriteLocationResponse;
  v5 = [(WFResponse *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"favoriteLocations"];
    favoriteLocations = v5->_favoriteLocations;
    v5->_favoriteLocations = v9;

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFFavoriteLocationResponse;
  v4 = a3;
  [(WFResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_favoriteLocations forKey:{@"favoriteLocations", v5.receiver, v5.super_class}];
}

@end