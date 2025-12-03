@interface TITypologyRecordReplacements
- (TITypologyRecordReplacements)initWithCoder:(id)coder;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TITypologyRecordReplacements

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  string = [(TITypologyRecordReplacements *)self string];
  candidates = [(TITypologyRecordReplacements *)self candidates];
  v6 = [v3 stringWithFormat:@"REPLACEMENTS for %@: %@", string, candidates];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordReplacements;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_string forKey:{@"string", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_keyLayout forKey:@"keyLayout"];
  [coderCopy encodeObject:self->_candidates forKey:@"candidates"];
}

- (TITypologyRecordReplacements)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = TITypologyRecordReplacements;
  v5 = [(TITypologyRecord *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    v7 = [v6 copy];
    string = v5->_string;
    v5->_string = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyLayout"];
    keyLayout = v5->_keyLayout;
    v5->_keyLayout = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"candidates"];
    candidates = v5->_candidates;
    v5->_candidates = v14;
  }

  return v5;
}

@end