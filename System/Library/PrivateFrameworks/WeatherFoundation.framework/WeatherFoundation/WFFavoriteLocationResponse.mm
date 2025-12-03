@interface WFFavoriteLocationResponse
- (WFFavoriteLocationResponse)initWithCoder:(id)coder;
- (WFFavoriteLocationResponse)initWithIdentifier:(id)identifier favorites:(id)favorites;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFavoriteLocationResponse

- (WFFavoriteLocationResponse)initWithIdentifier:(id)identifier favorites:(id)favorites
{
  favoritesCopy = favorites;
  v12.receiver = self;
  v12.super_class = WFFavoriteLocationResponse;
  v8 = [(WFResponse *)&v12 initWithIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_favoriteLocations, favorites);
    v10 = v9;
  }

  return v9;
}

- (WFFavoriteLocationResponse)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WFFavoriteLocationResponse;
  v5 = [(WFResponse *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"favoriteLocations"];
    favoriteLocations = v5->_favoriteLocations;
    v5->_favoriteLocations = v9;

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFFavoriteLocationResponse;
  coderCopy = coder;
  [(WFResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_favoriteLocations forKey:{@"favoriteLocations", v5.receiver, v5.super_class}];
}

@end