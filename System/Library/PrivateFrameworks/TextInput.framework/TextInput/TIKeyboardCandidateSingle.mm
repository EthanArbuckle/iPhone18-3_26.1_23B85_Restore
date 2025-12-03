@interface TIKeyboardCandidateSingle
+ (id)candidateWithCandidate:(id)candidate forInput:(id)input;
+ (id)candidateWithCandidate:(id)candidate forInput:(id)input cursorMovement:(int64_t)movement;
+ (id)candidateWithCandidate:(id)candidate forInput:(id)input customInfoType:(unint64_t)type;
+ (id)candidateWithCandidate:(id)candidate forInput:(id)input extensionCandidate:(BOOL)extensionCandidate;
+ (id)candidateWithCandidate:(id)candidate forInput:(id)input property:(unint64_t)property;
+ (id)candidateWithUnchangedInput:(id)input;
+ (id)candidateWithUnchangedInput:(id)input learningFlagsMask:(unint64_t)mask;
+ (id)secureCandidateForInput:(id)input slotID:(unsigned int)d;
+ (id)secureCandidateForInput:(id)input slotID:(unsigned int)d customInfoType:(unint64_t)type;
+ (id)secureCandidateForInput:(id)input slotID:(unsigned int)d customInfoType:(unint64_t)type applicationKey:(id)key applicationBundleId:(id)id altDSID:(id)iD;
+ (id)secureCandidateWithCandidate:(id)candidate forInput:(id)input slotID:(unsigned int)d customInfoType:(unint64_t)type stickerIdentifier:(id)identifier;
- (BOOL)isAutocorrectionIgnoringCaseAndDiacriticsAndSupplementalItemPrefix;
- (BOOL)isAutocorrectionIgnoringCaseAndSupplementalItemPrefix;
- (TIKeyboardCandidateSingle)initWithCandidate:(id)candidate forInput:(id)input rawInput:(id)rawInput extensionCandidate:(BOOL)extensionCandidate sourceMask:(unsigned int)mask learningFlagsMask:(unint64_t)flagsMask;
- (TIKeyboardCandidateSingle)initWithCandidateResultSetCoder:(id)coder;
- (TIKeyboardCandidateSingle)initWithCoder:(id)coder;
- (TIKeyboardCandidateSingle)initWithResponseCandidate:(id)candidate;
- (id)candidateByReplacingWithCandidate:(id)candidate;
- (id)candidateByReplacingWithCandidate:(id)candidate input:(id)input;
- (id)candidateByReplacingWithCandidate:(id)candidate input:(id)input rawInput:(id)rawInput;
- (id)candidateByReplacingWithSourceMask:(unsigned int)mask;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCandidateResultSetCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIKeyboardCandidateSingle

- (void)encodeWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TIKeyboardCandidateSingle;
  [(TIKeyboardCandidate *)&v11 encodeWithCandidateResultSetCoder:coderCopy];
  if (![(TIKeyboardCandidate *)self slotID])
  {
    candidate = [(TIKeyboardCandidateSingle *)self candidate];
    [coderCopy encodeString:candidate];
  }

  input = [(TIKeyboardCandidateSingle *)self input];
  [coderCopy encodeString:input];

  rawInput = [(TIKeyboardCandidateSingle *)self rawInput];
  [coderCopy encodeString:rawInput];

  applicationKey = [(TIKeyboardCandidateSingle *)self applicationKey];
  [coderCopy encodeString:applicationKey];

  applicationBundleId = [(TIKeyboardCandidateSingle *)self applicationBundleId];
  [coderCopy encodeString:applicationBundleId];

  altDSID = [(TIKeyboardCandidateSingle *)self altDSID];
  [coderCopy encodeString:altDSID];

  [coderCopy encodeBool:{-[TIKeyboardCandidateSingle isExtensionCandidate](self, "isExtensionCandidate")}];
  [coderCopy encodeUInt64:{-[TIKeyboardCandidateSingle cursorMovement](self, "cursorMovement")}];
  [coderCopy encodeUInt64:{-[TIKeyboardCandidateSingle learningFlagsMask](self, "learningFlagsMask")}];
  [coderCopy encodeUInt32:{-[TIKeyboardCandidateSingle sourceMask](self, "sourceMask")}];
  [coderCopy encodeBool:{-[TIKeyboardCandidateSingle isContinuousPathConversion](self, "isContinuousPathConversion")}];
  [coderCopy encodeBool:{-[TIKeyboardCandidateSingle shouldAccept](self, "shouldAccept")}];
}

