@interface ICQTipCriteria
- (ICQTipCriteria)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQTipCriteria

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQTipCriteria);
  [(ICQTipCriteria *)v4 setMinimumRange:self->_minimumRange];
  [(ICQTipCriteria *)v4 setMaximumRange:self->_maximumRange];
  [(ICQTipCriteria *)v4 setCriteriaURL:self->_criteriaURL];
  [(ICQTipCriteria *)v4 setExcludeApps:self->_excludeApps];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  minimumRange = self->_minimumRange;
  v5 = a3;
  [v5 encodeObject:minimumRange forKey:@"minimumRange"];
  [v5 encodeObject:self->_maximumRange forKey:@"maximumRange"];
  [v5 encodeObject:self->_criteriaURL forKey:@"criteriaURL"];
  [v5 encodeObject:self->_excludeApps forKey:@"excludeApps"];
}

- (ICQTipCriteria)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ICQTipCriteria;
  v5 = [(ICQTipCriteria *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumRange"];
    minimumRange = v5->_minimumRange;
    v5->_minimumRange = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumRange"];
    maximumRange = v5->_maximumRange;
    v5->_maximumRange = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"criteriaURL"];
    criteriaURL = v5->_criteriaURL;
    v5->_criteriaURL = v10;

    v12 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v14 = [v12 setWithArray:v13];

    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"excludeApps"];
    excludeApps = v5->_excludeApps;
    v5->_excludeApps = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

@end