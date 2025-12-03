@interface HVInteraction
+ (id)domainIdForInteractionGroupId:(id)id;
+ (id)uniqueIdForInteractionIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (HVInteraction)initWithInteraction:(id)interaction bundleIdentifier:(id)identifier;
- (NSString)domainId;
- (NSString)uniqueId;
- (double)absoluteTimestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HVInteraction

- (NSString)uniqueId
{
  identifier = [(INInteraction *)self->_interaction identifier];
  v3 = [HVInteraction uniqueIdForInteractionIdentifier:identifier];

  return v3;
}

- (NSString)domainId
{
  groupIdentifier = [(INInteraction *)self->_interaction groupIdentifier];

  if (groupIdentifier)
  {
    groupIdentifier2 = [(INInteraction *)self->_interaction groupIdentifier];
    v5 = [HVInteraction domainIdForInteractionGroupId:groupIdentifier2];
  }

  else
  {
    v5 = @"__ProactiveHarvesting__.HVInteraction";
  }

  return v5;
}

- (double)absoluteTimestamp
{
  dateInterval = [(INInteraction *)self->_interaction dateInterval];
  startDate = [dateInterval startDate];
  [startDate timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      interaction = self->_interaction;
      interaction = [(HVInteraction *)v5 interaction];
      if ([(INInteraction *)interaction isEqual:interaction])
      {
        bundleIdentifier = self->_bundleIdentifier;
        bundleIdentifier = [(HVInteraction *)v5 bundleIdentifier];
        v10 = [(NSString *)bundleIdentifier isEqualToString:bundleIdentifier];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HVInteraction alloc];
  v5 = [(INInteraction *)self->_interaction copy];
  v6 = [(NSString *)self->_bundleIdentifier copy];
  v7 = [(HVInteraction *)v4 initWithInteraction:v5 bundleIdentifier:v6];

  return v7;
}

- (unint64_t)hash
{
  identifier = [(INInteraction *)self->_interaction identifier];
  v3 = [identifier hash];

  return v3;
}

- (HVInteraction)initWithInteraction:(id)interaction bundleIdentifier:(id)identifier
{
  interactionCopy = interaction;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HVInteraction;
  v9 = [(HVInteraction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_interaction, interaction);
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
  }

  return v10;
}

+ (id)domainIdForInteractionGroupId:(id)id
{
  v12[2] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"%."];
  invertedSet = [v5 invertedSet];

  v7 = [idCopy stringByAddingPercentEncodingWithAllowedCharacters:invertedSet];
  v12[0] = @"__ProactiveHarvesting__.HVInteraction";
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v8 _pas_componentsJoinedByString:@"."];

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)uniqueIdForInteractionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_autoreleasePoolPush();
  v5 = [@"__ProactiveHarvesting__interactionIdentifier:" stringByAppendingString:identifierCopy];
  objc_autoreleasePoolPop(v4);

  return v5;
}

@end