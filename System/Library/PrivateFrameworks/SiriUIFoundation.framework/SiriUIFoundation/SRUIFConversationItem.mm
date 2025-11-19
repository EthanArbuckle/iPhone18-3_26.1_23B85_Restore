@interface SRUIFConversationItem
- (SRUIFConversationItem)initWithDelegateItem:(id)a3;
- (SRUIFConversationItem)initWithIdentifier:(id)a3 revisionIdentifier:(id)a4 type:(int64_t)a5 aceObject:(id)a6 dialogPhase:(id)a7 presentationState:(int64_t)a8 aceCommandIdentifier:(id)a9 virgin:(BOOL)a10 transient:(BOOL)a11 supplemental:(BOOL)a12 immersiveExperience:(BOOL)a13 associatedDataStore:(id)a14;
- (SRUIFConversationItem)initWithType:(int64_t)a3 aceObject:(id)a4 dialogPhase:(id)a5 presentationState:(int64_t)a6 aceCommandIdentifier:(id)a7 virgin:(BOOL)a8 transient:(BOOL)a9 supplemental:(BOOL)a10 immersiveExperience:(BOOL)a11 associatedDataStore:(id)a12;
@end

@implementation SRUIFConversationItem

- (SRUIFConversationItem)initWithDelegateItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SRUIFConversationItem;
  v6 = [(SRUIFConversationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegateItem, a3);
  }

  return v7;
}

- (SRUIFConversationItem)initWithIdentifier:(id)a3 revisionIdentifier:(id)a4 type:(int64_t)a5 aceObject:(id)a6 dialogPhase:(id)a7 presentationState:(int64_t)a8 aceCommandIdentifier:(id)a9 virgin:(BOOL)a10 transient:(BOOL)a11 supplemental:(BOOL)a12 immersiveExperience:(BOOL)a13 associatedDataStore:(id)a14
{
  v18 = a14;
  v19 = a9;
  v20 = a7;
  v21 = a6;
  v22 = a4;
  v23 = a3;
  BYTE3(v27) = a13;
  BYTE2(v27) = a12;
  LOWORD(v27) = __PAIR16__(a11, a10);
  v24 = [SRUIFMutableConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" revisionIdentifier:v23 type:v22 aceObject:a5 dialogPhase:v21 presentationState:v20 aceCommandIdentifier:a8 virgin:v19 transient:v27 supplemental:v18 immersiveExperience:? associatedDataStore:?];

  v25 = [(SRUIFConversationItem *)self initWithDelegateItem:v24];
  return v25;
}

- (SRUIFConversationItem)initWithType:(int64_t)a3 aceObject:(id)a4 dialogPhase:(id)a5 presentationState:(int64_t)a6 aceCommandIdentifier:(id)a7 virgin:(BOOL)a8 transient:(BOOL)a9 supplemental:(BOOL)a10 immersiveExperience:(BOOL)a11 associatedDataStore:(id)a12
{
  v16 = MEMORY[0x277CCAD78];
  v17 = a12;
  v18 = a7;
  v19 = a5;
  v20 = a4;
  v21 = objc_alloc_init(v16);
  v22 = objc_alloc_init(MEMORY[0x277CCAD78]);
  BYTE3(v25) = a11;
  BYTE2(v25) = a10;
  BYTE1(v25) = a9;
  LOBYTE(v25) = a8;
  v23 = [SRUIFConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" revisionIdentifier:v21 type:v22 aceObject:a3 dialogPhase:v20 presentationState:v19 aceCommandIdentifier:a6 virgin:v18 transient:v25 supplemental:v17 immersiveExperience:? associatedDataStore:?];

  return v23;
}

@end