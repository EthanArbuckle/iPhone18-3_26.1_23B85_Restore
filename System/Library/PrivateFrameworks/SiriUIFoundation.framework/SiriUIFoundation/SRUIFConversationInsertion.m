@interface SRUIFConversationInsertion
- (SRUIFConversationInsertion)initWithConversationItemType:(int64_t)a3 aceObject:(id)a4 aceCommandIdentifier:(id)a5 transient:(BOOL)a6 supplemental:(BOOL)a7 immersiveExperience:(BOOL)a8 indexPath:(id)a9;
@end

@implementation SRUIFConversationInsertion

- (SRUIFConversationInsertion)initWithConversationItemType:(int64_t)a3 aceObject:(id)a4 aceCommandIdentifier:(id)a5 transient:(BOOL)a6 supplemental:(BOOL)a7 immersiveExperience:(BOOL)a8 indexPath:(id)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v26.receiver = self;
  v26.super_class = SRUIFConversationInsertion;
  v19 = [(SRUIFConversationInsertion *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_conversationItemType = a3;
    objc_storeStrong(&v19->_aceObject, a4);
    v21 = [v17 copy];
    aceCommandIdentifier = v20->_aceCommandIdentifier;
    v20->_aceCommandIdentifier = v21;

    v20->_transient = a6;
    v20->_supplemental = a7;
    v20->_immersiveExperience = a8;
    v23 = [v18 copy];
    indexPath = v20->_indexPath;
    v20->_indexPath = v23;
  }

  return v20;
}

@end