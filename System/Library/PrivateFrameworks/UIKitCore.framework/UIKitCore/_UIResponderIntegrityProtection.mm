@interface _UIResponderIntegrityProtection
+ (id)rip;
- (_UIResponderIntegrityProtection)init;
- (void)finishedDeliveringPresses;
- (void)responder:(id)responder class:(Class)class receivedPresses:(id)presses inPhase:(int64_t)phase withEvent:(id)event;
- (void)startDeliveringPresses:(id)presses inPhase:(int64_t)phase withEvent:(id)event;
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

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    pressBeganRecords = v2->_pressBeganRecords;
    v2->_pressBeganRecords = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (void)startDeliveringPresses:(id)presses inPhase:(int64_t)phase withEvent:(id)event
{
  eventCopy = event;
  pressesCopy = presses;
  v10 = [[_UIRIPDeliveryRecord alloc] initWithPresses:pressesCopy inPhase:phase withEvent:eventCopy];

  [(NSMutableArray *)self->_deliveryStack addObject:v10];
}

- (void)finishedDeliveringPresses
{
  v44 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_deliveryStack count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIResponderIntegrityProtection.m" lineNumber:222 description:@"No delivery record found. This indicates imbalanced calls of startDeliveringPresses:inPhase:withEvent: and finishDeliveringPresses."];
  }

  lastObject = [(NSMutableArray *)self->_deliveryStack lastObject];
  [(NSMutableArray *)self->_deliveryStack removeLastObject];
  if (![lastObject phase])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    presses = [lastObject presses];
    v20 = [presses countByEnumeratingWithState:&v34 objects:v43 count:16];
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
            objc_enumerationMutation(presses);
          }

          v24 = *(*(&v34 + 1) + 8 * i);
          v25 = [(NSMapTable *)self->_pressBeganRecords objectForKey:v24];
          if (v25)
          {
            __rip_break_invalid_began__(lastObject, v25, v24);
          }

          [(NSMapTable *)self->_pressBeganRecords setObject:lastObject forKey:v24];
        }

        v21 = [presses countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v21);
    }

    goto LABEL_32;
  }

  if ([lastObject phase] == 3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    presses = [lastObject presses];
    v6 = [presses countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      v29 = lastObject;
      v27 = *v31;
      do
      {
        v9 = 0;
        v28 = v7;
        do
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(presses);
          }

          v10 = *(*(&v30 + 1) + 8 * v9);
          v11 = [(NSMapTable *)self->_pressBeganRecords objectForKey:v10];
          if (v11)
          {
            v12 = [lastObject diffToRecord:v11 press:v10];
            if (v12)
            {
              v13 = presses;
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

              presses = v13;
              lastObject = v29;
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
        v7 = [presses countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v7);
    }

LABEL_32:
  }
}

- (void)responder:(id)responder class:(Class)class receivedPresses:(id)presses inPhase:(int64_t)phase withEvent:(id)event
{
  deliveryStack = self->_deliveryStack;
  eventCopy = event;
  pressesCopy = presses;
  responderCopy = responder;
  if (![(NSMutableArray *)deliveryStack count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIResponderIntegrityProtection.m" lineNumber:254 description:@"No delivery record found but we are receiving presses methods."];
  }

  lastObject = [(NSMutableArray *)self->_deliveryStack lastObject];
  [lastObject responder:responderCopy class:class receivedPresses:pressesCopy inPhase:phase withEvent:eventCopy];
}

@end