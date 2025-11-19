@interface TUConversationActivitySceneAssociationBehavior
+ (TUConversationActivitySceneAssociationBehavior)defaultBehavior;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToSceneAssociationBehavior:(id)a3;
- (TUConversationActivitySceneAssociationBehavior)initWithCoder:(id)a3;
- (TUConversationActivitySceneAssociationBehavior)initWithTargetContentIdentifier:(id)a3 shouldAssociateScene:(BOOL)a4 preferredSceneSessionRole:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationActivitySceneAssociationBehavior

+ (TUConversationActivitySceneAssociationBehavior)defaultBehavior
{
  v2 = [[TUConversationActivitySceneAssociationBehavior alloc] initWithTargetContentIdentifier:0 shouldAssociateScene:1 preferredSceneSessionRole:0];

  return v2;
}

- (TUConversationActivitySceneAssociationBehavior)initWithTargetContentIdentifier:(id)a3 shouldAssociateScene:(BOOL)a4 preferredSceneSessionRole:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = TUConversationActivitySceneAssociationBehavior;
  v10 = [(TUConversationActivitySceneAssociationBehavior *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    targetContentIdentifier = v10->_targetContentIdentifier;
    v10->_targetContentIdentifier = v11;

    v10->_shouldAssociateScene = a4;
    v13 = [v9 copy];
    preferredSceneSessionRole = v10->_preferredSceneSessionRole;
    v10->_preferredSceneSessionRole = v13;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationActivitySceneAssociationBehavior *)self targetContentIdentifier];
  [v3 appendFormat:@" targetContentIdentifier=%@", v4];

  [v3 appendFormat:@" shouldAssociateScene=%d", -[TUConversationActivitySceneAssociationBehavior shouldAssociateScene](self, "shouldAssociateScene")];
  v5 = [(TUConversationActivitySceneAssociationBehavior *)self preferredSceneSessionRole];
  [v3 appendFormat:@" preferredSceneSessionRole=%@", v5];

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivitySceneAssociationBehavior *)self isEquivalentToSceneAssociationBehavior:v4];

  return v5;
}

- (BOOL)isEquivalentToSceneAssociationBehavior:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivitySceneAssociationBehavior *)self targetContentIdentifier];
  v6 = [v4 targetContentIdentifier];
  if (TUObjectsAreEqualOrNil(v5, v6) && (v7 = -[TUConversationActivitySceneAssociationBehavior shouldAssociateScene](self, "shouldAssociateScene"), v7 == [v4 shouldAssociateScene]))
  {
    v9 = [(TUConversationActivitySceneAssociationBehavior *)self preferredSceneSessionRole];
    v10 = [v4 preferredSceneSessionRole];
    v8 = TUObjectsAreEqualOrNil(v9, v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(TUConversationActivitySceneAssociationBehavior *)self targetContentIdentifier];
  v4 = [v3 hash];
  if ([(TUConversationActivitySceneAssociationBehavior *)self shouldAssociateScene])
  {
    v5 = 1231;
  }

  else
  {
    v5 = 1237;
  }

  v6 = [(TUConversationActivitySceneAssociationBehavior *)self preferredSceneSessionRole];
  v7 = v4 ^ [v6 hash];

  return v5 ^ v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUConversationActivitySceneAssociationBehavior *)self targetContentIdentifier];
  v6 = [(TUConversationActivitySceneAssociationBehavior *)self shouldAssociateScene];
  v7 = [(TUConversationActivitySceneAssociationBehavior *)self preferredSceneSessionRole];
  v8 = [v4 initWithTargetContentIdentifier:v5 shouldAssociateScene:v6 preferredSceneSessionRole:v7];

  return v8;
}

- (TUConversationActivitySceneAssociationBehavior)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_targetContentIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_shouldAssociateScene);
  v9 = [v4 decodeBoolForKey:v8];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_preferredSceneSessionRole);
  v12 = [v4 decodeObjectOfClass:v10 forKey:v11];

  v13 = [(TUConversationActivitySceneAssociationBehavior *)self initWithTargetContentIdentifier:v7 shouldAssociateScene:v9 preferredSceneSessionRole:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivitySceneAssociationBehavior *)self targetContentIdentifier];
  v6 = NSStringFromSelector(sel_targetContentIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationActivitySceneAssociationBehavior *)self shouldAssociateScene];
  v8 = NSStringFromSelector(sel_shouldAssociateScene);
  [v4 encodeBool:v7 forKey:v8];

  v10 = [(TUConversationActivitySceneAssociationBehavior *)self preferredSceneSessionRole];
  v9 = NSStringFromSelector(sel_preferredSceneSessionRole);
  [v4 encodeObject:v10 forKey:v9];
}

@end