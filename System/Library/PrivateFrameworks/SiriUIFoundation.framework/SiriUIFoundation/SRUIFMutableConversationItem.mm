@interface SRUIFMutableConversationItem
- (NSString)description;
- (SRUIFMutableConversationItem)initWithIdentifier:(id)identifier revisionIdentifier:(id)revisionIdentifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)self0 transient:(BOOL)self1 supplemental:(BOOL)self2 immersiveExperience:(BOOL)self3 associatedDataStore:(id)self4;
- (SRUIFMutableConversationItem)initWithIdentifier:(id)identifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)virgin transient:(BOOL)self0 supplemental:(BOOL)self1 immersiveExperience:(BOOL)self2 associatedDataStore:(id)self3;
- (SRUIFMutableConversationItem)initWithPropertyListRepresentation:(id)representation;
- (SRUIFMutableConversationItem)initWithType:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)identifier virgin:(BOOL)virgin transient:(BOOL)transient supplemental:(BOOL)self0 immersiveExperience:(BOOL)self1 associatedDataStore:(id)self2;
- (id)_propertyListStringForPresentationState;
- (id)_propertyListStringForType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)propertyListRepresentation;
- (int64_t)_presentationStateForPropertyListString:(id)string;
- (int64_t)_typeForPropertyListString:(id)string;
- (void)_didMutate;
- (void)setAceObject:(id)object;
- (void)setDialogPhase:(id)phase;
@end

@implementation SRUIFMutableConversationItem

- (SRUIFMutableConversationItem)initWithIdentifier:(id)identifier revisionIdentifier:(id)revisionIdentifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)self0 transient:(BOOL)self1 supplemental:(BOOL)self2 immersiveExperience:(BOOL)self3 associatedDataStore:(id)self4
{
  identifierCopy = identifier;
  revisionIdentifierCopy = revisionIdentifier;
  objectCopy = object;
  phaseCopy = phase;
  commandIdentifierCopy = commandIdentifier;
  storeCopy = store;
  v34.receiver = self;
  v34.super_class = SRUIFMutableConversationItem;
  v24 = [(SRUIFMutableConversationItem *)&v34 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [revisionIdentifierCopy copy];
    revisionIdentifier = v24->_revisionIdentifier;
    v24->_revisionIdentifier = v27;

    v24->_type = type;
    objc_storeStrong(&v24->_aceObject, object);
    objc_storeStrong(&v24->_dialogPhase, phase);
    v24->_presentationState = state;
    v29 = [commandIdentifierCopy copy];
    aceCommandIdentifier = v24->_aceCommandIdentifier;
    v24->_aceCommandIdentifier = v29;

    v24->_virgin = virgin;
    v24->_transient = transient;
    v24->_supplemental = supplemental;
    v24->_immersiveExperience = experience;
    objc_storeStrong(&v24->_associatedDataStore, store);
  }

  return v24;
}

