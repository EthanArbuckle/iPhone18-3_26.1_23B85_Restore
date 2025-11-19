@interface TUConversationActivityContext
+ (id)mediaContextIdentifiers;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActivityContext:(id)a3;
- (BOOL)isMedia;
- (NSString)analyticsIdentifier;
- (TUConversationActivityContext)initWithCoder:(id)a3;
- (TUConversationActivityContext)initWithContextIdentifier:(id)a3 actionDescription:(id)a4 ongoingDescription:(id)a5 completedDescription:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationActivityContext

- (TUConversationActivityContext)initWithContextIdentifier:(id)a3 actionDescription:(id)a4 ongoingDescription:(id)a5 completedDescription:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TUConversationActivityContext;
  v15 = [(TUConversationActivityContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_typedIdentifier, a3);
    objc_storeStrong(&v16->_actionDescription, a4);
    objc_storeStrong(&v16->_ongoingDescription, a5);
    objc_storeStrong(&v16->_completedDescription, a6);
  }

  return v16;
}

- (id)description
{
  v2 = [(TUConversationActivityContext *)self typedIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (NSString)analyticsIdentifier
{
  v3 = [(TUConversationActivityContext *)self typedIdentifier];
  v4 = [v3 isEqualToString:@"CPGroupActivityListenTogetherContext"];

  if (v4)
  {
    return @"listenTogether";
  }

  v6 = [(TUConversationActivityContext *)self typedIdentifier];
  v7 = [v6 isEqualToString:@"CPGroupActivityWatchTogetherContext"];

  if (v7)
  {
    return @"watchTogether";
  }

  v8 = [(TUConversationActivityContext *)self typedIdentifier];
  v9 = [v8 isEqualToString:@"CPGroupActivityWorkoutTogetherContext"];

  if (v9)
  {
    return @"workoutTogether";
  }

  v10 = [(TUConversationActivityContext *)self typedIdentifier];
  v11 = [v10 isEqualToString:@"CPGroupActivityPlayTogetherContext"];

  if (v11)
  {
    return @"playTogether";
  }

  v12 = [(TUConversationActivityContext *)self typedIdentifier];
  v13 = [v12 isEqualToString:@"CPGroupActivityShopTogetherContext"];

  if (v13)
  {
    return @"shopTogether";
  }

  v14 = [(TUConversationActivityContext *)self typedIdentifier];
  v15 = [v14 isEqualToString:@"CPGroupActivityReadTogetherContext"];

  if (v15)
  {
    return @"readTogether";
  }

  v16 = [(TUConversationActivityContext *)self typedIdentifier];
  v17 = [v16 isEqualToString:@"CPGroupActivityExploreTogetherContext"];

  if (v17)
  {
    return @"exploreTogether";
  }

  v18 = [(TUConversationActivityContext *)self typedIdentifier];
  v19 = [v18 isEqualToString:@"CPGroupActivityLearnTogetherContext"];

  if (v19)
  {
    return @"learnTogether";
  }

  v20 = [(TUConversationActivityContext *)self typedIdentifier];
  v21 = [v20 isEqualToString:@"CPGroupActivityCreateTogetherContext"];

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
  v3 = [objc_opt_class() mediaContextIdentifiers];
  v4 = [(TUConversationActivityContext *)self typedIdentifier];
  v5 = [v3 containsObject:v4];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivityContext *)self isEqualToActivityContext:v4];

  return v5;
}

- (BOOL)isEqualToActivityContext:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivityContext *)self typedIdentifier];
  v6 = [v4 typedIdentifier];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUConversationActivityContext *)self actionDescription];
    v8 = [v4 actionDescription];
    if ([v7 isEqual:v8])
    {
      v9 = [(TUConversationActivityContext *)self ongoingDescription];
      v10 = [v4 ongoingDescription];
      if ([v9 isEqual:v10])
      {
        v11 = [(TUConversationActivityContext *)self completedDescription];
        v12 = [v4 completedDescription];
        v13 = [v11 isEqual:v12];
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
  v3 = [(TUConversationActivityContext *)self typedIdentifier];
  v4 = [v3 hash];
  v5 = [(TUConversationActivityContext *)self actionDescription];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUConversationActivityContext *)self ongoingDescription];
  v8 = [v7 hash];
  v9 = [(TUConversationActivityContext *)self completedDescription];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUConversationActivityContext *)self typedIdentifier];
  v6 = [(TUConversationActivityContext *)self actionDescription];
  v7 = [(TUConversationActivityContext *)self ongoingDescription];
  v8 = [(TUConversationActivityContext *)self completedDescription];
  v9 = [v4 initWithContextIdentifier:v5 actionDescription:v6 ongoingDescription:v7 completedDescription:v8];

  return v9;
}

- (TUConversationActivityContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_typedIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_actionDescription);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromSelector(sel_ongoingDescription);
      v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

      if (v13)
      {
        v14 = objc_opt_class();
        v15 = NSStringFromSelector(sel_completedDescription);
        v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

        if (v16)
        {
          self = [(TUConversationActivityContext *)self initWithContextIdentifier:v7 actionDescription:v10 ongoingDescription:v13 completedDescription:v16];
          v17 = self;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivityContext *)self typedIdentifier];
  v6 = NSStringFromSelector(sel_typedIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationActivityContext *)self actionDescription];
  v8 = NSStringFromSelector(sel_actionDescription);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationActivityContext *)self ongoingDescription];
  v10 = NSStringFromSelector(sel_ongoingDescription);
  [v4 encodeObject:v9 forKey:v10];

  v12 = [(TUConversationActivityContext *)self completedDescription];
  v11 = NSStringFromSelector(sel_completedDescription);
  [v4 encodeObject:v12 forKey:v11];
}

@end