@interface PKPGVTransition
- (id)_isState:(uint64_t)state;
- (void)_endTrackingTransition:(uint64_t)transition;
- (void)_state;
- (void)dealloc;
@end

@implementation PKPGVTransition

- (void)_endTrackingTransition:(uint64_t)transition
{
  v14 = *MEMORY[0x1E69E9840];
  if (transition)
  {
    if ((*(transition + 19) & 1) == 0 || *(transition + 20) == 1)
    {
      __break(1u);
    }

    *(transition + 18) = 0;
    *(transition + 20) = 1;
    v2 = *(transition + 24);
    v3 = *(transition + 24);
    *(transition + 24) = 0;

    if (v2)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v4 = v2;
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v4);
            }

            (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)_state
{
  if (result)
  {
    v2 = result[1];
    if (!v2)
    {
      __break(1u);
      return result;
    }

    result = v2;
    v1 = vars8;
  }

  return result;
}

- (id)_isState:(uint64_t)state
{
  result = a2;
  if (!state)
  {
    goto LABEL_5;
  }

  if (result)
  {
    v4 = *(state + 8);
    if (v4)
    {
      state = v4 == result;
LABEL_5:

      return state;
    }
  }

  __break(1u);
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPGVTransition;
  [(PKPGVTransition *)&v2 dealloc];
}

@end