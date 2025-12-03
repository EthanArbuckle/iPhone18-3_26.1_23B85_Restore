@interface PSGStructuredInfoSuggestion
- (BOOL)isApplePay;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItem:(id)item;
- (PSGStructuredInfoSuggestion)initWithCoder:(id)coder;
- (PSGStructuredInfoSuggestion)initWithProactiveTrigger:(id)trigger portraitItem:(id)item operationalItem:(id)operationalItem;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)predictedValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGStructuredInfoSuggestion *)self isEqualToItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    goto LABEL_8;
  }

  v5 = self->_proactiveTrigger;
  v6 = v5;
  if (v5 == itemCopy[1])
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
  if (v8 == itemCopy[2])
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
  if (v12 == itemCopy[3])
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

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(PSGProactiveTrigger *)self->_proactiveTrigger copyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(PPQuickTypeItem *)self->_portraitItem copy];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(PSGOperationalPredictedItem *)self->_operationalItem copyWithZone:zone];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  proactiveTrigger = self->_proactiveTrigger;
  coderCopy = coder;
  [coderCopy encodeObject:proactiveTrigger forKey:@"prt"];
  [coderCopy encodeObject:self->_portraitItem forKey:@"ppi"];
  [coderCopy encodeObject:self->_operationalItem forKey:@"opi"];
}

- (PSGStructuredInfoSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prt"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ppi"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"opi"];
    self = [(PSGStructuredInfoSuggestion *)self initWithProactiveTrigger:v5 portraitItem:v6 operationalItem:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isApplePay
{
  operationalItem = self->_operationalItem;
  if (!operationalItem)
  {
    return 0;
  }

  itemIdentifier = [(PSGOperationalPredictedItem *)operationalItem itemIdentifier];
  if (itemIdentifier)
  {
    itemIdentifier2 = [(PSGOperationalPredictedItem *)self->_operationalItem itemIdentifier];
    v6 = [itemIdentifier2 isEqualToString:@"surf"];
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
    value = [portraitItem value];
  }

  else
  {
    value = &stru_287343650;
  }

  return value;
}

- (PSGStructuredInfoSuggestion)initWithProactiveTrigger:(id)trigger portraitItem:(id)item operationalItem:(id)operationalItem
{
  triggerCopy = trigger;
  itemCopy = item;
  operationalItemCopy = operationalItem;
  v15.receiver = self;
  v15.super_class = PSGStructuredInfoSuggestion;
  v12 = [(PSGStructuredInfoSuggestion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_proactiveTrigger, trigger);
    objc_storeStrong(&v13->_portraitItem, item);
    objc_storeStrong(&v13->_operationalItem, operationalItem);
  }

  return v13;
}

@end