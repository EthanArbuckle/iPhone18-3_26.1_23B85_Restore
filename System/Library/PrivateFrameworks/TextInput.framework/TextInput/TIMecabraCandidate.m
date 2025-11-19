@interface TIMecabraCandidate
- (BOOL)isEqual:(id)a3;
- (TIMecabraCandidate)initWithCandidate:(id)a3 forInput:(id)a4 latinCandidate:(id)a5 mecabraCandidatePointerValue:(id)a6 withFlags:(unsigned __int16)a7 deleteCount:(unint64_t)a8 cursorMovement:(int64_t)a9;
- (TIMecabraCandidate)initWithCandidateResultSetCoder:(id)a3;
- (TIMecabraCandidate)initWithCoder:(id)a3;
- (TIMecabraCandidate)initWithResponseKitString:(id)a3 responseKitCategory:(id)a4 mecabraCandidatePointerValue:(id)a5;
- (id)candidateByReplacingWithCandidate:(id)a3;
- (id)candidateByReplacingWithCandidate:(id)a3 input:(id)a4;
- (id)candidateByReplacingWithCandidate:(id)a3 input:(id)a4 rawInput:(id)a5;
- (id)candidateByReplacingWithSourceMask:(unsigned int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)label;
- (unsigned)flags;
- (void)encodeWithCandidateResultSetCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIMecabraCandidate

- (void)encodeWithCandidateResultSetCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIMecabraCandidate;
  v4 = a3;
  [(TIKeyboardCandidate *)&v5 encodeWithCandidateResultSetCoder:v4];
  [v4 encodeString:{self->_candidate, v5.receiver, v5.super_class}];
  [v4 encodeString:self->_latinCandidate];
  [v4 encodeString:self->_input];
  [v4 encodeString:self->_rawInput];
  [v4 encodeUInt64:{-[NSNumber unsignedLongLongValue](self->_mecabraCandidatePointerValue, "unsignedLongLongValue")}];
  [v4 encodeShort:{-[TIMecabraCandidate flags](self, "flags")}];
  [v4 encodeUInt32:LODWORD(self->_deleteCount)];
  [v4 encodeUInt32:LODWORD(self->_cursorMovement)];
  [v4 encodeBool:self->_shouldAccept];
  [v4 encodeUInt32:{-[TIMecabraCandidate sourceMask](self, "sourceMask")}];
  [v4 encodeBool:self->_shouldInsertSpaceAfterSelection];
}

- (TIMecabraCandidate)initWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = TIMecabraCandidate;
  v5 = [(TIKeyboardCandidate *)&v24 initWithCandidateResultSetCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeString];
    v7 = [v6 copy];
    candidate = v5->_candidate;
    v5->_candidate = v7;

    v9 = [v4 decodeString];
    v10 = [v9 copy];
    latinCandidate = v5->_latinCandidate;
    v5->_latinCandidate = v10;

    v12 = [v4 decodeString];
    v13 = [v12 copy];
    input = v5->_input;
    v5->_input = v13;

    v15 = [v4 decodeString];
    v16 = [v15 copy];
    rawInput = v5->_rawInput;
    v5->_rawInput = v16;

    if (![(NSString *)v5->_rawInput length])
    {
      v18 = v5->_rawInput;
      v5->_rawInput = 0;
    }

    v19 = [v4 decodeUInt64];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19];
    mecabraCandidatePointerValue = v5->_mecabraCandidatePointerValue;
    v5->_mecabraCandidatePointerValue = v20;

    v22 = [v4 decodeShort];
    v5->_extensionCandidate = v22 & 1;
    v5->_emojiCandidate = (v22 & 2) != 0;
    v5->_isForShortcutConversion = (v22 & 4) != 0;
    v5->_isAutocorrection = (v22 & 8) != 0;
    v5->_OTAWordListCandidate = (v22 & 0x10) != 0;
    v5->_regionalCandidate = (v22 & 0x20) != 0;
    v5->_responseKitCandidate = (v22 & 0x40) != 0;
    v5->_bilingualCandidate = (v22 & 0x80) != 0;
    v5->_asIsCandidate = HIBYTE(v22) & 1;
    v5->_partialCandidate = (v22 & 0x200) != 0;
    v5->_wubixingConvertedByPinyin = (v22 & 0x400) != 0;
    v5->_prefixMatched = (v22 & 0x800) != 0;
    v5->_deleteCount = [v4 decodeUInt32];
    v5->_cursorMovement = [v4 decodeUInt32];
    v5->_shouldAccept = [v4 decodeBool];
    v5->_sourceMask = [v4 decodeUInt32];
    v5->_shouldInsertSpaceAfterSelection = [v4 decodeBool];
  }

  return v5;
}

