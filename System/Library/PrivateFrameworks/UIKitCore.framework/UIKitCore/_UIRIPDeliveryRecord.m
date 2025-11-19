@interface _UIRIPDeliveryRecord
- (_UIRIPDeliveryRecord)initWithPresses:(id)a3 inPhase:(int64_t)a4 withEvent:(id)a5;
- (id)description;
- (id)diffToRecord:(id)a3 press:(id)a4;
- (void)responder:(id)a3 class:(Class)a4 receivedPresses:(id)a5 inPhase:(int64_t)a6 withEvent:(id)a7;
@end

@implementation _UIRIPDeliveryRecord

- (_UIRIPDeliveryRecord)initWithPresses:(id)a3 inPhase:(int64_t)a4 withEvent:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _UIRIPDeliveryRecord;
  v11 = [(_UIRIPDeliveryRecord *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_presses, a3);
    v12->_phase = a4;
    objc_storeStrong(&v12->_event, a5);
    v13 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    receivers = v12->_receivers;
    v12->_receivers = v13;
  }

  return v12;
}

- (void)responder:(id)a3 class:(Class)a4 receivedPresses:(id)a5 inPhase:(int64_t)a6 withEvent:(id)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v13;
  v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        v20 = [(NSMapTable *)self->_receivers objectForKey:v19];
        if (!v20)
        {
          v20 = objc_opt_new();
          [(NSMapTable *)self->_receivers setObject:v20 forKey:v19];
        }

        v21 = [[_UIRIPReceiver alloc] initWithResponder:v12 class:a4 press:v19 inPhase:a6 withEvent:v14];
        [v20 addObject:v21];
      }

      v16 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"Delivery record for phase %d:\n", self->_phase];
  [v3 appendFormat:@"event delivered:   %@\n", self->_event];
  [v3 appendFormat:@"presses delivered: %@\n", self->_presses];

  return v3;
}

