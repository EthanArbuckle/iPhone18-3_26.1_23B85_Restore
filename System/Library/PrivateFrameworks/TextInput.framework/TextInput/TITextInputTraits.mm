@interface TITextInputTraits
- (BOOL)isEqual:(id)equal;
- (TITextInputTraits)init;
- (TITextInputTraits)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setDisablePrediction:(BOOL)prediction;
- (void)setEnablesReturnKeyAutomatically:(BOOL)automatically;
- (void)setSecureTextEntry:(BOOL)entry;
- (void)setSmartDashesEnabled:(BOOL)enabled;
- (void)setSmartInsertDeleteEnabled:(BOOL)enabled;
- (void)setSmartQuotesEnabled:(BOOL)enabled;
@end

@implementation TITextInputTraits

- (TITextInputTraits)init
{
  v3.receiver = self;
  v3.super_class = TITextInputTraits;
  result = [(TITextInputTraits *)&v3 init];
  if (result)
  {
    result->_version = 2;
  }

  return result;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; version = %d", self->_version];
  autocapitalizationType = [(TITextInputTraits *)self autocapitalizationType];
  if (autocapitalizationType <= 3)
  {
    [v3 appendString:off_1E6F4DC30[autocapitalizationType]];
  }

  autocorrectionType = [(TITextInputTraits *)self autocorrectionType];
  if (autocorrectionType <= 2)
  {
    [v3 appendString:off_1E6F4DC50[autocorrectionType]];
  }

  if ([(TITextInputTraits *)self disablePrediction])
  {
    [v3 appendFormat:@"; disablePrediction = YES"];
  }

  spellCheckingType = [(TITextInputTraits *)self spellCheckingType];
  if (spellCheckingType <= 2)
  {
    [v3 appendString:off_1E6F4DC68[spellCheckingType]];
  }

  [v3 appendFormat:@"; keyboardType = %d", -[TITextInputTraits keyboardType](self, "keyboardType")];
  keyboardAppearance = [(TITextInputTraits *)self keyboardAppearance];
  if (keyboardAppearance <= 2)
  {
    [v3 appendString:off_1E6F4DC80[keyboardAppearance]];
  }

  [v3 appendFormat:@"; returnKeyType = %d", -[TITextInputTraits returnKeyType](self, "returnKeyType")];
  if ([(TITextInputTraits *)self enablesReturnKeyAutomatically])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  [v3 appendFormat:@"; enablesReturnKeyAutomatically = %s", v8];
  if ([(TITextInputTraits *)self secureTextEntry])
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [v3 appendFormat:@"; secureTextEntry = %s", v9];
  [v3 appendFormat:@"; smartInsertDeleteType = %d", -[TITextInputTraits smartInsertDeleteType](self, "smartInsertDeleteType")];
  [v3 appendFormat:@"; smartQuotesType = %d", -[TITextInputTraits smartQuotesType](self, "smartQuotesType")];
  [v3 appendFormat:@"; smartDashesType = %d", -[TITextInputTraits smartDashesType](self, "smartDashesType")];
  recentInputIdentifier = [(TITextInputTraits *)self recentInputIdentifier];

  if (recentInputIdentifier)
  {
    recentInputIdentifier2 = [(TITextInputTraits *)self recentInputIdentifier];
    [v3 appendFormat:@"; recentInputIdentifier = %@", recentInputIdentifier2];
  }

  textContentType = [(TITextInputTraits *)self textContentType];

  if (textContentType)
  {
    textContentType2 = [(TITextInputTraits *)self textContentType];
    [v3 appendFormat:@"; textContentType = %@", textContentType2];
  }

  if ([(TITextInputTraits *)self textScriptType])
  {
    v14 = [(TITextInputTraits *)self textScriptType]- 1;
    if (v14 <= 3)
    {
      [v3 appendString:off_1E6F4DC98[v14]];
    }
  }

  inlineCompletionType = [(TITextInputTraits *)self inlineCompletionType];
  if (inlineCompletionType <= 2)
  {
    [v3 appendString:off_1E6F4DCB8[inlineCompletionType]];
  }

  mathExpressionCompletionType = [(TITextInputTraits *)self mathExpressionCompletionType];
  if (mathExpressionCompletionType <= 2)
  {
    [v3 appendString:off_1E6F4DCD0[mathExpressionCompletionType]];
  }

  allowsTextAnimationsType = [(TITextInputTraits *)self allowsTextAnimationsType];
  if (allowsTextAnimationsType <= 2)
  {
    [v3 appendString:off_1E6F4DCE8[allowsTextAnimationsType]];
  }

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    version = [(TITextInputTraits *)self version];
    if (version == [v5 version] && (v7 = -[TITextInputTraits autocapitalizationType](self, "autocapitalizationType"), v7 == objc_msgSend(v5, "autocapitalizationType")) && (v8 = -[TITextInputTraits autocorrectionType](self, "autocorrectionType"), v8 == objc_msgSend(v5, "autocorrectionType")) && (v9 = -[TITextInputTraits spellCheckingType](self, "spellCheckingType"), v9 == objc_msgSend(v5, "spellCheckingType")) && (v10 = -[TITextInputTraits keyboardType](self, "keyboardType"), v10 == objc_msgSend(v5, "keyboardType")) && (v11 = -[TITextInputTraits keyboardAppearance](self, "keyboardAppearance"), v11 == objc_msgSend(v5, "keyboardAppearance")) && (v12 = -[TITextInputTraits returnKeyType](self, "returnKeyType"), v12 == objc_msgSend(v5, "returnKeyType")) && (v13 = -[TITextInputTraits enablesReturnKeyAutomatically](self, "enablesReturnKeyAutomatically"), v13 == objc_msgSend(v5, "enablesReturnKeyAutomatically")) && (v14 = -[TITextInputTraits secureTextEntry](self, "secureTextEntry"), v14 == objc_msgSend(v5, "secureTextEntry")) && (v15 = MEMORY[0x1E696AEC0], -[TITextInputTraits recentInputIdentifier](self, "recentInputIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "recentInputIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), LODWORD(v15) = objc_msgSend(v15, "_string:matchesString:", v16, v17), v17, v16, v15) && (v18 = MEMORY[0x1E696AEC0], -[TITextInputTraits textContentType](self, "textContentType"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "textContentType"), v20 = objc_claimAutoreleasedReturnValue(), LODWORD(v18) = objc_msgSend(v18, "_string:matchesString:", v19, v20), v20, v19, v18) && (v21 = -[TITextInputTraits textScriptType](self, "textScriptType"), v21 == objc_msgSend(v5, "textScriptType")) && (v22 = -[TITextInputTraits smartInsertDeleteType](self, "smartInsertDeleteType"), v22 == objc_msgSend(v5, "smartInsertDeleteType")) && (v23 = -[TITextInputTraits smartQuotesType](self, "smartQuotesType"), v23 == objc_msgSend(v5, "smartQuotesType")) && (v24 = -[TITextInputTraits smartDashesType](self, "smartDashesType"), v24 == objc_msgSend(v5, "smartDashesType")) && (v25 = -[TITextInputTraits disablePrediction](self, "disablePrediction"), v25 == objc_msgSend(v5, "disablePrediction")) && (v26 = -[TITextInputTraits inlineCompletionType](self, "inlineCompletionType"), v26 == objc_msgSend(v5, "inlineCompletionType")) && (v27 = -[TITextInputTraits mathExpressionCompletionType](self, "mathExpressionCompletionType"), v27 == objc_msgSend(v5, "mathExpressionCompletionType")))
    {
      allowsTextAnimationsType = [(TITextInputTraits *)self allowsTextAnimationsType];
      v29 = allowsTextAnimationsType == [v5 allowsTextAnimationsType];
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (objc_opt_respondsToSelector())
  {
    version = [coderCopy tiVersion];
    self->_version = version;
    if (!version)
    {
      goto LABEL_19;
    }
  }

  else
  {
    version = self->_version;
    if (!version)
    {
LABEL_19:
      integerValue = self->_mask.integerValue;
      goto LABEL_20;
    }
  }

  [coderCopy encodeInteger:version forKey:@"version"];
  if (self->_version != 1)
  {
    goto LABEL_19;
  }

  v5 = self->_mask.integerValue;
  v6 = v5 & 0x3F;
  v7 = (v5 >> 6) & 0x1F;
  v8 = v7 - 16;
  v9 = v7 == 15;
  v10 = v5 & 0x3FF;
  if (v9)
  {
    v10 = v6 | 0x80;
  }

  if (v8 >= 2)
  {
    v6 = v10;
  }

  v11 = (v5 >> 11) & 7;
  v12 = v6 | 0x400;
  if (v11 == 3)
  {
    v13 = v6 | 0x400;
  }

  else
  {
    v13 = v6 & 0xFFFFF3FF | (((v5 >> 11) & 3) << 10);
  }

  if (v11 != 4)
  {
    v6 = v13;
  }

  if (v11 == 5)
  {
    v6 = v12;
  }

  integerValue = v6 | (((v5 >> 3) & 0x3F0000 | v5 & 0xC2000000 | (((v5 & 0xC0000000) != 0x40000000) << 24) & 0xC3FFFFFF | (v5 >> 2) & 0xF000 | (((v5 >> 26) & 3) << 26) & 0xCFFFFFFF | (((v5 >> 28) & 3) << 28) | ((((v5 >> 26) & 3) != 1) << 22)) + ((((v5 >> 28) & 3) != 1) << 23));
LABEL_20:
  [coderCopy encodeInteger:integerValue forKey:@"flags"];
  [coderCopy encodeInteger:self->_auxMask.integerValue forKey:@"auxFlags"];
  recentInputIdentifier = self->_recentInputIdentifier;
  if (recentInputIdentifier)
  {
    [coderCopy encodeObject:recentInputIdentifier forKey:@"recentInputIdentifier"];
  }

  textContentType = self->_textContentType;
  if (textContentType)
  {
    [coderCopy encodeObject:textContentType forKey:@"textContentType"];
  }

  allowsTextAnimationsType = self->_allowsTextAnimationsType;
  v18 = coderCopy;
  if (allowsTextAnimationsType)
  {
    [coderCopy encodeInteger:allowsTextAnimationsType forKey:@"allowsTextAnimationsType"];
    v18 = coderCopy;
  }
}

- (TITextInputTraits)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = TITextInputTraits;
  v5 = [(TITextInputTraits *)&v19 init];
  if (!v5)
  {
    goto LABEL_19;
  }

  if ([coderCopy containsValueForKey:@"version"])
  {
    tiVersion = [coderCopy decodeIntegerForKey:@"version"];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5->_version = 1;
      goto LABEL_9;
    }

    tiVersion = [coderCopy tiVersion];
  }

  v5->_version = tiVersion;
  if (tiVersion == 1)
  {
LABEL_9:
    v8 = [coderCopy decodeIntegerForKey:@"flags"];
    v9 = v8 & 0xC000000;
    if ((v8 & 0x400000) != 0)
    {
      v9 = 0x8000000;
    }

    v10 = v8 & 0x30000000;
    if ((v8 & 0x800000) != 0)
    {
      v10 = 0x20000000;
    }

    v11 = v8 & 0xC0000000;
    if ((v8 & 0x1000000) != 0)
    {
      v11 = 0x80000000;
    }

    v7 = v8 & 0x20003FF | (((v8 >> 10) & 3) << 11) & 0xFFFFFFFFFE043FFFLL | ((v8 >> 12) << 14) & 0xFFFFFFFFFE07FFFFLL | (((v8 >> 16) & 0x3F) << 19) | v9 | v10 | v11;
    goto LABEL_16;
  }

  v7 = [coderCopy decodeIntegerForKey:@"flags"];
