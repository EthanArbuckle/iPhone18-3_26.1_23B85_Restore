@interface VUIAppDocumentPurchaseEvent
- (VUIAppDocumentPurchaseEvent)initWithDescriptor:(id)a3;
- (VUIAppDocumentPurchaseEvent)initWithPurchaseEventDescriptor:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation VUIAppDocumentPurchaseEvent

- (VUIAppDocumentPurchaseEvent)initWithDescriptor:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentPurchaseEvent)initWithPurchaseEventDescriptor:(id)a3
{
  v4.receiver = self;
  v4.super_class = VUIAppDocumentPurchaseEvent;
  return [(VUIAppDocumentUpdateEvent *)&v4 initWithDescriptor:a3];
}

- (id)dictionaryRepresentation
{
  v9.receiver = self;
  v9.super_class = VUIAppDocumentPurchaseEvent;
  v3 = [(VUIAppDocumentUpdateEvent *)&v9 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(VUIAppDocumentPurchaseEvent *)self _purchaseEventDescriptor];
  v6 = [v5 canonicalID];
  [v4 vui_setObjectIfNotNil:v6 forKey:@"canonicalId"];

  v7 = [v4 copy];

  return v7;
}

@end