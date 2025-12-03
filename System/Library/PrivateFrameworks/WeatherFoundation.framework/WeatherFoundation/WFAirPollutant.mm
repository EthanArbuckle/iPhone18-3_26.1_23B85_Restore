@interface WFAirPollutant
- (WFAirPollutant)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAirPollutant

- (WFAirPollutant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = WFAirPollutant;
  v5 = [(WFAirPollutant *)&v27 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_localizedName);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_localizedDescription);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v12;

    v14 = NSStringFromSelector(sel_amount);
    [coderCopy decodeDoubleForKey:v14];
    v5->_amount = v15;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_unit);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    unit = v5->_unit;
    v5->_unit = v18;

    v20 = objc_opt_class();
    v21 = NSStringFromSelector(sel_localizedCategoryDescription);
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
    localizedCategoryDescription = v5->_localizedCategoryDescription;
    v5->_localizedCategoryDescription = v22;

    v24 = NSStringFromSelector(sel_categoryIndex);
    v5->_categoryIndex = [coderCopy decodeIntegerForKey:v24];

    v25 = NSStringFromSelector(sel_index);
    v5->_index = [coderCopy decodeIntegerForKey:v25];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localizedName = [(WFAirPollutant *)self localizedName];
  v6 = NSStringFromSelector(sel_localizedName);
  [coderCopy encodeObject:localizedName forKey:v6];

  localizedDescription = [(WFAirPollutant *)self localizedDescription];
  v8 = NSStringFromSelector(sel_localizedDescription);
  [coderCopy encodeObject:localizedDescription forKey:v8];

  [(WFAirPollutant *)self amount];
  v10 = v9;
  v11 = NSStringFromSelector(sel_amount);
  [coderCopy encodeDouble:v11 forKey:v10];

  unit = [(WFAirPollutant *)self unit];
  v13 = NSStringFromSelector(sel_unit);
  [coderCopy encodeObject:unit forKey:v13];

  localizedCategoryDescription = [(WFAirPollutant *)self localizedCategoryDescription];
  v15 = NSStringFromSelector(sel_localizedCategoryDescription);
  [coderCopy encodeObject:localizedCategoryDescription forKey:v15];

  categoryIndex = [(WFAirPollutant *)self categoryIndex];
  v17 = NSStringFromSelector(sel_categoryIndex);
  [coderCopy encodeInteger:categoryIndex forKey:v17];

  index = [(WFAirPollutant *)self index];
  v19 = NSStringFromSelector(sel_index);
  [coderCopy encodeInteger:index forKey:v19];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  if (v4)
  {
    localizedName = [(WFAirPollutant *)self localizedName];
    [v4 setLocalizedName:localizedName];

    localizedDescription = [(WFAirPollutant *)self localizedDescription];
    [v4 setLocalizedDescription:localizedDescription];

    [(WFAirPollutant *)self amount];
    [v4 setAmount:?];
    unit = [(WFAirPollutant *)self unit];
    [v4 setUnit:unit];

    localizedCategoryDescription = [(WFAirPollutant *)self localizedCategoryDescription];
    [v4 setLocalizedCategoryDescription:localizedCategoryDescription];

    [v4 setCategoryIndex:{-[WFAirPollutant categoryIndex](self, "categoryIndex")}];
    [v4 setIndex:{-[WFAirPollutant index](self, "index")}];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  localizedName = [(WFAirPollutant *)self localizedName];
  localizedDescription = [(WFAirPollutant *)self localizedDescription];
  [(WFAirPollutant *)self amount];
  v7 = v6;
  unit = [(WFAirPollutant *)self unit];
  localizedCategoryDescription = [(WFAirPollutant *)self localizedCategoryDescription];
  v10 = [v3 stringWithFormat:@"<WFAirPollutant localizedName: %@, localizedDescription: %@, amount: %f, unit: %@, localizedCategoryDescription: %@, categoryIndex: %lu, index: %lu", localizedName, localizedDescription, v7, unit, localizedCategoryDescription, -[WFAirPollutant categoryIndex](self, "categoryIndex"), -[WFAirPollutant index](self, "index")];

  return v10;
}

@end