@interface UPDialogActPrompt
- (NSString)description;
- (UPDialogActPrompt)initWithIntent:(id)intent entityType:(id)type entityName:(id)name reference:(id)reference;
@end

@implementation UPDialogActPrompt

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v7 = *&self->_intent;
  entityName = self->_entityName;
  printedForm = [(USOSerializedGraph *)self->_reference printedForm];
  v5 = [v2 stringWithFormat:@"UPDialogActPrompt[intent: %@, entityType: %@, entityName: %@, reference: %@]", v7, entityName, printedForm];

  return v5;
}

- (UPDialogActPrompt)initWithIntent:(id)intent entityType:(id)type entityName:(id)name reference:(id)reference
{
  intentCopy = intent;
  typeCopy = type;
  nameCopy = name;
  referenceCopy = reference;
  v22.receiver = self;
  v22.super_class = UPDialogActPrompt;
  v14 = [(UPDialogActPrompt *)&v22 init];
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

    objc_storeStrong(&v14->_reference, reference);
  }

  return v14;
}

@end