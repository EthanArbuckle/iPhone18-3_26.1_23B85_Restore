@interface UPDialogActOptions
- (UPDialogActOptions)initWithIntent:(id)intent entityType:(id)type entityName:(id)name entityValues:(id)values;
@end

@implementation UPDialogActOptions

- (UPDialogActOptions)initWithIntent:(id)intent entityType:(id)type entityName:(id)name entityValues:(id)values
{
  intentCopy = intent;
  typeCopy = type;
  nameCopy = name;
  valuesCopy = values;
  v24.receiver = self;
  v24.super_class = UPDialogActOptions;
  v14 = [(UPDialogActOptions *)&v24 init];
  if (v14)
  {
    v15 = [intentCopy copy];
    intent = v14->_intent;
    v14->_intent = v15;

    v17 = [typeCopy copy];
    entityType = v14->_entityType;
    v14->_entityType = v17;

    v19 = [nameCopy copy];
    entityName = v14->_entityName;
    v14->_entityName = v19;

    v21 = [valuesCopy copy];
    entityValues = v14->_entityValues;
    v14->_entityValues = v21;
  }

  return v14;
}

@end