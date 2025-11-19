@interface NSTextElement
+ (int64_t)_searchElements:(id)a3 forLocation:(id)a4;
- (BOOL)isBeginningOfDocument;
- (BOOL)isEndOfDocument;
- (CGSize)estimatedIntrinsicContentSizeForTextLayoutManager:(id)a3;
- (NSTextElement)initWithTextContentManager:(NSTextContentManager *)textContentManager;
- (id)childTextElementForLocation:(id)a3 elementIndex:(int64_t *)a4;
- (void)dealloc;
- (void)setTextContentManager:(NSTextContentManager *)textContentManager;
@end

@implementation NSTextElement

- (BOOL)isEndOfDocument
{
  v3 = [-[NSTextRange endLocation](-[NSTextContentManager documentRange](-[NSTextElement textContentManager](self "textContentManager")];
  if (v3)
  {
    LOBYTE(v3) = __NSTextElementGetFirstRepresentableChild(self) == 0;
  }

  return v3;
}

- (void)dealloc
{
  [(NSTextElement *)self setTextContentManager:0];

  v3.receiver = self;
  v3.super_class = NSTextElement;
  [(NSTextElement *)&v3 dealloc];
}

- (BOOL)isBeginningOfDocument
{
  v3 = [(NSTextContentManager *)[(NSTextElement *)self textContentManager] documentRange];
  if (v3)
  {
    LODWORD(v3) = [-[NSTextRange location](v3 "location")];
    if (v3)
    {
      v4 = [(NSTextElement *)self parentElement];
      if (v4)
      {
        v5 = v4;
        do
        {
          v6 = [(NSTextElement *)v5 isRepresentedElement];
          if (v6)
          {
            break;
          }

          v5 = [(NSTextElement *)v5 parentElement];
        }

        while (v5);
        LOBYTE(v3) = !v6;
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }
  }

  return v3;
}

- (NSTextElement)initWithTextContentManager:(NSTextContentManager *)textContentManager
{
  v7.receiver = self;
  v7.super_class = NSTextElement;
  v4 = [(NSTextElement *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(NSTextElement *)v4 setTextContentManager:textContentManager];
    [(NSTextElement *)v5 setCoalescingType:0];
  }

  return v5;
}

- (void)setTextContentManager:(NSTextContentManager *)textContentManager
{
  v5 = self->_textContentManager;
  p_textContentManager = &self->_textContentManager;
  if (v5 != textContentManager)
  {
    objc_storeWeak(p_textContentManager, textContentManager);
    v7 = [(NSTextElement *)self childElements];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__NSTextElement_setTextContentManager___block_invoke;
    v8[3] = &unk_1E7266F70;
    v8[4] = textContentManager;
    [(NSArray *)v7 enumerateObjectsUsingBlock:v8];
  }
}

- (CGSize)estimatedIntrinsicContentSizeForTextLayoutManager:(id)a3
{
  v3 = [a3 textContainerForLocation:{-[NSTextRange location](-[NSTextElement elementRange](self, "elementRange"), "location")}];
  v5 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (v3)
  {
    v6 = v3;
    [v3 size];
    if (v7 > 0.0 && v7 < 10000000.0)
    {
      [v6 size];
      v5 = v8;
    }
  }

  v9 = v5;
  v10 = v4;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (int64_t)_searchElements:(id)a3 forLocation:(id)a4
{
  if (!a3)
  {
    [NSTextElement _searchElements:a2 forLocation:a1];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_18:
    [NSTextElement _searchElements:a2 forLocation:a1];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_3:
  v8 = [a3 count] - 1;
  if (v8 < 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = 0;
  while (1)
  {
    v10 = v9 + (v8 - v9) / 2;
    v11 = [a3 objectAtIndexedSubscript:v10];
    v12 = [v11 elementRange];
    if ([a4 compare:{objc_msgSend(v12, "location")}] == -1)
    {
      v8 = v10 - 1;
      goto LABEL_9;
    }

    if ([a4 compare:{objc_msgSend(v12, "endLocation")}] == -1)
    {
      break;
    }

    v9 = v10 + 1;
LABEL_9:
    if (v9 > v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (v11 || v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v11 && [a3 indexOfObject:v11] != v10)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }
  }

  else
  {
    [(NSTextElement *)a2 _searchElements:a1 forLocation:v9 + (v8 - v9) / 2];
  }

  return v10;
}

- (id)childTextElementForLocation:(id)a3 elementIndex:(int64_t *)a4
{
  v6 = [(NSTextElement *)self childElements];
  if (![(NSArray *)v6 count])
  {
    return 0;
  }

  do
  {
    v7 = [(NSArray *)v6 count]- 1;
    if (v7 < 0)
    {
LABEL_9:
      v10 = 0;
      goto LABEL_11;
    }

    v8 = 0;
    while (1)
    {
      v9 = v8 + (v7 - v8) / 2;
      v10 = [(NSArray *)v6 objectAtIndexedSubscript:v9];
      v11 = [v10 elementRange];
      if ([a3 compare:{objc_msgSend(v11, "location")}] == -1)
      {
        v7 = v9 - 1;
        goto LABEL_8;
      }

      if ([a3 compare:{objc_msgSend(v11, "endLocation")}] == -1)
      {
        break;
      }

      v8 = v9 + 1;
LABEL_8:
      if (v8 > v7)
      {
        goto LABEL_9;
      }
    }

    *a4 = v9;
LABEL_11:
    v6 = [v10 childElements];
  }

  while ([(NSArray *)v6 count]);
  return v10;
}

@end