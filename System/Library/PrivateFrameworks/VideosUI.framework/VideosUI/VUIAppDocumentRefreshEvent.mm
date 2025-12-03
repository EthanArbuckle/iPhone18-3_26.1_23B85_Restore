@interface VUIAppDocumentRefreshEvent
- (VUIAppDocumentRefreshEvent)initWithDescriptor:(id)descriptor;
- (VUIAppDocumentRefreshEvent)initWithRefreshEventDescriptor:(id)descriptor;
- (id)dictionaryRepresentation;
@end

@implementation VUIAppDocumentRefreshEvent

- (VUIAppDocumentRefreshEvent)initWithDescriptor:(id)descriptor
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentRefreshEvent)initWithRefreshEventDescriptor:(id)descriptor
{
  v4.receiver = self;
  v4.super_class = VUIAppDocumentRefreshEvent;
  return [(VUIAppDocumentUpdateEvent *)&v4 initWithDescriptor:descriptor];
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = VUIAppDocumentRefreshEvent;
  dictionaryRepresentation = [(VUIAppDocumentUpdateEvent *)&v11 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  _refreshEventDescriptor = [(VUIAppDocumentRefreshEvent *)self _refreshEventDescriptor];
  delayInSeconds = [_refreshEventDescriptor delayInSeconds];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:delayInSeconds];
  [v4 vui_setObjectIfNotNil:v7 forKey:@"delay"];

  name = [_refreshEventDescriptor name];
  [v4 vui_setObjectIfNotNil:name forKey:@"name"];
  v9 = [v4 copy];

  return v9;
}

@end