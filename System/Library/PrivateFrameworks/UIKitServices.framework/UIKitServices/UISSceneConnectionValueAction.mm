@interface UISSceneConnectionValueAction
+ (id)actionWithFlag:(BOOL)flag forKey:(id)key responder:(id)responder;
+ (id)actionWithValue:(id)value forKey:(id)key responder:(id)responder;
@end

@implementation UISSceneConnectionValueAction

+ (id)actionWithValue:(id)value forKey:(id)key responder:(id)responder
{
  responderCopy = responder;
  keyCopy = key;
  valueCopy = value;
  if (([valueCopy bs_isPlistableType] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISSceneConnectionValueAction.m" lineNumber:19 description:@"Value must be a Plistable type"];
  }

  v12 = objc_alloc_init(MEMORY[0x1E698E6F0]);
  [v12 setObject:valueCopy forKey:keyCopy];

  v13 = [[self alloc] initWithInfo:v12 responder:responderCopy];

  return v13;
}

+ (id)actionWithFlag:(BOOL)flag forKey:(id)key responder:(id)responder
{
  flagCopy = flag;
  v8 = MEMORY[0x1E698E6F0];
  responderCopy = responder;
  keyCopy = key;
  v11 = objc_alloc_init(v8);
  [v11 setFlag:flagCopy forKey:keyCopy];

  v12 = [[self alloc] initWithInfo:v11 responder:responderCopy];

  return v12;
}

@end