- (id)candidateByReplacingWithSourceMask:(unsigned int)a3
{
  v4 = [(TIMecabraCandidate *)self copy];
  v4[42] = a3;

  return v4;
}

- (id)candidateByReplacingWithCandidate:(id)a3 input:(id)a4 rawInput:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TIMecabraCandidate *)self copy];
  v12 = v11[23];
  v11[23] = v8;
  v13 = v8;

  v14 = v11[25];
  v11[25] = v9;
  v15 = v9;

  v16 = v11[26];
  v11[26] = v10;

  return v11;
}

- (id)candidateByReplacingWithCandidate:(id)a3 input:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TIMecabraCandidate *)self rawInput];
  v9 = [(TIMecabraCandidate *)self candidateByReplacingWithCandidate:v7 input:v6 rawInput:v8];

  return v9;
}

- (id)candidateByReplacingWithCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TIMecabraCandidate *)self copy];
  v6 = [v4 copy];

  v7 = v5[23];
  v5[23] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TIMecabraCandidate *)v5 mecabraCandidatePointerValue];
      v7 = [(TIMecabraCandidate *)self mecabraCandidatePointerValue];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(TIMecabraCandidate *)v5 mecabraCandidatePointerValue];
        v10 = [(TIMecabraCandidate *)self mecabraCandidatePointerValue];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_12;
        }
      }

      v13 = [(TIMecabraCandidate *)v5 isContinuousPathConversion];
      if (v13 == [(TIMecabraCandidate *)self isContinuousPathConversion])
      {
        v14 = [(TIMecabraCandidate *)v5 shouldAccept];
        if (v14 == [(TIMecabraCandidate *)self shouldAccept])
        {
          v15 = [(TIMecabraCandidate *)v5 shouldInsertSpaceAfterSelection];
          if (v15 == [(TIMecabraCandidate *)self shouldInsertSpaceAfterSelection])
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TIMecabraCandidate;
  [(TIKeyboardCandidate *)&v13 encodeWithCoder:v4];
  candidate = self->_candidate;
  if (candidate)
  {
    [v4 encodeObject:candidate forKey:@"candidate"];
  }

  latinCandidate = self->_latinCandidate;
  if (latinCandidate)
  {
    [v4 encodeObject:latinCandidate forKey:@"latinCandidate"];
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

  mecabraCandidatePointerValue = self->_mecabraCandidatePointerValue;
  if (mecabraCandidatePointerValue)
  {
    [v4 encodeObject:mecabraCandidatePointerValue forKey:@"mecabraCandidatePointerValue"];
  }

  if (self->_extensionCandidate)
  {
    [v4 encodeBool:1 forKey:@"extensionCandidate"];
  }

  if (self->_emojiCandidate)
  {
    [v4 encodeBool:1 forKey:@"emojiCandidate"];
  }

  if (self->_isForShortcutConversion)
  {
    [v4 encodeBool:1 forKey:@"isForShortcutConversion"];
  }

  if (self->_isAutocorrection)
  {
    [v4 encodeBool:1 forKey:@"isAutocorrection"];
  }

  if (self->_OTAWordListCandidate)
  {
    [v4 encodeBool:1 forKey:@"OTAWordListCandidate"];
  }

  if (self->_regionalCandidate)
  {
    [v4 encodeBool:1 forKey:@"regionalCandidate"];
  }

  if (self->_bilingualCandidate)
  {
    [v4 encodeBool:1 forKey:@"bilingualCandidate"];
  }

  if (self->_asIsCandidate)
  {
    [v4 encodeBool:1 forKey:@"asIsCandidate"];
  }

  if (self->_partialCandidate)
  {
    [v4 encodeBool:1 forKey:@"partialCandidate"];
  }

  if (self->_wubixingConvertedByPinyin)
  {
    [v4 encodeBool:1 forKey:@"wubixingConvertedByPinyin"];
  }

  if (self->_prefixMatched)
  {
    [v4 encodeBool:1 forKey:@"prefixMatched"];
  }

  deleteCount = self->_deleteCount;
  if (deleteCount)
  {
    [v4 encodeInteger:deleteCount forKey:@"deleteCount"];
  }

  cursorMovement = self->_cursorMovement;
  if (cursorMovement)
  {
    [v4 encodeInteger:cursorMovement forKey:@"cursorMovement"];
  }

  if (self->_continuousPathConversion)
  {
    [v4 encodeBool:1 forKey:@"continuousPathConversion"];
  }

  if (self->_shouldAccept)
  {
    [v4 encodeBool:1 forKey:@"shouldAccept"];
  }

  sourceMask = self->_sourceMask;
  if (sourceMask)
  {
    [v4 encodeInteger:sourceMask forKey:@"sourceMask"];
  }

  if (self->_singlePhrase)
  {
    [v4 encodeBool:1 forKey:@"singlePhrase"];
  }

  if (self->_shouldInsertSpaceAfterSelection)
  {
    [v4 encodeBool:1 forKey:@"shouldInsertSpaceAfterSelection"];
  }
}

- (TIMecabraCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TIMecabraCandidate;
  v5 = [(TIKeyboardCandidate *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidate"];
    v7 = [v6 copy];
    candidate = v5->_candidate;
    v5->_candidate = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latinCandidate"];
    v10 = [v9 copy];
    latinCandidate = v5->_latinCandidate;
    v5->_latinCandidate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    v13 = [v12 copy];
    input = v5->_input;
    v5->_input = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawInput"];
    v16 = [v15 copy];
    rawInput = v5->_rawInput;
    v5->_rawInput = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mecabraCandidatePointerValue"];
    mecabraCandidatePointerValue = v5->_mecabraCandidatePointerValue;
    v5->_mecabraCandidatePointerValue = v18;

    v5->_extensionCandidate = [v4 decodeBoolForKey:@"extensionCandidate"];
    v5->_emojiCandidate = [v4 decodeBoolForKey:@"emojiCandidate"];
    v5->_isForShortcutConversion = [v4 decodeBoolForKey:@"isForShortcutConversion"];
    v5->_isAutocorrection = [v4 decodeBoolForKey:@"isAutocorrection"];
    v5->_OTAWordListCandidate = [v4 decodeBoolForKey:@"OTAWordListCandidate"];
    v5->_regionalCandidate = [v4 decodeBoolForKey:@"regionalCandidate"];
    v5->_bilingualCandidate = [v4 decodeBoolForKey:@"bilingualCandidate"];
    v5->_asIsCandidate = [v4 decodeBoolForKey:@"asIsCandidate"];
    v5->_partialCandidate = [v4 decodeBoolForKey:@"partialCandidate"];
    v5->_wubixingConvertedByPinyin = [v4 decodeBoolForKey:@"wubixingConvertedByPinyin"];
    v5->_prefixMatched = [v4 decodeBoolForKey:@"prefixMatched"];
    v5->_deleteCount = [v4 decodeIntegerForKey:@"deleteCount"];
    v5->_cursorMovement = [v4 decodeIntegerForKey:@"cursorMovement"];
    v5->_continuousPathConversion = [v4 decodeBoolForKey:@"continuousPathConversion"];
    v5->_shouldAccept = [v4 decodeBoolForKey:@"shouldAccept"];
    v5->_sourceMask = [v4 decodeIntegerForKey:@"sourceMask"];
    v5->_singlePhrase = [v4 decodeBoolForKey:@"singlePhrase"];
    v5->_shouldInsertSpaceAfterSelection = [v4 decodeBoolForKey:@"shouldInsertSpaceAfterSelection"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = TIMecabraCandidate;
  v5 = [(TIKeyboardCandidate *)&v15 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_candidate copyWithZone:a3];
    v7 = *(v5 + 23);
    *(v5 + 23) = v6;

    v8 = [(NSString *)self->_latinCandidate copyWithZone:a3];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSString *)self->_input copyWithZone:a3];
    v11 = *(v5 + 25);
    *(v5 + 25) = v10;

    v12 = [(NSString *)self->_rawInput copyWithZone:a3];
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

  v4 = [(TIMecabraCandidate *)self isPrefixMatched];
  v5 = v3 | 0x800;
  if (!v4)
  {
    return v3;
  }

  return v5;
}

- (id)label
{
  v6.receiver = self;
  v6.super_class = TIMecabraCandidate;
  v2 = [(TIKeyboardCandidate *)&v6 label];
  v3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

- (TIMecabraCandidate)initWithCandidate:(id)a3 forInput:(id)a4 latinCandidate:(id)a5 mecabraCandidatePointerValue:(id)a6 withFlags:(unsigned __int16)a7 deleteCount:(unint64_t)a8 cursorMovement:(int64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v27.receiver = self;
  v27.super_class = TIMecabraCandidate;
  v19 = [(TIKeyboardCandidate *)&v27 init];
  if (v19)
  {
    v20 = [v15 copy];
    candidate = v19->_candidate;
    v19->_candidate = v20;

    if (v17)
    {
      v22 = [v17 copy];
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v19->_latinCandidate, v22);
    if (v17)
    {
    }

    v23 = [v16 copy];
    input = v19->_input;
    v19->_input = v23;

    rawInput = v19->_rawInput;
    v19->_rawInput = 0;

    objc_storeStrong(&v19->_mecabraCandidatePointerValue, a6);
    v19->_extensionCandidate = a7 & 1;
    v19->_emojiCandidate = (a7 & 2) != 0;
    v19->_isForShortcutConversion = (a7 & 4) != 0;
    v19->_isAutocorrection = (a7 & 8) != 0;
    v19->_OTAWordListCandidate = (a7 & 0x10) != 0;
    v19->_regionalCandidate = (a7 & 0x20) != 0;
    v19->_responseKitCandidate = (a7 & 0x40) != 0;
    v19->_bilingualCandidate = (a7 & 0x80) != 0;
    v19->_asIsCandidate = HIBYTE(a7) & 1;
    v19->_partialCandidate = (a7 & 0x200) != 0;
    v19->_wubixingConvertedByPinyin = (a7 & 0x400) != 0;
    v19->_prefixMatched = (a7 & 0x800) != 0;
    v19->_singlePhrase = (a7 & 0x1000) != 0;
    v19->_deleteCount = a8;
    v19->_cursorMovement = a9;
    [(TIKeyboardCandidate *)v19 setTypingEngine:5];
  }

  return v19;
}

- (TIMecabraCandidate)initWithResponseKitString:(id)a3 responseKitCategory:(id)a4 mecabraCandidatePointerValue:(id)a5
{
  v8 = a4;
  v9 = [(TIMecabraCandidate *)self initWithCandidate:a3 forInput:&stru_1EF56D550 mecabraCandidatePointerValue:a5 withFlags:64];
  if (v9)
  {
    v10 = [v8 copy];
    responseKitCategory = v9->_responseKitCategory;
    v9->_responseKitCategory = v10;
  }

  return v9;
}

@end