@interface TUConversationActivitySceneAssociationBehavior
+ (TUConversationActivitySceneAssociationBehavior)defaultBehavior;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToSceneAssociationBehavior:(id)behavior;
- (TUConversationActivitySceneAssociationBehavior)initWithCoder:(id)coder;
- (TUConversationActivitySceneAssociationBehavior)initWithTargetContentIdentifier:(id)identifier shouldAssociateScene:(BOOL)scene preferredSceneSessionRole:(id)role;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationActivitySceneAssociationBehavior

+ (TUConversationActivitySceneAssociationBehavior)defaultBehavior
{
  v2 = [[TUConversationActivitySceneAssociationBehavior alloc] initWithTargetContentIdentifier:0 shouldAssociateScene:1 preferredSceneSessionRole:0];

  return v2;
}

- (TUConversationActivitySceneAssociationBehavior)initWithTargetContentIdentifier:(id)identifier shouldAssociateScene:(BOOL)scene preferredSceneSessionRole:(id)role
{
  identifierCopy = identifier;
  roleCopy = role;
  v16.receiver = self;
  v16.super_class = TUConversationActivitySceneAssociationBehavior;
  v10 = [(TUConversationActivitySceneAssociationBehavior *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    targetContentIdentifier = v10->_targetContentIdentifier;
    v10->_targetContentIdentifier = v11;

    v10->_shouldAssociateScene = scene;
    v13 = [roleCopy copy];
    preferredSceneSessionRole = v10->_preferredSceneSessionRole;
    v10->_preferredSceneSessionRole = v13;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  targetContentIdentifier = [(TUConversationActivitySceneAssociationBehavior *)self targetContentIdentifier];
  [v3 appendFormat:@" targetContentIdentifier=%@", targetContentIdentifier];

  [v3 appendFormat:@" shouldAssociateScene=%d", -[TUConversationActivitySceneAssociationBehavior shouldAssociateScene](self, "shouldAssociateScene")];
  preferredSceneSessionRole = [(TUConversationActivitySceneAssociationBehavior *)self preferredSceneSessionRole];
  [v3 appendFormat:@" preferredSceneSessionRole=%@", preferredSceneSessionRole];

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivitySceneAssociationBehavior *)self isEquivalentToSceneAssociationBehavior:equalCopy];

  return v5;
}

- (BOOL)isEquivalentToSceneAssociationBehavior:(id)behavior
{
  behaviorCopy = behavior;
  targetContentIdentifier = [(TUConversationActivitySceneAssociationBehavior *)self targetContentIdentifier];
  targetContentIdentifier2 = [behaviorCopy targetContentIdentifier];
  if (TUObjectsAreEqualOrNil(targetContentIdentifier, targetContentIdentifier2) && (v7 = -[TUConversationActivitySceneAssociationBehavior shouldAssociateScene](self, "shouldAssociateScene"), v7 == [behaviorCopy shouldAssociateScene]))
  {
    preferredSceneSessionRole = [(TUConversationActivitySceneAssociationBehavior *)self preferredSceneSessionRole];
    preferredSceneSessionRole2 = [behaviorCopy preferredSceneSessionRole];
    v8 = TUObjectsAreEqualOrNil(preferredSceneSessionRole, preferredSceneSessionRole2);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  targetContentIdentifier = [(TUConversationActivitySceneAssociationBehavior *)self targetContentIdentifier];
  v4 = [targetContentIdentifier hash];
  if ([(TUConversationActivitySceneAssociationBehavior *)self shouldAssociateScene])
  {
    v5 = 1231;
  }

  else
  {
    v5 = 1237;
  }

  preferredSceneSessionRole = [(TUConversationActivitySceneAssociationBehavior *)self preferredSceneSessionRole];
  v7 = v4 ^ [preferredSceneSessionRole hash];

  return v5 ^ v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  targetContentIdentifier = [(TUConversationActivitySceneAssociationBehavior *)self targetContentIdentifier];
  shouldAssociateScene = [(TUConversationActivitySceneAssociationBehavior *)self shouldAssociateScene];
  preferredSceneSessionRole = [(TUConversationActivitySceneAssociationBehavior *)self preferredSceneSessionRole];
  v8 = [v4 initWithTargetContentIdentifier:targetContentIdentifier shouldAssociateScene:shouldAssociateScene preferredSceneSessionRole:preferredSceneSessionRole];

  return v8;
}

- (TUConversationActivitySceneAssociationBehavior)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_targetContentIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_shouldAssociateScene);
  v9 = [coderCopy decodeBoolForKey:v8];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_preferredSceneSessionRole);
  v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];

  v13 = [(TUConversationActivitySceneAssociationBehavior *)self initWithTargetContentIdentifier:v7 shouldAssociateScene:v9 preferredSceneSessionRole:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  targetContentIdentifier = [(TUConversationActivitySceneAssociationBehavior *)self targetContentIdentifier];
  v6 = NSStringFromSelector(sel_targetContentIdentifier);
  [coderCopy encodeObject:targetContentIdentifier forKey:v6];

  shouldAssociateScene = [(TUConversationActivitySceneAssociationBehavior *)self shouldAssociateScene];
  v8 = NSStringFromSelector(sel_shouldAssociateScene);
  [coderCopy encodeBool:shouldAssociateScene forKey:v8];

  preferredSceneSessionRole = [(TUConversationActivitySceneAssociationBehavior *)self preferredSceneSessionRole];
  v9 = NSStringFromSelector(sel_preferredSceneSessionRole);
  [coderCopy encodeObject:preferredSceneSessionRole forKey:v9];
}

@end