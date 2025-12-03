@interface TSDEditorController
- (BOOL)anyEditorProhibitsAction:(SEL)action;
- (TSDEditorController)init;
- (TSDEditorController)initWithDocumentRoot:(id)root;
- (id)currentEditorsConformingToProtocol:(id)protocol;
- (id)currentEditorsOfClass:(Class)class;
- (id)editorForEditAction:(SEL)action withSender:(id)sender response:(int *)response;
- (id)mostSpecificCurrentEditorOfClass:(Class)class;
- (id)mostSpecificCurrentEditorOfClass:(Class)class conformingToProtocol:(id)protocol;
- (void)dealloc;
- (void)didChangeCurrentEditorsWhenCommittingInspectorChanges;
- (void)editorDidChangeSelection:(id)selection withSelectionFlags:(unint64_t)flags;
- (void)editorDidChangeSelectionAndWantsKeyboard:(id)keyboard withSelectionFlags:(unint64_t)flags;
- (void)editorSelectionWasForciblyChanged:(id)changed;
- (void)endTransaction;
- (void)enumerateEditorsOnStackUsingBlock:(id)block;
- (void)notifyResignedTextInputEditors;
- (void)p_didChangeCurrentEditors;
- (void)p_didChangeTextInputEditor;
- (void)p_setTextInputEditor:(id)editor;
- (void)p_willChangeCurrentEditorsWithNewEditors:(id)editors;
- (void)p_willChangeTextInputEditor;
- (void)popEditor:(id)editor;
- (void)popEditor:(id)editor andPushTextInputEditor:(id)inputEditor;
- (void)popToEditor:(id)editor;
- (void)pushEditor:(id)editor;
- (void)setTextInputEditor:(id)editor;
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController init]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 84, @"Use the designated initializer."}];
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Use the designated initializer.", "-[TSDEditorController init]"), 0}]);
  }

  return result;
}

- (TSDEditorController)initWithDocumentRoot:(id)root
{
  v8.receiver = self;
  v8.super_class = TSDEditorController;
  v4 = [(TSDEditorController *)&v8 init];
  if (v4)
  {
    if (!root)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController initWithDocumentRoot:]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 94, @"invalid nil value for '%s'", "docRoot"}];
    }

    v4->mDocumentRoot = root;
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
  reverseObjectEnumerator = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [(TSDEditorController *)self popEditor:v8];
        if (objc_opt_respondsToSelector())
        {
          [v8 teardown];
        }
      }

      v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)setTextInputEditor:(id)editor
{
  if (!editor)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController setTextInputEditor:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 170, @"invalid nil value for '%s'", "newTextInputEditor"}];
  }

  if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editor]== 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController setTextInputEditor:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 171, @"can't set an editor to be the text input editor if it isn't on the stack"}];
  }

  if (editor)
  {
    [(TSDEditorController *)self p_setTextInputEditor:editor];
  }

  [(TSDEditorController *)self notifyResignedTextInputEditors];
}

- (id)editorForEditAction:(SEL)action withSender:(id)sender response:(int *)response
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v9)
  {
    v11 = 0;
    if (!response)
    {
      return v11;
    }

    goto LABEL_13;
  }

  v10 = v9;
  responseCopy = response;
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
      objc_enumerationMutation(reverseObjectEnumerator);
    }

    v16 = *(*(&v19 + 1) + 8 * v14);
    if (objc_opt_respondsToSelector())
    {
      LODWORD(v9) = [v16 canPerformEditorAction:action withSender:sender];
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
      v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      v10 = v9;
      v13 = v15;
      if (v9)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  response = responseCopy;
  if (responseCopy)
  {
LABEL_13:
    *response = v9;
  }

  return v11;
}

- (BOOL)anyEditorProhibitsAction:(SEL)action
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 shouldProhibitAction:action])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)pushEditor:(id)editor
{
  if (!editor)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController pushEditor:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 260, @"invalid nil value for '%s'", "newEditor"}];
  }

  if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editor]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController pushEditor:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 261, @"shouldn't push the same editor twice"}];
  }

  v9 = [(NSMutableArray *)self->mEditorStack arrayByAddingObject:editor];
  if (editor)
  {
    v10 = v9;
    if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editor]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(TSDEditorController *)self p_willChangeCurrentEditorsWithNewEditors:v10];
      [(NSMutableArray *)self->mEditorStack addObject:editor];
      if (objc_opt_respondsToSelector())
      {
        [editor didBecomeCurrentEditor];
      }

      [(TSDEditorController *)self p_didChangeCurrentEditors];
      if (![(TSDEditorController *)self textInputEditor])
      {
        [(TSDEditorController *)self p_setTextInputEditor:editor];
      }
    }
  }

  [(TSDEditorController *)self notifyResignedTextInputEditors];
}

- (void)popEditor:(id)editor
{
  if (!editor)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popEditor:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 293, @"invalid nil value for '%s'", "poppedEditor"}];
  }

  if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editor]== 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popEditor:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 294, @"shouldn't pop an editor that isn't on the stack"}];
  }

  if (editor)
  {
    v9 = [(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editor];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
      [(TSDEditorController *)self p_willChangeCurrentEditorsWithNewEditors:[(NSMutableArray *)self->mEditorStack subarrayWithRange:0, v9]];
      textInputEditor = [(TSDEditorController *)self textInputEditor];
      if (textInputEditor && [(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:textInputEditor]>= v10)
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

        lastObject = [(NSMutableArray *)self->mEditorStack lastObject];
        if (objc_opt_respondsToSelector())
        {
          [lastObject willResignCurrentEditor];
        }

        [(NSMutableArray *)self->mEditorStack removeLastObject];
      }

      while (lastObject != editor);
      [(TSDEditorController *)self p_didChangeCurrentEditors];
    }
  }

  [(TSDEditorController *)self notifyResignedTextInputEditors];
}

