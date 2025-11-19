@interface TIKeyboardCandidateGroup
- (BOOL)hasAlternativeText;
- (BOOL)isEqual:(id)a3;
- (TIKeyboardCandidateGroup)initWithCoder:(id)a3;
- (TIKeyboardCandidateGroup)initWithTitle:(id)a3 candidates:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCandidates;
- (unint64_t)hash;
- (void)addCandidate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIKeyboardCandidateGroup

- (id)description
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v25.receiver = self;
  v25.super_class = TIKeyboardCandidateGroup;
  v4 = [(TIKeyboardCandidateGroup *)&v25 description];
  v5 = [(TIKeyboardCandidateGroup *)self title];
  v6 = [(TIKeyboardCandidateGroup *)self candidates];
  v7 = [v6 count];
  v8 = [(TIKeyboardCandidateGroup *)self candidates];
  v9 = [v8 count];
  v10 = @"\n";
  if (!v9)
  {
    v10 = &stru_1EF56D550;
  }

  [v3 appendFormat:@"%@: Group '%@' (%d candidates)%@", v4, v5, v7, v10];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [(TIKeyboardCandidateGroup *)self candidates];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v16 candidate];
        v18 = [v16 label];
        v19 = [v16 alternativeText];
        [v3 appendFormat:@"\tcandidate='%@'; label='%@'; alternativeText='%@'\n", v17, v18, v19];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v13);
  }

  return v3;
}

- (void)addCandidate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(TIKeyboardCandidateGroup *)self mutableCandidates];
    [v5 addObject:v4];
  }
}

- (BOOL)hasAlternativeText
{
  if (![(NSOrderedSet *)self->_candidates count])
  {
    return 0;
  }

  v3 = [(NSOrderedSet *)self->_candidates objectAtIndex:0];
  v4 = [v3 alternativeText];
  v5 = [v4 length] != 0;

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
  v3 = [(TIKeyboardCandidateGroup *)self title];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TIKeyboardCandidateGroup *)self title];
      v7 = [(TIKeyboardCandidateGroup *)v5 title];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(TIKeyboardCandidateGroup *)self candidates];
        v9 = [(TIKeyboardCandidateGroup *)v5 candidates];
        v10 = [v8 isEqualToOrderedSet:v9];
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

- (TIKeyboardCandidateGroup)initWithTitle:(id)a3 candidates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TIKeyboardCandidateGroup;
  v8 = [(TIKeyboardCandidateGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TIKeyboardCandidateGroup *)v8 setTitle:v6];
    [(TIKeyboardCandidateGroup *)v9 setCandidates:v7];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [[TIKeyboardCandidateGroup allocWithZone:?]];
  v5 = [(TIKeyboardCandidateGroup *)self title];
  [(TIKeyboardCandidateGroup *)v4 setTitle:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(TIKeyboardCandidateGroup *)self candidates];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(TIKeyboardCandidateGroup *)v4 addCandidate:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(TIKeyboardCandidateGroup *)self candidates];

  if (v4)
  {
    v5 = [(TIKeyboardCandidateGroup *)self candidates];
    [v8 encodeObject:v5 forKey:@"candidates"];
  }

  v6 = [(TIKeyboardCandidateGroup *)self title];

  if (v6)
  {
    v7 = [(TIKeyboardCandidateGroup *)self title];
    [v8 encodeObject:v7 forKey:@"title"];
  }
}

- (TIKeyboardCandidateGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TIKeyboardCandidateGroup;
  v5 = [(TIKeyboardCandidateGroup *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"candidates"];
    candidates = v5->_candidates;
    v5->_candidates = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v11;
  }

  return v5;
}

@end