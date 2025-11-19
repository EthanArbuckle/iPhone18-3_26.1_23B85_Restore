@interface RERelevanceValue
- (BOOL)isEqual:(id)a3;
- (RERelevanceValue)initWithValues:(id)a3 isHistoric:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RERelevanceValue

- (RERelevanceValue)initWithValues:(id)a3 isHistoric:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v14.receiver = self;
  v14.super_class = RERelevanceValue;
  v8 = [(RERelevanceValue *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_values, a3);
    v9->_historic = v4;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__RERelevanceValue_initWithValues_isHistoric___block_invoke;
    v12[3] = &unk_2785FBCA0;
    v10 = v9;
    v13 = v10;
    [v7 enumerateFeatureValuesUsingBlock:v12];
    v10->_hash ^= v4;
  }

  return v9;
}

uint64_t __46__RERelevanceValue_initWithValues_isHistoric___block_invoke(uint64_t a1, unint64_t a2)
{
  result = REFeatureValueHashForTaggedPointer(a2);
  *(*(a1 + 32) + 8) ^= result;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(RERelevanceValue *)self values];
  v6 = [v4 initWithValues:v5 isHistoric:{-[RERelevanceValue isHistoric](self, "isHistoric")}];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RERelevanceValue *)self values];
      v7 = [(RERelevanceValue *)v5 values];
      if (v6 == v7 || [v6 isEqual:v7])
      {
        v8 = [(RERelevanceValue *)self isHistoric];
        v9 = v8 ^ [(RERelevanceValue *)v5 isHistoric]^ 1;
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