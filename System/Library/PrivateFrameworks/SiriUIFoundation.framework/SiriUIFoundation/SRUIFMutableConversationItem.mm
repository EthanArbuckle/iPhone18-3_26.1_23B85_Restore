@interface SRUIFMutableConversationItem
- (NSString)description;
- (SRUIFMutableConversationItem)initWithIdentifier:(id)a3 revisionIdentifier:(id)a4 type:(int64_t)a5 aceObject:(id)a6 dialogPhase:(id)a7 presentationState:(int64_t)a8 aceCommandIdentifier:(id)a9 virgin:(BOOL)a10 transient:(BOOL)a11 supplemental:(BOOL)a12 immersiveExperience:(BOOL)a13 associatedDataStore:(id)a14;
- (SRUIFMutableConversationItem)initWithIdentifier:(id)a3 type:(int64_t)a4 aceObject:(id)a5 dialogPhase:(id)a6 presentationState:(int64_t)a7 aceCommandIdentifier:(id)a8 virgin:(BOOL)a9 transient:(BOOL)a10 supplemental:(BOOL)a11 immersiveExperience:(BOOL)a12 associatedDataStore:(id)a13;
- (SRUIFMutableConversationItem)initWithPropertyListRepresentation:(id)a3;
- (SRUIFMutableConversationItem)initWithType:(int64_t)a3 aceObject:(id)a4 dialogPhase:(id)a5 presentationState:(int64_t)a6 aceCommandIdentifier:(id)a7 virgin:(BOOL)a8 transient:(BOOL)a9 supplemental:(BOOL)a10 immersiveExperience:(BOOL)a11 associatedDataStore:(id)a12;
- (id)_propertyListStringForPresentationState;
- (id)_propertyListStringForType;
- (id)copyWithZone:(_NSZone *)a3;
- (id)propertyListRepresentation;
- (int64_t)_presentationStateForPropertyListString:(id)a3;
- (int64_t)_typeForPropertyListString:(id)a3;
- (void)_didMutate;
- (void)setAceObject:(id)a3;
- (void)setDialogPhase:(id)a3;
@end

@implementation SRUIFMutableConversationItem

