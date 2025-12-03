@interface _UITextStorageDraggableGeometry
- (BOOL)_isActualLink:(id)link;
- (NSTextStorage)textStorage;
- (UITextDragSupporting)view;
- (_UITextStorageDraggableGeometry)initWithView:(id)view textStorage:(id)storage;
- (id)_draggableTextInRange:(id)range;
- (id)_previewProviderForTextInRange:(id)range;
- (id)_targetedPreviewProviderForImage:(id)image inRange:(id)range;
- (id)_targetedPreviewProviderForTextInRange:(id)range dismissing:(BOOL)dismissing overrideLifting:(id)lifting;
- (id)attributedStringsForTextRanges:(id)ranges;
- (id)draggableObjectsForTextRange:(id)range;
- (id)performSameViewDropOperation:(id)operation;
- (id)previewForDroppingTextInRange:(id)range toPosition:(id)position inContainerView:(id)view;
- (id)textRangeForAttachmentInTextRange:(id)range atPoint:(CGPoint)point;
- (id)textRangesForAttachmentsInTextRange:(id)range;
- (void)_renderTextInRange:(id)range image:(id *)image boundingRectangles:(id *)rectangles forLifting:(BOOL)lifting;
@end

@implementation _UITextStorageDraggableGeometry

- (_UITextStorageDraggableGeometry)initWithView:(id)view textStorage:(id)storage
{
  viewCopy = view;
  storageCopy = storage;
  v11.receiver = self;
  v11.super_class = _UITextStorageDraggableGeometry;
  v8 = [(_UITextStorageDraggableGeometry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_view, viewCopy);
    objc_storeWeak(&v9->_textStorage, storageCopy);
  }

  return v9;
}

- (id)textRangesForAttachmentsInTextRange:(id)range
{
  rangeCopy = range;
  v5 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v7 = [WeakRetained _nsrangeForTextRange:rangeCopy];
  v9 = v8;

  v10 = objc_loadWeakRetained(&self->_view);
  LODWORD(WeakRetained) = [v10 allowsDraggingAttachments];

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_textStorage);
    v12 = *off_1E70EC8C8;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __71___UITextStorageDraggableGeometry_textRangesForAttachmentsInTextRange___block_invoke;
    v24[3] = &unk_1E71244C0;
    v24[4] = self;
    v25 = v5;
    [v11 enumerateAttribute:v12 inRange:v7 options:v9 usingBlock:{0, v24}];
  }

  v13 = objc_loadWeakRetained(&self->_textStorage);
  v14 = *off_1E70EC960;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __71___UITextStorageDraggableGeometry_textRangesForAttachmentsInTextRange___block_invoke_2;
  v21 = &unk_1E71244E8;
  selfCopy = self;
  v23 = v5;
  v15 = v5;
  [v13 enumerateAttribute:v14 inRange:v7 options:v9 usingBlock:{0, &v18}];

  v16 = [v15 copy];

  return v16;
}

- (id)textRangeForAttachmentInTextRange:(id)range atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  rangeCopy = range;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__203;
  v28 = __Block_byref_object_dispose__203;
  v29 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v9 = [WeakRetained _nsrangeForTextRange:rangeCopy];
  v11 = v10;

  v12 = objc_loadWeakRetained(&self->_view);
  allowsDraggingAttachments = [v12 allowsDraggingAttachments];

  if (allowsDraggingAttachments && (v14 = objc_loadWeakRetained(&self->_textStorage), v15 = *off_1E70EC8C8, v23[0] = MEMORY[0x1E69E9820], v23[1] = 3221225472, v23[2] = __77___UITextStorageDraggableGeometry_textRangeForAttachmentInTextRange_atPoint___block_invoke, v23[3] = &unk_1E7124510, *&v23[6] = x, *&v23[7] = y, v23[4] = self, v23[5] = &v24, [v14 enumerateAttribute:v15 inRange:v9 options:v11 usingBlock:{0, v23}], v14, (v16 = v25[5]) != 0) && (objc_msgSend(v16, "isEmpty") & 1) == 0 || (v17 = objc_loadWeakRetained(&self->_textStorage), v18 = *off_1E70EC960, v22[0] = MEMORY[0x1E69E9820], v22[1] = 3221225472, v22[2] = __77___UITextStorageDraggableGeometry_textRangeForAttachmentInTextRange_atPoint___block_invoke_2, v22[3] = &unk_1E7124538, *&v22[6] = x, *&v22[7] = y, v22[4] = self, v22[5] = &v24, objc_msgSend(v17, "enumerateAttribute:inRange:options:usingBlock:", v18, v9, v11, 0, v22), v17, (v19 = v25[5]) != 0) && (objc_msgSend(v19, "isEmpty") & 1) == 0)
  {
    v20 = v25[5];
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v20;
}

