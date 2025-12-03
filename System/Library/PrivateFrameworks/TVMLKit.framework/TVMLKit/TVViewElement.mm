@interface TVViewElement
- (BOOL)isDisabled;
- (IKViewElement)element;
- (NSArray)childViewElements;
- (NSDictionary)attributes;
- (NSDictionary)elementData;
- (NSString)autoHighlightIdentifier;
- (NSString)elementIdentifier;
- (NSString)elementName;
- (TVViewElement)initWithViewElement:(id)element;
- (TVViewElement)parentViewElement;
- (TVViewElementStyle)style;
- (int64_t)semanticContentAttribute;
- (int64_t)updateType;
- (void)dispatchEventOfType:(int64_t)type canBubble:(BOOL)bubble cancellable:(BOOL)cancellable extraInfo:(id)info completion:(id)completion;
- (void)dispatchEventWithName:(id)name canBubble:(BOOL)bubble cancellable:(BOOL)cancellable extraInfo:(id)info completion:(id)completion;
- (void)resetProperty:(int64_t)property;
@end

@implementation TVViewElement

- (TVViewElement)initWithViewElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = TVViewElement;
  v5 = [(TVViewElement *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_element, elementCopy);
  }

  return v6;
}

- (NSDictionary)elementData
{
  element = [(TVViewElement *)self element];
  dataDictionary = [element dataDictionary];

  return dataDictionary;
}

- (NSString)elementIdentifier
{
  element = [(TVViewElement *)self element];
  elementID = [element elementID];

  return elementID;
}

- (NSString)elementName
{
  element = [(TVViewElement *)self element];
  elementName = [element elementName];

  return elementName;
}

- (TVViewElement)parentViewElement
{
  element = [(TVViewElement *)self element];
  parent = [element parent];
  tv_associatedViewElement = [parent tv_associatedViewElement];

  return tv_associatedViewElement;
}

- (NSArray)childViewElements
{
  element = [(TVViewElement *)self element];
  children = [element children];
  v4 = [children valueForKey:@"tv_associatedViewElement"];

  return v4;
}

- (NSDictionary)attributes
{
  element = [(TVViewElement *)self element];
  attributes = [element attributes];

  return attributes;
}

- (TVViewElementStyle)style
{
  element = [(TVViewElement *)self element];
  style = [element style];
  tv_associatedViewElementStyle = [style tv_associatedViewElementStyle];

  return tv_associatedViewElementStyle;
}

- (NSString)autoHighlightIdentifier
{
  element = [(TVViewElement *)self element];
  autoHighlightIdentifier = [element autoHighlightIdentifier];

  return autoHighlightIdentifier;
}

- (BOOL)isDisabled
{
  element = [(TVViewElement *)self element];
  isDisabled = [element isDisabled];

  return isDisabled;
}

- (int64_t)semanticContentAttribute
{
  element = [(TVViewElement *)self element];
  tv_semanticContentAttribute = [element tv_semanticContentAttribute];

  return tv_semanticContentAttribute;
}

- (int64_t)updateType
{
  v3 = dyld_program_sdk_at_least();
  element = [(TVViewElement *)self element];
  updateType = [element updateType];

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

  if (updateType != 4)
  {
    v7 = 0;
  }

  if (updateType != 3)
  {
    v6 = v7;
  }

  v8 = 1;
  v9 = 4;
  if (v3)
  {
    v9 = 2;
  }

  if (updateType != 2)
  {
    v9 = 0;
  }

  if (updateType != 1)
  {
    v8 = v9;
  }

  if (updateType <= 2)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

- (void)resetProperty:(int64_t)property
{
  if (property)
  {
    v3 = 2 * (property == 1);
  }

  else
  {
    v3 = 1;
  }

  element = [(TVViewElement *)self element];
  [element resetProperty:v3];
}

- (void)dispatchEventOfType:(int64_t)type canBubble:(BOOL)bubble cancellable:(BOOL)cancellable extraInfo:(id)info completion:(id)completion
{
  cancellableCopy = cancellable;
  bubbleCopy = bubble;
  if ((type - 1) > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_26CE88028[type - 1];
  }

  completionCopy = completion;
  infoCopy = info;
  element = [(TVViewElement *)self element];
  [element dispatchEventOfType:v11 canBubble:bubbleCopy isCancelable:cancellableCopy extraInfo:infoCopy completionBlock:completionCopy];
}

- (void)dispatchEventWithName:(id)name canBubble:(BOOL)bubble cancellable:(BOOL)cancellable extraInfo:(id)info completion:(id)completion
{
  cancellableCopy = cancellable;
  bubbleCopy = bubble;
  completionCopy = completion;
  infoCopy = info;
  nameCopy = name;
  element = [(TVViewElement *)self element];
  [element dispatchEvent:nameCopy eventAttribute:0 canBubble:bubbleCopy isCancelable:cancellableCopy extraInfo:infoCopy completionBlock:completionCopy];
}

- (IKViewElement)element
{
  WeakRetained = objc_loadWeakRetained(&self->_element);

  return WeakRetained;
}

@end