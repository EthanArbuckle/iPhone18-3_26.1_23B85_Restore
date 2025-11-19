@interface TUCallModel
- (BOOL)isEqual:(id)a3;
- (TUCallModel)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallModel

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" hold=%d", -[TUCallModel supportsHolding](self, "supportsHolding")];
  [v3 appendFormat:@" grp=%d", -[TUCallModel supportsGrouping](self, "supportsGrouping")];
  [v3 appendFormat:@" ungrp=%d", -[TUCallModel supportsUngrouping](self, "supportsUngrouping")];
  [v3 appendFormat:@" DTMF=%d", -[TUCallModel supportsDTMF](self, "supportsDTMF")];
  [v3 appendFormat:@" uMPS=%d", -[TUCallModel supportsUnambiguousMultiPartyState](self, "supportsUnambiguousMultiPartyState")];
  [v3 appendFormat:@" aC=%d", -[TUCallModel supportsAddCall](self, "supportsAddCall")];
  [v3 appendFormat:@" sTV=%d", -[TUCallModel supportsSendingToVoicemail](self, "supportsSendingToVoicemail")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TUCallModel *)self supportsHolding];
    if (v6 == [v5 supportsHolding] && (v7 = -[TUCallModel supportsGrouping](self, "supportsGrouping"), v7 == objc_msgSend(v5, "supportsGrouping")) && (v8 = -[TUCallModel supportsUngrouping](self, "supportsUngrouping"), v8 == objc_msgSend(v5, "supportsUngrouping")) && (v9 = -[TUCallModel supportsDTMF](self, "supportsDTMF"), v9 == objc_msgSend(v5, "supportsDTMF")) && (v10 = -[TUCallModel supportsUnambiguousMultiPartyState](self, "supportsUnambiguousMultiPartyState"), v10 == objc_msgSend(v5, "supportsUnambiguousMultiPartyState")) && (v11 = -[TUCallModel supportsAddCall](self, "supportsAddCall"), v11 == objc_msgSend(v5, "supportsAddCall")))
    {
      v14 = [(TUCallModel *)self supportsSendingToVoicemail];
      v12 = v14 ^ [v5 supportsSendingToVoicemail] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  if ([(TUCallModel *)self supportsHolding])
  {
    v3 = 1231;
  }

  else
  {
    v3 = 1237;
  }

  if ([(TUCallModel *)self supportsGrouping])
  {
    v4 = 1231;
  }

  else
  {
    v4 = 1237;
  }

  v5 = v4 ^ v3;
  if ([(TUCallModel *)self supportsUngrouping])
  {
    v6 = 1231;
  }

  else
  {
    v6 = 1237;
  }

  if ([(TUCallModel *)self supportsDTMF])
  {
    v7 = 1231;
  }

  else
  {
    v7 = 1237;
  }

  v8 = v5 ^ v6 ^ v7;
  if ([(TUCallModel *)self supportsUnambiguousMultiPartyState])
  {
    v9 = 1231;
  }

  else
  {
    v9 = 1237;
  }

  if ([(TUCallModel *)self supportsAddCall])
  {
    v10 = 1231;
  }

  else
  {
    v10 = 1237;
  }

  v11 = v9 ^ v10;
  if ([(TUCallModel *)self supportsSendingToVoicemail])
  {
    v12 = 1231;
  }

  else
  {
    v12 = 1237;
  }

  return v8 ^ v11 ^ v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSupportsHolding:{-[TUCallModel supportsHolding](self, "supportsHolding")}];
  [v4 setSupportsGrouping:{-[TUCallModel supportsGrouping](self, "supportsGrouping")}];
  [v4 setSupportsUngrouping:{-[TUCallModel supportsUngrouping](self, "supportsUngrouping")}];
  [v4 setSupportsDTMF:{-[TUCallModel supportsDTMF](self, "supportsDTMF")}];
  [v4 setSupportsUnambiguousMultiPartyState:{-[TUCallModel supportsUnambiguousMultiPartyState](self, "supportsUnambiguousMultiPartyState")}];
  [v4 setSupportsAddCall:{-[TUCallModel supportsAddCall](self, "supportsAddCall")}];
  [v4 setSupportsSendingToVoicemail:{-[TUCallModel supportsSendingToVoicemail](self, "supportsSendingToVoicemail")}];
  return v4;
}

- (TUCallModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCallModel *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_supportsHolding);
    v5->_supportsHolding = [v4 decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_supportsGrouping);
    v5->_supportsGrouping = [v4 decodeBoolForKey:v7];

    v8 = NSStringFromSelector(sel_supportsUngrouping);
    v5->_supportsUngrouping = [v4 decodeBoolForKey:v8];

    v9 = NSStringFromSelector(sel_supportsDTMF);
    v5->_supportsDTMF = [v4 decodeBoolForKey:v9];

    v10 = NSStringFromSelector(sel_supportsUnambiguousMultiPartyState);
    v5->_supportsUnambiguousMultiPartyState = [v4 decodeBoolForKey:v10];

    v11 = NSStringFromSelector(sel_supportsAddCall);
    v5->_supportsAddCall = [v4 decodeBoolForKey:v11];

    v12 = NSStringFromSelector(sel_supportsSendingToVoicemail);
    v5->_supportsSendingToVoicemail = [v4 decodeBoolForKey:v12];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCallModel *)self supportsHolding];
  v6 = NSStringFromSelector(sel_supportsHolding);
  [v4 encodeBool:v5 forKey:v6];

  v7 = [(TUCallModel *)self supportsGrouping];
  v8 = NSStringFromSelector(sel_supportsGrouping);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(TUCallModel *)self supportsUngrouping];
  v10 = NSStringFromSelector(sel_supportsUngrouping);
  [v4 encodeBool:v9 forKey:v10];

  v11 = [(TUCallModel *)self supportsDTMF];
  v12 = NSStringFromSelector(sel_supportsDTMF);
  [v4 encodeBool:v11 forKey:v12];

  v13 = [(TUCallModel *)self supportsUnambiguousMultiPartyState];
  v14 = NSStringFromSelector(sel_supportsUnambiguousMultiPartyState);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(TUCallModel *)self supportsAddCall];
  v16 = NSStringFromSelector(sel_supportsAddCall);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(TUCallModel *)self supportsSendingToVoicemail];
  v18 = NSStringFromSelector(sel_supportsSendingToVoicemail);
  [v4 encodeBool:v17 forKey:v18];
}

@end