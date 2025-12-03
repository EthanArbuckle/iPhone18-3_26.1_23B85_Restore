@interface TICandidateRequestToken
+ (id)tokenForKeyboardState:(id)state;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSameRequestAs:(id)as;
- (TICandidateRequestToken)init;
- (TICandidateRequestToken)initWithCoder:(id)coder;
- (id)description;
- (id)initForKeyboardState:(id)state;
- (id)shortIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TICandidateRequestToken

- (id)shortIdentifier
{
  uUID = [(TICandidateRequestToken *)self UUID];
  v3 = [uUID description];

  v4 = [v3 substringToIndex:8];

  return v4;
}

- (id)description
{
  shiftState = [(TICandidateRequestToken *)self shiftState];
  if (shiftState > 3)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = off_1E6F4CC10[shiftState];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  uUID = [(TICandidateRequestToken *)self UUID];
  documentState = [(TICandidateRequestToken *)self documentState];
  v10 = [v5 stringWithFormat:@"<%@: %p UUID=%@ docState=%@ shiftState=%s>", v7, self, uUID, documentState, v4];;

  return v10;
}

- (BOOL)isSameRequestAs:(id)as
{
  asCopy = as;
  uUID = [(TICandidateRequestToken *)self UUID];
  uUID2 = [asCopy UUID];
  v7 = [uUID isEqual:uUID2];

  if (v7 && (-[TICandidateRequestToken documentState](self, "documentState"), v8 = objc_claimAutoreleasedReturnValue(), [asCopy documentState], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    shiftState = [(TICandidateRequestToken *)self shiftState];
    v12 = shiftState == [asCopy shiftState];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v6 = [(TICandidateRequestToken *)self isSameRequestAs:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  uUID = [(TICandidateRequestToken *)self UUID];
  v4 = [uUID hash];

  documentState = [(TICandidateRequestToken *)self documentState];
  v6 = [documentState hash] + 257 * v4;

  return 257 * v6 + self->_shiftState;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  UUID = self->_UUID;
  v7 = coderCopy;
  if (UUID)
  {
    [coderCopy encodeObject:UUID forKey:@"UUID"];
    coderCopy = v7;
  }

  documentState = self->_documentState;
  if (documentState)
  {
    [v7 encodeObject:documentState forKey:@"documentState"];
    coderCopy = v7;
  }

  [coderCopy encodeInteger:self->_shiftState forKey:@"shiftState"];
}

- (TICandidateRequestToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TICandidateRequestToken;
  v5 = [(TICandidateRequestToken *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v8;

    v5->_shiftState = [coderCopy decodeIntegerForKey:@"shiftState"];
  }

  return v5;
}

- (id)initForKeyboardState:(id)state
{
  stateCopy = state;
  v13.receiver = self;
  v13.super_class = TICandidateRequestToken;
  v5 = [(TICandidateRequestToken *)&v13 init];
  if (v5)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = uUID;

    documentState = [stateCopy documentState];
    v9 = documentState;
    if (documentState)
    {
      v10 = documentState;
    }

    else
    {
      v10 = [[TIDocumentState alloc] initWithContextBefore:0 markedText:0 selectedText:0 contextAfter:0 selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL, 0];
    }

    documentState = v5->_documentState;
    v5->_documentState = v10;

    v5->_shiftState = [stateCopy shiftState];
  }

  return v5;
}

- (TICandidateRequestToken)init
{
  v3 = objc_alloc_init(TIKeyboardState);
  v4 = [(TICandidateRequestToken *)self initForKeyboardState:v3];

  return v4;
}

+ (id)tokenForKeyboardState:(id)state
{
  stateCopy = state;
  v4 = [[TICandidateRequestToken alloc] initForKeyboardState:stateCopy];

  return v4;
}

@end