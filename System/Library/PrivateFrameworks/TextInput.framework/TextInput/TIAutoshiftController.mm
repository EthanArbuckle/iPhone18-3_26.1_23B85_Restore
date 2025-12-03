@interface TIAutoshiftController
- (BOOL)isSelectionAtSentenceAutoshiftBoundaryWithDocumentState:(id)state inputManagerState:(id)managerState;
- (TIAutoshiftController)initWithTextInputTraits:(id)traits;
- (unint64_t)actionForDocumentState:(id)state inputMangerState:(id)mangerState;
@end

@implementation TIAutoshiftController

- (BOOL)isSelectionAtSentenceAutoshiftBoundaryWithDocumentState:(id)state inputManagerState:(id)managerState
{
  if (!managerState)
  {
    v22 = v4;
    v23 = v5;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    contextBeforeInput = [state contextBeforeInput];
    v8 = [contextBeforeInput length];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __99__TIAutoshiftController_isSelectionAtSentenceAutoshiftBoundaryWithDocumentState_inputManagerState___block_invoke;
    v13[3] = &unk_1E6F4D748;
    v13[4] = &v14;
    v13[5] = &v18;
    [contextBeforeInput _reverseEnumerateLongCharactersInRange:0 usingBlock:{v8, v13}];
    v9 = v19[3];
    if (v9 > 2)
    {
      v10 = 1;
LABEL_17:

      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v18, 8);
      return v10;
    }

    v11 = *(v15 + 6);
    v10 = 1;
    if (v11 <= 0x3F)
    {
      if (((1 << v11) & 0x100000401) != 0)
      {
        goto LABEL_17;
      }

      if (((1 << v11) & 0x8000400200000000) != 0)
      {
        v10 = v9 != 0;
        goto LABEL_17;
      }
    }

    v10 = v11 - 160 <= 0x1F && ((1 << (v11 + 96)) & 0x80000003) != 0;
    goto LABEL_17;
  }

  return [managerState nextInputWouldStartSentence];
}

uint64_t __99__TIAutoshiftController_isSelectionAtSentenceAutoshiftBoundaryWithDocumentState_inputManagerState___block_invoke(uint64_t result, int a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  if ((a2 & 0xFFFFFF7F) == 0x20 && (v3 = *(*(result + 40) + 8), v4 = *(v3 + 24), v4 <= 2))
  {
    *(v3 + 24) = v4 + 1;
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

- (unint64_t)actionForDocumentState:(id)state inputMangerState:(id)mangerState
{
  stateCopy = state;
  mangerStateCopy = mangerState;
  textInputTraits = [(TIAutoshiftController *)self textInputTraits];
  keyboardType = [textInputTraits keyboardType];

  if (keyboardType <= 0xD && ((0x2930u >> keyboardType) & 1) != 0)
  {
    goto LABEL_3;
  }

  if (![(TIAutoshiftController *)self isEnabled])
  {
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  textInputTraits2 = [(TIAutoshiftController *)self textInputTraits];
  if ([textInputTraits2 autocapitalizationType] == 1)
  {
    markedText = [stateCopy markedText];
    v13 = [markedText length];

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (!stateCopy)
  {
LABEL_3:
    v10 = 0;
    goto LABEL_8;
  }

  textInputTraits3 = [(TIAutoshiftController *)self textInputTraits];
  autocapitalizationType = [textInputTraits3 autocapitalizationType];

  if (autocapitalizationType == 1)
  {
    contextBeforeInput = [stateCopy contextBeforeInput];
    _lastLongCharacter = [contextBeforeInput _lastLongCharacter];

    if ((_lastLongCharacter > 0x20 || ((1 << _lastLongCharacter) & 0x100000401) == 0) && _lastLongCharacter != 160)
    {
      goto LABEL_21;
    }

LABEL_20:
    v10 = 3;
    goto LABEL_8;
  }

  if (autocapitalizationType == 3)
  {
    goto LABEL_20;
  }

  if (autocapitalizationType != 2)
  {
LABEL_21:
    v10 = 4;
    goto LABEL_8;
  }

  if ([(TIAutoshiftController *)self isSelectionAtSentenceAutoshiftBoundaryWithDocumentState:stateCopy inputManagerState:mangerStateCopy])
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

LABEL_8:

  return v10;
}

- (TIAutoshiftController)initWithTextInputTraits:(id)traits
{
  traitsCopy = traits;
  v9.receiver = self;
  v9.super_class = TIAutoshiftController;
  v6 = [(TIAutoshiftController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textInputTraits, traits);
  }

  return v7;
}

@end