- (SRUIFMutableConversationItem)initWithIdentifier:(id)identifier type:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)commandIdentifier virgin:(BOOL)virgin transient:(BOOL)self0 supplemental:(BOOL)self1 immersiveExperience:(BOOL)self2 associatedDataStore:(id)self3
{
  v17 = MEMORY[0x277CCAD78];
  storeCopy = store;
  commandIdentifierCopy = commandIdentifier;
  phaseCopy = phase;
  objectCopy = object;
  identifierCopy = identifier;
  v23 = objc_alloc_init(v17);
  BYTE3(v26) = experience;
  BYTE2(v26) = supplemental;
  LOWORD(v26) = __PAIR16__(transient, virgin);
  v24 = [SRUIFMutableConversationItem initWithIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" revisionIdentifier:identifierCopy type:v23 aceObject:type dialogPhase:objectCopy presentationState:phaseCopy aceCommandIdentifier:state virgin:commandIdentifierCopy transient:v26 supplemental:storeCopy immersiveExperience:? associatedDataStore:?];

  return v24;
}

- (SRUIFMutableConversationItem)initWithType:(int64_t)type aceObject:(id)object dialogPhase:(id)phase presentationState:(int64_t)state aceCommandIdentifier:(id)identifier virgin:(BOOL)virgin transient:(BOOL)transient supplemental:(BOOL)self0 immersiveExperience:(BOOL)self1 associatedDataStore:(id)self2
{
  v17 = MEMORY[0x277CCAD78];
  storeCopy = store;
  identifierCopy = identifier;
  phaseCopy = phase;
  objectCopy = object;
  v22 = objc_alloc_init(v17);
  BYTE3(v25) = experience;
  BYTE2(v25) = supplemental;
  BYTE1(v25) = transient;
  LOBYTE(v25) = virgin;
  v23 = [SRUIFMutableConversationItem initWithIdentifier:"initWithIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" type:v22 aceObject:type dialogPhase:objectCopy presentationState:phaseCopy aceCommandIdentifier:state virgin:identifierCopy transient:v25 supplemental:storeCopy immersiveExperience:? associatedDataStore:?];

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = [SRUIFConversationItem alloc];
  identifier = [(SRUIFMutableConversationItem *)self identifier];
  revisionIdentifier = [(SRUIFMutableConversationItem *)self revisionIdentifier];
  type = [(SRUIFMutableConversationItem *)self type];
  aceObject = [(SRUIFMutableConversationItem *)self aceObject];
  dialogPhase = [(SRUIFMutableConversationItem *)self dialogPhase];
  presentationState = [(SRUIFMutableConversationItem *)self presentationState];
  aceCommandIdentifier = [(SRUIFMutableConversationItem *)self aceCommandIdentifier];
  isVirgin = [(SRUIFMutableConversationItem *)self isVirgin];
  isTransient = [(SRUIFMutableConversationItem *)self isTransient];
  isSupplemental = [(SRUIFMutableConversationItem *)self isSupplemental];
  isImmersiveExperience = [(SRUIFMutableConversationItem *)self isImmersiveExperience];
  associatedDataStore = [(SRUIFMutableConversationItem *)self associatedDataStore];
  BYTE3(v16) = isImmersiveExperience;
  BYTE2(v16) = isSupplemental;
  BYTE1(v16) = isTransient;
  LOBYTE(v16) = isVirgin;
  v14 = [SRUIFConversationItem initWithIdentifier:v19 revisionIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" type:identifier aceObject:revisionIdentifier dialogPhase:type presentationState:aceObject aceCommandIdentifier:dialogPhase virgin:presentationState transient:aceCommandIdentifier supplemental:v16 immersiveExperience:associatedDataStore associatedDataStore:?];

  return v14;
}

- (NSString)description
{
  type = [(SRUIFMutableConversationItem *)self type];
  if (type > 5)
  {
    v34 = 0;
  }

  else
  {
    v34 = off_279C62578[type];
  }

  presentationState = [(SRUIFMutableConversationItem *)self presentationState];
  if (presentationState > 3)
  {
    v32 = 0;
  }

  else
  {
    v32 = off_279C625A8[presentationState];
  }

  aceObject = [(SRUIFMutableConversationItem *)self aceObject];
  af_dialogIdentifier = [aceObject af_dialogIdentifier];

  v35 = af_dialogIdentifier;
  if (af_dialogIdentifier)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@", dialogIdentifier=%@", af_dialogIdentifier];
  }

  else
  {
    v33 = &stru_287A10D80;
  }

  aceObject2 = [(SRUIFMutableConversationItem *)self aceObject];
  v8 = [SRUIFUtilities shouldRedactSpeakableTextForAceObject:aceObject2];

  if (v8)
  {
    af_text = @"<private>";
    af_speakableText = @"<private>";
LABEL_13:
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@", dialogText=%@", af_text];
    goto LABEL_14;
  }

  aceObject3 = [(SRUIFMutableConversationItem *)self aceObject];
  af_text = [aceObject3 af_text];

  aceObject4 = [(SRUIFMutableConversationItem *)self aceObject];
  af_speakableText = [aceObject4 af_speakableText];

  if (af_text)
  {
    goto LABEL_13;
  }

  v13 = &stru_287A10D80;
