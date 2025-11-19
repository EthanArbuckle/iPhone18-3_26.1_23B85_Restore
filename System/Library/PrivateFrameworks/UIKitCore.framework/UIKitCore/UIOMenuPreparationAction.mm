@interface UIOMenuPreparationAction
@end

@implementation UIOMenuPreparationAction

void __58___UIOMenuPreparationAction_initWithMenu_responseHandler___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:a1[6] object:a1[4] file:@"_UIOMenuPreparationAction.m" lineNumber:57 description:@"We should've never received a response that isn't a UIOMenuPreparationAction"];
  }
}

void __64___UIOMenuPreparationAction_handleClientActionToOverlayService___block_invoke(uint64_t *a1, void *a2)
{
  v9 = a2;
  if ([a1[4] canSendResponse])
  {
    v3 = [[_UIOMenuPreparationResponse alloc] initWithPreparedMenu:v9];
    v4 = [(_UIOMenuPreparationResponse *)v3 preparedMenu];

    if (!v4)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = a1[6];
      v7 = a1[4];
      v8 = [(_UIOMenuPreparationResponse *)v3 preparedMenu];
      [v5 handleFailureInMethod:v6 object:v7 file:@"_UIOMenuPreparationAction.m" lineNumber:74 description:{@"Prepared menu is not encoded correctly %@.", v8}];
    }

    [a1[4] sendResponse:v3];
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [(_UIOMenuPreparationResponse *)v3 handleFailureInMethod:a1[6] object:a1[4] file:@"_UIOMenuPreparationAction.m" lineNumber:77 description:@"Unable to send response back to the server (%@)", a1[5]];
  }
}

@end