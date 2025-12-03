@interface TIKeyboardCandidateGroup
- (BOOL)hasAlternativeText;
- (BOOL)isEqual:(id)equal;
- (TIKeyboardCandidateGroup)initWithCoder:(id)coder;
- (TIKeyboardCandidateGroup)initWithTitle:(id)title candidates:(id)candidates;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCandidates;
- (unint64_t)hash;
- (void)addCandidate:(id)candidate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIKeyboardCandidateGroup

- (id)description
{
  v27 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v25.receiver = self;
  v25.super_class = TIKeyboardCandidateGroup;
  v4 = [(TIKeyboardCandidateGroup *)&v25 description];
  title = [(TIKeyboardCandidateGroup *)self title];
  candidates = [(TIKeyboardCandidateGroup *)self candidates];
  v7 = [candidates count];
  candidates2 = [(TIKeyboardCandidateGroup *)self candidates];
  v9 = [candidates2 count];
  v10 = @"\n";
  if (!v9)
  {
    v10 = &stru_1EF56D550;
  }

  [string appendFormat:@"%@: Group '%@' (%d candidates)%@", v4, title, v7, v10];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  candidates3 = [(TIKeyboardCandidateGroup *)self candidates];
  v12 = [candidates3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(candidates3);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        candidate = [v16 candidate];
        label = [v16 label];
        alternativeText = [v16 alternativeText];
        [string appendFormat:@"\tcandidate='%@'; label='%@'; alternativeText='%@'\n", candidate, label, alternativeText];
      }

      v13 = [candidates3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v13);
  }

  return string;
}

- (void)addCandidate:(id)candidate
{
  if (candidate)
  {
    candidateCopy = candidate;
    mutableCandidates = [(TIKeyboardCandidateGroup *)self mutableCandidates];
    [mutableCandidates addObject:candidateCopy];
  }
}

- (BOOL)hasAlternativeText
{
  if (![(NSOrderedSet *)self->_candidates count])
  {
    return 0;
  }

  v3 = [(NSOrderedSet *)self->_candidates objectAtIndex:0];
  alternativeText = [v3 alternativeText];
  v5 = [alternativeText length] != 0;

  return v5;
}

- (id)mutableCandidates
{
  if (self->_candidates)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = self->_candidates;
      goto LABEL_7;
    }

    v4 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithOrderedSet:self->_candidates];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  }

  v3 = v4;
  candidates = self->_candidates;
  self->_candidates = v3;

LABEL_7:

  return v3;
}

- (unint64_t)hash
{
  title = [(TIKeyboardCandidateGroup *)self title];
  v4 = title;
  if (title)
  {
    v5 = [title hash];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardCandidateGroup;
    v5 = [(TIKeyboardCandidateGroup *)&v8 hash];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(TIKeyboardCandidateGroup *)self title];
      title2 = [(TIKeyboardCandidateGroup *)v5 title];
      if ([title isEqualToString:title2])
      {
        candidates = [(TIKeyboardCandidateGroup *)self candidates];
        candidates2 = [(TIKeyboardCandidateGroup *)v5 candidates];
        v10 = [candidates isEqualToOrderedSet:candidates2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (TIKeyboardCandidateGroup)initWithTitle:(id)title candidates:(id)candidates
{
  titleCopy = title;
  candidatesCopy = candidates;
  v11.receiver = self;
  v11.super_class = TIKeyboardCandidateGroup;
  v8 = [(TIKeyboardCandidateGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TIKeyboardCandidateGroup *)v8 setTitle:titleCopy];
    [(TIKeyboardCandidateGroup *)v9 setCandidates:candidatesCopy];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [[TIKeyboardCandidateGroup allocWithZone:?]];
  title = [(TIKeyboardCandidateGroup *)self title];
  [(TIKeyboardCandidateGroup *)v4 setTitle:title];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  candidates = [(TIKeyboardCandidateGroup *)self candidates];
  v7 = [candidates countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(candidates);
        }

        [(TIKeyboardCandidateGroup *)v4 addCandidate:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [candidates countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  candidates = [(TIKeyboardCandidateGroup *)self candidates];

  if (candidates)
  {
    candidates2 = [(TIKeyboardCandidateGroup *)self candidates];
    [coderCopy encodeObject:candidates2 forKey:@"candidates"];
  }

  title = [(TIKeyboardCandidateGroup *)self title];

  if (title)
  {
    title2 = [(TIKeyboardCandidateGroup *)self title];
    [coderCopy encodeObject:title2 forKey:@"title"];
  }
}

- (TIKeyboardCandidateGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = TIKeyboardCandidateGroup;
  v5 = [(TIKeyboardCandidateGroup *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"candidates"];
    candidates = v5->_candidates;
    v5->_candidates = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v11;
  }

  return v5;
}

@end