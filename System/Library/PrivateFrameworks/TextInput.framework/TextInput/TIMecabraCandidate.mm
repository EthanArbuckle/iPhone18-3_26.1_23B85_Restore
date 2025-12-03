@interface TIMecabraCandidate
- (BOOL)isEqual:(id)equal;
- (TIMecabraCandidate)initWithCandidate:(id)candidate forInput:(id)input latinCandidate:(id)latinCandidate mecabraCandidatePointerValue:(id)value withFlags:(unsigned __int16)flags deleteCount:(unint64_t)count cursorMovement:(int64_t)movement;
- (TIMecabraCandidate)initWithCandidateResultSetCoder:(id)coder;
- (TIMecabraCandidate)initWithCoder:(id)coder;
- (TIMecabraCandidate)initWithResponseKitString:(id)string responseKitCategory:(id)category mecabraCandidatePointerValue:(id)value;
- (id)candidateByReplacingWithCandidate:(id)candidate;
- (id)candidateByReplacingWithCandidate:(id)candidate input:(id)input;
- (id)candidateByReplacingWithCandidate:(id)candidate input:(id)input rawInput:(id)rawInput;
- (id)candidateByReplacingWithSourceMask:(unsigned int)mask;
- (id)copyWithZone:(_NSZone *)zone;
- (id)label;
- (unsigned)flags;
- (void)encodeWithCandidateResultSetCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIMecabraCandidate

- (void)encodeWithCandidateResultSetCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIMecabraCandidate;
  coderCopy = coder;
  [(TIKeyboardCandidate *)&v5 encodeWithCandidateResultSetCoder:coderCopy];
  [coderCopy encodeString:{self->_candidate, v5.receiver, v5.super_class}];
  [coderCopy encodeString:self->_latinCandidate];
  [coderCopy encodeString:self->_input];
  [coderCopy encodeString:self->_rawInput];
  [coderCopy encodeUInt64:{-[NSNumber unsignedLongLongValue](self->_mecabraCandidatePointerValue, "unsignedLongLongValue")}];
  [coderCopy encodeShort:{-[TIMecabraCandidate flags](self, "flags")}];
  [coderCopy encodeUInt32:LODWORD(self->_deleteCount)];
  [coderCopy encodeUInt32:LODWORD(self->_cursorMovement)];
  [coderCopy encodeBool:self->_shouldAccept];
  [coderCopy encodeUInt32:{-[TIMecabraCandidate sourceMask](self, "sourceMask")}];
  [coderCopy encodeBool:self->_shouldInsertSpaceAfterSelection];
}

- (TIMecabraCandidate)initWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = TIMecabraCandidate;
  v5 = [(TIKeyboardCandidate *)&v24 initWithCandidateResultSetCoder:coderCopy];
  if (v5)
  {
    decodeString = [coderCopy decodeString];
    v7 = [decodeString copy];
    candidate = v5->_candidate;
    v5->_candidate = v7;

    decodeString2 = [coderCopy decodeString];
    v10 = [decodeString2 copy];
    latinCandidate = v5->_latinCandidate;
    v5->_latinCandidate = v10;

    decodeString3 = [coderCopy decodeString];
    v13 = [decodeString3 copy];
    input = v5->_input;
    v5->_input = v13;

    decodeString4 = [coderCopy decodeString];
    v16 = [decodeString4 copy];
    rawInput = v5->_rawInput;
    v5->_rawInput = v16;

    if (![(NSString *)v5->_rawInput length])
    {
      v18 = v5->_rawInput;
      v5->_rawInput = 0;
    }

    decodeUInt64 = [coderCopy decodeUInt64];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:decodeUInt64];
    mecabraCandidatePointerValue = v5->_mecabraCandidatePointerValue;
    v5->_mecabraCandidatePointerValue = v20;

    decodeShort = [coderCopy decodeShort];
    v5->_extensionCandidate = decodeShort & 1;
    v5->_emojiCandidate = (decodeShort & 2) != 0;
    v5->_isForShortcutConversion = (decodeShort & 4) != 0;
    v5->_isAutocorrection = (decodeShort & 8) != 0;
    v5->_OTAWordListCandidate = (decodeShort & 0x10) != 0;
    v5->_regionalCandidate = (decodeShort & 0x20) != 0;
    v5->_responseKitCandidate = (decodeShort & 0x40) != 0;
    v5->_bilingualCandidate = (decodeShort & 0x80) != 0;
    v5->_asIsCandidate = HIBYTE(decodeShort) & 1;
    v5->_partialCandidate = (decodeShort & 0x200) != 0;
    v5->_wubixingConvertedByPinyin = (decodeShort & 0x400) != 0;
    v5->_prefixMatched = (decodeShort & 0x800) != 0;
    v5->_deleteCount = [coderCopy decodeUInt32];
    v5->_cursorMovement = [coderCopy decodeUInt32];
    v5->_shouldAccept = [coderCopy decodeBool];
    v5->_sourceMask = [coderCopy decodeUInt32];
    v5->_shouldInsertSpaceAfterSelection = [coderCopy decodeBool];
  }

  return v5;
}

