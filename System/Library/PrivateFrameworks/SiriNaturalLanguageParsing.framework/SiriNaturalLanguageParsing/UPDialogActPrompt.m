@interface UPDialogActPrompt
- (NSString)description;
- (UPDialogActPrompt)initWithIntent:(id)a3 entityType:(id)a4 entityName:(id)a5 reference:(id)a6;
@end

@implementation UPDialogActPrompt

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v7 = *&self->_intent;
  entityName = self->_entityName;
  v4 = [(USOSerializedGraph *)self->_reference printedForm];
  v5 = [v2 stringWithFormat:@"UPDialogActPrompt[intent: %@, entityType: %@, entityName: %@, reference: %@]", v7, entityName, v4];

  return v5;
}

- (UPDialogActPrompt)initWithIntent:(id)a3 entityType:(id)a4 entityName:(id)a5 reference:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = UPDialogActPrompt;
  v14 = [(UPDialogActPrompt *)&v22 init];
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

    objc_storeStrong(&v14->_reference, a6);
  }

  return v14;
}

@end