- (id)draggableObjectsForTextRange:(id)range
{
  rangeCopy = range;
  v5 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v7 = objc_opt_respondsToSelector();

  v8 = objc_loadWeakRetained(&self->_view);
  v9 = v8;
  if (v7)
  {
    v10 = [v8 _rangeOfCustomDraggableObjectsInRange:rangeCopy];

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_view);
      v12 = [v11 _customDraggableObjectsForRange:v10];
      [v5 addObjectsFromArray:v12];

      v13 = objc_loadWeakRetained(&self->_view);
      v14 = [v10 end];
      v15 = [rangeCopy end];
      v16 = [v13 textRangeFromPosition:v14 toPosition:v15];

      v17 = objc_loadWeakRetained(&self->_view);
      start = [v16 start];
      v19 = [v16 end];
      v20 = [v17 comparePosition:start toPosition:v19];

      if (v20 == -1)
      {
        v21 = v16;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = rangeCopy;
    }

    v45 = [(_UITextStorageDraggableGeometry *)self _draggableTextInRange:v21];
    [v5 addObjectsFromArray:v45];

    v44 = v5;
  }

  else
  {
    v22 = [v8 _nsrangeForTextRange:rangeCopy];
    v24 = v23;

    v25 = objc_opt_new();
    v26 = objc_loadWeakRetained(&self->_view);
    allowsDraggingAttachments = [v26 allowsDraggingAttachments];

    if (allowsDraggingAttachments)
    {
      v28 = objc_loadWeakRetained(&self->_textStorage);
      v29 = *off_1E70EC8C8;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke;
      v59[3] = &unk_1E7124588;
      v59[4] = self;
      v60 = v5;
      v61 = v25;
      [v28 enumerateAttribute:v29 inRange:v22 options:v24 usingBlock:{0, v59}];
    }

    v30 = objc_loadWeakRetained(&self->_textStorage);
    v31 = *off_1E70EC960;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke_3;
    v56[3] = &unk_1E7124620;
    v56[4] = self;
    v32 = v25;
    v57 = v32;
    v33 = v5;
    v58 = v33;
    [v30 enumerateAttribute:v31 inRange:v22 options:v24 usingBlock:{0, v56}];

    if ([v32 count])
    {
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke_7;
      v55[3] = &unk_1E7124648;
      v55[4] = self;
      [v32 sortUsingComparator:v55];
      v34 = objc_loadWeakRetained(&self->_textStorage);
      v35 = [v34 attributedSubstringFromRange:{v22, v24}];
      v36 = [v35 mutableCopy];

      v47 = MEMORY[0x1E69E9820];
      v48 = 3221225472;
      v49 = __64___UITextStorageDraggableGeometry_draggableObjectsForTextRange___block_invoke_8;
      v50 = &unk_1E7124670;
      selfCopy = self;
      v37 = v36;
      v52 = v37;
      v53 = v22;
      v54 = v24;
      [v32 enumerateObjectsWithOptions:2 usingBlock:&v47];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      invertedSet = [whitespaceAndNewlineCharacterSet invertedSet];

      if ([v37 length])
      {
        string = [v37 string];
        [string rangeOfCharacterFromSet:invertedSet];
        v42 = v41;

        if (v42)
        {
          [v33 removeAllObjects];
        }
      }
    }

    if ([v33 count])
    {
      v43 = [v33 copy];
    }

    else
    {
      v43 = [(_UITextStorageDraggableGeometry *)self _draggableTextInRange:rangeCopy];
    }

    v44 = v43;
  }

  return v44;
}

