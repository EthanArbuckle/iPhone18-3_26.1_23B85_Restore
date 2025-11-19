@interface UIWKDocumentContext
- ($0AC6E346AE4835514AAA8AC86D8F4844)directionalRangeForSelectionRange:(_NSRange)a3;
- (NSString)_contextAfterString;
- (NSString)_contextBeforeString;
- (NSString)_markedTextString;
- (NSString)_selectedTextString;
- (NSString)fullText;
- (UIWKDocumentContext)init;
- (_NSRange)markedTextRange;
- (_NSRange)rangeContainedWithinRect:(CGRect)a3;
- (_NSRange)selectedRangeInMarkedText;
- (_NSRange)selectedTextRange;
- (id)_textFromDirectionalRange:(id)a3;
- (id)characterRectsForCharacterRange:(_NSRange)a3;
- (id)stringContainedWithinRect:(CGRect)a3;
- (unint64_t)closestCharacterIndexForPoint:(CGPoint)a3;
- (void)addTextRect:(CGRect)a3 forCharacterRange:(_NSRange)a4;
- (void)dealloc;
- (void)enumerateLayoutRectsWithOptions:(unint64_t)a3 characterRange:(_NSRange)a4 block:(id)a5;
- (void)resetTextRects;
- (void)sortTextRectsByCharacterRange;
@end

@implementation UIWKDocumentContext

- (UIWKDocumentContext)init
{
  v3.receiver = self;
  v3.super_class = UIWKDocumentContext;
  result = [(UIWKDocumentContext *)&v3 init];
  if (result)
  {
    result->_selectedRangeInMarkedText = xmmword_18A678470;
    result->_rectsAreInCharacterOrder = 1;
    result->_lastRectRange = xmmword_18A678470;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIWKDocumentContext;
  [(UIWKDocumentContext *)&v3 dealloc];
}

- (NSString)_contextBeforeString
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  contextBefore = self->_contextBefore;
  if (isKindOfClass)
  {
    return &contextBefore->isa;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = self->_contextBefore;

  return [v5 string];
}

- (NSString)_selectedTextString
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  selectedText = self->_selectedText;
  if (isKindOfClass)
  {
    return &selectedText->isa;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = self->_selectedText;

  return [v5 string];
}

- (NSString)_contextAfterString
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  contextAfter = self->_contextAfter;
  if (isKindOfClass)
  {
    return &contextAfter->isa;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = self->_contextAfter;

  return [v5 string];
}

- (NSString)_markedTextString
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  markedText = self->_markedText;
  if (isKindOfClass)
  {
    return &markedText->isa;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = self->_markedText;

  return [v5 string];
}

- (_NSRange)selectedTextRange
{
  v3 = [(NSString *)[(UIWKDocumentContext *)self _contextBeforeString] length];
  v4 = [(NSString *)[(UIWKDocumentContext *)self _selectedTextString] length];
  if (v4)
  {
    length = v4;
  }

  else
  {
    location = self->_selectedRangeInMarkedText.location;
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      length = 0;
    }

    else
    {
      v3 += location;
      length = self->_selectedRangeInMarkedText.length;
    }
  }

  v7 = v3;
  result.length = length;
  result.location = v7;
  return result;
}

- (_NSRange)markedTextRange
{
  v3 = [(NSString *)[(UIWKDocumentContext *)self _contextBeforeString] length];
  v4 = v3 - [(UIWKDocumentContext *)self selectedRangeInMarkedText];
  v5 = [(NSString *)[(UIWKDocumentContext *)self _markedTextString] length];
  v6 = v4;
  result.length = v5;
  result.location = v6;
  return result;
}

- (void)resetTextRects
{
  [(UIWKDocumentContext *)self set_selectionRects:0];
  self->_rectsAreInCharacterOrder = 1;
  self->_lastRectRange = xmmword_18A678470;
}

- (void)addTextRect:(CGRect)a3 forCharacterRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(UIWKDocumentContext *)self _selectionRects])
  {
    -[UIWKDocumentContext set_selectionRects:](self, "set_selectionRects:", [MEMORY[0x1E695DF88] dataWithCapacity:960]);
  }

  [(NSMutableData *)[(UIWKDocumentContext *)self _selectionRects:*&x] appendBytes:&v12 length:48];
  if (self->_rectsAreInCharacterOrder)
  {
    v11 = self->_lastRectRange.location;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL && location <= v11)
    {
      self->_rectsAreInCharacterOrder = 0;
    }
  }

  self->_lastRectRange.location = location;
  self->_lastRectRange.length = length;
}

