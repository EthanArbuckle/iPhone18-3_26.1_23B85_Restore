@interface NSTextElement
+ (int64_t)_searchElements:(id)elements forLocation:(id)location;
- (BOOL)isBeginningOfDocument;
- (BOOL)isEndOfDocument;
- (CGSize)estimatedIntrinsicContentSizeForTextLayoutManager:(id)manager;
- (NSTextElement)initWithTextContentManager:(NSTextContentManager *)textContentManager;
- (id)childTextElementForLocation:(id)location elementIndex:(int64_t *)index;
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
  documentRange = [(NSTextContentManager *)[(NSTextElement *)self textContentManager] documentRange];
  if (documentRange)
  {
    LODWORD(documentRange) = [-[NSTextRange location](documentRange "location")];
    if (documentRange)
    {
      parentElement = [(NSTextElement *)self parentElement];
      if (parentElement)
      {
        parentElement2 = parentElement;
        do
        {
          isRepresentedElement = [(NSTextElement *)parentElement2 isRepresentedElement];
          if (isRepresentedElement)
          {
            break;
          }

          parentElement2 = [(NSTextElement *)parentElement2 parentElement];
        }

        while (parentElement2);
        LOBYTE(documentRange) = !isRepresentedElement;
      }

      else
      {
        LOBYTE(documentRange) = 1;
      }
    }
  }

  return documentRange;
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
    childElements = [(NSTextElement *)self childElements];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__NSTextElement_setTextContentManager___block_invoke;
    v8[3] = &unk_1E7266F70;
    v8[4] = textContentManager;
    [(NSArray *)childElements enumerateObjectsUsingBlock:v8];
  }
}

- (CGSize)estimatedIntrinsicContentSizeForTextLayoutManager:(id)manager
{
  v3 = [manager textContainerForLocation:{-[NSTextRange location](-[NSTextElement elementRange](self, "elementRange"), "location")}];
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

+ (int64_t)_searchElements:(id)elements forLocation:(id)location
{
  if (!elements)
  {
    [NSTextElement _searchElements:a2 forLocation:self];
    if (location)
    {
      goto LABEL_3;
    }

LABEL_18:
    [NSTextElement _searchElements:a2 forLocation:self];
    goto LABEL_3;
  }

  if (!location)
  {
    goto LABEL_18;
  }

LABEL_3:
  v8 = [elements count] - 1;
  if (v8 < 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = 0;
  while (1)
  {
    v10 = v9 + (v8 - v9) / 2;
    v11 = [elements objectAtIndexedSubscript:v10];
    elementRange = [v11 elementRange];
    if ([location compare:{objc_msgSend(elementRange, "location")}] == -1)
    {
      v8 = v10 - 1;
      goto LABEL_9;
    }

    if ([location compare:{objc_msgSend(elementRange, "endLocation")}] == -1)
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
    if (v11 && [elements indexOfObject:v11] != v10)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }
  }

  else
  {
    [(NSTextElement *)a2 _searchElements:self forLocation:v9 + (v8 - v9) / 2];
  }

  return v10;
}

- (id)childTextElementForLocation:(id)location elementIndex:(int64_t *)index
{
  childElements = [(NSTextElement *)self childElements];
  if (![(NSArray *)childElements count])
  {
    return 0;
  }

  do
  {
    v7 = [(NSArray *)childElements count]- 1;
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
      v10 = [(NSArray *)childElements objectAtIndexedSubscript:v9];
      elementRange = [v10 elementRange];
      if ([location compare:{objc_msgSend(elementRange, "location")}] == -1)
      {
        v7 = v9 - 1;
        goto LABEL_8;
      }

      if ([location compare:{objc_msgSend(elementRange, "endLocation")}] == -1)
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

    *index = v9;
LABEL_11:
    childElements = [v10 childElements];
  }

  while ([(NSArray *)childElements count]);
  return v10;
}

@end