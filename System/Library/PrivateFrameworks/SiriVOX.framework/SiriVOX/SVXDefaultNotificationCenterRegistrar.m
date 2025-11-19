@interface SVXDefaultNotificationCenterRegistrar
- (void)addObserver:(id)a3 selector:(SEL)a4 name:(id)a5 object:(id)a6;
- (void)removeObserver:(id)a3;
@end

@implementation SVXDefaultNotificationCenterRegistrar

- (void)removeObserver:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];
}

- (void)addObserver:(id)a3 selector:(SEL)a4 name:(id)a5 object:(id)a6
{
  v9 = MEMORY[0x277CCAB98];
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [v9 defaultCenter];
  [v13 addObserver:v12 selector:a4 name:v11 object:v10];
}

@end