@interface TUConversationActivityContext
+ (id)mediaContextIdentifiers;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToActivityContext:(id)context;
- (BOOL)isMedia;
- (NSString)analyticsIdentifier;
- (TUConversationActivityContext)initWithCoder:(id)coder;
- (TUConversationActivityContext)initWithContextIdentifier:(id)identifier actionDescription:(id)description ongoingDescription:(id)ongoingDescription completedDescription:(id)completedDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationActivityContext

- (TUConversationActivityContext)initWithContextIdentifier:(id)identifier actionDescription:(id)description ongoingDescription:(id)ongoingDescription completedDescription:(id)completedDescription
{
  identifierCopy = identifier;
  descriptionCopy = description;
  ongoingDescriptionCopy = ongoingDescription;
  completedDescriptionCopy = completedDescription;
  v18.receiver = self;
  v18.super_class = TUConversationActivityContext;
  v15 = [(TUConversationActivityContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_typedIdentifier, identifier);
    objc_storeStrong(&v16->_actionDescription, description);
    objc_storeStrong(&v16->_ongoingDescription, ongoingDescription);
    objc_storeStrong(&v16->_completedDescription, completedDescription);
  }

  return v16;
}

- (id)description
{
  typedIdentifier = [(TUConversationActivityContext *)self typedIdentifier];
  v3 = [typedIdentifier copy];

  return v3;
}

- (NSString)analyticsIdentifier
{
  typedIdentifier = [(TUConversationActivityContext *)self typedIdentifier];
  v4 = [typedIdentifier isEqualToString:@"CPGroupActivityListenTogetherContext"];

  if (v4)
  {
    return @"listenTogether";
  }

  typedIdentifier2 = [(TUConversationActivityContext *)self typedIdentifier];
  v7 = [typedIdentifier2 isEqualToString:@"CPGroupActivityWatchTogetherContext"];

  if (v7)
  {
    return @"watchTogether";
  }

  typedIdentifier3 = [(TUConversationActivityContext *)self typedIdentifier];
  v9 = [typedIdentifier3 isEqualToString:@"CPGroupActivityWorkoutTogetherContext"];

  if (v9)
  {
    return @"workoutTogether";
  }

  typedIdentifier4 = [(TUConversationActivityContext *)self typedIdentifier];
  v11 = [typedIdentifier4 isEqualToString:@"CPGroupActivityPlayTogetherContext"];

  if (v11)
  {
    return @"playTogether";
  }

  typedIdentifier5 = [(TUConversationActivityContext *)self typedIdentifier];
  v13 = [typedIdentifier5 isEqualToString:@"CPGroupActivityShopTogetherContext"];

  if (v13)
  {
    return @"shopTogether";
  }

  typedIdentifier6 = [(TUConversationActivityContext *)self typedIdentifier];
  v15 = [typedIdentifier6 isEqualToString:@"CPGroupActivityReadTogetherContext"];

  if (v15)
  {
    return @"readTogether";
  }

  typedIdentifier7 = [(TUConversationActivityContext *)self typedIdentifier];
  v17 = [typedIdentifier7 isEqualToString:@"CPGroupActivityExploreTogetherContext"];

  if (v17)
  {
    return @"exploreTogether";
  }

  typedIdentifier8 = [(TUConversationActivityContext *)self typedIdentifier];
  v19 = [typedIdentifier8 isEqualToString:@"CPGroupActivityLearnTogetherContext"];

  if (v19)
  {
    return @"learnTogether";
  }

  typedIdentifier9 = [(TUConversationActivityContext *)self typedIdentifier];
  v21 = [typedIdentifier9 isEqualToString:@"CPGroupActivityCreateTogetherContext"];

  if (v21)
  {
    return @"createTogether";
  }

  else
  {
    return @"generic";
  }
}

- (BOOL)isMedia
{
  mediaContextIdentifiers = [objc_opt_class() mediaContextIdentifiers];
  typedIdentifier = [(TUConversationActivityContext *)self typedIdentifier];
  v5 = [mediaContextIdentifiers containsObject:typedIdentifier];

  return v5;
}

