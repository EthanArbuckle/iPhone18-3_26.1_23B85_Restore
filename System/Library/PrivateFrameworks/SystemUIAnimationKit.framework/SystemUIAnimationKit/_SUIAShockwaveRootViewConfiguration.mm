@interface _SUIAShockwaveRootViewConfiguration
- (BOOL)hidden;
- (void)_setHidden:(BOOL)a3;
@end

@implementation _SUIAShockwaveRootViewConfiguration

- (void)_setHidden:(BOOL)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"hidden"];
}

- (BOOL)hidden
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"hidden"];
  [v2 getValue:&v4 size:1];

  return v4;
}

@end