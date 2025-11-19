@interface TIHandwritingCandidate
- (BOOL)isInlineCompletionCandidate;
- (TIHandwritingCandidate)initWithCandidate:(id)a3 forInput:(id)a4 uniqueID:(unint64_t)a5 completionUniqueID:(unint64_t)a6;
- (TIHandwritingCandidate)initWithCandidateResultSetCoder:(id)a3;
- (TIHandwritingCandidate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCandidateResultSetCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIHandwritingCandidate

- (void)encodeWithCandidateResultSetCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIHandwritingCandidate;
  v4 = a3;
  [(TIKeyboardCandidateSingle *)&v5 encodeWithCandidateResultSetCoder:v4];
  [v4 encodeUInt64:{self->_uniqueID, v5.receiver, v5.super_class}];
  [v4 encodeUInt64:self->_completionUniqueID];
}

- (TIHandwritingCandidate)initWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TIHandwritingCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v7 initWithCandidateResultSetCoder:v4];
  if (v5)
  {
    v5->_uniqueID = [v4 decodeUInt64];
    v5->_completionUniqueID = [v4 decodeUInt64];
  }

  return v5;
}

- (BOOL)isInlineCompletionCandidate
{
  v3 = [(TIHandwritingCandidate *)self uniqueID];
  if (v3)
  {
    LOBYTE(v3) = [(TIHandwritingCandidate *)self completionUniqueID]!= 0;
  }

  return v3;
}

- (TIHandwritingCandidate)initWithCandidate:(id)a3 forInput:(id)a4 uniqueID:(unint64_t)a5 completionUniqueID:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = TIHandwritingCandidate;
  v8 = [(TIKeyboardCandidateSingle *)&v11 initWithCandidate:a3 forInput:a4];
  v9 = v8;
  if (v8)
  {
    v8->_uniqueID = a5;
    v8->_completionUniqueID = a6;
    [(TIKeyboardCandidate *)v8 setTypingEngine:6];
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TIHandwritingCandidate;
  [(TIKeyboardCandidateSingle *)&v7 encodeWithCoder:v4];
  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [v4 encodeInt64:uniqueID forKey:@"uniqueID"];
  }

  completionUniqueID = self->_completionUniqueID;
  if (completionUniqueID)
  {
    [v4 encodeInt64:completionUniqueID forKey:@"completionUniqueID"];
  }
}

- (TIHandwritingCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TIHandwritingCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_uniqueID = [v4 decodeInt64ForKey:@"uniqueID"];
    v5->_completionUniqueID = [v4 decodeInt64ForKey:@"completionUniqueID"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TIHandwritingCandidate;
  result = [(TIKeyboardCandidateSingle *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 29) = self->_uniqueID;
    *(result + 30) = self->_completionUniqueID;
  }

  return result;
}

@end