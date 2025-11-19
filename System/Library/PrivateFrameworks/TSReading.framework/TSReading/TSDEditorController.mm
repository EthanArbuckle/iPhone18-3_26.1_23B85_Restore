@interface TSDEditorController
- (BOOL)anyEditorProhibitsAction:(SEL)a3;
- (TSDEditorController)init;
- (TSDEditorController)initWithDocumentRoot:(id)a3;
- (id)currentEditorsConformingToProtocol:(id)a3;
- (id)currentEditorsOfClass:(Class)a3;
- (id)editorForEditAction:(SEL)a3 withSender:(id)a4 response:(int *)a5;
- (id)mostSpecificCurrentEditorOfClass:(Class)a3;
- (id)mostSpecificCurrentEditorOfClass:(Class)a3 conformingToProtocol:(id)a4;
- (void)dealloc;
- (void)didChangeCurrentEditorsWhenCommittingInspectorChanges;
- (void)editorDidChangeSelection:(id)a3 withSelectionFlags:(unint64_t)a4;
- (void)editorDidChangeSelectionAndWantsKeyboard:(id)a3 withSelectionFlags:(unint64_t)a4;
- (void)editorSelectionWasForciblyChanged:(id)a3;
- (void)endTransaction;
- (void)enumerateEditorsOnStackUsingBlock:(id)a3;
- (void)notifyResignedTextInputEditors;
- (void)p_didChangeCurrentEditors;
- (void)p_didChangeTextInputEditor;
- (void)p_setTextInputEditor:(id)a3;
- (void)p_willChangeCurrentEditorsWithNewEditors:(id)a3;
- (void)p_willChangeTextInputEditor;
- (void)popEditor:(id)a3;
- (void)popEditor:(id)a3 andPushTextInputEditor:(id)a4;
- (void)popToEditor:(id)a3;
- (void)pushEditor:(id)a3;
- (void)setTextInputEditor:(id)a3;
- (void)teardown;
@end

@implementation TSDEditorController

- (TSDEditorController)init
{
  v5.receiver = self;
  v5.super_class = TSDEditorController;
  result = [(TSDEditorController *)&v5 init];
  if (result)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController init]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 84, @"Use the designated initializer."}];
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Use the designated initializer.", "-[TSDEditorController init]"), 0}]);
  }

  return result;
}

- (TSDEditorController)initWithDocumentRoot:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSDEditorController;
  v4 = [(TSDEditorController *)&v8 init];
  if (v4)
  {
    if (!a3)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController initWithDocumentRoot:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 94, @"invalid nil value for '%s'", "docRoot"}];
    }

    v4->mDocumentRoot = a3;
    v4->mEditorStack = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4->mResignedTextInputEditors = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4->mInspectorPropertyValueMap = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v4;
}

- (void)teardown
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [(TSDEditorController *)self popEditor:v8];
        if (objc_opt_respondsToSelector())
        {
          [v8 teardown];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  self->mEditorStack = 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDEditorController;
  [(TSDEditorController *)&v3 dealloc];
}

- (void)setTextInputEditor:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController setTextInputEditor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 170, @"invalid nil value for '%s'", "newTextInputEditor"}];
  }

  if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:a3]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController setTextInputEditor:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 171, @"can't set an editor to be the text input editor if it isn't on the stack"}];
  }

  if (a3)
  {
    [(TSDEditorController *)self p_setTextInputEditor:a3];
  }

  [(TSDEditorController *)self notifyResignedTextInputEditors];
}

- (id)editorForEditAction:(SEL)a3 withSender:(id)a4 response:(int *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v9)
  {
    v11 = 0;
    if (!a5)
    {
      return v11;
    }

    goto LABEL_13;
  }

  v10 = v9;
  v18 = a5;
  v11 = 0;
  v12 = *v20;
  v13 = &selRef_animateDismissWithContext_;
