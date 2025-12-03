@interface WTSession
- (BOOL)isEqual:(id)equal;
- (WTSession)initWithGeneralCoder:(id)coder;
- (WTSession)initWithType:(int64_t)type textViewDelegate:(id)delegate;
- (WTTextViewDelegate_Proposed_v1)textViewDelegate;
- (int64_t)requestedTool;
- (void)encodeWithGeneralCoder:(id)coder;
@end

@implementation WTSession

- (WTSession)initWithType:(int64_t)type textViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = WTSession;
  v7 = [(WTSession *)&v11 init];
  if (v7)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v7->_uuid;
    v7->_uuid = uUID;

    v7->_type = type;
    objc_storeWeak(&v7->_textViewDelegate, delegateCopy);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    uuid = [(WTSession *)self uuid];
    uuid2 = [(WTSession *)v5 uuid];
    v8 = [uuid isEqual:uuid2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)requestedTool
{
  result = [(WTSession *)self type];
  if (result != 1)
  {
    compositionSessionType = [(WTSession *)self compositionSessionType];
    if ((compositionSessionType - 1) > 0xB)
    {
      return 0;
    }

    else
    {
      return qword_274C9BDA8[compositionSessionType - 1];
    }
  }

  return result;
}

- (void)encodeWithGeneralCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(WTSession *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"WTSessionCodingKeyUUID"];

  [coderCopy encodeInt64:-[WTSession type](self forKey:{"type"), @"WTSessionCodingKeyType"}];
  [coderCopy encodeInt64:-[WTSession compositionSessionType](self forKey:{"compositionSessionType"), @"WTSessionCodingKeyCompositionType"}];
}

- (WTSession)initWithGeneralCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = WTSession;
  v5 = [(WTSession *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeyUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_type = [coderCopy decodeInt64ForKey:@"WTSessionCodingKeyType"];
    v5->_compositionSessionType = [coderCopy decodeInt64ForKey:@"WTSessionCodingKeyCompositionType"];
  }

  return v5;
}

- (WTTextViewDelegate_Proposed_v1)textViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textViewDelegate);

  return WeakRetained;
}

@end