- (id)candidateByReplacingWithSourceMask:(unsigned int)mask
{
  v4 = [(TIMecabraCandidate *)self copy];
  v4[42] = mask;

  return v4;
}

- (id)candidateByReplacingWithCandidate:(id)candidate input:(id)input rawInput:(id)rawInput
{
  candidateCopy = candidate;
  inputCopy = input;
  rawInputCopy = rawInput;
  v11 = [(TIMecabraCandidate *)self copy];
  v12 = v11[23];
  v11[23] = candidateCopy;
  v13 = candidateCopy;

  v14 = v11[25];
  v11[25] = inputCopy;
  v15 = inputCopy;

  v16 = v11[26];
  v11[26] = rawInputCopy;

  return v11;
}

- (id)candidateByReplacingWithCandidate:(id)candidate input:(id)input
{
  inputCopy = input;
  candidateCopy = candidate;
  rawInput = [(TIMecabraCandidate *)self rawInput];
  v9 = [(TIMecabraCandidate *)self candidateByReplacingWithCandidate:candidateCopy input:inputCopy rawInput:rawInput];

  return v9;
}

- (id)candidateByReplacingWithCandidate:(id)candidate
{
  candidateCopy = candidate;
  v5 = [(TIMecabraCandidate *)self copy];
  v6 = [candidateCopy copy];

  v7 = v5[23];
  v5[23] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      mecabraCandidatePointerValue = [(TIMecabraCandidate *)v5 mecabraCandidatePointerValue];
      mecabraCandidatePointerValue2 = [(TIMecabraCandidate *)self mecabraCandidatePointerValue];
      v8 = mecabraCandidatePointerValue2;
      if (mecabraCandidatePointerValue == mecabraCandidatePointerValue2)
      {
      }

      else
      {
        mecabraCandidatePointerValue3 = [(TIMecabraCandidate *)v5 mecabraCandidatePointerValue];
        mecabraCandidatePointerValue4 = [(TIMecabraCandidate *)self mecabraCandidatePointerValue];
        v11 = [mecabraCandidatePointerValue3 isEqual:mecabraCandidatePointerValue4];

        if (!v11)
        {
          goto LABEL_12;
        }
      }

      isContinuousPathConversion = [(TIMecabraCandidate *)v5 isContinuousPathConversion];
      if (isContinuousPathConversion == [(TIMecabraCandidate *)self isContinuousPathConversion])
      {
        shouldAccept = [(TIMecabraCandidate *)v5 shouldAccept];
        if (shouldAccept == [(TIMecabraCandidate *)self shouldAccept])
        {
          shouldInsertSpaceAfterSelection = [(TIMecabraCandidate *)v5 shouldInsertSpaceAfterSelection];
          if (shouldInsertSpaceAfterSelection == [(TIMecabraCandidate *)self shouldInsertSpaceAfterSelection])
          {
            v17.receiver = self;
            v17.super_class = TIMecabraCandidate;
            v12 = [(TIKeyboardCandidate *)&v17 isEqual:v5];
            goto LABEL_13;
          }
        }
      }

LABEL_12:
      v12 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v12 = 0;
  }

