@interface STUpdateWatchListRequest
- (STUpdateWatchListRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STUpdateWatchListRequest

- (STUpdateWatchListRequest)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = STUpdateWatchListRequest;
  v5 = [(AFSiriRequest *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_contentIdentifiersToAdd"];
    contentIdentifiersToAdd = v5->_contentIdentifiersToAdd;
    v5->_contentIdentifiersToAdd = v9;

    v11 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_contentIdentifiersToRemove"];
    contentIdentifiersToRemove = v5->_contentIdentifiersToRemove;
    v5->_contentIdentifiersToRemove = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STUpdateWatchListRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_contentIdentifiersToAdd forKey:{@"_contentIdentifiersToAdd", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_contentIdentifiersToRemove forKey:@"_contentIdentifiersToRemove"];
}

@end