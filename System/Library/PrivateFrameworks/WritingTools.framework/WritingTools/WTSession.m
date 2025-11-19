@interface WTSession
- (BOOL)isEqual:(id)a3;
- (WTSession)initWithGeneralCoder:(id)a3;
- (WTSession)initWithType:(int64_t)a3 textViewDelegate:(id)a4;
- (WTTextViewDelegate_Proposed_v1)textViewDelegate;
- (int64_t)requestedTool;
- (void)encodeWithGeneralCoder:(id)a3;
@end

@implementation WTSession

- (WTSession)initWithType:(int64_t)a3 textViewDelegate:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = WTSession;
  v7 = [(WTSession *)&v11 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    uuid = v7->_uuid;
    v7->_uuid = v8;

    v7->_type = a3;
    objc_storeWeak(&v7->_textViewDelegate, v6);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(WTSession *)self uuid];
    v7 = [(WTSession *)v5 uuid];
    v8 = [v6 isEqual:v7];
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
    v4 = [(WTSession *)self compositionSessionType];
    if ((v4 - 1) > 0xB)
    {
      return 0;
    }

    else
    {
      return qword_274C9BDA8[v4 - 1];
    }
  }

  return result;
}

- (void)encodeWithGeneralCoder:(id)a3
{
  v5 = a3;
  v4 = [(WTSession *)self uuid];
  [v5 encodeObject:v4 forKey:@"WTSessionCodingKeyUUID"];

  [v5 encodeInt64:-[WTSession type](self forKey:{"type"), @"WTSessionCodingKeyType"}];
  [v5 encodeInt64:-[WTSession compositionSessionType](self forKey:{"compositionSessionType"), @"WTSessionCodingKeyCompositionType"}];
}

- (WTSession)initWithGeneralCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WTSession;
  v5 = [(WTSession *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeyUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_type = [v4 decodeInt64ForKey:@"WTSessionCodingKeyType"];
    v5->_compositionSessionType = [v4 decodeInt64ForKey:@"WTSessionCodingKeyCompositionType"];
  }

  return v5;
}

- (WTTextViewDelegate_Proposed_v1)textViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textViewDelegate);

  return WeakRetained;
}

@end