- (void)sortTextRectsByCharacterRange
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_rectsAreInCharacterOrder)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__UIWKDocumentContext_sortTextRectsByCharacterRange__block_invoke;
    v16[3] = &unk_1E7109070;
    v16[4] = v3;
    [(UIWKDocumentContext *)self enumerateLayoutRects:v16];
    [v3 sortUsingComparator:&__block_literal_global_238];
    [(UIWKDocumentContext *)self resetTextRects];
    -[UIWKDocumentContext set_selectionRects:](self, "set_selectionRects:", [MEMORY[0x1E695DF88] dataWithCapacity:{48 * objc_msgSend(v3, "count")}]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v10 = 0u;
          v11 = 0u;
          v9 = 0u;
          [v8 getValue:&v9 size:48];
          [(UIWKDocumentContext *)self addTextRect:v11 forCharacterRange:v9, v10];
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v5);
    }
  }
}

uint64_t __52__UIWKDocumentContext_sortTextRectsByCharacterRange__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *v8 = a4;
  *&v8[1] = a5;
  *&v8[2] = a6;
  *&v8[3] = a7;
  v8[4] = a2;
  v8[5] = a3;
  return [*(a1 + 32) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", v8, "{?={CGRect={CGPoint=dd}{CGSize=dd}}{_NSRange=QQ}}")}];
}

uint64_t __52__UIWKDocumentContext_sortTextRectsByCharacterRange__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = 0u;
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  [a2 getValue:v7 size:{48, 0, 0, 0, 0}];
  [a3 getValue:&v5 size:48];
  if (v8 < v6)
  {
    return -1;
  }

  if (v8 > v6)
  {
    return 1;
  }

  if (*(&v8 + 1) >= *(&v6 + 1))
  {
    return *(&v8 + 1) > *(&v6 + 1);
  }

  return -1;
}

- (unint64_t)closestCharacterIndexForPoint:(CGPoint)a3
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0x7FEFFFFFFFFFFFFFLL;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = "";
  v11 = xmmword_18A678470;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__UIWKDocumentContext_closestCharacterIndexForPoint___block_invoke;
  v5[3] = &unk_1E71090B8;
  v6 = a3;
  v5[4] = v12;
  v5[5] = &v7;
  [(UIWKDocumentContext *)self enumerateLayoutRects:v5];
  v3 = v8[4];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v12, 8);
  return v3;
}

BOOL __53__UIWKDocumentContext_closestCharacterIndexForPoint___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  result = UIDistanceBetweenPointAndRect(*(a1 + 48), *(a1 + 56), a4, a5, a6, a7);
  if (v11 < *(*(*(a1 + 32) + 8) + 24))
  {
    v12 = *(*(a1 + 40) + 8);
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    *(*(*(a1 + 32) + 8) + 24) = v11;
  }

  return result;
}

- (id)characterRectsForCharacterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [(UIWKDocumentContext *)self sortTextRectsByCharacterRange];
  v6 = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__UIWKDocumentContext_characterRectsForCharacterRange___block_invoke;
  v8[3] = &unk_1E7109070;
  v8[4] = v6;
  [(UIWKDocumentContext *)self enumerateLayoutRectsWithOptions:0 characterRange:location block:length, v8];
  return v6;
}

uint64_t __55__UIWKDocumentContext_characterRectsForCharacterRange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696B098] valueWithCGRect:?];

  return [v1 addObject:v2];
}

- (_NSRange)rangeContainedWithinRect:(CGRect)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = "";
  v13 = xmmword_18A678470;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__UIWKDocumentContext_rangeContainedWithinRect___block_invoke;
  v7[3] = &unk_1E71090E0;
  v8 = a3;
  v7[4] = &v9;
  [(UIWKDocumentContext *)self enumerateLayoutRects:v7];
  v3 = v10[4];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);
  v5 = v3;
  v6 = v4;
  result.length = v6;
  result.location = v5;
  return result;
}

NSUInteger __48__UIWKDocumentContext_rangeContainedWithinRect___block_invoke(uint64_t a1, NSUInteger a2, NSUInteger a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14.size.height = a7;
  v14.size.width = a6;
  v14.origin.y = a5;
  v14.origin.x = a4;
  v10.location = CGRectIntersectsRect(*(a1 + 40), v14);
  if (LODWORD(v10.location))
  {
    v11 = *(*(a1 + 32) + 8);
    v10.location = *(v11 + 32);
    if (v10.location == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v11 + 32) = a2;
      *(v11 + 40) = a3;
    }

    else
    {
      v10.length = *(v11 + 40);
      v13.location = a2;
      v13.length = a3;
      v10 = NSUnionRange(v10, v13);
      *(*(*(a1 + 32) + 8) + 32) = v10;
    }
  }

  return v10.location;
}

