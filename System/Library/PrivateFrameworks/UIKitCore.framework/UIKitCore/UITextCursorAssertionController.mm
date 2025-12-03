@interface UITextCursorAssertionController
- (BOOL)_isNonBlinking;
- (UITextCursorAssertionControllerSubject)subject;
- (id)_createAssertionWithReason:(id)reason options:(unint64_t)options userInfo:(id)info;
- (id)debugDescription;
- (void)_beginTrackingAssertion:(id)assertion;
- (void)_endTrackingAssertion:(id)assertion;
- (void)_updateSubjectWithAssertionState;
- (void)dealloc;
@end

@implementation UITextCursorAssertionController

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_subject);

  if (WeakRetained)
  {
    [(NSHashTable *)self->_assertions removeAllObjects];
    [(UITextCursorAssertionController *)self _updateSubjectWithAssertionState];
    objc_storeWeak(&self->_subject, 0);
  }

  v4.receiver = self;
  v4.super_class = UITextCursorAssertionController;
  [(UITextCursorAssertionController *)&v4 dealloc];
}

- (void)_updateSubjectWithAssertionState
{
  v53 = *MEMORY[0x1E69E9840];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  selfCopy = self;
  obj = self->_assertions;
  v2 = [(NSHashTable *)obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    integerValue = 1;
    v44 = *v49;
    LODWORD(v7) = 1;
    LODWORD(v8) = 1;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v49 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        v11 = [v10 options] & 1;
        options = [v10 options];
        v46 = (options & 2 | v11) == 0;
        v47 = (options & 2) == 0;
        options2 = [v10 options];
        if (([v10 options] & 0x40) != 0)
        {
          v14 = v5 | 8;
          userInfo = [v10 userInfo];
          v16 = [userInfo objectForKeyedSubscript:@"_UITextCursorAnimationStyleUserInfoKey"];
          integerValue = [v16 integerValue];
        }

        else
        {
          options3 = [v10 options];
          v14 = ([v10 options] >> 3) & 2 | (options3 >> 3) & 1 | v5;
        }

        v5 = ([v10 options] >> 3) & 0x10 | v14;
        if (([v10 options] & 0x20) != 0)
        {
          userInfo2 = [v10 userInfo];
          [userInfo2 objectForKeyedSubscript:@"_UITextCursorKeyboardIndicatorUserInfoKey"];
          v43 = v7;
          v18 = v8;
          v8 = integerValue;
          v19 = v4;
          v20 = v5;
          v22 = v21 = v3;
          bOOLValue = [v22 BOOLValue];

          v3 = v21;
          v24 = 4;
          if (bOOLValue)
          {
            v24 = 36;
          }

          v25 = v24 | v20;
          v4 = v19;
          integerValue = v8;
          LODWORD(v8) = v18;
          LODWORD(v7) = v43;
          userInfo3 = [v10 userInfo];
          v27 = [userInfo3 objectForKeyedSubscript:@"_UITextCursorInputModeSwitcherUserInfoKey"];
          bOOLValue2 = [v27 BOOLValue];

          if (bOOLValue2)
          {
            v5 = v25 | 0x40;
          }

          else
          {
            v5 = v25;
          }
        }

        v7 = v47 & v7;
        v8 = v46 & v8;
        v4 |= (options2 >> 2) & 1;
        if (!v5)
        {
          integerValue = 0;
        }
      }

      v3 = [(NSHashTable *)obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
    v5 = 0;
    v7 = 1;
    integerValue = 1;
    v8 = 1;
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_subject);
  cursorVisible = [WeakRetained cursorVisible];

  if (v7 != cursorVisible)
  {
    v31 = objc_loadWeakRetained(&selfCopy->_subject);
    [v31 setCursorVisible:v7];
  }

  v32 = objc_loadWeakRetained(&selfCopy->_subject);
  cursorBlinks = [v32 cursorBlinks];

  if (v8 != cursorBlinks)
  {
    v34 = objc_loadWeakRetained(&selfCopy->_subject);
    [v34 setCursorBlinks:v8];
  }

  v35 = objc_loadWeakRetained(&selfCopy->_subject);
  ghostAppearance = [v35 ghostAppearance];

  if ((v4 & 1) != ghostAppearance)
  {
    v37 = objc_loadWeakRetained(&selfCopy->_subject);
    [v37 setGhostAppearance:v4 & 1];
  }

  v38 = objc_loadWeakRetained(&selfCopy->_subject);
  v39 = objc_opt_respondsToSelector();

  if (v39)
  {
    v40 = objc_loadWeakRetained(&selfCopy->_subject);
    [v40 setActiveIndicators:v5 animationStyle:integerValue];
  }
}

- (id)_createAssertionWithReason:(id)reason options:(unint64_t)options userInfo:(id)info
{
  infoCopy = info;
  reasonCopy = reason;
  if (![reasonCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextCursorAssertion.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"reason.length > 0"}];
  }

  v11 = [[_UITextCursorAssertion alloc] _initWithReason:reasonCopy options:options controller:self userInfo:infoCopy];

  [(UITextCursorAssertionController *)self _beginTrackingAssertion:v11];

  return v11;
}

- (BOOL)_isNonBlinking
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_assertions;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) options])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_beginTrackingAssertion:(id)assertion
{
  assertionCopy = assertion;
  assertions = self->_assertions;
  v8 = assertionCopy;
  if (!assertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_assertions;
    self->_assertions = weakObjectsHashTable;

    assertionCopy = v8;
    assertions = self->_assertions;
  }

  [(NSHashTable *)assertions addObject:assertionCopy];
  [(UITextCursorAssertionController *)self _updateSubjectWithAssertionState];
}

- (void)_endTrackingAssertion:(id)assertion
{
  [(NSHashTable *)self->_assertions removeObject:assertion];

  [(UITextCursorAssertionController *)self _updateSubjectWithAssertionState];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  allObjects = [(NSHashTable *)self->_assertions allObjects];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, allObjects];

  return v7;
}

- (UITextCursorAssertionControllerSubject)subject
{
  WeakRetained = objc_loadWeakRetained(&self->_subject);

  return WeakRetained;
}

@end