LABEL_14:
  v30 = af_speakableText;
  v31 = af_text;
  if (af_speakableText)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, speakableText=%@", v13, af_speakableText];

    v29 = v14;
  }

  else
  {
    v29 = v13;
  }

  v26 = MEMORY[0x277CCACA8];
  identifier = [(SRUIFMutableConversationItem *)self identifier];
  uUIDString = [identifier UUIDString];
  revisionIdentifier = [(SRUIFMutableConversationItem *)self revisionIdentifier];
  uUIDString2 = [revisionIdentifier UUIDString];
  aceObject5 = [(SRUIFMutableConversationItem *)self aceObject];
  v17 = objc_opt_class();
  dialogPhase = [(SRUIFMutableConversationItem *)self dialogPhase];
  aceCommandIdentifier = [(SRUIFMutableConversationItem *)self aceCommandIdentifier];
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

  v23 = [v26 stringWithFormat:@"<ConversationItem %p %@ (revision %@): type=%@, aceObject=%@, dialogPhase=%@, presentationState=%@, aceCommandIdentifier=%@%@%@, transient=%@, supplemental=%@, immersiveExperience=%@>", self, uUIDString, uUIDString2, v34, v17, dialogPhase, v32, aceCommandIdentifier, v33, v29, v20, v21, v22];;

  return v23;
}

- (void)_didMutate
{
  v3 = objc_alloc_init(MEMORY[0x277CCAD78]);
  revisionIdentifier = self->_revisionIdentifier;
  self->_revisionIdentifier = v3;

  MEMORY[0x2821F96F8]();
}

- (void)setAceObject:(id)object
{
  objc_storeStrong(&self->_aceObject, object);

  [(SRUIFMutableConversationItem *)self _didMutate];
}

- (void)setDialogPhase:(id)phase
{
  objc_storeStrong(&self->_dialogPhase, phase);

  [(SRUIFMutableConversationItem *)self _didMutate];
}

- (id)_propertyListStringForType
{
  type = [(SRUIFMutableConversationItem *)self type];
  if ((type - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_279C625C8[type - 1];
  }
}

- (int64_t)_typeForPropertyListString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"RecognizedSpeech"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"View"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"PartialSpeechResult"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Help"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"AcousticID Spinner"])
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
  presentationState = [(SRUIFMutableConversationItem *)self presentationState];
  if ((presentationState - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279C625F0[presentationState - 1];
  }
}

- (int64_t)_presentationStateForPropertyListString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Committed"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Provisional"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Cancelled"])
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_287A18C60 forKey:@"Version"];
  identifier = [(SRUIFMutableConversationItem *)self identifier];
  uUIDString = [identifier UUIDString];
  [dictionary setObject:uUIDString forKey:@"Identifier"];

  revisionIdentifier = [(SRUIFMutableConversationItem *)self revisionIdentifier];
  uUIDString2 = [revisionIdentifier UUIDString];
  [dictionary setObject:uUIDString2 forKey:@"RevisionIdentifier"];

  _propertyListStringForType = [(SRUIFMutableConversationItem *)self _propertyListStringForType];
  [dictionary setObject:_propertyListStringForType forKey:@"Type"];

  aceObject = [(SRUIFMutableConversationItem *)self aceObject];
  dictionary2 = [aceObject dictionary];
  [dictionary setObject:dictionary2 forKey:@"AceObject"];

  dialogPhase = [(SRUIFMutableConversationItem *)self dialogPhase];
  aceDialogPhaseValue = [dialogPhase aceDialogPhaseValue];

  if (aceDialogPhaseValue)
  {
    [dictionary setObject:aceDialogPhaseValue forKey:@"AceDialogPhase"];
  }

  _propertyListStringForPresentationState = [(SRUIFMutableConversationItem *)self _propertyListStringForPresentationState];
  [dictionary setObject:_propertyListStringForPresentationState forKey:@"PresentationState"];

  aceCommandIdentifier = [(SRUIFMutableConversationItem *)self aceCommandIdentifier];
  if (aceCommandIdentifier)
  {
    [dictionary setObject:aceCommandIdentifier forKey:@"AceCommandIdentifier"];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[SRUIFMutableConversationItem isTransient](self, "isTransient")}];
  [dictionary setObject:v15 forKey:@"Transient"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[SRUIFMutableConversationItem isSupplemental](self, "isSupplemental")}];
  [dictionary setObject:v16 forKey:@"Supplemental"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[SRUIFMutableConversationItem isImmersiveExperience](self, "isImmersiveExperience")}];
  [dictionary setObject:v17 forKey:@"ImmersiveExperience"];

  associatedDataStore = [(SRUIFMutableConversationItem *)self associatedDataStore];
  propertyListRepresentation = [associatedDataStore propertyListRepresentation];

  [dictionary setObject:propertyListRepresentation forKey:@"AssociatedDataStore"];

  return dictionary;
}

