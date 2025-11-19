@interface UISceneActivationConditions
- (BOOL)_validateCompileTimeIssues:(id *)a3 runTimeIssues:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSPredicate)canActivateForTargetContentIdentifierPredicate;
- (NSPredicate)prefersToActivateForTargetContentIdentifierPredicate;
- (UIScene)_UIScene;
- (UISceneActivationConditions)init;
- (UISceneActivationConditions)initWithCoder:(NSCoder *)aDecoder;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)_suitabilityForTargetContentIdentifier:(id)a3 errorString:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCanActivateForTargetContentIdentifierPredicate:(NSPredicate *)canActivateForTargetContentIdentifierPredicate;
- (void)setPrefersToActivateForTargetContentIdentifierPredicate:(NSPredicate *)prefersToActivateForTargetContentIdentifierPredicate;
@end

@implementation UISceneActivationConditions

- (UISceneActivationConditions)init
{
  v8.receiver = self;
  v8.super_class = UISceneActivationConditions;
  v2 = [(UISceneActivationConditions *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    canActivatePredicate = v2->_canActivatePredicate;
    v2->_canActivatePredicate = v3;

    v5 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    prefersPredicate = v2->_prefersPredicate;
    v2->_prefersPredicate = v5;
  }

  return v2;
}

- (unint64_t)hash
{
  prefersPredicate = self->_prefersPredicate;
  if (prefersPredicate)
  {
    v4 = [(NSPredicate *)prefersPredicate hash]+ 113569;
  }

  else
  {
    v4 = 337;
  }

  canActivatePredicate = self->_canActivatePredicate;
  if (canActivatePredicate)
  {
    return [(NSPredicate *)canActivatePredicate hash]+ 337 * v4;
  }

  return v4;
}

- (NSPredicate)canActivateForTargetContentIdentifierPredicate
{
  v2 = [(NSPredicate *)self->_canActivatePredicate copy];

  return v2;
}

- (void)setCanActivateForTargetContentIdentifierPredicate:(NSPredicate *)canActivateForTargetContentIdentifierPredicate
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = canActivateForTargetContentIdentifierPredicate;
  if (([(NSPredicate *)self->_canActivatePredicate isEqual:v5]& 1) == 0)
  {
    v6 = objc_alloc_init(_UITargetContentIdentifierPredicateValidator);
    v15 = 0;
    v16 = 0;
    v7 = [(_UITargetContentIdentifierPredicateValidator *)v6 validatePredicate:v5 compileTimeIssues:&v16 runTimeIssues:&v15];
    v8 = v16;
    v9 = v15;
    if (v7)
    {
      v10 = [(NSPredicate *)v5 copy];
      canActivatePredicate = self->_canActivatePredicate;
      self->_canActivatePredicate = v10;

      WeakRetained = objc_loadWeakRetained(&self->_uiScene);
      [WeakRetained _refreshActivationConditions];
    }

    else
    {
      if (v8)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"UISceneActivationConditions.m" lineNumber:170 description:{@"%@", v8}];
      }

      v13 = *(__UILogGetCategoryCachedImpl("UISceneActivationConditions", &setCanActivateForTargetContentIdentifierPredicate____s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[UISceneActivationConditions setCanActivateForTargetContentIdentifierPredicate:]";
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%s: %@", buf, 0x16u);
      }
    }
  }
}

- (NSPredicate)prefersToActivateForTargetContentIdentifierPredicate
{
  v2 = [(NSPredicate *)self->_prefersPredicate copy];

  return v2;
}

