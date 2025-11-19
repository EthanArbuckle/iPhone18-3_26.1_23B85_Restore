@interface TVViewElement
- (BOOL)isDisabled;
- (IKViewElement)element;
- (NSArray)childViewElements;
- (NSDictionary)attributes;
- (NSDictionary)elementData;
- (NSString)autoHighlightIdentifier;
- (NSString)elementIdentifier;
- (NSString)elementName;
- (TVViewElement)initWithViewElement:(id)a3;
- (TVViewElement)parentViewElement;
- (TVViewElementStyle)style;
- (int64_t)semanticContentAttribute;
- (int64_t)updateType;
- (void)dispatchEventOfType:(int64_t)a3 canBubble:(BOOL)a4 cancellable:(BOOL)a5 extraInfo:(id)a6 completion:(id)a7;
- (void)dispatchEventWithName:(id)a3 canBubble:(BOOL)a4 cancellable:(BOOL)a5 extraInfo:(id)a6 completion:(id)a7;
- (void)resetProperty:(int64_t)a3;
@end

@implementation TVViewElement

- (TVViewElement)initWithViewElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TVViewElement;
  v5 = [(TVViewElement *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_element, v4);
  }

  return v6;
}

- (NSDictionary)elementData
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 dataDictionary];

  return v3;
}

- (NSString)elementIdentifier
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 elementID];

  return v3;
}

- (NSString)elementName
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 elementName];

  return v3;
}

- (TVViewElement)parentViewElement
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 parent];
  v4 = [v3 tv_associatedViewElement];

  return v4;
}

- (NSArray)childViewElements
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 children];
  v4 = [v3 valueForKey:@"tv_associatedViewElement"];

  return v4;
}

- (NSDictionary)attributes
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 attributes];

  return v3;
}

- (TVViewElementStyle)style
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 style];
  v4 = [v3 tv_associatedViewElementStyle];

  return v4;
}

- (NSString)autoHighlightIdentifier
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 autoHighlightIdentifier];

  return v3;
}

- (BOOL)isDisabled
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 isDisabled];

  return v3;
}

- (int64_t)semanticContentAttribute
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 tv_semanticContentAttribute];

  return v3;
}

- (int64_t)updateType
{
  v3 = dyld_program_sdk_at_least();
  v4 = [(TVViewElement *)self element];
  v5 = [v4 updateType];

  v6 = 2;
  if (v3)
  {
    v6 = 3;
  }

  v7 = 3;
  if (v3)
  {
    v7 = 4;
  }

  if (v5 != 4)
  {
    v7 = 0;
  }

  if (v5 != 3)
  {
    v6 = v7;
  }

  v8 = 1;
  v9 = 4;
  if (v3)
  {
    v9 = 2;
  }

  if (v5 != 2)
  {
    v9 = 0;
  }

  if (v5 != 1)
  {
    v8 = v9;
  }

  if (v5 <= 2)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

- (void)resetProperty:(int64_t)a3
{
  if (a3)
  {
    v3 = 2 * (a3 == 1);
  }

  else
  {
    v3 = 1;
  }

  v4 = [(TVViewElement *)self element];
  [v4 resetProperty:v3];
}

- (void)dispatchEventOfType:(int64_t)a3 canBubble:(BOOL)a4 cancellable:(BOOL)a5 extraInfo:(id)a6 completion:(id)a7
{
  v8 = a5;
  v9 = a4;
  if ((a3 - 1) > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_26CE88028[a3 - 1];
  }

  v12 = a7;
  v13 = a6;
  v14 = [(TVViewElement *)self element];
  [v14 dispatchEventOfType:v11 canBubble:v9 isCancelable:v8 extraInfo:v13 completionBlock:v12];
}

- (void)dispatchEventWithName:(id)a3 canBubble:(BOOL)a4 cancellable:(BOOL)a5 extraInfo:(id)a6 completion:(id)a7
{
  v8 = a5;
  v9 = a4;
  v12 = a7;
  v13 = a6;
  v14 = a3;
  v15 = [(TVViewElement *)self element];
  [v15 dispatchEvent:v14 eventAttribute:0 canBubble:v9 isCancelable:v8 extraInfo:v13 completionBlock:v12];
}

- (IKViewElement)element
{
  WeakRetained = objc_loadWeakRetained(&self->_element);

  return WeakRetained;
}

@end