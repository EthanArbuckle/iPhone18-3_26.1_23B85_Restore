@interface UPDialogActOptions
- (UPDialogActOptions)initWithIntent:(id)a3 entityType:(id)a4 entityName:(id)a5 entityValues:(id)a6;
@end

@implementation UPDialogActOptions

- (UPDialogActOptions)initWithIntent:(id)a3 entityType:(id)a4 entityName:(id)a5 entityValues:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = UPDialogActOptions;
  v14 = [(UPDialogActOptions *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    intent = v14->_intent;
    v14->_intent = v15;

    v17 = [v11 copy];
    entityType = v14->_entityType;
    v14->_entityType = v17;

    v19 = [v12 copy];
    entityName = v14->_entityName;
    v14->_entityName = v19;

    v21 = [v13 copy];
    entityValues = v14->_entityValues;
    v14->_entityValues = v21;
  }

  return v14;
}

@end