+ (id)mediaContextIdentifiers
{
  if (mediaContextIdentifiers_onceToken != -1)
  {
    +[TUConversationActivityContext mediaContextIdentifiers];
  }

  v3 = mediaContextIdentifiers_mediaContextIdentifiers;

  return v3;
}

uint64_t __56__TUConversationActivityContext_mediaContextIdentifiers__block_invoke()
{
  mediaContextIdentifiers_mediaContextIdentifiers = [MEMORY[0x1E695DFD8] setWithObjects:{@"CPGroupActivityWatchTogetherContext", @"CPGroupActivityListenTogetherContext", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivityContext *)self isEqualToActivityContext:equalCopy];

  return v5;
}

- (BOOL)isEqualToActivityContext:(id)context
{
  contextCopy = context;
  typedIdentifier = [(TUConversationActivityContext *)self typedIdentifier];
  typedIdentifier2 = [contextCopy typedIdentifier];
  if ([typedIdentifier isEqual:typedIdentifier2])
  {
    actionDescription = [(TUConversationActivityContext *)self actionDescription];
    actionDescription2 = [contextCopy actionDescription];
    if ([actionDescription isEqual:actionDescription2])
    {
      ongoingDescription = [(TUConversationActivityContext *)self ongoingDescription];
      ongoingDescription2 = [contextCopy ongoingDescription];
      if ([ongoingDescription isEqual:ongoingDescription2])
      {
        completedDescription = [(TUConversationActivityContext *)self completedDescription];
        completedDescription2 = [contextCopy completedDescription];
        v13 = [completedDescription isEqual:completedDescription2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  typedIdentifier = [(TUConversationActivityContext *)self typedIdentifier];
  v4 = [typedIdentifier hash];
  actionDescription = [(TUConversationActivityContext *)self actionDescription];
  v6 = [actionDescription hash] ^ v4;
  ongoingDescription = [(TUConversationActivityContext *)self ongoingDescription];
  v8 = [ongoingDescription hash];
  completedDescription = [(TUConversationActivityContext *)self completedDescription];
  v10 = v8 ^ [completedDescription hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  typedIdentifier = [(TUConversationActivityContext *)self typedIdentifier];
  actionDescription = [(TUConversationActivityContext *)self actionDescription];
  ongoingDescription = [(TUConversationActivityContext *)self ongoingDescription];
  completedDescription = [(TUConversationActivityContext *)self completedDescription];
  v9 = [v4 initWithContextIdentifier:typedIdentifier actionDescription:actionDescription ongoingDescription:ongoingDescription completedDescription:completedDescription];

  return v9;
}

- (TUConversationActivityContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_typedIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_actionDescription);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromSelector(sel_ongoingDescription);
      v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

      if (v13)
      {
        v14 = objc_opt_class();
        v15 = NSStringFromSelector(sel_completedDescription);
        v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

        if (v16)
        {
          self = [(TUConversationActivityContext *)self initWithContextIdentifier:v7 actionDescription:v10 ongoingDescription:v13 completedDescription:v16];
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  typedIdentifier = [(TUConversationActivityContext *)self typedIdentifier];
  v6 = NSStringFromSelector(sel_typedIdentifier);
  [coderCopy encodeObject:typedIdentifier forKey:v6];

  actionDescription = [(TUConversationActivityContext *)self actionDescription];
  v8 = NSStringFromSelector(sel_actionDescription);
  [coderCopy encodeObject:actionDescription forKey:v8];

  ongoingDescription = [(TUConversationActivityContext *)self ongoingDescription];
  v10 = NSStringFromSelector(sel_ongoingDescription);
  [coderCopy encodeObject:ongoingDescription forKey:v10];

  completedDescription = [(TUConversationActivityContext *)self completedDescription];
  v11 = NSStringFromSelector(sel_completedDescription);
  [coderCopy encodeObject:completedDescription forKey:v11];
}

@end