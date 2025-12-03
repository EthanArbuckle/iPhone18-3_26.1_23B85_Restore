@interface SHSheetDraggingEvent
+ (id)eventForDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset;
+ (id)eventForDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible;
+ (id)eventForDraggingDidEnd;
- (CGPoint)interruptedOffset;
- (CGPoint)translation;
- (CGPoint)velocity;
- (SHSheetDraggingEvent)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SHSheetDraggingEvent

+ (id)eventForDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  dismissibleCopy = dismissible;
  v9 = objc_alloc_init(SHSheetDraggingEvent);
  [(SHSheetDraggingEvent *)v9 setType:0];
  [(SHSheetDraggingEvent *)v9 setRubberBandCoefficient:coefficient];
  [(SHSheetDraggingEvent *)v9 setDismissible:dismissibleCopy];
  [(SHSheetDraggingEvent *)v9 setInterruptedOffset:x, y];

  return v9;
}

+ (id)eventForDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible
{
  dismissibleCopy = dismissible;
  changeCopy = change;
  y = velocity.y;
  x = velocity.x;
  v10 = translation.y;
  v11 = translation.x;
  v12 = objc_alloc_init(SHSheetDraggingEvent);
  [(SHSheetDraggingEvent *)v12 setType:1];
  [(SHSheetDraggingEvent *)v12 setTranslation:v11, v10];
  [(SHSheetDraggingEvent *)v12 setVelocity:x, y];
  [(SHSheetDraggingEvent *)v12 setShouldAnimate:changeCopy];
  [(SHSheetDraggingEvent *)v12 setDismissible:dismissibleCopy];

  return v12;
}

+ (id)eventForDraggingDidEnd
{
  v2 = objc_alloc_init(SHSheetDraggingEvent);
  [(SHSheetDraggingEvent *)v2 setType:2];

  return v2;
}

- (SHSheetDraggingEvent)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SHSheetDraggingEvent;
  v5 = [(SHSheetDraggingEvent *)&v7 init];
  if (v5)
  {
    -[SHSheetDraggingEvent setType:](v5, "setType:", [coderCopy decodeInt64ForKey:@"type"]);
    [coderCopy decodeDoubleForKey:@"rubberBandCoefficient"];
    [(SHSheetDraggingEvent *)v5 setRubberBandCoefficient:?];
    [coderCopy decodeCGPointForKey:@"interruptedOffset"];
    [(SHSheetDraggingEvent *)v5 setInterruptedOffset:?];
    [coderCopy decodeCGPointForKey:@"translation"];
    [(SHSheetDraggingEvent *)v5 setTranslation:?];
    [coderCopy decodeCGPointForKey:@"velocity"];
    [(SHSheetDraggingEvent *)v5 setVelocity:?];
    -[SHSheetDraggingEvent setDismissible:](v5, "setDismissible:", [coderCopy decodeBoolForKey:@"dismissible"]);
    -[SHSheetDraggingEvent setShouldAnimate:](v5, "setShouldAnimate:", [coderCopy decodeBoolForKey:@"shouldAnimate"]);
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SHSheetDraggingEvent type](self forKey:{"type"), @"type"}];
  [(SHSheetDraggingEvent *)self rubberBandCoefficient];
  [coderCopy encodeDouble:@"rubberBandCoefficient" forKey:?];
  [(SHSheetDraggingEvent *)self interruptedOffset];
  [coderCopy encodeCGPoint:@"interruptedOffset" forKey:?];
  [(SHSheetDraggingEvent *)self translation];
  [coderCopy encodeCGPoint:@"translation" forKey:?];
  [(SHSheetDraggingEvent *)self velocity];
  [coderCopy encodeCGPoint:@"velocity" forKey:?];
  [coderCopy encodeBool:-[SHSheetDraggingEvent dismissible](self forKey:{"dismissible"), @"dismissible"}];
  [coderCopy encodeBool:-[SHSheetDraggingEvent shouldAnimate](self forKey:{"shouldAnimate"), @"shouldAnimate"}];
}

- (CGPoint)interruptedOffset
{
  x = self->_interruptedOffset.x;
  y = self->_interruptedOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)velocity
{
  x = self->_velocity.x;
  y = self->_velocity.y;
  result.y = y;
  result.x = x;
  return result;
}

@end