- (void)popEditor:(id)editor andPushTextInputEditor:(id)inputEditor
{
  if (!editor)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popEditor:andPushTextInputEditor:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 354, @"invalid nil value for '%s'", "oldEditor"}];
  }

  if ([(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editor]== 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popEditor:andPushTextInputEditor:]"];
    [currentHandler2 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 355, @"shouldn't pop an editor that isn't on the stack"}];
  }

  if (editor)
  {
    v11 = [(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editor];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      -[TSDEditorController p_willChangeCurrentEditorsWithNewEditors:](self, "p_willChangeCurrentEditorsWithNewEditors:", [-[NSMutableArray subarrayWithRange:](self->mEditorStack subarrayWithRange:{0, v11), "arrayByAddingObject:", inputEditor}]);
      [(NSMutableArray *)self->mEditorStack insertObject:inputEditor atIndex:v12];
      if (objc_opt_respondsToSelector())
      {
        [inputEditor didBecomeCurrentEditor];
      }

      [(TSDEditorController *)self p_setTextInputEditor:inputEditor];
      v13 = [(NSMutableArray *)self->mEditorStack count]+ 1;
      do
      {
        if (!--v13)
        {
          break;
        }

        lastObject = [(NSMutableArray *)self->mEditorStack lastObject];
        if (objc_opt_respondsToSelector())
        {
          [lastObject willResignCurrentEditor];
        }

        [(NSMutableArray *)self->mEditorStack removeLastObject];
      }

      while (lastObject != editor);
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

- (void)enumerateEditorsOnStackUsingBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v14 count:16];
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
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      (*(block + 2))(block, *(*(&v9 + 1) + 8 * v8), &v13);
      if (v13)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v14 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (id)currentEditorsOfClass:(Class)class
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

- (id)mostSpecificCurrentEditorOfClass:(Class)class
{
  v16 = *MEMORY[0x277D85DE8];
  if (class)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
    v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      if (objc_opt_isKindOfClass())
      {
        return v8;
      }

      if (v5 == ++v7)
      {
        v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)mostSpecificCurrentEditorOfClass:(Class)class conformingToProtocol:(id)protocol
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->mEditorStack reverseObjectEnumerator];
  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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
      objc_enumerationMutation(reverseObjectEnumerator);
    }

    v11 = *(*(&v13 + 1) + 8 * v10);
    if (!class || (objc_opt_isKindOfClass()) && ([v11 conformsToProtocol:protocol])
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)currentEditorsConformingToProtocol:(id)protocol
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
        if ([v11 conformsToProtocol:protocol])
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

- (void)popToEditor:(id)editor
{
  if (!editor)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popToEditor:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 521, @"invalid nil value for '%s'", "editor"}];
  }

  v7 = [(NSMutableArray *)self->mEditorStack indexOfObjectIdenticalTo:editor];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController popToEditor:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"];

    [currentHandler2 handleFailureInFunction:v9 file:v10 lineNumber:524 description:{@"can't popToEditor:, that editor isn't in the stack"}];
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

- (void)editorDidChangeSelection:(id)selection withSelectionFlags:(unint64_t)flags
{
  if (!selection)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController editorDidChangeSelection:withSelectionFlags:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 574, @"invalid nil value for '%s'", "editor"}];
  }

  v9 = objc_alloc(MEMORY[0x277CBEAC0]);
  v10 = [v9 initWithObjectsAndKeys:{selection, @"TSDEditorControllerEditorKey", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", flags), @"TSDEditorControllerSelectionFlagsKey", 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)editorSelectionWasForciblyChanged:(id)changed
{
  if (!changed)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController editorSelectionWasForciblyChanged:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 589, @"invalid nil value for '%s'", "editor"}];
  }

  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = [v7 initWithObjectsAndKeys:{changed, @"TSDEditorControllerEditorKey", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 0), @"TSDEditorControllerSelectionFlagsKey", 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)editorDidChangeSelectionAndWantsKeyboard:(id)keyboard withSelectionFlags:(unint64_t)flags
{
  if (!keyboard)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDEditorController editorDidChangeSelectionAndWantsKeyboard:withSelectionFlags:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDEditorController.m"), 604, @"invalid nil value for '%s'", "editor"}];
  }

  v9 = objc_alloc(MEMORY[0x277CBEAC0]);
  v10 = [v9 initWithObjectsAndKeys:{keyboard, @"TSDEditorControllerEditorKey", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", flags), @"TSDEditorControllerSelectionFlagsKey", 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)p_setTextInputEditor:(id)editor
{
  if (self->mTextInputEditor != editor)
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

    self->mTextInputEditor = editor;
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

- (void)p_willChangeCurrentEditorsWithNewEditors:(id)editors
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (!self->mNotifiedWillChangeCurrentEditors)
  {
    if (editors && !self->mTransactionLevel)
    {
      v5 = @"TSDEditorControllerNewEditorsKey";
      v6[0] = editors;
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