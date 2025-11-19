@interface WFAirPollutant
- (WFAirPollutant)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAirPollutant

- (WFAirPollutant)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = WFAirPollutant;
  v5 = [(WFAirPollutant *)&v27 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_localizedName);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_localizedDescription);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v12;

    v14 = NSStringFromSelector(sel_amount);
    [v4 decodeDoubleForKey:v14];
    v5->_amount = v15;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_unit);
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    unit = v5->_unit;
    v5->_unit = v18;

    v20 = objc_opt_class();
    v21 = NSStringFromSelector(sel_localizedCategoryDescription);
    v22 = [v4 decodeObjectOfClass:v20 forKey:v21];
    localizedCategoryDescription = v5->_localizedCategoryDescription;
    v5->_localizedCategoryDescription = v22;

    v24 = NSStringFromSelector(sel_categoryIndex);
    v5->_categoryIndex = [v4 decodeIntegerForKey:v24];

    v25 = NSStringFromSelector(sel_index);
    v5->_index = [v4 decodeIntegerForKey:v25];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFAirPollutant *)self localizedName];
  v6 = NSStringFromSelector(sel_localizedName);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(WFAirPollutant *)self localizedDescription];
  v8 = NSStringFromSelector(sel_localizedDescription);
  [v4 encodeObject:v7 forKey:v8];

  [(WFAirPollutant *)self amount];
  v10 = v9;
  v11 = NSStringFromSelector(sel_amount);
  [v4 encodeDouble:v11 forKey:v10];

  v12 = [(WFAirPollutant *)self unit];
  v13 = NSStringFromSelector(sel_unit);
  [v4 encodeObject:v12 forKey:v13];

  v14 = [(WFAirPollutant *)self localizedCategoryDescription];
  v15 = NSStringFromSelector(sel_localizedCategoryDescription);
  [v4 encodeObject:v14 forKey:v15];

  v16 = [(WFAirPollutant *)self categoryIndex];
  v17 = NSStringFromSelector(sel_categoryIndex);
  [v4 encodeInteger:v16 forKey:v17];

  v18 = [(WFAirPollutant *)self index];
  v19 = NSStringFromSelector(sel_index);
  [v4 encodeInteger:v18 forKey:v19];
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(WFAirPollutant *)self localizedName];
    [v4 setLocalizedName:v5];

    v6 = [(WFAirPollutant *)self localizedDescription];
    [v4 setLocalizedDescription:v6];

    [(WFAirPollutant *)self amount];
    [v4 setAmount:?];
    v7 = [(WFAirPollutant *)self unit];
    [v4 setUnit:v7];

    v8 = [(WFAirPollutant *)self localizedCategoryDescription];
    [v4 setLocalizedCategoryDescription:v8];

    [v4 setCategoryIndex:{-[WFAirPollutant categoryIndex](self, "categoryIndex")}];
    [v4 setIndex:{-[WFAirPollutant index](self, "index")}];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WFAirPollutant *)self localizedName];
  v5 = [(WFAirPollutant *)self localizedDescription];
  [(WFAirPollutant *)self amount];
  v7 = v6;
  v8 = [(WFAirPollutant *)self unit];
  v9 = [(WFAirPollutant *)self localizedCategoryDescription];
  v10 = [v3 stringWithFormat:@"<WFAirPollutant localizedName: %@, localizedDescription: %@, amount: %f, unit: %@, localizedCategoryDescription: %@, categoryIndex: %lu, index: %lu", v4, v5, v7, v8, v9, -[WFAirPollutant categoryIndex](self, "categoryIndex"), -[WFAirPollutant index](self, "index")];

  return v10;
}

@end