- (TIKeyboardCandidateSingle)initWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = TIKeyboardCandidateSingle;
  v5 = [(TIKeyboardCandidate *)&v27 initWithCandidateResultSetCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    if (![(TIKeyboardCandidate *)v5 slotID])
    {
      decodeString = [coderCopy decodeString];
      v8 = [decodeString copy];
      candidate = v6->_candidate;
      v6->_candidate = v8;
    }

    decodeString2 = [coderCopy decodeString];
    v11 = [decodeString2 copy];
    input = v6->_input;
    v6->_input = v11;

    decodeString3 = [coderCopy decodeString];
    v14 = [decodeString3 copy];
    rawInput = v6->_rawInput;
    v6->_rawInput = v14;

    if (![(NSString *)v6->_rawInput length])
    {
      v16 = v6->_rawInput;
      v6->_rawInput = 0;
    }

    decodeString4 = [coderCopy decodeString];
    v18 = [decodeString4 copy];
    applicationKey = v6->_applicationKey;
    v6->_applicationKey = v18;

    decodeString5 = [coderCopy decodeString];
    v21 = [decodeString5 copy];
    applicationBundleId = v6->_applicationBundleId;
    v6->_applicationBundleId = v21;

    decodeString6 = [coderCopy decodeString];
    v24 = [decodeString6 copy];
    altDSID = v6->_altDSID;
    v6->_altDSID = v24;

    v6->_extensionCandidate = [coderCopy decodeBool];
    v6->_cursorMovement = [coderCopy decodeUInt64];
    v6->_learningFlagsMask = [coderCopy decodeUInt64];
    v6->_sourceMask = [coderCopy decodeUInt32];
    v6->_continuousPathConversion = [coderCopy decodeBool];
    v6->_shouldAccept = [coderCopy decodeBool];
  }

  return v6;
}

- (id)candidateByReplacingWithSourceMask:(unsigned int)mask
{
  v3 = *&mask;
  v4 = [(TIKeyboardCandidateSingle *)self copy];
  [v4 setSourceMask:v3];

  return v4;
}

- (id)candidateByReplacingWithCandidate:(id)candidate input:(id)input rawInput:(id)rawInput
{
  rawInputCopy = rawInput;
  inputCopy = input;
  candidateCopy = candidate;
  v11 = [(TIKeyboardCandidateSingle *)self copy];
  [v11 setCandidate:candidateCopy];

  [v11 setInput:inputCopy];
  [v11 setRawInput:rawInputCopy];

  [v11 setApplicationKey:@"replacing"];
  [v11 setApplicationBundleId:@"replacing"];
  [v11 setAltDSID:@"replace"];
  [v11 setLearningFlagsMask:0];

  return v11;
}

- (id)candidateByReplacingWithCandidate:(id)candidate input:(id)input
{
  inputCopy = input;
  candidateCopy = candidate;
  rawInput = [(TIKeyboardCandidateSingle *)self rawInput];
  v9 = [(TIKeyboardCandidateSingle *)self candidateByReplacingWithCandidate:candidateCopy input:inputCopy rawInput:rawInput];

  return v9;
}