- (id)diffToRecord:(id)a3 press:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_UIRIPDeliveryRecord *)self event];
  v9 = [v6 event];

  if (v8 != v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [(_UIRIPDeliveryRecord *)self event];
    v12 = [v6 event];
    v13 = [v10 stringWithFormat:@"Unable to generate diff for records from different events: %p and %p", v11, v12];

    goto LABEL_67;
  }

  v14 = [(NSMapTable *)self->_receivers objectForKey:v7];
  v15 = [v6[1] objectForKey:v7];
  v16 = v15;
  if (!v14 || !v15)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate diff. Press is not present in both records."];
    goto LABEL_66;
  }

  v17 = MEMORY[0x1E696AD60];
  v18 = _NSStringFromUIPressPhase([(_UIRIPDeliveryRecord *)self phase]);
  v19 = _NSStringFromUIPressPhase([v6 phase]);
  v20 = [v17 stringWithFormat:@"Difference between phase %@ and %@:\n", v18, v19];

  v21 = [v14 differenceFromArray:v16];
  if (![v21 hasChanges])
  {
    v13 = 0;
    goto LABEL_65;
  }

  v67 = self;
  v61 = v7;
  v62 = v6;
  v22 = [v21 removals];
  v23 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v78;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v78 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [v23 addIndex:{objc_msgSend(*(*(&v77 + 1) + 8 * i), "index")}];
      }

      v26 = [v24 countByEnumeratingWithState:&v77 objects:v82 count:16];
    }

    while (v26);
  }

  v72 = v20;

  v60 = v21;
  v29 = [v21 insertions];
  v30 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v31 = v29;
  v32 = [v31 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v74;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v74 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [v30 addIndex:{objc_msgSend(*(*(&v73 + 1) + 8 * j), "index")}];
      }

      v33 = [v31 countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v33);
  }

  v36 = 0;
  v37 = 0;
  v38 = v31;
  v39 = 0;
  v59 = v38;
  v70 = v16;
  v71 = v14;
  v68 = v24;
  v69 = v23;
  v63 = v30;
  while (1)
  {

    if (v36 >= [v14 count] && v37 >= objc_msgSend(v16, "count"))
    {
      break;
    }

    if (v36 >= [v14 count])
    {
      v38 = 0;
    }

    else
    {
      v38 = [v14 objectAtIndexedSubscript:v36];
    }

    if (v37 >= [v16 count])
    {
      v40 = 0;
    }

    else
    {
      v40 = [v16 objectAtIndexedSubscript:v37];
    }

    v41 = [v38 responder];
    v42 = [v40 responder];
    v43 = v42;
    if (v41 == v42)
    {
      v64 = objc_opt_class();
      v44 = objc_opt_class();

      v45 = v64 == v44;
      v14 = v71;
      if (v45)
      {
        __appendDescription(v72, v39, v38, 0);
        v56 = [v38 responder];

        ++v36;
        ++v37;
        goto LABEL_61;
      }
    }

    else
    {
    }

    v46 = [v38 responder];
    v47 = v46;
    if (v46 == v39)
    {

      if (([v23 containsIndex:v37] & 1) == 0)
      {
        ++v37;
        if (([v30 containsIndex:v36] & 1) == 0)
        {
LABEL_59:
          ++v36;
          v56 = v39;
          goto LABEL_61;
        }

        goto LABEL_48;
      }

LABEL_37:
      v65 = 0;
      v49 = @"  --- missing calls in %@ ---\n";
      goto LABEL_38;
    }

    v48 = [v40 responder];

    if (([v23 containsIndex:v37] & 1) == 0)
    {
      ++v37;
      if (([v30 containsIndex:v36] & 1) == 0)
      {
        goto LABEL_59;
      }

      if (v48 == v39)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (v48 == v39)
    {
      goto LABEL_37;
    }

    v65 = 1;
    v49 = @"-#- missing responder in %@ -#-\n";
LABEL_38:
    v50 = _NSStringFromUIPressPhase([(_UIRIPDeliveryRecord *)v67 phase]);
    [v72 appendFormat:v49, v50];

    if ([v23 containsIndex:v37])
    {
      v51 = v40;
      v52 = v39;
      do
      {
        v40 = [v70 objectAtIndexedSubscript:v37];

        __appendDescription(v72, v52, v40, -1);
        v39 = [v40 responder];

        ++v37;
        v51 = v40;
        v52 = v39;
      }

      while (([v69 containsIndex:v37] & 1) != 0);
    }

    if ((v65 & 1) == 0)
    {
      [v72 appendFormat:@"  === end missing calls ===\n"];
      v30 = v63;
      v14 = v71;
      v23 = v69;
      if (([v63 containsIndex:v36] & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_48:
      v66 = 0;
      v53 = @"  +++ additional calls in %@ +++\n";
      goto LABEL_49;
    }

    [v72 appendFormat:@"=#= end missing responder =#=\n"];
    v30 = v63;
    v14 = v71;
    v23 = v69;
    if (([v63 containsIndex:v36] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_46:
    v66 = 1;
    v53 = @"+#+ additional responder in %@ +#+\n";
LABEL_49:
    v54 = _NSStringFromUIPressPhase([(_UIRIPDeliveryRecord *)v67 phase]);
    [v72 appendFormat:v53, v54];

    if ([v30 containsIndex:v36])
    {
      v14 = v71;
      do
      {
        v55 = [v71 objectAtIndexedSubscript:v36];

        __appendDescription(v72, v39, v55, 1);
        v56 = [v55 responder];

        ++v36;
        v38 = v55;
        v39 = v56;
      }

      while (([v30 containsIndex:v36] & 1) != 0);
    }

    else
    {
      v56 = v39;
      v55 = v38;
      v14 = v71;
    }

    v23 = v69;
    if (v66)
    {
      v57 = @"=#= end additional responder =#=\n";
    }

    else
    {
      v57 = @"  === end additional calls ===\n";
    }

    [v72 appendFormat:v57];
    v38 = v55;
LABEL_61:

    v39 = v56;
    v16 = v70;
    v24 = v68;
  }

  v20 = v72;
  v13 = v72;

  v7 = v61;
  v6 = v62;
  v21 = v60;
LABEL_65:

LABEL_66:
LABEL_67:

  return v13;
}

@end