- (id)stringContainedWithinRect:(CGRect)a3
{
  v4 = [(UIWKDocumentContext *)self rangeContainedWithinRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v4;
  v8 = v5;
  v9 = [(UIWKDocumentContext *)self fullText];

  return [(NSString *)v9 substringWithRange:v7, v8];
}

- (NSString)fullText
{
  v3 = [(UIWKDocumentContext *)self _contextBeforeString];
  v4 = &stru_1EFB14550;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1EFB14550;
  }

  v6 = [(UIWKDocumentContext *)self _selectedTextString];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_1EFB14550;
  }

  v8 = [(UIWKDocumentContext *)self _markedTextString];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_1EFB14550;
  }

  v10 = [(UIWKDocumentContext *)self _contextAfterString];
  if (v10)
  {
    v4 = v10;
  }

  v11 = MEMORY[0x1E696AEC0];
  if ([(__CFString *)v9 length])
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  return [v11 stringWithFormat:@"%@%@%@", v5, v12, v4];
}

- (id)_textFromDirectionalRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(UIWKDocumentContext *)self _contextBeforeString];
  v7 = &stru_1EFB14550;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1EFB14550;
  }

  [(UIWKDocumentContext *)self _selectedTextString];
  v9 = [(UIWKDocumentContext *)self _markedTextString];
  if (v9)
  {
    v7 = v9;
  }

  [(UIWKDocumentContext *)self _contextAfterString];
  [(__CFString *)v7 length];
  v10 = [(__CFString *)v8 length]+ var0;
  v11 = [(UIWKDocumentContext *)self fullText];
  v12 = [(NSString *)v11 length];
  if (v10 < 0 || var1 < 1 || v10 + var1 > v12 || v10 >= v12)
  {
    return &stru_1EFB14550;
  }

  return [(NSString *)v11 substringWithRange:v10, var1];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)directionalRangeForSelectionRange:(_NSRange)a3
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    length = a3.length;
    v4 = a3.location - [(UIWKDocumentContext *)self selectedTextRange];
    v3 = length - v6;
  }

  result.var1 = v3;
  result.var0 = v4;
  return result;
}

- (void)enumerateLayoutRectsWithOptions:(unint64_t)a3 characterRange:(_NSRange)a4 block:(id)a5
{
  if (a5)
  {
    length = a4.length;
    location = a4.location;
    v8 = a3;
    if (a4.location == 0x7FFFFFFFFFFFFFFFLL || a4.length)
    {
      if (a4.location != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(UIWKDocumentContext *)self sortTextRectsByCharacterRange];
      }

      v10 = [(NSMutableData *)[(UIWKDocumentContext *)self _selectionRects] length];
      v11 = v10 / 0x30;
      v12 = [(NSMutableData *)[(UIWKDocumentContext *)self _selectionRects] bytes];
      v31 = 0;
      if ((v8 & 2) != 0)
      {
        if (v10 >= 0x30)
        {
          v23 = 0;
          v24 = v12 + 48 * v11 - 24;
          do
          {
            v25 = *(v24 - 24);
            v26 = *(v24 - 16);
            v27 = *(v24 - 8);
            v28 = *v24;
            v29 = *(v24 + 8);
            v30 = *(v24 + 16);
            if (location == 0x7FFFFFFFFFFFFFFFLL || (v33.location = location, v33.length = length, NSIntersectionRange(v33, *(v24 + 8)).length))
            {
              (*(a5 + 2))(a5, v29, v30, &v31, v25, v26, v27, v28);
              v23 = 1;
            }

            else if (v23)
            {
              v23 = 1;
              v31 = 1;
            }

            else
            {
              v23 = 0;
            }

            if (v11 < 2)
            {
              break;
            }

            v24 -= 48;
            --v11;
          }

          while ((v31 & 1) == 0);
        }
      }

      else if (v10 >= 0x30)
      {
        v13 = 0;
        v14 = v12 + 24;
        v15 = 1;
        do
        {
          v16 = *(v14 - 24);
          v17 = *(v14 - 16);
          v18 = *(v14 - 8);
          v19 = *v14;
          v20 = *(v14 + 8);
          v21 = *(v14 + 16);
          if (location == 0x7FFFFFFFFFFFFFFFLL || (v32.location = location, v32.length = length, NSIntersectionRange(v32, *(v14 + 8)).length))
          {
            (*(a5 + 2))(a5, v20, v21, &v31, v16, v17, v18, v19);
            v13 = 1;
          }

          else if (v13)
          {
            v13 = 1;
            v31 = 1;
          }

          else
          {
            v13 = 0;
          }

          if (v31)
          {
            break;
          }

          v14 += 48;
        }

        while (v15++ < v11);
      }
    }
  }
}

- (_NSRange)selectedRangeInMarkedText
{
  length = self->_selectedRangeInMarkedText.length;
  location = self->_selectedRangeInMarkedText.location;
  result.length = length;
  result.location = location;
  return result;
}

@end