- (id)previewForDroppingTextInRange:(id)range toPosition:(id)position inContainerView:(id)view
{
  viewCopy = view;
  v8 = [(_UITextStorageDraggableGeometry *)self _targetedPreviewProviderForTextInRange:range];
  v9 = (v8)[2](v8, viewCopy, 0);

  return v9;
}

- (id)attributedStringsForTextRanges:(id)ranges
{
  rangesCopy = ranges;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(rangesCopy, "count")}];
  WeakRetained = objc_loadWeakRetained(&self->_textStorage);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66___UITextStorageDraggableGeometry_attributedStringsForTextRanges___block_invoke;
  v11[3] = &unk_1E7124698;
  v12 = rangesCopy;
  selfCopy = self;
  v14 = v5;
  v7 = v5;
  v8 = rangesCopy;
  [WeakRetained coordinateReading:v11];

  v9 = [v7 copy];

  return v9;
}

- (id)performSameViewDropOperation:(id)operation
{
  operationCopy = operation;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__203;
  v17 = __Block_byref_object_dispose__203;
  targetRange = [operationCopy targetRange];
  WeakRetained = objc_loadWeakRetained(&self->_textStorage);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64___UITextStorageDraggableGeometry_performSameViewDropOperation___block_invoke;
  v10[3] = &unk_1E71246E8;
  v10[4] = self;
  v6 = operationCopy;
  v11 = v6;
  v12 = &v13;
  [WeakRetained coordinateEditing:v10];

  if (v14[5])
  {
    v7 = [(_UITextStorageDraggableGeometry *)self _targetedPreviewProviderForTextInRange:?];
    v8 = [UITextDraggableGeometrySameViewDropOperationResult resultWithRange:v14[5] targetedPreviewProvider:v7];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)_draggableTextInRange:(id)range
{
  v31[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [WeakRetained _nsrangeForTextRange:rangeCopy];
  v8 = v7;

  v9 = objc_loadWeakRetained(&self->_textStorage);
  v10 = [v9 attributedSubstringFromRange:{v6, v8}];

  if ([v10 length])
  {
    v11 = objc_loadWeakRetained(&self->_view);
    allowsEditingTextAttributes = [v11 allowsEditingTextAttributes];

    v13 = objc_alloc(MEMORY[0x1E696ACA0]);
    v14 = v13;
    if (allowsEditingTextAttributes)
    {
      v15 = [v13 initWithObject:v10];
    }

    else
    {
      string = [v10 string];
      v15 = [v14 initWithObject:string];
    }

    v18 = [UITextDraggableObject draggableObjectWithItemProvider:v15 fromRange:rangeCopy];

    v19 = objc_loadWeakRetained(&self->_view);
    v20 = objc_opt_respondsToSelector();

    v21 = v6;
    v22 = v8;
    if (v20)
    {
      v23 = objc_loadWeakRetained(&self->_view);
      v21 = [v23 _visibleRangeWithLayout:0];
      v22 = v24;
    }

    v33.location = v6;
    v33.length = v8;
    v34.location = v21;
    v34.length = v22;
    v25 = NSIntersectionRange(v33, v34);
    if (v25.location == v6 && v25.length == v8)
    {
      v26 = [(_UITextStorageDraggableGeometry *)self _targetedPreviewProviderForTextInRange:rangeCopy];
      [v18 setTargetedPreviewProvider:v26];
    }

    else
    {
      v27 = objc_loadWeakRetained(&self->_view);
      v26 = [v27 _textRangeFromNSRange:{v25.location, v25.length}];

      v28 = [(_UITextStorageDraggableGeometry *)self _targetedPreviewProviderForTextInRange:v26];
      [v18 setTargetedPreviewProvider:v28];

      v29 = [(_UITextStorageDraggableGeometry *)self _previewProviderForTextInRange:rangeCopy];
      [v18 setPreviewProvider:v29];
    }

    v31[0] = v18;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

- (id)_targetedPreviewProviderForImage:(id)image inRange:(id)range
{
  imageCopy = image;
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76___UITextStorageDraggableGeometry__targetedPreviewProviderForImage_inRange___block_invoke;
  aBlock[3] = &unk_1E7124710;
  v15 = imageCopy;
  v16 = WeakRetained;
  v17 = rangeCopy;
  v9 = rangeCopy;
  v10 = WeakRetained;
  v11 = imageCopy;
  v12 = _Block_copy(aBlock);

  return v12;
}

- (id)_targetedPreviewProviderForTextInRange:(id)range dismissing:(BOOL)dismissing overrideLifting:(id)lifting
{
  rangeCopy = range;
  liftingCopy = lifting;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101___UITextStorageDraggableGeometry__targetedPreviewProviderForTextInRange_dismissing_overrideLifting___block_invoke;
  v14[3] = &unk_1E7124738;
  v15 = rangeCopy;
  v16 = liftingCopy;
  v14[4] = self;
  dismissingCopy = dismissing;
  v10 = rangeCopy;
  v11 = liftingCopy;
  v12 = _Block_copy(v14);

  return v12;
}

- (id)_previewProviderForTextInRange:(id)range
{
  rangeCopy = range;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66___UITextStorageDraggableGeometry__previewProviderForTextInRange___block_invoke;
  v8[3] = &unk_1E71245D8;
  v8[4] = self;
  v9 = rangeCopy;
  v5 = rangeCopy;
  v6 = _Block_copy(v8);

  return v6;
}

- (BOOL)_isActualLink:(id)link
{
  linkCopy = link;
  if (!linkCopy)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      scheme = [linkCopy scheme];
      v4 = [scheme hasPrefix:@"x-apple-data-detectors"] ^ 1;

      goto LABEL_7;
    }

LABEL_6:
    LOBYTE(v4) = 0;
    goto LABEL_7;
  }

  v4 = [linkCopy hasPrefix:@"x-apple-data-detectors"] ^ 1;
LABEL_7:

  return v4;
}

- (void)_renderTextInRange:(id)range image:(id *)image boundingRectangles:(id *)rectangles forLifting:(BOOL)lifting
{
  liftingCopy = lifting;
  v75[2] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_view);
    v14 = [v13 _previewRendererForRange:rangeCopy unifyRects:liftingCopy];

    if (v14)
    {
      v15 = 0;
      if (([(_UITextStorageDraggableGeometry *)self geometryOptions]& 1) != 0 && liftingCopy)
      {
        v74[0] = *off_1E70EC920;
        v16 = +[UIColor labelColor];
        v75[0] = v16;
        v74[1] = *off_1E70EC8D0;
        v17 = +[UIColor clearColor];
        v75[1] = v17;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];

        [v14 addRenderingAttributes:v15];
      }

      *image = [v14 image];
      if (v15)
      {
        allKeys = [v15 allKeys];
        [v14 removeRenderingAttributes:allKeys];
      }

      v19 = objc_opt_new();
      [v14 firstLineRect];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = objc_loadWeakRetained(&self->_view);
      [v28 contentScaleFactor];
      v30 = UIRectIntegralWithScale(v21, v23, v25, v27, v29);
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v76.origin.x = v30;
      v76.origin.y = v32;
      v76.size.width = v34;
      v76.size.height = v36;
      if (!CGRectIsEmpty(v76))
      {
        v37 = [MEMORY[0x1E696B098] valueWithCGRect:{v30, v32, v34, v36}];
        [v19 addObject:v37];
      }

      [v14 bodyRect];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = objc_loadWeakRetained(&self->_view);
      [v46 contentScaleFactor];
      v48 = UIRectIntegralWithScale(v39, v41, v43, v45, v47);
      v50 = v49;
      v52 = v51;
      v54 = v53;

      [v14 bodyRect];
      if (!CGRectIsEmpty(v77))
      {
        v55 = [MEMORY[0x1E696B098] valueWithCGRect:{v48, v50, v52, v54}];
        [v19 addObject:v55];
      }

      [v14 lastLineRect];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v64 = objc_loadWeakRetained(&self->_view);
      [v64 contentScaleFactor];
      v66 = UIRectIntegralWithScale(v57, v59, v61, v63, v65);
      v68 = v67;
      v70 = v69;
      v72 = v71;

      [v14 lastLineRect];
      if (!CGRectIsEmpty(v78))
      {
        v73 = [MEMORY[0x1E696B098] valueWithCGRect:{v66, v68, v70, v72}];
        [v19 addObject:v73];
      }

      *rectangles = [v19 copy];
    }
  }
}

- (UITextDragSupporting)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (NSTextStorage)textStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_textStorage);

  return WeakRetained;
}

@end