@interface VUIAppDocumentPurchaseEvent
- (VUIAppDocumentPurchaseEvent)initWithDescriptor:(id)descriptor;
- (VUIAppDocumentPurchaseEvent)initWithPurchaseEventDescriptor:(id)descriptor;
- (id)dictionaryRepresentation;
@end

@implementation VUIAppDocumentPurchaseEvent

- (VUIAppDocumentPurchaseEvent)initWithDescriptor:(id)descriptor
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentPurchaseEvent)initWithPurchaseEventDescriptor:(id)descriptor
{
  v4.receiver = self;
  v4.super_class = VUIAppDocumentPurchaseEvent;
  return [(VUIAppDocumentUpdateEvent *)&v4 initWithDescriptor:descriptor];
}

- (id)dictionaryRepresentation
{
  v9.receiver = self;
  v9.super_class = VUIAppDocumentPurchaseEvent;
  dictionaryRepresentation = [(VUIAppDocumentUpdateEvent *)&v9 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  _purchaseEventDescriptor = [(VUIAppDocumentPurchaseEvent *)self _purchaseEventDescriptor];
  canonicalID = [_purchaseEventDescriptor canonicalID];
  [v4 vui_setObjectIfNotNil:canonicalID forKey:@"canonicalId"];

  v7 = [v4 copy];

  return v7;
}

@end