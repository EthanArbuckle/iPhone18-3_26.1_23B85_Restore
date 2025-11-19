@interface VUIAppDocumentRefreshEvent
- (VUIAppDocumentRefreshEvent)initWithDescriptor:(id)a3;
- (VUIAppDocumentRefreshEvent)initWithRefreshEventDescriptor:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation VUIAppDocumentRefreshEvent

- (VUIAppDocumentRefreshEvent)initWithDescriptor:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentRefreshEvent)initWithRefreshEventDescriptor:(id)a3
{
  v4.receiver = self;
  v4.super_class = VUIAppDocumentRefreshEvent;
  return [(VUIAppDocumentUpdateEvent *)&v4 initWithDescriptor:a3];
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = VUIAppDocumentRefreshEvent;
  v3 = [(VUIAppDocumentUpdateEvent *)&v11 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(VUIAppDocumentRefreshEvent *)self _refreshEventDescriptor];
  v6 = [v5 delayInSeconds];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  [v4 vui_setObjectIfNotNil:v7 forKey:@"delay"];

  v8 = [v5 name];
  [v4 vui_setObjectIfNotNil:v8 forKey:@"name"];
  v9 = [v4 copy];

  return v9;
}

@end