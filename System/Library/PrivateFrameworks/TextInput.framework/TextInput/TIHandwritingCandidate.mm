@interface TIHandwritingCandidate
- (BOOL)isInlineCompletionCandidate;
- (TIHandwritingCandidate)initWithCandidate:(id)candidate forInput:(id)input uniqueID:(unint64_t)d completionUniqueID:(unint64_t)iD;
- (TIHandwritingCandidate)initWithCandidateResultSetCoder:(id)coder;
- (TIHandwritingCandidate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCandidateResultSetCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIHandwritingCandidate

- (void)encodeWithCandidateResultSetCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIHandwritingCandidate;
  coderCopy = coder;
  [(TIKeyboardCandidateSingle *)&v5 encodeWithCandidateResultSetCoder:coderCopy];
  [coderCopy encodeUInt64:{self->_uniqueID, v5.receiver, v5.super_class}];
  [coderCopy encodeUInt64:self->_completionUniqueID];
}

- (TIHandwritingCandidate)initWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TIHandwritingCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v7 initWithCandidateResultSetCoder:coderCopy];
  if (v5)
  {
    v5->_uniqueID = [coderCopy decodeUInt64];
    v5->_completionUniqueID = [coderCopy decodeUInt64];
  }

  return v5;
}

- (BOOL)isInlineCompletionCandidate
{
  uniqueID = [(TIHandwritingCandidate *)self uniqueID];
  if (uniqueID)
  {
    LOBYTE(uniqueID) = [(TIHandwritingCandidate *)self completionUniqueID]!= 0;
  }

  return uniqueID;
}

- (TIHandwritingCandidate)initWithCandidate:(id)candidate forInput:(id)input uniqueID:(unint64_t)d completionUniqueID:(unint64_t)iD
{
  v11.receiver = self;
  v11.super_class = TIHandwritingCandidate;
  v8 = [(TIKeyboardCandidateSingle *)&v11 initWithCandidate:candidate forInput:input];
  v9 = v8;
  if (v8)
  {
    v8->_uniqueID = d;
    v8->_completionUniqueID = iD;
    [(TIKeyboardCandidate *)v8 setTypingEngine:6];
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TIHandwritingCandidate;
  [(TIKeyboardCandidateSingle *)&v7 encodeWithCoder:coderCopy];
  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [coderCopy encodeInt64:uniqueID forKey:@"uniqueID"];
  }

  completionUniqueID = self->_completionUniqueID;
  if (completionUniqueID)
  {
    [coderCopy encodeInt64:completionUniqueID forKey:@"completionUniqueID"];
  }
}

- (TIHandwritingCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TIHandwritingCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_uniqueID = [coderCopy decodeInt64ForKey:@"uniqueID"];
    v5->_completionUniqueID = [coderCopy decodeInt64ForKey:@"completionUniqueID"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TIHandwritingCandidate;
  result = [(TIKeyboardCandidateSingle *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 29) = self->_uniqueID;
    *(result + 30) = self->_completionUniqueID;
  }

  return result;
}

@end