LABEL_3:
  v14 = 0;
  v15 = v13;
  while (1)
  {
    if (*v20 != v12)
    {
      objc_enumerationMutation(v8);
    }

    v16 = *(*(&v19 + 1) + 8 * v14);
    if (objc_opt_respondsToSelector())
    {
      LODWORD(v9) = [v16 canPerformEditorAction:a3 withSender:a4];
      if (v9 == 1)
      {
        v11 = v16;
      }

      if (v9)
      {
        break;
      }
    }

    if (v10 == ++v14)
    {
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v10 = v9;
      v13 = v15;
      if (v9)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  a5 = v18;
  if (v18)
  {
LABEL_13:
    *a5 = v9;
  }

  return v11;
}

- (BOOL)anyEditorProhibitsAction:(SEL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 shouldProhibitAction:a3])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (void)pushEditor:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController pushEditor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 260, @"invalid nil value for '%s'", "newEditor"}];
  }

  if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:a3]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController pushEditor:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 261, @"shouldn't push the same editor twice"}];
  }

  v9 = [(NSMutableArray *)self->mEditorStack arrayByAddingObject:a3];
  if (a3)
  {
    v10 = v9;
    if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:a3]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(TSDEditorController *)self p_willChangeCurrentEditorsWithNewEditors:v10];
      [(NSMutableArray *)self->mEditorStack addObject:a3];
      if (objc_opt_respondsToSelector())
      {
        [a3 didBecomeCurrentEditor];
      }

      [(TSDEditorController *)self p_didChangeCurrentEditors];
      if (![(TSDEditorController *)self textInputEditor])
      {
        [(TSDEditorController *)self p_setTextInputEditor:a3];
      }
    }
  }

  [(TSDEditorController *)self notifyResignedTextInputEditors];
}

- (void)popEditor:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popEditor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 293, @"invalid nil value for '%s'", "poppedEditor"}];
  }

  if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:a3]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popEditor:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 294, @"shouldn't pop an editor that isn't on the stack"}];
  }

  if (a3)
  {
    v9 = [(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:a3];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
      [(TSDEditorController *)self p_willChangeCurrentEditorsWithNewEditors:[(NSMutableArray *)self->mEditorStack subarrayWithRange:0, v9]];
      v11 = [(TSDEditorController *)self textInputEditor];
      if (v11 && [(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:v11]>= v10)
      {
        if (v10)
        {
          v12 = [(NSMutableArray *)self->mEditorStack objectAtIndex:v10 - 1];
        }

        else
        {
          v12 = 0;
        }

        [(TSDEditorController *)self p_setTextInputEditor:v12];
      }

      v13 = [(NSMutableArray *)self->mEditorStack count]+ 1;
      do
      {
        if (!--v13)
        {
          break;
        }

        v14 = [(NSMutableArray *)self->mEditorStack lastObject];
        if (objc_opt_respondsToSelector())
        {
          [v14 willResignCurrentEditor];
        }

        [(NSMutableArray *)self->mEditorStack removeLastObject];
      }

      while (v14 != a3);
      [(TSDEditorController *)self p_didChangeCurrentEditors];
    }
  }

  [(TSDEditorController *)self notifyResignedTextInputEditors];
}

- (void)popEditor:(id)a3 andPushTextInputEditor:(id)a4
{
  if (!a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popEditor:andPushTextInputEditor:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 354, @"invalid nil value for '%s'", "oldEditor"}];
  }

  if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:a3]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popEditor:andPushTextInputEditor:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 355, @"shouldn't pop an editor that isn't on the stack"}];
  }

  if (a3)
  {
    v11 = [(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:a3];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      -[TSDEditorController p_willChangeCurrentEditorsWithNewEditors:](self, "p_willChangeCurrentEditorsWithNewEditors:", [-[NSMutableArray subarrayWithRange:](self->mEditorStack subarrayWithRange:{0, v11), "arrayByAddingObject:", a4}]);
      [(NSMutableArray *)self->mEditorStack insertObject:a4 atIndex:v12];
      if (objc_opt_respondsToSelector())
      {
        [a4 didBecomeCurrentEditor];
      }

      [(TSDEditorController *)self p_setTextInputEditor:a4];
      v13 = [(NSMutableArray *)self->mEditorStack count]+ 1;
      do
      {
        if (!--v13)
        {
          break;
        }

        v14 = [(NSMutableArray *)self->mEditorStack lastObject];
        if (objc_opt_respondsToSelector())
        {
          [v14 willResignCurrentEditor];
        }

        [(NSMutableArray *)self->mEditorStack removeLastObject];
      }

      while (v14 != a3);
      [(TSDEditorController *)self p_didChangeCurrentEditors];
    }
  }

  [(TSDEditorController *)self notifyResignedTextInputEditors];
}

