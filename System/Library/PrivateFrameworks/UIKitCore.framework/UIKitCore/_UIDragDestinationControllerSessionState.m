@interface _UIDragDestinationControllerSessionState
- (id)description;
@end

@implementation _UIDragDestinationControllerSessionState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self)
  {
    state = self->_state;
    if (state <= 4)
    {
      if (state > 1)
      {
        if (state == 2)
        {
          v8 = @"pendingReordering";
        }

        else if (state == 3)
        {
          v8 = @"pendingDragging";
        }

        else
        {
          v8 = @"reordering";
        }

        goto LABEL_25;
      }

      if (state)
      {
        if (state == 1)
        {
          v8 = @"pendingProposalQuery";
          goto LABEL_25;
        }

LABEL_30:
        v9 = 0;
        v8 = @"<unknown>";
        goto LABEL_26;
      }

      v9 = 0;
      v8 = @"initial";
    }

    else
    {
      if (state <= 7)
      {
        if (state == 5)
        {
          v8 = @"dragging";
        }

        else if (state == 6)
        {
          v8 = @"pendingMultiItemDrop";
        }

        else
        {
          v8 = @"committing";
        }

        goto LABEL_25;
      }

      if (state == 8)
      {
        v8 = @"cancelling";
        goto LABEL_25;
      }

      if (state != 9)
      {
        if (state == 10)
        {
          v8 = @"waitingForResume";
LABEL_25:
          v9 = 1;
          goto LABEL_26;
        }

        goto LABEL_30;
      }

      v9 = 0;
      v8 = @"suspended";
    }

LABEL_26:
    v10 = vdup_n_s32(state);
    v11 = vorr_s8(vceq_s32(v10, 0x200000003), vceq_s32(v10, 0x400000005));
    goto LABEL_27;
  }

  v9 = 0;
  v11 = 0;
  v8 = @"initial";
LABEL_27:
  v12 = [v3 stringWithFormat:@"<%@: %p state = %@; isActive = %d; isDragging = %d; isReordering = %d>", v5, self, v8, v9, v11.i8[0] & 1, v11.i8[4] & 1];;

  return v12;
}

@end