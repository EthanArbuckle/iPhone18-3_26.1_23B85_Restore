@interface UITextDragDropSupport
+ (id)installTextDragDropOnView:(id)view;
+ (id)installTextDragOnView:(id)view;
@end

@implementation UITextDragDropSupport

+ (id)installTextDragOnView:(id)view
{
  viewCopy = view;
  v5 = objc_getAssociatedObject(viewCopy, &textDragAssistantKey);
  if (!v5)
  {
    v5 = [[UITextDragAssistant alloc] initWithDraggableOnlyView:viewCopy];
    objc_setAssociatedObject(self, &textDragAssistantKey, v5, 1);
  }

  [(UITextDragAssistant *)v5 installDragInteractionIfNeeded];

  return v5;
}

+ (id)installTextDragDropOnView:(id)view
{
  viewCopy = view;
  v5 = objc_getAssociatedObject(viewCopy, &textDragAssistantKey);
  if (!v5)
  {
    v5 = [[UITextDragAssistant alloc] initWithView:viewCopy];
    objc_setAssociatedObject(self, &textDragAssistantKey, v5, 1);
  }

  [(UITextDragAssistant *)v5 installDragInteractionIfNeeded];
  [(UITextDragAssistant *)v5 installDropInteractionIfNeeded];

  return v5;
}

@end