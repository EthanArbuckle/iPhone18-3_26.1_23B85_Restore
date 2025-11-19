@interface _UICollectionLayoutSupplementaryEnroller
- (_UICollectionLayoutSupplementaryEnroller)init;
- (id)description;
- (id)enrollSupplementaryForKind:(id *)a1;
- (uint64_t)commitEnrollment:(uint64_t)result;
- (uint64_t)countForKind:(uint64_t)a1;
- (uint64_t)kindIndexForEnrollmentIdentifier:(uint64_t)a1;
- (uint64_t)pruneUncommittedEnrollments;
- (void)_removeEnrollmentWithIdentifier:(id *)a1;
@end

@implementation _UICollectionLayoutSupplementaryEnroller

- (_UICollectionLayoutSupplementaryEnroller)init
{
  v12.receiver = self;
  v12.super_class = _UICollectionLayoutSupplementaryEnroller;
  v2 = [(_UICollectionLayoutSupplementaryEnroller *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    enrollmentIdentifiers = v2->_enrollmentIdentifiers;
    v2->_enrollmentIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    uncommittedEnrollmentIdentifiers = v2->_uncommittedEnrollmentIdentifiers;
    v2->_uncommittedEnrollmentIdentifiers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    enrollmentsDict = v2->_enrollmentsDict;
    v2->_enrollmentsDict = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    kindEnrollmentsDict = v2->_kindEnrollmentsDict;
    v2->_kindEnrollmentsDict = v9;
  }

  return v2;
}

- (uint64_t)pruneUncommittedEnrollments
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(result + 16);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [(_UICollectionLayoutSupplementaryEnroller *)v1 _removeEnrollmentWithIdentifier:?];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    return [v1[2] removeAllObjects];
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableDictionary count](self->_enrollmentsDict, "count")}];
  v7 = [v3 stringWithFormat:@"<%@ %p: %@ enrollments=%@ uncommittedEnrollments=%@>", v5, self, v6, self->_kindEnrollmentsDict, self->_uncommittedEnrollmentIdentifiers];;

  return v7;
}

- (id)enrollSupplementaryForKind:(id *)a1
{
  if (a1)
  {
    if (![a2 length])
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:sel_enrollSupplementaryForKind_ object:a1 file:@"_UICollectionLayoutSupplementaryEnroller.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];
    }

    v4 = [_UICollectionLayoutSupplementaryEnrollment alloc];
    if (v4 && (v19.receiver = v4, v19.super_class = _UICollectionLayoutSupplementaryEnrollment, (v5 = objc_msgSendSuper2(&v19, sel_init)) != 0))
    {
      v6 = v5;
      objc_storeStrong(v5 + 1, a2);
      v7 = [MEMORY[0x1E696AFB0] UUID];
      v8 = v6[2];
      v6[2] = v7;

      v9 = 0;
      v10 = v6[2];
    }

    else
    {
      v6 = 0;
      v10 = 0;
      v9 = 1;
    }

    v11 = v10;
    [a1[3] setObject:v6 forKeyedSubscript:v11];
    if (v9)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:sel__addEnrollmentToKindDict_ object:a1 file:@"_UICollectionLayoutSupplementaryEnroller.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"enrollment"}];

      v12 = 0;
    }

    else
    {
      v12 = v6[1];
    }

    v13 = v12;
    if (![v13 length])
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:sel__addEnrollmentToKindDict_ object:a1 file:@"_UICollectionLayoutSupplementaryEnroller.m" lineNumber:143 description:@"Fatal: enrollment has an empty kind."];
    }

    v14 = [a1[4] objectForKeyedSubscript:v13];
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      [a1[4] setObject:v14 forKeyedSubscript:v13];
    }

    [v14 addObject:v6];

    [a1[1] addObject:v11];
    [a1[2] addObject:v11];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)countForKind:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    if (![a2 length])
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_countForKind_ object:v2 file:@"_UICollectionLayoutSupplementaryEnroller.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];
    }

    v4 = [*(v2 + 32) objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v2 = [v4 count];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (uint64_t)kindIndexForEnrollmentIdentifier:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    if (!a2)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel_kindIndexForEnrollmentIdentifier_ object:v2 file:@"_UICollectionLayoutSupplementaryEnroller.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"enrollmentIdentifier"}];
    }

    v4 = [*(v2 + 24) objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 8);
      v7 = *(v2 + 32);
      v8 = [v7 objectForKeyedSubscript:v6];

      if (!v8)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:sel_kindIndexForEnrollmentIdentifier_ object:v2 file:@"_UICollectionLayoutSupplementaryEnroller.m" lineNumber:93 description:@"Failed to retrieve the kind enrollments."];
      }

      v2 = [v8 indexOfObject:v5];
    }

    else
    {
      v2 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v2;
}

- (void)_removeEnrollmentWithIdentifier:(id *)a1
{
  if (a1)
  {
    if (!a2)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel__removeEnrollmentWithIdentifier_ object:a1 file:@"_UICollectionLayoutSupplementaryEnroller.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"enrollmentIdentifier"}];
    }

    v10 = [a1[3] objectForKeyedSubscript:a2];
    if (!v10)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel__removeEnrollmentWithIdentifier_ object:a1 file:@"_UICollectionLayoutSupplementaryEnroller.m" lineNumber:157 description:@"Failed to retrieve enrollment."];
    }

    [a1[3] removeObjectForKey:a2];
    [a1[1] removeObject:a2];
    if (v10)
    {
      v4 = v10[1];
    }

    else
    {
      v4 = 0;
    }

    v5 = a1[4];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (!v6)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel__removeEnrollmentWithIdentifier_ object:a1 file:@"_UICollectionLayoutSupplementaryEnroller.m" lineNumber:165 description:@"Failed to find the enrollment kind set"];
    }

    [v6 removeObject:v10];
  }
}

- (uint64_t)commitEnrollment:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel_commitEnrollment_ object:v3 file:@"_UICollectionLayoutSupplementaryEnroller.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"enrollmentIdentifier"}];
    }

    v4 = *(v3 + 16);

    return [v4 removeObject:a2];
  }

  return result;
}

@end