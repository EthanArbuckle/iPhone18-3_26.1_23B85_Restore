@interface TITypologyRecordCandidateResultSet
- (TITypologyRecordCandidateResultSet)initWithCoder:(id)a3;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)a3;
@end

@implementation TITypologyRecordCandidateResultSet

- (void)replaceDocumentState:(id)a3
{
  v4 = a3;
  v5 = [(TITypologyRecordCandidateResultSet *)self keyboardState];
  [v5 setDocumentState:v4];
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(TITypologyRecordCandidateResultSet *)self resultSet];
  v5 = [v4 uncommittedText];
  v6 = [v3 stringWithFormat:@"CANDIDATES for %@:", v5];

  v7 = [(TITypologyRecordCandidateResultSet *)self resultSet];
  v8 = [v7 candidates];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__TITypologyRecordCandidateResultSet_shortDescription__block_invoke;
  v12[3] = &unk_1E6F4BF48;
  v9 = v6;
  v13 = v9;
  v14 = self;
  [v8 enumerateObjectsUsingBlock:v12];

  v10 = v9;
  return v9;
}

void __54__TITypologyRecordCandidateResultSet_shortDescription__block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v14 = a2;
  if (a3 > 7)
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) resultSet];
    v13 = [v12 candidates];
    [v11 appendFormat:@" (%lu total)", objc_msgSend(v13, "count")];

    *a4 = 1;
  }

  else
  {
    v7 = @", %@";
    if (!a3)
    {
      v7 = @" %@";
    }

    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v14 candidate];
    [v8 appendFormat:v9, v10];
  }
}

- (void)removeContextFromKeyboardState
{
  v3 = [(TITypologyRecordCandidateResultSet *)self keyboardState];
  v4 = [v3 copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordCandidateResultSet *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TITypologyRecordCandidateResultSet;
  [(TITypologyRecord *)&v6 encodeWithCoder:v4];
  v5 = objc_autoreleasePoolPush();
  [v4 encodeObject:self->_keyboardState forKey:@"keyboardState"];
  [v4 encodeObject:self->_resultSet forKey:@"resultSet"];
  objc_autoreleasePoolPop(v5);
}

- (TITypologyRecordCandidateResultSet)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TITypologyRecordCandidateResultSet;
  v5 = [(TITypologyRecord *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resultSet"];
    resultSet = v5->_resultSet;
    v5->_resultSet = v8;
  }

  return v5;
}

@end