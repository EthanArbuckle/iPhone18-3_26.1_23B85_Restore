@interface PSGStructuredInfoSuggestion
- (BOOL)isApplePay;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItem:(id)a3;
- (PSGStructuredInfoSuggestion)initWithCoder:(id)a3;
- (PSGStructuredInfoSuggestion)initWithProactiveTrigger:(id)a3 portraitItem:(id)a4 operationalItem:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)predictedValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSGStructuredInfoSuggestion

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PSGInputSuggestionsResponseItem prt:%@ ppi:%@ opi:%@>", self->_proactiveTrigger, self->_portraitItem, self->_operationalItem];

  return v2;
}

- (unint64_t)hash
{
  v3 = [(PSGProactiveTrigger *)self->_proactiveTrigger hash];
  v4 = [(PPQuickTypeItem *)self->_portraitItem hash]- v3 + 32 * v3;
  return [(PSGOperationalPredictedItem *)self->_operationalItem hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGStructuredInfoSuggestion *)self isEqualToItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = self->_proactiveTrigger;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(PSGProactiveTrigger *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v8 = self->_portraitItem;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(PPQuickTypeItem *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_14;
    }
  }

  v12 = self->_operationalItem;
  v13 = v12;
  if (v12 == v4[3])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(PSGOperationalPredictedItem *)v12 isEqual:?];
  }

LABEL_14:
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(PSGProactiveTrigger *)self->_proactiveTrigger copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(PPQuickTypeItem *)self->_portraitItem copy];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(PSGOperationalPredictedItem *)self->_operationalItem copyWithZone:a3];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  proactiveTrigger = self->_proactiveTrigger;
  v5 = a3;
  [v5 encodeObject:proactiveTrigger forKey:@"prt"];
  [v5 encodeObject:self->_portraitItem forKey:@"ppi"];
  [v5 encodeObject:self->_operationalItem forKey:@"opi"];
}

- (PSGStructuredInfoSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prt"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ppi"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"opi"];
    self = [(PSGStructuredInfoSuggestion *)self initWithProactiveTrigger:v5 portraitItem:v6 operationalItem:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isApplePay
{
  operationalItem = self->_operationalItem;
  if (!operationalItem)
  {
    return 0;
  }

  v4 = [(PSGOperationalPredictedItem *)operationalItem itemIdentifier];
  if (v4)
  {
    v5 = [(PSGOperationalPredictedItem *)self->_operationalItem itemIdentifier];
    v6 = [v5 isEqualToString:@"surf"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)predictedValue
{
  portraitItem = self->_portraitItem;
  if (portraitItem || (portraitItem = self->_operationalItem) != 0)
  {
    v5 = [portraitItem value];
  }

  else
  {
    v5 = &stru_287343650;
  }

  return v5;
}

- (PSGStructuredInfoSuggestion)initWithProactiveTrigger:(id)a3 portraitItem:(id)a4 operationalItem:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PSGStructuredInfoSuggestion;
  v12 = [(PSGStructuredInfoSuggestion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_proactiveTrigger, a3);
    objc_storeStrong(&v13->_portraitItem, a4);
    objc_storeStrong(&v13->_operationalItem, a5);
  }

  return v13;
}

@end