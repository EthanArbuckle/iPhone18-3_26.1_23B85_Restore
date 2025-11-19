@interface _UIResponderIntegrityProtection
+ (id)rip;
- (_UIResponderIntegrityProtection)init;
- (void)finishedDeliveringPresses;
- (void)responder:(id)a3 class:(Class)a4 receivedPresses:(id)a5 inPhase:(int64_t)a6 withEvent:(id)a7;
- (void)startDeliveringPresses:(id)a3 inPhase:(int64_t)a4 withEvent:(id)a5;
@end

@implementation _UIResponderIntegrityProtection

+ (id)rip
{
  if (qword_1ED49E180 != -1)
  {
    dispatch_once(&qword_1ED49E180, &__block_literal_global_269);
  }

  v3 = _MergedGlobals_1117;

  return v3;
}

- (_UIResponderIntegrityProtection)init
{
  v8.receiver = self;
  v8.super_class = _UIResponderIntegrityProtection;
  v2 = [(_UIResponderIntegrityProtection *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deliveryStack = v2->_deliveryStack;
    v2->_deliveryStack = v3;

    v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    pressBeganRecords = v2->_pressBeganRecords;
    v2->_pressBeganRecords = v5;
  }

  return v2;
}

- (void)startDeliveringPresses:(id)a3 inPhase:(int64_t)a4 withEvent:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[_UIRIPDeliveryRecord alloc] initWithPresses:v9 inPhase:a4 withEvent:v8];

  [(NSMutableArray *)self->_deliveryStack addObject:v10];
}

- (void)finishedDeliveringPresses
{
  v44 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_deliveryStack count])
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_UIResponderIntegrityProtection.m" lineNumber:222 description:@"No delivery record found. This indicates imbalanced calls of startDeliveringPresses:inPhase:withEvent: and finishDeliveringPresses."];
  }

  v4 = [(NSMutableArray *)self->_deliveryStack lastObject];
  [(NSMutableArray *)self->_deliveryStack removeLastObject];
  if (![v4 phase])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = [v4 presses];
    v20 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v5);
          }

          v24 = *(*(&v34 + 1) + 8 * i);
          v25 = [(NSMapTable *)self->_pressBeganRecords objectForKey:v24];
          if (v25)
          {
            __rip_break_invalid_began__(v4, v25, v24);
          }

          [(NSMapTable *)self->_pressBeganRecords setObject:v4 forKey:v24];
        }

        v21 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v21);
    }

    goto LABEL_32;
  }

  if ([v4 phase] == 3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [v4 presses];
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      v29 = v4;
      v27 = *v31;
      do
      {
        v9 = 0;
        v28 = v7;
        do
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v30 + 1) + 8 * v9);
          v11 = [(NSMapTable *)self->_pressBeganRecords objectForKey:v10];
          if (v11)
          {
            v12 = [v4 diffToRecord:v11 press:v10];
            if (v12)
            {
              v13 = v5;
              v14 = *(__UILogGetCategoryCachedImpl("ResponderIntegrityProtection", &finishedDeliveringPresses___s_category) + 8);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                if (v10)
                {
                  v15 = MEMORY[0x1E696AEC0];
                  v16 = v10;
                  v17 = objc_opt_class();
                  v18 = NSStringFromClass(v17);
                  v19 = [v15 stringWithFormat:@"<%@: %p>", v18, v16];

                  v7 = v28;
                  v8 = v27;
                }

                else
                {
                  v19 = @"(nil)";
                }

                *buf = 138412546;
                v39 = v19;
                v40 = 2112;
                v41 = v12;
                _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Received inconsistent presses began and ended calls for press %@:\n%@", buf, 0x16u);
              }

              v5 = v13;
              v4 = v29;
            }

            [(NSMapTable *)self->_pressBeganRecords removeObjectForKey:v10];
          }

          else
          {
            __rip_break_invalid_ended__(v10);
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v7);
    }

LABEL_32:
  }
}

- (void)responder:(id)a3 class:(Class)a4 receivedPresses:(id)a5 inPhase:(int64_t)a6 withEvent:(id)a7
{
  deliveryStack = self->_deliveryStack;
  v14 = a7;
  v15 = a5;
  v16 = a3;
  if (![(NSMutableArray *)deliveryStack count])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UIResponderIntegrityProtection.m" lineNumber:254 description:@"No delivery record found but we are receiving presses methods."];
  }

  v18 = [(NSMutableArray *)self->_deliveryStack lastObject];
  [v18 responder:v16 class:a4 receivedPresses:v15 inPhase:a6 withEvent:v14];
}

@end