@interface ICQTipCriteria
- (ICQTipCriteria)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQTipCriteria

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQTipCriteria);
  [(ICQTipCriteria *)v4 setMinimumRange:self->_minimumRange];
  [(ICQTipCriteria *)v4 setMaximumRange:self->_maximumRange];
  [(ICQTipCriteria *)v4 setCriteriaURL:self->_criteriaURL];
  [(ICQTipCriteria *)v4 setExcludeApps:self->_excludeApps];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  minimumRange = self->_minimumRange;
  coderCopy = coder;
  [coderCopy encodeObject:minimumRange forKey:@"minimumRange"];
  [coderCopy encodeObject:self->_maximumRange forKey:@"maximumRange"];
  [coderCopy encodeObject:self->_criteriaURL forKey:@"criteriaURL"];
  [coderCopy encodeObject:self->_excludeApps forKey:@"excludeApps"];
}

- (ICQTipCriteria)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ICQTipCriteria;
  v5 = [(ICQTipCriteria *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumRange"];
    minimumRange = v5->_minimumRange;
    v5->_minimumRange = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumRange"];
    maximumRange = v5->_maximumRange;
    v5->_maximumRange = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"criteriaURL"];
    criteriaURL = v5->_criteriaURL;
    v5->_criteriaURL = v10;

    v12 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v14 = [v12 setWithArray:v13];

    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"excludeApps"];
    excludeApps = v5->_excludeApps;
    v5->_excludeApps = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

@end