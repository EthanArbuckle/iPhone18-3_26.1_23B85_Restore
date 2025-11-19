@interface WFImage(Trigger)
+ (id)triggerConfigurationSymbolNamed:()Trigger hierarchicalColors:;
+ (id)triggerConfigurationSymbolNamed:()Trigger renderingMode:pointSize:;
+ (id)triggerDisplaySymbolNamed:()Trigger hierarchicalColors:;
+ (id)triggerDisplaySymbolNamed:()Trigger renderingMode:;
@end

@implementation WFImage(Trigger)

+ (id)triggerConfigurationSymbolNamed:()Trigger hierarchicalColors:
{
  v5 = MEMORY[0x1E69E0B68];
  v6 = a3;
  v7 = [v5 configurationWithPointSize:a4 hierarchicalColors:54.0];
  v8 = [MEMORY[0x1E69E0B58] systemImageNamed:v6 configuration:v7 renderingMode:2];

  return v8;
}

+ (id)triggerConfigurationSymbolNamed:()Trigger renderingMode:pointSize:
{
  v7 = MEMORY[0x1E69E0B68];
  v8 = a4;
  v9 = [v7 configurationWithPointSize:a1];
  v10 = [MEMORY[0x1E69E0B58] systemImageNamed:v8 configuration:v9 renderingMode:a5];

  return v10;
}

+ (id)triggerDisplaySymbolNamed:()Trigger hierarchicalColors:
{
  v5 = MEMORY[0x1E69E0B68];
  v6 = a3;
  v7 = [v5 configurationWithPointSize:a4 hierarchicalColors:22.0];
  v8 = [MEMORY[0x1E69E0B58] systemImageNamed:v6 configuration:v7 renderingMode:2];

  return v8;
}

+ (id)triggerDisplaySymbolNamed:()Trigger renderingMode:
{
  v5 = MEMORY[0x1E69E0B68];
  v6 = a3;
  v7 = [v5 configurationWithPointSize:22.0];
  v8 = [MEMORY[0x1E69E0B58] systemImageNamed:v6 configuration:v7 renderingMode:a4];

  return v8;
}

@end