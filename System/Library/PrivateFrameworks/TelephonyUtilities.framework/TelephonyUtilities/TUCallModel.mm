@interface TUCallModel
- (BOOL)isEqual:(id)equal;
- (TUCallModel)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    supportsHolding = [(TUCallModel *)self supportsHolding];
    if (supportsHolding == [v5 supportsHolding] && (v7 = -[TUCallModel supportsGrouping](self, "supportsGrouping"), v7 == objc_msgSend(v5, "supportsGrouping")) && (v8 = -[TUCallModel supportsUngrouping](self, "supportsUngrouping"), v8 == objc_msgSend(v5, "supportsUngrouping")) && (v9 = -[TUCallModel supportsDTMF](self, "supportsDTMF"), v9 == objc_msgSend(v5, "supportsDTMF")) && (v10 = -[TUCallModel supportsUnambiguousMultiPartyState](self, "supportsUnambiguousMultiPartyState"), v10 == objc_msgSend(v5, "supportsUnambiguousMultiPartyState")) && (v11 = -[TUCallModel supportsAddCall](self, "supportsAddCall"), v11 == objc_msgSend(v5, "supportsAddCall")))
    {
      supportsSendingToVoicemail = [(TUCallModel *)self supportsSendingToVoicemail];
      v12 = supportsSendingToVoicemail ^ [v5 supportsSendingToVoicemail] ^ 1;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSupportsHolding:{-[TUCallModel supportsHolding](self, "supportsHolding")}];
  [v4 setSupportsGrouping:{-[TUCallModel supportsGrouping](self, "supportsGrouping")}];
  [v4 setSupportsUngrouping:{-[TUCallModel supportsUngrouping](self, "supportsUngrouping")}];
  [v4 setSupportsDTMF:{-[TUCallModel supportsDTMF](self, "supportsDTMF")}];
  [v4 setSupportsUnambiguousMultiPartyState:{-[TUCallModel supportsUnambiguousMultiPartyState](self, "supportsUnambiguousMultiPartyState")}];
  [v4 setSupportsAddCall:{-[TUCallModel supportsAddCall](self, "supportsAddCall")}];
  [v4 setSupportsSendingToVoicemail:{-[TUCallModel supportsSendingToVoicemail](self, "supportsSendingToVoicemail")}];
  return v4;
}

- (TUCallModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUCallModel *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_supportsHolding);
    v5->_supportsHolding = [coderCopy decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_supportsGrouping);
    v5->_supportsGrouping = [coderCopy decodeBoolForKey:v7];

    v8 = NSStringFromSelector(sel_supportsUngrouping);
    v5->_supportsUngrouping = [coderCopy decodeBoolForKey:v8];

    v9 = NSStringFromSelector(sel_supportsDTMF);
    v5->_supportsDTMF = [coderCopy decodeBoolForKey:v9];

    v10 = NSStringFromSelector(sel_supportsUnambiguousMultiPartyState);
    v5->_supportsUnambiguousMultiPartyState = [coderCopy decodeBoolForKey:v10];

    v11 = NSStringFromSelector(sel_supportsAddCall);
    v5->_supportsAddCall = [coderCopy decodeBoolForKey:v11];

    v12 = NSStringFromSelector(sel_supportsSendingToVoicemail);
    v5->_supportsSendingToVoicemail = [coderCopy decodeBoolForKey:v12];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  supportsHolding = [(TUCallModel *)self supportsHolding];
  v6 = NSStringFromSelector(sel_supportsHolding);
  [coderCopy encodeBool:supportsHolding forKey:v6];

  supportsGrouping = [(TUCallModel *)self supportsGrouping];
  v8 = NSStringFromSelector(sel_supportsGrouping);
  [coderCopy encodeBool:supportsGrouping forKey:v8];

  supportsUngrouping = [(TUCallModel *)self supportsUngrouping];
  v10 = NSStringFromSelector(sel_supportsUngrouping);
  [coderCopy encodeBool:supportsUngrouping forKey:v10];

  supportsDTMF = [(TUCallModel *)self supportsDTMF];
  v12 = NSStringFromSelector(sel_supportsDTMF);
  [coderCopy encodeBool:supportsDTMF forKey:v12];

  supportsUnambiguousMultiPartyState = [(TUCallModel *)self supportsUnambiguousMultiPartyState];
  v14 = NSStringFromSelector(sel_supportsUnambiguousMultiPartyState);
  [coderCopy encodeBool:supportsUnambiguousMultiPartyState forKey:v14];

  supportsAddCall = [(TUCallModel *)self supportsAddCall];
  v16 = NSStringFromSelector(sel_supportsAddCall);
  [coderCopy encodeBool:supportsAddCall forKey:v16];

  supportsSendingToVoicemail = [(TUCallModel *)self supportsSendingToVoicemail];
  v18 = NSStringFromSelector(sel_supportsSendingToVoicemail);
  [coderCopy encodeBool:supportsSendingToVoicemail forKey:v18];
}

@end