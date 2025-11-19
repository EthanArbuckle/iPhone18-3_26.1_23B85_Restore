@interface HVInteraction
+ (id)domainIdForInteractionGroupId:(id)a3;
+ (id)uniqueIdForInteractionIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HVInteraction)initWithInteraction:(id)a3 bundleIdentifier:(id)a4;
- (NSString)domainId;
- (NSString)uniqueId;
- (double)absoluteTimestamp;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HVInteraction

- (NSString)uniqueId
{
  v2 = [(INInteraction *)self->_interaction identifier];
  v3 = [HVInteraction uniqueIdForInteractionIdentifier:v2];

  return v3;
}

- (NSString)domainId
{
  v3 = [(INInteraction *)self->_interaction groupIdentifier];

  if (v3)
  {
    v4 = [(INInteraction *)self->_interaction groupIdentifier];
    v5 = [HVInteraction domainIdForInteractionGroupId:v4];
  }

  else
  {
    v5 = @"__ProactiveHarvesting__.HVInteraction";
  }

  return v5;
}

- (double)absoluteTimestamp
{
  v2 = [(INInteraction *)self->_interaction dateInterval];
  v3 = [v2 startDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      interaction = self->_interaction;
      v7 = [(HVInteraction *)v5 interaction];
      if ([(INInteraction *)interaction isEqual:v7])
      {
        bundleIdentifier = self->_bundleIdentifier;
        v9 = [(HVInteraction *)v5 bundleIdentifier];
        v10 = [(NSString *)bundleIdentifier isEqualToString:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HVInteraction alloc];
  v5 = [(INInteraction *)self->_interaction copy];
  v6 = [(NSString *)self->_bundleIdentifier copy];
  v7 = [(HVInteraction *)v4 initWithInteraction:v5 bundleIdentifier:v6];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(INInteraction *)self->_interaction identifier];
  v3 = [v2 hash];

  return v3;
}

- (HVInteraction)initWithInteraction:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HVInteraction;
  v9 = [(HVInteraction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_interaction, a3);
    objc_storeStrong(&v10->_bundleIdentifier, a4);
  }

  return v10;
}

+ (id)domainIdForInteractionGroupId:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"%."];
  v6 = [v5 invertedSet];

  v7 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v6];
  v12[0] = @"__ProactiveHarvesting__.HVInteraction";
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v8 _pas_componentsJoinedByString:@"."];

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)uniqueIdForInteractionIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [@"__ProactiveHarvesting__interactionIdentifier:" stringByAppendingString:v3];
  objc_autoreleasePoolPop(v4);

  return v5;
}

@end