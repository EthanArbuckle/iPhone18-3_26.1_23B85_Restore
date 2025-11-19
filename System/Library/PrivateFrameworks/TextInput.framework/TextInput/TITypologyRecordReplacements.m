@interface TITypologyRecordReplacements
- (TITypologyRecordReplacements)initWithCoder:(id)a3;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TITypologyRecordReplacements

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(TITypologyRecordReplacements *)self string];
  v5 = [(TITypologyRecordReplacements *)self candidates];
  v6 = [v3 stringWithFormat:@"REPLACEMENTS for %@: %@", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordReplacements;
  v4 = a3;
  [(TITypologyRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_string forKey:{@"string", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_keyLayout forKey:@"keyLayout"];
  [v4 encodeObject:self->_candidates forKey:@"candidates"];
}

- (TITypologyRecordReplacements)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TITypologyRecordReplacements;
  v5 = [(TITypologyRecord *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    v7 = [v6 copy];
    string = v5->_string;
    v5->_string = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyLayout"];
    keyLayout = v5->_keyLayout;
    v5->_keyLayout = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"candidates"];
    candidates = v5->_candidates;
    v5->_candidates = v14;
  }

  return v5;
}

@end