- (void)endTransaction
{
  mTransactionLevel = self->mTransactionLevel;
  if (mTransactionLevel || (v4 = [MEMORY[0x277D6C290] currentHandler], v5 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDEditorController endTransaction]"), objc_msgSend(v4, "handleFailureInFunction:file:lineNumber:description:", v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 407, @"unbalanced endTransaction"), (mTransactionLevel = self->mTransactionLevel) != 0))
  {
    v6 = mTransactionLevel - 1;
    self->mTransactionLevel = v6;
    if (!v6)
    {
      if (self->mNotifiedWillChangeTextInputEditor || self->mDidChangeTextInputEditor)
      {
        [(TSDEditorController *)self p_willChangeTextInputEditor];
        [(TSDEditorController *)self p_didChangeTextInputEditor];
        self->mNotifiedWillChangeTextInputEditor = 0;
        self->mDidChangeTextInputEditor = 0;
      }

      if (self->mNotifiedWillChangeCurrentEditors || self->mDidChangeCurrentEditors)
      {
        [(TSDEditorController *)self p_willChangeCurrentEditors];
        [(TSDEditorController *)self p_didChangeCurrentEditors];
        self->mNotifiedWillChangeCurrentEditors = 0;
        self->mDidChangeCurrentEditors = 0;
      }
    }
  }
}

- (void)notifyResignedTextInputEditors
{
  if (!self->mIsReentrantResigningTextInputEditors)
  {
    self->mIsReentrantResigningTextInputEditors = 1;
    if ([(NSMutableArray *)self->mResignedTextInputEditors count])
    {
      v3 = 0;
      do
      {
        v4 = [(NSMutableArray *)self->mResignedTextInputEditors objectAtIndex:v3];
        if (objc_opt_respondsToSelector())
        {
          [v4 didResignTextInputEditor];
        }

        ++v3;
      }

      while (v3 < [(NSMutableArray *)self->mResignedTextInputEditors count]);
    }

    [(NSMutableArray *)self->mResignedTextInputEditors removeAllObjects];
    self->mIsReentrantResigningTextInputEditors = 0;
  }
}

- (void)enumerateEditorsOnStackUsingBlock:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(v4);
      }

      (*(a3 + 2))(a3, *(*(&v9 + 1) + 8 * v8), &v13);
      if (v13)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (id)currentEditorsOfClass:(Class)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mEditorStack = self->mEditorStack;
  v6 = [(NSMutableArray *)mEditorStack countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mEditorStack);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)mEditorStack countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)mostSpecificCurrentEditorOfClass:(Class)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v6 = *v12;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      if (objc_opt_isKindOfClass())
      {
        return v8;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_4;
        }

        return 0;
      }
    }
  }

  else
  {
    mEditorStack = self->mEditorStack;

    return [(NSMutableArray *)mEditorStack lastObject];
  }
}

- (id)mostSpecificCurrentEditorOfClass:(Class)a3 conformingToProtocol:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v14;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v14 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v13 + 1) + 8 * v10);
    if (!a3 || (objc_opt_isKindOfClass()) && ([v11 conformsToProtocol:a4])
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)currentEditorsConformingToProtocol:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mEditorStack = self->mEditorStack;
  v7 = [(NSMutableArray *)mEditorStack countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(mEditorStack);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 conformsToProtocol:a3])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)mEditorStack countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)popToEditor:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popToEditor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 521, @"invalid nil value for '%s'", "editor"}];
  }

  v7 = [(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:a3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popToEditor:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:524 description:{@"can't popToEditor:, that editor isn't in the stack"}];
  }

  else
  {
    v11 = v7 + 1;
    if (v7 + 1 < [(NSMutableArray *)self->mEditorStack count])
    {
      v12 = [(NSMutableArray *)self->mEditorStack objectAtIndex:v11];

      [(TSDEditorController *)self popEditor:v12];
    }
  }
}

