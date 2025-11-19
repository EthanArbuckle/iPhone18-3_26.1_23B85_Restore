@interface NSBundle(PersonaUI)
+ (id)pr_personaUIBundle;
@end

@implementation NSBundle(PersonaUI)

+ (id)pr_personaUIBundle
{
  if (pr_personaUIBundle_onceToken != -1)
  {
    +[NSBundle(PersonaUI) pr_personaUIBundle];
  }

  v1 = pr_personaUIBundle_personaUIBundle;

  return v1;
}

@end