- (SRUIFMutableConversationItem)initWithPropertyListRepresentation:(id)representation
{
  representationCopy = representation;
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
  selfCopy = self;
  v63 = selfCopy;
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
  v13 = selfCopy;
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
  v19 = [(SRUIFDictionarySchema *)v5 coerceObject:representationCopy error:&v59];
  v20 = v59;
  if (!v19)
  {
    v29 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFMutableConversationItem *)v20 initWithPropertyListRepresentation:representationCopy, v29];
    }

    goto LABEL_11;
  }

  v21 = [v19 objectForKey:@"Version"];
  integerValue = [v21 integerValue];

  if (integerValue != 1)
  {
    v30 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFMutableConversationItem *)integerValue initWithPropertyListRepresentation:v30];
    }

LABEL_11:
    v31 = 0;
    goto LABEL_19;
  }

  v58 = representationCopy;
  v57 = [v19 objectForKey:@"Identifier"];
  v23 = [v19 objectForKey:@"RevisionIdentifier"];
  if (!v23)
  {
    v23 = objc_alloc_init(MEMORY[0x277CCAD78]);
  }

  v56 = v23;
  v24 = [v19 objectForKey:@"Type"];
  integerValue2 = [v24 integerValue];

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
  integerValue3 = [v32 integerValue];

  v33 = [v19 objectForKey:@"AceCommandIdentifier"];
  v34 = [v19 objectForKey:@"Transient"];
  bOOLValue = [v34 BOOLValue];

  v36 = [v19 objectForKey:@"Supplemental"];
  bOOLValue2 = [v36 BOOLValue];

  v38 = [v19 objectForKey:@"ImmersiveExperience"];
  bOOLValue3 = [v38 BOOLValue];

  v40 = [SRUIFDataStore alloc];
  v41 = [v19 objectForKey:@"AssociatedDataStore"];
  v42 = [(SRUIFDataStore *)v40 initWithPropertyListRepresentation:v41];

  v53 = v20;
  if (v42)
  {
    BYTE3(v49) = bOOLValue3;
    BYTE2(v49) = bOOLValue2;
    BYTE1(v49) = bOOLValue;
    LOBYTE(v49) = 0;
    v44 = v56;
    v43 = v57;
    v45 = v54;
    v46 = v55;
    v13 = [SRUIFMutableConversationItem initWithIdentifier:v13 revisionIdentifier:"initWithIdentifier:revisionIdentifier:type:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:associatedDataStore:" type:v57 aceObject:v56 dialogPhase:integerValue2 presentationState:v55 aceCommandIdentifier:v54 virgin:integerValue3 transient:v33 supplemental:v49 immersiveExperience:v42 associatedDataStore:?];
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

  representationCopy = v58;
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