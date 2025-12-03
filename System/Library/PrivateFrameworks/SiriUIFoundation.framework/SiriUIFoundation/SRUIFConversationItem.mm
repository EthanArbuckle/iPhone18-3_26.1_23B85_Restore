@interface SRUIFConversationItem
- (SRUIFConversationItem)initWithDelegateItem:(id)item;
- (SRUIFConversationItem)initWithIdentifier:(id)identifier revisionIdentifier:(id)revisionIdentifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)self0 transient:(BOOL)self1 supplemental:(BOOL)self2 immersiveExperience:(BOOL)self3 associatedDataStore:(id)self4;
- (SRUIFConversationItem)initWithType:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)identifier virgin:(BOOL)virgin transient:(BOOL)transient supplemental:(BOOL)self0 immersiveExperience:(BOOL)self1 associatedDataStore:(id)self2;
@end

@implementation SRUIFConversationItem

- (SRUIFConversationItem)initWithDelegateItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = SRUIFConversationItem;
  v6 = [(SRUIFConversationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegateItem, item);
  }

  return v7;
}

- (SRUIFConversationItem)initWithIdentifier:(id)identifier revisionIdentifier:(id)revisionIdentifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)self0 transient:(BOOL)self1 supplemental:(BOOL)self2 immersiveExperience:(BOOL)self3 associatedDataStore:(id)self4
{
  storeCopy = store;
  commandIdentifierCopy = commandIdentifier;
  phaseCopy = phase;
  objectCopy = object;
  revisionIdentifierCopy = revisionIdentifier;
  identifierCopy = identifier;
  BYTE3(v27) = experience;
  BYTE2(v27) = supplemental;
  LOWORD(v27) = __PAIR16__(transient, virgin);
  v24 = [SRUIFMutableConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" revisionIdentifier:identifierCopy type:revisionIdentifierCopy aceObject:type dialogPhase:objectCopy presentationState:phaseCopy aceCommandIdentifier:state virgin:commandIdentifierCopy transient:v27 supplemental:storeCopy immersiveExperience:? associatedDataStore:?];

  v25 = [(SRUIFConversationItem *)self initWithDelegateItem:v24];
  return v25;
}

- (SRUIFConversationItem)initWithType:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)identifier virgin:(BOOL)virgin transient:(BOOL)transient supplemental:(BOOL)self0 immersiveExperience:(BOOL)self1 associatedDataStore:(id)self2
{
  v16 = MEMORY[0x277CCAD78];
  storeCopy = store;
  identifierCopy = identifier;
  phaseCopy = phase;
  objectCopy = object;
  v21 = objc_alloc_init(v16);
  v22 = objc_alloc_init(MEMORY[0x277CCAD78]);
  BYTE3(v25) = experience;
  BYTE2(v25) = supplemental;
  BYTE1(v25) = transient;
  LOBYTE(v25) = virgin;
  v23 = [SRUIFConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" revisionIdentifier:v21 type:v22 aceObject:type dialogPhase:objectCopy presentationState:phaseCopy aceCommandIdentifier:state virgin:identifierCopy transient:v25 supplemental:storeCopy immersiveExperience:? associatedDataStore:?];

  return v23;
}

@end