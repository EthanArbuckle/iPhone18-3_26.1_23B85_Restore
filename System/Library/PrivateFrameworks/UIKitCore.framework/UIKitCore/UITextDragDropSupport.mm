@interface UITextDragDropSupport
+ (id)installTextDragDropOnView:(id)a3;
+ (id)installTextDragOnView:(id)a3;
@end

@implementation UITextDragDropSupport

+ (id)installTextDragOnView:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(v4, &textDragAssistantKey);
  if (!v5)
  {
    v5 = [[UITextDragAssistant alloc] initWithDraggableOnlyView:v4];
    objc_setAssociatedObject(a1, &textDragAssistantKey, v5, 1);
  }

  [(UITextDragAssistant *)v5 installDragInteractionIfNeeded];

  return v5;
}

+ (id)installTextDragDropOnView:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(v4, &textDragAssistantKey);
  if (!v5)
  {
    v5 = [[UITextDragAssistant alloc] initWithView:v4];
    objc_setAssociatedObject(a1, &textDragAssistantKey, v5, 1);
  }

  [(UITextDragAssistant *)v5 installDragInteractionIfNeeded];
  [(UITextDragAssistant *)v5 installDropInteractionIfNeeded];

  return v5;
}

@end