@interface SXActionSerializationManager
- (SXActionSerializationManager)init;
- (id)URLForAction:(id)action type:(int64_t)type;
- (void)registerSerializer:(id)serializer actionType:(id)type;
@end

@implementation SXActionSerializationManager

- (SXActionSerializationManager)init
{
  v6.receiver = self;
  v6.super_class = SXActionSerializationManager;
  v2 = [(SXActionSerializationManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    serializers = v2->_serializers;
    v2->_serializers = dictionary;
  }

  return v2;
}

- (id)URLForAction:(id)action type:(int64_t)type
{
  if (action)
  {
    actionCopy = action;
    serializers = [(SXActionSerializationManager *)self serializers];
    type = [actionCopy type];
    v9 = [serializers objectForKey:type];

    v10 = [v9 URLForAction:actionCopy type:type];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)registerSerializer:(id)serializer actionType:(id)type
{
  if (serializer && type)
  {
    typeCopy = type;
    serializerCopy = serializer;
    serializers = [(SXActionSerializationManager *)self serializers];
    [serializers setObject:serializerCopy forKey:typeCopy];
  }
}

@end