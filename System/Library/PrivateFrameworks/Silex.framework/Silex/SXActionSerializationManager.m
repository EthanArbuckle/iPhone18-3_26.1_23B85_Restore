@interface SXActionSerializationManager
- (SXActionSerializationManager)init;
- (id)URLForAction:(id)a3 type:(int64_t)a4;
- (void)registerSerializer:(id)a3 actionType:(id)a4;
@end

@implementation SXActionSerializationManager

- (SXActionSerializationManager)init
{
  v6.receiver = self;
  v6.super_class = SXActionSerializationManager;
  v2 = [(SXActionSerializationManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    serializers = v2->_serializers;
    v2->_serializers = v3;
  }

  return v2;
}

- (id)URLForAction:(id)a3 type:(int64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [(SXActionSerializationManager *)self serializers];
    v8 = [v6 type];
    v9 = [v7 objectForKey:v8];

    v10 = [v9 URLForAction:v6 type:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)registerSerializer:(id)a3 actionType:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(SXActionSerializationManager *)self serializers];
    [v8 setObject:v7 forKey:v6];
  }
}

@end