LABEL_14:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TIMecabraCandidate;
  [(TIKeyboardCandidate *)&v13 encodeWithCoder:coderCopy];
  candidate = self->_candidate;
  if (candidate)
  {
    [coderCopy encodeObject:candidate forKey:@"candidate"];
  }

  latinCandidate = self->_latinCandidate;
  if (latinCandidate)
  {
    [coderCopy encodeObject:latinCandidate forKey:@"latinCandidate"];
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

  mecabraCandidatePointerValue = self->_mecabraCandidatePointerValue;
  if (mecabraCandidatePointerValue)
  {
    [coderCopy encodeObject:mecabraCandidatePointerValue forKey:@"mecabraCandidatePointerValue"];
  }

  if (self->_extensionCandidate)
  {
    [coderCopy encodeBool:1 forKey:@"extensionCandidate"];
  }

  if (self->_emojiCandidate)
  {
    [coderCopy encodeBool:1 forKey:@"emojiCandidate"];
  }

  if (self->_isForShortcutConversion)
  {
    [coderCopy encodeBool:1 forKey:@"isForShortcutConversion"];
  }

  if (self->_isAutocorrection)
  {
    [coderCopy encodeBool:1 forKey:@"isAutocorrection"];
  }

  if (self->_OTAWordListCandidate)
  {
    [coderCopy encodeBool:1 forKey:@"OTAWordListCandidate"];
  }

  if (self->_regionalCandidate)
  {
    [coderCopy encodeBool:1 forKey:@"regionalCandidate"];
  }

  if (self->_bilingualCandidate)
  {
    [coderCopy encodeBool:1 forKey:@"bilingualCandidate"];
  }

  if (self->_asIsCandidate)
  {
    [coderCopy encodeBool:1 forKey:@"asIsCandidate"];
  }

  if (self->_partialCandidate)
  {
    [coderCopy encodeBool:1 forKey:@"partialCandidate"];
  }

  if (self->_wubixingConvertedByPinyin)
  {
    [coderCopy encodeBool:1 forKey:@"wubixingConvertedByPinyin"];
  }

  if (self->_prefixMatched)
  {
    [coderCopy encodeBool:1 forKey:@"prefixMatched"];
  }

  deleteCount = self->_deleteCount;
  if (deleteCount)
  {
    [coderCopy encodeInteger:deleteCount forKey:@"deleteCount"];
  }

  cursorMovement = self->_cursorMovement;
  if (cursorMovement)
  {
    [coderCopy encodeInteger:cursorMovement forKey:@"cursorMovement"];
  }

  if (self->_continuousPathConversion)
  {
    [coderCopy encodeBool:1 forKey:@"continuousPathConversion"];
  }

  if (self->_shouldAccept)
  {
    [coderCopy encodeBool:1 forKey:@"shouldAccept"];
  }

  sourceMask = self->_sourceMask;
  if (sourceMask)
  {
    [coderCopy encodeInteger:sourceMask forKey:@"sourceMask"];
  }

  if (self->_singlePhrase)
  {
    [coderCopy encodeBool:1 forKey:@"singlePhrase"];
  }

  if (self->_shouldInsertSpaceAfterSelection)
  {
    [coderCopy encodeBool:1 forKey:@"shouldInsertSpaceAfterSelection"];
  }
}

