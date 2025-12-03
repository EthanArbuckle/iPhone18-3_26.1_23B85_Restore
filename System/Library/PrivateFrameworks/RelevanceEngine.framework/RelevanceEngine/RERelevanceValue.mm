@interface RERelevanceValue
- (BOOL)isEqual:(id)equal;
- (RERelevanceValue)initWithValues:(id)values isHistoric:(BOOL)historic;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RERelevanceValue

- (RERelevanceValue)initWithValues:(id)values isHistoric:(BOOL)historic
{
  historicCopy = historic;
  valuesCopy = values;
  v14.receiver = self;
  v14.super_class = RERelevanceValue;
  v8 = [(RERelevanceValue *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_values, values);
    v9->_historic = historicCopy;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__RERelevanceValue_initWithValues_isHistoric___block_invoke;
    v12[3] = &unk_2785FBCA0;
    v10 = v9;
    v13 = v10;
    [valuesCopy enumerateFeatureValuesUsingBlock:v12];
    v10->_hash ^= historicCopy;
  }

  return v9;
}

uint64_t __46__RERelevanceValue_initWithValues_isHistoric___block_invoke(uint64_t a1, unint64_t a2)
{
  result = REFeatureValueHashForTaggedPointer(a2);
  *(*(a1 + 32) + 8) ^= result;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  values = [(RERelevanceValue *)self values];
  v6 = [v4 initWithValues:values isHistoric:{-[RERelevanceValue isHistoric](self, "isHistoric")}];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      values = [(RERelevanceValue *)self values];
      values2 = [(RERelevanceValue *)v5 values];
      if (values == values2 || [values isEqual:values2])
      {
        isHistoric = [(RERelevanceValue *)self isHistoric];
        v9 = isHistoric ^ [(RERelevanceValue *)v5 isHistoric]^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

@end