- (SRUIFMutableConversationItem)initWithIdentifier:(id)a3 revisionIdentifier:(id)a4 type:(int64_t)a5 aceObject:(id)a6 dialogPhase:(id)a7 presentationState:(int64_t)a8 aceCommandIdentifier:(id)a9 virgin:(BOOL)a10 transient:(BOOL)a11 supplemental:(BOOL)a12 immersiveExperience:(BOOL)a13 associatedDataStore:(id)a14
{
  v18 = a3;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v23 = a14;
  v34.receiver = self;
  v34.super_class = SRUIFMutableConversationItem;
  v24 = [(SRUIFMutableConversationItem *)&v34 init];
  if (v24)
  {
    v25 = [v18 copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [v19 copy];
    revisionIdentifier = v24->_revisionIdentifier;
    v24->_revisionIdentifier = v27;

    v24->_type = a5;
    objc_storeStrong(&v24->_aceObject, a6);
    objc_storeStrong(&v24->_dialogPhase, a7);
    v24->_presentationState = a8;
    v29 = [v22 copy];
    aceCommandIdentifier = v24->_aceCommandIdentifier;
    v24->_aceCommandIdentifier = v29;

    v24->_virgin = a10;
    v24->_transient = a11;
    v24->_supplemental = a12;
    v24->_immersiveExperience = a13;
    objc_storeStrong(&v24->_associatedDataStore, a14);
  }

  return v24;
}

- (SRUIFMutableConversationItem)initWithIdentifier:(id)a3 type:(int64_t)a4 aceObject:(id)a5 dialogPhase:(id)a6 presentationState:(int64_t)a7 aceCommandIdentifier:(id)a8 virgin:(BOOL)a9 transient:(BOOL)a10 supplemental:(BOOL)a11 immersiveExperience:(BOOL)a12 associatedDataStore:(id)a13
{
  v17 = MEMORY[0x277CCAD78];
  v18 = a13;
  v19 = a8;
  v20 = a6;
  v21 = a5;
  v22 = a3;
  v23 = objc_alloc_init(v17);
  BYTE3(v26) = a12;
  BYTE2(v26) = a11;
  LOWORD(v26) = __PAIR16__(a10, a9);
  v24 = [SRUIFMutableConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" revisionIdentifier:v22 type:v23 aceObject:a4 dialogPhase:v21 presentationState:v20 aceCommandIdentifier:a7 virgin:v19 transient:v26 supplemental:v18 immersiveExperience:? associatedDataStore:?];

  return v24;
}

- (SRUIFMutableConversationItem)initWithType:(int64_t)a3 aceObject:(id)a4 dialogPhase:(id)a5 presentationState:(int64_t)a6 aceCommandIdentifier:(id)a7 virgin:(BOOL)a8 transient:(BOOL)a9 supplemental:(BOOL)a10 immersiveExperience:(BOOL)a11 associatedDataStore:(id)a12
{
  v17 = MEMORY[0x277CCAD78];
  v18 = a12;
  v19 = a7;
  v20 = a5;
  v21 = a4;
  v22 = objc_alloc_init(v17);
  BYTE3(v25) = a11;
  BYTE2(v25) = a10;
  BYTE1(v25) = a9;
  LOBYTE(v25) = a8;
  v23 = [SRUIFMutableConversationItem initWithIdentifier:"initWithIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" type:v22 aceObject:a3 dialogPhase:v21 presentationState:v20 aceCommandIdentifier:a6 virgin:v19 transient:v25 supplemental:v18 immersiveExperience:? associatedDataStore:?];

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = [SRUIFConversationItem alloc];
  v18 = [(SRUIFMutableConversationItem *)self identifier];
  v4 = [(SRUIFMutableConversationItem *)self revisionIdentifier];
  v17 = [(SRUIFMutableConversationItem *)self type];
  v5 = [(SRUIFMutableConversationItem *)self aceObject];
  v6 = [(SRUIFMutableConversationItem *)self dialogPhase];
  v7 = [(SRUIFMutableConversationItem *)self presentationState];
  v8 = [(SRUIFMutableConversationItem *)self aceCommandIdentifier];
  v9 = [(SRUIFMutableConversationItem *)self isVirgin];
  v10 = [(SRUIFMutableConversationItem *)self isTransient];
  v11 = [(SRUIFMutableConversationItem *)self isSupplemental];
  v12 = [(SRUIFMutableConversationItem *)self isImmersiveExperience];
  v13 = [(SRUIFMutableConversationItem *)self associatedDataStore];
  BYTE3(v16) = v12;
  BYTE2(v16) = v11;
  BYTE1(v16) = v10;
  LOBYTE(v16) = v9;
  v14 = [SRUIFConversationItem initWithIdentifier:v19 revisionIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" type:v18 aceObject:v4 dialogPhase:v17 presentationState:v5 aceCommandIdentifier:v6 virgin:v7 transient:v8 supplemental:v16 immersiveExperience:v13 associatedDataStore:?];

  return v14;
}

- (NSString)description
{
  v3 = [(SRUIFMutableConversationItem *)self type];
  if (v3 > 5)
  {
    v34 = 0;
  }

  else
  {
    v34 = off_279C62578[v3];
  }

  v4 = [(SRUIFMutableConversationItem *)self presentationState];
  if (v4 > 3)
  {
    v32 = 0;
  }

  else
  {
    v32 = off_279C625A8[v4];
  }

  v5 = [(SRUIFMutableConversationItem *)self aceObject];
  v6 = [v5 af_dialogIdentifier];

  v35 = v6;
  if (v6)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@", dialogIdentifier=%@", v6];
  }

  else
  {
    v33 = &stru_287A10D80;
  }

  v7 = [(SRUIFMutableConversationItem *)self aceObject];
  v8 = [SRUIFUtilities shouldRedactSpeakableTextForAceObject:v7];

  if (v8)
  {
    v9 = @"<private>";
    v10 = @"<private>";
LABEL_13:
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@", dialogText=%@", v9];
    goto LABEL_14;
  }

  v11 = [(SRUIFMutableConversationItem *)self aceObject];
  v9 = [v11 af_text];

  v12 = [(SRUIFMutableConversationItem *)self aceObject];
  v10 = [v12 af_speakableText];

  if (v9)
  {
    goto LABEL_13;
  }

  v13 = &stru_287A10D80;
LABEL_14:
  v30 = v10;
  v31 = v9;
  if (v10)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, speakableText=%@", v13, v10];

    v29 = v14;
  }

  else
  {
    v29 = v13;
  }

  v26 = MEMORY[0x277CCACA8];
  v28 = [(SRUIFMutableConversationItem *)self identifier];
  v25 = [v28 UUIDString];
  v27 = [(SRUIFMutableConversationItem *)self revisionIdentifier];
  v15 = [v27 UUIDString];
  v16 = [(SRUIFMutableConversationItem *)self aceObject];
  v17 = objc_opt_class();
  v18 = [(SRUIFMutableConversationItem *)self dialogPhase];
  v19 = [(SRUIFMutableConversationItem *)self aceCommandIdentifier];
  if ([(SRUIFMutableConversationItem *)self isTransient])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  if ([(SRUIFMutableConversationItem *)self isSupplemental])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  if ([(SRUIFMutableConversationItem *)self isImmersiveExperience])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  v23 = [v26 stringWithFormat:@"<ConversationItem %p %@ (revision %@): type=%@, aceObject=%@, dialogPhase=%@, presentationState=%@, aceCommandIdentifier=%@%@%@, transient=%@, supplemental=%@, immersiveExperience=%@>", self, v25, v15, v34, v17, v18, v32, v19, v33, v29, v20, v21, v22];;

  return v23;
}

