@interface TIKeyboardCandidateSingle
+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4;
+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4 cursorMovement:(int64_t)a5;
+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4 customInfoType:(unint64_t)a5;
+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4 extensionCandidate:(BOOL)a5;
+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4 property:(unint64_t)a5;
+ (id)candidateWithUnchangedInput:(id)a3;
+ (id)candidateWithUnchangedInput:(id)a3 learningFlagsMask:(unint64_t)a4;
+ (id)secureCandidateForInput:(id)a3 slotID:(unsigned int)a4;
+ (id)secureCandidateForInput:(id)a3 slotID:(unsigned int)a4 customInfoType:(unint64_t)a5;
+ (id)secureCandidateForInput:(id)a3 slotID:(unsigned int)a4 customInfoType:(unint64_t)a5 applicationKey:(id)a6 applicationBundleId:(id)a7 altDSID:(id)a8;
+ (id)secureCandidateWithCandidate:(id)a3 forInput:(id)a4 slotID:(unsigned int)a5 customInfoType:(unint64_t)a6 stickerIdentifier:(id)a7;
- (BOOL)isAutocorrectionIgnoringCaseAndDiacriticsAndSupplementalItemPrefix;
- (BOOL)isAutocorrectionIgnoringCaseAndSupplementalItemPrefix;
- (TIKeyboardCandidateSingle)initWithCandidate:(id)a3 forInput:(id)a4 rawInput:(id)a5 extensionCandidate:(BOOL)a6 sourceMask:(unsigned int)a7 learningFlagsMask:(unint64_t)a8;
- (TIKeyboardCandidateSingle)initWithCandidateResultSetCoder:(id)a3;
- (TIKeyboardCandidateSingle)initWithCoder:(id)a3;
- (TIKeyboardCandidateSingle)initWithResponseCandidate:(id)a3;
- (id)candidateByReplacingWithCandidate:(id)a3;
- (id)candidateByReplacingWithCandidate:(id)a3 input:(id)a4;
- (id)candidateByReplacingWithCandidate:(id)a3 input:(id)a4 rawInput:(id)a5;
- (id)candidateByReplacingWithSourceMask:(unsigned int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCandidateResultSetCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIKeyboardCandidateSingle

- (void)encodeWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TIKeyboardCandidateSingle;
  [(TIKeyboardCandidate *)&v11 encodeWithCandidateResultSetCoder:v4];
  if (![(TIKeyboardCandidate *)self slotID])
  {
    v5 = [(TIKeyboardCandidateSingle *)self candidate];
    [v4 encodeString:v5];
  }

  v6 = [(TIKeyboardCandidateSingle *)self input];
  [v4 encodeString:v6];

  v7 = [(TIKeyboardCandidateSingle *)self rawInput];
  [v4 encodeString:v7];

  v8 = [(TIKeyboardCandidateSingle *)self applicationKey];
  [v4 encodeString:v8];

  v9 = [(TIKeyboardCandidateSingle *)self applicationBundleId];
  [v4 encodeString:v9];

  v10 = [(TIKeyboardCandidateSingle *)self altDSID];
  [v4 encodeString:v10];

  [v4 encodeBool:{-[TIKeyboardCandidateSingle isExtensionCandidate](self, "isExtensionCandidate")}];
  [v4 encodeUInt64:{-[TIKeyboardCandidateSingle cursorMovement](self, "cursorMovement")}];
  [v4 encodeUInt64:{-[TIKeyboardCandidateSingle learningFlagsMask](self, "learningFlagsMask")}];
  [v4 encodeUInt32:{-[TIKeyboardCandidateSingle sourceMask](self, "sourceMask")}];
  [v4 encodeBool:{-[TIKeyboardCandidateSingle isContinuousPathConversion](self, "isContinuousPathConversion")}];
  [v4 encodeBool:{-[TIKeyboardCandidateSingle shouldAccept](self, "shouldAccept")}];
}

