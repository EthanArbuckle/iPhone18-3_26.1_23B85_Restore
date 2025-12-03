@interface SRUIFConversationInsertion
- (SRUIFConversationInsertion)initWithConversationItemType:(int64_t)type aceObject:(id)object aceCommandIdentifier:(id)identifier transient:(BOOL)transient supplemental:(BOOL)supplemental immersiveExperience:(BOOL)experience indexPath:(id)path;
@end

@implementation SRUIFConversationInsertion

- (SRUIFConversationInsertion)initWithConversationItemType:(int64_t)type aceObject:(id)object aceCommandIdentifier:(id)identifier transient:(BOOL)transient supplemental:(BOOL)supplemental immersiveExperience:(BOOL)experience indexPath:(id)path
{
  objectCopy = object;
  identifierCopy = identifier;
  pathCopy = path;
  v26.receiver = self;
  v26.super_class = SRUIFConversationInsertion;
  v19 = [(SRUIFConversationInsertion *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_conversationItemType = type;
    objc_storeStrong(&v19->_aceObject, object);
    v21 = [identifierCopy copy];
    aceCommandIdentifier = v20->_aceCommandIdentifier;
    v20->_aceCommandIdentifier = v21;

    v20->_transient = transient;
    v20->_supplemental = supplemental;
    v20->_immersiveExperience = experience;
    v23 = [pathCopy copy];
    indexPath = v20->_indexPath;
    v20->_indexPath = v23;
  }

  return v20;
}

@end