- (void)_didMutate
{
  v3 = objc_alloc_init(MEMORY[0x277CCAD78]);
  revisionIdentifier = self->_revisionIdentifier;
  self->_revisionIdentifier = v3;

  MEMORY[0x2821F96F8]();
}

- (void)setAceObject:(id)a3
{
  objc_storeStrong(&self->_aceObject, a3);

  [(SRUIFMutableConversationItem *)self _didMutate];
}

- (void)setDialogPhase:(id)a3
{
  objc_storeStrong(&self->_dialogPhase, a3);

  [(SRUIFMutableConversationItem *)self _didMutate];
}

- (id)_propertyListStringForType
{
  v2 = [(SRUIFMutableConversationItem *)self type];
  if ((v2 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_279C625C8[v2 - 1];
  }
}

- (int64_t)_typeForPropertyListString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RecognizedSpeech"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"View"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PartialSpeechResult"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Help"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"AcousticID Spinner"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_propertyListStringForPresentationState
{
  v2 = [(SRUIFMutableConversationItem *)self presentationState];
  if ((v2 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279C625F0[v2 - 1];
  }
}

- (int64_t)_presentationStateForPropertyListString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Committed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Provisional"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Cancelled"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)propertyListRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:&unk_287A18C60 forKey:@"Version"];
  v4 = [(SRUIFMutableConversationItem *)self identifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"Identifier"];

  v6 = [(SRUIFMutableConversationItem *)self revisionIdentifier];
  v7 = [v6 UUIDString];
  [v3 setObject:v7 forKey:@"RevisionIdentifier"];

  v8 = [(SRUIFMutableConversationItem *)self _propertyListStringForType];
  [v3 setObject:v8 forKey:@"Type"];

  v9 = [(SRUIFMutableConversationItem *)self aceObject];
  v10 = [v9 dictionary];
  [v3 setObject:v10 forKey:@"AceObject"];

  v11 = [(SRUIFMutableConversationItem *)self dialogPhase];
  v12 = [v11 aceDialogPhaseValue];

  if (v12)
  {
    [v3 setObject:v12 forKey:@"AceDialogPhase"];
  }

  v13 = [(SRUIFMutableConversationItem *)self _propertyListStringForPresentationState];
  [v3 setObject:v13 forKey:@"PresentationState"];

  v14 = [(SRUIFMutableConversationItem *)self aceCommandIdentifier];
  if (v14)
  {
    [v3 setObject:v14 forKey:@"AceCommandIdentifier"];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[SRUIFMutableConversationItem isTransient](self, "isTransient")}];
  [v3 setObject:v15 forKey:@"Transient"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[SRUIFMutableConversationItem isSupplemental](self, "isSupplemental")}];
  [v3 setObject:v16 forKey:@"Supplemental"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[SRUIFMutableConversationItem isImmersiveExperience](self, "isImmersiveExperience")}];
  [v3 setObject:v17 forKey:@"ImmersiveExperience"];

  v18 = [(SRUIFMutableConversationItem *)self associatedDataStore];
  v19 = [v18 propertyListRepresentation];

  [v3 setObject:v19 forKey:@"AssociatedDataStore"];

  return v3;
}

- (SRUIFMutableConversationItem)initWithPropertyListRepresentation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SRUIFDictionarySchema);
  v6 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v6 forKey:@"Version"];

  v7 = +[SRUIFCoercion stringToUUIDCoercion];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v7 forKey:@"Identifier"];

  v8 = +[SRUIFCoercion stringToUUIDCoercion];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v8 forKey:@"RevisionIdentifier"];

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __67__SRUIFMutableConversationItem_initWithPropertyListRepresentation___block_invoke;
  v62[3] = &unk_279C62558;
  v9 = self;
  v63 = v9;
  v10 = [SRUIFCoercion coercionWithBlock:v62];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v10 forKey:@"Type"];

  v11 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v11 forKey:@"AceObject"];

  v12 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v12 forKey:@"AceDialogPhase"];

  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __67__SRUIFMutableConversationItem_initWithPropertyListRepresentation___block_invoke_2;
  v60[3] = &unk_279C62558;
  v13 = v9;
  v61 = v13;
  v14 = [SRUIFCoercion coercionWithBlock:v60];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v14 forKey:@"PresentationState"];

  v15 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v15 forKey:@"AceCommandIdentifier"];

  v16 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v16 forKey:@"Transient"];

  v17 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v17 forKey:@"Supplemental"];

  v18 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v5 setObjectCoercion:v18 forKey:@"ImmersiveExperience"];

  v59 = 0;
  v19 = [(SRUIFDictionarySchema *)v5 coerceObject:v4 error:&v59];
  v20 = v59;
  if (!v19)
  {
    v29 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFMutableConversationItem *)v20 initWithPropertyListRepresentation:v4, v29];
    }

    goto LABEL_11;
  }

  v21 = [v19 objectForKey:@"Version"];
  v22 = [v21 integerValue];

  if (v22 != 1)
  {
    v30 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFMutableConversationItem *)v22 initWithPropertyListRepresentation:v30];
    }