- (TIKeyboardCandidateSingle)initWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = TIKeyboardCandidateSingle;
  v5 = [(TIKeyboardCandidate *)&v27 initWithCandidateResultSetCoder:v4];
  v6 = v5;
  if (v5)
  {
    if (![(TIKeyboardCandidate *)v5 slotID])
    {
      v7 = [v4 decodeString];
      v8 = [v7 copy];
      candidate = v6->_candidate;
      v6->_candidate = v8;
    }

    v10 = [v4 decodeString];
    v11 = [v10 copy];
    input = v6->_input;
    v6->_input = v11;

    v13 = [v4 decodeString];
    v14 = [v13 copy];
    rawInput = v6->_rawInput;
    v6->_rawInput = v14;

    if (![(NSString *)v6->_rawInput length])
    {
      v16 = v6->_rawInput;
      v6->_rawInput = 0;
    }

    v17 = [v4 decodeString];
    v18 = [v17 copy];
    applicationKey = v6->_applicationKey;
    v6->_applicationKey = v18;

    v20 = [v4 decodeString];
    v21 = [v20 copy];
    applicationBundleId = v6->_applicationBundleId;
    v6->_applicationBundleId = v21;

    v23 = [v4 decodeString];
    v24 = [v23 copy];
    altDSID = v6->_altDSID;
    v6->_altDSID = v24;

    v6->_extensionCandidate = [v4 decodeBool];
    v6->_cursorMovement = [v4 decodeUInt64];
    v6->_learningFlagsMask = [v4 decodeUInt64];
    v6->_sourceMask = [v4 decodeUInt32];
    v6->_continuousPathConversion = [v4 decodeBool];
    v6->_shouldAccept = [v4 decodeBool];
  }

  return v6;
}

- (id)candidateByReplacingWithSourceMask:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(TIKeyboardCandidateSingle *)self copy];
  [v4 setSourceMask:v3];

  return v4;
}

- (id)candidateByReplacingWithCandidate:(id)a3 input:(id)a4 rawInput:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(TIKeyboardCandidateSingle *)self copy];
  [v11 setCandidate:v10];

  [v11 setInput:v9];
  [v11 setRawInput:v8];

  [v11 setApplicationKey:@"replacing"];
  [v11 setApplicationBundleId:@"replacing"];
  [v11 setAltDSID:@"replace"];
  [v11 setLearningFlagsMask:0];

  return v11;
}

- (id)candidateByReplacingWithCandidate:(id)a3 input:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TIKeyboardCandidateSingle *)self rawInput];
  v9 = [(TIKeyboardCandidateSingle *)self candidateByReplacingWithCandidate:v7 input:v6 rawInput:v8];

  return v9;
}

- (id)candidateByReplacingWithCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardCandidateSingle *)self copy];
  [v5 setCandidate:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(TIKeyboardCandidateSingle *)self candidate];
  v5 = [v3 stringWithFormat:@"<TIKeyboardCandidateSingle: candidate %@, learningflagsMask %llu>", v4, -[TIKeyboardCandidateSingle learningFlagsMask](self, "learningFlagsMask")];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TIKeyboardCandidateSingle;
  [(TIKeyboardCandidate *)&v12 encodeWithCoder:v4];
  if (self->_candidate && ![(TIKeyboardCandidate *)self slotID])
  {
    [v4 encodeObject:self->_candidate forKey:@"candidate"];
  }

  applicationKey = self->_applicationKey;
  if (applicationKey)
  {
    [v4 encodeObject:applicationKey forKey:@"applicationKey"];
  }

  applicationBundleId = self->_applicationBundleId;
  if (applicationBundleId)
  {
    [v4 encodeObject:applicationBundleId forKey:@"applicationBundleId"];
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    [v4 encodeObject:altDSID forKey:@"altDSID"];
  }

  stickerIdentifier = self->_stickerIdentifier;
  if (stickerIdentifier)
  {
    [v4 encodeObject:stickerIdentifier forKey:@"stickerIdentifier"];
  }

  input = self->_input;
  if (input)
  {
    [v4 encodeObject:input forKey:@"input"];
  }

  rawInput = self->_rawInput;
  if (rawInput)
  {
    [v4 encodeObject:rawInput forKey:@"rawInput"];
  }

  [v4 encodeBool:self->_extensionCandidate forKey:@"extensionCandidate"];
  [v4 encodeInteger:self->_cursorMovement forKey:@"cursorMovement"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_learningFlagsMask];
  [v4 encodeObject:v11 forKey:@"learningFlagsMask"];

  [v4 encodeInteger:self->_sourceMask forKey:@"sourceMask"];
  if (self->_continuousPathConversion)
  {
    [v4 encodeBool:1 forKey:@"continuousPathConversion"];
  }

  if (self->_shouldAccept)
  {
    [v4 encodeBool:1 forKey:@"shouldAccept"];
  }
}