- (void)didChangeCurrentEditorsWhenCommittingInspectorChanges
{
  mChangingCurrentEditorsWhenCommittingInspectorChangesCount = self->mChangingCurrentEditorsWhenCommittingInspectorChangesCount;
  if (mChangingCurrentEditorsWhenCommittingInspectorChangesCount || (v4 = [MEMORY[0x277D6C290] currentHandler], v5 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDEditorController didChangeCurrentEditorsWhenCommittingInspectorChanges]"), objc_msgSend(v4, "handleFailureInFunction:file:lineNumber:description:", v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 563, @"Call to didChangeCurrentEditorsWhenCommittingInspectorChanges without a matching willChangeCurrentEditorsWhenCommittingInspectorChanges"), (mChangingCurrentEditorsWhenCommittingInspectorChangesCount = self->mChangingCurrentEditorsWhenCommittingInspectorChangesCount) != 0))
  {
    self->mChangingCurrentEditorsWhenCommittingInspectorChangesCount = mChangingCurrentEditorsWhenCommittingInspectorChangesCount - 1;
  }
}

- (void)editorDidChangeSelection:(id)a3 withSelectionFlags:(unint64_t)a4
{
  if (!a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController editorDidChangeSelection:withSelectionFlags:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 574, @"invalid nil value for '%s'", "editor"}];
  }

  v9 = objc_alloc(MEMORY[0x277CBEAC0]);
  v10 = [v9 initWithObjectsAndKeys:{a3, @"TSDEditorControllerEditorKey", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", a4), @"TSDEditorControllerSelectionFlagsKey", 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)editorSelectionWasForciblyChanged:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController editorSelectionWasForciblyChanged:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 589, @"invalid nil value for '%s'", "editor"}];
  }

  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = [v7 initWithObjectsAndKeys:{a3, @"TSDEditorControllerEditorKey", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 0), @"TSDEditorControllerSelectionFlagsKey", 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)editorDidChangeSelectionAndWantsKeyboard:(id)a3 withSelectionFlags:(unint64_t)a4
{
  if (!a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController editorDidChangeSelectionAndWantsKeyboard:withSelectionFlags:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 604, @"invalid nil value for '%s'", "editor"}];
  }

  v9 = objc_alloc(MEMORY[0x277CBEAC0]);
  v10 = [v9 initWithObjectsAndKeys:{a3, @"TSDEditorControllerEditorKey", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", a4), @"TSDEditorControllerSelectionFlagsKey", 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)p_setTextInputEditor:(id)a3
{
  if (self->mTextInputEditor != a3)
  {
    [(TSDEditorController *)self p_willChangeTextInputEditor];
    if (self->mTextInputEditor)
    {
      [(NSMutableArray *)self->mResignedTextInputEditors addObject:?];
    }

    if (objc_opt_respondsToSelector())
    {
      [(TSDEditor *)self->mTextInputEditor willResignTextInputEditor];
    }

    self->mTextInputEditor = a3;
    if (objc_opt_respondsToSelector())
    {
      [(TSDEditor *)self->mTextInputEditor didBecomeTextInputEditor];
    }

    [(TSDEditorController *)self p_didChangeTextInputEditor];
  }
}

- (void)p_willChangeTextInputEditor
{
  if (!self->mNotifiedWillChangeTextInputEditor)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    self->mNotifiedWillChangeTextInputEditor = 1;
  }
}

- (void)p_didChangeTextInputEditor
{
  if (self->mTransactionLevel)
  {
    v3 = 1;
    v4 = 40;
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    v3 = 0;
    v4 = 42;
  }

  *(&self->super.isa + v4) = v3;
}

- (void)p_willChangeCurrentEditorsWithNewEditors:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (!self->mNotifiedWillChangeCurrentEditors)
  {
    if (a3 && !self->mTransactionLevel)
    {
      v5 = @"TSDEditorControllerNewEditorsKey";
      v6[0] = a3;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    }

    else
    {
      v4 = 0;
    }

    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    self->mNotifiedWillChangeCurrentEditors = 1;
  }
}

- (void)p_didChangeCurrentEditors
{
  if (self->mTransactionLevel)
  {
    v3 = 1;
    v4 = 41;
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    v3 = 0;
    v4 = 43;
  }

  *(&self->super.isa + v4) = v3;
}

@end