- (TIMecabraCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = TIMecabraCandidate;
  v5 = [(TIKeyboardCandidate *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidate"];
    v7 = [v6 copy];
    candidate = v5->_candidate;
    v5->_candidate = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latinCandidate"];
    v10 = [v9 copy];
    latinCandidate = v5->_latinCandidate;
    v5->_latinCandidate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    v13 = [v12 copy];
    input = v5->_input;
    v5->_input = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawInput"];
    v16 = [v15 copy];
    rawInput = v5->_rawInput;
    v5->_rawInput = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mecabraCandidatePointerValue"];
    mecabraCandidatePointerValue = v5->_mecabraCandidatePointerValue;
    v5->_mecabraCandidatePointerValue = v18;

    v5->_extensionCandidate = [coderCopy decodeBoolForKey:@"extensionCandidate"];
    v5->_emojiCandidate = [coderCopy decodeBoolForKey:@"emojiCandidate"];
    v5->_isForShortcutConversion = [coderCopy decodeBoolForKey:@"isForShortcutConversion"];
    v5->_isAutocorrection = [coderCopy decodeBoolForKey:@"isAutocorrection"];
    v5->_OTAWordListCandidate = [coderCopy decodeBoolForKey:@"OTAWordListCandidate"];
    v5->_regionalCandidate = [coderCopy decodeBoolForKey:@"regionalCandidate"];
    v5->_bilingualCandidate = [coderCopy decodeBoolForKey:@"bilingualCandidate"];
    v5->_asIsCandidate = [coderCopy decodeBoolForKey:@"asIsCandidate"];
    v5->_partialCandidate = [coderCopy decodeBoolForKey:@"partialCandidate"];
    v5->_wubixingConvertedByPinyin = [coderCopy decodeBoolForKey:@"wubixingConvertedByPinyin"];
    v5->_prefixMatched = [coderCopy decodeBoolForKey:@"prefixMatched"];
    v5->_deleteCount = [coderCopy decodeIntegerForKey:@"deleteCount"];
    v5->_cursorMovement = [coderCopy decodeIntegerForKey:@"cursorMovement"];
    v5->_continuousPathConversion = [coderCopy decodeBoolForKey:@"continuousPathConversion"];
    v5->_shouldAccept = [coderCopy decodeBoolForKey:@"shouldAccept"];
    v5->_sourceMask = [coderCopy decodeIntegerForKey:@"sourceMask"];
    v5->_singlePhrase = [coderCopy decodeBoolForKey:@"singlePhrase"];
    v5->_shouldInsertSpaceAfterSelection = [coderCopy decodeBoolForKey:@"shouldInsertSpaceAfterSelection"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15.receiver = self;
  v15.super_class = TIMecabraCandidate;
  v5 = [(TIKeyboardCandidate *)&v15 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_candidate copyWithZone:zone];
    v7 = *(v5 + 23);
    *(v5 + 23) = v6;

    v8 = [(NSString *)self->_latinCandidate copyWithZone:zone];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSString *)self->_input copyWithZone:zone];
    v11 = *(v5 + 25);
    *(v5 + 25) = v10;

    v12 = [(NSString *)self->_rawInput copyWithZone:zone];
    v13 = *(v5 + 26);
    *(v5 + 26) = v12;

    objc_storeStrong(v5 + 27, self->_mecabraCandidatePointerValue);
    *(v5 + 153) = self->_extensionCandidate;
    *(v5 + 152) = self->_emojiCandidate;
    *(v5 + 154) = self->_isForShortcutConversion;
    *(v5 + 155) = self->_isAutocorrection;
    *(v5 + 156) = self->_OTAWordListCandidate;
    *(v5 + 157) = self->_regionalCandidate;
    *(v5 + 159) = self->_bilingualCandidate;
    *(v5 + 160) = self->_asIsCandidate;
    *(v5 + 162) = self->_partialCandidate;
    *(v5 + 163) = self->_wubixingConvertedByPinyin;
    *(v5 + 164) = self->_prefixMatched;
    *(v5 + 28) = self->_deleteCount;
    *(v5 + 29) = self->_cursorMovement;
    *(v5 + 161) = self->_continuousPathConversion;
    *(v5 + 165) = self->_shouldAccept;
    *(v5 + 167) = self->_shouldInsertSpaceAfterSelection;
    *(v5 + 42) = self->_sourceMask;
    *(v5 + 166) = self->_singlePhrase;
  }

  return v5;
}