LABEL_16:
  v5->_mask.integerValue = v7;
  if ([coderCopy containsValueForKey:@"auxFlags"])
  {
    v5->_auxMask.integerValue = [coderCopy decodeIntegerForKey:@"auxFlags"];
  }

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recentInputIdentifier"];
  v13 = [v12 copy];
  recentInputIdentifier = v5->_recentInputIdentifier;
  v5->_recentInputIdentifier = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textContentType"];
  v16 = [v15 copy];
  textContentType = v5->_textContentType;
  v5->_textContentType = v16;

  v5->_allowsTextAnimationsType = [coderCopy decodeIntegerForKey:@"allowsTextAnimationsType"];
LABEL_19:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TITextInputTraits);
  v5 = v4;
  if (v4)
  {
    v4->_version = self->_version;
    v4->_mask.integerValue = self->_mask.integerValue;
    v4->_auxMask.integerValue = self->_auxMask.integerValue;
    v6 = [(NSString *)self->_recentInputIdentifier copy];
    recentInputIdentifier = v5->_recentInputIdentifier;
    v5->_recentInputIdentifier = v6;

    v8 = [(NSString *)self->_textContentType copy];
    textContentType = v5->_textContentType;
    v5->_textContentType = v8;

    v5->_allowsTextAnimationsType = self->_allowsTextAnimationsType;
  }

  return v5;
}

- (void)setDisablePrediction:(BOOL)prediction
{
  if (prediction)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFDFFFFFF | v3);
}

- (void)setSmartDashesEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0x40000000;
  }

  self->_mask.fields = (v3 & 0xC0000000 | self->_mask.integerValue & 0x3FFFFFFF);
}

- (void)setSmartQuotesEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0x10000000;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xCFFFFFFF | v3);
}

- (void)setSmartInsertDeleteEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0x4000000;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xF3FFFFFF | v3);
}

- (void)setSecureTextEntry:(BOOL)entry
{
  if (entry)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFEFFFFFF | v3);
}

- (void)setEnablesReturnKeyAutomatically:(BOOL)automatically
{
  if (automatically)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_mask.fields = (self->_mask.integerValue & 0xFF7FFFFF | v3);
}

@end