- (TIKeyboardCandidateSingle)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = TIKeyboardCandidateSingle;
  v5 = [(TIKeyboardCandidate *)&v28 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidate"];
    v7 = [v6 copy];
    candidate = v5->_candidate;
    v5->_candidate = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    v10 = [v9 copy];
    input = v5->_input;
    v5->_input = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawInput"];
    v13 = [v12 copy];
    rawInput = v5->_rawInput;
    v5->_rawInput = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationKey"];
    v16 = [v15 copy];
    applicationKey = v5->_applicationKey;
    v5->_applicationKey = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleId"];
    v19 = [v18 copy];
    applicationBundleId = v5->_applicationBundleId;
    v5->_applicationBundleId = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    v22 = [v21 copy];
    altDSID = v5->_altDSID;
    v5->_altDSID = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stickerIdentifier"];
    stickerIdentifier = v5->_stickerIdentifier;
    v5->_stickerIdentifier = v24;

    v5->_extensionCandidate = [v4 decodeBoolForKey:@"extensionCandidate"];
    v5->_cursorMovement = [v4 decodeIntegerForKey:@"cursorMovement"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"learningFlagsMask"];
    v5->_learningFlagsMask = [v26 unsignedIntValue];

    v5->_sourceMask = [v4 decodeIntegerForKey:@"sourceMask"];
    v5->_continuousPathConversion = [v4 decodeBoolForKey:@"continuousPathConversion"];
    v5->_shouldAccept = [v4 decodeBoolForKey:@"shouldAccept"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21.receiver = self;
  v21.super_class = TIKeyboardCandidateSingle;
  v5 = [(TIKeyboardCandidate *)&v21 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_candidate copyWithZone:a3];
    v7 = v5[20];
    v5[20] = v6;

    v8 = [(NSString *)self->_input copyWithZone:a3];
    v9 = v5[21];
    v5[21] = v8;

    v10 = [(NSString *)self->_rawInput copyWithZone:a3];
    v11 = v5[22];
    v5[22] = v10;

    v12 = [(NSString *)self->_applicationKey copyWithZone:a3];
    v13 = v5[23];
    v5[23] = v12;

    v14 = [(NSString *)self->_applicationBundleId copyWithZone:a3];
    v15 = v5[24];
    v5[24] = v14;

    v16 = [(NSString *)self->_altDSID copyWithZone:a3];
    v17 = v5[25];
    v5[25] = v16;

    v18 = [(NSUUID *)self->_stickerIdentifier copyWithZone:a3];
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
  v3 = [(TIKeyboardCandidateSingle *)self candidate];
  if (v3)
  {
    v4 = [(TIKeyboardCandidateSingle *)self candidate];
    v5 = [v4 _stringByReplacingCharacter:8217 withCharacter:39];
    v6 = [(TIKeyboardCandidate *)self inputWithoutSupplementalItemPrefix];
    v7 = [v6 _stringByReplacingCharacter:8217 withCharacter:39];
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
  v3 = [(TIKeyboardCandidateSingle *)self candidate];
  if (v3)
  {
    v4 = [(TIKeyboardCandidateSingle *)self candidate];
    v5 = [(TIKeyboardCandidate *)self inputWithoutSupplementalItemPrefix];
    v6 = [v4 caseInsensitiveCompare:v5] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TIKeyboardCandidateSingle)initWithResponseCandidate:(id)a3
{
  result = [(TIKeyboardCandidateSingle *)self initWithCandidate:a3 forInput:&stru_1EF56D550 rawInput:0];
  result->super._responseKitCandidate = 1;
  return result;
}

- (TIKeyboardCandidateSingle)initWithCandidate:(id)a3 forInput:(id)a4 rawInput:(id)a5 extensionCandidate:(BOOL)a6 sourceMask:(unsigned int)a7 learningFlagsMask:(unint64_t)a8
{
  v9 = *&a7;
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = TIKeyboardCandidateSingle;
  v17 = [(TIKeyboardCandidate *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(TIKeyboardCandidateSingle *)v17 setCandidate:v14];
    [(TIKeyboardCandidateSingle *)v18 setInput:v15];
    [(TIKeyboardCandidateSingle *)v18 setRawInput:v16];
    [(TIKeyboardCandidateSingle *)v18 setApplicationKey:&stru_1EF56D550];
    [(TIKeyboardCandidateSingle *)v18 setApplicationBundleId:&stru_1EF56D550];
    [(TIKeyboardCandidateSingle *)v18 setAltDSID:0];
    [(TIKeyboardCandidateSingle *)v18 setStickerIdentifier:0];
    [(TIKeyboardCandidateSingle *)v18 setExtensionCandidate:v10];
    [(TIKeyboardCandidate *)v18 setSlotID:0];
    [(TIKeyboardCandidate *)v18 setSecureCandidateWidth:0.0];
    [(TIKeyboardCandidate *)v18 setIsSecureCandidateDoubleLines:0];
    [(TIKeyboardCandidate *)v18 setSecureCandidateHash:0];
    [(TIKeyboardCandidate *)v18 setCustomInfoType:0];
    [(TIKeyboardCandidate *)v18 setTypingEngine:0];
    [(TIKeyboardCandidateSingle *)v18 setSourceMask:v9];
    [(TIKeyboardCandidateSingle *)v18 setLearningFlagsMask:a8];
  }

  return v18;
}

+ (id)secureCandidateWithCandidate:(id)a3 forInput:(id)a4 slotID:(unsigned int)a5 customInfoType:(unint64_t)a6 stickerIdentifier:(id)a7
{
  v8 = *&a5;
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [objc_opt_class() secureCandidateForInput:v12 slotID:v8 customInfoType:a6];

  [v14 setCandidate:v13];
  [v14 setStickerIdentifier:v11];

  return v14;
}

+ (id)secureCandidateForInput:(id)a3 slotID:(unsigned int)a4 customInfoType:(unint64_t)a5 applicationKey:(id)a6 applicationBundleId:(id)a7 altDSID:(id)a8
{
  v11 = *&a4;
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a3;
  v17 = [objc_opt_class() secureCandidateForInput:v16 slotID:v11 customInfoType:a5];

  [v17 setApplicationKey:v15];
  [v17 setApplicationBundleId:v14];

  [v17 setAltDSID:v13];

  return v17;
}

+ (id)secureCandidateForInput:(id)a3 slotID:(unsigned int)a4 customInfoType:(unint64_t)a5
{
  v6 = *&a4;
  v7 = a3;
  v8 = [objc_opt_class() secureCandidateForInput:v7 slotID:v6];

  [v8 setCustomInfoType:a5];

  return v8;
}

+ (id)secureCandidateForInput:(id)a3 slotID:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [objc_opt_class() candidateWithUnchangedInput:v5];

  [v6 setSlotID:v4];

  return v6;
}

+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4 property:(unint64_t)a5
{
  result = [a1 candidateWithCandidate:a3 forInput:a4];
  *(result + 2) = a5;
  return result;
}

+ (id)candidateWithUnchangedInput:(id)a3 learningFlagsMask:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithUnchangedInput:v6 learningFlagsMask:a4];

  return v7;
}

+ (id)candidateWithUnchangedInput:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithUnchangedInput:v4];

  return v5;
}

+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4 cursorMovement:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() candidateWithCandidate:v8 forInput:v7];

  [v9 setCursorMovement:a5];

  return v9;
}

+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4 customInfoType:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() candidateWithCandidate:v8 forInput:v7];

  [v9 setCustomInfoType:a5];

  return v9;
}

+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithCandidate:v7 forInput:v6 rawInput:0];

  return v8;
}

+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4 extensionCandidate:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithCandidate:v9 forInput:v8 rawInput:0 extensionCandidate:v5];

  return v10;
}

@end