- (id)candidateByReplacingWithCandidate:(id)candidate
{
  candidateCopy = candidate;
  v5 = [(TIKeyboardCandidateSingle *)self copy];
  [v5 setCandidate:candidateCopy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  candidate = [(TIKeyboardCandidateSingle *)self candidate];
  v5 = [v3 stringWithFormat:@"<TIKeyboardCandidateSingle: candidate %@, learningflagsMask %llu>", candidate, -[TIKeyboardCandidateSingle learningFlagsMask](self, "learningFlagsMask")];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TIKeyboardCandidateSingle;
  [(TIKeyboardCandidate *)&v12 encodeWithCoder:coderCopy];
  if (self->_candidate && ![(TIKeyboardCandidate *)self slotID])
  {
    [coderCopy encodeObject:self->_candidate forKey:@"candidate"];
  }

  applicationKey = self->_applicationKey;
  if (applicationKey)
  {
    [coderCopy encodeObject:applicationKey forKey:@"applicationKey"];
  }

  applicationBundleId = self->_applicationBundleId;
  if (applicationBundleId)
  {
    [coderCopy encodeObject:applicationBundleId forKey:@"applicationBundleId"];
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    [coderCopy encodeObject:altDSID forKey:@"altDSID"];
  }

  stickerIdentifier = self->_stickerIdentifier;
  if (stickerIdentifier)
  {
    [coderCopy encodeObject:stickerIdentifier forKey:@"stickerIdentifier"];
  }

  input = self->_input;
  if (input)
  {
    [coderCopy encodeObject:input forKey:@"input"];
  }

  rawInput = self->_rawInput;
  if (rawInput)
  {
    [coderCopy encodeObject:rawInput forKey:@"rawInput"];
  }

  [coderCopy encodeBool:self->_extensionCandidate forKey:@"extensionCandidate"];
  [coderCopy encodeInteger:self->_cursorMovement forKey:@"cursorMovement"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_learningFlagsMask];
  [coderCopy encodeObject:v11 forKey:@"learningFlagsMask"];

  [coderCopy encodeInteger:self->_sourceMask forKey:@"sourceMask"];
  if (self->_continuousPathConversion)
  {
    [coderCopy encodeBool:1 forKey:@"continuousPathConversion"];
  }

  if (self->_shouldAccept)
  {
    [coderCopy encodeBool:1 forKey:@"shouldAccept"];
  }
}

- (TIKeyboardCandidateSingle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = TIKeyboardCandidateSingle;
  v5 = [(TIKeyboardCandidate *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidate"];
    v7 = [v6 copy];
    candidate = v5->_candidate;
    v5->_candidate = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    v10 = [v9 copy];
    input = v5->_input;
    v5->_input = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawInput"];
    v13 = [v12 copy];
    rawInput = v5->_rawInput;
    v5->_rawInput = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationKey"];
    v16 = [v15 copy];
    applicationKey = v5->_applicationKey;
    v5->_applicationKey = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleId"];
    v19 = [v18 copy];
    applicationBundleId = v5->_applicationBundleId;
    v5->_applicationBundleId = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    v22 = [v21 copy];
    altDSID = v5->_altDSID;
    v5->_altDSID = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stickerIdentifier"];
    stickerIdentifier = v5->_stickerIdentifier;
    v5->_stickerIdentifier = v24;

    v5->_extensionCandidate = [coderCopy decodeBoolForKey:@"extensionCandidate"];
    v5->_cursorMovement = [coderCopy decodeIntegerForKey:@"cursorMovement"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"learningFlagsMask"];
    v5->_learningFlagsMask = [v26 unsignedIntValue];

    v5->_sourceMask = [coderCopy decodeIntegerForKey:@"sourceMask"];
    v5->_continuousPathConversion = [coderCopy decodeBoolForKey:@"continuousPathConversion"];
    v5->_shouldAccept = [coderCopy decodeBoolForKey:@"shouldAccept"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21.receiver = self;
  v21.super_class = TIKeyboardCandidateSingle;
  v5 = [(TIKeyboardCandidate *)&v21 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_candidate copyWithZone:zone];
    v7 = v5[20];
    v5[20] = v6;

    v8 = [(NSString *)self->_input copyWithZone:zone];
    v9 = v5[21];
    v5[21] = v8;

    v10 = [(NSString *)self->_rawInput copyWithZone:zone];
    v11 = v5[22];
    v5[22] = v10;

    v12 = [(NSString *)self->_applicationKey copyWithZone:zone];
    v13 = v5[23];
    v5[23] = v12;

    v14 = [(NSString *)self->_applicationBundleId copyWithZone:zone];
    v15 = v5[24];
    v5[24] = v14;

    v16 = [(NSString *)self->_altDSID copyWithZone:zone];
    v17 = v5[25];
    v5[25] = v16;

    v18 = [(NSUUID *)self->_stickerIdentifier copyWithZone:zone];
    v19 = v5[26];
    v5[26] = v18;

    *(v5 + 152) = self->_extensionCandidate;
    v5[27] = self->_cursorMovement;
    v5[28] = self->_learningFlagsMask;
    *(v5 + 39) = self->_sourceMask;
    *(v5 + 153) = self->_continuousPathConversion;
    *(v5 + 154) = self->_shouldAccept;
  }

  return v5;
}

- (BOOL)isAutocorrectionIgnoringCaseAndDiacriticsAndSupplementalItemPrefix
{
  candidate = [(TIKeyboardCandidateSingle *)self candidate];
  if (candidate)
  {
    candidate2 = [(TIKeyboardCandidateSingle *)self candidate];
    v5 = [candidate2 _stringByReplacingCharacter:8217 withCharacter:39];
    inputWithoutSupplementalItemPrefix = [(TIKeyboardCandidate *)self inputWithoutSupplementalItemPrefix];
    v7 = [inputWithoutSupplementalItemPrefix _stringByReplacingCharacter:8217 withCharacter:39];
    v8 = [v5 compare:v7 options:129] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isAutocorrectionIgnoringCaseAndSupplementalItemPrefix
{
  candidate = [(TIKeyboardCandidateSingle *)self candidate];
  if (candidate)
  {
    candidate2 = [(TIKeyboardCandidateSingle *)self candidate];
    inputWithoutSupplementalItemPrefix = [(TIKeyboardCandidate *)self inputWithoutSupplementalItemPrefix];
    v6 = [candidate2 caseInsensitiveCompare:inputWithoutSupplementalItemPrefix] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TIKeyboardCandidateSingle)initWithResponseCandidate:(id)candidate
{
  result = [(TIKeyboardCandidateSingle *)self initWithCandidate:candidate forInput:&stru_1EF56D550 rawInput:0];
  result->super._responseKitCandidate = 1;
  return result;
}

- (TIKeyboardCandidateSingle)initWithCandidate:(id)candidate forInput:(id)input rawInput:(id)rawInput extensionCandidate:(BOOL)extensionCandidate sourceMask:(unsigned int)mask learningFlagsMask:(unint64_t)flagsMask
{
  v9 = *&mask;
  extensionCandidateCopy = extensionCandidate;
  candidateCopy = candidate;
  inputCopy = input;
  rawInputCopy = rawInput;
  v20.receiver = self;
  v20.super_class = TIKeyboardCandidateSingle;
  v17 = [(TIKeyboardCandidate *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(TIKeyboardCandidateSingle *)v17 setCandidate:candidateCopy];
    [(TIKeyboardCandidateSingle *)v18 setInput:inputCopy];
    [(TIKeyboardCandidateSingle *)v18 setRawInput:rawInputCopy];
    [(TIKeyboardCandidateSingle *)v18 setApplicationKey:&stru_1EF56D550];
    [(TIKeyboardCandidateSingle *)v18 setApplicationBundleId:&stru_1EF56D550];
    [(TIKeyboardCandidateSingle *)v18 setAltDSID:0];
    [(TIKeyboardCandidateSingle *)v18 setStickerIdentifier:0];
    [(TIKeyboardCandidateSingle *)v18 setExtensionCandidate:extensionCandidateCopy];
    [(TIKeyboardCandidate *)v18 setSlotID:0];
    [(TIKeyboardCandidate *)v18 setSecureCandidateWidth:0.0];
    [(TIKeyboardCandidate *)v18 setIsSecureCandidateDoubleLines:0];
    [(TIKeyboardCandidate *)v18 setSecureCandidateHash:0];
    [(TIKeyboardCandidate *)v18 setCustomInfoType:0];
    [(TIKeyboardCandidate *)v18 setTypingEngine:0];
    [(TIKeyboardCandidateSingle *)v18 setSourceMask:v9];
    [(TIKeyboardCandidateSingle *)v18 setLearningFlagsMask:flagsMask];
  }

  return v18;
}

+ (id)secureCandidateWithCandidate:(id)candidate forInput:(id)input slotID:(unsigned int)d customInfoType:(unint64_t)type stickerIdentifier:(id)identifier
{
  v8 = *&d;
  identifierCopy = identifier;
  inputCopy = input;
  candidateCopy = candidate;
  v14 = [objc_opt_class() secureCandidateForInput:inputCopy slotID:v8 customInfoType:type];

  [v14 setCandidate:candidateCopy];
  [v14 setStickerIdentifier:identifierCopy];

  return v14;
}

+ (id)secureCandidateForInput:(id)input slotID:(unsigned int)d customInfoType:(unint64_t)type applicationKey:(id)key applicationBundleId:(id)id altDSID:(id)iD
{
  v11 = *&d;
  iDCopy = iD;
  idCopy = id;
  keyCopy = key;
  inputCopy = input;
  v17 = [objc_opt_class() secureCandidateForInput:inputCopy slotID:v11 customInfoType:type];

  [v17 setApplicationKey:keyCopy];
  [v17 setApplicationBundleId:idCopy];

  [v17 setAltDSID:iDCopy];

  return v17;
}

+ (id)secureCandidateForInput:(id)input slotID:(unsigned int)d customInfoType:(unint64_t)type
{
  v6 = *&d;
  inputCopy = input;
  v8 = [objc_opt_class() secureCandidateForInput:inputCopy slotID:v6];

  [v8 setCustomInfoType:type];

  return v8;
}

+ (id)secureCandidateForInput:(id)input slotID:(unsigned int)d
{
  v4 = *&d;
  inputCopy = input;
  v6 = [objc_opt_class() candidateWithUnchangedInput:inputCopy];

  [v6 setSlotID:v4];

  return v6;
}

+ (id)candidateWithCandidate:(id)candidate forInput:(id)input property:(unint64_t)property
{
  result = [self candidateWithCandidate:candidate forInput:input];
  *(result + 2) = property;
  return result;
}

+ (id)candidateWithUnchangedInput:(id)input learningFlagsMask:(unint64_t)mask
{
  inputCopy = input;
  v7 = [[self alloc] initWithUnchangedInput:inputCopy learningFlagsMask:mask];

  return v7;
}

+ (id)candidateWithUnchangedInput:(id)input
{
  inputCopy = input;
  v5 = [[self alloc] initWithUnchangedInput:inputCopy];

  return v5;
}

+ (id)candidateWithCandidate:(id)candidate forInput:(id)input cursorMovement:(int64_t)movement
{
  inputCopy = input;
  candidateCopy = candidate;
  v9 = [objc_opt_class() candidateWithCandidate:candidateCopy forInput:inputCopy];

  [v9 setCursorMovement:movement];

  return v9;
}

+ (id)candidateWithCandidate:(id)candidate forInput:(id)input customInfoType:(unint64_t)type
{
  inputCopy = input;
  candidateCopy = candidate;
  v9 = [objc_opt_class() candidateWithCandidate:candidateCopy forInput:inputCopy];

  [v9 setCustomInfoType:type];

  return v9;
}

+ (id)candidateWithCandidate:(id)candidate forInput:(id)input
{
  inputCopy = input;
  candidateCopy = candidate;
  v8 = [[self alloc] initWithCandidate:candidateCopy forInput:inputCopy rawInput:0];

  return v8;
}

+ (id)candidateWithCandidate:(id)candidate forInput:(id)input extensionCandidate:(BOOL)extensionCandidate
{
  extensionCandidateCopy = extensionCandidate;
  inputCopy = input;
  candidateCopy = candidate;
  v10 = [[self alloc] initWithCandidate:candidateCopy forInput:inputCopy rawInput:0 extensionCandidate:extensionCandidateCopy];

  return v10;
}

@end