- (unsigned)flags
{
  extensionCandidate = self->_extensionCandidate;
  if (self->_emojiCandidate)
  {
    extensionCandidate |= 2u;
  }

  if (self->_isForShortcutConversion)
  {
    extensionCandidate |= 4u;
  }

  if (self->_isAutocorrection)
  {
    extensionCandidate |= 8u;
  }

  if (self->_OTAWordListCandidate)
  {
    extensionCandidate |= 0x10u;
  }

  if (self->_regionalCandidate)
  {
    extensionCandidate |= 0x20u;
  }

  if (self->_responseKitCandidate)
  {
    extensionCandidate |= 0x40u;
  }

  if (self->_bilingualCandidate)
  {
    extensionCandidate |= 0x80u;
  }

  if (self->_asIsCandidate)
  {
    extensionCandidate |= 0x100u;
  }

  if (self->_partialCandidate)
  {
    extensionCandidate |= 0x200u;
  }

  if (self->_wubixingConvertedByPinyin)
  {
    v3 = extensionCandidate | 0x400;
  }

  else
  {
    v3 = extensionCandidate;
  }

  isPrefixMatched = [(TIMecabraCandidate *)self isPrefixMatched];
  v5 = v3 | 0x800;
  if (!isPrefixMatched)
  {
    return v3;
  }

  return v5;
}

- (id)label
{
  v6.receiver = self;
  v6.super_class = TIMecabraCandidate;
  label = [(TIKeyboardCandidate *)&v6 label];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v4 = [label stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v4;
}

- (TIMecabraCandidate)initWithCandidate:(id)candidate forInput:(id)input latinCandidate:(id)latinCandidate mecabraCandidatePointerValue:(id)value withFlags:(unsigned __int16)flags deleteCount:(unint64_t)count cursorMovement:(int64_t)movement
{
  candidateCopy = candidate;
  inputCopy = input;
  latinCandidateCopy = latinCandidate;
  valueCopy = value;
  v27.receiver = self;
  v27.super_class = TIMecabraCandidate;
  v19 = [(TIKeyboardCandidate *)&v27 init];
  if (v19)
  {
    v20 = [candidateCopy copy];
    candidate = v19->_candidate;
    v19->_candidate = v20;

    if (latinCandidateCopy)
    {
      v22 = [latinCandidateCopy copy];
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v19->_latinCandidate, v22);
    if (latinCandidateCopy)
    {
    }

    v23 = [inputCopy copy];
    input = v19->_input;
    v19->_input = v23;

    rawInput = v19->_rawInput;
    v19->_rawInput = 0;

    objc_storeStrong(&v19->_mecabraCandidatePointerValue, value);
    v19->_extensionCandidate = flags & 1;
    v19->_emojiCandidate = (flags & 2) != 0;
    v19->_isForShortcutConversion = (flags & 4) != 0;
    v19->_isAutocorrection = (flags & 8) != 0;
    v19->_OTAWordListCandidate = (flags & 0x10) != 0;
    v19->_regionalCandidate = (flags & 0x20) != 0;
    v19->_responseKitCandidate = (flags & 0x40) != 0;
    v19->_bilingualCandidate = (flags & 0x80) != 0;
    v19->_asIsCandidate = HIBYTE(flags) & 1;
    v19->_partialCandidate = (flags & 0x200) != 0;
    v19->_wubixingConvertedByPinyin = (flags & 0x400) != 0;
    v19->_prefixMatched = (flags & 0x800) != 0;
    v19->_singlePhrase = (flags & 0x1000) != 0;
    v19->_deleteCount = count;
    v19->_cursorMovement = movement;
    [(TIKeyboardCandidate *)v19 setTypingEngine:5];
  }

  return v19;
}

- (TIMecabraCandidate)initWithResponseKitString:(id)string responseKitCategory:(id)category mecabraCandidatePointerValue:(id)value
{
  categoryCopy = category;
  v9 = [(TIMecabraCandidate *)self initWithCandidate:string forInput:&stru_1EF56D550 mecabraCandidatePointerValue:value withFlags:64];
  if (v9)
  {
    v10 = [categoryCopy copy];
    responseKitCategory = v9->_responseKitCategory;
    v9->_responseKitCategory = v10;
  }

  return v9;
}

@end