LABEL_11:
    v31 = 0;
    goto LABEL_19;
  }

  v58 = v4;
  v57 = [v19 objectForKey:@"Identifier"];
  v23 = [v19 objectForKey:@"RevisionIdentifier"];
  if (!v23)
  {
    v23 = objc_alloc_init(MEMORY[0x277CCAD78]);
  }

  v56 = v23;
  v24 = [v19 objectForKey:@"Type"];
  v51 = [v24 integerValue];

  v25 = MEMORY[0x277D470E0];
  v26 = [v19 objectForKey:@"AceObject"];
  v27 = [v25 aceObjectWithDictionary:v26];

  v28 = [v19 objectForKey:@"AceDialogPhase"];
  v55 = v27;
  v52 = v28;
  if (v28)
  {
    [SRUIFDialogPhase dialogPhaseForAceDialogPhase:v28];
  }

  else
  {
    +[SRUIFDialogPhase userRequestDialogPhase];
  }
  v54 = ;
  v32 = [v19 objectForKey:@"PresentationState"];
  v50 = [v32 integerValue];

  v33 = [v19 objectForKey:@"AceCommandIdentifier"];
  v34 = [v19 objectForKey:@"Transient"];
  v35 = [v34 BOOLValue];

  v36 = [v19 objectForKey:@"Supplemental"];
  v37 = [v36 BOOLValue];

  v38 = [v19 objectForKey:@"ImmersiveExperience"];
  v39 = [v38 BOOLValue];

  v40 = [SRUIFDataStore alloc];
  v41 = [v19 objectForKey:@"AssociatedDataStore"];
  v42 = [(SRUIFDataStore *)v40 initWithPropertyListRepresentation:v41];

  v53 = v20;
  if (v42)
  {
    BYTE3(v49) = v39;
    BYTE2(v49) = v37;
    BYTE1(v49) = v35;
    LOBYTE(v49) = 0;
    v44 = v56;
    v43 = v57;
    v45 = v54;
    v46 = v55;
    v13 = [SRUIFMutableConversationItem initWithIdentifier:v13 revisionIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" type:v57 aceObject:v56 dialogPhase:v51 presentationState:v55 aceCommandIdentifier:v54 virgin:v50 transient:v33 supplemental:v49 immersiveExperience:v42 associatedDataStore:?];
    v31 = v13;
  }

  else
  {
    v47 = *MEMORY[0x277CEF098];
    v44 = v56;
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFMutableConversationItem *)v58 initWithPropertyListRepresentation:v47];
    }

    v31 = 0;
    v43 = v57;
    v45 = v54;
    v46 = v55;
  }

  v4 = v58;
  v20 = v53;
LABEL_19:

  return v31;
}

id __67__SRUIFMutableConversationItem_initWithPropertyListRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  v7 = [v6 coerceObject:v5 error:a3];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "_typeForPropertyListString:", v7)}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __67__SRUIFMutableConversationItem_initWithPropertyListRepresentation___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  v7 = [v6 coerceObject:v5 error:a3];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "_presentationStateForPropertyListString:", v7)}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)initWithPropertyListRepresentation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SRUIFMutableConversationItem initWithPropertyListRepresentation:]";
  v5 = 2050;
  v6 = a1;
  _os_log_error_impl(&dword_26951F000, a2, OS_LOG_TYPE_ERROR, "%s unable to deserialize property list with version %{public}ld; returning nil", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyListRepresentation:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SRUIFMutableConversationItem initWithPropertyListRepresentation:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_26951F000, a2, OS_LOG_TYPE_ERROR, "%s returning nil; unable co create associated data store from property list %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithPropertyListRepresentation:(os_log_t)log .cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[SRUIFMutableConversationItem initWithPropertyListRepresentation:]";
  v6 = 2114;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s returning nil; passed invalid property list (%{public}@): %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end