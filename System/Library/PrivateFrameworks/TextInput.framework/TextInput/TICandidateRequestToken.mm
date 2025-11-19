@interface TICandidateRequestToken
+ (id)tokenForKeyboardState:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSameRequestAs:(id)a3;
- (TICandidateRequestToken)init;
- (TICandidateRequestToken)initWithCoder:(id)a3;
- (id)description;
- (id)initForKeyboardState:(id)a3;
- (id)shortIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TICandidateRequestToken

- (id)shortIdentifier
{
  v2 = [(TICandidateRequestToken *)self UUID];
  v3 = [v2 description];

  v4 = [v3 substringToIndex:8];

  return v4;
}

- (id)description
{
  v3 = [(TICandidateRequestToken *)self shiftState];
  if (v3 > 3)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = off_1E6F4CC10[v3];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(TICandidateRequestToken *)self UUID];
  v9 = [(TICandidateRequestToken *)self documentState];
  v10 = [v5 stringWithFormat:@"<%@: %p UUID=%@ docState=%@ shiftState=%s>", v7, self, v8, v9, v4];;

  return v10;
}

- (BOOL)isSameRequestAs:(id)a3
{
  v4 = a3;
  v5 = [(TICandidateRequestToken *)self UUID];
  v6 = [v4 UUID];
  v7 = [v5 isEqual:v6];

  if (v7 && (-[TICandidateRequestToken documentState](self, "documentState"), v8 = objc_claimAutoreleasedReturnValue(), [v4 documentState], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    v11 = [(TICandidateRequestToken *)self shiftState];
    v12 = v11 == [v4 shiftState];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v6 = [(TICandidateRequestToken *)self isSameRequestAs:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TICandidateRequestToken *)self UUID];
  v4 = [v3 hash];

  v5 = [(TICandidateRequestToken *)self documentState];
  v6 = [v5 hash] + 257 * v4;

  return 257 * v6 + self->_shiftState;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  UUID = self->_UUID;
  v7 = v4;
  if (UUID)
  {
    [v4 encodeObject:UUID forKey:@"UUID"];
    v4 = v7;
  }

  documentState = self->_documentState;
  if (documentState)
  {
    [v7 encodeObject:documentState forKey:@"documentState"];
    v4 = v7;
  }

  [v4 encodeInteger:self->_shiftState forKey:@"shiftState"];
}

- (TICandidateRequestToken)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TICandidateRequestToken;
  v5 = [(TICandidateRequestToken *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v8;

    v5->_shiftState = [v4 decodeIntegerForKey:@"shiftState"];
  }

  return v5;
}

- (id)initForKeyboardState:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TICandidateRequestToken;
  v5 = [(TICandidateRequestToken *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 documentState];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [[TIDocumentState alloc] initWithContextBefore:0 markedText:0 selectedText:0 contextAfter:0 selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL, 0];
    }

    documentState = v5->_documentState;
    v5->_documentState = v10;

    v5->_shiftState = [v4 shiftState];
  }

  return v5;
}

- (TICandidateRequestToken)init
{
  v3 = objc_alloc_init(TIKeyboardState);
  v4 = [(TICandidateRequestToken *)self initForKeyboardState:v3];

  return v4;
}

+ (id)tokenForKeyboardState:(id)a3
{
  v3 = a3;
  v4 = [[TICandidateRequestToken alloc] initForKeyboardState:v3];

  return v4;
}

@end