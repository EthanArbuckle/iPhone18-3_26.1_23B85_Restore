@interface SIOrderedEvent(Biome)
+ (id)eventWithData:()Biome dataVersion:;
@end

@implementation SIOrderedEvent(Biome)

+ (id)eventWithData:()Biome dataVersion:
{
  v5 = MEMORY[0x1E69CF530];
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [v5 deserializeFromData:v6];
  }

  else
  {
    v7 = [[v5 alloc] initWithData:v6];
  }

  v8 = v7;

  return v8;
}

@end