- (void)setPrefersToActivateForTargetContentIdentifierPredicate:(NSPredicate *)prefersToActivateForTargetContentIdentifierPredicate
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = prefersToActivateForTargetContentIdentifierPredicate;
  if (([(NSPredicate *)self->_prefersPredicate isEqual:v5]& 1) == 0)
  {
    v6 = objc_alloc_init(_UITargetContentIdentifierPredicateValidator);
    v15 = 0;
    v16 = 0;
    v7 = [(_UITargetContentIdentifierPredicateValidator *)v6 validatePredicate:v5 compileTimeIssues:&v16 runTimeIssues:&v15];
    v8 = v16;
    v9 = v15;
    if (v7)
    {
      v10 = [(NSPredicate *)v5 copy];
      prefersPredicate = self->_prefersPredicate;
      self->_prefersPredicate = v10;

      WeakRetained = objc_loadWeakRetained(&self->_uiScene);
      [WeakRetained _refreshActivationConditions];
    }

    else
    {
      if (v8)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"UISceneActivationConditions.m" lineNumber:189 description:{@"%@", v8}];
      }

      v13 = *(__UILogGetCategoryCachedImpl("UISceneActivationConditions", &setPrefersToActivateForTargetContentIdentifierPredicate____s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[UISceneActivationConditions setPrefersToActivateForTargetContentIdentifierPredicate:]";
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%s: %@", buf, 0x16u);
      }
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_11;
  }

  v5 = objc_opt_class();
  if (![v5 isEqual:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v6 = [(UISceneActivationConditions *)self hash];
  if (v6 != [(UISceneActivationConditions *)v4 hash])
  {
    goto LABEL_10;
  }

  prefersPredicate = self->_prefersPredicate;
  if (prefersPredicate != v4->_prefersPredicate && (!prefersPredicate || ![(NSPredicate *)prefersPredicate isEqual:?]))
  {
    goto LABEL_10;
  }

  canActivatePredicate = self->_canActivatePredicate;
  if (canActivatePredicate == v4->_canActivatePredicate)
  {
LABEL_11:
    v9 = 1;
    goto LABEL_12;
  }

  if (!canActivatePredicate)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_12;
  }

  v9 = [(NSPredicate *)canActivatePredicate isEqual:?];
LABEL_12:

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p can=%@, prefers=%@>", v5, self, self->_canActivatePredicate, self->_prefersPredicate];

  return v6;
}

- (BOOL)_validateCompileTimeIssues:(id *)a3 runTimeIssues:(id *)a4
{
  v7 = objc_alloc_init(_UITargetContentIdentifierPredicateValidator);
  v8 = [(UISceneActivationConditions *)self canActivateForTargetContentIdentifierPredicate];
  v9 = [(_UITargetContentIdentifierPredicateValidator *)v7 validatePredicate:v8 compileTimeIssues:a3 runTimeIssues:a4];

  if (v9)
  {
    v10 = [(UISceneActivationConditions *)self prefersToActivateForTargetContentIdentifierPredicate];
    v11 = [(_UITargetContentIdentifierPredicateValidator *)v7 validatePredicate:v10 compileTimeIssues:a3 runTimeIssues:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)_suitabilityForTargetContentIdentifier:(id)a3 errorString:(id *)a4
{
  v5 = a3;
  v6 = [(UISceneActivationConditions *)self prefersToActivateForTargetContentIdentifierPredicate];
  if ([v6 evaluateWithObject:v5])
  {
    v7 = 2;
  }

  else
  {
    v8 = [(UISceneActivationConditions *)self canActivateForTargetContentIdentifierPredicate];
    v7 = [v8 evaluateWithObject:v5];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  canActivatePredicate = self->_canActivatePredicate;
  v5 = a3;
  [v5 encodeObject:canActivatePredicate forKey:@"_UISceneActivationConditionsCanActivatePredicate"];
  [v5 encodeObject:self->_prefersPredicate forKey:@"_UISceneActivationConditionsPrefersPredicate"];
}

- (UISceneActivationConditions)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v13.receiver = self;
  v13.super_class = UISceneActivationConditions;
  v5 = [(UISceneActivationConditions *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [(NSCoder *)v4 decodeObjectOfClass:v6 forKey:@"_UISceneActivationConditionsCanActivatePredicate"];
    canActivatePredicate = v5->_canActivatePredicate;
    v5->_canActivatePredicate = v7;

    v9 = objc_opt_self();
    v10 = [(NSCoder *)v4 decodeObjectOfClass:v9 forKey:@"_UISceneActivationConditionsPrefersPredicate"];
    prefersPredicate = v5->_prefersPredicate;
    v5->_prefersPredicate = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UISceneActivationConditions allocWithZone:?]];
  [(UISceneActivationConditions *)v4 setCanActivateForTargetContentIdentifierPredicate:self->_canActivatePredicate];
  [(UISceneActivationConditions *)v4 setPrefersToActivateForTargetContentIdentifierPredicate:self->_prefersPredicate];
  return v4;
}

- (UIScene)_UIScene
{
  WeakRetained = objc_loadWeakRetained(&self->_uiScene);

  return WeakRetained;
}

@end