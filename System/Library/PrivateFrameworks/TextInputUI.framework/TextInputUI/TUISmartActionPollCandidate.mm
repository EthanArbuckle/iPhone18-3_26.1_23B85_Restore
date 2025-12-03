@interface TUISmartActionPollCandidate
- (BOOL)isEqual:(id)equal;
- (NSString)title;
- (TUISmartActionPollCandidate)initWithCoder:(id)coder;
- (TUISmartActionPollCandidate)initWithTitle:(id)title options:(id)options;
- (id)alternativeText;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)label;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUISmartActionPollCandidate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  label = self->_label;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  title = [(TUISmartActionPollCandidate *)self title];
  if ([(TUISmartActionPollCandidate *)self shouldSuggestTitle])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  options = [(TUISmartActionPollCandidate *)self options];
  v10 = [v3 stringWithFormat:@"<%@: label=%@, title=%@, shouldSuggestTitle=%s, options=%@>", label, v6, title, v8, options];

  return v10;
}

- (unint64_t)hash
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v9.receiver = self;
  v9.super_class = TUISmartActionPollCandidate;
  v13 = [(TUISmartActionPollCandidate *)&v9 hash];
  v3 = 257 * v11[3];
  v4 = [(NSString *)self->_label hash];
  v11[3] = v4 + v3;
  options = self->_options;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__TUISmartActionPollCandidate_hash__block_invoke;
  v8[3] = &unk_1E72D81D8;
  v8[4] = &v10;
  [(NSArray *)options enumerateObjectsUsingBlock:v8];
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __35__TUISmartActionPollCandidate_hash__block_invoke(uint64_t a1, void *a2)
{
  v3 = 257 * *(*(*(a1 + 32) + 8) + 24);
  result = [a2 hash];
  *(*(*(a1 + 32) + 8) + 24) = v3 + result;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v11.receiver = self;
      v9 = -[TUISmartActionPollCandidate isEqual:](&v11, sel_isEqual_, v5) && (-[TUISmartActionPollCandidate label](self, "label"), v6 = v11.super_class = TUISmartActionPollCandidate;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TUISmartActionPollCandidate;
  coderCopy = coder;
  [(TIKeyboardCandidateSingle *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_label forKey:{@"saPollLabel", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_options forKey:@"saPollOptionArray"];
  [coderCopy encodeBool:self->_shouldSuggestTitle forKey:@"saPollShouldSuggestTitle"];
}

- (TUISmartActionPollCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TUISmartActionPollCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"saPollLabel"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"saPollOptionArray"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_options, v10);

    v5->_shouldSuggestTitle = [coderCopy decodeBoolForKey:@"saPollShouldSuggestTitle"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TUISmartActionPollCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v11 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_label copyWithZone:zone];
    v7 = v5[29];
    v5[29] = v6;

    v8 = [(NSArray *)self->_options copyWithZone:zone];
    v9 = v5[31];
    v5[31] = v8;

    *(v5 + 240) = self->_shouldSuggestTitle;
  }

  return v5;
}

- (id)alternativeText
{
  if (self->_label)
  {
    title = [(TUISmartActionPollCandidate *)self title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (id)label
{
  label = self->_label;
  if (label)
  {
    title = label;
  }

  else
  {
    title = [(TUISmartActionPollCandidate *)self title];
  }

  return title;
}

- (NSString)title
{
  candidate = [(TIKeyboardCandidateSingle *)self candidate];
  v3 = candidate;
  if (candidate)
  {
    v4 = candidate;
  }

  else
  {
    v4 = &stru_1F03BA8F8;
  }

  v5 = v4;

  return &v4->isa;
}

- (TUISmartActionPollCandidate)initWithTitle:(id)title options:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = TUISmartActionPollCandidate;
  v7 = [(TIKeyboardCandidateSingle *)&v12 initWithCandidate:title forInput:&stru_1F03BA8F8];
  if (v7)
  {
    if (optionsCopy)
    {
      v8 = optionsCopy;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = [v8 copy];
    options = v7->_options;
    v7->_options = v9;
  }

  return v7;
}

@end